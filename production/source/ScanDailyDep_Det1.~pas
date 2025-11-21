unit ScanDailyDep_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh,comobj;

type
  TScanDailyDep_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Country: TStringField;
    Query1KFJC: TStringField;
    Query1Qty: TFloatField;
    Query1okQty: TIntegerField;
    Query1CTS: TIntegerField;
    Query1okCTS: TIntegerField;
    Query1ETD: TDateTimeField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Query1NowQty: TIntegerField;
    Query1NowCTS: TIntegerField;
    Query1InDate: TStringField;
    Query1DepName: TStringField;
    Query1VarianceQty: TFloatField;
    Query1VarianceCTS: TIntegerField;
    Query1TotalSGW: TFloatField;
    Query1TotalRGW: TFloatField;
    Query1AvgSGW: TFloatField;
    Query1AvgRGW: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanDailyDep_Det: TScanDailyDep_Det;

implementation

uses ScanDailyDep1, main1, FunUnit;

{$R *.dfm}

procedure TScanDailyDep_Det.FormDestroy(Sender: TObject);
begin
ScanDailyDep_Det:=nil;
end;

procedure TScanDailyDep_Det.FormCreate(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');
    sql.add('       YWDD.Qty,okYWCP.okQty,sum(YWCP.Qty) as NowQty,YWBZPO.CTS,okYWCP.okCTS,count(YWCP.DDBH) as NowCTS');
    sql.add('       ,convert(varchar,YWCP.InDate,111) as InDate,BDepartment.DepName,');
    sql.Add('       (YWDD.Qty-okYWCP.okQty) as VarianceQty,(YWBZPO.CTS-okYWCP.okCTS) as VarianceCTS,okYWCP.TotalSGW,okYWCP.TotalRGW,okYWCP.AvgSGW,okYWCP.AvgRGW ');
    sql.add('from YWCP  with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepNo ');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH ');
    sql.add('left join (select DDBH,count(DDBH) as okCTS,sum(Qty) as okQty,Round(SUM(sgw),3) as TotalSGW,Round(AVG(sgw),3) as AvgSGW,Round(SUM(rgw),3) as TotalRGW,Round(AVG(rgw),3) as AvgRGW from YWCP with (nolock) '); 
    sql.add('           where InDate is not null ');
    sql.Add('           group by DDBH ) okYWCP on okYWCP.DDBH=YWDD.DDBH ');   
    sql.Add('where DDZL.DDBH like '+''''+ScanDailyDep.edit1.Text+'%'+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+ScanDailyDep.edit2.text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+ScanDailyDep.edit3.Text+'%'+'''');
    //sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('      and convert(varchar,YWCP.Indate,111)='+''''+ScanDailyDep.query1.FieldByName('InDate').value+'''');
    sql.add('      and YWCP.DepNo='+''''+ScanDailyDep.Query1.FieldByName('DepNo').value+'''');
    sql.add('group by YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,');
    sql.add('         YWDD.Qty,okYWCP.okQty,YWBZPO.CTS,okYWCP.okCTS,convert(varchar,YWCP.InDate,111),BDepartment.DepName,okYWCP.TotalSGW,okYWCP.TotalRGW,okYWCP.AvgSGW,okYWCP.AvgRGW');
    sql.add('order by YWCP.DDBH ');
    active:=true;
  end;
end;

procedure TScanDailyDep_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
end;

procedure TScanDailyDep_Det.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if query1.FieldByName('okQty').value=query1.FieldByName('Qty').value then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
end;

procedure TScanDailyDep_Det.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
//PrintDBGridEh1.SetSubstitutes(['%[InDate]',ScanDailyDep.query1.FieldByName('InDate').value,'%[DepName]',ScanDailyDep.Query1.FieldByName('DepName').value]);
end;

procedure TScanDailyDep_Det.Print1Click(Sender: TObject);
begin
PrintDbGrideh1.Preview;
end;

procedure TScanDailyDep_Det.Excel1Click(Sender: TObject);
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
