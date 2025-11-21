unit Login1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls;

type
  TLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    Label4: TLabel;
    Button2: TButton;
    procedure Edit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses
  MainMap1, MeetingRoomDetail1, DeviceMeeting1;
{$R *.dfm}

procedure TLogin.FormCreate(Sender: TObject);
begin
  if (MainMap1.UserID <> '') then
  begin
    Edit1.Enabled := false;
    Edit1.Text := MainMap1.UserID;
    Edit2.Text := MainMap1.UserName;
    Label3.Visible := false;
    Edit3.Visible := false;
    Button2.Visible := true;
  end;
end;

procedure TLogin.Edit1Exit(Sender: TObject);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT USERNAME FROM LIY_ERP.dbo.BUSERS WHERE USERID = ''' + Edit1.Text + '''');
    Active := true;

    if (RecordCount > 0) then
      Edit2.Text := FieldByName('USERNAME').AsString
    else
      Label4.Caption := 'User does not exist';
  end;

  if (Label4.Caption = 'User does not exist') then
    Edit1.SetFocus;
end;

procedure TLogin.Button1Click(Sender: TObject);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    sql.Add('select * from LIY_ERP.dbo.blimits');
    sql.Add('where MKID=''00''  and FORMID=''SN03''');
    sql.Add('and userid='''+Edit1.Text+'''');
    Active := true;
  end;
  if (ADOQuery1.RecordCount > 0) then
  begin
    with ADOQuery1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT USERID, USERNAME FROM LIY_ERP.dbo.BUSERS WHERE USERID = ''' + Edit1.Text + ''' AND PWD = ''' + Edit3.Text + '''');
      Active := true;
    end;

    if (ADOQuery1.RecordCount > 0) then
    begin
      Label4.Caption := '';
      MainMap1.UserID := ADOQuery1.FieldByName('USERID').AsString;
      MainMap1.UserName := ADOQuery1.FieldByName('USERNAME').AsString;
      if (MeetingRoomDetail1.Mode = 'B') then
        MeetingRoomDetail.Button1Click(Nil);
      if (MainMap1.Mode = 'M') then
        MainMap.Button2Click(Nil)
      else if (MainMap1.Mode = 'R') then
        MainMap.Button3Click(Nil)
      else if (MainMap1.Mode = 'D') then
        MainMap.Button4Click(Nil);
      Close;
    end
    else begin
      Label4.Caption := 'Incorrect Password';
    end;
  end else begin
    Label4.Caption := 'Userid '''+Edit1.Text+''' not authority meeting room';
  end;
end;

procedure TLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLogin.FormDestroy(Sender: TObject);
begin
  Login := Nil;
end;

procedure TLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) OR (Ord(key) = VK_TAB) then
  begin
    Edit1Exit(Nil);
    if (Label4.Caption = 'User does not exist') then
      Edit1.SetFocus
    else
      Edit3.SetFocus;
  end;
end;

procedure TLogin.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    Button1Click(Nil);
end;

procedure TLogin.Button2Click(Sender: TObject);
begin
  Edit1.Enabled := true;
  Edit1.Text := '';
  Edit2.Text := '';
  Label3.Visible := true;
  Edit3.Visible := true;
  Button2.Visible := false;
  MainMap1.UserID := '';
  MainMap1.UserName := '';
end;

end.
