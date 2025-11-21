unit monthcostp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables,comobj,
  ComCtrls, GridsEh, DBGridEh;

type
  Tmonthcost = class(TForm)
    Panel1: TPanel;
    cb1: TComboBox;
    Label1: TLabel;
    datashow: TQuery;
    qtemp: TQuery;
    DataSource1: TDataSource;
    Query: TButton;
    Excel: TButton;
    datashowworkno: TStringField;
    datashowname: TStringField;
    datashowtarget: TIntegerField;
    datashowreality: TIntegerField;
    datashowovercount: TIntegerField;
    datashowtotcost: TFloatField;
    mat: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource2: TDataSource;
    datashowym: TStringField;
    Query1inputday: TStringField;
    Query1target: TIntegerField;
    Query1reality: TIntegerField;
    Query1overcount: TIntegerField;
    Query1totcost: TFloatField;
    Query1xiexing: TStringField;
    DBGridEh1: TDBGridEh;
    Qtemp2: TQuery;
    Label2: TLabel;
    cb2: TComboBox;
    procedure ExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  monthcost: Tmonthcost;

implementation

{$R *.dfm}

procedure Tmonthcost.ExcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j,s:integer;
begin

if datashow.Active then
  begin
    if datashow.recordcount=0 then
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
  for i:=3 to datashow.RecordCount do
    eclapp.workbooks[1].sheets.add;
  eclapp.workbooks[1].sheets[1].name:='Total Report';
  eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';
  for   i:=1   to   datashow.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=datashow.fields[i-1].FieldName;
    end;
  datashow.First;
  j:=2;
  while   not  datashow.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for   i:=1   to   datashow.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=datashow.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      datashow.Next;
      inc(j);
    end;
//  eclapp.columns.autofit;
  
//產生明細 edit by billweng 2011/6/29
  datashow.First;

  s:=2;
  while   not  datashow.Eof   do
  begin


    eclapp.workbooks[1].sheets[s].name:=datashow.fields[0].value;
    eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

    for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
    query1.First;
    j:=2;
    while   not  QUERY1.Eof   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
      inc(j);
    end;
    S:=S+1;
    datashow.Next;
  end;
//結束

  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;
end;

procedure Tmonthcost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qtemp.Active:=false;
  datashow.Active:=false;
  action:=cafree;
end;

procedure Tmonthcost.FormCreate(Sender: TObject);
var  i,j:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CONVERT(char(7),inputdate,111) as workm ');
    sql.add('from workoverreport ');
    sql.add('group by CONVERT(char(7),inputdate,111) ');
    sql.add('order by CONVERT(char(7),inputdate,111) ');
    active:=true;
    cb1.Items.Add('');
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('workm').asstring);
        next;
      end;
  end;
with Qtemp2 do
 begin
  active:=false;
  sql.Clear;
  sql.Add('select distinct Dep from people where dep is not null');
  sql.Add('order by dep');
  active:=true;
  cb2.Items.Add('');
  for j:=1 to recordcount do
      begin
        CB2.Items.Add(fieldbyname('dep').asstring);
        next;
      end;
 end;
end;

procedure Tmonthcost.QueryClick(Sender: TObject);
begin
with datashow do
  begin
    active:=false;
    sql.Clear;
    sql.add('select workoverreport.workno,people.name,');
    sql.add('          sum(sqty) as target,sum(rqty) as reality,');
    sql.add('          sum(qty) as overcount,sum(qty*cost) as totcost, ');
    sql.add('          CONVERT(char(7),workoverreport.inputdate,111) as ym ');
    sql.add('from workoverreport ');
    sql.add('left join people on workoverreport.workno=people.workno');
    sql.add(' where CONVERT(char(7),inputdate,111)= '+''''+cb1.Text+'''');
    sql.add('     --and qty > 0');
    if cb2.Text<>'' then
      sql.Add('and people.dep= '+''''+cb2.Text+'''');
    sql.add('group by workoverreport.workno,people.name,CONVERT(char(7),workoverreport.inputdate,111) ');
    sql.add('order by workoverreport.workno,people.name');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  query1.Active:=true;
end;




end.
