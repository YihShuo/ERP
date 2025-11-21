unit Contract_Inv_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls;

type
  TContract_Inv_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel41: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRRTFFilter1: TQRRTFFilter;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Contract_Inv_Print: TContract_Inv_Print;

implementation
    uses InvoicePL1;
{$R *.dfm}

procedure TContract_Inv_Print.FormDestroy(Sender: TObject);
begin
    Contract_Inv_Print:=nil;
end;

end.
