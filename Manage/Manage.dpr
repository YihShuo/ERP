program Manage;

uses
  Forms,
  windows,
  main1 in 'source\main1.pas' {main},
  ulogin in 'source\ulogin.pas' {LOGIN},
  DM3 in 'source\DM3.pas' {DM2: TDataModule},
  OrderSpec1 in 'source\OrderSpec1.pas' {OrderSpec},
  OrderPrice1 in 'source\OrderPrice1.pas' {OrderPrice},
  DeliverAccount1 in 'source\DeliverAccount1.pas' {DeliverAccount},
  Deliveraccount_Detail1 in 'source\Deliveraccount_Detail1.pas' {Deliveraccount_Detail},
  ReplenishAcc1 in 'source\ReplenishAcc1.pas' {ReplenishAcc},
  DeliverCost1 in 'source\DeliverCost1.pas' {DeliverCost},
  MaterialCost1 in 'source\MaterialCost1.pas' {MaterialCost},
  MaterialCost_Det1 in 'source\MaterialCost_Det1.pas' {MaterialCost_Det},
  PartClass1 in 'source\PartClass1.pas' {PartClass},
  MatType1 in 'source\MatType1.pas' {MatType},
  MatType_Det1 in 'source\MatType_Det1.pas' {MatType_Det},
  MatTotal1 in 'source\MatTotal1.pas' {MatTotal},
  MatStock1 in 'source\MatStock1.pas' {MatStock},
  ReplenishDep1 in 'source\ReplenishDep1.pas' {ReplenishDep},
  ReplenishDep_Det1 in 'source\ReplenishDep_Det1.pas' {ReplenishDep_Det},
  ReplenishOrd1 in 'source\ReplenishOrd1.pas' {ReplenishOrd},
  ReplenishOrd_det1 in 'source\ReplenishOrd_det1.pas' {ReplenishOrd_det},
  MaterialCostRea1 in 'source\MaterialCostRea1.pas' {MaterialCostRea},
  MaterialCostRea_Det1 in 'source\MaterialCostRea_Det1.pas' {MaterialCostRea_Det},
  MatTotal_Det1 in 'source\MatTotal_Det1.pas' {MatTotal_Det},
  MatTotalDep1 in 'source\MatTotalDep1.pas' {MatTotalDep},
  MatTotalDep_Det1 in 'source\MatTotalDep_Det1.pas' {MatTotalDep_Det},
  MaterialCost_Dep1 in 'source\MaterialCost_Dep1.pas' {MaterialCost_Dep},
  MatTotalDep_Dep1 in 'source\MatTotalDep_Dep1.pas' {MatTotalDep_Dep},
  ReplenishRea1 in 'source\ReplenishRea1.pas' {ReplenishRea},
  ReplenishRea_Det1 in 'source\ReplenishRea_Det1.pas' {ReplenishRea_Det},
  ReplenishDaily1 in 'source\ReplenishDaily1.pas' {ReplenishDaily},
  ReplenishDaily_Det1 in 'source\ReplenishDaily_Det1.pas' {ReplenishDaily_Det},
  MatTotalIn1 in 'source\MatTotalIn1.pas' {MatTotalIn},
  DeliverAccFin1 in 'source\DeliverAccFin1.pas' {DeliverAccFin},
  ReplenishDayRate1 in 'source\SN225\ReplenishDayRate1.pas' {ReplenishDayRate},
  DeliverAccFin_det1 in 'source\DeliverAccFin_det1.pas' {DeliverAccFin_det},
  MatPrice1 in 'source\SN15\MatPrice1.pas' {MatPrice},
  MatPrice_Entry1 in 'source\SN15\MatPrice_Entry1.pas' {MatPrice_Entry},
  MatPrice_Mon1 in 'source\SN15\MatPrice_Mon1.pas' {MatPrice_Mon},
  MatPrice_ACC1 in 'source\SN15\MatPrice_ACC1.pas' {MatPrice_ACC},
  MatPrice_Quotation1 in 'source\SN15\MatPrice_Quotation1.pas' {MatPrice_Quotation},
  MatPrice_JGZL1 in 'source\SN15\MatPrice_JGZL1.pas' {MatPrice_JGZL},
  MatStockuse1 in 'source\MatStockuse1.pas' {MatStockuse},
  ModelCost1 in 'source\ModelCost1.pas' {ModelCost},
  MatPrice_For1 in 'source\SN15\MatPrice_For1.pas' {MatPrice_For},
  ModelCost_XCCB1 in 'source\ModelCost_XCCB1.pas' {ModelCost_XCCB},
  ModelCost_XXCB1 in 'source\ModelCost_XXCB1.pas' {ModelCost_XXCB},
  ModelCost_XC1 in 'source\ModelCost_XC1.pas' {ModelCost_XC},
  ModelCost_XX1 in 'source\ModelCost_XX1.pas' {ModelCost_XX},
  costsetup1 in 'source\costsetup1.pas' {costsetup},
  monthcost1 in 'source\monthcost1.pas' {MonthCost},
  FeeMaterialOrd1 in 'source\FeeMaterialOrd1.pas' {FeeMaterialOrd},
  Detailsdata1 in 'source\Detailsdata1.pas' {DetailsData},
  storkin1 in 'source\storkin1.pas' {storkin},
  OrderAnalysisp in '..\QC\Source\OrderAnalysisp.pas' {OrderAnalysis},
  Report6041 in '..\Plan\Source\Report6041.pas' {Report604},
  ReplenishAnlysisP in 'source\ReplenishAnlysisP.pas' {ReplenishAnlysis},
  replenishanlysisdP in 'source\replenishanlysisdP.pas' {ReplenishAnlysisd},
  StockAnlysisp in '..\production\source\StockAnlysisp.pas' {StockAnlysis},
  MonthProductionReportP in 'source\MonthProductionReportP.pas' {MonthProductionReport},
  ReplenishDayRatebyorderp in 'source\ReplenishDayRatebyorderp.pas' {ReplenishDayRatebyorder},
  CGVendorCompareP in 'source\CGVendorCompareP.pas' {CGVendorCompare},
  VendorMapSetP in 'source\VendorMapSetP.pas' {VendorMapSet},
  VendorQueryP in 'source\VendorQueryP.pas' {VendorQuery},
  InStockPriceP in 'source\InStockPriceP.pas' {InStockPrice},
  ShowShoePic1 in '..\BOM\source\SN31\ShowShoePic1.pas' {ShowShoePic},
  CostingBOM1 in 'source\SN19\CostingBOM1.pas' {CostingBOM},
  CostingBOMFL1 in 'source\SN19\CostingBOMFL1.pas' {CostingBOMFL},
  CostBOM_MatPrice1 in 'source\SN19\CostBOM_MatPrice1.pas' {CostBOM_MatPrice},
  CostBOM_NoPrice1 in 'source\SN19\CostBOM_NoPrice1.pas' {CostBOM_NoPrice},
  MonthOutPut1 in '..\Plan\Source\SN541\MonthOutPut1.pas' {MonthOutPut},
  Dep_lean1 in '..\Plan\Source\SN541\Dep_lean1.pas' {Dep_lean},
  MonthOutPutPOH1 in '..\Plan\Source\SN545\MonthOutPutPOH1.pas' {MonthOutPutPOH},
  FactMonthOutPutPOH1 in '..\Plan\Source\SN546\FactMonthOutPutPOH1.pas' {FactMonthOutPutPOH},
  OrderDetail1 in '..\Report\Source\SN51\OrderDetail1.pas' {OrderDetail},
  BrandProduction1 in '..\Report\Source\SN51\BrandProduction1.pas' {BrandProduction},
  ExportQuantity1 in '..\Production\source\SN526\ExportQuantity1.pas' {ExportQuantity},
  HRMDepartmentAttend1 in '..\Report\Source\SN94\HRMDepartmentAttend1.pas' {HRMDepartmentAttend},
  HRMNHhanVien1 in '..\Report\Source\SN94\HRMNHhanVien1.pas' {HRMNHhanVien},
  ExcelSheetDlg1 in '..\Plan\Source\SN545\ExcelSheetDlg1.pas' {ExcelSheetDlg},
  MQRShoeBC1 in '..\Report\Source\SN76\MQRShoeBC1.pas' {MQRShoeBC},
  ReplenishDayRateDet1 in 'source\SN225\ReplenishDayRateDet1.pas' {ReplenishDayRateDet},
  ExtraCost in 'source\SN56\ExtraCost.pas' {ExtraCost1},
  ExtraMatNo1 in 'source\SN56\ExtraMatNo1.pas' {ExtraMatNo},
  MaterialCBDPrice1 in 'source\SN35\MaterialCBDPrice1.pas' {MaterialCBDPrice},
  CLZLCBDPrice1 in 'source\SN35\CLZLCBDPrice1.pas' {CLZLCBDPrice},
  ACKTMONTH1 in 'source\SN26\ACKTMONTH1.pas' {ACKTMONTH},
  MaterialCBDPrice_SKU1 in 'source\SN35\MaterialCBDPrice_SKU1.pas' {MaterialCBDPrice_SKU},
  TWDDZL_Y1 in 'source\SN1A\TWDDZL_Y1.pas' {TWDDZL_Y},
  CostSheet1 in 'source\SN214\CostSheet1.pas' {CostSheet},
  CostSheet_CBD1 in 'source\SN214\CostSheet_CBD1.pas' {CostSheet_CBD},
  Kpi_Factory1 in 'source\SN61\Kpi_Factory1.pas' {KPI_Factory};

{$R *.res}

var   MutexHandle:Thandle;
begin 
  Mutexhandle:=windows.CreateMutex(nil,true,'Manage.exe');
  if   Mutexhandle<>0   then
    begin
      if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
        begin
          closehandle(Mutexhandle);
          halt;
        end;
    end;
  Application.Initialize;
  login:=tlogin.create(application);
  login.Show;
  login.Update;
//  Application.CreateForm(TLOGIN, LOGIN);
  Application.Title := 'Lai Yih ERP system----Manage';
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(Tmain, main);
  login.hide;
  login.free;
  Application.Run;

end.
