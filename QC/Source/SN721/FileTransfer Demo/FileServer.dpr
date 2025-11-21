program FileServer;

uses
  SvcMgr,
  FileServer1 in 'FileServer1.pas' {FileHttpServer: TService};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFileHttpServer, FileHttpServer);
  Application.Run;
end.
