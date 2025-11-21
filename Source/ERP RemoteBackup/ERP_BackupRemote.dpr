program ERP_BackupRemote;

uses
  Forms,
  CopyUnit1 in 'CopyUnit1.pas' {CopyForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCopyForm, CopyForm);
  Application.Run;
end.
