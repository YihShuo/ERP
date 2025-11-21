program Rfactory;

uses
  Forms,
  windows,
  main1 in 'source\main1.pas' {main},
  Rlistp in 'source\Rlistp.pas' {Rlist},
  DM1 in 'source\DM1.pas' {DM: TDataModule},
  RWeightp1 in 'source\RWeightp1.pas' {RWeightp},
  RWSituation1 in 'source\RWSituation1.pas' {RWSituation},
  RWStatics1 in 'source\RWStatics1.pas' {RWStatics},
  RWAmount1 in 'source\RWAmount1.pas' {RWAmount};

{$R *.res}

var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'Rfactory.exe');
  if   Mutexhandle<>0   then
  begin
    if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
    begin
      closehandle(Mutexhandle);
      halt;
    end;
  end;
  Application.Initialize;
  Application.Title := 'LaiYih ERP-R factory';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tmain, main);
  Application.Run;
end.
