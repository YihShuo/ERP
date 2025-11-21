unit RP_AcceptanceSize1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, DBTables, DB, QRCtrls, QuickRpt, ExtCtrls;

type
  TRP_AcceptanceSize = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QPage1: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    L7: TQRLabel;
    L1: TQRLabel;
    L2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel40: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape8: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText16: TQRDBText;
    QRShape7: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape30: TQRShape;
    QRShape9: TQRShape;
    QRBand2: TQRBand;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape23: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Det: TQuery;
    Mas: TQuery;
    MasCGNO: TStringField;
    MasCLBH: TStringField;
    MasXqQty: TCurrencyField;
    MasQty: TCurrencyField;
    MasUSPrice: TCurrencyField;
    MasVNPrice: TCurrencyField;
    MasMemo: TStringField;
    MasBJNO: TStringField;
    MasCFMDate: TDateTimeField;
    MasUSERDate: TDateTimeField;
    MasUSERID: TStringField;
    MasYN: TStringField;
    MasYWPM: TStringField;
    MasDWBH: TStringField;
    MasZLNO: TMemoField;
    MasMEMO_1: TStringField;
    MasREMARK: TStringField;
    MasPartAll: TStringField;
    MasFDAll: TMemoField;
    MasZSBH: TStringField;
    MasZSYWJC: TStringField;
    BWQY: TQuery;
    BWQYywsm: TStringField;
    XXCC: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QRPDFFilter1: TQRPDFFilter;
    XXCCCGNO: TStringField;
    XXCCXXCC: TStringField;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    MasZWPM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RP_AcceptanceSize: TRP_AcceptanceSize;

implementation

uses PurSample1, main1, FunUnit;

{$R *.dfm}

procedure TRP_AcceptanceSize.FormCreate(Sender: TObject);
begin
  Mas.Active:=true;
  Det.Active:=true;
  XXCC.Active:=true;

  //
  Mas.First;
  Det.First;
  XXCC.First;
end;

procedure TRP_AcceptanceSize.FormDestroy(Sender: TObject);
begin
  RP_AcceptanceSize:=nil;
end;

procedure TRP_AcceptanceSize.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

end.
