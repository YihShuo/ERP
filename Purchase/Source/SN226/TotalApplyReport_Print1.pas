unit TotalApplyReport_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, IniFiles;

type
  TTotalApplyReport_Print = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QPage1: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData2: TQRSysData;
    L3: TQRLabel;
    L12: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    L8: TQRLabel;
    L6: TQRLabel;
    L10: TQRLabel;
    QRBand: TQRBand;
    QRShape8: TQRShape;
    QRShape6: TQRShape;
    QRShape31: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape15: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel11: TQRLabel;
    Q1: TQRLabel;
    QRBandFooter: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    PageFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    L15: TQRLabel;
    L16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape7: TQRShape;
    QRShape4: TQRShape;
    QRShape18: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel16: TQRLabel;
    L20: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TotalApplyReport_Print: TTotalApplyReport_Print;

implementation

uses TotalApplyReport1, main1;

{$R *.dfm}

procedure TTotalApplyReport_Print.FormDestroy(Sender: TObject);
begin
  TotalApplyReport_Print:=nil;
end;

procedure TTotalApplyReport_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
