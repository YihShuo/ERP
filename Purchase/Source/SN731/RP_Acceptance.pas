unit RP_Acceptance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, StdCtrls, IniFiles;

type
  TRP_Acceptance = class(TForm)               
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    Mas: TQuery;
    Det: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QPage1: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
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
    QRSysData1: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
    L7: TQRLabel;
    L1: TQRLabel;
    L2: TQRLabel;
    MasMEMO_1: TStringField;
    MasREMARK: TStringField;
    QRDBText16: TQRDBText;
    BWQY: TQuery;
    BWQYywsm: TStringField;
    MasPartAll: TStringField;
    MasZLNO: TMemoField;
    MasFDAll: TMemoField;
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
    QRShape7: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
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
    QRShape30: TQRShape;
    QRLabel40: TQRLabel;
    MasZSBH: TStringField;
    MasZSYWJC: TStringField;
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
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText8: TQRDBText;
    MasZWPM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  RP_Acceptance1: TRP_Acceptance;

implementation

uses PurSample1, main1, FunUnit;

{$R *.dfm}

procedure TRP_Acceptance.ReadIni();
var MyIni :Tinifile;
    AppDir, ComFullName, Address, TelNumber, FaxNumber:string;
begin
  //
{  AppDir:=ExtractFilePath(Application.ExeName);
  ComFullName:='Vinh Long Footwear Co.LTD';
  Address:='Hoa Phu Industrial Zone, Vinh Long Province, Vietnam';
  TelNumber:='TEL:+84-703-962052';
  FaxNumber:='FAX:+84-703-96251';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
      //
      Address:=MyIni.ReadString('ERP','Address','Hoa Phu Industrial Zone, Vinh Long Province, Vietnam');
      TelNumber:=MyIni.ReadString('ERP','TelNumber','TEL:+84-703-962052');
      FaxNumber:=MyIni.ReadString('ERP','FaxNumber','FAX:+84-703-96251');
      //
    finally
      MyIni.Free;
    end;
  end;
  //
  L1.Caption:=ComFullName;
  L11.Caption:=Address;
  L12.Caption:=TelNumber+' '+FaxNumber;
}
end;

procedure TRP_Acceptance.FormCreate(Sender: TObject);
begin
  ReadIni();
  Mas.Active:=true;
  Det.Active:=true;

  //
  Mas.First;
  Det.First;
end;

procedure TRP_Acceptance.FormDestroy(Sender: TObject);
begin
  RP_Acceptance1:=nil;
end;

end.
