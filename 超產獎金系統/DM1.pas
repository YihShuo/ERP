unit DM1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, IniFiles, Data.DB, Data.Win.ADODB;

type
  TDM2 = class(TDataModule)
    ADOConn: TADOConnection;
    ADOConn2: TADOConnection;
    ADOConn3: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ReadIni();
  public
    ERPDBIP,ERPDBName,ERPDBUser,ERPDBPass,LocalDBName,BPMDBIP,BPMDBName,BPMDBUser,BPMDBPass:String;
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation
  uses FunUnit;
{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}
procedure TDM2.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
    i,ad_LT:integer;
    sline_LT,tempstr_LT:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //
      ERPDBIP:=MyIni.ReadString('ERPServer','IP','192.168.23.9');
      ERPDBName:=MyIni.ReadString('ERPServer','Database','LIY_ERP');
      ERPDBUser:=MyIni.ReadString('ERPServer','User','tyxuan');
      ERPDBPass:=MyIni.ReadString('ERPServer','Pass','jack');

      BPMDBIP:=MyIni.ReadString('BPMServer','IP','192.168.23.8');
      BPMDBName:=MyIni.ReadString('BPMServer','Database','UOF');
      BPMDBUser:=MyIni.ReadString('BPMServer','User','uof');
      BPMDBPass:=MyIni.ReadString('BPMServer','Pass','mhgdimhdyjqje');
      //
      LocalDBName:=MyIni.ReadString('Local','Database','LIY_TYXUAN');
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
      ADOConn.Connected:=false;
      ADOConn.ConnectionString:='Provider=SQLOLEDB.1;Password='+ERPDBPass+';Persist Security Info=True;User ID='+ERPDBUser+';Initial Catalog='+ERPDBName+';Data Source='+ERPDBIP+';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';

      ADOConn2.Connected:=false;
      ADOConn2.ConnectionString:='Provider=SQLOLEDB.1;Password='+ERPDBPass+';Persist Security Info=True;User ID='+ERPDBUser+';Initial Catalog='+LocalDBName+';Data Source='+ERPDBIP+';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';

      ADOConn3.Connected:=false;
      ADOConn3.ConnectionString:='Provider=SQLOLEDB.1;Password='+BPMDBPass+';Persist Security Info=True;User ID='+BPMDBUser+';Initial Catalog='+BPMDBName+';Data Source='+BPMDBIP+';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDM2.DataModuleCreate(Sender: TObject);
begin
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ReadIni();
end;

procedure TDM2.DataModuleDestroy(Sender: TObject);
begin
  funcObj.Free;
end;

end.
