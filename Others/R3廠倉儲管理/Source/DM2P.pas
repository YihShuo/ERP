unit DM2P;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  Tdm2 = class(TDataModule)
    LIYDD: TDatabase;
    LIYERP: TDatabase;
    procedure LIYDDLogin(Database: TDatabase; LoginParams: TStrings);
    procedure DataModuleCreate(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm2: Tdm2;

implementation

{$R *.dfm}

procedure Tdm2.LIYDDLogin(Database: TDatabase; LoginParams: TStrings);
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

procedure Tdm2.DataModuleCreate(Sender: TObject);
var sline,sline1:string;
    databasevar,databasevar1:textfile;
begin
  AppDir:=ExtractFilePath(ParamStr(0));
  LIYERP.Connected:=false;
  assignfile(databasevar,AppDir+'database.txt');
  reset(databasevar);
  readln(databasevar,sline);
  closefile(databasevar);

  LIYERP.aliasname:=sline;
  LIYERP.Connected:=true;

  LIYDD.Connected:=false;
  assignfile(databasevar1,AppDir+'DB1.txt');
  reset(databasevar1);
  readln(databasevar1,sline1);
  closefile(databasevar1);
  
  LIYDD.AliasName:=sline1;
  LIYDD.Connected:=true;

end;

end.
