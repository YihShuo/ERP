unit CBYShoeStock_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TCBYShoeStock_Detail = class(TForm)
    DBGridEh2: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1TestNO: TStringField;
    Query1YPDH: TStringField;
    Query1Article: TStringField;
    Query1Complete: TDateTimeField;
    Query1ShipDate: TDateTimeField;
    Query1CancelDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CBYShoeStock_Detail: TCBYShoeStock_Detail;

implementation

uses StockShoeMonth1;

{$R *.dfm}

procedure TCBYShoeStock_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCBYShoeStock_Detail.FormDestroy(Sender: TObject);
begin
  CBYShoeStock_Detail:=nil;
end;

procedure TCBYShoeStock_Detail.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CBY_Orders.workOrderId as TestNO,CBY_Orders.MasterOrder as YPDH,CBY_Orders.style as Article,CBY_Orders.StockDate as Complete,CBY_Orders.ShipDate,CBY_Orders.CancelDate');
    SQL.Add('From CBY_Orders');
    if StockShoeMonth.MergeCB.Checked=true then
      SQL.Add('where CBY_Orders.MasterOrder=:DDBH ')
    else
    SQL.Add('where CBY_Orders.workOrderId=:TestNo ');
    Active:=true;
  end;
end;

end.
