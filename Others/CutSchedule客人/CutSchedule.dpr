program CutSchedule;

uses
  Forms,
  CutSchedule1 in 'CutSchedule1.pas' {Cuttingschedulemain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCuttingschedulemain, Cuttingschedulemain);
  Application.Run;
end.
