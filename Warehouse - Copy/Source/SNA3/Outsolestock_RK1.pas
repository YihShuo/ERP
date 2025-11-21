unit Outsolestock_RK1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TOutsolestock_RK = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1RKDate: TDateTimeField;
    Query1SIZ: TStringField;
    Query1RKQty: TFloatField;
    Query1LLDate: TDateTimeField;
    Query1LLQty: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Outsolestock_RK: TOutsolestock_RK;

implementation
uses  main1, OutsoleSTOCK_new1;

{$R *.dfm}

procedure TOutsolestock_RK.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

procedure TOutsolestock_RK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TOutsolestock_RK.FormDestroy(Sender: TObject);
begin
  Outsolestock_RK:=nil;
end;

end.
