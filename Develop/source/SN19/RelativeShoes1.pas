unit RelativeShoes1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables;

type
  TRelativeShoes = class(TForm)
    Panel1: TPanel;
    LB_CLBH: TLabel;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1JiJie: TStringField;
    Query1DEVCODE: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1XieMing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelativeShoes: TRelativeShoes;

implementation

uses NewMaterialOfSeason1;

{$R *.dfm}
              
procedure TRelativeShoes.FormCreate(Sender: TObject);
begin
  Query1.Active := true;
end;

procedure TRelativeShoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRelativeShoes.FormDestroy(Sender: TObject);
begin
  RelativeShoes := nil;
end;

procedure TRelativeShoes.FormDeactivate(Sender: TObject);
begin
  Query1.Active := false;
  Close;
end;

end.
