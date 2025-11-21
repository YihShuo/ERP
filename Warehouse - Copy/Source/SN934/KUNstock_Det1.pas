unit KUNstock_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, GridsEh, DBGridEh;

type
  TKUNstock_Det = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1SIZ: TStringField;
    Query1Qty: TFloatField;
    Query1LastRem: TFloatField;
    Query1RKQty: TFloatField;
    Query1LLQty: TFloatField;
    Query1YWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KUNstock_Det: TKUNstock_Det;

implementation
uses  main1, KUNstock_new1;
{$R *.dfm}

procedure TKUNstock_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TKUNstock_Det.FormDestroy(Sender: TObject);
begin
  KUNstock_Det:=nil;
end;

procedure TKUNstock_Det.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;


end.
