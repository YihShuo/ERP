unit OrderListOut_BC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, DateUtils,
  ComCtrls;

type
  TOrderListOut_BC = class(TForm)
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
    QSearch: TQuery;
    Query1Selected: TBooleanField;
    UP_SQL1: TUpdateSQL;
    Query1YN: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ED_Order: TEdit;
    Button1: TButton;
    ED_SKU: TEdit;
    CB1: TComboBox;
    Panel2: TPanel;
    Button2: TButton;
    Panel3: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    Edit4: TEdit;
    CB2: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    DataSource1: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    BooleanField1: TBooleanField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField1: TIntegerField;
    UpdateSQL1: TUpdateSQL;
    Panel4: TPanel;
    Button4: TButton;
    Label4: TLabel;
    cb3: TComboBox;
    Label6: TLabel;
    Query2DefectID: TStringField;
    Query2RKNO: TStringField;
    Query2CFMDate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query2oldQty: TFloatField;
    Query2RorL: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure BooleanField1Change(Sender: TField);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderListOut_BC: TOrderListOut_BC;
  UpdatedQTY:Double;
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
    SQL.Add('SELECT CAST(0 AS BIT) AS Selected, KCRKS_BC.Grade, KCRKS_BC.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, KCRKS_BC.Size');
    SQL.Add('       , SUM(KCRKS_BC.Qty) AS Qty, ''1'' AS YN FROM (');
    //前月期末
    SQL.Add('  SELECT Grade, DDBH, Size, Qty,KCBH,Carton_No FROM BCShoeMonth');
    SQL.Add('  WHERE KCYear = ''' + QSearch.FieldByName('KCYear').AsString + ''' AND KCMonth = ''' + QSearch.FieldByName('KCMonth').AsString + '''');
    SQL.Add('  AND DDBH LIKE ''' + ED_Order.Text + '%'' AND Grade = ''' + CB1.Text + '''');
    SQL.Add('  UNION ALL');
    //當月入庫
    SQL.Add('  SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, KCRKS_BC.Qty,KCBH,Carton_No FROM KCRKS_BC');
    SQL.Add('  LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
    SQL.Add('  WHERE DDBH LIKE ''' + ED_Order.Text + '%'' AND KCRKS_BC.Grade = ''' + CB1.Text + '''');
    SQL.Add('  AND CONVERT(VARCHAR, KCRK_BC.CFMDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(QSearch.FieldByName('Today').AsDateTime)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', QSearch.FieldByName('Today').AsDateTime) + '''');
    SQL.Add('  UNION ALL');
    //當月出庫
    SQL.Add('  SELECT KCLLS_BC.Grade, KCLLS_BC.DDBH, KCLLS_BC.Size, KCLLS_BC.Qty*-1 AS Qty,KCBH,Carton_No FROM KCLLS_BC');
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
    //showmessage(SQL.text);
    Active := true;
    RequestLive := true;
    CachedUpdates := true;
  end;
  //Button2.Enabled := true;
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
        StockOut_BC.QKCLLS.FieldByName('KCBH').Value := Query1.FieldByName('KCBH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Carton_No').Value := Query1.FieldByName('Carton_No').AsString;
        StockOut_BC.QKCLLS.FieldByName('Grade').Value := Query1.FieldByName('Grade').AsString;
        StockOut_BC.QKCLLS.FieldByName('DDBH').Value := Query1.FieldByName('DDBH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Article').Value := Query1.FieldByName('Article').AsString;
        StockOut_BC.QKCLLS.FieldByName('XieMing').Value := Query1.FieldByName('XieMing').AsString;
        StockOut_BC.QKCLLS.FieldByName('YSSM').Value := Query1.FieldByName('YSSM').AsString;
        StockOut_BC.QKCLLS.FieldByName('JiJie').Value := Query1.FieldByName('JiJie').AsString;
        StockOut_BC.QKCLLS.FieldByName('DDMH').Value := Query1.FieldByName('DDMH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Size').Value := Query1.FieldByName('Size').AsString;
        StockOut_BC.QKCLLS.FieldByName('Qty').Value := Query1.FieldByName('Qty').AsString;
        StockOut_BC.QKCLLS.FieldByName('RKNO').Value := Query1.FieldByName('RKNO').AsString;
        StockOut_BC.QKCLLS.FieldByName('DefectID').Value := Query1.FieldByName('DefectID').AsString;
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

procedure TOrderListOut_BC.Button3Click(Sender: TObject);
begin
  UpdatedQTY:=0;

  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CAST(0 AS BIT) AS Selected, KCRKS_BC.Grade, KCRKS_BC.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, KCRKS_BC.Size');
    SQL.Add('       , KCRKS_BC.Qty, ''1'' AS YN,KCBH,Carton_No,DefectID,RKNO,CFMDate,Qty as oldQty, RorL FROM (');
    //當月入庫
    SQL.Add('  SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, ISNULL(RemainQty, Qty) as Qty,KCBH,Carton_No,DefectID,KCRKS_BC.RKNO,CFMDate, RorL FROM KCRKS_BC');
    SQL.Add('  LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
    SQL.Add('  WHERE DDBH LIKE ''' + EDIT3.Text + '%'' AND KCRKS_BC.Grade = ''' + CB2.Text + '''');
    SQL.Add('  AND KCBH LIKE ''' + Edit5.Text + '%'' AND Carton_No LIKE ''' + Edit6.Text + '%''');
    SQL.Add('  AND RorL LIKE ''' + CB3.Text + '%''' );
    SQL.Add('  and (KCRK_BC.flowflag not in (''X'') or (KCRK_BC.flowflag is null))');
    SQL.Add('  and KCRK_BC.CFMDate is not null');
    SQL.Add('  and ISNULL(RemainQty, Qty)>0');
    SQL.Add(') AS KCRKS_BC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE 1 = 1');
    if (ED_SKU.Text <> '') then
      SQL.Add('AND DDZL.Article LIKE ''' + EDIT4.Text + '%''');
    SQL.Add('order by CFMDate');
    //SQL.Add('GROUP BY KCRKS_BC.Grade, KCRKS_BC.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, KCRKS_BC.Size,KCBH,Carton_No,DefectID,RKNO');
    //SQL.Add('HAVING SUM(KCRKS_BC.Qty) > 0');
    //showmessage(SQL.text);
    Active := true;
    RequestLive := true;
    CachedUpdates := true;
  end;
  Button2.Enabled := true;
end;

procedure TOrderListOut_BC.BooleanField1Change(Sender: TField);
var
  Qty: Double;
begin
  //ShowMessage('123');
  if not Query2.Active then Exit;

  Qty := Query2.FieldByName('Qty').AsFloat;

  // Selected = True → 加
  if Query2.FieldByName('Selected').AsBoolean then
    UpdatedQTY := UpdatedQTY + Qty
  else
    UpdatedQTY := UpdatedQTY - Qty;

  Label6.Caption := 'Qty: ' + FormatFloat('0.#', UpdatedQTY);

end;

procedure TOrderListOut_BC.Button4Click(Sender: TObject);
var
  SelectedQty: integer;
begin
  if (Query2.RecordCount > 0) then
  begin
    if (StockOut_BC.QKCLL.FieldByName('Purpose').AsString = 'Sale') AND (CB1.Text = 'C') then
    begin
      ShowMessage('Grade C shoes can''t be sold.');
      Exit;
    end;

    SelectedQty := 0;
    Query2.First;
    {StockOut_BC.Qry_rupdate.Active:=True;
    StockOut_BC.Qry_rupdate.RequestLive := true;
    StockOut_BC.Qry_rupdate.CachedUpdates := true; }
    while not Query2.Eof do
    begin
      if (Query2.FieldByName('Selected').AsBoolean) AND (Query2.FieldByName('YN').AsString = '1') then
      begin   
        if (StockOut_BC.QKCLLS.State <> dsInsert) then
        begin
          StockOut_BC.QKCLLS.First;
          StockOut_BC.QKCLLS.Insert;
        end;
        StockOut_BC.QKCLLS.FieldByName('KCBH').Value := Query2.FieldByName('KCBH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Carton_No').Value := Query2.FieldByName('Carton_No').AsString;
        StockOut_BC.QKCLLS.FieldByName('Grade').Value := Query2.FieldByName('Grade').AsString;
        StockOut_BC.QKCLLS.FieldByName('DDBH').Value := Query2.FieldByName('DDBH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Article').Value := Query2.FieldByName('Article').AsString;
        StockOut_BC.QKCLLS.FieldByName('XieMing').Value := Query2.FieldByName('XieMing').AsString;
        StockOut_BC.QKCLLS.FieldByName('YSSM').Value := Query2.FieldByName('YSSM').AsString;
        StockOut_BC.QKCLLS.FieldByName('JiJie').Value := Query2.FieldByName('JiJie').AsString;
        StockOut_BC.QKCLLS.FieldByName('DDMH').Value := Query2.FieldByName('DDMH').AsString;
        StockOut_BC.QKCLLS.FieldByName('Size').Value := Query2.FieldByName('Size').AsString;
        StockOut_BC.QKCLLS.FieldByName('Qty').Value := Query2.FieldByName('Qty').AsString;
        StockOut_BC.QKCLLS.FieldByName('RKNO').Value := Query2.FieldByName('RKNO').AsString;
        StockOut_BC.QKCLLS.FieldByName('DefectID').Value := Query2.FieldByName('DefectID').AsString;
        StockOut_BC.QKCLLS.FieldByName('RorL').Value := Query2.FieldByName('RorL').AsString;
        StockOut_BC.QKCLLS.Post;
        StockOut_BC.QKCLLS.First;
        StockOut_BC.QKCLLS.Insert;

        {StockOut_BC.Qry_rupdate.Insert;
        StockOut_BC.Qry_rupdate.FieldByName('RKNO').Value := Query2.FieldByName('RKNO').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('DefectID').Value := Query2.FieldByName('DefectID').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('KCBH').Value := Query2.FieldByName('KCBH').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('KCBH').Value := Query2.FieldByName('KCBH').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('KCBH').Value := Query2.FieldByName('KCBH').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('Carton_No').Value := Query2.FieldByName('Carton_No').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('Grade').Value := Query2.FieldByName('Grade').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('DDBH').Value := Query2.FieldByName('DDBH').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('Size').Value := Query2.FieldByName('Size').AsString;
        StockOut_BC.Qry_rupdate.FieldByName('Qty').Value := Query2.FieldByName('Qty').Value;
        StockOut_BC.Qry_rupdate.FieldByName('RemainQty').Value := Query2.FieldByName('OldQty').Value-Query2.FieldByName('Qty').Value; }
        Query2.Edit;
        Query2.FieldByName('YN').Value := '0';
        Inc(SelectedQty);
      end;
      Query2.Next;
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

end.
