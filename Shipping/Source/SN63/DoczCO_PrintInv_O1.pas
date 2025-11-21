unit DoczCO_PrintInv_O1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, QRPDFFilt;

type
  TDoczCO_PrintInv_O = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel17: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel33: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    qry_Detail: TQuery;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    DS_Title: TDataSource;
    Qry_Title: TQuery;
    Qry_TitleINV_DATE: TDateTimeField;
    Qry_TitleFROM_WHERE: TStringField;
    Qry_TitleTO_WHERE: TStringField;
    Qry_TitleTOTAL_PAIRS: TIntegerField;
    Qry_TitleTOTAL_AMOUNT: TCurrencyField;
    Qry_TitleTOTAL_AMOUNT_WORD: TStringField;
    Qry_TitleRISK: TStringField;
    Qry_TitleSHIP_BY: TStringField;
    Qry_TitleManager_Name: TStringField;
    Qry_TitleCOMID: TStringField;
    Qry_TitlePosition: TStringField;
    QRDBText5: TQRDBText;
    Qry_TitleCompany_Name: TStringField;
    Qry_TitleAddress: TStringField;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Qry_TitleCompany: TStringField;
    Qry_TitleAddress1: TStringField;
    Qry_TitleAddress2: TStringField;
    Qry_TitleInfo: TStringField;
    qry_DetailPACK_NO: TStringField;
    qry_DetailRYNO: TStringField;
    qry_DetailPO: TStringField;
    qry_DetailSTYLE_NAME: TStringField;
    qry_DetailCUSTORDNO: TStringField;
    qry_DetailARTICLE: TStringField;
    qry_DetailPairs: TIntegerField;
    qry_DetailSIZE_RUN: TStringField;
    qry_DetailUNIT_PRICE: TCurrencyField;
    qry_DetailAMOUNT: TCurrencyField;
    QRDBText14: TQRDBText;
    Qry_TitleINV_NO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRDBText14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DoczCO_PrintInv_O: TDoczCO_PrintInv_O;
  Inv_No:string;

implementation
    uses Main1;
{$R *.dfm}

procedure TDoczCO_PrintInv_O.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TDoczCO_PrintInv_O.FormDestroy(Sender: TObject);
begin
   DoczCO_PrintInv_O:=nil;
end;

procedure TDoczCO_PrintInv_O.FormCreate(Sender: TObject);
begin
  with Qry_Title do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT im.INV_NO,im.FROM_WHERE,im.TO_WHERE,im.TOTAL_PAIRS,im.TOTAL_AMOUNT ');
    sql.Add('      ,im.TOTAL_AMOUNT_WORD,im.RISK,im.SHIP_BY,sim.Manager_Name,sic.COMID,sim.Position');
    sql.Add('      ,sb.CO_Inv_Date INV_DATE,sic.Company_Name, sic.[Address],ca.Company, ca.Address1, ca.Address2');
    sql.Add('     ,''Tel: '' + isnull(ca.Tel,'''') + '',Fax: '' +  isnull(ca.Fax,'''') + '',Attn: '' + isnull(ca.Attn,'''') AS Info ');
    sql.Add('FROM INVOICE_M im');
    sql.Add('LEFT JOIN CustomerAdd ca ON ca.CUSTID = im.CUSTID');
    sql.Add('LEFT JOIN Ship_Booking sb ON sb.Inv_No =im.INV_NO');
    sql.Add('LEFT JOIN Ship_InfoManager sim ON ISNULL(sim.[Active],0)<>0');
    sql.Add('LEFT JOIN Ship_InfoCompany sic ON 1=1');
    sql.Add('WHERE im.INV_NO='''+Inv_No+''' ');
    active:=true;
  end;
  Qry_Detail.Active:=true;
end;

procedure TDoczCO_PrintInv_O.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  Value:='No: '+Value;
end;

end.
