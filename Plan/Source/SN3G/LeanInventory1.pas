unit LeanInventory1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TLeanInventory = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DAOMH: TStringField;
    Query1ARTICLE: TStringField;
    Query1RY: TStringField;
    Query1Cycle: TStringField;
    Query1Pairs: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadData(Building, Lean: String);
    { Public declarations }
  end;

var
  LeanInventory: TLeanInventory;

implementation

{$R *.dfm}

procedure TLeanInventory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLeanInventory.FormDestroy(Sender: TObject);
begin
  LeanInventory := Nil;
end;

procedure TLeanInventory.LoadData(Building, Lean: String);
begin
  Self.Caption := StringReplace(Building, 'A0', 'A', [rfReplaceAll]) + StringReplace(Lean, 'LEAN', 'L', [rfReplaceAll]) + ' - Inventory';

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('DECLARE @ClosingMonth VARCHAR(7) = (');
    SQL.Add('  SELECT MAX(KCYEAR + ''/'' + KCMONTH) AS Month FROM KCCLMONTH_Upper');
    SQL.Add(');');

    SQL.Add('SELECT XXZL.DAOMH, XXZL.ARTICLE, KCRK.RY,');
    SQL.Add('CASE WHEN MIN(KCRK.Cycle) = MAX(KCRK.Cycle) THEN ''T'' + CAST(MIN(KCRK.Cycle) AS VARCHAR) ELSE ''T'' + CAST(MIN(KCRK.Cycle) AS VARCHAR) + '' - T'' + CAST(MAX(KCRK.Cycle) AS VARCHAR) END AS Cycle,');
    SQL.Add('SUM(KCRK.Pairs) - ISNULL(SUM(KCLL.Pairs), 0) AS Pairs FROM (');
    SQL.Add('  SELECT RY, DDBH, CASE WHEN DDBH = RY THEN 1 ELSE CAST(RIGHT(DDBH, 3) AS INT) END AS Cycle, SUM(Pairs) AS Pairs FROM (');
    SQL.Add('    SELECT KCRK.RY, KCRKS.DDBH, KCRKS.Pairs FROM KCRK_Upper AS KCRK');
    SQL.Add('    LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('    WHERE KCRK.Date BETWEEN DATEADD(MONTH, 1, @ClosingMonth + ''/01'') AND CONVERT(VARCHAR, GETDATE(), 111) AND KCRK.Building = ''' + Building + ''' AND KCRK.Lean = ''' + Lean + '''');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT ZLBH, DDBH, Pairs FROM KCCLMONTH_Upper');
    SQL.Add('    WHERE KCYEAR + ''/'' + KCMONTH = @ClosingMonth AND Building = ''' + Building + ''' AND Lean = ''' + Lean + '''');
    SQL.Add('  ) AS KCRK');
    SQL.Add('  GROUP BY RY, DDBH');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT KCLL.RY, KCLLS.DDBH, SUM(KCLLS.Pairs) AS Pairs FROM KCLL_Upper AS KCLL');
    SQL.Add('  LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.LLNO = KCLL.LLNO');
    SQL.Add('  WHERE KCLL.Date BETWEEN DATEADD(MONTH, 1, @ClosingMonth + ''/01'') AND CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('  GROUP BY KCLL.RY, KCLLS.DDBH');
    SQL.Add(') AS KCLL ON KCLL.RY = KCRK.RY AND KCLL.DDBH = KCRK.DDBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('GROUP BY XXZL.DAOMH, XXZL.ARTICLE, KCRK.RY');
    SQL.Add('HAVING SUM(KCRK.Pairs) > ISNULL(SUM(KCLL.Pairs), 0)');
    SQL.Add('ORDER BY XXZL.DAOMH, XXZL.ARTICLE');
    Active := true;
  end;
end;

end.
