unit Purchasecheck_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables;

type
  TPurchasecheck_Det = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1ZLBH: TStringField;
    Query1XXCC: TStringField;
    Query1Qty: TCurrencyField;
    Query1CLSL: TCurrencyField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Purchasecheck_Det: TPurchasecheck_Det;

implementation

{$R *.dfm}

procedure TPurchasecheck_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPurchasecheck_Det.FormCreate(Sender: TObject);
begin
query1.active:=true;
end;

procedure TPurchasecheck_Det.FormDestroy(Sender: TObject);
begin
Purchasecheck_Det:=nil;
end;

end.
