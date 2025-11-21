unit MailServerSetting1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, iniFiles;

type
  TMailServerSetting = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ED_Host: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ED_Name: TEdit;
    ED_Address: TEdit;
    Panel1: TPanel;
    ED_Password: TEdit;
    Label2: TLabel;
    B_Test: TButton;
    Button1: TButton;
    IdSMTP1: TIdSMTP;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    ED_CC: TEdit;
    B_TestMail: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure B_TestClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B_TestMailClick(Sender: TObject);
  private
    { Private declarations }
    procedure SendMail(SendTo, STitle, SMessage: string);
    function ConnectionCheck(Alert: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  MailServerSetting: TMailServerSetting;

implementation

uses SalaryList1;

{$R *.dfm}

function TMailServerSetting.ConnectionCheck(Alert: Boolean): Boolean;
begin
  if (ED_Host.Text <> '') then
    idSMTP1.Host := ED_Host.Text
  else begin
    MessageDlg('Please enter a valid mail server.', mtWarning, [mbOK], 0);
    Result := false;
    ED_Host.SetFocus;
    Exit;
  end;

  if (SalaryList.IsValidEmailRegEx(ED_Address.Text)) then
    idSMTP1.Username := ED_Address.Text
  else begin
    MessageDlg('Please enter a valid email address', mtWarning, [mbOK], 0);
    Result := false;
    ED_Address.SetFocus;
    Exit;
  end;

  if (ED_Password.Text <> '') then
    idSMTP1.Password := ED_Password.Text
  else begin
    MessageDlg('Please enter a valid password', mtWarning, [mbOK], 0);
    Result := false;
    ED_Password.SetFocus;
    Exit;
  end;

  try
    IdSMTP1.Connect;
    IdSMTP1.Authenticate;
  except on E:Exception do
    begin
      IdSMTP1.Disconnect(false);
      if (Alert) then
        MessageDlg(E.Message, mtWarning, [mbOK], 0);
      Result := false;
      Exit;
    end;
  end;

  IdSMTP1.Disconnect(false);
  if (Alert) then
    MessageDlg('Authentication success.', mtInformation, [mbOK], 0);
  Result := true;
end;

procedure TMailServerSetting.Button1Click(Sender: TObject);
var
  MyIni: TIniFile;
begin
  if (ConnectionCheck(false) = false) then
  begin
    MessageDlg('Authentication failed.', mtWarning, [mbOK], 0);
    Exit;
  end
  else begin
    SalaryList.IdSMTP1.Host := ED_Host.Text;
    SalaryList.IdSMTP1.Username := ED_Address.Text;
    SalaryList.IdSMTP1.Password := ED_Password.Text;
    SalaryList.idMessage1.From.Address := ED_Address.Text;
    SalaryList.IdMessage1.BccList.Clear;
    if (ED_CC.Text <> '') then
      SalaryList.IdMessage1.BccList.Add.Text := ED_CC.Text;
    if (ED_Name.Text <> '') then
      SalaryList.IdMessage1.From.Name := ED_Name.Text;
  end;

  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  try
    MyIni.WriteString('Settings', 'Host', ED_Host.Text);
    MyIni.WriteString('Settings', 'UserName', ED_Address.Text);
    MyIni.WriteString('Settings', 'Password', ED_Password.Text);
    MyIni.WriteString('Settings', 'Name', ED_Name.Text);
    MyIni.WriteString('Settings', 'CC', ED_CC.Text);
  finally
    MyIni.Free;
  end;

  Close;
end;

procedure TMailServerSetting.B_TestClick(Sender: TObject);
begin
  ConnectionCheck(true);
end;

procedure TMailServerSetting.B_TestMailClick(Sender: TObject);
begin
  if (SalaryList.IsValidEmailRegEx(ED_CC.Text)) then
  begin
    SendMail(ED_CC.Text, 'System Test', 'This is a test email');
  end
  else begin
    MessageDlg('Please enter a valid email address', mtWarning, [mbOK], 0);
    ED_CC.SetFocus;
  end;
end;

procedure TMailServerSetting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMailServerSetting.FormCreate(Sender: TObject);
var
  MyIni: TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  try
    ED_Host.Text := MyIni.ReadString('Settings', 'Host', '');
    ED_Address.Text := MyIni.ReadString('Settings', 'UserName', '');
    ED_Password.Text := MyIni.ReadString('Settings', 'Password', '');;
    ED_Name.Text := MyIni.ReadString('Settings', 'Name', '');;
    ED_CC.Text := MyIni.ReadString('Settings', 'CC', '');;
  finally
    MyIni.Free;
  end;
end;

procedure TMailServerSetting.FormDestroy(Sender: TObject);
begin
  MailServerSetting := Nil;
end;

procedure TMailServerSetting.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TMailServerSetting.SendMail(SendTo, STitle, SMessage: string);
begin
  if (SalaryList.IdSMTP1.Host = '') OR (SalaryList.IdSMTP1.Username = '') OR (SalaryList.IdSMTP1.Password = '') then
  begin
    Application.MessageBox('Please save settings before send test emails.', 'Message', MB_OK);
  end;

  SalaryList.IdMessage1.Recipients.Clear;
  SalaryList.IdMessage1.Recipients.Add.Text := ED_Address.Text;
  SalaryList.IdMessage1.BCCList.Clear;
  SalaryList.IdMessage1.BCCList.Add.Text := SendTo;
  SalaryList.IdMessage1.Subject := STitle;
  SalaryList.IdMessage1.ClearBody;
  SalaryList.IdMessage1.Body.Add(SMessage);
  SalaryList.IdMessage1.ContentType := 'text/html';
  SalaryList.IdMessage1.CharSet := 'UTF-8';

  try
    SalaryList.IdSMTP1.Connect;
    SalaryList.IdSMTP1.Authenticate;
  except on E:Exception do
    begin
      MessageDlg(E.Message, mtWarning, [mbOK], 0);
      Exit;
    end;
  end;

  try
    SalaryList.IdSMTP1.Send(SalaryList.IdMessage1);
  except on E:Exception do
    begin
      MessageDlg(E.Message, mtWarning, [mbOK], 0);
    end;
  end;

  SalaryList.IdSMTP1.Disconnect(false);
  Application.MessageBox('Email send successfully.', 'Message', MB_OK);
end;

end.
