unit OrderList_BC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables;

type
  TOrderList_BC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_Order: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1YSSM: TStringField;
    Query1JiJie: TStringField;
    Query1DDMH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderList_BC: TOrderList_BC;

implementation

uses
  StockIn_BC1;

{$R *.dfm}
    
procedure TOrderList_BC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOrderList_BC.FormDestroy(Sender: TObject);
begin
  OrderList_BC := Nil;
end;

procedure TOrderList_BC.Button1Click(Sender: TObject);
begin
  if (Length(ED_Order.Text) < 5) then
  begin
    ShowMessage('Please enter at least 5 characters.');
    Exit;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDZL.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH FROM DDZL');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE DDBH LIKE ''' + ED_Order.Text + '%''');
    Active := true;
  end;
end;

procedure TOrderList_BC.DBGridEh1DblClick(Sender: TObject);
begin
  StockIn_BC.QKCRKS.FieldByName('DDBH').Value := Query1.FieldByName('DDBH').AsString;
  StockIn_BC.QKCRKS.FieldByName('Article').Value := Query1.FieldByName('Article').AsString;
  StockIn_BC.QKCRKS.FieldByName('XieMing').Value := Query1.FieldByName('XieMing').AsString;
  StockIn_BC.QKCRKS.FieldByName('YSSM').Value := Query1.FieldByName('YSSM').AsString;
  StockIn_BC.QKCRKS.FieldByName('JiJie').Value := Query1.FieldByName('JiJie').AsString;
  StockIn_BC.QKCRKS.FieldByName('DDMH').Value := Query1.FieldByName('DDMH').AsString;
  Close;
end;

end.
