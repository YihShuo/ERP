unit DM3;

interface

uses
  SysUtils, Classes, DB, ADODB, DBTables;

type
  TDM2 = class(TDataModule)
    DBshipping: TDatabase;
    procedure DBshippingLogin(Database: TDatabase; LoginParams: TStrings);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;
  a:string;

implementation

{$R *.dfm}

procedure TDM2.DBshippingLogin(Database: TDatabase; LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    susername,spassword,sline,pp:string;

begin
  assignfile(textfilevar,a+'datalogin.txt');
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
  assignfile(textfilevar,a+'datalogin.txt');
  Rewrite(textfilevar);
  writeln(textfilevar,sline);
  closefile(textfilevar);

end;


procedure TDM2.DataModuleCreate(Sender: TObject);
var sline:string;
  databasevar:textfile;
begin
  a:=ExtractFilePath(ParamStr(0));
  DBshipping.Connected:=false;
  assignfile(databasevar,a+'database.txt');
  reset(databasevar);
  readln(databasevar,sline);

  closefile(databasevar);

  DBshipping.aliasname:=sline;
  DBshipping.Connected:=true;
end;

end.
