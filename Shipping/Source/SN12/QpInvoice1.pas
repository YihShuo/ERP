unit QpInvoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, jpeg, QRXMLSFilt,
  QRExport, QRPDFFilt, StdCtrls,IniFiles;

type
  TQpInvoiceF = class(TForm)
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
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel17: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape3: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    qrLevel: TQRLabel;
    qrName: TQRLabel;
    ISLabel: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
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
  QpInvoiceF: TQpInvoiceF;

implementation
    uses InvoicePL1;
{$R *.dfm}

procedure TQpInvoiceF.ReadIni();
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

procedure TQpInvoiceF.QRLabel19Print(sender: TObject; var Value: String);
begin
   QpInvoiceF.QRLabel19.Caption:=ComFullName;
   QpInvoiceF.QRLabel32.Caption:=ComFullName;
end;
procedure TQpInvoiceF.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
