program ERP_P;

uses
  Forms,
  ERP_P1 in 'ERP_P1.pas' {Update};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TUpdate, Update);
  Application.Run;
end.
