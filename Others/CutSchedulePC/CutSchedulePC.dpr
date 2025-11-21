program CutSchedulePC;

uses
  Forms,
  CutSchedule1 in 'CutSchedule1.pas' {CutScheduleMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCutScheduleMainPC, CutScheduleMainPC);
  Application.Run;
end.
