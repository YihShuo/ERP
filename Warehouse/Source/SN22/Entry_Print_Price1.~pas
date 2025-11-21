unit Entry_Print_Price1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, QRExport, QRXMLSFilt, QRPDFFilt, QRCtrls,
  QuickRpt, ExtCtrls,IniFiles;

type
  TEntry_Print_Price = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetPaQty: TFloatField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetFKZT: TStringField;
    UpdateSQL1: TUpdateSQL;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  Entry_Print_Price: TEntry_Print_Price;

implementation

{$R *.dfm}
procedure TEntry_Print_Price.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TEntry_Print_Price.FormDestroy(Sender: TObject);
begin
 Entry_Print_Price:=nil;
end;

procedure TEntry_Print_Price.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntry_Print_Price.FormCreate(Sender: TObject);
begin
  EnDet.Active:=true;
  ReadIni();
end;

end.
