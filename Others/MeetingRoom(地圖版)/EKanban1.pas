unit EKanban1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, jpeg, Grids, AppEvnts, Menus;

type
  TEKanban = class(TForm)
    ADOQuery1: TADOQuery;
    Timer1: TTimer;
    Panel1: TPanel;
    Label_Time: TLabel;
    Image1: TImage;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    Exit1: TMenuItem;
    ADOConnection1: TADOConnection;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MinimizeForm(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Exit1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EKanban: TEKanban;

implementation

uses MainMap1;

{$R *.dfm}

procedure TEKanban.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TEKanban.FormDestroy(Sender: TObject);
begin
  EKanban := Nil;
end;

procedure TEKanban.FormCreate(Sender: TObject);
var
  Row: integer;
begin
  WindowState := wsMaximized;
  StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1));
  Label_Time.Left := 5;
  Label_Time.Top := Screen.Height - Label_Time.Height - 5;
  Label_Time.Caption := FormatDateTime('HH:mm', Time);
  Image1.Left := Screen.Width - Image1.Width - 5;
  Image1.Top := 10;

  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MeetingRooms.RoomTime, MeetingRooms.Topic,');
    SQL.Add('CASE WHEN BUsers.EngName IS NOT NULL THEN BUsers.EngName ELSE BUsers.UserName END AS UserName FROM MeetingRooms');
    SQL.Add('LEFT JOIN [LIY_ERP].[dbo].[BUsers] ON BUsers.UserID = MeetingRooms.UserID');
    SQL.Add('WHERE RoomName = ''' + MainMap.Room[0] + ''' AND RoomDate = CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('ORDER BY MeetingRooms.RoomTime');
    Active := true;

    if (RecordCount > 0) then
    begin
      StringGrid1.RowCount := RecordCount * 2;
      StringGrid1.Height := 120 * RecordCount; 
      StringGrid1.Width := 500;
      StringGrid1.ColWidths[0] := 500;
    end
    else begin
      StringGrid1.RowCount := 1;
      StringGrid1.Height := 70;
      StringGrid1.RowHeights[0] := 70;
      StringGrid1.Width := 850;
      StringGrid1.ColWidths[0] := 850;
      StringGrid1.Cells[0, 0] := 'No meetings scheduled for today';
    end;
    StringGrid1.Top := (Screen.Height - StringGrid1.Height) DIV 2;  
    StringGrid1.Left := (Screen.Width - StringGrid1.Width) DIV 2;

    Row := 0;
    while not Eof do
    begin
      StringGrid1.Cells[0, Row*2] := StringReplace(FieldByName('RoomTime').AsString, '~', ' - ', [rfReplaceAll]);
      StringGrid1.RowHeights[Row*2] := 60;
      StringGrid1.Cells[0, Row*2+1] := StringReplace(FieldByName('UserName').AsString, '~', ' - ', [rfReplaceAll]);
      StringGrid1.RowHeights[Row*2+1] := 60;
      Inc(Row);
      Next;
    end;
  end;
end;

procedure TEKanban.Timer1Timer(Sender: TObject);
begin
  Label_Time.Caption := FormatDateTime('HH:mm', Time);
end;

procedure TEKanban.MinimizeForm(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TEKanban.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    if (ARow MOD 2 = 1) then
      Canvas.Font.Size := 28
    else
      Canvas.Font.Size := 40;

    Canvas.FillRect(Rect);
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_SINGLELINE);
  end;
end;

procedure TEKanban.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TEKanban.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  MinimizeForm(nil);
end;

end.
