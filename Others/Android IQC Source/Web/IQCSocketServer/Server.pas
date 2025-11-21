unit Server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls,shellapi , Menus, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP ,IniFiles;

const
  WM_TRAYICON = WM_APP + 0;  
type
  TIQCServerForm = class(TForm)
    ServerSocket: TServerSocket;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Close1: TMenuItem;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    Button1: TButton;
    Show1: TMenuItem;
    procedure ServerSocketClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ServerSocketClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Close1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
  private
     AppDir:string;
     FromMail:string;
     MailServerIP:string;
     MailServerUser:string;
     MailServerPass:string;
     MailServerPort:integer;
    //發信內容
    tmpBodyScript:TStringlist;
    { Private declarations }
    procedure ReadIni();
    function Read_A01_AndonMail(WriteStr:string):boolean;
    procedure Write_A01_AndonMail(WriteStr:string);
    procedure AlertAndonMailContext(LeanNo:string;EnStr:string;VietStr:string);
    procedure bSendMail(ToMailAddr:string;ToCCMail:string;FromMailAddr:string;MailTitle:string);
  public
    IsCanClose:boolean;
    { Public declarations }
    procedure AddPaoServiceIcon(Action: DWORD);
    procedure WMTrayIcon(var message: TMessage);  message WM_TRAYICON;
  end;

var
  IQCServerForm: TIQCServerForm;
  IconData:TNotifyIconData ;
implementation
   uses FunUnit;
{$R *.dfm}


procedure TIQCServerForm.AddPaoServiceIcon(Action: DWORD);
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
//
procedure TIQCServerForm.WMTrayIcon(var message: TMessage);
var MousePos:Tpoint;
begin
  if message.LPARAM = WM_RBUTTONDOWN then
  begin
    SetActiveWindow(Handle);
    GetCursorPos(MousePos);
    PopupMenu1.Popup(MousePos.X, MousePos.Y);
  end;
end;

procedure TIQCServerForm.ServerSocketClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode:=0;
end;
//設定檔
procedure TIQCServerForm.ReadIni();
var ini:TiniFile;
    ExeTimeStr:String;
    tmpList:TStringlist;
    i:integer;
begin
  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Setting.ini');
    //
    MailServerIP := Ini.ReadString( 'MailServer', 'IP', '');
    MailServerUser := Ini.ReadString( 'MailServer', 'User', '');
    MailServerPass := Ini.ReadString( 'MailServer', 'Pass', '');
    MailServerPort := strtoint(Ini.ReadString( 'MailServer', 'Port', '25'));
    //
    FromMail:=Ini.ReadString( 'Setting', 'FromMail', 'LYN_ERP<weston@tyxuan.com.vn>');
    //
  Finally
    ini.Free;
  end;
end;
//發信
procedure TIQCServerForm.bSendMail(ToMailAddr:string;ToCCMail:string;FromMailAddr:string;MailTitle:string);
var Attachment    :TIdAttachment;  //夾帶檔案
    i:integer;
    IdBody,IdHTML:TidText;
    FTextBody:TStringList;
begin

  IdSMTP1.Username := MailServerUser;
  IdSMTP1.Password := MailServerPass;
  IdSMTP1.Host := MailServerIP;
  IdSMTP1.Port := MailServerPort;
  IdSMTP1.Connect;
  try
    IdSMTP1.Authenticate;
    IdSMTP1.Disconnect;
  except
    on e : exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Mail錯誤:'+E.Message);
      IdSMTP1.Disconnect;
    end;
  end;
 try
      with IdMessage1 do
      begin
        Clear;
        IdMessage1.CharSet := 'Big-5';
        IdMessage1.ContentType:='multipart/mixed';
        IdMessage1.Encoding :=meMIME;
        //
        IdBody:=TIdText.Create(IdMessage1.MessageParts);
        IdBody.ContentType:='text/plain';
        FTextBody:=TStringlist.Create;
        FTextBody.Add('');
        if FTextBody<>nil then IdBody.Body.Assign(FTextBody);
        IdBody.Body.Add('');    //   Add   more   to   the   plain-text   bodypart.
        //   Create   HTML   body.
        if tmpBodyScript<>nil then
        begin
          if tmpBodyScript.Count>0 then
          begin
            IdHTML   :=   TIdText.Create(IdMessage1.MessageParts);
            IdHTML.ContentType   :=   'text/html';
            IdHTML.Body.Assign(tmpBodyScript);
          end;
        end;
        //
        FTextBody.Free;
        //
        if FileExists(AppDir+MailTitle+'.xls')=true then
          Attachment := TIdAttachment.Create(IdMessage1.MessageParts, AppDir+MailTitle+'.xls');
        From.Text := FromMailAddr;
        Recipients.EMailAddresses := ToMailAddr;
        CCList.EMailAddresses:=ToCCMail;
        //
      end;
      IdMessage1.Subject :=FormatDateTime('YYYY/MM/DD',Date())+' '+MailTitle;
      IdSMTP1.Connect;
      IdSMTP1.Send(IdMessage1);

      IdSMTP1.Disconnect;
 except
    on e : exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Mail錯誤:'+E.Message);
      IdSMTP1.Disconnect;
    end;
 end;
end;

procedure TIQCServerForm.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,AppDir);
  ServerSocket.Active:=true;
  Label1.Caption:='IQC Server:'+inttostr(ServerSocket.Port);
  //
  ReadIni();
  tmpBodyScript:=TStringlist.Create;
  //產生右下角icon
  IsCanClose:=false;
  AddPaoServiceIcon(NIM_ADD);
  //隱藏主視窗
  Application.ShowMainForm:=false;//
end;

procedure TIQCServerForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FuncObj.Free;
  tmpBodyScript.Free;
  AddPaoServiceIcon(NIM_DELETE);
end;
//
//記錄觸發
procedure TIQCServerForm.Write_A01_AndonMail(WriteStr:string);
var TF:Textfile;
    strFileName:string;
    tempstr:string;
begin
   strFileName:=AppDir+'A01_AndonMail.txt';
   WriteStr:=trim(WriteStr);
   AssignFile(TF, strFileName);
   if FileExists(strFileName) then
   begin
     Append(TF);
   end else
   begin
     ReWrite(TF);
   end;
   Writeln(TF, WriteStr );
   CloseFile(TF);
end;
//檢查是否發送
function TIQCServerForm.Read_A01_AndonMail(WriteStr:string):boolean;
var tmpList:TStringlist;
    tmpRes:boolean;
    i:integer;
begin
   tmpRes:=false;
   if FileExists(AppDir+'A01_AndonMail.txt')=true then
   begin
     tmpList:=TStringlist.Create;
     tmpList.LoadFromFile(AppDir+'A01_AndonMail.txt');
     for i:=0 to tmpList.Count-1 do
     begin
       if tmpList.Strings[i]=WriteStr then
       begin
         tmpRes:=true;
         break;
       end;
     end;
     tmpList.Free;
   end;
   result:=tmpRes;
end;
//
procedure TIQCServerForm.ServerSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var MailTitle,Str:string;
    tmpList,MailUserList:TStringlist;
    MailUserString:string;
    i:integer;
begin
  //
  str:=Socket.ReceiveText;
  tmpList:=funcObj.SplitString(str,',');
  if tmpList.Count>=3 then
  begin
    if tmpList.Strings[0]='<CopyFile>' then
    begin
      if FileExists(tmpList.Strings[1])=true then
      begin
        if(not DirectoryExists( ExtractFilePath(tmpList.Strings[2]) ))  then ForceDirectories(ExtractFilePath(tmpList.Strings[2]));
        CopyFile(PChar(tmpList.Strings[1]),PChar(tmpList.Strings[2]),true);
        funcObj.WriteErrorLog(datetimetostr(now)+' '+tmpList.Strings[1]+' => '+tmpList.Strings[2]);
      end;
      Socket.SendText('<OK>');
    end;
    if tmpList.Strings[0]='<A01_AndonMail>' then
    begin
      //
      if Read_A01_AndonMail(tmpList.Strings[2]+','+FormatDateTime('YYYYMMDD',Date())+'/'+tmpList.Strings[1] )=false then
      begin
        MailTitle:='系統自動通知:A12品管-品檢不良超標(ERP System Mail:A12 QC-Defect Excessive)';
        if FileExists(AppDir+'A01_AndonMailUser.txt')=true then
        begin
          MailUserList:=TStringlist.Create;
          MailUserList.LoadFromFile(AppDir+'A01_AndonMailUser.txt');
          for i:=0 to MailUserList.Count-1 do
          begin
            MailUserString:=MailUserString+MailUserList.Strings[i]+';';
          end;
          MailUserList.Free;
        end;
        AlertAndonMailContext(tmpList.Strings[2],StringReplace(tmpList.Strings[3],'@',',',[rfReplaceAll, rfIgnoreCase]),StringReplace(tmpList.Strings[4],'@',',',[rfReplaceAll, rfIgnoreCase]));
        bSendMail(MailUserString,'',FromMail,MailTitle);
        funcObj.WriteErrorLog(Datetimetostr(now)+': '+MailTitle);
        Socket.SendText('<OK>');
        //紀錄
        Write_A01_AndonMail(tmpList.Strings[2]+','+FormatDateTime('YYYYMMDD',Date())+'/'+tmpList.Strings[1]);
      end;
    end;
  end;
  tmpList.Free;
  //
end;
//Lean線
procedure TIQCServerForm.AlertAndonMailContext(LeanNo:string;EnStr:string;VietStr:string);
var i:integer;
    tmpHtml:TStringlist;
begin
     //
     tmpBodyScript.Clear;
     if FileExists(AppDir+'Head.txt')=true then
     begin
       tmpHtml:=TStringlist.Create;
       tmpHtml.LoadFromFile(AppDir+'Head.txt');
       for i:=0 to tmpHtml.Count-1 do
       begin
         tmpBodyScript.Add(tmpHtml.Strings[i]);
       end;
       tmpHtml.Free;
     end;
     //
     tmpBodyScript.Add('此郵件內容是ERP系統發出，請勿回覆郵件，謝謝<br>This mail is sent by the ERP system. Please do not reply, Thanks.<br>');
     tmpBodyScript.Add('<table border="1" cellpadding="0" cellspacing="0" width="768" >');
     //抬頭名稱
     tmpBodyScript.Add('<tr bgcolor="#99CCFF" align="center" > ');
     tmpBodyScript.Add('<td class="t1 style1"><div align="left">英文：'+LeanNo+'  has been stopped line due to：'+EnStr+', defect qty reach the threshold </div></td> ');
     tmpBodyScript.Add('</tr> ');
     tmpBodyScript.Add('<tr  align="center" >');
     tmpBodyScript.Add('<td class="t2 style1"><div align="left">越文<span class="t1 style1">：'+LeanNo+' </span><SPAN lang="EN-US">Bi ngung chuyen do：'+VietStr+', vuot loi so voi tieu chuan loi </SPAN></div></td> ');
     tmpBodyScript.Add('</tr> ');
     tmpBodyScript.Add('</table> ');
     //
     if FileExists(AppDir+'Footer.txt')=true then
     begin
       tmpHtml:=TStringlist.Create;
       tmpHtml.LoadFromFile(AppDir+'Footer.txt');
       for i:=0 to tmpHtml.Count-1 do
       begin
         tmpBodyScript.Add(tmpHtml.Strings[i]);
       end;
       tmpHtml.Free;
     end;

end;
//
procedure TIQCServerForm.ServerSocketClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  funcObj.WriteErrorLog(datetimetostr(now)+' Disconnect');
end;

procedure TIQCServerForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if IsCanClose=true then CanClose:=true else CanClose:=false;
   if(CanClose<>true) then
   begin
      Hide();
   end;
end;

procedure TIQCServerForm.Close1Click(Sender: TObject);
begin
  IsCanClose:=true;
  Close;
end;

procedure TIQCServerForm.Button1Click(Sender: TObject);
var MailTitle,Str:string;
    tmpList:TStringlist;
    MailUserList:string;
begin
  MailTitle:='系統自動通知:A12品管-品檢不良超標(ERP System Mail:A12 QC-Defect Excessive)';
  MailUserList:='<weston@tyxuan.com.vn>';
  AlertAndonMailContext('Lean5','A','B');
  bSendMail(MailUserList,'',FromMail,MailTitle);
end;

procedure TIQCServerForm.Show1Click(Sender: TObject);
begin
  IQCServerForm.Show();
end;

end.
