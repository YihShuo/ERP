unit TWDDZL_Y1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,iniFiles;

type
  TTWDDZL_Y = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DDBHEdit: TEdit;
    DBGrideh1: TDBGridEh;
    DDZL_YQry: TQuery;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    DDZL_YQryDDBH: TStringField;
    DDZL_YQryYN: TStringField;
    DDZL_YQryDDBZ: TStringField;
    DDZL_YQryUSERID: TStringField;
    DDZL_YQryUSERDATE: TStringField;
    BDelRec: TQuery;
    Qtemp: TQuery;
    DDZL_YQryArticle: TStringField;
    Label2: TLabel;
    ArticleEdit: TEdit;
    DDZL_YQryFinhish: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DDZL_YQryAfterOpen(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:String;
    TWDBIP,TWDBUser,TWDBPass,TWDBName:String;     
    { Private declarations }
    procedure ReadIni();
    procedure CreateTW_Connect();
    procedure CreateTW_DisConnect();
    procedure UpdateTWDDZL_Y(DDBH:String);
  public
    { Public declarations }
  end;

var
  TWDDZL_Y: TTWDDZL_Y;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TTWDDZL_Y.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
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

procedure TTWDDZL_Y.CreateTW_Connect();
begin
  //
  with Qtemp do
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
procedure TTWDDZL_Y.CreateTW_DisConnect();
begin

  with Qtemp do
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
procedure TTWDDZL_Y.UpdateTWDDZL_Y(DDBH:String);
begin

  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete from TWDB.LIY_SHOE.dbo.DDZL_Y  ');
    SQL.Add('where DDBH='''+DDBH+''' ');
    SQL.Add('Insert into TWDB.LIY_SHOE.dbo.DDZL_Y ');
    SQL.Add('select * from DDZL_Y  where DDBH='''+DDBH+''' ');
    ExecSQL();
  end;

end;
procedure TTWDDZL_Y.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CreateTW_DisConnect();
  Action:=CaFree;
end;

procedure TTWDDZL_Y.FormDestroy(Sender: TObject);
begin
   TWDDZL_Y:=nil;
end;

procedure TTWDDZL_Y.Button1Click(Sender: TObject);
begin

  with DDZL_YQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DDZL_Y.*,DDZL.Article,case when DDZL.YN=1 then ''N'' else ''Y'' end as Finhish   from DDZL_Y ');
    SQL.Add('Left join DDZL on DDZL.DDBH=DDZL_Y.DDBH ');
    SQL.Add('where 1=1 ');
    if DDBHEdit.Text<>'' then
    SQL.Add(' and DDZL_Y.DDBH like '''+DDBHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
    SQL.Add(' and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;


end;

procedure TTWDDZL_Y.DDZL_YQryAfterOpen(DataSet: TDataSet);
begin

  if DDZL_YQry.RecordCount>0 then
  begin
    BB4.Enabled:=true;
  end else
  begin
    BB4.Enabled:=false;
  end;

end;

procedure TTWDDZL_Y.BB4Click(Sender: TObject);
begin
  with DDZL_YQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TTWDDZL_Y.BB6Click(Sender: TObject);
begin
  with DDZL_YQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TTWDDZL_Y.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    DDZL_YQry.first;
    for i:=1 to DDZL_YQry.RecordCount do
    begin
        case DDZL_YQry.updatestatus of
          usmodified:
          begin
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values (''DDZL_Y'','''+DDZL_YQry.fieldbyname('DDBH').Value+'''');
              sql.add(','''+DDZL_YQry.fieldbyname('YN').Value+''','+''''+DDZL_YQry.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            DDZL_YQry.Edit;
            DDZL_YQry.FieldByName('USERID').Value:=main.Edit1.Text;
            DDZL_YQry.FieldByName('USERDATE').Value:=FormatDateTime('YYYYMMDD',Date());
            UpSQL1.apply(ukmodify);
            //更新TW主機
            UpdateTWDDZL_Y(DDZL_YQry.fieldbyname('DDBH').Value);
          end;
        end;
        DDZL_YQry.Next;
    end;

  DDZL_YQry.active:=false;
  DDZL_YQry.cachedupdates:=false;
  DDZL_YQry.requestlive:=false;
  DDZL_YQry.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TTWDDZL_Y.FormCreate(Sender: TObject);
begin
 ReadIni();
 CreateTW_Connect();
end;

end.
