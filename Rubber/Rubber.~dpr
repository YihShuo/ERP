program Rubber;

uses
  Forms,
  main1 in 'main1.pas' {main},
  DM1 in 'DM1.pas' {DM: TDataModule},
  RubberFlowChart1 in 'Source\RubberFlowChart1.pas' {RubberFlowChart},
  PlanOrderSRubber1 in 'Source\SN61\PlanOrderSRubber1.pas' {PlanOrderSRubber},
  PlanOrderSRubberDet1 in 'Source\SN61\PlanOrderSRubberDet1.pas' {PlanOrderSRubberDet},
  DeliveryRubber1 in 'Source\SN34\DeliveryRubber1.pas' {DeliveryRubber},
  DeliveryRubberRY1 in 'Source\SN34\DeliveryRubberRY1.pas' {DeliveryRubberRY},
  Chemical_Rubber1 in 'Source\SN62\Chemical_Rubber1.pas' {Chemical_Rubber},
  StaffData1 in 'Source\SN11\StaffData1.pas' {StaffData},
  ModelData1 in 'Source\SN12\ModelData1.pas' {ModelData},
  DataInput1 in 'Source\SN21\DataInput1.pas' {DataInput},
  Salary1 in 'Source\SN63\Salary1.pas' {Salary},
  DeliveryRubber_Print1 in 'Source\SN34\DeliveryRubber_Print1.pas' {DeliveryRubber_Print},
  EntryRubber1 in 'Source\SN22\EntryRubber1.pas' {EntryRubber},
  Entry_CL1 in 'Source\SN22\Entry_CL1.pas' {Entry_CL},
  EntryRubber_Print1 in 'Source\SN22\EntryRubber_Print1.pas' {EntryRubber_Print},
  OrderRubber1 in 'Source\SN32\OrderRubber1.pas' {OrderRubber},
  XXZLRuber1 in 'Source\SN32\XXZLRuber1.pas' {XXZLRuber},
  ImportRY1 in 'Source\SN32\ImportRY1.pas' {ImportRY},
  RWeight1 in 'Source\SN13\RWeight1.pas' {Rweight},
  RWeight_PF1 in 'Source\SN13\RWeight_PF1.pas' {RWeight_PF},
  PFBH1 in 'Source\SN13\PFBH1.pas' {PFBH},
  Modesetup1 in 'Source\SN52\Modesetup1.pas' {modesetup},
  ProductionPlan1 in 'Source\SN53\ProductionPlan1.pas' {ProductionPlan},
  OrderList1 in 'Source\SN53\OrderList1.pas' {OrderList},
  BarcodePrint1 in 'Source\SN53\BarcodePrint1.pas' {barcodeprint},
  Colorsetup1 in 'Source\SN51\Colorsetup1.pas' {colorsetup},
  Keyin1 in 'Source\SN541\Keyin1.pas' {keyin},
  ScanIn1 in 'Source\SN542\ScanIn1.pas' {ScanIn},
  KeyOut1 in 'Source\SN551\KeyOut1.pas' {KeyOut},
  ScanOut1 in 'Source\SN552\ScanOut1.pas' {ScanOut},
  Stornow1 in 'Source\SN64\Stornow1.pas' {Stornow},
  DailyScanInStock1 in 'Source\SN65\DailyScanInStock1.pas' {DailyScanInStock},
  ScanInDetail1 in 'Source\SN65\ScanInDetail1.pas' {ScanInDetail},
  BOMVN_CL1 in 'Source\SN312\BOMVN_CL1.pas' {BOMVN_CL},
  BOMVN_ZS1 in 'Source\SN312\BOMVN_ZS1.pas' {BOMVN_ZS},
  BOMVN1 in 'Source\SN312\BOMVN1.pas' {BOMVN},
  PARTNEW1 in '..\Bom\source\PARTNEW1.pas' {PARTNEW},
  Detail1 in 'Source\SN312\Detail1.pas' {Detail},
  ImportEX1 in 'Source\SN32\ImportEX1.pas' {ImportEX},
  DD_XXZL1 in 'Source\SN32\DD_XXZL1.pas' {DD_XXZL},
  BOMVN_Copy1 in 'Source\SN312\BOMVN_Copy1.pas' {BOMVN_Copy},
  Foxing1 in 'Source\SN14\Foxing1.pas' {Foxing},
  CLLBZL1 in 'Source\SN14\CLLBZL1.pas' {CLLBZL},
  ScanOutRubber1 in 'Source\SN553\ScanOutRubber1.pas' {ScanOutRubber},
  AnytimeRStock1 in 'Source\SN66\AnytimeRStock1.pas' {AnytimeRStock},
  ScanInRevise_workId1 in 'Source\SN56\ScanInRevise_workId1.pas' {ScanInRevise_workId},
  ScanInRevise1 in 'Source\SN56\ScanInRevise1.pas' {ScanInRevise},
  RStock_Month1 in 'Source\SN57\RStock_Month1.pas' {RStock_Month},
  RBOMM1 in 'Source\SN311\RBOMM1.pas' {RBOMM},
  RBOMM_CLZL1 in 'Source\SN311\RBOMM_CLZL1.pas' {RBOMM_CLZL},
  RBOMM_KFZL1 in 'Source\SN311\RBOMM_KFZL1.pas' {RBOMM_KFZL},
  HokaRubberWeight1 in 'Source\SN23\HokaRubberWeight1.pas' {HokaRubberWeight},
  HokaRubberProdWeight1 in 'Source\SN35\HokaRubberProdWeight1.pas' {HokaRubberProdWeight},
  HokaRubberWeightRpt_Print1 in 'Source\SN67\HokaRubberWeightRpt_Print1.pas' {HokaRubberWeightRpt_Print},
  HokaRubberWeightRpt1 in 'Source\SN67\HokaRubberWeightRpt1.pas' {HokaRubberWeightRpt},
  OutsoleInWarehouse1 in 'Source\SN71\OutsoleInWarehouse1.pas' {OutsoleInWarehouse},
  Order_Rubber1 in 'Source\SN71\Order_Rubber1.pas' {Order_Rubber},
  OutsoleOutWarehouse1 in 'Source\SN72\OutsoleOutWarehouse1.pas' {OutsoleOutWarehouse},
  Order_List1 in 'Source\SN72\Order_List1.pas' {Order_List},
  OutsoleStockMonth1 in 'Source\SN73\OutsoleStockMonth1.pas' {OutsoleStockMonth},
  I_CLLBZL1 in 'Source\SN14\I_CLLBZL1.pas' {I_CLLBZL},
  OutsoleInternalFormulaList1 in 'Source\SN74\OutsoleInternalFormulaList1.pas' {OutsoleInternalFormulaList},
  CheckMaterial1 in 'Source\CheckMaterial1.pas' {CheckMaterial},
  scandata_Print1 in 'Source\SN75\scandata_Print1.pas' {scandata_Print},
  scandata1 in 'Source\SN75\scandata1.pas' {ScanData},
  OutsolePrice1 in 'Source\SN76\OutsolePrice1.pas' {OutsolePrice},
  Scanlabel1 in 'Source\SN58\Scanlabel1.pas' {ScanLabel},
  LabelPrint1 in 'Source\SN58\LabelPrint1.pas' {LabelPrint},
  FScanIn1 in 'Source\SN591\FScanIn1.pas' {FScanIn},
  EVAScanIn1 in 'Source\SN582\EVAScanIn1.pas' {EVAScanIn},
  EVAscanout1 in 'Source\SN583\EVAscanout1.pas' {EVAscanout},
  RBLabel1 in 'Source\SN591\RBLabel1.pas' {RBLabel},
  RBScanIn1 in 'Source\SN592\RBScanIn1.pas' {RBScanIn},
  RBscanout1 in 'Source\SN593\RBscanout1.pas' {RBscanout},
  LabelCompare1 in 'Source\SN601\LabelCompare1.pas' {LabelCompare},
  RDispatch1 in 'Source\SN81\RDispatch1.pas' {RDispatch},
  WorkReport1 in 'Source\SN584\WorkReport1.pas' {EVAWorkReport},
  RBWorkReport1 in 'Source\SN594\RBWorkReport1.pas' {RBWorkReport},
  DDHMReport1 in 'Source\SN603\DDHMReport1.pas' {DDHMReport},
  ProductionOut1 in 'Source\SN602\ProductionOut1.pas' {ProductionOut},
  Dispatch_Report1 in 'Source\SN82\Dispatch_Report1.pas' {Dispatch_Report},
  EVAWorkReport21 in 'Source\SN585\EVAWorkReport21.pas' {EVAWorkReport2},
  RBWorkReport21 in 'Source\SN595\RBWorkReport21.pas' {RBWorkReport2},
  ScnaOutWarehouse1 in 'Source\SN554\ScnaOutWarehouse1.pas' {ScnaOutWarehouse},
  RubberLabel1 in '..\Warehouse\Source\SN5A\RubberLabel1.pas' {RubberLabel},
  RubberScanOut1 in 'Source\SN5A1\RubberScanOut1.pas' {RubberScanOut},
  RubberReport1 in 'Source\SN5A2\RubberReport1.pas' {RubberReport},
  ScanInQR in 'Source\SN5B2\ScanInQR.pas' {ScanQR},
  ScanIn_Dep in 'Source\SN5B2\ScanIn_Dep.pas' {Form1},
  QRReport1 in 'Source\SN5B3\QRReport1.pas' {QRReport},
  DetailOutsole in 'Source\SN5B3\DetailOutsole.pas' {Outsole},
  ScanCheck in 'Source\SN5B4\ScanCheck.pas' {ScanCheck1},
  ScanCheckOut in 'Source\SN5B5\ScanCheckOut.pas' {ScanCheckOut1},
  DetailOut in 'Source\SN5B5\DetailOut.pas' {DetailOut1},
  QRReport_Print1 in 'Source\SN5B3\QRReport_Print1.pas' {QRReport_Print},
  Detailb6 in 'Source\SN5B6\Detailb6.pas' {DetailB61},
  DetailReport1 in 'Source\SN594\DetailReport1.pas' {DetailReport},
  WorkReport1Detail1 in 'Source\SN584\WorkReport1Detail1.pas' {WorkReport1Detail},
  Report1 in 'Source\SN5B6\Report1.pas' {Report1Detail},
  EVAReport_1 in 'Source\SN586\EVAReport_1.pas' {EVAReport},
  RB_Report_1 in 'Source\SN596\RB_Report_1.pas' {RBReport_1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TRubberFlowChart, RubberFlowChart);
 // Application.CreateForm(TRBReport_1, RBReport_1);
  // Application.CreateForm(TEVAReport, EVAReport);
  //  Application.CreateForm(TReport1Detail, Report1Detail);
  //Application.CreateForm(TDetailReport, DetailReport);
  //Application.CreateForm(TWorkReport1Detail, WorkReport1Detail);
  // Application.CreateForm(TDetailB61, DetailB61);
  //Application.CreateForm(TQRReport_Print, QRReport_Print);
  //Application.CreateForm(TDetailOut1, DetailOut1);
  //Application.CreateForm(TScanQR, ScanQR);
 //Application.CreateForm(TScan_Dep, Scan_Dep);
 //Application.CreateForm(TQRReport, QRReport);
 //Aplication.CreateForm(TOutsole, Outsole);
 //Aplication.CreateForm(TScanCheck1, ScanCheck1);
 //Application.CreateForm(TScanCheckOut1, ScanCheckOut1);
  Application.Run;
  Application.Terminate;

end.
