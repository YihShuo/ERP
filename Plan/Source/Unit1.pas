unit unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, GridsEh, DBGridEh, DBTables, Grids, DBGrids;

type
  TReport608GX = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DepName: TStringField;
    Query1Qty: TFloatField;
    Query1SCDate: TDateTimeField;
    Query1GXLB: TStringField;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report608GX: TReport608GX;

implementation

uses Report6081;

{$R *.dfm}

end.
