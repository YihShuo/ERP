program listen;

uses
  Forms,
  listen_p in 'source\listen_p.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
