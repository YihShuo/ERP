unit ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, DB, DBTables, DBCtrls, inifiles, WinSock,
  Mask, DBCtrlsEh, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdMessage;

type
  TLOGIN = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    btnOK: TButton;
    Timer1: TTimer;
    Bevel2: TBevel;
    Edit3: TEdit;
    Image2: TImage;
    Label1: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Query1: TQuery;
    ComboBox2: TComboBox;
    LanguageCombo: TComboBox;
    DataSource1: TDataSource;
    Query2: TQuery;
    SmtpClient: TIdSMTP;
    EmailMessage: TIdMessage;
    SSOPanel: TPanel;
    SSOTimer: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure SendPasswordEmail();
    procedure SSOTimerTimer(Sender: TObject);
  private
    G_GSBH: string;
    { Private declarations }
    function GetLocalIP: string;
    function GetCurrentUserName: string;
  public
    //20230621
    SSOTimer_Count: integer;
    IsVerifyMFA_OK: boolean;
    { Public declarations }
  end;

var
  login: Tlogin;

implementation

uses main1, Password1, CheckPWD1, FunUnit;

{$R *.dfm}

function TLOGIN.GetCurrentUserName: string;
const
  cnMaxUserNameLen = 254;
var
  sUserName: string;
  dwUserNameLen: DWORD;
begin
  dwUserNameLen := cnMaxUserNameLen - 1;
  SetLength(sUserName, cnMaxUserNameLen);
  GetUserName(PChar(sUserName), dwUserNameLen);
  SetLength(sUserName, dwUserNameLen);
  Result := sUserName;
end;

procedure TLOGIN.FormCreate(Sender: TObject);
var
  database, sline: string;
  databasevar: textfile;
  LanguageID: string;
  i: integer;
begin
  ShortDateFormat := 'yyyy/MM/dd';
  if FindWindow('', 'LIY_ERP.exe') > 0 then
    ShowMessage('已經運行行！！');
  image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'login.jpg');
  // 指定BDE路徑
  Session.NetFileDir := ExtractFileDir(Application.ExeName);
  funcObj := TFuncObj.Create;
  if FileExists(ExtractFilePath(Application.Exename) + 'ERPUpgrade.exe') then
    FuncObj.StartAP(ExtractFilePath(Application.Exename) + 'ERPUpgrade.exe');
  funcObj.Free;
  //
  if FileExists(ExtractFilePath(Application.Exename) + 'database.txt') then
  begin
    assignfile(databasevar, 'database.txt');
    reset(databasevar);
    readln(databasevar, database);
    ComboBox2.Clear;
    ComboBox2.Text := database;
    closefile(databasevar);
  end;

  if FileExists(ExtractFilePath(Application.Exename) + 'company.txt') then
  begin
    assignfile(databasevar, 'company.txt');
    reset(databasevar);
    readln(databasevar, G_GSBH);
    readln(databasevar, LanguageID);
    if LanguageID = 'CN' then
      LanguageCombo.ItemIndex := 1;
    if LanguageID = 'EN' then
      LanguageCombo.ItemIndex := 2;
    if LanguageID = 'VN' then
      LanguageCombo.ItemIndex := 3;
    closefile(databasevar);
  end;

  if FileExists(ExtractFilePath(Application.Exename) + 'user.txt') then
  begin
    assignfile(databasevar, extractfilepath(application.ExeName) + 'user.txt');
    reset(databasevar);
    readln(databasevar, sline);
    if Pos('=', sline) > 0 then
    begin
      Edit1.Text := copy(sline, 0, pos('=', sline) - 1);
    end;
    closefile(databasevar);
  end;

end;

procedure TLOGIN.FormShow(Sender: TObject);
var
  i, index: integer;
begin
  with Query1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT GSDH FROM Bgszl WHERE YN=1 ORDER BY GSDH ');
    Active := true;
    ComboBox1.Items.Clear;
    for i := 0 to RecordCount - 1 do
    begin
      ComBoBox1.Items.Add(FieldByName('GSDH').Value);
      begin
        if G_GSBH = FieldByName('GSDH').Value then
        begin
          index := i;
        end;
      end;
      Next;
    end;
    Active := false;
  end;
  ComBoBox1.ItemIndex := index;

  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Busers.* FROM Busers');
    Active := true;
  end;

  // 顯示名字
  if (Query2.Locate('USERID', Edit1.Text, [])) then
  begin
    Edit4.Text := Query2.FieldByName('USERNAME').AsString;
    Edit2.SetFocus;
    //20230621 SSO 直接登入
    if Query2.FieldByName('IsSSO').Value = true then
    begin
      if trim(GetCurrentUserName()) = Edit1.Text then //作假登入帳號和ERP帳號一樣就自動登入
      begin
        SSOTimer_Count := 0;
        SSOTimer.Enabled := true;
      end;
    end;
    //
  end;

end;

procedure TLOGIN.Timer1Timer(Sender: TObject);
begin
  Label2.Caption := formatdatetime('HH:mm:SS', time);
  label3.Caption := formatdatetime('yyyy/MM/dd', date);
end;

procedure TLOGIN.btnOKClick(Sender: TObject);
var
  y, m, d: word;
  date1, date2: tdate;
  uid, IP: string;
begin
  if Combobox1.text = '' then
  begin
    ShowMessage('Please select company first.');
    Abort;
  end;

  if Edit2.text = '' then
  begin
    ShowMessage('Password cannot be empty.');
    Abort;
  end;

  if Query2.FieldByName('tyjh').AsString = 'Y' then
  begin
    ShowMessage(
      'ERP Account ID already stop, please contact wtih IT' + #13#10 +
      'Tai khoan ERP da bi vo hieu hoa' + #13#10 +
      'ERP 帳號已被停用，請聯絡 IT 人員');
    Abort;
  end;

  decodedate(date, y, m, d);
  if Query2.Locate('USERID', Edit1.text, [loCaseInsensitive]) then
  begin
    if Query2.FieldByName('PWD').AsString = Edit2.Text then
    begin
      //20230621多重驗證
      if Query2.FieldByName('IsMFA').Value = true then
      begin
        CheckPWD := TCheckPWD.Create(self);
        CheckPWD.ShowModal();
      end
      else
      begin
        IsVerifyMFA_OK := true;
      end;
      //主畫面
      self.Hide;
      //多重驗證
      if IsVerifyMFA_OK = true then
      begin
        //登入主畫面
        main.Edit1.Text := login.Edit1.Text;
        main.Edit2.Text := login.combobox1.Text;
        // 20200717 增加語系
        main.LanguageID := '';
        if LanguageCombo.ItemIndex = 1 then
          main.LanguageID := 'CN';
        if LanguageCombo.ItemIndex = 2 then
          main.LanguageID := 'EN';
        if LanguageCombo.ItemIndex = 3 then
          main.LanguageID := 'VN';
        //
        date1 := now;
        if (Query2.FieldByName('passwordchend').IsNull) then
        begin
          date2 := 0;
        end
        else
          date2 := Query2.FieldByName('passwordchend').Value;
        begin
        end;
        uid := Query2.FieldByName('USERNAME').Value;
        // 20181121 get IP user's computer
        IP := GetLocalIP;
        with Query1 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('UPDATE Busers');
          SQL.Add('SET fromIP = ''' + IP + '''');
          SQL.Add('WHERE USERID = ''' + Edit1.Text + '''');
          ExecSQL;
        end;
        if (date1 - date2 < 90) then
        begin
          main.Show
        end
        else
        begin
          Password := TPassword.Create(Self);
          Password.Show;
        end;
      end
      else
      begin
        Showmessage('Pleas verify your password, receive your mail');
      end;
    end
    else
    begin
      ShowMessage('Incorrect password.');
      Edit3.Text := IntToStr(StrToInt(Edit3.Text) + 1);
      Edit1.SetFocus;
    end;
  end
  else
  begin
    ShowMessage('Incorrect user id.');
    Edit3.Text := IntToStr(StrToInt(Edit3.Text) + 1);
    Edit1.SetFocus;
  end;
  if StrToInt(Edit3.Text) >= 3 then
  begin
    if MessageDlg(
      'Do you want get your password email?' + #13#10 +
      'Ban co muon lay email mat khau cua ban?' + #13#10 +
      '是否需要 ERP 密碼通知信?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      SendPasswordEmail();
      Edit3.Text := '0';
    end
    else
    begin
      Showmessage(
        'Input passowrd wrong 3 times, system close. ' + #13#10 +
        'Nhap sai mat khau 3 lan de dong.' + #13#10 +
        '密碼輸入錯誤三次，系統關閉');
      Close;
    end;
  end;
end;

procedure TLOGIN.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Edit1.text = '' then
  begin
    Edit1.SetFocus;
    Abort;
  end;

  if key = #13 then
    btnOKclick(nil);
end;

procedure TLOGIN.Edit2Enter(Sender: TObject);
begin
  if Edit1.text = '' then
    Edit1.SetFocus;
end;

procedure TLOGIN.Edit1Exit(Sender: TObject);
begin
  if (DataSource1.DataSet.Locate('USERID', Edit1.Text, [])) then
  begin
    Edit4.Text := Query2.FieldByName('USERNAME').AsString;
  end
  else
  begin
    MessageDlg('Incorrect user id.', mtwarning, [mbOK], 0);
    Edit1.SetFocus
  end;
end;

procedure TLOGIN.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Combobox1.text = '' then
  begin
    ShowMessage('Please select company first.');
    Abort;
  end;

  if Key = #13 then
  begin
    if (DataSource1.DataSet.Locate('USERID', Edit1.Text, [])) then
    begin
      Edit4.Text := Query2.FieldByName('USERNAME').AsString;
      Edit2.SetFocus;
    end
    else
    begin
      MessageDlg('Incorrect user id.', mtwarning, [mbOK], 0);
      Edit1.SetFocus;
    end;
  end;
end;

procedure TLOGIN.Label1Click(Sender: TObject);
begin
  with Query1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT GSDH FROM Bgszl ORDER BY GSDH');
    Active := true;
    ComboBox1.Items.Clear;
    while not eof do
    begin
      ComboBox1.Items.Add(FieldByName('GSDH').Value);
      Next;
    end;
    Active := false;
  end;
  LanguageCombo.Visible := true;
end;

function TLOGIN.GetLocalIP: string;
var
  wVersionRequired: Word;
  WSData: TWSAData;
  Status: Integer;
  Name: array[0..255] of Char;
  HostEnt: PHostEnt;
  IP: PChar;
  host_ip: string;
begin
  wVersionRequired := MAKEWORD(1, 1);
  Status := WSAStartup(wVersionRequired, WSData);
  if Status <> 0 then
  begin
    MessageDlg('Error Occured', mterror, [mbOK], 0);
    exit;
  end;
  gethostname(name, sizeof(name));
  HostEnt := GetHostByName(@Name);
  if HostEnt <> nil then
  begin
    IP := HostEnt^.h_addr_list^;
    host_ip := IntToStr(Integer(IP[0])) +
      '.' + IntToStr(Integer(IP[1])) +
      '.' + IntToStr(Integer(IP[2])) +
      '.' + IntToStr(Integer(IP[3]));
  end
  else
    host_ip := '(N/A)';
  Result := host_ip;
end;

//密碼信
procedure TLOGIN.SendPasswordEmail();
var
  MyIni: TIniFile;
  AppDir: string;
begin
  if (Query2.Locate('USERID', Edit1.Text, [])) and (Query2.FieldByName('EMAIL').AsString <> '') then
  begin
    AppDir := ExtractFilePath(Application.ExeName);
    try
      try
        MyIni := Tinifile.Create(AppDir + '\ComName.ini');
        SmtpClient.Host := MyIni.ReadString('MailServer', 'Host', 'mail.tyxuan.com.vn');
        SmtpClient.Username := MyIni.ReadString('MailServer', 'Username', 'workflow@tyxuan.com.vn');
        SmtpClient.Password := MyIni.ReadString('MailServer', 'Password', 'work@2019');
        EmailMessage.From.Address := MyIni.ReadString('MailServer', 'Address', 'workflow@tyxuan.com.vn');
        EmailMessage.From.Name := MyIni.ReadString('MailServer', 'Name', 'workflow@tyxuan.com.vn');
        EmailMessage.Recipients.Add.Address := Query2.FieldByName('EMAIL').AsString;
        EmailMessage.Subject := 'ERP Password Notification Mail';
        EmailMessage.Body.Text := 'This is your ERP password: ' + Query2.FieldByName('PWD').AsString;

        SmtpClient.Connect;
        SmtpClient.Authenticate;
        SmtpClient.Send(EmailMessage);
        ShowMessage(
          'The password letter has been sent, please confirm your mailbox.' + #13#10 +
          'Thu mat khau da duoc gui, vui long xac nhap hop thu cua ban.' + #13#10 +
          'ERP 密碼通知信已寄出，請確認個人信箱');
        Edit2.Text := '';
      finally
        SmtpClient.Free;
        EmailMessage.Free;
      end;
    except
      ShowMessage(
        'Something was wrong, please contact IT.' + #13#10 +
        'Da xay ra su co, vui long lien he voi IT.' + #13#10 +
        '出現異常，請聯絡 IT 人員');
    end;
  end
  else
  begin
    ShowMessage(
      'Your ERP account does not have an email address, please contact IT.' + #13#10 +
      'Tai khoan ERP cua ban khong co dia chi email, vui long lien he voi bo phan IT.' + #13#10 +
      'ERP 帳號未設定信箱地址，請聯絡 IT 人員');
  end;
end;

procedure TLOGIN.SSOTimerTimer(Sender: TObject);
begin
  SSOPanel.Visible := true;
  SSOPanel.Caption := 'SSO登入檢查: 服務器檢查中' + inttostr(SSOTimer_Count) + '秒後登入';
  SSOTimer_Count := SSOTimer_Count + 1;
  if SSOTimer_Count >= 5 then
  begin
    SSOTimer.Enabled := false;
    Edit2.Text := Query2.FieldByName('PWD').AsString;
    btnOK.Click;
  end;
end;

end.
