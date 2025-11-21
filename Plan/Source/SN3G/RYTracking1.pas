unit RYTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, ExtCtrls, StdCtrls;

type
  TRYTracking = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1RY: TStringField;
    Query1Cycle: TStringField;
    Query1Pairs: TIntegerField;
    Splitter1: TSplitter;
    Query2: TQuery;
    DS2: TDataSource;
    Query2DDBH: TStringField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2ZLQty: TFloatField;
    Query2CGQty: TFloatField;
    Query2RKQty: TFloatField;
    Query2Status: TStringField;
    Query2LackQty: TFloatField;
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh3: TDBGridEh;
    Query3: TQuery;
    DS3: TDataSource;
    Query3DDBH: TStringField;
    Query3Part: TStringField;
    Query3Process: TStringField;
    Query3Supplier: TStringField;
    Query3Pairs: TIntegerField;
    Query3InputPairs: TIntegerField;
    Query3InputRate: TFloatField;
    Query3OutputPairs: TIntegerField;
    Query3OutputRate: TFloatField;
    Query1OSPairs: TStringField;
    Query1RPairs: TStringField;
    Query1Assigned: TStringField;
    Query1StockIn: TStringField;
    Query3EstLaunchDate: TStringField;
    Query3ActLaunchDate: TDateTimeField;
    Query1APairs: TStringField;
    Query2ZSYWJC: TStringField;
    Query2IQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Query2CalcFields(DataSet: TDataSet);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh3TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    sRY: string;
    LanguageIndex: integer;
    CycleFlag: boolean;
    procedure GenerateAssignedSQL(TargetQyery: TQuery; RY: string);
    { Private declarations }
  public
    { Public declarations }
    procedure LoadData(Month, Building, Lean, LeanType, RY: string);
  end;

var
  RYTracking: TRYTracking;

const
  PartEN: array[0..20] of string = (
    'UPPER',
    'UPPER LOGO',
    'TONGUE LOGO',
    'TONGUE LINING LOGO',
    'EYESTAY LOGO',
    'COLLAR LOGO',
    'BACKSTAY LOGO',
    'HEEL LOGO',
    'BACK TAB LOGO',
    'TONGUE',
    'TONGUE LINING',
    'STAR/CHEVRN LOGO',
    'TOE CAP',
    'OUTSOLE',
    'FOXING',
    'BB FOXING',
    'INSOLE',
    'BACKSTAY',
    'STRAP',
    'WEBBING',
    'QUARTER OVERLAY BAR'
  );

  PartVN: array[0..20] of string = (
    'THAN',
    'LOGO THAN',
    'LOGO LUOI GA',
    'LOGO LOT LUOI GA',
    'LOGO DEM',
    'LOGO VONG CO',
    'LOGO DAY GOT',
    'NHAN GOT',
    'LOGO HAU',
    'LUOI GA',
    'LOT LUOI GA',
    'TRANG/SAO',
    'BAO MUI',
    'DE LON',
    'DAY CCS',
    'TALON THAN',
    'DE TRUNG',
    'DAY GOT',
    'DAY QUAI',
    'DAY DET',
    'TRANG TRI THAN'
  );

  PartCH: array[0..20] of string = (
    '鞋身',
    '鞋身LOGO',
    '鞋舌LOGO',
    '鞋舌內裡LOGO',
    '眼片LOGO',
    '領口LOGO',
    '後吊LOGO',
    '後跟標',
    '後上片',
    '鞋舌',
    '鞋舌內裡',
    '星星月亮LOGO',
    '前包頭',
    '大底',
    '邊條',  
    'BB邊條',
    '中底',
    '後吊',
    '絆帶',
    '織帶',
    '鞋面飾片'
  );

  ProcessEN: array[0..3] of string = (
    'PRINTING',
    'HEAT PRESSING',
    'EMBROIDERY',
    'TRANSFER PRINTING'
  );

  ProcessVN: array[0..3] of string = (
    'IN',
    'EP',
    'THEU',
    'CHUYEN IN'
  );

  ProcessCH: array[0..3] of string = (
    '印刷',
    '高週波',
    '電繡',
    '轉印'
  );

implementation

uses
  ModelCuttingBom1;

{$R *.dfm}

procedure TRYTracking.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRYTracking.FormDestroy(Sender: TObject);
begin
  RYTracking := Nil;
end;

procedure TRYTracking.LoadData(Month, Building, Lean, LeanType, RY: string);
var
  Outsourced, Stitching, Assigned, Assembly: integer;
begin
  sRY := RY;
  Self.Caption := RY + ' Progress Tracking';
  LanguageIndex := 1;
  CycleFlag := true;

  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT RYMat.DDBH, RYMat.CLBH, RYMat.YWPM, RYMat.DWBH, RYMat.ZSYWJC, RYMat.ZLQty, RYMat.CGQty, RYMat.RKQty, RYMat.Status, ISNULL(SUM(MRCardS.IssuanceUsage), 0) AS IQty FROM (');
    SQL.Add('  SELECT RYMat.DDBH, RYMat.CLBH, RYMat.YWPM, RYMat.DWBH, RYMat.ZSYWJC, RYMat.ZLQty, RYMat.CGQty, RYMat.KCQty + ISNULL(SUM(KCRKS.Qty), 0) AS RKQty,');
    SQL.Add('  CASE WHEN RYMat.KCQty + ISNULL(SUM(KCRKS.Qty), 0) < RYMat.ZLQty THEN ISNULL(''ETA - '' + SUBSTRING(CONVERT(VARCHAR, RYMat.ETA, 111), 6, 5), ''NO ETA'') ELSE ''OK'' END AS Status FROM (');
    SQL.Add('    SELECT RYMat.DDBH, RYMat.CLBH, RYMat.YWPM, RYMat.DWBH, RYMat.ZSYWJC, RYMat.ZLQty, ISNULL(SUM(CGKCUSE.Qty), 0) AS KCQty, ISNULL(SUM(CGZLSS.Qty), 0) AS CGQty, MAX(CGZLSS.CFMDate) AS ETA FROM (');
    SQL.Add('      SELECT ZLZLS2.ZLBH AS DDBH, ZLZLS2.CLBH, CLZL.YWPM, CLZL.DWBH, ZSZL.ZSYWJC, SUM(ZLZLS2.CLSL) AS ZLQty FROM ZLZLS2');
    SQL.Add('      LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('      LEFT JOIN ZSZL ON ZSZL.ZSDH = ZLZLS2.CSBH');
    SQL.Add('      WHERE ZLZLS2.ZLBH = ''' + RY + ''' AND ZLZLS2.ZMLB = ''N'' AND ZLZLS2.CSBH NOT LIKE ''JNG%'' AND ISNULL(ZLZLS2.CLSL, 0) > 0');
    SQL.Add('      AND LEFT(ZLZLS2.CLBH, 1) IN (''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''J'', ''K'', ''O'', ''P'', ''V'')');
    SQL.Add('      AND CLZL.DWBH IN (''YRD'', ''SQM'', ''SQF'', ''SHT'', ''PCE'', ''PC'', ''M'') AND CLZL.YWPM NOT LIKE ''%QC%LABEL%''');
    SQL.Add('      GROUP BY ZLZLS2.ZLBH, ZLZLS2.CLBH, CLZL.YWPM, CLZL.DWBH, ZSZL.ZSYWJC');
    SQL.Add('    ) AS RYMat');
    SQL.Add('    LEFT JOIN CGKCUSE ON CGKCUSE.ZLBH = RYMat.DDBH AND CGKCUSE.CLBH = RYMat.CLBH');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.ZLBH = RYMat.DDBH AND CGZLSS.CLBH = RYMat.CLBH');
    SQL.Add('    GROUP BY RYMat.DDBH, RYMat.CLBH, RYMat.YWPM, RYMat.DWBH, RYMat.ZSYWJC, RYMat.ZLQty');
    SQL.Add('  ) AS RYMat');
    SQL.Add('  LEFT JOIN KCRKS ON KCRKS.CGBH = RYMat.DDBH AND KCRKS.CLBH = RYMat.CLBH');
    SQL.Add('  LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO AND KCRK.CFMDATE IS NOT NULL');
    SQL.Add('  GROUP BY RYMat.DDBH, RYMat.CLBH, RYMat.YWPM, RYMat.DWBH, RYMat.ZSYWJC, RYMat.ZLQty, RYMat.KCQty, RYMat.CGQty, RYMat.ETA');
    SQL.Add(') AS RYMat');
    SQL.Add('LEFT JOIN MRCardS ON MRCardS.RY_Begin = RYMat.DDBH AND MRCardS.MaterialID = RYMat.CLBH');
    SQL.Add('LEFT JOIN MRCard ON MRCard.ListNo = MRCardS.ListNo AND MRCard.ConfirmDate IS NOT NULL');
    SQL.Add('GROUP BY RYMat.DDBH, RYMat.CLBH, RYMat.YWPM, RYMat.DWBH, RYMat.ZSYWJC, RYMat.ZLQty, RYMat.CGQty, RYMat.RKQty, RYMat.Status');
    SQL.Add('ORDER BY RYMat.CLBH');
    Active := true;
  end;

  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SC.DDBH, SC.Part, SC.Process, SC.Supplier, SC.Pairs, SC.EstLaunchDate, SC.ActLaunchDate,');
    SQL.Add('SC.InputPairs, CAST(SC.InputPairs * 100.0 / SC.Pairs AS NUMERIC(4, 1)) AS InputRate,');
    SQL.Add('ISNULL(SUM(SPO.Pairs), 0) AS OutputPairs, CAST(ISNULL(SUM(SPO.Pairs), 0) * 100.0 / SC.Pairs AS NUMERIC(4, 1)) AS OutputRate FROM (');
    SQL.Add('  SELECT SC.building_no, SC.lean_no, SC.DDBH, MSP.Part, MSP.Process, MSP.Supplier, SC.Pairs, ISNULL(SUM(SPI.Pairs), 0) AS InputPairs, MIN(SPI.Date) AS ActLaunchDate,');
    SQL.Add('  CASE WHEN MSP.LeadTime IS NOT NULL THEN CONVERT(VARCHAR, DATEADD(DAY, -MSP.LeadTime, SC.schedule_date), 111) ELSE ''No Lead Time'' END AS EstLaunchDate FROM (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, DDZL.DDBH, SUM(CAST(SC.sl AS INT)) AS Pairs, MIN(SC.schedule_date) AS schedule_date, DDZL.XieXing, DDZL.SheHao FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    WHERE SUBSTRING(CONVERT(VARCHAR, SC.schedule_date, 111), 1, 7) = ''' + Month + ''' AND SC.building_no = ''' + Building + ''' AND SC.lean_no = ''' + Lean + ''' AND DDZL.DDBH = ''' + RY + '''');
    SQL.Add('    GROUP BY SC.building_no, SC.lean_no, DDZL.DDBH, DDZL.XieXing, DDZL.SheHao');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = SC.XieXing AND MSP.SheHao = SC.SheHao');
    SQL.Add('  LEFT JOIN SecondProcessInput AS SPI ON SPI.Building = SC.building_no AND SPI.Lean = SC.lean_no AND SPI.RY = SC.DDBH AND SPI.Part = MSP.Part AND SPI.Process = MSP.Process');
    SQL.Add('  WHERE MSP.Part <> ''NO PROCESSING''');
    SQL.Add('  GROUP BY SC.building_no, SC.lean_no, SC.DDBH, MSP.Part, MSP.Process, MSP.Supplier, SC.Pairs, MSP.LeadTime, SC.schedule_date');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN SecondProcessOutput AS SPO ON SPO.Building = SC.building_no AND SPO.Lean = SC.lean_no AND SPO.RY = SC.DDBH AND SPO.Part = SC.Part AND SPO.Process = SC.Process');
    SQL.Add('GROUP BY SC.DDBH, SC.Part, SC.Process, SC.Supplier, SC.Pairs, SC.EstLaunchDate, SC.ActLaunchDate, SC.InputPairs');
    SQL.Add('ORDER BY SC.Part');
    Active := true;

    if (RecordCount > 0) then
    begin
      DBGridEh3.Columns[7].Footer.Value := FormatFloat('##0.0%', StrToInt(StringReplace(DBGridEh3.GetFooterValue(0, DBGridEh3.Columns[6]), ',', '', [rfReplaceAll])) * 100 / StrToInt(StringReplace(DBGridEh3.GetFooterValue(0, DBGridEh3.Columns[3]), ',', '', [rfReplaceAll])));
      DBGridEh3.Columns[9].Footer.Value := FormatFloat('##0.0%', StrToInt(StringReplace(DBGridEh3.GetFooterValue(0, DBGridEh3.Columns[8]), ',', '', [rfReplaceAll])) * 100 / StrToInt(StringReplace(DBGridEh3.GetFooterValue(0, DBGridEh3.Columns[3]), ',', '', [rfReplaceAll])));
    end;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    if (LeanType = 'OS') then
    begin
      SQL.Add('DECLARE @TotalPairs INT = (');
      SQL.Add('  SELECT SUM(SMDD.Qty) AS Pairs FROM (');
      SQL.Add('    SELECT Building, Lean, RY,');
      SQL.Add('    ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('    CAST(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1) AS INT) END, 1) AS MinCycle,');
      SQL.Add('    ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('    CAST(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10) AS INT) END, 9999) AS MaxCycle FROM (');
      SQL.Add('      SELECT SC.building_no AS Building, SC.lean_no AS Lean, DDZL.DDBH AS RY,');
      SQL.Add('      CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS TotalCycles FROM schedule_crawler AS SC');
      SQL.Add('      LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('      WHERE SUBSTRING(CONVERT(VARCHAR, SC.schedule_date, 111), 1, 7) = ''' + Month + ''' AND SC.building_no = ''' + Building + ''' AND SC.lean_no = ''' + Lean + ''' AND DDZL.DDBH = ''' + RY + '''');
      SQL.Add('    ) AS SC');
      SQL.Add('  ) AS SC');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A'' AND CASE WHEN SMDD.YSBH = SMDD.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
      SQL.Add(')');

      SQL.Add('SELECT SC.RY, CASE WHEN SC.DDBH = SC.RY THEN ''T1'' ELSE ''T'' + CAST(CAST(RIGHT(SC.DDBH, 3) AS INT) AS VARCHAR) END AS Cycle, SC.Pairs,');
      SQL.Add('CASE WHEN ISNULL(SC.OSPairs, 0) < SC.Pairs THEN CAST(ISNULL(SC.OSPairs, 0) - SC.Pairs AS VARCHAR(10)) ELSE ''OK'' END AS OSPairs,');
      SQL.Add('CASE WHEN ISNULL(SC.RPairs, 0) < SC.Pairs THEN CAST(ISNULL(SC.RPairs, 0) - SC.Pairs AS VARCHAR(10)) ELSE ''OK'' END AS RPairs,');
      SQL.Add('CASE WHEN ISNULL(PP.Assigned, 0) < SC.Pairs THEN CAST(ISNULL(PP.Assigned, 0) - SC.Pairs AS VARCHAR(10)) ELSE ''OK'' END AS Assigned,');
      SQL.Add('CASE WHEN ISNULL(SC.APairs, 0) < SC.Pairs THEN CAST(ISNULL(SC.APairs, 0) - SC.Pairs AS VARCHAR(10)) ELSE ''OK'' END AS APairs,');
      SQL.Add('CASE WHEN ISNULL(WH.StockIn, 0) < @TotalPairs THEN CAST(ISNULL(WH.StockIn, 0) - @TotalPairs AS VARCHAR(10)) ELSE ''OK'' END AS StockIn FROM (');
      SQL.Add('  SELECT SC.RY, SC.DDBH, SC.Pairs, SC.OSPairs, SC.RPairs, ISNULL(SMZL.Pairs, 0) AS APairs FROM (');
      SQL.Add('    SELECT SC.RY, SC.DDBH, SC.Pairs, SC.OSPairs, ISNULL(SUM(KCKRS.Pairs), 0) AS RPairs FROM (');
      SQL.Add('      SELECT SC.RY, SMDD.DDBH, SMDD.Qty AS Pairs, ISNULL(SMDD_CD.Qty, 0) AS OSPairs FROM (');
      SQL.Add('        SELECT Building, Lean, RY,');
      SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('        CAST(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1) AS INT) END, 1) AS MinCycle,');
      SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('        CAST(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10) AS INT) END, 9999) AS MaxCycle FROM (');
      SQL.Add('          SELECT SC.building_no AS Building, SC.lean_no AS Lean, DDZL.DDBH AS RY,');
      SQL.Add('          CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS TotalCycles FROM schedule_crawler AS SC');
      SQL.Add('          LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('          WHERE SUBSTRING(CONVERT(VARCHAR, SC.schedule_date, 111), 1, 7) = ''' + Month + ''' AND SC.building_no = ''' + Building + ''' AND SC.lean_no = ''' + Lean + ''' AND DDZL.DDBH = ''' + RY + '''');
      SQL.Add('        ) AS SC');
      SQL.Add('      ) AS SC');
      SQL.Add('      LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A'' AND CASE WHEN SMDD.YSBH = SMDD.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
      SQL.Add('      LEFT JOIN CycleDispatch AS CD ON CD.ZLBH = SC.RY AND CD.DDBH = SMDD.DDBH AND CD.GXLB = ''C''');
      SQL.Add('      LEFT JOIN SMDD AS SMDD_CD ON SMDD_CD.YSBH = CD.ZLBH AND SMDD_CD.DDBH = CD.DDBH AND SMDD_CD.GXLB = ''A''');
      SQL.Add('    ) AS SC');
      SQL.Add('    LEFT JOIN KCRK_Upper AS KCRK ON KCRK.RY = SC.RY');
      SQL.Add('    LEFT JOIN KCRKS_Upper AS KCKRS ON KCKRS.RKNO = KCRK.RKNO AND KCKRS.DDBH = SC.DDBH');
      SQL.Add('    GROUP BY SC.RY, SC.DDBH, SC.Pairs, SC.OSPairs');
      SQL.Add('  ) AS SC');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT DDBH, SUM(Pairs) AS Pairs FROM (');
      SQL.Add('      SELECT SMDD.DDBH, SUM(SMZL.CTS * SMDDSS.Qty) AS Pairs FROM SMDD');
      SQL.Add('      LEFT JOIN SMDDSS ON SMDDSS.DDBH = SMDD.DDBH AND SMDDSS.GXLB = SMDD.GXLB');
      SQL.Add('      LEFT JOIN SMZL ON SMZL.CODEBAR = SMDDSS.CODEBAR');
      SQL.Add('      WHERE SMDD.YSBH = ''' + RY + ''' AND SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = ''A'' AND SMZL.ScanDate >= CONVERT(VARCHAR, GETDATE(), 111)');
      SQL.Add('      GROUP BY SMDD.DDBH');
      SQL.Add('      UNION ALL');
      SQL.Add('      SELECT SMDD.DDBH, SUM(SMZLOld.CTS * SMDDSS.Qty) AS Pairs FROM SMDD');
      SQL.Add('      LEFT JOIN SMDDSS ON SMDDSS.DDBH = SMDD.DDBH AND SMDDSS.GXLB = SMDD.GXLB');
      SQL.Add('      LEFT JOIN SMZLOld ON SMZLOld.CODEBAR = SMDDSS.CODEBAR');
      SQL.Add('      WHERE SMDD.YSBH = ''' + RY + ''' AND SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = ''A''');
      SQL.Add('      GROUP BY SMDD.DDBH');
      SQL.Add('    ) AS SMZL');
      SQL.Add('    GROUP BY DDBH');
      SQL.Add('  ) AS SMZL ON SMZL.DDBH = SC.DDBH');
      SQL.Add(') AS SC');
      SQL.Add('LEFT JOIN (');

      GenerateAssignedSQL(Query1, RY);
      
      SQL.Add(') AS PP ON PP.RY = SC.RY AND PP.Cycle = CASE WHEN SC.DDBH = SC.RY THEN 1 ELSE CAST(RIGHT(SC.DDBH, 3) AS INT) END');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SUM(Qty) AS StockIn FROM YWCP');
      SQL.Add('  WHERE DDBH = ''' + RY + ''' AND INDATE IS NOT NULL');
      SQL.Add(') AS WH ON 1 = 1');
      SQL.Add('ORDER BY SC.RY, SC.DDBH');
    end
    else begin
      DBGridEh1.Columns[2].Visible := false;

      SQL.Add('DECLARE @TotalPairs INT = (');
      SQL.Add('  SELECT SUM(SMDD.Qty) AS Pairs FROM (');
      SQL.Add('    SELECT Building, Lean, RY,');
      SQL.Add('    ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('    CAST(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1) AS INT) END, 1) AS MinCycle,');
      SQL.Add('    ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('    CAST(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10) AS INT) END, 9999) AS MaxCycle FROM (');
      SQL.Add('      SELECT SC.building_no AS Building, SC.lean_no AS Lean, DDZL.DDBH AS RY,');
      SQL.Add('      CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS TotalCycles FROM schedule_crawler AS SC');
      SQL.Add('      LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('      WHERE SUBSTRING(CONVERT(VARCHAR, SC.schedule_date, 111), 1, 7) = ''' + Month + ''' AND SC.building_no = ''' + Building + ''' AND SC.lean_no = ''' + Lean + ''' AND DDZL.DDBH = ''' + RY + '''');
      SQL.Add('    ) AS SC');
      SQL.Add('  ) AS SC');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A'' AND CASE WHEN SMDD.YSBH = SMDD.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
      SQL.Add(')');

      SQL.Add('SELECT SC.RY, CASE WHEN SC.DDBH = SC.RY THEN ''T1'' ELSE ''T'' + CAST(CAST(RIGHT(SC.DDBH, 3) AS INT) AS VARCHAR) END AS Cycle, SC.Pairs,');
      SQL.Add('CASE WHEN ISNULL(SC.OSPairs, 0) < SC.Pairs THEN REPLACE(CONVERT(VARCHAR(12), CONVERT(MONEY, ISNULL(SC.OSPairs, 0) - SC.Pairs), 1), ''.00'', '''') ELSE ''OK'' END AS OSPairs,');
      SQL.Add('CASE WHEN ISNULL(SC.RPairs, 0) < SC.Pairs THEN REPLACE(CONVERT(VARCHAR(12), CONVERT(MONEY, ISNULL(SC.RPairs, 0) - SC.Pairs), 1), ''.00'', '''') ELSE ''OK'' END AS RPairs,');
      SQL.Add('CASE WHEN ISNULL(PP.Assigned, 0) < SC.Pairs THEN REPLACE(CONVERT(VARCHAR(12), CONVERT(MONEY, ISNULL(PP.Assigned, 0) - SC.Pairs), 1), ''.00'', '''') ELSE ''OK'' END AS Assigned,');
      SQL.Add('CASE WHEN ISNULL(SC.APairs, 0) < SC.Pairs THEN REPLACE(CONVERT(VARCHAR(12), CONVERT(MONEY, ISNULL(SC.APairs, 0) - SC.Pairs), 1), ''.00'', '''') ELSE ''OK'' END AS APairs,');
      SQL.Add('CASE WHEN ISNULL(WH.StockIn, 0) < @TotalPairs THEN REPLACE(CONVERT(VARCHAR(12), CONVERT(MONEY, ISNULL(WH.StockIn, 0) - @TotalPairs), 1), ''.00'', '''') ELSE ''OK'' END AS StockIn FROM (');
      SQL.Add('  SELECT SC.RY, SMDD.DDBH, SMDD.Qty AS Pairs, NULL AS OSPairs, ISNULL(SMZL.Pairs_S, 0) AS RPairs, ISNULL(SMZL.Pairs_A, 0) AS APairs FROM (');
      SQL.Add('    SELECT Building, Lean, RY,');
      SQL.Add('    ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('    CAST(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1) AS INT) END, 1) AS MinCycle,');
      SQL.Add('    ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
      SQL.Add('    CAST(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10) AS INT) END, 9999) AS MaxCycle FROM (');
      SQL.Add('      SELECT SC.building_no AS Building, SC.lean_no AS Lean, DDZL.DDBH AS RY,');
      SQL.Add('      CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS TotalCycles FROM schedule_crawler AS SC');
      SQL.Add('      LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('      WHERE SUBSTRING(CONVERT(VARCHAR, SC.schedule_date, 111), 1, 7) = ''' + Month + ''' AND SC.building_no = ''' + Building + ''' AND SC.lean_no = ''' + Lean + ''' AND DDZL.DDBH = ''' + RY + '''');
      SQL.Add('    ) AS SC');
      SQL.Add('  ) AS SC');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A'' AND CASE WHEN SMDD.YSBH = SMDD.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT DDBH, SUM(Pairs_S) AS Pairs_S, SUM(Pairs_A) AS Pairs_A FROM (');
      SQL.Add('      SELECT DDBH, MAX(Pairs_S) AS Pairs_S, MAX(Pairs_A) AS Pairs_A FROM (');
      SQL.Add('        SELECT SMDD.DDBH, SUM(CASE WHEN SMDD.GXLB = ''S'' THEN SMZL.CTS * SMDDSS.Qty END) AS Pairs_S,');
      SQL.Add('        SUM(CASE WHEN SMDD.GXLB = ''A'' THEN SMZL.CTS * SMDDSS.Qty END) AS Pairs_A FROM SMDD');
      SQL.Add('        LEFT JOIN SMDDSS ON SMDDSS.DDBH = SMDD.DDBH AND SMDDSS.GXLB = SMDD.GXLB');
      SQL.Add('        LEFT JOIN SMZL ON SMZL.CODEBAR = SMDDSS.CODEBAR');
      SQL.Add('        WHERE SMDD.YSBH = ''' + RY + ''' AND SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB IN (''S'', ''A'') AND SMZL.ScanDate >= CONVERT(VARCHAR, GETDATE(), 111)');
      SQL.Add('        GROUP BY SMDD.DDBH');
      SQL.Add('      ) AS SMZL');
      SQL.Add('      GROUP BY DDBH');
      SQL.Add('      UNION ALL');
      SQL.Add('      SELECT DDBH, MAX(Pairs_S) AS Pairs_S, MAX(Pairs_A) AS Pairs_A FROM (');
      SQL.Add('        SELECT SMDD.DDBH, SUM(CASE WHEN SMDD.GXLB = ''S'' THEN SMZLOld.CTS * SMDDSS.Qty END) AS Pairs_S,');
      SQL.Add('        SUM(CASE WHEN SMDD.GXLB = ''A'' THEN SMZLOld.CTS * SMDDSS.Qty END) AS Pairs_A FROM SMDD');
      SQL.Add('        LEFT JOIN SMDDSS ON SMDDSS.DDBH = SMDD.DDBH AND SMDDSS.GXLB = SMDD.GXLB');
      SQL.Add('        LEFT JOIN SMZLOld ON SMZLOld.CODEBAR = SMDDSS.CODEBAR');
      SQL.Add('        WHERE SMDD.YSBH = ''' + RY + ''' AND SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB IN (''S'', ''A'')');
      SQL.Add('        GROUP BY SMDD.DDBH');
      SQL.Add('      ) AS SMZLOLD');
      SQL.Add('      GROUP BY DDBH');
      SQL.Add('    ) AS SMZL');
      SQL.Add('    GROUP BY DDBH');
      SQL.Add('  ) AS SMZL ON SMZL.DDBH = SMDD.DDBH');
      SQL.Add(') AS SC');
      SQL.Add('LEFT JOIN (');

      GenerateAssignedSQL(Query1, RY);

      SQL.Add(') AS PP ON PP.RY = SC.RY AND PP.Cycle = CASE WHEN SC.DDBH = SC.RY THEN 1 ELSE CAST(RIGHT(SC.DDBH, 3) AS INT) END');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SUM(Qty) AS StockIn FROM YWCP');
      SQL.Add('  WHERE DDBH = ''' + RY + ''' AND INDATE IS NOT NULL');
      SQL.Add(') AS WH ON 1 = 1');
      SQL.Add('ORDER BY SC.RY, SC.DDBH');
    end;
    
    if (CycleFlag) then
    begin
      Active := true;

      DisableControls;
      Outsourced := 0;
      Stitching := 0;
      Assigned := 0;
      Assembly := 0;
      while not Eof do
      begin
        if (FieldByName('OSPairs').AsString <> 'OK') then
          Inc(Outsourced, StrToInt(StringReplace(FieldByName('OSPairs').AsString, ',', '', [rfReplaceAll])));
        if (FieldByName('RPairs').AsString <> 'OK') then
          Inc(Stitching, StrToInt(StringReplace(FieldByName('RPairs').AsString, ',', '', [rfReplaceAll])));
        if (FieldByName('Assigned').AsString <> 'OK') then
          Inc(Assigned, StrToInt(StringReplace(FieldByName('Assigned').AsString, ',', '', [rfReplaceAll])));
        if (FieldByName('APairs').AsString <> 'OK') then
          Inc(Assembly, StrToInt(StringReplace(FieldByName('APairs').AsString, ',', '', [rfReplaceAll])));
        Next;
      end;
      if (Outsourced < 0) then
        DBGridEh1.Columns[2].Footer.Value := FormatFloat('###,###,##0', Outsourced)
      else
        DBGridEh1.Columns[2].Footer.Value := 'OK';
      if (Stitching < 0) then
        DBGridEh1.Columns[3].Footer.Value := FormatFloat('###,###,##0', Stitching)
      else
        DBGridEh1.Columns[3].Footer.Value := 'OK';
      if (Assigned < 0) then
        DBGridEh1.Columns[4].Footer.Value := FormatFloat('###,###,##0', Assigned)
      else
        DBGridEh1.Columns[4].Footer.Value := 'OK';
      if (Assembly < 0) then
        DBGridEh1.Columns[5].Footer.Value := FormatFloat('###,###,##0', Assembly)
      else
        DBGridEh1.Columns[5].Footer.Value := 'OK';
      if (FieldByName('StockIn').AsString <> 'OK') then
        DBGridEh1.Columns[6].Footer.Value := FormatFloat('###,###,##0', StrToInt(StringReplace(FieldByName('StockIn').AsString, ',', '', [rfReplaceAll])))
      else
        DBGridEh1.Columns[6].Footer.Value := 'OK';
      First;
      EnableControls;
    end;
  end;
end;

procedure TRYTracking.GenerateAssignedSQL(TargetQyery: TQuery; RY: string);
var
  QCycle, QPlan: TQuery;
  Pairs, i: integer;
  CycleList: array of integer;
begin
  QCycle := TQuery.Create(Self);
  with QCycle do
  begin
    Active := false;
    DatabaseName := 'DB';
    SQL.Clear;
    SQL.Add('SELECT CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END AS Cycle, SMDD.Qty AS CyclePairs, ISNULL(KCRK.Pairs, 0) AS KCPairs FROM SMDD');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT KCRK.RY, KCRKS.DDBH, SUM(KCRKS.Pairs) AS Pairs FROM KCRK_Upper AS KCRK');
    SQL.Add('  LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('  WHERE KCRK.RY = ''' + RY + '''');
    SQL.Add('  GROUP BY KCRK.RY, KCRKS.DDBH');
    SQL.Add(') AS KCRK ON KCRK.RY = SMDD.YSBH AND KCRK.DDBH = SMDD.DDBH');
    SQL.Add('WHERE SMDD.YSBH = ''' + RY + ''' AND SMDD.GXLB = ''A''');
    SQL.Add('ORDER BY SMDD.DDBH');
    Active := true;

    if (RecordCount > 0) then
    begin
      SetLength(CycleList, RecordCount);
    end
    else begin                       
      CycleFlag := false;
      ShowMessage('There is no production cycle information for the RY [' + RY + ']');
      Exit;
    end;
  end;

  QPlan := TQuery.Create(Self);
  with QPlan do
  begin
    Active := false;
    DatabaseName := 'DB';
    SQL.Clear;
    SQL.Add('SELECT RY, CycleStart, CycleEnd, SUM(Pairs) AS Pairs FROM ProductionPlan');
    SQL.Add('WHERE RY = ''' + RY + ''' AND PlanType LIKE ''1-Day%'' AND PlanDate <= GETDATE()');
    SQL.Add('GROUP BY RY, CycleStart, CycleEnd');
    SQL.Add('ORDER BY CycleStart');
    Active := true;
  end;

  while not QPlan.Eof do
  begin
    Pairs := QPlan.FieldByName('Pairs').AsInteger;
    for i := QPlan.FieldByName('CycleStart').AsInteger to QPlan.FieldByName('CycleEnd').AsInteger do
    begin
      if (QCycle.Locate('Cycle', i, [])) then
      begin
        if (Pairs > QCycle.FieldByName('KCPairs').AsInteger) then
        begin
          CycleList[i-1] := CycleList[i-1] + QCycle.FieldByName('KCPairs').AsInteger;
          Pairs := Pairs - QCycle.FieldByName('KCPairs').AsInteger;
        end
        else begin
          CycleList[i-1] := CycleList[i-1] + Pairs;
          Pairs := 0;
        end;
      end;
    end;

    if (Pairs > 0) then
    begin
      for i := QPlan.FieldByName('CycleStart').AsInteger to QPlan.FieldByName('CycleEnd').AsInteger do
      begin
        if (QCycle.Locate('Cycle', i, [])) then
        begin
          if (Pairs > QCycle.FieldByName('CyclePairs').AsInteger - QCycle.FieldByName('KCPairs').AsInteger) then
          begin
            CycleList[i-1] := CycleList[i-1] + (QCycle.FieldByName('CyclePairs').AsInteger - QCycle.FieldByName('KCPairs').AsInteger);
            Pairs := Pairs - (QCycle.FieldByName('CyclePairs').AsInteger - QCycle.FieldByName('KCPairs').AsInteger);
          end
          else begin
            CycleList[i-1] := CycleList[i-1] + Pairs;
            Pairs := 0;
          end;
        end;
      end;
    end;

    QPlan.Next;
  end;

  TargetQyery.SQL.Add('  SELECT ''' + RY + ''' AS RY, Cycle, Assigned FROM (');
  for i := 0 to Length(CycleList) - 1 do
  begin
    if (i < Length(CycleList) - 1) then
      TargetQyery.SQL.Add('    SELECT ' + IntToStr(i + 1) + ' AS Cycle, ' + IntToStr(CycleList[i]) + ' AS Assigned UNION ALL')
    else
      TargetQyery.SQL.Add('    SELECT ' + IntToStr(i + 1) + ' AS Cycle, ' + IntToStr(CycleList[i]) + ' AS Assigned');
  end;
  TargetQyery.SQL.Add('  ) AS PP');

  QCycle.Free;
  QPlan.Free;
end;

procedure TRYTracking.Query2CalcFields(DataSet: TDataSet);
begin
  if (Query2.FieldByName('RKQty').AsFloat - Query2.FieldByName('ZLQty').AsFloat <= 0) then
    Query2.FieldByName('LackQty').Value := Query2.FieldByName('RKQty').AsFloat - Query2.FieldByName('ZLQty').AsFloat
  else
    Query2.FieldByName('LackQty').Value := 0;
end;

procedure TRYTracking.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query2.FieldByName('LackQty').AsFloat < 0) then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color := clGreen;
end;

procedure TRYTracking.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('RPairs').AsString = 'OK') then
    DBGridEh1.Canvas.Font.Color := clGreen
  else
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TRYTracking.Button1Click(Sender: TObject);
begin
  ModelCuttingBom := TModelCuttingBom.Create(Self);
  ModelCuttingBom.LoadData(sRY);
  ModelCuttingBom.ShowModal;
end;

procedure TRYTracking.DBGridEh3TitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
var
  i: integer;
begin
  Inc(LanguageIndex);
  if (LanguageIndex = 4) then
    LanguageIndex := 1;

  DBGridEh3.Columns[0].PickList.Clear;
  DBGridEh3.Columns[1].PickList.Clear;

  if (LanguageIndex = 1) then
  begin
    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartVN[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessVN[i]);
    end;
  end
  else if (LanguageIndex = 2) then
  begin
    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartCH[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessCH[i]);
    end;
  end
  else if (LanguageIndex = 3) then
  begin
    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartEN[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessEN[i]);
    end;
  end;

  DBGridEh3.Repaint;
end;

procedure TRYTracking.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query3.FieldByName('OutputPairs').AsInteger < Query3.FieldByName('Pairs').AsInteger) then
    DBGridEh3.Canvas.Font.Color := clRed
  else
    DBGridEh3.Canvas.Font.Color := clGreen;  
end;

end.
