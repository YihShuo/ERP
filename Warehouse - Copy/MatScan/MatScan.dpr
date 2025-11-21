program MatScan;

uses
  Forms,
  MaterialScan1 in 'Source\MaterialScan1.pas' {MaterialScan},
  ScanDeliver1 in 'Source\ScanDeliver1.pas' {ScanDeliver};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMaterialScan, MaterialScan);
  Application.Run;
end.
