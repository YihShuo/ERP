program DailyMail;

uses
  Forms,
  DailyMail1 in 'DailyMail1.pas' {Daily_Mail};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDaily_Mail, Daily_Mail);
  Application.Run;
end.
