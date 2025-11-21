unit PurOther_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, IniFiles;

type
  TPurOther_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    L1: TQRLabel;
    L2: TQRLabel;
    L3: TQRLabel;
    QRDBText9: TQRDBText;
    L4: TQRLabel;
    L5: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    L7: TQRLabel;
    QRDBText3: TQRDBText;
    L6: TQRLabel;
    QRDBText8: TQRDBText;
    L8: TQRLabel;
    QRDBText12: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    ComName:String;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurOther_Print: TPurOther_Print;

implementation

{$R *.dfm}

procedure TPurOther_Print.ReadIni();
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

procedure TPurOther_Print.FormCreate(Sender: TObject);
begin
if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L3.Caption:='';
    L4.Caption:='';
    L5.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L8.Caption:='';
  end
  else
    begin
      ReadIni();
      L1.Caption:=ComName;
    end;
end;

procedure TPurOther_Print.FormDestroy(Sender: TObject);
begin
PurOther_Print:=nil;
end;

procedure TPurOther_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
