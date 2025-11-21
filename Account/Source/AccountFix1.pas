unit AccountFix1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,FunUnit,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,comobj,
  Menus, GridsEh, DBGridEh;

type
  TAccountFix = class(TForm)
    Panel1: TPanel;
    CB1: TCheckBox;
    CB2: TCheckBox;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Label4: TLabel;
    CBX2: TComboBox;
    Label5: TLabel;
    CBX3: TComboBox;
    Query1CFMDate: TDateTimeField;
    Query1LLNO: TStringField;
    Query1SCBH: TStringField;
    Query1CLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1DepName: TStringField;
    Query1DepID: TStringField;
    Query1CostID: TStringField;
    Query1CWBH: TStringField;
    Query1VNACC: TIntegerField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountFix: TAccountFix;
  sdate,edate:TDate;

implementation

{$R *.dfm}

procedure TAccountFix.Button1Click(Sender: TObject);
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
if (not CB1.Checked) and (not CB2.Checked) then
  begin
    showmessage('You have to select on at least.');
    abort;
  end;
with query1 do
  begin
    active:=false;
    sql.Clear;
    if CB1.Checked then
      begin
        sql.add('select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,');
        sql.add('KCLLS.Qty,isnull(KCLLS.VNPrice,0) as VNPrice,CLZL.YWPM,CLZl.DWBH,KCLLS.YYBH,KCLL.SCBH,');
        sql.add('SCBLYY.YWSM,BDepartment.DepName,KCLL.DepID,KCLLS.CostID,KCZLS.CWBH');
        sql.add('from KCLLS');
        sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
        sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
        sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
        sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH ');
        sql.add('where KCLLS.CostID='+''''+'621'+'''');
        sql.add('and not exists(select ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH )');
        sql.add('and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
        sql.add(' and '+''''+ formatdatetime('yyyy/MM/dd',edate)+'''');
        sql.add('and KCLLS.Qty<>0');
      end;
    if  CB1.Checked and CB2.Checked  then
      begin
        sql.add('union ');
      end;
    if CB2.Checked then
      begin
        sql.add('select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,');
        sql.add('KCLLS.Qty,isnull(KCLLS.VNPrice,0) as VNPrice,CLZL.YWPM,CLZl.DWBH,KCLLS.YYBH,KCLL.SCBH,');
        sql.add('SCBLYY.YWSM,BDepartment.DepName,KCLL.DepID,KCLLS.CostID,KCZLS.CWBH');
        sql.add('from KCLLS');
        sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
        sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
        sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
        sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH ');
        sql.add('where KCLLS.CostID<>'+''''+'621'+'''');
        sql.add('and exists(select ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH )');
        sql.add('and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
        sql.add(' and '+''''+ formatdatetime('yyyy/MM/dd',edate)+'''');
        sql.add('and KCLLS.Qty<>0');
      end;
    sql.add('order by KCLLS.LLNO,KCLLS.CLBH ');
    //funcobj.WriteErrorLog(sql.Text );
    active:=true;
  end;

end;

procedure TAccountFix.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAccountFix.Excel1Click(Sender: TObject);
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

procedure TAccountFix.Query1CalcFields(DataSet: TDataSet);
begin
query1.FieldByName('VNACC').Value:=trunc(query1.FieldByName('VNPrice').Value*query1.FieldByName('Qty').Value+0.5)
end;

procedure TAccountFix.FormDestroy(Sender: TObject);
begin
AccountFix:=nil;
end;

procedure TAccountFix.FormCreate(Sender: TObject);
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
