unit Entry_RePrintSumA51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, QRExport, QRXMLSFilt,
  QRPDFFilt, DBTables, DB, QRPrev, StrUtils, QRPrntr,Printers,SynPdf, Registry,IniFiles;

type
  TEntry_RePrintSumA5 = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    Quickrep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    qrbnd1: TQRBand;
    TitleBand1: TQRBand;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    QRLabel6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    EnDet: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    UpdateSQL1: TUpdateSQL;
    QRDBText1: TQRDBText;
    QRDBText12: TQRDBText;
    EnDetCNO: TStringField;
    EnDetHGPM: TStringField;
    QRDBText17: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    Sign_NVTM: TQRImage;
    Sign_NVK: TQRImage;
    QRImage: TQRImage;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    TmpQuery: TQuery;
    procedure Formclose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Quickrep1EndPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
    FileServerIP:string;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Entry_RePrintSumA5: TEntry_RePrintSumA5;
  sPaperSize:string;
  sHeight:Real;
implementation
uses main1, Entry_Account1,fununit;
{$R *.dfm}

procedure TEntry_RePrintSumA5.ReadIni();
var MyIni :Tinifile;
    AppDir,CFMID,CFMID1,CFMID2,NVK,NVTM,NVK_Img,NVTM_Img:string;
begin
  //
  NVK:='108939';
  NVTM:='17805';
  FileServerIP:=main.ServerIP;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      FileServerIP:=MyIni.ReadString('ERP','FileServerIP',main.ServerIP);
      NVK:=MyIni.ReadString('ERP','Account_N18D_NVK_'+main.Edit2.Text,'108939');
      NVTM:=MyIni.ReadString('ERP','Account_N18D_NVTM_'+main.Edit2.Text,'17805');
    finally
      MyIni.Free;
    end;
  end;
  if NVK<>'' then NVK_Img:=NVK+'.bmp';
  if NVTM<>'' then NVTM_Img:=NVTM+'.bmp';
  with TmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRK_DK_CFM.CFMID,KCRK_DK_CFM.CFMID1,KCRK_DK_CFM.CFMID2');
    SQL.Add('from KCRK');
    SQL.Add('left join KCRK_DK_CFM on KCRK_DK_CFM.RKNO=KCRK.RKNO');
    SQL.Add('where KCRK.RKNO='''+Entry_Account.EnMas.fieldbyname('RKNO').AsString+''' ');
    Active:=true;
    if fieldbyname('CFMID').AsString<>'' then CFMID:=FieldByName('CFMID').AsString+'.bmp';
    if fieldbyname('CFMID1').AsString<>'' then CFMID1:=FieldByName('CFMID1').AsString+'.bmp';
    if fieldbyname('CFMID2').AsString<>'' then CFMID2:=FieldByName('CFMID2').AsString+'.bmp';
  end;
  //√±¶W¿…
  if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
  if FileExists(AppDir+'\Images\'+CFMID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID),Pchar(AppDir+'Images\'+CFMID),false);
  {if FileExists(AppDir+'\Images\'+CFMID1)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID1),Pchar(AppDir+'Images\'+CFMID1),false); }
  if FileExists(AppDir+'\Images\'+CFMID2)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID2),Pchar(AppDir+'Images\'+CFMID2),false);
  if FileExists(AppDir+'\Images\'+NVK_Img)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+NVK_Img),Pchar(AppDir+'Images\'+NVK_Img),false);
  if FileExists(AppDir+'\Images\'+NVTM_Img)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+NVTM_Img),Pchar(AppDir+'Images\'+NVTM_Img),false);

  if FileExists(AppDir+'\Images\'+CFMID) then
  begin
    QRImage.Picture.LoadFromFile(AppDir+'\Images\'+CFMID);
  end;
  {if FileExists(AppDir+'\Images\'+CFMID1) then
  begin
    QRImage1.Picture.LoadFromFile(AppDir+'\Images\'+CFMID1);
  end; }
  if FileExists(AppDir+'\Images\'+CFMID2) then
  begin
    QRImage2.Picture.LoadFromFile(AppDir+'\Images\'+CFMID2);
  end;
  if FileExists(AppDir+'\Images\'+NVK_Img) then
  begin
    Sign_NVK.Picture.LoadFromFile(AppDir+'\Images\'+NVK_Img);
  end;
  if FileExists(AppDir+'\Images\'+NVTM_Img) then
  begin
    Sign_NVTM.Picture.LoadFromFile(AppDir+'\Images\'+NVTM_Img);
  end;
end;

procedure TEntry_RePrintSumA5.Formclose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TEntry_RePrintSumA5.FormDestroy(Sender: TObject);
begin
  Entry_RePrintSumA5:=nil;
end;

procedure TEntry_RePrintSumA5.FormCreate(Sender: TObject);
begin
  sHeight:=0;
  SummaryBand1.Height:=18;
  ReadIni();
  Endet.Active:=true;
end;
procedure TEntry_RePrintSumA5.Quickrep1EndPage(Sender: TCustomQuickRep);
begin
  // Don vi tinh cua Height la (mm*10)
  sHeight:=sHeight+Quickrep1.Page.TopMargin+Quickrep1.Page.BottomMargin+PageHeaderBand1.Size.Height+TitleBand1.Size.Height+qrbnd1.Size.Height+SummaryBand1.Size.Height;
  if (sPaperSize='A5') or ((sPaperSize='A4_A5') and (sHeight<=1480)) then
  begin
    Quickrep1.Page.PaperSize:=A5;
    QuickRep1.Page.Orientation:=poLandScape;
    sPaperSize:='A5';
  end
  else
    sPaperSize:='A4'; 
end;

end.
