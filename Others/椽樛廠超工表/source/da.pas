unit da;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB;

type
  Tdm1 = class(TDataModule)
    db1: TDatabase;
    procedure db1Login(Database: TDatabase; LoginParams: TStrings);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{$R *.dfm}

procedure Tdm1.db1Login(Database: TDatabase; LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    susername,spassword,sline,pp:string;
begin
  assignfile(textfilevar,AppDir+'datalogin.txt');
  reset(textfilevar);
  readln(textfilevar,pp);
  // 密碼加密測試
  sline:='';
  ad:=strtoint(copy(pp,0,1)); //取得解密字元
  for i:=2 to (length(pp)) do //解密迴圈
    begin
      tempstr:=copy(pp,i,1);
      sline:=sline+chr(ord(tempstr[1])-ad-100);
    end;

  closefile(textfilevar);

  susername:=trim(copy(sline,0,pos('=',sline)-1));
  spassword:=trim(copy(sline,pos('=',sline)+1,maxint));
  loginparams.Values['user name']:=susername;
  loginparams.values['password']:=spassword;

  pp:=sline;
  ad:=dayofweek(now); //取得加密字元
  sline:=inttostr(ad);

  for i:=1 to (length(pp)) do //加密迴圈
    begin
      tempstr:=copy(pp,i,1);
      sline:=sline+chr(ord(tempstr[1])+ad+100);
    end;
  assignfile(textfilevar,AppDir+'datalogin.txt');
  Rewrite(textfilevar);
  writeln(textfilevar,sline);
  closefile(textfilevar);
end;

end.
