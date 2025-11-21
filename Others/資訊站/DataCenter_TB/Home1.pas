unit Home1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, TouchPanel, D7GesturesHeader,
  TouchLabel;

type
  THome = class(TForm)
    Panel2: TPanel;
    IMG_CLOSEP: TImage;
    IMG_CLOSE: TImage;
    Panel1: TPanel;
    ScrollBox2: TScrollBox;
    IMG_SCANP: TImage;
    IMG_SCAN: TImage;
    IMG_SCHEDULEP: TImage;
    IMG_SCHEDULE: TImage;
    IMG_LANGUAGEP: TImage;
    IMG_LANGUAGE: TImage;
    IMG_BG: TImage;
    IMG_MENUP: TImage;
    IMG_MENU: TImage;
    IMG_HOMEP: TImage;
    IMG_HOME: TImage;
    IMG_SEARCHP: TImage;
    IMG_SEARCH: TImage;
    IMG_LISTP: TImage;
    IMG_LIST: TImage;
    TP_MENU: TTouchPanel;
    TP_HOME: TTouchPanel;
    TP_LANGUAGE: TTouchPanel;
    TP_CLOSE: TTouchPanel;
    TP_SCHEDULE: TTouchPanel;
    TP_LIST: TTouchPanel;
    TP_SEARCH: TTouchPanel;
    TP_SCAN: TTouchPanel;
    LB_SCHEDULE: TTouchLabel;
    LB_LIST: TTouchLabel;
    LB_LIST2: TTouchLabel;
    LB_SEARCH: TTouchLabel;
    LB_SCAN: TTouchLabel;
    LB_SCAN2: TTouchLabel;
    IMG_SCHEDULEB: TImage;
    IMG_LISTB: TImage;
    IMG_SEARCHB: TImage;
    IMG_SCANB: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TP_MENUTouch(Sender: TObject; X, Y: Integer);
    procedure TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMETouch(Sender: TObject; X, Y: Integer);
    procedure TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LANGUAGETouch(Sender: TObject; X, Y: Integer);
    procedure TP_LANGUAGEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CLOSETouch(Sender: TObject; X, Y: Integer);
    procedure TP_CLOSEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SCHEDULETouch(Sender: TObject; X, Y: Integer);
    procedure TP_SCHEDULEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LISTTouch(Sender: TObject; X, Y: Integer);
    procedure TP_LISTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SEARCHTouch(Sender: TObject; X, Y: Integer);
    procedure TP_SEARCHMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SCANTouch(Sender: TObject; X, Y: Integer);
    procedure TP_SCANMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SCHEDULEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LISTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SEARCHMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_SCANMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LANGUAGEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CLOSEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure SetTouchEvent;
    procedure SetLanguage;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home: THome;

implementation

uses Languages1, OrderSchedule1, OrderSearch1, ScanQRCode1, LeftMenu1,
  DispatchList1;

{$R *.dfm}

procedure THome.SetLanguage;
begin
  if (Languages.Language = 'EN') then
  begin
    LB_SCHEDULE.Top := 310;
             
    LB_LIST.Top := 310;
    LB_LIST2.Visible := false;

    LB_SCAN.Top := 310;
    LB_SCAN2.Visible := false;
  end
  else if (Languages.Language = 'CN') then
  begin
    LB_SCHEDULE.Caption := '生產排程';
    LB_SCHEDULE.Top := 310;

    LB_LIST.Caption := '派工單';
    LB_LIST.Top := 310;
    LB_LIST2.Visible := false;

    LB_SEARCH.Caption := '搜尋';

    LB_SCAN.Caption := '條碼掃描';
    LB_SCAN.Top := 310;
    LB_SCAN2.Visible := false;
  end
  else if (Languages.Language = 'VN') then
  begin
    LB_SCHEDULE.Caption := 'TIEN DO';

    LB_LIST.Caption := 'PHIEU';
    LB_LIST.Top := 280;
    LB_LIST2.Caption := 'SAP CONG';
    LB_LIST2.Top := LB_LIST.Top + 60;

    LB_SEARCH.Caption := 'TIM KIEM';
    LB_SEARCH.Font.Size := 48;

    LB_SCAN.Caption := 'QUET MA';
    LB_SCAN.Font.Size := 48;
    LB_SCAN.Top := 280;
    LB_SCAN2.Font.Size := 48;
    LB_SCAN2.Top := LB_SCAN.Top + 60;
  end;
end;

procedure THome.FormCreate(Sender: TObject);
var
  X, Y, HorMargin, VerMargin: integer;
  ResizeBG: TBitmap;
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;

  ResizeBG := TBitmap.Create;
  ResizeBG.Assign(IMG_BG.Picture.Graphic);
  HorMargin := (ResizeBG.Width - Screen.Width) DIV 2;
  VerMargin := (ResizeBG.Height - (Screen.Height - Panel1.Height - Panel2.Height)) DIV 2;

  X := Screen.Width DIV 2;
  Y := (Screen.Height - Panel1.Height - Panel2.Height - TP_SCHEDULE.Height) DIV 2;

  TP_SCHEDULE.Top := Y;
  TP_SCHEDULE.Left := X - (TP_SCHEDULE.Width*2 + 45);
  IMG_SCHEDULE.Transparent := true;
  IMG_SCHEDULE.Picture.Bitmap.TransparentColor := clBlack;
  IMG_SCHEDULEP.Transparent := true;
  IMG_SCHEDULEP.Picture.Bitmap.TransparentColor := clBlack;
  IMG_SCHEDULEB.Canvas.CopyRect(Rect(0, 0, IMG_SCHEDULEB.Width, IMG_SCHEDULEB.Height), ResizeBG.Canvas, Rect(HorMargin + TP_SCHEDULE.Left, VerMargin + TP_SCHEDULE.Top, HorMargin + TP_SCHEDULE.Left + IMG_SCHEDULEB.Width, VerMargin + TP_SCHEDULE.Top + IMG_SCHEDULEB.Height));

  TP_LIST.Top := Y;
  TP_LIST.Left := X - (TP_LIST.Width + 15);
  IMG_LIST.Transparent := true;
  IMG_LIST.Picture.Bitmap.TransparentColor := clBlack;
  IMG_LISTP.Transparent := true;
  IMG_LISTP.Picture.Bitmap.TransparentColor := clBlack;
  IMG_LISTB.Canvas.CopyRect(Rect(0, 0, IMG_LISTB.Width, IMG_LISTB.Height), ResizeBG.Canvas, Rect(HorMargin + TP_LIST.Left, VerMargin + TP_LIST.Top, HorMargin + TP_LIST.Left + IMG_LISTB.Width, VerMargin + TP_LIST.Top + IMG_LISTB.Height));

  TP_SEARCH.Top := Y;
  TP_SEARCH.Left := X + 15;
  IMG_SEARCH.Transparent := true;
  IMG_SEARCH.Picture.Bitmap.TransparentColor := clBlack;
  IMG_SEARCHP.Transparent := true;
  IMG_SEARCHP.Picture.Bitmap.TransparentColor := clBlack;
  IMG_SEARCHB.Canvas.CopyRect(Rect(0, 0, IMG_SEARCHB.Width, IMG_SEARCHB.Height), ResizeBG.Canvas, Rect(HorMargin + TP_SEARCH.Left, VerMargin + TP_SEARCH.Top, HorMargin + TP_SEARCH.Left + IMG_SEARCHB.Width, VerMargin + TP_SEARCH.Top + IMG_SEARCHB.Height));

  TP_SCAN.Top := Y;
  TP_SCAN.Left := X + (TP_SCAN.Width + 45);
  IMG_SCAN.Transparent := true;
  IMG_SCAN.Picture.Bitmap.TransparentColor := clBlack;
  IMG_SCANP.Transparent := true;
  IMG_SCANP.Picture.Bitmap.TransparentColor := clBlack;
  IMG_SCANB.Canvas.CopyRect(Rect(0, 0, IMG_SCANB.Width, IMG_SCANB.Height), ResizeBG.Canvas, Rect(HorMargin + TP_SCAN.Left, VerMargin + TP_SCAN.Top, HorMargin + TP_SCAN.Left + IMG_SCANB.Width, VerMargin + TP_SCAN.Top + IMG_SCANB.Height));

  TP_CLOSE.Left := Screen.Width - TP_CLOSE.Width - 5;
  IMG_CLOSE.Transparent := true;
  IMG_CLOSE.Picture.Bitmap.TransparentColor := clBlack;
  IMG_CLOSEP.Transparent := true;
  IMG_CLOSEP.Picture.Bitmap.TransparentColor := clBlack;

  TP_LANGUAGE.Left := Screen.Width - TP_CLOSE.Width - TP_LANGUAGE.Width - 10;
  IMG_LANGUAGE.Transparent := true;
  IMG_LANGUAGE.Picture.Bitmap.TransparentColor := clBlack;
  IMG_LANGUAGEP.Transparent := true;
  IMG_LANGUAGEP.Picture.Bitmap.TransparentColor := clBlack;

  IMG_MENU.Transparent := true;
  IMG_MENU.Picture.Bitmap.TransparentColor := clBlack;
  IMG_MENUP.Transparent := true;
  IMG_MENUP.Picture.Bitmap.TransparentColor := clBlack;
  
  TP_HOME.Left := (Screen.Width - TP_HOME.Width) DIV 2;
  IMG_HOME.Transparent := true;
  IMG_HOME.Picture.Bitmap.TransparentColor := clBlack;
  IMG_HOMEP.Transparent := true;
  IMG_HOMEP.Picture.Bitmap.TransparentColor := clBlack;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure THome.SetTouchEvent;
var
  i: integer;
begin
  EnableAllGestures(TP_MENU.Handle);
  RegisterTouchWindowFn(TP_MENU.Handle, 0);

  EnableAllGestures(TP_LANGUAGE.Handle);
  RegisterTouchWindowFn(TP_LANGUAGE.Handle, 0);

  EnableAllGestures(TP_CLOSE.Handle);
  RegisterTouchWindowFn(TP_CLOSE.Handle, 0);

  EnableAllGestures(TP_HOME.Handle);
  RegisterTouchWindowFn(TP_HOME.Handle, 0);

  EnableAllGestures(TP_SCHEDULE.Handle);
  RegisterTouchWindowFn(TP_SCHEDULE.Handle, 0);

  EnableAllGestures(TP_LIST.Handle);
  RegisterTouchWindowFn(TP_LIST.Handle, 0);

  EnableAllGestures(TP_SEARCH.Handle);
  RegisterTouchWindowFn(TP_SEARCH.Handle, 0);

  EnableAllGestures(TP_SCAN.Handle);
  RegisterTouchWindowFn(TP_SCAN.Handle, 0);
end;

procedure THome.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
end;
   
procedure THome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure THome.FormDestroy(Sender: TObject);
begin
  Home := Nil;
end;

{ SCHEDULE }

procedure THome.TP_SCHEDULETouch(Sender: TObject; X, Y: Integer);
begin
  TP_SCHEDULEMouseDown(Sender, mbLeft, [], X, Y);
end;
         
procedure THome.TP_SCHEDULEMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_SCHEDULEP.Visible := true;
  IMG_SCHEDULE.Visible := false;
  LB_SCHEDULE.Font.Color := $000096FF;
end;

procedure THome.TP_SCHEDULEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_SCHEDULE.Visible := true;
  IMG_SCHEDULEP.Visible := false;
  LB_SCHEDULE.Font.Color := clWhite;

  if (OrderSchedule <> Nil) then OrderSchedule.Close;
  OrderSchedule := TOrderSchedule.Create(Self);
  OrderSchedule.Show;
end;

{ DISPATCH LIST }

procedure THome.TP_LISTTouch(Sender: TObject; X, Y: Integer);
begin
  TP_LISTMouseDown(Sender, mbLeft, [], X, Y);
end;
          
procedure THome.TP_LISTMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_LISTP.Visible := true;
  IMG_LIST.Visible := false;
  LB_LIST.Font.Color := $000096FF;
  LB_LIST2.Font.Color := $000096FF;
end;

procedure THome.TP_LISTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_LIST.Visible := true;
  IMG_LISTP.Visible := false;
  LB_LIST.Font.Color := clWhite;
  LB_LIST2.Font.Color := clWhite;

  if (DispatchList <> Nil) then DispatchList.Close;
  DispatchList := TDispatchList.Create(Self);
  DispatchList.Show;
end;

{ SEARCH }

procedure THome.TP_SEARCHTouch(Sender: TObject; X, Y: Integer);
begin
  TP_SEARCHMouseDown(Sender, mbLeft, [], X, Y);
end;
    
procedure THome.TP_SEARCHMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_SEARCHP.Visible := true;
  IMG_SEARCH.Visible := false;
  LB_SEARCH.Font.Color := $000096FF;
end;

procedure THome.TP_SEARCHMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_SEARCH.Visible := true;
  IMG_SEARCHP.Visible := false;
  LB_SEARCH.Font.Color := clWhite;

  if (OrderSearch <> Nil) then OrderSearch.Close;
  OrderSearch := TOrderSearch.Create(Self);
  OrderSearch.Show;
end;
    
{ SCAN }

procedure THome.TP_SCANTouch(Sender: TObject; X, Y: Integer);
begin
  TP_SCANMouseDown(Sender, mbLeft, [], X, Y);
end;
           
procedure THome.TP_SCANMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_SCANP.Visible := true;
  IMG_SCAN.Visible := false;
  LB_SCAN.Font.Color := $000096FF;
  LB_SCAN2.Font.Color := $000096FF;
end;

procedure THome.TP_SCANMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_SCAN.Visible := true;
  IMG_SCANP.Visible := false;
  LB_SCAN.Font.Color := clWhite;
  LB_SCAN2.Font.Color := clWhite;

  if (ScanQRCode <> Nil) then ScanQRCode.Close;
  ScanQRCode := TScanQRCode.Create(Self);
  ScanQRCode.Show;
end;

{ CLOSE BUTTON }

procedure THome.TP_CLOSETouch(Sender: TObject; X, Y: Integer);
begin
  TP_CLOSEMouseDown(Sender, mbLeft, [], X, Y);
end;
         
procedure THome.TP_CLOSEMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_CLOSEP.Visible := true;
  IMG_CLOSE.Visible := false;
end;

procedure THome.TP_CLOSEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_CLOSE.Visible := true;
  IMG_CLOSEP.Visible := false;
  Languages.Close;
end;

{ LANGUAGE BUTTON }

procedure THome.TP_LANGUAGETouch(Sender: TObject; X, Y: Integer);
begin
  TP_LANGUAGEMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure THome.TP_LANGUAGEMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_LANGUAGEP.Visible := true;
  IMG_LANGUAGE.Visible := false;
end;
         
procedure THome.TP_LANGUAGEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_LANGUAGE.Visible := true;
  IMG_LANGUAGEP.Visible := false;
  Close;
end;

{ MENU BUTTON }

procedure THome.TP_MENUTouch(Sender: TObject; X, Y: Integer);
begin
  TP_MENUMouseDown(Sender, mbLeft, [], X, Y);
end;
          
procedure THome.TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENUP.Visible := true;
  IMG_MENU.Visible := false;
end;

procedure THome.TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENU.Visible := true;
  IMG_MENUP.Visible := false;

  LeftMenu := TLeftMenu.Create(Self);
  LeftMenu.Show;
end;

{ HOME BUTTON }

procedure THome.TP_HOMETouch(Sender: TObject; X, Y: Integer);
begin
  TP_HOMEMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure THome.TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOMEP.Visible := true;
  IMG_HOME.Visible := false;
end;

procedure THome.TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOME.Visible := true;
  IMG_HOMEP.Visible := false;
end;

end.
