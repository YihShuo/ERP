program IQCServer;

uses
  Forms,
  Server in 'Server.pas' {IQCServerForm};

{$R *.res}
var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'IQCWebConnect.exe');
  if   Mutexhandle<>0   then
  begin
      if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
        begin
          closehandle(Mutexhandle);
          halt;
        end;
  end;

  Application.Initialize;
  Application.CreateForm(TIQCServerForm, IQCServerForm);
  Application.Run;
end.
