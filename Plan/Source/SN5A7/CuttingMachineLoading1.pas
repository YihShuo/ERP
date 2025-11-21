unit CuttingMachineLoading1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, ExtCtrls, DB, DBTables, DateUtils, ComObj,
  ExcelXP;

type
  TCuttingMachineLoading = class(TForm)
    Panel1: TPanel;
    DTP1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Label2: TLabel;
    Button1: TButton;
    Query1: TQuery;
    QSearch: TQuery;
    GroupBox1: TGroupBox;
    CB1: TCheckBox;
    CB2: TCheckBox;
    Button2: TButton;
    GroupBox2: TGroupBox;
    CB3: TCheckBox;
    CB4: TCheckBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure CB2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CB3Click(Sender: TObject);
    procedure CB4Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
  private
    LeanID: array of string;
    T1, T2, T3, T4, T5: string;
    S1, S2, S3, S4, S5: string;
    procedure SetLanguages;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CuttingMachineLoading: TCuttingMachineLoading;

implementation

uses main1;

{$R *.dfm}

procedure TCuttingMachineLoading.SetLanguages;
begin
  if (ComboBox3.ItemIndex = 0) then
  begin
    T1 := '布料裁斷刀數';
    T2 := '皮料裁斷刀數';
    T3 := '泡棉裁斷刀數';
    T4 := '預計裁斷時間';
    T5 := '裁斷機台數量';
    S1 := '總布料裁斷刀數';
    S2 := '總皮料裁斷刀數';
    S3 := '總泡棉裁斷刀數';
    S4 := '總預計裁斷時間';
    S5 := '總裁斷機台數量';
  end
  else if (ComboBox3.ItemIndex = 1) then
  begin
    T1 := 'NUMBER OF CUTS(FABRIC)';
    T2 := 'NUMBER OF CUTS(LEATHER)';
    T3 := 'NUMBER OF CUTS(FOAM)';
    T4 := 'TIME';
    T5 := 'NUMBER OF MACHINES';
    S1 := 'TOTAL NUMBER OF CUTS(FABRIC)';
    S2 := 'TOTAL NUMBER OF CUTS(LEATHER)';
    S3 := 'TOTAL NUMBER OF CUTS(FOAM)';
    S4 := 'TOTAL TIME';
    S5 := 'TOTAL NUMBER OF MACHINES';
  end
  else if (ComboBox3.ItemIndex = 2) then
  begin
    T1 := 'SO DAO CHAT PHU LIEU';
    T2 := 'SO DAO CHAT DA';
    T3 := 'SO DAO CHAT MOUSE';
    T4 := 'THOI GIAN';
    T5 := 'SO LUONG MAY';
    S1 := 'TONG SO DAO CHAT PHU LIEU';
    S2 := 'TONG SO DAO CHAT DA';
    S3 := 'TONG SO DAO CHAT MOUSE';
    S4 := 'TONG THOI GIAN';
    S5 := 'TONG SO LUONG MAY';
  end;
end;

procedure TCuttingMachineLoading.Button1Click(Sender: TObject);
var
  MachineType: string;
  SDate, EDate: TDate;
  Col, Row, FabricSum, LeatherSum, FoamSum, MachineSum: integer;
  Sum: Double;
begin
  MachineType := '';
  if (ComboBox1.ItemIndex = 1) then
    MachineType := 'MC'
  else if (ComboBox1.ItemIndex = 2) then
    MachineType := 'AC'
  else if (ComboBox1.ItemIndex = 3) then
    MachineType := 'Lectra';

  SDate := StartOfTheMonth(DTP1.Date);
  EDate := EndOfTheMonth(DTP1.Date);

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('DECLARE @StartDate DATETIME');
    SQL.Add('DECLARE @EndDate DATETIME');
    SQL.Add('SET @StartDate = CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''')');
    SQL.Add('SET @EndDate = CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', EDate) + ''')');

    SQL.Add('WITH TEMPTAB(DATE) AS (');
    SQL.Add('  SELECT @StartDate');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS DATE FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= @EndDate');
    SQL.Add(')');
    SQL.Add('SELECT CAST(MONTH(DATE) AS VARCHAR) + ''/'' + CAST(DAY(DATE) AS VARCHAR) AS DATE1 FROM TEMPTAB');
    Active := true;

    if (RecordCount = 0) then
      StringGrid1.ColCount := 2
    else
      StringGrid1.ColCount := RecordCount + 3;

    StringGrid1.Rows[0].Clear;
    Col := 1;
    while not Eof do
    begin
      StringGrid1.Cells[Col+1, 0] := FieldByName('DATE1').AsString;
      Inc(Col);
      Next;
    end;

    Active := false;
    SQL.Clear;
    if (CB3.Checked) then
    begin
      SQL.Add('SELECT ID, MachineName FROM BMachine');
      SQL.Add('WHERE 1 = 1');
      if (ComboBox1.ItemIndex >= 1) then
        SQL.Add('AND MachineType = ''' + MachineType + '''');
      if (ComboBox2.ItemIndex >= 1) then
        SQL.Add('AND DepNo = ''' + LeanID[ComboBox2.ItemIndex-1] + '''');
      SQL.Add('ORDER BY MachineType, DepNo, ID');
    end
    else if (CB4.Checked) then
    begin
      SQL.Add('SELECT * FROM (');
      SQL.Add('  SELECT ID, MachineName, MachineType FROM BMachine WHERE MachineType <> ''MC''');
      if (ComboBox2.ItemIndex >= 1) then
        SQL.Add('  AND DepNo = ''' + LeanID[ComboBox2.ItemIndex-1] + '''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT ID, ''LEAN'' + RIGHT(sumline, 2) AS MachineName, ''MC'' AS MachineType FROM BDepartment');
      SQL.Add('  WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
      if (ComboBox2.ItemIndex >= 1) then
        SQL.Add('  AND ID = ''' + LeanID[ComboBox2.ItemIndex-1] + '''');
      SQL.Add(') AS LeanData');
      SQL.Add('WHERE 1 = 1');
      if (ComboBox1.ItemIndex >= 1) then
        SQL.Add('AND MachineType = ''' + MachineType + '''');
      SQL.Add('ORDER BY MachineType, ID');
    end;
    Active := true;

    if (RecordCount = 0) then
      StringGrid1.RowCount := 11
    else
      StringGrid1.RowCount := RecordCount*5 + 6;

    for Row:=1 to StringGrid1.RowCount-1 do
    begin
      StringGrid1.Rows[Row].Clear;
    end;

    StringGrid1.Cells[StringGrid1.ColCount-1, 0] := 'Total';
    StringGrid1.Cells[0, StringGrid1.RowCount-3] := 'Total';
    StringGrid1.Cells[1, StringGrid1.RowCount-5] := S1;
    StringGrid1.Cells[1, StringGrid1.RowCount-4] := S2;
    StringGrid1.Cells[1, StringGrid1.RowCount-3] := S3;
    StringGrid1.Cells[1, StringGrid1.RowCount-2] := S4;
    StringGrid1.Cells[1, StringGrid1.RowCount-1] := S5;

    if (RecordCount = 0) then
    begin
      StringGrid1.Cells[0, 3] := 'No Machine';
      StringGrid1.Cells[1, 1] := T1;
      StringGrid1.Cells[1, 2] := T2;
      StringGrid1.Cells[1, 3] := T3;
      StringGrid1.Cells[1, 4] := T4;
      StringGrid1.Cells[1, 5] := T5;
    end;

    Row := 2;
    while not Eof do
    begin
      StringGrid1.Cells[0, Row+1] := FieldByName('MachineName').AsString;
      StringGrid1.Cells[1, Row-1] := T1;
      StringGrid1.Cells[1, Row] := T2;
      StringGrid1.Cells[1, Row+1] := T3;
      StringGrid1.Cells[1, Row+2] := T4;
      StringGrid1.Cells[1, Row+3] := T5;
      Inc(Row, 5);
      Next;
    end;
  end;

  with Query1 do
  begin
    if (CB3.Checked) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT DATEDIFF(D, ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''', CONVERT(VARCHAR, MachineDate, 111))+1 AS COL, RowID AS ROW, MachineName, 1 AS MachineQty, FabricCut, LeatherCut, FoamCut,');
      SQL.Add('CAST(');
      SQL.Add('  CASE WHEN FabricCutNum > 0 THEN CEILING(FabricCut*10.0/FabricCutNum)/10 ELSE 0 END +');
      SQL.Add('  CASE WHEN LeatherCutNum > 0 THEN CEILING(LeatherCut*10.0/LeatherCutNum)/10 ELSE 0 END +');
      SQL.Add('  CASE WHEN FoamCutNum > 0 THEN CEILING(FoamCut*10.0/FoamCutNum)/10 ELSE 0 END AS FLOAT');
      SQL.Add(') AS HR FROM (');
      if (CB1.Checked) then
      begin
        SQL.Add('  SELECT CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) AS MachineDate, BMachine.RowID, BMachine.MachineName, ISNULL(BMachine.FabricCutNum, 0) AS FabricCutNum,');
        SQL.Add('  ISNULL(BMachine.LeatherCutNum, 0) AS LeatherCutNum, ISNULL(BMachine.FoamCutNum, 0) AS FoamCutNum,');
      end
      else if (CB2.Checked) then
      begin
        SQL.Add('  SELECT CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) AS MachineDate, BMachine.RowID, BMachine.MachineName, ISNULL(BMachine.FabricCutNum, 0) AS FabricCutNum,');
        SQL.Add('  ISNULL(BMachine.LeatherCutNum, 0) AS LeatherCutNum, ISNULL(BMachine.FoamCutNum, 0) AS FoamCutNum,');
      end;
      SQL.Add('  SUM(ISNULL(CASE WHEN CutDispatchS.CLBH NOT LIKE ''B%'' AND CutDispatchS.CLBH NOT LIKE ''F%'' AND CutDispatchS.CLBH NOT LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS FabricCut,');
      SQL.Add('  SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''F%'' OR CutDispatchS.CLBH LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS LeatherCut,');
      SQL.Add('  SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''B%'' THEN CutDispatchS.CutNum END, 0)) AS FoamCut FROM CutDispatchS');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT DLNO, ZLBH, BWBH, SIZE, CLBH, Machine, MIN(MachineDate) AS MachineDate FROM CutDispatchSS');
      SQL.Add('    GROUP BY DLNO, ZLBH, BWBH, SIZE, CLBH, Machine');
      SQL.Add('  ) AS CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE AND CutDispatchSS.CLBH = CutDispatchS.CLBH');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT ROW_NUMBER() OVER(ORDER BY MachineType, DepNo, ID) AS RowID, BMachine.* FROM BMachine');
      SQL.Add('    WHERE 1 = 1');
      if (ComboBox1.ItemIndex >= 1) then
        SQL.Add('    AND MachineType = ''' + MachineType + '''');
      if (ComboBox2.ItemIndex >= 1) then
        SQL.Add('    AND DepNo = ''' + LeanID[ComboBox2.ItemIndex-1] + '''');
      SQL.Add('  ) AS BMachine ON BMachine.ID = CutDispatchSS.Machine');
      if (CB1.Checked) then
      begin
        SQL.Add('  WHERE CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''');
        SQL.Add('  GROUP BY CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111), BMachine.RowID, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum');
      end
      else if (CB2.Checked) then
      begin
        SQL.Add('  WHERE CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''');
        SQL.Add('  GROUP BY CONVERT(VARCHAR, CutDispatchS.ScanDate, 111), BMachine.RowID, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum');
      end;
      SQL.Add(') AS MachineData');
      SQL.Add('WHERE MachineName IS NOT NULL');
      Active := true;
    end
    else if (CB4.Checked) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT DATEDIFF(D, ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''', CONVERT(VARCHAR, MachineDate, 111))+1 AS COL, RowID AS ROW, Lean, MachineQty, FabricCut, LeatherCut, FoamCut,');
      SQL.Add('CAST(');
      SQL.Add('  CASE WHEN FabricCutNum > 0 THEN CEILING(FabricCut*10.0/FabricCutNum)/10 ELSE 0 END +');
      SQL.Add('  CASE WHEN LeatherCutNum > 0 THEN CEILING(LeatherCut*10.0/LeatherCutNum)/10 ELSE 0 END +');
      SQL.Add('  CASE WHEN FoamCutNum > 0 THEN CEILING(FoamCut*10.0/FoamCutNum)/10 ELSE 0 END AS FLOAT');
      SQL.Add(') AS HR FROM (');
      SQL.Add('  SELECT MachineDate, RowID, Lean, MachineQty,');
      SQL.Add('  SUM(FabricCutNum) AS FabricCutNum, SUM(LeatherCutNum) AS LeatherCutNum, SUM(FoamCutNum) AS FoamCutNum,');
      SQL.Add('  SUM(FabricCut) AS FabricCut, SUM(LeatherCut) AS LeatherCut, SUM(FoamCut) AS FoamCut FROM (');
      SQL.Add('    SELECT ROW_NUMBER() OVER(ORDER BY MachineType, ID) AS RowID, ID, Lean, MachineQty FROM (');
      SQL.Add('      SELECT * FROM (');
      SQL.Add('        SELECT BDepartment.ID, ''LEAN'' + RIGHT(sumline, 2) AS Lean, ''MC'' AS MachineType, COUNT(BMachine.ID) AS MachineQty FROM BDepartment');
      SQL.Add('        LEFT JOIN BMachine ON BMachine.DepNo = BDepartment.ID');
      SQL.Add('        WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND BDepartment.GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
      if (ComboBox2.ItemIndex >= 1) then
        SQL.Add('        AND BDepartment.ID = ''' + LeanID[ComboBox2.ItemIndex-1] + '''');
      SQL.Add('        GROUP BY BDepartment.ID, sumline');
      SQL.Add('        UNION ALL');
      SQL.Add('        SELECT ID, MachineName AS Lean, MachineType, 1 AS MachineQty FROM BMachine WHERE MachineType <> ''MC''');
      if (ComboBox2.ItemIndex >= 1) then
        SQL.Add('        AND DepNo = ''' + LeanID[ComboBox2.ItemIndex-1] + '''');
      SQL.Add('      ) AS BDepartment');
      if (ComboBox1.ItemIndex >= 1) then
        SQL.Add('      WHERE MachineType = ''' + MachineType + '''');
      SQL.Add('    ) AS BDepartment');
      SQL.Add('  ) AS BDepartment');
      SQL.Add('  LEFT JOIN (');
      if (CB1.Checked) then
      begin
        SQL.Add('    SELECT CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) AS MachineDate, BMachine.MachineName, BMachine.DepNo,');
        SQL.Add('    ISNULL(BMachine.FabricCutNum, 0) AS FabricCutNum, ISNULL(BMachine.LeatherCutNum, 0) AS LeatherCutNum, ISNULL(BMachine.FoamCutNum, 0) AS FoamCutNum,');
      end
      else if (CB2.Checked) then
      begin
        SQL.Add('    SELECT CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) AS MachineDate, BMachine.MachineName, BMachine.DepNo,');
        SQL.Add('    ISNULL(BMachine.FabricCutNum, 0) AS FabricCutNum, ISNULL(BMachine.LeatherCutNum, 0) AS LeatherCutNum, ISNULL(BMachine.FoamCutNum, 0) AS FoamCutNum,');
      end;
      SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH NOT LIKE ''B%'' AND CutDispatchS.CLBH NOT LIKE ''F%'' AND CutDispatchS.CLBH NOT LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS FabricCut,');
      SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''F%'' OR CutDispatchS.CLBH LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS LeatherCut,');
      SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''B%'' THEN CutDispatchS.CutNum END, 0)) AS FoamCut FROM CutDispatchS');
      SQL.Add('    LEFT JOIN (');
      SQL.Add('      SELECT DLNO, ZLBH, BWBH, SIZE, CLBH, Machine, MIN(MachineDate) AS MachineDate FROM CutDispatchSS');
      SQL.Add('      GROUP BY DLNO, ZLBH, BWBH, SIZE, CLBH, Machine');
      SQL.Add('    ) AS CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE AND CutDispatchSS.CLBH = CutDispatchS.CLBH');
      SQL.Add('    LEFT JOIN (');
      SQL.Add('      SELECT ID, MachineName, FabricCutNum, LeatherCutNum, FoamCutNum, CASE WHEN MachineType = ''MC'' THEN DepNo ELSE ID END AS DepNo FROM BMachine');
      SQL.Add('      WHERE 1 = 1');
      if (ComboBox1.ItemIndex >= 1) then
        SQL.Add('      AND MachineType = ''' + MachineType + '''');
      if (ComboBox2.ItemIndex >= 1) then
        SQL.Add('      AND DepNo = ''' + LeanID[ComboBox2.ItemIndex-1] + '''');
      SQL.Add('    ) AS BMachine ON BMachine.ID = CutDispatchSS.Machine');
      if (CB1.Checked) then
      begin
        SQL.Add('    WHERE CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''');
        SQL.Add('    GROUP BY CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111), BMachine.DepNo, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum');
      end
      else if (CB2.Checked) then
      begin
        SQL.Add('    WHERE CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''');
        SQL.Add('    GROUP BY CONVERT(VARCHAR, CutDispatchS.ScanDate, 111), BMachine.DepNo, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum');
      end;
      SQL.Add('  ) AS MachineData ON MachineData.DepNo = BDepartment.ID');
      SQL.Add('  GROUP BY MachineDate, RowID, Lean, MachineQty');
      SQL.Add(') AS LeanData');
      SQL.Add('WHERE DATEDIFF(D, ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''', CONVERT(VARCHAR, MachineDate, 111)) + 1 IS NOT NULL');
      Active := true;
    end;

    while not Eof do
    begin
      Col := FieldByName('COL').AsInteger + 1;
      Row := (FieldByName('ROW').AsInteger-1)*5 + 1;

      StringGrid1.Cells[Col, Row] := FieldByName('FabricCut').AsString;
      StringGrid1.Cells[Col, Row+1] := FieldByName('LeatherCut').AsString;
      StringGrid1.Cells[Col, Row+2] := FieldByName('FoamCut').AsString;
      StringGrid1.Cells[Col, Row+3] := FieldByName('HR').AsString + ' HR';
      StringGrid1.Cells[Col, Row+4] := FieldByName('MachineQty').AsString;

      Next;
    end;
  end;

  {with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('  SELECT DATEDIFF(D, ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''', CONVERT(VARCHAR, MachineDate, 111))+1 AS COL, RowID AS ROW, MachineName, 1 AS MachineQty, FabricCut, LeatherCut, FoamCut,');
    SQL.Add('  CAST(');
    SQL.Add('    CASE WHEN FabricCutNum > 0 THEN CEILING(FabricCut*10.0/FabricCutNum)/10 ELSE 0 END +');
    SQL.Add('    CASE WHEN LeatherCutNum > 0 THEN CEILING(LeatherCut*10.0/LeatherCutNum)/10 ELSE 0 END +');
    SQL.Add('    CASE WHEN FoamCutNum > 0 THEN CEILING(FoamCut*10.0/FoamCutNum)/10 ELSE 0 END AS FLOAT');
    SQL.Add('  ) AS HR FROM (');
    if (CB1.Checked) then
    begin
      SQL.Add('    SELECT CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) AS MachineDate, BMachine.RowID, BMachine.MachineName, ISNULL(BMachine.FabricCutNum, 0) AS FabricCutNum,');
      SQL.Add('    ISNULL(BMachine.LeatherCutNum, 0) AS LeatherCutNum, ISNULL(BMachine.FoamCutNum, 0) AS FoamCutNum,');
    end
    else if (CB2.Checked) then
    begin
      SQL.Add('    SELECT CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) AS MachineDate, BMachine.RowID, BMachine.MachineName, ISNULL(BMachine.FabricCutNum, 0) AS FabricCutNum,');
      SQL.Add('    ISNULL(BMachine.LeatherCutNum, 0) AS LeatherCutNum, ISNULL(BMachine.FoamCutNum, 0) AS FoamCutNum,');
    end;
    SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH NOT LIKE ''B%'' AND CutDispatchS.CLBH NOT LIKE ''F%'' AND CutDispatchS.CLBH NOT LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS FabricCut,');
    SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''F%'' OR CutDispatchS.CLBH LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS LeatherCut,');
    SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''B%'' THEN CutDispatchS.CutNum END, 0)) AS FoamCut FROM CutDispatchS');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT DLNO, ZLBH, BWBH, SIZE, CLBH, Machine, MIN(MachineDate) AS MachineDate FROM CutDispatchSS');
    SQL.Add('      GROUP BY DLNO, ZLBH, BWBH, SIZE, CLBH, Machine');
    SQL.Add('    ) AS CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE AND CutDispatchSS.CLBH = CutDispatchS.CLBH');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT ROW_NUMBER() OVER(ORDER BY ID) AS RowID, BMachine.* FROM BMachine');
    if (ComboBox1.ItemIndex >= 1) then
      SQL.Add('      WHERE MachineType = ''' + MachineType + '''');
    SQL.Add('    ) AS BMachine ON BMachine.ID = CutDispatchSS.Machine');
    if (CB1.Checked) then
      SQL.Add('    WHERE CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''')
    else if (CB2.Checked) then
      SQL.Add('    WHERE CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''');
    SQL.Add('    AND BMachine.MachineType <> ''MC''');
    if (CB1.Checked) then
      SQL.Add('    GROUP BY CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111), BMachine.RowID, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum')
    else if (CB2.Checked) then
      SQL.Add('    GROUP BY CONVERT(VARCHAR, CutDispatchS.ScanDate, 111), BMachine.RowID, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum');
    SQL.Add('  ) AS Machine1');

    SQL.Add('  UNION ALL');

    SQL.Add('  SELECT DATEDIFF(D, ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''', CONVERT(VARCHAR, MachineDate, 111))+1 AS COL, RowID AS ROW, MachineName, MachineQty, FabricCut, LeatherCut, FoamCut,');
    SQL.Add('  CAST(');
    SQL.Add('    CASE WHEN FabricCutNum > 0 AND MachineQty > 0 THEN CEILING(FabricCut*10.0/FabricCutNum/MachineQty)/10 ELSE 0 END +');
    SQL.Add('    CASE WHEN LeatherCutNum > 0 AND MachineQty > 0 THEN CEILING(LeatherCut*10.0/LeatherCutNum/MachineQty)/10 ELSE 0 END +');
    SQL.Add('    CASE WHEN FoamCutNum > 0 AND MachineQty > 0 THEN CEILING(FoamCut*10.0/FoamCutNum/MachineQty)/10 ELSE 0 END AS FLOAT');
    SQL.Add('  ) AS HR FROM (');
    if (CB1.Checked) then
      SQL.Add('    SELECT CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) AS MachineDate, BMachine.RowID, BMachine.MachineName, ISNULL(BMachineS.MachineQty, 0) AS MachineQty,')
    else if (CB2.Checked) then
      SQL.Add('    SELECT CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) AS MachineDate, BMachine.RowID, BMachine.MachineName, ISNULL(BMachineS.MachineQty, 0) AS MachineQty,');
    SQL.Add('    ISNULL(BMachine.FabricCutNum, 0) AS FabricCutNum, ISNULL(BMachine.LeatherCutNum, 0) AS LeatherCutNum, ISNULL(BMachine.FoamCutNum, 0) AS FoamCutNum,');
    SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH NOT LIKE ''B%'' AND CutDispatchS.CLBH NOT LIKE ''F%'' AND CutDispatchS.CLBH NOT LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS FabricCut,');
    SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''F%'' OR CutDispatchS.CLBH LIKE ''K%'' THEN CutDispatchS.CutNum END, 0)) AS LeatherCut,');
    SQL.Add('    SUM(ISNULL(CASE WHEN CutDispatchS.CLBH LIKE ''B%'' THEN CutDispatchS.CutNum END, 0)) AS FoamCut FROM CutDispatchS');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT DLNO, ZLBH, BWBH, SIZE, CLBH, Machine, MIN(MachineDate) AS MachineDate FROM CutDispatchSS');
    SQL.Add('      GROUP BY DLNO, ZLBH, BWBH, SIZE, CLBH, Machine');
    SQL.Add('    ) AS CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE AND CutDispatchSS.CLBH = CutDispatchS.CLBH');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT ROW_NUMBER() OVER(ORDER BY ID) AS RowID, BMachine.* FROM BMachine');
    if (ComboBox1.ItemIndex >= 1) then
      SQL.Add('      WHERE MachineType = ''' + MachineType + '''');
    SQL.Add('    ) AS BMachine ON BMachine.ID = CutDispatchSS.Machine');
    SQL.Add('    LEFT JOIN BMachineS ON BMachineS.MachineID = BMachine.ID AND BMachineS.MachineDate = CutDispatchSS.MachineDate');
    if (CB1.Checked) then
      SQL.Add('    WHERE CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''')
    else if (CB2.Checked) then
      SQL.Add('    WHERE CONVERT(VARCHAR, CutDispatchS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EDate) + '''');
    SQL.Add('    AND BMachine.MachineType = ''MC''');
    if (CB1.Checked) then
      SQL.Add('    GROUP BY CONVERT(VARCHAR, CutDispatchSS.MachineDate, 111), BMachine.RowID, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum, BMachineS.MachineQty')
    else if (CB2.Checked) then
      SQL.Add('    GROUP BY CONVERT(VARCHAR, CutDispatchS.ScanDate, 111), BMachine.RowID, BMachine.MachineName, BMachine.FabricCutNum, BMachine.LeatherCutNum, BMachine.FoamCutNum, BMachineS.MachineQty');
    SQL.Add('  ) AS Machine2');
    SQL.Add(') AS MachineLoading');
    SQL.Add('ORDER BY ROW, COL');
    Active := true;
  end;}

  for Row := 1 to StringGrid1.RowCount-5 do
  begin
    Sum := 0;
    for Col := 2 to StringGrid1.ColCount-2 do
    begin
      if (StringGrid1.Cells[Col, Row] <> '') then
      begin
        if (Row MOD 5 <> 4) then
          Sum := Sum + StrToFloat(StringGrid1.Cells[Col, Row])
        else if (Row MOD 5 = 4) then
          Sum := Sum + StrToFloat(StringReplace(StringGrid1.Cells[Col, Row], ' HR', '', [rfReplaceAll]));
      end
    end;

    if (Row MOD 5 <> 4) then
      StringGrid1.Cells[StringGrid1.ColCount-1, Row] := FloatToStr(Sum)
    else if (Row MOD 5 = 4) then
      StringGrid1.Cells[StringGrid1.ColCount-1, Row] := FloatToStr(Sum) + ' HR';
  end;

  for Col := 2 to StringGrid1.ColCount-1 do
  begin
    FabricSum := 0;
    LeatherSum := 0;
    FoamSum := 0;
    Sum := 0;
    MachineSum := 0;
    for Row := 1 to StringGrid1.RowCount-6 do
    begin
      if (StringGrid1.Cells[Col, Row] <> '') then
      begin
        if (Row MOD 5 = 1) then
          FabricSum := FabricSum + StrToInt(StringGrid1.Cells[Col, Row])
        else if (Row MOD 5 = 2) then
          LeatherSum := LeatherSum + StrToInt(StringGrid1.Cells[Col, Row])
        else if (Row MOD 5 = 3) then
          FoamSum := FoamSum + StrToInt(StringGrid1.Cells[Col, Row])
        else if (Row MOD 5 = 4) then
          Sum := Sum + StrToFloat(StringReplace(StringGrid1.Cells[Col, Row], ' HR', '', [rfReplaceAll]))
        else if (Row MOD 5 = 0) then
          MachineSum := MachineSum + StrToInt(StringGrid1.Cells[Col, Row]);
      end
    end;
    StringGrid1.Cells[Col, StringGrid1.RowCount-5] := IntToStr(FabricSum);
    StringGrid1.Cells[Col, StringGrid1.RowCount-4] := IntToStr(LeatherSum);
    StringGrid1.Cells[Col, StringGrid1.RowCount-3] := IntToStr(FoamSum);
    StringGrid1.Cells[Col, StringGrid1.RowCount-2] := FloatToStr(Sum) + ' HR';
    StringGrid1.Cells[Col, StringGrid1.RowCount-1] := IntToStr(MachineSum);
  end;

  StringGrid1.TopRow := 1;
  StringGrid1.LeftCol := 2;
end;

procedure TCuttingMachineLoading.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCuttingMachineLoading.FormDestroy(Sender: TObject);
begin
  CuttingMachineLoading := Nil;
end;

procedure TCuttingMachineLoading.FormCreate(Sender: TObject);
var
  i: integer;
begin
  DTP1.Date := Date;
  StringGrid1.ColWidths[0] := 200;
  StringGrid1.ColWidths[1] := 180;
  StringGrid1.DoubleBuffered := true;

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, ''LEAN'' + RIGHT(sumline, 2) AS LEAN FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
    SQL.Add('ORDER BY RIGHT(sumline, 2)');
    Active := true;
    SetLength(LeanID, RecordCount);

    i := 0;
    while not Eof do
    begin
      ComboBox2.Items.Add(FieldByName('LEAN').AsString);
      LeanID[i] := FieldByName('ID').AsString;
      Inc(i);
      Next;
    end;
  end;

  SetLanguages;
end;

procedure TCuttingMachineLoading.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    if (ACol = 0) AND ((ARow-1) MOD 5 = 0) then
    begin
      Rect.Bottom := Rect.Bottom + 4;
    end
    else if (ACol = 0) AND ((ARow-2) MOD 5 = 0) then
    begin
      Rect.Top := Rect.Top - 1;
      Rect.Bottom := Rect.Bottom + 3;
    end
    else if (ACol = 0) AND ((ARow-3) MOD 5 = 0) then
    begin
      Rect.Top := Rect.Top - 2;
      Rect.Bottom := Rect.Bottom + 2;
    end
    else if (ACol = 0) AND ((ARow-4) MOD 5 = 0) then
    begin
      Rect.Top := Rect.Top - 3;
      Rect.Bottom := Rect.Bottom + 1;
    end
    else if (ACol = 0) AND (ARow MOD 5 = 0) AND (ARow > 0) then
    begin
      Rect.Top := Rect.Top - 4;
    end;

    if (ACol = 0) then
      Canvas.Font.Size := 16
    else if (ACol >= 1) AND (ACol <= StringGrid1.ColCount-2) AND (ARow = 0) then
      Canvas.Font.Size := 12
    else if (ACol = StringGrid1.ColCount-1) AND (ARow = 0) then
      Canvas.Font.Size := 14;

    if (ACol >= 2) AND (ACol <= StringGrid1.ColCount-2) AND (ARow >= 1) AND (ARow <= StringGrid1.RowCount-6) AND (ARow MOD 5 = 0) then
    begin
      if (StringGrid1.Cells[ACol, ARow] = '0') then
        Canvas.Brush.Color := $00C8C8FF
      else
        Canvas.Brush.Color := clWhite;
    end;

    Canvas.FillRect(Rect);

    if (gdSelected in State) then
    begin
      Canvas.Font.Color := clBlack;
      Canvas.Brush.Color := $2FFFAD;
      Canvas.Pen.Color := $2FFFAD;
      Canvas.Rectangle(Rect);
    end;

    if (ACol >= 2) AND (ARow >= 1) AND (ARow MOD 5 = 0) then
    begin
      Canvas.Pen.Color := clBlack;
      Canvas.Pen.Width := 1;
      Canvas.MoveTo(Rect.Left, Rect.Bottom);
      Canvas.LineTo(Rect.Right, Rect.Bottom);
      Canvas.FillRect(Rect);
    end;

    if (ACol = StringGrid1.ColCount-1) then
    begin
      Canvas.Pen.Color := clBlack;
      Canvas.Pen.Width := 1;
      Canvas.MoveTo(Rect.Left-1, Rect.Top);
      Canvas.LineTo(Rect.Left-1, Rect.Bottom);
      Canvas.MoveTo(Rect.Right, Rect.Top);
      Canvas.LineTo(Rect.Right, Rect.Bottom);
      Canvas.FillRect(Rect);
    end;

    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
  end;
end;

procedure TCuttingMachineLoading.FormShow(Sender: TObject);
begin
  StringGrid1.SetFocus;
end;

procedure TCuttingMachineLoading.StringGrid1DblClick(Sender: TObject);
begin
  ShowMessage(IntToStr(StringGrid1.Col) + ', ' + IntToStr(StringGrid1.Row));
end;

procedure TCuttingMachineLoading.CB1Click(Sender: TObject);
begin
  CB2.Checked := not CB1.Checked;
end;

procedure TCuttingMachineLoading.CB2Click(Sender: TObject);
begin
  CB1.Checked := not CB2.Checked;
end;
      
procedure TCuttingMachineLoading.CB3Click(Sender: TObject);
begin
  CB4.Checked := not CB3.Checked;
end;

procedure TCuttingMachineLoading.CB4Click(Sender: TObject);
begin
  CB3.Checked := not CB4.Checked;
end;

procedure TCuttingMachineLoading.Button2Click(Sender: TObject);
var
  eclApp, WorkBook, GSheet: OleVariant;
  Col, Row: Integer;
begin
  if (Query1.Active) then
  begin
    if (Query1.RecordCount <= 0) then Exit;
  end
  else begin
    Exit;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    GSheet := eclapp.workbooks[1].sheets[1];

    for Row := 0 to StringGrid1.RowCount-1 do
    begin
      for Col := 0 to StringGrid1.ColCount-1 do
      begin
        GSheet.Cells[Row+1, Col+1] := StringGrid1.Cells[Col, Row];
      end;
    end;

    GSheet.Range[GSheet.Cells[1, 1], GSheet.Cells[StringGrid1.RowCount, StringGrid1.ColCount]].HorizontalAlignment := xlCenter;
    GSheet.Range[GSheet.Cells[2, 1], GSheet.Cells[StringGrid1.RowCount, 1]].ColumnWidth := 12.5;
    GSheet.Range[GSheet.Cells[2, 2], GSheet.Cells[StringGrid1.RowCount, 2]].ColumnWidth := 30;

    GSheet.Range[GSheet.Cells[1, 1], GSheet.Cells[1, 2]].MergeCells := true;

    Row := 2;
    while Row <= StringGrid1.RowCount do
    begin
      GSheet.Range[GSheet.Cells[Row, 1], GSheet.Cells[Row+4, 1]].MergeCells := true;
      Inc(Row, 5);
    end;

    for Col := 1 to StringGrid1.ColCount do
    begin
      GSheet.Cells[1, Col].Borders.Weight := 2;
    end;

    for Row := 1 to StringGrid1.RowCount do
    begin
      if ((Row-1) MOD 5 = 0) then
        GSheet.Range[GSheet.Cells[Row, 1], GSheet.Cells[Row, StringGrid1.ColCount]].Borders[4].Weight := 2;
      GSheet.Cells[Row, 2].Borders.Weight := 2;
      GSheet.Range[GSheet.Cells[Row, 1], GSheet.Cells[Row, 2]].Interior.Color := RGB(166, 202, 240);
    end;
    GSheet.Range[GSheet.Cells[1, StringGrid1.ColCount], GSheet.Cells[StringGrid1.RowCount, StringGrid1.ColCount]].Borders[1].Weight := 2;
    GSheet.Range[GSheet.Cells[1, StringGrid1.ColCount], GSheet.Cells[StringGrid1.RowCount, StringGrid1.ColCount]].Borders[2].Weight := 2;
    GSheet.Range[GSheet.Cells[1, 1], GSheet.Cells[1, StringGrid1.ColCount]].Interior.Color := RGB(166, 202, 240);

    ShowMessage('Succeed!!');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

procedure TCuttingMachineLoading.ComboBox3Change(Sender: TObject);
begin
  SetLanguages;
end;

end.
