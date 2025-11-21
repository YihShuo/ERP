unit OrderreplenishCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls,dateutils,comobj,
  math, GridsEh, DBGridEh;

type
  TOrderreplenishCost = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Button1: TButton;
    CBX2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    CBX3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label6: TLabel;
    CBX1: TComboBox;
    Query2: TQuery;
    Button2: TButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Query1LLNO: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1DepName: TStringField;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1SCBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1Pairs: TIntegerField;
    Query1YWSM: TStringField;
    Query1VNACC: TIntegerField;
    Query1Person: TFloatField;
    Query1VNPrice: TFloatField;
    Label7: TLabel;
    Edit4: TEdit;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderreplenishCost: TOrderreplenishCost;
  sdate,edate:Tdate;

implementation

{$R *.dfm}

procedure TOrderreplenishCost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TOrderreplenishCost.Button1Click(Sender: TObject);
var y,m:word;
begin
if ((not checkbox1.Checked ) and (not checkbox2.Checked )) then
  begin
    showmessage('You have to select one at least.');
    abort;
  end;
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);


with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.LLNO,KCLL.CFMDate,Bdepartment.DepName,KCLL.SCBH AS ZLBH , ');
    sql.add('    KCLLS.CLBH,KCLLS.SCBH,KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZL.DWBH,KCLLS.CLSL,DDZL.Pairs,SCBLYY.YWSM');
    sql.add('from KCLL');
    sql.add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join BDepartment on BDepartment.[ID]=KCLL.DepID');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH');
    sql.add('left join DDZL on DDZL.ZLBH=ZLZL.ZLBH');
    sql.add('left join XXZl on XXZl.XieXing=DDZl.XieXing and DDZl.SheHao=XXZl.SheHao');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add(' and KCLLS.Qty<>0');
    //sql.add(' and KCLLS.VNPrice is not null ');
    sql.add(' and KCLLS.CLBH like '+''''+edit4.Text+'%'+'''');
    sql.add('and KCLL.SCBH='+''''+'ZZZZZZZZZZ'+'''');
    if not checkbox1.Checked then
      begin
        sql.add('and not exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH)');
      end;
    if not checkbox2.Checked then
      begin
        sql.add('and  exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH)');
      end;
    if CBX1.text<>'ALL' then
      begin
        sql.add('and BDepartment.DepName like '+''''+CBX1.Text+'%'+'''');
      end;
    if edit1.text<>'' then
      begin
        sql.add('and KCLLS.SCBH like '+''''+edit1.Text+'%'+'''');
      end;
    if edit2.text<>'' then
      begin
        sql.add('and XXZL.Article like '+''''+edit2.Text+'%'+'''');
      end;
    if edit3.text<>'' then
      begin
        sql.add('and XXZL.XieMing like '+''''+'%'+edit3.Text+'%'+'''');
      end;
    sql.add('order by Bdepartment.DepName,KCLLS.SCBH,KCLLS.CLBH,KCLL.CFMDate,SCBLYY.YWSM');
    active:=true;
  end;
end;

procedure TOrderreplenishCost.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DepName from BDepartment order by DepName');
    active:=true;
    //CBX1.Items.Clear;
    for i:=1 to recordcount do
      begin
        CBX1.Items.Add(fieldbyname('DepName').asstring);
        next;
      end;
    active:=false;
  end;
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=query2.fieldbyname('Oldyear').value to  query2.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myYear then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX3.Items.Count-1 do
    begin
      if strtoint(CBX3.Items[i])=myMonth then
      begin
        CBX3.ItemIndex:=i;
        break;
      end;
    end;
  end;

end;

procedure TOrderreplenishCost.Query1CalcFields(DataSet: TDataSet);
begin
if query1.FieldByName('CLSL').value<>0 then
  begin
    query1.FieldByName('Person').value:=query1.FieldByName('Qty').value/query1.FieldByName('CLSL').value*100;
  end;
query1.FieldByName('VNACC').value:=query1.FieldByName('Qty').value*query1.FieldByName('VNPrice').value;
end;

procedure TOrderreplenishCost.Button2Click(Sender: TObject);
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
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TOrderreplenishCost.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TOrderreplenishCost.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
  edit3.SetFocus;
end;

procedure TOrderreplenishCost.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
  edit4.SetFocus;
end;

procedure TOrderreplenishCost.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
  button1.SetFocus;
end;

procedure TOrderreplenishCost.FormDestroy(Sender: TObject);
begin
OrderreplenishCost:=nil;
end;

procedure TOrderreplenishCost.DBGridEh1TitleClick(Column: TColumnEh);
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
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by Bdepartment.DepName,KCLLS.SCBH,KCLLS.CLBH,KCLL.CFMDate';
     query1.Active:=true;
   end;
 if temp='CFMDate' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by KCLL.CFMDate,Bdepartment.DepName,KCLLS.SCBH,KCLLS.CLBH';
     query1.Active:=true;
   end;  
 if temp='SCBH' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by KCLLS.SCBH,KCLLS.CLBH,Bdepartment.DepName,KCLL.CFMDate';
     query1.Active:=true;
   end;
 if temp='CLBH' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by KCLLS.CLBH,Bdepartment.DepName,KCLLS.SCBH,KCLL.CFMDate';
     query1.Active:=true;
   end;
 if temp='YWSM' then
   begin
     Query1.Close;
     las:=pos('order by',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'order by SCBLYY.YWSM,KCLLS.CLBH,KCLL.CFMDate,Bdepartment.DepName,KCLLS.SCBH';
     query1.Active:=true;
   end;
end;

end.
