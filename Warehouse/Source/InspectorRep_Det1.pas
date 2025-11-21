unit InspectorRep_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ExtCtrls, Grids, DBGrids,comobj;

type
  TInspectorRep_Det = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    SCSMYW: TQuery;
    SCSMYWDDBH: TStringField;
    SCSMYWCTNO: TStringField;
    SCSMYWQty: TFloatField;
    SCSMYWUSERDate: TDateTimeField;
    DS1: TDataSource;
    SCSMRKS: TQuery;
    SCSMRKSDDBH: TStringField;
    SCSMRKSCTNO: TStringField;
    SCSMRKSXXCC: TStringField;
    SCSMRKSLHLabel: TStringField;
    SCSMRKSQty: TFloatField;
    DS2: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
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
  InspectorRep_Det: TInspectorRep_Det;

implementation

{$R *.dfm}

procedure TInspectorRep_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TInspectorRep_Det.FormCreate(Sender: TObject);
begin

SCSMYW.Active:=true;
SCSMRKS.Active:=true;
end;

procedure TInspectorRep_Det.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
SCSMRKS.Active:=false;
if SCSMYW.recordcount=0 then
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
  for   i:=1   to   SCSMYW.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SCSMYW.fields[i-1].FieldName;
    end;
  SCSMYW.First;
  j:=2;
  while   not  SCSMYW.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SCSMYW.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SCSMYW.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SCSMYW.Next;
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

procedure TInspectorRep_Det.FormDestroy(Sender: TObject);
begin
InspectorRep_Det:=nil;
end;

end.
