program CreateMaterialNew;

uses
  Forms,
  windows,
  DM3 in 'DM3.pas' {DM2: TDataModule},
  MaterialNew1 in 'MaterialNew1.pas' {MaterialNew};

{$R *.res}
var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'CreateMaterialNew.exe');
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
  Application.CreateForm(TMaterialNew, MaterialNew);
  Application.Run;
end.
