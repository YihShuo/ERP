unit DelOther_KI_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,IniFiles, comobj;

type
  TDelOther_KI_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Button2: TButton;
    NoDelCK: TCheckBox;
    Query1CLBH: TStringField;
    Query1ZLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1Qty: TCurrencyField;
    Query1Flag: TIntegerField;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    procedure ReadIni();
    { Private declarations }
  public
    Pro_CostID_ZZ:string;
    { Public declarations }
  end;

var
  DelOther_KI_Mat: TDelOther_KI_Mat;

implementation

uses main1, DelOther_KI1, FunUnit, DateUtils;

{$R *.dfm}

procedure TDelOther_KI_Mat.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  Pro_CostID_ZZ:='62721';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Pro_CostID_ZZ:= MyIni.ReadString('ERP','Pro_CostID_ZZ','62721');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDelOther_KI_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDelOther_KI_Mat.FormDestroy(Sender: TObject);
begin
  DelOther_KI_Mat:=nil;
end;

procedure TDelOther_KI_Mat.FormCreate(Sender: TObject);
begin
  ReadIni();
  DTP1.Date:=StartOfTheMonth(date);
  DTP2.Date:=EndOfTheMonth(date);
end;

procedure TDelOther_KI_Mat.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('  Select * from (  ');
    SQL.Add('  select CLZL.CLDH as CLBH,ZLZLS2.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(ZLZLS2.CLSL) as CLSL,isnull(KCLLS.Qty,0) as Qty ,case when sum(ZLZLS2.CLSL)>isnull(KCLLS.Qty,0) then 0 else 1 end as Flag     ');
    SQL.Add('  from KHUONIN_ZLZLS2 ZLZLS2   ');
    SQL.Add('  inner join CLZL on CLZL.CLDH=ZLZLS2.CLBH   ');
    SQL.Add('  inner join KHUONIN_DDZL DDZL on DDZL.DDBH=ZLZLS2.ZLBH   ');
    SQL.Add('  left join (select KCLLS.SCBH,KCLLS.CLBH,sum(KCLLS.Qty) as Qty   ');
    SQL.Add('             from KCLLS   ');
    SQL.Add('             left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('             where KCLL.USERDate>getdate()-180   ');
    SQL.Add('                   and KCLL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                   and KCLL.SCBH=''KKKKKKKKKK'' ');
    SQL.Add('             group by KCLLS.SCBH,KCLLS.CLBH) KCLLS on KCLLS.SCBH=ZLZLS2.ZLBH and KCLLS.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('  where CLZL.CLDH like '+''''+Edit1.Text+'%'+'''');
    SQL.Add('        and CLZL.YWPM like '''+'%'+Edit2.Text+'%'+''' ');
    SQL.Add('        and CLZL.YWPM like '''+'%'+Edit3.Text+'%'+''' ');
    SQL.Add('  and convert(smalldatetime,convert(varchar,DDZL.USERDATE,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''  ');
    if edit4.text<>'' then
    begin
      SQL.add('      and ZLZLS2.ZLBH like '''+Edit4.Text+'%'+''' ');
    end;
    SQL.Add('        and CLZL.CLDH like ''W%''   ');
    SQL.Add('        and DDZL.GSBH='''+main.Edit2.Text+'''   ');
    SQL.Add('        and DDZL.YN<>5  ');
    SQL.Add('  Group by CLZL.CLDH,ZLZLS2.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCLLS.Qty    ');
    SQL.Add('  ) ZLZLS2  ');
    if NoDelCK.Checked=true then
      SQL.Add('  where Flag=0   ');
    SQL.Add('  order by CLBH,ZLBH  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TDelOther_KI_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value>0 then
  begin
    with DelOther_KI.DelDet do
    begin
      fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
      fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
      fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
      fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
      fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
      fieldbyname('CostID').value:=Pro_CostID_ZZ;
      fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
      insert;
    end;
    showmessage('Succeed');
  end;
end;

procedure TDelOther_KI_Mat.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('CLSL').value<=query1.FieldByName('Qty').value then
  begin
    DBGridEh1.canvas.font.Color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_KI_Mat.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to   Query1.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
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

end;

procedure TDelOther_KI_Mat.Button2Click(Sender: TObject);
var bm:Tbookmark;
  i:integer;
  Qty:real;
  bookmarklist:tbookmarklistEh;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  Qty:=0;
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  query1.disablecontrols;
  bm:=query1.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          if query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value>0 then
          begin
            with DelOther_KI.DelDet do
            begin
              fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
              fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
              fieldbyname('CostID').value:=Pro_CostID_ZZ;
              fieldbyname('CLSL').value:=0;
              insert;
            end;
          end;
        end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;
end;

procedure TDelOther_KI_Mat.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
