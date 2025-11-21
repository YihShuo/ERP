unit MaterialOnTimeArrivalRate1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,
  DateUtils;

type
  TMaterialOnTimeArrivalRate = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1Pairs: TIntegerField;
    Query1DAOMH: TStringField;
    Query1ARTICLE: TStringField;
    Query1BUY: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1Country: TStringField;
    Query1schedule_date: TDateTimeField;
    Query1ArrivalDate: TDateTimeField;
    Query1DayDiff: TIntegerField;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    Query2: TQuery;
    DS2: TDataSource;
    Query2Type: TStringField;
    Query2CQDH: TStringField;
    Query2Supplier: TStringField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2Usage: TFloatField;
    Query2Unit: TStringField;
    Query2ArrivalDate: TDateTimeField;
    Query2DayDiff: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialOnTimeArrivalRate: TMaterialOnTimeArrivalRate;

implementation

uses
  main1;

{$R *.dfm}

procedure TMaterialOnTimeArrivalRate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMaterialOnTimeArrivalRate.FormDestroy(Sender: TObject);
begin
  MaterialOnTimeArrivalRate := Nil;
end;

procedure TMaterialOnTimeArrivalRate.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date;
end;
       
procedure TMaterialOnTimeArrivalRate.FormShow(Sender: TObject);
begin
  DTP1.SetFocus;
  SendMessage(DTP1.Handle, WM_KEYDOWN, VK_RIGHT, 0);
  Panel1.SetFocus;
end;

procedure TMaterialOnTimeArrivalRate.Button1Click(Sender: TObject);
var
  i: integer;
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#TempSC'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #TempSC END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#MatAS'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #MatAS END;');
    ExecSQL;

    SQL.Add('SELECT SC.DDBH, SC.Pairs, SC.schedule_date,');
    SQL.Add('ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle INTO #TempSC FROM (');
    SQL.Add('  SELECT DDBH, Pairs, MIN(schedule_date) AS schedule_date, Cycles FROM (');
    SQL.Add('    SELECT DDZL.DDBH, DDZL.Pairs, SC.schedule_date,');
    SQL.Add('    CASE WHEN RIGHT(SC.ry, 3) LIKE ''%-%'' THEN SUBSTRING(RIGHT(SC.ry, 3), CHARINDEX(''-'', RIGHT(SC.ry, 3)) + 1, LEN(RIGHT(SC.ry, 3)) - CHARINDEX(''-'', RIGHT(SC.ry, 3))) END AS SubSeq,');
    SQL.Add('    CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP1.Date)) + '''');
    SQL.Add('    AND SC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('  ) AS SC');
    SQL.Add('  GROUP BY DDBH, Pairs, Cycles');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('GROUP BY SC.DDBH, SC.Pairs, SC.schedule_date, SC.Cycles');

    SQL.Add('SELECT SC.DDBH, SC.Pairs, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, DDZL.ShipDate, LBZLS.YWSM AS Country,');
    SQL.Add('SC.schedule_date, SM.Type, SM.CQDH, SM.CSBH, SM.ZSYWJC, SM.CLBH, SM.YWPM, SM.Usage, SM.Unit, SM.ArrivalDate INTO #MatAS FROM #TempSC AS SC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SC.DDBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZLZLS2.ZLBH, CLZL.CQDH, ZLZLS2.CSBH, ZSZL.ZSYWJC, ZLZLS2.CLBH, CLZL.YWPM, SUM(ZLZLS2.CLSL) AS Usage, CLZL.DWBH AS Unit, MAX(SM.ArrivalDate) AS ArrivalDate,');
    SQL.Add('  CASE WHEN LEFT(ZLZLS2.CLBH, 1) IN (''A'', ''C'', ''F'', ''K'', ''B'') OR (LEFT(ZLZLS2.CLBH, 3) = ''P21'' AND CLZL.DWBH <> ''PRS'') THEN ''Cutting'' ELSE');
    SQL.Add('  CASE WHEN (LEFT(ZLZLS2.CLBH, 1) IN (''E'', ''G'', ''L'', ''M'', ''N'') OR LEFT(ZLZLS2.CLBH, 3) IN (''D01'', ''D02'', ''D11'')) AND CASE WHEN LEFT(ZLZLS2.CLBH, 3) = ''G01'' THEN CLZL.DWBH ELSE ''X'' END <> ''PRS'' THEN ''Stitching'' ELSE');
    SQL.Add('  CASE WHEN (LEFT(ZLZLS2.CLBH, 1) IN (''D'', ''H'', ''I'', ''O'') AND LEFT(ZLZLS2.CLBH, 3) NOT IN (''D01'', ''D02'', ''D11'')) OR (LEFT(ZLZLS2.CLBH, 3) = ''G01'' AND CLZL.DWBH = ''PRS'') THEN ''Assembly'' ELSE');
    SQL.Add('  CASE WHEN LEFT(ZLZLS2.CLBH, 1) IN (''J'', ''P'') AND LEFT(ZLZLS2.CLBH, 3) NOT IN (''P21'') THEN ''Bottom'' ELSE ''Others'' END END END END AS Type FROM ZLZLS2');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT SM.DDBH, SM.CLBH, SM.ArrivalDate FROM (');
    SQL.Add('      SELECT DDBH, CLBH, ArrivalDate FROM (');
    SQL.Add('        SELECT BUY, DDBH, CSBH, CLBH, ArrivalDate, ROW_NUMBER() OVER(PARTITION BY BUY, DDBH, CSBH, CLBH ORDER BY UserDate DESC) AS Seq FROM schedule_materials');
    SQL.Add('        WHERE DDBH IN (SELECT DDBH FROM #TempSC)');
    SQL.Add('      ) AS SM');
    SQL.Add('      WHERE Seq = 1');
    SQL.Add('      UNION ALL');
    SQL.Add('      SELECT ZLBH, CLBH, UserDate FROM CGKCUSE WITH (NOLOCK)');
    SQL.Add('      WHERE GSBH = ''' + main.Edit2.Text + ''' AND ZLBH IN (SELECT DDBH FROM #TempSC)');
    SQL.Add('    ) AS SM');
    SQL.Add('  ) AS SM ON SM.DDBH = ZLZLS2.ZLBH AND SM.CLBH = ZLZLS2.CLBH');
    SQL.Add('  LEFT JOIN KCSAFE ON KCSAFE.CLBH = ZLZLS2.CLBH');
    SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('  LEFT JOIN ZSZL ON ZSZL.ZSDH = ZLZLS2.CSBH');
    SQL.Add('  WHERE ZLZLS2.CSBH <> '''' AND ZLZLS2.CLBH NOT LIKE ''W%'' AND ZLZLS2.ZMLB = ''N'' AND ZLZLS2.CLSL > 0 AND KCSAFE.CLBH IS NULL AND ZLZLS2.ZLBH IN (SELECT DDBH FROM #TempSC)');
    SQL.Add('  GROUP BY ZLZLS2.ZLBH, CLZL.CQDH, ZLZLS2.CSBH, ZSZL.ZSYWJC, ZLZLS2.CLBH, CLZL.YWPM, CLZL.DWBH');
    SQL.Add(') AS SM ON SM.ZLBH = SC.DDBH');

    SQL.Add('SELECT DDBH, Pairs, DAOMH, ARTICLE, BUY, ShipDate, Country, schedule_date, MAX(ArrivalDate) AS ArrivalDate, DATEDIFF(DAY, MAX(ArrivalDate), schedule_date) AS DayDiff FROM #MatAS');
    SQL.Add('WHERE Type IN (''Cutting'', ''Stitching'')');
    SQL.Add('GROUP BY DDBH, Pairs, DAOMH, ARTICLE, BUY, ShipDate, Country, schedule_date');
    SQL.Add('ORDER BY DATEDIFF(DAY, MAX(ArrivalDate), schedule_date)');
    Active := true;

    i := 0;
    DisableControls;
    while not Eof do
    begin
      if (FieldByName('DayDiff').IsNull = false) AND (FieldByName('DayDiff').AsInteger < 12) then
        Inc(i);
      Next;
    end;

    DBGridEh1.Columns[8].Footer.Value := FormatFloat('##0.00%', i * 100 / RecordCount);
    First;
    EnableControls;
  end;
  Query2.Active := true;
end;

procedure TMaterialOnTimeArrivalRate.DBGridEh1GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('DayDiff').IsNull = false) AND (Query1.FieldByName('DayDiff').AsInteger < 12) then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TMaterialOnTimeArrivalRate.DBGridEh2DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Query2.FieldByName('Type').AsString = 'Cutting') OR (Query2.FieldByName('Type').AsString = 'Stitching') then
  begin
    if (Query2.FieldByName('DayDiff').IsNull = false) then
    begin
      if (Query2.FieldByName('DayDiff').AsInteger < 12) then
      begin
        DBGridEh2.Canvas.Brush.Color := clRed;
        DBGridEh2.Canvas.Font.Color := clWhite;
      end
      else begin
        DBGridEh2.Canvas.Brush.Color := clLime;
      end;
    end
    else begin
      DBGridEh2.Canvas.Brush.Color := clYellow;
    end;
  end
  else if (Query2.FieldByName('Type').AsString <> 'Cutting') AND (Query2.FieldByName('Type').AsString <> 'Stitching') then
  begin
    DBGridEh2.Canvas.Font.Color := clSilver;
  end;

  if (gdFocused in State) OR (gdSelected in State) then
  begin
    DBGridEh2.Canvas.Font.Color := clWhite;
    DBGridEh2.Canvas.Brush.Color := clHighlight;
  end;

  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
