program LEDshow;

uses
  Forms,
  Windows,
  showp in 'showp.pas' {LEDShowForm};

{$R *.res}
var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'show.exe');
  if   Mutexhandle<>0   then
    begin
      if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
        begin
          closehandle(Mutexhandle);
          halt;
        end;
    end;

  Application.Initialize;
  Application.CreateForm(TLEDShowForm, LEDShowForm);
  //  Application.CreateForm(Trftinput, rftinput);
  Application.Run;
end.
