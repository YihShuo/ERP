unit CostFee1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,
  Menus, ComCtrls,comobj, GridsEh, DBGridEh;

type
  TCostFee = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    CBX1: TComboBox;
    Button2: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Query1VNACC: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostFee: TCostFee;
  sdate,edate:Tdate;

implementation

uses CostFee_Det1;

{$R *.dfm}

procedure TCostFee.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostFee.Button1Click(Sender: TObject);
var y,m:word;
begin
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
    sql.add('select round(sum(round(KCLLS.VNPrice*KCLLS.Qty,0)),0) as VNACC,KCLLS.YYBH,SCBLYY.YWSM');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add(' and KCLLS.Qty<>0');
    sql.add('and KCLL.SCBH='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and not exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH)');
    if CBX1.text<>'ALL' then
      begin
        sql.add('and BDepartment.DepName like '+''''+CBX1.Text+'%'+'''');
      end;
    sql.add('group by KCLLS.YYBH,SCBLYY.YWSM ');
    sql.add('order by KCLLS.YYBH,SCBLYY.YWSM');
    active:=true;
  end;
DTP1.Date:=sdate;
DTP2.date:=edate;
end;

procedure TCostFee.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  with Qtemp do
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
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
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

procedure TCostFee.Detail1Click(Sender: TObject);
begin
CostFee_Det:=TCostFee_Det.create(self);
CostFee_Det.show;
end;

procedure TCostFee.Button2Click(Sender: TObject);
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

procedure TCostFee.FormDestroy(Sender: TObject);
begin
costfee:=nil;
end;

end.
