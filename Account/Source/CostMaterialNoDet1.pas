unit CostMaterialNoDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh,comobj;

type
  TCostMaterialNoDet = class(TForm)
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
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    Query1VNACC: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostMaterialNoDet: TCostMaterialNoDet;

implementation

uses CostmaterialNo1;

{$R *.dfm}

procedure TCostMaterialNoDet.FormCreate(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,Bdepartment.DepName,KCLLS.Qty,KCLLS.VNPrice');
    sql.add('        ,KCLLS.VNACC,CLZL.YWPM,CLZl.DWBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+') as SB');
    sql.add('from KCLLS');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join CLLBFYS on CLLBFYS.GSBH=KCLL.GSBH and CLLBFYS.CLBH=KCLLS.CLBH ');
    sql.add('left join CLLBFY on CLLBFY.LBBH=substring(CLLBFYS.FYLB,1,1) and CLLBFY.XH='+''''+'01'+'''');
    //sql.add('left join DDZL on KCLLS.SCBH=DDZl.ZLBH ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('where isnull(KCLLS.CWSB,'+''''+'1'+''''+')=:SB ');
    sql.add('      and KCLL.GSBH=:GSBH ');
    sql.add('      and substring(CLLBFYS.FYLB,1,1)=:LBBH ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',CostMaterialNo.DTP1.Date)+''''+' and '+''''+ formatdatetime('yyyy/MM/dd',CostMaterialNo.DTP2.Date)+'''');
    //sql.add('      and  DDZl.Article is not  null ');
    sql.add('      and ( exists(select DDBH from CWDD where CWDD.CWYEAR+CWDD.CWMONTH<'+''''+ CostMaterialNo.CBX1.text+ CostMaterialNo.CBX2.text+'''');
    sql.add('                     and CWDD.DDBH=KCLLS.SCBH and CWDD.YN='+''''+'2'+''''+')');
    sql.add('            or not exists(select DDBH from DDZL where DDZL.DDBH=KCLLS.SCBH )  )');
    sql.add('order by KCLLS.CLBH,KCLLS.LLNO ');
    active:=true;
  end;
end;

procedure TCostMaterialNoDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostMaterialNoDet.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
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
procedure TCostMaterialNoDet.Print1Click(Sender: TObject);
begin
printdbgrideh1.preview;
end;

end.


