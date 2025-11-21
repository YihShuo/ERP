unit EntryCheck_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRPDFFilt;

type
  TEntryCheck_Print = class(TForm)
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
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRShape21: TQRShape;
    QRLabel14: TQRLabel;
    QRShape22: TQRShape;
    QRLabel15: TQRLabel;
    QRShape23: TQRShape;
    QRLabel16: TQRLabel;
    QRShape24: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryCheck_Print: TEntryCheck_Print;

implementation

{$R *.dfm}

procedure TEntryCheck_Print.FormDestroy(Sender: TObject);
begin
EntryCheck_Print:=nil;
end;

procedure TEntryCheck_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
