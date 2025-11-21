unit Outsoleborrow_S1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TOutsoleborrow_S = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRShape14: TQRShape;
    QRDBText10: TQRDBText;
    QRShape15: TQRShape;
    QRDBText11: TQRDBText;
    QRShape16: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText17: TQRDBText;
    QRSysData4: TQRSysData;
    QRBand4: TQRBand;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape3: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape4: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape5: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Outsoleborrow_S: TOutsoleborrow_S;

implementation

uses Outsoleborrow1;

{$R *.dfm}

procedure TOutsoleborrow_S.FormDestroy(Sender: TObject);
begin
    Outsoleborrow_S:=nil;
end;

end.
