unit AccountEntryDep_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids,comobj,
  GridsEh, DBGridEh;

type
  TAccountEntryDep_Det = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSNO: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMDATE: TDateTimeField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1CWHL: TIntegerField;
    Query1VNPrice: TFloatField;
    Query1VNACC: TFloatField;
    Query1RKSB: TStringField;
    Query1CGBH: TStringField;
    Query1CostID: TStringField;
    Query1CWBH: TStringField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountEntryDep_Det: TAccountEntryDep_Det;

implementation

uses AccountEntryDep1;

{$R *.dfm}

procedure TAccountEntryDep_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAccountEntryDep_Det.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCRK.*,KCRKS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC ,KCZLS.CWBH ');
    sql.add('from KCRKS');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH ');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',AccountEntryDep.DTP1.date)+''''+' and ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',AccountEntryDep.DTP2.date)+'''');
    sql.add(' and KCRKS.CostID=:CostID');
    sql.add(' and KCZLS.CWBH=:CWBH ');
    sql.add(' and KCRK.ZSBH=:ZSBH ');
    sql.add(' and KCRK.YN='+''''+'5'+'''');
    sql.add(' and KCRKS.Qty<>0 ');
    sql.add(' order by KCRKs.CLBH,KCRK.ZSBH,KCRK.RKNO');
    active:=true;
  end;
end;

procedure TAccountEntryDep_Det.Excel1Click(Sender: TObject);
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

procedure TAccountEntryDep_Det.FormDestroy(Sender: TObject);
begin
AccountEntryDep_Det:=nil;
end;

end.
