program ERPCommit;

uses
  Forms,
  Commit1 in 'Commit1.pas' {Commit};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCommit, Commit);
  Application.Run;
end.
