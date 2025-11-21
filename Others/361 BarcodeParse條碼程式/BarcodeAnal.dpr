program BarcodeAnal;

uses
  Forms,
  BarcodeAnaly in 'BarcodeAnaly.pas' {BarCodeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBarCodeForm, BarCodeForm);
  Application.Run;
end.
