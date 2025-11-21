unit FormCO_VC_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, QRPDFFilt, DB, DBTables;

type
  TFormCO_VC_Print = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel32: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    Query1: TQuery;
    Query1GW: TFloatField;
    Query1pairs: TIntegerField;
    Query1CTS: TIntegerField;
    Query1Amount: TFloatField;
    QRLabel40: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel_STT: TQRLabel;
    qrlabel_cust: TQRLabel;
    qrlabel_PO: TQRLabel;
    qrlabel_article: TQRLabel;
    QRMemo1: TQRMemo;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCO_VC_Print: TFormCO_VC_Print;

implementation
    uses DoczCO1;
{$R *.dfm}

procedure TFormCO_VC_Print.FormDestroy(Sender: TObject);
begin
   FormCO_VC_Print:=nil;
end;

end.
