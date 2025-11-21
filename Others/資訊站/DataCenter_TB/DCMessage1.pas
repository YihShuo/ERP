unit DCMessage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TouchPanel, D7GesturesHeader;

type
  TDCMessage = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    LB_CONTENT: TLabel;
    Panel2: TPanel;
    TP_OK: TTouchPanel;
    TP_CANCEL: TTouchPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure TP_OKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_OKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_OKTouch(Sender: TObject; X, Y: Integer);
    procedure TP_CANCELTouch(Sender: TObject; X, Y: Integer);
    procedure TP_CANCELMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CANCELMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure SetLanguage;
    procedure SetTouchEvent;
    { Private declarations }
  public
    Source: String;
    procedure SetMessage(Content: string);
    { Public declarations }
  end;

var
  DCMessage: TDCMessage;

implementation

uses Languages1, GenerateQRcode1, LeanSelection1, OrderSchedule1;

{$R *.dfm}

procedure TDCMessage.SetLanguage;
begin
  if (Languages.Language = 'CN') then
  begin
    TP_OK.Caption := '½T©w';
    TP_CANCEL.Caption := '¨ú®ø';
  end
  else if (Languages.Language = 'VN') then
  begin
    TP_OK.Caption := 'XAC DINH';
    TP_OK.Font.Size := 16;
    TP_CANCEL.Caption := 'HUY BO';
    TP_CANCEL.Font.Size := 16;
  end;
end;

procedure TDCMessage.FormCreate(Sender: TObject);
begin
  Left := (Screen.Width - Width) DIV 2;
  Top := (Screen.Height - Height) DIV 2;

  TP_OK.Left := Panel5.Width DIV 2 - (TP_OK.Width + 30);
  TP_CANCEL.Left := Panel5.Width DIV 2 + 30;

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TDCMessage.SetTouchEvent;
begin
  EnableAllGestures(TP_OK.Handle);
  RegisterTouchWindowFn(TP_OK.Handle, 0);

  EnableAllGestures(TP_CANCEL.Handle);
  RegisterTouchWindowFn(TP_CANCEL.Handle, 0);
end;

procedure TDCMessage.SetMessage(Content: string);
begin
  LB_CONTENT.Caption := Content;
end;

procedure TDCMessage.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 50, AW_BLEND);
end;

procedure TDCMessage.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TDCMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Handle, 50, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TDCMessage.FormDestroy(Sender: TObject);
begin
  DCMessage := Nil;
end;

{ OK BUTTON }

procedure TDCMessage.TP_OKTouch(Sender: TObject; X, Y: Integer);
begin
  TP_OKMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TDCMessage.TP_OKMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TP_OK.Font.Color := clBlack;
  TP_OK.Color := $006FE2FF;
end;

procedure TDCMessage.TP_OKMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TP_OK.Font.Color := clWhite;
  TP_OK.Color := $00323330;
  if (Source = 'GenerateQRcode') then
  begin
    LeanSelection := TLeanSelection.Create(GenerateQRcode);
    LeanSelection.Show;
  end
  else if (Source = 'OrderSchedule') then
  begin
    OrderSchedule.PrintQRCode;
  end;
  Close;
end;

{ CANCEL BUTTON }

procedure TDCMessage.TP_CANCELTouch(Sender: TObject; X, Y: Integer);
begin
  TP_CANCELMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TDCMessage.TP_CANCELMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CANCEL.Font.Color := clBlack;
  TP_CANCEL.Color := $006FE2FF;
end;

procedure TDCMessage.TP_CANCELMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TP_CANCEL.Font.Color := clWhite;
  TP_CANCEL.Color := $00323330;
  Close;
end;

end.
