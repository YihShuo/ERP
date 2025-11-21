program Scan;

uses
  Forms,
  LabelFinished_Scan1 in 'source\LabelFinished_Scan1.pas' {LabelFinished_Scan},
  LabelFinished1 in 'source\LabelFinished1.pas' {LabelFinished},
  DM1 in 'source\DM1.pas' {DM: TDataModule},
  LabelFinished_Out1 in 'source\LabelFinished_Out1.pas' {LabelFinished_Out};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLabelFinished, LabelFinished);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
