unit AccountDel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ComCtrls, Grids, DBGrids, StdCtrls,
  ExtCtrls,dateutils,comobj, GridsEh, DBGridEh;

type
  TAccountDel = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1CWBH: TStringField;
    Query1CostID: TStringField;
    Query1VNACC: TCurrencyField;
    Department1: TMenuItem;
    Reason1: TMenuItem;
    Excel: TMenuItem;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Reason1Click(Sender: TObject);
    procedure Department1Click(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountDel: TAccountDel;
  sdate,edate:Tdate;

implementation

uses AccountDelReason1, AccountDelDep1, AccountDelDet1;

{$R *.dfm}

procedure TAccountDel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAccountDel.Button1Click(Sender: TObject);
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
    sql.add('select KCZLS.CWBH,KCLLS.CostID,sum(KCLLS.VNACC) as VNACC');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add(' and KCLLS.Qty<>0');
    sql.add('group by KCZLS.CWBH,KCLLS.CostID ');
    sql.add('order by KCZLS.CWBH,KCLLS.CostID ');
    active:=true;
  end;
DTP1.Date:=sdate;
DTP2.date:=edate;

end;

procedure TAccountDel.Button2Click(Sender: TObject);
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

procedure TAccountDel.Reason1Click(Sender: TObject);
begin
if query1.active then
  begin
    if query1.recordcount>0 then
      begin
        AccountDelReason:=TAccountDelReason.create(self);
        AccountDelReason.show;
      end;
  end;
end;

procedure TAccountDel.Department1Click(Sender: TObject);
begin 
if query1.active then
  begin
    if query1.recordcount>0 then
      begin
        AccountDelDep:=TAccountDelDep.create(self);
        AccountDelDep.show;
      end;
  end;
end;

procedure TAccountDel.ExcelClick(Sender: TObject);
begin
Button2Click(nil);
end;

procedure TAccountDel.Detail1Click(Sender: TObject);
begin
if query1.active then
  begin
    if query1.recordcount>0 then
      begin
        AccountDelDet:=TAccountDelDet.create(self);
        AccountDelDet.show;
      end;
  end;
end;

procedure TAccountDel.FormDestroy(Sender: TObject);
begin
AccountDel:=nil;
end;

procedure TAccountDel.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
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

end.
