unit Produceset_size1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, GridsEh, DBGridEh;

type
  TProduceset_size = class(TForm)
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Ord_Size: TStringField;
    Query1XXCC: TStringField;
    Query1Tot_Qty: TIntegerField;
    Query1C_Qty: TFloatField;
    Query1Y_Qty: TFloatField;
    Query1Z_Qty: TFloatField;
    Query1W_Qty: TFloatField;
    Query1O_Qty: TFloatField;
    Query1S_Qty: TFloatField;
    Query1A_Qty: TFloatField;
    Query1A_Set: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Produceset_size: TProduceset_size;

implementation

{$R *.dfm}

procedure TProduceset_size.FormCreate(Sender: TObject);
begin
query1.active:=true;
end;

procedure TProduceset_size.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
free; 
end;

procedure TProduceset_size.FormDestroy(Sender: TObject);
begin
Produceset_size:=nil;
end;

end.
