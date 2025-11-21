unit KhuonIn_PX_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, iniFiles, ADODB,
  QRExport, QRXMLSFilt, QRPDFFilt;

type
  TKhuonIn_PX_Print = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand6: TQRBand;
    QRShape14: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape19: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape20: TQRShape;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText21: TQRDBText;
    QRShape24: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
     procedure Readini();
  public
    { Public declarations }
  end;

var
  KhuonIn_PX_Print: TKhuonIn_PX_Print;

implementation

uses KhuonInDeliver1, FunUnit, main1;

{$R *.dfm}

procedure TKhuonIn_PX_Print.Readini();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,PurchaseN2151_ISO:string;                                                                                
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春負責有限公司';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      //ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春負責有限公司');
      //PurchaseN2151_ISO:=MyIni.ReadString('ERP','PurchaseN2151_ISO','T-DCC-089A');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TKhuonIn_PX_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TKhuonIn_PX_Print.FormDestroy(Sender: TObject);
begin
  KhuonIn_PX_Print:=nil;
end;

end.
