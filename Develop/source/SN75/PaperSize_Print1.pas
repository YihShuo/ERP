unit PaperSize_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls,math;

type
  TPaperSize_Print = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    qrlbl1: TQRLabel;
    QRTestNo: TQRDBText;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl17: TQRLabel;
    qrlbl18: TQRLabel;
    qrlbl19: TQRLabel;
    qrlbl20: TQRLabel;
    qrlbl21: TQRLabel;
    qrlbl22: TQRLabel;
    qrlbl23: TQRLabel;
    qrlbl24: TQRLabel;
    qrlbl27: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRRichText2: TQRRichText;
    QRRichText1: TQRRichText;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    qrlbl28: TQRLabel;
    QRBand3: TQRBand;
    qrlbl29: TQRLabel;
    qrlbl30: TQRLabel;
    qrlbl31: TQRLabel;
    qrlbl32: TQRLabel;
    qrlbl33: TQRLabel;
    qrlbl34: TQRLabel;
    qrlbl35: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand4: TQRBand;
    qrlbl25: TQRLabel;
    QRDBText3: TQRDBText;
    qrlbl26: TQRLabel;
    qrlbl36: TQRLabel;
    qrlbl37: TQRLabel;
    qrlbl38: TQRLabel;
    qrlbl39: TQRLabel;
    qrlbl40: TQRLabel;
    qrlbl41: TQRLabel;
    qrlbl42: TQRLabel;
    qrlbl43: TQRLabel;
    qrlbl44: TQRLabel;
    qrlbl45: TQRLabel;
    qrlbl46: TQRLabel;
    qrlbl47: TQRLabel;
    qrlbl48: TQRLabel;
    qrlbl49: TQRLabel;
    qrlbl50: TQRLabel;
    qrlbl51: TQRLabel;
    qrlbl52: TQRLabel;
    qrlbl53: TQRLabel;
    qrlbl54: TQRLabel;
    qrlbl55: TQRLabel;
    qrlbl56: TQRLabel;
    qrlbl57: TQRLabel;
    qrlbl58: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRRichText3: TQRRichText;
    QRRichText4: TQRRichText;
    QRSubDetail2: TQRSubDetail;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRBand5: TQRBand;
    qrlbl59: TQRLabel;
    QRBand6: TQRBand;
    qrlbl60: TQRLabel;
    qrlbl61: TQRLabel;
    qrlbl62: TQRLabel;
    qrlbl63: TQRLabel;
    qrlbl64: TQRLabel;
    qrlbl65: TQRLabel;
    qrlbl66: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaperSize_Print: TPaperSize_Print;    

implementation
uses   PaperRoom_shoeTest;

{$R *.dfm}

procedure TPaperSize_Print.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // ´«¦æÃö«Y¥Î QRRICHTEXT1
  QRRichText1.Lines.Clear;
  QRRichText2.Lines.Clear;
  if not PaperRoom.Masqry.FieldByName('Memo1').IsNull then
    QRRichText1.Lines.Add(PaperRoom.Masqry.FieldByName('Memo1').Value);
  if not PaperRoom.Masqry.FieldByName('Memo2').IsNull then
    QRRichText2.Lines.Add(PaperRoom.Masqry.FieldByName('Memo2').Value);
end;

end.
