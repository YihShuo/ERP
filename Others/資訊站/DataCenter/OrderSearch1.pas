unit OrderSearch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, TouchPanel, D7GesturesHeader,
  TouchLabel, jpeg;

type
  TOrderSearch = class(TForm)
    Panel1: TPanel;
    IMG_RETURNP: TImage;
    IMG_RETURN: TImage;
    IMG_MENUP: TImage;
    IMG_MENU: TImage;
    Panel2: TPanel;
    IMG_HOMEP: TImage;
    IMG_HOME: TImage;
    ScrollBox2: TScrollBox;
    LB_TIPS: TLabel;
    IMG_ORDER: TImage;
    ScrollBox1: TScrollBox;
    IMG_SEARCH: TImage;
    IMG_SEARCHP: TImage;
    ADOQOrder: TADOQuery;
    ED_ORDER: TEdit;
    Timer1: TTimer;
    LB_MARGIN: TLabel;
    LB_LOADING: TLabel;
    Panel3: TPanel;
    TP_MENU: TTouchPanel;
    TP_RETURN: TTouchPanel;
    TP_HOME: TTouchPanel;
    TP_SEARCH: TTouchPanel;
    TP_ORDER: TTouchPanel;
    LB_ORDER: TTouchLabel;
    LB_CYCLE: TTouchLabel;
    LB_ARTICLE: TTouchLabel;
    IMG_OK: TImage;
    IMG_ORDERP: TImage;
    IMG_OKP: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ED_ORDERKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure LB_TIPSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LB_TIPSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LB_TIPSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ED_ORDERChange(Sender: TObject);
    procedure ED_ORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MENUTouch(Sender: TObject; X, Y: Integer);
    procedure TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_RETURNTouch(Sender: TObject; X, Y: Integer);
    procedure TP_RETURNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SEARCHTouch(Sender: TObject; X, Y: Integer);
    procedure TP_SEARCHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMETouch(Sender: TObject; X, Y: Integer);
    procedure TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ORDERTouch(Sender: TObject; X, Y: Integer);
    procedure TP_ORDERMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_ORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_RETURNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SEARCHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ORDERMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    OrderScanStatus, OrderScanDrawValue, OrderDispatchStatus, OrderDispatchDrawValue: Array Of Integer;
    DragFlag, PressFlag: Boolean;
    OrderBG, SelectOrderBG, OrderOKBG, SelectOrderOKBG: TBitmap;
    ScreenOrderNumber, PreOrderNumber, StartPos, PrePos, TouchPos, Speed, TouchSpeed: integer;
    Tips, Warning: string;
    procedure SetLanguage;
    procedure SetTouchEvent;
    { Private declarations }
  public
    Selection: string;
    Target: TImage;
    KeyBoardFlag: Boolean;   
    procedure SearchOrder(Order: String);
    { Public declarations }
  end;

var
  OrderSearch: TOrderSearch;

implementation

uses LeftMenu1, GenerateQRCode1, Languages1, KeyBoard1;

const
  VerGap: integer = 10;
  HorGap: integer = 70;

{$R *.dfm}

procedure TOrderSearch.SetLanguage;
begin
  Tips := 'THERE IS NO ORDER AVAILABLE';
  Warning := 'PLEASE ENTER AT LEAST 9 CHARACTERS';

  if (Languages.Language = 'CN') then
  begin
    Tips := '無訂單資料';
    Warning := '請輸入至少9個字元';
    LB_TIPS.Caption := '請輸入訂單編號';
    LB_LOADING.Caption := '資料載入中...';
  end
  else if (Languages.Language = 'VN') then
  begin
    Tips := 'KHONG CO THONG TIN DON HANG';
    Warning := 'VUI LONG NHAP IT NHAT 9 CHU SO';
    LB_TIPS.Caption := 'VUI LONG NHAP LEAN';
    LB_LOADING.Caption := 'DANG TAI DU LIEU...';
  end;
end;

procedure TOrderSearch.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  PreOrderNumber := 0;
  DragFlag := false;
  PressFlag := false;
  KeyBoardFlag := false;
  ScreenOrderNumber := (Screen.Width + HorGap - 16) DIV (IMG_ORDER.Width + HorGap);

  ED_ORDER.Width := Screen.Width - ED_ORDER.Left;
  ED_ORDER.Text := '';

  OrderBG := TBitmap.Create;
  OrderBG.Assign(IMG_ORDER.Picture.Bitmap);
  OrderBG.Canvas.Pen.Color := clGray;
  OrderBG.Canvas.Pen.Width := 2;
  OrderBG.Canvas.MoveTo(9, 9);
  OrderBG.Canvas.LineTo(9, OrderBG.Height-9);
  OrderBG.Canvas.LineTo(OrderBG.Width-9, OrderBG.Height-9);
  OrderBG.Canvas.LineTo(OrderBG.Width-9, 9);
  OrderBG.Canvas.LineTo(9, 9);

  SelectOrderBG := TBitmap.Create;
  SelectOrderBG.Assign(IMG_ORDERP.Picture.Bitmap);

  OrderOKBG := TBitmap.Create;
  OrderOKBG.Assign(IMG_OK.Picture.Bitmap);
  OrderOKBG.Canvas.Brush.Style := bsClear;
  OrderOKBG.Canvas.Pen.Color := $0049AD41;
  OrderOKBG.Canvas.Pen.Width := 2;
  OrderOKBG.Canvas.MoveTo(9, 9);
  OrderOKBG.Canvas.LineTo(9, OrderOKBG.Height-9);
  OrderOKBG.Canvas.LineTo(OrderOKBG.Width-9, OrderOKBG.Height-9);
  OrderOKBG.Canvas.LineTo(OrderOKBG.Width-9, 9);
  OrderOKBG.Canvas.LineTo(9, 9);   
  OrderOKBG.Canvas.Font.Name := LB_ORDER.Font.Name;
  OrderOKBG.Canvas.Font.Size := 10;
  OrderOKBG.Canvas.Font.Color := $0049AD41;
  OrderOKBG.Canvas.Font.Style := [fsBold];
  OrderOKBG.Canvas.TextOut(290, 125, 'COMPLETED');

  SelectOrderOKBG := TBitmap.Create;
  SelectOrderOKBG.Assign(IMG_OKP.Picture.Bitmap);
  SelectOrderOKBG.Canvas.Brush.Style := bsClear;
  SelectOrderOKBG.Canvas.Font.Name := LB_ORDER.Font.Name;
  SelectOrderOKBG.Canvas.Font.Size := 10;
  SelectOrderOKBG.Canvas.Font.Color := $0049AD41;
  SelectOrderOKBG.Canvas.Font.Style := [fsBold];
  SelectOrderOKBG.Canvas.TextOut(290, 125, 'COMPLETED');

  TP_RETURN.Left := Screen.Width - TP_RETURN.Width - 5;
  IMG_RETURN.Transparent := true;
  IMG_RETURN.Picture.Bitmap.TransparentColor := clBlack;
  IMG_RETURNP.Transparent := true;
  IMG_RETURNP.Picture.Bitmap.TransparentColor := clBlack;

  IMG_MENU.Transparent := true;
  IMG_MENU.Picture.Bitmap.TransparentColor := clBlack;
  IMG_MENUP.Transparent := true;
  IMG_MENUP.Picture.Bitmap.TransparentColor := clBlack;

  TP_HOME.Left := (Screen.Width - TP_HOME.Width) DIV 2;
  IMG_HOME.Transparent := true;
  IMG_HOME.Picture.Bitmap.TransparentColor := clBlack;
  IMG_HOMEP.Transparent := true;
  IMG_HOMEP.Picture.Bitmap.TransparentColor := clBlack;
  
  IMG_SEARCH.Transparent := true;
  IMG_SEARCH.Picture.Bitmap.TransparentColor := clBlack;
  IMG_SEARCHP.Transparent := true;
  IMG_SEARCHP.Picture.Bitmap.TransparentColor := clBlack;

  Panel3.Top := ScrollBox2.Top;
  Panel3.Left := 0;
  Panel3.Width := Screen.Width;
  Panel3.Height := Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height;

  ScrollBox2.DoubleBuffered := true;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TOrderSearch.SetTouchEvent;
begin
  EnableAllGestures(TP_MENU.Handle);
  RegisterTouchWindowFn(TP_MENU.Handle, 0);

  EnableAllGestures(TP_RETURN.Handle);
  RegisterTouchWindowFn(TP_RETURN.Handle, 0);

  EnableAllGestures(TP_SEARCH.Handle);
  RegisterTouchWindowFn(TP_SEARCH.Handle, 0);

  EnableAllGestures(TP_HOME.Handle);
  RegisterTouchWindowFn(TP_HOME.Handle, 0);
end;
   
procedure TOrderSearch.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
  ED_ORDER.SetFocus;
end;
   
procedure TOrderSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TOrderSearch.FormDestroy(Sender: TObject);
begin
  OrderSearch := Nil;
end;

procedure TOrderSearch.SearchOrder(Order: String);
var
  OrderTouchPanel: TTouchPanel;
  OrderImage: TImage;
  OrderLabel, CycleLabel, ArticleLabel: TTouchLabel;
  FreeObject: TObject;
  i, j, k, MaxHeight, OrderHeight, Margin: integer;
begin
  if (Length(Order) < 9) then
  begin
    ED_ORDER.Font.Color := clRed;
    LB_TIPS.Caption := Warning;
    Exit;
  end
  else begin
    Panel3.Visible := true;
    Panel3.Refresh;
    LB_TIPS.BringToFront;
    LB_TIPS.Caption := '';
    LB_TIPS.Refresh;
  end;

  for k:=1 to PreOrderNumber do
  begin
    FreeObject := TTouchPanel(Self.FindComponent('OrderTouchPanel' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TImage(Self.FindComponent('OrderImage' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TLabel(Self.FindComponent('OrderLabel' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TLabel(Self.FindComponent('CycleLabel' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TLabel(Self.FindComponent('ArticleLabel' + IntToStr(k)));
  end;

  ScrollBox2.VertScrollBar.Position := 0;

  with ADOQOrder do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SMDD.YSBH, DDZL.ARTICLE, CASE WHEN SMDD.Flag = 0 THEN ''T'' + RIGHT(MIN(SMDD.DDBH), 3) + '' - T'' + RIGHT(MAX(SMDD.DDBH), 3) ELSE ''T001'' END AS DDBH,');
    SQL.Add('FLOOR(CASE WHEN CutDispatch.Qty >= CutDispatch.ZLQty THEN 100 ELSE CutDispatch.Qty*100.0/CutDispatch.ZLQty END) AS DispatchCompleted,');
    SQL.Add('FLOOR(CutDispatch.Qty*240.0/CutDispatch.ZLQty) AS DispatchDrawValue,');
    SQL.Add('FLOOR(CASE WHEN CutDispatch.ScanQty >= CutDispatch.ZLQty THEN 100 ELSE CutDispatch.ScanQty*100.0/CutDispatch.ZLQty END) AS ScanCompleted,');
    SQL.Add('FLOOR(CutDispatch.ScanQty*240.0/CutDispatch.ZLQty) AS ScanDrawValue FROM (');
    SQL.Add('  SELECT YSBH, DDBH, CASE WHEN YSBH = DDBH THEN 1 ELSE 0 END AS Flag FROM SMDD');
    if (Order <> '') then
      SQL.Add('  WHERE GXLB = ''C'' AND YSBH LIKE ''' + Order + '%''')
    else
      SQL.Add('  WHERE GXLB = ''C'' AND YSBH = ''' + Order + '''');
    SQL.Add(') AS SMDD');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CutDispatchZL.ZLBH, SUM(CutDispatchZL.Qty) AS ZLQty, SUM(CutDispatchSS.Qty) AS Qty, SUM(CutDispatchSS.ScanQty) AS ScanQty FROM CutDispatchZL');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ZLBH, BWBH, CLBH, SIZE, SUM(Qty) AS Qty, SUM(ScanQty) AS ScanQty FROM CutDispatchSS');
    SQL.Add('    GROUP BY ZLBH, BWBH, CLBH, SIZE');
    SQL.Add('  ) AS CutDispatchSS ON CutDispatchSS.ZLBH = CutDispatchZL.ZLBH AND CutDispatchSS.BWBH = CutDispatchZL.BWBH AND CutDispatchSS.CLBH = CutDispatchZL.CLBH AND CutDispatchSS.SIZE = CutDispatchZL.SIZE');
    SQL.Add('  GROUP BY CutDispatchZL.ZLBH');
    SQL.Add(') AS CutDispatch ON CutDispatch.ZLBH = SMDD.YSBH');
    SQL.Add('WHERE DDZL.DDZT <> ''C''');
    SQL.Add('GROUP BY SMDD.YSBH, DDZL.ARTICLE, SMDD.Flag, CutDispatch.ZLQty, CutDispatch.Qty, CutDispatch.ScanQty');
    SQL.Add('ORDER BY SMDD.YSBH');
    Active := true;

    SetLength(OrderDispatchStatus, RecordCount+1);
    SetLength(OrderDispatchDrawValue, RecordCount+1);
    SetLength(OrderScanStatus, RecordCount+1);
    SetLength(OrderScanDrawValue, RecordCount+1);

    OrderHeight := VerGap + 16 + (RecordCount DIV ScreenOrderNumber) * (IMG_ORDER.Height + VerGap);
    if (OrderHeight > Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height) then
      Margin := (Screen.Width - (33 + ScreenOrderNumber * IMG_ORDER.Width + (ScreenOrderNumber-1) * HorGap)) DIV 2
    else
      Margin := (Screen.Width - (16 + ScreenOrderNumber * IMG_ORDER.Width + (ScreenOrderNumber-1) * HorGap)) DIV 2;

    i := 0;
    j := 0;
    k := 1;
    MaxHeight := 0;
    while not Eof do
    begin
      OrderDispatchStatus[k] := FieldByName('DispatchCompleted').AsInteger;
      OrderDispatchDrawValue[k] := FieldByName('DispatchDrawValue').AsInteger;
      OrderScanStatus[k] := FieldByName('ScanCompleted').AsInteger;
      OrderScanDrawValue[k] := FieldByName('ScanDrawValue').AsInteger;

      OrderTouchPanel := TTouchPanel.Create(Self);
      OrderTouchPanel.Name := 'OrderTouchPanel' + IntToStr(k);
      OrderTouchPanel.AutoSize := true;
      OrderTouchPanel.BevelOuter := bvNone;
      OrderTouchPanel.Parent := ScrollBox2;
      OrderTouchPanel.Color := clWhite;
      OrderTouchPanel.OnTouch := TP_ORDER.OnTouch;
      OrderTouchPanel.OnMouseDown := TP_ORDER.OnMouseDown;
      OrderTouchPanel.OnMouseMove := TP_ORDER.OnMouseMove;
      OrderTouchPanel.OnMouseUp := TP_ORDER.OnMouseUp;

      if (j > ScreenOrderNumber-1) then
      begin
        j := 0;
        Inc(i);
      end;

      OrderTouchPanel.Top := 8 + (IMG_ORDER.Height + VerGap) * i;
      OrderTouchPanel.Left := 8 + (IMG_ORDER.Width + HorGap) * j + Margin;
      MaxHeight := OrderTouchPanel.Top;

      OrderImage := TImage.Create(Self);
      OrderImage.Name := 'OrderImage' + IntToStr(k);
      OrderImage.AutoSize := true;
      OrderImage.Parent := OrderTouchPanel;
      if (OrderScanStatus[k] = 100) then
        OrderImage.Picture.Bitmap.Assign(OrderOKBG)
      else begin
        OrderImage.Picture.Bitmap.Assign(OrderBG);
        Languages.DrawProgress(OrderImage.Picture.Bitmap, 131, 136, OrderDispatchDrawValue[k], OrderDispatchStatus[k], OrderScanDrawValue[k], OrderScanStatus[k]);
      end;
      OrderImage.Top := 0;
      OrderImage.Left := 0;
      OrderImage.Enabled := false;

      OrderLabel := TTouchLabel.Create(Self);
      OrderLabel.Name := 'OrderLabel' + IntToStr(k);
      OrderLabel.Parent := OrderTouchPanel;
      OrderLabel.Transparent := LB_ORDER.Transparent;
      if (OrderScanStatus[k] = 100) then
        OrderLabel.Font.Color := $0049AD41
      else
        OrderLabel.Font.Color := LB_ORDER.Font.Color;
      OrderLabel.Font.Name := LB_ORDER.Font.Name;
      OrderLabel.Font.Size := LB_ORDER.Font.Size;
      OrderLabel.Font.Style := LB_ORDER.Font.Style;
      OrderLabel.Top := LB_ORDER.Top;
      OrderLabel.Left := LB_ORDER.Left;
      OrderLabel.Caption := FieldByName('YSBH').AsString;
      OrderLabel.Enabled := LB_ORDER.Enabled;

      CycleLabel := TTouchLabel.Create(Self);
      CycleLabel.Name := 'CycleLabel' + IntToStr(k);
      CycleLabel.Parent := OrderTouchPanel;
      CycleLabel.Transparent := LB_CYCLE.Transparent;
      if (OrderScanStatus[k] = 100) then
        CycleLabel.Font.Color := $0049AD41
      else
        CycleLabel.Font.Color := LB_CYCLE.Font.Color;
      CycleLabel.Font.Name := LB_CYCLE.Font.Name;
      CycleLabel.Font.Size := LB_CYCLE.Font.Size;
      CycleLabel.Font.Style := LB_CYCLE.Font.Style;
      CycleLabel.Top := LB_CYCLE.Top;
      CycleLabel.Left := LB_CYCLE.Left;
      CycleLabel.Caption := FieldByName('DDBH').AsString;
      CycleLabel.Enabled := LB_CYCLE.Enabled;

      ArticleLabel := TTouchLabel.Create(Self);
      ArticleLabel.Name := 'ArticleLabel' + IntToStr(k);
      ArticleLabel.Parent := OrderTouchPanel;
      ArticleLabel.Transparent := LB_ARTICLE.Transparent;
      if (OrderScanStatus[k] = 100) then
        ArticleLabel.Font.Color := $0049AD41
      else
        ArticleLabel.Font.Color := LB_ARTICLE.Font.Color;
      ArticleLabel.Font.Name := LB_ARTICLE.Font.Name;
      ArticleLabel.Font.Size := LB_ARTICLE.Font.Size;
      ArticleLabel.Font.Style := LB_ARTICLE.Font.Style;
      ArticleLabel.Top := LB_ARTICLE.Top;
      ArticleLabel.Left := LB_ARTICLE.Left;
      ArticleLabel.Caption := FieldByName('ARTICLE').AsString;
      ArticleLabel.Enabled := LB_ARTICLE.Enabled;

      if (Languages.CanTouch) then
      begin
        EnableAllGestures(OrderTouchPanel.Handle);
        RegisterTouchWindowFn(OrderTouchPanel.Handle, 0);
      end;

      Inc(j);
      Inc(k);
      Next;
    end;

    if (MaxHeight + IMG_ORDER.Height > Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height) AND (ADOQOrder.RecordCount > 0) then
      LB_MARGIN.Top := MaxHeight + IMG_ORDER.Height
    else
      LB_MARGIN.Top := 0;

    PreOrderNumber := RecordCount;
    Panel3.Visible := false;
  end;

  if (ADOQOrder.RecordCount > 0) then
    LB_TIPS.Caption := ''
  else
    LB_TIPS.Caption := Tips;
end;

{ SEARCH BUTTON }

procedure TOrderSearch.TP_SEARCHTouch(Sender: TObject; X, Y: Integer);
begin
  TP_SEARCHMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure TOrderSearch.TP_SEARCHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_SEARCHP.Visible := true;
  IMG_SEARCH.Visible := false;
end;

procedure TOrderSearch.TP_SEARCHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_SEARCH.Visible := true;
  IMG_SEARCHP.Visible := false;
  SearchOrder(ED_ORDER.Text);
end;

procedure TOrderSearch.ED_ORDERKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then SearchOrder(ED_ORDER.Text);
end;

procedure TOrderSearch.ED_ORDERChange(Sender: TObject);
begin
  if (ED_ORDER.Font.Color = clRed) then
    ED_ORDER.Font.Color := clWhite;
end;

procedure TOrderSearch.ED_ORDERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (KeyBoardFlag = false) then
  begin
    KeyBoardFlag := true;
    KeyBoard := TKeyBoard.Create(Self);
    KeyBoard.TargetForm := 'OrderSearch';
    KeyBoard.Target := 'ED_ORDER';
    KeyBoard.Show;
  end;
end;

{ MENU BUTTON }

procedure TOrderSearch.TP_MENUTouch(Sender: TObject; X, Y: Integer);
begin
  TP_MENUMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure TOrderSearch.TP_MENUMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENUP.Visible := true;
  IMG_MENU.Visible := false;
end;

procedure TOrderSearch.TP_MENUMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENU.Visible := true;
  IMG_MENUP.Visible := false;

  LeftMenu := TLeftMenu.Create(Self);
  LeftMenu.Show;
end;

{ RETURN BUTTON }

procedure TOrderSearch.TP_RETURNTouch(Sender: TObject; X, Y: Integer);
begin
  TP_RETURNMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure TOrderSearch.TP_RETURNMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin                   
  IMG_RETURNP.Visible := true;
  IMG_RETURN.Visible := false;
end;

procedure TOrderSearch.TP_RETURNMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_RETURN.Visible := true;
  IMG_RETURNP.Visible := false;
  Close;
end;

{ HOME BUTTON }

procedure TOrderSearch.TP_HOMETouch(Sender: TObject; X, Y: Integer);
begin
  TP_HOMEMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure TOrderSearch.TP_HOMEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOMEP.Visible := true;
  IMG_HOME.Visible := false;
end;

procedure TOrderSearch.TP_HOMEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOME.Visible := true;
  IMG_HOMEP.Visible := false;
  Close;
end;

{ ORDER ITEMS SCROLLING }

procedure TOrderSearch.TP_ORDERTouch(Sender: TObject; X, Y: Integer);
var
  TouchPoint: TPoint;
begin
  TouchPoint := TTouchPanel(Sender).ClientToScreen(Point(X, Y));

  if (PressFlag = false) then
  begin
    SetCursorPos(TouchPoint.X, TouchPoint.Y);
    TouchPos := TouchPoint.X;
    PrePos := TouchPos;

    TP_ORDERMouseDown(Sender, mbLeft, [], X, Y);
  end
  else begin
    PrePos := TouchPos;
    TouchPos := TouchPoint.Y;
    if (ABs(TouchPos - PrePos) <> 0) then TouchSpeed := TouchPos - PrePos;
  end;
end;
         
procedure TOrderSearch.TP_ORDERMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i, Index: integer;
begin
  Timer1.Enabled := false;
  StartPos := Mouse.CursorPos.Y;

  for i := 0 to TTouchPanel(Sender).ControlCount-1 do
  begin
    if (TTouchPanel(Sender).Controls[i] IS TImage) then
    begin
      Target := TImage(TTouchPanel(Sender).Controls[i]);
      Break;
    end;
  end;

  Index := StrToInt(StringReplace(Target.Name, 'OrderImage', '', [rfReplaceAll]));
  if (OrderScanStatus[Index] = 100) then
    Target.Picture.Bitmap.Assign(SelectOrderOKBG)
  else begin
    Target.Picture.Bitmap.Assign(SelectOrderBG);
    Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, OrderDispatchDrawValue[Index], OrderDispatchStatus[Index], OrderScanDrawValue[Index], OrderScanStatus[Index]);
  end;
  PressFlag := true;
end;

procedure TOrderSearch.TP_ORDERMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);    
var
  CurrentPos, Index: integer;
begin
  if (PressFlag) AND (DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.Y;
    ScrollBox2.VertScrollBar.Position := ScrollBox2.VertScrollBar.Position + (StartPos - CurrentPos);
    ScrollBox2.Repaint;
    StartPos := CurrentPos;
  end
  else if (PressFlag) AND (NOT DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.Y;
    if (ABS(CurrentPos - StartPos) > 20) then
    begin
      Index := StrToInt(StringReplace(Target.Name, 'OrderImage', '', [rfReplaceAll]));
      if (OrderScanStatus[Index] = 100) then
        Target.Picture.Bitmap.Assign(OrderOKBG)
      else begin
        Target.Picture.Bitmap.Assign(OrderBG);
        Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, OrderDispatchDrawValue[Index], OrderDispatchStatus[Index], OrderScanDrawValue[Index], OrderScanStatus[Index]);
      end;
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;

procedure TOrderSearch.TP_ORDERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Index: integer;
begin
  if (DragFlag) then
  begin
    if (Languages.CanTouch) then
      Speed := TouchSpeed DIV 2
    else
      Speed := Mouse.CursorPos.Y - StartPos;
    if (Abs(Speed) > 0) then Timer1.Enabled := true;
  end
  else begin
    Index := StrToInt(StringReplace(Target.Name, 'OrderImage', '', [rfReplaceAll]));
    if (OrderScanStatus[Index] = 100) then
      Target.Picture.Bitmap.Assign(OrderOKBG)
    else begin
      Target.Picture.Bitmap.Assign(OrderBG);
      Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, OrderDispatchDrawValue[Index], OrderDispatchStatus[Index], OrderScanDrawValue[Index], OrderScanStatus[Index]);
    end;
    Selection := TTouchLabel(TTouchPanel(Sender).Controls[1]).Caption;
    
    GenerateQRCode := TGenerateQRCode.Create(Self);
    GenerateQRCode.SearchData(Selection);
    GenerateQRCode.Show;
  end;

  DragFlag := false;
  PressFlag := false;
end;
  
procedure TOrderSearch.LB_TIPSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled := false;
  StartPos := Mouse.CursorPos.Y;
  PressFlag := true;
end;

procedure TOrderSearch.LB_TIPSMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  CurrentPos: integer;
begin
  if (PressFlag) AND (DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.Y;
    ScrollBox2.VertScrollBar.Position := ScrollBox2.VertScrollBar.Position + (StartPos - CurrentPos);
    ScrollBox2.Repaint;
    StartPos := CurrentPos;
  end
  else if (PressFlag) AND (NOT DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.Y;
    if (ABS(CurrentPos - StartPos) > 20) then
    begin
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;
   
procedure TOrderSearch.LB_TIPSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (DragFlag) then
  begin
    if (Languages.CanTouch) then
      Speed := TouchSpeed DIV 2
    else
      Speed := Mouse.CursorPos.Y - StartPos;
    if (Abs(Speed) > 0) then Timer1.Enabled := true;
  end;

  DragFlag := false;
  PressFlag := false;
end;

procedure TOrderSearch.Timer1Timer(Sender: TObject);
begin
  if (Speed > 0) then
  begin
    ScrollBox2.VertScrollBar.Position := ScrollBox2.VertScrollBar.Position - Speed*2;
    Inc(Speed, -1);
  end
  else if (Speed < 0) then
  begin
    ScrollBox2.VertScrollBar.Position := ScrollBox2.VertScrollBar.Position - Speed*2;
    Inc(Speed, 1);
  end
  else if (Speed = 0) then
  begin
    Timer1.Enabled := false;
  end;
end;

end.
