unit CarttonMove_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ExtCtrls, Grids, DBGrids,comobj;

type
  TCarttonMove_Det = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    SCSMCK: TQuery;
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
    SCSMCKDDBH: TStringField;
    SCSMCKCTNO: TStringField;
    SCSMCKUSERDate: TDateTimeField;
    SCSMCKUSERID: TStringField;
    SCSMCKYN: TStringField;
    SCSMCKCKCS: TIntegerField;
    SCSMCKQty: TFloatField;
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
  CarttonMove_Det: TCarttonMove_Det;

implementation

{$R *.dfm}

procedure TCarttonMove_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCarttonMove_Det.FormCreate(Sender: TObject);
begin
SCSMCK.Active:=true;
SCSMRKS.Active:=true;
end;

procedure TCarttonMove_Det.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
SCSMRKS.Active:=false;
if SCSMCK.recordcount=0 then
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
  for   i:=1   to   SCSMCK.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SCSMCK.fields[i-1].FieldName;
    end;
  SCSMCK.First;
  j:=2;
  while   not  SCSMCK.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SCSMCK.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SCSMCK.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SCSMCK.Next;
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

procedure TCarttonMove_Det.FormDestroy(Sender: TObject);
begin
CarttonMove_Det:=nil;
end;

end.
