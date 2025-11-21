program KCPKRK_CO;

uses
  Forms,
  KCPKRK1 in 'KCPKRK1.pas' {KCPKRK},
  FunUnit in 'FunUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TKCPKRK, KCPKRK);
  Application.Run;
end.
