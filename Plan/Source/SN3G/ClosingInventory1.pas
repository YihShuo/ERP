unit ClosingInventory1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  Menus, DateUtils;

type
  TClosingInventory = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Button1: TButton;
    Label2: TLabel;
    ED_RY: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1ZLBH: TStringField;
    Query1DDBH: TStringField;
    Query1Pairs: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    PopupMenu1: TPopupMenu;
    RegenerateClosingInventory1: TMenuItem;
    QUpdate: TQuery;
    Query1Building: TStringField;
    Query1Lean: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RegenerateClosingInventory1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClosingInventory: TClosingInventory;

implementation

uses
  main1;

{$R *.dfm}

procedure TClosingInventory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TClosingInventory.FormDestroy(Sender: TObject);
begin
  ClosingInventory := Nil;
end;

procedure TClosingInventory.FormCreate(Sender: TObject);
begin
  DTP1.Date := IncMonth(Date, -1);
  DTP1.MaxDate := EndOfTheMonth(DTP1.Date);
end;

procedure TClosingInventory.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH, Pairs, UserID, UserDate, YN FROM KCCLMONTH_Upper');
    SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', DTP1.Date) + ''' AND ZLBH LIKE ''' + ED_RY.Text + '%''');
    SQL.Add('ORDER BY KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH');
    Active := true;
  end;
end;

procedure TClosingInventory.RegenerateClosingInventory1Click(
  Sender: TObject);
begin
  if (MessageDlg('Are you sure you want to regenerate the closing inventory for ' + FormatDateTime('yyyy/MM', DTP1.Date) + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with QUpdate do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM KCCLMONTH_Upper');
      SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', DTP1.Date) + ''';');

      SQL.Add('INSERT INTO KCCLMONTH_Upper (KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH, Pairs, Date, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + FormatDateTime('yyyy', DTP1.Date) + ''' AS KCYEAR, ''' + FormatDateTime('MM', DTP1.Date) + ''' AS KCMonth, KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, ISNULL(SUM(KCRK.InPairs), 0) - ISNULL(SUM(KCLL.OutPairs), 0) AS StockPairs, MAX(KCRK.Date) AS Date, ''' + main.Edit1.Text + ''' AS UserID, GETDATE() AS UserDate, ''1'' AS YN FROM (');
      SQL.Add('  SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, KCRK.InPairs, KCRK.Date, SUM(CAST(SC.sl AS INT)) AS RYPairs FROM (');
      SQL.Add('    SELECT Building, Lean, RY, DDBH, SUM(Pairs) AS InPairs, MAX(Date) AS Date FROM (');
      SQL.Add('      SELECT KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH, KCRKS_Upper.Pairs, KCRK_Upper.Date FROM KCRK_Upper');
      SQL.Add('      LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
      SQL.Add('      WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP1.Date)) + '''');
      SQL.Add('      UNION ALL');
      SQL.Add('      SELECT Building, Lean, ZLBH, DDBH, Pairs, Date FROM KCCLMONTH_Upper');
      SQL.Add('      WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP1.Date, -1)) + '''');
      SQL.Add('    ) AS KCRK');
      SQL.Add('    GROUP BY Building, Lean, RY, DDBH');
      SQL.Add('  ) AS KCRK');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = KCRK.Building AND SC.lean_no = KCRK.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = KCRK.RY');
      SQL.Add('  GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, KCRK.InPairs, KCRK.Date');
      SQL.Add(') AS KCRK');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT KCLL_Upper.RY, KCLLS_Upper.DDBH, SUM(KCLLS_Upper.Pairs) AS OutPairs FROM KCLL_Upper');
      SQL.Add('  LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO');
      SQL.Add('  WHERE KCLL_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP1.Date)) + '''');
      SQL.Add('  GROUP BY KCLL_Upper.RY, KCLLS_Upper.DDBH');
      SQL.Add(') AS KCLL ON KCLL.RY = KCRK.RY AND KCLL.DDBH = KCRK.DDBH');
      SQL.Add('WHERE KCRK.DDBH IS NOT NULL');
      SQL.Add('GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, KCRK.RYPairs');
      SQL.Add('HAVING ISNULL(SUM(KCRK.InPairs), 0) > ISNULL(SUM(KCLL.OutPairs), 0) OR ISNULL(SUM(KCRK.InPairs), 0) < ISNULL(KCRK.RYPairs, 0);');
      ExecSQL;
    end;
  end;

  Button1Click(Nil);
  ShowMessage('Complete');
end;

end.
