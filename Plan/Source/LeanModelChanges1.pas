unit LeanModelChanges1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, ExtCtrls, DateUtils;

type
  TLeanModelChanges = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Splitter1: TSplitter;
    DS2: TDataSource;
    Query2: TQuery;
    Query1Month: TStringField;
    Query1Building: TStringField;
    Query1Lean: TStringField;
    Query1Planned: TIntegerField;
    Query1Actual: TIntegerField;
    Query1Unplanned: TIntegerField;
    Query2Date: TDateTimeField;
    DS3: TDataSource;
    Query2DAOMH_F: TStringField;
    Query2ARTICLE_F: TStringField;
    Query2Labor_F: TIntegerField;
    Query2RY_F: TStringField;
    Query2DAOMH_T: TStringField;
    Query2ARTICLE_T: TStringField;
    Query2Labor_T: TIntegerField;
    Query2RY_T: TStringField;
    Panel1: TPanel;
    DBGridEh2: TDBGridEh;
    Query3: TQuery;
    DateTimeField2: TDateTimeField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField2: TIntegerField;
    StringField8: TStringField;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadData(sDate: TDate; Section, Mode: string; Labor: integer);
  end;

var
  LeanModelChanges: TLeanModelChanges;

implementation

uses
  OneDayPlan1;

{$R *.dfm}

procedure TLeanModelChanges.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLeanModelChanges.FormDestroy(Sender: TObject);
begin
  LeanModelChanges := Nil;
end;

procedure TLeanModelChanges.LoadData(sDate: TDate; Section, Mode: string; Labor: integer);
begin
  Self.Caption := '[' + FormatDateTime('yyyy/MM', sDate) + '] - [' + Section + '] Model Changes';

  if (Section = 'Assembly') then
  begin
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('IF OBJECT_ID(''tempdb..#Planned2'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Planned2 END;');
                  
      SQL.Add('IF OBJECT_ID(''tempdb..#Actual2'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Actual2 END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IE'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IE END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IEVer'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IEVer END;');
      ExecSQL;

      SQL.Add('SELECT XieXing, SheHao,');
      SQL.Add('MAX(CASE WHEN GXLB = ''C'' THEN BZRS + BZJS END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN GXLB = ''S'' THEN BZRS + BZJS END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN GXLB = ''A'' THEN BZRS + BZJS END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN GXLB = ''P'' THEN BZRS + BZJS END) AS Labor_P INTO #IE FROM SCXXCL');
      SQL.Add('WHERE BZLB = ''3''');
      SQL.Add('GROUP BY XieXing, SheHao');

      SQL.Add('SELECT LV.XieXing, LV.SheHao,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Cutting'' THEN IE.IE_DL + IE.IDL END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Stitching'' THEN IE.IE_DL + IE.IDL END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Assembly'' THEN IE.IE_DL + IE.IDL END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Packing'' THEN IE.IE_DL + IE.IDL END) AS Labor_P INTO #IEVer FROM (');
      SQL.Add('  SELECT XieXing, SheHao, Production_Category AS GXLB, MAX(VERSION) AS Version FROM IE_ARTICLEDATA');
      SQL.Add('  WHERE Production_Category IN (''Cutting'', ''Stitching'', ''Assembly'', ''Packing'') AND XieXing <> ''''');
      SQL.Add('  GROUP BY XieXing, SheHao, Production_Category');
      SQL.Add(') AS LV');
      SQL.Add('LEFT JOIN IE_ARTICLEDATA AS IE ON IE.XieXing = LV.XieXing AND IE.SheHao = LV.SheHao AND IE.Production_Category = LV.GXLB AND IE.VERSION = LV.Version');
      SQL.Add('GROUP BY LV.XieXing, LV.SheHao');

      SQL.Add('SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, Seq INTO #Planned2 FROM (');
      SQL.Add('  SELECT LEFT(CONVERT(VARCHAR, SC.schedule_date, 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('  ISNULL(ISNULL(IEVer.Labor_A, IE.Labor_A), 0) + ISNULL(ISNULL(IEVer.Labor_P, IE.Labor_P), 0) AS Labor,');
      SQL.Add('  ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date, SC.ry_index) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('  LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(sDate)) + ''' AND SC.schedule_date < GetDate() AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, 0 AS Seq FROM (');
      SQL.Add('    SELECT LEFT(CONVERT(VARCHAR, DATEADD(MM, 1, SC.schedule_date), 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('    ISNULL(ISNULL(IEVer.Labor_A, IE.Labor_A), 0) + ISNULL(ISNULL(IEVer.Labor_P, IE.Labor_P), 0) AS Labor,');
      SQL.Add('    ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date DESC, SC.ry_index DESC) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('    LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('    LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('    WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(sDate, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(IncMonth(sDate, -1))) + ''' AND SC.schedule_date < GetDate() AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('  ) AS LastMonth');
      SQL.Add('  WHERE Seq = 1');
      SQL.Add(') AS Planned');

      SQL.Add('SELECT LEFT(CONVERT(VARCHAR, PP.PlanDate, 111), 7) AS Month, PP.Building, PP.Lean, PP.PlanDate, PP.RY, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('ISNULL(ISNULL(IEVer.Labor_A, IE.Labor_A), 0) + ISNULL(ISNULL(IEVer.Labor_P, IE.Labor_P), 0) AS Labor,');
      SQL.Add('ROW_NUMBER() OVER(PARTITION BY LEFT(CONVERT(VARCHAR, PP.PlanDate, 111), 7), PP.Building, PP.Lean ORDER BY PP.PlanDate, PP.AssemblyTime, PP.Seq, SC.Date) AS Seq INTO #Actual2 FROM ProductionPlan AS PP');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SC.building_no, SC.lean_no, DDZL.DDBH, MIN(CONVERT(VARCHAR, SC.schedule_date, 111) + ''-'' + CAST(SC.ry_index AS VARCHAR)) AS Date FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  WHERE SC.schedule_date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(sDate, -1))) + '''');
      SQL.Add('  GROUP BY SC.building_no, SC.lean_no, DDZL.DDBH');
      SQL.Add(') AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND SC.DDBH = PP.RY');
      SQL.Add('WHERE PP.PlanType LIKE ''1-Day%'' AND PP.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(sDate)) + ''' AND PP.PlanDate <= GetDate()');

      SQL.Add('SELECT ''' + FormatDateTime('yyyy/MM', sDate) + ''' AS Month, SC.Building, SC.Lean, ISNULL(Planned.Planned, 0) AS Planned, ISNULL(Actual.Actual, 0) AS Actual,');
      SQL.Add('CASE WHEN ISNULL(Actual.Actual, 0) > ISNULL(Planned.Planned, 0) THEN ISNULL(Actual.Actual, 0) - ISNULL(Planned.Planned, 0) ELSE 0 END AS Unplanned FROM (');
      SQL.Add('  SELECT DISTINCT building_no AS Building, lean_no AS Lean FROM schedule_crawler');
      SQL.Add('  WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(sDate)) + ''' AND building_no <> ''PM'' AND building_no + lean_no <> ''A11Lean06''');
      SQL.Add(') AS SC');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT P1.Building, P1.Lean, COUNT(*) AS Planned FROM #Planned2 AS P1');
      SQL.Add('  LEFT JOIN #Planned2 AS P2 ON P2.Building = P1.Building AND P2.Lean = P1.Lean AND P1.Seq = P2.Seq + 1');
      SQL.Add('  WHERE P1.DAOMH IS NOT NULL AND P1.Date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + '''');
      if (Mode = 'Cutting Die') then
        SQL.Add('  AND P1.DAOMH <> ISNULL(P2.DAOMH, '''')')
      else if (Mode = 'Labor') then
        SQL.Add('  AND ABS(P1.Labor - ISNULL(P2.Labor, 0)) > ' + IntToStr(Labor));
      SQL.Add('  GROUP BY P1.Building, P1.Lean');
      SQL.Add(') AS Planned ON Planned.Building = SC.Building AND Planned.Lean = SC.Lean');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT A1.Building, A1.Lean, COUNT(*) AS Actual FROM #Actual2 AS A1');
      SQL.Add('  LEFT JOIN #Actual2 AS A2 ON A2.Month = A1.Month AND A2.Building = A1.Building AND A2.Lean = A1.Lean AND A1.Seq = A2.Seq + 1');
      SQL.Add('  WHERE A1.DAOMH IS NOT NULL AND A2.DAOMH IS NOT NULL');
      if (Mode = 'Cutting Die') then
        SQL.Add('  AND A1.DAOMH <> ISNULL(A2.DAOMH, '''')')
      else if (Mode = 'Labor') then
        SQL.Add('  AND ABS(A1.Labor - ISNULL(A2.Labor, 0)) > ' + IntToStr(Labor));
      SQL.Add('  GROUP BY A1.Building, A1.Lean');
      SQL.Add(') AS Actual ON Actual.Building = SC.Building AND Actual.Lean = SC.Lean');
      SQL.Add('ORDER BY SC.Building, SC.Lean');
      Active := true;
    end;

    with Query2 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT P1.Date, P2.DAOMH AS DAOMH_F, P2.ARTICLE AS ARTICLE_F, P2.Labor AS Labor_F, P2.DDBH AS RY_F, P1.DAOMH AS DAOMH_T, P1.ARTICLE AS ARTICLE_T, P1.Labor AS Labor_T, P1.DDBH AS RY_T FROM #Planned2 AS P1');
      SQL.Add('LEFT JOIN #Planned2 AS P2 ON P2.Building = P1.Building AND P2.Lean = P1.Lean AND P1.Seq = P2.Seq + 1');
      SQL.Add('WHERE P1.DAOMH IS NOT NULL AND P1.Date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND P1.Building = :Building AND P1.Lean = :Lean');
      if (Mode = 'Cutting Die') then
        SQL.Add('AND P1.DAOMH <> ISNULL(P2.DAOMH, '''')')
      else if (Mode = 'Labor') then
        SQL.Add('AND ABS(P1.Labor - ISNULL(P2.Labor, 0)) > ' + IntToStr(Labor));
      SQL.Add('ORDER BY P1.Seq');
      Active := true;
    end;

    with Query3 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT A1.PlanDate AS Date, A2.DAOMH AS DAOMH_F, A2.ARTICLE AS ARTICLE_F, A2.Labor AS Labor_F, A2.RY AS RY_F, A1.DAOMH AS DAOMH_T, A1.ARTICLE AS ARTICLE_T, A1.Labor AS Labor_T, A1.RY AS RY_T FROM #Actual2 AS A1');
      SQL.Add('LEFT JOIN #Actual2 AS A2 ON A2.Month = A1.Month AND A2.Building = A1.Building AND A2.Lean = A1.Lean AND A1.Seq = A2.Seq + 1');
      SQL.Add('WHERE A1.DAOMH IS NOT NULL AND A2.DAOMH IS NOT NULL AND A1.Building = :Building AND A1.Lean = :Lean');
      if (Mode = 'Cutting Die') then
        SQL.Add('AND A1.DAOMH <> ISNULL(A2.DAOMH, '''')')
      else if (Mode = 'Labor') then
        SQL.Add('AND ABS(A1.Labor - ISNULL(A2.Labor, 0)) > ' + IntToStr(Labor));
      SQL.Add('ORDER BY A1.Seq');
      Active := true;
    end;
  end;
  {else if (Section = 'Stitching') then
  begin
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('IF OBJECT_ID(''tempdb..#Planned'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Planned END;');
                  
      SQL.Add('IF OBJECT_ID(''tempdb..#Actual'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Actual END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IE'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IE END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IEVer'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IEVer END;');
      ExecSQL;

      SQL.Add('SELECT XieXing, SheHao,');
      SQL.Add('MAX(CASE WHEN GXLB = ''C'' THEN BZRS + BZJS END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN GXLB = ''S'' THEN BZRS + BZJS END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN GXLB = ''A'' THEN BZRS + BZJS END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN GXLB = ''P'' THEN BZRS + BZJS END) AS Labor_P INTO #IE FROM SCXXCL');
      SQL.Add('WHERE BZLB = ''3''');
      SQL.Add('GROUP BY XieXing, SheHao');

      SQL.Add('SELECT LV.XieXing, LV.SheHao,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Cutting'' THEN IE.IE_DL + IE.IDL END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Stitching'' THEN IE.IE_DL + IE.IDL END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Assembly'' THEN IE.IE_DL + IE.IDL END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Packing'' THEN IE.IE_DL + IE.IDL END) AS Labor_P INTO #IEVer FROM (');
      SQL.Add('  SELECT XieXing, SheHao, Production_Category AS GXLB, MAX(VERSION) AS Version FROM IE_ARTICLEDATA');
      SQL.Add('  WHERE Production_Category IN (''Cutting'', ''Stitching'', ''Assembly'', ''Packing'') AND XieXing <> ''''');
      SQL.Add('  GROUP BY XieXing, SheHao, Production_Category');
      SQL.Add(') AS LV');
      SQL.Add('LEFT JOIN IE_ARTICLEDATA AS IE ON IE.XieXing = LV.XieXing AND IE.SheHao = LV.SheHao AND IE.Production_Category = LV.GXLB AND IE.VERSION = LV.Version');
      SQL.Add('GROUP BY LV.XieXing, LV.SheHao');

      SQL.Add('SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, Seq INTO #Planned FROM (');
      SQL.Add('  SELECT LEFT(CONVERT(VARCHAR, SC.schedule_date, 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('  ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0) AS Labor,');
      SQL.Add('  ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date, SC.ry_index) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('  LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(sDate)) + ''' AND SC.schedule_date <= CONVERT(VARCHAR, GetDate(), 111) AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, 0 AS Seq FROM (');
      SQL.Add('    SELECT LEFT(CONVERT(VARCHAR, DATEADD(MM, 1, SC.schedule_date), 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('    ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0) AS Labor,');
      SQL.Add('    ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date DESC, SC.ry_index DESC) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('    LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('    LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('    WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(sDate, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(IncMonth(sDate, -1))) + ''' AND SC.schedule_date <= CONVERT(VARCHAR, GetDate(), 111) AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('  ) AS LastMonth');
      SQL.Add('  WHERE Seq = 1');
      SQL.Add(') AS Planned');

      SQL.Add('SELECT SCBB.Month, ISNULL(SF.Building_TX, SCBB.Building) AS Building, ISNULL(SF.Lean_TX, SCBB.Lean) AS Lean, SCBB.Date, SCBB.DAOMH, SCBB.ARTICLE, SCBB.Labor,');
      SQL.Add('ROW_NUMBER() OVER(PARTITION BY SCBB.Month, ISNULL(SF.Building_TX, SCBB.Building), ISNULL(SF.Lean_TX, SCBB.Lean) ORDER BY SCBB.Date, SCBB.DAOMH) AS Seq,');
      SQL.Add('DENSE_RANK() OVER(PARTITION BY SCBB.Month, ISNULL(SF.Building_TX, SCBB.Building), ISNULL(SF.Lean_TX, SCBB.Lean) ORDER BY SCBB.Date) AS DateSeq INTO #Actual FROM (');
      SQL.Add('  SELECT LEFT(CONVERT(VARCHAR, SCBB.SCDate, 111), 7) AS Month, REPLACE(LEFT(BDepartment.DepName, 3), ''_'', '''') AS Building,');
      SQL.Add('  REPLACE(RIGHT(BDepartment.DepName, 8), ''_M'', '''') AS Lean, SCBB.SCDate AS Date, XXZL.DAOMH, XXZL.ARTICLE, SUM(SCBBS.Qty) AS Pairs,');
      SQL.Add('  ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0) AS Labor FROM SCBB');
      SQL.Add('  LEFT JOIN SCBBS ON SCBBS.ProNo = SCBB.ProNo');
      SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SCBB.DepNo');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SCBBS.SCBH');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('  LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('  WHERE SCBB.SCDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(sDate)) + ''' AND SCBBS.GXLB = ''S'' AND BDepartment.DepName NOT LIKE ''%PM%''');
      SQL.Add('  GROUP BY BDepartment.DepName, SCBB.SCDate, XXZL.DAOMH, XXZL.ARTICLE, ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0)');
      SQL.Add(') AS SCBB');
      SQL.Add('LEFT JOIN schedule_factorylink AS SF ON SF.Year + ''/'' + SF.Month = SCBB.Month AND SF.Building_VL = SCBB.Building AND SF.Lean_VL = SCBB.Lean');
      SQL.Add('WHERE SCBB.Pairs > 100');

      SQL.Add('SELECT ''' + FormatDateTime('yyyy/MM', sDate) + ''' AS Month, SC.Building, SC.Lean, ISNULL(Planned.Planned, 0) AS Planned, ISNULL(Actual.Actual, 0) AS Actual,');
      SQL.Add('CASE WHEN ISNULL(Actual.Actual, 0) > ISNULL(Planned.Planned, 0) THEN ISNULL(Actual.Actual, 0) - ISNULL(Planned.Planned, 0) ELSE 0 END AS Unplanned FROM (');
      SQL.Add('  SELECT DISTINCT LEFT(CONVERT(VARCHAR, schedule_date, 111), 7) AS Month, building_no AS Building, lean_no AS Lean FROM schedule_crawler');
      SQL.Add('  WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(sDate)) + ''' AND building_no <> ''PM'' AND building_no + lean_no <> ''A11Lean06''');
      SQL.Add(') AS SC');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT P1.Month, P1.Building, P1.Lean, COUNT(*) AS Planned FROM #Planned AS P1');
      SQL.Add('  LEFT JOIN #Planned AS P2 ON P2.Building = P1.Building AND P2.Lean = P1.Lean AND P1.Seq = P2.Seq + 1');
      SQL.Add('  WHERE P1.DAOMH IS NOT NULL AND P1.Date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(sDate)) + '''');
      if (Mode = 'Cutting Die') then
        SQL.Add('  AND P1.DAOMH <> ISNULL(P2.DAOMH, '''')')
      else if (Mode = 'Labor') then
        SQL.Add('  AND ABS(P1.Labor - ISNULL(P2.Labor, 0)) > ' + IntToStr(Labor));
      SQL.Add('  GROUP BY P1.Month, P1.Building, P1.Lean');
      SQL.Add(') AS Planned ON Planned.Month = SC.Month AND Planned.Building = SC.Building AND Planned.Lean = SC.Lean');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT Normal.Month, Normal.Building, Normal.Lean, Normal.Actual - ISNULL(Minus.Qty, 0) AS Actual FROM (');
      SQL.Add('    SELECT A1.Month, A1.Building, A1.Lean, COUNT(*) AS Actual FROM #Actual AS A1');
      SQL.Add('    LEFT JOIN #Actual AS A2 ON A2.Month = A1.Month AND A2.Building = A1.Building AND A2.Lean = A1.Lean AND A1.Seq = A2.Seq + 1');
      SQL.Add('    WHERE A1.DAOMH IS NOT NULL AND A2.DAOMH IS NOT NULL');
      if (Mode = 'Cutting Die') then
        SQL.Add('    AND A1.DAOMH <> ISNULL(A2.DAOMH, '''')')
      else if (Mode = 'Labor') then
        SQL.Add('    AND ABS(A1.Labor - ISNULL(A2.Labor, 0)) > ' + IntToStr(Labor));
      SQL.Add('    GROUP BY A1.Month, A1.Building, A1.Lean');
      SQL.Add('  ) AS Normal');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT Month, Building, Lean, SUM(Qty) AS Qty FROM (');
      SQL.Add('      SELECT A1.Month, A1.Building, A1.Lean, A1.Date, COUNT(DISTINCT A2.DAOMH)-1 AS Qty FROM #Actual AS A1');
      SQL.Add('      LEFT JOIN #Actual AS A2 ON A2.Month = A1.Month AND A2.Building = A1.Building AND A2.Lean = A1.Lean AND A2.DateSeq = A1.DateSeq - 1 AND A2.DAOMH = A1.DAOMH AND A2.Seq - 1 <> A1.Seq');
      SQL.Add('      WHERE A1.DAOMH IS NOT NULL');
      SQL.Add('      GROUP BY A1.Month, A1.Building, A1.Lean, A1.Date');
      SQL.Add('      HAVING COUNT(DISTINCT A2.DAOMH) > 1');
      SQL.Add('    ) AS Minus');
      SQL.Add('    GROUP BY Month, Building, Lean');
      SQL.Add('  ) AS Minus ON Minus.Month = Normal.Month AND Minus.Building = Normal.Building AND Minus.Lean = Normal.Lean');
      SQL.Add(') AS Actual ON Actual.Month = SC.Month AND Actual.Building = SC.Building AND Actual.Lean = SC.Lean');
      SQL.Add('ORDER BY SC.Building, SC.Lean');
      Active := true;
    end;

    Splitter1.Visible := false;
    DBGridEh2.Visible := false;
    DBGridEh3.Visible := false;
    Self.Width := 400;
  end;}
end;

procedure TLeanModelChanges.FormResize(Sender: TObject);
begin
  DBGridEh3.Height := (Self.ClientHeight - Splitter2.Height) DIV 2;
end;

procedure TLeanModelChanges.DBGridEh2Columns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (OneDayPlan = Nil) then
    OneDayPlan := TOneDayPlan.Create(Self);
  OneDayPlan.Caption := '1-Day Plan [' + Query1.FieldByName('Building').AsString + ' ' + UpperCase(Query1.FieldByName('Lean').AsString) + ']';
  OneDayPlan.LoadData(Query1.FieldByName('Building').AsString, Query1.FieldByName('Lean').AsString, Query3.FieldByName('Date').AsDateTime);
  OneDayPlan.Show;
end;

end.
