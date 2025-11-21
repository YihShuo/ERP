unit password;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    a,susername,spassword,sline,pp:string;
begin
pp:=edit1.Text;
ad:=dayofweek(now); //取得加密字元
sline:=inttostr(ad);

for i:=1 to (length(pp)) do //加密迴圈
  begin
    tempstr:=copy(pp,i,1);
    sline:=sline+chr(ord(tempstr[1])+ad+100);
  end;
assignfile(textfilevar,a+'datalogin.txt');
Rewrite(textfilevar);
writeln(textfilevar,sline);
closefile(textfilevar);
end;

end.
