unit WareStock_Print_Yearly1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, grimgctrl, QRCtrls, ExtCtrls, iniFiles, DB, DBTables;

type
  TWareStock_Print_Yearly = class(TForm)
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
    QRShape2: TQRShape;
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
    QRShape17: TQRShape;
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
    NgayLabel: TQRLabel;
    QRLabel30: TQRLabel;
    BPLabel: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    Query1: TQuery;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRSysData2: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    WarehouseN37_Yearly_ISO: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  WareStock_Print_Yearly: TWareStock_Print_Yearly;

implementation
  uses main1,AnyStock1;
{$R *.dfm}
procedure TWareStock_Print_Yearly.ReadIni();
var MyIni :Tinifile;
    AppDir,ComNameCH,ComName:string;
begin
  //
  WarehouseN37_Yearly_ISO:='T-DCC-039C' ;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      WarehouseN37_Yearly_ISO:=MyIni.ReadString('ERP','WarehouseN37_Yearly_ISO','T-DCC-039C');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel12.Caption:=ComNameCH;
  QRLabel9.Caption:=ComName;
  QRLabel3.Caption:= WarehouseN37_Yearly_ISO;
end;

procedure TWareStock_Print_Yearly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TWareStock_Print_Yearly.FormDestroy(Sender: TObject);
begin
  WareStock_Print_Yearly:=nil;
end;

procedure TWareStock_Print_Yearly.FormCreate(Sender: TObject);
var year,month,day,year1,month1,day1:word;
    sYear,sMonth,sDay,sYear1,sMonth1,sDay1:String;
begin
  ReadIni();
  decodedate(Now,Year,Month,Day);   //找庫存相關的數據
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  sDay:=floattostr(day);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  if length(sDay)=1 then
    sDay:='0'+sDay;

  decodedate(AnyStock.DTP1.Date,Year1,Month1,Day1);
  sYear1:=floattostr(year1);
  sMonth1:=floattostr(month1);
  sDay1:=floattostr(day1);
  if length(sMonth1)=1 then
    sMonth1:='0'+sMonth1;
  if length(sDay1)=1 then
    sDay1:='0'+sDay1;
  //上個月底日期
  if ((AnyStock.CBX1.Text='VTXX') or (AnyStock.CBX1.Text='VTXY') or (AnyStock.CBX1.Text='VTXZ') or (AnyStock.CBX1.Text='VLXX') or (AnyStock.CBX1.Text='VLXY') or (AnyStock.CBX1.Text='VLXZ'))then
  begin
    GSBH_QRLabel.Caption:='KHO TONG VU A (CCDC)';
  end else
  begin
    GSBH_QRLabel.Caption:=main.Edit2.Text;
  end;
  if ((AnyStock.KCBHEdit.Text<>'') and (AnyStock.KCBHEdit1.Text='')) then
    KCHBQRLabel.Caption:=AnyStock.KCBHEdit.Text
  else if ((AnyStock.KCBHEdit.Text='') and (AnyStock.KCBHEdit1.Text<>'')) then
    KCHBQRLabel.Caption:=AnyStock.KCBHEdit1.Text
  else if ((AnyStock.KCBHEdit.Text<>'') and (AnyStock.KCBHEdit1.Text<>'')) then
    KCHBQRLabel.Caption:=AnyStock.KCBHEdit.Text  + ' ~ ' + AnyStock.KCBHEdit1.Text;
  if AnyStock.NgayKK='Y' then
  begin
    NgayLabel.Caption:='Ngay 日 '+sDay+' thang 月 '+sMonth+ ' nam 年 '+sYear;
  end else
  begin
    NgayLabel.Caption:='Ngay 日 '+sDay1+' thang 月 '+sMonth1+ ' nam 年 '+sYear1;
  end;
  if (main.Edit2.Text='CDC')  and  (AnyStock.CBX1.Text ='ALL') then
  begin
    BPLabel.caption:='KHO VAT TU KHAI THAC';
  end else
  begin
    with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select top 1 Memo From KCZL Where  CKBH= '''+AnyStock.CBX1.Text+''' ') ;
      if ((AnyStock.KCBHEdit.Text<>'') and (AnyStock.KCBHEdit1.Text='')) then
        sql.Add(' and KCZL.KCBH = '''+AnyStock.KCBHEdit.Text+'''  ')
      else if ((AnyStock.KCBHEdit.Text='') and (AnyStock.KCBHEdit1.Text<>'')) then
        sql.Add(' and KCZL.KCBH = '''+AnyStock.KCBHEdit1.Text+'''  ')
      else if ((AnyStock.KCBHEdit.Text<>'') and (AnyStock.KCBHEdit1.Text<>'')) then
        sql.Add('   and (KCZL.KCBH>= '''+AnyStock.KCBHEdit.Text+''' and KCZL.KCBH<= '''+AnyStock.KCBHEdit1.Text+''')   ');
      active:=true;
    end;
    if Query1.RecordCount>0 then
    begin
      BPLabel.caption:=Query1.fieldbyname('Memo').AsString;
    end;
  end;
  if ((main.Edit2.Text='CDC') or (main.Edit2.Text='VC1') or (AnyStock.CBX1.Text='VTXX') or (AnyStock.CBX1.Text='VTXY') or (AnyStock.CBX1.Text='VTXZ') or (AnyStock.CBX1.Text='VLXX') or (AnyStock.CBX1.Text='VLXY') or (AnyStock.CBX1.Text='VLXZ'))  then
  begin
     QRSysData2.Enabled:=true;
     QRDBText4.Enabled:=false;
  end else
  begin
     QRSysData2.Enabled:=false;
     QRDBText4.Enabled:=true;
  end;
end;

end.
