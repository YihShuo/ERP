program Report;

uses
  Forms,
  windows,
  Main1 in 'Source\Main1.pas' {Main},
  BrandProduction1 in 'Source\SN51\BrandProduction1.pas' {BrandProduction},
  DM1 in 'Source\DM1.pas' {DM: TDataModule},
  DTProductionReport1 in 'Source\SN52\DTProductionReport1.pas' {DTProductionReport},
  MQRBDP in 'Source\SN71\MQRBDP.pas' {MQRBD},
  MQRBDefP in 'Source\SN72\MQRBDefP.pas' {MQRBDef},
  DQRBHP in 'Source\SN73\DQRBHP.pas' {DQRBH},
  StuffCost1 in 'Source\SN31\StuffCost1.pas' {StuffCost},
  SampleMergeRptP in 'source\SN81\SampleMergeRptP.pas' {SampleMergeRpt},
  DCMatQtyRptp in 'source\SN82\DCMatQtyRptp.pas' {DCMatQtyRpt},
  FFTInfoP in 'Source\SN74\FFTInfoP.pas' {FFTInfo},
  FFT_Dep in 'Source\SN74\FFT_Dep.pas' {FFTDep},
  FFT_Panelp in 'Source\SN75\FFT_Panelp.pas' {FFTPanel},
  FFT_Panel_DepP in 'Source\SN75\FFT_Panel_DepP.pas' {FFT_Panel_Dep},
  SimpleSelection1 in 'Source\SN31\SimpleSelection1.pas' {SimpleSelection},
  DCMatExpP in 'Source\SN83\DCMatExpP.pas' {DCMatExp},
  DailyProductionDepOrd1 in 'Source\SN53\DailyProductionDepOrd1.pas' {DailyProductionDepOrd},
  DailyProductionDep1 in 'Source\SN54\DailyProductionDep1.pas' {DailyProductionDep},
  Supp2Matp in 'Source\SN32\Supp2Matp.pas' {Supp2Mat},
  MonthOrderQtyp in 'Source\SN21\MonthOrderQtyp.pas' {MonthOrderQty},
  ConOrderQty1 in 'Source\SN22\ConOrderQty1.pas' {ConOrderQty},
  SampleTrackingRpt1 in 'Source\SN841\SampleTrackingRpt1.pas' {SampleTrackingRpt},
  MQRShoeBC1 in 'Source\SN76\MQRShoeBC1.pas' {MQRShoeBC},
  SampleTrackingStatistics1 in 'Source\SN842\SampleTrackingStatistics1.pas' {SampleTrackingStatistics},
  SampleTrackingReason1 in 'Source\SN843\SampleTrackingReason1.pas' {SampleTrackingReason},
  MonthlyReportShoeB1 in 'Source\SN77\MonthlyReportShoeB1.pas' {MonthlyReportShoeB},
  DailyQCRpt1 in 'Source\SN732\DailyQCRpt1.pas' {DailyQCRpt},
  MASSHRM1 in 'Source\SN91\MASSHRM1.pas' {MASSHRM},
  QCRptTV1 in 'Source\SN733\QCRptTV1.pas' {QCRptTV},
  ShoeTracking1 in '..\Develop\Source\SN256\ShoeTracking1.pas' {ShoeTracking},
  MassHRMEffection1 in 'Source\SN93\MassHRMEffection1.pas' {MassHRMEffection},
  QCTVDep1 in 'Source\SN733\QCTVDep1.pas' {QCTVDep},
  YearOrderQty1 in 'Source\SN23\YearOrderQty1.pas' {YearOrderQty},
  ExcelSheetDlg1 in '..\Plan\Source\SN545\ExcelSheetDlg1.pas' {ExcelSheetDlg},
  OrderDetail1 in 'Source\SN51\OrderDetail1.pas' {OrderDetail},
  HRMDepartmentAttend1 in 'Source\SN94\HRMDepartmentAttend1.pas' {HRMDepartmentAttend},
  HRMNHhanVien1 in 'Source\SN94\HRMNHhanVien1.pas' {HRMNHhanVien},
  POHAnalysis1 in 'Source\SN24\POHAnalysis1.pas' {POHAnalysis},
  Detail_POHAnalysis1 in 'Source\SN25\Detail_POHAnalysis1.pas' {Detail_POHAnalysis},
  QCRptDailyFFT1 in 'Source\SN734\QCRptDailyFFT1.pas' {QCRptDailyFFT};

{$R *.res}
var   MutexHandle:Thandle;

begin
  Mutexhandle:=windows.CreateMutex(nil,true,'Report.exe');
  if   Mutexhandle<>0   then
    begin
      if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
        begin
          closehandle(Mutexhandle);
          halt;
        end;
    end;
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
