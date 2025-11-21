unit DelMaterial_PrintA51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, QRExport, QRXMLSFilt,
  QRPDFFilt, DBTables, DB, QRPrev, StrUtils, QRPrntr, Printers, SynPdf,
  grimgctrl, Registry, IniFiles, DelphiZXIngQRCode, DateUtils;

type
  TDelMaterial_PrintA5 = class(TForm)
    Quickrep1: TQuickRep;
    Qry_DelDet: TQuery;
    Qry_DelDetCLBH: TStringField;
    Qry_DelDetTempQty: TCurrencyField;
    Qry_DelDetYWPM: TStringField;
    Qry_DelDetDWBH: TStringField;
    Qry_DelDetperson: TFloatField;
    Qry_DelDetCLSL: TCurrencyField;
    SavePDF: TButton;
    ColumnHeader1: TQRBand;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRPDFShape1: TQRPDFShape;
    QRPDFShape2: TQRPDFShape;
    QRPDFShape3: TQRPDFShape;
    QRPDFShape4: TQRPDFShape;
    QRPDFShape5: TQRPDFShape;
    QRPDFShape6: TQRPDFShape;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText4: TQRDBText;
    Qry_DelDetHGPM: TStringField;
    Qry_DelDetUnitC: TStringField;
    Qry_DelDetCNO: TStringField;
    Qry_DelDetQty: TCurrencyField;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    TmpQuery: TQuery;
    QRPDFFilter1: TQRPDFFilter;
    PageHeaderBand1: TQRBand;
    QRDBTextCKBH: TQRDBText;
    QRDBTextLLNO: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBTextDEPID: TQRDBText;
    GSBHLabel: TQRDBText;
    QRLabel6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRImage: TQRImage;
    Sign_NLVT: TQRImage;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    Sign_NPVT: TQRImage;
    qrlbl1: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    Qry_DelDetYWPM_HGPM: TStringField;
    QRLabel23: TQRLabel;
    QRImage3: TQRImage;
    Qry_DelDetS: TQuery;
    Qry_DelDetSSCBH: TStringField;
    Qry_DelDetSTempQty: TCurrencyField;
    DS_DelDet: TDataSource;
    Qry_DelDetZLNO: TStringField;
    QRDBText1: TQRDBText;
    Qry_DelDetLLNO: TStringField;
    procedure Formclose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure Quickrep1EndPage(Sender: TCustomQuickRep);
    procedure Qry_DelDetCalcFields(DataSet: TDataSet);
  private
    QRCodeBitmap:TBitmap;
    check: string;
    { Private declarations }
    FileServerIP:string;
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat,CWHL_DiplayFormat:string;
    VNPrice_Decimal,CWHL_Decimal:Byte;
    procedure UpLoadQRImg(QRdata:string);
  end;

var
  DelMaterial_PrintA5: TDelMaterial_PrintA5;
  sPaperSize: string;
  sHeight: Real;

implementation

uses DeliverList1, main1, Deliver_Account1;
{$R *.dfm}

procedure TDelMaterial_PrintA5.FormDestroy(Sender: TObject);
begin
  DelMaterial_PrintA5 := nil;
end;

procedure TDelMaterial_PrintA5.Formclose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDelMaterial_PrintA5.ReadIni();
var MyIni :Tinifile;
    AppDir,CFMID,CFMID1,CFMID2,NPVT,NPVT_Img:string;
begin
  check:='';
  //
  NPVT:='108939';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  FileServerIP:=main.ServerIP;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      FileServerIP:=MyIni.ReadString('ERP','FileServerIP',main.ServerIP);
      check:=MyIni.ReadString('ERP','Company','');
      NPVT:=MyIni.ReadString('ERP','Account_N18C_NPVT_'+main.Edit2.Text,'108939');
    finally
      MyIni.Free;
    end;
  end;
  if NPVT<> '' then NPVT_Img:= NPVT+'.bmp';
  with TmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLL_DK_CFM.CFMID,KCLL_DK_CFM.CFMID1,KCLL_DK_CFM.CFMID2');
    SQL.Add('from KCLL');
    SQL.Add('left join KCLL_DK_CFM on KCLL_DK_CFM.LLNO=KCLL.LLNO');
    SQL.Add('where KCLL.LLNO='''+Deliver_Account.DelMas.fieldbyname('LLNO').AsString+''' ');
    Active:=true;
    if fieldbyname('CFMID').AsString<>'' then CFMID:=FieldByName('CFMID').AsString+'.bmp';
    if fieldbyname('CFMID1').AsString<>'' then CFMID1:=FieldByName('CFMID1').AsString+'.bmp';
    //if fieldbyname('CFMID2').AsString<>'' then CFMID2:=FieldByName('CFMID2').AsString+'.bmp';
  end;
  //Ã±¦WÀÉ
  if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
  if FileExists(AppDir+'\Images\'+CFMID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID),Pchar(AppDir+'Images\'+CFMID),false);
  if FileExists(AppDir+'\Images\'+CFMID1)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID1),Pchar(AppDir+'Images\'+CFMID1),false);
  if FileExists(AppDir+'\Images\'+CFMID2)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID2),Pchar(AppDir+'Images\'+CFMID2),false);
  if FileExists(AppDir+'\Images\'+NPVT_Img)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+NPVT_Img),Pchar(AppDir+'Images\'+NPVT_Img),false);
      
  if FileExists(AppDir+'\Images\'+NPVT_Img) then
  begin
    Sign_NPVT.Picture.LoadFromFile(AppDir+'\Images\'+NPVT_Img);
  end;
  if FileExists(AppDir+'\Images\'+CFMID) then
  begin
    QRImage.Picture.LoadFromFile(AppDir+'\Images\'+CFMID);
  end;
  if FileExists(AppDir+'\Images\'+CFMID1) then
  begin
    QRImage1.Picture.LoadFromFile(AppDir+'\Images\'+CFMID1);
  end;
  {if FileExists(AppDir+'\Images\'+CFMID2) then
  begin
    QRImage2.Picture.LoadFromFile(AppDir+'\Images\'+CFMID2);
  end; }
end;

procedure TDelMaterial_PrintA5.FormCreate(Sender: TObject);
var i,j:integer;
    ADate, BDate : TDateTime;
begin
  ReadIni();
  ADate := Deliver_Account.DelMas.fieldbyname('USERDATE').Value;
  BDate := EncodeDate(2023, 6, 30);
  if (CompareDate(ADate,BDate)>0) and (check='TYXUAN') then
  begin
    QRCodeBitmap:=TBitmap.Create;
    UpLoadQRImg(Deliver_Account.DelMas.fieldbyname('LLNO').AsString);
    QRImage3.Picture.Assign(QRCodeBitmap);
  end;
  sHeight := 0;
  Qry_DelDet.active:=true;
end;

procedure TDelMaterial_PrintA5.UpLoadQRImg(QRdata:string);
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

procedure TDelMaterial_PrintA5.Qry_DelDetCalcFields(DataSet: TDataSet);
begin
  {if Qry_DelDet.FieldByName('CLSL').Value <> 0 then
  begin
    Qry_DelDet.FieldByName('person').Value := Qry_DelDet.FieldByName('TempQty').Value / Qry_DelDet.FieldByName('CLSL').Value * 100;
  end
  else
  begin
    Qry_DelDet.FieldByName('person').Value := 0;
  end; }
  Qry_DelDetS.Close;
  Qry_DelDetS.Open;
  Qry_DelDetS.First;
  while not Qry_DelDetS.Eof do
  begin
    Qry_DelDet.FieldByName('ZLNO').AsString := Qry_DelDet.FieldByName('ZLNO').AsString + ' / ' + Qry_DelDetS.FieldByName('SCBH').AsString + '(' + FloatToStr(Qry_DelDetS.fieldbyname('TempQty').Value) + ')';
    Qry_DelDetS.Next;
  end;
end;

procedure TDelMaterial_PrintA5.DetailBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  sHeight := sHeight + DetailBand1.size.Height + DetailBand1.Expanded;
end;

procedure TDelMaterial_PrintA5.Quickrep1EndPage(Sender: TCustomQuickRep);
begin
  sHeight := sHeight + Quickrep1.Page.TopMargin + Quickrep1.Page.BottomMargin + PageHeaderBand1.Size.Height + ColumnHeader1.Size.Height + PageFooterBand1.Size.Height;
  if (sPaperSize = 'A5') or ((sPaperSize = 'A4_A5') and (sHeight <= 1480)) then
  begin
    Quickrep1.Page.PaperSize := A5;
    QuickRep1.Page.Orientation := poLandScape;
    sPaperSize := 'A5';
  end
  else
    sPaperSize := 'A4';
end;

end.


