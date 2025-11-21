unit ReplenishAmount1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,comobj;

type
  TReplenishAmount = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTC1: TDateTimePicker;
    DTC2: TDateTimePicker;
    Button2: TButton;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1LLNO: TStringField;
    Query1ZLBH: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1DepName: TStringField;
    Query1CLBH: TStringField;
    Query1SCBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1PerSon: TFloatField;
    Query1Pairs: TIntegerField;
    Query1YWSM: TStringField;
    Query1USERDATE: TDateTimeField;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishAmount: TReplenishAmount;

implementation

{$R *.dfm}

procedure TReplenishAmount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
free;
end;

procedure TReplenishAmount.Button1Click(Sender: TObject);
begin
if ((not checkbox1.Checked ) and (not checkbox2.Checked )) then
  begin
    showmessage('You haveto select one at least.');
    abort;
  end;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.LLNO,KCLL.USERDATE,KCLL.CFMDate,Bdepartment.DepName,KCLL.SCBH AS ZLBH , ');
    sql.add('    KCLLS.CLBH,KCLLS.SCBH,KCLLS.Qty,CLZL.YWPM,CLZL.DWBH,KCLLS.CLSL,DDZL.Pairs,SCBLYY.YWSM');
    sql.add('from KCLL');
    sql.add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join BDepartment on BDepartment.[ID]=KCLL.DepID');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH');
    sql.add('left join DDZL on DDZL.ZLBH=ZLZL.ZLBH');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.USERDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',DTC1.date)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',DTC2.date)+'''');
    sql.add('  and KCLLS.SCBH like '+''''+edit2.Text+'%'+'''');
    sql.add(' and BDepartment.DepName like '+''''+edit1.Text+'%'+'''');
   // sql.add(' and KCLLS.CLBH<'+''''+'O'+'''')  ;
    sql.add(' and KCLLS.Qty<>0');
    sql.add(' and KCLLS.CLBh like '+''''+edit3.Text+'%'+'''');
    sql.add('and KCLL.SCBH='+''''+'ZZZZZZZZZZ'+'''');
    if not checkbox1.Checked then
      begin
        sql.add('and not exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH)');
      end;
    if not checkbox2.Checked then
      begin
        sql.add('and  exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH)');
      end;
    sql.add('order by Bdepartment.DepName,KCLLS.CLBH,KCLLS.SCBH,KCLL.CFMDate');
    active:=true;
  end;
end;

procedure TReplenishAmount.FormCreate(Sender: TObject);
begin
DTC1.date:=Date-7;
DTC2.Date:=date;
end;

procedure TReplenishAmount.Button2Click(Sender: TObject);
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

procedure TReplenishAmount.Query1CalcFields(DataSet: TDataSet);
begin

Query1.fieldbyname('Person').value:=Query1.Fieldbyname('Qty').value/Query1.Fieldbyname('CLSL').value*100;
end;

procedure TReplenishAmount.DBGrid1TitleClick(Column: TColumn);
var
 temp: string;
 las:integer;
begin
if (not query1.Active) then
  begin
    abort;
  end;
 temp := Column.FieldName;
 if temp='DepName' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by Bdepartment.DepName,KCLLS.CLBH,KCLLS.SCBH,KCLL.CFMDate';
     query1.Active:=true;
   end; 
 if temp='SCBH' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by KCLLS.SCBH,Bdepartment.DepName,KCLLS.CLBH,KCLL.CFMDate';
     Query1.Active:=true;
   end; 
 if temp='CLBH' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by KCLLS.CLBH,Bdepartment.DepName,KCLLS.SCBH,KCLL.CFMDate';
     Query1.Active:=true;
   end;   
 if temp='LLNO' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by KCLLS.LLNO,KCLLS.CLBH,Bdepartment.DepName,KCLLS.SCBH';
     Query1.Active:=true;
   end;

end;

procedure TReplenishAmount.FormDestroy(Sender: TObject);
begin
ReplenishAmount:=nil;
end;

end.
