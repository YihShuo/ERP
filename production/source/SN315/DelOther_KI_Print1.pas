unit DelOther_KI_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, QRPDFFilt, QRCtrls, QuickRpt, StdCtrls, ExtCtrls,
  DelphiZXIngQRCode, DateUtils, IniFiles;

type
  TDelOther_KI_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    Label1: TLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    DelTot: TQuery;
    DelTotCLBH: TStringField;
    DelTotYWPM: TStringField;
    DelTotZWPM: TStringField;
    DelTotDWBH: TStringField;
    DelTotQty: TCurrencyField;
    DelTotMEMO: TMemoField;
    UpdateSQL1: TUpdateSQL;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
  DelOther_KI_Print: TDelOther_KI_Print;

implementation

uses  DelOther_KI1;

{$R *.dfm}

procedure TDelOther_KI_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDelOther_KI_Print.FormDestroy(Sender: TObject);
begin
  DelOther_KI_Print:=nil;
  QRCodeBitmap.Free;
end;

procedure TDelOther_KI_Print.UpLoadQRImg(QRdata:string);
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

procedure TDelOther_KI_Print.ReadIni();
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

procedure TDelOther_KI_Print.FormCreate(Sender: TObject);
var  ADate, BDate : TDateTime;
begin
  ReadIni();
  ADate := DelOther_KI.DelMas.fieldbyname('USERDATE').Value;
  BDate := EncodeDate(2023, 6, 30);
  if (CompareDate(ADate,BDate)>0) and (check='TYXUAN') then
  begin
    QRCodeBitmap:=TBitmap.Create;
    UpLoadQRImg(DelOther_KI.DelMas.fieldbyname('LLNO').AsString);
    QRImage1.Picture.Assign(QRCodeBitmap);
  end;
  with DelTot do
  begin
    active:=true;
    DelOther_KI.DelDet.first;
    while not DelOther_KI.DelDet.eof do
      begin
        if locate('CLBH',DelOther_KI.DelDet.FieldByName('CLBH').value,[]) then
        begin
          edit;
          fieldbyname('Memo').Value:=fieldbyname('Memo').asstring+'// '+DelOther_KI.DelDet.fieldbyname('SCBH').AsString+'('+DelOther_KI.DelDet.fieldbyname('Quantity').AsString+')'
          +' - '+DelOther_KI.DelDet.fieldbyname('YWPM_KI').AsString;
          post;
        end;
        DelOther_KI.DelDet.next;
      end;
    DelOther_KI.DelDet.first;
  end;
end;

end.
