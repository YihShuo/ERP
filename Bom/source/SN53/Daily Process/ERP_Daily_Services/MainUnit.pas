unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ShellAPI, DB, ADODB, ExtCtrls, Menus,ServicesUnit,IniFiles,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdBaseComponent, IdMessage, ScktComp;
const
  WM_TRAYICON = WM_APP + 0;
 //執行緒
 type
 Tthreadexample=class(TThread)
 public
 procedure execute;override;
 procedure GiveAnswer;
 end;
type
  TMainForm = class(TForm)
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ADOConn: TADOConnection;
    ADOQuery: TADOQuery;
    ExeQuery: TADOQuery;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    ServerSocket: TServerSocket;
    DB_Conn: TADOConnection;
    ADOCommand: TADOQuery;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClforose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure ServerSocketClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure ServerSocketClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    //發信人
    tmpBodyScript:TStringlist;  
    MailServerIP:string;
    MailServerUser:string;
    MailServerPass:string;
    ToMailAddr:string;
    MailServerPort:integer;
    //
    DBIP,DBName,User,Pass:string;
    RunTime:String;
    ExeTime:array [0..9] of String;
    ExeAP:array [0..9] of String;
    SocketServerPort:integer;
    { Private declarations }
    procedure ReadIni();
    procedure CopyDDZL_XXZLData();
    procedure bSendMail(ToMailAddr:string;ToCCMail:string;FromMailAddr:string;MailTitle:string);

  public
    procedure AddPaoServiceIcon(Action: DWORD);
    procedure WMTrayIcon(var message: TMessage);  message WM_TRAYICON;
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  IconData:TNotifyIconData ;
  IconShowint:integer;//ICON顯示秒數
implementation
  uses FunUnit,EncdDecd;
{$R *.dfm}
//發信
procedure TMainForm.bSendMail(ToMailAddr:string;ToCCMail:string;FromMailAddr:string;MailTitle:string);
var Attachment    :TIdAttachment;  //夾帶檔案
    i:integer;
begin
//SMTP server 認證的方式
  //IdSMTP1.AuthenticationType := atNone; //不需認證方式

  //IdSMTP1.AuthType := atNone; {Simple Login}
  IdSMTP1.Username := MailServerUser; //認證帳號
  IdSMTP1.Password := MailServerPass; //認證密碼
  IdSMTP1.Host := MailServerIP; //送信主機 XXX03
  IdSMTP1.Port := MailServerPort; //送信主機PORT
  IdSMTP1.Connect; //網路連結smtp主機
  try
    IdSMTP1.Authenticate;
   // ShowMessage('login OK'); //顯示成功
    IdSMTP1.Disconnect;
  except
    on e : exception do //例外處理的
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Mail錯誤:'+E.Message);
      IdSMTP1.Disconnect; //關閉網路連結
    end;
  end;
 try
      with IdMessage1 do //Mail內容
      begin
        Clear; // 清除前一次產生的 body & headerm, 以免第二次按時重複

        if tmpBodyScript.Count=0 then
        begin
          //Body.Add(' Alert DueDate'); //內容1
        end else
        begin
          for i:=0 to tmpBodyScript.Count-1 do
          begin
            Body.Add(tmpBodyScript.Strings[i]); //內容1
          end;
        end;
        IdMessage1.ContentType:='text/html';
        //Body.Add(' Test'); //內容2
        //Body.Add(datetimetostr(now)); //內容3

        From.Text := FromMailAddr; //寄件者(的Mail) vrSender

        Recipients.EMailAddresses := ToMailAddr;
        CCList.EMailAddresses:=ToCCMail;
        //
        //TIdAttachment.Create(MessageParts, 'C:\1.txt');
        //Attachment:=TIdAttachmentFile.Create(IdMessage1.MessageParts, 'C:/1.txt');
        //Attachment.FileName:='test.txt';
        //
        Subject :=MailTitle; //信件標題
      end;
      IdSMTP1.Connect;
      IdSMTP1.Send(IdMessage1);
     // caption:='msg_send_ok';
      IdSMTP1.Disconnect;
 except
    on e : exception do //例外處理的
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Mail錯誤:'+E.Message);
      IdSMTP1.Disconnect; //關閉網路連結
    end;
 end;
end;

procedure Tthreadexample.Execute;
begin
  {要執行的...事件  button1.click1中加入  var obj:Tthreadexample obj:=Tthreadexample.create(false);  即可    }
  Synchronize(GiveAnswer); // 宣告完成
end;

procedure Tthreadexample.GiveAnswer;
begin

end;
//
procedure TMainForm.ReadIni();
var ini:TiniFile;
    i:integer;
begin

  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Setting.ini');
    DBIP:=ini.ReadString('DB','IP','127.0.0.1');
    DBName:=ini.ReadString('DB','Database','LIY_ERP');
    User:=ini.ReadString('DB','User','sa');
    Pass:=ini.ReadString('DB','Pass','jack');
    RunTime:=ini.ReadString('Setting','ExeTime','');
    //
    MailServerIP := Ini.ReadString( 'MailServer', 'IP', '192.168.23.6');
    MailServerUser := Ini.ReadString( 'MailServer', 'User', '');
    MailServerPass := Ini.ReadString( 'MailServer', 'Pass', '');
    MailServerPort := strtoint(Ini.ReadString( 'MailServer', 'Port', '25'));
    ToMailAddr := Ini.ReadString( 'MailServer', 'ToMailAddr', '');
    //
    SocketServerPort:=Ini.ReadInteger('ServerSocket','Port', 1434);

    for i:=0 to High(ExeTime) do
    begin
      ExeTime[i]:=ini.ReadString('Setting'+inttostr(i),'ExeTime','');
      ExeAP[i]:=ini.ReadString('Setting'+inttostr(i),'ExeAP','');
    end;
    ADOCOnn.ConnectionString:='Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Provider=SQLOLEDB.1;Password='+Pass+';Persist Security Info=True;User ID='+User+';Initial Catalog='+DBName+';Data Source='+DBIP;
  Finally
    ini.Free;
  end;

end;
//
procedure TMainForm.AddPaoServiceIcon(Action: DWORD);

begin
   ZeroMemory(@IconData, sizeof(TNOTIFYICONDATA));
   IconData.cbSize:=sizeof(TNOTIFYICONDATA);
   IconData.Wnd:=Handle;
   IconData.uID:=1;
   IconData.uFlags := NIF_MESSAGE or NIF_ICON or NIF_TIP;
   IconData.uCallbackMessage:=WM_TRAYICON;
   IconData.hIcon:=application.Icon.Handle;
   StrPCopy(IconData.szTip,application.Title);
   Shell_NotifyIcon(Action, @IconData);
end;
procedure TMainForm.WMTrayIcon(var message: TMessage);
var MousePos:Tpoint;
begin
  if message.LPARAM = WM_RBUTTONDOWN then
  begin
    SetActiveWindow(Handle);
    GetCursorPos(MousePos);
    PopupMenu1.Popup(MousePos.X, MousePos.Y);
  end;
end;
procedure TMainForm.FormDestroy(Sender: TObject);
begin
  AddPaoServiceIcon(NIM_DELETE);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if(CanClose<>true) then
   begin
      Hide();
   end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

  AddPaoServiceIcon(NIM_ADD);
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ReadIni();
  ServerSocket.Port:=SocketServerPort;
  ServerSocket.Active:=true;


  tmpBodyScript:=TStringlist.Create;
end;

procedure TMainForm.FormClforose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.Hide();
  tmpBodyScript.Free;
  FuncObj.Free;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
var timeStr:string;
    i:integer;
begin

 Timer1.Enabled:=false;
 if IconShowint<900 then
 begin
   AddPaoServiceIcon(NIM_ADD);
   IconShowint:=IconShowint+1;
 end;
 //
 timeStr:=FormatDateTime('HH:NN:SS',Time());
 if RunTime=timeStr then
 begin
   CopyDDZL_XXZLData();
 end;
 //
 for i:=0 to High(ExeTime) do
 begin
   if ExeTime[i]=timeStr then
   begin
     setCurrentDir(ExtractFilePath(ExeAP[i]));
     funcObj.StartAP(ExeAP[i]);
   end;
 end;
 Timer1.Enabled:=true;

end;

procedure TMainForm.N1Click(Sender: TObject);
begin
  MainForm.Show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  MainForm.Hide;
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
  ServiceModule.ServiceShutdown(ServiceModule);
end;
//
procedure TMainForm.CopyDDZL_XXZLData();
var i:integer;
    DDZL_XXZLYN,SQLText:string;
begin
  //
  try
  //20151120 修改領料更新一次 滿箱入庫更新一次  有時候訂單因倉庫不夠用 手動更新沒滿箱入庫 才發現沒資料
  ADOQuery.Active:=false;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('Select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,KCLL.SCBH,DDZL_XXZL.YN,ZLZL.YLBB  from DDZL ');
  ADOQuery.SQL.Add('Left join KCLL on KCLL.SCBH=DDZL.DDBH ');
  ADOQuery.SQL.Add('Left join DDZL_XXZL on DDZL_XXZL.DDBH=DDZL.DDBH and DDZL.XieXing=DDZL_XXZL.XieXing and DDZL.SheHao=DDZL_XXZL.SheHao ');
  ADOQuery.SQL.Add('left join ZLZL on ZLZL.ZLBH=DDZL.DDBH ');
  ADOQuery.SQL.Add('where DDZL.ShipDate>GetDate()-30 and ( (DDZL.YN=1 and KCLL.SCBH is not null and DDZL_XXZL.DDBH is null)   or (DDZL.YN=2 and (DDZL_XXZL.DDBH is null or DDZL_XXZL.YN=''0'') ) ) ');
  ADOQuery.SQL.Add('Group by DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,KCLL.SCBH,DDZL_XXZL.YN,ZLZL.YLBB    ');
  ADOQuery.Active:=true;
  if ADOQuery.RecordCount>0 then
  begin
    funcObj.WriteErrorLog(Datetimetostr(now)+' start');
    for i:=0 to ADOQuery.RecordCount-1 do
    begin
      //DDZL_XXZL
      if ADOQuery.FieldByname('YN').Asstring='' then DDZL_XXZLYN:='0' else DDZL_XXZLYN:=ADOQuery.FieldByname('YN').Asstring;
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_XXZL where DDZL_XXZL.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_XXZL.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_XXZL.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+''' ');
        SQL.Add('Insert into DDZL_XXZL ');
        SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',XieXing, SheHao, XieMing, YSSM, JiJie, CLID, ARTICLE, BZCC, XieGN, KFCQ, LOGO,KHDH, CCGB, ');
        SQL.Add('       XTGJ, XTMH, DMGJ, DDMH, MSGJ, MDMH, DAOGJ, DAOMH, IMGName, Currency, QPrice, OPrice, IPrice, CPrice, USERID, USERDATE, KFXXCZ, KFXXCZ1, KFXXCZ2, KFXXCZ3, GENDER ,'''+DDZL_XXZLYN+''' , xxlock,  GetDate()');
        SQL.Add('from XXZL where XXZL.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and XXZL.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' ');
        ExeQuery.ExecSQL();
      end;
      //DDZL_XXZLS
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_XXZLS where DDZL_XXZLS.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_XXZLS.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_XXZLS.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+'''  ');
        SQL.Add('Insert into DDZL_XXZLS ');
        SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',*,GetDate() from XXZLS where XXZLS.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and XXZLS.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' ');
        ExeQuery.ExecSQL();
      end;
      //DDZL_xtbwyl
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_xtbwyl where DDZL_xtbwyl.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_xtbwyl.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_xtbwyl.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+'''  ');
        if ADOQuery.FieldByname('YLBB').Asstring='A' then
        begin
          SQL.Add('Insert into DDZL_xtbwyl ');
          SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',xtbwyl.*,GetDate() from xtbwyl,DDZL,DDZLS where DDZL.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+''' and DDZL.DDBH=DDZLS.DDBH and xtbwyl.XieXing=DDZL.XieXing and xtbwyl.SheHao=DDZL.SheHao and xtbwyl.XTCC=DDZLS.CC ');
        end;
        ExeQuery.ExecSQL();
      end;
      //DDZL_xtbwyl1
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_xtbwyl1 where DDZL_xtbwyl1.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_xtbwyl1.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_xtbwyl1.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+'''  ');
        if ADOQuery.FieldByname('YLBB').Asstring='B' then
        begin
          SQL.Add('Insert into DDZL_xtbwyl1 ');
          SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',xtbwyl1.*,GetDate() from xtbwyl1,DDZL,DDZLS where DDZL.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+''' and DDZL.DDBH=DDZLS.DDBH and xtbwyl1.XieXing=DDZL.XieXing and xtbwyl1.SheHao=DDZL.SheHao and xtbwyl1.XTCC=DDZLS.CC ');
        end;
        ExeQuery.ExecSQL();
      end;
      //
      funcObj.WriteErrorLog(datetimetostr(now)+' Order No:'+ADOQuery.FieldByname('DDBH').Asstring);
      ADOQuery.Next;
    end;
    funcObj.WriteErrorLog(Datetimetostr(now)+' ending');
  end else
  begin
    funcObj.WriteErrorLog(Datetimetostr(now)+' No Order, ending.');
  end;
  ADOQuery.Active:=false;
  tmpBodyScript.Clear;
  //20170712 更新同步ZLZLS2 最新資料到 DDZL_ZLZLS2
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update DDZL_ZLZLS2 Set ');
    SQL.Add('DDZL_ZLZLS2.CSBH=ZLZLS2.CSBH,DDZL_ZLZLS2.MJBH=ZLZLS2.MJBH,DDZL_ZLZLS2.CLSL=ZLZLS2.CLSL,DDZL_ZLZLS2.USAGE=ZLZLS2.USAGE,DDZL_ZLZLS2.USERID=''SYSTEM'',DDZL_ZLZLS2.USERDATE=ZLZLS2.USERDATE');
    SQL.Add('from (');
    SQL.Add('select A.ZLBH,A.BWBH,A.CSBH,A.MJBH,A.CLBH,A.CLSL,A.USAGE,A.SIZE,A.YN,A.USERID,A.USERDATE');
    SQL.Add('from ZLZLS2 A');
    SQL.Add('left join DDZL on DDZL.DDBH=A.ZLBH');
    SQL.Add('left join DDZL_ZLZLS2 B on A.ZLBH=B.ZLBH and A.CLBH=B.CLBH ');
    SQL.Add('   and A.BWBH=B.BWBH and A.SIZE=B.SIZE and A.YN=B.YN  ');
    SQL.Add('where  A.USERDATE>GetDate()-3 and (A.CLSL<>B.CLSL or A.USAGE<>B.USAGE or A.CSBH<>B.CSBH or A.MJBH<>B.MJBH ) and (DDZL.YN=1 or DDZL.YN=2)');
    SQL.Add('       and( ( B.USERID=''SYSTEM'' and A.USERDATE>B.USERDATE )');
    SQL.Add('           or ( B.USERID<>''SYSTEM'' and A.USERID=B.USERID  and A.USERDATE>B.USERDATE)        ');
    SQL.Add('          ) ) ZLZLS2  where  ZLZLS2.ZLBH=DDZL_ZLZLS2.ZLBH and ZLZLS2.CLBH=DDZL_ZLZLS2.CLBH ');
    SQL.Add('   and ZLZLS2.BWBH=DDZL_ZLZLS2.BWBH and ZLZLS2.SIZE=DDZL_ZLZLS2.SIZE and ZLZLS2.YN=DDZL_ZLZLS2.YN  ');
    SQLText:=SQL.Text;
    //funcObj.WriteErrorLog(SQL.Text);
    ExeQuery.ExecSQL();
    Active:=false;
    SQL.Clear;
    SQL.Add('select A.ZLBH,A.BWBH,A.CSBH,A.MJBH,A.CLBH,A.CLSL,A.USAGE,A.SIZE,A.YN,A.USERID,A.USERDATE');
    SQL.Add('from ZLZLS2 A');
    SQL.Add('left join DDZL on DDZL.DDBH=A.ZLBH');
    SQL.Add('left join DDZL_ZLZLS2 B on A.ZLBH=B.ZLBH and A.CLBH=B.CLBH ');
    SQL.Add('   and A.BWBH=B.BWBH and A.SIZE=B.SIZE and A.YN=B.YN  ');
    SQL.Add('where  A.USERDATE>GetDate()-3 and (A.CLSL<>B.CLSL or A.USAGE<>B.USAGE or A.CSBH<>B.CSBH or A.MJBH<>B.MJBH ) and (DDZL.YN=1 or DDZL.YN=2)');
    SQL.Add('       and( ( B.USERID=''SYSTEM'' and A.USERDATE>B.USERDATE )');
    SQL.Add('           or ( B.USERID<>''SYSTEM'' and A.USERID=B.USERID  and A.USERDATE>B.USERDATE)        ');
    SQL.Add('          ) ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      tmpBodyScript.Add('Update DDZL_ZLZLS2 Fail, Pls Check  '+SQLText)
    end;
    Active:=false;
  end;

  //更新刪除已取消
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete from DDZL_ZLZLS2');
    SQL.Add('from (');
    SQL.Add('select DDZL_ZLZLS2.ZLBH,DDZL_ZLZLS2.CLBH,DDZL_ZLZLS2.BWBH,DDZL_ZLZLS2.SIZE,DDZL_ZLZLS2.YN from  DDZL_ZLZLS2 ');
    SQL.Add('left join DDZL on DDZL.DDBH=DDZL_ZLZLS2.ZLBH');
    SQL.Add('left join ZLZLS2 ');
    SQL.Add('on ZLZLS2.ZLBH=DDZL_ZLZLS2.ZLBH and ZLZLS2.CLBH=DDZL_ZLZLS2.CLBH');
    SQL.Add('and ZLZLS2.BWBH=DDZL_ZLZLS2.BWBH and ZLZLS2.SIZE=DDZL_ZLZLS2.SIZE and ZLZLS2.YN=DDZL_ZLZLS2.YN ');
    SQL.Add('where  ZLZLS2.BWBH is null  and DDZL_ZLZLS2.USERID=''SYSTEM''  and DDZL.YN in (''1'',''2'') and DDZL.ShipDate>GetDate()  ');
    SQL.Add(') ZL where ZL.ZLBH=DDZL_ZLZLS2.ZLBH and ZL.CLBH=DDZL_ZLZLS2.CLBH');
    SQL.Add('and ZL.BWBH=DDZL_ZLZLS2.BWBH and ZL.SIZE=DDZL_ZLZLS2.SIZE and ZL.YN=DDZL_ZLZLS2.YN ');
    SQLText:=SQL.Text;
    //funcObj.WriteErrorLog(SQL.Text);
    ExeQuery.ExecSQL();
    Active:=false;
    SQL.Clear;
    SQL.Add('select DDZL_ZLZLS2.ZLBH,DDZL_ZLZLS2.CLBH,DDZL_ZLZLS2.BWBH,DDZL_ZLZLS2.SIZE,DDZL_ZLZLS2.YN from  DDZL_ZLZLS2 ');
    SQL.Add('left join DDZL on DDZL.DDBH=DDZL_ZLZLS2.ZLBH');
    SQL.Add('left join ZLZLS2 ');
    SQL.Add('on ZLZLS2.ZLBH=DDZL_ZLZLS2.ZLBH and ZLZLS2.CLBH=DDZL_ZLZLS2.CLBH');
    SQL.Add('and ZLZLS2.BWBH=DDZL_ZLZLS2.BWBH and ZLZLS2.SIZE=DDZL_ZLZLS2.SIZE and ZLZLS2.YN=DDZL_ZLZLS2.YN ');
    SQL.Add('where  ZLZLS2.BWBH is null  and DDZL_ZLZLS2.USERID=''SYSTEM'' and DDZL.YN in (''1'',''2'') and DDZL.ShipDate>GetDate()  ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      tmpBodyScript.Add('Delete DDZL_ZLZLS2 Fail, Pls Check  '+SQLText);
    end;
    Active:=false;
  end;
  //新增
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Insert into  DDZL_ZLZLS2');
    SQL.Add('select ZLZLS2.ZLBH,ZLZLS2.XH,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZMLB,');
    SQL.Add('       ZLZLS2.SIZE,ZLZLS2.CLSL,ZLZLS2.USAGE,''SYSTEM'' as USERID,ZLZLS2.USERDATE,ZLZLS2.YN from  ZLZLS2 ');
    SQL.Add('left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('left join DDZL_ZLZLS2 on ZLZLS2.ZLBH=DDZL_ZLZLS2.ZLBH and ZLZLS2.CLBH=DDZL_ZLZLS2.CLBH ');
    SQL.Add('and ZLZLS2.BWBH=DDZL_ZLZLS2.BWBH and ZLZLS2.SIZE=DDZL_ZLZLS2.SIZE and ZLZLS2.YN=DDZL_ZLZLS2.YN ');
    SQL.Add('where  DDZL.YN in (''1'',''2'')  and DDZL_ZLZLS2.BWBH is null  and ((ZLZLS2.YN=1) or (ZLZLS2.YN=2)) and ZLZLS2.USERDATE>GetDate()-7 ');
    SQLText:=SQL.Text;
    //funcObj.WriteErrorLog(SQL.Text);
    ExeQuery.ExecSQL();
    Active:=false;
    SQL.Clear;
    SQL.Add('select ZLZLS2.* from  ZLZLS2 ');
    SQL.Add('left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('left join DDZL_ZLZLS2 on ZLZLS2.ZLBH=DDZL_ZLZLS2.ZLBH and ZLZLS2.CLBH=DDZL_ZLZLS2.CLBH ');
    SQL.Add('and ZLZLS2.BWBH=DDZL_ZLZLS2.BWBH and ZLZLS2.SIZE=DDZL_ZLZLS2.SIZE and ZLZLS2.YN=DDZL_ZLZLS2.YN ');
    SQL.Add('where  DDZL.YN in (''1'',''2'')  and DDZL_ZLZLS2.BWBH is null  and ((ZLZLS2.YN=1) or (ZLZLS2.YN=2)) and ZLZLS2.USERDATE>GetDate()-7 ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      tmpBodyScript.Add('Insert DDZL_ZLZLS2 Fail, Pls Check:  '+SQLText);
    end;
    Active:=false;
  end;
  funcObj.WriteErrorLog(Datetimetostr(now)+'SQL Update ending');
  except
    on E:Exception do
    begin
      ADOConn.Connected:=false;
      tmpBodyScript.Add(datetimetostr(now)+' '+E.Message);
      funcObj.WriteErrorLog(datetimetostr(now)+' '+E.Message);
    end;
  end;
  //Check and Mail
  if tmpBodyScript.Text<>'' then
      bSendMail(ToMailAddr,'','weston@tyxuan.com.vn','ERP Daily SHIPPING ZLZLS2  Exception');
  ADOConn.Connected:=false;
end;
//
procedure TMainForm.ServerSocketClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode:=0;
end;

procedure TMainForm.ServerSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var i,j:integer;
    InfoList,paraList,InfoConnect:TStringlist;
    SQLServer,SQLCommand:String;
    ServerIP,ServerDB,ServerUser,ServerPass: String;
    Rece,DeRece:String;
begin

  Rece:= Socket.ReceiveText;
  DeRece:=DecodeString(Rece);
  InfoList:=TStringlist.create;
  InfoList:=funcObj.SplitString2(DeRece,'<');
  paraList:=TStringlist.create;
  for i := 0 to InfoList.Count-1 do
  begin
    paraList:=funcObj.SplitString2(InfoList.strings[i],',');
    if  paraList[0]='<SQLServer>' then
    begin
      SQLServer:=copy(InfoList[i],12,Length(InfoList[i]));
      InfoConnect := TStringList.Create;
      InfoConnect.Delimiter:=',';
      InfoConnect.DelimitedText:=SQLServer;
      ServerIP:=InfoConnect[1];
      ServerDB:=InfoConnect[2];
      ServerUser:=InfoConnect[3];
      ServerPass:=InfoConnect[4];
      DB_Conn.Connected:=false;
      DB_Conn.ConnectionString:='Provider=SQLOLEDB.1;Password='+ServerPass+';Persist Security Info=True;Provider=SQLOLEDB.1;Password='+ServerPass+';Persist Security Info=True;User ID='+ServerUser+';Initial Catalog='+ServerDB+';Data Source='+ServerIP;
      funcobj.WriteErrorLog(SQLServer);
    end;
    if  paraList[0]='<SQLCommand>' then
    begin
      SQLCommand:=copy(InfoList[i],14,Length(InfoList[i]));
      with ADOCommand do
      begin
        active:=false;
        sql.Clear;
        sql.Add(SQLCommand);
        funcobj.WriteErrorLog(SQLCommand);
        execsql;
      end;
      for j:=0 to ServerSocket.Socket.ActiveConnections-1 do
      begin
       if  ServerSocket.Socket.Connections[j].SocketHandle=Socket.SocketHandle then
       begin
         ServerSocket.Socket.Connections[j].SendText('reponse:'+'<SQLCommandOK>');
       end;
      end;
    end;
  end;
end;

end.
