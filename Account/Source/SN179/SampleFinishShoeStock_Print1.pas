unit SampleFinishShoeStock_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TSampleFinishShoeStock_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    MonthQRLabel1: TQRLabel;
    YearQRLabel1: TQRLabel;
    MonthQRLabel2: TQRLabel;
    GSBH_QRLabel: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    PageN: TQRLabel;
    PageFooterBand1: TQRBand;
    L16: TQRLabel;
    L14: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel45: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr1: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape15: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleFinishShoeStock_Print: TSampleFinishShoeStock_Print;

implementation

uses main1,StockShoeMonth1;

{$R *.dfm}

procedure TSampleFinishShoeStock_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSampleFinishShoeStock_Print.FormDestroy(Sender: TObject);
begin
  SampleFinishShoeStock_Print:=nil;
end;

procedure TSampleFinishShoeStock_Print.FormCreate(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(StockShoeMonth.DTP2.Date,iYear,iMonth,iDay);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  MonthQRLabel1.Caption:=sMonth;
  MonthQRLabel2.Caption:=sMonth;
  YearQRLabel1.Caption:=sYear;
  GSBH_QRLabel.Caption:=StockShoeMonth.ComboBox2.Text;
end;

end.
