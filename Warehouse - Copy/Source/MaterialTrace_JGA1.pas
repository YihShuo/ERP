unit MaterialTrace_JGA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMaterialTrace_JGA = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1TotalQty: TCurrencyField;
    Query1ZLBH: TStringField;
    Query1Qty: TCurrencyField;
    DataSource1: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTrace_JGA: TMaterialTrace_JGA;

implementation

{$R *.dfm}

procedure TMaterialTrace_JGA.FormDestroy(Sender: TObject);
begin
MaterialTrace_JGA:=nil;
end;

procedure TMaterialTrace_JGA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
