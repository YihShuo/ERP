unit WareStock_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, grimgctrl, QRCtrls, ExtCtrls, iniFiles;

type
  TWareStock_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRLabel60: TQRLabel;
    QRLabel1: TQRLabel;
    MonthQRLabel2: TQRLabel;
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
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText4: TQRDBText;
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
    MonthQRLabel1: TQRLabel;
    QRLabel30: TQRLabel;
    GSBH_QRLabel: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    KCHBQRLabel: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  WareStock_Print: TWareStock_Print;

implementation
  uses main1,WareStock1;
{$R *.dfm}
procedure TWareStock_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,ComNameCH,ComName:string;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel12.Caption:=ComNameCH;
  QRLabel9.Caption:=ComName;
end;

procedure TWareStock_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TWareStock_Print.FormDestroy(Sender: TObject);
begin
  WareStock_Print:=nil;
end;

procedure TWareStock_Print.FormCreate(Sender: TObject);
var year,month,day:word;
    sYear,sMonth:String;
begin
  ReadIni();
  decodedate(WareStock.StockDT1.Date,Year,Month,Day);   //找庫存相關的數據
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  MonthQRLabel1.Caption:=sMonth+'/'+sYear;//盤點月份
  MonthQRLabel2.Caption:=sMonth+'/'+sYear;//盤點月份
  //上個月底日期
  KCHBQRLabel.Caption:=Copy(WareStock.KHOQry1.FieldByName('KCBH').AsString,1,Pos('-',WareStock.KHOQry1.FieldByName('KCBH').AsString)-1);
  GSBH_QRLabel.Caption:=main.Edit2.Text;
end;

end.
