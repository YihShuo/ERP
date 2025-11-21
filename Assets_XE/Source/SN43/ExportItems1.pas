unit ExportItems1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls, QRCtrls,
  grimgctrl, qrpctrls, qrFramelines;

type
  TExportItems = class(TForm)
    QuickRep1: TQuickRep;
    QRPreviewController1: TQRPreviewController;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRPBand1: TQRPBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRHRule1: TQRHRule;
    QRPBand2: TQRPBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRHRule2: TQRHRule;
    QRFrameline1: TQRFrameline;
    QRFrameline2: TQRFrameline;
    QRFrameline3: TQRFrameline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportItems: TExportItems;

implementation

{$R *.dfm}
uses MaintainanceWorks1;
end.
