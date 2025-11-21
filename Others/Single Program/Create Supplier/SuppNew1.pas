unit SuppNew1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  Menus, GridsEh, DBGridEh, ADODB,IniFiles,WinSock, ScktComp;

type
  TSuppNew = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1zsqm: TStringField;
    Query1zsjc: TStringField;
    UpSQL1: TUpdateSQL;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Query1tybh: TStringField;
    Query1fpdz: TStringField;
    Query1yjdz: TStringField;
    Query1dh: TStringField;
    Query1cz: TStringField;
    Query1fzr: TStringField;
    Query1bb: TStringField;
    Query1llr2: TStringField;
    Query1llr: TStringField;
    Query1dybh: TStringField;
    Query1mark: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Query1TYJH: TStringField;
    Label8: TLabel;
    UserID: TEdit;
    Label9: TLabel;
    UserPass: TEdit;
    tempQ: TQuery;
    QueryUser: TQuery;
    ClientSocket_LT: TClientSocket;
    ClientSocket_TB: TClientSocket;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ClientSocket_LTRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket_TBRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure tempQAfterOpen(DataSet: TDataSet);
  private
    IsAdmin:boolean;
    IsAllowModify:boolean;
    DBIP,DBName,User,Pass:string;
    DBIP_LT,DBName_LT,User_LT,Pass_LT:string;
    DBIP_TB,DBName_TB,User_TB,Pass_TB:string;
    spassword_TX,spassword_LT,spassword_TB:string;
    SocketServerIP:string;
    SocketServerPort:integer;
    { Private declarations }
    function GetLocalIP: String;
    procedure ReadIni();
    Procedure InsertSupplier_LT();
    Procedure InsertSupplier_TB();
    Procedure UpdateSupplier_LT();
    Procedure UpdateSupplier_TB();
    Procedure SupplierLock_TB();
    Procedure SupplierUnLock_TB();
    function CheckUserID:boolean;
  public
    { Public declarations }
  end;

var
  SuppNew: TSuppNew;

implementation

uses DM3,FunUnit,EncdDecd;

{$R *.dfm}
//
procedure TSuppNew.ReadIni();
var ini:TiniFile;
    ad_TX,ad_LT,ad_TB,i,j,k:integer;
    tempstr_TX,tempstr_LT,tempstr_TB:string;
    //spassword_TX,spassword_LT,spassword_TB:string;
    sline_TX,sline_LT,sline_TB:string;
    pp_TX,pp_LT,pp_TB:string;
begin

  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\CreateSupplier.ini');
    //
    DBIP_LT:=ini.ReadString('DB_LT','IP','127.0.0.1');
    DBName_LT:=ini.ReadString('DB_LT','Name','LIY_ERP');
    User_LT:=ini.ReadString('DB_LT','User','tyxuan');
    Pass_LT:=ini.ReadString('DB_LT','Pass','lacty2016');
     // dencrypt password
    sline_LT:='';
    ad_LT:=strtoint(copy(Pass_LT,0,1)); //取得解密字元
    for i:=2 to (length(Pass_LT)) do //解密迴圈
    begin
      tempstr_LT:=copy(Pass_LT,i,1);
      sline_LT:=sline_LT+chr(ord(tempstr_LT[1])-ad_LT);
    end;
    spassword_LT:=sline_LT;
    // 20181113 syn Ty Bach
    DBIP_TB:=ini.ReadString('DB_TB','IP','127.0.0.1');
    DBName_TB:=ini.ReadString('DB_TB','Name','TB_ERP');
    User_TB:=ini.ReadString('DB_TB','User','tyxuan');
    Pass_TB:=ini.ReadString('DB_TB','Pass','jack');
     // dencrypt password
    sline_TB:='';
    ad_TB:=strtoint(copy(Pass_TB,0,1)); //取得解密字元
    for i:=2 to (length(Pass_TB)) do //解密迴圈
    begin
      tempstr_TB:=copy(Pass_TB,i,1);
      sline_TB:=sline_TB+chr(ord(tempstr_TB[1])-ad_TB);
    end;
    spassword_TB:=sline_TB;
    //
    SocketServerIP:=ini.ReadString('ServerSocket','IP','192.168.23.156');
    SocketServerPort:=ini.ReadInteger('ServerSocket','Port',15000);

  Finally
    ini.Free;
  end;

end;
//

procedure TSuppNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;

  ClientSocket_LT.Active:=false;
  ClientSocket_TB.Active:=false;
end;

procedure TSuppNew.BB1Click(Sender: TObject);
var ServerIP:string;
begin
  IF CheckUserID()=true then
  begin
    with tempQ do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from blimits');
      sql.Add('where MKID=''00''  and FORMID=''SN02''');
      sql.Add('and userid='''+USerID.Text+'''');
      active:=true;
    end;
    if tempQ.RecordCount>0 then
    begin
      //20200525 檢查是否億春主機修改同步
      IsAllowModify:=true;
      ServerIP:=FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
      if ServerIP<>'192.168.23.9' then
      begin
        IsAllowModify:=false;
        Showmessage('Connected Server is not Tyxuan Server Database,it don''t allow modify');
      end;
      //
      panel3.Visible:=true;
      edit1.SetFocus;
    end else
    begin
      showmessage('Userid '''+USerID.Text+''' not authority');
      abort;
    end;
  end else
  begin
    showmessage('USERID or Password not exact');
  end
end;

function TSuppNew.GetLocalIP: String;
var
  wVersionRequired: Word;
  WSData: TWSAData;
  Status: Integer;
  Name: array[0..255] of Char;
  HostEnt: PHostEnt;
  IP: PChar;
  host_ip:string;
begin
  wVersionRequired := MAKEWORD(1, 1);
  Status := WSAStartup(wVersionRequired, WSData);
  if Status <> 0 then begin
    MessageDlg('Error Occured', mterror, [mbOK], 0);
    exit;
  end;      gethostname(name,sizeof(name));
  HostEnt := GetHostByName(@Name);
  if HostEnt <> nil then begin
    IP := HostEnt^.h_addr_list^;
    host_ip := IntToStr(Integer(IP[0]))+
       '.'+IntToStr(Integer(IP[1]))+
       '.'+IntToStr(Integer(IP[2]))+
       '.'+IntToStr(Integer(IP[3]));
  end
  else
    host_ip := '(N/A)';
  Result:=host_ip;
end;

function TSuppNew.CheckUserID():boolean;
var iRes:boolean;
    IP:string;
begin
  IsAdmin:=false;
  iRes:=false;
  if QueryUser.locate('UserID;PWD',vararrayof([UserID.Text,UserPass.Text]),[loCaseInsensitive]) then
  begin
      iRes:=true;
      //20181122 get IP user's computer
      IP:=GetLocalIP;
      with tempQ do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update busers');
        sql.Add('set fromip='''+IP+'''');
        sql.Add('where userid='''+UserID.Text+'''');
        execsql;
      end;
      if Pos('Admin:',QueryUser.FieldByName('Report').AsString)>0 then
      begin
        if Pos('CreateSupplier',QueryUser.FieldByName('Report').AsString)>0 then
        begin
          IsAdmin:=true;
        end;
      end;
   end;
  result:= iRes;
end;

procedure TSuppNew.FormCreate(Sender: TObject);
begin
  ReadIni();

  ClientSocket_LT.Address:=SocketServerIP;
  ClientSocket_LT.Port:=SocketServerPort;
  ClientSocket_LT.Active:=true;

  ClientSocket_TB.Address:=SocketServerIP;
  ClientSocket_TB.Port:=SocketServerPort;
  ClientSocket_TB.Active:=true;

  funcObj:=TFuncObj.Create;
  if FileExists(ExtractFilePath(Application.Exename)+'ERPUpgrade.exe') then
    funcObj.ServicesExecute('ERPUpgrade.exe',' "SQLfilter"  " and FileName in (''CreateSupplier.exe'',''CreateSupplier.ini'')" "CreateSupplier.exe" ');
  funcObj.Free;
  query1.Active:=false;
  QueryUser.Active:=true;
end;

procedure TSuppNew.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  N1.Enabled:=true;
  N2.Enabled:=true;
end;

procedure TSuppNew.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  N1.Enabled:=true;
  N2.Enabled:=true;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

Procedure TSuppNew.InsertSupplier_LT();
var zsdh,zsqm,zsjc,zsywjc,tybh,fpdz,yjdz,dh: string;
    cz,fzr,bb,llr2,llr,dybh,mark,USERID,USERDATE,YN: string;
    ZSZL_LT,ZSZL_TB,EZSZL_LT,EZSZL_TB:string;
begin
  zsdh:=query1.fieldbyname('zsdh').value;
  zsqm:=query1.fieldbyname('zsqm').value;
  zsjc:=query1.fieldbyname('zsjc').value;
  zsywjc:=query1.fieldbyname('zsywjc').value;
  tybh:=query1.fieldbyname('tybh').AsString;
  fpdz:=query1.fieldbyname('fpdz').AsString;
  yjdz:=query1.fieldbyname('yjdz').AsString;
  dh:=query1.fieldbyname('dh').AsString;
  cz:=query1.fieldbyname('cz').AsString;
  fzr:=query1.fieldbyname('fzr').AsString;
  bb:=query1.fieldbyname('bb').AsString;
  llr2:=query1.fieldbyname('llr2').AsString;
  llr:=query1.fieldbyname('llr').AsString;
  dybh:=query1.fieldbyname('dybh').AsString;
  mark:=query1.fieldbyname('mark').AsString;
  USERID:=query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);
  YN:=query1.fieldbyname('YN').value;

  ZSZL_LT:='<SQLServer>,'+DBIP_LT+','+DBName_LT+','+User_lT+','+spassword_LT+'<SQLCommand>,insert into LIY_ERP.dbo.ZSZL';
  ZSZL_LT:=ZSZL_LT+'(zsdh,zsqm,zsjc,zsywjc,tybh,fpdz,yjdz,dh,cz,fzr,bb,llr2,llr,dybh,mark,USERID,USERDATE,YN,Country,MZSDH,Style,Shippingleadtime,Customclearanceday,ShippingleadtimeS,SamplePurchaser,ProdPurchaser,GroupName,Zsdh_TW,Sample_Void)';
  ZSZL_LT:=ZSZL_LT+'values('''+zsdh+''','''+zsqm+''','''+zsjc+''','''+zsywjc+''','''+tybh+''','''+fpdz+''','''+yjdz+''','''+dh+''','''+cz+''','''+fzr+''','''+bb+''','''+llr2+''','''+llr+''','''+dybh+''','''+mark+''','''+USERID+''','''+USERDATE+''','''+YN+''',';
  ZSZL_LT:=ZSZL_LT+'NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)';
  EZSZL_LT:=EncodeString(ZSZL_LT);
  ClientSocket_LT.Socket.SendText(EZSZL_LT)
end;
Procedure TSuppNew.InsertSupplier_TB();
var zsdh,zsqm,zsjc,zsywjc,tybh,fpdz,yjdz,dh: string;
    cz,fzr,bb,llr2,llr,dybh,mark,USERID,USERDATE,YN: string;
    ZSZL_LT,ZSZL_TB,EZSZL_LT,EZSZL_TB:string;
begin
  zsdh:=query1.fieldbyname('zsdh').value;
  zsqm:=query1.fieldbyname('zsqm').value;
  zsjc:=query1.fieldbyname('zsjc').value;
  zsywjc:=query1.fieldbyname('zsywjc').value;
  tybh:=query1.fieldbyname('tybh').AsString;
  fpdz:=query1.fieldbyname('fpdz').AsString;
  yjdz:=query1.fieldbyname('yjdz').AsString;
  dh:=query1.fieldbyname('dh').AsString;
  cz:=query1.fieldbyname('cz').AsString;
  fzr:=query1.fieldbyname('fzr').AsString;
  bb:=query1.fieldbyname('bb').AsString;
  llr2:=query1.fieldbyname('llr2').AsString;
  llr:=query1.fieldbyname('llr').AsString;
  dybh:=query1.fieldbyname('dybh').AsString;
  mark:=query1.fieldbyname('mark').AsString;
  USERID:=query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);
  YN:=query1.fieldbyname('YN').value;

  ZSZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,insert into TB_ERP.dbo.ZSZL';
  ZSZL_TB:=ZSZL_TB+'(zsdh,zsqm,zsjc,zsywjc,tybh,fpdz,yjdz,dh,cz,fzr,bb,llr2,llr,dybh,mark,USERID,USERDATE,YN,tyjh,tybh2,szbh,fpls,ksb,PayVN)';
  ZSZL_TB:=ZSZL_TB+'values('''+zsdh+''','''+zsqm+''','''+zsjc+''','''+zsywjc+''','''+tybh+''','''+fpdz+''','''+yjdz+''','''+dh+''','''+cz+''','''+fzr+''','''+bb+''','''+llr2+''','''+llr+''','''+dybh+''','''+mark+''','''+USERID+''','''+USERDATE+''','''+YN+''',';
  ZSZL_TB:=ZSZL_TB+'NULL,NULL,NULL,NULL,NULL,NULL)';
  EZSZL_TB:=EncodeString(ZSZL_TB);
  ClientSocket_TB.Socket.SendText(EZSZL_TB)
end;

Procedure TSuppNew.UpdateSupplier_LT();
var zsqm,zsywjc,zsjc,dh,cz,zsdh,USERID,USERDATE,tybh:string;
    ZSZL_LT,ZSZL_TB,EZSZL_LT,EZSZL_TB:string;
begin
  zsdh:=query1.fieldbyname('zsdh').value;
  zsqm:=query1.fieldbyname('zsqm').value;
  zsjc:=query1.fieldbyname('zsjc').value;
  zsywjc:=query1.fieldbyname('zsywjc').value;
  dh:=query1.fieldbyname('dh').AsString;
  cz:=query1.fieldbyname('cz').AsString;
  tybh:= query1.fieldbyname('tybh').AsString;
  USERID:=query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);

  ZSZL_LT:='<SQLServer>,'+DBIP_LT+','+DBName_LT+','+User_lT+','+spassword_LT+'<SQLCommand>,update LIY_ERP.dbo.ZSZL';
  ZSZL_LT:=ZSZL_LT+' set zsqm='''+zsqm+''',zsywjc='''+zsywjc+''',zsjc='''+zsjc+''',dh='''+dh+''',cz='''+cz+''',tybh='''+tybh+''',userid='''+userid+''',UserDate='''+UserDate+'''';
  ZSZL_LT:=ZSZL_LT+' where zsdh='''+zsdh+'''';
  EZSZL_LT:=EncodeString(ZSZL_LT);
  ClientSocket_LT.Socket.SendText(EZSZL_LT);
end;
Procedure TSuppNew.UpdateSupplier_TB();
var zsqm,zsywjc,zsjc,dh,cz,zsdh,USERID,USERDATE,tyjh,tybh:string;
    ZSZL_LT,ZSZL_TB,EZSZL_LT,EZSZL_TB:string;
begin
  zsdh:=query1.fieldbyname('zsdh').value;
  zsqm:=query1.fieldbyname('zsqm').value;
  zsjc:=query1.fieldbyname('zsjc').value;
  zsywjc:=query1.fieldbyname('zsywjc').value;
  dh:=query1.fieldbyname('dh').AsString;
  cz:=query1.fieldbyname('cz').AsString;
  tyjh:=query1.fieldbyname('tyjh').AsString;
  tybh:= query1.fieldbyname('tybh').AsString;
  USERID:=query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);

  ZSZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,update TB_ERP.dbo.ZSZL';
  ZSZL_TB:=ZSZL_TB+' set zsqm='''+zsqm+''',zsywjc='''+zsywjc+''',zsjc='''+zsjc+''',dh='''+dh+''',cz='''+cz+''',tyjh='''+tyjh+''',tybh='''+tybh+''',userid='''+userid+''',UserDate='''+UserDate+'''';
  ZSZL_TB:=ZSZL_TB+' where zsdh='''+zsdh+'''';
  EZSZL_TB:=EncodeString(ZSZL_TB);
  ClientSocket_TB.Socket.SendText(EZSZL_TB);
end;

procedure TSuppNew.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          if query1.fieldbyname('ZSDH').isnull then
          begin
            query1.delete;
          end else
          begin
           query1.edit;
           query1.FieldByName('ZSDH').Value:=Uppercase(query1.FieldByName('ZSDH').Value);
           query1.FieldByName('ZSYWJC').Value:=Uppercase(query1.FieldByName('ZSYWJC').Value);
           query1.FieldByName('ZSQM').Value :=Uppercase(query1.FieldByName('ZSQM').Value);;
           query1.FieldByName('ZSJC').Value :=query1.FieldByName('ZSYWJC').Value;
           query1.FieldByName('USERDATE').Value:=date;
           query1.FieldByName('USERID').Value:=UserID.text;
           Query1.FieldByName('YN').Value:='2';
           upsql1.apply(ukinsert);
           InsertSupplier_LT();
           //InsertSupplier_TB();    20220517 don't need insert to TY Bach
          end;
        end;
        usmodified:
        begin
         if query1.fieldbyname('YN').value='0' then
         begin
          if  query1.fieldbyname('USERDATE').value>=(date-3) then
          begin
            upsql1.Apply(ukdelete);
          end else
          begin
            showmessage(query1.FieldByName('ZSDH').Value+' >3 days,can not delete.');
          end;
          end else
          begin
            if ((query1.fieldbyname('USERDATE').value>=(date-10)) or (IsAdmin=true)) then
            begin
              if((query1.FieldByName('UserID').Value=userid.Text) or (IsAdmin=true)) then
              begin
                query1.edit;
                query1.FieldByName('ZSDH').Value:=Uppercase(query1.FieldByName('ZSDH').Value);
                query1.FieldByName('ZSYWJC').Value:=Uppercase(query1.FieldByName('ZSYWJC').Value);
                query1.FieldByName('ZSQM').Value :=Uppercase(query1.FieldByName('ZSQM').Value);;
                query1.FieldByName('ZSJC').Value :=query1.FieldByName('ZSYWJC').Value;
                query1.FieldByName('USERDATE').Value:=date;
                query1.FieldByName('USERID').Value:=UserID.text;
                upsql1.apply(ukmodify);
                UpdateSupplier_LT();
                //UpdateSupplier_TB();    20220517 don't need to modify Ty Bach
              end else
              begin
                showmessage('It is not yours. Can not modify');
                abort;
              end;
            end else
            begin
              showmessage(query1.FieldByName('ZSDH').Value+' >10 days,can not modify.');
            end;
          end;
        end;
      end;
      query1.next;
    end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    N1.Enabled:=false;
    N2.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TSuppNew.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from ZSZL where ZSDH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZSYWJC like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YN='+''''+'2'+'''');
    sql.add('order by ZSDH');
    active:=true;
  end;
  panel3.visible:=false;
  if IsAllowModify=true then
  begin
  bb2.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  end;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;
end;

procedure TSuppNew.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  N1.Enabled:=false;
  N2.Enabled:=false;
end;

procedure TSuppNew.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TSuppNew.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TSuppNew.BBT2Click(Sender: TObject);
begin
  query1.prior;
end;

procedure TSuppNew.BBT3Click(Sender: TObject);
begin
  query1.next;
end;

procedure TSuppNew.BBT4Click(Sender: TObject);
begin
  query1.last;
end;

procedure TSuppNew.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TSuppNew.FormDestroy(Sender: TObject);
begin
  SuppNew:=nil;
end;
Procedure TSuppNew.SupplierLock_TB();
var zsdh:string;
    ZSZL_LT,ZSZL_TB,EZSZL_LT,EZSZL_TB:string;
begin
  zsdh:=query1.fieldbyname('zsdh').value;

  ZSZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,update TB_ERP.dbo.ZSZL';
  ZSZL_TB:=ZSZL_TB+' set TYJH=''Y''';
  ZSZL_TB:=ZSZL_TB+' where zsdh='''+zsdh+'''';
  EZSZL_TB:=EncodeString(ZSZL_TB);
  ClientSocket_TB.Socket.SendText(EZSZL_TB);
end;
procedure TSuppNew.N1Click(Sender: TObject);
begin
  with tempQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add('update ZSZL');
    sql.Add('set  TYJH='+''''+'Y'+'''');
    sql.Add('where zsdh='''+query1.fieldbyname('zsdh').value+'''');
    execsql;
  end;
  SupplierLock_TB();

  query1.Active:=false;
  query1.Active:=true;
end;
Procedure TSuppNew.SupplierUnLock_TB();
var zsdh:string;
    ZSZL_LT,ZSZL_TB,EZSZL_LT,EZSZL_TB:string;
begin
  zsdh:=query1.fieldbyname('zsdh').value;

  ZSZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,update TB_ERP.dbo.ZSZL';
  ZSZL_TB:=ZSZL_TB+' set TYJH=''N''';
  ZSZL_TB:=ZSZL_TB+' where zsdh='''+zsdh+'''';
  EZSZL_TB:=EncodeString(ZSZL_TB);
  ClientSocket_TB.Socket.SendText(EZSZL_TB);
end;
procedure TSuppNew.N2Click(Sender: TObject);
begin
  with tempQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add('update ZSZL');
    sql.Add('set  TYJH='+''''+'N'+'''');
    sql.Add('where zsdh='''+query1.fieldbyname('zsdh').value+'''');
    execsql;
  end;
  SupplierUnLock_TB();
  
  query1.Active:=false;
  query1.Active:=true;
end;

procedure TSuppNew.ClientSocket_LTRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Showmessage(Socket.ReceiveText);
end;

procedure TSuppNew.ClientSocket_TBRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Showmessage(Socket.ReceiveText);
end;

procedure TSuppNew.Query1AfterOpen(DataSet: TDataSet);
var ServerIP:string;
begin
end;

procedure TSuppNew.tempQAfterOpen(DataSet: TDataSet);
var ServerIP:string;
begin


end;

end.
