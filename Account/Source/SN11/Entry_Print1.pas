unit Entry_Print1;

interface
              
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRXMLSFilt, QRPDFFilt,
  DBTables, DB;

type
  TEntry_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;         
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;         
    QPage1: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;          
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    EnDet: TQuery;
    UpdateSQL1: TUpdateSQL;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetQty: TCurrencyField;
    EnDetPaQty: TFloatField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetFKZT: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Entry_Print: TEntry_Print;

implementation

uses EntryPur1;

{$R *.dfm}

procedure TEntry_Print.FormDestroy(Sender: TObject);
begin
  Entry_Print:=nil;
end;

procedure TEntry_Print.FormCreate(Sender: TObject);
begin
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=EntryPur.VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=EntryPur.VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('Qty')).DisplayFormat:=EntryPur.WH_DiplayFormat;
  QRExpr2.Mask:=EntryPur.VNPrice_DiplayFormat;
  EnDet.Active:=true;
end;

procedure TEntry_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

end.
