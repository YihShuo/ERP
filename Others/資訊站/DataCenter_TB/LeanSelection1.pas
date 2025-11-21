unit LeanSelection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, TouchPanel, D7GesturesHeader,
  TouchLabel, jpeg;

type
  TLeanSelection = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    ScrollBox1: TScrollBox;
    ADOQLean: TADOQuery;
    IMG_LEAN: TImage;
    Timer1: TTimer;
    LB_MARGIN: TLabel;
    LB_TIPS: TLabel;
    TP_CLOSE: TTouchPanel;
    TP_NEXT: TTouchPanel;
    TP_LEAN: TTouchPanel;
    LB_LEANNAME: TTouchLabel;
    LB_LEANID: TTouchLabel;
    IMG_LEANP: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ScrollBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure ScrollBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScrollBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CLOSETouch(Sender: TObject; X, Y: Integer);
    procedure TP_CLOSEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_NEXTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_NEXTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LEANTouch(Sender: TObject; X, Y: Integer);
    procedure TP_LEANMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LEANMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_NEXTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CLOSEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LEANMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
  private
    PreviousSelection, StartPos, TouchPos, PrePos, Speed, TouchSpeed: integer;
    Target: TImage;
    DragFlag, PressFlag: Boolean;
    LeanBG, SelectLeanBG: TBitmap;
    procedure SetLanguage;
    procedure SetTouchEvent;
    { Private declarations }
  public
    NextFlag: Boolean;
    { Public declarations }
  end;

var
  LeanSelection: TLeanSelection;

implementation

uses Languages1, GenerateQRCode1, MachineType1, MachineSelection1;

const
  VerGap: integer = 10;
  HorGap: integer = 10;
  
{$R *.dfm}

procedure TLeanSelection.SetLanguage;
begin
  if (Languages.Language = 'CN') then
  begin
    LB_TIPS.Caption := ' 請選擇生產線別';
    TP_NEXT.Caption := '下一步';
  end
  else if (Languages.Language = 'VN') then
  begin
    LB_TIPS.Caption := ' VUI LONG CHON LEAN';
    TP_NEXT.Caption := 'TRANG SAU';
    TP_NEXT.Font.Size := 19;
  end;
end;

procedure TLeanSelection.FormCreate(Sender: TObject);
var
  LeanTouchPanel: TTouchPanel;
  LeanImage: TImage;
  LeanNameLabel, LeanIDLabel: TTouchLabel;
  ScreenLeanNumber, i, j, k, MaxHeight: integer;
begin
  Left := (Screen.Width - Width) DIV 2;
  Top := (Screen.Height - Height) DIV 2;
  DragFlag := false;
  PressFlag := false;
  NextFlag := false;
  PreviousSelection := 0; 
  ScreenLeanNumber := (Width + HorGap - 14) DIV (IMG_LEAN.Width + HorGap);

  TP_NEXT.Left := (Width - TP_NEXT.Width - 6) DIV 2;

  LeanBG := TBitmap.Create;
  LeanBG.Assign(IMG_LEAN.Picture.Bitmap);
  LeanBG.Canvas.Pen.Color := clBlack;
  LeanBG.Canvas.Pen.Width := 2;
  LeanBG.Canvas.MoveTo(9, 9);
  LeanBG.Canvas.LineTo(9, LeanBG.Height-9);
  LeanBG.Canvas.LineTo(LeanBG.Width-9, LeanBG.Height-9);
  LeanBG.Canvas.LineTo(LeanBG.Width-9, 9);
  LeanBG.Canvas.LineTo(9, 9);

  SelectLeanBG := TBitmap.Create;
  SelectLeanBG.Assign(IMG_LEANP.Picture.Bitmap);

  with ADOQLean do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, ''LEAN'' + RIGHT(sumline, 2) AS DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND Xuong IS NOT NULL');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT ''LEATHER'', ''OTHER''');
    SQL.Add('ORDER BY ID');
    Active := true;

    i := 0;
    j := 0;
    k := 1;
    MaxHeight := 0;
    while not Eof do
    begin
      LeanTouchPanel := TTouchPanel.Create(Self);
      LeanTouchPanel.Name := 'LeanTouchPanel' + IntToStr(k);
      LeanTouchPanel.AutoSize := true;
      LeanTouchPanel.BevelOuter := bvNone;
      LeanTouchPanel.Parent := ScrollBox1;
      LeanTouchPanel.Color := clWhite;
      LeanTouchPanel.OnTouch := TP_LEAN.OnTouch;
      LeanTouchPanel.OnMouseDown := TP_LEAN.OnMouseDown;
      LeanTouchPanel.OnMouseMove := TP_LEAN.OnMouseMove;
      LeanTouchPanel.OnMouseUp := TP_LEAN.OnMouseUp;

      if (j > ScreenLeanNumber-1) then
      begin
        j := 0;
        Inc(i);
      end;

      LeanTouchPanel.Top := 8 + (IMG_LEAN.Height + VerGap) * i;
      LeanTouchPanel.Left := 8 + (IMG_LEAN.Width + HorGap) * j;
      MaxHeight := LeanTouchPanel.Top;

      LeanImage := TImage.Create(Self);
      LeanImage.Name := 'LeanImage' + IntToStr(k);
      LeanImage.AutoSize := true;
      LeanImage.Parent := LeanTouchPanel;
      LeanImage.Picture.Bitmap.Assign(LeanBG);
      LeanImage.Top := 0;
      LeanImage.Left := 0;
      LeanImage.Enabled := false;
            
      LeanNameLabel := TTouchLabel.Create(Self);
      LeanNameLabel.Name := 'LeanNameLabel' + IntToStr(k);
      LeanNameLabel.Parent := LeanTouchPanel;
      LeanNameLabel.Transparent := LB_LEANNAME.Transparent;
      LeanNameLabel.Font.Color := LB_LEANNAME.Font.Color;
      LeanNameLabel.Font.Name := LB_LEANNAME.Font.Name;
      LeanNameLabel.Font.Size := LB_LEANNAME.Font.Size;
      LeanNameLabel.Font.Style := LB_LEANNAME.Font.Style;
      LeanNameLabel.Top := LB_LEANNAME.Top;
      LeanNameLabel.Left := LB_LEANNAME.Left;
      LeanNameLabel.Caption := FieldByName('DepName').AsString;
      LeanNameLabel.Enabled := LB_LEANNAME.Enabled;

      LeanIDLabel := TTouchLabel.Create(Self);
      LeanIDLabel.Name := 'LeanIDLabel' + IntToStr(k);
      LeanIDLabel.Parent := LeanTouchPanel;
      LeanIDLabel.Transparent := LB_LEANID.Transparent;
      LeanIDLabel.Font.Color := LB_LEANID.Font.Color;
      LeanIDLabel.Font.Name := LB_LEANID.Font.Name;
      LeanIDLabel.Font.Size := LB_LEANID.Font.Size;
      LeanIDLabel.Font.Style := LB_LEANID.Font.Style;
      LeanIDLabel.Top := LB_LEANID.Top;
      LeanIDLabel.Left := LB_LEANID.Left;
      LeanIDLabel.Caption := FieldByName('ID').AsString;
      LeanIDLabel.Enabled := LB_LEANID.Enabled;
                    
      if (Languages.CanTouch) then
      begin
        EnableAllGestures(LeanTouchPanel.Handle);
        RegisterTouchWindowFn(LeanTouchPanel.Handle, 0);
      end;

      Inc(j);
      Inc(k);
      Next;
    end;

    LB_MARGIN.Top := MaxHeight + IMG_LEAN.Height;
  end;

  ScrollBox1.DoubleBuffered := true;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TLeanSelection.SetTouchEvent;
begin
  EnableAllGestures(TP_CLOSE.Handle);
  RegisterTouchWindowFn(TP_CLOSE.Handle, 0);

  EnableAllGestures(TP_NEXT.Handle);
  RegisterTouchWindowFn(TP_NEXT.Handle, 0);
end;

procedure TLeanSelection.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 50, AW_BLEND);
end;
           
procedure TLeanSelection.FormDeactivate(Sender: TObject);
begin
  if (NextFlag = false) then Close; 
end;

procedure TLeanSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 50, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TLeanSelection.FormDestroy(Sender: TObject);
begin
  LeanSelection := Nil;
end;

{ NEXT BUTTON }

procedure TLeanSelection.TP_NEXTTouch(Sender: TObject; X, Y: Integer);
begin
  TP_NEXTMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure TLeanSelection.TP_NEXTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_NEXT.Font.Color := clBlack;
  TP_NEXT.Color := $006FE2FF;
end;

procedure TLeanSelection.TP_NEXTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_NEXT.Font.Color := clWhite;
  TP_NEXT.Color := $00323330;
  NextFlag := true;

  if (GenerateQRCode.LeanID <> 'LEATHER') then
  begin
    MachineType := TMachineType.Create(Self);
    MachineType.Show;
  end
  else begin
    GenerateQRCode.DLLB := 'Leather';
    MachineSelection := TMachineSelection.Create(Self);
    MachineSelection.SetMachine('Leather');
    MachineSelection.Show;
  end;
end;

{ CLOSE BUTTON }

procedure TLeanSelection.TP_CLOSETouch(Sender: TObject; X, Y: Integer);
begin
  TP_CLOSEMouseDown(Sender, mbLeft, [], X, Y);
end;
    
procedure TLeanSelection.TP_CLOSEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := $000096FF;
end;

procedure TLeanSelection.TP_CLOSEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := clWhite;
  NextFlag := true;
  Close;
end;

{ LEAN ITEMS SCROLLING }

procedure TLeanSelection.TP_LEANTouch(Sender: TObject; X, Y: Integer);
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
    TouchPos := TouchPoint.Y;
    if (ABs(TouchPos - PrePos) <> 0) then TouchSpeed := TouchPos - PrePos;
  end;
end;
   
procedure TLeanSelection.TP_LEANMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Selection: string;
  i: integer;
begin
  Timer1.Enabled := false;
  StartPos := Mouse.CursorPos.Y;

  for i := 0 to TTouchPanel(Sender).ControlCount-1 do
  begin
    if (TTouchPanel(Sender).Controls[i] IS TImage) then
    begin
      Target := TImage(TTouchPanel(Sender).Controls[i]);
      Target.Picture.Bitmap.Assign(SelectLeanBG);
      Break;
    end;
  end;

  Selection := StringReplace(TTouchPanel(Sender).Name, 'LeanTouchPanel', '', [rfReplaceAll]);
  if (PreviousSelection > 0) AND (PreviousSelection <> StrToInt(Selection)) then
    TImage(Self.FindComponent('LeanImage' + IntToStr(PreviousSelection))).Picture.Assign(LeanBG);

  PreviousSelection := StrToInt(Selection);
  PressFlag := true;
end;
       
procedure TLeanSelection.TP_LEANMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  CurrentPos: integer;
begin
  if (PressFlag) AND (DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.Y;
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position + (StartPos - CurrentPos);
    ScrollBox1.Repaint;
    StartPos := CurrentPos;
  end
  else if (PressFlag) AND (NOT DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.Y;
    if (ABS(CurrentPos - StartPos) > 20) then
    begin
      Target.Picture.Bitmap.Assign(LeanBG);
      PreviousSelection := 0;
      GenerateQRCode.LeanID := '';
      TP_NEXT.Visible := false;
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;

procedure TLeanSelection.TP_LEANMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
    GenerateQRCode.LeanID := TTouchLabel(Self.FindComponent('LeanIDLabel' + IntToStr(PreviousSelection))).Caption;
    GenerateQRCode.LeanName := TTouchLabel(Self.FindComponent('LeanNameLabel' + IntToStr(PreviousSelection))).Caption;
    TP_NEXT.Visible := true;
  end;
  
  DragFlag := false;
  PressFlag := false;
end;

procedure TLeanSelection.ScrollBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled := false;
  StartPos := Mouse.CursorPos.Y;
  PressFlag := true;
end;

procedure TLeanSelection.ScrollBox1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  CurrentPos, FlagPos: integer;
begin
  if (PressFlag) AND (DragFlag) then
  begin
    CurrentPos := Mouse.CursorPos.Y;
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position + (StartPos - CurrentPos);
    ScrollBox1.Repaint;
    StartPos := CurrentPos;
  end
  else if (PressFlag) AND (NOT DragFlag) then
  begin
    FlagPos := Mouse.CursorPos.Y;
    if (ABS(FlagPos-CurrentPos) > 20) then DragFlag := true;
  end;
end;

procedure TLeanSelection.ScrollBox1MouseUp(Sender: TObject;
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
  
procedure TLeanSelection.Timer1Timer(Sender: TObject);
begin
  if (Speed > 0) then
  begin
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - Speed*2;
    Inc(Speed, -1);
  end
  else if (Speed < 0) then
  begin
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - Speed*2;
    Inc(Speed, 1);
  end
  else if (Speed = 0) then
  begin
    Timer1.Enabled := false;
  end;
end;

end.
