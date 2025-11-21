unit ExporPrint1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, QuickRpt, Vcl.ExtCtrls, QRCtrls, qrpctrls, grimgctrl,
  qrFramelines;

type
  TExporPrint = class(TForm)
    QuickRep1: TQuickRep;
    QRPreviewController1: TQRPreviewController;
    QRPBand1: TQRPBand;
    QRLabel10: TQRLabel;
    QRLBMtcode: TQRLabel;
    QRSysData2: TQRSysData;
    QRPBand2: TQRPBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRPBand3: TQRPBand;
    QRDBText1: TQRDBText;
    QRHRule1: TQRHRule;
    QRHRule2: TQRHRule;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRPShape1: TQRPShape;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLBDP: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    Sea: TQRLabel;
    QRLabel11: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExporPrint: TExporPrint;

implementation

{$R *.dfm}
uses MaintainanceWorks1;
end.
