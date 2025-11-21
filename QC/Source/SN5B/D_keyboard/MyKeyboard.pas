unit MyKeyboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, colorbutton, ExtCtrls;

type
  TKeyBoardForm = class(TForm)
    CBtn0: TColorButton;
    CBtn1: TColorButton;
    CBtn2: TColorButton;
    CBtn3: TColorButton;
    CBtn4: TColorButton;
    CBtn5: TColorButton;
    CBtn6: TColorButton;
    CBtn7: TColorButton;
    CBtn8: TColorButton;
    CBtn9: TColorButton;
    CBtn_Y: TColorButton;
    CBtn_V: TColorButton;
    CBtn_1: TColorButton;
    CBtn_2: TColorButton;
    CBtn_B: TColorButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure BtnNumberLockClick(Sender: TObject);
    procedure BtnNumberLock_UppcaseClick(Sender: TObject);
    procedure CBtn_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure CBtn_2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KeyBoardForm: TKeyBoardForm;

implementation

{$R *.dfm}

procedure TKeyBoardForm.FormCreate(Sender: TObject);
var wsex:Longint;
begin
  CBtn0.Tag          := VK_NUMPAD0;
  CBtn1.Tag          := VK_NUMPAD1;
  CBtn2.Tag          := VK_NUMPAD2;
  CBtn3.Tag          := VK_NUMPAD3;                     
  CBtn4.Tag          := VK_NUMPAD4;
  CBtn5.Tag          := VK_NUMPAD5;
  CBtn6.Tag          := VK_NUMPAD6;
  CBtn7.Tag          := VK_NUMPAD7;
  CBtn8.Tag          := VK_NUMPAD8;
  CBtn9.Tag          := VK_NUMPAD9;
  CBtn_1.Tag         := VK_SUBTRACT;
  CBtn_2.Tag         := VK_BACK;
  Timer1.Tag         := VK_BACK;
  CBtn_Y.Tag:=89;
  CBtn_V.Tag:=86;
  CBtn_B.Tag:=66;
  //
  DoubleBuffered:=true;
  wsex :=GetWindowLong(Self.Handle,GWL_EXSTYLE);
  wsex := wsex OR WS_EX_NOACTIVATE;
  SetWindowLong(Self.Handle,GWL_EXSTYLE,wsex);

end;

procedure TKeyBoardForm.BtnNumberLockClick(Sender: TObject);
var Btn:TButton;
    scancode:BYTE;
begin
  Btn:=(Sender as TButton); //dynamic_cast<TButton*>(Sender);
  if(Btn=NIL) then exit;
  scancode := BYTE( MapVirtualKey(Btn.Tag, 0) );
  keybd_event(Btn.Tag, 0, KEYEVENTF_EXTENDEDKEY OR 0, 0);
  keybd_event(Btn.Tag, 0, KEYEVENTF_EXTENDEDKEY OR KEYEVENTF_KEYUP, 0);
  SetWindowPos(Self.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TKeyBoardForm.BtnNumberLock_UppcaseClick(Sender: TObject);
var Btn:TButton;
    scancode:BYTE;
begin
  Btn:=(Sender as TButton); //dynamic_cast<TButton*>(Sender);
  if(Btn=NIL) then exit;
  scancode := BYTE( MapVirtualKey(Btn.Tag, 0) );
  keybd_event( VK_SHIFT, 0, 0, 0 );
  keybd_event(Btn.Tag, 0, KEYEVENTF_EXTENDEDKEY OR 0, 0);
  keybd_event(Btn.Tag, 0, KEYEVENTF_EXTENDEDKEY OR KEYEVENTF_KEYUP, 0);
  keybd_event( VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
  SetWindowPos(Self.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);
end;
procedure TKeyBoardForm.CBtn_2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled:=true;
end;

procedure TKeyBoardForm.Timer1Timer(Sender: TObject);
var Btn:TTimer;
    scancode:BYTE;
begin
  Btn:=(Sender as TTimer); //dynamic_cast<TButton*>(Sender);
  if(Btn=NIL) then exit;
  scancode := BYTE( MapVirtualKey(Btn.Tag, 0) );
  keybd_event(Btn.Tag, scancode, KEYEVENTF_EXTENDEDKEY OR 0, 0);
  keybd_event(Btn.Tag, scancode, KEYEVENTF_EXTENDEDKEY OR KEYEVENTF_KEYUP, 0);
  SetWindowPos(Self.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);

end;
//

//
procedure TKeyBoardForm.CBtn_2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Timer1.Enabled:=false;
end;

procedure TKeyBoardForm.FormShow(Sender: TObject);
begin
  //
  self.Left:=Screen.Width-self.Width-10;
  self.Top:=Screen.Height-self.Height-10;
end;

end.
