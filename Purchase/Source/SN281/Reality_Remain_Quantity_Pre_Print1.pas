unit Reality_Remain_Quantity_Pre_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, iniFiles;

type
  TReality_Remain_Quantity_Pre_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    L2: TQRLabel;
    L7: TQRLabel;
    QRDBText3: TQRDBText;
    L6: TQRLabel;
    QRDBText8: TQRDBText;
    L8: TQRLabel;
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
    PageFooterBand1: TQRBand;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1Qty: TFloatField;
    Query1LQty: TFloatField;
    Query1SIZE: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1YWPM: TStringField;
    Query1CQDH: TStringField;
    Query1DWBH: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1USPrice: TFloatField;
    Query1VNACC: TFloatField;
    Query1USACC: TFloatField;
    Query1VNACC_L: TFloatField;
    Query1USACC_L: TFloatField;
    QRDBText9: TQRDBText;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr5: TQRExpr;
    QRExpr1: TQRExpr;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Reality_Remain_Quantity_Pre_Print: TReality_Remain_Quantity_Pre_Print;

implementation
  uses Reality_Remain_Quantity_Pre1;
{$R *.dfm}

procedure TReality_Remain_Quantity_Pre_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TReality_Remain_Quantity_Pre_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TReality_Remain_Quantity_Pre_Print.FormDestroy(Sender: TObject);
begin
  Reality_Remain_Quantity_Pre_Print:=nil;
end;

procedure TReality_Remain_Quantity_Pre_Print.FormCreate(Sender: TObject);
begin
  Readini();
  Query1.Active:=true;
end;

end.
