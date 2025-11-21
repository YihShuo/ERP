program EnCrypt;

uses
  Forms,
  EnCryptUnit1 in 'EnCryptUnit1.pas' {EnDecrpt};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TEnDecrpt, EnDecrpt);
  Application.Run;
end.
