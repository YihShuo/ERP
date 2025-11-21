unit MeetingRoomDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls;

type
  TMeetingRoomDetail = class(TForm)
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
    Panel2: TPanel;
    Button1: TButton;
    ADOQuery1UserID: TStringField;
    ADOQUpdate: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Button3: TButton;
    Label8: TLabel;
    Label9: TLabel;
    ADOQSearch: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeetingRoomDetail: TMeetingRoomDetail;
  Mode, Room: string;

implementation

uses
  MainMap1, Login1;

{$R *.dfm}

procedure TMeetingRoomDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMeetingRoomDetail.FormDestroy(Sender: TObject);
begin
  MeetingRoomDetail := Nil;
end;

procedure TMeetingRoomDetail.FormCreate(Sender: TObject);
begin
  Room := MainMap1.RoomName;
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MeetingRooms.UserID, BUSERS.UserName, MeetingRooms.UserDate, MeetingRooms.RoomDate, MeetingRooms.RoomTime, MeetingRooms.Topic, MeetingRooms.Participant FROM LIY_TYXUAN.dbo.MeetingRooms');
    SQL.Add('LEFT JOIN LIY_ERP.dbo.BUSERS ON BUSERS.UserID = MeetingRooms.UserID');
    SQL.Add('WHERE RoomName = ''' + Room + ''' AND CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) = ''' + FormatDateTime('yyyy/MM/dd', MainMap.MonthCalendar2.Date) + '''');
    SQL.Add('ORDER BY CONVERT(DateTime, MeetingRooms.RoomDate + '' '' + SUBSTRING(RoomTime, 1, 5))');
    Active := true;
  end;
  Mode := 'N';
end;

procedure TMeetingRoomDetail.FormShow(Sender: TObject);
begin
  Self.Caption := Room;
  DBGridEh1.SetFocus;
end;

procedure TMeetingRoomDetail.Button1Click(Sender: TObject);
begin
  if (MainMap1.UserID <> '') then
  begin
    DTP1.Enabled := true;
    ComboBox1.Enabled := true;
    ComboBox2.Enabled := true;
    ComboBox3.Enabled := true;
    ComboBox4.Enabled := true;
    Edit2.Enabled := true;
    Edit3.Enabled := true;

    Edit1.Text := MainMap1.RoomName;
    DTP1.Date := MainMap.MonthCalendar2.Date;
    ComboBox1.Text := '';
    ComboBox2.Text := '';
    ComboBox3.Text := '';
    ComboBox4.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := MainMap1.UserName + '(' + MainMap1.UserID + ')';
    Panel2.Visible := false;
    GroupBox1.Visible := true;
    Mode := 'B';
  end
  else begin
    if (MessageDlg('Please login first.', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      Mode := 'B';
      if (Login <> Nil) then
        Login.Close;

      Login := TLogin.Create(self);
      Login.Show;
    end;
  end;
end;
         
procedure TMeetingRoomDetail.Button2Click(Sender: TObject);
begin
  if (DTP1.Date < Date) then
  begin
    MessageDlg('Please select a valid date', mtinformation, [mbOk], 0);
    Exit;
  end;

  if (ComboBox1.Text <> '') AND (ComboBox2.Text <> '') AND (ComboBox3.Text <> '') AND (ComboBox4.Text <> '') then
  begin
    if (StrToInt(ComboBox1.Text)*100+StrToInt(ComboBox2.Text) >= StrToInt(ComboBox3.Text)*100+StrToInt(ComboBox4.Text)) then
    begin
      MessageDlg('Please select a valid time', mtinformation, [mbOk], 0);
      Exit;
    end;
  end
  else begin
    MessageDlg('Please select booking time', mtinformation, [mbOk], 0);
    Exit;
  end;

  with ADOQSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('  SELECT BUSERS.UserName, MeetingRooms.UserID, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(RoomTime, 1, 5) AS StartDate, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(RoomTime, 7, 5) AS EndDate FROM MeetingRooms');
    SQL.Add('  LEFT JOIN LIY_ERP.dbo.BUSERS ON BUSERS.UserID = MeetingRooms.UserID');
    SQL.Add('  WHERE RoomName = ''' + Edit1.Text + ''' AND RoomDate = ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + '''');
    SQL.Add(') AS MeetingRoom');
    SQL.Add('WHERE');
    SQL.Add('DATEADD(MI, 1, CONVERT(DATETIME, ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ' ' + ComboBox1.Text + ':' + ComboBox2.Text + ''')) BETWEEN DATEADD(MI, 1, CONVERT(DATETIME, StartDate)) AND DATEADD(MI, -1, CONVERT(DATETIME, EndDate)) OR');
    SQL.Add('DATEADD(MI, -1, CONVERT(DATETIME, ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ' ' + ComboBox3.Text + ':' + ComboBox4.Text + ''')) BETWEEN DATEADD(MI, 1, CONVERT(DATETIME, StartDate)) AND DATEADD(MI, -1, CONVERT(DATETIME, EndDate)) OR');
    SQL.Add('DATEADD(MI, 1, CONVERT(DATETIME, StartDate)) BETWEEN DATEADD(MI, 1, CONVERT(DATETIME, ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ' ' + ComboBox1.Text + ':' + ComboBox2.Text + ''')) AND DATEADD(MI, -1, CONVERT(DATETIME, ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ' ' + ComboBox3.Text + ':' + ComboBox4.Text + ''')) OR');
    SQL.Add('DATEADD(MI, -1, CONVERT(DATETIME, EndDate)) BETWEEN DATEADD(MI, 1, CONVERT(DATETIME, ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ' ' + ComboBox1.Text + ':' + ComboBox2.Text + ''')) AND DATEADD(MI, -1, CONVERT(DATETIME, ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ' ' + ComboBox3.Text + ':' + ComboBox4.Text + '''))');
    Active := true;
  end;

  if (ADOQSearch.RecordCount = 0) then
  begin
    with ADOQUpdate do
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO MeetingRooms');
      SQL.Add('VALUES (''' + Edit1.Text + ''', REPLACE(CONVERT(VARCHAR, GETDATE(), 120), ''-'', ''/''), ''' + MainMap1.UserID + ''', ''' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ''',');
      SQL.Add('''' + Edit2.Text + ''', ''' + ComboBox1.Text + ':' + ComboBox2.Text + '~' + ComboBox3.Text +':' + ComboBox4.Text + ''', ''' + Edit3.Text + ''')');
      ExecSQL;
      SQL.Clear;

      ShowMessage('Booking Successful');
    end;
  end
  else begin
    MessageDlg('Meeting Room : ' + Edit1.Text + #13#10 + 'Booking Time   : ' + FormatDateTime('yyyy-MM-dd', DTP1.Date) + ' ' + ComboBox1.Text + ':' + ComboBox2.Text + '~' + ComboBox3.Text +':' + ComboBox4.Text + #13#10 + 'Booking Result : Failed' + #13#10 + 'Failed Reason   : This meeting room has been booked by ' + ADOQSearch.FieldByName('UserName').AsString + '(' + ADOQSearch.FieldByName('UserID').AsString + ') between ' + ADOQSearch.FieldByName('StartDate').AsString + ' ~ ' + ADOQSearch.FieldByName('EndDate').AsString, mtinformation, [mbOk], 0);
    Exit;
  end;

  Panel2.Visible := true;
  GroupBox1.Visible := false; 
  ADOQuery1.Active := false;
  ADOQuery1.Active := true;
  Mode := 'N';
end;

procedure TMeetingRoomDetail.Button3Click(Sender: TObject);
begin
  Panel2.Visible := true;
  GroupBox1.Visible := false;
  Mode := 'N';
end;

procedure TMeetingRoomDetail.DTP1Change(Sender: TObject);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MeetingRooms.UserID, BUSERS.UserName, MeetingRooms.UserDate, MeetingRooms.RoomDate, MeetingRooms.RoomTime, MeetingRooms.Topic, MeetingRooms.Participant FROM LIY_TYXUAN.dbo.MeetingRooms');
    SQL.Add('LEFT JOIN LIY_ERP.dbo.BUSERS ON BUSERS.UserID = MeetingRooms.UserID');
    SQL.Add('WHERE RoomName = ''' + MainMap1.RoomName + ''' AND CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''');
    SQL.Add('ORDER BY CONVERT(DateTime, MeetingRooms.RoomDate + '' '' + SUBSTRING(RoomTime, 1, 5))');
    Active := true;
  end;
end;

end.
