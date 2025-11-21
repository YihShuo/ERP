program FileCS;

uses
  Forms,
  FileClient1 in 'FileClient1.pas' {FileClient},
  FileTransClient1 in 'FileTransClient1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFileClient, FileClient);
  Application.Run;
end.
