unit CPD_QuickDispatch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, GridsEh, DBGridEh, StdCtrls, Buttons,
  ComCtrls, ExtCtrls, Menus;

type
  TCPD_QuickDispatch = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Panel4: TPanel;
    Label7: TLabel;
    MemoEdit: TEdit;
    Label8: TLabel;
    DTP: TDateTimePicker;
    AddBtn: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel6: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query3: TQuery;
    Query1ywsm: TStringField;
    Query1zwsm: TStringField;
    Query1gcbwdh: TStringField;
    QTemp: TQuery;
    DataSource2: TDataSource;
    Query2: TQuery;
    Query2ZLBH: TStringField;
    Query2Rotation: TStringField;
    Query2Qty: TIntegerField;
    Panel8: TPanel;
    Panel9: TPanel;
    DBGridEh2: TDBGridEh;
    Panel5: TPanel;
    Label1: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label4: TLabel;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query4: TQuery;
    Query4BWBH: TStringField;
    Query4YWSM: TStringField;
    Query4ZWSM: TStringField;
    PopupMenu1: TPopupMenu;
    SELECTALL1: TMenuItem;
    Query1ZLQty: TIntegerField;
    Query1DQty: TIntegerField;
    Query4ZLQty: TIntegerField;
    Query4DQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AddBtnClick(Sender: TObject);
    procedure DBGridEh2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure SELECTALL1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
    OrderList, PartsList, Mode: string;
    SCol, SRow: integer;
    UpdateFlag: Boolean;
    procedure GenerateRotationGrid;
  public
    { Public declarations }
  end;

var
  CPD_QuickDispatch: TCPD_QuickDispatch;

implementation

uses
  CutProcessDispatch_SMDD1, main1;

{$R *.dfm}

procedure TCPD_QuickDispatch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCPD_QuickDispatch.FormDestroy(Sender: TObject);
begin
  CPD_QuickDispatch := Nil;
end;

procedure TCPD_QuickDispatch.FormCreate(Sender: TObject);
begin
  UpdateFlag := false;
  DTP.Date := Date;
  StringGrid1.ColWidths[0] := 100;
  StringGrid1.ColWidths[1] := 40;
  StringGrid1.Cells[0, 1] := 'DDBH';
  StringGrid1.Cells[1, 0] := 'TOTAL';
  StringGrid1.DoubleBuffered := true;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KT_SOPCutS_GCBWD.GCBWDH, KT_SOPCutS_GCBWD.YWSM, KT_SOPCutS_GCBWD.ZWSM, SUM(ISNULL(CutDispatchZL_GC.Qty, 0)) AS ZLQty, SUM(ISNULL(CutDispatchSS_GC.DQty, 0)) AS DQty FROM DDZL');
    SQL.Add('LEFT JOIN KT_SOPCutS_GCBW ON KT_SOPCutS_GCBW.XieXing = DDZL.XieXing');
    SQL.Add('LEFT JOIN KT_SOPCutS_GCBWD ON KT_SOPCutS_GCBWD.gcbwdh = KT_SOPCutS_GCBW.gcbwdh');
    SQL.Add('LEFT JOIN CutDispatchZL_GC ON CutDispatchZL_GC.ZLBH = DDZL.DDBH AND CutDispatchZL_GC.GCBWBH = KT_SOPCutS_GCBWD.GCBWDH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZLBH, BWBH, GCBWBH, SIZE, SUM(Qty) AS DQty FROM CutDispatchSS_GC');
    SQL.Add('  WHERE ZLBH IN ' + CutProcessDispatch_SMDD.OrderList);
    SQL.Add('  GROUP BY ZLBH, BWBH, GCBWBH, SIZE');
    SQL.Add(') AS CutDispatchSS_GC ON CutDispatchSS_GC.ZLBH = CutDispatchZL_GC.ZLBH AND CutDispatchSS_GC.GCBWBH = CutDispatchZL_GC.GCBWBH AND CutDispatchSS_GC.SIZE = CutDispatchZL_GC.SIZE AND CutDispatchSS_GC.BWBH = CutDispatchZL_GC.BWBH');
    SQL.Add('WHERE DDZL.DDBH IN ' + CutProcessDispatch_SMDD.OrderList);
    SQL.Add('GROUP BY KT_SOPCutS_GCBWD.GCBWDH, KT_SOPCutS_GCBWD.YWSM, KT_SOPCutS_GCBWD.ZWSM');
    SQL.Add('ORDER BY KT_SOPCutS_GCBWD.gcbwdh');
    Active := true;
  end;
end;

procedure TCPD_QuickDispatch.GenerateRotationGrid;
var
  Col, Row, i: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SIZE FROM CutDispatchZL_GC');
    SQL.Add('WHERE ZLBH IN ' + OrderList);
    SQL.Add('ORDER BY SIZE');
    Active := true;

    if (RecordCount > 0) then
    begin
      StringGrid1.ColCount := RecordCount + 2;
    end
    else begin
      StringGrid1.ColCount := 3;
      StringGrid1.Cols[2].Clear;
    end;

    Col := 2;
    while not Eof do
    begin
      StringGrid1.Cells[Col, 0] := FieldByName('SIZE').AsString;
      Inc(Col);
      Next;
    end;
  end;

  with Query3 do
  begin
    QTemp.First;
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDBH, Qty');
    while not QTemp.Eof do
    begin
      SQL.Add(', Max(CASE WHEN XXCC = ''' + QTemp.FieldByName('SIZE').AsString + ''' THEN SizeStatus ELSE NULL END) AS ''' + QTemp.FieldByName('SIZE').AsString + '''');
      QTemp.Next;
    end;
    SQL.Add('FROM (');

    //限制裁斷報工才能開單
    SQL.Add('  SELECT DDBH, BWBH, XXCC, Qty, CASE WHEN SizeCuttingStatus = ''OK'' THEN SizeStatus ELSE ''△''+SizeCuttingStatus END AS SizeStatus FROM (');
    SQL.Add('    SELECT SMDDS.DDBH, CutDispatchSS_GC.BWBH, SMDDS.XXCC, SMDD.Qty,');
    SQL.Add('    CASE WHEN CutDispatchSS.Qty = SMDDS.Qty THEN ''OK'' ELSE CAST(SMDDS.Qty AS VARCHAR) END AS SizeCuttingStatus,');
    SQL.Add('    CASE WHEN CutDispatchSS_GC.Qty = SMDDS.Qty THEN ''OK'' ELSE CAST(SMDDS.Qty AS VARCHAR) END AS SizeStatus FROM SMDDS');
    SQL.Add('    LEFT JOIN SMDD ON SMDD.DDBH = SMDDS.DDBH AND SMDD.GXLB = ''C''');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT DDBH, BWBH, SIZE, SUM(Qty) AS Qty FROM (');
    SQL.Add('        SELECT CutDispatchSS.DDBH, CutDispatchSS.BWBH, CutDispatchSS.SIZE,');
    SQL.Add('        CASE WHEN CutDispatchSS.ScanQty = CutDispatchSS.Qty THEN CutDispatchSS.Qty ELSE 0 END AS Qty FROM CutDispatchS');
    SQL.Add('        LEFT JOIN CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE AND CutDispatchSS.CLBH = CutDispatchS.CLBH');
    SQL.Add('        WHERE CutDispatchS.ZLBH IN ' + OrderList + ' AND CutDispatchS.BWBH IN ' + PartsList);
    SQL.Add('      ) AS CutDispatchSS');
    SQL.Add('      GROUP BY DDBH, BWBH, SIZE');
    SQL.Add('    ) AS CutDispatchSS ON CutDispatchSS.DDBH = SMDDS.DDBH AND CutDispatchSS.SIZE = SMDDS.XXCC');
    SQL.Add('    LEFT JOIN CutDispatchSS_GC ON CutDispatchSS_GC.DDBH = SMDDS.DDBH AND CutDispatchSS_GC.SIZE = SMDDS.XXCC AND CutDispatchSS_GC.BWBH = CutDispatchSS.BWBH');
    SQL.Add('    WHERE SMDD.YSBH IN ' + OrderList);
    SQL.Add('  ) AS SMDD');

    //無限制
    {SQL.Add('  SELECT SMDDS.DDBH, SMDDS.XXCC, SMDD.Qty, CASE WHEN CutDispatchSS_GC.Qty = SMDDS.Qty THEN ''OK'' ELSE CAST(SMDDS.Qty AS VARCHAR) END AS SizeStatus FROM SMDDS');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.DDBH = SMDDS.DDBH AND SMDD.GXLB = ''C''');
    SQL.Add('  LEFT JOIN CutDispatchSS_GC ON CutDispatchSS_GC.DDBH = SMDDS.DDBH AND CutDispatchSS_GC.SIZE = SMDDS.XXCC AND CutDispatchSS_GC.BWBH IN ' + PartsList);
    SQL.Add('  WHERE SMDD.YSBH IN ' + OrderList);}

    SQL.Add(') AS SMDD');
    SQL.Add('GROUP BY DDBH, Qty');
    SQL.Add('ORDER BY DDBH');
    Active := true;

    if (RecordCount > 0) then
    begin
      StringGrid1.RowCount := RecordCount + 1;
    end
    else begin
      StringGrid1.RowCount := 2;
      StringGrid1.Rows[1].Clear;
    end;

    Row := 1;
    while not Eof do
    begin
      for Col:=0 to FieldCount-1 do
      begin
        StringGrid1.Cells[Col, Row] := FieldByName(Fields[Col].FieldName).AsString;
      end;
      Inc(Row);
      Next;
    end;
  end;
end;

procedure TCPD_QuickDispatch.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    if (ACol >= 2) AND (ARow >= 1) AND (Cells[ACol, ARow] <> '') then
    begin
      if (Cells[ACol, ARow] = 'OK') then
        Canvas.Brush.Color := $0038DE1B
      else if (Pos('△', Cells[ACol, ARow]) > 0) then
        Canvas.Brush.Color := $000096FF
      else
        Canvas.Brush.Color := clWindow;
      Canvas.FillRect(Rect);
    end
    else begin
      Canvas.FillRect(Rect);
    end;

    if (gdSelected in State) then
    begin
      Canvas.Font.Color := clBlack;
      if (Cells[ACol, ARow] = '') then
      begin
        Canvas.Brush.Color := $FFFFFF;
        Canvas.FillRect(Rect);
      end
      else if (Cells[ACol, ARow] = 'OK') then
      begin
        Canvas.Brush.Color := $0038DE1B;
        Canvas.FillRect(Rect);
      end
      else begin
        Canvas.Brush.Color := clHighlight;
        Canvas.Rectangle(Rect);
      end;
    end;

    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
  end;
end;

procedure TCPD_QuickDispatch.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
begin
  StringGrid1.MouseToCell(X, Y, Col, Row);

  if (Row >= 1) then
  begin
    StringGrid1.Selection := Grids.TGridRect(Rect(2, Row, StringGrid1.ColCount-1, Row));
    SRow := Row;
    Mode := 'RowSelect';
  end;
  {else if (Row = 0) AND (Col >= 2) then
  begin
    StringGrid1.Selection := Grids.TGridRect(Rect(Col, 2, Col, StringGrid1.RowCount-1));
    SCol := Col;
    Mode := 'ColSelect';
  end;}
end;

procedure TCPD_QuickDispatch.StringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
begin
  StringGrid1.MouseToCell(X, Y, Col, Row);

  if (Mode = 'RowSelect') AND (Row >= 1) then
  begin
    StringGrid1.Selection := Grids.TGridRect(Rect(2, SRow, StringGrid1.ColCount-1, Row));
    
    if (Row >= StringGrid1.TopRow + StringGrid1.VisibleRowCount-1) AND (StringGrid1.TopRow <= StringGrid1.RowCount - StringGrid1.VisibleRowCount - 1) then
      StringGrid1.TopRow := StringGrid1.TopRow + 1
    else if (Row <= StringGrid1.TopRow) AND (StringGrid1.TopRow >= 2) then
      StringGrid1.TopRow := StringGrid1.TopRow - 1;
  end
  else if (Mode = 'ColSelect') AND (Col >= 2) then
  begin
    StringGrid1.Selection := Grids.TGridRect(Rect(SCol, 1, Col, StringGrid1.RowCount-1));

    if (Col >= StringGrid1.LeftCol + StringGrid1.VisibleColCount-1) AND (StringGrid1.LeftCol <= StringGrid1.ColCount - StringGrid1.VisibleColCount - 1) then
      StringGrid1.LeftCol := StringGrid1.LeftCol + 1
    else if (Col <= StringGrid1.LeftCol) AND (StringGrid1.LeftCol >= 3) then
      StringGrid1.LeftCol := StringGrid1.LeftCol - 1;
  end;
end;

procedure TCPD_QuickDispatch.StringGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Mode := '';
end;

procedure TCPD_QuickDispatch.AddBtnClick(Sender: TObject);
var
  i, Col, Row: integer;
  DLNO, DDBHList, SizeList: string;
  Bmark: TBookmark;
  AlarmFlag: Boolean;
begin
  AlarmFlag := true;
  DDBHList := '(';

  if (StringGrid1.Selection.Left <= 0) OR (StringGrid1.Selection.Top <= 0) then
  begin
    AlarmFlag := true;
  end
  else begin
    for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
    begin
      if (AlarmFlag) then
      begin
        for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
        begin
          if (Pos('△', StringGrid1.Cells[Col, Row]) > 0) then
          begin
            ShowMessage('There are some uncompleted parts in your selection, dispatch denied.');
            Exit;
          end;

          if (StringGrid1.Cells[Col, Row] <> '') AND (StringGrid1.Cells[Col, Row] <> 'OK') then
          begin
            AlarmFlag := false;
            Break;
          end;
        end;
      end;
      DDBHList := DDBHList + '''' + StringGrid1.Cells[0, Row] + ''',';
    end;
    DDBHList := Copy(DDBHList, 1, Length(DDBHList)-1) + ')';
  end;

  if (AlarmFlag) then
  begin
    ShowMessage('Please select a valid range.');
    Exit;
  end;
  {SizeList := '(';
  for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
  begin
    SizeList := SizeList + '''' + StringGrid1.Cells[Col, 0] + ''',';
  end;
  SizeList := Copy(SizeList, 1, Length(SizeList)-1) + ')';}


  //計算領料單流水號
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DLNO, YEAR(GETDATE()) AS DLYear, RIGHT(''00'' + CONVERT(VARCHAR, MONTH(GETDATE())), 2) AS DLMonth FROM CutDispatch_GC');
    SQL.Add('WHERE DLNO LIKE CONVERT(VARCHAR, YEAR(GETDATE())) + RIGHT(''00'' + CONVERT(VARCHAR, MONTH(GETDATE())), 2) + ''%''');
    SQL.Add('ORDER BY DLNO');
    Active := true;

    if (RecordCount > 0) then
    begin
      Last;
      DLNO := FieldByName('DLNO').AsString;
      DLNO := Copy(DLNO, 7, 5);
      DLNO := IntToStr(StrToInt(DLNO) + 1);

      while (Length(DLNO) < 5) do
      begin
        DLNO := '0' + DLNO;
      end;
    end
    else begin
      DLNO := '00001';
    end;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT YEAR(GETDATE()) AS DLYear, RIGHT(''00'' + CONVERT(VARCHAR, MONTH(GETDATE())), 2) AS DLMonth');
    Active := true;

    DLNO := FieldByName('DLYear').AsString + FieldByName('DLMonth').AsString + DLNO;
    Active := false;

    SQL.Clear;
    SQL.Add('INSERT INTO CutDispatch_GC');
    SQL.Add('(DLNO, GSBH, DepID, PlanDate, Memo, USERID, USERDATE, CFMID, CFMDate, YN)');
    SQL.Add('VALUES');
    SQL.Add('(''' + DLNO + ''', ''' + main.Edit2.Text + ''', ''' + CutProcessDispatch_SMDD.DepID + ''', ''' + FormatDatetime('yyyy/MM/dd', DTP.Date) + ''', ''' + MemoEdit.Text + ''', ''' + main.Edit1.Text + ''', GetDate(), ''NO'', NULL, 1)');
    ExecSQL();

    SQL.Clear;
    SQL.Add('INSERT INTO CutDispatchS_GC');
    SQL.Add('SELECT ''' + DLNO + ''' AS DLNO, ZLBH, GCBWBH, SIZE, BWBH, TempQty, 0 AS Qty, GetDate() AS USERDATE, ''' + main.Edit1.Text + ''' AS USERID, 1 AS YN FROM (');
    SQL.Add('  SELECT CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.BWBH, CutDispatchZL_GC.SIZE, CutDispatchZL_GC.GCBWBH, CutDispatchZL_GC.XXCC, SUM(CutDispatchZL_GC.Qty-IsNull(CutDispatchZL_GC.DQty, 0)) AS TempQty FROM (');
    SQL.Add('    SELECT CutDispatchZL_GC.DDBH, CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.BWBH, CutDispatchZL_GC.SIZE, CutDispatchZL_GC.XXCC, CutDispatchZL_GC.GCBWBH, CutDispatchZL_GC.Qty, IsNull(CutDisPatchS_GC.DQty, 0) AS DQty FROM (');
    SQL.Add('      SELECT SMDD.DDBH, ZLBH, BWBH, SIZE, SMDDS.XXCC, GCBWBH, SMDDS.Qty FROM CutDispatchZL_GC');
    SQL.Add('      LEFT JOIN SMDD ON SMDD.YSBH = CutDispatchZL_GC.ZLBH AND SMDD.GXLB = ''C''');
    SQL.Add('      LEFT JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH AND SMDDS.XXCC = CutDispatchZL_GC.SIZE');
    SQL.Add('      WHERE CutDispatchZL_GC.ZLBH IN ' + OrderList);
    SQL.Add('      AND CutDispatchZL_GC.GCBWBH = ''' + Query1.FieldByName('GCBWDH').AsString + '''');
    SQL.Add('      AND CutDispatchZL_GC.BWBH IN ' + PartsList);
    SQL.Add('      AND SMDD.DDBH IN ' + DDBHList);   
    //SQL.Add('      AND CutDispatchZL_GC.SIZE IN ' + SizeList);
    SQL.Add('    ) AS CutDispatchZL_GC');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT CutDispatchSS_GC.DDBH, CutDisPatchS_GC.ZLBH, CutDisPatchS_GC.BWBH, CutDisPatchS_GC.SIZE, CutDisPatchS_GC.GCBWBH, SUM(CutDisPatchSS_GC.Qty) AS DQty FROM CutDispatchS_GC');
    SQL.Add('      LEFT JOIN CutDispatchSS_GC ON CutDisPatchS_GC.DLNO = CutDispatchSS_GC.DLNO AND CutDispatchS_GC.ZLBH = CutDispatchSS_GC.ZLBH AND CutDispatchS_GC.BWBH = CutDispatchSS_GC.BWBH');
    SQL.Add('      AND CutDispatchS_GC.SIZE = CutDispatchSS_GC.SIZE AND CutDispatchS_GC.GCBWBH = CutDispatchSS_GC.GCBWBH');
    SQL.Add('      WHERE CutDisPatchS_GC.ZLBH IN ' + OrderList);
    SQL.Add('      AND CutDisPatchS_GC.GCBWBH = ''' + Query1.FieldByName('GCBWDH').AsString + ''''); 
    SQL.Add('      AND CutDisPatchS_GC.BWBH IN ' + PartsList);
    SQL.Add('      AND CutDispatchSS_GC.DDBH IN ' + DDBHList); 
    //SQL.Add('      AND CutDisPatchS_GC.SIZE IN ' + SizeList);
    SQL.Add('      GROUP BY CutDispatchSS_GC.DDBH, CutDisPatchS_GC.ZLBH, CutDisPatchS_GC.BWBH, CutDisPatchS_GC.SIZE, CutDispatchS_GC.GCBWBH');
    SQL.Add('    ) AS CutDispatchS_GC ON CutDisPatchS_GC.ZLBH = CutDispatchZL_GC.ZLBH AND CutDisPatchS_GC.DDBH = CutDispatchZL_GC.DDBH');
    SQL.Add('    AND CutDisPatchS_GC.BWBH = CutDispatchZL_GC.BWBH AND CutDisPatchS_GC.SIZE = CutDispatchZL_GC.SIZE AND CutDispatchS_GC.GCBWBH = CutDispatchZL_GC.GCBWBH');
    SQL.Add('    WHERE CutDispatchZL_GC.Qty > IsNull(CutDispatchS_GC.DQty, 0)');
    SQL.Add('  ) AS CutDispatchZL_GC');
    SQL.Add('  GROUP BY CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.BWBH, CutDispatchZL_GC.SIZE, CutDispatchZL_GC.GCBWBH, CutDispatchZL_GC.XXCC');
    SQL.Add(') AS CutDispatchZL_GC');
    ExecSQL();
    
    SQL.Clear;
    SQL.Add('INSERT INTO CutDisPatchSS_GC');
    SQL.Add('SELECT ''' + DLNO + ''' AS DLNO, ZLBH, DDBH, GCBWBH, SIZE, BWBH, Qty, 0 AS ScanQty, GetDate() AS USERDATE, ''' + main.Edit1.Text + ''' AS USERID, 1 AS YN FROM (');
    SQL.Add('  SELECT CutDispatchZL_GC.DDBH, CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.GCBWBH, CutDispatchZL_GC.SIZE, CutDispatchZL_GC.BWBH, CutDispatchZL_GC.Qty, ISNULL(CutDisPatchS_GC.DQty, 0) AS DQty FROM (');
    SQL.Add('    SELECT SMDD.DDBH, ZLBH, GCBWBH, CutDispatchZL_GC.SIZE, BWBH, SMDDS.Qty FROM CutDispatchZL_GC');
    SQL.Add('    LEFT JOIN SMDD ON SMDD.YSBH = CutDispatchZL_GC.ZLBH AND SMDD.GXLB = ''C''');
    SQL.Add('    LEFT JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH AND SMDDS.XXCC = CutDispatchZL_GC.SIZE');
    SQL.Add('    WHERE SMDDS.Qty > 0 AND CutDispatchZL_GC.ZLBH IN ' + OrderList);
    SQL.Add('    AND CutDisPatchZL_GC.GCBWBH = ''' + Query1.FieldByName('GCBWDH').AsString + '''');
    SQL.Add('    AND CutDispatchZL_GC.BWBH IN ' + PartsList);
    SQL.Add('    AND SMDD.DDBH IN ' + DDBHList);     
    //SQL.Add('    AND CutDispatchZL_GC.SIZE IN ' + SizeList);
    SQL.Add('  ) AS CutDispatchZL_GC');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CutDispatchSS_GC.DDBH, CutDisPatchS_GC.ZLBH, CutDisPatchS_GC.GCBWBH, CutDisPatchS_GC.SIZE, CutDisPatchS_GC.BWBH, SUM(CutDisPatchSS_GC.Qty) AS DQty FROM CutDisPatchS_GC');
    SQL.Add('    LEFT JOIN CutDispatchSS_GC ON CutDisPatchS_GC.DLNO = CutDispatchSS_GC.DLNO AND CutDispatchS_GC.ZLBH = CutDispatchSS_GC.ZLBH');
    SQL.Add('    AND CutDispatchS_GC.GCBWBH = CutDispatchSS_GC.GCBWBH AND CutDispatchS_GC.SIZE = CutDispatchSS_GC.SIZE AND CutDispatchS_GC.BWBH = CutDispatchSS_GC.BWBH');
    SQL.Add('    WHERE 1=1');
    SQL.Add('    AND CutDisPatchS_GC.ZLBH IN ' + OrderList);
    SQL.Add('    AND CutDisPatchS_GC.GCBWBH = ''' + Query1.FieldByName('GCBWDH').AsString + '''');
    SQL.Add('    AND CutDisPatchS_GC.BWBH IN  ' + PartsList);
    SQL.Add('    AND CutDispatchSS_GC.DDBH IN ' + DDBHList);
    //SQL.Add('    AND CutDisPatchS_GC.SIZE IN ' + SizeList);
    SQL.Add('    GROUP BY CutDispatchSS_GC.DDBH,CutDisPatchS_GC.ZLBH,CutDisPatchS_GC.GCBWBH,CutDisPatchS_GC.SIZE,CutDisPatchS_GC.BWBH');
    SQL.Add('  ) AS CutDisPatchS_GC ON CutDisPatchS_GC.ZLBH = CutDispatchZL_GC.ZLBH AND CutDisPatchS_GC.DDBH=CutDispatchZL_GC.DDBH');
    SQL.Add('  AND CutDisPatchS_GC.GCBWBH = CutDispatchZL_GC.GCBWBH AND CutDisPatchS_GC.SIZE = CutDispatchZL_GC.SIZE AND CutDisPatchS_GC.BWBH = CutDispatchZL_GC.BWBH');
    SQL.Add('  WHERE CutDispatchZL_GC.Qty > ISNULL(CutDispatchS_GC.DQty, 0)');
    SQL.Add(') AS CutDispatchSS_GC');
    ExecSQL();
  end;

  UpdateFlag := true;
  Query2.DisableControls;
  Query4.DisableControls;
  BMark := Query1.GetBookmark;
  Query1.Active := false;
  Query1.Active := true;
  Query1.GotoBookmark(BMark);
  Query1.FreeBookmark(Bmark);
  Query2.EnableControls;
  Query4.EnableControls;
  UpdateFlag := false;

  ShowMessage('Success!');
end;

procedure TCPD_QuickDispatch.Query1AfterOpen(DataSet: TDataSet);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchZL_GC.*, SUM(SMDDS.Qty) AS Qty FROM (');
    SQL.Add('  SELECT CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.ZLBH + ''('' + (CASE WHEN CutDispatchZL_GC.ZLBH <> MAX(SMDD.DDBH) THEN ((''T''+MIN(RIGHT(SMDD.DDBH, 3)))+''-''+(''T''+MAX(RIGHT(SMDD.DDBH,3)))) ELSE ''T001'' END)+'')'' AS Rotation FROM CutDispatchZL_GC');
    SQL.Add('  INNER JOIN SMDD ON SMDD.YSBH = CutDispatchZL_GC.ZLBH AND SMDD.GXLB = ''C''');
    SQL.Add('  WHERE SMDD.GXLB = ''C'' AND SMDD.YSBH IN ' + CutProcessDispatch_SMDD.OrderList);
    SQL.Add('  AND CutDispatchZL_GC.GCBWBH = :GCBWDH');
    SQL.Add('  GROUP BY CutDispatchZL_GC.ZLBH');
    SQL.Add(') AS CutDispatchZL_GC');
    SQL.Add('INNER JOIN SMDD ON SMDD.YSBH = CutDispatchZL_GC.ZLBH AND SMDD.GXLB = ''C''');
    SQL.Add('INNER JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH');
    SQL.Add('WHERE SMDD.GXLB = ''C'' AND SMDD.YSBH IN ' + CutProcessDispatch_SMDD.OrderList);
    SQL.Add('GROUP BY CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.Rotation');
    SQL.Add('ORDER BY CutDispatchZL_GC.ZLBH');
    Active := true;
  end;
end;
 
procedure TCPD_QuickDispatch.DBGridEh1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchZL_GC.*, SUM(SMDDS.Qty) AS Qty FROM (');
    SQL.Add('  SELECT CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.ZLBH + ''('' + (CASE WHEN CutDispatchZL_GC.ZLBH <> MAX(SMDD.DDBH) THEN ((''T''+MIN(RIGHT(SMDD.DDBH, 3)))+''-''+(''T''+MAX(RIGHT(SMDD.DDBH,3)))) ELSE ''T001'' END)+'')'' AS Rotation FROM CutDispatchZL_GC');
    SQL.Add('  INNER JOIN SMDD ON SMDD.YSBH = CutDispatchZL_GC.ZLBH AND SMDD.GXLB = ''C''');
    SQL.Add('  WHERE SMDD.GXLB = ''C'' AND SMDD.YSBH IN ' + CutProcessDispatch_SMDD.OrderList);
    SQL.Add('  AND CutDispatchZL_GC.GCBWBH = :GCBWDH');
    SQL.Add('  GROUP BY CutDispatchZL_GC.ZLBH');
    SQL.Add(') AS CutDispatchZL_GC');
    SQL.Add('INNER JOIN SMDD ON SMDD.YSBH = CutDispatchZL_GC.ZLBH AND SMDD.GXLB = ''C''');
    SQL.Add('INNER JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH');
    SQL.Add('WHERE SMDD.GXLB = ''C'' AND SMDD.YSBH IN ' + CutProcessDispatch_SMDD.OrderList);
    SQL.Add('GROUP BY CutDispatchZL_GC.ZLBH, CutDispatchZL_GC.Rotation');
    SQL.Add('ORDER BY CutDispatchZL_GC.ZLBH');
    Active := true;
  end;
end;

procedure TCPD_QuickDispatch.Query2AfterOpen(DataSet: TDataSet);
begin
  if (UpdateFlag = false) then
  begin
    DBGridEh2.SelectedRows.Clear;
    DBGridEh2.SelectedRows.SelectAll;
    OrderList := CutProcessDispatch_SMDD.OrderList;
  end;

  with Query4 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchZL_GC.BWBH, bwzl.ywsm, bwzl.zwsm, SUM(ISNULL(CutDispatchZL_GC.Qty, 0)) AS ZLQty, SUM(ISNULL(CutDispatchSS_GC.DQty, 0)) AS DQty FROM CutDispatchZL_GC');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZLBH, BWBH, GCBWBH, SIZE, SUM(Qty) AS DQty FROM CutDispatchSS_GC');
    SQL.Add('  WHERE ZLBH IN ' + OrderList);
    SQL.Add('  GROUP BY ZLBH, BWBH, GCBWBH, SIZE');
    SQL.Add(') AS CutDispatchSS_GC ON CutDispatchSS_GC.ZLBH = CutDispatchZL_GC.ZLBH AND CutDispatchSS_GC.GCBWBH = CutDispatchZL_GC.GCBWBH AND CutDispatchSS_GC.SIZE = CutDispatchZL_GC.SIZE AND CutDispatchSS_GC.BWBH = CutDispatchZL_GC.BWBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT bwdh, ywsm, zwsm FROM bwzl');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT gcbwdh, ywsm, zwsm FROM KT_SOPCutS_GCBWD');
    SQL.Add(') AS bwzl ON bwzl.bwdh = CutDispatchZL_GC.BWBH');
    SQL.Add('WHERE CutDispatchZL_GC.GCBWBH = :GCBWDH');
    SQL.Add('AND CutDispatchZL_GC.ZLBH IN ' + OrderList);
    SQL.Add('GROUP BY CutDispatchZL_GC.BWBH, bwzl.ywsm, bwzl.zwsm');
    SQL.Add('ORDER BY CutDispatchZL_GC.BWBH');
    Active := true;
  end;
end;

procedure TCPD_QuickDispatch.DBGridEh2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: integer;
  BMark: TBookmark;
  BookmarkList: TBookmarkListEh;
begin
  Query2.DisableControls;
  BMark := Query2.GetBookmark;
  BookmarkList := DBGridEh2.SelectedRows;
  OrderList := '(';

  try
    if (DBGridEh2.SelectedRows.Count > 0) then
    begin
      for i:=0 to BookmarkList.Count-1 do
      begin
        Query2.GotoBookmark(Pointer(BookmarkList[i]));
        OrderList := OrderList + '''' + Query2.FieldByName('ZLBH').AsString + ''',';
      end;
      OrderList := Copy(OrderList, 1, Length(OrderList)-1) + ')';
    end;
  finally
    Query2.GotoBookmark(BMark);
    Query2.FreeBookmark(BMark);
    Query2.EnableControls;
  end;

  with Query4 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchZL_GC.BWBH, bwzl.ywsm, bwzl.zwsm, SUM(ISNULL(CutDispatchZL_GC.Qty, 0)) AS ZLQty, SUM(ISNULL(CutDispatchSS_GC.DQty, 0)) AS DQty FROM CutDispatchZL_GC');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZLBH, BWBH, GCBWBH, SIZE, SUM(Qty) AS DQty FROM CutDispatchSS_GC');
    SQL.Add('  WHERE ZLBH IN ' + OrderList);
    SQL.Add('  GROUP BY ZLBH, BWBH, GCBWBH, SIZE');
    SQL.Add(') AS CutDispatchSS_GC ON CutDispatchSS_GC.ZLBH = CutDispatchZL_GC.ZLBH AND CutDispatchSS_GC.GCBWBH = CutDispatchZL_GC.GCBWBH AND CutDispatchSS_GC.SIZE = CutDispatchZL_GC.SIZE AND CutDispatchSS_GC.BWBH = CutDispatchZL_GC.BWBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT bwdh, ywsm, zwsm FROM bwzl');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT gcbwdh, ywsm, zwsm FROM KT_SOPCutS_GCBWD');
    SQL.Add(') AS bwzl ON bwzl.bwdh = CutDispatchZL_GC.BWBH');
    SQL.Add('WHERE CutDispatchZL_GC.GCBWBH = :GCBWDH');
    SQL.Add('AND CutDispatchZL_GC.ZLBH IN ' + OrderList);
    SQL.Add('GROUP BY CutDispatchZL_GC.BWBH, bwzl.ywsm, bwzl.zwsm');
    SQL.Add('ORDER BY CutDispatchZL_GC.BWBH');
    Active := true;

    DBGridEh3.SelectedRows.Clear;
    DBGridEh3.SelectedRows.SelectAll;
  end;
end;

procedure TCPD_QuickDispatch.Query4AfterOpen(DataSet: TDataSet);
var
  i: integer;
  BMark: TBookmark;
  BookmarkList: TBookmarkListEh;
begin
  if (UpdateFlag = false) then
  begin
    DBGridEh3.SelectedRows.Clear;
    DBGridEh3.SelectedRows.SelectAll;
  end;
  
  Query4.DisableControls;
  BMark := Query4.GetBookmark;
  BookmarkList := DBGridEh3.SelectedRows;
  PartsList := '(';

  try
    if (DBGridEh3.SelectedRows.Count > 0) then
    begin
      for i:=0 to BookmarkList.Count-1 do
      begin
        Query4.GotoBookmark(Pointer(BookmarkList[i]));
        PartsList := PartsList + '''' + Query4.FieldByName('BWBH').AsString + ''',';
      end;
    end;
    
    if (Length(PartsList) > 1) then
      PartsList := Copy(PartsList, 1, Length(PartsList)-1) + ')'
    else
      PartsList := '('''')';
  finally
    Query4.GotoBookmark(BMark);
    Query4.FreeBookmark(BMark);
    Query4.EnableControls;
  end;
  GenerateRotationGrid;
end;

procedure TCPD_QuickDispatch.DBGridEh3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: integer;
  BMark: TBookmark;
  BookmarkList: TBookmarkListEh;
begin
  Query4.DisableControls;
  BMark := Query4.GetBookmark;
  BookmarkList := DBGridEh3.SelectedRows;
  PartsList := '(';

  try
    if (DBGridEh3.SelectedRows.Count > 0) then
    begin
      for i:=0 to BookmarkList.Count-1 do
      begin
        Query4.GotoBookmark(Pointer(BookmarkList[i]));
        PartsList := PartsList + '''' + Query4.FieldByName('BWBH').AsString + ''',';
      end;
      PartsList := Copy(PartsList, 1, Length(PartsList)-1) + ')';
    end;
  finally
    Query4.GotoBookmark(BMark);
    Query4.FreeBookmark(BMark);
    Query4.EnableControls;
  end;
  GenerateRotationGrid;
end;

procedure TCPD_QuickDispatch.SELECTALL1Click(Sender: TObject);
begin
  StringGrid1.Selection := Grids.TGridRect(Rect(2, 2, StringGrid1.ColCount-1, StringGrid1.RowCount-1));
end;

procedure TCPD_QuickDispatch.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('ZLQty').AsInteger <= Query1.FieldByName('DQty').AsInteger) then
  begin
    DBGridEh1.Canvas.Font.Color := $0038DE1B;
  end;
end;

procedure TCPD_QuickDispatch.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query4.FieldByName('ZLQty').AsInteger <= Query4.FieldByName('DQty').AsInteger) then
  begin
    DBGridEh3.Canvas.Font.Color := $0038DE1B;
  end;
end;

end.
