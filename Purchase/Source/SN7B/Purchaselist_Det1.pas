unit Purchaselist_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables;

type
  TPurchaselist_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Purchaselist_Det: TPurchaselist_Det;

implementation

{$R *.dfm}

end.
