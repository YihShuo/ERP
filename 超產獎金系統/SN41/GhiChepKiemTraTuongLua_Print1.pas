unit GhiChepKiemTraTuongLua_Print1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  qrpctrls, Data.DB, Data.Win.ADODB, MyADOQuery;

type
  TGhiChepKiemTraTuongLua_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    L1: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel_TLuaNo: TQRLabel;
    QRPBand1: TQRPBand;
    TuongLuaQry: TMyADOQuery;
    DS1: TDataSource;
    TuongLuaQryTLuaNo: TStringField;
    TuongLuaQryTLTen: TWideStringField;
    TuongLuaQryTLDate: TDateTimeField;
    TuongLuaQryUSERNAME: TStringField;
    TuongLuaQryUserCFM: TStringField;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    TuongLuaQryTTBinhThuong: TWideStringField;
    TuongLuaQryTTKhongBinhThuong: TWideStringField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    TempQry: TMyADOQuery;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    TuongLuaQryUserID: TStringField;
    TuongLuaQryCFMID: TStringField;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    TuongLuaQryTLMa: TStringField;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape26: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape27: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape28: TQRShape;
    QRLabel21: TQRLabel;
    QUserName: TQRLabel;
    QCFMName1: TQRLabel;
    QCFMName: TQRLabel;
    QUserDate: TQRLabel;
    QCFMDate1: TQRLabel;
    QCFMDate: TQRLabel;
    TuongLuaQryUserCFM1: TStringField;
    TuongLuaQryUserDate: TDateTimeField;
    TuongLuaQryCFMDate: TDateTimeField;
    TuongLuaQryCFMDate1: TDateTimeField;
    QRLabel56: TQRLabel;
    QPage1: TQRLabel;
    QRLabel57: TQRLabel;
    QRSysData2: TQRSysData;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
    procedure InitData(Paper:byte);
  end;

var
  GhiChepKiemTraTuongLua_Print: TGhiChepKiemTraTuongLua_Print;

implementation
  uses DM1,GhiChepKiemTraTuongLua1;

{$R *.dfm}

procedure TGhiChepKiemTraTuongLua_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepKiemTraTuongLua_Print.InitData(Paper:byte);
var IsFirewallOorServerCheck:boolean;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  //
  if Paper=1 then
  begin
    IsFirewallOorServerCheck:=true;
    L1.Caption:='BẢNG GHI CHÉP CÔNG VIỆC KIỂM TRA HÀNG NGÀY CỦA PHÒNG MÁY CHỦ';
    QRLabel1.Caption:='機房日常工作檢查紀錄表';
//    QRLabel11.Caption:='A-IT-003A';
    QRLabel11.Caption:='CT-07F';
  end else
  begin
    IsFirewallOorServerCheck:=false;
    L1.Caption:='BẢNG GHI CHÉP KIỂM TRA TƯỜNG LỬA';
    QRLabel1.Caption:='防火牆檢查紀錄表';
    QRLabel11.Caption:='A-IT-004A';
  end;
  //
  with TuongLuaQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ITPC_GhiChepTuongLuaChiTiet.TLuaNo,ITPC_GhiChepTuongLuaChiTiet.TLTen');
    SQL.Add('		   ,cast(case when TTBinhThuong=''1'' then ''V'' else '''' end as nvarchar(50)) as TTBinhThuong');
    SQL.Add('		   ,cast(case when TTKhongBinhThuong=''1'' then ''V'' else '''' end as nvarchar(50)) as TTKhongBinhThuong');
    SQL.Add('		   ,ITPC_GhiChepTuongLua.TLDate');
    SQL.Add('		   ,Busers.USERNAME, ITPC_GhiChepTuongLua.UserDate');
    SQL.Add('		   ,Busers_CFM.USERNAME as UserCFM, ITPC_GhiChepTuongLua.CFMDate');
    SQL.Add('		   ,Busers_CFM1.USERNAME as UserCFM1, ITPC_GhiChepTuongLua.CFMDate1');
    SQL.Add('       ,ITPC_GhiChepTuongLua.UserID,ITPC_GhiChepTuongLua.CFMID');
    SQL.Add('       ,ITPC_GhiChepTuongLuaChiTiet.TLMa');
    SQL.Add('from ITPC_GhiChepTuongLuaChiTiet');
    SQL.Add('left join ITPC_GhiChepTuongLua on ITPC_GhiChepTuongLuaChiTiet.TLuaNo=ITPC_GhiChepTuongLua.TLuaNo');
    SQL.Add('left join ITPC_DanhSachTenTuongLua on ITPC_GhiChepTuongLuaChiTiet.TLMa=ITPC_DanhSachTenTuongLua.TLMa');
    SQL.Add('left join LIY_ERP.dbo.Busers Busers on ITPC_GhiChepTuongLua.UserID=Busers.USERID');
    SQL.Add('left join LIY_ERP.dbo.Busers Busers_CFM on ITPC_GhiChepTuongLua.CFMID=Busers_CFM.USERID ');
    SQL.Add('left join LIY_ERP.dbo.Busers Busers_CFM1 on ITPC_GhiChepTuongLua.CFMID1=Busers_CFM1.USERID ');
    SQL.Add('where 1=1 ');
    if IsFirewallOorServerCheck=true then
    begin
      SQL.Add(' and ITPC_DanhSachTenTuongLua.LB=''01'' ');
    end else
    begin
      SQL.Add(' and ITPC_DanhSachTenTuongLua.LB=''04'' ');
    end;
    SQL.Add(' and ITPC_GhiChepTuongLua.TLuaNo=:TLuaNo ');
    Active:=true;
  end;
  //
  QRLabel_TLuaNo.Caption:= TuongLuaQry.FieldByName('TLuaNo').AsString;
  QUserName.Caption:= TuongLuaQry.FieldByName('UserName').AsString;
  QUserDate.Caption:=GhiChepKiemTraTuongLua.GetTaiwnDateTime(TuongLuaQry.FieldByName('UserDate').Value);
  QCFMName.Caption:= TuongLuaQry.FieldByName('UserCFM').AsString;
  QCFMDate.Caption:= GhiChepKiemTraTuongLua.GetTaiwnDateTime(TuongLuaQry.FieldByName('CFMDate').Value);
  QCFMName1.Caption:= TuongLuaQry.FieldByName('UserCFM1').AsString;
  QCFMDate1.Caption:= GhiChepKiemTraTuongLua.GetTaiwnDateTime(TuongLuaQry.FieldByName('CFMDate1').Value);
  //
  CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Images\'+TuongLuaQry.FieldByName('USERID').AsString+'.bmp'),Pchar(AppDir+'Images\'+TuongLuaQry.FieldByName('USERID').AsString+'.bmp'),false);
  if FileExists(AppDir+'Images\'+TuongLuaQry.FieldByName('USERID').AsString+'.bmp') then
  begin
  //  USERIDImg.Picture.LoadFromFile(AppDir+'Images\'+TuongLuaQry.FieldByName('USERID').AsString+'.bmp');
  end;
  //
  CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Images\'+TuongLuaQry.FieldByName('CFMID').AsString+'.bmp'),Pchar(AppDir+'Images\'+TuongLuaQry.FieldByName('CFMID').AsString+'.bmp'),false);
  if FileExists(AppDir+'Images\'+TuongLuaQry.FieldByName('CFMID').AsString+'.bmp') then
  begin
 //   CFMIDImg.Picture.LoadFromFile(AppDir+'Images\'+TuongLuaQry.FieldByName('CFMID').AsString+'.bmp');
  end;
  //
end;
//
procedure TGhiChepKiemTraTuongLua_Print.FormDestroy(Sender: TObject);
begin
  GhiChepKiemTraTuongLua_Print:=nil;
end;

procedure TGhiChepKiemTraTuongLua_Print.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if ((TuongLuaQry.FieldByName('TLMa').Value='TL22') or (TuongLuaQry.FieldByName('TLMa').Value='TL23')
       or (TuongLuaQry.FieldByName('TLMa').Value='TL24') or (TuongLuaQry.FieldByName('TLMa').Value='TL25') ) then
  begin
    QRLabel6.Caption:='Mỗi tuần 每週';
  end else if ((TuongLuaQry.FieldByName('TLMa').Value='TL26') or (TuongLuaQry.FieldByName('TLMa').Value='TL27') ) then
  begin
    QRLabel6.Caption:='Mỗi tháng 每月';
  end else if ((TuongLuaQry.FieldByName('TLMa').Value='TL28') or (TuongLuaQry.FieldByName('TLMa').Value='TL29') ) then
  begin
    QRLabel6.Caption:='Mỗi  qúy 每季';
  end else if ((TuongLuaQry.FieldByName('TLMa').Value='TL30') or (TuongLuaQry.FieldByName('TLMa').Value='TL31')  or (TuongLuaQry.FieldByName('TLMa').Value='TL32') ) then
  begin
    QRLabel6.Caption:='Mỗi  qúy 每年';
  end else
  begin
    QRLabel6.Caption:='Mỗi ngày 每日';
  end;

end;

end.
