program StitchingSchedulePC;

uses
  Forms,
  StitchingSchedule1 in 'StitchingSchedule1.pas' {Stitchingschedulemain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TStitchingschedulemainPC, StitchingScheduleMainPC);
  Application.Run;
end.
