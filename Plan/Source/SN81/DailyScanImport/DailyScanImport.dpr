program DailyScanImport;

uses
  Forms,
  Daily_Scan_Import1 in 'Daily_Scan_Import1.pas' {Daily_Scan_Import};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDaily_Scan_Import, Daily_Scan_Import);
  Application.Run;
end.
