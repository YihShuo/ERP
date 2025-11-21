unit CheckPWD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdMessage, ExtCtrls, inifiles, DateUtils ;

type
  TCheckPWD = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    SmtpClient: TIdSMTP;
    Query1: TQuery;
    Timer1: TTimer;
    EmailMessage: TIdMessage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    MFA_PWD:String;
    Now_DT:TDatetime;
    MFA_PWD_Expire:TDateTime;
    { Private declarations }
    procedure SendMFAEmail();
  public
    { Public declarations }
  end;

var
  CheckPWD: TCheckPWD;

implementation
  uses ulogin;
{$R *.dfm}



//密碼信
procedure TCheckPWD.SendMFAEmail();
var
  MyIni: TIniFile;
  AppDir: string;
begin
  if LOGIN.Query2.FieldByName('EMAIL').AsString <> '' then
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
        EmailMessage.Recipients.Add.Address := LOGIN.Query2.FieldByName('EMAIL').AsString;
        EmailMessage.Subject := 'ERP Verify code Notification Mail';
        EmailMessage.Body.Text := 'your ERP verify code: ' + MFA_PWD;

        SmtpClient.Connect;
        SmtpClient.Authenticate;
        SmtpClient.Send(EmailMessage);
        ShowMessage(
          'The second password letter has been sent, please confirm your mailbox.' + #13#10 +
          'Thu thu hai mat khau da duoc gui, vui long xac nhap hop thu cua ban.' + #13#10 +
          '驗證碼通知信已寄出，請確認個人信箱');
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

procedure TCheckPWD.FormCreate(Sender: TObject);
begin
  LOGIN.IsVerifyMFA_OK:=false;
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select USERID,MFA_PWD,MFA_PWD_Expire,GetDate() as DT from Busers where UserID='''+LOGIN.Edit1.Text+''' ');
    Active:=true;
    if RecordCount>0 then
    begin
      Now_DT:=now();
      //過期發mail
      if FieldByName('MFA_PWD_Expire').Value<Now() then
      begin
        Randomize();
        MFA_PWD:=Format('%.5d',[random(10000)]);
        MFA_PWD_Expire:=IncSecond(Now_DT,5*60);
        //
        Active:=false;
        SQL.Clear;
        SQL.Add('Update Busers set MFA_PWD='''+MFA_PWD+''',MFA_PWD_Expire=DATEADD(mi,5,getDate()) where UserID='''+LOGIN.Edit1.Text+''' ');
        ExecSQL();
        //
        SendMFAEmail();
      end else
      begin
        MFA_PWD:=FieldByName('MFA_PWD').Value;
        MFA_PWD_Expire:=FieldByName('MFA_PWD_Expire').Value;
      end;
      //
    end;
    Active:=false;
  end;
  Timer1.Enabled:=true;
end;

procedure TCheckPWD.Timer1Timer(Sender: TObject);
begin
  Label1.Caption:='驗證碼有效時間:'+FormatDatetime('nn:ss',(MFA_PWD_Expire-Now_DT));//FormatDatetime('hh:nn:ss',(MFA_PWD_Expire));
  Now_DT:=Now();
  if MFA_PWD_Expire<=Now_DT then Timer1.Enabled:=false;
end;

procedure TCheckPWD.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if Edit1.Text=MFA_PWD then
    begin
      LOGIN.IsVerifyMFA_OK:=true;
      self.Close;
    end else
    begin
      LOGIN.IsVerifyMFA_OK:=false;
      Showmessage('Incorrect verify password.驗證密碼不正確');
    end;
  end;
end;

end.
