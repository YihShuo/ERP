unit OrderSchedule1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DB, ADODB, Buttons, StdCtrls, jpeg, ExtCtrls,
  DateUtils, TouchPanel, D7GesturesHeader, TouchLabel, Printers;

type
  TOrderSchedule = class(TForm)
    ADOQSearch: TADOQuery;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox2: TScrollBox;
    IMG_ORDER: TImage;
    ADOQOrder: TADOQuery;
    IMG_RETURNP: TImage;
    IMG_RETURN: TImage;
    LB_TIPS: TLabel;
    IMG_HOMEP: TImage;
    IMG_HOME: TImage;
    Panel3: TPanel;
    LB_LOADING: TLabel;
    Timer1: TTimer;
    TP_MENU: TTouchPanel;
    IMG_MENUP: TImage;
    IMG_MENU: TImage;
    TP_HOME: TTouchPanel;
    TP_RETURN: TTouchPanel;
    TP_ORDER: TTouchPanel;
    Timer2: TTimer;
    LB_MARGIN: TLabel;
    TP_LEAN: TTouchPanel;
    LB_ORDER: TTouchLabel;
    LB_CYCLE: TTouchLabel;
    LB_ARTICLE: TTouchLabel;
    IMG_OK: TImage;
    IMG_ORDERP: TImage;
    IMG_OKP: TImage;
    TP_DATE: TTouchPanel;
    TP_SORDER: TTouchPanel;
    TP_SLIST: TTouchPanel;
    TP_LIST: TTouchPanel;
    IMG_LIST: TImage;
    LB_LISTID: TTouchLabel;
    LB_LORDER: TTouchLabel;
    LB_LCYCLE: TTouchLabel;
    TP_PRINT: TTouchPanel;
    ADOQUpdate: TADOQuery;
    LB_SIZE: TTouchLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TP_MENUTouch(Sender: TObject; X, Y: Integer);
    procedure TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMETouch(Sender: TObject; X, Y: Integer);
    procedure TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_RETURNTouch(Sender: TObject; X, Y: Integer);
    procedure TP_RETURNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ORDERTouch(Sender: TObject; X, Y: Integer);
    procedure TP_ORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure LB_TIPSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LB_TIPSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LB_TIPSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ORDERMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_LEANTouch(Sender: TObject; X, Y: Integer);
    procedure TP_LEANMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_LEANMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LEANMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_RETURNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ORDERMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_DATETouch(Sender: TObject; X, Y: Integer);
    procedure TP_DATEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_DATEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SORDERTouch(Sender: TObject; X, Y: Integer);
    procedure TP_SORDERMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SLISTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_SLISTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SLISTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LISTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_LISTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LISTMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_LISTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PRINTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_PRINTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PRINTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    OrderDispatchStatus, OrderDispatchDrawValue, OrderScanStatus, OrderScanDrawValue: Array of Integer;
    ListDispatchStatus, ListDispatchDrawValue, ListScanStatus, ListScanDrawValue: Array of Integer;
    DragFlag, PressFlag: Boolean;
    OrderBG, SelectOrderBG, OrderOKBG, SelectOrderOKBG: TBitmap;
    StartPos, PrePos, TouchPos, PreLeanNumber, PreOrderNumber, ScreenOrderNumber, Speed, TouchSpeed: integer;
    LeanID, ConfirmMessage, Tips, Tips2, DLList: string;
    Target: TImage;
    procedure SetTouchEvent;
    procedure SetLanguage;
    { Private declarations }
  public
    Selection, LastLeanID, Mode: string;
    StartDate, EndDate: TDate;  
    procedure SearchOrder(Lean: String);
    procedure SearchList(Lean: String);
    procedure PrintQRCode;
    { Public declarations }
  end;

var
  OrderSchedule: TOrderSchedule;

implementation

uses Home1, Languages1, GenerateQRCode1, LeftMenu1, DateBox1, DCMessage1,
  QRLabel1;

const
  VerGap: integer = 10;
  HorGap: integer = 70;

{$R *.dfm}

procedure TOrderSchedule.SetLanguage;
begin
  ConfirmMessage := 'ARE YOU SURE TO PRINT QRCODE OF ALL DISPATCH LIST ?';
  Tips := 'THERE IS NO ORDER AVAILABLE';
  Tips2 := 'THERE IS NO DISPATCH LIST AVAILABLE';

  if (Languages.Language = 'CN') then
  begin
    ConfirmMessage := '確定要列印全部的派工單條碼?';
    Tips := '無訂單資料';
    Tips2 := '無派工單資料';
    LB_TIPS.Caption := '請選擇生產線別';
    LB_LOADING.Caption := '資料載入中...';
    TP_PRINT.Caption := '列印 〉';
    TP_SORDER.Caption := '訂單';
    TP_SLIST.Caption := '派工單';
  end
  else if (Languages.Language = 'VN') then
  begin
    ConfirmMessage := 'XAC DINH MUON IN TAT CA MA VACH CUA PHIEU DIEU CONG ?';
    Tips := 'KHONG CO THONG TIN DON HANG';
    Tips2 := 'KHONG CO DU LIEU PHIEU DIEU CONG';
    LB_TIPS.Caption := 'VUI LONG CHON DAY CHUYEN SAN XUAT';
    LB_LOADING.Caption := 'DANG TAI DU LIEU...';
    TP_PRINT.Caption := 'IN 〉';
    TP_SORDER.Caption := 'DON HANG';
    TP_SLIST.Caption := 'PHIEU DIEU CONG';
  end;

  TP_SLIST.Width := Languages.GetTextWidth(TP_SLIST.Caption, TP_SLIST.Font) + 40;
  TP_SLIST.Left := TP_RETURN.Left - (TP_SLIST.Width + 10);
  TP_SORDER.Width := Languages.GetTextWidth(TP_SORDER.Caption, TP_SORDER.Font) + 40;
  TP_SORDER.Left := TP_SLIST.Left - TP_SORDER.Width;
end;

procedure TOrderSchedule.FormCreate(Sender: TObject);
var
  LeanTouchPanel: TTouchPanel;
  LeanID: TLabel;
  i, LeftPos: integer;
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  PreLeanNumber := 0;
  PreOrderNumber := 0;
  DragFlag := false;
  PressFlag := false;
  Mode := 'ORDER';
  StartDate := Date - 7;
  EndDate := Date + 15;
  TP_DATE.Caption := FormatDateTime('yyyy/MM/dd', StartDate) + ' - ' + FormatDateTime('yyyy/MM/dd', EndDate);
  ScreenOrderNumber := (Screen.Width + HorGap - 16) DIV (IMG_ORDER.Width + HorGap);

  with ADOQSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, ''LEAN'' + RIGHT(sumline, 2) AS DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND Xuong IS NOT NULL');
    SQL.Add('ORDER BY ID');
    Active := true;

    i := 0;
    LeftPos := 0;
    while not Eof do
    begin
      LeanTouchPanel := TTouchPanel.Create(Self);
      LeanTouchPanel.Name := 'LeanTouchPanel' + IntToStr(i+1);
      LeanTouchPanel.Caption := FieldByName('DepName').AsString;
      LeanTouchPanel.AutoSize := false;
      LeanTouchPanel.BevelOuter := bvNone;
      LeanTouchPanel.Parent := ScrollBox1;
      LeanTouchPanel.Color := TP_LEAN.Color;
      LeanTouchPanel.Font.Name := TP_LEAN.Font.Name;
      LeanTouchPanel.Font.Size := TP_LEAN.Font.Size;
      LeanTouchPanel.Font.Color := TP_LEAN.Font.Color;
      LeanTouchPanel.Font.Style := TP_LEAN.Font.Style;
      LeanTouchPanel.Width := Languages.GetTextWidth(LeanTouchPanel.Caption, LeanTouchPanel.Font) + 45;
      LeanTouchPanel.Height := TP_LEAN.Height;   
      LeanTouchPanel.Top := TP_LEAN.Top;
      LeanTouchPanel.Left := TP_LEAN.Left + LeftPos;
      LeanTouchPanel.OnTouch := TP_LEAN.OnTouch;
      LeanTouchPanel.OnMouseDown := TP_LEAN.OnMouseDown;
      LeanTouchPanel.OnMouseMove := TP_LEAN.OnMouseMove;
      LeanTouchPanel.OnMouseUp := TP_LEAN.OnMouseUp;

      LeanID := TLabel.Create(Self);
      LeanID.Name := 'LeanID' + IntToStr(i+1);
      LeanID.Parent := LeanTouchPanel;
      LeanID.Top := 0;
      LeanID.Left := 0;
      LeanID.Caption := FieldByName('ID').AsString;
      LeanID.Visible := false;
           
      if (Languages.CanTouch) then
      begin
        EnableAllGestures(LeanTouchPanel.Handle);
        RegisterTouchWindowFn(LeanTouchPanel.Handle, 0);
      end;

      Inc(LeftPos, LeanTouchPanel.Width);
      Inc(i);
      Next;
    end;

    if (LeftPos > Screen.Width) then
    begin
      ScrollBox1.HorzScrollBar.Visible := true;
      ScrollBox1.Height := TP_LEAN.Height + 17;
    end
    else begin
      ScrollBox1.HorzScrollBar.Visible := false;
      ScrollBox1.Height := TP_LEAN.Height;
    end;
  end;

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

  Panel3.Top := ScrollBox2.Top;
  Panel3.Left := 0;
  Panel3.Width := Screen.Width;
  Panel3.Height := Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height;

  ScrollBox1.DoubleBuffered := true;
  ScrollBox2.DoubleBuffered := true;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TOrderSchedule.SetTouchEvent;
begin
  EnableAllGestures(TP_MENU.Handle);
  RegisterTouchWindowFn(TP_MENU.Handle, 0);

  EnableAllGestures(TP_SORDER.Handle);
  RegisterTouchWindowFn(TP_SORDER.Handle, 0);

  EnableAllGestures(TP_SLIST.Handle);
  RegisterTouchWindowFn(TP_SLIST.Handle, 0);

  EnableAllGestures(TP_RETURN.Handle);
  RegisterTouchWindowFn(TP_RETURN.Handle, 0);

  EnableAllGestures(TP_HOME.Handle);
  RegisterTouchWindowFn(TP_HOME.Handle, 0);

  EnableAllGestures(TP_DATE.Handle);
  RegisterTouchWindowFn(TP_DATE.Handle, 0);

  EnableAllGestures(TP_PRINT.Handle);
  RegisterTouchWindowFn(TP_PRINT.Handle, 0);
end;
     
procedure TOrderSchedule.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
end;
  
procedure TOrderSchedule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TOrderSchedule.FormDestroy(Sender: TObject);
begin
  OrderSchedule := Nil;
end;
     
procedure TOrderSchedule.SearchOrder(Lean: String);
var
  OrderTouchPanel: TTouchPanel;
  OrderImage: TImage;
  OrderLabel, CycleLabel, ArticleLabel: TTouchLabel;
  FreeObject: TObject;
  i, j, k, MaxHeight, OrderHeight, Margin: integer;
begin
  Panel3.Visible := true;
  Panel3.Refresh;
  LB_TIPS.BringToFront;
  LB_TIPS.Caption := '';
  LB_TIPS.Refresh;

  if (Mode = 'ORDER') then
  begin
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
  end
  else if (Mode = 'LIST') then
  begin
    for k:=1 to PreOrderNumber do
    begin
      FreeObject := TTouchPanel(Self.FindComponent('ListTouchPanel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TImage(Self.FindComponent('ListImage' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListIDLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListOrderLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListCycleLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListSizeLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
    end;
  end;

  ScrollBox2.VertScrollBar.Position := 0;

  with ADOQOrder do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SMDD.YSBH, CONVERT(VARCHAR, SMDD.PlanDate, 111) AS PlanDate, DDZL.ARTICLE,');
    SQL.Add('CASE WHEN SMDD.Flag = 0 THEN ''T'' + RIGHT(MIN(SMDD.DDBH), 3) + '' - T'' + RIGHT(MAX(SMDD.DDBH), 3) ELSE ''T001'' END AS DDBH,');
    SQL.Add('FLOOR(CASE WHEN CutDispatch.Qty >= CutDispatch.ZLQty THEN 100 ELSE CutDispatch.Qty*100.0/CutDispatch.ZLQty END) AS DispatchCompleted,');
    SQL.Add('FLOOR(CutDispatch.Qty*240.0/CutDispatch.ZLQty) AS DispatchDrawValue,');
    SQL.Add('FLOOR(CASE WHEN CutDispatch.ScanQty >= CutDispatch.ZLQty THEN 100 ELSE CutDispatch.ScanQty*100.0/CutDispatch.ZLQty END) AS ScanCompleted,');
    SQL.Add('FLOOR(CutDispatch.ScanQty*240.0/CutDispatch.ZLQty) AS ScanDrawValue FROM (');
    SQL.Add('  SELECT YSBH, DDBH, PlanDate, CASE WHEN YSBH = DDBH THEN 1 ELSE 0 END AS Flag FROM SMDD');
    SQL.Add('  WHERE GXLB = ''C'' AND DepNO = ''' + Lean + '''');
    SQL.Add('  AND CONVERT(DATETIME, CONVERT(VARCHAR, PlanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndDate) + '''');
    SQL.Add(') AS SMDD');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CutDispatchZL.ZLBH, SUM(CutDispatchZL.Qty) AS ZLQty, SUM(ISNULL(CutDispatchSS.Qty, 0)) AS Qty, SUM(ISNULL(CutDispatchSS.ScanQty, 0)) AS ScanQty FROM CutDispatchZL');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ZLBH, BWBH, CLBH, SIZE, SUM(Qty) AS Qty, SUM(ScanQty) AS ScanQty FROM CutDispatchSS');
    SQL.Add('    GROUP BY ZLBH, BWBH, CLBH, SIZE');
    SQL.Add('  ) AS CutDispatchSS ON CutDispatchSS.ZLBH = CutDispatchZL.ZLBH AND CutDispatchSS.BWBH = CutDispatchZL.BWBH AND CutDispatchSS.CLBH = CutDispatchZL.CLBH AND CutDispatchSS.SIZE = CutDispatchZL.SIZE');
    SQL.Add('  GROUP BY CutDispatchZL.ZLBH');
    SQL.Add(') AS CutDispatch ON CutDispatch.ZLBH = SMDD.YSBH');
    SQL.Add('WHERE DDZL.DDZT <> ''C''');
    SQL.Add('GROUP BY SMDD.YSBH, SMDD.PlanDate, DDZL.ARTICLE, SMDD.Flag, CutDispatch.ZLQty, CutDispatch.Qty, CutDispatch.ScanQty');
    SQL.Add('ORDER BY SMDD.PlanDate, SMDD.YSBH');
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

    if ((MaxHeight + IMG_ORDER.Height) > (Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height)) AND (RecordCount > 0) then
      LB_MARGIN.Top := MaxHeight + IMG_ORDER.Height
    else
      LB_MARGIN.Top := 0;
                                  
    PreOrderNumber := RecordCount;
    TP_PRINT.Visible := false;
    Panel3.Visible := false;
  end;

  if (ADOQOrder.RecordCount > 0) then
    LB_TIPS.Caption := ''
  else
    LB_TIPS.Caption := Tips;

  Mode := 'ORDER';
end;

procedure TOrderSchedule.SearchList(Lean: String);
var
  ListTouchPanel: TTouchPanel;
  ListImage: TImage;
  ListIDLabel, ListOrderLabel, ListCycleLabel, ListSizeLabel: TTouchLabel;
  FreeObject: TObject;
  i, j, k, MaxHeight, ListHeight, Margin: integer;
begin
  Panel3.Visible := true;
  Panel3.Refresh;
  LB_TIPS.BringToFront;
  LB_TIPS.Caption := '';
  LB_TIPS.Refresh;

  if (Mode = 'LIST') then
  begin
    for k:=1 to PreOrderNumber do
    begin
      FreeObject := TTouchPanel(Self.FindComponent('ListTouchPanel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TImage(Self.FindComponent('ListImage' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListIDLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListOrderLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListCycleLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
      FreeObject := TLabel(Self.FindComponent('ListSizeLabel' + IntToStr(k)));
      FreeAndNil(FreeObject);
    end;
  end
  else if (Mode = 'ORDER') then
  begin
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
  end;

  ScrollBox2.VertScrollBar.Position := 0;

  with ADOQOrder do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatch.DLNO, CutDispatchSS.ZLBH, CutDispatchSS.CYCLE, CutDispatchSS.SIZE,');
    SQL.Add('100 AS DispatchCompleted, 240 AS DispatchDrawValue,');
    SQL.Add('FLOOR(CASE WHEN ScanQty >= Qty THEN 100 ELSE ScanQty*100.0/Qty END) AS ScanCompleted,');
    SQL.Add('FLOOR(ScanQty*240.0/Qty) AS ScanDrawValue FROM CutDispatch');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DLNO, SUM(Qty) AS Qty, SUM(ScanQty) AS ScanQty, MIN(ZLBH) AS ZLBH,');
    SQL.Add('  CASE WHEN MIN(DDBH) <> MAX(DDBH) THEN REPLACE(REPLACE(MIN(DDBH), ZLBH, ''''), ''-'', '''') + '' - '' + REPLACE(REPLACE(MAX(DDBH), ZLBH, ''''), ''-'', '''')');
    SQL.Add('  ELSE CASE WHEN MIN(DDBH) = ZLBH THEN '''' ELSE REPLACE(REPLACE(MIN(DDBH), ZLBH, ''''), ''-'', '''') END END AS CYCLE,');
    SQL.Add('  CASE WHEN MIN(SIZE) = MAX(SIZE) THEN MIN(SIZE) ELSE '''' END AS SIZE FROM CutDispatchSS');
    SQL.Add('  GROUP BY DLNO, ZLBH');
    SQL.Add(') AS CutDispatchSS ON CutDispatchSS.DLNO = CutDispatch.DLNO');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DLNO, COUNT(BWBH) AS CountBW FROM (');
    SQL.Add('    SELECT DISTINCT DLNO, BWBH FROM CutDispatchS');
    SQL.Add('  ) AS CutDispatchS');
    SQL.Add('  GROUP BY DLNO');
    SQL.Add(') AS CutDispatchS ON CutDispatchS.DLNO = CutDispatch.DLNO');
    SQL.Add('WHERE CutDispatch.DepID = ''' + Lean + ''' AND CutDispatchS.CountBW > 1');
    SQL.Add('AND CONVERT(DATETIME, CONVERT(VARCHAR, CutDispatch.PlanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartDate) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndDate) + '''');
    SQL.Add('ORDER BY CutDispatch.PlanDate, CutDispatch.DLNO');
    Active := true;

    SetLength(ListDispatchStatus, RecordCount+1);
    SetLength(ListDispatchDrawValue, RecordCount+1);
    SetLength(ListScanStatus, RecordCount+1);
    SetLength(ListScanDrawValue, RecordCount+1);

    ListHeight := VerGap + 16 + (RecordCount DIV ScreenOrderNumber) * (IMG_LIST.Height + VerGap);
    if (ListHeight > Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height) then
      Margin := (Screen.Width - (33 + ScreenOrderNumber * IMG_LIST.Width + (ScreenOrderNumber-1) * HorGap)) DIV 2
    else
      Margin := (Screen.Width - (16 + ScreenOrderNumber * IMG_LIST.Width + (ScreenOrderNumber-1) * HorGap)) DIV 2;

    DLList := '';
    i := 0;
    j := 0;
    k := 1;
    MaxHeight := 0;
    while not Eof do
    begin
      ListDispatchStatus[k] := FieldByName('DispatchCompleted').AsInteger;
      ListDispatchDrawValue[k] := FieldByName('DispatchDrawValue').AsInteger;
      ListScanStatus[k] := FieldByName('ScanCompleted').AsInteger;
      ListScanDrawValue[k] := FieldByName('ScanDrawValue').AsInteger;

      ListTouchPanel := TTouchPanel.Create(Self);
      ListTouchPanel.Name := 'ListTouchPanel' + IntToStr(k);
      ListTouchPanel.AutoSize := true;
      ListTouchPanel.BevelOuter := bvNone;
      ListTouchPanel.Parent := ScrollBox2;
      ListTouchPanel.Color := clWhite;
      ListTouchPanel.OnTouch := TP_LIST.OnTouch;
      ListTouchPanel.OnMouseDown := TP_LIST.OnMouseDown;
      ListTouchPanel.OnMouseMove := TP_LIST.OnMouseMove;
      ListTouchPanel.OnMouseUp := TP_LIST.OnMouseUp;

      if (j > ScreenOrderNumber-1) then
      begin
        j := 0;
        Inc(i);
      end;

      ListTouchPanel.Top := 8 + (IMG_LIST.Height + VerGap) * i;
      ListTouchPanel.Left := 8 + (IMG_LIST.Width + HorGap) * j + Margin;
      MaxHeight := ListTouchPanel.Top;

      ListImage := TImage.Create(Self);
      ListImage.Name := 'ListImage' + IntToStr(k);
      ListImage.AutoSize := true;
      ListImage.Parent := ListTouchPanel;
      if (ListScanStatus[k] = 100) then
        ListImage.Picture.Bitmap.Assign(OrderOKBG)
      else begin
        ListImage.Picture.Bitmap.Assign(OrderBG);
        Languages.DrawProgress(ListImage.Picture.Bitmap, 131, 136, ListDispatchDrawValue[k], ListDispatchStatus[k], ListScanDrawValue[k], ListScanStatus[k]);
      end;
      ListImage.Top := 0;
      ListImage.Left := 0;
      ListImage.Enabled := false;

      ListIDLabel := TTouchLabel.Create(Self);
      ListIDLabel.Name := 'ListIDLabel' + IntToStr(k);
      ListIDLabel.Parent := ListTouchPanel;
      ListIDLabel.Transparent := LB_LISTID.Transparent;
      if (ListScanStatus[k] = 100) then
        ListIDLabel.Font.Color := $0049AD41
      else
        ListIDLabel.Font.Color := LB_LISTID.Font.Color;
      ListIDLabel.Font.Name := LB_LISTID.Font.Name;
      ListIDLabel.Font.Size := LB_LISTID.Font.Size;
      ListIDLabel.Font.Style := LB_LISTID.Font.Style;
      ListIDLabel.Top := LB_LISTID.Top;
      ListIDLabel.Left := LB_LISTID.Left;
      ListIDLabel.Caption := FieldByName('DLNO').AsString;
      ListIDLabel.Enabled := LB_LISTID.Enabled;
      DLList := DLList + '''' +  FieldByName('DLNO').AsString + ''',';

      ListOrderLabel := TTouchLabel.Create(Self);
      ListOrderLabel.Name := 'ListOrderLabel' + IntToStr(k);
      ListOrderLabel.Parent := ListTouchPanel;
      ListOrderLabel.Transparent := LB_LORDER.Transparent;
      if (ListScanStatus[k] = 100) then
        ListOrderLabel.Font.Color := $0049AD41
      else
        ListOrderLabel.Font.Color := LB_LORDER.Font.Color;
      ListOrderLabel.Font.Name := LB_LORDER.Font.Name;
      ListOrderLabel.Font.Size := LB_LORDER.Font.Size;
      ListOrderLabel.Font.Style := LB_LORDER.Font.Style;
      ListOrderLabel.Top := LB_LORDER.Top;
      ListOrderLabel.Left := LB_LORDER.Left;
      ListOrderLabel.Caption := FieldByName('ZLBH').AsString;
      ListOrderLabel.Enabled := LB_LORDER.Enabled;

      ListCycleLabel := TTouchLabel.Create(Self);
      ListCycleLabel.Name := 'ListCycleLabel' + IntToStr(k);
      ListCycleLabel.Parent := ListTouchPanel;
      ListCycleLabel.Transparent := LB_LCYCLE.Transparent;
      if (ListScanStatus[k] = 100) then
        ListCycleLabel.Font.Color := $0049AD41
      else
        ListCycleLabel.Font.Color := LB_LCYCLE.Font.Color;
      ListCycleLabel.Font.Name := LB_LCYCLE.Font.Name;
      ListCycleLabel.Font.Size := LB_LCYCLE.Font.Size;
      ListCycleLabel.Font.Style := LB_LCYCLE.Font.Style;
      ListCycleLabel.Top := LB_LCYCLE.Top;
      ListCycleLabel.Left := LB_LCYCLE.Left;
      ListCycleLabel.Caption := FieldByName('CYCLE').AsString;
      ListCycleLabel.Enabled := LB_LCYCLE.Enabled;

      ListSizeLabel := TTouchLabel.Create(Self);
      ListSizeLabel.Name := 'ListSizeLabel' + IntToStr(k);
      ListSizeLabel.Parent := ListTouchPanel;
      ListSizeLabel.Transparent := LB_SIZE.Transparent;
      if (ListScanStatus[k] = 100) then
        ListSizeLabel.Font.Color := $0049AD41
      else
        ListSizeLabel.Font.Color := LB_SIZE.Font.Color;
      ListSizeLabel.Font.Name := LB_SIZE.Font.Name;
      ListSizeLabel.Font.Size := LB_SIZE.Font.Size;
      ListSizeLabel.Font.Style := LB_SIZE.Font.Style;
      ListSizeLabel.Top := LB_SIZE.Top;
      ListSizeLabel.Left := LB_SIZE.Left;
      ListSizeLabel.Caption := FieldByName('SIZE').AsString;
      ListSizeLabel.Enabled := LB_SIZE.Enabled;

      if (Languages.CanTouch) then
      begin
        EnableAllGestures(ListTouchPanel.Handle);
        RegisterTouchWindowFn(ListTouchPanel.Handle, 0);
      end;

      Inc(j);
      Inc(k);
      Next;
    end;
    DLList := Copy(DLList, 1, Length(DLList)-1);

    if (MaxHeight + IMG_LIST.Height > Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height) AND (ADOQOrder.RecordCount > 0) then
      LB_MARGIN.Top := MaxHeight + IMG_LIST.Height
    else
      LB_MARGIN.Top := 0;

    PreOrderNumber := RecordCount;
    if (RecordCount > 0) then TP_PRINT.Visible := true
    else TP_PRINT.Visible := false;
    Panel3.Visible := false;
  end;

  if (ADOQOrder.RecordCount > 0) then
    LB_TIPS.Caption := ''
  else
    LB_TIPS.Caption := Tips2;

  Mode := 'LIST';
end;

{ LEAN ITEMS SCROLLING }

procedure TOrderSchedule.TP_LEANTouch(Sender: TObject; X, Y: Integer);
var
  TouchPoint: TPoint;
begin
  TouchPoint := TTouchPanel(Sender).ClientToScreen(Point(X, Y));

  if (PressFlag = false) then
  begin
    SetCursorPos(TouchPoint.X, TouchPoint.Y);
    TouchPos := TouchPoint.X;
    PrePos := TouchPos;

    TP_LEANMouseDown(Sender, mbLeft, [], X, Y);
  end
  else begin
    PrePos := TouchPos;
    TouchPos := TouchPoint.X; 
    if (ABs(TouchPos - PrePos) <> 0) then TouchSpeed := TouchPos - PrePos;
  end;
end;

procedure TOrderSchedule.TP_LEANMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled := false;

  LeanID := TLabel(TTouchPanel(Sender).Controls[0]).Caption;

  StartPos := Mouse.CursorPos.X;
  PressFlag := true;
end;

procedure TOrderSchedule.TP_LEANMouseMove(Sender: TObject;
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
      LeanID := '';
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;
     
procedure TOrderSchedule.TP_LEANMouseUp(Sender: TObject;
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

  if (LeanID <> '') then
  begin
    if (PreLeanNumber > 0) then
    begin
      TTouchPanel(Self.FindComponent('LeanTouchPanel' + IntToStr(PreLeanNumber))).Font.Color := clWhite;
      TTouchPanel(Self.FindComponent('LeanTouchPanel' + IntToStr(PreLeanNumber))).Color := $00323330;
    end;
    TTouchPanel(Sender).Font.Color := clBlack;
    TTouchPanel(Sender).Color := $006FE2FF;
    PreLeanNumber := StrToInt(StringReplace(TTouchPanel(Sender).Name, 'LeanTouchPanel', '', [rfReplaceAll]));
    ScrollBox1.Repaint;

    if (TP_SORDER.Color = $006FE2FF) then SearchOrder(LeanID)
    else if (TP_SLIST.Color = $006FE2FF) then SearchList(LeanID);
    LastLeanID := LeanID;
  end;
end;

procedure TOrderSchedule.Timer1Timer(Sender: TObject);
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

{ ORDER ITEMS SCROLLING }

procedure TOrderSchedule.TP_ORDERTouch(Sender: TObject; X, Y: Integer);
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

procedure TOrderSchedule.TP_ORDERMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i, Index: integer;
begin
  Timer2.Enabled := false;
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

procedure TOrderSchedule.TP_ORDERMouseMove(Sender: TObject;
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

procedure TOrderSchedule.TP_ORDERMouseUp(Sender: TObject;
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
    if (Abs(Speed) > 0) then Timer2.Enabled := true;
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
   
procedure TOrderSchedule.TP_LISTTouch(Sender: TObject; X, Y: Integer);
var
  TouchPoint: TPoint;
begin
  TouchPoint := TTouchPanel(Sender).ClientToScreen(Point(X, Y));

  if (PressFlag = false) then
  begin
    SetCursorPos(TouchPoint.X, TouchPoint.Y);
    TouchPos := TouchPoint.X;
    PrePos := TouchPos;

    TP_LISTMouseDown(Sender, mbLeft, [], X, Y);
  end
  else begin
    PrePos := TouchPos;
    TouchPos := TouchPoint.Y;
    if (Abs(TouchPos - PrePos) <> 0) then TouchSpeed := TouchPos - PrePos;
  end;
end;

procedure TOrderSchedule.TP_LISTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i, Index: integer;
begin
  Timer2.Enabled := false;
  StartPos := Mouse.CursorPos.Y;

  for i := 0 to TTouchPanel(Sender).ControlCount-1 do
  begin
    if (TTouchPanel(Sender).Controls[i] IS TImage) then
    begin
      Target := TImage(TTouchPanel(Sender).Controls[i]);
      Break;
    end;
  end;

  Index := StrToInt(StringReplace(Target.Name, 'ListImage', '', [rfReplaceAll]));
  if (ListScanStatus[Index] = 100) then
    Target.Picture.Bitmap.Assign(SelectOrderOKBG)
  else begin
    Target.Picture.Bitmap.Assign(SelectOrderBG);
    Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, ListDispatchDrawValue[Index], ListDispatchStatus[Index], ListScanDrawValue[Index], ListScanStatus[Index]);
  end;
  PressFlag := true;
end;

procedure TOrderSchedule.TP_LISTMouseMove(Sender: TObject;
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
      Index := StrToInt(StringReplace(Target.Name, 'ListImage', '', [rfReplaceAll]));
      if (ListScanStatus[Index] = 100) then
        Target.Picture.Bitmap.Assign(OrderOKBG)
      else begin
        Target.Picture.Bitmap.Assign(OrderBG);
        Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, ListDispatchDrawValue[Index], ListDispatchStatus[Index], ListScanDrawValue[Index], ListScanStatus[Index]);
      end;
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;

procedure TOrderSchedule.TP_LISTMouseUp(Sender: TObject;
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
    if (Abs(Speed) > 0) then Timer2.Enabled := true;
  end
  else begin
    Index := StrToInt(StringReplace(Target.Name, 'ListImage', '', [rfReplaceAll]));
    if (ListScanStatus[Index] = 100) then
      Target.Picture.Bitmap.Assign(OrderOKBG)
    else begin
      Target.Picture.Bitmap.Assign(OrderBG);
      Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, ListDispatchDrawValue[Index], ListDispatchStatus[Index], ListScanDrawValue[Index], ListScanStatus[Index]);
    end;
    Selection := TTouchLabel(TTouchPanel(Sender).Controls[1]).Caption;

    GenerateQRCode := TGenerateQRCode.Create(Self);
    GenerateQRCode.SearchListData(Selection);
    GenerateQRCode.Show;
  end;

  DragFlag := false;
  PressFlag := false;
end;

procedure TOrderSchedule.LB_TIPSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer2.Enabled := false;
  StartPos := Mouse.CursorPos.Y;
  PressFlag := true;
end;

procedure TOrderSchedule.LB_TIPSMouseMove(Sender: TObject;
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

procedure TOrderSchedule.LB_TIPSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (DragFlag) then
  begin
    if (Languages.CanTouch) then
      Speed := TouchSpeed DIV 2
    else
      Speed := Mouse.CursorPos.Y - StartPos;
    if (Abs(Speed) > 0) then Timer2.Enabled := true;
  end;

  DragFlag := false;
  PressFlag := false;
end;

procedure TOrderSchedule.Timer2Timer(Sender: TObject);
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
    Timer2.Enabled := false;
  end;
end;

{ RETURN BUTTON }

procedure TOrderSchedule.TP_RETURNTouch(Sender: TObject; X, Y: Integer);
begin
  TP_RETURNMouseDown(Sender, mbLeft, [], X, Y);
end;
    
procedure TOrderSchedule.TP_RETURNMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_RETURNP.Visible := true;
  IMG_RETURN.Visible := false;
end;

procedure TOrderSchedule.TP_RETURNMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin               
  IMG_RETURN.Visible := true;
  IMG_RETURNP.Visible := false;
  Close;
end;

{ HOME BUTTON }

procedure TOrderSchedule.TP_HOMETouch(Sender: TObject; X, Y: Integer);
begin
  TP_HOMEMouseDown(Sender, mbLeft, [], X, Y);
end;
      
procedure TOrderSchedule.TP_HOMEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOMEP.Visible := true;
  IMG_HOME.Visible := false;
end;

procedure TOrderSchedule.TP_HOMEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOME.Visible := true;
  IMG_HOMEP.Visible := false;
  Close;
end;

{ MENU BUTTON }

procedure TOrderSchedule.TP_MENUTouch(Sender: TObject; X, Y: Integer);
begin
  TP_MENUMouseDown(Sender, mbLeft, [], X, Y);
end;
      
procedure TOrderSchedule.TP_MENUMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENUP.Visible := true;
  IMG_MENU.Visible := false;
end;

procedure TOrderSchedule.TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENU.Visible := true;
  IMG_MENUP.Visible := false;

  LeftMenu := TLeftMenu.Create(Self);
  LeftMenu.Show;
end;

procedure TOrderSchedule.TP_DATETouch(Sender: TObject; X, Y: Integer);
begin
  TP_DATEMouseDown(Sender, mbLeft, [], X, Y);
end;
    
procedure TOrderSchedule.TP_DATEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_DATE.Font.Color := $000096FF;
end;

procedure TOrderSchedule.TP_DATEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_DATE.Font.Color := clWhite;
  DateBox := TDateBox.Create(Self);
  DateBox.Show;
end;

{ ORDER BUTTON }

procedure TOrderSchedule.TP_SORDERTouch(Sender: TObject; X, Y: Integer);
begin
  TP_SORDERMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TOrderSchedule.TP_SORDERMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_SORDER.Color := $006FE2FF;
  TP_SORDER.Font.Color := clBlack;
  TP_SLIST.Color := clBlack;
  TP_SLIST.Font.Color := clWhite;
end;

procedure TOrderSchedule.TP_SORDERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StartDate := Date - 7;
  EndDate := Date + 15;
  TP_DATE.Caption := FormatDateTime('yyyy/MM/dd', StartDate) + ' - ' + FormatDateTime('yyyy/MM/dd', EndDate);

  if (Mode <> 'ORDER') AND (LastLeanID <> '') then SearchOrder(LastLeanID);
end;

{ LIST BUTTON }

procedure TOrderSchedule.TP_SLISTTouch(Sender: TObject; X, Y: Integer);
begin
  TP_SLISTMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TOrderSchedule.TP_SLISTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_SLIST.Color := $006FE2FF;
  TP_SLIST.Font.Color := clBlack;
  TP_SORDER.Color := clBlack;
  TP_SORDER.Font.Color := clWhite;
end;

procedure TOrderSchedule.TP_SLISTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StartDate := Date;
  EndDate := Date;
  TP_DATE.Caption := FormatDateTime('yyyy/MM/dd', StartDate) + ' - ' + FormatDateTime('yyyy/MM/dd', EndDate);

  if (Mode <> 'LIST') AND (LastLeanID <> '') then SearchList(LastLeanID);
end;

procedure TOrderSchedule.TP_PRINTTouch(Sender: TObject; X, Y: Integer);
begin
  TP_PRINTMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TOrderSchedule.TP_PRINTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_PRINT.Font.Color := $006FE2FF;
end;

procedure TOrderSchedule.TP_PRINTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_PRINT.Font.Color := clWhite;
  DCMessage := TDCMessage.Create(Self);
  DCMessage.Source := 'OrderSchedule';
  DCMessage.SetMessage(ConfirmMessage);
  DCMessage.Show;
end;

procedure TOrderSchedule.PrintQRCode;
begin
  //UPDATE LIST DATA
  with ADOQUpdate do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CutDispatchSS SET QRCode = ISNULL(QRCode, 0) + 1, MachineDate = GetDate()');
    SQL.Add('WHERE DLNO IN (' + DLList + ');');
    ExecSQL;
  end;

  QRLabel := TQRLabel.Create(Self);
  with ADOQSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchSS.DLNO, CutDispatchSS.ZLBH,');
    SQL.Add('CASE WHEN MIN(CutDispatchSS.DDBH) <> MAX(CutDispatchSS.DDBH) THEN REPLACE(REPLACE(MIN(CutDispatchSS.DDBH), CutDispatchSS.ZLBH, ''''), ''-'', '''') + '' - '' + REPLACE(REPLACE(MAX(CutDispatchSS.DDBH), CutDispatchSS.ZLBH, ''''), ''-'', '''')');
    SQL.Add('ELSE CASE WHEN MIN(CutDispatchSS.DDBH) = CutDispatchSS.ZLBH THEN '''' ELSE REPLACE(REPLACE(MIN(CutDispatchSS.DDBH), CutDispatchSS.ZLBH, ''''), ''-'', '''') END END AS Cycle,');
    SQL.Add('CASE WHEN MIN(CutDispatchSS.SIZE) = MAX(CutDispatchSS.SIZE) THEN MIN(CutDispatchSS.SIZE) ELSE ''--'' END AS SIZE, CutDispatchSS.CLBH,');
    SQL.Add('FLOOR(SUM(CutDispatchSS.Qty) / CutDispatchBW.CountBW) AS Qty, ''LEAN'' + RIGHT(BDepartment.sumline, 2) AS DepName, BMachine.MachineName, XXZL.DAOMH FROM CutDispatchSS');
    SQL.Add('LEFT JOIN CutDispatch ON CutDispatch.DLNO = CutDispatchSS.DLNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CutDispatchSS.ZLBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN BMachine ON BMachine.ID = CutDispatchSS.Machine');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = BMachine.DepNo');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DLNO, COUNT(BWBH) AS CountBW FROM (');
    SQL.Add('    SELECT DISTINCT DLNO, BWBH FROM CutDispatchSS');
    SQL.Add('  ) AS CutDispatchBW');
    SQL.Add('  GROUP BY DLNO');
    SQL.Add(') AS CutDispatchBW ON CutDispatchBW.DLNO = CutDispatchSS.DLNO');
    SQL.Add('WHERE CutDispatchSS.DLNO IN (' + DLList + ')');
    SQL.Add('GROUP BY CutDispatchSS.DLNO, CutDispatchSS.ZLBH, CutDispatchSS.CLBH, BDepartment.sumline, BMachine.MachineName, XXZL.DAOMH, CutDispatchBW.CountBW');
    SQL.Add('ORDER BY CutDispatchSS.DLNO');
    Active := true;

    while not Eof do
    begin
      QRLabel.QRUpdate('LIST', FieldByName('DLNO').AsString, FieldByName('ZLBH').AsString, FieldByName('ZLBH').AsString, '', FieldByName('Cycle').AsString, FieldByName('SIZE').AsString, '--', FieldByName('CLBH').AsString, FieldByName('Qty').AsString, FieldByName('DepName').AsString, FieldByName('MachineName').AsString, FieldByName('DAOMH').AsString, 0, 0);
      Printer.Orientation := poLandscape;
      QRLabel.Print;
      Next;
    end;
  end;
  QRLabel.Close;
end;

end.
