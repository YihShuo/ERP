unit ExportDialog1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, DB, DBTables, ComObj, ComCtrls,
  ExcelXP, DateUtils;

type
  TExportDialog = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    QExport: TQuery;
    Panel2: TPanel;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    Panel3: TPanel;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Panel4: TPanel;
    CLB1: TCheckListBox;
    CLB2: TCheckListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
  private
    { Private declarations }
    Mode, PType: string;
    procedure ExportGCDPlan;
    procedure Export3DayPlan;
    procedure Export1DayPlan;
  public
    { Public declarations }
    procedure SetExportMode(SetMode, PlanType: string; ExportDate: TDate; InitialBuilding: string);
  end;

var
  ExportDialog: TExportDialog;
  
Const
  VungLiemMay: array[0..21] of string = (
  'A02-LEAN03', 'A02-LEAN04',
  'A03-LEAN01', 'A03-LEAN02', 'A03-LEAN03', 'A03-LEAN04',
  'A07-LEAN03', 'A07-LEAN04',
  'A08-LEAN01', 'A08-LEAN02',
  'A11-LEAN01', 'A11-LEAN02', 'A11-LEAN03', 'A11-LEAN04',
  'A12-LEAN03', 'A12-LEAN04',
  'A15-LEAN01', 'A15-LEAN03', 'A15-LEAN04', 'A15-LEAN05',
  'A16-LEAN02', 'A16-LEAN03'
);

implementation

uses ScheduleUpload1;

{$R *.dfm}

procedure TExportDialog.SetExportMode(SetMode, PlanType: string; ExportDate: TDate; InitialBuilding: string);
var
  i, MaxCount: integer;
begin
  Mode := SetMode;
  PType := PlanType;
  DTP1.Date := ExportDate;
  DTP2.Date := ExportDate+2;

  with QExport do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Building FROM ProductionPlan');
    SQL.Add('ORDER BY Building');
    Active := true;

    MaxCount := RecordCount;
    CLB1.Clear;
    i := 0;
    while not Eof do
    begin
      CLB1.Items.Add(FieldByName('Building').AsString);
      if (FieldByName('Building').AsString = InitialBuilding) then
        CLB1.Checked[i] := true;
      Inc(i);
      Next;
    end;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Lean FROM ProductionPlan');
    SQL.Add('ORDER BY Lean');
    Active := true;

    if (RecordCount > MaxCount) then
      MaxCount := RecordCount;
    CLB2.Clear;
    i := 0;
    while not Eof do
    begin
      CLB2.Items.Add(FieldByName('Lean').AsString);
      CLB2.Checked[i] := true;
      Inc(i);
      Next;
    end;
  end;

  if (Mode = 'GCD') then
  begin
    Panel3.Visible := true;
    Self.ClientHeight := Panel1.Height + Panel2.Height + Panel3.Height + MaxCount*17 + 50;
  end
  else if (Mode = '3DayPlan') then
  begin
    Panel3.Visible := true;
    Self.ClientHeight := Panel1.Height + Panel2.Height + Panel3.Height + MaxCount*17 + 50;
  end
  else if (Mode = '1DayPlan') then
  begin
    Panel3.Visible := false;
    Self.ClientHeight := Panel1.Height + Panel2.Height + MaxCount*17 + 50;
  end;
end;

procedure TExportDialog.Button1Click(Sender: TObject);
begin
  if (Mode = 'GCD') then
    ExportGCDPlan
  else if (Mode = '3DayPlan') then
    Export3DayPlan
  else if (Mode = '1DayPlan') then
    Export1DayPlan;
end;

procedure TExportDialog.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TExportDialog.ExportGCDPlan;
var
  eclApp, WorkBook, WorkSheet: OleVariant;
  Col, Row, i, j, MaxLength, Counter: integer;
  Total, DateSum: array[0..2] of integer;
  ExportDate: array[0..2] of TDate;
  SheetIndex, Row_Max, Row_RYStart: integer;
  Buildings, Building, Leans, Lean, Index: string;
  TempStr: string;
  Remark, Country, MaxCycle: TStringList;
begin
  try
    Buildings := '';
    for i := 0 to CLB1.Items.Count-1 do
    begin
      if (CLB1.Checked[i]) then
      begin
        if (Buildings = '') then
          Buildings := Buildings + '''' + CLB1.Items[i] + ''''
        else
          Buildings := Buildings + ',''' + CLB1.Items[i] + ''''
      end;
    end;

    if (Buildings = '') then
    begin
      ShowMessage('Please select a building');
      Exit;
    end;

    Leans := '';
    for i := 0 to CLB2.Items.Count-1 do
    begin
      if (CLB2.Checked[i]) then
      begin
        if (Leans = '') then
          Leans := Leans + '''' + CLB2.Items[i] + ''''
        else
          Leans := Leans + ',''' + CLB2.Items[i] + ''''
      end;
    end;

    if (Leans = '') then
    begin
      ShowMessage('Please select a lean');
      Exit;
    end;

    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT DISTINCT PlanDate FROM ProductionPlan');
      SQL.Add('WHERE PlanType = ''GCD'' AND PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('AND Building IN (' + Buildings + ')');
      SQL.Add('AND Lean IN (' + Leans + ')');
      Active := true;

      if (RecordCount > 3) then
      begin
        ShowMessage('The selected date range includes more than 3 valid dates');
        Exit;
      end
      else begin
        i := -1;
        First;
        while not Eof do
        begin   
          Inc(i);
          ExportDate[i] := FieldByName('PlanDate').AsDateTime;
          Next;
        end;

        for j := i+1 to 2 do
        begin
          ExportDate[j] := IncDay(ExportDate[j-1], 1);
        end;
      end;
    end;

    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('IF OBJECT_ID(''tempdb..#PP'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #PP END;');

      SQL.Add('SELECT * INTO #PP FROM (');
      SQL.Add('  SELECT PP.Building, PP.Lean, 1 AS PlanIndex, PP.PlanDate, PP.RY, DDZL.ShipDate,');
      SQL.Add('  PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO, DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH,');
      SQL.Add('  PP.Pairs, PP.CycleStart, PP.CycleEnd, PP.Remark, SMDD.MaxCycle, DDZL.DDGB FROM ProductionPlan AS PP');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT YSBH, MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
      SQL.Add('    WHERE GXLB = ''A''');
      SQL.Add('    GROUP BY YSBH');
      SQL.Add('  ) AS SMDD ON SMDD.YSBH = PP.RY');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('  WHERE PP.PlanType = ''GCD'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', ExportDate[0]) + '''');
      SQL.Add('  AND PP.Building IN (' + Buildings + ')');
      SQL.Add('  AND PP.Lean IN (' + Leans + ')');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT PP.Building, PP.Lean, 2 AS PlanIndex, PP.PlanDate, PP.RY, DDZL.ShipDate,');
      SQL.Add('  PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO, DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH,');
      SQL.Add('  PP.Pairs, PP.CycleStart, PP.CycleEnd, PP.Remark, SMDD.MaxCycle, DDZL.DDGB FROM ProductionPlan AS PP');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT YSBH, MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
      SQL.Add('    WHERE GXLB = ''A''');
      SQL.Add('    GROUP BY YSBH');
      SQL.Add('  ) AS SMDD ON SMDD.YSBH = PP.RY');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('  WHERE PP.PlanType = ''GCD'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', ExportDate[1]) + '''');
      SQL.Add('  AND PP.Building IN (' + Buildings + ')');
      SQL.Add('  AND PP.Lean IN (' + Leans + ')');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT PP.Building, PP.Lean, 3 AS PlanIndex, PP.PlanDate, PP.RY, DDZL.ShipDate,');
      SQL.Add('  PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO, DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH,');
      SQL.Add('  PP.Pairs, PP.CycleStart, PP.CycleEnd, PP.Remark, SMDD.MaxCycle, DDZL.DDGB FROM ProductionPlan AS PP');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT YSBH, MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
      SQL.Add('    WHERE GXLB = ''A''');
      SQL.Add('    GROUP BY YSBH');
      SQL.Add('  ) AS SMDD ON SMDD.YSBH = PP.RY');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('  WHERE PP.PlanType = ''GCD'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', ExportDate[2]) + '''');
      SQL.Add('  AND PP.Building IN (' + Buildings + ')');  
      SQL.Add('  AND PP.Lean IN (' + Leans + ')');
      SQL.Add(') AS PP');

      SQL.Add('SELECT Building, Lean,');
      SQL.Add('CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', ExportDate[0]) + ''') AS PlanDate1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN RY END) AS RY1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN ShipDate END) AS ShipDate1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN NT END) AS NT1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN BuyNo END) AS BuyNo1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN SKU END) AS SKU1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Pairs END) AS Pairs1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN DAOMH END) AS DAOMH1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Cycle END) AS Cycle1,');
      SQL.Add('CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', ExportDate[1]) + ''') AS PlanDate2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN RY END) AS RY2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN ShipDate END) AS ShipDate2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN NT END) AS NT2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN BuyNo END) AS BuyNo2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN SKU END) AS SKU2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Pairs END) AS Pairs2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN DAOMH END) AS DAOMH2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Cycle END) AS Cycle2,');
      SQL.Add('CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', ExportDate[2]) + ''') AS PlanDate3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN RY END) AS RY3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN ShipDate END) AS ShipDate3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN NT END) AS NT3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN BuyNo END) AS BuyNo3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN SKU END) AS SKU3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Pairs END) AS Pairs3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN DAOMH END) AS DAOMH3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Cycle END) AS Cycle3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Remark END) AS Remark1,');  
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Remark END) AS Remark2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Remark END) AS Remark3,');  
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN MaxCycle END) AS MaxCycle1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN MaxCycle END) AS MaxCycle2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN MaxCycle END) AS MaxCycle3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Country END) AS Country1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Country END) AS Country2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Country END) AS Country3 FROM (');
      SQL.Add('  SELECT DISTINCT PP.Building, PP.Lean, PP.PlanIndex, PP.PlanDate, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + RY FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS RY, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + CAST(MONTH(ShipDate) AS VARCHAR(2)) + ''/'' + CAST(DAY(ShipDate) AS VARCHAR(2)) FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS ShipDate, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + NT FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS NT, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + BUYNO FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS BuyNo, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + ARTICLE FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS SKU, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + DAOMH FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS DAOMH, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + CAST(Pairs AS VARCHAR(10)) FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS Pairs, CAST(STUFF((');
      SQL.Add('    SELECT CASE WHEN CycleStart <> CycleEnd THEN '';T'' + CAST(CycleStart AS VARCHAR(3)) + ''-T'' + CAST(CycleEnd AS VARCHAR(3)) ELSE '';T'' + CAST(CycleStart AS VARCHAR(3)) END FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS Cycle, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + Remark FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(1000)) AS Remark, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + CAST(MaxCycle AS VARCHAR(10)) FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS MaxCycle, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + DDGB FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS Country FROM #PP AS PP');
      SQL.Add(') AS PP');
      SQL.Add('GROUP BY Building, Lean');
      SQL.Add('ORDER BY Building, Lean');
      Active := true;

      if (RecordCount = 0) then
      begin
        ShowMessage('No relative data');
        Exit;
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
    WorkBook := eclApp.Workbooks.Add;
  except
    Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
    Exit;
  end;

  SetCursor(Screen.Cursors[crHourGlass]);
  try
    with QExport do
    begin
      SheetIndex := 0;
      First;
      while not Eof do
      begin
        if (FieldByName('Building').AsString <> Building) then
        begin
          Inc(SheetIndex);
          if (SheetIndex > 1) then
          begin
            Inc(Row);
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Merge;
            eclApp.Cells[Row, 2] := DateSum[0];
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Font.Color := clRed;
            eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Merge;
            eclApp.Cells[Row, 11] := DateSum[1];
            eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Font.Color := clRed;
            eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Merge;
            eclApp.Cells[Row, 20] := DateSum[2];
            eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Font.Color := clRed;

            eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

            eclApp.Range[eclApp.Cells[Row+2, 1], eclApp.Cells[Row+2, 2]].Merge;
            eclApp.Cells[Row+2, 1] := 'Chu Quan Bo Phan';
            eclApp.Range[eclApp.Cells[Row+3, 1], eclApp.Cells[Row+3, 2]].Merge;
            eclApp.Cells[Row+3, 1] := '部門主管';

            eclApp.Range[eclApp.Cells[Row+2, 6], eclApp.Cells[Row+2, 7]].Merge;
            eclApp.Cells[Row+2, 6] := 'Chu Quan CCS';
            eclApp.Range[eclApp.Cells[Row+3, 6], eclApp.Cells[Row+3, 7]].Merge;
            eclApp.Cells[Row+3, 6] := '大車主管';

            eclApp.Range[eclApp.Cells[Row+2, 12], eclApp.Cells[Row+2, 14]].Merge;
            eclApp.Cells[Row+2, 12] := 'Chu Quan Xuong';
            eclApp.Range[eclApp.Cells[Row+3, 12], eclApp.Cells[Row+3, 14]].Merge;
            eclApp.Cells[Row+3, 12] := '棟別主管';

            eclApp.Range[eclApp.Cells[Row+2, 19], eclApp.Cells[Row+2, 20]].Merge;
            eclApp.Cells[Row+2, 19] := 'Chu Quan DV';
            eclApp.Range[eclApp.Cells[Row+3, 19], eclApp.Cells[Row+3, 20]].Merge;
            eclApp.Cells[Row+3, 19] := '單位主管';

            eclApp.Range[eclApp.Cells[Row+2, 25], eclApp.Cells[Row+2, 26]].Merge;
            eclApp.Cells[Row+2, 25] := 'Lap Bieu';
            eclApp.Range[eclApp.Cells[Row+3, 25], eclApp.Cells[Row+3, 26]].Merge;
            eclApp.Cells[Row+3, 25] := '制表';

            eclApp.Range[eclApp.Cells[Row+1, 27], eclApp.Cells[Row+1, 28]].Merge;
            eclApp.Cells[Row+1, 27] := 'T-DCC-021A  ';

            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].Font.Name := 'Arial';
            eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[Row+3, 28]].Font.Size := 11;
            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].HorizontalAlignment := xlHAlignCenter;
            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].VerticalAlignment := xlCenter;
            eclApp.Cells[3, 1].HorizontalAlignment := xlHAlignLeft;
            eclApp.Cells[Row+1, 27].HorizontalAlignment := xlHAlignRight;
          end;

          if (WorkBook.WorkSheets.Count < SheetIndex) then
            WorkBook.Worksheets.Add(After := WorkBook.WorkSheets[WorkBook.WorkSheets.Count]);
          eclApp.WorkSheets[SheetIndex].Name := FieldByName('Building').AsString;
          WorkSheet := eclApp.WorkSheets[SheetIndex];
          WorkSheet.Activate;

          Row := 1;
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 28]].Merge;
          eclApp.Cells[Row, 1] := '億春 ' + FieldByName('Building').AsString + ' 棟 3天生產計畫表';
          eclApp.Cells[Row, 1].Font.Size := 20;
          eclApp.Cells[Row, 1].Font.Bold := true;

          Inc(Row);
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 28]].Merge;

          Inc(Row);
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 25]].Merge;
          eclApp.Cells[Row, 1] := 'To : 採購、倉庫、貼合加工、大底、大車、成型';
          eclApp.Cells[Row, 1].Font.Size := 10;
          eclApp.Cells[Row, 26] := '日期 :';
          eclApp.Range[eclApp.Cells[Row, 27], eclApp.Cells[Row, 28]].Merge;
          eclApp.Cells[Row, 27] := FormatDateTime('yyyy/MM/dd', DTP1.Date);

          Inc(Row);
          eclApp.Cells[Row, 1] := '線別';
          eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Merge;
          eclApp.Cells[Row, 2] := FormatDateTime('M月d日', FieldByName('PlanDate1').AsDateTime);
          eclApp.Cells[Row, 10] := '生產數';      
          eclApp.Cells[Row, 10].ShrinkToFit := true;
          eclApp.Cells[Row, 10].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Merge;
          eclApp.Cells[Row, 11] := FormatDateTime('M月d日', FieldByName('PlanDate2').AsDateTime);
          eclApp.Cells[Row, 19] := '生產數';
          eclApp.Cells[Row, 19].ShrinkToFit := true;
          eclApp.Cells[Row, 19].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Merge;
          eclApp.Cells[Row, 20] := FormatDateTime('M月d日', FieldByName('PlanDate3').AsDateTime);
          eclApp.Cells[Row, 28] := '生產數';           
          eclApp.Cells[Row, 28].ShrinkToFit := true;
          eclApp.Cells[Row, 28].Interior.Color := clAqua;

          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

          eclApp.Columns[1].ColumnWidth := 11;
          for i := 0 to 2 do
          begin
            DateSum[i] := 0;
            eclApp.Columns[i*9 + 2].ColumnWidth := 17;
            eclApp.Columns[i*9 + 3].ColumnWidth := 6;
            eclApp.Columns[i*9 + 4].ColumnWidth := 6;
            eclApp.Columns[i*9 + 5].ColumnWidth := 6;
            eclApp.Columns[i*9 + 6].ColumnWidth := 9;
            eclApp.Columns[i*9 + 7].ColumnWidth := 8;
            eclApp.Columns[i*9 + 8].ColumnWidth := 13;
            eclApp.Columns[i*9 + 9].ColumnWidth := 10;
            eclApp.Columns[i*9 + 10].ColumnWidth := 6;
          end;

          Building := FieldByName('Building').AsString;
        end;

        if (FieldByName('Building').AsString + '-' + FieldByName('Lean').AsString <> Lean) then
        begin
          Inc(Row);
          for i := 0 to 2 do
          begin
            eclApp.Cells[Row, i*9 + 2] := 'RY';
            eclApp.Cells[Row, i*9 + 2].Interior.Color := clYellow;
            eclApp.Cells[Row, i*9 + 3] := 'XH';
            eclApp.Cells[Row, i*9 + 4] := 'NT';
            eclApp.Cells[Row, i*9 + 5] := 'MG';
            eclApp.Cells[Row, i*9 + 6] := 'SKU';
            eclApp.Cells[Row, i*9 + 7] := 'SL';
            eclApp.Cells[Row, i*9 + 8] := 'LY';
            eclApp.Cells[Row, i*9 + 9] := '回轉數';
          end;

          Remark := TStringList.Create;
          Country := TStringList.Create;
          MaxCycle := TStringList.Create;

          Inc(Row);
          Row_RYStart := Row;
          Row_Max := Row;
          for i := 0 to 2 do
          begin
            Total[i] := 0;
            if (Fields[i*9 + 3].IsNull = false) then
            begin
              Remark.Clear;
              TempStr := FieldByName('Remark' + IntToStr(i+1)).AsString;
              while (Pos(';', TempStr) > 0) do
              begin
                Remark.Add(Copy(TempStr, 1, Pos(';', TempStr)-1));
                TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));
              end;
              Remark.Add(TempStr);

              Country.Clear;
              TempStr := FieldByName('Country' + IntToStr(i+1)).AsString;
              while (Pos(';', TempStr) > 0) do
              begin
                Country.Add(Copy(TempStr, 1, Pos(';', TempStr)-1));
                TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));
              end;
              Country.Add(TempStr);

              MaxCycle.Clear;
              TempStr := FieldByName('MaxCycle' + IntToStr(i+1)).AsString;
              while (Pos(';', TempStr) > 0) do
              begin
                MaxCycle.Add(Copy(TempStr, 1, Pos(';', TempStr)-1));
                TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));
              end;
              MaxCycle.Add(TempStr);

              for j := 0 to 7 do
              begin
                Row := Row_RYStart;
                TempStr := Fields[i*9 + (j+3)].AsString;
                Counter := 0;
                while (Pos(';', TempStr) > 0) do
                begin
                  if (j = 1) then
                    eclApp.Cells[Row, i*9 + (j+2)].NumberFormatLocal := '@'
                  else if (j = 5) then
                    Inc(Total[i], StrToInt(Copy(TempStr, 1, Pos(';', TempStr)-1)));
                  eclApp.Cells[Row, i*9 + (j+2)] := Copy(TempStr, 1, Pos(';', TempStr)-1);
                  eclApp.Cells[Row, i*9 + (j+2)].ShrinkToFit := true;
                  TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));

                  if (Country[Counter] = 'CHI') OR (Country[Counter] = 'KOR') OR (Country[Counter] = 'TKY') OR (Country[Counter] = 'USA') then
                  begin
                    Inc(Row);
                    if (Country[Counter] = 'CHI') then
                      eclApp.Cells[Row, i*9 + 2] := 'CHINA'
                    else if (Country[Counter] = 'KOR') then
                      eclApp.Cells[Row, i*9 + 2] := 'SOUTHKOREA'
                    else if (Country[Counter] = 'TKY') then
                      eclApp.Cells[Row, i*9 + 2] := 'TURKEY'
                    else if (Country[Counter] = 'USA') then
                      eclApp.Cells[Row, i*9 + 2] := 'USA';
                    eclApp.Cells[Row, i*9 + 2].Interior.Color := $00DCCD92;

                    if (Remark[Counter] <> '') then
                    begin
                      eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                      eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                      eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                    end;

                    Inc(Row);
                    eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';
                  end
                  else begin
                    Inc(Row);
                    eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';

                    if (Remark[Counter] <> '') then
                    begin
                      eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                      eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                      eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                    end;
                  end;

                  Inc(Counter);
                  Inc(Row);
                end;

                if (j = 1) then
                  eclApp.Cells[Row, i*9 + (j+2)].NumberFormatLocal := '@'
                else if (j = 5) then
                  Inc(Total[i], StrToInt(TempStr));
                eclApp.Cells[Row, i*9 + (j+2)] := TempStr;
                eclApp.Cells[Row, i*9 + (j+2)].ShrinkToFit := true;

                if (Country[Counter] = 'CHI') OR (Country[Counter] = 'KOR') OR (Country[Counter] = 'TKY') OR (Country[Counter] = 'USA') then
                begin
                  Inc(Row);
                  if (Country[Counter] = 'CHI') then
                    eclApp.Cells[Row, i*9 + 2] := 'CHINA'
                  else if (Country[Counter] = 'KOR') then
                    eclApp.Cells[Row, i*9 + 2] := 'SOUTHKOREA'
                  else if (Country[Counter] = 'TKY') then
                    eclApp.Cells[Row, i*9 + 2] := 'TURKEY'
                  else if (Country[Counter] = 'USA') then
                    eclApp.Cells[Row, i*9 + 2] := 'USA';
                  eclApp.Cells[Row, i*9 + 2].Interior.Color := $00DCCD92;

                  if (Remark[Counter] <> '') then
                  begin
                    eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                    eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                    eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                  end;

                  Inc(Row);
                  eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';
                end
                else begin
                  Inc(Row);
                  eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';

                  if (Remark[Counter] <> '') then
                  begin
                    eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                    eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                    eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                  end;
                end;
                
                Inc(Row);
              end;
            end;

            if (Row > Row_Max) then
              Row_Max := Row;
          end;
          Remark.Free;
          Country.Free;
          MaxCycle.Free;

          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row_Max+1, 1]].Merge;
          eclApp.Cells[Row_RYStart-1, 1] := FieldByName('Building').AsString + ' ' + UpperCase(FieldByName('Lean').AsString);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 10], eclApp.Cells[Row_Max+1, 10]].Merge;
          eclApp.Cells[Row_RYStart-1, 10].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 19], eclApp.Cells[Row_Max+1, 19]].Merge;
          eclApp.Cells[Row_RYStart-1, 19].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 28], eclApp.Cells[Row_Max+1, 28]].Merge;
          eclApp.Cells[Row_RYStart-1, 28].Interior.Color := clAqua;

          Row := Row_Max + 1;
          eclApp.Cells[Row, 8] := 'TC';
          eclApp.Cells[Row, 9] := Total[0];
          Inc(DateSum[0], Total[0]);
          eclApp.Range[eclApp.Cells[Row, 8], eclApp.Cells[Row, 9]].Font.Color := clRed;
          eclApp.Cells[Row, 17] := 'TC';
          eclApp.Cells[Row, 18] := Total[1];
          Inc(DateSum[1], Total[1]);
          eclApp.Range[eclApp.Cells[Row, 17], eclApp.Cells[Row, 18]].Font.Color := clRed;
          eclApp.Cells[Row, 26] := 'TC';
          eclApp.Cells[Row, 27] := Total[2];   
          Inc(DateSum[2], Total[2]);
          eclApp.Range[eclApp.Cells[Row, 26], eclApp.Cells[Row, 27]].Font.Color := clRed;

          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[1].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[2].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[3].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[4].LineStyle := xlContinuous;

          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

          Lean := FieldByName('Building').AsString + '-' + FieldByName('Lean').AsString;
        end;
        
        Next;
      end;

      Inc(Row);
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Merge;
      eclApp.Cells[Row, 2] := DateSum[0];
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Font.Color := clRed;
      eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Merge;
      eclApp.Cells[Row, 11] := DateSum[1];
      eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Font.Color := clRed;
      eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Merge;
      eclApp.Cells[Row, 20] := DateSum[2];
      eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Font.Color := clRed;

      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

      eclApp.Range[eclApp.Cells[Row+2, 1], eclApp.Cells[Row+2, 2]].Merge;
      eclApp.Cells[Row+2, 1] := 'Chu Quan Bo Phan';
      eclApp.Range[eclApp.Cells[Row+3, 1], eclApp.Cells[Row+3, 2]].Merge;
      eclApp.Cells[Row+3, 1] := '部門主管';

      eclApp.Range[eclApp.Cells[Row+2, 6], eclApp.Cells[Row+2, 7]].Merge;
      eclApp.Cells[Row+2, 6] := 'Chu Quan CCS';
      eclApp.Range[eclApp.Cells[Row+3, 6], eclApp.Cells[Row+3, 7]].Merge;
      eclApp.Cells[Row+3, 6] := '大車主管';

      eclApp.Range[eclApp.Cells[Row+2, 12], eclApp.Cells[Row+2, 14]].Merge;
      eclApp.Cells[Row+2, 12] := 'Chu Quan Xuong';
      eclApp.Range[eclApp.Cells[Row+3, 12], eclApp.Cells[Row+3, 14]].Merge;
      eclApp.Cells[Row+3, 12] := '棟別主管';

      eclApp.Range[eclApp.Cells[Row+2, 19], eclApp.Cells[Row+2, 20]].Merge;
      eclApp.Cells[Row+2, 19] := 'Chu Quan DV';
      eclApp.Range[eclApp.Cells[Row+3, 19], eclApp.Cells[Row+3, 20]].Merge;
      eclApp.Cells[Row+3, 19] := '單位主管';

      eclApp.Range[eclApp.Cells[Row+2, 25], eclApp.Cells[Row+2, 26]].Merge;
      eclApp.Cells[Row+2, 25] := 'Lap Bieu';
      eclApp.Range[eclApp.Cells[Row+3, 25], eclApp.Cells[Row+3, 26]].Merge;
      eclApp.Cells[Row+3, 25] := '制表';

      eclApp.Range[eclApp.Cells[Row+1, 27], eclApp.Cells[Row+1, 28]].Merge;
      eclApp.Cells[Row+1, 27] := 'T-DCC-021A  ';

      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].Font.Name := 'Arial';
      eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[Row+3, 28]].Font.Size := 11;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].HorizontalAlignment := xlHAlignCenter;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].VerticalAlignment := xlCenter;
      eclApp.Cells[3, 1].HorizontalAlignment := xlHAlignLeft;
      eclApp.Cells[Row+1, 27].HorizontalAlignment := xlHAlignRight;
    end;

    Self.Cursor := crDefault;
    ShowMessage('Successful'); 
    eclApp.Visible := True;
    Close;
  except on F:Exception do
    begin
      eclApp.DisplayAlerts := false;
      eclApp.WorkBooks.Close;
      eclApp.Quit;
      Self.Cursor := crDefault;
      ShowMessage(F.Message);
      Close;
    end;
  end;
end;

procedure TExportDialog.Export3DayPlan;
var
  eclApp, WorkBook, WorkSheet: OleVariant;
  Col, Row, i, j, MaxLength, Counter: integer;
  Total, DateSum: array[0..2] of integer;
  ExportDate: array[0..2] of TDate;
  SheetIndex, Row_Max, Row_RYStart: integer;
  Buildings, Building, Leans, Lean, Index: string;
  TempStr: string;
  Remark, Country, MaxCycle: TStringList;
begin
  try
    Buildings := '';
    for i := 0 to CLB1.Items.Count-1 do
    begin
      if (CLB1.Checked[i]) then
      begin
        if (Buildings = '') then
          Buildings := Buildings + '''' + CLB1.Items[i] + ''''
        else
          Buildings := Buildings + ',''' + CLB1.Items[i] + ''''
      end;
    end;

    if (Buildings = '') then
    begin
      ShowMessage('Please select a building');
      Exit;
    end;

    Leans := '';
    for i := 0 to CLB2.Items.Count-1 do
    begin
      if (CLB2.Checked[i]) then
      begin
        if (Leans = '') then
          Leans := Leans + '''' + CLB2.Items[i] + ''''
        else
          Leans := Leans + ',''' + CLB2.Items[i] + ''''
      end;
    end;

    if (Leans = '') then
    begin
      ShowMessage('Please select a lean');
      Exit;
    end;

    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT DISTINCT PlanDate FROM ProductionPlan');
      SQL.Add('WHERE PlanType = ''3-Day'' AND PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('AND Building IN (' + Buildings + ')');
      SQL.Add('AND Lean IN (' + Leans + ')');
      Active := true;

      if (RecordCount > 3) then
      begin
        ShowMessage('The selected date range includes more than 3 valid dates');
        Exit;
      end
      else begin
        i := -1;
        First;
        while not Eof do
        begin   
          Inc(i);
          ExportDate[i] := FieldByName('PlanDate').AsDateTime;
          Next;
        end;

        for j := i+1 to 2 do
        begin
          ExportDate[j] := IncDay(ExportDate[j-1], 1);
        end;
      end;
    end;

    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('IF OBJECT_ID(''tempdb..#PP'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #PP END;');

      SQL.Add('SELECT * INTO #PP FROM (');
      SQL.Add('  SELECT PP.Building, PP.Lean, 1 AS PlanIndex, PP.PlanDate, PP.RY, DDZL.ShipDate,');
      SQL.Add('  PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO, DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH,');
      SQL.Add('  PP.Pairs, PP.CycleStart, PP.CycleEnd, PP.Remark, SMDD.MaxCycle, DDZL.DDGB FROM ProductionPlan AS PP');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT YSBH, MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
      SQL.Add('    WHERE GXLB = ''A''');
      SQL.Add('    GROUP BY YSBH');
      SQL.Add('  ) AS SMDD ON SMDD.YSBH = PP.RY');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('  WHERE PP.PlanType = ''3-Day'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', ExportDate[0]) + '''');
      SQL.Add('  AND PP.Building IN (' + Buildings + ')');
      SQL.Add('  AND PP.Lean IN (' + Leans + ')');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT PP.Building, PP.Lean, 2 AS PlanIndex, PP.PlanDate, PP.RY, DDZL.ShipDate,');
      SQL.Add('  PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO, DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH,');
      SQL.Add('  PP.Pairs, PP.CycleStart, PP.CycleEnd, PP.Remark, SMDD.MaxCycle, DDZL.DDGB FROM ProductionPlan AS PP');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT YSBH, MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
      SQL.Add('    WHERE GXLB = ''A''');
      SQL.Add('    GROUP BY YSBH');
      SQL.Add('  ) AS SMDD ON SMDD.YSBH = PP.RY');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('  WHERE PP.PlanType = ''3-Day'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', ExportDate[1]) + '''');
      SQL.Add('  AND PP.Building IN (' + Buildings + ')');
      SQL.Add('  AND PP.Lean IN (' + Leans + ')');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT PP.Building, PP.Lean, 3 AS PlanIndex, PP.PlanDate, PP.RY, DDZL.ShipDate,');
      SQL.Add('  PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO, DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH,');
      SQL.Add('  PP.Pairs, PP.CycleStart, PP.CycleEnd, PP.Remark, SMDD.MaxCycle, DDZL.DDGB FROM ProductionPlan AS PP');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT YSBH, MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
      SQL.Add('    WHERE GXLB = ''A''');
      SQL.Add('    GROUP BY YSBH');
      SQL.Add('  ) AS SMDD ON SMDD.YSBH = PP.RY');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('  WHERE PP.PlanType = ''3-Day'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', ExportDate[2]) + '''');
      SQL.Add('  AND PP.Building IN (' + Buildings + ')');  
      SQL.Add('  AND PP.Lean IN (' + Leans + ')');
      SQL.Add(') AS PP');

      SQL.Add('SELECT Building, Lean,');
      SQL.Add('CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', ExportDate[0]) + ''') AS PlanDate1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN RY END) AS RY1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN ShipDate END) AS ShipDate1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN NT END) AS NT1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN BuyNo END) AS BuyNo1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN SKU END) AS SKU1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Pairs END) AS Pairs1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN DAOMH END) AS DAOMH1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Cycle END) AS Cycle1,');
      SQL.Add('CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', ExportDate[1]) + ''') AS PlanDate2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN RY END) AS RY2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN ShipDate END) AS ShipDate2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN NT END) AS NT2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN BuyNo END) AS BuyNo2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN SKU END) AS SKU2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Pairs END) AS Pairs2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN DAOMH END) AS DAOMH2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Cycle END) AS Cycle2,');
      SQL.Add('CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', ExportDate[2]) + ''') AS PlanDate3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN RY END) AS RY3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN ShipDate END) AS ShipDate3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN NT END) AS NT3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN BuyNo END) AS BuyNo3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN SKU END) AS SKU3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Pairs END) AS Pairs3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN DAOMH END) AS DAOMH3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Cycle END) AS Cycle3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Remark END) AS Remark1,');  
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Remark END) AS Remark2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Remark END) AS Remark3,');  
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN MaxCycle END) AS MaxCycle1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN MaxCycle END) AS MaxCycle2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN MaxCycle END) AS MaxCycle3,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 1 THEN Country END) AS Country1,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 2 THEN Country END) AS Country2,');
      SQL.Add('MAX(CASE WHEN PlanIndex = 3 THEN Country END) AS Country3 FROM (');
      SQL.Add('  SELECT DISTINCT PP.Building, PP.Lean, PP.PlanIndex, PP.PlanDate, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + RY FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS RY, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + CAST(MONTH(ShipDate) AS VARCHAR(2)) + ''/'' + CAST(DAY(ShipDate) AS VARCHAR(2)) FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS ShipDate, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + NT FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS NT, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + BUYNO FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS BuyNo, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + ARTICLE FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS SKU, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + DAOMH FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS DAOMH, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + CAST(Pairs AS VARCHAR(10)) FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS Pairs, CAST(STUFF((');
      SQL.Add('    SELECT CASE WHEN CycleStart <> CycleEnd THEN '';T'' + CAST(CycleStart AS VARCHAR(3)) + ''-T'' + CAST(CycleEnd AS VARCHAR(3)) ELSE '';T'' + CAST(CycleStart AS VARCHAR(3)) END FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS Cycle, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + Remark FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(1000)) AS Remark, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + CAST(MaxCycle AS VARCHAR(10)) FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS MaxCycle, CAST(STUFF((');
      SQL.Add('    SELECT '';'' + DDGB FROM #PP');
      SQL.Add('    WHERE #PP.Building = PP.Building AND #PP.Lean = PP.Lean AND #PP.PlanIndex = PP.PlanIndex');
      SQL.Add('    FOR XML PATH('''')');
      SQL.Add('  ), 1, 1, '''') AS VARCHAR(150)) AS Country FROM #PP AS PP');
      SQL.Add(') AS PP');
      SQL.Add('GROUP BY Building, Lean');
      SQL.Add('ORDER BY Building, Lean');
      Active := true;

      if (RecordCount = 0) then
      begin
        ShowMessage('No relative data');
        Exit;
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
    WorkBook := eclApp.Workbooks.Add;
  except
    Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
    Exit;
  end;

  SetCursor(Screen.Cursors[crHourGlass]);
  try
    with QExport do
    begin
      SheetIndex := 0;
      First;
      while not Eof do
      begin
        if (FieldByName('Building').AsString <> Building) then
        begin
          Inc(SheetIndex);
          if (SheetIndex > 1) then
          begin
            Inc(Row);
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Merge;
            eclApp.Cells[Row, 2] := DateSum[0];
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Font.Color := clRed;
            eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Merge;
            eclApp.Cells[Row, 11] := DateSum[1];
            eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Font.Color := clRed;
            eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Merge;
            eclApp.Cells[Row, 20] := DateSum[2];
            eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Font.Color := clRed;

            eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

            eclApp.Range[eclApp.Cells[Row+2, 1], eclApp.Cells[Row+2, 2]].Merge;
            eclApp.Cells[Row+2, 1] := 'Chu Quan Bo Phan';
            eclApp.Range[eclApp.Cells[Row+3, 1], eclApp.Cells[Row+3, 2]].Merge;
            eclApp.Cells[Row+3, 1] := '部門主管';

            eclApp.Range[eclApp.Cells[Row+2, 6], eclApp.Cells[Row+2, 7]].Merge;
            eclApp.Cells[Row+2, 6] := 'Chu Quan CCS';
            eclApp.Range[eclApp.Cells[Row+3, 6], eclApp.Cells[Row+3, 7]].Merge;
            eclApp.Cells[Row+3, 6] := '大車主管';

            eclApp.Range[eclApp.Cells[Row+2, 12], eclApp.Cells[Row+2, 14]].Merge;
            eclApp.Cells[Row+2, 12] := 'Chu Quan Xuong';
            eclApp.Range[eclApp.Cells[Row+3, 12], eclApp.Cells[Row+3, 14]].Merge;
            eclApp.Cells[Row+3, 12] := '棟別主管';

            eclApp.Range[eclApp.Cells[Row+2, 19], eclApp.Cells[Row+2, 20]].Merge;
            eclApp.Cells[Row+2, 19] := 'Chu Quan DV';
            eclApp.Range[eclApp.Cells[Row+3, 19], eclApp.Cells[Row+3, 20]].Merge;
            eclApp.Cells[Row+3, 19] := '單位主管';

            eclApp.Range[eclApp.Cells[Row+2, 25], eclApp.Cells[Row+2, 26]].Merge;
            eclApp.Cells[Row+2, 25] := 'Lap Bieu';
            eclApp.Range[eclApp.Cells[Row+3, 25], eclApp.Cells[Row+3, 26]].Merge;
            eclApp.Cells[Row+3, 25] := '制表';

            eclApp.Range[eclApp.Cells[Row+1, 27], eclApp.Cells[Row+1, 28]].Merge;
            eclApp.Cells[Row+1, 27] := 'T-DCC-021A  ';

            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].Font.Name := 'Arial';
            eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[Row+3, 28]].Font.Size := 11;
            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].HorizontalAlignment := xlHAlignCenter;
            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].VerticalAlignment := xlCenter;
            eclApp.Cells[3, 1].HorizontalAlignment := xlHAlignLeft;
            eclApp.Cells[Row+1, 27].HorizontalAlignment := xlHAlignRight;
          end;

          if (WorkBook.WorkSheets.Count < SheetIndex) then
            WorkBook.Worksheets.Add(After := WorkBook.WorkSheets[WorkBook.WorkSheets.Count]);
          eclApp.WorkSheets[SheetIndex].Name := FieldByName('Building').AsString;
          WorkSheet := eclApp.WorkSheets[SheetIndex];
          WorkSheet.Activate;

          Row := 1;
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 28]].Merge;
          eclApp.Cells[Row, 1] := '億春 ' + FieldByName('Building').AsString + ' 棟 3天生產計畫表';
          eclApp.Cells[Row, 1].Font.Size := 20;
          eclApp.Cells[Row, 1].Font.Bold := true;

          Inc(Row);
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 28]].Merge;

          Inc(Row);
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 25]].Merge;
          eclApp.Cells[Row, 1] := 'To : 採購、倉庫、貼合加工、大底、大車、成型';
          eclApp.Cells[Row, 1].Font.Size := 10;
          eclApp.Cells[Row, 26] := '日期 :';
          eclApp.Range[eclApp.Cells[Row, 27], eclApp.Cells[Row, 28]].Merge;
          eclApp.Cells[Row, 27] := FormatDateTime('yyyy/MM/dd', DTP1.Date);

          Inc(Row);
          eclApp.Cells[Row, 1] := '線別';
          eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Merge;
          eclApp.Cells[Row, 2] := FormatDateTime('M月d日', FieldByName('PlanDate1').AsDateTime);
          eclApp.Cells[Row, 10] := '生產數';      
          eclApp.Cells[Row, 10].ShrinkToFit := true;
          eclApp.Cells[Row, 10].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Merge;
          eclApp.Cells[Row, 11] := FormatDateTime('M月d日', FieldByName('PlanDate2').AsDateTime);
          eclApp.Cells[Row, 19] := '生產數';
          eclApp.Cells[Row, 19].ShrinkToFit := true;
          eclApp.Cells[Row, 19].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Merge;
          eclApp.Cells[Row, 20] := FormatDateTime('M月d日', FieldByName('PlanDate3').AsDateTime);
          eclApp.Cells[Row, 28] := '生產數';           
          eclApp.Cells[Row, 28].ShrinkToFit := true;
          eclApp.Cells[Row, 28].Interior.Color := clAqua;

          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

          eclApp.Columns[1].ColumnWidth := 11;
          for i := 0 to 2 do
          begin
            DateSum[i] := 0;
            eclApp.Columns[i*9 + 2].ColumnWidth := 17;
            eclApp.Columns[i*9 + 3].ColumnWidth := 6;
            eclApp.Columns[i*9 + 4].ColumnWidth := 6;
            eclApp.Columns[i*9 + 5].ColumnWidth := 6;
            eclApp.Columns[i*9 + 6].ColumnWidth := 9;
            eclApp.Columns[i*9 + 7].ColumnWidth := 8;
            eclApp.Columns[i*9 + 8].ColumnWidth := 13;
            eclApp.Columns[i*9 + 9].ColumnWidth := 10;
            eclApp.Columns[i*9 + 10].ColumnWidth := 6;
          end;

          Building := FieldByName('Building').AsString;
        end;

        if (FieldByName('Building').AsString + '-' + FieldByName('Lean').AsString <> Lean) then
        begin
          Inc(Row);
          for i := 0 to 2 do
          begin
            eclApp.Cells[Row, i*9 + 2] := 'RY';
            eclApp.Cells[Row, i*9 + 2].Interior.Color := clYellow;
            eclApp.Cells[Row, i*9 + 3] := 'XH';
            eclApp.Cells[Row, i*9 + 4] := 'NT';
            eclApp.Cells[Row, i*9 + 5] := 'MG';
            eclApp.Cells[Row, i*9 + 6] := 'SKU';
            eclApp.Cells[Row, i*9 + 7] := 'SL';
            eclApp.Cells[Row, i*9 + 8] := 'LY';
            eclApp.Cells[Row, i*9 + 9] := '回轉數';
          end;

          Remark := TStringList.Create;
          Country := TStringList.Create;
          MaxCycle := TStringList.Create;

          Inc(Row);
          Row_RYStart := Row;
          Row_Max := Row;
          for i := 0 to 2 do
          begin
            Total[i] := 0;
            if (Fields[i*9 + 3].IsNull = false) then
            begin
              Remark.Clear;
              TempStr := FieldByName('Remark' + IntToStr(i+1)).AsString;
              while (Pos(';', TempStr) > 0) do
              begin
                Remark.Add(Copy(TempStr, 1, Pos(';', TempStr)-1));
                TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));
              end;
              Remark.Add(TempStr);

              Country.Clear;
              TempStr := FieldByName('Country' + IntToStr(i+1)).AsString;
              while (Pos(';', TempStr) > 0) do
              begin
                Country.Add(Copy(TempStr, 1, Pos(';', TempStr)-1));
                TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));
              end;
              Country.Add(TempStr);

              MaxCycle.Clear;
              TempStr := FieldByName('MaxCycle' + IntToStr(i+1)).AsString;
              while (Pos(';', TempStr) > 0) do
              begin
                MaxCycle.Add(Copy(TempStr, 1, Pos(';', TempStr)-1));
                TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));
              end;
              MaxCycle.Add(TempStr);

              for j := 0 to 7 do
              begin
                Row := Row_RYStart;
                TempStr := Fields[i*9 + (j+3)].AsString;
                Counter := 0;
                while (Pos(';', TempStr) > 0) do
                begin
                  if (j = 1) then
                    eclApp.Cells[Row, i*9 + (j+2)].NumberFormatLocal := '@'
                  else if (j = 5) then
                    Inc(Total[i], StrToInt(Copy(TempStr, 1, Pos(';', TempStr)-1)));
                  eclApp.Cells[Row, i*9 + (j+2)] := Copy(TempStr, 1, Pos(';', TempStr)-1);
                  eclApp.Cells[Row, i*9 + (j+2)].ShrinkToFit := true;
                  TempStr := Copy(TempStr, Pos(';', TempStr)+1, Length(TempStr)-Pos(';', TempStr));

                  if (Country[Counter] = 'CHI') OR (Country[Counter] = 'KOR') OR (Country[Counter] = 'TKY') OR (Country[Counter] = 'USA') then
                  begin
                    Inc(Row);
                    if (Country[Counter] = 'CHI') then
                      eclApp.Cells[Row, i*9 + 2] := 'CHINA'
                    else if (Country[Counter] = 'KOR') then
                      eclApp.Cells[Row, i*9 + 2] := 'SOUTHKOREA'
                    else if (Country[Counter] = 'TKY') then
                      eclApp.Cells[Row, i*9 + 2] := 'TURKEY'
                    else if (Country[Counter] = 'USA') then
                      eclApp.Cells[Row, i*9 + 2] := 'USA';
                    eclApp.Cells[Row, i*9 + 2].Interior.Color := $00DCCD92;

                    if (Remark[Counter] <> '') then
                    begin
                      eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                      eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                      eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                    end;

                    Inc(Row);
                    eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';
                  end
                  else begin
                    Inc(Row);
                    eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';

                    if (Remark[Counter] <> '') then
                    begin
                      eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                      eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                      eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                    end;
                  end;

                  Inc(Counter);
                  Inc(Row);
                end;

                if (j = 1) then
                  eclApp.Cells[Row, i*9 + (j+2)].NumberFormatLocal := '@'
                else if (j = 5) then
                  Inc(Total[i], StrToInt(TempStr));
                eclApp.Cells[Row, i*9 + (j+2)] := TempStr;
                eclApp.Cells[Row, i*9 + (j+2)].ShrinkToFit := true;

                if (Country[Counter] = 'CHI') OR (Country[Counter] = 'KOR') OR (Country[Counter] = 'TKY') OR (Country[Counter] = 'USA') then
                begin
                  Inc(Row);
                  if (Country[Counter] = 'CHI') then
                    eclApp.Cells[Row, i*9 + 2] := 'CHINA'
                  else if (Country[Counter] = 'KOR') then
                    eclApp.Cells[Row, i*9 + 2] := 'SOUTHKOREA'
                  else if (Country[Counter] = 'TKY') then
                    eclApp.Cells[Row, i*9 + 2] := 'TURKEY'
                  else if (Country[Counter] = 'USA') then
                    eclApp.Cells[Row, i*9 + 2] := 'USA';
                  eclApp.Cells[Row, i*9 + 2].Interior.Color := $00DCCD92;

                  if (Remark[Counter] <> '') then
                  begin
                    eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                    eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                    eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                  end;

                  Inc(Row);
                  eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';
                end
                else begin
                  Inc(Row);
                  eclApp.Cells[Row, i*9 + 2] := 'TC ' + MaxCycle[Counter] + 'T';

                  if (Remark[Counter] <> '') then
                  begin
                    eclApp.Range[eclApp.Cells[Row, i*9 + 3], eclApp.Cells[Row, i*9 + 9]].Merge;
                    eclApp.Cells[Row, i*9 + 3] := Remark[Counter];
                    eclApp.Cells[Row, i*9 + 3].ShrinkToFit := true;
                  end;
                end;
                
                Inc(Row);
              end;
            end;

            if (Row > Row_Max) then
              Row_Max := Row;
          end;
          Remark.Free;
          Country.Free;
          MaxCycle.Free;

          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row_Max+1, 1]].Merge;
          eclApp.Cells[Row_RYStart-1, 1] := FieldByName('Building').AsString + ' ' + UpperCase(FieldByName('Lean').AsString);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 10], eclApp.Cells[Row_Max+1, 10]].Merge;
          eclApp.Cells[Row_RYStart-1, 10].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 19], eclApp.Cells[Row_Max+1, 19]].Merge;
          eclApp.Cells[Row_RYStart-1, 19].Interior.Color := clAqua;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 28], eclApp.Cells[Row_Max+1, 28]].Merge;
          eclApp.Cells[Row_RYStart-1, 28].Interior.Color := clAqua;

          Row := Row_Max + 1;
          eclApp.Cells[Row, 8] := 'TC';
          eclApp.Cells[Row, 9] := Total[0];
          Inc(DateSum[0], Total[0]);
          eclApp.Range[eclApp.Cells[Row, 8], eclApp.Cells[Row, 9]].Font.Color := clRed;
          eclApp.Cells[Row, 17] := 'TC';
          eclApp.Cells[Row, 18] := Total[1];
          Inc(DateSum[1], Total[1]);
          eclApp.Range[eclApp.Cells[Row, 17], eclApp.Cells[Row, 18]].Font.Color := clRed;
          eclApp.Cells[Row, 26] := 'TC';
          eclApp.Cells[Row, 27] := Total[2];   
          Inc(DateSum[2], Total[2]);
          eclApp.Range[eclApp.Cells[Row, 26], eclApp.Cells[Row, 27]].Font.Color := clRed;

          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[1].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[2].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[3].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 28]].Borders[4].LineStyle := xlContinuous;

          eclApp.Range[eclApp.Cells[Row_RYStart-1, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart-1, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

          Lean := FieldByName('Building').AsString + '-' + FieldByName('Lean').AsString;
        end;
        
        Next;
      end;

      Inc(Row);
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Merge;
      eclApp.Cells[Row, 2] := DateSum[0];
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].Font.Color := clRed;
      eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Merge;
      eclApp.Cells[Row, 11] := DateSum[1];
      eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].Font.Color := clRed;
      eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Merge;
      eclApp.Cells[Row, 20] := DateSum[2];
      eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].Font.Color := clRed;

      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 9]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 10], eclApp.Cells[Row, 10]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row, 18]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 19], eclApp.Cells[Row, 19]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 20], eclApp.Cells[Row, 27]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 28], eclApp.Cells[Row, 28]].BorderAround(xlContinuous, xlMedium);

      eclApp.Range[eclApp.Cells[Row+2, 1], eclApp.Cells[Row+2, 2]].Merge;
      eclApp.Cells[Row+2, 1] := 'Chu Quan Bo Phan';
      eclApp.Range[eclApp.Cells[Row+3, 1], eclApp.Cells[Row+3, 2]].Merge;
      eclApp.Cells[Row+3, 1] := '部門主管';

      eclApp.Range[eclApp.Cells[Row+2, 6], eclApp.Cells[Row+2, 7]].Merge;
      eclApp.Cells[Row+2, 6] := 'Chu Quan CCS';
      eclApp.Range[eclApp.Cells[Row+3, 6], eclApp.Cells[Row+3, 7]].Merge;
      eclApp.Cells[Row+3, 6] := '大車主管';

      eclApp.Range[eclApp.Cells[Row+2, 12], eclApp.Cells[Row+2, 14]].Merge;
      eclApp.Cells[Row+2, 12] := 'Chu Quan Xuong';
      eclApp.Range[eclApp.Cells[Row+3, 12], eclApp.Cells[Row+3, 14]].Merge;
      eclApp.Cells[Row+3, 12] := '棟別主管';

      eclApp.Range[eclApp.Cells[Row+2, 19], eclApp.Cells[Row+2, 20]].Merge;
      eclApp.Cells[Row+2, 19] := 'Chu Quan DV';
      eclApp.Range[eclApp.Cells[Row+3, 19], eclApp.Cells[Row+3, 20]].Merge;
      eclApp.Cells[Row+3, 19] := '單位主管';

      eclApp.Range[eclApp.Cells[Row+2, 25], eclApp.Cells[Row+2, 26]].Merge;
      eclApp.Cells[Row+2, 25] := 'Lap Bieu';
      eclApp.Range[eclApp.Cells[Row+3, 25], eclApp.Cells[Row+3, 26]].Merge;
      eclApp.Cells[Row+3, 25] := '制表';

      eclApp.Range[eclApp.Cells[Row+1, 27], eclApp.Cells[Row+1, 28]].Merge;
      eclApp.Cells[Row+1, 27] := 'T-DCC-021A  ';

      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].Font.Name := 'Arial';
      eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[Row+3, 28]].Font.Size := 11;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].HorizontalAlignment := xlHAlignCenter;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+3, 28]].VerticalAlignment := xlCenter;
      eclApp.Cells[3, 1].HorizontalAlignment := xlHAlignLeft;
      eclApp.Cells[Row+1, 27].HorizontalAlignment := xlHAlignRight;
    end;

    Self.Cursor := crDefault;
    ShowMessage('Successful'); 
    eclApp.Visible := True;
    Close;
  except on F:Exception do
    begin
      eclApp.DisplayAlerts := false;
      eclApp.WorkBooks.Close;
      eclApp.Quit;
      Self.Cursor := crDefault;
      ShowMessage(F.Message);
      Close;
    end;
  end;
end;

procedure TExportDialog.Export1DayPlan;
var
  eclApp, WorkBook, WorkSheet: OleVariant;
  Row, i, j, RY_StartRow, RY_EndRow, SameCounter, Seq: integer;
  Total, DateSum: integer;
  SheetIndex, Row_RYStart: integer;
  Buildings, Building, Leans, Lean, RY: string;
  VungLiem: Boolean;
begin
  try
    Buildings := '';
    for i := 0 to CLB1.Items.Count-1 do
    begin
      if (CLB1.Checked[i]) then
      begin
        if (Buildings = '') then
          Buildings := Buildings + '''' + CLB1.Items[i] + ''''
        else
          Buildings := Buildings + ',''' + CLB1.Items[i] + ''''
      end;
    end;

    if (Buildings = '') then
    begin
      ShowMessage('Please select a building');
      Exit;
    end;

    Leans := '';
    for i := 0 to CLB2.Items.Count-1 do
    begin
      if (CLB2.Checked[i]) then
      begin
        if (Leans = '') then
          Leans := Leans + '''' + CLB2.Items[i] + ''''
        else
          Leans := Leans + ',''' + CLB2.Items[i] + ''''
      end;
    end;

    if (Leans = '') then
    begin
      ShowMessage('Please select a lean');
      Exit;
    end;

    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanDate, PP.RY, DDZL.ShipDate, PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO,');
      SQL.Add('DDZL.ARTICLE, DDZL.Pairs AS RYPairs, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH, PP.Pairs,');
      SQL.Add('PP.CycleStart, PP.CycleEnd, REPLACE(XXZL.XTMH, ''TV-'', '''') AS XTMH, PP.DeliveryTime, PP.AssemblyTime,');
      SQL.Add('ISNULL(PP.Remark, '''') AS Remark, SMDD.MaxCycle, DDZL.DDGB, DENSE_RANK() OVER(PARTITION BY Building, Lean, PlanDate ORDER BY PP.AssemblyTime) AS Seq FROM ProductionPlan AS PP');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT YSBH, MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
      SQL.Add('  WHERE GXLB = ''A''');
      SQL.Add('  GROUP BY YSBH');
      SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
      SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('WHERE PP.PlanType = ''' + PType + ''' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''');
      SQL.Add('AND PP.Building IN (' + Buildings + ')');
      SQL.Add('AND PP.Lean IN (' + Leans + ')');
      SQL.Add('ORDER BY PP.Building, PP.Lean, PP.AssemblyTime');
      Active := true;

      if (RecordCount = 0) then
      begin
        ShowMessage('No relative data');
        Exit;
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
    WorkBook := eclApp.Workbooks.Add;
  except
    Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
    Exit;
  end;

  SetCursor(Screen.Cursors[crHourGlass]);
  try
    with QExport do
    begin
      SheetIndex := 0;
      First;
      while not Eof do
      begin
        if (FieldByName('Building').AsString <> Building) then
        begin
          Inc(SheetIndex);

          if (SheetIndex > 1) then
          begin
            Row := RY_EndRow;
            VungLiem := false;
            for i := 0 to Length(VungLiemMay)-1 do
            begin
              if (VungLiemMay[i] = UpperCase(Lean)) then
              begin
                VungLiem := true;
                Break;
              end;
            end;

            Inc(Row, 2);
            if (VungLiem) then
            begin
              Inc(Row);
              eclApp.Range[eclApp.Cells[Row-1, 3], eclApp.Cells[Row-1, 8]].Merge;
              eclApp.Cells[Row-1, 3] := 'VUNG LIEM MAY (永廉針車)';
            end;

            eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 1]].Merge;
            eclApp.Cells[Row_RYStart, 1] := UpperCase(StringReplace(Lean, '-', ' ', [rfReplaceAll]));;
            eclApp.Cells[Row_RYStart, 1].ShrinkToFit := true;

            eclApp.Range[eclApp.Cells[Row_RYStart, 12], eclApp.Cells[Row, 12]].Interior.Color := $0099FFFF;
            eclApp.Range[eclApp.Cells[Row_RYStart, 14], eclApp.Cells[Row, 14]].Interior.Color := $0099FFFF;
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 6]].Merge;
            eclApp.Cells[Row, 2] := '提前　天 (SOM　NGAY)';
            eclApp.Cells[Row, 8] := 'TC :';
            eclApp.Cells[Row, 9] := Total;
            Inc(DateSum, Total);
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 14]].Interior.Color := $00FFFFCC;

            eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[1].LineStyle := xlContinuous;
            eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[2].LineStyle := xlContinuous;
            eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[3].LineStyle := xlContinuous;
            eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[4].LineStyle := xlContinuous;

            eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row+1, 1]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row_RYStart, 2], eclApp.Cells[Row+1, 14]].BorderAround(xlContinuous, xlMedium);

            Inc(Row);
            eclApp.Cells[Row, 8] := 'TC :';
            eclApp.Cells[Row, 9] := DateSum;
            eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Interior.Color := $00FFFFCC;

            eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
            eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 14]].BorderAround(xlContinuous, xlMedium);

            Inc(Row);
            eclApp.Cells[Row, 1] := '1. 大底 / 中底 / 鞋面，比照以上送料時間提前4小時送料到成型2樓備料區';
            eclApp.Range[eclApp.Cells[Row, 13], eclApp.Cells[Row, 14]].Merge;
            eclApp.Cells[Row, 13] := 'T-DCC-022A';
            eclApp.Cells[Row, 13].ShrinkToFit := true;
            eclApp.Cells[Row+1, 1] := '　DE LON / D TRUNG / M GIAY THEO TG GO LC CAN GIAO HANG QUA DAU CHUYEN GO TRUOC 4 TIENG';
            eclApp.Cells[Row+2, 1] := '2. 大車按此成型生產時間提前2小時送料到成型各組別';
            eclApp.Cells[Row+3, 1] := '　CCSU SO VOI THOI GIAN BEN GO LEN CHUYEN CAN GIAO HANG TRUOC 2 TIENG';

            eclApp.Range[eclApp.Cells[Row+5, 1], eclApp.Cells[Row+5, 2]].Merge;
            eclApp.Cells[Row+5, 1] := 'Chu Quan Bo Phan';
            eclApp.Range[eclApp.Cells[Row+6, 1], eclApp.Cells[Row+6, 2]].Merge;
            eclApp.Cells[Row+6, 1] := '部門主管';

            eclApp.Range[eclApp.Cells[Row+5, 3], eclApp.Cells[Row+5, 5]].Merge;
            eclApp.Cells[Row+5, 3] := 'Chu Quan CCS';
            eclApp.Range[eclApp.Cells[Row+6, 3], eclApp.Cells[Row+6, 5]].Merge;
            eclApp.Cells[Row+6, 3] := '大車主管';

            eclApp.Range[eclApp.Cells[Row+5, 7], eclApp.Cells[Row+5, 8]].Merge;
            eclApp.Cells[Row+5, 7] := 'Chu Quan Xuong';
            eclApp.Range[eclApp.Cells[Row+6, 7], eclApp.Cells[Row+6, 8]].Merge;
            eclApp.Cells[Row+6, 7] := '棟別主管';

            eclApp.Cells[Row+5, 11] := 'Chu Quan DV';
            eclApp.Cells[Row+6, 11] := '單位主管';

            eclApp.Range[eclApp.Cells[Row+5, 13], eclApp.Cells[Row+5, 14]].Merge;
            eclApp.Cells[Row+5, 13] := 'Lap Bieu';
            eclApp.Range[eclApp.Cells[Row+6, 13], eclApp.Cells[Row+6, 14]].Merge;
            eclApp.Cells[Row+6, 13] := '制表';

            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, 14]].ShrinkToFit := true;
            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+6, 14]].Font.Name := 'Arial';
            eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[Row+6, 14]].Font.Size := 11;
            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+6, 14]].HorizontalAlignment := xlHAlignCenter;
            eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+6, 14]].VerticalAlignment := xlCenter;
            eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row+3, 1]].HorizontalAlignment := xlHAlignLeft;
          end;

          if (WorkBook.WorkSheets.Count < SheetIndex) then
            WorkBook.Worksheets.Add(After := WorkBook.WorkSheets[WorkBook.WorkSheets.Count]);
          eclApp.WorkSheets[SheetIndex].Name := FieldByName('Building').AsString;
          WorkSheet := eclApp.WorkSheets[SheetIndex];
          WorkSheet.Activate;

          Row := 1;
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Merge;
          eclApp.Cells[Row, 1] := 'BANG KE HOACH SAN XUAT';
          eclApp.Cells[Row, 1].Font.Size := 20;
          eclApp.Cells[Row, 1].Font.Bold := true;

          Inc(Row);
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Merge;
          eclApp.Cells[Row, 1] := FieldByName('Building').AsString + '棟 日計畫';
          eclApp.Cells[Row, 1].Font.Size := 20;
          eclApp.Cells[Row, 1].Font.Bold := true;

          Inc(Row);
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 2]].Merge;
          eclApp.Cells[Row, 1] := '派工時間 / TGKH :';
          eclApp.Cells[Row, 1].Font.Size := 10;
          eclApp.Range[eclApp.Cells[Row, 3], eclApp.Cells[Row, 4]].Merge;
          eclApp.Cells[Row, 3] := FormatDateTime('M月d日', DTP1.Date);
          eclApp.Cells[Row, 14] := FormatDateTime('M月d日', FieldByName('PlanDate').AsDateTime);

          Inc(Row);
          eclApp.Columns[1].ColumnWidth := 9;
          eclApp.Cells[Row, 1] := '線別 / TO';
          eclApp.Cells[Row, 1].ShrinkToFit := true;
          eclApp.Columns[2].ColumnWidth := 17.5;
          eclApp.Cells[Row, 2] := 'RY';
          eclApp.Cells[Row, 2].ShrinkToFit := true;
          eclApp.Columns[3].ColumnWidth := 6;
          eclApp.Cells[Row, 3] := '工廠' + #10 + '出貨日' + #10 + 'XXH';
          eclApp.Cells[Row, 3].ShrinkToFit := true;
          eclApp.Columns[4].ColumnWidth := 6;
          eclApp.Cells[Row, 4] := '類型' + #10 + 'DTT';
          eclApp.Cells[Row, 4].ShrinkToFit := true;
          eclApp.Columns[5].ColumnWidth := 6;
          eclApp.Cells[Row, 5] := '鞋面' + #10 + 'MG';
          eclApp.Cells[Row, 5].ShrinkToFit := true;
          eclApp.Columns[6].ColumnWidth := 10;
          eclApp.Cells[Row, 6] := '型體' + #10 + 'SKU#';
          eclApp.Cells[Row, 6].ShrinkToFit := true;
          eclApp.Columns[7].ColumnWidth := 5.5;
          eclApp.Cells[Row, 7] := '訂單' + #10 + '雙數' + #10 + 'SL DH';
          eclApp.Cells[Row, 7].ShrinkToFit := true;
          eclApp.Columns[8].ColumnWidth := 12;
          eclApp.Cells[Row, 8] := '斬刀' + #10 + 'LY';
          eclApp.Cells[Row, 8].ShrinkToFit := true;
          eclApp.Columns[9].ColumnWidth := 5.5;
          eclApp.Cells[Row, 9] := '派工' + #10 + '雙數' + #10 + 'SL KH';
          eclApp.Cells[Row, 9].ShrinkToFit := true;
          eclApp.Columns[10].ColumnWidth := 9;
          eclApp.Cells[Row, 10] := '迴轉' + #10 + 'TUA';
          eclApp.Cells[Row, 10].ShrinkToFit := true;
          eclApp.Columns[11].ColumnWidth := 10;
          eclApp.Cells[Row, 11] := '楦頭' + #10 + 'FOM';
          eclApp.Cells[Row, 11].ShrinkToFit := true;
          eclApp.Columns[12].ColumnWidth := 12;
          eclApp.Cells[Row, 12] := '送料時間' + #10 + 'THOI GIAN GIAO HANG';
          eclApp.Cells[Row, 12].ShrinkToFit := true;
          eclApp.Columns[13].ColumnWidth := 3.5;
          eclApp.Cells[Row, 13] := '序號' + #10 + 'STT';
          eclApp.Cells[Row, 13].ShrinkToFit := true;
          eclApp.Columns[14].ColumnWidth := 8.2;
          eclApp.Cells[Row, 14] := '成型' + #10 + '生產時間' + #10 + 'TGGO SX';
          eclApp.Cells[Row, 14].ShrinkToFit := true;

          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Borders[1].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Borders[2].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Borders[3].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Borders[4].LineStyle := xlContinuous;

          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 14]].BorderAround(xlContinuous, xlMedium);

          Building := FieldByName('Building').AsString;
          Lean := FieldByName('Building').AsString + '-' + FieldByName('Lean').AsString;
          Seq := 0;
          Row_RYStart := Row + 1;
        end;

        if (FieldByName('Building').AsString + '-' + FieldByName('Lean').AsString <> Lean) then
        begin
          Row := RY_EndRow;
          VungLiem := false;
          for i := 0 to Length(VungLiemMay)-1 do
          begin
            if (VungLiemMay[i] = UpperCase(Lean)) then
            begin
              VungLiem := true;
              Break;
            end;
          end;

          Inc(Row, 2);
          if (VungLiem) then
          begin
            Inc(Row);
            eclApp.Range[eclApp.Cells[Row-1, 3], eclApp.Cells[Row-1, 8]].Merge;
            eclApp.Cells[Row-1, 3] := 'VUNG LIEM MAY (永廉針車)';
          end;

          eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 1]].Merge;
          eclApp.Cells[Row_RYStart, 1] := UpperCase(StringReplace(Lean, '-', ' ', [rfReplaceAll]));
          eclApp.Cells[Row_RYStart, 1].ShrinkToFit := true;

          eclApp.Range[eclApp.Cells[Row_RYStart, 12], eclApp.Cells[Row, 12]].Interior.Color := $0099FFFF;
          eclApp.Range[eclApp.Cells[Row_RYStart, 14], eclApp.Cells[Row, 14]].Interior.Color := $0099FFFF;
          eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 6]].Merge;
          eclApp.Cells[Row, 2] := '提前　天 (SOM　NGAY)';
          eclApp.Cells[Row, 8] := 'TC :';
          eclApp.Cells[Row, 9] := Total;
          Inc(DateSum, Total);
          eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 14]].Interior.Color := $00FFFFCC;

          eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[1].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[2].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[3].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[4].LineStyle := xlContinuous;

          eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row+1, 1]].BorderAround(xlContinuous, xlMedium);
          eclApp.Range[eclApp.Cells[Row_RYStart, 2], eclApp.Cells[Row+1, 14]].BorderAround(xlContinuous, xlMedium);

          Lean := FieldByName('Building').AsString + '-' + FieldByName('Lean').AsString;
          Row_RYStart := Row + 1;  
          eclApp.Cells[Row + 1, 1] := FieldByName('Building').AsString + ' ' + UpperCase(FieldByName('Lean').AsString);
          RY := '';
          Total := 0;
          Seq := 0;
        end;

        Inc(Row);
        if (FieldByName('RY').AsString <> RY) then
        begin
          RY_StartRow := Row;
          eclApp.Cells[Row, 2] := FieldByName('RY').AsString;
          eclApp.Cells[Row, 3].NumberFormatLocal := '@';
          eclApp.Cells[Row, 3] := FormatDateTime('M/d', FieldByName('ShipDate').AsDateTime);
          eclApp.Cells[Row, 4] := FieldByName('NT').AsString;
          eclApp.Cells[Row, 5] := FieldByName('BUYNO').AsString;
          eclApp.Cells[Row, 6] := FieldByName('ARTICLE').AsString;
          eclApp.Cells[Row, 7] := FieldByName('RYPairs').AsInteger;
          eclApp.Cells[Row, 8] := FieldByName('DAOMH').AsString;
          eclApp.Cells[Row, 9] := FieldByName('Pairs').AsInteger;
          if (FieldByName('CycleStart').AsInteger <> FieldByName('CycleEnd').AsInteger) then
            eclApp.Cells[Row, 10] := 'T' + FieldByName('CycleStart').AsString + '-T' + FieldByName('CycleEnd').AsString
          else
            eclApp.Cells[Row, 10] := 'T' + FieldByName('CycleStart').AsString;
          eclApp.Cells[Row, 11] := FieldByName('XTMH').AsString;
          eclApp.Cells[Row, 12] := FormatDateTime('M/d', FieldByName('PlanDate').AsDateTime) + ' ' + FieldByName('DeliveryTime').AsString;
          if (FieldByName('Seq').AsInteger <> Seq) then
          begin
            eclApp.Cells[Row, 13] := FieldByName('Seq').AsInteger;
            Seq := FieldByName('Seq').AsInteger;
          end;
          eclApp.Cells[Row, 14] := FieldByName('AssemblyTime').AsString;
          Inc(Total, FieldByName('Pairs').AsInteger);

          if (FieldByName('DDGB').AsString = 'CHI') OR (FieldByName('DDGB').AsString = 'KOR') OR (FieldByName('DDGB').AsString = 'TKY') OR (FieldByName('DDGB').AsString = 'USA') then
          begin
            Inc(Row);
            if (FieldByName('DDGB').AsString = 'CHI') then
              eclApp.Cells[Row, 2] := 'CHINA'
            else if (FieldByName('DDGB').AsString = 'KOR') then
              eclApp.Cells[Row, 2] := 'SOUTHKOREA'
            else if (FieldByName('DDGB').AsString = 'TKY') then
              eclApp.Cells[Row, 2] := 'TURKEY'
            else if (FieldByName('DDGB').AsString = 'USA') then
              eclApp.Cells[Row, 2] := 'USA';
            eclApp.Cells[Row, 2].Interior.Color := $00DCCD92;

            if (FieldByName('Remark').AsString <> '') then
            begin
              eclApp.Range[eclApp.Cells[Row, 3], eclApp.Cells[Row, 8]].Merge;
              eclApp.Cells[Row, 3] := FieldByName('Remark').AsString;
            end;

            Inc(Row);
            eclApp.Cells[Row, 2] := 'TC ' + FieldByName('MaxCycle').AsString + 'T';
          end
          else begin
            Inc(Row);
            eclApp.Cells[Row, 2] := 'TC ' + FieldByName('MaxCycle').AsString + 'T';
            if (FieldByName('Remark').AsString <> '') then
            begin
              eclApp.Range[eclApp.Cells[Row, 3], eclApp.Cells[Row, 8]].Merge;
              eclApp.Cells[Row, 3] := FieldByName('Remark').AsString;
            end;
          end;
          RY_EndRow := Row;
          RY := FieldByName('RY').AsString;
          SameCounter := 1;
        end
        else begin
          Row := RY_StartRow + SameCounter;
          eclApp.Cells[Row, 9] := FieldByName('Pairs').AsInteger;
          if (FieldByName('CycleStart').AsInteger <> FieldByName('CycleEnd').AsInteger) then
            eclApp.Cells[Row, 10] := 'T' + FieldByName('CycleStart').AsString + '-T' + FieldByName('CycleEnd').AsString
          else
            eclApp.Cells[Row, 10] := 'T' + FieldByName('CycleStart').AsString;
          eclApp.Cells[Row, 12] := FormatDateTime('M/d', FieldByName('PlanDate').AsDateTime) + ' ' + FieldByName('DeliveryTime').AsString;
          if (FieldByName('Seq').AsInteger <> Seq) then
          begin
            eclApp.Cells[Row, 13] := FieldByName('Seq').AsInteger;
            Seq := FieldByName('Seq').AsInteger;
          end;
          eclApp.Cells[Row, 14] := FieldByName('AssemblyTime').AsString;
          if (Row > RY_EndRow) then
            RY_EndRow := Row;
          Inc(Total, FieldByName('Pairs').AsInteger);
          Inc(SameCounter);
        end;

        Next;
      end;

      Row := RY_EndRow;
      VungLiem := false;
      for i := 0 to Length(VungLiemMay)-1 do
      begin
        if (VungLiemMay[i] = FieldByName('Building').AsString + '-' + UpperCase(FieldByName('Lean').AsString)) then
        begin
          VungLiem := true;
          Break;
        end;
      end;

      Inc(Row, 2);
      if (VungLiem) then
      begin
        Inc(Row);
        eclApp.Range[eclApp.Cells[Row-1, 3], eclApp.Cells[Row-1, 8]].Merge;
        eclApp.Cells[Row-1, 3] := 'VUNG LIEM MAY (永廉針車)';
      end;

      eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 1]].Merge;
      eclApp.Cells[Row_RYStart, 1] := FieldByName('Building').AsString + ' ' + UpperCase(FieldByName('Lean').AsString);
      eclApp.Cells[Row_RYStart, 1].ShrinkToFit := true;

      eclApp.Range[eclApp.Cells[Row_RYStart, 12], eclApp.Cells[Row, 12]].Interior.Color := $0099FFFF;
      eclApp.Range[eclApp.Cells[Row_RYStart, 14], eclApp.Cells[Row, 14]].Interior.Color := $0099FFFF;
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 6]].Merge;
      eclApp.Cells[Row, 2] := '提前　天 (SOM　NGAY)';
      eclApp.Cells[Row, 8] := 'TC :';
      eclApp.Cells[Row, 9] := Total;
      Inc(DateSum, Total);
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 14]].Interior.Color := $00FFFFCC;

      eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[1].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[2].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[3].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row, 14]].Borders[4].LineStyle := xlContinuous;

      eclApp.Range[eclApp.Cells[Row_RYStart, 1], eclApp.Cells[Row+1, 1]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row_RYStart, 2], eclApp.Cells[Row+1, 14]].BorderAround(xlContinuous, xlMedium);

      Inc(Row);
      eclApp.Cells[Row, 8] := 'TC :';
      eclApp.Cells[Row, 9] := DateSum;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 14]].Interior.Color := $00FFFFCC;

      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 1]].BorderAround(xlContinuous, xlMedium);
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row, 14]].BorderAround(xlContinuous, xlMedium);

      Inc(Row);
      eclApp.Cells[Row, 1] := '1. 大底 / 中底 / 鞋面，比照以上送料時間提前4小時送料到成型2樓備料區';
      eclApp.Range[eclApp.Cells[Row, 13], eclApp.Cells[Row, 14]].Merge;
      eclApp.Cells[Row, 13] := 'T-DCC-022A';
      eclApp.Cells[Row, 13].ShrinkToFit := true;
      eclApp.Cells[Row+1, 1] := '　DE LON / D TRUNG / M GIAY THEO TG GO LC CAN GIAO HANG QUA DAU CHUYEN GO TRUOC 4 TIENG';
      eclApp.Cells[Row+2, 1] := '2. 大車按此成型生產時間提前2小時送料到成型各組別';
      eclApp.Cells[Row+3, 1] := '　CCSU SO VOI THOI GIAN BEN GO LEN CHUYEN CAN GIAO HANG TRUOC 2 TIENG';

      eclApp.Range[eclApp.Cells[Row+5, 1], eclApp.Cells[Row+5, 2]].Merge;
      eclApp.Cells[Row+5, 1] := 'Chu Quan Bo Phan';
      eclApp.Range[eclApp.Cells[Row+6, 1], eclApp.Cells[Row+6, 2]].Merge;
      eclApp.Cells[Row+6, 1] := '部門主管';

      eclApp.Range[eclApp.Cells[Row+5, 3], eclApp.Cells[Row+5, 5]].Merge;
      eclApp.Cells[Row+5, 3] := 'Chu Quan CCS';
      eclApp.Range[eclApp.Cells[Row+6, 3], eclApp.Cells[Row+6, 5]].Merge;
      eclApp.Cells[Row+6, 3] := '大車主管';

      eclApp.Range[eclApp.Cells[Row+5, 7], eclApp.Cells[Row+5, 8]].Merge;
      eclApp.Cells[Row+5, 7] := 'Chu Quan Xuong';
      eclApp.Range[eclApp.Cells[Row+6, 7], eclApp.Cells[Row+6, 8]].Merge;
      eclApp.Cells[Row+6, 7] := '棟別主管';

      eclApp.Cells[Row+5, 11] := 'Chu Quan DV';
      eclApp.Cells[Row+6, 11] := '單位主管';

      eclApp.Range[eclApp.Cells[Row+5, 13], eclApp.Cells[Row+5, 14]].Merge;
      eclApp.Cells[Row+5, 13] := 'Lap Bieu';
      eclApp.Range[eclApp.Cells[Row+6, 13], eclApp.Cells[Row+6, 14]].Merge;
      eclApp.Cells[Row+6, 13] := '制表';

      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, 14]].ShrinkToFit := true;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+6, 14]].Font.Name := 'Arial';
      eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[Row+6, 14]].Font.Size := 11;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+6, 14]].HorizontalAlignment := xlHAlignCenter;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row+6, 14]].VerticalAlignment := xlCenter;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row+3, 1]].HorizontalAlignment := xlHAlignLeft;
    end;

    Self.Cursor := crDefault;
    ShowMessage('Successful');
    eclApp.Visible := True;
    Close;
  except on F:Exception do
    begin
      eclApp.DisplayAlerts := false;
      eclApp.WorkBooks.Close;
      eclApp.Quit;
      Self.Cursor := crDefault;
      ShowMessage(F.Message);
      Close;
    end;
  end;
end;

procedure TExportDialog.DTP1Change(Sender: TObject);
begin
  DTP2.Date := DTP1.Date + 2;
end;

end.
