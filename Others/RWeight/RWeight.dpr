program RWeight;

uses
  Forms,
  RWeightp1 in 'Source\RWeightp1.pas' {RWeightp},
  RWeight_PF1 in 'Source\RWeight_PF1.pas' {RWeight_PF},
  PFBH1 in 'Source\PFBH1.pas' {PFBH};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TRWeightp, RWeightp);
  Application.CreateForm(TRWeight_PF, RWeight_PF);
  Application.CreateForm(TPFBH, PFBH);
  Application.Run;
end.
