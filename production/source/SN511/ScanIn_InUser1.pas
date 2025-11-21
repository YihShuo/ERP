unit ScanIn_InUser1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons;

type
  TScanIn_User = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    UserPass: TEdit;
    UserQry: TQuery;
    BtnOK: TButton;
    BtonCal: TButton;
    UserID: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure UserPassKeyPress(Sender: TObject; var Key: Char);
    procedure UserIDKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtonCalClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanIn_User: TScanIn_User;

implementation
   uses ScanIn1;
{$R *.dfm}



procedure TScanIn_User.FormCreate(Sender: TObject);
begin
  //先撈出固定的使用者
  UserQry.Active:=true;
end;

procedure TScanIn_User.BtnOKClick(Sender: TObject);
begin
  if  UserQry.Locate('UserID',trim(UserID.Text),[]) then
  begin
    if UserQry.FieldByName('PWD').AsString=trim(UserPass.Text) then
    begin
      ScanIn.INUserID:=trim(UserID.Text);
    end;
  end;
  Close;
end;

procedure TScanIn_User.UserPassKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    BtnOK.Click;
  end;
end;

procedure TScanIn_User.UserIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    BtnOK.Click;
  end;
end;

procedure TScanIn_User.FormShow(Sender: TObject);
begin
  UserID.Text:='';
  UserPass.Text:='';
  UserID.SetFocus;
end;

procedure TScanIn_User.BtonCalClick(Sender: TObject);
begin
  Close;
end;

procedure TScanIn_User.FormDestroy(Sender: TObject);
begin
  ScanIn_User:=nil;
end;

end.
