unit DM3;

interface

uses
  SysUtils, Classes, DB, ADODB, DBTables, DiaLogs;

type
  TDM2 = class(TDataModule)
    DBBOM: TDatabase;
    DBSHIP: TDatabase;
    procedure DBBOMLogin(Database: TDatabase; LoginParams: TStrings);
    procedure DataModuleCreate(Sender: TObject);
    procedure DBSHIPLogin(Database: TDatabase; LoginParams: TStrings);
  private
    { Private declarations }
  public
    G_SuserName:String;
    G_Spassword:String;
    { Public declarations }
  end;

var
  DM2: TDM2;
  a:string;

implementation

{$R *.dfm}

procedure TDM2.DBBOMLogin(Database: TDatabase; LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    a,susername,spassword,sline,pp:string;

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
  G_SuserName:=susername;
  G_Spassword:=spassword;
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
  DBBOM.Connected:=false;
  assignfile(databasevar,a+'database.txt');
  reset(databasevar);
  readln(databasevar,sline);

  closefile(databasevar);

  DBBOM.aliasname:=sline;
  DBBOM.Connected:=true;
end;

procedure TDM2.DBSHIPLogin(Database: TDatabase; LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    a,susername,spassword,sline,pp:string;
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

end.
