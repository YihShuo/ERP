program Mat_INVOICE;

uses
  Forms,
  MatINVOICE1 in 'MatINVOICE1.pas' {MatINVOICE};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMatINVOICE, MatINVOICE);
  Application.Run;
end.
