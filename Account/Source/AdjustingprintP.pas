unit AdjustingprintP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, IniFiles;

type
  TAdjustingprint = class(TForm)
    QuickRep1: TQuickRep;
    PathTitle: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel5: TQRLabel;
    sup: TQRLabel;
    QRLabel6: TQRLabel;
    gxbh: TQRLabel;
    QRLabel7: TQRLabel;
    fno: TQRLabel;
    QRLabel8: TQRLabel;
    dd: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    FOOT: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    ComNameCH:string;
    ComName:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Adjustingprint: TAdjustingprint;

implementation

uses AdjustingP, main1;
{$R *.dfm}


procedure TAdjustingprint.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComNameCH:='億春責任有限公司';
  ComName:='CONG TY TNHH TY XUAN';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TAdjustingprint.FormCreate(Sender: TObject);
begin
  ReadIni();
  QRLabel1.Caption:=ComNameCH;
  QRLabel3.Caption:=ComName;
end;

procedure TAdjustingprint.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if copy(main.Edit2.Text,1,2)='VD' then
  begin
    Adjustingprint.QRLabel1.Caption:='億碩責任有限公司';
  end;
end;

end.
