unit replenishanlysisdP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids;

type
  TReplenishAnlysisd = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishAnlysisd: TReplenishAnlysisd;

implementation

{$R *.dfm}

end.
