unit Deliver_EquipmentF_printTW1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Data.DB, Bde.DBTables, IniFiles;

type
  TDeliver_EquipmentF_printTW = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    Page1: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    L1: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERNAME: TStringField;
    DelMasJDDepName: TStringField;
    DelMasJDUSERNAME: TStringField;
    QRDBText1: TQRDBText;
    QRDBText12: TQRDBText;
    DelMasUserDate: TDateTimeField;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRISO: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape2: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel19: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    DelMasMemo: TStringField;
    L2: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape23: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel59: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape25: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel24: TQRLabel;
    QRShape36: TQRShape;
    QRLabel25: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Deliver_EquipmentF_printTW: TDeliver_EquipmentF_printTW;

implementation
  uses Deliver_EquipmentF1;
{$R *.dfm}

procedure TDeliver_EquipmentF_printTW.ReadIni();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,AssetsN21A1_ISO:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='固定資產異動申請單';
  AssetsN21A1_ISO:='T-DCC-080B';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','固定資產異動申請單');
      AssetsN21A1_ISO:=MyIni.ReadString('ERP','AssetsN21A1_ISO','T-DCC-080B');
    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
  L2.Caption:=ComNameCH;
  QRISO.Caption:=AssetsN21A1_ISO;
end;

procedure TDeliver_EquipmentF_printTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDeliver_EquipmentF_printTW.FormCreate(Sender: TObject);
begin
  DelMas.Active:=true;
  ReadIni();
end;

procedure TDeliver_EquipmentF_printTW.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentF_printTW:=nil;
end;

end.
