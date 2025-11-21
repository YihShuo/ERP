unit PurEquipment_printP1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TPurEquipment_printP = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    PageFooterBand1: TQRBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRDBText13Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurEquipment_printP: TPurEquipment_printP;

implementation
uses PurEquipment1;
{$R *.dfm}

procedure TPurEquipment_printP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPurEquipment_printP.FormDestroy(Sender: TObject);
begin
  PurEquipment_printP:=nil;
end;

procedure TPurEquipment_printP.QRDBText13Print(sender: TObject;
  var Value: string);
begin
  {if (PurEquipment.CGDet.fieldbyname('HGPM').AsString<>'') then
    Value:= PurEquipment.CGDet.fieldbyname('HGPM').AsString; }
   if PurEquipment.CheckPrintMaterial ='TV' then
      Value:= PurEquipment.CGDet.fieldbyname('VWPM').AsString;
   if PurEquipment.CheckPrintMaterial ='HQ' then
      Value:= PurEquipment.CGDet.fieldbyname('HGPM').AsString;
end;

end.
