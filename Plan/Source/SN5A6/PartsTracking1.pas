unit PartsTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls,
  PrnDbgeh, ComCtrls, Grids, Printers, CheckLst, PrViewEh;

type
  TPartsTracking = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    QRotation: TQuery;
    Print1: TBitBtn;
    Print2: TBitBtn;
    QSearch: TQuery;
    Label2: TLabel;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    StringGrid1: TStringGrid;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    QPrint: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    LEANEdit: TEdit;
    SB1: TSpeedButton;
    CLLean: TCheckListBox;
    Button2: TButton;
    CB1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Print1Click(Sender: TObject);
    procedure Print2Click(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure CLLeanClickCheck(Sender: TObject);
    procedure CLLeanClick(Sender: TObject);
    procedure LEANEditExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    LEANID: array of string;
    procedure CMFocusChanged(var Message: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure ClickMessage(var Msg: tagMSG; var Handled: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PartsTracking: TPartsTracking;

implementation

uses
  main1, ShoesPartSegmentation1;

{$R *.dfm}

procedure TPartsTracking.CMFocusChanged(var Message: TCMFocusChanged);
var
  Target: TWinControl;
begin
  Target := TWinControl(Message.Sender);

  if (Target.Name <> 'CLLean') then
    CLLean.Visible := false;
end;

procedure TPartsTracking.ClickMessage(var Msg: tagMSG; var Handled: Boolean);
var
  Target: TControl;
  Point: TPoint;
begin
  if (Msg.Message = WM_LBUTTONDOWN) then
  begin
    Point.X := LongRec(Msg.lParam).Lo;
    Point.Y := LongRec(Msg.lParam).Hi;
    Target := FindDragTarget(Point, true);

    if (Target.Name <> 'CLLean') then
      CLLean.Visible := false;
  end;
end;

procedure TPartsTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPartsTracking.FormDestroy(Sender: TObject);
begin
  PartsTracking := Nil;
end;

procedure TPartsTracking.Button1Click(Sender: TObject);
var
  Col, Row, MaxCol, i: integer;
  OrderList, ZLBH, DDBH, LeanList, XieXing: string;
  CheckFlag: boolean;
begin
  StringGrid1.ColCount := 2;
  StringGrid1.RowCount := 1;
  StringGrid1.Rows[0].Clear;
  CheckFlag := false;
  LeanList := '';
  XieXing := '';

  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Checked[i]) then
    begin
      CheckFlag := true;
      LeanList := LeanList + LEANID[i] + ',';
    end;
  end;

  if (LeanList <> '') then
  begin
    LeanList := Copy(LeanList, 1, Length(LeanList)-1);
    LeanList := '''' + StringReplace(LeanList, ',', ''',''', [rfReplaceAll]) + '''';
  end;

  if (Edit1.Text <> '') then
    OrderList := '''' + StringReplace(Edit1.Text, ',', ''',''', [rfReplaceAll]) + ''''
  else
    OrderList := '';

  with QRotation do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM ShoesPartSegmentation WHERE Part1 IN (''BJ31'', ''C036'') AND Part2 IN (''BJ31'', ''C036'') ORDER BY XieXing');
    Active := true;

    while not Eof do
    begin
      XieXing := XieXing + '''' + FieldByName('XieXing').AsString + ''', ';
      Next;
    end;
    XieXing := Copy(XieXing, 1, Length(XieXing)-2);

    Active := false;
    SQL.Clear;
    SQL.Add('If (OBJECT_ID(''tempdb..#TempParts'') Is Not Null)');
    SQL.Add('Begin Drop Table #TempParts End');

    SQL.Add('SELECT DISTINCT CutDispatchZL.ZLBH, BWBH, ywsm, zwsm, XieXing INTO #TempParts FROM CutDispatchZL');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CutDispatchZL.ZLBH');
    SQL.Add('LEFT JOIN bwzl ON bwzl.bwdh = CutDispatchZL.BWBH');
    SQL.Add('WHERE CutDispatchZL.ZLBH IN (');
    SQL.Add('  SELECT DISTINCT YSBH FROM SMDD');
    SQL.Add('  WHERE GXLB = ''C'' AND SMDD.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if (LeanList <> '') then
      SQL.Add('  AND DepNo IN (' + LeanList + ')');
    if (OrderList <> '') then
      SQL.Add('  AND YSBH IN (' + OrderList + ')');
    SQL.Add(')');

    SQL.Add('If (OBJECT_ID(''tempdb..#TempStatus'') Is Not Null)');
    SQL.Add('Begin Drop Table #TempStatus End');

    SQL.Add('SELECT CutDispatchSS.DDBH, CutDispatchSS.BWBH, SUM(CASE WHEN CutDispatchS.okCutNum >= CutDispatchS.CutNum OR CutDispatchSS.ScanQty = CutDispatchSS.Qty THEN CutDispatchSS.Qty ELSE 0 END) AS PartsStatus, XieXing INTO #TempStatus FROM CutDispatchSS');
    SQL.Add('LEFT JOIN CutDispatchS ON CutDispatchS.DLNO = CutDispatchSS.DLNO AND CutDispatchS.ZLBH = CutDispatchSS.ZLBH AND CutDispatchS.BWBH = CutDispatchSS.BWBH AND CutDispatchS.SIZE = CutDispatchSS.SIZE AND CutDispatchS.CLBH = CutDispatchSS.CLBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CutDispatchSS.ZLBH');
    SQL.Add('WHERE CutDispatchSS.ZLBH IN (');
    SQL.Add('  SELECT DISTINCT YSBH FROM SMDD');
    SQL.Add('  WHERE GXLB = ''C'' AND SMDD.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if (LeanList <> '') then
      SQL.Add('  AND DepNo IN (' + LeanList + ')');
    if (OrderList <> '') then
      SQL.Add('  AND YSBH IN (' + OrderList + ')');
    SQL.Add(')');
    SQL.Add('GROUP BY CutDispatchSS.DDBH, CutDispatchSS.BWBH, XieXing');

    SQL.Add('SELECT SMDD.PlanDate, SMDD.DDBH, SMDD.ZLBH, SMDD.PartsID, CAST(SMDD.BWBH AS VARCHAR) AS BWBH, CAST(SMDD.ywsm AS VARCHAR) AS ywsm, CAST(SMDD.zwsm AS VARCHAR) AS zwsm,');
    SQL.Add('CASE WHEN CutDispatchSS.PartsStatus >= SMDD.Qty THEN 1 ELSE ISNULL(CutDispatchSS.PartsStatus, -1) END AS PartsStatus FROM (');
    SQL.Add('  SELECT DDBH, ZLBH, PartsID, BWBH, ywsm, zwsm, Qty, CONVERT(VARCHAR, PlanDate, 111) AS PlanDate FROM SMDD');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CutDispatchZL1.ZLBH, CutDispatchZL1.BWBH, ywsm, zwsm, RANK() OVER (Partition By ZLBH ORDER BY BWBH)+1 AS PartsID FROM (');
    SQL.Add('      SELECT * FROM #TempParts WHERE XieXing NOT IN (' + XieXing + ') OR (XieXing IN (' + XieXing + ') AND BWBH NOT IN (''BJ31'', ''C036''))');
    SQL.Add('    ) AS CutDispatchZL1');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT DISTINCT CutDispatchZL2.ZLBH, LEFT(CutDispatchZL2.BWBH, LEN(CutDispatchZL2.BWBH)-1) AS BWBH,');
    SQL.Add('    LEFT(CutDispatchZL2.ywsm, LEN(CutDispatchZL2.ywsm)-1) AS ywsm, LEFT(CutDispatchZL2.zwsm, LEN(CutDispatchZL2.zwsm)-1) AS zwsm,');
    SQL.Add('    RANK() OVER (Partition By ZLBH ORDER BY BWBH)+100 AS PartsID FROM (');
    SQL.Add('      SELECT BWBH.ZLBH, BWBH, ywsm, zwsm FROM (');
    SQL.Add('        SELECT DISTINCT ZLBH, (SELECT DISTINCT BWBH + '','' FROM #TempParts');
    SQL.Add('        WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('        FOR XML PATH('''')) AS BWBH FROM (');
    SQL.Add('          SELECT * FROM #TempParts WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('        ) AS PartData');
    SQL.Add('      ) AS BWBH');
    SQL.Add('      LEFT JOIN (');
    SQL.Add('        SELECT DISTINCT ZLBH, (SELECT DISTINCT ywsm + '','' FROM #TempParts');
    SQL.Add('        WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('        FOR XML PATH('''')) AS ywsm FROM (');
    SQL.Add('          SELECT * FROM #TempParts WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('        ) AS PartData');
    SQL.Add('      ) AS ywsm ON ywsm.ZLBH = BWBH.ZLBH');
    SQL.Add('      LEFT JOIN (');
    SQL.Add('        SELECT DISTINCT ZLBH, (SELECT DISTINCT zwsm + '','' FROM #TempParts');
    SQL.Add('        WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('        FOR XML PATH('''')) AS zwsm FROM (');
    SQL.Add('          SELECT * FROM #TempParts WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('        ) AS PartData');
    SQL.Add('      ) AS zwsm ON zwsm.ZLBH = BWBH.ZLBH');
    SQL.Add('    ) AS CutDispatchZL2');
    SQL.Add('  ) AS CutDispatchZL ON CutDispatchZL.ZLBH = SMDD.YSBH');
    SQL.Add('  WHERE GXLB = ''C'' AND SMDD.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if (LeanList <> '') then
      SQL.Add('  AND DepNo IN (' + LeanList + ')');
    if (OrderList <> '') then
      SQL.Add('  AND YSBH IN (' + OrderList + ')');
    SQL.Add(') AS SMDD');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DDBH, BWBH, PartsStatus FROM #TempStatus');
    SQL.Add('  WHERE XieXing NOT IN (' + XieXing + ') OR (XieXing IN (' + XieXing + ') AND BWBH NOT IN (''BJ31'', ''C036''))');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DDBH, LEFT(BWBH, LEN(BWBH)-1) AS BWBH, SUM(PartsStatus) AS PartsStatus FROM (');
    SQL.Add('    SELECT DISTINCT DDBH, (SELECT DISTINCT BWBH + '','' FROM #TempStatus');
    SQL.Add('    WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('    FOR XML PATH('''')) AS BWBH, PartsStatus FROM (');
    SQL.Add('      SELECT * FROM #TempStatus WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
    SQL.Add('    ) AS StatusData');
    SQL.Add('  ) AS StatusData');
    SQL.Add('  GROUP BY DDBH, BWBH');
    SQL.Add(') AS CutDispatchSS ON CutDispatchSS.DDBH = SMDD.DDBH AND CutDispatchSS.BWBH = SMDD.BWBH');
    SQL.Add('ORDER BY SMDD.PlanDate, SMDD.DDBH, SMDD.PartsID');
    Active := true;

    MaxCol := 1;
    Row := -1;
    DDBH := '';
    ZLBH := '';
    while not Eof do
    begin
      if (FieldByName('ZLBH').AsString <> ZLBH) then
      begin
        Inc(Row);
        StringGrid1.RowCount := Row+1;
        StringGrid1.Rows[Row].Clear;
        ZLBH := FieldByName('ZLBH').AsString;

        QSearch.Active := false;
        QSearch.SQL.Clear;
        QSearch.SQL.Add('If (OBJECT_ID(''tempdb..#TempPartsData'') Is Not Null)');
        QSearch.SQL.Add('Begin Drop Table #TempPartsData End');

        QSearch.SQL.Add('SELECT DISTINCT BWBH, ywsm, zwsm, ISNULL(vwsm, ywsm) AS vwsm, XieXing, SheHao INTO #TempPartsData FROM CutDispatchZL');
        QSearch.SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CutDispatchZL.ZLBH');
        QSearch.SQL.Add('LEFT JOIN bwzl ON bwzl.bwdh = CutDispatchZL.BWBH');
        QSearch.SQL.Add('LEFT JOIN bwzlvn ON bwzlvn.bwdh = CutDispatchZL.BWBH');
        QSearch.SQL.Add('WHERE CutDispatchZL.ZLBH = ''' + ZLBH + '''');

        QSearch.SQL.Add('SELECT CAST(BWBH AS VARCHAR) AS BWBH, CAST(ywsm AS VARCHAR) AS ywsm, CAST(zwsm AS VARCHAR) AS zwsm, CAST(vwsm AS VARCHAR) AS vwsm, RANK() OVER (ORDER BY CAST(BWBH AS VARCHAR))+1 AS PartsID FROM #TempPartsData');
        QSearch.SQL.Add('WHERE XieXing NOT IN (' + XieXing + ') OR (XieXing IN (' + XieXing + ') AND BWBH NOT IN (''BJ31'', ''C036''))');
        QSearch.SQL.Add('UNION ALL');
        QSearch.SQL.Add('SELECT DISTINCT CAST(LEFT(BWBH, LEN(BWBH)-1) AS VARCHAR) AS BWBH, CAST(LEFT(ywsm, LEN(ywsm)-1) AS VARCHAR) AS ywsm, CAST(LEFT(zwsm, LEN(zwsm)-1) AS VARCHAR) AS zwsm,');
        QSearch.SQL.Add('CAST(LEFT(vwsm, LEN(vwsm)-1) AS VARCHAR) AS vwsm, RANK() OVER (ORDER BY BWBH)+100 AS PartsID FROM (');
        QSearch.SQL.Add('  SELECT BWBH, ywsm, zwsm, vwsm FROM (');
        QSearch.SQL.Add('    SELECT DISTINCT (SELECT DISTINCT BWBH + '','' FROM #TempPartsData');
        QSearch.SQL.Add('    WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    FOR XML PATH('''')) AS BWBH FROM (');
        QSearch.SQL.Add('      SELECT * FROM #TempPartsData WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    ) AS PartData');
        QSearch.SQL.Add('  ) AS BWBH');
        QSearch.SQL.Add('  LEFT JOIN (');
        QSearch.SQL.Add('    SELECT DISTINCT (SELECT DISTINCT ywsm + '','' FROM #TempPartsData');
        QSearch.SQL.Add('    WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    FOR XML PATH('''')) AS ywsm FROM (');
        QSearch.SQL.Add('      SELECT * FROM #TempPartsData WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    ) AS PartData');
        QSearch.SQL.Add('  ) AS ywsm ON 1 = 1');
        QSearch.SQL.Add('  LEFT JOIN (');
        QSearch.SQL.Add('    SELECT DISTINCT (SELECT DISTINCT zwsm + '','' FROM #TempPartsData');
        QSearch.SQL.Add('    WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    FOR XML PATH('''')) AS zwsm FROM (');
        QSearch.SQL.Add('      SELECT * FROM #TempPartsData WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    ) AS PartData');
        QSearch.SQL.Add('  ) AS zwsm ON 1 = 1');
        QSearch.SQL.Add('  LEFT JOIN (');
        QSearch.SQL.Add('    SELECT DISTINCT (SELECT DISTINCT vwsm + '','' FROM #TempPartsData');
        QSearch.SQL.Add('    WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    FOR XML PATH('''')) AS vwsm FROM (');
        QSearch.SQL.Add('      SELECT * FROM #TempPartsData WHERE XieXing IN (' + XieXing + ') AND BWBH IN (''BJ31'', ''C036'')');
        QSearch.SQL.Add('    ) AS PartData');
        QSearch.SQL.Add('  ) AS vwsm ON 1 = 1');
        QSearch.SQL.Add(') AS PartsData');
        QSearch.Active := true;

        if (QSearch.RecordCount > MaxCol) then
        begin
          MaxCol := QSearch.RecordCount;
          StringGrid1.ColCount := MaxCol+2;
        end;

        StringGrid1.RowHeights[Row] := 30;
        StringGrid1.Cells[0, Row] := 'PLANDATE';
        StringGrid1.Cells[1, Row] := 'DDBH';
        Col := QSearch.FieldByName('PartsID').AsInteger;
        while not QSearch.Eof do
        begin
          if (CB1.ItemIndex = 0) then
            StringGrid1.Cells[Col, Row] := QSearch.FieldByName('BWBH').AsString + #13#10 + QSearch.FieldByName('zwsm').AsString
          else if (CB1.ItemIndex = 1) then
            StringGrid1.Cells[Col, Row] := QSearch.FieldByName('BWBH').AsString + #13#10 + QSearch.FieldByName('ywsm').AsString
          else if (CB1.ItemIndex = 2) then
            StringGrid1.Cells[Col, Row] := QSearch.FieldByName('BWBH').AsString + #13#10 + QSearch.FieldByName('vwsm').AsString;
          Inc(Col);
          QSearch.Next;
        end;
      end;


      if (FieldByName('DDBH').AsString <> DDBH) then
      begin
        Inc(Row);
        StringGrid1.RowCount := Row+1;
        StringGrid1.Rows[Row].Clear;
        DDBH := FieldByName('DDBH').AsString;
        StringGrid1.Cells[0, Row] := FieldByName('PlanDate').AsString;
        StringGrid1.Cells[1, Row] := DDBH;
        Col := FieldByName('PartsID').AsInteger;

        if (FieldByName('PartsStatus').AsInteger = -1) then
          StringGrid1.Cells[Col, Row] := 'X'
        else if (FieldByName('PartsStatus').AsInteger = 1) then
          StringGrid1.Cells[Col, Row] := 'OK'
        else
          StringGrid1.Cells[Col, Row] := 'กต';
      end
      else begin
        Inc(Col);
        if (FieldByName('PartsStatus').AsInteger = -1) then
          StringGrid1.Cells[Col, Row] := 'X'
        else if (FieldByName('PartsStatus').AsInteger = 1) then
          StringGrid1.Cells[Col, Row] := 'OK'
        else
          StringGrid1.Cells[Col, Row] := 'กต';
      end;

      Next;
    end;
  end;

  Print1.Enabled := true;
  Print2.Enabled := true;
end;

procedure TPartsTracking.FormCreate(Sender: TObject);
var
  i: integer;
begin
  DTP1.Date := Date;
  DTP2.Date := Date+1;

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
    SQL.Add('ORDER BY ID');
    Active := true;

    i := 0;            
    SetLength(LEANID, RecordCount);
    CLLean.Items.Clear;
    while not Eof do
    begin
      CLLean.Items.Add(FieldByName('DepName').AsString);
      LEANID[i] := FieldByName('ID').AsString;
      Inc(i);
      Next;
    end;

    if (RecordCount > 0) then
      CLLean.Height := 22 + 16 * (RecordCount-1)
    else
      CLLean.Height := 22;
  end;

  StringGrid1.ColWidths[0] := 80;
  StringGrid1.ColWidths[1] := 105;
end;

procedure TPartsTracking.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    Canvas.FillRect(Rect);
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

    if (Pos(#13#10, Cells[ACol, ARow]) > 0) then
    begin
      Canvas.FillRect(Rect);
      Inc(Rect.Left, 2);
      Inc(Rect.Top, 2);
      DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), -1, Rect, DT_CENTER or DT_NOPREFIX {or DT_WORDBREAK});
    end;
  end;
end;

procedure TPartsTracking.Print1Click(Sender: TObject);
var
  Col, Row, i: integer;
  PartsSQL, Lean: string;
begin
  with QPrint do
  begin
    Active := false;
    SQL.Clear;
    for Row := 0 to StringGrid1.RowCount-1 do
    begin
      PartsSQL := '';
      for Col := 0 to StringGrid1.ColCount-1 do
      begin
        if (Col = 0) then
          PartsSQL := PartsSQL + '''' + StringGrid1.Cells[Col, Row] + ''' AS PLANDATE,'
        else if (Col = 1) then
          PartsSQL := PartsSQL + '''' + StringGrid1.Cells[Col, Row] + ''' AS DDBH,'
        else
          PartsSQL := PartsSQL + '''' + StringGrid1.Cells[Col, Row] + ''' AS PART' + IntToStr(Col-1) + ',';
      end;
      PartsSQL := Copy(PartsSQL, 1, Length(PartsSQL)-1);

      SQL.Add('SELECT ' + PartsSQL);
      if (Row < StringGrid1.RowCount-1) then
        SQL.Add('UNION ALL');
    end;
    Active := true;
  end;
  //DBGridEh1.Columns[0].Width := 80;
  //DBGridEh1.Columns[1].Width := 105;

  Lean := '';
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Checked[i]) then
      Lean := Lean + 'LEAN' + Copy(CLLean.Items[i], Pos('-', CLLean.Items[i])+1, 2) + ', ';
  end;
  Lean := Copy(Lean, 1, Length(Lean)-2);

  PrintDBGridEh1.PageHeader.LeftText.Text := Lean;
  PrinterPreview.Orientation := poLandscape;
  PrintDBGridEh1.Preview;
end;

procedure TPartsTracking.Print2Click(Sender: TObject);
var
  Col, Row, i: integer;
  PartsSQL, Lean: string;
begin
  with QPrint do
  begin
    Active := false;
    SQL.Clear;
    for Row := 0 to StringGrid1.RowCount-1 do
    begin
      PartsSQL := '';
      for Col := 0 to StringGrid1.ColCount-1 do
      begin
        if (Col = 0) then
          PartsSQL := PartsSQL + '''' + StringGrid1.Cells[Col, Row] + ''' AS PLANDATE,'
        else if (Col = 1) then
          PartsSQL := PartsSQL + '''' + StringGrid1.Cells[Col, Row] + ''' AS DDBH,'
        else if (Col > 1) AND (StringGrid1.Cells[0, Row] = 'PLANDATE') then
          PartsSQL := PartsSQL + '''' + StringGrid1.Cells[Col, Row] + ''' AS PART' + IntToStr(Col-1) + ','
        else
          PartsSQL := PartsSQL + ''''' AS PART' + IntToStr(Col-1) + ',';
      end;
      PartsSQL := Copy(PartsSQL, 1, Length(PartsSQL)-1);

      SQL.Add('SELECT ' + PartsSQL);
      if (Row < StringGrid1.RowCount-1) then
        SQL.Add('UNION ALL');
    end;
    Active := true;
  end;
  DBGridEh1.Columns[0].Width := 80;
  DBGridEh1.Columns[1].Width := 105;

  Lean := '';
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Checked[i]) then
      Lean := Lean + 'LEAN' + Copy(CLLean.Items[i], Pos('-', CLLean.Items[i])+1, 2) + ', ';
  end;
  Lean := Copy(Lean, 1, Length(Lean)-2);

  PrintDBGridEh1.PageHeader.LeftText.Text := Lean;
  PrinterPreview.Orientation := poLandscape;
  PrintDBGridEh1.Preview;
end;

procedure TPartsTracking.SB1Click(Sender: TObject);
var
  i: integer;
begin
  if (not CLLean.Visible) then
  begin
    for i:=0 to CLLean.Items.Count-1 do
    begin
      CLLean.Checked[i] := false;
    end;

    for i:=0 to CLLean.Items.Count-1 do
    begin
      if (Pos(CLLean.Items[i], LEANEdit.Text) > 0) then
        CLLean.Checked[i] := true;
    end;
  end;

  CLLean.Visible := not CLLean.Visible;
  if (CLLean.Visible) then
    CLLean.SetFocus;
end;

procedure TPartsTracking.Panel1Click(Sender: TObject);
begin
  CLLean.Visible := false;
end;

procedure TPartsTracking.CLLeanClickCheck(Sender: TObject);
var
  i: integer;
  DepName: string;
begin
  DepName := '';
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Checked[i]) then
      DepName := DepName + CLLean.Items[i] + ',';
  end;
  DepName := Copy(DepName, 1, Length(DepName)-1);
  LEANEdit.Text := DepName;
end;

procedure TPartsTracking.CLLeanClick(Sender: TObject);
var
  i: integer;
  DepName: string;
begin
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Selected[i]) then
      CLLean.Checked[i] := not CLLean.Checked[i];
  end;
  CLLeanClickCheck(Nil);
end;

procedure TPartsTracking.LEANEditExit(Sender: TObject);
var
  i: integer;
begin
  for i:=0 to CLLean.Items.Count-1 do
  begin
    CLLean.Checked[i] := false;
  end;

  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (Pos(CLLean.Items[i], LEANEdit.Text) > 0) then
      CLLean.Checked[i] := true;
  end;
end;

procedure TPartsTracking.Button2Click(Sender: TObject);
begin
  ShoesPartSegmentation := TShoesPartSegmentation.Create(self);
  ShoesPartSegmentation.Show;
end;

end.
