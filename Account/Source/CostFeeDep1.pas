unit CostFeeDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ComCtrls, Grids, DBGrids, StdCtrls,
  ExtCtrls,comobj,dateutils, GridsEh, DBGridEh;

type
  TCostFeeDep = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
    Edit1: TEdit;
    Query1VNACC: TCurrencyField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostFeeDep: TCostFeeDep;
  sdate,edate:Tdate;

implementation

uses CostFeeDep_Det1;

{$R *.dfm}

procedure TCostFeeDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostFeeDep.Button1Click(Sender: TObject);
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
    sql.add('select round(sum(round(KCLLS.VNPrice*KCLLS.Qty,0)),0) as VNACC,KCLL.DepID,Bdepartment.DepName');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add(' and KCLLS.Qty<>0');
    sql.add('and KCLL.SCBH='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and not exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH)');
    sql.add('and SCBLYY.YWSM like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('group by KCLL.DepID,BDepartment.DepName ');
    sql.add('order by KCLL.DepID,BDepartment.DepName ');
    active:=true;
  end;
DTP1.Date:=sdate;
DTP2.date:=edate;
end;

procedure TCostFeeDep.Button2Click(Sender: TObject);
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

procedure TCostFeeDep.Detail1Click(Sender: TObject);
begin
CostFeeDep_Det:=TCostFeeDep_Det.create(self);
CostFeeDep_Det.show;
end;

procedure TCostFeeDep.FormDestroy(Sender: TObject);
begin
costfeedep:=nil;
end;

procedure TCostFeeDep.FormCreate(Sender: TObject);
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
