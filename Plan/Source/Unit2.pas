unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids;

type
  TReport608inQty = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1LastInDate: TDateTimeField;
    Query1Qty: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report608inQty: TReport608inQty;

implementation

{$R *.dfm}

end.
