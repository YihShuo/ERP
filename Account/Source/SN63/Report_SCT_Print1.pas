unit Report_SCT_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, StdCtrls, IniFiles;

type
  TReport_SCT_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    L2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel28: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    Q12: TQRDBText;
    Q13: TQRDBText;
    Q14: TQRDBText;
    Q15: TQRDBText;
    Q16: TQRDBText;
    Q17: TQRDBText;
    Q18: TQRDBText;
    Q19: TQRDBText;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape33: TQRShape;
    L18: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel9: TQRLabel;
    L20: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    L21: TQRLabel;
    L22: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QRPDFFilter1: TQRPDFFilter;
    Query1: TQuery;
    StringField8: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    CurrencyField15: TCurrencyField;
    CurrencyField16: TCurrencyField;
    CurrencyField17: TCurrencyField;
    CurrencyField18: TCurrencyField;
    CurrencyField19: TCurrencyField;
    CurrencyField20: TCurrencyField;
    CurrencyField21: TCurrencyField;
    CurrencyField22: TCurrencyField;
    CurrencyField23: TCurrencyField;
    CurrencyField24: TCurrencyField;
    CurrencyField25: TCurrencyField;
    CurrencyField26: TCurrencyField;
    CurrencyField27: TCurrencyField;
    CurrencyField28: TCurrencyField;
    CurrencyField29: TCurrencyField;
    CurrencyField30: TCurrencyField;
    CurrencyField31: TCurrencyField;
    CurrencyField32: TCurrencyField;
    CurrencyField33: TCurrencyField;
    CurrencyField34: TCurrencyField;
    CurrencyField35: TCurrencyField;
    CurrencyField36: TCurrencyField;
    BWQY: TQuery;
    BWQYywsm: TStringField;
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
    Det: TQuery;
    QRLabel45: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel46: TQRLabel;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape28: TQRShape;
    QRLabel47: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    khu: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Account_N62_CheckFactory:String;
    { Private declarations }
    procedure ReadIni();
  public
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  Report_SCT_Print: TReport_SCT_Print;

implementation

uses Report_SCT1;

{$R *.dfm}

procedure TReport_SCT_Print.ReadIni();
var MyIni :Tinifile;
    AppDir, ComFullName, Address, TelNumber, FaxNumber:string;
    ComName, ComNameCH : string;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  ComFullName:='Vinh Long Footwear Co.LTD';
  Address:='Hoa Phu Industrial Zone, Vinh Long Province, Vietnam';
  TelNumber:='TEL:+84-703-962052';
  FaxNumber:='FAX:+84-703-96251';
  Account_N62_CheckFactory:='N';
  WH_DiplayFormat:='#,##0.00';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
      //
      Address:=MyIni.ReadString('ERP','Address','Hoa Phu Industrial Zone, Vinh Long Province, Vietnam');
      TelNumber:=MyIni.ReadString('ERP','TelNumber','TEL:+84-703-962052');
      FaxNumber:=MyIni.ReadString('ERP','FaxNumber','FAX:+84-703-96251');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      Account_N62_CheckFactory:=MyIni.ReadString('ERP','Account_N62_CheckFactory','N');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //
    finally
      MyIni.Free;
    end;
  end;
  //
  L1.Caption:=ComFullName;
  QRDBText14.Mask:=WH_DiplayFormat;
  QRDBText17.Mask:=WH_DiplayFormat;
  //Report_SCT_Print.QRLabel17.Caption:=CBX3.Text+'-'+CBX2.Text;
  with Det do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select Factory from bgszl where gsdh='''+Report_SCT.cbx4.Text+'''');
    active:=true;
  end;
  if ((Account_N62_CheckFactory<>'') and (Account_N62_CheckFactory='Y')) then
  begin
    khu.Caption:='KHU: '+Det.FieldByName('Factory').AsString;
  end else
  begin
    khu.Caption:='';
  end;
end;

procedure TReport_SCT_Print.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TReport_SCT_Print.FormDestroy(Sender: TObject);
begin
  Report_SCT_Print:=nil;
end;

end.
