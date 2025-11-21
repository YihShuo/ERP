unit WarehouseTrace_Details1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Grids, DBGrids, DBTables, Menus,comobj;

type
  TWarehouseTrace_Details = class(TForm)
    SCSMRK: TQuery;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    SCSMRKS: TQuery;
    DS2: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    SCSMRKDDBH: TStringField;
    SCSMRKCTNO: TStringField;
    SCSMRKQty: TFloatField;
    SCSMRKUSERDate: TDateTimeField;
    SCSMRKUSERID: TStringField;
    SCSMRKYN: TStringField;
    SCSMRKRKCS: TIntegerField;
    SCSMRKSDDBH: TStringField;
    SCSMRKSCTNO: TStringField;
    SCSMRKSXXCC: TStringField;
    SCSMRKSLHLabel: TStringField;
    SCSMRKSQty: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WarehouseTrace_Details: TWarehouseTrace_Details;

implementation

{$R *.dfm}

procedure TWarehouseTrace_Details.FormCreate(Sender: TObject);
begin
SCSMRK.Active:=true;
SCSMRKS.Active:=true;
end;

procedure TWarehouseTrace_Details.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
SCSMRKS.Active:=false;
if SCSMRK.recordcount=0 then
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
  for   i:=1   to   SCSMRK.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SCSMRK.fields[i-1].FieldName;
    end;
  SCSMRK.First;
  j:=2;
  while   not  SCSMRK.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SCSMRK.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SCSMRK.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SCSMRK.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
  SCSMRKS.Active:=true;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TWarehouseTrace_Details.FormDestroy(Sender: TObject);
begin
WarehouseTrace_Details:=nil;
end;

procedure TWarehouseTrace_Details.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
