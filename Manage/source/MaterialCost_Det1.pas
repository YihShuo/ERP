unit MaterialCost_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Menus,comobj, PrnDbgeh;

type
  TMaterialCost_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Query1CLBH: TStringField;
    Query1LLNO: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWPM: TStringField;
    Query1ZWSM: TStringField;
    Query1FYLB: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    Print1: TMenuItem;
    Query1USACC: TFloatField;
    Query1SCBH: TStringField;
    Query1MeMo: TStringField;
    Query1Article: TStringField;
    Query1pairs: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialCost_Det: TMaterialCost_Det;

implementation

uses MaterialCost1, main1;

{$R *.dfm}

procedure TMaterialCost_Det.FormCreate(Sender: TObject);
begin  {
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select LL.FYLB,LL.DepID,BDepartment.DepName,LL.CLBH,LL.LLNO,LL.CFMDate,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,LL.Son_CLBH,LL.SCBH,');
    sql.Add('       LL.YYBH,SCBLYY.YWSM,SCBLYY.ZWSM,round(LL.Qty*LL.SYL,2) as Qty,#CostUSPrice.USPrice,round(LL.Qty*LL.SYL*#CostUSPrice.USPrice,2) as USACC,#CostUSPrice.VNPrice');
    sql.add('from (select CLLBFYS.FYLB,KCLL.DepID,KCLLS.CLBH,KCLLS.LLNO,KCLL.CFMDate,KCLLS.YYBH,KCLLS.Qty,isnull(CLZHZL.SYL,1) SYL,');
    sql.add('             case when CLZHZL.CLDH1 is null then KCLLS.CLBH else CLZHZL.CLDH1 end as Son_CLBH ,KCLLS.SCBH ');
    sql.add('             ,substring(DepMemo,1,case when charindex('+''''+'_'+''''+',DepMemo)=0 then 4 else  charindex('+''''+'_'+''''+',DepMemo)-1 end ) as GSBH');
    sql.add('      from KCLLS');
    sql.add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and CLLBFYS.GSBH=KCLL.GSBH');
    sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH ');
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',MaterialCost.DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',MaterialCost.DTP2.date)+'''');
    sql.add('            and KCLL.DepID='+''''+MaterialCost.Query1.fieldbyname('DepID').asstring+'''');
    sql.add('            and KCLLS.Qty<>0');
    if MaterialCost.query1.fieldbyname('FYLB').isnull then
      begin
        sql.add('            and CLLBFYS.FYLB is null ');
      end
      else
        begin
          sql.add('          and CLLBFYS.FYLB like '+''''+MaterialCost.query1.fieldbyname('FYLB').asstring+'%'+'''');
        end;
    sql.add('     ) LL   ');
    sql.add('left join BDepartment on BDepartment.ID=LL.DepID');
    sql.add('left join CLZL on CLZl.CLDH=LL.Son_CLBH');
    sql.add('left join SCBLYY on SCBLYY.YYBH=LL.YYBH');
    sql.add('left join #CostUSPrice on #CostUSPrice.CLBH=LL.Son_CLBH ');
    sql.add('where LL.GSBH='+''''+MaterialCost.fieldbyname('GSBH').value+'''');
    sql.add('order by LL.FYLB,LL.DepID,LL.CLBH,LL.LLNO');
    active:=true;
  end;}
end;

procedure TMaterialCost_Det.EXCEL1Click(Sender: TObject);
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

procedure TMaterialCost_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
end;

procedure TMaterialCost_Det.FormDestroy(Sender: TObject);
begin
materialcost:=nil;
end;

procedure TMaterialCost_Det.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.Preview;
end;

procedure TMaterialCost_Det.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[DDate]',formatdatetime('yyyy/MM/dd',materialCost.DTP1.Date)+'--'+formatdatetime('yyyy/MM/dd',materialCost.DTP2.date)]);
end;

procedure TMaterialCost_Det.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
