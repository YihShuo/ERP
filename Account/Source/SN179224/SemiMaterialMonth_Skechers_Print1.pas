unit SemiMaterialMonth_Skechers_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TSemiMaterialMonth_Skechers_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    QRLabel8: TQRLabel;
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
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape16: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape18: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape19: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape21: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape31: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel45: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr1: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRExpr4: TQRExpr;
    QRShape46: TQRShape;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape47: TQRShape;
    QRExpr8: TQRExpr;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRExpr10: TQRExpr;
    QRShape50: TQRShape;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRShape51: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape5: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape15: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape32: TQRShape;
    QRLabel39: TQRLabel;
    QRShape35: TQRShape;
    QRShape39: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRDBText11: TQRDBText;
    QRShape43: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRDBText14: TQRDBText;
    QRShape52: TQRShape;
    Qry_Temp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemiMaterialMonth_Skechers_Print: TSemiMaterialMonth_Skechers_Print;

implementation

uses SemiMaterialMonth_Skechers1;

{$R *.dfm}

procedure TSemiMaterialMonth_Skechers_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiMaterialMonth_Skechers_Print.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth_Skechers_Print:=nil;
end;

procedure TSemiMaterialMonth_Skechers_Print.FormCreate(Sender: TObject);
var
  iYear, iMonth, iDay: Word;
  sYear, sMonth: string;
begin
  sYear := SemiMaterialMonth_Skechers.CBX3.Text;
  sMonth := SemiMaterialMonth_Skechers.CBX4.Text;

  MonthQRLabel1.Caption := sMonth + '/' + sYear;
  MonthQRLabel2.Caption := sMonth;
  YearQRLabel1.Caption := sYear;

  //GSBH_QRLabel.Caption := SemiMaterialMonth_Sample.CKBHID;
  QRLabel39.Caption := SemiMaterialMonth_Skechers.CKBHID;
end;

end.
