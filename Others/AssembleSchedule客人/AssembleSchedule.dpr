program AssembleSchedule;

uses
  Forms,
  AssembleSchedule1 in 'AssembleSchedule1.pas' {AssembleSchedulemain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAssembleSchedulemain, AssembleSchedulemain);
  Application.Run;
end.
