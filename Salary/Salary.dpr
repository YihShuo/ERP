program Salary;

uses
  Forms,
  windows,
  main1 in 'source\main1.pas' {main},
  ulogin in 'source\ulogin.pas' {LOGIN},
  DM1 in 'source\DM1.pas' {DM: TDataModule},
  Company1 in 'Source\Company1.pas' {Company},
  Department in 'Source\Department.pas' {Bdepartment},
  BWorker1 in 'Source\BWorker1.pas' {BWorker},
  BWorker_Dep1 in 'Source\BWorker_Dep1.pas' {BWorker_Dep},
  DepChange1 in 'Source\DepChange1.pas' {DepChange},
  Individual1 in 'Source\Individual1.pas' {Individual},
  BWorker_Det1 in 'Source\BWorker_Det1.pas' {BWorker_Det},
  Insurance_work1 in 'Source\Insurance_work1.pas' {Insurance_work},
  Insurance1 in 'Source\Insurance1.pas' {Insurance},
  Medicine1 in 'Source\Medicine1.pas' {Medicine},
  RecordMed1 in 'Source\RecordMed1.pas' {RecordMed},
  Record_worker1 in 'Source\Record_worker1.pas' {Record_worker},
  Record_Medicine1 in 'Source\Record_Medicine1.pas' {Record_Medicine},
  BworkerIm1 in 'Source\BworkerIm1.pas' {BworkerIm},
  DepAttendance1 in 'Source\DepAttendance1.pas' {DepAttendance},
  TEST1 in 'Source\SA1111\TEST1.pas' {TEST},
  Timkiem1 in 'Source\Sn22\Timkiem1.pas' {Tim_kiem},
  TK_Print1 in 'Source\Sn22\TK_Print1.pas' {TK_Print};

{$R *.res}

var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'Salary.exe');
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
  Application.Title := 'LaiYih ERP-Salary';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TTEST, TEST);
  login.hide;
  login.free;
 Application.Run;         

end.
