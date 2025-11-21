unit Password1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, DBTables, regexpr;

type
  TPassword = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    QTemp: TQuery;
    Edit3: TEdit;
    Label5: TLabel;
    procedure Edit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    function CheckPassword(const password: string): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Password: TPassword;

implementation

uses ulogin, DM1, main1;

{$R *.dfm}

procedure TPassword.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.DB1.connected := false;
end;

procedure TPassword.FormCreate(Sender: TObject);
begin
  DM.DB1.connected := true;

  login.Query2.Active := true;
  if login.DataSource1.DataSet.Locate('USERID', login.Edit1.Text, []) then
  begin
    ShowMessage(
      'Please enter old password.' + #13#10 +
      'Vui long nhap mat khau cu.' + #13#10 +
      '請輸入舊密碼'
      );
  end;
end;

procedure TPassword.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TPassword.Edit1Exit(Sender: TObject);
begin
  if not (LowerCase(Edit1.Text) =
    LowerCase(login.Query2.FieldByName('PWD').AsString)) then
  begin
    ShowMessage(
      'Incorrect old password.' + #13#10 +
      'Mat ma cu khong chinh xac.' + #13#10 +
      '舊密碼錯誤'
      );
    Edit1.SetFocus;
  end;
end;

procedure TPassword.Button1Click(Sender: TObject);
begin
  if not (LowerCase(Edit1.Text) =
    LowerCase(login.Query2.FieldByName('PWD').AsString)) then
  begin
    ShowMessage(
      'Please enter right old password.' + #13#10 +
      'Vui long nhap dung mat khau cu.' + #13#10 +
      '請輸入正確的舊密碼'
      );
    Edit1.SetFocus;
    Abort;
  end;

  if Edit2.Text = Edit1.Text then
  begin
    ShowMessage(
      'New password cannot be the same as your old password.' + #13#10 +
      'Mat khau moi khong duoc giong voi mat khau cu cua ban.' + #13#10 +
      '新密碼不能與舊密碼相同'
      );
    Edit1.SetFocus;
    Abort;
  end;

  if Edit2.Text <> Edit3.Text then
  begin
    ShowMessage(
      'Password are not matching.' + #13#10 +
      'Mat khau khong khop.' + #13#10 +
      '密碼不匹配'
      );
    Edit3.SetFocus;
    Abort;
  end;

  if CheckPassword(Edit2.Text) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('UPDATE Busers SET PWD = :password, passwordchend = :password_change_date WHERE USERID = :userid');
      ParamByName('password').Value := Edit2.Text;
      ParamByName('password_change_date').Value := now;
      ParamByName('userid').Value := login.Edit1.Text;
      ExecSQL;
      Active := false;
    end;
    ShowMessage('Succeed.');
    Close;
    main.Show;
  end
  else
  begin
    ShowMessage(
      'Password should be a minimum of 8 characters long and mixture of uppercase letters and lowercase letters and special character.' + #13#10
      +
      'Mat khau phai dai toi thieu 8 ky tu va ket hop giua chu hoa va chu thuong va ky tu dac biet.' + #13#10 +
      '密碼需要設置八位數並包含大小寫英文及特殊符號'
      );
    Edit2.SetFocus;
    Abort;
  end;
end;

procedure TPassword.Button2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
end;

function TPassword.CheckPassword(const password: string): Boolean;
begin
  Result := false;

  if (length(Edit2.Text) >= 8) then
  begin
    Result := true;
  end
  else
  begin
    Result := false;
  end;

  if ExecRegExpr('[a-z]', password) and Result then
  begin
    Result := true;
  end
  else
  begin
    Result := false;
  end;

  if ExecRegExpr('[A-Z]', password) and Result then
  begin
    Result := true;
  end
  else
  begin
    Result := false;
  end;

  if ExecRegExpr('[!@#$%^&*()_+=[{\]};:''",<.>/?`~|\\-]', password) and Result then
  begin
    Result := true;
  end
  else
  begin
    Result := false;
  end;
end;

end.
