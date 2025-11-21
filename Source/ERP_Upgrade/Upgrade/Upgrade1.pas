unit Upgrade1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, FileCtrl, ShellApi, ComCtrls,
  IdGlobal, Tlhelp32, inifiles ;

type
  TUpgrade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    Query1: TADOQuery;
    Query1FilePath: TStringField;
    Query1UpdateTime: TStringField;
    Timer1: TTimer;
    Query1FileName: TStringField;
    ProgressBar1: TProgressBar;
    Query2: TADOQuery;
    Query1FileSize: TStringField;
    UpdateQry: TADOQuery;
    ADOConn: TADOConnection;
    Query1FolderPath: TStringField;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    SQLFilter:String;
    MainApplication:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    function KillTask(ExeFileName: string): Integer;
    procedure KillProcess(hWindowHandle: HWND);overload;
    procedure KillProcess;overload;
  end;

var
  Upgrade: TUpgrade;
  flag: Boolean;

implementation

{$R *.dfm}


procedure TUpgrade.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ERPCommit.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ERPCommit.ini');
      DBIP:=MyIni.ReadString('DB','IP','192.168.23.9');
      DBUser:=MyIni.ReadString('DB','User','tyx');
      DBPass:=MyIni.ReadString('DB','Pass','tyx');
      DBName:=MyIni.ReadString('DB','DBName','LIY_TYXUAN');
      MainApplication:=MyIni.ReadString('DB','Application','LY_ERP.exe');
      //
      ADOConn.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog='+DBName+';Data Source='+DBIP;
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TUpgrade.Timer1Timer(Sender: TObject);
var
  Path: String;
  FileName: String;
  FilePath: String;
  FileSize: String;
  FolderPath: String;
  UpdateTime: String;
  Counter: Integer;
begin
  flag := false;
  Path := ExtractFilePath(Application.Exename);
  Timer1.Enabled:=false;
  try
    try
      Query2.Close;
      Query2.Open;
      ProgressBar1.Min := 0;
      progressBar1.Max := Query2.Fields[0].AsInteger;
      ProgressBar1.Position := 0;
      Query2.Close;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select FileName,FilePath, FolderPath,UpdateTime,FileSize from ERP_FileList where 1=1 '+SQLFilter);
      Query1.Open;
      while not Query1.Eof do
      begin
        Application.ProcessMessages;
        FileName := Query1.FieldByName('FileName').AsString;
        FilePath := Query1.FieldByName('FilePath').AsString;
        FileSize := Query1.FieldByName('FileSize').AsString;
        FolderPath := Query1.FieldByName('FolderPath').AsString;
        if FileExists(Path+FolderPath+FileName)=true then
        begin
          UpdateTime := FormatDateTime('yyyy-mm-dd hh:nn:ss',FileDateToDateTime(FileAge(Path+FolderPath+FileName)));

          if (Query1.FieldByName('UpdateTime').AsString <> UpdateTime) OR (FileSize <> IntToStr(FileSizeByName(Path+FolderPath+FileName))) then
          begin
            KillProcess();

            KillTask(ExtractFileName(FileName));
            Memo1.Lines[0] := 'Check ' + (Query1.FieldByName('FilePath').AsString);
            with UpdateQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Select  FileStream from ERP_FileList where FileName='''+Query1.FieldByName('FileName').AsString+''' ');
              Active:=true;
              TBlobField(FieldByName('FileStream')).SaveToFile(Path+FolderPath+FileName);
              Active:=false;
            end;
            FileSetDate(Path+FolderPath+FileName, DateTimeToFileDate(VarToDateTime(Query1.FieldByName('UpdateTime').AsString)));
            Memo1.Lines[0] := 'Update ' + (Query1.FieldByName('FilePath').AsString);

            while FileSize <> IntToStr(FileSizeByName(Path+FolderPath+FileName)) do
            begin
              //Application.ProcessMessages;
              with UpdateQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Select  FileStream from ERP_FileList where FileName='''+Query1.FieldByName('FileName').AsString+''' ');
                Active:=true;
                TBlobField(FieldByName('FileStream')).SaveToFile(Path+FolderPath+FileName);
                Active:=false;
              end;
              FileSetDate(Path+FolderPath+FileName, DateTimeToFileDate(VarToDateTime(Query1.FieldByName('UpdateTime').AsString)));
            end;

            ProgressBar1.Position := ProgressBar1.Position + 1;
            Query1.Next;
          end
          else
          begin
            Memo1.Lines[0] := 'Check' + (Query1.FieldByName('FilePath').AsString);
            ProgressBar1.Position := ProgressBar1.Position + 1;
            Query1.Next;
          end;
        end
        else
        begin
          KillProcess();
          Memo1.Lines[0] := 'Check ' + (Query1.FieldByName('FilePath').AsString);
          ForceDirectories(StringReplace(Path+FolderPath+FileName,FileName,'',[rfReplaceAll]));
          with UpdateQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Select  FileStream from ERP_FileList where FileName='''+Query1.FieldByName('FileName').AsString+''' ');
            Active:=true;
            TBlobField(FieldByName('FileStream')).SaveToFile(Path+FolderPath+FileName);
            Active:=false;
          end;
          FileSetDate(Path+FolderPath+FileName, DateTimeToFileDate(VarToDateTime(Query1.FieldByName('UpdateTime').AsString)));
          Memo1.Lines[0] := 'Update ' + (Query1.FieldByName('FilePath').AsString);

          while FileSize <> IntToStr(FileSizeByName(Path+FolderPath+FileName)) do
          begin
            //Application.ProcessMessages;
            with Query2 do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Select  FileStream from ERP_FileList where FileName='''+Query1.FieldByName('FileName').AsString+''' ');
              Active:=true;
              TBlobField(FieldByName('FileStream')).SaveToFile(Path+FolderPath+FileName);
              Active:=false;
            end;
            FileSetDate(Path+FolderPath+FileName, DateTimeToFileDate(VarToDateTime(Query1.FieldByName('UpdateTime').AsString)));
          end;

          ProgressBar1.Position := ProgressBar1.Position + 1;
          Query1.Next;
        end;
      end;
    finally
    Query1.Close;

    end;
  except
    on E:Exception do
    begin
      flag:=true;
      showmessage('Upgrade failed !!'+E.Message+' '+Query1.FieldByName('FileName').AsString);
      Close;
    end;
  end;

  ShellExecute(0, PChar('open'), PChar(Path + MainApplication), nil, nil, SW_SHOW);
  flag:=true;
  Close;
end;

procedure TUpgrade.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if flag = true then
  begin
    CanClose:=true;
  end
  else
  begin
    showmessage('Upgrading, cannot close it !!');
    CanClose:=false;
  end;
end;

procedure TUpgrade.KillProcess(hWindowHandle: HWND);
{ For Windows NT/2000/XP }
var
  hprocessID: INTEGER;
  processHandle: THandle;
  DWResult: DWORD;
begin
  SendMessageTimeout(hWindowHandle, WM_CLOSE, 0, 0,
    SMTO_ABORTIFHUNG or SMTO_NORMAL, 5000, DWResult);

  if isWindow(hWindowHandle) then
  begin
    // PostMessage(hWindowHandle, WM_QUIT, 0, 0);

    { Get the process identifier for the window}
    GetWindowThreadProcessID(hWindowHandle, @hprocessID);
    if hprocessID <> 0 then
    begin
      { Get the process handle }
      processHandle := OpenProcess(PROCESS_TERMINATE or PROCESS_QUERY_INFORMATION,
        False, hprocessID);
      if processHandle <> 0 then
      begin
        { Terminate the process }
        TerminateProcess(processHandle, 0);
        CloseHandle(ProcessHandle);
      end;
    end;
  end;
end;

function TUpgrade.KillTask(ExeFileName: string): Integer;
{For Windows 9x/ME/2000/XP }
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  try
    Result := 0;
    FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
    ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

    while Integer(ContinueLoop) <> 0 do
    begin
      if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
        UpperCase(ExeFileName))) then
        Result := Integer(TerminateProcess(
                          OpenProcess(PROCESS_TERMINATE,
                                      BOOL(0),
                                      FProcessEntry32.th32ProcessID),
                                      0));
       ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
    end;
    CloseHandle(FSnapshotHandle);
  except
     on E: EInOutError do
     begin

     end;
  end;
end;

procedure TUpgrade.KillProcess;
begin
  try
      KillProcess(FindWindow(PAnsiChar(MainApplication),nil));
      KillTask(MainApplication);
  except
     on E: EInOutError do
     begin

     end;
  end;
end;

procedure TUpgrade.FormShow(Sender: TObject);
begin
   //RunUpgrade();
end;

procedure TUpgrade.FormCreate(Sender: TObject);
begin
  SQLFilter:='';
  MainApplication:='LY_ERP.exe';
  ReadIni();
  if ParamCount>=1 then
  begin
      MainApplication:=ParamStr(1);
      if ParamCount>=2 then SQLFilter:=ParamStr(2);
  end;
  Timer1.Enabled:=true;
end;

end.
