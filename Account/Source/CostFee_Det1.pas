unit CostFee_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids,comobj,
  GridsEh, DBGridEh;

type
  TCostFee_Det = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
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
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1DepName: TStringField;
    Query1DepID: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostFee_Det: TCostFee_Det;

implementation

uses CostFee1;

{$R *.dfm}

procedure TCostFee_Det.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,');
    sql.add('KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZl.DWBH,KCLLS.YYBH,');
    sql.add('SCBLYY.YWSM,BDepartment.DepName,KCLL.DepID');
    sql.add('from KCLLS');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    sql.add('where KCLLS.YYBH=:YYBH ');
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',CostFee.DTP1.Date)+'''');
    sql.add(' and '+''''+ formatdatetime('yyyy/MM/dd',CostFee.DTP2.Date)+'''');
    sql.add('and KCLLS.Qty<>0');
    sql.add('and not exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH )');
    if CostFee.CBX1.text<>'ALL' then
      begin
        sql.add('and BDepartment.DepName like '+''''+CostFee.CBX1.Text+'%'+'''');
      end;
    sql.add('order by KCLLS.CLBH,KCLLS.LLNO ');
    active:=true;
  end;
end;

procedure TCostFee_Det.Query1CalcFields(DataSet: TDataSet);
begin
query1.FieldByName('VNACC').Value:=query1.FieldByName('VNPrice').Value*query1.FieldByName('Qty').Value
end;

procedure TCostFee_Det.Excel1Click(Sender: TObject);
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

procedure TCostFee_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostFee_Det.FormDestroy(Sender: TObject);
begin
costfee_det:=nil;
end;

end.
