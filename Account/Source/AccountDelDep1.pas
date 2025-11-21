unit AccountDelDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ComCtrls, Grids, DBGrids,comobj, GridsEh,
  DBGridEh;

type
  TAccountDelDep = class(TForm)
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1: TQuery;
    Query1CWBH: TStringField;
    Query1CostID: TStringField;
    Query1VNACC: TCurrencyField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Excel: TMenuItem;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountDelDep: TAccountDelDep;

implementation

uses AccountDel1, AccountDelDep_Det1;

{$R *.dfm}

procedure TAccountDelDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAccountDelDep.FormCreate(Sender: TObject);
begin
DTP1.Date:=AccountDel.DTP1.Date;
DTP2.Date:=AccountDel.DTP2.Date;
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select KCZLS.CWBH,KCLLS.CostID,KCLL.DepID,BDepartment.DepName,round(sum(KCLLS.VNPrice*KCLLS.Qty),0) as VNACC');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',DTP1.date)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',DTP2.date)+'''');
    sql.add(' and KCLLS.Qty<>0');
    sql.add('and KCLLS.CostID=:CostID');
    sql.add('and KCZLS.CWBH=:CWBH');
    sql.add('group by KCZLS.CWBH,KCLLS.CostID,KCLL.DepID,BDepartment.DepName ');
    sql.add('order by KCZLS.CWBH,KCLLS.CostID,KCLL.DepID,BDepartment.DepName ');
    active:=true;
  end;
end;

procedure TAccountDelDep.ExcelClick(Sender: TObject);
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

procedure TAccountDelDep.Detail1Click(Sender: TObject);
begin

if query1.recordcount>0 then
  begin
    AccountDelDep_Det:=TAccountDelDep_Det.create(self);
    AccountDelDep_Det.show;
  end;
end;

procedure TAccountDelDep.FormDestroy(Sender: TObject);
begin
AccountDelDep:=nil;
end;

end.
