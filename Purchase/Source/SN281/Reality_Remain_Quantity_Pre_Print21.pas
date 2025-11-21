unit Reality_Remain_Quantity_Pre_Print21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, DB, DBTables, QRPDFFilt, QRCtrls, ExtCtrls, iniFiles;

type
  TReality_Remain_Quantity_Pre_Print2 = class(TForm)
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
    QRShape2: TQRShape;
    DetailBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
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
    QRBand1: TQRBand;
    QRSubDetail: TQRSubDetail;
    Query2: TQuery;
    DS1: TDataSource;
    Query1GSBH: TStringField;
    Query1ZKBH: TStringField;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2BUYNO: TStringField;
    Query2ZLBH: TStringField;
    Query2KHPO: TStringField;
    Query2Pairs: TIntegerField;
    Query2Qty: TCurrencyField;
    Query2Size: TStringField;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
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
  Reality_Remain_Quantity_Pre_Print2: TReality_Remain_Quantity_Pre_Print2;

implementation
  uses Reality_Remain_Quantity_Pre1;
{$R *.dfm}

procedure TReality_Remain_Quantity_Pre_Print2.ReadIni();
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
//
procedure TReality_Remain_Quantity_Pre_Print2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TReality_Remain_Quantity_Pre_Print2.FormDestroy(Sender: TObject);
begin
  Reality_Remain_Quantity_Pre_Print2:=nil;
end;

procedure TReality_Remain_Quantity_Pre_Print2.FormCreate(Sender: TObject);
begin
  Readini();
  Query1.Active:=true;
  Query2.Active:=true;
end;

end.
