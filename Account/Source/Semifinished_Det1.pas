unit Semifinished_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, Grids, DBGrids, Comobj, GridsEh, DBGridEh;

type
  TSemifinished_Det = class(TForm)
    Query1: TQuery;
    Query1LLNO: TStringField;
    Query1CLBH: TStringField;
    Query1SCBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1TempQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1DFL: TStringField;
    Query1Person: TFloatField;
    Query1CKBH: TStringField;
    Query1BLSB: TStringField;
    Query1MEMO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1MJBH: TStringField;
    Query1DType: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DS1: TDataSource;
    Query1YWPM: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1VNPrice: TFloatField;
    Query1VNACC: TFloatField;
    Query1HGLB: TStringField;
    Query1CNO: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowDetail();
  public
    { Public declarations }
  end;

var
  Semifinished_Det: TSemifinished_Det;

implementation
  uses Semifinished1,FunUnit;
{$R *.dfm}

procedure TSemifinished_Det.ShowDetail();
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     //201802¤§«á´À´«KCLLS.HGLB
     SQL.Add('select KCLLS.LLNo,KCLLS.CLBH,CLZL.YWPM,KCLLS.DFL,KCLLS.CLSL,KCLLS.SCBH,KCLLS.TempQty,KCLLS.Qty,KCLLS.MEMO,KCLLS.BLSB,KCLLS.USERID,KCLLS.USERDATE');
     SQL.Add('       ,KCLLS.YYBH,SCBLYY.YWSM,KCLL.CKBH,KCLLS.CLBH as MJBH,''Assembly'' as DType,KCLL.CFMDate,KCLLS.VNPrice_HG as VNPrice,KCLLS.VNACC_HG as VNACC,KCLLS.HGLB,');
     SQL.Add('       case when KCLLS.HGLB in (''NK'',''KD'') then IsNull(KCLLS.CNO,CLHG.HGBH) else '''' end as CNO,CLHG.UnitC,CLHG.RateC');
     SQL.Add('from KCLLS');
     SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
     SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
     SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
     SQL.Add('left join CLHG on CLHG.CLBH=KCLLS.CLBH');
     SQL.Add('where  KCLL.YN=5 and KCLLS.SCBH='''+Semifinished.Query1.FieldByName('DDBH').AsString+''' ');
     SQL.Add('and convert(smalldatetime,convert(varchar,KCLL.CFMDate))<='''+formatdatetime('yyyy/MM/dd',Semifinished.DTP3.Date)+''' ');
     SQL.Add('   and KCLL.CFMID<>''NO''');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;


procedure TSemifinished_Det.FormShow(Sender: TObject);
begin
  ShowDetail();
end;

procedure TSemifinished_Det.FormDestroy(Sender: TObject);
begin
  Semifinished_Det:=nil;
end;

procedure TSemifinished_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSemifinished_Det.Excel1Click(Sender: TObject);
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
