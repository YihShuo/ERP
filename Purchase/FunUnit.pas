unit FunUnit;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, ComCtrls, StdCtrls,IniFiles,winsock,DBTables;
  //捷徑結構
  type
    PShellLinkInfoStruct = ^TShellLinkInfoStruct;
    TShellLinkInfoStruct = record
    FullPathAndNameOfLinkFile : array[0..MAX_PATH] of WideChar;
    FullPathAndNameOfFileToExecute: array[0..MAX_PATH] of Char;
    ParamStringsOfFileToExecute: array[0..MAX_PATH] of Char;
    FullPathAndNameOfWorkingDirectroy: array[0..MAX_PATH] of Char;
    Deforbiddenion: array[0..MAX_PATH] of Char;
    FullPathAndNameOfFileContiningIcon: array[0..MAX_PATH] of Char;
    IconIndex : Integer;
    HotKey: Word;
    ShowCommand: Integer;
    FindData: _WIN32_FIND_DATA;
    end;
 type
   TFuncObj=class(TObject)
   public
   procedure WriteErrorLog(WriteStr:string);
   function  SplitString2(const Source,ch:string):TStringList;
   function  SplitString(const Source,ch:string):TStringList;
   procedure setParameter(IsDebug:boolean;setAppPath:string);
   function  RetrunLocalSaveDir(str0:string;str1:string):string;
   function  RetrunLocalSaveDir2(str0:string;str1:string):string;
   Function  RetrunFileLastUpdTime(FileStr:string):string;
   //設定捷徑
   procedure SetStartupLink(str:string);    //設定 啟動捷徑
   procedure StartAPLnk(ExecuteFile:string);//執行 AP捷徑
   procedure StopAP(ExecuteFile:string);    //關閉 AP
   //外部程式
   function  GetPIDByProgramName(const APName: string): Boolean;
   procedure stopProc(ProcessName:string);
   function GetProcessHndByPID(const hAPID: THandle): THandle;
   function GetProcessHndByProgramName(const APName: string; bWithOutPath: Boolean = True): THandle;
   function GetPIDByProgramName1(const APName: string): THandle;
   procedure ServicesExecute(ExecuteFile:string;ParaStr:string);
   function  ServiceIsExists(ServiceNameStr:string):boolean;
   function getLinkFullPath(LnkFileName:string):string;
   function  CheckLnkIsCreateAndCorrect(ExecuteFile:string):boolean;
   function ReturnProgramIsRun(ExecuteFile:string):boolean;
   function ServiceIsStop(ServiceNameStr:string):boolean;
   function ServiceIsRun(ServiceNameStr:string):boolean;
   procedure SearchLnkDel(ExecuteFile:string);
   procedure SearchServiceDel(ServiceNameStr:string);
   procedure StartAP(ExecuteFile:string);
   procedure StatrAPProce(ExecuteFile:string);
   function  GetLocalHostName: string;
   //
   function WriteIniFile(fileStr:string;SetctionStr:string;KeyStr:string;ValueStr:string):boolean;
   function ReadIniFile(fileStr:string;SetctionStr:string;KeyStr:string):string;
   function  FileInUse(FileName: string): Boolean;
   function  RetrunFileName(s:String):string;
   function  LocalIP:string;
   function GetBDE_SERVERIP(AliasName:String):string;
   private

   IsDeBugLog:boolean;
   AppDir:string;


   function  Replacedateformat1( str:string):string;
   function  ReLastSubstrPos(str0:string;str1:string):integer;
   procedure GetLinkInfo(lpShellLinkInfoStruct: PShellLinkInfoStruct);

 end;
 
 var funcObj:TFuncObj;
implementation
uses
    ShlObj, ActiveX, ComObj, Registry,ShellAPI,PSAPI, TLHELP32,winsvc;

procedure TFuncObj.setParameter(IsDebug:boolean;setAppPath:string);
begin
  IsDeBugLog:=IsDebug;
  AppDir:=setAppPath;
   if(not DirectoryExists(AppDir+'Log\'))  then ForceDirectories(AppDir+'Log\');
end;
function   TFuncObj.LocalIP:string;
type
  TaPInAddr   =   array   [0..10]   of   PInAddr;
  PaPInAddr   =   ^TaPInAddr;
var
  phe:PHostEnt;
  pptr:PaPInAddr;
  Buffer:array [0..63] of char;
  I:Integer;
  GInitData:TWSADATA;
begin
    WSAStartup($101,   GInitData);
    Result:='';
    GetHostName(Buffer,SizeOf(Buffer));
    phe:=GetHostByName(buffer);
    if  phe=nil   then   Exit;
    pptr:=PaPInAddr(Phe^.h_addr_list);
    I:=0;
    while   pptr^[I]<>nil   do
    begin
        result:=StrPas(inet_ntoa(pptr^[I]^));
        Inc(I);
    end;
    WSACleanup;
end;

function TFuncObj.GetLocalHostName: string;
begin
SetLength(result, 250);
GetHostName(PChar(result), Length(result));
Result := String(PChar(result));

end;
//檔案是否在使用
function TFuncObj.FileInUse(FileName: string): Boolean;
var hFileRes: HFILE;
begin
  Result := False;
  if not FileExists(FileName) then exit;
  hFileRes := CreateFile(PChar(FileName),
  GENERIC_READ or GENERIC_WRITE,
  0,
  nil,
  OPEN_EXISTING,
  FILE_ATTRIBUTE_NORMAL,
  0);
  Result := (hFileRes = INVALID_HANDLE_VALUE);
  if not Result then
  CloseHandle(hFileRes);
end;
//系統時間轉資料庫時間格式 2007/01/05  to 20070105
function TFuncObj.Replacedateformat1( str:string):string;
var i:integer;
    tempstr:string;
begin
  i:=pos('/',str);
  tempstr:=copy(str,0,i-1);
  delete(str,1,i);
  i:=pos('/',str);
     if i>2 then
     begin
     tempstr:=tempstr+copy(str,0,i-1);
     end else
     begin
     tempstr:=tempstr+'0';
     tempstr:=tempstr+copy(str,0,i-1);
     end;
  delete(str,1,i);
  i:=length(str);
       if i<=1 then
     begin
     tempstr:=tempstr+'0';
     tempstr:=tempstr+copy(str,0,length(str));
     end else
     begin
     tempstr:=tempstr+copy(str,0,length(str));
     end;
 result:=tempstr;
end;
//記錄事件錯誤Log檔
procedure TFuncObj.WriteErrorLog(WriteStr:string);
var  TF:Textfile;
    strFileName:string;
    tempstr:string;
begin
  if IsDeBugLog=true then
  begin
    tempstr:=FormatDatetime('YYYYMMDD',now());
    strFileName:=AppDir+'Log\'+tempstr+'.log';

    WriteStr:=trim(WriteStr);
    AssignFile(TF, strFileName);
        if FileExists(strFileName) then
        begin
        Append(TF);
        end else begin
        ReWrite(TF);
        end;
    Writeln(TF, WriteStr );
    CloseFile(TF);
  end;
end;
//分割字串
function TfuncObj.SplitString(const Source,ch:string):TStringList;
var
  temp:String;
  i:Integer;
begin
  Result:=TStringList.Create;
  if Source=''
  then exit;
  temp:=Source;
  i:=pos(ch,Source);
  while i<>0 do
  begin
     Result.add(copy(temp,0,i-1));
     Delete(temp,1,i);
     i:=pos(ch,temp);
  end;
  Result.add(temp);
end;
//分割字串 從第二各字元開始 處理socket字串連在一起
function TFuncObj.SplitString2(const Source,ch:string):TStringList;
var
  temp:String;
  i:Integer;
  indexI:integer;
begin
  Result:=TStringList.Create;
  if Source=''
  then exit;
  temp:=Source;
    indexI:=0;
    for i:=2 to Length(Source) do
    begin
      if Source[i]=ch then
      begin
        if indexI=0 then
        Result.Add(copy(Source,indexI,i-1-indexI))
        else
        Result.Add(copy(Source,indexI,i-1-indexI+1));
      indexI:=i;
      end;
      if i=Length(Source) then Result.Add(copy(Source,indexI,i));
    end;
end;

//str0搜尋字串 str1子字串
function TFuncObj.ReLastSubstrPos(str0:string;str1:string):integer;
var tmpStr:string;
    IsFind:boolean;
    Posi:integer;
begin
  result:=-1;
  IsFind:=false;
  tmpStr:=str0;
  repeat
    Posi:=Pos(str1,tmpStr);
    if Posi>0 then
    begin
     tmpStr:=copy(tmpStr,Posi+1,length(tmpStr));
     result:=result+Posi;
     IsFind:=true;
    end else
    begin
     IsFind:=false;
    end;
  until IsFind=false;

end;
//str0搜尋字串 str1子字串
function TFuncObj.RetrunLocalSaveDir(str0:string;str1:string):string;
var tmpi,tmpj:integer;
begin
   tmpi:=(Pos(str1,str0))+length(str1);
   tmpj:=FuncObj.ReLastSubstrPos(str0,'\');
   result:=Copy(str0,tmpi,tmpj-tmpi+1);
end;
//str0搜尋字串 str1子字串
function TFuncObj.RetrunLocalSaveDir2(str0:string;str1:string):string;
var tmpi:integer;
begin
   tmpi:=(Pos(str1,str0))+length(str1);
   result:=Copy(str0,tmpi+1,length(str0));
end;
//回傳檔案最後更新日期
Function TFuncObj.RetrunFileLastUpdTime(FileStr:string):string;
var vSearchRec:   TSearchRec;
begin
      if   FindFirst(FileStr,faAnyFile,vSearchRec)=0   then
      result:=FormatDateTime('YYYY/MM/DD hh:nn:ss',FiledateToDateTime(vSearchRec.Time));
end;

//



//Ap執行檔建立在啟動
procedure TFuncObj.SetStartupLink(str:string);
var
   MyObject : IUnknown;
   MySLink : IShellLink;
   MyPFile : IPersistFile;
   FileName : String;
   Directory : String;
   WFileName : WideString;
   MyReg : TRegIniFile;
begin
   MyObject := CreateComObject(CLSID_ShellLink);
   MySLink := MyObject as IShellLink;
   MyPFile := MyObject as IPersistFile;
   //FileName := 'NOTEPAD.EXE';
   FileName:=str;
   with MySLink do begin
   //SetArguments('C:\AUTOEXEC.BAT');
   SetArguments('');
   SetPath(PChar(FileName));
   SetWorkingDirectory(PChar(ExtractFilePath(FileName)));
   end;
   MyReg := TRegIniFile.Create('');
   MyReg.RootKey:=HKEY_LOCAL_MACHINE;
   // Use the next line of code to put the shortcut on your desktop
   //Directory := MyReg.ReadString('Shell Folders','Desktop','');
   //自己使用者啟動
   //Directory := MyReg.ReadString('Software\MicroSoft\Windows\CurrentVersion\Explorer\Shell Folders','Startup','');
   //All User啟動
   Directory := MyReg.ReadString('Software\MicroSoft\Windows\CurrentVersion\Explorer\Shell Folders','Common Startup','');
   // Desktop 為桌面

   // Startup 為啟動

   // Start Menu 為開始功能表
   
   // Use the next three lines to put the shortcut on your start menu
   // Directory := MyReg.ReadString('Shell Folders','Start Menu','')+
   // '\Whoa!';
   // CreateDir(Directory);

   WFileName := Directory+'\'+ChangeFileExt(ExtractFileName(FileName), '.lnk');
   MyPFile.Save(PWChar(WFileName),False);
   MyReg.Free;
end;
//尋找類似的捷徑執行檔刪除
procedure TFuncObj.SearchLnkDel(ExecuteFile:string);
var  MyReg:TRegIniFile;
     Directory:string;
     WFileName:string;
     s0,s1:string;
begin
   //AllUser捷徑
   MyReg := TRegIniFile.Create('');
   MyReg.RootKey:=HKEY_LOCAL_MACHINE;
   Directory := MyReg.ReadString('Software\MicroSoft\Windows\CurrentVersion\Explorer\Shell Folders','Common Startup','');
   WFileName := Directory+'\'+ChangeFileExt(ExtractFileName(ExecuteFile),'.lnk');
   if FileExists(WFileName)=true then
   begin

     s0:=ExtractFileName(AnsiLowerCase(FuncObj.getLinkFullPath(WFileName)));
     s1:=ExtractFileName(AnsiLowerCase(ExecuteFile));
     if s0=s1 then
     begin
       DeleteFile(WFileName);
       funcObj.WriteErrorLog(datetimetostr(now)+' 刪除AllUser啟動類似捷徑'+s0);
     end;
   end else
   begin
     //捷徑不存在
   end;
   MyReg.Free;
   
   //啟動捷徑
   MyReg := TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
   Directory := MyReg.ReadString('Shell Folders','Startup','');
   WFileName := Directory+'\'+ChangeFileExt(ExtractFileName(ExecuteFile),'.lnk');
   if FileExists(WFileName)=true then
   begin

     s0:=ExtractFileName(AnsiLowerCase(FuncObj.getLinkFullPath(WFileName)));
     s1:=ExtractFileName(AnsiLowerCase(ExecuteFile));
     if s0=s1 then
     begin
       DeleteFile(WFileName);
       funcObj.WriteErrorLog(datetimetostr(now)+' 刪除啟動類似捷徑'+s0);
     end;
   end else
   begin
     //捷徑不存在
   end;
   MyReg.Free;

end;
//判斷是否建立且捷徑是否正確
function TFuncObj.CheckLnkIsCreateAndCorrect(ExecuteFile:string):boolean;
var  MyReg:TRegIniFile;
     Directory:string;
     WFileName:string;
     s0,s1:string;
begin
   result:=false;
   MyReg := TRegIniFile.Create('');
   MyReg.RootKey:=HKEY_LOCAL_MACHINE;
   Directory := MyReg.ReadString('Software\MicroSoft\Windows\CurrentVersion\Explorer\Shell Folders','Common Startup','');
   WFileName := Directory+'\'+ChangeFileExt(ExtractFileName(ExecuteFile),'.lnk');
   if FileExists(WFileName)=true then
   begin

     s0:=AnsiLowerCase(FuncObj.getLinkFullPath(WFileName));
     s1:=AnsiLowerCase(ExecuteFile);
     if s0=s1 then
     begin
       //捷徑正確

       result:=true;
     end else
     begin
       //捷徑不正確
       DeleteFile(WFileName);
       result:=false;
     end;
   end else
   begin
     //捷徑不存在
     result:=false;
   end;
    MyReg.Free;
end;
//AP用執行程式
procedure TFuncObj.StartAP(ExecuteFile:string);
var SEInfo: TShellExecuteInfo;
begin
  if FileExists(ExecuteFile) then
  begin
    FillChar(SEInfo, SizeOf(SEInfo), 0) ;
    SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
    with SEInfo do begin
      fMask := SEE_MASK_NOCLOSEPROCESS;
      Wnd := Application.Handle;
      lpFile := PChar(ExecuteFile);
      nShow := SW_SHOWNORMAL;
    end;
    ShellExecuteEx(@SEInfo);
    //延遲2秒
    sleep(1000);
  end;
end;
procedure TFuncObj.StatrAPProce(ExecuteFile:string);
var SEInfo: TShellExecuteInfo;
    IsOver:boolean;
begin
  if FileExists(ExecuteFile) then
  begin
    FillChar(SEInfo, SizeOf(SEInfo), 0) ;
    SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
    with SEInfo do begin
      fMask := SEE_MASK_NOCLOSEPROCESS;
      Wnd := Application.Handle;
      lpFile := PChar(ExecuteFile);
      nShow := SW_SHOWNORMAL;
    end;
    IsOver:=ShellExecuteEx(@SEInfo);
    //延遲2秒
    if IsOver then
    while WaitForSingleObject(SEInfo.HProcess, 100) = WAIT_TIMEOUT do
    begin
      Application.ProcessMessages;
      if Application.Terminated then
      Break;
    end;
  end;
end;
//AP執行捷徑
procedure TFuncObj.StartAPLnk(ExecuteFile:string);
var
   Directory : String;
   WFileName : WideString;
   MyReg : TRegIniFile;
begin
   MyReg := TRegIniFile.Create('');
   try
   MyReg.RootKey:=HKEY_LOCAL_MACHINE;
   Directory := MyReg.ReadString('Software\MicroSoft\Windows\CurrentVersion\Explorer\Shell Folders','Common Startup','');
   WFileName := Directory+'\'+ChangeFileExt(ExtractFileName(ExecuteFile),'.lnk');
     FuncObj.StartAP(WFileName);
   finally
   MyReg.free;
   end;
end;
//AP用的關閉程式
procedure TFuncObj.StopAP(ExecuteFile:string);
begin
   //假如程序存在的話
   if FuncOBj.GetPIDByProgramName(ExtractFileName(ExecuteFile))=false then
   begin
     FuncOBj.stopProc(ExtractFileName(ExecuteFile));
    //延遲2秒
    sleep(1000);
  end;
end;
//迴傳程序是否存在
function TFuncObj.ReturnProgramIsRun(ExecuteFile:string):boolean;
begin
   //假如程序存在的話
   if FuncOBj.GetPIDByProgramName(ExtractFileName(ExecuteFile))=false then
   begin
     result:=true;
   end else
   begin
     result:=false;
   end;
end;
//Service用的Bat
procedure TFuncObj.ServicesExecute(ExecuteFile:string;ParaStr:string);
var SEInfo: TShellExecuteInfo;
    IsOver:boolean;
begin

    FillChar(SEInfo, SizeOf(SEInfo), 0) ;
    SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
    with SEInfo do begin
      fMask := SEE_MASK_NOCLOSEPROCESS;
      Wnd := Application.Handle;
      lpFile := PChar(ExecuteFile);
      lpParameters :=PChar(ParaStr);
      nShow := SW_SHOWNORMAL;
    end;
    IsOver:=ShellExecuteEx(@SEInfo);
    //sleep(2000);
    //Form1.stopProc('CallNumServer.exe');
    if IsOver then
    while WaitForSingleObject(SEInfo.HProcess, 100) = WAIT_TIMEOUT do
    begin
      Application.ProcessMessages;
      if Application.Terminated then
      Break;
    end;   
end;
//移除類似的Services
procedure TFuncObj.SearchServiceDel(ServiceNameStr:string);
var
  i : Integer;
  Registry: TRegistry;
  RootKey : String;
  Key : String;
  KeyName : String;
  SubKey: TStringList;
  //
  tmpFindServrice:string;
  tmpstr0,tmpstr1:string;
  tmpstr:string;
begin

    RootKey := 'HKEY_LOCAL_MACHINE';
    Key := '\SYSTEM\CurrentControlSet\Services';

    Registry:=TRegistry.Create;
    Subkey := TStringList.Create;


    Registry.RootKey:=HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\SYSTEM\CurrentControlSet\Services\', False);
    Registry.GetKeyNames(SubKey);

    for I:=0 to SubKey.Count-1 do
    begin
      if Registry.OpenKey(Key + '\'+SubKey[I], False) then
      begin
        KeyName := SubKey[i];
        tmpFindServrice:=Registry.ReadString('ImagePath');
        if ExtractFileName(tmpFindServrice)=ExtractFileName(ServiceNameStr) then
        begin
          tmpstr0:=' "'+ExtractFileDir(tmpFindServrice)+'\"';
          tmpstr:=ExtractFileDir(tmpFindServrice)+'\';
          if FileExists(tmpstr+'stop.bat') then
          begin
           tmpstr1:=tmpstr+'stop.bat';
           FuncObj.ServicesExecute(tmpStr1,tmpStr0);
           funcObj.WriteErrorLog(Datetimetostr(now)+' ssss '+tmpStr1+'  '+tmpStr0);
           funcObj.WriteErrorLog(Datetimetostr(now)+' 停用不相關Services'+tmpStr1);
          end;

          if FileExists(tmpstr+'uninst.bat') then
          begin
            tmpstr1:=tmpstr+'uninst.bat';
            FuncObj.ServicesExecute(tmpStr1,tmpStr0);
            funcObj.WriteErrorLog(Datetimetostr(now)+' uuuu '+tmpStr1+'  '+tmpStr0);
           funcObj.WriteErrorLog(Datetimetostr(now)+' 移除不相關Services'+tmpStr1);
          end;
          //
          break;
        end;
        Registry.CloseKey;
      end;
    end;  //for I:=0 to Val.Count-1 do

  SubKey.Clear;
  Registry.Free;
  
end;

//Serverice是否存在
function TFuncOBj.ServiceIsExists(ServiceNameStr:string):boolean;
var
  i : Integer;
  Registry: TRegistry;
  RootKey : String;
  Key : String;
  KeyName : String;
  SubKey: TStringList;

begin
    result:=false;
    RootKey := 'HKEY_LOCAL_MACHINE';
    Key := '\SYSTEM\CurrentControlSet\Services';

    Registry:=TRegistry.Create;
    Subkey := TStringList.Create;


    Registry.RootKey:=HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\SYSTEM\CurrentControlSet\Services\', False);
    Registry.GetKeyNames(SubKey);

    for I:=0 to SubKey.Count-1 do
    begin
      if Registry.OpenKey(Key + '\'+SubKey[I], False) then
      begin
        KeyName := SubKey[i];
        if Registry.ReadString('ImagePath')=ServiceNameStr then
        begin
          result:=true;
          break;
        end;
        Registry.CloseKey;
      end;
    end;  //for I:=0 to Val.Count-1 do

  SubKey.Clear;
  Registry.Free;
end;
function GetServiceStatus(service:string): String;
var
  service_manager_handle, service_handle:SC_Handle;
  ss :TServiceStatus;
  ServiceStatus : String;
begin
  service_manager_handle:=OpenSCManager(Nil,Nil,SC_MANAGER_ALL_ACCESS);
  service_handle:=OpenService(Service_manager_handle,PChar(service), SERVICE_ALL_ACCESS);
  if (service_handle > 0) then
  begin
    if QueryServiceStatus(service_handle, ss) then
    begin
      case ss.dwCurrentState of
        SERVICE_STOPPED: ServiceStatus:='STOPPED';   // STOPPED 已停用
        SERVICE_START_PENDING: ServiceStatus:='START_PENDING';
        SERVICE_STOP_PENDING: ServiceStatus:='STOP_PENDING';
        SERVICE_CONTINUE_PENDING: ServiceStatus:='CONTINUE_PENDING';
        SERVICE_PAUSE_PENDING:  ServiceStatus:='PAUSE_PENDING';
        SERVICE_RUNNING: ServiceStatus:='RUNNING';   // RUNNING  已啟動
      else
        ServiceStatus:='其它';
      end; // case
    end; // if
    CloseServiceHandle(service_handle);
  end; // if
  CloseServiceHandle(service_manager_handle);
  Result := ServiceStatus;
end;
//Services
function TFuncOBj.ServiceIsStop(ServiceNameStr:string):boolean;
var
  i : Integer;
  Registry: TRegistry;
  RootKey : String;
  Key : String;
  KeyName : String;
  SubKey: TStringList;

begin
    result:=false;
    RootKey := 'HKEY_LOCAL_MACHINE';
    Key := '\SYSTEM\CurrentControlSet\Services';

    Registry:=TRegistry.Create;
    Subkey := TStringList.Create;


    Registry.RootKey:=HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\SYSTEM\CurrentControlSet\Services\', False);
    Registry.GetKeyNames(SubKey);

    for I:=0 to SubKey.Count-1 do
    begin
      if Registry.OpenKey(Key + '\'+SubKey[I], False) then
      begin
        KeyName := SubKey[i];

        if Registry.ReadString('ImagePath')=ServiceNameStr then
        begin
          if GetServiceStatus(KeyName)='STOPPED' then
          begin
            result:=true;
          end;
          break;
        end;
        Registry.CloseKey;
      end;
    end;  //for I:=0 to Val.Count-1 do

  SubKey.Clear;
  Registry.Free;

end;
//Services
function TFuncOBj.ServiceIsRun(ServiceNameStr:string):boolean;
var
  i : Integer;
  Registry: TRegistry;
  RootKey : String;
  Key : String;
  KeyName : String;
  SubKey: TStringList;

begin
    result:=false;
    RootKey := 'HKEY_LOCAL_MACHINE';
    Key := '\SYSTEM\CurrentControlSet\Services';

    Registry:=TRegistry.Create;
    Subkey := TStringList.Create;


    Registry.RootKey:=HKEY_LOCAL_MACHINE;
    Registry.OpenKey('\SYSTEM\CurrentControlSet\Services\', False);
    Registry.GetKeyNames(SubKey);

    for I:=0 to SubKey.Count-1 do
    begin
      if Registry.OpenKey(Key + '\'+SubKey[I], False) then
      begin
        KeyName := SubKey[i];

        if Registry.ReadString('ImagePath')=ServiceNameStr then
        begin
          if GetServiceStatus(KeyName)='RUNNING' then
          begin
            result:=true;
          end;
          break;
        end;
        Registry.CloseKey;
      end;
    end;  //for I:=0 to Val.Count-1 do

  SubKey.Clear;
  Registry.Free;

end;

//取得捷徑資訊
procedure TFuncOBj.GetLinkInfo(lpShellLinkInfoStruct: PShellLinkInfoStruct);
var
    ShellLink: IShellLink;
    PersistFile: IPersistFile;
    AnObj: IUnknown;
begin
    AnObj := CreateComObject(CLSID_ShellLink);
    ShellLink := AnObj as IShellLink;
    PersistFile := AnObj as IPersistFile;

    PersistFile.Load(PWChar(WideString(lpShellLinkInfoStruct^.FullPathAndNameOfLinkFile)),0);
    with ShellLink do
    begin
    GetPath(lpShellLinkInfoStruct^.FullPathAndNameOfFileToExecute,
        SizeOf(lpShellLinkInfoStruct^.FullPathAndNameOfLinkFile),
        lpShellLinkInfoStruct^.FindData,
        SLGP_UNCPRIORITY);
    end;
end;
//取得捷徑執行檔案路徑
function TFuncObj.getLinkFullPath(LnkFileName:string):string;
var  LinkInfo: TShellLinkInfoStruct;
begin
    FillChar(LinkInfo, SizeOf(LinkInfo),0);
    //字串轉字元
    StringToWideChar(LnkFIleName,LinkInfo.FullPathAndNameOfLinkFile,MAX_PATH+1);

    GetLinkInfo(@LinkInfo);
    Result:=LinkInfo.FullPathAndNameOfFileToExecute;

end;

//外部程式
function TFuncOBj.GetPIDByProgramName(const APName: string): Boolean;
var
  isFound: boolean;
  AHandle, AhProcess: THandle;
  ProcessEntry32: TProcessEntry32;
  APath: array[0..MAX_PATH] of char;
begin
  //Result := 0;
  Result := True;
  AHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  try
    ProcessEntry32.dwSize := Sizeof(ProcessEntry32);
    isFound := Process32First(AHandle, ProcessEntry32);
    while isFound do
    begin
      AhProcess := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, false, ProcessEntry32.th32ProcessID);
      GetModuleFileNameEx(AhProcess, 0, @APath[0], sizeof(APath));
      if (UpperCase(StrPas(APath)) = UpperCase(APName)) or
         (UpperCase(StrPas(ProcessEntry32.szExeFile)) = UpperCase(APName)) then
      begin
        //Result := ProcessEntry32.th32ProcessID;
        Result := False;
        break;
      end;
      isFound := Process32Next(AHandle, ProcessEntry32);
    end;
  finally
    closeHandle(AHandle);
  end;
end;
//外部程式關閉
function TFuncOBj.GetPIDByProgramName1(const APName: string): THandle;
var
  isFound: boolean;
  AHandle, AhProcess: THandle;
  ProcessEntry32: TProcessEntry32;
  APath: array[0..MAX_PATH] of char;
begin
  Result := 0;
  AHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  try
    ProcessEntry32.dwSize := Sizeof(ProcessEntry32);
    isFound := Process32First(AHandle, ProcessEntry32);
    while isFound do
    begin
      AhProcess := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, false, ProcessEntry32.th32ProcessID);
      GetModuleFileNameEx(AhProcess, 0, @APath[0], sizeof(APath));
      if (UpperCase(StrPas(APath)) = UpperCase(APName)) or
         (UpperCase(StrPas(ProcessEntry32.szExeFile)) = UpperCase(APName)) then
      begin
        Result := ProcessEntry32.th32ProcessID;
        //Result := False;
        break;
      end;
      isFound := Process32Next(AHandle, ProcessEntry32);
      CloseHandle(AhProcess);
    end;
  finally
    closeHandle(AHandle);
  end;
end;

function TFuncOBj.GetProcessHndByPID(const hAPID: THandle): THandle;
var
  AhProcess: THandle;
begin
  if hAPID <> 0 then
  begin
    AhProcess := OpenProcess(PROCESS_ALL_ACCESS, false, hAPID);
    Result := AhProcess;
  end else
    Result := 0;
end;
function TFuncOBj.GetProcessHndByProgramName(const APName: string; bWithOutPath: Boolean = True): THandle;
begin
  if APName <> '' then
    Result := FuncObj.GetProcessHndByPID(FuncOBj.GetPIDByProgramName1(APName))
  else
    Result := 0;
end;
procedure TFuncOBj.stopProc(ProcessName:string);
var
  hProcess : THandle;
  ExitCode: Cardinal;
begin
  hProcess:= FuncObj.GetProcessHndByProgramName(ProcessName, False);
  if hProcess > 0 then
  begin
    GetExitCodeProcess(hProcess, ExitCode);
    TerminateProcess(hProcess, ExitCode);
  end;
  hProcess:= FuncObj.GetProcessHndByProgramName(ProcessName, False);
  if hProcess > 0 then
  begin
    GetExitCodeProcess(hProcess, ExitCode);
    TerminateProcess(hProcess, ExitCode);
  end;
end;
//修改Ini
function TFuncOBj.WriteIniFile(fileStr:string;SetctionStr:string;KeyStr:string;ValueStr:string):boolean;
var
  Ini: TIniFile;
begin
   try
      Ini:=Tinifile.create(fileStr); //沒有指定目錄將存到windows目錄下
      try
        Ini.WriteString(SetctionStr, KeyStr, ValueStr);
        result:=true;
      finally
        Ini.free;
      end;
   except
      result:=false;
      Ini.Free;
   end;
end;
//讀取Ini
function TFuncOBj.ReadIniFile(fileStr:string;SetctionStr:string;KeyStr:string):string;
var
  Ini: TIniFile;
begin
   try
      Ini:=Tinifile.create(fileStr); //沒有指定目錄將存到windows目錄下
      try
          result:=Ini.ReadString(SetctionStr, KeyStr, '');
      finally
        Ini.free;
      end;
   except
      result:='';
     Ini.Free;
   end;
end;
//傳回字串檔名
function TFuncOBj.RetrunFileName(s:String):string;
var i:integer;
    str:string;
begin
   str:='';
   for i:=Length(s) downto 1 do
   begin
      if s[i]='\' then
      begin
       str:=copy(s,i+1,length(s));
       break;
      end;
   end;
   if str='' then str:=s;
   RetrunFileName:=str;
end;
//20180122  Get BDE Server IP
function TFuncOBj.GetBDE_SERVERIP(AliasName:String):string;
var BDElist:TStringList;
    BDE_SERVER:string;
begin
  BDEList := TStringList.Create ;
  try
    Session.GetAliasParams(AliasName,BDEList);
    BDE_SERVER  := BDEList.Values['SERVER NAME'];
  finally
    BDEList.Free;
  end;
  result:=BDE_SERVER;
end;
end.
