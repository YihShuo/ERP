unit AccountEntryDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ComCtrls, Grids, DBGrids,comobj, GridsEh,
  DBGridEh;

type
  TAccountEntryDep = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Excel1: TMenuItem;
    Query1CWBH: TStringField;
    Query1CostID: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1VNACC: TFloatField;
    DBGridEh1: TDBGridEh;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountEntryDep: TAccountEntryDep;

implementation

uses AccountEntry1, AccountEntryDep_Det1;

{$R *.dfm}

procedure TAccountEntryDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAccountEntryDep.FormCreate(Sender: TObject);
begin
DTP1.Date:=AccountEntry.DTP1.Date;
DTP2.Date:=AccountEntry.DTP2.Date;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCZLS.CWBH,KCRKS.CostID,KCRK.ZSBH,ZSZL.ZSYWJC,round(sum(KCRKS.VNACC),0) as VNACC');
    sql.add('from KCRKS');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH ');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add(' and KCRKS.Qty<>0');
    sql.add('and KCRKS.CostID=:CostID');
    sql.add('and KCZLS.CWBH=:CWBH');
    sql.add('group by KCZLS.CWBH,KCRKS.CostID,KCRK.ZSBH,ZSZL.ZSYWJC ');
    sql.add('order by KCZLS.CWBH,KCRKS.CostID ,KCRK.ZSBH,ZSZL.ZSYWJC');
    active:=true;
  end;
end;

procedure TAccountEntryDep.Excel1Click(Sender: TObject);
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

procedure TAccountEntryDep.Detail1Click(Sender: TObject);
begin
if query1.active then
  begin
    if query1.recordcount>0 then
      begin
        AccountEntryDep_Det:=TAccountEntryDep_Det.create(self);
        AccountEntryDep_Det.show;
      end;
  end;
end;

procedure TAccountEntryDep.FormDestroy(Sender: TObject);
begin
AccountEntryDep:=nil;
end;

end.
