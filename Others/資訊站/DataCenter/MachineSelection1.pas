unit MachineSelection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, TouchPanel, D7GesturesHeader,
  TouchLabel, jpeg;

type
  TMachineSelection = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    ScrollBox1: TScrollBox;
    ADOQLean: TADOQuery;
    IMG_MACHINE: TImage;
    Timer1: TTimer;
    LB_MARGIN: TLabel;
    LB_TIPS: TLabel;
    TP_CLOSE: TTouchPanel;
    TP_NEXT: TTouchPanel;
    TP_MACHINE: TTouchPanel;
    TP_PREVIOUS: TTouchPanel;
    LB_MACHINENAME: TTouchLabel;
    LB_MACHINEID: TTouchLabel;
    IMG_MACHINEP: TImage;
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
    procedure TP_MACHINETouch(Sender: TObject; X, Y: Integer);
    procedure TP_MACHINEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MACHINEMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TP_NEXTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CLOSEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PREVIOUSTouch(Sender: TObject; X, Y: Integer);
    procedure TP_PREVIOUSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PREVIOUSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MACHINEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
  private
    ScreenMachineNumber, PreviousSelection, StartPos, TouchPos, PrePos, Speed, TouchSpeed: integer;
    Target: TImage;
    DragFlag, PressFlag: Boolean;
    MachineBG, SelectMachineBG: TBitmap;
    procedure SetLanguage;
    procedure SetTouchEvent;
    { Private declarations }
  public
    NextFlag: Boolean;
    procedure SetMachine(LeanID: String);
    { Public declarations }
  end;

var
  MachineSelection: TMachineSelection;

implementation

uses Languages1, GenerateQRCode1, LeanSelection1, MachineType1;

const
  VerGap: integer = 10;
  HorGap: integer = 10;

{$R *.dfm}

procedure TMachineSelection.SetLanguage;
begin
  if (Languages.Language = 'CN') then
  begin
    LB_TIPS.Caption := ' 請選擇進行裁斷機台';
    TP_PREVIOUS.Caption := '〈 上一步  ';
    TP_PREVIOUS.Width := Languages.GetTextWidth(TP_PREVIOUS.Caption, TP_PREVIOUS.Font);
    TP_NEXT.Caption := '列印';
  end
  else if (Languages.Language = 'VN') then
  begin
    LB_TIPS.Caption := ' VUI LONG CHON MAY CAT';
    TP_PREVIOUS.Caption := '〈 TRANG TRUOC  ';
    TP_PREVIOUS.Width := Languages.GetTextWidth(TP_PREVIOUS.Caption, TP_PREVIOUS.Font);
    TP_NEXT.Caption := 'IN';
  end;
end;

procedure TMachineSelection.FormCreate(Sender: TObject);
begin
  Left := (Screen.Width - Width) DIV 2;
  Top := (Screen.Height - Height) DIV 2;
  DragFlag := false;
  PressFlag := false;
  NextFlag := false;
  PreviousSelection := 0;
  ScreenMachineNumber := (Width + HorGap - 14) DIV (IMG_MACHINE.Width + HorGap);

  TP_NEXT.Left := (Width - TP_NEXT.Width - 6) DIV 2;

  if (GenerateQRCode.DLLB = 'AC') then
  begin
    LB_MACHINENAME.Font.Size := 23;
    LB_MACHINENAME.Top := 37;
  end;

  MachineBG := TBitmap.Create;
  MachineBG.Assign(IMG_MACHINE.Picture.Bitmap);
  MachineBG.Canvas.Pen.Color := clBlack;
  MachineBG.Canvas.Pen.Width := 2;
  MachineBG.Canvas.MoveTo(9, 9);
  MachineBG.Canvas.LineTo(9, MachineBG.Height-9);
  MachineBG.Canvas.LineTo(MachineBG.Width-9, MachineBG.Height-9);
  MachineBG.Canvas.LineTo(MachineBG.Width-9, 9);
  MachineBG.Canvas.LineTo(9, 9);

  SelectMachineBG := TBitmap.Create;
  SelectMachineBG.Assign(IMG_MACHINEP.Picture.Bitmap);

  ScrollBox1.DoubleBuffered := true;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TMachineSelection.SetTouchEvent;
begin
  EnableAllGestures(TP_CLOSE.Handle);
  RegisterTouchWindowFn(TP_CLOSE.Handle, 0);

  EnableAllGestures(TP_NEXT.Handle);
  RegisterTouchWindowFn(TP_NEXT.Handle, 0);

  EnableAllGestures(TP_PREVIOUS.Handle);
  RegisterTouchWindowFn(TP_PREVIOUS.Handle, 0);
end;
         
procedure TMachineSelection.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 50, AW_BLEND);
end;

procedure TMachineSelection.FormDeactivate(Sender: TObject);
begin
  if (NextFlag = false) then LeanSelection.Close;
end;
        
procedure TMachineSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 50, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TMachineSelection.FormDestroy(Sender: TObject);
begin
  MachineSelection := Nil;
end;

procedure TMachineSelection.SetMachine(LeanID: String);
var
  MachineTouchPanel: TTouchPanel;
  MachineImage: TImage;
  MachineName, MachineIDLabel: TTouchLabel;
  i, j, k, MaxHeight: integer;
begin

  with ADOQLean do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, MachineName FROM BMachine');
    SQL.Add('WHERE MachineType = ''' + GenerateQRCode.DLLB + '''');
    if (GenerateQRCode.DLLB = 'MC') then
      SQL.Add('AND DepNo = ''' + LeanID + '''');
    SQL.Add('ORDER BY ID');
    Active := true;

    i := 0;
    j := 0;
    k := 1;
    MaxHeight := 0;
    while not Eof do
    begin
      MachineTouchPanel := TTouchPanel.Create(Self);
      MachineTouchPanel.Name := 'MachineTouchPanel' + IntToStr(k);
      MachineTouchPanel.AutoSize := true;
      MachineTouchPanel.BevelOuter := bvNone;
      MachineTouchPanel.Parent := ScrollBox1;
      MachineTouchPanel.Color := clWhite;
      MachineTouchPanel.OnTouch := TP_MACHINE.OnTouch;
      MachineTouchPanel.OnMouseDown := TP_MACHINE.OnMouseDown;
      MachineTouchPanel.OnMouseMove := TP_MACHINE.OnMouseMove;
      MachineTouchPanel.OnMouseUp := TP_MACHINE.OnMouseUp;

      if (j > ScreenMachineNumber-1) then
      begin
        j := 0;
        Inc(i);
      end;

      MachineTouchPanel.Top := 8 + (IMG_MACHINE.Height + VerGap) * i;
      MachineTouchPanel.Left := 8 + (IMG_MACHINE.Width + HorGap) * j;
      MaxHeight := MachineTouchPanel.Top;

      MachineImage := TImage.Create(Self);
      MachineImage.Name := 'MachineImage' + IntToStr(k);
      MachineImage.AutoSize := true;
      MachineImage.Parent := MachineTouchPanel;
      MachineImage.Picture.Bitmap.Assign(MachineBG);
      MachineImage.Top := 0;
      MachineImage.Left := 0;
      MachineImage.Enabled := false;

      MachineName := TTouchLabel.Create(Self);
      MachineName.Name := 'MachineName' + IntToStr(k);
      MachineName.Parent := MachineTouchPanel;
      MachineName.Transparent := LB_MACHINENAME.Transparent;
      MachineName.Font.Color := LB_MACHINENAME.Font.Color;
      MachineName.Font.Name := LB_MACHINENAME.Font.Name;
      MachineName.Font.Size := LB_MACHINENAME.Font.Size;
      MachineName.Font.Style := LB_MACHINENAME.Font.Style;
      MachineName.Top := LB_MACHINENAME.Top;
      MachineName.Left := LB_MACHINENAME.Left;
      MachineName.Caption := FieldByName('MachineName').AsString;
      MachineName.Enabled := LB_MACHINENAME.Enabled;

      MachineIDLabel := TTouchLabel.Create(Self);
      MachineIDLabel.Name := 'MachineIDLabel' + IntToStr(k);
      MachineIDLabel.Parent := MachineTouchPanel;
      MachineIDLabel.Transparent := LB_MACHINEID.Transparent;
      MachineIDLabel.Font.Color := LB_MACHINEID.Font.Color;
      MachineIDLabel.Font.Name := LB_MACHINEID.Font.Name;
      MachineIDLabel.Font.Size := LB_MACHINEID.Font.Size;
      MachineIDLabel.Font.Style := LB_MACHINEID.Font.Style;
      MachineIDLabel.Top := LB_MACHINEID.Top;
      MachineIDLabel.Left := LB_MACHINEID.Left;
      MachineIDLabel.Caption := FieldByName('ID').AsString;
      MachineIDLabel.Enabled := LB_MACHINEID.Enabled;
              
      if (Languages.CanTouch) then
      begin
        EnableAllGestures(MachineTouchPanel.Handle);
        RegisterTouchWindowFn(MachineTouchPanel.Handle, 0);
      end;

      Inc(j);
      Inc(k);
      Next;
    end;

    LB_MARGIN.Top := MaxHeight + MachineImage.Height;
  end;
end;

{ PRINT BUTTON }

procedure TMachineSelection.TP_NEXTTouch(Sender: TObject; X, Y: Integer);
begin
  TP_NEXTMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure TMachineSelection.TP_NEXTMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_NEXT.Font.Color := clBlack;
  TP_NEXT.Color := $006FE2FF;
end;

procedure TMachineSelection.TP_NEXTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_NEXT.Font.Color := clWhite;
  TP_NEXT.Color := $00323330;
  NextFlag := true;

  if (GenerateQRCode.PrintType = 'NORMAL') then
    GenerateQRCode.PrintQRCode
  else if (GenerateQRCode.PrintType = 'LIST') then
    GenerateQRCode.PrintListQRCode;
end;

{ CLOSE BUTTON }

procedure TMachineSelection.TP_CLOSETouch(Sender: TObject; X, Y: Integer);
begin
  TP_CLOSEMouseDown(Sender, mbLeft, [], X, Y);
end;
    
procedure TMachineSelection.TP_CLOSEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := $000096FF;
end;

procedure TMachineSelection.TP_CLOSEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := clWhite;
  NextFlag := true;
  LeanSelection.Close;
end;

procedure TMachineSelection.TP_MACHINETouch(Sender: TObject; X, Y: Integer);
var
  TouchPoint: TPoint;
begin
  TouchPoint := TTouchPanel(Sender).ClientToScreen(Point(X, Y));

  if (PressFlag = false) then
  begin
    SetCursorPos(TouchPoint.X, TouchPoint.Y);
    TouchPos := TouchPoint.X;
    PrePos := TouchPos;

    TP_MACHINEMouseDown(Sender, mbLeft, [], X, Y);
  end
  else begin
    PrePos := TouchPos;
    TouchPos := TouchPoint.Y;
    if (ABs(TouchPos - PrePos) <> 0) then TouchSpeed := TouchPos - PrePos;
  end;
end;
      
procedure TMachineSelection.TP_MACHINEMouseDown(Sender: TObject;
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
      Target.Picture.Bitmap.Assign(SelectMachineBG);
      Break;
    end;
  end;

  Selection := StringReplace(TTouchPanel(Sender).Name, 'MachineTouchPanel', '', [rfReplaceAll]);
  if (PreviousSelection > 0) AND (PreviousSelection <> StrToInt(Selection)) then
    TImage(Self.FindComponent('MachineImage' + IntToStr(PreviousSelection))).Picture.Assign(MachineBG);

  PreviousSelection := StrToInt(Selection);
  PressFlag := true;
end;
   
procedure TMachineSelection.TP_MACHINEMouseMove(Sender: TObject;
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
      Target.Picture.Bitmap.Assign(MachineBG);
      PreviousSelection := 0;
      GenerateQRCode.MachineID := '';
      TP_NEXT.Visible := false;
      StartPos := CurrentPos;
      DragFlag := true;
    end;
  end;
end;

procedure TMachineSelection.TP_MACHINEMouseUp(Sender: TObject;
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
    GenerateQRCode.MachineID := TTouchLabel(Self.FindComponent('MachineIDLabel' + IntToStr(PreviousSelection))).Caption;
    GenerateQRCode.MachineName := TTouchLabel(Self.FindComponent('MachineName' + IntToStr(PreviousSelection))).Caption;
    TP_NEXT.Visible := true;
  end;
  
  DragFlag := false;
  PressFlag := false;
end;

procedure TMachineSelection.ScrollBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled := false;
  StartPos := Mouse.CursorPos.Y;
  PressFlag := true;
end;

procedure TMachineSelection.ScrollBox1MouseMove(Sender: TObject;
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

procedure TMachineSelection.ScrollBox1MouseUp(Sender: TObject;
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
  
procedure TMachineSelection.Timer1Timer(Sender: TObject);
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

{ PREVIOUS BUTTON }

procedure TMachineSelection.TP_PREVIOUSTouch(Sender: TObject; X,
  Y: Integer);
begin
  TP_PREVIOUSMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TMachineSelection.TP_PREVIOUSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_PREVIOUS.Font.Color := $006FE2FF;
end;

procedure TMachineSelection.TP_PREVIOUSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_PREVIOUS.Font.Color := clWhite;
  NextFlag := true;
  if (GenerateQRCode.LeanID <> 'LEATHER') then
    MachineType.NextFlag := false
  else
    LeanSelection.NextFlag := false;
  Close;
end;

end.
