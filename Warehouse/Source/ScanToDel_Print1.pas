unit ScanToDel_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TScanToDel_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanToDel_Print: TScanToDel_Print;

implementation

{$R *.dfm}

procedure TScanToDel_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanToDel_Print.FormDestroy(Sender: TObject);
begin
ScanToDel_Print:=nil;
end;

end.
