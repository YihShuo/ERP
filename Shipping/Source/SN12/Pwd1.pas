unit Pwd1;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons;

type
  TPwdF = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    PwdOK: boolean;
    { Public declarations }
  end;

var
  PwdF: TPwdF;

implementation

{$R *.dfm}

procedure TPwdF.OKBtnClick(Sender: TObject);
begin
  if Label2.Caption='SN12' then
  begin
    if Password.Text='0101' then
    begin
      PwdOK:=true;
    end;
  end else
  begin
    if Password.Text='0000' then
    begin
      PwdOK:=true;
    end;
  end;

end;

procedure TPwdF.CancelBtnClick(Sender: TObject);
begin
  PwdOK:=false;
end;

procedure TPwdF.FormShow(Sender: TObject);
begin
  PwdOK:=false;
end;

end.
 
