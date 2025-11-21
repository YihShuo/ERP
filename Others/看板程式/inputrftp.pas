unit inputrftp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, DBTables;

type
  Trftinput = class(TForm)
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Table1: TTable;
    Table1GSBH: TStringField;
    Table1line: TStringField;
    Table1RFT: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rftinput: Trftinput;

implementation

{$R *.dfm}

end.
