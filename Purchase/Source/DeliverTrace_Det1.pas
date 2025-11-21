unit DeliverTrace_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, GridsEh, DBGridEh;

type
  TDeliverTrace_Det = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1ZLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1CLSL: TCurrencyField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverTrace_Det: TDeliverTrace_Det;

implementation

{$R *.dfm}

procedure TDeliverTrace_Det.FormCreate(Sender: TObject);
begin
query1.active:=true;
end;

procedure TDeliverTrace_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDeliverTrace_Det.FormDestroy(Sender: TObject);
begin
DeliverTrace_Det:=nil;
end;

end.
