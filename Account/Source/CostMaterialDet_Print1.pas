unit CostMaterialDet_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TCostMaterialDet_Print = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape21: TQRShape;
    QRLabel2: TQRLabel;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRShape6: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    Page1: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    DetailBand1: TQRBand;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText4: TQRDBText;
    QRShape7: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape8: TQRShape;
    QRDBText7: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel10: TQRLabel;
    QRShape11: TQRShape;
    QRDBText8: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostMaterialDet_Print: TCostMaterialDet_Print;

implementation

{$R *.dfm}

procedure TCostMaterialDet_Print.FormDestroy(Sender: TObject);
begin
costmaterialdet_print:=nil;
end;

procedure TCostMaterialDet_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
