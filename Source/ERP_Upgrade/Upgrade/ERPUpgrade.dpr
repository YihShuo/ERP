program ERPUpgrade;

uses
  Forms,
  Upgrade1 in 'Upgrade1.pas' {Upgrade};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TUpgrade, Upgrade);
  Application.Run;
end.
