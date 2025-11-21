unit DelOther_PrintA51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, QRExport, QRXMLSFilt,
  QRPDFFilt, DBTables, DB, QRPrev, StrUtils, QRPrntr, Printers, SynPdf,
  grimgctrl, Registry, IniFiles, DelphiZXIngQRCode, DateUtils;

type
  TDelOther_PrintA5 = class(TForm)
    Quickrep1: TQuickRep;
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
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRLabel23: TQRLabel;
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
    UPDet: TUpdateSQL;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetPerson: TFloatField;
    DelDetYYBH: TStringField;
    DelDetYWSM: TStringField;
    DelDetZWPM: TStringField;
    DelDetZWSM: TStringField;
    DelDetMEMO: TStringField;
    DelDetMEMO1: TMemoField;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    DelDetMEMO2: TMemoField;
    DelDetCNO: TStringField;
    TmpQuery: TQuery;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    DelDetYWPM_CLHQ: TStringField;
    QRImage3: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Quickrep1EndPage(Sender: TCustomQuickRep);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
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
  DelOther_PrintA5: TDelOther_PrintA5;
  sPaperSize: string;
  sHeight: Real;

implementation
   uses DeliverList1, main1, Deliver_Account1;
{$R *.dfm}

procedure TDelOther_PrintA5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDelOther_PrintA5.FormDestroy(Sender: TObject);
begin
  DelOther_PrintA5:=nil;
end;

procedure TDelOther_PrintA5.ReadIni();
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
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;

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
    if fieldbyname('CFMID2').AsString<>'' then CFMID2:=FieldByName('CFMID2').AsString+'.bmp';
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

procedure TDelOther_PrintA5.FormCreate(Sender: TObject);
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
  with DelDet do
  begin
    active:=true;
    while not eof do
    begin
      edit;
      if fieldbyname('Memo1').isnull then
      begin
        fieldbyname('Memo1').value:='';
      end;
      if ((not fieldbyname('YWSM').isnull ) or (not fieldbyname('Memo1').isnull )) then
      begin
        fieldbyname('Memo1').value:=trim(fieldbyname('YWSM').AsString)+' /'+trim(fieldbyname('ZWSM').AsString)+' //'+trim(fieldbyname('Memo1').value);
      end;  
      post;
      next;
    end;
  end;
end;

procedure TDelOther_PrintA5.UpLoadQRImg(QRdata:string);
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

procedure TDelOther_PrintA5.Quickrep1EndPage(Sender: TCustomQuickRep);
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

procedure TDelOther_PrintA5.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  sHeight := sHeight + DetailBand1.size.Height + DetailBand1.Expanded;
end;

end.
