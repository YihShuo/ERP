unit Deliver_EquipmentS_print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, iniFiles;

type
  TDeliver_EquipmentS_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    L1: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    TitleBand1: TQRBand;
    QRShape24: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText3: TQRDBText;
    QRISO: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
  end;

var
  Deliver_EquipmentS_print: TDeliver_EquipmentS_print;

implementation
  uses Deliver_EquipmentS1;
{$R *.dfm}

procedure TDeliver_EquipmentS_print.Readini();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,AssetsN215_ISO:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      AssetsN215_ISO:=MyIni.ReadString('ERP','AssetsN215_ISO','T-DCC-076B');
    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
  QRISO.Caption:=AssetsN215_ISO;
end;

procedure TDeliver_EquipmentS_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDeliver_EquipmentS_print.FormCreate(Sender: TObject);
begin
  Readini();
end;

procedure TDeliver_EquipmentS_print.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentS_print:=nil;
end;

end.
