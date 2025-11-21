unit OrderListOut_BC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, DateUtils;

type
  TOrderListOut_BC = class(TForm)
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
    Query1Grade: TStringField;
    Query1Size: TStringField;
    Query1Qty: TFloatField;
    Label2: TLabel;
    ED_SKU: TEdit;
    Label3: TLabel;
    CB1: TComboBox;
    QSearch: TQuery;
    Query1Selected: TBooleanField;
    UP_SQL1: TUpdateSQL;
    Panel2: TPanel;
    Button2: TButton;
    Query1YN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderListOut_BC: TOrderListOut_BC;

implementation

uses
  StockOut_BC1;

{$R *.dfm}
    
procedure TOrderListOut_BC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOrderListOut_BC.FormDestroy(Sender: TObject);
begin
  OrderListOut_BC := Nil;
end;

procedure TOrderListOut_BC.Button1Click(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT YEAR(DATEADD(MM, -1, GetDate())) AS KCYear, RIGHT(''00'' + CAST(MONTH(DATEADD(MM, -1, GetDate())) AS VARCHAR), 2) AS KCMonth, GetDate() AS Today');
    Active := true;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CAST(0 AS BIT) AS Selected, KCRKS_BC.Grade, KCRKS_BC.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, KCRKS_BC.Size, SUM(KCRKS_BC.Qty) AS Qty, ''1'' AS YN FROM (');
    //前月期末
    SQL.Add('  SELECT Grade, DDBH, Size, Qty FROM BCShoeMonth');
    SQL.Add('  WHERE KCYear = ''' + QSearch.FieldByName('KCYear').AsString + ''' AND KCMonth = ''' + QSearch.FieldByName('KCMonth').AsString + '''');
    SQL.Add('  AND DDBH LIKE ''' + ED_Order.Text + '%'' AND Grade = ''' + CB1.Text + '''');
    SQL.Add('  UNION ALL');
    //當月入庫
    SQL.Add('  SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, KCRKS_BC.Qty FROM KCRKS_BC');
    SQL.Add('  LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
    SQL.Add('  WHERE DDBH LIKE ''' + ED_Order.Text + '%'' AND KCRKS_BC.Grade = ''' + CB1.Text + '''');
    SQL.Add('  AND CONVERT(VARCHAR, KCRK_BC.CFMDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(QSearch.FieldByName('Today').AsDateTime)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', QSearch.FieldByName('Today').AsDateTime) + '''');
    SQL.Add('  UNION ALL');
    //當月出庫
    SQL.Add('  SELECT KCLLS_BC.Grade, KCLLS_BC.DDBH, KCLLS_BC.Size, KCLLS_BC.Qty*-1 AS Qty FROM KCLLS_BC');
    SQL.Add('  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO');
    SQL.Add('  WHERE DDBH LIKE ''' + ED_Order.Text + '%'' AND KCLLS_BC.Grade = ''' + CB1.Text + '''');
    SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.CFMDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(QSearch.FieldByName('Today').AsDateTime)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', QSearch.FieldByName('Today').AsDateTime) + '''');
    SQL.Add(') AS KCRKS_BC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE 1 = 1');
    if (ED_SKU.Text <> '') then
      SQL.Add('AND DDZL.Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('GROUP BY KCRKS_BC.Grade, KCRKS_BC.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, KCRKS_BC.Size');
    SQL.Add('HAVING SUM(KCRKS_BC.Qty) > 0');
    Active := true;
    RequestLive := true;
    CachedUpdates := true;
  end;
  Button2.Enabled := true;
end;

procedure TOrderListOut_BC.Button2Click(Sender: TObject);
var
  SelectedQty: integer;
begin
  if (Query1.RecordCount > 0) then
  begin
    if (StockOut_BC.QKCLL.FieldByName('Purpose').AsString = 'Sale') AND (CB1.Text = 'C') then
    begin
      ShowMessage('Grade C shoes can''t be sold.');
      Exit;
    end;

    SelectedQty := 0;
    Query1.First;
    while not Query1.Eof do
    begin
      if (Query1.FieldByName('Selected').AsBoolean) AND (Query1.FieldByName('YN').AsString = '1') then
      begin
        if (StockOut_BC.QKCLLS.State <> dsInsert) then
        begin
          StockOut_BC.QKCLLS.First;
          StockOut_BC.QKCLLS.Insert;
        end;
        StockOut_BC.QKCLLS.FieldByName('Grade').Value := Query1.FieldByName('Grade').AsString;
        StockOut_BC.QKCLLS.FieldByName('DDBH').Value := Query1.FieldByName('DDBH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Article').Value := Query1.FieldByName('Article').AsString;
        StockOut_BC.QKCLLS.FieldByName('XieMing').Value := Query1.FieldByName('XieMing').AsString;
        StockOut_BC.QKCLLS.FieldByName('YSSM').Value := Query1.FieldByName('YSSM').AsString;
        StockOut_BC.QKCLLS.FieldByName('JiJie').Value := Query1.FieldByName('JiJie').AsString;
        StockOut_BC.QKCLLS.FieldByName('DDMH').Value := Query1.FieldByName('DDMH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Size').Value := Query1.FieldByName('Size').AsString;
        StockOut_BC.QKCLLS.FieldByName('Qty').Value := Query1.FieldByName('Qty').AsString;
        StockOut_BC.QKCLLS.First;
        StockOut_BC.QKCLLS.Insert;
        Query1.Edit;
        Query1.FieldByName('YN').Value := '0';
        Inc(SelectedQty);
      end;
      Query1.Next;
    end;
    if (SelectedQty > 0) then
      StockOut_BC.QKCLLS.Cancel
    else
      ShowMessage('There is no selected data.');
  end
  else begin
    ShowMessage('No data found.');
  end;
end;

procedure TOrderListOut_BC.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := $0000D500;
end;

end.
