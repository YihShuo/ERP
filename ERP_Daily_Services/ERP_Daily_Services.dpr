program ERP_Daily_Services;

uses
  SvcMgr,
  ServicesUnit in 'ServicesUnit.pas' {ServiceModule: TService},
  MainUnit in 'MainUnit.pas' {MainForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TServiceModule, ServiceModule);
  //Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
