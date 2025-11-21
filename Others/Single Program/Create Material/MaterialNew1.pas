unit MaterialNew1;
                                                                
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, Buttons, Grids, DBGrids,
  ExtCtrls,comobj, Menus, GridsEh, DBGridEh,ehlibBDE, ADODB,IniFiles,WinSock,
  ScktComp;

type
  TMaterialNew = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
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
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1cldh: TStringField;
    Query1clbm: TStringField;
    Query1dycldh: TStringField;
    Query1ysbh: TStringField;
    Query1yszwsm: TStringField;
    Query1ysywsm: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1dwzwsm: TStringField;
    Query1dwywsm: TStringField;
    Query1clzmlb: TStringField;
    Query1lycc: TStringField;
    Query1xhcl: TStringField;
    Query1jkcl: TStringField;
    Query1gjlb: TStringField;
    Query1ckcldh: TStringField;
    Query1dzzhl: TFloatField;
    Query1xxbh: TStringField;
    Query1kfdh: TStringField;
    Query1cqdh: TStringField;
    Query1cltd: TStringField;
    Query1tyjh: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1pumadh: TStringField;
    Query1YN: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CBX2: TDBComboBox;
    Label6: TLabel;
    Query2: TQuery;
    Edit3: TEdit;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Query1cllb: TStringField;
    DBMemo2: TDBMemo;
    DBX2: TDBComboBox;
    BBTT1: TButton;
    DBEdit2: TDBEdit;
    ShowLimitCK: TCheckBox;
    tempQ: TQuery;
    Label8: TLabel;
    UserID: TEdit;
    Label9: TLabel;
    UserPass: TEdit;
    QueryUser: TQuery;
    ClientSocket_LT: TClientSocket;
    ClientSocket_TB: TClientSocket;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BBTT1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ClientSocket_LTRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket_TBRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure UserPassKeyPress(Sender: TObject; var Key: Char);
    //procedure N2Click(Sender: TObject);
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
    function CheckUserID:boolean;
    procedure InsertMaterial_LT();
    procedure InsertMaterial_TB();
    procedure UpdateMaterial_LT();
    procedure UpdateMaterial_TB();
    procedure MaterialLock_LT();
    procedure MaterialLock_TB();
    procedure MaterialUnLock_LT();
    procedure MaterialUnLock_TB();
  public
    { Public declarations }
  end;

var
  MaterialNew: TMaterialNew;

implementation

uses MaterialNew_LB1,FunUnit,EncdDecd, DM3;

{$R *.dfm}

procedure TMaterialNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;

  ClientSocket_LT.Active:=false;
  ClientSocket_TB.Active:=false;
end;
//
procedure TMaterialNew.ReadIni();
var ini:TiniFile;
    ad_TX,ad_LT,ad_TB,i,j,k:integer;
    tempstr_TX,tempstr_LT,tempstr_TB:string;
    //spassword_TX,spassword_LT,spassword_TB:string;
    sline_TX,sline_LT,sline_TB:string;
    pp_TX,pp_LT,pp_TB:string;
begin

  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\CreateMaterialNew.ini');
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
    // 20181112 syn at Ty Bach
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
procedure TMaterialNew.FormCreate(Sender: TObject);
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
    funcObj.ServicesExecute('ERPUpgrade.exe',' "SQLfilter"  " and FileName in (''CreateMaterialNew.exe'',''CreateMaterialNew.ini'')" "CreateMaterialNew.exe" ');
  funcObj.Free;

  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LBDH  from LBZLS where LB='+''''+'02'+'''' )   ;
    sql.add('order by LBDH ');
    active:=true;
    CBX2.Clear;
    DBX2.Clear;
    while not eof do
    begin
      CBX2.Items.add(fieldbyname('LBDH').asstring);
      DBX2.Items.add(fieldbyname('LBDH').asstring);
      next;
    end;
    active:=false;
  end;
  QueryUser.Active:=true;
end;

procedure TMaterialNew.BB7Click(Sender: TObject);
begin
  close;
end;
function TMaterialNew.GetLocalIP: String;
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
function TMaterialNew.CheckUserID():boolean;
var iRes:boolean;
    IP:string;
begin
  IsAdmin:=false;
  iRes:=false;
  if QueryUser.locate('UserID;PWD',vararrayof([UserID.text,UserPass.text]),[loCaseInsensitive]) then
  begin
    iRes:=true;
    //20181122 get IP user's computer
    IP:=GetLocalIP;
    with Query2 do
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
      if Pos('CreateMaterialNew',QueryUser.FieldByName('Report').AsString)>0 then
      begin
        IsAdmin:=true;
      end;
    end;
  end;
  result:= iRes;
end;
procedure TMaterialNew.BB1Click(Sender: TObject);
var ServerIP:string;
begin
  IF CheckUserID()=true then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from blimits');
      sql.Add('where MKID=''00''  and FORMID=''SN01''');
      sql.Add('and userid='''+USerID.Text+'''');
      active:=true;
    end;
    if query2.RecordCount>0 then
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
      Panel4.Visible:=true;
      Edit1.SetFocus;
    end else
    begin
      showmessage('Userid '''+USerID.Text+''' not authority');
      abort;
    end;
  end else
  begin
    showmessage('USERID or Password not exact');
  end;
end;

procedure TMaterialNew.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    if ShowLimitCK.Checked=true then
        sql.add('select top 100 * from CLZL')
    else
        sql.add('select  * from CLZL');
    sql.add('where CLDH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like');
    sql.add(''''+'%'+edit2.text+'%'+'''');
    sql.add('and YWPM like');
    sql.add(''''+'%'+edit3.text+'%'+'''');
    sql.add('and (YN='+''''+'2'+'''');
    sql.add('or YN='+''''+'3'+''''+')');
    sql.add('order by CLDH');
    active:=true;
  end;
  //panel3.visible:=false;
  panel2.visible:=true;
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
  DBEdit1.SetFocus;
end;

procedure TMaterialNew.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end; 
  if query1.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end
  else begin
    N1.Enabled:=false;
    N2.Enabled:=false;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  BBTT1.Visible:=true;
  DBGrid1.Columns[1].ButtonStyle:=cbsellipsis;
  DBEdit1.SetFocus;
end;

procedure TMaterialNew.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end; 
  if query1.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end
  else begin
    N1.Enabled:=false;
    N2.Enabled:=false;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  BBTT1.Visible:=true;
  DBGrid1.Columns[1].ButtonStyle:=cbsellipsis;
  DBedit1.SetFocus;
end;

procedure TMaterialNew.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  N1.Enabled:=false;
  N2.Enabled:=false;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGrid1.Columns[1].ButtonStyle:=cbsnone;
  N1.Enabled:=false;
  N2.Enabled:=false;
end;

procedure TMaterialNew.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TMaterialNew.BBT2Click(Sender: TObject);
begin
  query1.Prior;
end;

procedure TMaterialNew.BBT3Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TMaterialNew.BBT4Click(Sender: TObject);
begin
  query1.Last;
end;

procedure TMaterialNew.bbt6Click(Sender: TObject);
var   a:string;
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
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TMaterialNew.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TMaterialNew.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TMaterialNew.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;
procedure TMaterialNew.InsertMaterial_LT();
var cldh,clbm,cllb,zwpm,ywpm,dwbh,clzmlb,lycc,xhcl,jkcl,gjlb,cqdh,USERID,YN:string;
    USERDATE:string;
    CLZL_LT,ECLZL_LT:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;
  clbm:=Query1.fieldbyname('clbm').value;
  cllb:=Query1.fieldbyname('cllb').value;
  zwpm:=Query1.fieldbyname('zwpm').value;
  ywpm:=Query1.fieldbyname('ywpm').value;
  dwbh:=Query1.fieldbyname('dwbh').value;
  clzmlb:=Query1.fieldbyname('clzmlb').value;
  lycc:=Query1.fieldbyname('lycc').value;
  xhcl:=Query1.fieldbyname('xhcl').value;
  jkcl:=Query1.fieldbyname('jkcl').value;
  gjlb:=Query1.fieldbyname('gjlb').value;
  cqdh:=Query1.fieldbyname('cqdh').value;
  USERID:=Query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);
  YN:=Query1.fieldbyname('YN').value;
  //20210420 修正
  CLZL_LT:='<SQLServer>,'+DBIP_LT+','+DBName_LT+','+User_lT+','+spassword_LT+'<SQLCommand>,Insert into CLZL (cldh,clbm,cllb,zwpm,ywpm,dwbh,clzmlb,lycc,xhcl,jkcl,gjlb,cqdh,USERID,USERDATE,YN) ';
  CLZL_LT:=CLZL_LT+'select cldh,clbm,cllb,zwpm,ywpm,dwbh,clzmlb,lycc,xhcl,jkcl,gjlb,cqdh,USERID,USERDATE,YN from ( ';
  CLZL_LT:=CLZL_LT+'select  TCLZL.* from Tyxuan.LIY_ERP.dbo.CLZL TCLZL ';
  CLZL_LT:=CLZL_LT+'left join CLZL on CLZL.cldh=TCLZL.cldh ';
  CLZL_LT:=CLZL_LT+'where  TCLZL.CLDH='''+cldh+''' and CLZL.CLDH is null ) TCLZL';
  ECLZL_LT:=EncodeString(CLZL_LT);
  ClientSocket_LT.Socket.SendText(ECLZL_LT);
end;
procedure TMaterialNew.InsertMaterial_TB();
var cldh,clbm,cllb,zwpm,ywpm,dwbh,clzmlb,lycc,xhcl,jkcl,gjlb,cqdh,USERID,YN:string;
    USERDATE:string;
    CLZL_TB,ECLZL_TB:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;
  clbm:=Query1.fieldbyname('clbm').value;
  cllb:=Query1.fieldbyname('cllb').value;
  zwpm:=Query1.fieldbyname('zwpm').value;
  ywpm:=Query1.fieldbyname('ywpm').value;
  dwbh:=Query1.fieldbyname('dwbh').value;
  clzmlb:=Query1.fieldbyname('clzmlb').value;
  lycc:=Query1.fieldbyname('lycc').value;
  xhcl:=Query1.fieldbyname('xhcl').value;
  jkcl:=Query1.fieldbyname('jkcl').value;
  gjlb:=Query1.fieldbyname('gjlb').value;
  cqdh:=Query1.fieldbyname('cqdh').value;
  USERID:=Query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);
  YN:=Query1.fieldbyname('YN').value;
  //20210420 修正
  CLZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,Insert into CLZL (cldh,clbm,cllb,zwpm,ywpm,dwbh,clzmlb,lycc,xhcl,jkcl,gjlb,cqdh,USERID,USERDATE,YN) ';
  CLZL_TB:=CLZL_TB+'select cldh,clbm,cllb,zwpm,ywpm,dwbh,clzmlb,lycc,xhcl,jkcl,gjlb,cqdh,USERID,USERDATE,YN from ( ';
  CLZL_TB:=CLZL_TB+'select  TCLZL.* from Tyxuan.LIY_ERP.dbo.CLZL TCLZL ';
  CLZL_TB:=CLZL_TB+'left join CLZL on CLZL.cldh=TCLZL.cldh ';
  CLZL_TB:=CLZL_TB+'where  TCLZL.CLDH='''+cldh+''' and CLZL.CLDH is null ) TCLZL';
  ECLZL_TB:=EncodeString(CLZL_TB);
  ClientSocket_LT.Socket.SendText(ECLZL_TB);
end;
procedure TMaterialNew.UpdateMaterial_LT();
var cldh,zwpm,ywpm,dwbh,USERID,xhcl:string;
    USERDATE:string;
    CLZL_LT,ECLZL_LT:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;
  zwpm:=Query1.fieldbyname('zwpm').value;
  ywpm:=Query1.fieldbyname('ywpm').value;
  dwbh:=Query1.fieldbyname('dwbh').value;
  xhcl:=Query1.fieldbyname('xhcl').value;
  USERID:=Query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);
  //20210420 修正
  CLZL_LT:='<SQLServer>,'+DBIP_LT+','+DBName_LT+','+User_lT+','+spassword_LT+'<SQLCommand>,update CLZL set zwpm=A.ZWPM, ywpm=A.ywpm, DWBH=A.dwbh, UserID=A.UserID, UserDate=A.UserDate ';
  CLZL_LT:=CLZL_LT+'from ( ';
  CLZL_LT:=CLZL_LT+'select  TCLZL.* from Tyxuan.LIY_ERP.dbo.CLZL TCLZL ';
  CLZL_LT:=CLZL_LT+'left join CLZL on CLZL.cldh=TCLZL.cldh ';
  CLZL_LT:=CLZL_LT+'where  TCLZL.CLDH='''+cldh+''' and TCLZL.YN in (''2'',''3'')  ) A ';
  CLZL_LT:=CLZL_LT+'where A.cldh=CLZL.cldh';
  ECLZL_LT:=EncodeString(CLZL_LT);
  ClientSocket_LT.Socket.SendText(ECLZL_LT);
end;
procedure TMaterialNew.UpdateMaterial_TB();
var cldh,zwpm,ywpm,dwbh,USERID,xhcl:string;
    USERDATE:string;
    CLZL_TB,ECLZL_TB:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;
  zwpm:=Query1.fieldbyname('zwpm').value;
  ywpm:=Query1.fieldbyname('ywpm').value;
  dwbh:=Query1.fieldbyname('dwbh').value;
  xhcl:=Query1.fieldbyname('xhcl').value;
  USERID:=Query1.fieldbyname('USERID').value;
  USERDATE:=formatdatetime('yyyy/mm/dd',Query1.fieldbyname('USERDATE').Value);
  //20210420 修正
  CLZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,update CLZL set zwpm=A.ZWPM, ywpm=A.ywpm, DWBH=A.dwbh, UserID=A.UserID, UserDate=A.UserDate ';
  CLZL_TB:=CLZL_TB+'from ( ';
  CLZL_TB:=CLZL_TB+'select  TCLZL.* from Tyxuan.LIY_ERP.dbo.CLZL TCLZL ';
  CLZL_TB:=CLZL_TB+'left join CLZL on CLZL.cldh=TCLZL.cldh ';
  CLZL_TB:=CLZL_TB+'where  TCLZL.CLDH='''+cldh+''' and TCLZL.YN in (''2'',''3'')  ) A ';
  CLZL_TB:=CLZL_TB+'where A.cldh=CLZL.cldh';
  ECLZL_TB:=EncodeString(CLZL_TB);
  ClientSocket_TB.Socket.SendText(ECLZL_TB);
end;
procedure TMaterialNew.BB5Click(Sender: TObject);
var i:integer;
a:string;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if ((query1.fieldbyname('cllb').isnull) or (query1.fieldbyname('dwbh').isnull)) then
              begin
                showmessage('Pls select material type first.');
                abort;
              end ;
              if (query1.fieldbyname('YWPM').isnull or query1.fieldbyname('ZWPM').isnull) then
              begin
                showmessage('Pls key material name first.');
                abort;
              end else
              begin
              //  check material name exist.
                with tempQ do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select * from clzl where 1=1');
                  sql.Add('and (YWPM ='''+ trim(query1.fieldbyname('YWPM').Value)+''' or ZWPM='''+ trim(query1.fieldbyname('ZWPM').Value)+''')');
                  active:=true;
                  if tempQ.RecordCount>=1 then
                  begin
                    showmessage('Material name has exist!');
                    abort;
                  end else
                  begin
                     with query2 do    //計算材料流水號
                     begin
                       active:=false;
                       sql.Clear;
                       sql.Add('select CLDH from clzl');
                       sql.add(' where CLDH like '+''''+copy(query1.fieldbyname('CLLB').value,0,4)+'%'+'''');
                       sql.add('order by CLDH');
                       active:=true;
                       if recordcount >0 then
                       begin
                         last;
                         a:=fieldbyname('CLDH').AsString;
                         a:=copy(a,5,8);
                         a:=inttostr(strtoint(a)+1);
                         while length(a)<6 do
                         begin
                          a:='0'+a;
                         end;
                       end else
                       begin
                        a:='000001';
                       end;
                       a:=query1.fieldbyname('CLLB').value+a;
                       active:=false;
                     end;
                     query1.edit;
                     query1.fieldbyname('CLDH').value:=a;
                     query1.fieldbyname('CLBM').value:='zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'+a;
                     query1.fieldbyname('CLLB').value:=copy(query1.fieldbyname('CLLB').value,0,4);
                     query1.fieldbyname('clzmlb').value:='N';
                     query1.fieldbyname('lycc').value:='N';
                     query1.fieldbyname('xhcl').value:='Y';
                     query1.fieldbyname('jkcl').value:='N';
                     query1.fieldbyname('gjlb').value:='000';
                     query1.fieldbyname('cqdh').value:='VN';
                     query1.FieldByName('userID').Value:=UserID.Text;
                     query1.FieldByName('userdate').Value:=date;
                     if a<'W' then
                     begin
                      query1.FieldByName('YN').Value:='3';
                     end else
                     begin
                       query1.FieldByName('YN').Value:='2';
                     end;
                     upsql1.apply(ukinsert);
                     InsertMaterial_LT();
                     InsertMaterial_TB();
                   end;
                end;
              end;
            end;
          usmodified:
             begin
               if query1.FieldByName('YN').value='0' then
               begin
                 if query1.FieldByName('USERDATE').value>=date  then
                 begin
                  upsql1.Apply(ukdelete);
                 end else
                 begin
                    showmessage(query1.fieldbyname('CLDH').value+' >1 days,can not delete.');
                 end;
               end else
               begin
                if (
                   ((query1.FieldByName('USERDATE').value>=(date-3600)) and (copy(query1.FieldByName('CLDH').value,1,1)='W'))
                   or ((query1.FieldByName('USERDATE').value>=(date-2) ) and (copy(query1.FieldByName('CLDH').value,1,1)<>'W'))
                   or (IsAdmin=true) // 是管理者
                  ) then
                begin
                  if ((Query1.FieldByName('UserID').Value=userid.Text) or  (IsAdmin=true)) then
                  begin
                  // check material name exist
                    if ((query1.FieldByName('YWPM').Value<> query1.FieldByName('YWPM').OldValue) or (query1.FieldByName('ZWPM').Value<> query1.FieldByName('ZWPM').OldValue)) then
                    begin
                        with tempQ do
                        begin
                          active:=false;
                          sql.Clear;
                          sql.Add('select * from clzl where 1=1');
                          sql.Add('and (YWPM ='''+ trim(query1.fieldbyname('YWPM').Value)+''' and ZWPM='''+ trim(query1.fieldbyname('ZWPM').Value)+''')');
                          active:=true;
                          if tempQ.RecordCount>=1 then
                          begin
                            showmessage('Material name has exist!');
                            abort;
                          end;
                       end;
                    end;
                    query1.edit;
                    query1.FieldByName('userID').Value:=UserID.Text;
                    query1.FieldByName('userdate').Value:=date;
                    upsql1.apply(ukmodify);
                    UpdateMaterial_LT();
                    UpdateMaterial_TB();
                  end else
                  begin
                    showmessage('It is not yours. Can not modify');
                    abort;
                  end;
                end else
                begin
                 showmessage(query1.fieldbyname('CLDH').value+' >3 days,can not modify.');
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
  BBTT1.Visible:=false;
  DBGrid1.Columns[1].ButtonStyle:=cbsnone;
  N1.Enabled:=false;
  N2.Enabled:=false;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TMaterialNew.DBGrid1ColEnter(Sender: TObject);
begin
{if dbgrid1.selectedfield.fieldname<>dbx1.datafield then
  begin
    dbx1.visible:=false;
  end; }
end;
procedure TMaterialNew.MaterialLock_LT();
var cldh:string;
    CLZL_LT,ECLZL_LT:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;

  CLZL_LT:='<SQLServer>,'+DBIP_LT+','+DBName_LT+','+User_lT+','+spassword_LT+'<SQLCommand>,update LIY_ERP.dbo.CLZL';
  CLZL_LT:=CLZL_LT+' set TYJH=''Y'' where cldh='''+cldh+'''';
  ECLZL_LT:=EncodeString(CLZL_LT);
  ClientSocket_LT.Socket.SendText(ECLZL_LT);
end;
procedure TMaterialNew.MaterialLock_TB();
var cldh:string;
    CLZL_TB,ECLZL_TB:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;

  CLZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,update TB_ERP.dbo.CLZL';
  CLZL_TB:=CLZL_TB+' set TYJH=''Y'' where cldh='''+cldh+'''';
  ECLZL_TB:=EncodeString(CLZL_TB);
  ClientSocket_TB.Socket.SendText(ECLZL_TB);
end;
procedure TMaterialNew.N1Click(Sender: TObject);
begin
//if query1.CachedUpdates then
  begin
    with query2 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('update CLZL ');
        sql.add('set TYJH='+''''+'Y'+'''');
        sql.add('where CLDH='+''''+query1.fieldbyname('CLDH').Value+'''');
        execsql;
    end;
    MaterialLock_LT();
    MaterialLock_TB();

    query1.Active:=false;
    query1.Active:=true;
  end;

end;
procedure TMaterialNew.MaterialUnLock_LT();
var cldh:string;
    CLZL_LT,ECLZL_LT:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;

  CLZL_LT:='<SQLServer>,'+DBIP_LT+','+DBName_LT+','+User_lT+','+spassword_LT+'<SQLCommand>,update LIY_ERP.dbo.CLZL';
  CLZL_LT:=CLZL_LT+' set TYJH=''N'' where cldh='''+cldh+'''';
  ECLZL_LT:=EncodeString(CLZL_LT);
  ClientSocket_LT.Socket.SendText(ECLZL_LT);
end;
procedure TMaterialNew.MaterialUnLock_TB();
var cldh:string;
    CLZL_TB,ECLZL_TB:string;
begin
  cldh:=Query1.fieldbyname('cldh').value;

  CLZL_TB:='<SQLServer>,'+DBIP_TB+','+DBName_TB+','+User_TB+','+spassword_TB+'<SQLCommand>,update TB_ERP.dbo.CLZL';
  CLZL_TB:=CLZL_TB+' set TYJH=''N'' where cldh='''+cldh+'''';
  ECLZL_TB:=EncodeString(CLZL_TB);
  ClientSocket_TB.Socket.SendText(ECLZL_TB);
end;
procedure TMaterialNew.N2Click(Sender: TObject);
begin
//if query1.CachedUpdates then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('update CLZL ');
      sql.add('set TYJH='+''''+'N'+'''');
      sql.add('where CLDH='+''''+query1.fieldbyname('CLDH').Value+'''');
      execsql;
    end;
    MaterialUnLock_LT();
    MaterialUnLock_TB();

    query1.Active:=false;
    query1.Active:=true;
  end;
end;

procedure TMaterialNew.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TMaterialNew.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if Query1.cachedupdates then
  begin
    Dbx2.BringToFront;
    if (gdfocused in state) then
    begin
      if (dbgrid1.SelectedField.fieldname=dbx2.datafield) then
      begin
        dbx2.left:=rect.left+dbgrid1.left;
        dbx2.top:=rect.top+dbgrid1.Top;
        dbx2.width:=rect.right-rect.left;
        dbx2.height:=rect.bottom-rect.top;
        dbx2.visible:=true;
      end else
        dbx2.visible:=false;
    end;
  end else
    dbx2.visible:=false;

end;

procedure TMaterialNew.BBTT1Click(Sender: TObject);
begin
  MaterialNew_LB:=TMaterialNew_LB.create(self);
  MaterialNew_LB.show;
end;

procedure TMaterialNew.DBGrid1EditButtonClick(Sender: TObject);
begin
  BBTT1click(nil);
end;

procedure TMaterialNew.FormDestroy(Sender: TObject);
begin
  MaterialNew:=nil;
end;

procedure TMaterialNew.ClientSocket_LTRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Showmessage(Socket.ReceiveText);
end;

procedure TMaterialNew.ClientSocket_TBRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Showmessage(Socket.ReceiveText);
end;

procedure TMaterialNew.UserPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then BB1.Click;
end;

end.


