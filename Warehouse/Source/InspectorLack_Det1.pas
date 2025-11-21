unit InspectorLack_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ExtCtrls, Grids, DBGrids;

type
  TInspectorLack_Det = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    SCSMYW: TQuery;
    SCSMYWDDBH: TStringField;
    SCSMYWCTNO: TStringField;
    SCSMYWQty: TFloatField;
    SCSMYWUSERDate: TDateTimeField;
    SCSMYWUSERID: TStringField;
    SCSMYWYN: TStringField;
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
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InspectorLack_Det: TInspectorLack_Det;

implementation

{$R *.dfm}

procedure TInspectorLack_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TInspectorLack_Det.FormCreate(Sender: TObject);
begin

SCSMYW.Active:=true;
SCSMRKS.Active:=true;
end;

procedure TInspectorLack_Det.FormDestroy(Sender: TObject);
begin
InspectorLack_Det:=nil;
end;

end.
