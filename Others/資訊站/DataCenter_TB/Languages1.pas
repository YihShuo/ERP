unit Languages1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, D7GesturesHeader, TouchPanel,
  QuickRpt, QRCtrls, TouchLabel, DB, ADODB;

type
  TLanguages = class(TForm)
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    IMG_BG: TImage;
    Panel1: TPanel;
    IMG_HOMEP: TImage;
    IMG_HOME: TImage;
    Timer1: TTimer;
    TP_CN: TTouchPanel;
    IMG_CNP: TImage;
    IMG_CN: TImage;
    TP_EN: TTouchPanel;
    IMG_ENP: TImage;
    IMG_EN: TImage;
    TP_VN: TTouchPanel;
    IMG_VNP: TImage;
    IMG_VN: TImage;
    TP_HOME: TTouchPanel;
    LB_CN: TTouchLabel;
    LB_EN: TTouchLabel;
    LB_VN: TTouchLabel;
    IMG_CNB: TImage;
    IMG_ENB: TImage;
    IMG_VNB: TImage;
    ADOQUpdate: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TP_CNTouch(Sender: TObject; X, Y: Integer);
    procedure TP_ENTouch(Sender: TObject; X, Y: Integer);
    procedure TP_VNTouch(Sender: TObject; X, Y: Integer);
    procedure TP_CNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ENMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_VNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMETouch(Sender: TObject; X, Y: Integer);
    procedure TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ENMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_VNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure SetTouchEvent;
    procedure CheckNewVersion;
    { Private declarations }
  public
    Language: string;
    CanTouch, ShowMouse: Boolean;
    function GetTextWidth(const Text: String; Font: TFont): Integer;
    function GetTextHeight(const Text: String; Font: TFont): Integer;
    procedure DrawProgress(TargitBitmap: TBitmap; X, Y, DispatchDrawValue, DispatchProgress, ScanDrawValue, ScanProgress: Integer);
    { Public declarations }
  end;

  type  
    LASTINPUTINFO = record
    cbSize: UINT;
    dwTime: DWORD;
  end;

var
  Languages: TLanguages;

implementation

uses ScreenSaver1, Home1, OrderSchedule1, LeftMenu1, OrderSearch1, ScanQRCode1,
  GenerateQRCode1, LeanSelection1, FunUnit;

{$R *.dfm}

function GetInputAwayTime(): DWORD;
var
  lpi: TLastInputInfo;
begin
  lpi.cbSize := sizeof(lpi);
  GetLastInputInfo(lpi);
  Result := Round((GetTickCount()-lpi.dwTime)/1000);
end;

function TLanguages.GetTextWidth(const Text: String; Font: TFont): Integer;
var
  LBmp: TBitmap;
begin
  LBmp := TBitmap.Create;
  try
    LBmp.Canvas.Font := Font;
    Result := LBmp.Canvas.TextWidth(Text);
  finally
    LBmp.Free;
  end;
end;

function TLanguages.GetTextHeight(const Text: String; Font: TFont): Integer;
var
  LBmp: TBitmap;
begin
  LBmp := TBitmap.Create;
  try
    LBmp.Canvas.Font := Font;
    Result := LBmp.Canvas.TextHeight(Text);
  finally
    LBmp.Free;
  end;
end;

procedure TLanguages.DrawProgress(TargitBitmap: TBitmap; X, Y, DispatchDrawValue, DispatchProgress, ScanDrawValue, ScanProgress: Integer);
var
  ProgressText: string;
  XPos: integer;
begin
  TargitBitmap.Canvas.Brush.Style := bsClear;
  TargitBitmap.Canvas.Pen.Width := 5;
  TargitBitmap.Canvas.Pen.Color := clWhite;
  TargitBitmap.Canvas.MoveTo(X, Y);
  TargitBitmap.Canvas.LineTo(X + 240, Y);  
  TargitBitmap.Canvas.Font.Name := LB_CN.Font.Name;
  TargitBitmap.Canvas.Font.Size := 10;
  TargitBitmap.Canvas.Font.Style := [fsBold];

  if (DispatchProgress > 0) then
  begin
    TargitBitmap.Canvas.Pen.Color := clRed;
    TargitBitmap.Canvas.MoveTo(X, Y);
    TargitBitmap.Canvas.LineTo(X + DispatchDrawValue, Y);
  end;

  if (ScanProgress > 0) then
  begin
    TargitBitmap.Canvas.Pen.Color := $0049AD41;
    TargitBitmap.Canvas.MoveTo(X, Y);
    TargitBitmap.Canvas.LineTo(X + ScanDrawValue, Y);
  end;
  ProgressText := IntToStr(DispatchProgress) + '%';
  TargitBitmap.Canvas.Font.Color := clRed;
  XPos := X + 240 - GetTextWidth(ProgressText, TargitBitmap.Canvas.Font);
  TargitBitmap.Canvas.TextOut(XPos, Y - GetTextHeight(ProgressText, TargitBitmap.Canvas.Font), ProgressText);

  TargitBitmap.Canvas.Font.Color := clBlack;
  XPos := XPos - GetTextWidth(' / ', TargitBitmap.Canvas.Font);
  TargitBitmap.Canvas.TextOut(XPos, Y - GetTextHeight(ProgressText, TargitBitmap.Canvas.Font), ' / ');

  ProgressText := IntToStr(ScanProgress) + '%';
  TargitBitmap.Canvas.Font.Color := $0049AD41;
  XPos := XPos - GetTextWidth(ProgressText, TargitBitmap.Canvas.Font);
  TargitBitmap.Canvas.TextOut(XPos, Y - GetTextHeight(ProgressText, TargitBitmap.Canvas.Font), ProgressText);
end;

procedure TLanguages.CheckNewVersion;
begin
  funcObj := TFuncObj.Create;
  if FileExists(ExtractFilePath(Application.Exename) + 'ERPUpgrade.exe') then
    funcObj.ServicesExecute('ERPUpgrade.exe', ' "SQLfilter" " AND FileName IN (''DataCenter.exe'')" "DataCenter.exe"');
  funcObj.Free;
end;

procedure TLanguages.FormCreate(Sender: TObject);
var
  X, Y, NewWidth, NewHeight, HorMargin, VerMargin: integer;
  ResizeBG: TBitmap;
begin
  CheckNewVersion;

  BorderStyle := bsNone;
  WindowState := wsMaximized;    
  Language := 'VN';
  CanTouch := false;
  ShowMouse := true;

  ResizeBG := TBitmap.Create;
  ResizeBG.Assign(IMG_BG.Picture.Graphic);

  if (ResizeBG.Height DIV ResizeBG.Width > (Screen.Height - Panel1.Height - Panel2.Height) DIV Screen.Width) then
  begin
    NewWidth := Screen.Width;
    NewHeight := ResizeBG.Height * NewWidth DIV ResizeBG.Width;
  end
  else begin
    NewHeight := Screen.Height - Panel1.Height - Panel2.Height;
    NewWidth := ResizeBG.Width * NewHeight DIV ResizeBG.Height;
  end;
  HorMargin := (NewWidth - Screen.Width) DIV 2;
  VerMargin := (NewHeight - (Screen.Height - Panel1.Height - Panel2.Height)) DIV 2;
  ResizeBG.Canvas.StretchDraw(Rect(0, 0, NewWidth, NewHeight), ResizeBG);

  X := Screen.Width DIV 2;
  Y := (Screen.Height - Panel1.Height - Panel2.Height - TP_EN.Height) DIV 2;

  TP_CN.Top := 0;
  TP_CN.Left := 0;
  TP_EN.Top := 0;
  TP_EN.Left := 270;
  TP_VN.Top := 0;
  TP_VN.Left := 600;
{  TP_CN.Top := Y + 6;
  TP_CN.Left := X - TP_EN.Width DIV 2 - TP_CN.Width - 20;
  IMG_CN.Transparent := true;
  IMG_CN.Picture.Bitmap.TransparentColor := clBlack;
  IMG_CNP.Transparent := true;
  IMG_CNP.Picture.Bitmap.TransparentColor := clBlack;
  IMG_CNB.Canvas.CopyRect(Rect(0, 0, IMG_CNB.Width, IMG_CNB.Height), ResizeBG.Canvas, Rect(HorMargin + TP_CN.Left, VerMargin + TP_CN.Top, HorMargin + TP_CN.Left + IMG_CNB.Width, VerMargin + TP_CN.Top + IMG_CNB.Height));
  LB_CN.Top := (IMG_CN.Height - LB_CN.Height) DIV 2 - 70;

  TP_EN.Top := Y;
  TP_EN.Left := X - (TP_EN.Width DIV 2);
  IMG_EN.Transparent := true;
  IMG_EN.Picture.Bitmap.TransparentColor := clBlack;
  IMG_ENP.Transparent := true;
  IMG_ENP.Picture.Bitmap.TransparentColor := clBlack;
  IMG_ENB.Canvas.CopyRect(Rect(0, 0, IMG_ENB.Width, IMG_ENB.Height), ResizeBG.Canvas, Rect(HorMargin + TP_EN.Left, VerMargin + TP_EN.Top, HorMargin + TP_EN.Left + IMG_ENB.Width, VerMargin + TP_EN.Top + IMG_ENB.Height));
  LB_EN.Top := (IMG_EN.Height - LB_EN.Height) DIV 2;

  TP_VN.Top := Y + 63;
  TP_VN.Left := X + IMG_EN.Width DIV 2 + 20;
  IMG_VN.Transparent := true;
  IMG_VN.Picture.Bitmap.TransparentColor := clBlack;
  IMG_VNP.Transparent := true;
  IMG_VNP.Picture.Bitmap.TransparentColor := clBlack;
  IMG_VNB.Canvas.CopyRect(Rect(0, 0, IMG_VNB.Width, IMG_VNB.Height), ResizeBG.Canvas, Rect(HorMargin + TP_VN.Left, VerMargin + TP_VN.Top, HorMargin + TP_VN.Left + IMG_VNB.Width, VerMargin + TP_VN.Top + IMG_VNB.Height));
  LB_VN.Top := (IMG_VN.Height - LB_VN.Height) DIV 2 + 20;
}
  TP_HOME.Left := (Screen.Width - TP_HOME.Width) DIV 2;
  IMG_HOME.Transparent := true;
  IMG_HOME.Picture.Bitmap.TransparentColor := clBlack;
  IMG_HOMEP.Transparent := true;
  IMG_HOMEP.Picture.Bitmap.TransparentColor := clBlack;

  LoadTouchGestureAPI;
  if (bMultiTouchHardware) AND (bTouchGestureAPIPresent) then
  begin
    CanTouch := true;
    SetTouchEvent;
  end;
end;

procedure TLanguages.SetTouchEvent;
begin
  EnableAllGestures(TP_CN.Handle);
  RegisterTouchWindowFn(TP_CN.Handle, 0);

  EnableAllGestures(TP_EN.Handle);
  RegisterTouchWindowFn(TP_EN.Handle, 0);

  EnableAllGestures(TP_VN.Handle);
  RegisterTouchWindowFn(TP_VN.Handle, 0);

  EnableAllGestures(TP_HOME.Handle);
  RegisterTouchWindowFn(TP_HOME.Handle, 0);
end;
         
procedure TLanguages.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
  ScrollBox1.SetFocus;
end;

procedure TLanguages.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLanguages.FormDestroy(Sender: TObject);
begin
  Languages := Nil;
end;
           
procedure TLanguages.Timer1Timer(Sender: TObject);
begin
  if (GetInputAwayTime >= 1) then
  begin
    Timer1.Enabled := false;
    if (LeftMenu <> Nil) then LeftMenu.Close;
    if (OrderSchedule <> Nil) then OrderSchedule.Close;
    if (OrderSearch <> Nil) then OrderSearch.Close;
    if (ScanQRCode <> Nil) then ScanQRCode.Close;
    if (GenerateQRCode <> Nil) then GenerateQRCode.Close;
    if (LeanSelection <> Nil) then LeanSelection.Close;

    ScreenSaver := TScreenSaver.Create(Self);
    ScreenSaver.Show;
  end;
end;

{ CHINESE BUTTON }

procedure TLanguages.TP_CNTouch(Sender: TObject; X, Y: Integer);
begin
  TP_CNMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TLanguages.TP_CNMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  IMG_CNP.Visible := true;
//  IMG_CN.Visible := false;
  LB_CN.Font.Size := 48;
end;

procedure TLanguages.TP_CNMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  IMG_CN.Visible := true;
//  IMG_CNP.Visible := false;
  LB_CN.Font.Size := 36;

  Language := 'CN';
  Home := THome.Create(Self);
  Home.Show;
end;

{ ENGLISH BUTTON }

procedure TLanguages.TP_ENTouch(Sender: TObject; X, Y: Integer);
begin
  TP_ENMouseDown(Sender, mbLeft, [], X, Y);
end;
      
procedure TLanguages.TP_ENMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  IMG_ENP.Visible := true;
//  IMG_EN.Visible := false;
  LB_EN.Font.Size := 48;
end;

procedure TLanguages.TP_ENMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  IMG_EN.Visible := true;
//  IMG_ENP.Visible := false;
  LB_EN.Font.Size := 36;

  Language := 'EN';
  Home := THome.Create(Self);
  Home.Show;
end;

{ VIETNAM BUTTON }

procedure TLanguages.TP_VNTouch(Sender: TObject; X, Y: Integer);
begin
  TP_VNMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TLanguages.TP_VNMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  IMG_VNP.Visible := true;
//  IMG_VN.Visible := false;
  LB_VN.Font.Size := 48;
end;

procedure TLanguages.TP_VNMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  IMG_VN.Visible := true;
//  IMG_VNP.Visible := false;
  LB_VN.Font.Size := 36;

  Language := 'VN';
  Home := THome.Create(Self);
  Home.Show;
end;

{ HOME BUTTON }

procedure TLanguages.TP_HOMETouch(Sender: TObject; X, Y: Integer);
begin
  TP_HOMEMouseDown(Sender, mbLeft, [], X, Y);
end;
          
procedure TLanguages.TP_HOMEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOMEP.Visible := true;
  IMG_HOME.Visible := false;
end;

procedure TLanguages.TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOME.Visible := true;
  IMG_HOMEP.Visible := false;
  Home := THome.Create(Self);
  Home.Show;
end;

end.
