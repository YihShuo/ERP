program Project1;

uses
  Forms,
  DM1 in 'DM1.pas' {DM: TDataModule},
  RPFCLsum1 in 'RPFCLsum1.pas' {RPFCLsum};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  // Application.CreateForm(TRWSituation, RWSituation);
  Application.CreateForm(TRPFCLsum, RPFCLsum);
  Application.Run;
end.
