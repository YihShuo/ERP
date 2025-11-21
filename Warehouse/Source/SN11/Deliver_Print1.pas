unit Deliver_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, QRCtrls, QuickRpt, StdCtrls, ExtCtrls, QRPDFFilt ,IniFiles;


type
  TDeliver_Print = class(TForm)
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
    QRDBText10: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
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
    UPDet: TUpdateSQL;
    QRPDFFilter1: TQRPDFFilter;
    GSBHLabel: TQRLabel;
    QRDBText12: TQRDBText;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    DelDetMEMO2: TMemoField;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    DelDetCNO: TStringField;
    QRDBText15: TQRDBText;
    QRLabel2: TQRLabel;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRImage: TQRImage;
    TmpQuery: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FileServerIP:string;
    procedure ReadIni();

  public
    { Public declarations }
    VNPrice_DiplayFormat,CWHL_DiplayFormat:string;
    VNPrice_Decimal,CWHL_Decimal:Byte;
  end;

var
  Deliver_Print: TDeliver_Print;

implementation
   uses DeliverList1, main1;
{$R *.dfm}

procedure TDeliver_Print.FormDestroy(Sender: TObject);
begin
  Deliver_Print:=nil;
end;

procedure TDeliver_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,CFMID,CFMID1,CFMID2:string;
begin
  //
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
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  with TmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLL_DK_CFM.CFMID,KCLL_DK_CFM.CFMID1,KCLL_DK_CFM.CFMID2');
    SQL.Add('from KCLL');
    SQL.Add('left join KCLL_DK_CFM on KCLL_DK_CFM.LLNO=KCLL.LLNO');
    SQL.Add('where KCLL.LLNO='''+DeliverList.DelMas.fieldbyname('LLNO').AsString+''' ');
    Active:=true;
    if fieldbyname('CFMID').AsString<>'' then CFMID:=FieldByName('CFMID').AsString+'.bmp';
    if fieldbyname('CFMID1').AsString<>'' then CFMID1:=FieldByName('CFMID1').AsString+'.bmp';
    if fieldbyname('CFMID2').AsString<>'' then CFMID2:=FieldByName('CFMID2').AsString+'.bmp';
  end;
  //√±¶W¿…
  if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
  if FileExists(AppDir+'\Images\'+CFMID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID),Pchar(AppDir+'Images\'+CFMID),false);
  if FileExists(AppDir+'\Images\'+CFMID1)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID1),Pchar(AppDir+'Images\'+CFMID1),false);
  if FileExists(AppDir+'\Images\'+CFMID2)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CFMID2),Pchar(AppDir+'Images\'+CFMID2),false);

  if FileExists(AppDir+'\Images\'+CFMID) then
  begin
    QRImage.Picture.LoadFromFile(AppDir+'\Images\'+CFMID);
  end;
  if FileExists(AppDir+'\Images\'+CFMID1) then
  begin
    QRImage1.Picture.LoadFromFile(AppDir+'\Images\'+CFMID1);
  end;
  if FileExists(AppDir+'\Images\'+CFMID2) then
  begin
    QRImage2.Picture.LoadFromFile(AppDir+'\Images\'+CFMID2);
  end;
end;

procedure TDeliver_Print.FormCreate(Sender: TObject);
begin
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
  GSBHLabel.Caption:=DeliverList.DelMas.fieldByName('GSBH').AsString;
  ReadIni();
end;

procedure TDeliver_Print.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

end.
