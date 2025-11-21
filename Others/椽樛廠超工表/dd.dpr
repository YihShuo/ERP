program dd;

uses
  Forms,
  main in 'source\main.pas' {MAilform},
  da in 'source\da.pas' {dm1: TDataModule},
  datasetup_p in 'source\datasetup_p.pas' {Datasetup},
  datainput_p in 'source\datainput_p.pas' {DataInput},
  modesetup_p in 'source\modesetup_p.pas' {moldsetup},
  monthcostp in 'source\monthcostp.pas' {monthcost};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMAilform, MAilform);
  Application.CreateForm(Tdm1, dm1);
  Application.Run;
end.
