unit MaterialCostRea_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, DB, DBTables, Menus, GridsEh, DBGridEh,comobj;

type
  TMaterialCostRea_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    Print1: TMenuItem;
    Query1: TQuery;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Query1FYLB: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TFloatField;
    Query1CFMDate: TDateTimeField;
    Query1LLNO: TStringField;
    Query1SCBH: TStringField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    DataSource1: TDataSource;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialCostRea_Det: TMaterialCostRea_Det;

implementation

uses MaterialCostRea1, main1;

{$R *.dfm}

procedure TMaterialCostRea_Det.FormDestroy(Sender: TObject);
begin
MaterialCostRea_Det:=nil;
end;

procedure TMaterialCostRea_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TMaterialCostRea_Det.FormCreate(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select LL.FYLB,LL.DepID,BDepartment.DepName,LL.CLBH,LL.LLNO,LL.CFMDate,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,LL.SCBH,');
    sql.Add('       LL.YYBH,SCBLYY.YWSM,SCBLYY.ZWSM,LL.Qty,CWDJ.USPrice,round(LL.Qty*CWDJ.USPrice,2) as USACC');
    sql.add('from (select CLLBFYS.FYLB,KCLL.DepID,KCLLS.CLBH,KCLLS.LLNO,KCLL.CFMDate,KCLLS.YYBH,KCLLS.Qty,KCLLS.SCBH ');
    sql.add('      from KCLLS');
    sql.add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and CLLBFYS.GSBH=KCLL.GSBH');
    //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ')  ;
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',MaterialCostRea.DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',MaterialCostRea.DTP2.date)+'''');
    sql.add('            and BDepartment.GSBH='+''''+MaterialCostRea.CBX4.Text+'''');
    sql.add('            and KCLLS.Qty<>0');
    sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
    if MaterialCostRea.query1.fieldbyname('FYLB').isnull then
      begin
        sql.add('            and CLLBFYS.FYLB is null ');
      end
      else
        begin
          sql.add('          and CLLBFYS.FYLB like '+''''+MaterialCostRea.query1.fieldbyname('FYLB').asstring+'%'+'''');
        end;
    if MaterialCostRea.query1.fieldbyname('YYBH').isnull then
      begin
        sql.add('            and KCLLS.YYBH is null');
      end
      else
        begin
          sql.add('          and KCLLS.YYBH='+''''+MaterialCostRea.Query1.fieldbyname('YYBH').asstring+'''');
        end;
    sql.add('     ) LL   ');
    sql.add('left join BDepartment on BDepartment.ID=LL.DepID');
    sql.add('left join CLZL on CLZl.CLDH=LL.CLBH');
    sql.add('left join SCBLYY on SCBLYY.YYBH=LL.YYBH');
    sql.add('left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('order by LL.FYLB,LL.DepID,LL.CLBH,LL.LLNO');
    active:=true;
  end;
end;

procedure TMaterialCostRea_Det.EXCEL1Click(Sender: TObject);
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

procedure TMaterialCostRea_Det.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

procedure TMaterialCostRea_Det.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
