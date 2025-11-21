unit ReplenishDep_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Menus, PrnDbgeh,comobj;

type
  TReplenishDep_Det = class(TForm)
    Query1: TQuery;
    Query1LLNO: TStringField;
    Query1ZLBH: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1DepName: TStringField;
    Query1CLBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1CLSL: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1PerSon: TFloatField;
    Query1Pairs: TIntegerField;
    Query1YWSM: TStringField;
    Query1ACCUS: TFloatField;
    DataSource1: TDataSource;
    DBGrid1: TDBGridEh;
    Query1ZWSM: TStringField;
    Query1USPrice: TCurrencyField;
    Query1ZWPM: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1USERNAME: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDep_Det: TReplenishDep_Det;

implementation

uses ReplenishDep1;

{$R *.dfm}

procedure TReplenishDep_Det.FormDestroy(Sender: TObject);
begin
ReplenishDep_Det:=nil;
end;

procedure TReplenishDep_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TReplenishDep_Det.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLLS.LLNO,KCLLS.CFMDate,KCLLS.USERDate,KCLLS.DepName,KCLLS.ZLBH,KCLLS.Article,KCLLS.XieMing,KCLLS.CLBH,');
    sql.add('       KCLLS.Qty,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCLLS.CLSL,KCLLS.Pairs,SCBLYY.YWSM,SCBLYY.ZWSM,');
    sql.add('       CWDJ.USPrice,KCLLS.Qty*CWDJ.USPrice as ACCUS,Busers.USERNAME');
    sql.add('from (select KCLL.LLNO,KCLL.CFMDate,KCLL.USERDATE,Bdepartment.DepName,KCLLS.SCBH AS ZLBH ,XXZL.Article,XXZl.XieMing,');
    sql.add('             KCLLS.CLBH,KCLLS.SCBH,KCLLS.Qty,KCLLS.CLSL,DDZL.Pairs,KCLLS.YYBH,KCLL.USERID');
    sql.add('      from  KCLL');
    sql.add('      left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    sql.add('      left join BDepartment on BDepartment.[ID]=KCLL.DepID');
    //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('      left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH');
    sql.add('      left join DDZL on DDZL.ZLBH=ZLZL.ZLBH');
    sql.add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and DDZL.SheHao=XXZl.SheHao ')  ;
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/mm/dd',ReplenishDep.DTP1.date)+''''+' and '+'''' +formatdatetime('yyyy/mm/dd',ReplenishDep.DTP2.date)+'''');
    sql.add('            and KCLLS.SCBH like '+''''+ReplenishDep.edit1.Text+'%'+'''');
    sql.add('            and KCLL.DepID=:DepID');
    sql.add('            and KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('            and KCLLS.Qty<>0');
    sql.add('      ) KCLLS    ');   
    sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join Busers on Busers.USERID=KCLLS.USERID');
    sql.add('order by KCLLS.USERDate,KCLLS.LLNO,KCLLS.DepName');
    active:=true;
  end;
end;

procedure TReplenishDep_Det.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.preview;
end;

procedure TReplenishDep_Det.Query1CalcFields(DataSet: TDataSet);
begin

if  Query1.Fieldbyname('CLSL').value<>0 then
Query1.fieldbyname('Person').value:=Query1.Fieldbyname('Qty').value/Query1.Fieldbyname('CLSL').value*100;
end;

procedure TReplenishDep_Det.Excel1Click(Sender: TObject);
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
