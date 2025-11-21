unit ExtraMat_Print1;

interface     
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRPDFFilt, IniFiles;

type
  TExtraMat_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QPage1: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape2: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    L1: TQRLabel;
    L2: TQRLabel;
    L3: TQRLabel;
    L4: TQRLabel;
    L5: TQRLabel;
    L6: TQRLabel;
    L7: TQRLabel;
    L8: TQRLabel;
    L9: TQRLabel;
    L10: TQRLabel;
    L11: TQRLabel;
    L12: TQRLabel;
    L13: TQRLabel;
    L14: TQRLabel;
    L15: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText19: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRDBText20: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    ComName:String;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_Print: TExtraMat_Print;

implementation

{$R *.dfm}


procedure TExtraMat_Print.ReadIni();
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

procedure TExtraMat_Print.FormDestroy(Sender: TObject);
begin
ExtraMat_Print:=nil;
end;

procedure TExtraMat_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TExtraMat_Print.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var textvar:textfile;
    sline:string;
begin
   if ExtraMat_Print.L1.Caption <> '' then
   begin
     ReadIni();
     ExtraMat_Print.L1.Caption:=ComName;
   end else
   begin
      L1.caption:='';
      L2.caption:='';
      L3.caption:='';
      L4.caption:='';
      L5.caption:='';
      L6.caption:='';
      L7.caption:='';
      L8.caption:='';
      L9.caption:='';
      L10.caption:='';
      L11.caption:='';
      L12.caption:='';
      L13.caption:='';
      L14.caption:='';
      L15.caption:='';
   end;
end;

end.
