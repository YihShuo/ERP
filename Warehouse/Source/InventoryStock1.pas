unit InventoryStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,comobj;

type
  TInventoryStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CB1: TComboBox;
    Button1: TButton;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query2: TQuery;
    Query1CLBH: TStringField;
    Query1QTY: TCurrencyField;
    Query1CWHL: TIntegerField;
    Query1VNPrice: TFloatField;
    Query1VNACC: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InventoryStock: TInventoryStock;

implementation

uses InventoryStock_P1;

{$R *.dfm}

procedure TInventoryStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TInventoryStock.Button1Click(Sender: TObject);
var a,b:string;
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct KCYEAR,KCMONTH');
    sql.add('from KCCLMONTH');
    sql.add('where YN='+''''+'1'+'''');
    sql.add('order by KCYEAR DESC,KCMONTH DESC');
    active:=true;
    a:=fieldbyname('KCYEAR').value;
    b:=fieldbyname('KCMONTH').value;
    active:=false;
  end;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH from KCCLMONTH ');
    sql.add('left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH ');
    sql.add('where not exists(select KCLLS.CLBH from KCLLS ');
    sql.add('          where KCLLS.CLBH=KCCLMONTH.CLBH ');
    sql.add('          and KCLLS.USERDATE>='+''''+formatdatetime('yyyy/MM/dd',startofthemonth(IncMonth(date,0-strtoint(CB1.Text))))+''''+')');
    sql.add('and not exists(select KCRKS.CLBH from KCRKS ');
    sql.add('          where KCRKS.CLBH=KCCLMONTH.CLBH ');
    sql.add('          and KCRKS.USERDATE>='+''''+formatdatetime('yyyy/MM/dd',startofthemonth(IncMonth(date,0-strtoint(CB1.Text))))+''''+')'); 
    sql.add('and not exists(select JGZLS.CLBH from JGZLS ');
    sql.add('          where JGZLS.CLBH=KCCLMONTH.CLBH ');
    sql.add('          and JGZLS.USERDATE>='+''''+formatdatetime('yyyy/MM/dd',startofthemonth(IncMonth(date,0-strtoint(CB1.Text))))+''''+')');
    sql.add('and not exists(select CGZLS.CLBH from CGZLS ');
    sql.add('          where CGZLS.CLBH=KCCLMONTH.CLBH ');
    sql.add('          and CGZLS.USERDATE>='+''''+formatdatetime('yyyy/MM/dd',startofthemonth(IncMonth(date,0-strtoint(CB1.Text))))+''''+')');
    sql.add('and KCCLMONTH.KCYEAR='+''''+a+'''');
    sql.add('and KCCLMONTH.KCMONTH='+''''+b+'''');
    sql.add('and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('order by KCCLMONTH.CLBH ');
    active:=true;
  end;
end;

procedure TInventoryStock.Button2Click(Sender: TObject);
var i:integer;
begin
InventoryStock_P:=TInventoryStock_P.create(self);
InventoryStock_P.quickrep1.prepare;
i:=InventoryStock_P.quickrep1.qrprinter.pagecount;
InventoryStock_P.page1.caption:=inttostr(i);
InventoryStock_P.quickrep1.preview;
InventoryStock_P.free;
end;

procedure TInventoryStock.Button3Click(Sender: TObject);
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

procedure TInventoryStock.FormDestroy(Sender: TObject);
begin
InventoryStock:=nil;
end;

end.
