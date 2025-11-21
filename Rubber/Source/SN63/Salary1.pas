unit Salary1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Grids, DBGrids, ComCtrls,
  StdCtrls, ExtCtrls,comobj;

type
  TSalary = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cb1: TComboBox;
    Query: TButton;
    Excel: TButton;
    cb2: TComboBox;
    mat: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    datashow: TQuery;
    datashowworkno: TStringField;
    datashowname: TStringField;
    datashowtarget: TIntegerField;
    datashowreality: TIntegerField;
    datashowovercount: TIntegerField;
    datashowtotcost: TFloatField;
    datashowym: TStringField;
    qtemp: TQuery;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1inputday: TStringField;
    Query1xiexing: TStringField;
    Query1target: TIntegerField;
    Query1reality: TIntegerField;
    Query1overcount: TIntegerField;
    Query1totcost: TFloatField;
    DataSource2: TDataSource;
    Qtemp2: TQuery;
    ckbDate: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Salary: TSalary;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TSalary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qtemp.Active:=false;
  datashow.Active:=false;
  action:=cafree;
end;

procedure TSalary.FormDestroy(Sender: TObject);
begin
  Salary:=nil;
end;

procedure TSalary.ExcelClick(Sender: TObject);
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

procedure TSalary.FormCreate(Sender: TObject);
var  i,j:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CONVERT(char(7),inputdate,111) as workm ');
    sql.add('from '+main.LIY_DD+'.dbo.workoverreport ');
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
    sql.Add('select distinct Dep from '+main.LIY_DD+'.dbo.people where dep is not null');
    sql.Add('order by dep');
    active:=true;
    //cb2.Items.Add('');
    for j:=1 to recordcount do
    begin
      CB2.Items.Add(fieldbyname('dep').asstring);
      next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select convert(smalldatetime,convert(varchar,getdate(),111)) as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  DTP1.Date:=NDate;
  DTP2.Date:=NDate;
end;

procedure TSalary.QueryClick(Sender: TObject);
begin
  with datashow do
  begin
    active:=false;
    sql.Clear;
    sql.add('select workoverreport.workno,people.name,');
    sql.add('          sum(sqty) as target,sum(rqty) as reality,');
    sql.add('          sum(qty) as overcount,sum(qty*cost) as totcost, ');
    sql.add('          CONVERT(char(7),workoverreport.inputdate,111) as ym ');
    sql.add('from '+main.LIY_DD+'.dbo.workoverreport workoverreport ');
    sql.add('left join '+main.LIY_DD+'.dbo.people people on workoverreport.workno=people.workno');
    sql.add(' where 1=1');
    if ckbDate.Checked then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,workoverreport.inputdate,121)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+'''');
    end else
    begin
      sql.add('and CONVERT(char(7),inputdate,111)= '+''''+cb1.Text+'''');
    end;
    sql.add('     --and qty > 0');
    if cb2.Text<>'' then
      sql.Add('and people.dep= '+''''+cb2.Text+'''');
    sql.add('group by workoverreport.workno,people.name,CONVERT(char(7),workoverreport.inputdate,111) ');
    sql.add('order by workoverreport.workno,people.name');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CONVERT(char(10),inputdate,111) as inputday,xiexing');
    sql.add('          ,sqty as target,rqty as reality,');
    sql.add('          qty as overcount,(qty*cost) as totcost');
    sql.add('from '+main.LIY_DD+'.dbo.workoverreport workoverreport');
    sql.add('left join '+main.LIY_DD+'.dbo.people people on workoverreport.workno=people.workno');
    sql.add('where workoverreport.workno=:workno');
    if ckbDate.Checked then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,inputdate,121)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+'''');
    end else
    begin
      sql.add('       and CONVERT(char(7),inputdate,111)=:ym');
    end;
    sql.add('order by inputdate');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
end;

end.
