unit RAPstock_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, GridsEh, DBGridEh;

type
  TRAPstock_Det = class(TForm)
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
  RAPstock_Det: TRAPstock_Det;

implementation
uses  main1, RAPSTOCK_new1;
{$R *.dfm}

procedure TRAPstock_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TRAPstock_Det.FormDestroy(Sender: TObject);
begin
  RAPstock_Det:=nil;
end;

procedure TRAPstock_Det.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;


end.
