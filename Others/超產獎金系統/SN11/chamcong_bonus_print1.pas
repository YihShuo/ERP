unit chamcong_bonus_print1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, grimgctrl, QRCtrls,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOQuery, QRPDFFilt, IniFiles;

type
  TChamcong_bonus_print = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel28: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabelVMonth: TQRLabel;
    QRLabelMonth: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    VNACCLabel: TQRLabel;
    QRMaster: TQRBand;
    QRShape4: TQRShape;
    QRLabel22: TQRLabel;
    QRShape25: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    Q1: TQRLabel;
    QRShape5: TQRShape;
    QRSubDetail: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape31: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    HRMQry: TMyADOQuery;
    HRMDonviQry: TMyADOQuery;
    DS1: TDataSource;
    HRMDonviQryDV_MA: TWideStringField;
    HRMDonviQryDV_TEN: TWideStringField;
    HRMDonviQryCNV: TIntegerField;
    HRMDonviQryTIENVUOTSANLUONG: TLargeintField;
    HRMQryNV_MA: TWideStringField;
    HRMQryNV_TEN: TWideStringField;
    HRMQryCVU_TEN: TWideStringField;
    HRMQryHESOSANLUONG: TFloatField;
    HRMQryHESODONVI: TFloatField;
    HRMQryHESOCVUVU: TFloatField;
    HRMQrySONGAYCONG: TFloatField;
    HRMQryHESONGAYCONG: TFloatField;
    HRMQryTIENVUOTSANLUONG: TLargeintField;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape1: TQRShape;
    Qtemp: TADOQuery;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel26: TQRLabel;
    StaffLabel: TQRLabel;
    StaffVNDLabel: TQRLabel;
    QRLabel34: TQRLabel;
    CompanyLabel: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel35: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    procedure  Init();
  end;

var
  Chamcong_bonus_print: TChamcong_bonus_print;

implementation
  uses DM1, main1, chamcong_bonus1, FunUnit;
{$R *.dfm}
procedure TChamcong_bonus_print.ReadIni();
var MyIni :Tinifile;
    AppDir,ComName:string;
begin
  ComName:='億春責任有限公司';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComNameCH','');
      //
    finally
      MyIni.Free;
    end;
  end;
  CompanyLabel.Caption:=ComName;
end;
procedure TChamcong_bonus_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TChamcong_bonus_print.FormCreate(Sender: TObject);
begin
  ReadIni();
  Init();
end;

procedure TChamcong_bonus_print.FormDestroy(Sender: TObject);
begin
  Chamcong_bonus_print:=nil;
end;

procedure  TChamcong_bonus_print.Init();
var Str:string;
begin
  if  Messagedlg(Pchar('Are you want to print Department print continue?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    QRMaster.ForceNewPage:=false;
  end else
  begin
    QRMaster.ForceNewPage:=true;
  end;
  QRLabelVMonth.Caption:='Bảng CHI TIẾT TIỀN THƯỞNG VƯỢT SẢN LƯỢNG '+chamcong_bonus.CBX2.Text+'-'+chamcong_bonus.CBX1.Text;
  QRLabelMonth.Caption:=chamcong_bonus.CBX2.Text+'-'+chamcong_bonus.CBX1.Text+' 月超產獎金明細表';
  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    Active:=false;
    SQL.Clear;
    SQL.Add('Select IT_NHANVIE.*,IT_TIENSANLUONG.StaffTotal,IT_TIENSANLUONG.StaffVNPrice from (');
    SQL.Add('Select IT_NHANVIE.T_MA, COUNT(IT_NHANVIE.NV_MA) as CNV,SUM(IT_NHANVIE.TIENVUOTSANLUONG) as TIENVUOTSANLUONG ');
    SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIE');
    SQL.Add('where IT_NHANVIE.T_MA='''+chamcong_bonus.CBX2.Text+'-'+chamcong_bonus.CBX1.Text+''' and IT_NHANVIE.GSBH='''+main.mGSBH+''' ');
    if chamcong_bonus.DonviCombo.Text<>'' then
    begin
      if Pos('/',chamcong_bonus.DONVICombo.Text)>0 then
         SQL.Add('      AND IT_NHANVIE.DV_MA='''+Copy(chamcong_bonus.DONVICombo.Text,1,Pos('/',chamcong_bonus.DONVICombo.Text)-1)+''' ')
      else
         SQL.Add('      AND IT_NHANVIE.DV_MA like '''+chamcong_bonus.DONVICombo.Text+'%''');
    end;
    if chamcong_bonus.NV_MAEdit.Text<>'' then
    SQL.Add('      AND IT_NHANVIE.NV_MA like '''+chamcong_bonus.NV_MAEdit.Text+'%'' ');
    SQL.Add('Group by T_MA ) IT_NHANVIE');
    SQL.Add('Left join '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG IT_TIENSANLUONG on IT_TIENSANLUONG.T_MA=IT_NHANVIE.T_MA');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      Str:=Format('%n',[strtofloat(FieldByName('TIENVUOTSANLUONG').AsString)]);
      VNACCLabel.Caption:=Copy(Str,1,length(Str)-3);
      StaffVNDLabel.Caption:=FieldByName('StaffVNPrice').AsString;
      StaffLabel.Caption:=FieldByName('StaffTotal').AsString;
    end;
    //funcObj.WriteErrorLog(sql.Text);
    Active:=false;
  end;

  with HRMDonviQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select IT_NHANVIE.DV_MA,ST_DONVI.DV_TEN,COUNT(IT_NHANVIE.NV_MA) as CNV,SUM(IT_NHANVIE.TIENVUOTSANLUONG) as TIENVUOTSANLUONG ');
    SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIE');
    SQL.Add('left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_NHANVIE.DV_MA');
    SQL.Add('where IT_NHANVIE.T_MA='''+chamcong_bonus.CBX2.Text+'-'+chamcong_bonus.CBX1.Text+''' and IT_NHANVIE.GSBH='''+main.mGSBH+'''  ');
    if chamcong_bonus.DonviCombo.Text<>'' then
    begin
      if Pos('/',chamcong_bonus.DONVICombo.Text)>0 then
         SQL.Add('      AND IT_NHANVIE.DV_MA='''+Copy(chamcong_bonus.DONVICombo.Text,1,Pos('/',chamcong_bonus.DONVICombo.Text)-1)+''' ')
      else
         SQL.Add('      AND IT_NHANVIE.DV_MA like '''+chamcong_bonus.DONVICombo.Text+'%''');
    end;
    if chamcong_bonus.NV_MAEdit.Text<>'' then
    SQL.Add('      AND IT_NHANVIE.NV_MA like '''+chamcong_bonus.NV_MAEdit.Text+'%'' ');
    SQL.Add('Group by IT_NHANVIE.DV_MA,ST_DONVI.DV_TEN ');
    SQL.Add('Order by ST_DONVI.DV_TEN ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  with HRMQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select IT_NHANVIE.NV_MA');
    SQL.Add('       ,IT_NHANVIE.NV_TEN ');
    SQL.Add('       ,IT_NHANVIE.CVU_TEN ');
    SQL.Add('       ,IT_NHANVIE.HESOSANLUONG');
    SQL.Add('       ,IT_NHANVIE.HESODONVI');
    SQL.Add('       ,IT_NHANVIE.HESOCVUVU');
    SQL.Add('       ,IT_NHANVIE.SONGAYCONG/8 as SONGAYCONG');
    SQL.Add('       ,IT_NHANVIE.HESONGAYCONG*100 as HESONGAYCONG');
    SQL.Add('       ,IT_NHANVIE.TIENVUOTSANLUONG');
    SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIE ');
    SQL.Add('left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_NHANVIE.DV_MA');
    SQL.Add('where IT_NHANVIE.T_MA='''+chamcong_bonus.CBX2.Text+'-'+chamcong_bonus.CBX1.Text+'''  and IT_NHANVIE.GSBH='''+main.mGSBH+''' ');
    SQL.Add('      and IT_NHANVIE.DV_MA=:DV_MA ');
    if chamcong_bonus.NV_MAEdit.Text<>'' then
    SQL.Add('      AND IT_NHANVIE.NV_MA like '''+chamcong_bonus.NV_MAEdit.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;
end.
