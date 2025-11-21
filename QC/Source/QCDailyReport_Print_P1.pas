unit QCDailyReport_Print_P1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRXMLSFilt, QRPDFFilt;

type
  TQCDailyReport_Print_P = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    PageN: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape15: TQRShape;
    QRLabel13: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText4: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape19: TQRShape;
    QRShape26: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCDailyReport_Print_P: TQCDailyReport_Print_P;

implementation

{$R *.dfm}

procedure TQCDailyReport_Print_P.FormDestroy(Sender: TObject);
begin
  QCDailyReport_Print_P:=nil;
end;

end.
