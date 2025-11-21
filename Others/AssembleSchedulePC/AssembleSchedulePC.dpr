program AssembleSchedulePC;

uses
  Forms,
  AssembleSchedule1 in 'AssembleSchedule1.pas' {AssembleSchedulemainPC};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAssembleSchedulemainPC, AssembleSchedulemainPC);
  Application.Run;
end.
