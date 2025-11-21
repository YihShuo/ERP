unit Deliver_EquipmentT_printTW1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Data.DB, Bde.DBTables, IniFiles, qrpctrls;

type
  TDeliver_EquipmentT_printTW = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    Page1: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERNAME: TStringField;
    DelMasJDDepName: TStringField;
    DelMasJDUSERNAME: TStringField;
    QRDBText1: TQRDBText;
    QRDBText12: TQRDBText;
    DelMasUserDate: TDateTimeField;
    QRLabel4: TQRLabel;
    QRDBText14: TQRDBText;
    DelDet: TQuery;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetQUCBH: TStringField;
    DelDetLSBH: TStringField;
    DelDetDWBH: TStringField;
    DelDetQty: TFloatField;
    DelDetDate_Back: TStringField;
    DelDetDate_Out: TStringField;
    DelMasLLNO_Out: TStringField;
    QRISO: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand2: TQRBand;
    QRExpr5: TQRExpr;
    DelDetVWPM: TStringField;
    DelDetTSBH: TStringField;
    DelDetCOLUMN2: TStringField;
    QRDBText15: TQRDBText;
    QRShape21: TQRShape;
    DelDetVALUE2: TStringField;
    L2: TQRLabel;
    L1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape2: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape17: TQRShape;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape24: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape22: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape5: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    QRShape15: TQRShape;
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
  Deliver_EquipmentT_printTW: TDeliver_EquipmentT_printTW;

implementation
  uses Deliver_EquipmentT1;
{$R *.dfm}

procedure TDeliver_EquipmentT_printTW.ReadIni();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,AssetsN21A2_ISO:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='固定資產異動申請單';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','固定資產異動申請單');
      AssetsN21A2_ISO:=MyIni.ReadString('ERP','AssetsN21A2_ISO','T-DCC-081B');
    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
  L2.Caption:=ComNameCH;
  QRISO.Caption:=AssetsN21A2_ISO;
end;

procedure TDeliver_EquipmentT_printTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDeliver_EquipmentT_printTW.FormCreate(Sender: TObject);
begin
  DelMas.Active:=true;
  DelDet.Active:=true;
  ReadIni();
end;

procedure TDeliver_EquipmentT_printTW.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentT_printTW:=nil;
end;

end.
