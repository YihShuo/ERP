unit CostMaterialDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids,comobj ,
  EHlibBDE, GridsEh, DBGridEh, PrnDbgeh;

type
  TCostMaterialDet = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    Query1CFMDate: TDateTimeField;
    Query1LLNO: TStringField;
    Query1SCBH: TStringField;
    Query1CLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1VNACC: TIntegerField;
    Query1SB: TStringField;
    Query1DepName: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostMaterialDet: TCostMaterialDet;

implementation

uses CostMaterial1;

{$R *.dfm}

procedure TCostMaterialDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
action:=cafree;
end;

procedure TCostMaterialDet.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,Bdepartment.DepName,');
    sql.add('        KCLLS.Qty,KCLLS.VNPrice,KCLLS.VNACC,CLZL.YWPM,CLZl.DWBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+') as SB');
    sql.add('from KCLLS');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join DDZL on KCLLS.SCBH=DDZl.ZLBH ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('where KCLLS.SCBH=:DDBH ');
    sql.add('      and isnull(KCLLS.CWSB,'+''''+'1'+''''+')=:SB ');
    sql.add('      and KCLL.GSBH=:GSBH ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',CostMaterial.DTP1.Date)+''''+' and '+''''+ formatdatetime('yyyy/MM/dd',CostMaterial.DTP2.Date)+'''');
    sql.add('      and not exists(select YSBH from CWDD where CWDD.CWYEAR+CWDD.CWMONTH<'+''''+ CostMaterial.CBX1.text+ CostMaterial.CBX2.text+'''');
    sql.add('                    and CWDD.YSBH=KCLLS.SCBH and CWDD.SB='+''''+'1'+''''+' and CWDD.YN='+''''+'2'+''''+')');
    sql.add('      and  DDZl.Article is not  null ');
    sql.add('order by KCLLS.CLBH,KCLLS.LLNO ');
    active:=true;
  end;
end;

procedure TCostMaterialDet.Query1CalcFields(DataSet: TDataSet);
begin
query1.FieldByName('VNACC').Value:=query1.FieldByName('VNPrice').Value*query1.FieldByName('Qty').Value;
end;

procedure TCostMaterialDet.Excel1Click(Sender: TObject);
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

procedure TCostMaterialDet.Print1Click(Sender: TObject);
//var i:integer;
begin {
CostMaterialDet_Print:=TCostMaterialDet_Print.create(self);
CostMaterialDet_Print.quickrep1.prepare;
i:=CostMaterialDet_Print.quickrep1.qrprinter.pagecount;
CostMaterialDet_Print.page1.caption:=inttostr(i);
CostMaterialDet_Print.quickrep1.preview;
CostMaterialDet_Print.free;  }
printdbgrideh1.preview;
end;

procedure TCostMaterialDet.FormDestroy(Sender: TObject);
begin
costmaterialdet:=nil;
end;

end.
