unit GhiChepDongGoiDuLieuNgay_Print1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, qrpctrls, QuickRpt,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOQuery,fununit;

type
  TGhiChepDongGoiDuLieuNgay_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    L1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QPage1: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRShape17: TQRShape;
    QRBand3: TQRBand;
    QRISO: TQRLabel;
    QCFMDate: TQRLabel;
    QCFMDate1: TQRLabel;
    QCFMName: TQRLabel;
    QCFMName1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QUserDate: TQRLabel;
    QUserName: TQRLabel;
    QRShape38: TQRShape;
    QRBand2: TQRBand;
    DS1: TDataSource;
    TempQry: TMyADOQuery;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape8: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape13: TQRShape;
    QRShape23: TQRShape;
    QRDBText50: TQRDBText;
    QRLabel93: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel94: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRLabel2: TQRLabel;
    DongGoiQry: TMyADOQuery;
    DongGoiQryTC1: TStringField;
    DongGoiQryUSERID: TStringField;
    DongGoiQryCFMID: TStringField;
    DongGoiQryUSERNAME: TStringField;
    DongGoiQryUserCFM: TStringField;
    DongGoiQryUserCFM1: TStringField;
    DongGoiQryUserDate: TDateTimeField;
    DongGoiQryCFMDate: TDateTimeField;
    DongGoiQryCFMDate1: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    AppDir:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  GhiChepDongGoiDuLieuNgay_Print: TGhiChepDongGoiDuLieuNgay_Print;

implementation

{$R *.dfm}

uses GhiChepDongGoiDuLieuNgay1, GhiChepDongGoiDuLieu1,DM1;

procedure TGhiChepDongGoiDuLieuNgay_Print.ReadIni();
begin
  AppDir:=ExtractFilePath(Application.ExeName);

  QUserName.Caption:= DongGoiQry.FieldByName('UserName').AsString;
  QUserDate.Caption:=GhiChepDongGoiDuLieuNgay.GetTaiwnDateTime(DongGoiQry.FieldByName('UserDate').Value);
  QRLabel11.Caption := FormatDateTime('yyyy/MM/dd', GhiChepDongGoiDuLieuNgay.DTP1.Date);
  QRLabel12.Caption := FormatDateTime('yyyy/MM/dd', GhiChepDongGoiDuLieuNgay.DTP1.Date);
  QRLabel23.Caption := FormatDateTime('yyyy/MM/dd', GhiChepDongGoiDuLieuNgay.DTP1.Date);
  QRLabel24.Caption := FormatDateTime('yyyy/MM/dd', GhiChepDongGoiDuLieuNgay.DTP1.Date);
  QRLabel25.Caption := FormatDateTime('yyyy/MM/dd', GhiChepDongGoiDuLieuNgay.DTP1.Date);
  QCFMName.Caption:= DongGoiQry.FieldByName('UserCFM').AsString;
  QCFMDate.Caption:= GhiChepDongGoiDuLieuNgay.GetTaiwnDateTime(DongGoiQry.FieldByName('CFMDate').Value);
  QCFMName1.Caption:= DongGoiQry.FieldByName('UserCFM1').AsString;
  QCFMDate1.Caption:= GhiChepDongGoiDuLieuNgay.GetTaiwnDateTime(DongGoiQry.FieldByName('CFMDate1').Value);

  CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp'),Pchar(AppDir+'Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp'),false);
  if FileExists(AppDir+'Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp') then
  begin
   // CFMIDImg.Picture.LoadFromFile(AppDir+'Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp');
  end;
end;

procedure TGhiChepDongGoiDuLieuNgay_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepDongGoiDuLieuNgay_Print.FormCreate(Sender: TObject);
var i: integer;
begin
  with DongGoiQry do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select ');
    sql.Add('  max( case when KetQua=1 then ''V'' else '''' end) as TC1, ');
    sql.Add('  max(a.USERID) USERID, max(a.CFMID) CFMID, max(Busers.USERNAME) USERNAME,  ');
    sql.Add('  max(Busers_CFM.USERNAME) UserCFM, max(Busers_CFM1.USERNAME) UserCFM1, ');
    sql.Add('  max(a.UserDate) as UserDate, max(a.CFMDate) CFMDate, max(a.CFMDate1) CFMDate1 ');
    sql.Add('from ITPC_DongGoiDuLieu a ');
    sql.Add('left join LIY_ERP.dbo.Busers Busers on a.USERID=Busers.USERID ');
    sql.Add('left join LIY_ERP.dbo.Busers Busers_CFM on a.CFMID=Busers_CFM.USERID ');
    sql.Add('left join LIY_ERP.dbo.Busers Busers_CFM1 on a.CFMID1=Busers_CFM1.USERID ');
    sql.Add('where NgayThucHien= ''' + FormatDateTime('yyyy/MM/dd', GhiChepDongGoiDuLieuNgay.DTP1.Date) +''' ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  ReadIni();
end;

end.
