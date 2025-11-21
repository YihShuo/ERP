unit EmbroiderSend_Print1;    

interface   

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TEmbroiderSend_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    S1: TQRLabel;               
    S2: TQRLabel;               
    S3: TQRLabel;
    S4: TQRLabel;            
    S7: TQRLabel;
    S8: TQRLabel;
    S6: TQRLabel;
    S5: TQRLabel;
    S15: TQRLabel;
    S16: TQRLabel;
    S14: TQRLabel;
    S13: TQRLabel;
    S12: TQRLabel;
    S11: TQRLabel;
    S10: TQRLabel;
    S9: TQRLabel;
    S17: TQRLabel;
    S18: TQRLabel;
    Q1: TQRDBText;
    S20: TQRLabel;
    S19: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape22: TQRShape;
    Q2: TQRDBText;
    Q4: TQRDBText;
    Q3: TQRDBText;
    Q8: TQRDBText;
    Q7: TQRDBText;
    Q6: TQRDBText;
    Q5: TQRDBText;
    Q16: TQRDBText;
    Q15: TQRDBText;
    Q14: TQRDBText;
    Q13: TQRDBText;
    Q11: TQRDBText;
    Q12: TQRDBText;
    Q10: TQRDBText;
    Q9: TQRDBText;
    Q20: TQRDBText;
    Q19: TQRDBText;
    Q18: TQRDBText;
    Q17: TQRDBText;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    LDate1: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmbroiderSend_Print: TEmbroiderSend_Print;

implementation

{$R *.dfm}

procedure TEmbroiderSend_Print.FormCreate(Sender: TObject);
begin
LDate1.caption:=formatdatetime('yyyy/mm/dd',date);
end;

procedure TEmbroiderSend_Print.FormDestroy(Sender: TObject);
begin
EmbroiderSend_Print:=nil;
end;

procedure TEmbroiderSend_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
