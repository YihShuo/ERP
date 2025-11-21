unit DelMaterial_PrintS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, QRPDFFilt, DB, DBTables,
  DelphiZXIngQRCode, DateUtils, IniFiles;

type
  TDelMaterial_PrintS = class(TForm)
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
    QRDBText10: TQRDBText;
    Label1: TLabel;
    QRDBText12: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    UpdateSQL1: TUpdateSQL;
    DelTot: TQuery;
    DelTotCLBH: TStringField;
    DelTotYWPM: TStringField;
    DelTotZWPM: TStringField;
    DelTotDWBH: TStringField;
    DelTotQty: TCurrencyField;
    DelTotMEMO: TMemoField;
    QRDBText9: TQRDBText;
    DetQry: TQuery;
    DS1: TDataSource;
    DelTotLLNO: TStringField;
    DetQrySCBH: TStringField;
    DetQryQty: TCurrencyField;
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
  DelMaterial_PrintS: TDelMaterial_PrintS;

implementation

uses DelMaterial1,FunUnit;

{$R *.dfm}

procedure TDelMaterial_PrintS.FormDestroy(Sender: TObject);
begin
  DelMaterial_PrintS:=nil;
  QRCodeBitmap.Free;
end;

procedure TDelMaterial_PrintS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDelMaterial_PrintS.UpLoadQRImg(QRdata:string);
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

procedure TDelMaterial_PrintS.ReadIni();
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

procedure TDelMaterial_PrintS.FormCreate(Sender: TObject);
var i,j:integer;
    ADate, BDate : TDateTime;
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
  if messagedlg('3 Order List only or All Order List?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    DelTot.Active:=true;
    DetQry.Active:=true;
    for i:=0 to DelTot.RecordCount-1 do
    begin
      for j:=0 to DetQry.RecordCount-1 do
      begin
        funcObj.WriteErrorLog(DelTot.fieldbyname('CLBH').AsString+' '+DetQry.fieldbyname('SCBH').AsString);
        if j<2 then
        begin
           DelTot.edit;
           DelTot.fieldbyname('Memo').Value:=DelTot.fieldbyname('Memo').asstring+'// '+DetQry.fieldbyname('SCBH').AsString+'('+DetQry.fieldbyname('Qty').AsString+')';
        end else
        begin
           DelTot.edit;
           DelTot.fieldbyname('Memo').Value:=DelTot.fieldbyname('Memo').asstring+'......';
           break;
        end;

      end;
      if ((j<>DetQry.RecordCount) and (j>0)) then
      begin
         DetQry.Last;
         DelTot.edit;
         DelTot.fieldbyname('Memo').Value:=DelTot.fieldbyname('Memo').asstring+'// '+DetQry.fieldbyname('SCBH').AsString+'('+DetQry.fieldbyname('Qty').AsString+')';
         DelTot.post;
      end;
      DelTot.Next;
    end;
    DetQry.Active:=false;
  end else
  begin
    with  DelTot do
    begin
      active:=true;
      DelMaterial.DelDet.first;
      while not DelMaterial.DelDet.eof do
      begin
          if locate('CLBH',DelMaterial.DelDet.FieldByName('CLBH').value,[]) then
          begin
              edit;
              fieldbyname('Memo').Value:=fieldbyname('Memo').asstring+'// '+DelMaterial.DelDet.fieldbyname('SCBH').AsString+'('+DelMaterial.DelDet.fieldbyname('Qty').AsString+')';
              post;
          end;
          DelMaterial.DelDet.next;
      end;
      DelMaterial.DelDet.first;
    end;
  end;
end;

end.
