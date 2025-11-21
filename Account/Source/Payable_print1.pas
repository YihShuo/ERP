unit Payable_print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls, StdCtrls,IniFiles;

type
  TPayable_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRShape21: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape23: TQRShape;
    QRLabel16: TQRLabel;
    QRShape24: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText4: TQRDBText;
    QRShape14: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape11: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText21: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel13: TQRLabel;
    QRShape17: TQRShape;
    QRShape22: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape25: TQRShape;
    QRDBText22: TQRDBText;
    QRShape26: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    QRExpr5: TQRExpr;
    L1: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRLabel26: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);

  private
    ComName:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Payable_print: TPayable_print;

implementation

{$R *.dfm}
//20190105 read ini file
procedure TPayable_print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP',' ComName ','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TPayable_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPayable_print.FormDestroy(Sender: TObject);
begin
Payable_print:=nil;
end;

procedure TPayable_print.FormCreate(Sender: TObject);
var textvar:textfile;
sline:string;
begin
  ReadIni();
end;

procedure TPayable_print.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Payable_print.L1.Caption:=ComName;
end;

end.
