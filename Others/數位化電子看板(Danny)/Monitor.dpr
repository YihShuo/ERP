program Monitor;

uses
  Forms,
  Monitor1 in 'Monitor1.pas' {MasterScreen1},
  Detail1 in 'Detail1.pas' {Details};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMasterScreen1, MasterScreen1);
  Application.Run;
end.
