program Project1;

uses
  Forms,
  ShowPicture1 in 'ShowPicture1.pas' {ShowPicture};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TShowPicture, ShowPicture);
  Application.Run;
end.
