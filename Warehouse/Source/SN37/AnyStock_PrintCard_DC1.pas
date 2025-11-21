unit AnyStock_PrintCard_DC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, jpeg, QRXMLSFilt,
  QRExport, QRPDFFilt, StdCtrls, IniFiles,fununit;


type
  TAnyStock_PrintCard_DC = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRBand2: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRCompositeReport1: TQRCompositeReport;
    QRExcelFilter1: TQRExcelFilter;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    Query1: TQuery;
    QRLabel23: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel_Vitri: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape14: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    ComNameCH:String;
    WarehouseN37_Card_ISO: string;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnyStock_PrintCard_DC: TAnyStock_PrintCard_DC;

implementation

uses main1, AnyStock1;

{$R *.dfm}

procedure TAnyStock_PrintCard_DC.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  WarehouseN37_Card_ISO:='T-KH-070';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      WarehouseN37_Card_ISO:=MyIni.ReadString('ERP','WarehouseN37_Card_ISO','T-KH-070');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel1.Caption:= WarehouseN37_Card_ISO;
end;

procedure TAnyStock_PrintCard_DC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAnyStock_PrintCard_DC.FormDestroy(Sender: TObject);
begin
  AnyStock_PrintCard_DC:=nil;
end;

procedure TAnyStock_PrintCard_DC.QRCompositeReport1AddReports(Sender: TObject);
begin
   AnyStock_PrintCard_DC.QRLabel60.Caption:=ComNameCH;
   AnyStock_PrintCard_DC.QRLabel46.Caption:=ComName;
end;

procedure TAnyStock_PrintCard_DC.FormCreate(Sender: TObject);
var year,month,day:word;
    sYear,sMonth,sDay:String;
begin
  ReadIni();
  decodedate(AnyStock.DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  QRLabel21.Caption:=' '+sYear+' 年 '+ sMonth+' 月存貨盤點卡';
  QRLabel22.Caption:=' '+sYear+' Nam '+ sMonth+' The kiem ke hang ton thang ';
  if ((AnyStock.KCBHEdit.Text<>'') and (AnyStock.KCBHEdit1.Text='')) then
    QRLabel_Vitri.Caption:=AnyStock.KCBHEdit.Text
  else if ((AnyStock.KCBHEdit.Text='') and (AnyStock.KCBHEdit1.Text<>'')) then
    QRLabel_Vitri.Caption:=AnyStock.KCBHEdit1.Text
  else if ((AnyStock.KCBHEdit.Text<>'') and (AnyStock.KCBHEdit1.Text<>'')) then
    QRLabel_Vitri.Caption:=AnyStock.KCBHEdit.Text  + ' ~ ' + AnyStock.KCBHEdit1.Text;
  if AnyStock.CBX1.Text='CBY' then
  begin
    QRLabel3.Caption:='Giay CBY';
  end;
end;


end.
