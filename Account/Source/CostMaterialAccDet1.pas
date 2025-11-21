unit CostMaterialAccDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh,comobj;

type
  TCostMaterialAccDet = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Query1: TQuery;
    Query1SCBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TFloatField;
    Query1LLNO: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1SB: TStringField;
    Query1DepName: TStringField;
    Query1VNACC: TFloatField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    Query1CostID: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostMaterialAccDet: TCostMaterialAccDet;

implementation

uses CostmaterialNo1, CostmaterialAcc1;

{$R *.dfm}

procedure TCostMaterialAccDet.FormDestroy(Sender: TObject);
begin
CostMaterialAccDet:=nil;
end;

procedure TCostMaterialAccDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostMaterialAccDet.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if Query1.Active then
  begin
    if Query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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

procedure TCostMaterialAccDet.FormCreate(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,Bdepartment.DepName,KCLLS.Qty,KCLLS.VNPrice');
    sql.add('        ,KCLLS.VNACC,CLZL.YWPM,CLZl.DWBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+') as SB,KCLLS.CostID');
    sql.add('from KCLLS');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('where isnull(KCLLS.CWSB,'+''''+'1'+''''+')=:SB ');
    sql.add('      and KCLL.GSBH=:GSBH ');
    sql.add('      and KCLLS.CostID=:CostID');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',CostMaterialAcc.DTP1.Date)+''''+' and '+''''+ formatdatetime('yyyy/MM/dd',CostMaterialAcc.DTP2.Date)+'''');
    //sql.add('      and  DDZl.Article is not  null ');
    sql.add('      and ( exists(select DDBH from CWDD where CWDD.CWYEAR+CWDD.CWMONTH<'+''''+ CostMaterialAcc.CBX1.text+ CostMaterialAcc.CBX2.text+'''');
    sql.add('                     and CWDD.DDBH=KCLLS.SCBH and CWDD.YN='+''''+'2'+''''+')');
    sql.add('            or not exists(select DDBH from DDZL where DDZL.DDBH=KCLLS.SCBH )  )');
    sql.add('order by KCLLS.CLBH,KCLLS.LLNO ');
    active:=true;
  end;
end;

end.
