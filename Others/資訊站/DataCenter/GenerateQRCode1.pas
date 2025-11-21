unit GenerateQRCode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DB, ADODB, Buttons, StdCtrls, jpeg, ExtCtrls,
  Printers, TouchPanel, D7GesturesHeader, TouchGrids, TouchLabel;

type
  TGenerateQRCode = class(TForm)
    ADOQSearch: TADOQuery;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Panel2: TPanel;
    ADOQCycle: TADOQuery;
    Panel3: TPanel;
    ADOQTemp: TADOQuery;
    IMG_RETURNP: TImage;
    IMG_RETURN: TImage;
    LB_TIPS: TLabel;
    Timer1: TTimer;
    ADOQUpdate: TADOQuery;
    IMG_CHECK: TImage;
    IMG_CHECKP: TImage;
    TP_RETURN: TTouchPanel;
    TP_HOME: TTouchPanel;
    TP_PRINT: TTouchPanel;
    StringGrid1: TTouchStringGrid;
    TP_PART: TTouchPanel;
    LB_PART: TTouchLabel;
    Panel4: TPanel;
    IMG_CHECKOK: TImage;
    TP_ORDER: TTouchPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IMG_ORDERMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure IMG_ORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TP_RETURNTouch(Sender: TObject; X, Y: Integer);
    procedure TP_RETURNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMETouch(Sender: TObject; X, Y: Integer);
    procedure TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PRINTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_PRINTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PRINTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1Touch(Sender: TObject; X, Y: Integer);
    procedure TP_RETURNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PARTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PARTMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_PARTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PARTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_ORDERTouch(Sender: TObject; X, Y: Integer);
    procedure TP_ORDERMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    DragFlag, PressFlag: Boolean;
    OrderBG, SelectOrderBG: TBitmap;
    PreOrderNumber, PrePartNumber, StartPos, TouchPos, PrePos, Speed, TouchSpeed: integer;
    QRPartID, QRPart, PartID, ConfirmMessage: string;
    procedure SetLanguage;
    procedure SetTouchEvent;
    procedure SearchCycle;
    procedure SearchListCycle;
    { Private declarations }
  public
    LeanID, LeanName, DLLB, MachineID, MachineName, SearchType, PrintType: string;
    procedure SearchData(Order: String);
    procedure SearchListData(ListID: String);
    procedure PrintQRCode;
    procedure PrintListQRCode;
    { Public declarations }
  end;

var
  GenerateQRCode: TGenerateQRCode;

implementation

uses Home1, Languages1, OrderSchedule1, OrderSearch1, LeanSelection1, QRLabel1,
  MachineType1, DCMessage1;

{$R *.dfm}

procedure TGenerateQRCode.SetLanguage;
begin
  ConfirmMessage := 'ARE YOU SURE TO PRINT QRCODE OF THIS DISPATCH LIST ?';
  if (Languages.Language = 'CN') then
  begin
    TP_PRINT.Caption := '列印';
    LB_TIPS.Caption := '請選擇部件';
    TP_HOME.Caption := '〈 主畫面   ';
    ConfirmMessage := '確定要列印派工單條碼?';
  end
  else if (Languages.Language = 'VN') then
  begin
    TP_PRINT.Caption := 'IN';
    LB_TIPS.Caption := 'VUI LONG CHON CHI TIET';
    TP_HOME.Caption := '〈 TRO VE   ';
    ConfirmMessage := 'XAC DINH MUON IN MA VACH PHIEU DIEU CONG ?';
  end;
end;

procedure TGenerateQRCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TGenerateQRCode.FormDestroy(Sender: TObject);
begin
  GenerateQRCode := Nil;
end;

procedure TGenerateQRCode.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TGenerateQRCode.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  PrePartNumber := 0;
  PreOrderNumber := 0;
  DragFlag := false;
  PressFlag := false;

  TP_PRINT.Left := (Screen.Width - TP_PRINT.Width) DIV 2;

  LB_PART.Visible := false;
  TP_RETURN.Left := Screen.Width - TP_RETURN.Width - 5;
  StringGrid1.ColWidths[0] := 210;

  Panel4.Left := 0;
  Panel4.Top := Panel3.Top;
  Panel4.Width := Screen.Width;
  Panel4.Height := Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height;

  StringGrid1.DoubleBuffered := true;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TGenerateQRCode.SetTouchEvent;
begin
  EnableAllGestures(TP_ORDER.Handle);
  RegisterTouchWindowFn(TP_ORDER.Handle, 0);

  EnableAllGestures(TP_RETURN.Handle);
  RegisterTouchWindowFn(TP_RETURN.Handle, 0);

  EnableAllGestures(TP_HOME.Handle);
  RegisterTouchWindowFn(TP_HOME.Handle, 0);
  
  EnableAllGestures(TP_PRINT.Handle);
  RegisterTouchWindowFn(TP_PRINT.Handle, 0);

  EnableAllGestures(StringGrid1.Handle);
  RegisterTouchWindowFn(StringGrid1.Handle, 0);
end;
                     
procedure TGenerateQRCode.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
  ScrollBox1.DoubleBuffered := true;
end;

procedure TGenerateQRCode.SearchData(Order: String);
var
  PartTouchPanel: TTouchPanel;
  PartLabel: TTouchLabel;
  i, k, LeftPos: integer;
  ObjectName: string;
begin
  TP_ORDER.Caption := Order;
  TP_ORDER.Width := Languages.GetTextWidth(TP_ORDER.Caption, TP_ORDER.Font);
  SearchType := 'ORDER';

  Panel2.Repaint;
  with ADOQSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT bwzl.bwdh, bwzl.ywsm, bwzl.zwsm, CASE WHEN ISNULL(bwzlvn.vwsm, '''') <> '''' THEN bwzlvn.vwsm ELSE bwzl.ywsm END AS VWSM FROM DDZL');
    SQL.Add('LEFT JOIN KT_SOPCut ON KT_SOPCut.XieXing = DDZL.XieXing AND KT_SOPCut.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DISTINCT ZLBH, BWBH FROM CutDispatchZL');
    SQL.Add(') AS CutDispatchZL ON CutDispatchZL.ZLBH = DDZL.DDBH AND CutDispatchZL.BWBH = KT_SOPCut.BWBH');
    SQL.Add('LEFT JOIN bwzl ON bwzl.bwdh = KT_SOPCut.BWBH');
    SQL.Add('LEFT JOIN bwzlvn ON bwzlvn.bwdh = KT_SOPCut.BWBH');
    SQL.Add('WHERE DDBH = ''' + TP_ORDER.Caption + ''' AND CutDispatchZL.BWBH IS NOT NULL');
    SQL.Add('ORDER BY bwzl.bwdh');
    Active := true;

    i := 0;
    k := 1;
    LeftPos := 0;
    while not Eof do
    begin
      PartTouchPanel := TTouchPanel.Create(Self);
      PartTouchPanel.Name := 'PartTouchPanel' + IntToStr(k);
      PartTouchPanel.Caption := '';
      PartTouchPanel.AutoSize := true;
      PartTouchPanel.BevelOuter := bvNone;
      PartTouchPanel.Parent := ScrollBox1;
      PartTouchPanel.Color := $00323330;
      PartTouchPanel.Top := 0;
      PartTouchPanel.Left := LeftPos;
      PartTouchPanel.OnTouch := TP_PART.OnTouch;
      PartTouchPanel.OnMouseDown := TP_PART.OnMouseDown;
      PartTouchPanel.OnMouseMove := TP_PART.OnMouseMove;
      PartTouchPanel.OnMouseUp := TP_PART.OnMouseUp;

      PartLabel := TTouchLabel.Create(Self);
      PartLabel.Name := 'PartLabel' + IntToStr(k);
      PartLabel.Parent := PartTouchPanel; 
      PartLabel.Alignment := LB_PART.Alignment;
      PartLabel.Layout := LB_PART.Layout;
      PartLabel.Transparent := LB_PART.Transparent;
      PartLabel.Font.Color := LB_PART.Font.Color;
      PartLabel.Font.Name := LB_PART.Font.Name;
      PartLabel.Font.Size := LB_PART.Font.Size;
      PartLabel.Font.Style := LB_PART.Font.Style;
      PartLabel.Top := 0;
      PartLabel.Left := 0;
      if (Languages.Language = 'CN') then
        PartLabel.Caption := FieldByName('bwdh').AsString + #13#10 + FieldByName('zwsm').AsString
      else if (Languages.Language = 'EN') then
        PartLabel.Caption := FieldByName('bwdh').AsString + #13#10 + FieldByName('ywsm').AsString
      else if (Languages.Language = 'VN') then
        PartLabel.Caption := FieldByName('bwdh').AsString + #13#10 + FieldByName('vwsm').AsString;
      PartLabel.AutoSize := false;
      PartLabel.Width := PartLabel.Width + 45;
      PartLabel.Enabled := LB_PART.Enabled;

      Inc(LeftPos, PartLabel.Width);
      Inc(i);
      Inc(k);
      Next;
    end;

    if (LeftPos > Screen.Width) then
    begin
      ScrollBox1.HorzScrollBar.Visible := true;
      ScrollBox1.Height := LB_PART.Height*2 + 17;
    end
    else begin
      ScrollBox1.HorzScrollBar.Visible := false;
      ScrollBox1.Height := LB_PART.Height*2;
    end;
  end;
end;

procedure TGenerateQRCode.SearchListData(ListID: String);
var
  PartTouchPanel: TTouchPanel;
  PartLabel: TTouchLabel;
  k, LeftPos: integer;
  ObjectName: string;
begin
  TP_ORDER.Caption := ListID;
  TP_ORDER.Width := Languages.GetTextWidth(TP_ORDER.Caption, TP_ORDER.Font);
  SearchType := 'LIST';

  Panel2.Repaint;
  with ADOQSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT bwzl.bwdh, bwzl.ywsm, bwzl.zwsm, CASE WHEN ISNULL(bwzlvn.vwsm, '''') <> '''' THEN bwzlvn.vwsm ELSE bwzl.ywsm END AS VWSM FROM CutDispatchS');
    SQL.Add('LEFT JOIN bwzl ON bwzl.bwdh = CutDispatchS.BWBH');
    SQL.Add('LEFT JOIN bwzlvn ON bwzlvn.bwdh = CutDispatchS.BWBH');
    SQL.Add('WHERE DLNO = ''' + ListID + '''');
    SQL.Add('ORDER BY bwzl.bwdh');
    Active := true;

    k := 1;
    LeftPos := 0;
    while not Eof do
    begin
      PartTouchPanel := TTouchPanel.Create(Self);
      PartTouchPanel.Name := 'PartTouchPanel' + IntToStr(k);
      PartTouchPanel.Caption := '';
      PartTouchPanel.AutoSize := true;
      PartTouchPanel.BevelOuter := bvNone;
      PartTouchPanel.Parent := ScrollBox1;
      PartTouchPanel.Color := $00323330;
      PartTouchPanel.Top := 0;
      PartTouchPanel.Left := LeftPos;
      PartTouchPanel.OnTouch := TP_PART.OnTouch;
      PartTouchPanel.OnMouseDown := TP_PART.OnMouseDown;
      PartTouchPanel.OnMouseMove := TP_PART.OnMouseMove;
      PartTouchPanel.OnMouseUp := TP_PART.OnMouseUp;

      PartLabel := TTouchLabel.Create(Self);
      PartLabel.Name := 'PartLabel' + IntToStr(k);
      PartLabel.Parent := PartTouchPanel;
      PartLabel.Alignment := LB_PART.Alignment;
      PartLabel.Layout := LB_PART.Layout;
      PartLabel.Transparent := LB_PART.Transparent;
      PartLabel.Font.Color := LB_PART.Font.Color;
      PartLabel.Font.Name := LB_PART.Font.Name;
      PartLabel.Font.Size := LB_PART.Font.Size;
      PartLabel.Font.Style := LB_PART.Font.Style;
      PartLabel.Top := 0;
      PartLabel.Left := 0;
      if (Languages.Language = 'CN') then
        PartLabel.Caption := FieldByName('bwdh').AsString + #13#10 + FieldByName('zwsm').AsString
      else if (Languages.Language = 'EN') then
        PartLabel.Caption := FieldByName('bwdh').AsString + #13#10 + FieldByName('ywsm').AsString
      else if (Languages.Language = 'VN') then
        PartLabel.Caption := FieldByName('bwdh').AsString + #13#10 + FieldByName('vwsm').AsString;   
      PartLabel.AutoSize := false;
      PartLabel.Width := PartLabel.Width + 60;
      PartLabel.Enabled := LB_PART.Enabled;

      Inc(LeftPos, PartLabel.Width);
      Inc(k);
      Next;
    end;

    if (LeftPos > Screen.Width) then
    begin
      ScrollBox1.HorzScrollBar.Visible := true;
      ScrollBox1.Height := LB_PART.Height*2 + 17;
    end
    else begin
      ScrollBox1.HorzScrollBar.Visible := false;
      ScrollBox1.Height := LB_PART.Height*2;
    end;
  end;
end;

{ PART ITEMS SCROLLING }

procedure TGenerateQRCode.TP_PARTTouch(Sender: TObject; X, Y: Integer);
var
  TouchPoint: TPoint;
begin
  TouchPoint := TTouchPanel(Sender).ClientToScreen(Point(X, Y));

  if (PressFlag = false) then
  begin
    SetCursorPos(TouchPoint.X, TouchPoint.Y);
    TouchPos := TouchPoint.X;
    PrePos := TouchPos;

    TP_PARTMouseDown(Sender, mbLeft, [], X, Y);
  end
  else begin
    PrePos := TouchPos;
    TouchPos := TouchPoint.X;
    if (ABs(TouchPos - PrePos) <> 0) then TouchSpeed := TouchPos - PrePos;
  end;
end;

procedure TGenerateQRCode.TP_PARTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled := false;
  PartID := TTouchLabel(TTouchPanel(Sender).Controls[0]).Name;

  StartPos := Mouse.CursorPos.X;
  PressFlag := true;
end;

procedure TGenerateQRCode.TP_PARTMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);    
var
  CurrentPos: integer;
begin
   if (PressFlag) AND (DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.X;
    ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position + (StartPos - CurrentPos);
    ScrollBox1.Repaint;
    StartPos := CurrentPos;
  end
  else if (PressFlag) AND (NOT DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.X;
    if (ABS(StartPos - CurrentPos) > 20) then
    begin
      PartID := '';
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;

procedure TGenerateQRCode.TP_PARTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (DragFlag) then
  begin
    if (Languages.CanTouch) then
      Speed := TouchSpeed DIV 2
    else
      Speed := Mouse.CursorPos.X - StartPos;
    if (Abs(Speed) > 0) then Timer1.Enabled := true;
  end;

  DragFlag := false;
  PressFlag := false;

  if (PartID <> '') then
  begin
    if (PrePartNumber > 0) then
    begin
      TTouchPanel(ScrollBox1.FindChildControl('PartTouchPanel' + IntToStr(PrePartNumber))).Color := $00323330;
      TTouchLabel(TTouchPanel(ScrollBox1.FindChildControl('PartTouchPanel' + IntToStr(PrePartNumber))).Controls[0]).Font.Color := clWhite;
    end;
    TTouchPanel(Sender).Color := $006FE2FF;
    TTouchLabel(TTouchPanel(Sender).Controls[0]).Font.Color := clBlack;
    PrePartNumber := StrToInt(StringReplace(TTouchPanel(Sender).Name, 'PartTouchPanel', '', [rfReplaceAll]));
    ScrollBox1.Repaint;

    QRPartID := Copy(TTouchLabel(TTouchPanel(Sender).Controls[0]).Caption, 1, Pos(#13#10, TTouchLabel(TTouchPanel(Sender).Controls[0]).Caption)-1);
    QRPart := StringReplace(TTouchLabel(TTouchPanel(Sender).Controls[0]).Caption, #13#10, '-', [rfReplaceAll]);
    if (SearchType = 'ORDER') then SearchCycle
    else if (SearchType = 'LIST') then SearchListCycle;
  end;
end;

procedure TGenerateQRCode.Timer1Timer(Sender: TObject);
begin
  if (Speed > 0) then
  begin
    ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position - Speed*2;
    Inc(Speed, -1);
  end
  else if (Speed < 0) then
  begin
    ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position - Speed*2;
    Inc(Speed, 1);
  end
  else if (Speed = 0) then
  begin
    Timer1.Enabled := false;
  end;
end;

{ SEARCH CYCLE }

procedure TGenerateQRCode.SearchCycle;
var
  Col, Row: integer;
begin
  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT XXCC FROM SMDD');
    SQL.Add('LEFT JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH');
    SQL.Add('WHERE GXLB = ''C'' AND YSBH = ''' + TP_ORDER.Caption + '''');
    SQL.Add('ORDER BY XXCC');
    Active := true;
  end;

  with ADOQCycle do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDBH');
    ADOQTemp.First;
    while not ADOQTemp.Eof do
    begin
      SQL.Add(', MAX(CASE WHEN XXCC = ''' + ADOQTemp.FieldByName('XXCC').AsString + ''' THEN Qty END) AS ''' + ADOQTemp.FieldByName('XXCC').AsString + '''');
      ADOQTemp.Next;
    end;
    SQL.Add('FROM (');
    SQL.Add('  SELECT DDBH, XXCC, CASE WHEN ScanQty = Qty THEN ''　'' + ShowQty ELSE ShowQty END AS Qty FROM (');
    SQL.Add('    SELECT SMDDS.DDBH, SMDDS.XXCC, CutDispatchSS.Qty, CutDispatchSS.ScanQty,');
    SQL.Add('    CASE WHEN ISNULL(CutDispatchSS.QRCode, 0) > 0 THEN '' '' + CAST(SMDDS.Qty AS VARCHAR) ELSE CAST(SMDDS.Qty AS VARCHAR) END AS ShowQty FROM SMDD');
    SQL.Add('    LEFT JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH');
    SQL.Add('    LEFT JOIN CutDispatchZL ON CutDispatchZL.ZLBH = SMDD.YSBH AND CutDispatchZL.SIZE = SMDDS.XXCC');
    SQL.Add('    LEFT JOIN CutDispatchSS ON CutDispatchSS.DDBH = SMDD.DDBH AND CutDispatchSS.SIZE = CutDispatchZL.SIZE AND CutDispatchSS.BWBH = CutDispatchZL.BWBH AND CutDispatchSS.CLBH = CutDispatchZL.CLBH');
    SQL.Add('    WHERE GXLB = ''C'' AND YSBH = ''' + TP_ORDER.Caption + ''' AND CutDispatchZL.BWBH = ''' + QRPartID + '''');
    SQL.Add('  ) AS SMDD');
    SQL.Add(') AS SMDD');
    SQL.Add('GROUP BY DDBH');
    SQL.Add('ORDER BY DDBH');
    Active := true;

    StringGrid1.ColCount := 2;
    StringGrid1.Cols[0].Clear;
    StringGrid1.Cols[1].Clear;
    if (RecordCount > 0) then
    begin
      StringGrid1.ColCount := ADOQTemp.RecordCount + 1;
      StringGrid1.RowCount := RecordCount + 1;

      ADOQTemp.First;
      Col := 1;
      while not ADOQTemp.Eof do
      begin
        StringGrid1.Cells[Col, 0] := ADOQTemp.FieldByName('XXCC').AsString;
        Inc(Col);
        ADOQTemp.Next();
      end;

      Row := 1;
      while not Eof do
      begin
        StringGrid1.Cells[0, Row] := FieldByName('DDBH').AsString;
        Col := 1;
        ADOQTemp.First;
        while not ADOQTemp.Eof do
        begin
          StringGrid1.Cells[Col, Row] := FieldByName(ADOQTemp.FieldByName('XXCC').AsString).AsString;
          Inc(Col);
          ADOQTemp.Next();
        end;
        Inc(Row);
        Next;
      end;
    end;
  end;

  StringGrid1.TopRow := 1;
  StringGrid1.LeftCol := 1;
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
  Panel3.Visible := true;
  Panel4.Visible := false;
  TP_PRINT.Visible := false;
end;

{ SEARCH LIST CYCLE }

procedure TGenerateQRCode.SearchListCycle;
var
  Col, Row: integer;
begin
  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SIZE FROM CutDispatchS');
    SQL.Add('WHERE DLNO = ''' + TP_ORDER.Caption + '''');
    SQL.Add('ORDER BY SIZE');
    Active := true;
  end;

  with ADOQCycle do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDBH');
    ADOQTemp.First;
    while not ADOQTemp.Eof do
    begin
      SQL.Add(', MAX(CASE WHEN SIZE = ''' + ADOQTemp.FieldByName('SIZE').AsString + ''' THEN Qty END) AS ''' + ADOQTemp.FieldByName('SIZE').AsString + '''');
      ADOQTemp.Next;
    end;
    SQL.Add('FROM (');
    SQL.Add('  SELECT DDBH, SIZE, CASE WHEN ScanQty = Qty THEN ''　'' + ShowQty ELSE ShowQty END AS Qty FROM (');
    SQL.Add('    SELECT DDBH, SIZE, Qty, ScanQty, CASE WHEN ISNULL(QRCode, 0) > 0 THEN '' '' + CAST(Qty AS VARCHAR) ELSE CAST(Qty AS VARCHAR) END AS ShowQty FROM CutDispatchSS');
    SQL.Add('    WHERE DLNO = ''' + TP_ORDER.Caption + ''' AND BWBH = ''' + QRPartID + '''');
    SQL.Add('  ) AS CutDispatchSS');
    SQL.Add(') AS CutDispatchSS');
    SQL.Add('GROUP BY DDBH');
    Active := true;

    StringGrid1.ColCount := 2;
    StringGrid1.Cols[0].Clear;
    StringGrid1.Cols[1].Clear;
    if (RecordCount > 0) then
    begin
      StringGrid1.ColCount := ADOQTemp.RecordCount + 1;
      StringGrid1.RowCount := RecordCount + 1;

      ADOQTemp.First;
      Col := 1;
      while not ADOQTemp.Eof do
      begin
        StringGrid1.Cells[Col, 0] := ADOQTemp.FieldByName('SIZE').AsString;
        Inc(Col);
        ADOQTemp.Next();
      end;

      Row := 1;
      while not Eof do
      begin
        StringGrid1.Cells[0, Row] := FieldByName('DDBH').AsString;
        Col := 1;
        ADOQTemp.First;
        while not ADOQTemp.Eof do
        begin
          StringGrid1.Cells[Col, Row] := FieldByName(ADOQTemp.FieldByName('SIZE').AsString).AsString;
          Inc(Col);
          ADOQTemp.Next();
        end;
        Inc(Row);
        Next;
      end;
    end;
  end;

  StringGrid1.TopRow := 1;
  StringGrid1.LeftCol := 1;
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
  Panel3.Visible := true;
  Panel4.Visible := false;
  TP_PRINT.Visible := false;
end;

procedure TGenerateQRCode.IMG_ORDERMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ObjName: string;
begin
  if (Sender IS TLabel) then
  begin
    ObjName := (Sender AS TLabel).Name;
    ObjName := StringReplace(ObjName, 'OrderLabel', '', [rfReplaceAll]);
    ObjName := StringReplace(ObjName, 'CycleLabel', '', [rfReplaceAll]);
    ObjName := StringReplace(ObjName, 'ArticleLabel', '', [rfReplaceAll]);
    ObjName := 'OrderImage' + ObjName;
    TImage(Self.FindComponent(ObjName)).Picture.Assign(SelectOrderBG);
  end
  else if (Sender IS TImage) then
  begin
    (Sender AS TImage).Picture.Bitmap.Assign(SelectOrderBG);
    (Sender AS TImage).Repaint;
  end;
end;

procedure TGenerateQRCode.IMG_ORDERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ObjName: string;
begin
  if (Sender IS TLabel) then
  begin
    ObjName := (Sender AS TLabel).Name;
    ObjName := StringReplace(ObjName, 'OrderLabel', '', [rfReplaceAll]);
    ObjName := StringReplace(ObjName, 'CycleLabel', '', [rfReplaceAll]);
    ObjName := StringReplace(ObjName, 'ArticleLabel', '', [rfReplaceAll]);
    ObjName := 'OrderImage' + ObjName;
    TImage(Self.FindComponent(ObjName)).Picture.Assign(OrderBG);
  end
  else if (Sender IS TImage) then
  begin
    (Sender AS TImage).Picture.Bitmap.Assign(OrderBG);
    (Sender AS TImage).Repaint;
  end;

  GenerateQRCode := TGenerateQRCode.Create(Self);
  GenerateQRCode.Show;
end;

{ StringGrid1 }

procedure TGenerateQRCode.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  ReplaceText: string;
begin
  with StringGrid1 do
  begin
    ReplaceText := StringReplace(StringReplace(Cells[ACol, ARow], ' ', '', [rfReplaceAll]), '　', '', [rfReplaceAll]);

    if (ACol >= 1) AND (ARow >= 1) then
    begin
      Canvas.Font.Size := 28;
      if (Pos('　', Cells[ACol, ARow]) > 0) then Canvas.Brush.Color := $0096FFC8
      else Canvas.Brush.Color := clWhite;
    end
    else if (ACol = 0) then
    begin
      Canvas.Font.Size := 16;
      Canvas.Font.Style := [fsBold];
      Canvas.Font.Color := clWhite;
    end
    else if (ARow = 0) then
    begin
      Canvas.Font.Style := [fsBold];
      Canvas.Font.Color := clWhite;
    end;

    Canvas.FillRect(Rect);

    if (gdSelected in State) then
    begin
      if (Cells[ACol, ARow] = '') then
      begin
        Canvas.Font.Color := clBlack;
        Canvas.Brush.Color := clWhite;
        Canvas.FillRect(Rect);
      end
      else begin
        Canvas.Font.Color := clBlack;
        Canvas.Brush.Color := $006FE2FF;
        Canvas.FillRect(Rect);
      end;
    end;

    DrawText(Canvas.Handle, PChar(ReplaceText), Length(ReplaceText), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

    if (ACol >= 1) AND (ARow >= 1) AND (Pos(' ', Cells[ACol, ARow]) > 0) then
    begin
      if (gdSelected in State) then
        Canvas.Draw(Rect.Left, Rect.Top, IMG_CHECKP.Picture.Bitmap)
      else if (Pos('　', Cells[ACol, ARow]) > 0) then
        Canvas.Draw(Rect.Left, Rect.Top, IMG_CHECKOK.Picture.Bitmap)
      else
        Canvas.Draw(Rect.Left, Rect.Top, IMG_CHECK.Picture.Bitmap);
    end;
  end;
end;

procedure TGenerateQRCode.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if (TP_PRINT.Visible = false) then
  begin
    TP_PRINT.Visible := true;
    TP_PRINT.Repaint;
  end;
end;

procedure TGenerateQRCode.StringGrid1Touch(Sender: TObject; X, Y: Integer);
var
  TouchPoint: TPoint;
begin
  TouchPoint := StringGrid1.ClientToScreen(Point(X, Y));
  SetCursorPos(TouchPoint.X, TouchPoint.Y);
end;

{ PRINT BUTTON }

procedure TGenerateQRCode.TP_PRINTTouch(Sender: TObject; X, Y: Integer);
begin
  TP_PRINTMouseDown(Sender, mbLeft, [], X, Y);
end;
    
procedure TGenerateQRCode.TP_PRINTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_PRINT.Font.Color := clBlack;
  TP_PRINT.Color := $006FE2FF;
end;

procedure TGenerateQRCode.TP_PRINTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
  Flag: Boolean;
begin
  TP_PRINT.Font.Color := clWhite;
  TP_PRINT.Color := $00323330;
  Flag := false;
  
  if (ADOQCycle.Active) then
  begin
    if (ADOQCycle.RecordCount > 0) AND (StringGrid1.Selection.Top > 0) then
    begin
      for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
      begin
        for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
        begin
          if (StringGrid1.Cells[Col, Row] <> '') then
          begin
            Flag := true;
            Break;
          end;
        end;

        if (Flag) then Break;
      end;

      if (Flag) then
      begin
        PrintType := 'NORMAL';
        LeanSelection := TLeanSelection.Create(Self);
        LeanSelection.Show;
      end;
    end;
  end;
end;

procedure TGenerateQRCode.PrintQRCode;
var
  Col, Row, i: integer;
  QRListID, SIZELIST, sYear, sMonth: string;
  NDate: TDate;
  InsertFlag, Flag: Boolean;
begin
  LeanSelection.Close;
  QRListID := '';
  Flag := false;
  if (LeanID = 'LEATHER') then LeanID := '';
  
  //CHECK IF IT IS DISPATCHED
  InsertFlag := false;
  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchZL.ZLBH, SMDD.DDBH, CutDispatchZL.BWBH, CutDispatchZL.SIZE, CutDispatchZL.CLBH, SMDDS.Qty FROM CutDispatchZL');
    SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = CutDispatchZL.ZLBH AND SMDD.GXLB = ''C''');
    SQL.Add('LEFT JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH AND SMDDS.XXCC = CutDispatchZL.SIZE');
    SQL.Add('LEFT JOIN CutDispatchSS ON CutDispatchSS.DDBH = SMDD.DDBH AND CutDispatchSS.BWBH = CutDispatchZL.BWBH AND CutDispatchSS.SIZE = CutDispatchZL.SIZE AND CutDispatchSS.CLBH = CutDispatchZL.CLBH');
    SQL.Add('WHERE CutDispatchZL.ZLBH = ''' + TP_ORDER.Caption + ''' AND CutDispatchZL.BWBH = ''' + QRPartID + ''' AND SMDDS.Qty IS NOT NULL AND CutDispatchSS.DLNO IS NULL');
    SQL.Add('AND (');
    for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
    begin
      SIZELIST := '(';
      for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
      begin
        SIZELIST := SIZELIST + '''' + StringGrid1.Cells[Col, 0] + ''',';
      end;
      SIZELIST := Copy(SIZELIST, 1, Length(SIZELIST)-1) + ')';

      if (Row = StringGrid1.Selection.Bottom) then
        SQL.Add('  (SMDDS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchZL.SIZE IN ' + SIZELIST + ')')
      else
        SQL.Add('  (SMDDS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchZL.SIZE IN ' + SIZELIST + ') OR');
    end;
    SQL.Add(')');
    Active := true;

    if (RecordCount > 0) then InsertFlag := true;
  end;

  if (InsertFlag) then
  begin
    //計算派工單號
    with ADOQTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT YEAR(GETDATE()) AS FY, MONTH(GETDATE()) AS FM, GETDATE() AS NDate');
      Active := true;
      NDate := FieldByName('NDate').Value;
      sYear := FieldByName('FY').AsString;
      sMonth := FieldByName('FM').AsString;

      if (Length(sMonth) < 2) then sMonth := '0' + sMonth;

      Active := false;
      SQL.Clear;
      SQL.Add('SELECT DLNO FROM CutDispatch WHERE DLNO LIKE ''' + sYear + sMonth + '%''');
      SQL.Add('ORDER BY DLNO');
      Active := true;

      if (RecordCount > 0) then
      begin
        Last;
        QRListID := FieldByName('DLNO').AsString;
        QRListID := Copy(QRListID, 7, 5);
        QRListID := IntToStr(StrToInt(QRListID) + 1);
        while (Length(QRListID) < 5) do
        begin
          QRListID := '0' + QRListID;
        end;
      end
      else begin
        QRListID := '00001';
      end;

      QRListID := sYear + sMonth + QRListID;
    end;

    //新增派工單資料
    with ADOQUpdate do
    begin
      //Insert CutDispatch
      SQL.Clear;
      SQL.Add('INSERT INTO CutDispatch');
      SQL.Add('(DLNO, DLLB, GSBH, DepID, PlanDate, Memo, USERID, USERDATE, YN)');
      SQL.Add('VALUES');
      SQL.Add('(''' + QRListID + ''', ''' + DLLB + ''', ''TBA'', ''' + LeanID + ''', GetDate(), NULL, ''DataCenter'', GetDate(), 1)');
      ExecSQL;

      //Insert CutDispatchS
      SQL.Clear;
      SQL.Add('INSERT INTO CutDispatchS');
      SQL.Add('SELECT ''' + QRListID + ''' AS DLNO, ZLBH, BWBH, SIZE, CLBH, Qty, XXCC,');
      SQL.Add('CASE WHEN Joinnum > 0 THEN CEILING(Qty*Piece/CONVERT(FLOAT, Layer)*Joinnum) ELSE 0 END AS CutNum,');
      SQL.Add('0 AS okCutNum, ''DATACENTER'' AS USERID, GETDATE() AS USERDATE, NULL AS ScanUser, NULL AS ScanDate, 1 AS YN FROM (');
      SQL.Add('  SELECT CutDispatchZL.ZLBH, CutDispatchZL.BWBH, CutDispatchZL.SIZE, CutDispatchZL.CLBH, SUM(SMDDS.Qty) AS Qty,');
      SQL.Add('  SMDDS.XXCC, CutDispatchZL.Joinnum, CutDispatchZL.Piece, CutDispatchZL.Layer FROM CutDispatchZL');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = CutDispatchZL.ZLBH AND SMDD.GXLB = ''C''');
      SQL.Add('  LEFT JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH AND SMDDS.XXCC = CutDispatchZL.SIZE');
      SQL.Add('  LEFT JOIN CutDispatchSS ON CutDispatchSS.DDBH = SMDD.DDBH AND CutDispatchSS.BWBH = CutDispatchZL.BWBH AND CutDispatchSS.SIZE = CutDispatchZL.SIZE AND CutDispatchSS.CLBH = CutDispatchZL.CLBH');
      SQL.Add('  WHERE CutDispatchZL.ZLBH = ''' + TP_ORDER.Caption + ''' AND CutDispatchZL.BWBH = ''' + QRPartID + ''' AND SMDDS.Qty IS NOT NULL AND CutDispatchSS.DLNO IS NULL');
      SQL.Add('  AND (');

      for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
      begin
        SIZELIST := '(';
        for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
        begin
          SIZELIST := SIZELIST + '''' + StringGrid1.Cells[Col, 0] + ''',';
        end;
        SIZELIST := Copy(SIZELIST, 1, Length(SIZELIST)-1) + ')';

        if (Row = StringGrid1.Selection.Bottom) then
          SQL.Add('    (SMDDS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchZL.SIZE IN ' + SIZELIST + ')')
        else
          SQL.Add('    (SMDDS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchZL.SIZE IN ' + SIZELIST + ') OR');
      end;

      SQL.Add('  )');
      SQL.Add('  GROUP BY CutDispatchZL.ZLBH, CutDispatchZL.BWBH, CutDispatchZL.SIZE, CutDispatchZL.CLBH, SMDDS.XXCC, CutDispatchZL.Joinnum, CutDispatchZL.Piece, CutDispatchZL.Layer');
      SQL.Add(') AS CutDispatchZL');
      ExecSQL;

      //Insert CutDispatchSS
      SQL.Clear;
      SQL.Add('INSERT INTO CutDispatchSS');
      SQL.Add('SELECT ''' + QRListID + ''' AS DLNO, ZLBH, DDBH, BWBH, SIZE, CLBH, Qty, 0 AS ScanQty, 0 AS QRCode,');
      SQL.Add('''' + MachineID + ''' AS Machine, GETDATE() AS MachineDate, ''DATACENTER'' AS USERID, GETDATE() AS USERDATE, 1 AS YN FROM (');
      SQL.Add('  SELECT CutDispatchZL.ZLBH, SMDD.DDBH, CutDispatchZL.BWBH, CutDispatchZL.SIZE, CutDispatchZL.CLBH, SMDDS.Qty FROM CutDispatchZL');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = CutDispatchZL.ZLBH AND SMDD.GXLB = ''C''');
      SQL.Add('  LEFT JOIN SMDDS ON SMDDS.DDBH = SMDD.DDBH AND SMDDS.XXCC = CutDispatchZL.SIZE');
      SQL.Add('  LEFT JOIN CutDispatchSS ON CutDispatchSS.DDBH = SMDD.DDBH AND CutDispatchSS.BWBH = CutDispatchZL.BWBH AND CutDispatchSS.SIZE = CutDispatchZL.SIZE AND CutDispatchSS.CLBH = CutDispatchZL.CLBH');
      SQL.Add('  WHERE CutDispatchZL.ZLBH = ''' + TP_ORDER.Caption + ''' AND CutDispatchZL.BWBH = ''' + QRPartID + ''' AND SMDDS.Qty IS NOT NULL AND CutDispatchSS.DLNO IS NULL');
      SQL.Add('  AND (');

      for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
      begin
        SIZELIST := '(';
        for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
        begin
          SIZELIST := SIZELIST + '''' + StringGrid1.Cells[Col, 0] + ''',';
        end;
        SIZELIST := Copy(SIZELIST, 1, Length(SIZELIST)-1) + ')';

        if (Row = StringGrid1.Selection.Bottom) then
          SQL.Add('    (SMDDS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchZL.SIZE IN ' + SIZELIST + ')')
        else
          SQL.Add('    (SMDDS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchZL.SIZE IN ' + SIZELIST + ') OR');
      end;

      SQL.Add('  )');
      SQL.Add(') AS CutDispatchZL');
      ExecSQL;
    end;
  end;

  //UPDATE LAST CHOOSE MACHINE DATA AND NUMBERS OF QRCODE THAT HAS BEEN PRINTED
  with ADOQUpdate do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CutDispatchSS SET QRCode = ISNULL(QRCode, 0) + 1, Machine = ''' + MachineID + ''', MachineDate = GETDATE()');
    SQL.Add('WHERE BWBH = ''' + QRPartID + '''');
    SQL.Add('AND (');
    for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
    begin
      SIZELIST := '(';
      for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
      begin
        SIZELIST := SIZELIST + '''' + StringGrid1.Cells[Col, 0] + ''',';
      end;
      SIZELIST := Copy(SIZELIST, 1, Length(SIZELIST)-1) + ')';

      if (Row = StringGrid1.Selection.Bottom) then
        SQL.Add('  (DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND SIZE IN ' + SIZELIST + ')')
      else
        SQL.Add('  (DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND SIZE IN ' + SIZELIST + ') OR');
    end;
    SQL.Add(')');
    ExecSQL;
  end;

  QRLabel := TQRLabel.Create(Self);
  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchSS.*, CutDispatchZL.XXCC, XXZL.DAOMH FROM CutDispatchSS');
    SQL.Add('LEFT JOIN CutDispatchZL ON CutDispatchZL.ZLBH = CutDispatchSS.ZLBH AND CutDispatchZL.BWBH = CutDispatchSS.BWBH AND CutDispatchZL.SIZE = CutDispatchSS.SIZE AND CutDispatchZL.CLBH = CutDispatchSS.CLBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CutDispatchSS.ZLBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE CutDispatchSS.BWBH = ''' + QRPartID + '''');
    SQL.Add('AND (');
    for Row := StringGrid1.Selection.Top to StringGrid1.Selection.Bottom do
    begin
      SIZELIST := '(';
      for Col := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
      begin           
        SIZELIST := SIZELIST + '''' + StringGrid1.Cells[Col, 0] + ''',';
        if (StringGrid1.Cells[Col, Row] <> '') then
          StringGrid1.Cells[Col, Row] := ' ' + StringGrid1.Cells[Col, Row];
      end;
      SIZELIST := Copy(SIZELIST, 1, Length(SIZELIST)-1) + ')';

      if (Row = StringGrid1.Selection.Bottom) then
        SQL.Add('  (CutDispatchSS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchSS.SIZE IN ' + SIZELIST + ')')
      else
        SQL.Add('  (CutDispatchSS.DDBH = ''' + StringGrid1.Cells[0, Row] + ''' AND CutDispatchSS.SIZE IN ' + SIZELIST + ') OR');
    end;
    SQL.Add(')');
    SQL.Add('ORDER BY CutDispatchSS.SIZE, CutDispatchSS.DDBH');
    Active := true;

    while not Eof do
    begin
      for i := 1 to FieldByName('Qty').AsInteger div 12 do begin
//      QRLabel.QRUpdate('NORMAL', FieldByName('DLNO').AsString, FieldByName('ZLBH').AsString, FieldByName('DDBH').AsString, FieldByName('BWBH').AsString, QRPart, FieldByName('SIZE').AsString, FieldByName('XXCC').AsString, FieldByName('CLBH').AsString, FieldByName('Qty').AsString, LeanName, MachineName, FieldByName('DAOMH').AsString, 0, 0);
        QRLabel.QRUpdate('NORMAL', FieldByName('DLNO').AsString, FieldByName('ZLBH').AsString, FieldByName('DDBH').AsString, FieldByName('BWBH').AsString, QRPart, FieldByName('SIZE').AsString, FieldByName('XXCC').AsString, FieldByName('CLBH').AsString, '12', LeanName, MachineName, FieldByName('DAOMH').AsString, 0, 0);
        Printer.Orientation := poLandscape;
        QRLabel.Print;
      end;
      if FieldByName('Qty').AsInteger mod 12 <> 0 then begin
        QRLabel.QRUpdate('NORMAL', FieldByName('DLNO').AsString, FieldByName('ZLBH').AsString, FieldByName('DDBH').AsString, FieldByName('BWBH').AsString, QRPart, FieldByName('SIZE').AsString, FieldByName('XXCC').AsString, FieldByName('CLBH').AsString, inttostr(FieldByName('Qty').AsInteger mod 12), LeanName, MachineName, FieldByName('DAOMH').AsString, 0, 0);
        Printer.Orientation := poLandscape;
        QRLabel.Print;
      end;
      Next;
    end;
  end;
  QRLabel.Close;
end;

{ RETURN BUTTON }

procedure TGenerateQRCode.TP_RETURNTouch(Sender: TObject; X, Y: Integer);
begin
  TP_RETURNMouseDown(Sender, mbLeft, [], X, Y);
end;
    
procedure TGenerateQRCode.TP_RETURNMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_RETURNP.Visible := true;
  IMG_RETURN.Visible := false;
end;

procedure TGenerateQRCode.TP_RETURNMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_RETURN.Visible := true;
  IMG_RETURNP.Visible := false;
  Close;
end;

{ HOME BUTTON }

procedure TGenerateQRCode.TP_HOMETouch(Sender: TObject; X, Y: Integer);
begin
  TP_HOMEMouseDown(Sender, mbLeft, [], X, Y);
end;
          
procedure TGenerateQRCode.TP_HOMEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_HOME.Font.Color := $006FE2FF;
end;

{ PRINT QRCODE OF WHOLE LIST }

procedure TGenerateQRCode.TP_HOMEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_HOME.Font.Color := clWhite;
  if (OrderSchedule <> Nil) then OrderSchedule.Close;
  if (OrderSearch <> Nil) then OrderSearch.Close;
  Close;
end;
      
procedure TGenerateQRCode.TP_ORDERTouch(Sender: TObject; X, Y: Integer);
begin
  TP_ORDERMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TGenerateQRCode.TP_ORDERMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (SearchType = 'LIST') then
  begin
    TP_ORDER.Color := $006FE2FF;
    TP_ORDER.Font.Color := clBlack;
  end;
end;

procedure TGenerateQRCode.TP_ORDERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (SearchType = 'LIST') then
  begin
    TP_ORDER.Color := clBlack;
    TP_ORDER.Font.Color := $006FE2FF;
    PrintType := 'LIST';
    DCMessage := TDCMessage.Create(Self);
    DCMessage.Source := 'GenerateQRcode';
    DCMessage.SetMessage(ConfirmMessage);
    DCMessage.Show;
  end;
end;

procedure TGenerateQRCode.PrintListQRCode;
var i: integer;
begin
  LeanSelection.Close;
  if (LeanID = 'LEATHER') then LeanID := '';

  //UPDATE LIST DATA
  with ADOQUpdate do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CutDispatch SET DLLB = ''' + DLLB + ''', DepID = ''' + LeanID + '''');
    SQL.Add('WHERE DLNO = ''' + TP_ORDER.Caption + ''';');
    SQL.Add('UPDATE CutDispatchSS SET Machine = ''' + MachineID + ''', QRCode = ISNULL(QRCode, 0) + 1, MachineDate = GetDate()');
    SQL.Add('WHERE DLNO = ''' + TP_ORDER.Caption + ''';');
    ExecSQL;
  end;

  QRLabel := TQRLabel.Create(Self);
  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchSS.DLNO, CutDispatchSS.ZLBH,');
    SQL.Add('CASE WHEN MIN(CutDispatchSS.DDBH) <> MAX(CutDispatchSS.DDBH) THEN REPLACE(REPLACE(MIN(CutDispatchSS.DDBH), CutDispatchSS.ZLBH, ''''), ''-'', '''') + '' - '' + REPLACE(REPLACE(MAX(CutDispatchSS.DDBH), CutDispatchSS.ZLBH, ''''), ''-'', '''')');
    SQL.Add('ELSE CASE WHEN MIN(CutDispatchSS.DDBH) = CutDispatchSS.ZLBH THEN '''' ELSE REPLACE(REPLACE(MIN(CutDispatchSS.DDBH), CutDispatchSS.ZLBH, ''''), ''-'', '''') END END AS Cycle,');
    SQL.Add('CASE WHEN MIN(CutDispatchSS.SIZE) = MAX(CutDispatchSS.SIZE) THEN MIN(CutDispatchSS.SIZE) ELSE ''--'' END AS SIZE, CutDispatchSS.CLBH,');
    SQL.Add('FLOOR(SUM(CutDispatchSS.Qty) / CutDispatchBW.CountBW) AS Qty, XXZL.DAOMH FROM CutDispatchSS');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CutDispatchSS.ZLBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DLNO, COUNT(BWBH) AS CountBW FROM (');
    SQL.Add('    SELECT DISTINCT DLNO, BWBH FROM CutDispatchSS');
    SQL.Add('  ) AS CutDispatchBW');
    SQL.Add('  GROUP BY DLNO');
    SQL.Add(') AS CutDispatchBW ON CutDispatchBW.DLNO = CutDispatchSS.DLNO');
    SQL.Add('WHERE CutDispatchSS.DLNO = ''' + TP_ORDER.Caption + '''');
    SQL.Add('GROUP BY CutDispatchSS.DLNO, CutDispatchSS.ZLBH, CutDispatchSS.CLBH, XXZL.DAOMH, CutDispatchBW.CountBW');
    Active := true;

    while not Eof do
    begin
//      QRLabel.QRUpdate('LIST', FieldByName('DLNO').AsString, FieldByName('ZLBH').AsString, FieldByName('ZLBH').AsString, '', FieldByName('Cycle').AsString, FieldByName('SIZE').AsString, '--', FieldByName('CLBH').AsString, FieldByName('Qty').AsString, LeanName, MachineName, FieldByName('DAOMH').AsString, 0, 0);
//      Printer.Orientation := poLandscape;
//      QRLabel.Print;

      for i := 1 to FieldByName('Qty').AsInteger div 12 do begin
        QRLabel.QRUpdate('LIST', FieldByName('DLNO').AsString, FieldByName('ZLBH').AsString, FieldByName('ZLBH').AsString, '', FieldByName('Cycle').AsString, FieldByName('SIZE').AsString, '--', FieldByName('CLBH').AsString, '12', LeanName, MachineName, FieldByName('DAOMH').AsString, 0, 0);
        Printer.Orientation := poLandscape;
        QRLabel.Print;
      end;
      if FieldByName('Qty').AsInteger mod 12 <> 0 then begin
        QRLabel.QRUpdate('LIST', FieldByName('DLNO').AsString, FieldByName('ZLBH').AsString, FieldByName('ZLBH').AsString, '', FieldByName('Cycle').AsString, FieldByName('SIZE').AsString, '--', FieldByName('CLBH').AsString, inttostr(FieldByName('Qty').AsInteger mod 12), LeanName, MachineName, FieldByName('DAOMH').AsString, 0, 0);
        Printer.Orientation := poLandscape;
        QRLabel.Print;
      end;
      Next;
    end;
  end;     
  QRLabel.Close;
end;

end.
