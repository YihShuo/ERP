program Extra;

uses
  Forms,
  windows,
  main1 in 'source\main1.pas' {main},
  ulogin in 'source\ulogin.pas' {LOGIN},
  DM3 in 'source\DM3.pas' {DM2: TDataModule},
  OrderList1 in 'Source\OrderList1.pas' {OrderList},
  ExtraCon1 in 'Source\ExtraCon1.pas' {ExtraCon},
  ExtraPur1 in 'Source\ExtraPur1.pas' {ExtraPur},
  MaterialArea1 in '..\Warehouse\Source\MaterialArea1.pas' {MaterialArea},
  MatArea_KC1 in '..\Warehouse\Source\MatArea_KC1.pas' {MatArea_KC},
  Sitearea1 in '..\Warehouse\Source\Sitearea1.pas' {Sitearea},
  ExtraPur_BJ1 in 'Source\ExtraPur_BJ1.pas' {ExtraPur_BJ},
  Quotation_ZS1 in '..\Purchase\Source\SN231\Quotation_ZS1.pas' {Quotation},
  Quotation1 in '..\Purchase\Source\SN231\Quotation1.pas' {Quotation},
  Quotation_CL1 in '..\Purchase\Source\SN231\Quotation_CL1.pas' {Quotation_CL},
  Quotation_CGBJ1 in '..\Purchase\Source\SN231\Quotation_CGBJ1.pas' {Quotation_CL},
  Quotation_Print1 in '..\Purchase\Source\SN231\Quotation_Print1.pas' {Quotation_Print},
  SuppNew1 in '..\Purchase\Source\SuppNew1.pas' {SuppNew},
  Exchange1 in '..\Purchase\Source\SN231\Exchange1.pas' {Exchange},
  Quotation_XX1 in '..\Purchase\Source\SN231\Quotation_XX1.pas' {Quotation_XX},
  ExtraPreview1 in 'Source\ExtraPreview1.pas' {ExtraPreview},
  ExtraOrdList1 in 'Source\ExtraOrdList1.pas' {ExtraOrdList},
  MaterialList1 in 'Source\MaterialList1.pas' {MaterialList},
  MatMoSon1 in 'Source\MatMoSon1.pas' {MatMoSon},
  MatMoSon_M1 in 'Source\MatMoSon_M1.pas' {MatMoSon_M},
  MatMoSon_S1 in 'Source\MatMoSon_S1.pas' {MatMoSon_S},
  ExtraTotal1 in 'Source\ExtraTotal1.pas' {ExtraTotal},
  ExtraTotal_ZS1 in 'Source\ExtraTotal_ZS1.pas' {ExtraTotal_ZS},
  ExtraTotal_CL1 in 'Source\ExtraTotal_CL1.pas' {ExtraTotal_CL},
  ExtraTotal_ZL1 in 'Source\ExtraTotal_ZL1.pas' {ExtraTotal_ZL},
  ExtraTot_Print1 in 'Source\ExtraTot_Print1.pas' {ExtraTot_Print},
  ExtraList1 in 'Source\ExtraList1.pas' {ExtraList},
  ExtraMatList1 in 'Source\ExtraMatList1.pas' {ExtraMatList},
  ExtraPartList1 in 'Source\ExtraPartList1.pas' {ExtraPartList},
  ProSchedule1 in 'Source\ProSchedule1.pas' {ProSchedule},
  MatMoSonQuery1 in 'Source\MatMoSonQuery1.pas' {MatMoSonQuery},
  ExtraMat_ZS1 in 'Source\SN121\ExtraMat_ZS1.pas' {ExtraMat_ZS},
  ExtraMat_CL1 in 'Source\SN121\ExtraMat_CL1.pas' {ExtraMat_CL},
  ExtraMat_Ord1 in 'Source\SN121\ExtraMat_Ord1.pas' {ExtraMat_Ord},
  ExtraMat_ZL1 in 'Source\SN121\ExtraMat_ZL1.pas' {ExtraMat_ZL},
  ExtraMat_Print1 in 'Source\SN121\ExtraMat_Print1.pas' {ExtraMat_Print},
  ExtraMat_Mat1 in 'Source\SN121\ExtraMat_Mat1.pas' {ExtraMat_Mat},
  ExtraMaterial1 in 'Source\SN121\ExtraMaterial1.pas' {ExtraMaterial},
  JGMatQtyClassifyp in 'Source\SN121\JGMatQtyClassifyp.pas' {JGMatQtyClassify},
  ExtraPairs_Mat_ZS1 in 'Source\SN123\ExtraPairs_Mat_ZS1.pas' {ExtraPairs_Mat_ZS},
  ExtraPairs_Mat_ZL1 in 'Source\SN123\ExtraPairs_Mat_ZL1.pas' {ExtraPairs_Mat_ZL},
  ExtraPairs_Article1 in 'Source\SN123\ExtraPairs_Article1.pas' {ExtraPairs_Article},
  ExtraPairs_Material1 in 'Source\SN123\ExtraPairs_Material1.pas' {ExtraPairs_Material},
  ExtraPairs_Mat_Print1 in 'Source\SN123\ExtraPairs_Mat_Print1.pas' {ExtraPairs_Mat_Print},
  ExtraPairs_Mat_Ord1 in 'Source\SN123\ExtraPairs_Mat_Ord1.pas' {ExtraPairs_Mat_Ord},
  ExtraPairs_OrderImport1 in 'Source\SN123\ExtraPairs_OrderImport1.pas' {ExtraPairs_OrderImport},
  ExtraDel_Print1 in 'Source\SN124\ExtraDel_Print1.pas' {ExtraDel_Print},
  ExtraDel1 in 'Source\SN124\ExtraDel1.pas' {ExtraDel},
  DelOther_C_Dep1 in 'Source\SN124\DelOther_C_Dep1.pas' {DelOther_C_Dep},
  ExtraDel_Child1 in 'Source\SN124\ExtraDel_Child1.pas' {ExtraDel_Child},
  ExtraMatKT_CL1 in 'Source\SN121\ExtraMatKT_CL1.pas' {ExtraMatKT_CL},
  ExtraMatKT_Ord1 in 'Source\SN121\ExtraMatKT_Ord1.pas' {ExtraMatKT_Ord},
  ExtraMatKT_Ord_Detail1 in 'Source\SN121\ExtraMatKT_Ord_Detail1.pas' {ExtraMatKT_Ord_Detail},
  ExchExtra1 in 'Source\SN22\ExchExtra1.pas' {ExchExtra},
  ExtraMatCBY_CL1 in 'Source\SN121\ExtraMatCBY_CL1.pas' {ExtraMatCBY_CL},
  ExtraMatCBY_Ord1 in 'Source\SN121\ExtraMatCBY_Ord1.pas' {ExtraMatCBY_Ord},
  ExtraMaterialQuickStep1 in 'Source\SN16\ExtraMaterialQuickStep1.pas' {ExtraMaterialQuickStep},
  ExtraSampleOrdList1 in 'Source\SN33\ExtraSampleOrdList1.pas' {ExtraSampleOrdList},
  PreviewTotal1 in 'Source\SN31\PreviewTotal1.pas' {PreviewTotal},
  CBY_ExtraPur1 in 'Source\SN25\CBY_ExtraPur1.pas' {CBY_ExtraPur},
  CBY_ExtraPur_BJ1 in 'Source\SN25\CBY_ExtraPur_BJ1.pas' {CBY_ExtraPur_BJ},
  JGNOConfirm1 in 'Source\SN1251\JGNOConfirm1.pas' {JGNOConfirm},
  JGNOConfirm21 in 'Source\SN1252\JGNOConfirm21.pas' {JGNOConfirm2},
  JGNOConfirm31 in 'Source\SN1253\JGNOConfirm31.pas' {JGNOConfirm3},
  Traceability_Extra1 in 'Source\SN34\Traceability_Extra1.pas' {Traceability_Extra},
  ExtraNoList1 in 'Source\SN35\ExtraNoList1.pas' {ExtraNoList},
  ExtraAccount1 in 'Source\SN17\ExtraAccount1.pas' {ExtraAccount};

{$R *.res}

var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'Extra.exe');
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
  Application.Title := 'Lai Yih ERP system----Extra';
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(Tmain, main);
  login.hide;
  login.free;
  Application.Run;

end.
