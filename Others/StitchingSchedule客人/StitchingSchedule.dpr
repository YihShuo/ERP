program StitchingSchedule;

uses
  Forms,
  StitchingSchedule1 in 'StitchingSchedule1.pas' {StitchingSchedulemain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TStitchingSchedulemain, StitchingSchedulemain);
  Application.Run;
end.
