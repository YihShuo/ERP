unit KeyBoard1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TouchPanel, D7GesturesHeader;

type
  TKeyBoard = class(TForm)
    Panel1: TPanel;
    TouchPanel1: TTouchPanel;
    TouchPanel2: TTouchPanel;
    TouchPanel3: TTouchPanel;
    TouchPanel4: TTouchPanel;
    TouchPanel5: TTouchPanel;
    TouchPanel6: TTouchPanel;
    TouchPanel7: TTouchPanel;
    TouchPanel8: TTouchPanel;
    TouchPanel9: TTouchPanel;
    TouchPanel10: TTouchPanel;
    TouchPanel11: TTouchPanel;
    TouchPanel12: TTouchPanel;
    TouchPanel13: TTouchPanel;
    TouchPanel14: TTouchPanel;
    TouchPanel15: TTouchPanel;
    TouchPanel16: TTouchPanel;
    TouchPanel17: TTouchPanel;
    TouchPanel18: TTouchPanel;
    TouchPanel19: TTouchPanel;
    TouchPanel20: TTouchPanel;
    TouchPanel21: TTouchPanel;
    TouchPanel22: TTouchPanel;
    TouchPanel23: TTouchPanel;
    TouchPanel24: TTouchPanel;
    TouchPanel25: TTouchPanel;
    TouchPanel26: TTouchPanel;
    TouchPanel27: TTouchPanel;
    TouchPanel28: TTouchPanel;
    TouchPanel29: TTouchPanel;
    TouchPanel30: TTouchPanel;
    TouchPanel31: TTouchPanel;
    TouchPanel32: TTouchPanel;
    TouchPanel33: TTouchPanel;
    TouchPanel34: TTouchPanel;
    TouchPanel35: TTouchPanel;
    TouchPanel36: TTouchPanel;
    TouchPanel37: TTouchPanel;
    TouchPanel38: TTouchPanel;
    TouchPanel39: TTouchPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure TouchPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TouchPanel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TouchPanel38MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TouchPanel39MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TouchPanel1Touch(Sender: TObject; X, Y: Integer);
  private
    TouchFlag: Boolean;
    { Private declarations }
  public
    TargetForm, Target: String;
    { Public declarations }
  end;

var
  KeyBoard: TKeyBoard;

implementation

uses  Languages1, OrderSearch1, DispatchList1;

{$R *.dfm}

procedure TKeyBoard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ANimateWindow(Handle, 150, AW_HIDE OR AW_VER_POSITIVE OR AW_SLIDE);
  if (TargetForm = 'OrderSearch') then
  begin
    OrderSearch.KeyBoardFlag := false;
    if (TEdit(OrderSearch.FindComponent(Target)).Text <> '') then
      OrderSearch.SearchOrder(TEdit(OrderSearch.FindComponent(Target)).Text);
  end
  else if (TargetForm = 'DispatchList') then
  begin
    DispatchList.KeyBoardFlag := false;
    if (TEdit(DispatchList.FindComponent(Target)).Text <> '') then
      DispatchList.SearchList(TEdit(DispatchList.FindComponent(Target)).Text);
  end;
  Action := caFree;
end;

procedure TKeyBoard.FormDestroy(Sender: TObject);
begin
  KeyBoard := Nil;
end;
             
procedure TKeyBoard.FormCreate(Sender: TObject);
var
  i, ButtonWidth: integer;
  TouchPanel: TTouchPanel;
begin
  TouchFlag := false;
  Width := Screen.Width;
  ButtonWidth := (Screen.Width-4) DIV 11 - 4;

  for i := 1 to 38 do
  begin
    TouchPanel := TTouchPanel(Self.FindComponent('TouchPanel' + IntToStr(i)));
    TouchPanel.Width := ButtonWidth;
    if (i <= 11) then
      TouchPanel.Left := 4*i + (i-1)*ButtonWidth
    else if (i >= 12) AND (i <= 21) then
      TouchPanel.Left := 4*(i-11) + (i-12)*ButtonWidth + ButtonWidth DIV 2
    else if (i >= 22) AND (i <= 30) then
      TouchPanel.Left := 4*(i-20) + (i-21)*ButtonWidth
    else if (i >= 31) AND (i <= 38) then
      TouchPanel.Left := 4*(i-29) + (i-30)*ButtonWidth + ButtonWidth DIV 2;

    TouchPanel.OnTouch := TouchPanel1Touch;
    TouchPanel.OnMouseDown := TouchPanel1MouseDown;
    if (i <= 37) then TouchPanel.OnMouseUp := TouchPanel1MouseUp;

    if (Languages.CanTouch) then
    begin
      EnableAllGestures(TouchPanel.Handle);
      RegisterTouchWindowFn(TouchPanel.Handle, 0);
    end;
  end;
end;

procedure TKeyBoard.FormShow(Sender: TObject);
begin
  Left := 0;
  Top := Screen.Height - KeyBoard.Height;
  ANimateWindow(Handle, 100, AW_VER_NEGATIVE OR AW_SLIDE);
end;

procedure TKeyBoard.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TKeyBoard.TouchPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  (Sender AS TTouchPanel).Color := $006FE2FF;
  (Sender AS TTouchPanel).Font.Color := clBlack;
end;

procedure TKeyBoard.TouchPanel1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  (Sender AS TTouchPanel).Color := $00333333;
  (Sender AS TTouchPanel).Font.Color := clWhite;

  if (TargetForm = 'OrderSearch') then
    TEdit(OrderSearch.FindComponent(Target)).Text := TEdit(OrderSearch.FindComponent(Target)).Text + (Sender AS TTouchPanel).Caption
  else if (TargetForm = 'DispatchList') then
    TEdit(DispatchList.FindComponent(Target)).Text := TEdit(DispatchList.FindComponent(Target)).Text + (Sender AS TTouchPanel).Caption;

  TouchFlag := false;
end;
   
procedure TKeyBoard.TouchPanel1Touch(Sender: TObject; X, Y: Integer);
begin
  if (TouchFlag = false) then
  begin
    TouchFlag := true;
    TouchPanel1MouseDown(Sender, mbLeft, [], X, Y);
  end;
end;

procedure TKeyBoard.TouchPanel38MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TouchPanel38.Color := $00333333;
  TouchPanel38.Font.Color := clWhite;

  if (TargetForm = 'OrderSearch') then
    TEdit(OrderSearch.FindComponent(Target)).Text := Copy(TEdit(OrderSearch.FindComponent(Target)).Text, 1, Length(TEdit(OrderSearch.FindComponent(Target)).Text)-1)
  else if (TargetForm = 'DispatchList') then
    TEdit(DispatchList.FindComponent(Target)).Text := Copy(TEdit(DispatchList.FindComponent(Target)).Text, 1, Length(TEdit(DispatchList.FindComponent(Target)).Text)-1);

  TouchFlag := false;
end;

procedure TKeyBoard.TouchPanel39MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Close;
end;

end.
