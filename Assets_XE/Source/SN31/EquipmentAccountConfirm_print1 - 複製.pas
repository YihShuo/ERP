unit EquipmentAccountConfirm_print1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Data.DB, Bde.DBTables;

type
  TEquipmentAccountConfirm_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRLabel18: TQRLabel;
    L1: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRShape17: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel16: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape12: TQRShape;
    KCRKSQry: TQuery;
    KCRKSQryRKNO: TStringField;
    KCRKSQrySBBH: TStringField;
    KCRKSQryYWPM: TStringField;
    KCRKSQryDWBH: TStringField;
    KCRKSQryQty: TFloatField;
    KCRKSQryVNPrice: TCurrencyField;
    KCRKSQryUSPrice: TFloatField;
    KCRKSQryVNACC: TCurrencyField;
    KCRKSQryUSACC: TFloatField;
    KCRKSQryVNTax_HG: TCurrencyField;
    QRSysData2: TQRSysData;
    QRShape14: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRDBText6: TQRDBText;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText7: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText8: TQRDBText;
    QRShape22: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentAccountConfirm_print: TEquipmentAccountConfirm_print;

implementation

{$R *.dfm}

procedure TEquipmentAccountConfirm_print.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if trunc(DetailBand1.expanded)>0 then
  begin
    QRShape1.Height := (trunc(DetailBand1.expanded));
  end;
end;

procedure TEquipmentAccountConfirm_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentAccountConfirm_print.FormCreate(Sender: TObject);
begin
  KCRKSQry.Active:=true;
end;

procedure TEquipmentAccountConfirm_print.FormDestroy(Sender: TObject);
begin
  EquipmentAccountConfirm_print:=nil;
end;

end.
