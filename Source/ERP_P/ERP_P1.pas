unit ERP_P1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TUpdate = class(TForm)
    UpdateBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UpdateBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    BDE_SERVER:String;
    AppDir:String;
    { Public declarations }
    procedure UpdateP();
  end;

var
  Update: TUpdate;

implementation
   uses FunUnit;
{$R *.dfm}
//
function FileLastAccessTime1(const filename : string) : string;
var
  FileHandle : THandle;
  LocalFileTime : TFileTime;
  DosFileTime : DWORD;
  LastAccessedTime : TDateTime;
  FindData : TWin32FindData;
begin
  Result := '';
  FileHandle := FindFirstFile(pchar(filename), FindData);
  if FileHandle <> INVALID_HANDLE_VALUE then
  begin
    Windows.FindClose(application.Handle);
    if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      FileTimeToLocalFileTime(FindData.ftLastAccessTime, LocalFileTime);
      FileTimeToDosDateTime(LocalFileTime,
      LongRec(DosFileTime).Hi,LongRec(DosFileTime).Lo);
      LastAccessedTime := FileDateToDateTime(DosFileTime);
      Result := DateTimeToStr(LastAccessedTime);
    end;
  end;
end;
function FileLastAccessTime2(const filename : string) : string;
var
    FileHandle: Integer;
    FileDT: TDateTime;
begin
  try
    FileHandle:=FileOpen(FileName, fmOpenRead);
    If FileHandle>0 then
    begin
      result:=DateTimetostr(FileDateToDateTime(FileGetDate(FileHandle)));
    end;
    FileClose(FileHandle);
  except

  end;
end;
//
procedure TUpdate.UpdateP();
Var
  Path    : String;
  SR      : TSearchRec;
  DirList : TStrings;
begin
  //
  DirList:=TStringList.Create;
  try
    if FindFirst( '\\'+BDE_SERVER+'\liy_erp\*.exe', faArchive, SR) = 0 then
    begin
      repeat
          DirList.Add(SR.Name); //Fill the list
          if SR.Name<>'ERP_P.exe' then
          begin
            if FileExists(AppDir+SR.Name)=false then
            begin
               funcObj.StopAP(Pchar(AppDir+SR.Name));
               CopyFile(Pchar('\\'+BDE_SERVER+'\liy_erp\'+SR.Name),Pchar(AppDir+SR.Name),false);
               funcObj.WriteErrorLog('Copy:'+'\\'+BDE_SERVER+'\liy_erp\'+SR.Name);
            end else
            begin
               if FileLastAccessTime2(Pchar('\\'+BDE_SERVER+'\liy_erp\'+SR.Name))<>FileLastAccessTime2(Pchar(AppDir+SR.Name)) then
               begin
                  funcObj.StopAP(Pchar(AppDir+SR.Name));
                  CopyFile(Pchar('\\'+BDE_SERVER+'\liy_erp\'+SR.Name),Pchar(AppDir+SR.Name),false);
                  funcObj.WriteErrorLog('Copy:'+'\\'+BDE_SERVER+'\liy_erp\'+SR.Name);
               end;
            end;
          end;
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
  finally
   DirList.Free;
  end;
  //
  DirList:=TStringList.Create;
  try
    if FindFirst( '\\'+BDE_SERVER+'\liy_erp\*.txt', faArchive, SR) = 0 then
    begin
      repeat
          DirList.Add(SR.Name); //Fill the list
          if SR.Name<>'database.txt' then
          begin
            CopyFile(Pchar('\\'+BDE_SERVER+'\liy_erp\'+SR.Name),Pchar(AppDir+SR.Name),false);
            funcObj.WriteErrorLog('Copy:'+'\\'+BDE_SERVER+'\liy_erp\'+SR.Name);
          end else
          begin
            if  FileExists(AppDir+SR.Name)=false then
            begin
               CopyFile(Pchar('\\'+BDE_SERVER+'\liy_erp\'+SR.Name),Pchar(AppDir+SR.Name),false);
               funcObj.WriteErrorLog('Copy:'+'\\'+BDE_SERVER+'\liy_erp\'+SR.Name);
            end;
          end;
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
  finally
   DirList.Free;
  end;
  //
  DirList:=TStringList.Create;
  try
    if FindFirst( '\\'+BDE_SERVER+'\liy_erp\*.btw', faArchive, SR) = 0 then
    begin
      repeat
          DirList.Add(SR.Name); //Fill the list
          CopyFile(Pchar('\\'+BDE_SERVER+'\liy_erp\'+SR.Name),Pchar(AppDir+SR.Name),false);
          funcObj.WriteErrorLog('Copy:'+'\\'+BDE_SERVER+'\liy_erp\'+SR.Name);
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
  //do your stuff
  finally
   DirList.Free;
  end;
  DirList:=TStringList.Create;
  try
    if FindFirst( '\\'+BDE_SERVER+'\liy_erp\*.jpg', faArchive, SR) = 0 then
    begin
      repeat
          DirList.Add(SR.Name); //Fill the list
          CopyFile(Pchar('\\'+BDE_SERVER+'\liy_erp\'+SR.Name),Pchar(AppDir+SR.Name),false);

      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
  //do your stuff
  finally
   DirList.Free;
  end;
end;

procedure TUpdate.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(false,ExtractFilePath(Application.ExeName));
  Application.ShowMainForm:=false;
  BDE_SERVER:='192.168.23.9';//預設
  if ParamCount=1 then
  begin
    BDE_SERVER:=ParamStr(1);//預設
  end;
  UpdateBtn.Click;

end;

procedure TUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FuncObj.Free;
end;

procedure TUpdate.UpdateBtnClick(Sender: TObject);
begin
 try
   if BDE_SERVER<>'' then  UpdateP();
 except
 end;
 Application.Terminate;
end;

end.
