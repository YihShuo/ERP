unit LeftMenu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TouchPanel, D7GesturesHeader, TouchLabel;

type
  TLeftMenu = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    IMG_MENU: TImage;
    IMG_MENUP: TImage;
    TP_MENU: TTouchPanel;
    LB_MENU: TTouchLabel;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure TP_MENUTouch(Sender: TObject; X, Y: Integer);
    procedure TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure SetLanguage;
    procedure SetTouchEvent;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LeftMenu: TLeftMenu;

implementation

uses Languages1;

{$R *.dfm}

procedure TLeftMenu.SetLanguage;
begin
  if (Languages.Language = 'CN') then
  begin
    LB_MENU.Caption := ' ¿ï³æ';
  end
  else if (Languages.Language = 'VN') then
  begin
    LB_MENU.Caption := ' CHON DON';
    LB_MENU.Font.Size := 24;
  end;
end;

procedure TLeftMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ANimateWindow(Handle, 150, AW_HIDE OR AW_HOR_NEGATIVE OR AW_SLIDE);
  Action := caFree;
end;

procedure TLeftMenu.FormDestroy(Sender: TObject);
begin
  Menu := Nil;
end;
    
procedure TLeftMenu.FormCreate(Sender: TObject);
begin
  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TLeftMenu.SetTouchEvent;
begin
  EnableAllGestures(TP_MENU.Handle);
  RegisterTouchWindowFn(TP_MENU.Handle, 0);
end;

procedure TLeftMenu.FormShow(Sender: TObject);
begin
  Left := 0;
  Top := 0;
  Height := Screen.Height;
  ANimateWindow(Handle, 100, AW_HOR_POSITIVE OR AW_SLIDE);
end;

{ MENU BUTTON }

procedure TLeftMenu.TP_MENUTouch(Sender: TObject; X, Y: Integer);
begin
  TP_MENUMouseDown(Sender, mbLeft, [], X, Y);
end;
        
procedure TLeftMenu.TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENUP.Visible := true;
  IMG_MENU.Visible := false;
  LB_MENU.Font.Color := $000096FF;
end;

procedure TLeftMenu.TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENU.Visible := true;
  IMG_MENUP.Visible := false;
  Close;
end;

procedure TLeftMenu.FormDeactivate(Sender: TObject);
begin
  Close;
end;

end.
