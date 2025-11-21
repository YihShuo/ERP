program BOM;

uses
  Forms,
  windows,
  main1 in 'source\main1.pas' {main},
  ulogin in 'source\ulogin.pas' {LOGIN},
  BOMM1 in 'source\SN31\BOMM1.pas' {BOMM},
  DM3 in 'source\DM3.pas' {DM2: TDataModule},
  BOMVN1 in 'source\SN32\BOMVN1.pas' {BOMVN},
  PartType1 in 'source\PartType1.pas' {PartType},
  BOMVN_BWFL1 in 'source\SN32\BOMVN_BWFL1.pas' {BOMVN_BWFL},
  BOMVN_BW1 in 'source\SN32\BOMVN_BW1.pas' {BOMVN_BW},
  BOMVN_ZS1 in 'source\SN32\BOMVN_ZS1.pas' {BOMVN_ZS},
  BOMVN_CL1 in 'source\SN32\BOMVN_CL1.pas' {BOMVN_CL},
  BOMVN_FL1 in 'source\SN32\BOMVN_FL1.pas' {BOMVN_FL},
  MaterialNew1 in 'source\MaterialNew1.pas' {MaterialNew},
  PARTNEW1 in 'source\PARTNEW1.pas' {PARTNEW},
  BOMVN_copy1 in 'source\SN32\BOMVN_copy1.pas' {BOMVN_copy},
  ProdRate1 in 'source\ProdRate1.pas' {ProdRate},
  Nosearch1 in 'source\Nosearch1.pas' {Nosearch},
  PartClass1 in 'source\PartClass1.pas' {PartClass},
  MaterialList1 in 'source\MaterialList1.pas' {MaterialList},
  MaterialNew_LB1 in 'source\MaterialNew_LB1.pas' {MaterialNew_LB},
  MaterialTools1 in 'source\MaterialTools1.pas' {MaterialTools},
  MaterialTools_LB1 in 'source\MaterialTools_LB1.pas' {MaterialTools_LB},
  MaterialRSL1 in 'source\SN46\MaterialRSL1.pas' {MaterialRSL},
  RSLCFM1 in 'source\SN48\RSLCFM1.pas' {RSLCFM},
  SETRSL_CL1 in 'source\SN472\SETRSL_CL1.pas' {SETRSL_CL},
  SETRSL_ZS1 in 'source\SN472\SETRSL_ZS1.pas' {SETRSL_ZS},
  SETRSL1 in 'source\SN472\SETRSL1.pas' {SETRSL},
  RSLBOMP in 'source\RSLBOMP.pas' {RSLBOM},
  readexcelP in 'source\readexcelP.pas' {readexcelfile},
  ShipbomP in 'source\ShipbomP.pas' {Shipbom},
  SSAICP in 'source\SSAICP.pas' {SSAIC},
  SPRSP in 'source\SPRSP.pas' {SPRS},
  SKUMSP in 'source\SKUMSP.pas' {SKUMS},
  PSpecPrintss1 in 'source\PSpecPrintss1.pas' {PSpecPrintss},
  RSLChemical1 in 'source\SN49\RSLChemical1.pas' {RSLChemical},
  ShowShoePic1 in 'source\SN31\ShowShoePic1.pas' {ShowShoePic},
  materialCompany1 in 'source\SN4A\materialCompany1.pas' {MaterialCompany},
  ManufacturerChoose1 in 'source\SN4A\ManufacturerChoose1.pas' {ManufacturerChoose},
  DDZL_BOMM1 in 'source\SN53\DDZL_BOMM1.pas' {BOMM},
  D_PSPecPrintss_SP1 in 'source\SN53\D_PSPecPrintss_SP1.pas' {D_PSpecPrintss_SP},
  D_PSpecPrintssTW1 in 'source\SN53\D_PSpecPrintssTW1.pas' {D_PSpecPrintssTW},
  D_PSpecPrintss1 in 'source\SN53\D_PSpecPrintss1.pas' {D_PSpecPrintss},
  BOMUsage1 in 'source\SN36\BOMUsage1.pas' {BOMUsage},
  ExceptionOrder1 in 'source\SN36\ExceptionOrder1.pas' {ExceptionOrder},
  ReviseUsage1 in 'source\SN54\ReviseUsage1.pas' {ReviseUsage},
  SetRSLList1 in 'source\SN471\SetRSLList1.pas' {SetRSLList},
  RSLDDGB1 in 'source\SN471\RSLDDGB1.pas' {RSLDDGB},
  RSLSupplier1 in 'source\SN471\RSLSupplier1.pas' {RSLSupplier},
  RSLBatch1 in 'source\SN471\RSLBatch1.pas' {RSLBatch},
  BOMInformation1 in 'source\SN37\BOMInformation1.pas' {BOMInformation},
  Detail1 in 'source\SN322\Detail1.pas' {Detail},
  INKVN_BW1 in 'source\SN322\INKVN_BW1.pas' {INKVN_BW},
  INKVN_CL1 in 'source\SN322\INKVN_CL1.pas' {INKVN_CL},
  INKVN_copy1 in 'source\SN322\INKVN_copy1.pas' {INKVN_copy},
  INKVN_FL1 in 'source\SN322\INKVN_FL1.pas' {INKVN_FL},
  INKVN_ZS1 in 'source\SN322\INKVN_ZS1.pas' {INKVN_ZS},
  INKVN1 in 'source\SN322\INKVN1.pas' {INKVN},
  Revise_CLZL1 in 'source\SN54\Revise_CLZL1.pas' {Revise_CLZL},
  InkRevise_CLZL1 in 'source\SN55\InkRevise_CLZL1.pas' {InkRevise_CLZL},
  InkReviseUsage1 in 'source\SN55\InkReviseUsage1.pas' {InkReviseUsage},
  DevQuota1 in 'source\SN381\DevQuota1.pas' {DevQuota},
  DevQuotaEx1 in 'source\SN381\DevQuotaEx1.pas' {DevQuotaEx},
  DevQuotaSRList1 in 'source\SN381\DevQuotaSRList1.pas' {DevQuotaSRList},
  IntfDocHostUIHandler in 'source\SN22\IntfDocHostUIHandler.pas',
  SOPDocu_template1 in 'source\SN22\SOPDocu_template1.pas' {SOPDocu_template},
  SOPDocu1 in 'source\SN22\SOPDocu1.pas' {SOPDocu},
  SOPFunit1 in 'source\SN22\SOPFunit1.pas',
  UExternalContainer in 'source\SN22\UExternalContainer.pas',
  UNulContainer in 'source\SN22\UNulContainer.pas',
  UPFCExternal in 'source\SN22\UPFCExternal.pas',
  BOM_TLB in 'BOM_TLB.pas',
  GpTextFile in 'source\SN22\GPText unicode\GpTextFile.pas',
  GPHugeF in 'source\SN22\GPText unicode\GpHugeF.pas',
  DSiWin32 in 'source\SN22\GPText unicode\DSiWin32.pas',
  GpLists in 'source\SN22\GPText unicode\GpLists.pas',
  GpStreamWrapper in 'source\SN22\GPText unicode\GpStreamWrapper.pas',
  GpTextStream in 'source\SN22\GPText unicode\GpTextStream.pas',
  SpinLock in 'source\SN22\GPText unicode\SpinLock.pas',
  sevenzip in 'source\SN22\sevenzip.pas',
  SOP_BWBH1 in 'source\SN22\SOP_BWBH1.pas' {SOP_BWBH},
  untClipboard in 'source\SN22\GPText unicode\untClipboard.pas',
  SOPMyProcClass1 in 'source\SN22\SOPMyProcClass1.pas',
  DevQuoatTW1 in 'source\SN383\DevQuoatTW1.pas' {DevQuoatTW},
  SOPDocuCopy1 in 'source\SN22\SOPDocuCopy1.pas' {SOPDocuCopy},
  DevQuotaPrice1 in 'source\SN384\DevQuotaPrice1.pas' {DevQuotaPrice},
  BOM_Audit_Check1 in 'source\SN15\BOM_Audit_Check1.pas' {BOM_Audit_Check},
  SOPProcess_GCBWD1 in 'source\SN23\SOPProcess_GCBWD1.pas' {SOPProcess_GCBWD},
  SOPProcess_Supplier1 in 'source\SN23\SOPProcess_Supplier1.pas' {SOPProcess_Supplier},
  SOPProcess1 in 'source\SN23\SOPProcess1.pas' {SOPProcess},
  SOPPrcessFlow_Part1 in 'source\SN24\SOPPrcessFlow_Part1.pas' {SOPPrcessFlow_Part},
  SOPProcessFlow_Copy1 in 'source\SN24\SOPProcessFlow_Copy1.pas' {SOPProcessFlow_Copy},
  SOPProcessFlow1 in 'source\SN24\SOPProcessFlow1.pas' {SOPProcessFlow},
  KT_SOPCutS_GCBWD1 in 'source\SN23\KT_SOPCutS_GCBWD1.pas' {KT_SOPCutS_GCBWD},
  SOPAdd_XXZLS1 in 'source\SN22\SOPAdd_XXZLS1.pas' {SOPAdd_XXZLS},
  FileTransClient1 in 'source\SN471\FileTransClient1.pas',
  ModelStatus1 in 'source\SN39\ModelStatus1.pas' {ModelStatus},
  SampleOrder_Mat_RSL1 in 'source\SN46\SampleOrder_Mat_RSL1.pas' {SampleOrder_Mat_RSL},
  R_PSepcRintss1 in 'source\SN53\R_PSepcRintss1.pas' {R_PSepcRintss},
  BOMM_Print1 in 'source\SN31\BOMM_Print1.pas' {BOMM_Print},
  ImportVNBOM1 in 'source\SN323\ImportVNBOM1.pas' {ImportVNBOM},
  VD3SpecialBOM1 in 'source\SN3A\VD3SpecialBOM1.pas' {VD3SpecialBOM},
  OrderKhuonIn1 in 'source\SN61\OrderKhuonIn1.pas' {OrderKhuonIn},
  ARTICLE1 in 'source\SN61\ARTICLE1.pas' {ARTICLE},
  KhuonIn_DienTich1 in 'source\SN61\KhuonIn_DienTich1.pas' {KhuonIn_DienTich},
  OrderDetailKhuonIn1 in 'source\SN62\OrderDetailKhuonIn1.pas' {OrderDetailKhuonIn},
  DetailKhuonIn_KCLL1 in 'source\SN62\DetailKhuonIn_KCLL1.pas' {DetailKhuonIn_KCLL},
  KhuonInInWarehouse1 in 'source\SN63\KhuonInInWarehouse1.pas' {KhuonInInWarehouse},
  KhuonInorder1 in 'source\SN63\KhuonInorder1.pas' {KhuonInorder},
  KhuonInOutWarehouse1 in 'source\SN64\KhuonInOutWarehouse1.pas' {KhuonInOutWarehouse},
  KhuonIn_Order1 in 'source\SN64\KhuonIn_Order1.pas' {KhuonIn_Order},
  KhuonInStockMonth1 in 'source\SN65\KhuonInStockMonth1.pas' {KhuonInStockMonth},
  KhuongInQuotation1 in 'source\SN66\KhuongInQuotation1.pas' {KhuonInQuotation},
  KhuonIn_CL1 in 'source\SN66\KhuonIn_CL1.pas' {KhuonIn_CL},
  KhuonIn_PX_Print1 in 'source\SN66\KhuonIn_PX_Print1.pas' {KhuonIn_PX_Print},
  KhuonIn_ZS1 in 'source\SN66\KhuonIn_ZS1.pas' {KhuonIn_ZS},
  KhuonInDeliver1 in 'source\SN66\KhuonInDeliver1.pas' {KhuonInDeliver},
  KhuonInVatTu1 in 'source\SN66\KhuonInVatTu1.pas' {KhuonInVatTu},
  KhuonIn_PX_Print_B1 in 'source\SN66\KhuonIn_PX_Print_B1.pas' {KhuonIn_PX_Print_B},
  SOPProcessCapcity1 in 'source\SN25\SOPProcessCapcity1.pas' {SOPProcessCapcity},
  KhuonIn_PX_Print_C1 in 'source\SN66\KhuonIn_PX_Print_C1.pas' {KhuonIn_PX_Print_C},
  SKU_Price_BUYNO1 in 'source\SN3B\SKU_Price_BUYNO1.pas' {SKU_Price_BUYNO},
  BOM_OrderList1 in 'source\SN3C\BOM_OrderList1.pas' {BOM_OrderList},
  PSpecPrintss_Price1 in 'source\SN3C\PSpecPrintss_Price1.pas' {PSpecPrintss_Price},
  PSPecPrintss_SP_Price1 in 'source\SN3C\PSPecPrintss_SP_Price1.pas' {PSPecPrintss_SP_Price},
  PSpecPrintssTW_Price1 in 'source\SN3C\PSpecPrintssTW_Price1.pas' {PSpecPrintssTW_Price},
  SKU_SA_CODE1 in 'source\SN21\SKU_SA_CODE1.pas' {SKU_SA_CODE},
  XieXing1 in 'source\SN21\XieXing1.pas' {XieXing},
  CostingPriceList1 in 'source\SN385\CostingPriceList1.pas' {CostingPriceList},
  CostingCBD1 in 'source\SN386\CostingCBD1.pas' {CostingCBD},
  Revise_Supp1 in 'source\SN54\Revise_Supp1.pas' {Revise_Supp},
  SupplierFLEXnERP1 in 'source\SN386\SupplierFLEXnERP1.pas' {SupplierFLEXnERP},
  BOM_N385_LYS in 'source\SN385\BOM_N385_LYS.pas' {CostingPriceList_LYS};

{$R *.TLB}

{$R *.res}


var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'BOM.exe');
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
  //Application.CreateForm(TLOGIN, LOGIN);
  Application.Title := 'LaiYih ERP-BOM';
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(Tmain, main);
  //Application.CreateForm(TForm1, Form1);
  login.hide;
  login.free;
  Application.Run;

end.
