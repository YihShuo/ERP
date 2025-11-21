unit DispatchList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, TouchPanel, D7GesturesHeader,
  TouchLabel, jpeg;

type
  TDispatchList = class(TForm)
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
    IMG_LIST: TImage;
    ScrollBox1: TScrollBox;
    IMG_SEARCH: TImage;
    IMG_SEARCHP: TImage;
    ADOQList: TADOQuery;
    ED_LISTID: TEdit;
    Timer1: TTimer;
    LB_MARGIN: TLabel;
    LB_LOADING: TLabel;
    Panel3: TPanel;
    TP_MENU: TTouchPanel;
    TP_RETURN: TTouchPanel;
    TP_SEARCH: TTouchPanel;
    TP_HOME: TTouchPanel;
    TP_LIST: TTouchPanel;
    LB_LISTID: TTouchLabel;
    LB_MACHINE1: TTouchLabel;
    LB_MACHINE2: TTouchLabel;
    IMG_LISTP: TImage;
    IMG_OKP: TImage;
    IMG_OK: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ED_LISTIDKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure LB_TIPSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LB_TIPSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LB_TIPSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ED_LISTIDChange(Sender: TObject);
    procedure ED_LISTIDMouseUp(Sender: TObject; Button: TMouseButton;
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
    procedure TP_LISTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_LISTMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_LISTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_RETURNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SEARCHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LISTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    ListScanStatus, ListScanDrawValue, ListDispatchStatus, ListDispatchDrawValue: Array Of Integer;
    DragFlag, PressFlag: Boolean;
    ListBG, SelectListBG, ListOKBG, SelectListOKBG: TBitmap;
    Target: TImage;
    ScreenOrderNumber, PreOrderNumber, StartPos, PrePos, TouchPos, Speed, TouchSpeed: integer;
    Tips, Warning: string;
    procedure SetTouchEvent;
    procedure SetLanguage;
    { Private declarations }
  public
    Selection: string;
    KeyBoardFlag: Boolean;   
    procedure SearchList(ListID: String);
    { Public declarations }
  end;

var
  DispatchList: TDispatchList;

implementation

uses LeftMenu1, GenerateQRCode1, Languages1, KeyBoard1;

const
  VerGap: integer = 10;
  HorGap: integer = 70;

{$R *.dfm}
     
{ TLabel }

procedure TDispatchList.SetLanguage;
begin
  Tips := 'THERE IS NO DISPATCH LIST AVAILABLE';
  Warning := 'PLEASE ENTER AT LEAST 9 CHARACTERS';

  if (Languages.Language = 'CN') then
  begin
    Tips := '無派工單資料';
    Warning := '請輸入至少9個字元';
    LB_TIPS.Caption := '請輸入派工單編號';
    LB_LOADING.Caption := '資料載入中...';
  end
  else if (Languages.Language = 'VN') then
  begin
    Tips := 'KHONG CO DU LIEU PHIEU DIEU CONG';
    Warning := 'VUI LONG NHAP IT NHAT 9 CHU SO';
    LB_TIPS.Caption := 'VUI LONG NHAP MA SO SAP CONG';
    LB_LOADING.Caption := 'DANG TAI DU LIEU...';
  end;
end;

procedure TDispatchList.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  PreOrderNumber := 0;
  DragFlag := false;
  PressFlag := false;
  KeyBoardFlag := false;    
  ScreenOrderNumber := (Screen.Width + HorGap - 16) DIV (IMG_LIST.Width + HorGap);

  ED_LISTID.Width := Screen.Width - ED_LISTID.Left;
  ED_LISTID.Text := '';

  ListBG := TBitmap.Create;
  ListBG.Assign(IMG_LIST.Picture.Bitmap);
  ListBG.Canvas.Pen.Color := clGray;
  ListBG.Canvas.Pen.Width := 2;
  ListBG.Canvas.MoveTo(9, 9);
  ListBG.Canvas.LineTo(9, ListBG.Height-9);
  ListBG.Canvas.LineTo(ListBG.Width-9, ListBG.Height-9);
  ListBG.Canvas.LineTo(ListBG.Width-9, 9);
  ListBG.Canvas.LineTo(9, 9);

  SelectListBG := TBitmap.Create;
  SelectListBG.Assign(IMG_LISTP.Picture.Bitmap);

  ListOKBG := TBitmap.Create;
  ListOKBG.Assign(IMG_OK.Picture.Bitmap);
  ListOKBG.Canvas.Brush.Style := bsClear;
  ListOKBG.Canvas.Pen.Color := $0049AD41;
  ListOKBG.Canvas.Pen.Width := 2;
  ListOKBG.Canvas.MoveTo(9, 9);
  ListOKBG.Canvas.LineTo(9, ListOKBG.Height-9);
  ListOKBG.Canvas.LineTo(ListOKBG.Width-9, ListOKBG.Height-9);
  ListOKBG.Canvas.LineTo(ListOKBG.Width-9, 9);
  ListOKBG.Canvas.LineTo(9, 9);
  ListOKBG.Canvas.Font.Name := LB_LISTID.Font.Name;
  ListOKBG.Canvas.Font.Size := 10;
  ListOKBG.Canvas.Font.Color := $0049AD41;
  ListOKBG.Canvas.Font.Style := [fsBold];
  ListOKBG.Canvas.TextOut(290, 125, 'COMPLETED');

  SelectListOKBG := TBitmap.Create;
  SelectListOKBG.Assign(IMG_OKP.Picture.Bitmap);
  SelectListOKBG.Canvas.Brush.Style := bsClear;
  SelectListOKBG.Canvas.Font.Name := LB_LISTID.Font.Name;
  SelectListOKBG.Canvas.Font.Size := 10;
  SelectListOKBG.Canvas.Font.Color := $0049AD41;
  SelectListOKBG.Canvas.Font.Style := [fsBold];
  SelectListOKBG.Canvas.TextOut(290, 125, 'COMPLETED');

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

procedure TDispatchList.SetTouchEvent;
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
        
procedure TDispatchList.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
  ED_LISTID.SetFocus;
end;

procedure TDispatchList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TDispatchList.FormDestroy(Sender: TObject);
begin
  DispatchList := Nil;
end;

procedure TDispatchList.SearchList(ListID: String);
var
  ListTouchPanel: TTouchPanel;
  ListImage: TImage;
  ListIDLabel, Machine1Label, Machine2Label: TTouchLabel;
  FreeObject: TObject;
  i, j, k, MaxHeight, ListHeight, Margin: integer;
begin
  if (Length(ListID) < 9) then
  begin
    ED_LISTID.Font.Color := clRed;
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
    FreeObject := TTouchPanel(Self.FindComponent('ListTouchPanel' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TImage(Self.FindComponent('ListImage' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TLabel(Self.FindComponent('ListIDLabel' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TLabel(Self.FindComponent('Machine1Label' + IntToStr(k)));
    FreeAndNil(FreeObject);
    FreeObject := TLabel(Self.FindComponent('Machine2Label' + IntToStr(k)));
    FreeAndNil(FreeObject);
  end;

  ScrollBox2.VertScrollBar.Position := 0;

  with ADOQList do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatch.DLNO,');
    SQL.Add('100 AS DispatchCompleted, 240 AS DispatchDrawValue,');
    SQL.Add('FLOOR(CASE WHEN ScanQty >= Qty THEN 100 ELSE ScanQty*100.0/Qty END) AS ScanCompleted,');
    SQL.Add('FLOOR(ScanQty*240.0/Qty) AS ScanDrawValue,');
    if (Languages.Language = 'EN') then
      SQL.Add('CASE DLLB WHEN ''AC'' THEN ''AUTO'' WHEN ''MC'' THEN ''MANUAL'' WHEN ''Lectra'' THEN ''LECTRA'' END AS Machine1, ''CUTTING MACHINE'' AS Machine2 FROM CutDispatch')
    else if (Languages.Language = 'CN') then
      SQL.Add('CASE DLLB WHEN ''AC'' THEN ''自動'' WHEN ''MC'' THEN ''線上'' WHEN ''Lectra'' THEN ''LECTRA'' END AS Machine1, ''裁斷機'' AS Machine2 FROM CutDispatch')
    else if (Languages.Language = 'VN') then
      SQL.Add('CASE DLLB WHEN ''AC'' THEN ''TU DONG'' WHEN ''MC'' THEN '''' WHEN ''Lectra'' THEN ''LECTRA'' END AS Machine1, ''MAY CHAT'' AS Machine2 FROM CutDispatch');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DLNO, SUM(Qty) AS Qty, SUM(ScanQty) AS ScanQty FROM CutDispatchSS');
    SQL.Add('  GROUP BY DLNO');
    SQL.Add(') AS CutDispatchSS ON CutDispatchSS.DLNO = CutDispatch.DLNO');
    if (ListID <> '') then
      SQL.Add('WHERE CutDispatch.DLNO LIKE ''' + ListID + '%''')
    else
      SQL.Add('WHERE CutDispatch.DLNO = ''' + ListID + '''');
    SQL.Add('ORDER BY CutDispatch.DLNO');
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
        ListImage.Picture.Bitmap.Assign(ListOKBG)
      else begin
        ListImage.Picture.Bitmap.Assign(ListBG);
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

      Machine1Label := TTouchLabel.Create(Self);
      Machine1Label.Name := 'Machine1Label' + IntToStr(k);
      Machine1Label.Parent := ListTouchPanel;
      Machine1Label.Transparent := LB_MACHINE1.Transparent;
      if (ListScanStatus[k] = 100) then
        Machine1Label.Font.Color := $0049AD41
      else
        Machine1Label.Font.Color := LB_MACHINE1.Font.Color;
      Machine1Label.Font.Name := LB_MACHINE1.Font.Name;
      Machine1Label.Font.Size := LB_MACHINE1.Font.Size;
      Machine1Label.Font.Style := LB_MACHINE1.Font.Style;
      Machine1Label.Top := LB_MACHINE1.Top;
      Machine1Label.Left := LB_MACHINE1.Left;
      Machine1Label.Caption := FieldByName('Machine1').AsString;
      Machine1Label.Enabled := LB_MACHINE1.Enabled;

      Machine2Label := TTouchLabel.Create(Self);
      Machine2Label.Name := 'Machine2Label' + IntToStr(k);
      Machine2Label.Parent := ListTouchPanel;
      Machine2Label.Transparent := LB_MACHINE2.Transparent;
      if (ListScanStatus[k] = 100) then
        Machine2Label.Font.Color := $0049AD41
      else
        Machine2Label.Font.Color := LB_MACHINE2.Font.Color;
      Machine2Label.Font.Name := LB_MACHINE2.Font.Name;
      Machine2Label.Font.Size := LB_MACHINE2.Font.Size;
      Machine2Label.Font.Style := LB_MACHINE2.Font.Style;
      Machine2Label.Top := LB_MACHINE2.Top;
      Machine2Label.Left := LB_MACHINE2.Left;
      Machine2Label.Caption := FieldByName('Machine2').AsString;
      Machine2Label.Enabled := LB_MACHINE2.Enabled;

      if (Languages.CanTouch) then
      begin
        EnableAllGestures(ListTouchPanel.Handle);
        RegisterTouchWindowFn(ListTouchPanel.Handle, 0);
      end;

      Inc(j);
      Inc(k);
      Next;
    end;

    if (MaxHeight + IMG_LIST.Height > Screen.Height - Panel1.Height - Panel2.Height - ScrollBox1.Height) AND (ADOQList.RecordCount > 0) then
      LB_MARGIN.Top := MaxHeight + IMG_LIST.Height
    else
      LB_MARGIN.Top := 0;

    PreOrderNumber := RecordCount;
    Panel3.Visible := false;
  end;

  if (ADOQList.RecordCount > 0) then
    LB_TIPS.Caption := ''
  else
    LB_TIPS.Caption := Tips;
end;

{ SEARCH BUTTON }

procedure TDispatchList.TP_SEARCHTouch(Sender: TObject; X, Y: Integer);
begin
  TP_SEARCHMouseDown(Sender, mbLeft, [], X, Y);
end;
 
procedure TDispatchList.TP_SEARCHMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_SEARCHP.Visible := true;
  IMG_SEARCH.Visible := false;
end;

procedure TDispatchList.TP_SEARCHMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_SEARCH.Visible := true;
  IMG_SEARCHP.Visible := false;
  SearchList(ED_LISTID.Text);
end;
    
procedure TDispatchList.ED_LISTIDKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then SearchList(ED_LISTID.Text);
end;

procedure TDispatchList.ED_LISTIDChange(Sender: TObject);
begin
  if (ED_LISTID.Font.Color = clRed) then
    ED_LISTID.Font.Color := clWhite;
end;

procedure TDispatchList.ED_LISTIDMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (KeyBoardFlag = false) then
  begin
    KeyBoardFlag := true;
    KeyBoard := TKeyBoard.Create(Self);
    KeyBoard.TargetForm := 'DispatchList';
    KeyBoard.Target := 'ED_LISTID';
    KeyBoard.Show;
  end;
end;

{ MENU BUTTON }

procedure TDispatchList.TP_MENUTouch(Sender: TObject; X, Y: Integer);
begin
  TP_MENUMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TDispatchList.TP_MENUMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENUP.Visible := true;
  IMG_MENU.Visible := false;
end;

procedure TDispatchList.TP_MENUMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENU.Visible := true;
  IMG_MENUP.Visible := false;

  LeftMenu := TLeftMenu.Create(Self);
  LeftMenu.Show;
end;

{ RETURN BUTTON }

procedure TDispatchList.TP_RETURNTouch(Sender: TObject; X, Y: Integer);
begin
  TP_RETURNMouseDown(Sender, mbLeft, [], X, Y);
end;
       
procedure TDispatchList.TP_RETURNMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin                 
  IMG_RETURNP.Visible := true;
  IMG_RETURN.Visible := false;
end;

procedure TDispatchList.TP_RETURNMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_RETURN.Visible := true;
  IMG_RETURNP.Visible := false;
  Close;
end;

{ HOME BUTTON }

procedure TDispatchList.TP_HOMETouch(Sender: TObject; X, Y: Integer);
begin
  TP_HOMEMouseDown(Sender, mbLeft, [], X, Y);
end;
   
procedure TDispatchList.TP_HOMEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOMEP.Visible := true;
  IMG_HOME.Visible := false;
end;

procedure TDispatchList.TP_HOMEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOME.Visible := true;
  IMG_HOMEP.Visible := false;
  Close;
end;

{ LIST ITEMS SCROLLING }

procedure TDispatchList.TP_LISTTouch(Sender: TObject; X, Y: Integer);
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
    if (ABs(TouchPos - PrePos) <> 0) then TouchSpeed := TouchPos - PrePos;
  end;
end;
      
procedure TDispatchList.TP_LISTMouseDown(Sender: TObject;
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

  Index := StrToInt(StringReplace(Target.Name, 'ListImage', '', [rfReplaceAll]));
  if (ListScanStatus[Index] = 100) then
    Target.Picture.Bitmap.Assign(SelectListOKBG)
  else begin
    Target.Picture.Bitmap.Assign(SelectListBG);
    Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, ListDispatchDrawValue[Index], ListDispatchStatus[Index], ListScanDrawValue[Index], ListScanStatus[Index]);
  end;
  PressFlag := true;
end;

procedure TDispatchList.TP_LISTMouseMove(Sender: TObject;
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
        Target.Picture.Bitmap.Assign(ListOKBG)
      else begin
        Target.Picture.Bitmap.Assign(ListBG);
        Languages.DrawProgress(Target.Picture.Bitmap, 131, 136, ListDispatchDrawValue[Index], ListDispatchStatus[Index], ListScanDrawValue[Index], ListScanStatus[Index]);
      end;
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;

procedure TDispatchList.TP_LISTMouseUp(Sender: TObject;
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
    Index := StrToInt(StringReplace(Target.Name, 'ListImage', '', [rfReplaceAll]));
    if (ListScanStatus[Index] = 100) then
      Target.Picture.Bitmap.Assign(ListOKBG)
    else begin
      Target.Picture.Bitmap.Assign(ListBG);
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

procedure TDispatchList.Timer1Timer(Sender: TObject);
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
 
procedure TDispatchList.LB_TIPSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled := false;
  StartPos := Mouse.CursorPos.Y;
  PressFlag := true;
end;

procedure TDispatchList.LB_TIPSMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  CurrentPos, FlagPos: integer;
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
    FlagPos := Mouse.CursorPos.Y;
    if (ABS(FlagPos-CurrentPos) > 10) then DragFlag := true;
  end;
end;

procedure TDispatchList.LB_TIPSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (DragFlag) then
  begin
    Speed := Mouse.CursorPos.Y - StartPos;
    if (Abs(Speed) > 0) then Timer1.Enabled := true;
  end;

  DragFlag := false;
  PressFlag := false;
end;

end.
