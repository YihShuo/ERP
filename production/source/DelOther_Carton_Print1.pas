unit DelOther_Carton_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, StdCtrls, ExtCtrls, QRPDFFilt;

type
  TDelOther_Carton_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    Label1: TLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_Carton_Print: TDelOther_Carton_Print;

implementation

{$R *.dfm}

procedure TDelOther_Carton_Print.FormDestroy(Sender: TObject);
begin
DelOther_Carton_Print:=nil;
end;

procedure TDelOther_Carton_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
