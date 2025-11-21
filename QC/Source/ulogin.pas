unit ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TLOGIN = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  login: Tlogin;

implementation

{$R *.dfm}

procedure TLOGIN.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'login.jpg');
end;

procedure TLOGIN.FormHide(Sender: TObject);
begin
  //Sleep(3000);
end;

end.
