unit PayableMaterial_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TPayableMaterial_Print = class(TForm)
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape12: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel10: TQRLabel;
    QR1: TQRLabel;
    QRLabel12: TQRLabel;
    QR2: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PayableMaterial_Print: TPayableMaterial_Print;

implementation

{$R *.dfm}

procedure TPayableMaterial_Print.FormDestroy(Sender: TObject);
begin
PayableMaterial_Print:=nil;
end;

procedure TPayableMaterial_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
