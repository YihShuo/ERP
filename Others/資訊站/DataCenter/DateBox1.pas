unit DateBox1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, TouchPanel, StdCtrls, D7GesturesHeader;

type
  TDateBox = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    LB_TIPS: TLabel;
    TP_CLOSE: TTouchPanel;
    Panel2: TPanel;
    TP_OK: TTouchPanel;
    Panel4: TPanel;
    MC_START: TMonthCalendar;
    Panel5: TPanel;
    MC_END: TMonthCalendar;
    Panel7: TPanel;
    P_MASK1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    P_MASK2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel6: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TP_CLOSETouch(Sender: TObject; X, Y: Integer);
    procedure TP_CLOSEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_CLOSEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure TP_OKTouch(Sender: TObject; X, Y: Integer);
    procedure TP_OKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_OKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MC_STARTClick(Sender: TObject);
    procedure MC_ENDClick(Sender: TObject);
  private
    Flag: Boolean;
    procedure SetLanguage;
    procedure SetTouchEvent;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateBox: TDateBox;

implementation

uses Languages1, OrderSchedule1;

{$R *.dfm}

procedure TDateBox.SetLanguage;
begin
  if (Languages.Language = 'CN') then
  begin
    LB_TIPS.Caption := ' 請選擇排程日期';
    TP_OK.Caption := '確定';
    P_MASK1.Visible := false;
    P_MASK2.Visible := false;
  end
  else if (Languages.Language = 'VN') then
  begin
    LB_TIPS.Caption := ' VUI LONG CHON NGAY';
    TP_OK.Caption := 'XAC DINH';
    TP_OK.Font.Size := 20;
  end;
end;

procedure TDateBox.FormCreate(Sender: TObject);
begin
  Left := (Screen.Width - Width) DIV 2;
  Top := (Screen.Height - Height) DIV 2;
  Flag := false;

  MC_START.Date := OrderSchedule.StartDate;
  MC_END.Date := OrderSchedule.EndDate;
  MC_STARTClick(Nil);
  MC_ENDClick(Nil);

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TDateBox.SetTouchEvent;
begin
  EnableAllGestures(TP_CLOSE.Handle);
  RegisterTouchWindowFn(TP_CLOSE.Handle, 0);

  EnableAllGestures(TP_OK.Handle);
  RegisterTouchWindowFn(TP_OK.Handle, 0);
end;

procedure TDateBox.FormShow(Sender: TObject);
begin
  //ANimateWindow(Handle, 100, AW_BLEND);
end;
      
procedure TDateBox.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TDateBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  if (Flag) then
  begin
    if (OrderSchedule.Mode = 'ORDER') then OrderSchedule.SearchOrder(OrderSchedule.LastLeanID)
    else if (OrderSchedule.Mode = 'LIST') then OrderSchedule.SearchList(OrderSchedule.LastLeanID);
  end;
  Action := caFree;
end;

procedure TDateBox.FormDestroy(Sender: TObject);
begin
  DateBox := Nil;
end;

procedure TDateBox.TP_CLOSETouch(Sender: TObject; X, Y: Integer);
begin
   TP_CLOSEMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TDateBox.TP_CLOSEMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := $000096FF;
end;

procedure TDateBox.TP_CLOSEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TP_CLOSE.Font.Color := clWhite;
  Close;
end;

procedure TDateBox.TP_OKTouch(Sender: TObject; X, Y: Integer);
begin
  TP_OKMouseDown(Sender, mbLeft, [], X, Y);
end;

procedure TDateBox.TP_OKMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TP_OK.Font.Color := clBlack;
  TP_OK.Color := $006FE2FF;
end;

procedure TDateBox.TP_OKMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TP_OK.Font.Color := clWhite;
  TP_OK.Color := $00323330;

  OrderSchedule.TP_DATE.Caption := Panel6.Caption + ' - ' + Panel7.Caption;
  OrderSchedule.StartDate := MC_START.Date;
  OrderSchedule.EndDate := MC_END.Date;
  if (OrderSchedule.LastLeanID <> '') then Flag := true;

  Close;
end;

procedure TDateBox.MC_STARTClick(Sender: TObject);
begin
  Panel6.Caption := FormatDateTime('yyyy/MM/dd', MC_START.Date);
  if (MC_START.Date > MC_END.Date) then
  begin
    MC_END.Date := MC_START.Date;
    Panel7.Caption := FormatDateTime('yyyy/MM/dd', MC_END.Date);
  end;
  MC_END.MinDate := MC_START.Date - 1;
end;

procedure TDateBox.MC_ENDClick(Sender: TObject);
begin
  if (MC_END.Date < MC_START.Date) then
  begin
    MC_END.Date := MC_START.Date;
  end;
  Panel7.Caption := FormatDateTime('yyyy/MM/dd', MC_END.Date);
end;

end.
