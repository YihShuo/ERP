program TWDDZL_Y;

uses
  Forms,
  TWDDZL_Y_Syn1 in 'TWDDZL_Y_Syn1.pas' {TWDDZL_Y_Syn};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTWDDZL_Y_Syn, TWDDZL_Y_Syn);
  Application.Run;
end.
