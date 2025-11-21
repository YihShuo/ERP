unit DeliverAccFin_det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Menus, PrnDbgeh,comobj;

type
  TDeliverAccFin_det = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1Qty: TCurrencyField;
    Query1BLSB: TStringField;
    Query1SCBH: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TFloatField;
    Query1LLNO: TStringField;
    Query1DepName: TStringField;
    Query1CLBH: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverAccFin_det: TDeliverAccFin_det;

implementation

{$R *.dfm}

procedure TDeliverAccFin_det.FormDestroy(Sender: TObject);
begin
DeliverAccFin_det:=nil;
end;

procedure TDeliverAccFin_det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TDeliverAccFin_det.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TDeliverAccFin_det.Print1Click(Sender: TObject);
begin
printdbgrideh1.preview;
end;

procedure TDeliverAccFin_det.Excel1Click(Sender: TObject);
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

end.
