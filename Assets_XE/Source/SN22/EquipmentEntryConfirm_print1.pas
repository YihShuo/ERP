unit EquipmentEntryConfirm_print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Data.DB, Bde.DBTables;

type
  TEquipmentEntryConfirm_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetSBBH: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetYWPM: TStringField;
    EnDetZWPM: TStringField;
    EnDetLSBH: TStringField;
    EnDetQUCBH: TStringField;
    EnDetQty: TFloatField;
    EnDetVNPrice: TCurrencyField;
    EnDetUSPrice: TFloatField;
    EnDetVNACC: TCurrencyField;
    EnDetUSACC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentEntryConfirm_print: TEquipmentEntryConfirm_print;

implementation
  uses EquipmentEntryConfirm1;
{$R *.dfm}

procedure TEquipmentEntryConfirm_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TEquipmentEntryConfirm_print.FormCreate(Sender: TObject);
begin
  EnDet.Active:=true;
end;

procedure TEquipmentEntryConfirm_print.FormDestroy(Sender: TObject);
begin
  EquipmentEntryConfirm_print:=nil;
end;

end.
