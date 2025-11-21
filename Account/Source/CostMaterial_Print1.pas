unit CostMaterial_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TCostMaterial_Print = class(TForm)
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
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostMaterial_Print: TCostMaterial_Print;

implementation

{$R *.dfm}

procedure TCostMaterial_Print.FormDestroy(Sender: TObject);
begin
costmaterial_print:=nil;
end;

procedure TCostMaterial_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
