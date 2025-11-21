program ProductionBonus;

uses
  Vcl.Forms,
  Windows,
  main1 in 'main1.pas' {main},
  DM1 in 'DM1.pas' {DM2: TDataModule},
  FunUnit in 'FunUnit.pas',
  chamcong_bonus1 in 'SN11\chamcong_bonus1.pas' {ChamCong_Bonus},
  HRMSys1 in 'SN11\HRMSys1.pas' {HRMForm},
  ST_CHUCVU1 in 'SN11\ST_CHUCVU1.pas' {ST_CHUCVU},
  ST_DONVI1 in 'SN11\ST_DONVI1.pas' {ST_DONVI},
  ProdBonus1 in 'SN21\ProdBonus1.pas' {ProdBonus},
  IT_ORGLEVEL_DONVI1 in 'SN21\IT_ORGLEVEL_DONVI1.pas' {IT_ORGLEVEL_DONVI},
  IT_ORGLEVEL1 in 'SN21\IT_ORGLEVEL1.pas' {IT_ORGLEVEL},
  IT_ORGLEVEL_Show1 in 'SN21\IT_ORGLEVEL_Show1.pas' {IT_ORGLEVEL_Show},
  IT_NHANVIEN_DONVI1 in 'SN11\IT_NHANVIEN_DONVI1.pas' {IT_NHANVIEN_DONVI},
  chamcong_bonus_print1 in 'SN11\chamcong_bonus_print1.pas' {Chamcong_bonus_print},
  SupervisorData1 in 'SN12\SupervisorData1.pas' {SupervisorData},
  History1 in 'SN12\History1.pas' {History},
  LeaveData1 in 'SN13\LeaveData1.pas' {LeaveData},
  LeaveData_ID1 in 'SN13\LeaveData_ID1.pas' {LeaveData_ID},
  FoodPurchaseList1 in 'SN31\FoodPurchaseList1.pas' {FoodPurchaseList},
  Foodstuff1 in 'SN31\Foodstuff1.pas' {Foodstuff},
  DailyMenu1 in 'SN32\DailyMenu1.pas' {DailyMenu},
  ExportDlg1 in 'SN32\ExportDlg1.pas' {ExportDlg},
  GhiChepKiemTraTuongLua1 in 'SN41\GhiChepKiemTraTuongLua1.pas' {GhiChepKiemTraTuongLua},
  GhiChepKiemTraTuongLua_Print1 in 'SN41\GhiChepKiemTraTuongLua_Print1.pas' {GhiChepKiemTraTuongLua_Print},
  GhiChepKhoiPhucDuLieu1 in 'SN42\GhiChepKhoiPhucDuLieu1.pas' {GhiChepKhoiPhucDuLieu},
  GhiChepKhoiPhucDuLieu_Print1 in 'SN42\GhiChepKhoiPhucDuLieu_Print1.pas' {GhiChepKhoiPhucDuLieu_Print},
  GhiChepKhoiPhucDuLieuThucTe_Print1 in 'SN42\GhiChepKhoiPhucDuLieuThucTe_Print1.pas' {GhiChepKhoiPhucDuLieuThucTe_Print},
  GhiChepDongGoiDuLieu_Print1 in 'SN43\GhiChepDongGoiDuLieu_Print1.pas' {GhiChepDongGoiDuLieu_Print},
  GhiChepDongGoiDuLieu1 in 'SN43\GhiChepDongGoiDuLieu1.pas' {GhiChepDongGoiDuLieu},
  DKOrganization_Group1 in 'SN51\DKOrganization_Group1.pas' {DKOrganization_Group},
  DKorganization_ORG_KIND1 in 'SN51\DKorganization_ORG_KIND1.pas' {DKorganization_ORG_KIND},
  DKorganization_Org1 in 'SN51\DKorganization_Org1.pas' {DKorganization_Org},
  DKorganization_ORGLEVEL1 in 'SN51\DKorganization_ORGLEVEL1.pas' {DKorganization_ORGLEVEL},
  DKorganization_Role1 in 'SN51\DKorganization_Role1.pas' {DKorganization_Role},
  DKorganization1 in 'SN51\DKorganization1.pas' {DKorganization},
  Directory_LeaveRuler1 in 'SN14\Directory_LeaveRuler1.pas' {Directory_LeaveRuler},
  Directory_LeaveRuler_ID1 in 'SN14\Directory_LeaveRuler_ID1.pas' {Directory_LeaveRuler_ID},
  Directory_Position1 in 'SN12\Directory_Position1.pas' {Directory_Position},
  Directory_Nationality1 in 'SN12\Directory_Nationality1.pas' {Directory_Nationality},
  Directory_Department1 in 'SN12\Directory_Department1.pas' {Directory_Department},
  Directory_Factory1 in 'SN12\Directory_Factory1.pas' {Directory_Factory},
  Directory_LeaveRuler_Cal1 in 'SN14\Directory_LeaveRuler_Cal1.pas' {Directory_LeaveRuler_Cal},
  WF_RegularLeaves1 in 'SN16\WF_RegularLeaves1.pas' {WF_RegularLeaves},
  Directory_LeaveTrafficfee1 in 'SN14\Directory_LeaveTrafficfee1.pas' {Directory_LeaveTrafficfee},
  WF_TravelFee1 in 'SN17\WF_TravelFee1.pas' {WF_TravelFee},
  BookTicket1 in 'SN15\BookTicket1.pas' {BookTicket},
  BookTicket_QRpt1 in 'SN15\BookTicket_QRpt1.pas' {BookTicket_QRpt},
  PerformanceRating1 in 'SN61\PerformanceRating1.pas' {PerformanceRating},
  LYN_USERGROUPS1 in 'SN62\LYN_USERGROUPS1.pas' {LYN_USERGROUPS},
  ExpData1 in 'SN71\ExpData1.pas' {ExpData},
  KPICheck1 in 'SN63\KPICheck1.pas' {KPICheck},
  GhiChepDongGoiDuLieuNgay_Print1 in 'SN43\GhiChepDongGoiDuLieuNgay_Print1.pas' {GhiChepDongGoiDuLieuNgay_Print},
  GhiChepDongGoiDuLieuNgay1 in 'SN43\GhiChepDongGoiDuLieuNgay1.pas' {GhiChepDongGoiDuLieuNgay};

{$R *.res}
var   MutexHandle:Thandle;
begin
  Mutexhandle:=windows.CreateMutex(nil,true,'ProductionBonus.exe');
  if   Mutexhandle<>0   then
  begin
      if   getlasterror=windows.ERROR_ALREADY_EXISTS   then
      begin
          closehandle(Mutexhandle);
          halt;
      end;
  end;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(Tmain, main);
  Application.Run;
end.
