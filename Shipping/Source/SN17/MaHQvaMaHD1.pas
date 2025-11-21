unit MaHQvaMaHD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons,
  ExtCtrls,comobj,FunUnit;

type
  TMaHQvaMaHD = class(TForm)
    Panel2: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    MatNoEdit: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    ShowCK: TCheckBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1HG_HGBH: TStringField;
    Query1HG_HGPM: TStringField;
    Query1HG_UnitC: TStringField;
    Query1HG_RateC: TFloatField;
    Query1HD_HGBH: TStringField;
    Query1HD_HGPM: TStringField;
    Query1HD_UnitD: TStringField;
    Query1HD_RateC: TFloatField;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
  public
    { Public declarations }
  end;

var
  MaHQvaMaHD: TMaHQvaMaHD;

implementation

{$R *.dfm}

procedure TMaHQvaMaHD.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TMaHQvaMaHD.GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
var tmpList,tmpList1:TStringlist;
    i:integer;
begin
  SQL:='';
  if trim(EditObj.Text)<>'' then
  begin
    if  (Pos('|', EditObj.Text)>0)  then
    begin
      tmpList:=funcObj.SplitString(trim(EditObj.Text),'|');
      for i:=0 to tmpList.Count-1 do
      begin
       if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and '
       else
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and ';
      end;
      SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
      tmpList.Free;
    end else
    begin
    if Pos('*', EditObj.Text)>0 then
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end else
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end;
    end;
  end;
end;

procedure TMaHQvaMaHD.Button1Click(Sender: TObject);
var i:integer;
    tmpList:TStringlist;
    MatNoSQL:string;
begin
  GetSubSQL(MatNoSQL,SpeedButton1,MatNoEdit,'CLBH','');
  with Query1 do
  begin
    Active:=false;
    sql.Clear;
    if ShowCK.Checked=true then
    begin
      sql.add('select top 1000 CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,CLHG.HGBH as HG_HGBH,CLHG.HGPM as HG_HGPM,CLHG.UnitC as HG_UnitC,CLHG.RateC as HG_RateC,');
      sql.add('CLHD.HGBH as HD_HGBH,CLHD.HGPM as HD_HGPM,CLHD.UnitC as HD_UnitD,CLHD.RateC as HD_RateC ');
    end else
    begin
      sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,CLHG.HGBH as HG_HGBH,CLHG.HGPM as HG_HGPM,CLHG.UnitC as HG_UnitC,CLHG.RateC as HG_RateC,');
      sql.add('CLHD.HGBH as HD_HGBH,CLHD.HGPM as HD_HGPM,CLHD.UnitC as HD_UnitD,CLHD.RateC as HD_RateC ');
    end;
    sql.add('from CLZL ');
    sql.add('left join CLHD on CLHD.CLBH=CLZL.CLDH  ');
    sql.add('left join CLHG on CLHG.CLBH=CLZL.CLDH  ');
    sql.add('Where 1=1 ');
    SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'CLZL.CLDH',[rfReplaceAll, rfIgnoreCase]));
    sql.add('and clzl.ywpm like '+'''%'+edit2.Text+'%'+'''');
    if CheckBox1.Checked = true then
    begin
      SQL.Add('and ((CLHD.CLBH is not null) or (CLHG.CLBH is not null)) ');
      SQL.Add(' ');
    end;
    sql.add('order by CLHD.clbh  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  bbt6.Enabled:= true;
end;

procedure TMaHQvaMaHD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaHQvaMaHD.bbt6Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
    begin                                             
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        Query1.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
