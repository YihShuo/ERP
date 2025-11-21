unit DelMaterial_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, QRPDFFilt, DB, DBTables,
  DelphiZXIngQRCode, DateUtils, IniFiles;

type
  TDelMaterial_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;                    
    QRDBText4: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Label1: TLabel;
    QRDBText12: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText13: TQRDBText;
    QRImage1: TQRImage;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    QRCodeBitmap:TBitmap;
    check: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    procedure UpLoadQRImg(QRdata:string);
  end;

var
  DelMaterial_Print: TDelMaterial_Print;

implementation

uses DelMaterial1;

{$R *.dfm}

procedure TDelMaterial_Print.FormDestroy(Sender: TObject);
begin
  DelMaterial_Print:=nil;
  QRCodeBitmap.Free;
end;

procedure TDelMaterial_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDelMaterial_Print.UpLoadQRImg(QRdata:string);
var
  QRCode: TDelphiZXingQRCode;
  Row,Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data:=QRdata;
    QRCode.Encoding := TQRCodeEncoding(3);
    QRCode.QuietZone := StrToIntDef('1',4);
    QRCodeBitmap.Width:=QRCode.Rows;
    QRCodeBitmap.Height:=QRCode.Columns;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
end;

procedure TDelMaterial_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  check:='';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      check:=MyIni.ReadString('ERP','Company','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDelMaterial_Print.FormCreate(Sender: TObject);
var  ADate, BDate : TDateTime;
begin
  ReadIni();
  ADate := DelMaterial.DelMas.fieldbyname('USERDATE').Value;
  BDate := EncodeDate(2023, 6, 30);
  if (CompareDate(ADate,BDate)>0) and (check='TYXUAN') then
  begin
    QRCodeBitmap:=TBitmap.Create;
    UpLoadQRImg(DelMaterial.DelMas.fieldbyname('LLNO').AsString);
    QRImage1.Picture.Assign(QRCodeBitmap);
  end;
end;

end.
