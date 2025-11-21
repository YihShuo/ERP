program Rlist;

uses
  Forms,
  Rlistp in 'Rlistp.pas' {Rlists},
  DM1 in '..\R廠配方電子稱\source\DM1.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TRlists, Rlists);

  Application.Run;
end.
