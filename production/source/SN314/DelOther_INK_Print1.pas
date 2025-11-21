unit DelOther_INK_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, QRPDFFilt, DBTables, DB,fununit,
  DelphiZXIngQRCode, DateUtils, IniFiles;

type
  TDelOther_INK_Print = class(TForm)
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
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    QRDBText12: TQRDBText;
    Label1: TLabel;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    DelTot: TQuery;
    DelTotCLBH: TStringField;
    DelTotYWPM: TStringField;
    DelTotZWPM: TStringField;
    DelTotDWBH: TStringField;
    DelTotQty: TCurrencyField;
    UpdateSQL1: TUpdateSQL;
    DelTotMEMO: TMemoField;
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
  DelOther_INK_Print: TDelOther_INK_Print;

implementation
  uses DelOther_INK1;
{$R *.dfm}

procedure TDelOther_INK_Print.FormDestroy(Sender: TObject);
begin
  DelOther_INK_Print:=nil;
  QRCodeBitmap.Free;
end;

procedure TDelOther_INK_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TDelOther_INK_Print.UpLoadQRImg(QRdata:string);
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

procedure TDelOther_INK_Print.ReadIni();
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

procedure TDelOther_INK_Print.FormCreate(Sender: TObject);
var  ADate, BDate : TDateTime;
begin
  ReadIni();
  ADate := DelOther_INK.DelMas.fieldbyname('USERDATE').Value;
  BDate := EncodeDate(2023, 6, 30);
  if (CompareDate(ADate,BDate)>0) and (check='TYXUAN') then
  begin
    QRCodeBitmap:=TBitmap.Create;
    UpLoadQRImg(DelOther_INK.DelMas.fieldbyname('LLNO').AsString);
    QRImage1.Picture.Assign(QRCodeBitmap);
  end;
  with  DelTot do
  begin
    active:=true;
    DelOther_INK.DelDet.first;
    while not DelOther_INK.DelDet.eof do
      begin
        if locate('CLBH',DelOther_INK.DelDet.FieldByName('CLBH').value,[]) then
        begin
            edit;
            fieldbyname('Memo').Value:=fieldbyname('Memo').asstring+'// '
                            +DelOther_INK.DelDet.fieldbyname('SCBH').AsString+'('+DelOther_INK.DelDet.fieldbyname('Qty').AsString+')';
            post;
        end;
        DelOther_INK.DelDet.next;
      end;
      //funcobj.WriteErrorLog(DelOther_INK.DelDet.fieldbyname('Memo').Value);
    DelOther_INK.DelDet.first;
  end;
end;

end.
