unit MyBooking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls;

type
  TMyBooking = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOQuery1UserName: TStringField;
    ADOQuery1RoomDate: TDateTimeField;
    ADOQuery1RoomTime: TStringField;
    ADOQuery1Topic: TStringField;
    ADOQuery1Participant: TStringField;
    ADOQuery1UserDate: TStringField;
    ADOQuery1RoomName: TStringField;
    Panel1: TPanel;
    Button4: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Button3: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    ADOQuery1UserID: TStringField;
    ADOQUpdate: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyBooking: TMyBooking;
  Mode: string;

implementation

uses
  MainMap1;

{$R *.dfm}

procedure TMyBooking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMyBooking.FormDestroy(Sender: TObject);
begin
  MyBooking := Nil;
end;

procedure TMyBooking.FormCreate(Sender: TObject);
begin
  MainMap1.Mode := 'N';
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MeetingRooms.RoomName, MeetingRooms.UserID, BUSERS.UserName, MeetingRooms.UserDate, MeetingRooms.RoomDate, MeetingRooms.RoomTime, MeetingRooms.Topic, MeetingRooms.Participant FROM LIY_TYXUAN.dbo.MeetingRooms');
    SQL.Add('LEFT JOIN LIY_ERP.dbo.BUSERS ON BUSERS.UserID = MeetingRooms.UserID');
    SQL.Add('WHERE MeetingRooms.UserID = ''' + MainMap1.UserID + ''' AND CONVERT(DateTime, MeetingRooms.RoomDate + '' '' + SUBSTRING(RoomTime, 1, 5)) >= GETDATE()');
    SQL.Add('ORDER BY CONVERT(DateTime, MeetingRooms.RoomDate + '' '' + SUBSTRING(RoomTime, 1, 5))');
    Active := true;
  end;
  Mode := 'N'
end;

procedure TMyBooking.Button4Click(Sender: TObject);
begin
  if (ADOQuery1.RecordCount > 0) then
  begin
    Mode := 'C';
    Panel1.Visible := false;
    GroupBox1.Visible := true;

    Edit1.Text := ADOQuery1.FieldByName('RoomName').AsString;
    Edit5.Text := ADOQuery1.FieldByName('RoomDate').AsString;
    Edit6.Text := ADOQuery1.FieldByName('RoomTime').AsString;
    Edit2.Text := ADOQuery1.FieldByName('Topic').AsString;
    Edit3.Text := ADOQuery1.FieldByName('Participant').AsString;
    Edit4.Text := ADOQuery1.FieldByName('UserName').AsString + '(' + ADOQuery1.FieldByName('UserID').AsString + ')';
  end
  else begin
    ShowMessage('No record of booking');
  end;
end;

procedure TMyBooking.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  if (Mode = 'C') then
  begin
    Edit1.Text := ADOQuery1.FieldByName('RoomName').AsString;
    Edit5.Text := ADOQuery1.FieldByName('RoomDate').AsString;
    Edit6.Text := ADOQuery1.FieldByName('RoomTime').AsString;
    Edit2.Text := ADOQuery1.FieldByName('Topic').AsString;
    Edit3.Text := ADOQuery1.FieldByName('Participant').AsString;
    Edit4.Text := ADOQuery1.FieldByName('UserName').AsString + '(' + ADOQuery1.FieldByName('UserID').AsString + ')';
  end;
end;
 
procedure TMyBooking.Button2Click(Sender: TObject);
begin
  if (MessageDlg('Are you sure to cancel this booking?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with ADOQUpdate do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM MeetingRooms');
      SQL.Add('WHERE UserID = ''' + ADOQuery1.FieldByName('UserID').AsString + '''');
      SQL.Add('AND Topic = ''' + ADOQuery1.FieldByName('Topic').AsString + '''');
      SQL.Add('AND RoomName = ''' + ADOQuery1.FieldByName('RoomName').AsString + '''');
      SQL.Add('AND RoomDate = ''' + ADOQuery1.FieldByName('RoomDate').AsString + '''');
      SQL.Add('AND RoomTime = ''' + ADOQuery1.FieldByName('RoomTime').AsString + '''');
      SQL.Add('AND UserDate = ''' + ADOQuery1.FieldByName('UserDate').AsString + '''');
      SQL.Add('AND Participant = ''' + ADOQuery1.FieldByName('Participant').AsString + '''');
      ExecSQL;
      SQL.Clear;
    end;

    ShowMessage('Successfully Cancelled');
  end;

  Panel1.Visible := true;
  GroupBox1.Visible := false;
  ADOQuery1.Active := false;
  ADOQuery1.Active := true;
  Mode := 'N';
end;

procedure TMyBooking.Button3Click(Sender: TObject);
begin
  Panel1.Visible := true;
  GroupBox1.Visible := false;
  Mode := 'N';
end;

end.
