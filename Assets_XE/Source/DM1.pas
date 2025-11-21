unit DM1;

interface

uses
  SysUtils, Classes, DB, ADODB, DBTables, Dialogs, IniFiles;

type
  TDM = class(TDataModule)
    DB1: TDatabase;
    procedure DB1Login(Database: TDatabase; LoginParams: TStrings);
    procedure DataModuleCreate(Sender: TObject);
  private
    AppDir:string;
    ERPDBIP,ERPDBName,ERPDBUser,ERPDBPass,LocalDBName:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}


procedure TDM.DB1Login(Database: TDatabase; LoginParams: TStrings);
var MyIni :Tinifile;
    i,ad_LT:integer;
    sline_LT,tempstr_LT:string;
begin
  if FileExists(AppDir+'ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //
      ERPDBIP:=MyIni.ReadString('ERPServer','IP','192.168.23.9');
      ERPDBName:=MyIni.ReadString('ERPServer','Database','LIY_ERP');
      ERPDBUser:=MyIni.ReadString('ERPServer','User','tyxuan');
      ERPDBPass:=MyIni.ReadString('ERPServer','Pass','jack');
      //
      // 密碼加密測試
      sline_LT:='';
      ad_LT:=strtoint(copy(ERPDBPass,0,1)); //取得解密字元
      for i:=2 to (length(ERPDBPass)) do //解密迴圈
      begin
        tempstr_LT:=copy(ERPDBPass,i,1);
        sline_LT:=sline_LT+chr(ord(tempstr_LT[1])-ad_LT);
      end;
      ERPDBPass:=sline_LT;
      //
      loginparams.Values['user name']:=ERPDBUser;
      loginparams.values['password']:=ERPDBPass;      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var sline:string;
    databasevar:textfile;
begin
  AppDir:=ExtractFilePath(ParamStr(0));
  DB1.Connected:=false;
  assignfile(databasevar,AppDir+'database.txt');
  reset(databasevar);
  readln(databasevar,sline);

  closefile(databasevar);

  DB1.aliasname:=sline;
  DB1.Connected:=true;
end;

end.
