unit QRReport_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls,IniFiles,fununit,DB, DBTables;

type
  TQRReport_Print = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel60: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel_ViTri: TQRLabel;
    QRAritcle: TQRDBText;
    QRCGBH: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel29: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    //procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
      ComName:String;
    ComNameCH:String;
    WarehouseN37_Card_ISO:string;
    procedure ReadIni();
  public
    { Public declarations }
   // Article: string;
    //DDBH: string;
    //Qty: Integer;
  end;

var
  QRReport_Print: TQRReport_Print;

implementation

uses QRReport1;


{$R *.dfm}

procedure TQRReport_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComName:='CONG TY TNHH TY BACH';
  ComNameCH:='億柏責任有限公司';
  WarehouseN37_Card_ISO:='T-KH-009A';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      WarehouseN37_Card_ISO:=MyIni.ReadString('ERP','WarehouseN37_Card_ISO','T-KH-009A');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel1.Caption:= WarehouseN37_Card_ISO;
end;

procedure TQRReport_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  QRReport_Print:=nil;
end;

procedure TQRReport_Print.FormDestroy(Sender: TObject);
begin
 // QRReport_Print:=nil;
end;

{procedure TQRReport_Print.QRCompositeReport1AddReports(Sender: TObject);
begin
   TQRReport_Print.QRLabel60.Caption:=ComNameCH;
   TQRReport_Print.QRLabel46.Caption:=ComName;
end;    }

procedure TQRReport_Print.FormCreate(Sender: TObject);
var year,month,day:word;
    sYear,sMonth,sDay:String;
begin
  ReadIni();
  decodedate(QRReport.DTPKK.Date,Year,Month,Day);   //找庫存相關的數據
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  QRLabel22.Caption:=' '+sYear+' 年 '+ sMonth+' 月存貨盤點卡';
  QRLabel21.Caption:='THE KIEM KE HANG TON THANG ' +sMonth+' NAM '+ sYear;
  QRLabel_Vitri.caption:='Kho de lon: '+ QRReport.CKBHEdit.Text;
  QRLabel13.caption:=QRReport.KVBHEdit.Text;
  QRLabel28.Caption:=DateToStr(QRReport.DTPKK.Date);
  if QRReport.DTPKK.Checked then
  begin
    QRLabel28.Caption:=DateToStr(QRReport.DTPKK.Date);
  end else
  begin
    QRLabel28.Caption:=DateToStr(QRReport.DTPKK.Date);
  end; 
end;


end.
