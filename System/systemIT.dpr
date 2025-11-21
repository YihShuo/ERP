program systemIT;

uses
  Forms,
  Windows,
  main1 in 'source\main1.pas' {main},
  ulogin in 'source\ulogin.pas' {LOGIN},
  DM3 in 'source\DM3.pas' {DM2: TDataModule},
  SysUser1 in 'source\SysUser1.pas' {SysUser},
  Sysuser_work1 in 'source\Sysuser_work1.pas' {Sysuser_work},
  limit1 in 'source\limit1.pas' {limit},
  Lock1 in 'source\Lock1.pas' {Lock},
  Switch1 in 'source\Switch1.pas' {Switch},
  CopyLimit1 in 'source\CopyLimit1.pas' {CopyLimit},
  Report1 in 'source\N1\Report1.pas' {Report},
  UILanguages1 in 'source\N5\UILanguages1.pas' {UILanguages},
  Module1 in 'source\N5\Module1.pas' {Module},
  Unit1 in 'source\N6\Unit1.pas' {Giathanhthieuvattu},
  themma in 'source\N6\themma.pas' {themvattu},
  DataSQ1 in 'source\N7\DataSQ1.pas' {DataSQ};

{$R *.res}


var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'systemIT.exe');
  if   Mutexhandle<>0   then
    begin
      if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
        begin
          closehandle(Mutexhandle);
          halt;
        end;
    end;
 Application.Initialize;
  login:=tlogin.create(application);
  login.Show;
  login.Update;
//  Application.CreateForm(TLOGIN, LOGIN);
  Application.Title := 'LaiYih ERP system';
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(Tmain, main);
  login.hide;
  login.free;
 Application.Run;  

end.
