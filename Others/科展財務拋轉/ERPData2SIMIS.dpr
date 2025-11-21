program ERPData2SIMIS;

uses
  Forms,
  ERP2SIMIS1 in 'ERP2SIMIS1.pas' {ERP2SIMIS},
  FunUnit in 'FunUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TERP2SIMIS, ERP2SIMIS);
  Application.Run;
end.
