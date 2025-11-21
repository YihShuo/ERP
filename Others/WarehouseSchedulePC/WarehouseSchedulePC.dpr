program WarehouseSchedulePC;

uses
  Forms,
  WarehouseSchedule1 in 'WarehouseSchedule1.pas' {WarehouseScheduleMainPC};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWarehouseScheduleMainPC, WarehouseScheduleMainPC);
  Application.Run;
end.
