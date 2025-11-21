unit AnyStock_PrintCard1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, jpeg, QRXMLSFilt,
  QRExport, QRPDFFilt, StdCtrls, IniFiles,fununit;


type
  TAnyStock_PrintCard = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel60: TQRLabel;
    QRLabel46: TQRLabel;
    QRBand2: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRCompositeReport1: TQRCompositeReport;
    QRExcelFilter1: TQRExcelFilter;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;                   
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    USname: TQuery;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    USnameuserid: TStringField;
    USnameusername: TStringField;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    Query1: TQuery;
    QRLabel_ViTri: TQRLabel;
    USnameNgay: TDateTimeField;
    Query2: TQuery;
    Query2CGBH: TStringField;
    Query2Article: TStringField;
    QRAritcle: TQRDBText;
    QRCGBH: TQRDBText;
    QRLabel_CGBH: TQRLabel;
    QRLabel_NgayKK: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    ComNameCH:String;
    WarehouseN37_Card_ISO:string;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnyStock_PrintCard: TAnyStock_PrintCard;

implementation

uses main1, AnyStock1;

{$R *.dfm}

procedure TAnyStock_PrintCard.ReadIni();
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

procedure TAnyStock_PrintCard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAnyStock_PrintCard.FormDestroy(Sender: TObject);
begin
  AnyStock_PrintCard:=nil;
end;

procedure TAnyStock_PrintCard.QRCompositeReport1AddReports(Sender: TObject);
begin
   AnyStock_PrintCard.QRLabel60.Caption:=ComNameCH;
   AnyStock_PrintCard.QRLabel46.Caption:=ComName;
end;

procedure TAnyStock_PrintCard.FormCreate(Sender: TObject);
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
  QRLabel22.Caption:=' '+sMonth+' Nam '+ sYear+' The kiem ke hang ton thang ';
  if ((AnyStock.CBX1.Text='VTXX') or (AnyStock.CBX1.Text='VTXY') or (AnyStock.CBX1.Text='VTXZ') or (AnyStock.CBX1.Text='VLXX') or (AnyStock.CBX1.Text='VLXY') or (AnyStock.CBX1.Text='VLXZ'))then
  begin
    QRDBText1.Enabled:=false;
    QRLabel13.Enabled:=false;
    QRDBText8.Enabled:=false;
  end;
  with USname do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select userid_kk as userid,username_kk as username,getdate() as Ngay from KCZL where KCBH='''+AnyStock.KCBHEdit.Text+''' and CKBH= '''+AnyStock.CBX1.Text+''' ' );
    active:=true;
  end;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select Memo From KCZL Where KCBH='''+AnyStock.KCBHEdit.Text+''' and CKBH= '''+AnyStock.CBX1.Text+''' ') ;
    active:=true;
  end;
  if Query1.RecordCount>0 then
  begin
    QRLabel_Vitri.caption:=Query1.fieldbyname('Memo').AsString;
  end;
  if AnyStock.NgayKK='Y' then
  begin
    //QRDBText9.Caption:=USname.fieldbyname('Ngay').Value;
    //QRLabel_NgayKK.Enabled:=false;
    //======25.06.2025
    QRLabel_NgayKK.Caption := DateToStr(Date);
    QRDBText9.Enabled:=false;
    //=======
  end else
  begin
    QRLabel_NgayKK.Caption:=DateToStr(AnyStock.DTP1.Date);
    QRDBText9.Enabled:=false;
  end;
  if AnyStock.VTGC='N' then
  begin
    with Query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select top 1 zlzls2.ZLBH cgbh,ddzl.ARTICLE ');
      sql.Add('from zlzls2 ');
      sql.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH ');    
      sql.Add('left join ( select kcrks.CLBH, KCRKS.CGBH as ZLBH ');
      sql.Add('from kcrks left join kcrk ');
      sql.Add('on kcrks.RKNO=kcrk.RKNO ');
      sql.Add('left join ddzl on ddzl.DDBH=kcrks.CGBH ');
      sql.Add('where clbh=:CLDH  and CKBH=:CKBH ');
      sql.Add('and ARTICLE is not null and SFL<>''THU HOI'' ');
      sql.Add(') AS RKZL on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
      sql.Add('where zlzls2.clbh=:CLDH ');
      sql.Add('order by zlzls2.USERDATE desc  ');
      active:=true;
    end;
  end else
  begin
    with Query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select  top 1 DDZL.DDBH as CGBH,ddzl.ARTICLE ');
      sql.Add('from jgzlss left join jgzl ');
      sql.Add('on jgzlss.JGNO=jgzl.JGNO ');
      sql.Add('left join ddzl on ddzl.DDBH=jgzlss.ZLBH ');
      sql.Add('where clbh=:CLDH  and CKBH=:CKBH ');
      sql.Add('and CFMID1<>''NO'' ');
      sql.Add('order by jgzl.CFMDate1 desc ');
      active:=true;
    end;
  end;


end;


end.
