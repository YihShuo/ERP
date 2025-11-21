unit ApplyEquipment_print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Data.DB, Bde.DBTables, iniFiles;

type
  TApplyEquipment_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    L1: TQRLabel;
    TitleBand1: TQRBand;
    QRShape24: TQRShape;
    QRShape17: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRShape19: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
  end;

var
  ApplyEquipment_print: TApplyEquipment_print;

implementation
  uses ApplyEquipment1;
{$R *.dfm}

procedure TApplyEquipment_print.FormCreate(Sender: TObject);
begin
  Readini();
end;

procedure TApplyEquipment_print.Readini();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,PurchaseN2151_ISO:string;
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
    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
end;

end.
