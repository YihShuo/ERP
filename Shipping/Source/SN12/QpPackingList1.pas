unit QpPackingList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, QRExport,IniFiles;

type
  TQpPackingListF = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel17: TQRLabel;
    DetailBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    SummaryBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRLabel36: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel40: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel24: TQRLabel;
    QRLabel33: TQRLabel;
    qrLevel: TQRLabel;
    qrName: TQRLabel;
    ISLabel: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText35: TQRDBText;
    QRCompositeReport1: TQRCompositeReport;
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    ComFullName:String;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QpPackingListF: TQpPackingListF;

implementation
   uses InvoicePL1;
{$R *.dfm}

procedure TQpPackingListF.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComFullName:='VINH LONG FOOTWEAR CO., LTD';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TQpPackingListF.QRLabel19Print(sender: TObject;
  var Value: String);
begin
   QpPackingListF.QRLabel19.Caption:=ComFullName;
   QpPackingListF.QRLabel24.Caption:=ComFullName;
end;

procedure TQpPackingListF.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
