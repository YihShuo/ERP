unit WareStock_Print_Monthly_Import1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, grimgctrl, QRCtrls, ExtCtrls, iniFiles, DB, DBTables;

type
  TWareStock_Print_Monthly_Import = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRLabel60: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel28: TQRLabel;
    PageN: TQRLabel;
    QRLabel29: TQRLabel;
    GSBH_QRLabel: TQRLabel;
    QRLabel32: TQRLabel;
    KCHBQRLabel: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    Query1: TQuery;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    WarehouseN37_Monthly_ISO:string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  WareStock_Print_Monthly_Import: TWareStock_Print_Monthly_Import;

implementation
  uses main1,AnyStockImport1;
{$R *.dfm}
procedure TWareStock_Print_Monthly_Import.ReadIni();
var MyIni :Tinifile;
    AppDir,ComNameCH,ComName:string;
begin
  //
  WarehouseN37_Monthly_ISO:='T-DCC-110B';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      WarehouseN37_Monthly_ISO:=MyIni.ReadString('ERP','WarehouseN37_Monthly_ISO','T-DCC-110B');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel12.Caption:=ComNameCH;
  QRLabel9.Caption:=ComName;
  QRLabel3.Caption:= WarehouseN37_Monthly_ISO;
end;

procedure TWareStock_Print_Monthly_Import.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TWareStock_Print_Monthly_Import.FormDestroy(Sender: TObject);
begin
  WareStock_Print_Monthly_Import:=nil;
end;

procedure TWareStock_Print_Monthly_Import.FormCreate(Sender: TObject);
var year,month,day:word;
    sYear,sMonth,sDay:String;
begin
  ReadIni();
  decodedate(AnyStockImport.DTP1.Date,Year,Month,Day);  //LYN-IT04250600013
  //decodedate(Now,Year,Month,Day);   //找庫存相關的數據
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  sDay:=floattostr(day);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  if length(sDay)=1 then
    sDay:='0'+sDay;
  //上個月底日期
  if ((AnyStockImport.CBX3.Text='VTXX') or (AnyStockImport.CBX3.Text='VTXY') or (AnyStockImport.CBX3.Text='VTXZ') or (AnyStockImport.CBX3.Text='VLXX') or (AnyStockImport.CBX3.Text='VLXY') or (AnyStockImport.CBX3.Text='VLXZ'))then
  begin
    GSBH_QRLabel.Caption:='KHO TONG VU A (CCDC)';
  end else
  begin
    GSBH_QRLabel.Caption:=main.Edit2.Text;
  end;
  KCHBQRLabel.Caption:= AnyStockImport.Edit3.Text;
  QRLabel60.Caption:='BANG KIEM KE NGUYEN VAT LIEU THANG '+sMonth+' NAM '+sYear;
  QRLabel1.Caption:= sYear + ' 年 ' +sMonth+ '月份原物料盤點表'; 
end;

end.
