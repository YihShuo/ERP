unit ExtraMat_Print1;

interface     
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRPDFFilt;

type
  TExtraMat_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QPage1: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape2: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    L1: TQRLabel;
    L2: TQRLabel;
    L3: TQRLabel;
    L4: TQRLabel;
    L5: TQRLabel;
    L6: TQRLabel;
    L7: TQRLabel;
    L8: TQRLabel;
    L9: TQRLabel;
    L10: TQRLabel;
    L11: TQRLabel;
    L12: TQRLabel;
    L13: TQRLabel;
    L14: TQRLabel;
    L15: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText19: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_Print: TExtraMat_Print;

implementation

{$R *.dfm}

procedure TExtraMat_Print.FormDestroy(Sender: TObject);
begin
ExtraMat_Print:=nil;
end;

procedure TExtraMat_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
