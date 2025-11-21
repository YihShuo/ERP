unit QRFormatTracking_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DelphiZXIngQRCode, DB, DBTables, dateutils;

type
  TQRFormatTracking_Print = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    L11: TQRLabel;
    L12: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel45: TQRLabel;
    Date1: TQRLabel;
    QRDBText25: TQRDBText;
    QRSysData2: TQRSysData;
    page1: TQRLabel;
    QRLabel134: TQRLabel;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape36: TQRShape;
    QRShape38: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel23: TQRLabel;
    QRBand4: TQRBand;
    QRShape5: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape80: TQRShape;
    QRShape65: TQRShape;
    QRShape62: TQRShape;
    QRShape61: TQRShape;
    QRShape58: TQRShape;
    QRDBText41: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    SCDet: TQuery;
    SCDetSCNO: TStringField;
    SCDetSKU: TStringField;
    SCDetSR: TStringField;
    SCDetbarcode: TStringField;
    SCDetQty: TIntegerField;
    SCDetPurpose: TStringField;
    DS4: TDataSource;
    QRImage1: TQRImage;
    SCDetRON: TStringField;
    SCDetSTT: TFloatField;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Date1Print(sender: TObject; var Value: String);
  private
    QRCodeBitmap:TBitmap;
    { Private declarations }
  public
    { Public declarations }
    function GetChineseDate(myDate:TDateTime):string;
    procedure UpLoadQRImg(QRdata:string);
  end;

var
  QRFormatTracking_Print: TQRFormatTracking_Print;

implementation

uses QRFormatTracking1, main1;

{$R *.dfm}

procedure TQRFormatTracking_Print.UpLoadQRImg(QRdata:string);
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

function TQRFormatTracking_Print.GetChineseDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='Ngay '+Format('%.2d',[myDay])+' thang '+Format('%.2d',[myMonth])+' nam '+inttostr(myYear);
end;

procedure TQRFormatTracking_Print.FormDestroy(Sender: TObject);
begin
  QRFormatTracking_Print:=nil;
  QRCodeBitmap.Free;
end;

procedure TQRFormatTracking_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TQRFormatTracking_Print.FormCreate(Sender: TObject);
begin
  SCDet.Active:=true;
end;

procedure TQRFormatTracking_Print.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRCodeBitmap:=TBitmap.Create;
  UpLoadQRImg(SCDet.fieldbyname('barcode').AsString);
  QRImage1.Picture.Assign(QRCodeBitmap);
end;

procedure TQRFormatTracking_Print.Date1Print(sender: TObject;
  var Value: String);
begin
date1.Caption:=GetChineseDate(QRFormatTracking.SCMas.FieldByName('USERDATE').value);
end;

end.
