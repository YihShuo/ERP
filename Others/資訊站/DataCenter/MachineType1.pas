unit MachineType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, TouchPanel, D7GesturesHeader;

type
  TMachineType = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    LB_MC1: TLabel;
    LB_AC1: TLabel;
    IMG_MC: TImage;
    IMG_LC: TImage;
    IMG_AC: TImage;
    LB_LC1: TLabel;
    LB_MC2: TLabel;
    LB_AC2: TLabel;
    LB_LC2: TLabel;
    IMG_MCP: TImage;
    IMG_ACP: TImage;
    IMG_LCP: TImage;
    LB_TIPS: TLabel;
    TP_PREVIOUS: TTouchPanel;
    TP_MC: TTouchPanel;
    TP_AC: TTouchPanel;
    TP_LC: TTouchPanel;
    TP_CLOSE: TTouchPanel;
    TP_OK: TTouchPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TP_CLOSETouch(Sender: TObject; X, Y: Integer);
    procedure TP_CLOSEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PREVIOUSTouch(Sender: TObject; X, Y: Integer);
    procedure TP_PREVIOUSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_OKTouch(Sender: TObject; X, Y: Integer);
    procedure TP_OKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MCTouch(Sender: TObject; X, Y: Integer);
    procedure TP_MCMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ACTouch(Sender: TObject; X, Y: Integer);
    procedure TP_ACMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LCTouch(Sender: TObject; X, Y: Integer);
    procedure TP_LCMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_OKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CLOSEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_PREVIOUSMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MCMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_ACMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_LCMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
  private
    procedure SetLanguage;
    procedure SetTouchEvent;
    { Private declarations }
  public          
    NextFlag: Boolean;
    { Public declarations }
  end;

var
  MachineType: TMachineType;

implementation

uses Languages1, GenerateQRCode1, LeanSelection1, MachineSelection1;

{$R *.dfm}

procedure TMachineType.SetLanguage;
begin
  if (Languages.Language = 'CN') then
  begin
    LB_TIPS.Caption := ' 請選擇裁斷方式';
    TP_OK.Caption := '下一步';
    TP_PREVIOUS.Caption := '〈 上一步  ';
    TP_PREVIOUS.Width := Languages.GetTextWidth(TP_PREVIOUS.Caption, TP_PREVIOUS.Font);
    LB_MC1.Caption := '線上裁斷機';
    LB_MC2.Visible := false;
    LB_AC1.Caption := '自動裁斷機';
    LB_AC2.Visible := false;
    LB_LC1.Caption := 'LECTRA 裁斷機';
    LB_LC2.Visible := false;
  end
  else if (Languages.Language = 'VN') then
  begin
    LB_TIPS.Caption := ' VUI LONG CHON LOAI MAY';
    TP_OK.Caption := 'TRANG SAU';
    TP_OK.Font.Size := 19;
    TP_PREVIOUS.Caption := '〈 TRANG TRUOC  ';
    TP_PREVIOUS.Width := Languages.GetTextWidth(TP_PREVIOUS.Caption, TP_PREVIOUS.Font);
    LB_MC1.Caption := 'MAY CHAT';
    LB_MC2.Visible := false;
    LB_AC1.Caption := 'MAY CHAT';
    LB_AC2.Caption := 'TU DONG';
    LB_LC1.Caption := 'MAY CHAT';
    LB_LC2.Caption := 'LECTRA';
  end;
end;

procedure TMachineType.FormCreate(Sender: TObject);
begin
  NextFlag := false;

  Left := (Screen.Width - Width) DIV 2;
  Top := (Screen.Height - Height) DIV 2;
  TP_OK.Left := (Width - TP_OK.Width - 6) DIV 2;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TMachineType.SetTouchEvent;
begin
  EnableAllGestures(TP_CLOSE.Handle);
  RegisterTouchWindowFn(TP_CLOSE.Handle, 0);

  EnableAllGestures(TP_OK.Handle);
  RegisterTouchWindowFn(TP_OK.Handle, 0);

  EnableAllGestures(TP_PREVIOUS.Handle);
  RegisterTouchWindowFn(TP_PREVIOUS.Handle, 0);

  EnableAllGestures(TP_MC.Handle);
  RegisterTouchWindowFn(TP_MC.Handle, 0);

  EnableAllGestures(TP_AC.Handle);
  RegisterTouchWindowFn(TP_AC.Handle, 0);

  EnableAllGestures(TP_LC.Handle);
  RegisterTouchWindowFn(TP_LC.Handle, 0);
end;
         
procedure TMachineType.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 50, AW_BLEND);
end;

procedure TMachineType.FormDeactivate(Sender: TObject);
begin
  if (NextFlag = false) then LeanSelection.Close;
end;

procedure TMachineType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 50, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TMachineType.FormDestroy(Sender: TObject);
begin
  MachineType := Nil;
end;

{ CLOSE BUTTON }

procedure TMachineType.TP_CLOSETouch(Sender: TObject; X, Y: Integer);
begin
  TP_CLOSEMouseDown(Nil, mbLeft, [], 0, 0);
end;
 
procedure TMachineType.TP_CLOSEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := $000096FF;
end;

procedure TMachineType.TP_CLOSEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := clWhite;
  NextFlag := true;
  LeanSelection.Close;
end;

{ NEXT BUTTON }

procedure TMachineType.TP_OKTouch(Sender: TObject; X, Y: Integer);
begin
  TP_OKMouseDown(Sender, mbLeft, [], X, Y);
end;
         
procedure TMachineType.TP_OKMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_OK.Font.Color := clBlack;
  TP_OK.Color := $006FE2FF;
end;

procedure TMachineType.TP_OKMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TP_OK.Font.Color := clWhite;
  TP_OK.Color := $00323330;
  NextFlag := true;

  MachineSelection := TMachineSelection.Create(Self);
  MachineSelection.SetMachine(GenerateQRCode.LeanID);
  MachineSelection.Show;
end;

{ PREVIOUS BUTTON }

procedure TMachineType.TP_PREVIOUSTouch(Sender: TObject; X, Y: Integer);
begin
  TP_PREVIOUSMouseDown(Sender, mbLeft, [], X, Y);
end;
   
procedure TMachineType.TP_PREVIOUSMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_PREVIOUS.Font.Color := $006FE2FF;
end;

procedure TMachineType.TP_PREVIOUSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_PREVIOUS.Font.Color := clWhite;
  NextFlag := true;
  LeanSelection.NextFlag := false;
  Close;
end;

{ MC Machine }

procedure TMachineType.TP_MCTouch(Sender: TObject; X, Y: Integer);
begin
  TP_MCMouseDown(Sender, mbLeft, [], X, Y);
end;
          
procedure TMachineType.TP_MCMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_MCP.Visible := true;
  IMG_MC.Visible := false;
  LB_MC1.Font.Color := $0000C0FE;
  LB_MC2.Font.Color := $0000C0FE;

  IMG_AC.Visible := true;
  IMG_ACP.Visible := false;
  LB_AC1.Font.Color := clBlack;
  LB_AC2.Font.Color := clBlack;

  IMG_LC.Visible := true;
  IMG_LCP.Visible := false;
  LB_LC1.Font.Color := clBlack;
  LB_LC2.Font.Color := clBlack;
end;

procedure TMachineType.TP_MCMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  GenerateQRCode.DLLB := 'MC';
  TP_OK.Visible := true;
end;

procedure TMachineType.TP_ACTouch(Sender: TObject; X, Y: Integer);
begin
  TP_ACMouseDown(Sender, mbLeft, [], X, Y);
end;

{ AC Machine }

procedure TMachineType.TP_ACMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_ACP.Visible := true;
  IMG_AC.Visible := false;
  LB_AC1.Font.Color := $0000C0FE;
  LB_AC2.Font.Color := $0000C0FE;

  IMG_MC.Visible := true;
  IMG_MCP.Visible := false;
  LB_MC1.Font.Color := clBlack;
  LB_MC2.Font.Color := clBlack;

  IMG_LC.Visible := true;
  IMG_LCP.Visible := false;
  LB_LC1.Font.Color := clBlack;
  LB_LC2.Font.Color := clBlack;
end;

procedure TMachineType.TP_ACMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  GenerateQRCode.DLLB := 'AC';
  TP_OK.Visible := true;
end;

{ Lectra Machine }

procedure TMachineType.TP_LCTouch(Sender: TObject; X, Y: Integer);
begin
  TP_LCMouseDown(Sender, mbLeft, [], X, Y);
end;
         
procedure TMachineType.TP_LCMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_LCP.Visible := true;
  IMG_LC.Visible := false;
  LB_LC1.Font.Color := $0000C0FE;
  LB_LC2.Font.Color := $0000C0FE;

  IMG_MC.Visible := true;
  IMG_MCP.Visible := false;
  LB_MC1.Font.Color := clBlack;
  LB_MC2.Font.Color := clBlack;

  IMG_AC.Visible := true;
  IMG_ACP.Visible := false;
  LB_AC1.Font.Color := clBlack;
  LB_AC2.Font.Color := clBlack;
end;

procedure TMachineType.TP_LCMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  GenerateQRCode.DLLB := 'Lectra';
  TP_OK.Visible := true;
end;

end.
