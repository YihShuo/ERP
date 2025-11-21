unit TWDDZL_Y_Syn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,iniFiles, StdCtrls;

type
  TTWDDZL_Y_Syn = class(TForm)
    ADOConn: TADOConnection;
    ADODDZL_Y: TADOQuery;
    RunBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RunBtnClick(Sender: TObject);
  private
    AppDir:String;
    TWDBIP,TWDBUser,TWDBPass,TWDBName:String;
    { Private declarations }
    procedure ReadIni();
    procedure ReadADOini();
    procedure CreateTW_Connect();
    procedure CreateTW_DisConnect();
    procedure UpdateTWDDZL_Y();
  public
    { Public declarations }
  end;

var
  TWDDZL_Y_Syn: TTWDDZL_Y_Syn;

implementation
  uses FunUnit;
{$R *.dfm}
//
procedure TTWDDZL_Y_Syn.ReadADOini();
var ini:TiniFile;
    SourUser,SourPass:string;
    SourIP,SourDB:String;
begin

  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\IP.ini');
    SourIP:=ini.ReadString('Source','IP','127.0.0.1');
    SourDB:=ini.ReadString('Source','DB','LIY_ERP');
    SourUser:=ini.ReadString('Source','User','sa');
    SourPass:=ini.ReadString('Source','Pass','jack');
    ADOConn.ConnectionString:='Provider=SQLOLEDB.1;Password='+SourPass+';Persist Security Info=True;User ID='+SourUser+';Initial Catalog='+SourDB+';Data Source='+SourIP;
  Finally
    ini.Free;
  end;

end;
//
procedure TTWDDZL_Y_Syn.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  TWDBIP:='192.168.2.213';
  TWDBName:='LIY_SHOE';
  TWDBUser:='JNG';
  TWDBPass:='jng@428';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      TWDBIP:=MyIni.ReadString('Sales_N18_DB','IP','192.168.2.213');
      TWDBName:=MyIni.ReadString('Sales_N18_DB','Database','LIY_SHOE');
      TWDBUser:=MyIni.ReadString('Sales_N18_DB','User','JNG');
      TWDBPass:=MyIni.ReadString('Sales_N18_DB','Pass','jng@428');
    finally
      MyIni.Free;
    end;
  end;

end;

//
procedure TTWDDZL_Y_Syn.CreateTW_Connect();
begin
  //
  with ADODDZL_Y do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('--//[1] Create Linkserver');
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    SQL.Add(' '); 
    SQL.Add('if  not exists(select *  from   master..sysservers  where  srvname= ''TWDB'') ');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('   @server=''TWDB'', --//linkserver name.');
    SQL.Add('   @srvproduct='''', --//一般描述');
    SQL.Add('   @provider=''SQLOLEDB'', --//OLEDB Provider name, check BOL for more providers');
    SQL.Add('   @datasrc='''+TWDBIP+''', --//遠端Server Name  192.168.11.100\sql2k8');
    SQL.Add('   @catalog='''+TWDBName+''' --//default database for linkserver');
    //SQL.Add('GO');
    SQL.Add('');
    SQL.Add('--//[2]Add linked server login');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'', --//false=使用遠端使用者/密碼登入');
    SQL.Add(' --//true=使用本地端使用者/密碼連線遠端SERVER                        ');
    SQL.Add('@rmtsrvname=''TWDB'', --//Linked server name');
    SQL.Add('@rmtuser='''+TWDBUser+''' , --//遠端登入使用者');
    SQL.Add('@rmtpassword='''+TWDBPass+''' --//遠端登入使用者密碼');
    //SQL.Add('GO');
    ExecSQL();
  end;
  //
end;
//關閉TW連線
procedure TTWDDZL_Y_Syn.CreateTW_DisConnect();
begin
  with ADODDZL_Y do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if exists(select *  from   master..sysservers  where  srvname= ''TWDB'') begin');
    SQL.Add('Exec sp_droplinkedsrvlogin ''TWDB'',Null ');
    SQL.Add('Exec sp_dropserver ''TWDB'',''droplogins'' ');
    SQL.Add('end');
    ExecSQL();
  end;
end;
//
procedure TTWDDZL_Y_Syn.UpdateTWDDZL_Y();
begin

  try
    with ADODDZL_Y do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert DDZL_Y');
      SQL.Add('select DDBH,''Y'',null,''SYSTEM'',convert(varchar,GETDATE(),112) from ddzl');
      SQL.Add('where exists (select scbh from kcll');
      SQL.Add('                     where kcll.scbh = ddzl.ddbh');
      SQL.Add('                     and kcll.CFMID <> ''NO''');
      SQL.Add('                     and KCLL.CFMDate > GETDATE()-2');
      SQL.Add('             and GSBH  in (select GSDH from bgszl where SFL=''PD'' and YN=1) )');
      SQL.Add('and not exists (select ddbh from ddzl_Y where ddzl.ddbh = ddzl_Y.ddbh)        ');
      //
      SQL.Add('Update DDZL_Y set YN=''Y'',USERID=''SYSTEM'',USERDATE=convert(varchar,GETDATE(),112)');
      SQL.Add('from (');
      SQL.Add('select DDBH from DDZL_Y ');
      SQL.Add('where YN=''N'' and USERID<>''SYSTEM'' and convert(varchar,GETDATE(),112)-3>=USERDATE  ) DDZL');
      SQL.Add('where DDZL_Y.DDBH=DDZL.DDBH');
      //更新台灣主機DDZL_Y表格資料
      SQL.Add('Delete from TWDB.LIY_SHOE.dbo.DDZL_Y ');
      SQL.Add('where DDBH in (select DDBH from DDZL_Y  where USERDATE>GETDATE()-1 )');
      //
      SQL.Add('Insert into TWDB.LIY_SHOE.dbo.DDZL_Y');
      SQL.Add('select * from DDZL_Y ');
      SQL.Add('where USERDATE>GETDATE()-1 ');
      funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    funcObj.WriteErrorLog(datetimetostr(now)+' Success');
  except
     on E:Exception do
     begin
       funcObj.WriteErrorLog(datetimetostr(now)+' ERROR:'+E.Message);
     end;
  end;
  Application.Terminate;
end;

procedure TTWDDZL_Y_Syn.FormCreate(Sender: TObject);
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,AppDir);
  ReadADOini();
  //
  ReadIni();
  CreateTW_Connect();
  UpdateTWDDZL_Y();
end;

procedure TTWDDZL_Y_Syn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CreateTW_DisConnect();
  FuncObj.Free;
end;

procedure TTWDDZL_Y_Syn.RunBtnClick(Sender: TObject);
begin
 UpdateTWDDZL_Y();
end;

end.
