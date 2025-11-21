unit ExtraDel_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, QRPDFFilt, DBTables, DB,IniFiles,
  DelphiZXIngQRCode, DateUtils;

type
  TExtraDel_Print = class(TForm)
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
    DelTotMEMO: TStringField;
    UpdateSQL1: TUpdateSQL;
    QRDBText10: TQRDBText;
    DelTotMEMO1: TStringField;
    QRImage1: TQRImage;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    WH_DiplayFormat:String;
    QRCodeBitmap:TBitmap;
    check: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    procedure UpLoadQRImg(QRdata:string);
  end;

var
  ExtraDel_Print: TExtraDel_Print;

implementation
  uses ExtraDel1;
{$R *.dfm}
procedure TExtraDel_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  check:='';
  //倉庫小位數
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      //倉庫小位數
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','');
      check:=MyIni.ReadString('ERP','Company','');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelTot.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TExtraDel_Print.UpLoadQRImg(QRdata:string);
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

procedure TExtraDel_Print.FormDestroy(Sender: TObject);
begin
  ExtraDel_Print:=nil;
end;

procedure TExtraDel_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraDel_Print.FormCreate(Sender: TObject);
var i,j:integer;
    ADate, BDate : TDateTime;
begin
  ReadIni();
  ADate := ExtraDel.DelMas.fieldbyname('USERDATE').Value;
  BDate := EncodeDate(2023, 6, 30);
  if (CompareDate(ADate,BDate)>0) and (check='TYXUAN') then
  begin
    QRCodeBitmap:=TBitmap.Create;
    UpLoadQRImg(ExtraDel.DelMas.fieldbyname('LLNO').AsString);
    QRImage1.Picture.Assign(QRCodeBitmap);
  end;
  with  DelTot do
  begin
    active:=true;
    ExtraDel.DelDet.first;
    while not ExtraDel.DelDet.eof do
      begin
        if locate('CLBH',ExtraDel.DelDet.FieldByName('CLBH').value,[]) then
        begin
            edit;
            fieldbyname('Memo').Value:=fieldbyname('Memo').asstring+'// '
                            +ExtraDel.DelDet.fieldbyname('SCBH').AsString+'('+ExtraDel.DelDet.fieldbyname('Qty').AsString+')';
            post;
        end;
        ExtraDel.DelDet.next;
      end; 
    ExtraDel.DelDet.first;
  end;
end;

end.
