unit InventoryTurnoverDays1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls, DateUtils, ComObj,
  DB, DBTables;

type
  TInventoryTurnoverDays = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1DAOMH: TStringField;
    Query1ARTICLE: TStringField;
    Query1InDate: TDateTimeField;
    Query1ShipDate: TDateTimeField;
    Query1DayDiff: TIntegerField;
    Query1Pairs: TIntegerField;
    Query1KCBH: TStringField;
    Query1BUY: TStringField;
    Query1InPairs: TIntegerField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DTP1: TDateTimePicker;
    ED_CD: TEdit;
    ED_RY: TEdit;
    ED_SKU: TEdit;
    Button1: TButton;
    Button2: TButton;
    CB1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Button3: TButton;
    Button4: TButton;
    DBGridEh2: TDBGridEh;
    Label6: TLabel;
    DTP3: TDateTimePicker;
    DS2: TDataSource;
    Query2: TQuery;
    Query2Date: TDateTimeField;
    Query2Type: TStringField;
    Query2DDBH: TStringField;
    Query2DAOMH: TStringField;
    Query2ARTICLE: TStringField;
    Query2Pairs: TIntegerField;
    Query2BUY: TStringField;
    Label7: TLabel;
    ED_CD2: TEdit;
    Label8: TLabel;
    ED_SKU2: TEdit;
    Label9: TLabel;
    ED_RY2: TEdit;
    Label10: TLabel;
    CB2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InventoryTurnoverDays: TInventoryTurnoverDays;

implementation

{$R *.dfm}

procedure TInventoryTurnoverDays.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TInventoryTurnoverDays.FormDestroy(Sender: TObject);
begin
  InventoryTurnoverDays := Nil;
end;

procedure TInventoryTurnoverDays.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date;
  DTP2.Date := StartOfTheMonth(Date);
  DTP3.Date := EndOfTheMonth(Date);
  PC1.ActivePageIndex := 0;
end;

procedure TInventoryTurnoverDays.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KC.DDBH, KC.BUY, KC.DAOMH, KC.ARTICLE, KC.Pairs, KC.InPairs, CASE WHEN LEN(KC.KCBH) = 2 THEN REPLACE(KC.KCBH, ''A'', ''A0'') ELSE KC.KCBH END AS KCBH, CONVERT(SmallDateTime, CONVERT(VARCHAR, MAX(YWCP.InDate), 111)) AS InDate,');
    SQL.Add('CASE WHEN SUM(CASE WHEN YWCP.EXEDATE IS NOT NULL THEN YWCP.Qty ELSE 0 END) = KC.Pairs THEN CONVERT(SmallDateTime, CONVERT(VARCHAR, MAX(YWCP.EXEDATE), 111)) ELSE KC.ShipDate END AS ShipDate,');
    SQL.Add('DATEDIFF(DAY, CONVERT(SmallDateTime, CONVERT(VARCHAR, MAX(YWCP.InDate), 111)),');
    SQL.Add('CASE WHEN SUM(CASE WHEN YWCP.EXEDATE IS NOT NULL THEN YWCP.Qty ELSE 0 END) = KC.Pairs THEN CONVERT(SmallDateTime, CONVERT(VARCHAR, MAX(YWCP.EXEDATE), 111)) ELSE KC.ShipDate END) AS DayDiff FROM (');
    SQL.Add('  SELECT YWCP.DDBH, SUBSTRING(DDZL.BUYNO, 1, 6) AS BUY, XXZL.DAOMH, DDZL.ARTICLE, DDZL.Pairs, SUM(YWCP.Qty) AS InPairs, MAX(YWCP.KCBH) AS KCBH, DDZL.ShipDate FROM (');
    SQL.Add('    SELECT DDBH, SUM(Qty) AS Qty, MAX(KCBH) AS KCBH FROM YWCP');
    SQL.Add('    WHERE CONVERT(VARCHAR, INDATE, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''');
    SQL.Add('    GROUP BY DDBH');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT DDBH, Qty, CKBH FROM YWCPMONTH');
    SQL.Add('    WHERE KCYEAR = YEAR(DATEADD(MONTH, -1, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''')) AND KCMONTH = MONTH(DATEADD(MONTH, -1, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''))');
    SQL.Add('  ) AS YWCP');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = YWCP.DDBH');
    SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('  WHERE XXZL.DAOMH LIKE ''' + ED_CD.Text + '%'' AND DDZL.ARTICLE LIKE ''' + ED_SKU.Text + '%'' AND YWCP.DDBH LIKE ''' + ED_RY.Text + '%''');
    SQL.Add('  GROUP BY YWCP.DDBH, SUBSTRING(DDZL.BUYNO, 1, 6), XXZL.DAOMH, DDZL.ARTICLE, DDZL.Pairs, DDZL.ShipDate');
    SQL.Add(') AS KC');
    SQL.Add('LEFT JOIN YWCP ON YWCP.DDBH = KC.DDBH');
    SQL.Add('GROUP BY KC.DDBH, KC.BUY, KC.DAOMH, KC.ARTICLE, KC.Pairs, KC.InPairs, KC.KCBH, KC.ShipDate');
    if (CB1.Checked) then
      SQL.Add('HAVING SUM(CASE WHEN YWCP.EXEDATE IS NOT NULL THEN YWCP.Qty ELSE 0 END) < KC.Pairs');
    SQL.Add('ORDER BY DAOMH, ARTICLE, CONVERT(SmallDateTime, CONVERT(VARCHAR, MAX(YWCP.InDate), 111))');
    Active := true;
  end;
end;

procedure TInventoryTurnoverDays.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Query1.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      for Col := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh1.Columns[Col].Title.Caption;
      end;

      Query1.First;
      Row := 2;
      while not Query1.Eof do
      begin
        for Col := 0 to DBGridEh1.Columns.Count - 1 do
        begin
          eclApp.Cells[Row, Col+1] := Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
        end;
        Query1.Next;
        Inc(Row);
      end;

      eclapp.Columns.Autofit;  
      ShowMessage('Successful');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TInventoryTurnoverDays.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('DayDiff').AsInteger >= 35) then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TInventoryTurnoverDays.Button3Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CONVERT(SmallDateTime, KC.Date) AS Date, KC.Type, KC.DDBH, SUBSTRING(DDZL.BUYNO, 1, 6) AS BUY, XXZL.DAOMH, DDZL.ARTICLE, KC.Pairs FROM (');
    if (CB2.Text = 'Inbound') OR (CB2.Text = 'ALL') then
    begin
      SQL.Add('  SELECT CONVERT(VARCHAR, INDATE, 111) AS Date, ''Inbound'' AS Type, DDBH, SUM(Qty) AS Pairs FROM YWCP');
      SQL.Add('  WHERE CONVERT(VARCHAR, INDATE, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + '''');
      SQL.Add('  GROUP BY CONVERT(VARCHAR, INDATE, 111), DDBH');
    end;
    if (CB2.Text = 'ALL') then
      SQL.Add('  UNION ALL');
    if (CB2.Text = 'Outbound') OR (CB2.Text = 'ALL') then
    begin
      SQL.Add('  SELECT CONVERT(VARCHAR, EXEDATE, 111) AS Date, ''Outbound'' AS Type, DDBH, SUM(Qty) AS Pairs FROM YWCP');
      SQL.Add('  WHERE CONVERT(VARCHAR, EXEDATE, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + '''');
      SQL.Add('  GROUP BY CONVERT(VARCHAR, EXEDATE, 111), DDBH');
    end;
    SQL.Add(') AS KC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KC.DDBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE XXZL.DAOMH LIKE ''' + ED_CD2.Text + '%'' AND DDZL.ARTICLE LIKE ''' + ED_SKU2.Text + '%'' AND KC.DDBH LIKE ''' + ED_RY2.Text + '%''');
    SQL.Add('ORDER BY CONVERT(SmallDateTime, KC.Date), KC.Type, XXZL.DAOMH, DDZL.ARTICLE, KC.DDBH');
    Active := true;
  end;
end;

procedure TInventoryTurnoverDays.Button4Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Query2.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      for Col := 0 to DBGridEh2.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh2.Columns[Col].Title.Caption;
      end;

      Query2.First;
      Row := 2;
      while not Query2.Eof do
      begin
        for Col := 0 to DBGridEh2.Columns.Count - 1 do
        begin
          eclApp.Cells[Row, Col+1] := Query2.FieldByName(DBGridEh2.Columns[Col].FieldName).Value;
        end;
        Query2.Next;
        Inc(Row);
      end;

      eclapp.Columns.Autofit;  
      ShowMessage('Successful');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
