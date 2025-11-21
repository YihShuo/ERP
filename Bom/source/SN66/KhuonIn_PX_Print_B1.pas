unit KhuonIn_PX_Print_B1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRExport, QRXMLSFilt, QRPDFFilt, QRCtrls,
  QuickRpt, ExtCtrls, grimgctrl;

type
  TKhuonIn_PX_Print_B = class(TForm)
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand3: TQRBand;
    QRDBText15: TQRDBText;
    QRShape20: TQRShape;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText21: TQRDBText;
    QRShape24: TQRShape;
    QRDBText22: TQRDBText;
    QRBand4: TQRBand;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRBand5: TQRBand;
    QRLabel71: TQRLabel;
    QRExpr6: TQRExpr;
    QRBand6: TQRBand;
    QRShape14: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape19: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    InB: TQuery;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    InBHinhThe: TStringField;
    InBywpm: TStringField;
    InBQuyCach: TStringField;
    InBQty: TCurrencyField;
    InBDonGia: TFloatField;
    InBVNACC: TCurrencyField;
    QRHRule1: TQRHRule;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRHRule2: TQRHRule;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRHRule3: TQRHRule;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRHRule4: TQRHRule;
    QRLabel7: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhuonIn_PX_Print_B: TKhuonIn_PX_Print_B;

implementation

{$R *.dfm}

procedure TKhuonIn_PX_Print_B.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TKhuonIn_PX_Print_B.FormCreate(Sender: TObject);
begin
  InB.Active:=true;
end;

procedure TKhuonIn_PX_Print_B.FormDestroy(Sender: TObject);
begin
  KhuonIn_PX_Print_B:=nil;
end;

end.
