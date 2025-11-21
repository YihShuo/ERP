unit ScanQRCode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids, DB, ADODB, TouchPanel,
  D7GesturesHeader, Mask, DBCtrls;

type
  TScanQRCode = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    IMG_RETURNP: TImage;
    IMG_RETURN: TImage;
    ScrollBox1: TScrollBox;
    IMG_HOMEP: TImage;
    IMG_HOME: TImage;
    IMG_MENUP: TImage;
    IMG_MENU: TImage;
    ED_QRCODE: TEdit;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    LB_PART: TLabel;
    Label3: TLabel;
    LB_SIZE: TLabel;
    Label4: TLabel;
    LB_QTY: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    LB_CYCLE: TLabel;
    IMG_SCANBG: TImage;
    Panel4: TPanel;
    LB_COMPLETE: TLabel;
    ADOQUpdate: TADOQuery;
    TP_MENU: TTouchPanel;
    TP_RETURN: TTouchPanel;
    TP_HOME: TTouchPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ED_QRCODEKeyPress(Sender: TObject; var Key: Char);
    procedure TP_MENUTouch(Sender: TObject; X, Y: Integer);
    procedure TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_RETURNTouch(Sender: TObject; X, Y: Integer);
    procedure TP_RETURNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMETouch(Sender: TObject; X, Y: Integer);
    procedure TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_MENUMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_RETURNMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TP_HOMEMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    UPLOADING: string;
    procedure UpdateData;
    procedure UpdateListData;
    procedure SetLanguage;
    procedure SetTouchEvent;
    procedure ClickMessage(var Msg: tagMSG; var Handled: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanQRCode: TScanQRCode;

implementation

uses Languages1, Home1, LeftMenu1;

{$R *.dfm}

procedure TScanQRCode.ClickMessage(var Msg: tagMSG; var Handled: Boolean);
begin
  ED_QRCODE.SetFocus;
end;

procedure TScanQRCode.SetLanguage;
begin
  if (Languages.Language = 'CN') then
  begin
    Panel4.Caption := '請掃描QR標籤';
    UPLOADING := '資料上傳中...';
  end
  else if (Languages.Language = 'VN') then
  begin
    Panel4.Caption := 'VUI LONG QUET MA QR';
    UPLOADING := 'DANG TAI DU LIEU...';
  end;
end;

procedure TScanQRCode.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  ED_QRCODE.Top := -15;
  ED_QRCODE.Text := '';
  ED_QRCODE.PasswordChar := '*';

  TP_RETURN.Left := Screen.Width - TP_RETURN.Width - 5;
  IMG_RETURN.Transparent := true;
  IMG_RETURN.Picture.Bitmap.TransparentColor := clBlack;
  IMG_RETURNP.Transparent := true;
  IMG_RETURNP.Picture.Bitmap.TransparentColor := clBlack;

  IMG_MENU.Transparent := true;
  IMG_MENU.Picture.Bitmap.TransparentColor := clBlack;
  IMG_MENUP.Transparent := true;
  IMG_MENUP.Picture.Bitmap.TransparentColor := clBlack;

  TP_HOME.Left := (Screen.Width - TP_HOME.Width) DIV 2;
  IMG_HOME.Transparent := true;
  IMG_HOME.Picture.Bitmap.TransparentColor := clBlack;
  IMG_HOMEP.Transparent := true;
  IMG_HOMEP.Picture.Bitmap.TransparentColor := clBlack;

  IMG_SCANBG.Top := (Screen.Height - Panel1.Height - Panel2.Height - IMG_SCANBG.Height) DIV 2;
  IMG_SCANBG.Left := (Screen.Width - IMG_SCANBG.Width) DIV 2;

  Panel11.Top := (Screen.Height - Panel1.Height - Panel2.Height - Panel11.Height) DIV 2 - 15;
  Panel11.Left := (Screen.Width - Panel11.Width) DIV 2;
  Panel4.Top := (Screen.Height - Panel1.Height - Panel2.Height - Panel4.Height) DIV 2 - 15;
  Panel4.Left := (Screen.Width - Panel4.Width) DIV 2;

  LB_CYCLE.Caption := '';
  LB_PART.Caption := '';
  LB_SIZE.Caption := '';
  LB_QTY.Caption := '';

  if (Languages.CanTouch) then SetTouchEvent;

  SetLanguage;
end;

procedure TScanQRCode.SetTouchEvent;
begin
  EnableAllGestures(TP_MENU.Handle);
  RegisterTouchWindowFn(TP_MENU.Handle, 0);

  EnableAllGestures(TP_RETURN.Handle);
  RegisterTouchWindowFn(TP_RETURN.Handle, 0);

  EnableAllGestures(TP_HOME.Handle);
  RegisterTouchWindowFn(TP_HOME.Handle, 0);
end;
        
procedure TScanQRCode.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
  ED_QRCODE.SetFocus;
end;
    
procedure TScanQRCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  Action := caFree;
end;

procedure TScanQRCode.FormDestroy(Sender: TObject);
begin
  ScanQRCode := Nil;
end;

{ RETURN BUTTON }

procedure TScanQRCode.TP_RETURNTouch(Sender: TObject; X, Y: Integer);
begin
  TP_RETURNMouseDown(Sender, mbLeft, [], X, Y);
end;
      
procedure TScanQRCode.TP_RETURNMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin                      
  IMG_RETURNP.Visible := true;
  IMG_RETURN.Visible := false;
end;

procedure TScanQRCode.TP_RETURNMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_RETURN.Visible := true;
  IMG_RETURNP.Visible := false;
  Close;
end;

{ HOME BUTTON }

procedure TScanQRCode.TP_HOMETouch(Sender: TObject; X, Y: Integer);
begin
  TP_HOMEMouseDown(Sender, mbLeft, [], X, Y);
end;
       
procedure TScanQRCode.TP_HOMEMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOMEP.Visible := true;
  IMG_HOME.Visible := false;
end;

procedure TScanQRCode.TP_HOMEMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_HOME.Visible := true;
  IMG_HOMEP.Visible := false;
  Close;
end;

{ MENU BUTTON }

procedure TScanQRCode.TP_MENUTouch(Sender: TObject; X, Y: Integer);
begin
  TP_MENUMouseDown(Sender, mbLeft, [], X, Y);
end;
     
procedure TScanQRCode.TP_MENUMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENUP.Visible := true;
  IMG_MENU.Visible := false;
end;

procedure TScanQRCode.TP_MENUMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IMG_MENU.Visible := true;
  IMG_MENUP.Visible := false;

  LeftMenu := TLeftMenu.Create(Self);
  LeftMenu.Show;
end;

{ SCAN QRCODE }

procedure TScanQRCode.ED_QRCODEKeyPress(Sender: TObject; var Key: Char);
var
  Target: string;
begin
  if (Key = #13) then
  begin
    Target := ED_QRCODE.Text;
    if (Length(Target) - Length(StringReplace(Target, ';', '', [rfReplaceAll])) >= 3) then UpdateData
    else UpdateListData;
  end;
end;
     
procedure TScanQRCode.UpdateData;
var
  DataList: TStringList;
  DLNO, ZLBH, CLBH, SIZE: string;
begin
  Panel4.Caption := UPLOADING;
  Panel4.Visible := true;
  Panel11.Visible := false;

  DataList := TStringList.Create;
  DataList.Delimiter := ';';
  DataList.DelimitedText := StringReplace(ED_QRCODE.Text, ' ', '@', [rfReplaceAll]);

  DLNO := DataList[0];
  ZLBH := DataList[1];
  LB_CYCLE.Caption := DataList[2];
  LB_PART.Caption := DataList[3];
  LB_SIZE.Caption := StringReplace(DataList[4], '@', '', [rfReplaceAll]);
  SIZE := StringReplace(DataList[4], '@', ' ', [rfReplaceAll]);
  CLBH := DataList[5];
  LB_QTY.Caption := DataList[6];

  with ADOQUpdate do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CutDispatchSS SET ScanQty = Qty');
    SQL.Add('WHERE DLNO = ''' + DLNO + ''' AND ZLBH = ''' + ZLBH + ''' AND DDBH = ''' + LB_CYCLE.Caption + ''' AND BWBH = ''' + LB_PART.Caption + ''' AND SIZE = ''' + SIZE + ''' AND CLBH = ''' + CLBH + ''';');
    SQL.Add('UPDATE CutDispatchS SET okCutNum = (');
    SQL.Add('  SELECT FLOOR(SUM(CutDispatchSS.ScanQty*1.0)/CutDispatchS.Qty*CutDispatchS.CutNum) AS ScanCutNum FROM CutDispatchS');
    SQL.Add('  LEFT JOIN CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE AND CutDispatchSS.CLBH = CutDispatchS.CLBH');
    SQL.Add('  WHERE CutDispatchS.DLNO = ''' + DLNO + ''' AND CutDispatchS.ZLBH = ''' + ZLBH + ''' AND CutDispatchS.BWBH = ''' + LB_PART.Caption + ''' AND CutDispatchS.SIZE = ''' + LB_SIZE.Caption + ''' AND CutDispatchS.CLBH = ''' + CLBH + '''');
    SQL.Add('  GROUP BY CutDispatchS.Qty, CutDispatchS.CutNum');
    SQL.Add('), ScanUser = ''DATACENTER'', ScanDate = GetDate()');
    SQL.Add('WHERE DLNO = ''' + DLNO + ''' AND ZLBH = ''' + ZLBH + ''' AND BWBH = ''' + LB_PART.Caption + ''' AND SIZE = ''' + SIZE + ''' AND CLBH = ''' + CLBH + ''';');
    ExecSQL;
  end;

  ED_QRCODE.Text := '';
  Panel11.Visible := true;
  Panel4.Visible := false;
  DataList.Free;
end;

procedure TScanQRCode.UpdateListData;
var
  DataList: TStringList;
  DLNO: string;
begin
  Panel4.Caption := UPLOADING;
  Panel4.Visible := true;
  Panel11.Visible := false;

  DataList := TStringList.Create;
  DataList.Delimiter := ';';
  DataList.DelimitedText := StringReplace(ED_QRCODE.Text, ' ', '@', [rfReplaceAll]);;

  DLNO := DataList[0];

  LB_CYCLE.Caption := DLNO;
  LB_PART.Caption := '--';
  LB_SIZE.Caption := StringReplace(DataList[1], '@', '', [rfReplaceAll]);
  LB_QTY.Caption := DataList[2];

  with ADOQUpdate do
  begin
    SQL.Clear;
    SQL.Add('UPDATE CutDispatchSS SET ScanQty = Qty WHERE DLNO = ''' + DLNO + ''';');
    SQL.Add('UPDATE CutDispatchS SET okCutNum = CutNum, ScanUser = ''DATACENTER'', ScanDate = GetDate() WHERE DLNO = ''' + DLNO + ''';');
    ExecSQL;
  end;

  ED_QRCODE.Text := '';
  Panel11.Visible := true;
  Panel4.Visible := false;
  DataList.Free;
end;

end.
