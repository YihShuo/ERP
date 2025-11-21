unit OutsoleStock_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TOutsoleStock_Detail = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1RKDate: TDateTimeField;
    Query1InDate: TDateTimeField;
    Query1SIZ: TStringField;
    Query1RKQty: TFloatField;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsoleStock_Detail: TOutsoleStock_Detail;

implementation

uses  main1, OutsoleSTOCK_new1;

{$R *.dfm}

procedure TOutsoleStock_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TOutsoleStock_Detail.FormDestroy(Sender: TObject);
begin
  OutsoleStock_Detail:=nil;
end;

procedure TOutsoleStock_Detail.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

end.
