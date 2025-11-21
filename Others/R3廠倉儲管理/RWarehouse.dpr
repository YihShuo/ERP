program RWarehouse;

uses
  Forms,
  mailP in 'Source\mailP.pas' {main},
  DM2P in 'Source\DM2P.pas' {dm2: TDataModule},
  colorsetupP in 'Source\colorsetupP.pas' {colorsetup},
  modesetup_p in 'Source\modesetup_p.pas' {moldsetup},
  ProductionPlanP in 'Source\ProductionPlanP.pas' {ProductionPlan},
  OrderlistP in 'Source\OrderlistP.pas' {Orderlist},
  scaninP in 'Source\scaninP.pas' {ScanIn},
  KeyInP in 'Source\KeyInP.pas' {keyin},
  keyoutp in 'Source\keyoutp.pas' {keyout},
  scanoutP in 'Source\scanoutP.pas' {scanout},
  stornowP in 'Source\stornowP.pas' {stornow},
  barcodepringP in 'Source\barcodepringP.pas' {barcodepring};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tdm2, dm2);
  Application.Run;
end.
