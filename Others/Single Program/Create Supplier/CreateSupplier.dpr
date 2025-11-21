program CreateSupplier;

uses
  Forms,
  windows,
  DM3 in 'DM3.pas' {DM2: TDataModule},
  SuppNew1 in 'SuppNew1.pas' {SuppNew};

{$R *.res}
var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'CreateSupplier.exe');
  if   Mutexhandle<>0   then
  begin
    if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
    begin
      closehandle(Mutexhandle);
      halt;
    end;
  end;

  Application.Initialize;
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(TSuppNew, SuppNew);
  Application.Run;
end.
