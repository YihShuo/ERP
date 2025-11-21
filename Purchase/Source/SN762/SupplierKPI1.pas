unit SupplierKPI1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls, Buttons,
  Menus,ShellAPI,DBGridEhImpExp, ComCtrls,dateutils, Mask, DBCtrls ,comobj, inifiles;

type
  TSupplierKPI = class(TForm)
    pnl1: TPanel;
    lbl3: TLabel;
    btn3: TButton;
    Qry_ETA_Delay: TQuery;
    DS_ETA_Delay: TDataSource;
    DS_ETA_Supplier: TDataSource;
    Qry_ETA_DelayZSBH: TStringField;
    Qry_ETA_DelayCGNO: TStringField;
    Qry_ETA_DelayYWPM: TStringField;
    Qry_ETA_DelayDWBH: TStringField;
    Qry_ETA_DelayQty: TCurrencyField;
    Qry_ETA_DelayCGdate: TDateTimeField;
    Qry_ETA_DelayETA: TDateTimeField;
    Qry_ETA_DelaySampleMatLeadTime: TIntegerField;
    Qry_ETA_DelayTransport: TStringField;
    Qry_ETA_DelayTransportLeadtime: TIntegerField;
    Qry_ETA_DelayRealLeadtime: TIntegerField;
    Qry_ETA_DelayStandandLeadtime: TIntegerField;
    BBTT1: TBitBtn;
    Qry_ETA_DelayCLBH: TStringField;
    Pop_ETA_Supplier: TPopupMenu;
    Menu_ETA_Supplier: TMenuItem;
    Pop_ETA_Delay: TPopupMenu;
    Menu_ETA_Delay: TMenuItem;
    SaveDialog1: TSaveDialog;
    ckbsel: TCheckBox;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    Qry_ETA_DelaySeason: TStringField;
    Qry_ETA_Delaypurpose: TStringField;
    PageControl1: TPageControl;
    Tab_ETDDelay: TTabSheet;
    Tab_ETA: TTabSheet;
    pnl2: TPanel;
    pnl3: TPanel;
    dbgrdh2: TDBGridEh;
    Edit1: TEdit;
    Edit3: TEdit;
    Tab_NGRank: TTabSheet;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Qry_ETD_Supplier: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    CurrencyField1: TCurrencyField;
    IntegerField2: TIntegerField;
    DS_ETD_Supplier: TDataSource;
    Pop_ETD_Supplier: TPopupMenu;
    Menu_ETD_Supplier: TMenuItem;
    Qry_ETD_Delay: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    CurrencyField2: TCurrencyField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField5: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DS_ETD_Delay: TDataSource;
    Pop_ETD_Delay: TPopupMenu;
    Menu_ETD_Delay: TMenuItem;
    Qry_ETD_SupplierPurCount: TIntegerField;
    Qry_ETD_SupplierAvgStandardDays: TIntegerField;
    Qry_ETD_SupplierDelayPercent_: TIntegerField;
    Panel4: TPanel;
    DBGridEh3: TDBGridEh;
    Splitter1: TSplitter;
    Panel14: TPanel;
    DBGridEh4: TDBGridEh;
    Qry_SupplierNG: TQuery;
    StringField7: TStringField;
    StringField11: TStringField;
    Qry_SupplierNGNG_Time: TIntegerField;
    Qry_SupplierNGORDERBY: TIntegerField;
    Qry_SupplierNGMat: TQuery;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    Qry_SupplierNGMatNG_Date: TDateTimeField;
    Qry_SupplierNGMatNG_Reason: TStringField;
    Qry_SupplierNGMatResult: TStringField;
    Qry_SupplierNGMatREMARK: TStringField;
    Qry_SupplierNGMatzsjc: TStringField;
    DS_SupplierNG: TDataSource;
    DS_SupplierNGMat: TDataSource;
    Pop_SupplierNG: TPopupMenu;
    MenuPop_SupplierNG: TMenuItem;
    Pop_SupplierNGMat: TPopupMenu;
    MenuPop_SupplierNGMat: TMenuItem;
    Qry_SupplierNGETACount: TIntegerField;
    Qry_SupplierNGNGPercent_: TIntegerField;
    Qry_SupplierNGUSAmount: TCurrencyField;
    Qry_SupplierNGVNAmount: TCurrencyField;
    Qry_SupplierNGMatCGNO: TStringField;
    Qry_SupplierNGMatUSPrice: TCurrencyField;
    Qry_SupplierNGMatVNPrice: TCurrencyField;
    Qry_SupplierNGMatQty: TCurrencyField;
    Qry_SupplierNGUSAmountAll: TCurrencyField;
    Qry_ETD_SupplierDelayPercent: TIntegerField;
    Qry_ETD_SupplierDelayPeriod: TStringField;
    Qry_ETD_SupplierStandardPeriod: TStringField;
    Qry_SupplierNGNGPercent: TIntegerField;
    Qry_SupplierNGDiffMonthETACount: TIntegerField;
    Tab_SupplierStyle: TTabSheet;
    Panel5: TPanel;
    Splitter2: TSplitter;
    Panel6: TPanel;
    DBGrid2: TDBGridEh;
    Panel7: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    pnl6: TPanel;
    Panel16: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBGridEh5: TDBGridEh;
    Panel9: TPanel;
    DBGridEh6: TDBGridEh;
    Panel10: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Qry_SupplierTotal: TQuery;
    Qry_SupplierTotalCnt: TIntegerField;
    Qry_SupplierStyle: TQuery;
    Qry_SupplierStyleStyle: TStringField;
    Qry_SupplierStyleCnt: TIntegerField;
    Qry_SupplierStyleMat_Cnt: TIntegerField;
    Qry_SupplierStyleMat_Qty: TCurrencyField;
    Qry_SupplierCountry: TQuery;
    Qry_SupplierCountryCountry: TStringField;
    CurrencyField3: TCurrencyField;
    Qry_SupplierCountrySupplierCnt: TIntegerField;
    Qry_Supplier: TQuery;
    Qry_SupplierZSDH: TStringField;
    Qry_Supplierzsjc: TStringField;
    Qry_SupplierCnt: TIntegerField;
    Qry_SupplierPurQty: TCurrencyField;
    Qry_SupplierCountry2: TStringField;
    Qry_SupplierMat: TQuery;
    Qry_SupplierMatZSDH: TStringField;
    Qry_SupplierMatzsjc: TStringField;
    Qry_SupplierMatCLBH: TStringField;
    Qry_SupplierMatYWPM: TStringField;
    Qry_SupplierMatDWBH: TStringField;
    Qry_SupplierMatPurqty: TCurrencyField;
    DS_SupplierMat: TDataSource;
    DS_Supplier: TDataSource;
    DS_SupplierCountry: TDataSource;
    DS_SupplierStyle: TDataSource;
    DS_SupplierTotal: TDataSource;
    Pop_SupplierStyle: TPopupMenu;
    MenuPop_SupplierStyle: TMenuItem;
    Pop_SupplierCountry: TPopupMenu;
    MenuPop_SupplierCountry: TMenuItem;
    Pop_Supplier: TPopupMenu;
    MenuPop_Supplier: TMenuItem;
    Pop_SupplierMat: TPopupMenu;
    MenuPop_SupplierMat: TMenuItem;
    DBGridEh7: TDBGridEh;
    Panel8: TPanel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBGridEh8: TDBGridEh;
    Qry_ETA_Supplier: TQuery;
    StringField15: TStringField;
    StringField16: TStringField;
    IntegerField4: TIntegerField;
    CurrencyField4: TCurrencyField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField17: TStringField;
    StringField18: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Shape1: TShape;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    CheckBox2: TCheckBox;
    Label8: TLabel;
    DTP1: TDateTimePicker;
    Label9: TLabel;
    DTP2: TDateTimePicker;
    q_excelKPI: TQuery;
    Qry_ETD_DelayINV_ETA: TDateTimeField;
    Qry_ETA_DelayINV_ETA: TDateTimeField;
    TabSheet2: TTabSheet;
    Qry_MatRecieve: TQuery;
    DS_MatRecieve: TDataSource;
    Qry_MatRecieveSeason: TStringField;
    Qry_MatRecieveStage: TStringField;
    Qry_MatRecieveArticle: TStringField;
    Qry_MatRecieveSampleNO: TStringField;
    Qry_MatRecievePurchaseNO: TStringField;
    Qry_MatRecieveMaterialNO: TStringField;
    Qry_MatRecieveMaterialDescription: TStringField;
    Qry_MatRecieveSupplierNO: TStringField;
    Qry_MatRecieveSupplierDescription: TStringField;
    Qry_MatRecieveSupplierName: TStringField;
    Qry_MatRecieveReceiveDate: TDateTimeField;
    Qry_MatRecieveShipdate: TDateTimeField;
    Qry_MatRecieveKPIDate: TIntegerField;
    Qry_MatRecieveSamplePurchaser: TStringField;
    DBGridEh9: TDBGridEh;
    Button2: TButton;
    Qry_ETA_DelayRealETA: TDateTimeField;
    TabSheet3: TTabSheet;
    DBGridEh10: TDBGridEh;
    DS_Ship_Supplier: TDataSource;
    Qry_Ship_Supplier: TQuery;
    DS_Ship_Delay: TDataSource;
    Qry_Ship_Delay: TQuery;
    Qry_ETD_DelayStatus: TStringField;
    Qry_ETA_DelayStatus: TStringField;
    Qry_Ship_SupplierZSBH: TStringField;
    Qry_Ship_SupplierZSYWJC: TStringField;
    Qry_Ship_SupplierTimes: TIntegerField;
    Qry_Ship_SupplierPurCount: TIntegerField;
    Qry_Ship_SupplierDelayPercent: TIntegerField;
    DBGridEh11: TDBGridEh;
    Qry_Ship_DelaySeason: TStringField;
    Qry_Ship_DelayPurpose: TStringField;
    Qry_Ship_DelayCGNO: TStringField;
    Qry_Ship_DelayYPDH: TStringField;
    Qry_Ship_DelayCLBH: TStringField;
    Qry_Ship_DelayYWPM: TStringField;
    Qry_Ship_DelayQty: TFloatField;
    Qry_Ship_DelayDWBH: TStringField;
    Qry_Ship_DelayInvoice: TStringField;
    Qry_Ship_DelayETA: TDateTimeField;
    Qry_Ship_DelayShippingDate: TDateTimeField;
    Qry_Ship_DelaySDays: TIntegerField;
    Pop_Ship_Supplier: TPopupMenu;
    MenuItem1: TMenuItem;
    Pop_Ship_Delay: TPopupMenu;
    MenuItem2: TMenuItem;
    Panel11: TPanel;
    Qry_ETA_DelayETD: TDateTimeField;
    Qry_ETA_SupplierETDType_Delaytimes: TIntegerField;
    Qry_ETA_SupplierETDType_Delay: TIntegerField;
    Edit4: TEdit;
    Label10: TLabel;
    Button3: TButton;
    Query1: TQuery;
    q_excelKPI_2: TQuery;
    q_excelKPI_3: TQuery;
    q_excelKPI_CGDet: TQuery;
    q_excelKPI_CGDetSEASON: TStringField;
    q_excelKPI_CGDetPURPOSE: TStringField;
    q_excelKPI_CGDetCGNO: TStringField;
    q_excelKPI_CGDetCGDate: TDateTimeField;
    q_excelKPI_CGDetCLBH: TStringField;
    q_excelKPI_CGDetYWPM: TStringField;
    q_excelKPI_CGDetMatRemark: TStringField;
    q_excelKPI_CGDetQty: TCurrencyField;
    q_excelKPI_CGDetDWBH: TStringField;
    q_excelKPI_CGDetYQDate: TDateTimeField;
    q_excelKPI_CGDetMemo: TStringField;
    q_excelKPI_CGDetCFMDate: TDateTimeField;
    q_excelKPI_CGDetArticle_All: TStringField;
    q_excelKPI_CGDetUSERDate: TDateTimeField;
    q_excelKPI_CGDetUSERID: TStringField;
    q_excelKPI_CGDetInvoice: TStringField;
    q_excelKPI_CGDetACCUS: TCurrencyField;
    q_excelKPI_CGDetACCVN: TCurrencyField;
    q_excelKPI_CGDetUSPrice: TCurrencyField;
    q_excelKPI_CGDetVNPrice: TCurrencyField;
    q_excelKPI_CGDetUSPrice_: TCurrencyField;
    q_excelKPI_CGDetVNPrice_: TCurrencyField;
    q_excelKPI_CGDetQ_USPrice_: TCurrencyField;
    q_excelKPI_CGDetQ_VNPrice_: TCurrencyField;
    q_excelKPI_CGDetFreeQty_: TCurrencyField;
    q_excelKPI_CGDetCharge_: TCurrencyField;
    q_excelKPI_CGDetZSYWJC: TStringField;
    q_excelKPI_CGDetZSBH: TStringField;
    q_excelKPI_CGDetNG_Reason: TStringField;
    q_excelKPI_CGDetNG_ETD: TDateTimeField;
    q_excelKPI_CGDetNG_ETA: TDateTimeField;
    q_excelKPI_CGDetResult: TStringField;
    q_excelKPI_CGDetFile_Name: TStringField;
    q_excelKPI_CGDetFile_Size: TFloatField;
    q_excelKPI_CGDetINV_ETA: TDateTimeField;
    q_excelKPI_CGDetNG_Remark: TStringField;
    q_excelKPI_CGDetNG_Date: TDateTimeField;
    q_excelKPI_CGDetRKUSPrice: TCurrencyField;
    q_excelKPI_CGDetRKVNPrice: TCurrencyField;
    q_excelKPI_CGDetold_NG_Date: TDateTimeField;
    q_excelKPI_CGDetold_NG_Reason: TStringField;
    q_excelKPI_CGDetold_CFMDate: TDateTimeField;
    q_excelKPI_CGDetQC_skin: TCurrencyField;
    q_excelKPI_CGDetSkin_Size: TCurrencyField;
    q_excelKPI_CGDetSkin_Quality: TCurrencyField;
    q_excelKPI_CGDetQC_File_Name: TStringField;
    q_excelKPI_CGDetQC_File_Size: TFloatField;
    q_excelKPI_CGDetC_window: TStringField;
    q_excelKPI_CGDetLab: TStringField;
    q_excelKPI_CGDetLab_reason: TStringField;
    q_excelKPI_CGDetInvoice_Customs: TStringField;
    q_excelKPI_CGDetSoftness: TStringField;
    q_excelKPI_CGDetvisually: TStringField;
    q_excelKPI_CGDetspectro: TStringField;
    q_excelKPI_CGDetspectro_file: TStringField;
    q_excelKPI_CGDetresult_1: TStringField;
    q_excelKPI_CGDetSamplePurchaser_Name: TStringField;
    q_excelKPI_CGDetUSERDate_1: TDateTimeField;
    q_excelKPI_CGDetremark: TStringField;
    q_excelKPI_CGDetA4Comfirm: TStringField;
    q_excelKPI_CGDettrackingA4Comfirm: TStringField;
    q_excelKPI_CGDetDateA4Comfirm: TDateTimeField;
    q_excelKPI_CGDetColorWindow: TStringField;
    q_excelKPI_CGDetDateColorWindow: TDateTimeField;
    q_excelKPI_CGDetPC_Confirm: TStringField;
    q_excelKPI_CGDetshippedDate: TDateTimeField;
    q_excelKPI_CGDetsignedDate: TDateTimeField;
    q_excelKPI_CGDetSigner: TStringField;
    q_excelKPI_CGDetDCName: TStringField;
    q_excelKPI_CGDetPRO: TStringField;
    q_excelKPI_CGDetSenter: TStringField;
    q_excelKPI_CGDetExpireDate: TDateTimeField;
    q_excelKPI_CGDetSharedDC: TStringField;
    q_excelKPI_CGDetUpdater: TStringField;
    q_excelKPI_CGDetcolor2remark: TStringField;
    q_excelKPI_CGDetAWB: TStringField;
    q_excelKPI_CGDetETA: TDateTimeField;
    q_excelKPI_CGDetReturnDate: TDateTimeField;
    q_excelKPI_CGDetReturnQuantity: TCurrencyField;
    q_excelKPI_CGDetSerialNumber: TStringField;
    q_excelKPI_CGDetQty_not: TFloatField;
    q_excelKPI_CGDetCommitedETD: TDateTimeField;
    q_excelKPI_CGDetMaterial_ETA: TDateTimeField;
    q_excelKPI_CGDetLateETA: TStringField;
    q_excelKPI_CGDetProductionLocation: TStringField;
    q_excelKPI_CGDetsampleorder: TStringField;
    q_excelKPI_CGDetFlexCode: TStringField;
    q_excelKPI_CGDetPurReceiveDate: TDateTimeField;
    q_excelKPI_CGDetRFCDeadlineDate: TDateTimeField;
    q_excelKPI_CGDetCheckResult: TStringField;
    q_excelKPI_CGDetDelayReason: TStringField;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure btn3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBTT1Click(Sender: TObject);
    procedure Menu_ETA_SupplierClick(Sender: TObject);
    procedure Menu_ETA_DelayClick(Sender: TObject);
    procedure Qry_ETD_SupplierCalcFields(DataSet: TDataSet);
    procedure Menu_ETD_SupplierClick(Sender: TObject);
    procedure Menu_ETD_DelayClick(Sender: TObject);
    procedure Qry_SupplierNGAfterScroll(DataSet: TDataSet);
    procedure MenuPop_SupplierNGClick(Sender: TObject);
    procedure MenuPop_SupplierNGMatClick(Sender: TObject);
    procedure Qry_SupplierNGCalcFields(DataSet: TDataSet);
    procedure MenuPop_SupplierMatClick(Sender: TObject);
    procedure MenuPop_SupplierClick(Sender: TObject);
    procedure MenuPop_SupplierCountryClick(Sender: TObject);
    procedure MenuPop_SupplierStyleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    AppDir:string;
    procedure readini();
  public
    { Public declarations }

  end;

var
  SupplierKPI: TSupplierKPI;
  sdate,edate,ndate:TDate;

implementation

uses main1,SupplierKPI_Purchaser1,FunUnit;

{$R *.dfm}
procedure TSupplierKPI.readini();
var MyIni :Tinifile;
    AppDir:string;
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');

    finally
      MyIni.Free;
    end;
  end;
end;


procedure TSupplierKPI.btn3Click(Sender: TObject);
begin
 if ((Edit1.Text = '') or (Edit3.Text = '')) and not checkbox2.checked then
 begin
   showmessage(' Please keyin Season and Stage or Date') ;
   exit;
 end;

 with Qry_MatRecieve do
  begin
    active:=false;
    sql.clear;
    sql.add('select cgzl.Season,ypzl.kfjd as Stage,shoetest.Article,ypzl.ypdh as SampleNO,cgzlss.cgno as PurchaseNO,');
    sql.add('cgzlss.clbh as MaterialNO,clzl.ywpm as MaterialDescription,');
    sql.add('cgzl.ZSBH as SupplierNO,zszl.zsywjc as SupplierDescription,zszl.zsjc as SupplierName,kcrks.userdate as ReceiveDate,shoetest.Shipdate,DATEDIFF(day ,kcrks.userdate,shoetest.shipdate) as KPIDate,zszl_dev.SamplePurchaser');
    sql.add('from shoetest');
    sql.add('left join ypzl on ypzl.ypdh=shoetest.ypdh');
    sql.add('left join cgzlss on cgzlss.zlbh=shoetest.ypdh');
    sql.add('left join kcrks on kcrks.DOCNO=cgzlss.cgno and kcrks.clbh=cgzlss.clbh');
    sql.add('left join cgzl on cgzlss.cgno=cgzl.cgno');
    sql.add('left join zszl on zszl.zsdh=cgzl.ZSBH');
    sql.add('left join clzl on clzl.cldh=cgzlss.clbh');
    sql.add('left join (select * from zszl_dev where gsbh=''CDC'')zszl_dev on zszl_dev.zsdh=cgzl.ZSBH');
    sql.add('where (left(ypzl.ypdh,4)=''LAIV'' or left(ypzl.ypdh,4)=''BYIV'')');
    if Edit1.Text<>'' then
      sql.add('   and shoetest.season='''+Edit1.Text+'''');
    if Edit2.Text<>'' then
      sql.add('   and zszl_dev.SamplePurchaser='''+Edit2.Text+'''');
    if Edit3.Text<>'' then
      sql.add('   and ypzl.kfjd='''+Edit3.Text+'''');
    if Edit4.Text<>'' then //filter Vendor name
      sql.add('   and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    //memo2.Lines:=sql;
    active:=true;
  end;

  //第一頁 ETD Delay
  with Qry_ETD_Supplier do
  begin
    active:=false;
    sql.clear;
    sql.add('select CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty,delayTime.DelayPeriod,delayTime.StandardPeriod,delayTime.AvgDays,delayTime.AvgStandardDays,count(cgzls.CLBH) AS PurCount ');
    sql.add('       ,(delayTime.delayTime*100/count(CGZLS.CLBH)) AS DelayPercent');
    sql.add('from CGZL ');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    /////sql.add('left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH  ');
    sql.add('left join (    ');
    sql.add('           select CGZL.ZSBH,count(*) as delayTime ,sum(CGZLS.Qty) as DelayQty ');
    sql.add('                 ,AVG(cast(CGZLS.CFMDate As Int) -cast(CGzl.CGdate As Int)) as AvgDays');
    sql.add('                 ,AVG(isnull(MaterialMOQ.SampleLeadtime,0)) as AvgStandardDays');
    sql.add('                 ,LTRIM(STR(MIN(cast(CGZLS.CFMDate As Int) -cast(CGzl.CGdate As Int))))+''-''+LTRIM(STR(MAX(cast(CGZLS.CFMDate As Int) -cast(CGzl.CGdate As Int)))) as DelayPeriod ');
    sql.add('                 ,LTRIM(STR(MIN(MaterialMOQ.SampleLeadtime)))+''-''+LTRIM(STR(MAX(MaterialMOQ.SampleLeadtime))) as StandardPeriod ');
    sql.add('           from CGzl ');
    sql.add('           left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('           left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    sql.add('           LEFT JOIN MaterialMOQ   on MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.season=CGZL.Season ');
    sql.add('           where CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZLS.CFMDate is not null and cast(CGZLS.CFMDate As Int) -cast(CGzl.CGdate As Int)>isnull(MaterialMOQ.SampleLeadtime,0) ');
    //////sql.add('           and MaterialMOQ.SampleLeadtime IS NOT NULL');
    if Edit1.Text<>'' then //Season
      sql.add('              and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then //Stage
      sql.add('              and CGZL.purpose='''+Edit3.Text+'''');
    if Edit4.Text<>'' then //Vendor name
     sql.add('   and  zszl.zsywjc like '''+'%'+Edit4.Text+'%'+'''');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('                 group by CGZL.ZSBH ');
    sql.add('          ) delayTime on delayTime.ZSBH=CGZL.ZSBH ');


    ////sql.add('where CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' and delayTime.delayTime is not null  ');
    sql.add('where CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    //
    if Edit1.Text<>'' then  //Season
       sql.add('   and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then   //Stage
       sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
    if Edit4.Text<>'' then //Vendor name
     sql.add('   and  zszl.zsywjc like '''+'%'+Edit4.Text+'%'+'''');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Edit2.Text<>'' then
       sql.add('   and ZSZL_DEV.SamplePurchaser='+''''+Edit2.Text+'''');
    sql.add('group by CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty,delayTime.DelayPeriod,delayTime.StandardPeriod,delayTime.AvgDays,delayTime.AvgStandardDays');
  // showmessage(sql.text);
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with Qry_ETD_Delay do
  begin
    active:=false;
    sql.clear;
    sql.add('select CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate as ETA,isnull(MaterialMOQ.SampleLeadtime,0) as SampleMatLeadTime ');
    sql.add('       ,cast(CGZLS.CFMDate As Int)-cast(CGzl.CGdate As Int) as  RealLeadtime,CGZLInvoice.ETA AS INV_ETA, CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END AS Status,CGZLInvoiceS.cino,CGZLInvoiceS.Qty');
    sql.add('from CGzl ');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    sql.add('left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH ');
    sql.add('left join CGZLInvoice  on CGZLInvoice.CINO=CGZLInvoiceS.CINO');

    sql.add('left join CLZl ON CGZLS.CLBH=CLZL.CLDH ');
    sql.add('LEFT JOIN MaterialMOQ ON MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.season=CGZL.Season');
    sql.add('LEFT JOIN (');
    sql.add('  SELECT ETDTemp.* FROM ETDTemp');
    sql.add('  LEFT JOIN (');
    sql.add('    SELECT CGNO, CLBH, MIN(UserDate) AS UserDate FROM ETDTemp');
    sql.add('    GROUP BY CGNO, CLBH');
    sql.add('  ) AS ETDTemp2 ON ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLBH = ETDTemp.CLBH AND  ETDTemp2.UserDate = ETDTemp.UserDate');
    sql.add('  WHERE ETDTemp2.CGNO IS NOT NULL');
    sql.add(') AS ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLBH = CGZLS.CLBH');
    sql.add('where CGZLs.clbh is not null and CGZL.GSBH='''+main.Edit2.Text+''' ');
    // CGZLS.CFMDate is not null and cast(CGZLS.CFMDate As Int) -cast(CGzl.CGdate As Int)>isnull(MaterialMOQ.SampleLeadtime,0) and');

    sql.add('  and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    //
    if Edit1.Text<>'' then  //Season
      sql.add('   and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then   //Stage
      sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('      and ZSZL.ZSDH=:ZSBH ');
    sql.add('            group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate ,isnull(MaterialMOQ.SampleLeadtime,0) ');
    sql.add('            ,cast(CGZLS.CFMDate As Int)-cast(CGzl.CGdate As Int) ,CGZLInvoice.ETA, CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END,CGZLInvoiceS.cino,CGZLInvoiceS.Qty');
   //  showmessage(sql.text);
   //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  
//第二頁 ETA Delay   左
 with Qry_ETA_Supplier do
  begin
    active:=false;
    sql.clear;
    sql.add('select CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty,delayTime.DelayPeriod,delayTime.StandardPeriod,delayTime.AvgDays,delayTime.AvgStandardDays,count(cgzls.CLBH) AS PurCount ');
    sql.add('       ,(delayTime.delayTime*100/count(CGZLS.CLBH)) AS DelayPercent ,isnull(ETDnotOK.ETDnook,0) ETDType_Delaytimes,  isnull(ETDnotOK.ETDnook,0)*100/count(CGZLS.CLBH) as ETDType_Delay');
    sql.add('from CGZL ');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    sql.add('left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH  ');
    sql.add('left join (    ');
    sql.add('           select CGZL.ZSBH,count(*) as delayTime ,sum(CGZLS.Qty) as DelayQty ');
    sql.add('                 ,AVG(cast(CGZLInvoice.ETA As Int) -cast(CGzl.CGdate As Int)) as AvgDays');
    sql.add('                 ,AVG(isnull(MaterialMOQ.SampleLeadtime,0)) as AvgStandardDays');
    sql.add('                 ,LTRIM(STR(MIN(cast(CGZLInvoice.ETA As Int) -cast(CGzl.CGdate As Int))))+''-''+LTRIM(STR(MAX(cast(CGZLInvoice.ETA As Int) -cast(CGzl.CGdate As Int)))) as DelayPeriod ');
    sql.add('                 ,LTRIM(STR(MIN(MaterialMOQ.SampleLeadtime)))+''-''+LTRIM(STR(MAX(MaterialMOQ.SampleLeadtime))) as StandardPeriod ');
    sql.add('           from CGzl ');
    sql.add('           left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('           left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    sql.add('           left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH ');
    sql.add('           left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoice.CINO ');
    sql.add('           LEFT JOIN MaterialMOQ   on MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.season=CGZL.Season ');
    sql.add('           where CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZLInvoice.ETA is not null and cast(CGZLInvoice.ETA As Int) -cast(CGzl.CGdate As Int)>isnull(MaterialMOQ.SampleLeadtime,0) ');
    sql.add('           and MaterialMOQ.SampleLeadtime IS NOT NULL');
    //
    if Edit1.Text<>'' then //Season
      sql.add('              and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then //Stage
      sql.add('              and CGZL.purpose='''+Edit3.Text+'''');
   if Edit4.Text<>'' then //Vendor name
     sql.add('   and zszl.zsywjc like '''+'%'+Edit4.Text+'%'+'''');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    //
    sql.add('                 group by CGZL.ZSBH ');
    sql.add('          ) delayTime on delayTime.ZSBH=CGZL.ZSBH ');

    sql.add('left join (');
    sql.add('         select ZSBH,isnull(count(*),0)ETDnook from (');
    sql.add('              select CGZL.ZSBH,CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END AS Status  from CGzl');
    sql.add('              left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('              left join CGZLS on CGZLS.CGNO=CGzl.CGNO');
    sql.add('              left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH');
    sql.add('              LEFT JOIN (');
    sql.add('                   SELECT ETDTemp.* FROM ETDTemp');
    sql.add('                   LEFT JOIN (');
    sql.add('                        SELECT CGNO, CLBH, MIN(UserDate) AS UserDate FROM ETDTemp');
    sql.add('                        GROUP BY CGNO, CLBH');
    sql.add('                        ) AS ETDTemp2 ON ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLBH = ETDTemp.CLBH AND ETDTemp2.UserDate = ETDTemp.UserDate');
    sql.add('                         WHERE ETDTemp2.CGNO IS NOT NULL  ');
    sql.add('          ) AS ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLBH = CGZLS.CLBH');
    sql.add('         where DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) > 3');
    if Edit1.Text<>'' then  //Season
    sql.add('         and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then   //Stage
    sql.add('         and CGZL.purpose='''+Edit3.Text+'''');
    if Edit4.Text<>'' then //Vendor name
    sql.add('   and  zszl.zsywjc like '''+'%'+Edit4.Text+'%'+'''');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('         group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,cgzls.CLBH ');
    sql.add('         ,CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END)ETDnook');
    sql.add('         group by ZSBH)   ETDnotOK on ETDnotOK.ZSBH=CGZL.ZSBH ');


    sql.add('where CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' and delayTime.delayTime is not null  ');
    if Edit1.Text<>'' then  //Season
      sql.add('   and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then   //Stage
      sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
    if Edit4.Text<>'' then //Vendor name
    sql.add('   and  zszl.zsywjc like '''+'%'+Edit4.Text+'%'+'''');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    //
    if Edit2.Text<>'' then
       sql.add('   and ZSZL_DEV.SamplePurchaser='+''''+Edit2.Text+'''');
    sql.add('group by CGZL.ZSBH,ZSYWJC,delayTime.delayTime,delayTime.DelayQty,delayTime.DelayPeriod,delayTime.StandardPeriod,delayTime.AvgDays,delayTime.AvgStandardDays ,  ETDnotOK.ETDnook');
   // showmessage(sql.text);
    active:=true;
  end;
//第二頁 ETA Delay   右邊
 with Qry_ETA_Delay do
  begin
    active:=false;
    sql.clear;
    sql.add('select CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,cgzls.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLInvoiceS.Qty,CGzl.CGdate,CGZLInvoice.ETA,isnull(MaterialMOQ.SampleLeadtime,0) as SampleMatLeadTime ');
    sql.add('       ,Transportation.Transport,isnull(Transportation.TransportLeadtime,0) as TransportLeadtime ');
    sql.add('       ,cast(CGZLInvoice.ETA As Int)-cast(CGzl.CGdate As Int) as  RealLeadtime ');
    sql.add('       ,isnull(MaterialMOQ.SampleLeadtime,0)+isnull(Transportation.TransportLeadtime,0) as StandandLeadtime ,CGZLInvoice.ETA AS INV_ETA,CGZLS.CFMDate as RealETA,');
    sql.add('       CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END AS Status, min(ETDTemp.ETD) ETD');
    sql.add('from CGzl ');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    sql.add('left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH ');
    sql.add('left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoice.CINO ');
    sql.add('left join CLZl ON cgzls.CLBH=CLZL.CLDH ');
    sql.add('LEFT JOIN MaterialMOQ   on MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.season=CGZL.Season ');
    sql.add('Left Join Transportation on CGZLInvoice.Transport=Transportation.Transport ');
    sql.add('LEFT JOIN (');
    sql.add('  SELECT ETDTemp.* FROM ETDTemp');
    sql.add('  LEFT JOIN (');
    sql.add('    SELECT CGNO, CLBH, MIN(UserDate) AS UserDate FROM ETDTemp');
    sql.add('    GROUP BY CGNO, CLBH');
    sql.add('  ) AS ETDTemp2 ON ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLBH = ETDTemp.CLBH AND  ETDTemp2.UserDate = ETDTemp.UserDate');
    sql.add('  WHERE ETDTemp2.CGNO IS NOT NULL');
    sql.add(') AS ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLBH = CGZLS.CLBH');
    sql.add('where  CGZLs.clbh is not null and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+'''  ');
    if Edit1.Text<>'' then  //Season
      sql.add('   and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then   //Stage
      sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    //
    sql.add('      and ZSZL.ZSDH=:ZSBH ');
    sql.add('     group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,cgzls.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLInvoiceS.Qty,CGzl.CGdate,CGZLInvoice.ETA,isnull(MaterialMOQ.SampleLeadtime,0)');
    sql.add('     ,Transportation.Transport,isnull(Transportation.TransportLeadtime,0)');
    sql.add('     ,cast(CGZLInvoice.ETA As Int)-cast(CGzl.CGdate As Int)');
    sql.add('     ,isnull(MaterialMOQ.SampleLeadtime,0)+isnull(Transportation.TransportLeadtime,0) ,CGZLInvoice.ETA ,CGZLS.CFMDate,');
    sql.add('     CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END');
   // showmessage(sql.text);
    active:=true;
  end;


//第三頁 NG Rank
 with Qry_SupplierNG do
  begin
    active:=false;
    sql.clear;
    sql.add(' select ZSZL.ZSDH,ZSZL.zsjc,count(*) as NG_Time ' );
    //
    sql.add('        ,CGdata.ETACount ' );
    sql.add('        ,(count(*)*100/CGdata.ETACount)  as NGPercent  ' );
    //
    sql.add('        ,ISNULL(CGdataDiffMonth.DiffMonthETACount,0) as  DiffMonthETACount ' );
    sql.add('        ,(sum(isnull(CGZLS.USPrice,0)*CGZLS.Qty)+(sum(isnull(CGZLS.VNPrice,0)*CGZLS.Qty/ISNULL(CWHLS.CWHL,22000)))) as USAmountAll    ' );
    sql.add('        ,sum(isnull(CGZLS.USPrice,0)*CGZLS.Qty) as USAmount    ' );
    sql.add('        ,sum(isnull(CGZLS.VNPrice,0)*CGZLS.Qty) as VNAmount,1 AS ORDERBY    ' );
    sql.add('   FROM MaterialNG      ' );
    sql.add('   LEFT JOIN CGZLS ON CGZLS.CLBH=MaterialNG.CLBH and MaterialNG.cgno=cgzls.cgno  ');
    sql.add('   LEFT JOIN CGZL  ON CGZLS.cgno=cgzl.cgno  ');
    sql.add('   LEFT JOIN ZSZL ON CGZL.ZSBH=ZSZL.ZSDH      ' );
    sql.add('   left join CWHLS on CWHLS.HLYEAR+'+''''+'/'+''''+'+CWHLS.HLMONTH+'+''''+'/'+''''+'+CWHLS.HLDAY=convert(varchar,CGZL.CGDate,111)');
    sql.add('   left join (select CGZL.ZSBH,count(*) as ETACount ');
    sql.add('              from CGzl ');
    sql.add('              left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('              left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    sql.add('              left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH ');
    sql.add('              left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoice.CINO ');
    sql.add('              where CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZLInvoice.ETA is not null  ');
    //
    if Edit1.Text<>'' then //Season
        sql.add('              and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then //Stage
        sql.add('              and CGZL.purpose='''+Edit3.Text+'''');
    if Edit4.Text<>'' then //Vendor name
        sql.add('              and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('              group by CGZL.ZSBH ');
    sql.add('              ) CGdata on CGdata.ZSBH=CGZL.ZSBH ');
    sql.add('left join (select CGZL.ZSBH,count(*) as DiffMonthETACount ');  //如果是抓年月的話,要把上月交貨,本月NG的筆數加進 總交貨數中
    sql.add('              from CGzl ');
    sql.add('              left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('              left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
    sql.add('              Inner Join MaterialNG on CGZLS.CLBH=MaterialNG.CLBH and MaterialNG.cgno=cgzls.cgno  ');
    sql.add('              left join CGZLInvoiceS  on CGZLS.CGNO=CGZLInvoiceS.CGNO AND CGZLS.CLBH=CGZLInvoiceS.CLBH ');
    sql.add('              left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoice.CINO ');
    sql.add('              where CGZLInvoice.ETA is not null   ');
   // sql.add('                    AND cgzl.purpose<>''PDT''');
    sql.add('                    and not convert(smalldatetime,convert(varchar,CGZLInvoice.ETA,111)) between ');
    sql.add('                    '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('                    and convert(smalldatetime,convert(varchar,MaterialNG.NG_Date,111)) between ');
    sql.add('                    '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('              group by CGZL.ZSBH ');
    sql.add('              ) CGdataDiffMonth on CGdataDiffMonth.ZSBH=CGZL.ZSBH ');
    sql.add('   WHERE CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' and MaterialNG.NG_ETD IS NOT NULL ');
    if Edit1.Text<>'' then  //Season
       sql.add('   and CGZL.Season='''+Edit1.Text+'''');
    if Edit3.Text<>'' then   //Stage
       sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
   if Edit4.Text<>'' then //Vendor name
     sql.add('     and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    //
    sql.add('   group by ZSZL.ZSDH,ZSZL.zsjc,CGdata.ETACount,CGdataDiffMonth.DiffMonthETACount ');
    sql.add('order by ORDERBY,NG_Time desc            ');
    Active := True;
   //memo2.text:=sql.text;
  end;


//第四頁  Supplier Style
 with Qry_SupplierTotal do  //計算本季使用廠商家數
  begin
    active:=false;
    sql.clear;
    sql.add('      select count(ZSZL_Master.ZSDH) as Cnt ');
    sql.add('      from ZSZL_DEV ZSZL_Master inner join zszl on ZSZL_Master.zsdh= zszl.zsdh ');
    sql.add('      where ZSZL_Master.GSBH='''+main.Edit2.Text+''' and exists (select cgno from CGZL where CGZL.ZSBH = ZSZL_Master.ZSDH ');
    sql.add('                     and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    if Edit1.Text<>'' then
       sql.add('                  and CGZL.SEASON='+''''+ Edit1.Text+''''   );
    if Edit3.Text<>'' then
       sql.add('                  and CGZL.PURPOSE='+''''+ Edit3.Text+''''   );
    if Edit4.Text<>'' then //Vendor name
     sql.add('     and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('              ) ');
    //memo2.Lines:=sql;
    Active := True;
  end;
 with Qry_SupplierStyle do  //依Supplier Style 分類計算家數
  begin
    active:=false;
    sql.clear;
    sql.add('      select ZSZL_Master.Style,count(ZSZL_Master.ZSDH) as Cnt ');
    sql.add('             ,(select count(a.CLBH)  from  (SELECT style,CGZLS.CLBH FROM CGZL,CGZLS,ZSZL WHERE');
    sql.add('                     CGZLS.cgno=cgzl.cgno ');
    sql.add('                     and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    if Edit1.Text<>'' then
       sql.add('                  and CGZL.SEASON='+''''+ Edit1.Text+''''   );
    if Edit3.Text<>'' then
       sql.add('                  and CGZL.PURPOSE='+''''+ Edit3.Text+''''   );
    if Edit4.Text<>'' then //Vendor name
     sql.add('              and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('                     and cgzls.qty>0 ');
    sql.add('                     and CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     group by style,CGZLS.CLBH ');
    sql.add('                                      ) a where  ZSZL_Master.style=a.style  group by a.style ');
    sql.add('              )     as Mat_Cnt ');
    sql.add('             ,(select a.PurQty  from  (SELECT style,sum(cgzls.qty) as PurQty  FROM CGZL,CGZLS,ZSZL WHERE');
    sql.add('                     CGZLS.cgno=cgzl.cgno ');
    sql.add('                     and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    if Edit1.Text<>'' then
       sql.add('                  and CGZL.SEASON='+''''+ Edit1.Text+''''   );
    if Edit3.Text<>'' then
       sql.add('                  and CGZL.PURPOSE='+''''+ Edit3.Text+''''   );
    if Edit4.Text<>'' then //Vendor name
     sql.add('              and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('                     and cgzls.qty>0 ');
    sql.add('                     and CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     group by style ');
    sql.add('                                      ) a where  ZSZL_Master.style=a.style  ');
    sql.add('              )     as Mat_Qty ');
    sql.add('      from ZSZL_DEV ZSZL_Master left join zszl on ZSZL_Master.zsdh = zszl.zsdh');
    sql.add('      where ZSZL_Master.GSBH='''+main.Edit2.Text+''' and exists (select cgno from CGZL where CGZL.ZSBH = ZSZL_Master.ZSDH ');
    sql.add('                     and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                     and CGZL.SEASON='+''''+ Edit1.Text+''''   );
    sql.add('              ) ');
    if Edit4.Text<>'' then //Vendor name
    sql.add('              and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    sql.add('      group by ZSZL_Master.style ');
    sql.add('order by Cnt desc');
    //memo2.Lines:=sql;
    Active := True;
  end;
 with Qry_SupplierCountry do
  begin
    active:=false;
    sql.clear;
    sql.add('select  a.Country,COUNT(*) AS SupplierCnt,sum(a.qty) as PurQty  from            ');
    sql.add('            (                                           ');
    sql.add('            select ZSZL_DEV.Country,ZSZL_DEV.ZSDH,sum(cgzls.qty) as qty ');
    sql.add('            FROM CGZL,CGZLS,ZSZL_DEV, zszl WHERE ');
    sql.add('                  CGZLS.cgno=cgzl.cgno ');
    sql.add('                    and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    if Edit1.Text<>'' then
       sql.add('                  and CGZL.SEASON='+''''+ Edit1.Text+''''   );
    if Edit3.Text<>'' then
       sql.add('                  and CGZL.PURPOSE='+''''+ Edit3.Text+''''   );
    if Edit4.Text<>'' then //Vendor name
    sql.add('              and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('                    and cgzls.qty>0 ');
    ///
    sql.add('                    and CGZL.ZSBH=ZSZL_DEV.ZSDH and zszl_dev.zsdh = zszl.zsdh ');
    sql.add('                    and ZSZL_DEV.style=:style and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('            group by ZSZL_DEV.Country,ZSZL_DEV.ZSDH ');
    sql.add('            )  a ');
    sql.add('  group by a.Country ');
    sql.add('order by PurQty desc');
   // memo2.Lines:=sql;
    Active := True;
  end;

 with Qry_Supplier do
  begin
    active:=false;
    sql.clear;
    sql.add('select  a.Country,a.ZSDH,a.zsjc,count(*) as Cnt,sum(a.qty) as PurQty  from            ');
    sql.add('            (                                           ');
    sql.add('            select ZSZL_DEV.Country,ZSZL_DEV.ZSDH,ZSZL.zsjc,CGZLS.CLBH,sum(cgzls.qty) as qty ');
    sql.add('            FROM CGZL,CGZLS,ZSZL,ZSZL_DEV WHERE ');
    sql.add('                  CGZLS.cgno=cgzl.cgno ');
    sql.add('                    and CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    if Edit1.Text<>'' then
       sql.add('                  and CGZL.SEASON='+''''+ Edit1.Text+''''   );
    if Edit3.Text<>'' then
       sql.add('                  and CGZL.PURPOSE='+''''+ Edit3.Text+''''   );
    if Edit4.Text<>'' then //Vendor name
     sql.add('              and (zszl.zsjc like '''+'%'+Edit4.Text+'%'+''' or zszl.zsywjc like '''+'%'+Edit4.Text+'%'+''')');
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('                    and cgzls.qty>0 ');
    sql.add('                    and CGZL.ZSBH=ZSZL_DEV.ZSDH ');
    sql.add('                    and ZSZL_DEV.ZSDH=ZSZL.ZSDH ');
    sql.add('                    and ZSZL_DEV.style=:style and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('            group by ZSZL_DEV.Country,ZSZL_DEV.ZSDH,ZSZL.zsjc,CGZLS.CLBH ');
    sql.add('            )  a ');
    sql.add('  group by a.Country,a.ZSDH,a.zsjc ');
    sql.add('order by Cnt desc');
    //memo2.Lines:=sql;
    Active := True;
  end;
 with Qry_SupplierMat do
  begin
    active:=false;
    sql.clear;
    sql.add('               select ZSZL.ZSDH,ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,SUM(cgzls.qty) as Purqty  ');
    sql.add('               FROM CGZL      ');
    sql.add('               LEFT JOIN CGZLS ON CGZLS.cgno=cgzl.cgno   ');
    sql.add('               LEFT JOIN ZSZL ON CGZL.ZSBH=ZSZL.ZSDH    ');
    sql.add('               LEFT JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH    ');
    sql.add('               WHERE   CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+'''       ');
    if Edit1.Text<>'' then
       sql.add('                  and CGZL.SEASON='+''''+ Edit1.Text+''''   );
    if Edit3.Text<>'' then
       sql.add('                  and CGZL.PURPOSE='+''''+ Edit3.Text+''''   );
    if checkbox2.Checked then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('                       and cgzls.qty>0      ');
    sql.add('                       and ZSZL.ZSDH=:ZSDH ');
    sql.add('               group by ZSZL.ZSDH,ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH ');
    sql.add('order by Purqty desc');
    Active := True;
  end;

  //第七頁Shipping Delay
  with Qry_Ship_Supplier do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZL.ZSBH, ZSZL.ZSYWJC, DelayData.Times, COUNT(CGZLSS.CLBH) AS PurCount, DelayData.Times*100/COUNT(CGZLSS.CLBH) AS DelayPercent FROM CGZL');
    SQL.Add('LEFT JOIN ZSZL ON CGZL.ZSBH = ZSZL.ZSDH');
    SQL.Add('LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZL.CGNO');
    SQL.Add('LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CGNO = CGZLSS.CGNO AND CGZLInvoiceS.CLBH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN CGZLInvoice ON CGZLInvoice.CINO = CGZLInvoiceS.CINO');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZSBH, COUNT(*) AS Times FROM (');
    SQL.Add('    SELECT CGZL.CGNO, CGZL.ZSBH, YPZL.YPDH, CGZLSS.CLBH, CGZLInvoice.Invoice, CGZLInvoice.ETA,');
    SQL.Add('    CASE WHEN ISNULL(YPZL.JHRQ, '''') <> '''' THEN CONVERT(DateTime, YPZL.JHRQ) ELSE NULL END AS ShippingDate,');
    SQL.Add('    CASE WHEN CGZL.Purpose IN (''CR1'', ''CR2'') THEN 10 ELSE CASE WHEN CGZL.Purpose IN (''CR3'', ''SMS'') THEN 17 END END AS SDays FROM CGZL');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZL.CGNO');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CGNO = CGZLSS.CGNO AND CGZLInvoiceS.CLBH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN CGZLInvoice ON CGZLInvoice.CINO = CGZLInvoiceS.CINO');
    SQL.Add('    WHERE CGZL.CGLX = 6 AND CGZL.GSBH = ''' + main.Edit2.Text + '''');
    if CheckBox2.Checked then
      SQL.Add('    AND CONVERT(SmallDateTime, CONVERT(VarChar, CGZL.CGDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd' ,DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if Edit1.Text <> '' then
      SQL.Add('    AND CGZL.Season = ''' + Edit1.Text + '''');
    if Edit3.Text <> '' then
      SQL.Add('    AND CGZL.Purpose = ''' + Edit3.Text + '''');
    SQL.Add('  ) AS CGZL');
    SQL.Add('  WHERE DATEADD(D, -SDays, ShippingDate) > ETA');
    SQL.Add('  GROUP BY ZSBH');
    SQL.Add(') AS DelayData ON DelayData.ZSBH = CGZL.ZSBH');
    SQL.Add('WHERE CGZL.CGLX = 6 AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND DelayData.Times IS NOT NULL');
    if CheckBox2.Checked then
      SQL.Add('AND CONVERT(SmallDateTime, CONVERT(VarChar, CGZL.CGDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd' ,DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if Edit1.Text <> '' then
      SQL.Add('AND CGZL.Season = ''' + Edit1.Text + '''');
    if Edit3.Text <> '' then
      SQL.Add('AND CGZL.Purpose = ''' + Edit3.Text + '''');
    if Edit4.Text<>'' then //Vendor name
     sql.add('   and  zszl.zsywjc like '''+'%'+Edit4.Text+'%'+'''');
    SQL.Add('GROUP BY CGZL.ZSBH, ZSZL.ZSYWJC, DelayData.Times');
    SQL.Add('ORDER BY CGZL.ZSBH');
    Active := true;
  end;

  with Qry_Ship_Delay do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('  SELECT CGZL.Season, CGZL.Purpose, CGZL.CGNO, YPZL.YPDH, CGZLSS.CLBH, CLZL.YWPM, CGZLSS.Qty, CLZL.DWBH, CGZLInvoice.Invoice, CGZLInvoice.ETA,');
    SQL.Add('  CASE WHEN ISNULL(YPZL.JHRQ, '''') <> '''' THEN CONVERT(DateTime, YPZL.JHRQ) ELSE NULL END AS ShippingDate,');
    SQL.Add('  CASE WHEN CGZL.Purpose IN (''CR1'', ''CR2'') THEN 10 ELSE CASE WHEN CGZL.Purpose IN (''CR3'', ''SMS'') THEN 17 END END AS SDays FROM CGZL');
    SQL.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZL.CGNO');
    SQL.Add('  LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('  LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CGNO = CGZLSS.CGNO AND CGZLInvoiceS.CLBH = CGZLSS.CLBH');
    SQL.Add('  LEFT JOIN CGZLInvoice ON CGZLInvoice.CINO = CGZLInvoiceS.CINO');
    SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('  WHERE CGZL.CGLX = 6 AND CGZL.GSBH = ''' + main.Edit2.Text + '''');
    if CheckBox2.Checked then
      SQL.Add('  AND CONVERT(SmallDateTime, CONVERT(VarChar, CGZL.CGDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd' ,DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if Edit1.Text <> '' then
      SQL.Add('  AND CGZL.Season = ''' + Edit1.Text + '''');
    if Edit3.Text <> '' then
      SQL.Add('  AND CGZL.Purpose = ''' + Edit3.Text + '''');
    SQL.Add('  AND CGZL.ZSBH = :ZSBH');
    SQL.Add(') AS CGZL');
    SQL.Add('WHERE DATEADD(D, -SDays, ShippingDate) > ETA');
    Active := true;
  end;
end;

procedure TSupplierKPI.FormDestroy(Sender: TObject);
begin
SupplierKPI:=nil;
end;

procedure TSupplierKPI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TSupplierKPI.BBTT1Click(Sender: TObject);
begin
SupplierKPI_Purchaser:=TSupplierKPI_Purchaser.create(self);
SupplierKPI_Purchaser.show;
end;

procedure TSupplierKPI.Menu_ETA_SupplierClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh8  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TSupplierKPI.Menu_ETA_DelayClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := dbgrdh2  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TSupplierKPI.Qry_ETD_SupplierCalcFields(DataSet: TDataSet);
begin
//with Qry_ETD_Supplier do
//  begin
//    FieldByName('DelayPercent_').value:=FieldByName('delayTime').value/FieldByName('PurCount').value*100;
//  end;
end;

procedure TSupplierKPI.Menu_ETD_SupplierClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := DBGridEh1  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSupplierKPI.Menu_ETD_DelayClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := DBGridEh2  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSupplierKPI.Qry_SupplierNGAfterScroll(DataSet: TDataSet);
begin
  with Qry_SupplierNGMat do
  begin
    active:=false;
    sql.Clear;
    if Qry_SupplierNG.fieldbyname('zsjc').AsString='All' then
        begin
          sql.add('  select ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,MaterialNG.NG_Reason,MaterialNG.REMARK,MaterialNG.Result,MaterialNG.NG_Date  ');
          sql.add('    FROM MaterialNG  ');
          sql.add('    LEFT JOIN CGZLS ON CGZLS.CLBH=MaterialNG.CLBH and MaterialNG.cgno=cgzls.cgno  ');
          sql.add('    LEFT JOIN CGZL  ON CGZLS.cgno=cgzl.cgno  ');
          sql.add('    LEFT JOIN ZSZL ON CGZL.ZSBH=ZSZL.ZSDH  ');
          sql.add('    LEFT JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH  ');
          sql.add('    WHERE  CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+'''  and ISNULL(MaterialNG.NG_Reason,'''')<>''OK''   ');
          //
          if Edit1.Text<>'' then //Season
              sql.add('    and CGZL.Season='''+Edit1.Text+'''');
          if Edit3.Text<>'' then //Stage
              sql.add('    and CGZL.purpose='''+Edit3.Text+'''');
          if checkbox2.Checked then
          begin
              sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
              sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;
        end
        else
        begin
          sql.add('  select ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,MaterialNG.NG_Reason,MaterialNG.REMARK,MaterialNG.Result,MaterialNG.NG_Date  ');
          sql.add('    ,CGZLS.CGNO,CGZLS.USPrice,CGZLS.VNPrice,CGZLS.Qty  ');
          sql.add('    FROM MaterialNG  ');
          sql.add('    LEFT JOIN CGZLS ON CGZLS.CLBH=MaterialNG.CLBH and MaterialNG.cgno=cgzls.cgno  ');
          sql.add('    LEFT JOIN CGZL  ON CGZLS.cgno=cgzl.cgno  ');
          sql.add('    LEFT JOIN ZSZL ON CGZL.ZSBH=ZSZL.ZSDH  ');
          sql.add('    LEFT JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH  ');
          sql.add('    WHERE CGZL.cglx=6 and CGZL.GSBH='''+main.Edit2.Text+''' AND MaterialNG.NG_ETD IS NOT NULL ');
          sql.add('            and ZSZL.ZSDH='+''''+Qry_SupplierNG.fieldbyname('ZSDH').AsString+''''  );
          //
          if Edit1.Text<>'' then //Season
            sql.add('    and CGZL.Season='''+Edit1.Text+'''');
          if Edit3.Text<>'' then //Stage
            sql.add('    and CGZL.purpose='''+Edit3.Text+'''');
          if checkbox2.Checked then
          begin
            sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;
        end;
    Active := True;
  end;
end;

procedure TSupplierKPI.MenuPop_SupplierNGClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh3  ;

  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSupplierKPI.MenuPop_SupplierNGMatClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh4  ;

  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TSupplierKPI.Qry_SupplierNGCalcFields(DataSet: TDataSet);
begin
with Qry_SupplierNG do
  begin
    FieldByName('NGPercent_').value:=FieldByName('NG_Time').value/FieldByName('ETACount').value*100;
  end;
end;

procedure TSupplierKPI.MenuPop_SupplierMatClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := DBGridEh6  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSupplierKPI.MenuPop_SupplierClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := DBGridEh5  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSupplierKPI.MenuPop_SupplierCountryClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := DBGridEh7  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSupplierKPI.MenuPop_SupplierStyleClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := DBGrid2  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TSupplierKPI.FormCreate(Sender: TObject);
var
  i:integer;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

  DTP1.Date:=date-30;
  DTP2.date:=date;
  PageControl1.ActivePageIndex := 0;
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  readini();
end;

procedure TSupplierKPI.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if  Qry_MatRecieve.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to Qry_MatRecieve.FieldCount-1 do
      begin
        eclApp.Cells(1,i+1):=Qry_MatRecieve.fields[i].FieldName;
      end;

      Qry_MatRecieve.First;
      j:=2;
      while   not   Qry_MatRecieve.Eof   do
      begin
        for   i:=0   to Qry_MatRecieve.FieldCount-1  do
        begin
          eclApp.Cells(j,i+1):=Qry_MatRecieve.Fields[i].Value;
        end;
        Qry_MatRecieve.Next;
        inc(j);
      end;
 
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TSupplierKPI.MenuItem1Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  i, j: integer;
  ExpClass: TDBGridEhExportClass;
  Ext, target: String;
  tdbgh: TDBGridEh;
begin
  tdbgh := DBGridEh11;
  if (tdbgh is TDBGridEh) then
  begin
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;
end;

procedure TSupplierKPI.MenuItem2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  i, j: integer;
  ExpClass: TDBGridEhExportClass;
  Ext, target: String;
  tdbgh: TDBGridEh;
begin
  tdbgh := DBGridEh10;
  if (tdbgh is TDBGridEh) then
  begin
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;
end;

procedure TSupplierKPI.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((Qry_ETD_Delay.FieldByName('ETA').value- Qry_ETD_Delay.FieldByName('CGdate').value)>Qry_ETD_Delay.FieldByName('SampleMatLeadTime').value)  then
  begin
    dbgrideh2.canvas.font.color:=clred;
    dbgrideh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSupplierKPI.dbgrdh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Qry_ETA_Delay.FieldByName('ETA').value>Qry_ETA_Delay.FieldByName('ETD').value  then
  begin
    dbgrdh2.canvas.font.color:=clred;
    dbgrdh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSupplierKPI.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    NotOKCount: Integer;
    NotOKCountAndCFT: Integer;
    NGReason: Integer;
    CheckResultValue: string;
    ClumnWidth:array [0..20] of integer;
    ClumnDesc:array [0..20] of string;
begin
    //
    with q_excelKPI do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Sum(CASE WHEN S_KPI.ETD_LessEqual3=1 THEN 1 ELSE 0 END) as ETD_LessEqual3');
      SQL.Add('	          , Sum(CASE WHEN S_KPI.ETD_W3D=''OK''THEN 1 ELSE 0 END) as ETD_W3D');
      SQL.Add('           ,Sum(CASE WHEN S_KPI.NG_Reason=''OK with improve'' THEN 1 ELSE 0 END) as Colorimprove');
      SQL.Add('from (');
      SQL.Add('       select CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate as ETA');
      SQL.Add('       		,isnull(MaterialMOQ.SampleLeadtime,0) as SampleMatLeadTime ');
      SQL.Add('           ,case when ((cast(CGZLS.CFMDate As Int)-cast(CGzl.CGdate As Int))<= isnull(MaterialMOQ.SampleLeadtime,0)) then 1 else 0 end  as ETD_LessEqual3,cast(CGZLS.CFMDate As Int)-cast(CGzl.CGdate As Int) as  RealLeadtime');
      SQL.Add('           ,MaterialNG.NG_Reason, CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END AS ETD_W3D');
      SQL.Add('       ,CGZLInvoice_1.ETA as INV_ETA');
      SQL.Add('       from CGzl ');
      SQL.Add('       left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
      SQL.Add('       left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
      SQL.Add('       left join ( ');
      SQL.Add('                   select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1, MAX(PurReceiveDate) AS PurReceiveDate from CGZLInvoiceS GROUP BY CGNO,CLBH');
      SQL.Add('                 ) AS CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO');
      SQL.Add('       left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      SQL.Add('       left join CLZl ON CGZLS.CLBH=CLZL.CLDH ');
      SQL.Add('       LEFT JOIN MaterialMOQ ON MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.season=CGZL.Season');
      SQL.Add('       left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO');
      SQL.Add('       LEFT JOIN (');
      SQL.Add('                   SELECT ETDTemp.* FROM ETDTemp');
      SQL.Add('                          LEFT JOIN (');
      SQL.Add('                          SELECT CGNO, CLBH, MIN(UserDate) AS UserDate FROM ETDTemp GROUP BY CGNO, CLBH');
      SQL.Add('                          ) AS ETDTemp2 ON ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLBH = ETDTemp.CLBH AND  ETDTemp2.UserDate = ETDTemp.UserDate');
      SQL.Add('                          WHERE ETDTemp2.CGNO IS NOT NULL');
      SQL.Add('                    ) AS ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLBH = CGZLS.CLBH');
      SQL.Add('                   where CGZLs.clbh is not null and CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.cglx=6 ');
      if Edit1.Text<>'' then  //Season
      sql.add('   and CGZL.Season='''+Edit1.Text+'''');
      if Edit3.Text<>'' then   //Stage
      sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
      if checkbox2.Checked then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,cgzl.cgdate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      SQL.Add('         and  ZSZL.ZSDH=:ZSBH');
      SQL.Add('group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate ');
      SQL.Add(',isnull(MaterialMOQ.SampleLeadtime,0) ,cast(CGZLS.CFMDate As Int)-cast(CGzl.CGdate As Int), MaterialNG.NG_Reason, CGZLInvoice_1.ETA');
      SQL.Add(', CASE WHEN DATEDIFF(D, CGZL.CGDate, ETDTemp.UserDate) <= 3 THEN ''OK'' ELSE ''NOT OK'' END');
      Sql.Add(') S_KPI');
      //memo2.Lines:=sql;
      //funcObj.WriteErrorLog(sql.Text);
      //Truy van
      Active:=true;

    end;
    //
    with  q_excelKPI_2 do
    begin
      Active:=false;
      SQL.Clear;
      sql.add('select CGZL.ZSBH,ZSYWJC,count(CGZLS.CLBH) AS PurCount_ETD');
      sql.add('from CGZL ');
      sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
      sql.add('left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
      sql.Add('   where  CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.cglx=6 ');
      if Edit1.Text<>'' then  //Season
      sql.add('   and CGZL.Season='''+Edit1.Text+'''');
      if Edit3.Text<>'' then   //Stage
      sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
      if checkbox2.Checked then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,cgzls.CFMDate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      SQL.Add('         and  ZSZL.ZSDH=:ZSBH');
      sql.Add('group by CGZL.ZSBH,ZSYWJC');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    //
    with  q_excelKPI_3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select sum(C_shipping) C_Shipping  from (');
      SQL.Add('select CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate as ETA');
      SQL.Add(',isnull(MaterialMOQ.SampleLeadtime,0) as SampleMatLeadTime, CGZLInvoice_1.ETA as INV_ETA');
      SQL.Add(',CASE WHEN DATEDIFF(D, CGZLS.CFMDate,CGZLInvoice_1.ETA ) between 0 and isnull(MaterialMOQ.SampleLeadtime,0) then 1 else 0 end as C_shipping');
      SQL.Add('       from CGzl ');
      SQL.Add('       left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
      SQL.Add('       left join CGZLS on CGZLS.CGNO=CGzl.CGNO ');
      SQL.Add('       left join ( ');
      SQL.Add('                   select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1, MAX(PurReceiveDate) AS PurReceiveDate from CGZLInvoiceS GROUP BY CGNO,CLBH');
      SQL.Add('                 ) AS CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO');
      SQL.Add('       left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      SQL.Add('       left join CLZl ON CGZLS.CLBH=CLZL.CLDH ');
      SQL.Add('       LEFT JOIN MaterialMOQ ON MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.season=CGZL.Season');
      SQL.Add('       left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO');
      SQL.Add('       LEFT JOIN (');
      SQL.Add('                   SELECT ETDTemp.* FROM ETDTemp');
      SQL.Add('                          LEFT JOIN (');
      SQL.Add('                          SELECT CGNO, CLBH, MIN(UserDate) AS UserDate FROM ETDTemp GROUP BY CGNO, CLBH');
      SQL.Add('                          ) AS ETDTemp2 ON ETDTemp2.CGNO = ETDTemp.CGNO AND ETDTemp2.CLBH = ETDTemp.CLBH AND  ETDTemp2.UserDate = ETDTemp.UserDate');
      SQL.Add('                          WHERE ETDTemp2.CGNO IS NOT NULL');
      SQL.Add('                    ) AS ETDTemp ON ETDTemp.CGNO = CGZL.CGNO AND ETDTemp.CLBH = CGZLS.CLBH');
      SQL.Add('                   where CGZLs.clbh is not null and CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.cglx=6 ');
      if Edit1.Text<>'' then  //Season
      sql.add('   and CGZL.Season='''+Edit1.Text+'''');
      if Edit3.Text<>'' then   //Stage
      sql.add('   and CGZL.purpose='''+Edit3.Text+'''');
      if checkbox2.Checked then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,cgzls.CFMDate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      SQL.Add('         and  ZSZL.ZSDH=:ZSBH');
      sql.Add('group by CGZL.Season,cgzl.purpose,CGZL.ZSBH,CGzl.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLS.Qty,CGzl.CGdate,CGZLS.CFMDate ,isnull(MaterialMOQ.SampleLeadtime,0), CGZLInvoice_1.ETA');
      SQL.Add(') KPI_shipping');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;

    with  q_excelKPI_CGDet do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CGZLS.CGNO ');
      sql.add('       ,CGZLS.CLBH ');
      sql.add('       ,CGZLInvoiceS_1.Invoice_Customs, CGZLInvoiceS_1.PurReceiveDate ');
      sql.add('       ,CGZLS.Qty,(cgzls.Qty - isnull(CGZLInvoiceS_1.Qty,0)) as Qty_not '); 
      sql.add('       ,CGZLS.YQDate ');
      sql.add('       ,CGZLS.CFMDate ');
      sql.add('       ,CGZLS.CFMDate as old_CFMDate');
      sql.add('       ,CGZLS.USERDate ');
      sql.add('       ,CGZLS.USERID ');
      sql.add('       ,CGZLS.Memo ');
      sql.add('       ,CGZLS.USPrice ');
      sql.add('       ,CGZLS.VNPrice ');
      sql.add('       ,CGZLS.Article_All ');
      sql.add('       ,ZSZL.ZSYWJC,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS FlexCode,clbzzl.bz as MatRemark,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH');
      sql.add('       ,MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason ');
      sql.add('       ,MaterialNG.NG_Reason as old_NG_Reason');
      sql.add('       ,MaterialNG.NG_ETD');
      sql.add('       ,MaterialNG.NG_ETA');
      sql.add('       ,MaterialNG.Result');
      sql.add('       ,MaterialNG.NG_Date');
      sql.add('       ,MaterialNG.NG_Date as old_NG_Date');
      sql.add('       ,CGZL_color.visually');
      sql.add('       ,CGZL_color.spectro');
      sql.add('       ,CGZL_color.spectro_file');
      sql.add('       ,CGZL_color.result');
      sql.add('       ,CGZL_color.userdate');
      sql.add('       ,CGZL_color.userid');
      SQL.Add('	      ,CGZL_color.remark remark');
      sql.add('       ,MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window ');
      sql.add('       ,MaterialNG.Remark AS NG_Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZLInvoice_1.ETA AS INV_ETA,isnull(CGZLInvoice_1.invoice,'''') as invoice ,RKACC.USPrice as RKUSPrice,RKACC.VNPrice as RKVNPrice,BUSERS.USERNAME as SamplePurchaser_Name  ');
      sql.add('       ,MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality  ');
      sql.add('       ,SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size, cast(cgzlssampleorder.sampleorder as VarChar(999) ) as sampleorder');
      sql.add('       ,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
      sql.add('       ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cgzl_color2.shippedDate');
      sql.add('       ,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark,cgzls.ETA');
      sql.add('       ,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber,CGZLS.CommitedETD,GamePlan.Material_ETA, YPZL.ProductionLocation,xxzlkf.RFCDeadlineDate,CGZLInvoiceS_1.CheckResult,CGZLS.DelayReason ');
      sql.add('from CGZLS  ');
      sql.add('inner join CGZL on CGZL.CGNO=CGZLS.CGNO');
      sql.add('inner join CLZL on CLZL.CLDH=CGZLS.CLBH');
      sql.add('left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH');
      sql.add('inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');

      if main.Edit2.Text = 'SKX' then
      begin
        sql.add('inner join CGZLSS on CGZLS.CGNO=CGZLSS.CGNO');
        sql.add('left join YPZL on CGZLSS.ZLBH=YPZL.YPDH');
      end;
      sql.Add('left join clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb=''E'' ');
      sql.add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''');
      sql.add('left join BUSERS on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
      sql.add('left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO ');
      sql.add('left join SampleLeatherQC  on CGZLS.CLBH=SampleLeatherQC.CLBH and CGZLS.CGNO=SampleLeatherQC.CGNO ');
      sql.add('left join MaterialMOQ  on CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.SEASON=MaterialMOQ.Season   ');
      sql.add('left join cgzl_color2  on CGZLS.CLBH=cgzl_color2.CLBH');
      sql.Add('left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1,Invoice_Customs, qty, PurReceiveDate, CheckResult ');
      sql.Add('           from CGZLInvoiceS GROUP BY CGNO,CLBH,Invoice_Customs, qty, PurReceiveDate, CheckResult ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
      sql.add('left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      sql.add('left join cgzl_color on cgzl_color.cgno=cgzls.cgno and cgzl_color.clbh=cgzls.clbh');
      //20150314 修改加快查詢
      sql.add('left join KCRKS RKACC  on RKACC.DOCNO=cgzls.cgno and RKACC.clbh=cgzls.clbh ');
      /// loc SR#----------------------------------------------------
      sql.add('inner join CGZLSS on CGZL.CGNO=CGZLSs.CGNO and cgzlss.CLBH = CGZLS.CLBH  ');
      sql.add('Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH   Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing ');
      sql.Add('Left join xxzlkf  on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao ');

      sql.Add('left join (');
      sql.add('  select Season, Stage, MAX(Material_ETA) AS Material_ETA from GamePlan');
      sql.add('  GROUP BY Season,Stage');
      sql.add(') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=GamePlan.Stage');

      sql.add('left join ( ');
      sql.add('select cs.cgno,cs.clbh ,(select zlbh+''/'' from CGZLSS where cgno=cs.cgno and clbh=cs.clbh FOR XML PATH (''''))as sampleorder ');
      sql.add('from CGZLSS cs group by cs.cgno,cs.clbh ');
      sql.add(')cgzlssampleorder on cgzlssampleorder.CGNO=CGZLS.cgno and cgzlssampleorder.CLBH=CGZLS.CLBH ');

      sql.add('where CGZL.CGDATE>''2011/01/01''  ');
      sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
      if edit4.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '''+'%'+edit4.Text+'%'+'''');
      sql.add('and convert(smalldatetime,convert(varchar,CGZL.cgdate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.add('    and CGZL.CGLX=''6'' ');
      sql.add('group by CGZLS.CGNO,CGZLS.CLBH,CGZLInvoiceS_1.Invoice_Customs, CGZLInvoiceS_1.PurReceiveDate,CLZL_FLEX.CLDHFLEX');
      sql.add(',CGZLS.Qty,CGZLS.YQDate,CGZLS.CFMDate');
      sql.add(',CGZLS.CFMDate,CGZLS.USERDate,CGZLS.USERID');
      sql.add(',CGZLS.Memo,CGZLS.USPrice,CGZLS.VNPrice,CGZLS.Article_All');
      sql.add(',ZSZL.ZSYWJC,CLZL.YWPM,clbzzl.bz,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH');
      sql.add(',MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason');
      sql.add(',MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA');
      sql.add(',MaterialNG.Result,MaterialNG.NG_Date,MaterialNG.NG_Date,CGZL_color.visually');
      sql.add(',CGZL_color.spectro,CGZL_color.spectro_file');
      sql.add(',CGZL_color.result,CGZL_color.userdate');
      sql.add(',CGZL_color.userid,CGZL_color.remark');
      sql.add(',MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window');
      sql.add(',MaterialNG.Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZLInvoice_1.ETA');
      sql.add(',isnull(CGZLInvoice_1.invoice,'''') ,RKACC.USPrice,RKACC.VNPrice,BUSERS.USERNAME');
      sql.add(',MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality');
      sql.add(',SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size');
      sql.add(',cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
      sql.add(',cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,YPZL.ProductionLocation,cgzlssampleorder.sampleorder');
      sql.add(',cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer,cgzl_color2.DCName,GamePlan.Material_ETA');
      sql.add(',cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark,cgzls.ETA,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber, CGZLInvoiceS_1.Qty,CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate');
      sql.Add(',CGZLInvoiceS_1.CheckResult,CGZLS.DelayReason ');
      sql.add('order by CGZLS.CGNO DESC');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;

    if q_excelKPI.Active then
    begin
      if q_excelKPI.recordcount=0 then
      begin
      showmessage('No record.');
      abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;
    //
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Purchase_SN762New.xlsx'),Pchar(AppDir+'Additional\Purchase_SN762New.xlsx'),false);
      if FileExists(AppDir+'Additional\Purchase_SN762New.xlsx') then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Purchase_SN762New.xlsx');
          eclApp.WorkSheets[1].Activate;
          j:=3;
          q_excelKPI.First;
          q_excelKPI_2.First;
          q_excelKPI_3.First;
          Qry_ETD_Supplier.First;
          q_excelKPI_CGDet.First;
          for i:=1 to Qry_ETD_Supplier.RecordCount do
          begin
            eclApp.Range[eclApp.Cells[3,1],eclApp.Cells[i+2,33]].interior.color:=clwhite;
            eclApp.Range[eclApp.Cells[3,1],eclApp.Cells[i+2,33]].font.Bold:=false;
            eclApp.Range[eclApp.Cells[3,1],eclApp.Cells[i+2,33]].font.color:=clblack;
            eclApp.Range[eclApp.Cells[3,1],eclApp.Cells[i+2,33]].Borders.weight:=2;
            eclApp.ActiveSheet.Rows[j].Insert(-4121);
            eclApp.ActiveSheet.Rows[j].Font.Name:='Times New Roman';
            eclApp.ActiveSheet.Rows[j].Font.Size := 7;
            eclApp.ActiveSheet.Rows[j].RowHeight:=26;
            //=================================================================================
            eclApp.Cells(j,1):=null;                                                                                                                                  //A
            eclApp.Cells(j,2):=null;                                                                                                                                  //B
            eclApp.Cells(j,3):= Qry_ETD_Supplier.FieldByName('ZSYWJC').Value;                                                                                         //C
            eclApp.Cells(j,4):= null;                                                                                                                                 //D

            //eclApp.Cells(j,5):= Qry_ETD_Supplier.FieldByName('PurCount').Value;                                                                                       //E
            eclApp.Cells(j,5):= Label11.Caption;

            //eclApp.Cells(j,6):= q_excelKPI.FieldByName('ETD_W3D').Value;                                                                                              //F
            eclApp.Cells(j,6):= Label12.Caption;

            eclApp.Cells[j,7].Formula:= '=F'+inttostr(j)+'* 20/E'+inttostr(j)+'';                                                                                     //G
            eclApp.Cells [j,8].Formula:= '= E'+inttostr(j)+'- F'+inttostr(j)+'';                                                                                      //H
            eclApp.Cells(j,9):= null; //Reason                                                                                                                        //I

            //Giu nguyen
            eclApp.Cells(j,10):= q_excelKPI.FieldByName('ETD_LessEqual3').Value ;  //Commited ETD <=L/T                                                               //J


            eclApp.Cells[j,11].Formula:= '= J'+inttostr(j)+'* 20/E'+inttostr(j)+'';                                                                                   //K
            eclApp.Cells[j,12].Formula:= '= E'+inttostr(j)+'- J'+inttostr(j)+' '; //Commited ETD> L/T                                                                 //L
            eclApp.Cells(j,13):= null; //Reason                                                                                                                       //M

            //eclApp.Cells(j,14):= q_excelKPI_2.FieldByName('PurCount_ETD').Value;  // Check vao ETD N733                                                               //N
            eclApp.Cells(j,14):= Label13.Caption;

            //Giu nguyen
            eclApp.Cells(j,15):= q_excelKPI_3.FieldByName('C_shipping').Value;;                                                                                       //O


            eclApp.Cells[j,16].Formula:= '= O'+inttostr(j)+'* 20/N'+inttostr(j)+'';                                                                                   //P
            eclApp.Cells[j,17].Formula:= '= O'+inttostr(j)+'/N'+inttostr(j)+ '*100';                                                                                  //Q

            //Doi thanh Reason null
            //eclApp.Cells[j,18].Formula:= '= N'+inttostr(j)+'- O'+inttostr(j)+'';                                                                                      //R
            eclApp.Cells(j,18):= null;

            //Doi lai
            //eclApp.Cells(j,19):= null;
            eclApp.Cells(j,19):= '=100-(Q' + IntToStr(j) + ')';                                                                                                                               //S

            {NotOKCount :=0;
            while not q_excelKPI_CGDet.Eof do
              begin
                CheckResultValue := q_excelKPI_CGDet.FieldByName('CheckResult').AsString;
                if (CheckResultValue <> 'OK') and (not q_excelKPI_CGDet.FieldByName('CheckResult').IsNull) and  (CheckResultValue <> 'NULL') then
                    Inc(NotOKCount);
                q_excelKPI_CGDet.Next;
                end;
            eclApp.Cells[j,20] :=  IntToStr(NotOKCount);}
            eclApp.Cells(j,20):= Label14.Caption;                                                                                                                      //T

            eclApp.Cells[j, 21].Formula := '=(T' + IntToStr(j) + '/N' + IntToStr(j) + ')*100';                                                                          //U

            //Tra con dau ve bat dau
            {q_excelKPI_CGDet.First;
            NotOKCountAndCFT :=0;
            while not q_excelKPI_CGDet.Eof do
              begin
                CheckResultValue := q_excelKPI_CGDet.FieldByName('CheckResult').AsString;
                 if (CheckResultValue <> 'OK') and (CheckResultValue <> 'ForThisStage') and (CheckResultValue = 'NG') and (not q_excelKPI_CGDet.FieldByName('CheckResult').IsNull) and  (CheckResultValue <> 'NULL') then
                    Inc(NotOKCountAndCFT);
                q_excelKPI_CGDet.Next;
                end;
            eclApp.Cells[j,22] :=  IntToStr(NotOKCountAndCFT);}
            eclApp.Cells(j,22):= Label15.Caption;                                                                                                                   //V

            eclApp.Cells[j,23].Formula := '=(V' + IntToStr(j) + '/N' + IntToStr(j)+ ')*100';                                                                           //W


            //Tra con dau ve bat dau
            {q_excelKPI_CGDet.First;
            NGReason :=0;
            while not q_excelKPI_CGDet.Eof do
              begin
                CheckResultValue := q_excelKPI_CGDet.FieldByName('NG_Reason').AsString;
                if (not q_excelKPI_CGDet.FieldByName('NG_Reason').IsNull) and  (CheckResultValue <> 'NULL') then
                    Inc(NGReason);
                q_excelKPI_CGDet.Next;
                end;
            eclApp.Cells[j,24] :=  IntToStr(NGReason); }
            eclApp.Cells(j,24):= Label16.Caption;                                                                                                              //X

            eclApp.Cells[j,25].Formula := '=(X' + IntToStr(j) + '/N' + IntToStr(j)+ ')*100';                                                                           //Y
            eclApp.Cells[j,26].Formula := '=20-(W' + IntToStr(j) + '*20)';                                                                                             //Z
            eclApp.Cells(j,27) := null;                                                                                                                                //AA
            eclApp.Cells[j,28].Formula:= '= AA'+inttostr(j)+'*20';                                                                                                     //AB

            //eclApp.Cells[j, 29].Formula := '=(O' + IntToStr(j) + '/N' + IntToStr(j) + ')*100';                                                                         //AC
            eclApp.Cells(j,29):= Label17.Caption;  

            eclApp.Cells(j, 30) := null;                                                                                                                               //AD
            eclApp.Cells(j,31):= null;                                                                                                                                 //AE
            eclApp.Cells(j,32):= null;                                                                                                                                 //AF
            eclApp.Cells[j,33].Formula := '= G'+inttostr(j)+'+ K'+inttostr(j)+'+ P'+inttostr(j)+'+ Z'+inttostr(j)+'+ AB'+inttostr(j)+'';                                              //AG
            eclApp.Cells(j,34) := null;                                                                                                                                //AH
            Qry_ETD_Supplier.Next;
            q_excelKPI.Next;
            q_excelKPI_2.Next;
            q_excelKPI_3.First;
            q_excelKPI_CGDet.Next;
            inc(j);
          end;

          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
    end;
end;

end.
