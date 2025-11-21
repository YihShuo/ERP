unit MaterialMonth_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, QRExport;

type
  TMaterialMonth_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText4: TQRDBText;
    QRShape14: TQRShape;
    QRDBText8: TQRDBText;
    QRShape11: TQRShape;
    QRShape19: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape15: TQRShape;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    QRLabel13: TQRLabel;
    QRShape16: TQRShape;
    QRLabel14: TQRLabel;
    QRShape17: TQRShape;
    QRLabel15: TQRLabel;
    QRShape18: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape20: TQRShape;
    QRLabel18: TQRLabel;
    QRShape21: TQRShape;
    QRLabel19: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText9: TQRDBText;
    QRShape24: TQRShape;
    QRDBText10: TQRDBText;
    QRShape25: TQRShape;
    QRDBText11: TQRDBText;
    QRShape26: TQRShape;
    QRDBText12: TQRDBText;
    QRShape27: TQRShape;
    QRDBText13: TQRDBText;
    QRShape28: TQRShape;
    QRDBText14: TQRDBText;
    QRShape29: TQRShape;
    QRDBText15: TQRDBText;
    QRShape30: TQRShape;
    QRDBText16: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel11: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText18: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape31: TQRShape;
    QRLabel21: TQRLabel;
    QRShape32: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRDBText20: TQRDBText;
    QRExpr7: TQRExpr;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialMonth_Print: TMaterialMonth_Print;

implementation

{$R *.dfm}

procedure TMaterialMonth_Print.FormDestroy(Sender: TObject);
begin
MaterialMonth_Print:=nil;
end;

procedure TMaterialMonth_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
