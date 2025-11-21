program Rlogin;

uses
  Forms,
  ulogin in 'source\ulogin.pas' {LOGIN},
  DM1 in 'source\DM1.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLOGIN, LOGIN);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
