unit Deliver_EquipmentR_printTW1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Data.DB, Bde.DBTables, IniFiles, qrpctrls;

type
  TDeliver_EquipmentR_printTW = class(TForm)
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
    QRShape15: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
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
  Deliver_EquipmentR_printTW: TDeliver_EquipmentR_printTW;

implementation
  uses Deliver_EquipmentR1;
{$R *.dfm}

procedure TDeliver_EquipmentR_printTW.ReadIni();
var MyIni :Tinifile;
    AppDir,ComName,AssetsN216_ISO:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      AssetsN216_ISO:=MyIni.ReadString('ERP','AssetsN216_ISO','T-DCC-081A');
    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
  QRISO.Caption:=AssetsN216_ISO;
end;

procedure TDeliver_EquipmentR_printTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDeliver_EquipmentR_printTW.FormCreate(Sender: TObject);
begin
  DelMas.Active:=true;
  DelDet.Active:=true;
  ReadIni();
end;

procedure TDeliver_EquipmentR_printTW.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentR_printTW:=nil;
end;

end.
