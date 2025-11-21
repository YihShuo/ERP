unit EquipmentAccountConfirm_print1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Data.DB, Bde.DBTables, DateUtils;

type
  TEquipmentAccountConfirm_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRLabel18: TQRLabel;
    L1: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRShape17: TQRShape;
    QRShape3: TQRShape;
    QRLabel16: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel_DOCdate: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    KCRKSQry: TQuery;
    KCRKSQryRKNO: TStringField;
    KCRKSQrySBBH: TStringField;
    KCRKSQryDWBH: TStringField;
    KCRKSQryQty: TFloatField;
    KCRKSQryVNPrice: TCurrencyField;
    KCRKSQryUSPrice: TFloatField;
    KCRKSQryVNACC: TCurrencyField;
    KCRKSQryUSACC: TFloatField;
    KCRKSQryVNTax_HG: TCurrencyField;
    QRSysData2: TQRSysData;
    QRShape14: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr5: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel46: TQRLabel;
    KCRKQry: TQuery;
    QRExpr2: TQRExpr;
    QRLabel_ALLVNACC: TQRLabel;
    QRLabel_VNACC: TQRLabel;
    QRLabel_VNACC_Tax: TQRLabel;
    QRLabel_DOCNO: TQRLabel;
    QRLabel_ZSJC: TQRLabel;
    KCRKQryRKNO: TStringField;
    KCRKQryDOCNO: TStringField;
    KCRKQryzsjc_yw: TStringField;
    KCRKQryVNACC: TCurrencyField;
    KCRKQryVNTax_HG: TCurrencyField;
    KCRKQryAllVNACC: TCurrencyField;
    KCRKQryUserDate: TDateTimeField;
    KCRKQryCWHL: TCurrencyField;
    QRLabel_CWHL: TQRLabel;
    QRLabel_RKNO: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel_VNMoney: TQRLabel;
    QRLabel_CNMoney: TQRLabel;
    QRDBText9: TQRDBText;
    KCRKSQryVNPrice_HG: TCurrencyField;
    QRLabel22: TQRLabel;
    QRLabel_HDDate: TQRLabel;
    KCRKQryDOCDate: TDateTimeField;
    KCRKQryHDNO: TStringField;
    KCRKQryHDDate: TDateTimeField;
    QRLabel_HDNO: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel_TKDate: TQRLabel;
    KCRKQrySOHIEU: TStringField;
    KCRKQryTOKHAI: TStringField;
    KCRKQryTKDate: TDateTimeField;
    QRLabel_SOHIEU: TQRLabel;
    QRLabel_TOKHAI: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel_UserDate: TQRLabel;
    KCRKSQryTSBH: TStringField;
    QRDBText10: TQRDBText;
    KCRKSQryVWPM: TStringField;
    ISO: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  EquipmentAccountConfirm_print: TEquipmentAccountConfirm_print;

implementation
  uses EquipmentAccountConfirm1;
{$R *.dfm}


procedure TEquipmentAccountConfirm_print.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if trunc(DetailBand1.expanded)>0 then
  begin
    QRShape1.Height := (trunc(DetailBand1.expanded));
  end;
end;

procedure TEquipmentAccountConfirm_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentAccountConfirm_print.FormCreate(Sender: TObject);

var Str:string;
begin
  KCRKQry.Active:=true;
  //KCRKSQry.Active:=true;

  with  KCRKSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  Select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,  ');
    if EquipmentAccountConfirm.CheckPrintMaterial='HQ' then
    begin
      SQL.Add('         case when TSCD_KCRKS.RKMeMo is not null then TSCD_SB.HGPM+TSCD_SB.ZWPM+'' (''+TSCD_KCRKS.RKMeMo+'')''  ');
      SQL.Add('  	   when TSCD_KCRKS.RKMeMo is null then TSCD_SB.HGPM+TSCD_SB.ZWPM else TSCD_SB.HGPM+TSCD_SB.ZWPM end as VWPM,  ');
    end;
    if EquipmentAccountConfirm.CheckPrintMaterial='TV' then
    begin
      SQL.Add('         case when TSCD_KCRKS.RKMeMo is not null then TSCD_SB.VWPM+TSCD_SB.ZWPM+'' (''+TSCD_KCRKS.RKMeMo+'')''  ');
      SQL.Add('  	   when TSCD_KCRKS.RKMeMo is null then TSCD_SB.VWPM+TSCD_SB.ZWPM else TSCD_SB.VWPM+TSCD_SB.ZWPM end as VWPM,  ');
    end;
    SQL.Add('         TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNPrice,  ');
    SQL.Add('         TSCD_KCRKS.USPrice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USACC, TSCD_KCRKS.VNTax_HG, TSCD_KCRKS.VNPrice_HG,--TSCD.TSBH  ');
    SQL.Add('    ');
    SQL.Add('  		case when  TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo else CAST(substring (( select '','' + TSCD.TSBH  ');
    SQL.Add('  					from TSCD where TSCD.SBBH=TSCD_SB.SBBH and TSCD.RKNO=TSCD_KCRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH  ');
    SQL.Add('  					and TSCD_KCRKS.RKNO=:RKNO  ');
    SQL.Add('  					for XML Path ('''')),2,1000) as varchar(1000)) end as TSBH  ');
    SQL.Add('  from TSCD_KCRKS  ');
    SQL.Add('  left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH  ');
    SQL.Add('  left join TSCD on TSCD_SB.SBBH = TSCD.SBBH and TSCD.RKNO=TSCD_KCRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH  ');
    SQL.Add('  where TSCD_KCRKS.RKNO=:RKNO ');
    SQL.Add('  group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_SB.VWPM,TSCD_SB.ZWPM,TSCD_SB.HGPM,TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNPrice,  ');
    SQL.Add('         TSCD_KCRKS.USPrice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USACC, TSCD_KCRKS.VNTax_HG, TSCD_KCRKS.VNPrice_HG,TSCD_SB.SBBH,TSCD_KCRKS.Memo,TSCD_KCRKS.RKMemo  ');
    SQL.Add('  order by TSCD_KCRKS.RKNO, TSCD_KCRKS.SBBH desc  ');
    Active:=true;
  end;


  //
  QRLabel_ZSJC.Caption:=KCRKQry.FieldByName('zsjc_yw').AsString;
  QRLabel_SOHIEU.Caption:=KCRKQry.FieldByName('SOHIEU').AsString;
  QRLabel_DOCNO.Caption:=KCRKQry.FieldByName('DOCNO').AsString;
  QRLabel_HDNO.Caption:=KCRKQry.FieldByName('HDNO').AsString;
  if KCRKQry.FieldByName('TOKHAI').AsString<>'' then
      QRLabel_TOKHAI.Caption:=KCRKQry.FieldByName('TOKHAI').AsString
  else
    QRLabel_TOKHAI.Enabled:=false;
  //抬頭
  Str:=Format('%n',[strtofloat(KCRKQry.FieldByName('AllVNACC').AsString)]);
  QRLabel_ALLVNACC.Caption:=Copy(Str,1,length(Str)-3);

  Str:=Format('%n',[strtofloat(KCRKQry.FieldByName('VNACC').AsString)]);
  QRLabel_VNACC.Caption:=Copy(Str,1,length(Str)-3);

  Str:=Format('%n',[strtofloat(KCRKQry.FieldByName('VNTax_HG').AsString)]);
  QRLabel_VNACC_Tax.Caption:=Copy(Str,1,length(Str)-3);
  QRLabel_CWHL.Caption:=KCRKQry.FieldByName('CWHL').AsString;

  QRLabel_RKNO.Caption:=KCRKQry.FieldByName('RKNO').AsString;
  QRLabel_UserDate.Caption:=formatdatetime('YYYY/MM/DD',KCRKQry.FieldByName('UserDate').Value);

  QRLabel_DOCDate.Caption:=EquipmentAccountConfirm.GetVietDate(KCRKQry.FieldByName('DOCDate').value);
  QRLabel_HDDate.Caption:=EquipmentAccountConfirm.GetVietDate(KCRKQry.FieldByName('HDDate').value);
  if (not KCRKQry.FieldByName('TKDate').IsNull) then
    QRLabel_TKDate.Caption:=EquipmentAccountConfirm.GetVietDate(KCRKQry.FieldByName('TKDate').value)
  else
    QRLabel_TKDate.Enabled:=false;
  //結尾金額
  QRLabel_VNMoney.Caption:=EquipmentAccountConfirm.RMBFloatToVietnam(KCRKQry.FieldByName('AllVNACC').Value);
  QRLabel_CNMoney.Caption:=EquipmentAccountConfirm.RMBFloatToChinese(KCRKQry.FieldByName('AllVNACC').Value);
  //Showmessage(QRLabel_VNMoney.Caption);
  KCRKQry.Active:=false;
end;

procedure TEquipmentAccountConfirm_print.FormDestroy(Sender: TObject);
begin
  EquipmentAccountConfirm_print:=nil;
end;

end.
