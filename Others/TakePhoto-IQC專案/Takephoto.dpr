program Takephoto;

uses
  Forms,
  Takephoto1 in 'Takephoto1.pas' {TakePoto},
  Department1 in 'Department1.pas' {DepartForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTakePoto, TakePoto);
  // Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
