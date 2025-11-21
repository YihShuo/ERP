unit HokaRubberWeightRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, Comobj;

type
  THokaRubberWeightRpt = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    DTP2: TDateTimePicker;
    DateRB1: TRadioButton;
    DTP1: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    DSRpt: TDataSource;
    QueryRpt: TQuery;
    Label5: TLabel;
    ComboBox4: TComboBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1LBDH: TStringField;
    Query1YWSM: TStringField;
    DS2: TDataSource;
    Query2: TQuery;
    Query2LBDH: TStringField;
    Query2YWSM: TStringField;
    CheckBox1: TCheckBox;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshComboBox2();
  public
    DMBH,BWBH,ClassStr:String;
    { Public declarations }
  end;

var
  HokaRubberWeightRpt: THokaRubberWeightRpt;
const HKSIZE :array [0..26] of String=('03.0','03.5','04.0','04.5','05.0','05.5',
                                       '06.0','06.5','07.0','07.5','08.0','08.5',
                                       '09.0','09.5','10.0','10.5','11.0','11.5',
                                       '12.0','12.5','13.0','13.5','14.0','15.0',
                                       '16.0','17.0','18.0');
implementation
  uses main1, HokaRubberWeightRpt_Print1, FunUnit;
{$R *.dfm}

procedure THokaRubberWeightRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure THokaRubberWeightRpt.FormDestroy(Sender: TObject);
begin
  HokaRubberWeightRpt:=nil;
end;

procedure THokaRubberWeightRpt.Button1Click(Sender: TObject);
var i:integer;
begin
  //
  with QueryRpt do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DMBHSM, BWBHSM, StageSM ');
    if CheckBox1.Checked=false then
    begin
      for i:=0 to  High(HKSIZE) do
      begin
      SQL.Add('       ,Sum(Case when SIZE='''+HKSIZE[i]+''' then 1 else 0 end) as '''+HKSIZE[i]+''' ');
      end;
      SQL.Add('	      ,Sum(1)  as Total');
    end else
    begin
      for i:=0 to  High(HKSIZE) do
      begin
      //SQL.Add('       ,Case when Sum(Case when SIZE='''+HKSIZE[i]+''' then 1 else 0 end)>0 then Sum(Case when SIZE='''+HKSIZE[i]+''' then [Weight] else 0 end)/Sum(Case when SIZE='''+HKSIZE[i]+''' then 1 else 0 end) else null end as '''+HKSIZE[i]+'''  ');
      SQL.Add('       ,Case when SIZE='''+HKSIZE[i]+''' then (case when LRSide=''1'' then [Weight] else 0 end) else   0   end as '''+HKSIZE[i]+'L''  ');
      SQL.Add('       ,Case when SIZE='''+HKSIZE[i]+''' then (case when LRSide=''0'' then [Weight] else 0 end) else   0   end as '''+HKSIZE[i]+'R''  ');
      end;
    end;
    SQL.Add('from (');
    SQL.Add('Select HKDM_SMZL.*,LBZLS1.YWSM as DMBHSM,LBZLS2.YWSM as BWBHSM,LBZLS3.YWSM as StageSM ');
    SQL.Add('from '+main.LIY_DD+'.dbo.HKDM_SMZL HKDM_SMZL');
    SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS1 on LBZLS1.LBDH=HKDM_SMZL.DMBH and LBZLS1.Layer=1 and LB=''1'' ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS2 on LBZLS2.LBDH=HKDM_SMZL.BWBH and LBZLS2.Layer=2 ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS3 on LBZLS3.LBDH=HKDM_SMZL.Stage and LBZLS3.Layer=3 ');
    SQL.Add('Where Convert(smalldatetime,HKDM_SMZL.WorkDate) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
    if DMBH<>'' then
    SQL.Add('   and HKDM_SMZL.DMBH = '''+DMBH+''' ');
    if BWBH<>'' then
    SQL.Add('   and HKDM_SMZL.BWBH = '''+BWBH+''' ');
    if ClassStr<>'' then
    SQL.Add('   and HKDM_SMZL.Class = '''+ClassStr+'''  ');
    SQL.Add(' ) HKDM_SMZL  ');
    SQL.Add('Group by DMBHSM, BWBHSM, StageSM,Stage, HKDM_SMZL.SIZE , HKDM_SMZL.LRSide, HKDM_SMZL.Weight ');
    SQL.Add('order by DMBHSM desc, BWBHSM desc, StageSM desc, Stage asc ');
    FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
    //
  end;
  DBGridEh1.columns[0].width:=100;
  DBGridEh1.columns[0].Title.Caption:='底模編號#|Bottom code';
  DBGridEh1.columns[1].width:=120;
  DBGridEh1.columns[1].Title.Caption:='材料名稱|M/S material name';
  DBGridEh1.columns[2].width:=100;
  DBGridEh1.columns[2].Title.Caption:='流程秤重|Production';
  //
  for i:=3 to QueryRpt.fieldcount-1 do
  begin
    DBGridEh1.columns[i].width:=30;
    DBGridEh1.columns[i].Title.Caption:='Size尺寸|'+QueryRpt.Fields[i].FieldName;
  end;
  
  //
end;

procedure THokaRubberWeightRpt.RefreshComboBox2();
begin

 ComboBox2.Clear;
 ComboBox2.Items.add('');
 with Query2 do
 begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select LBDH,YWSM from '+main.LIY_DD+'.dbo.HKDM_LBZLS HKDM_LBZLS where LB=:LBDH and layer=2 ');
   Active:=true;
   //funcObj.WriteErrorLog(sql.Text);
   while not Eof do
   begin
      ComboBox2.Items.add(FieldByName('YWSM').AsString);
      Next;
   end;
 end;
 if ComboBox2.Items.Count>0 then ComboBox2.ItemIndex:=0;
 if Query2.Locate('YWSM',ComboBox2.Text,[]) then BWBH:=Query2.FieldByName('LBDH').AsString else BWBH:='';

end;

procedure THokaRubberWeightRpt.FormCreate(Sender: TObject);
begin
 //
 ComboBox1.Clear;
 ComboBox1.Items.add('');
 with Query1 do
 begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select LBDH,YWSM from '+main.LIY_DD+'.dbo.HKDM_LBZLS where lb=''1''  and Layer=1 ');
   Active:=true;
   while not Eof do
   begin
      ComboBox1.Items.add(FieldByName('YWSM').AsString);
      Next;
   end;
 end;
 if ComboBox1.Items.Count>0 then ComboBox1.ItemIndex:=0;
 if Query1.Locate('YWSM',ComboBox1.Text,[]) then DMBH:=Query1.FieldByName('LBDH').AsString else BWBH:='';
 //
 RefreshComboBox2();
 ClassStr:=Copy(ComboBox4.Text,1,1);
 //
 DTP1.Date:=Date()-2;
 DTP2.Date:=Date();
 //
end;

procedure THokaRubberWeightRpt.ComboBox1Change(Sender: TObject);
begin
  if Query1.Locate('YWSM',ComboBox1.Text,[]) then DMBH:=Query1.FieldByName('LBDH').AsString else  DMBH:='';
  RefreshComboBox2();
end;

procedure THokaRubberWeightRpt.ComboBox2Change(Sender: TObject);
begin
  if Query2.Locate('YWSM',ComboBox2.Text,[]) then BWBH:=Query2.FieldByName('LBDH').AsString;
end;

procedure THokaRubberWeightRpt.ComboBox4Change(Sender: TObject);
begin
  ClassStr:=Copy(ComboBox4.Text,1,1);
end;

procedure THokaRubberWeightRpt.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  //
  if  QueryRpt.Active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   QueryRpt.fieldcount-1   do
      begin
          eclApp.Cells(1,i+1):=QueryRpt.fields[i].FieldName;
      end;
      QueryRpt.First;
      j:=2;
      while   not   QueryRpt.Eof   do
      begin
        for   i:=0   to  QueryRpt.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=QueryRpt.Fields[i].Value;
        end;
        QueryRpt.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
  //
end;

procedure THokaRubberWeightRpt.Button3Click(Sender: TObject);
begin
  //
  HokaRubberWeightRpt_Print:=THokaRubberWeightRpt_Print.Create(self);
  HokaRubberWeightRpt_Print.Quickrep1.prepare;
  HokaRubberWeightRpt_Print.Qpage1.caption:=inttostr(HokaRubberWeightRpt_Print.Quickrep1.QRPrinter.pagecount);
  HokaRubberWeightRpt_Print.Quickrep1.preview;
  HokaRubberWeightRpt_Print.Free;
  //
end;

end.
