program YWCPKT;

uses
  Forms,
  YWCPKT1 in 'YWCPKT1.pas' {YWCPKTForm},
  DM1 in 'DM1.pas' {DM};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TYWCPKTForm, YWCPKTForm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
