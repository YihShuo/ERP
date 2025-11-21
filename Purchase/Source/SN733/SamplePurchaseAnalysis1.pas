unit SamplePurchaseAnalysis1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,comobj,
  Dateutils,ehlibBDE, GridsEh, DBGridEh, DBCtrls, TeeProcs, TeEngine, Chart,
  TeeFunci, Series, DbChart, Mask, Menus,ShellAPI,DBGridEhImpExp, jpeg,
  Buttons;

type
  TSamplePurchaseAnalysis = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Query2: TQuery;
    DS_Purchaser: TDataSource;
    Qry_Purchaser: TQuery;
    Qry_PurchaserSamplePurchaser: TStringField;
    Qry_PurchaserSamplePurchaser_Name: TStringField;
    Qry_PurchaserNoETD: TIntegerField;
    Qry_PurchaserNoETA: TIntegerField;
    Qry_PurchaserNoPurchase: TIntegerField;
    Qry_Purchaser_NOETD: TQuery;
    DS_Purchaser_NoETD: TDataSource;
    Qry_Purchaser_NOPrice: TQuery;
    DS_Purchaser_NoPrice: TDataSource;
    Qry_Purchaser_NOETA: TQuery;
    DS_Purchaser_NoETA: TDataSource;
    Qry_Purchaser_NOPurchase: TQuery;
    DS_Purchaser_NoPurchase: TDataSource;
    Qry_Purchaser_NOETDZSDH: TStringField;
    Qry_Purchaser_NOETDzsjc: TStringField;
    Qry_Purchaser_NOETDCLBH: TStringField;
    Qry_Purchaser_NOETDYWPM: TStringField;
    Qry_Purchaser_NOETDDWBH: TStringField;
    Qry_Purchaser_NOETDqty: TCurrencyField;
    Qry_Purchaser_NOETDCGDate: TDateTimeField;
    Qry_Purchaser_NOETDCGNO: TStringField;
    Qry_Purchaser_NOETAZSDH: TStringField;
    Qry_Purchaser_NOETAzsjc: TStringField;
    Qry_Purchaser_NOETACLBH: TStringField;
    Qry_Purchaser_NOETAYWPM: TStringField;
    Qry_Purchaser_NOETADWBH: TStringField;
    Qry_Purchaser_NOETAqty: TCurrencyField;
    Qry_Purchaser_NOETACGDate: TDateTimeField;
    Qry_Purchaser_NOETACGNO: TStringField;
    Qry_Purchaser_NOETAETD: TDateTimeField;
    Qry_Purchaser_NOPurchaseZSDH: TStringField;
    Qry_Purchaser_NOPurchasezsjc: TStringField;
    Qry_Purchaser_NOPurchaseclbh: TStringField;
    Qry_Purchaser_NOPurchaseYWPM: TStringField;
    Qry_Purchaser_NOPurchaseKFJD: TStringField;
    Qry_Purchaser_NOPurchaseArticle: TStringField;
    Qry_Purchaser_NOPurchaseFD: TStringField;
    Qry_Purchaser_NOETAINVOICE: TStringField;
    Qry_Purchaser_NOETD_stage: TQuery;
    Qry_Purchaser_NOETD_stageJijie: TStringField;
    Qry_Purchaser_NOETD_stageSTAGE: TStringField;
    Qry_Purchaser_NOETA_Stage: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    Qry_Purchaser_NOETDSTAGE: TStringField;
    Qry_Purchaser_NOETASTAGE: TStringField;
    Pop_Purchaser: TPopupMenu;
    Excel1: TMenuItem;
    ckbsel: TCheckBox;
    SaveDialog1: TSaveDialog;
    Pop_Purchaser_NoETD: TPopupMenu;
    MenuPop_Purchaser_NoETD: TMenuItem;
    Pop_Purchaser_NoETA: TPopupMenu;
    MenuPop_Purchaser_NoETA: TMenuItem;
    Pop_Purchaser_NoPurchase: TPopupMenu;
    MenuPop_Purchaser_NoPurchase: TMenuItem;
    Qry_Purchaser_NOPurchaseJiJie: TStringField;
    Qry_Purchaser_NOPurchasecsbh: TStringField;
    Shape1: TShape;
    Label1: TLabel;
    Edit_Season: TEdit;
    Qry_PurchaserNoMOQ: TIntegerField;
    Qry_Purchaser_NOMOQ: TQuery;
    Qry_Purchaser_NOMOQSEASON: TStringField;
    Qry_Purchaser_NOMOQCLBH: TStringField;
    Qry_Purchaser_NOMOQYWPM: TStringField;
    Qry_Purchaser_NOMOQDWBH: TStringField;
    Qry_Purchaser_NOMOQZSYWJC: TStringField;
    Qry_Purchaser_NOMOQSampleLeadTime: TIntegerField;
    Qry_Purchaser_NOMOQProdLeadTime: TIntegerField;
    Qry_Purchaser_NOMOQREMARK: TStringField;
    Qry_Purchaser_NOMOQZSBH: TStringField;
    DS_Purchaser_NoMOQ: TDataSource;
    Qry_Purchaser_NOMOQLocation: TStringField;
    Label6: TLabel;
    Qry_Purchaser_NOPurchaseypzsjc: TStringField;
    Edit_SeasonNew: TEdit;
    Splitter4: TSplitter;
    PageControl3: TPageControl;
    TS_Empty: TTabSheet;
    Image1: TImage;
    TS_NoETD: TTabSheet;
    DBGridEh9: TDBGridEh;
    TS_NoPrice: TTabSheet;
    DBGridEh10: TDBGridEh;
    TS_NoETA: TTabSheet;
    DBGridEh11: TDBGridEh;
    TS_NoPurchase: TTabSheet;
    DBGridEh12: TDBGridEh;
    TS_NoLT: TTabSheet;
    DBGrid1: TDBGridEh;
    Qry_PurchaserNoPolicy: TIntegerField;
    TS_NoPolicy: TTabSheet;
    Qry_Policy: TQuery;
    Query1zsdh: TStringField;
    StringField1: TStringField;
    Query1CR1: TStringField;
    Query1CR2: TStringField;
    Query1Presell: TStringField;
    Query1SMS: TStringField;
    Query1PT: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    Query1style: TStringField;
    StringField6: TStringField;
    Query1Country: TStringField;
    Query1CR1_FreeQty: TCurrencyField;
    Query1CR1_Charge: TCurrencyField;
    Query1CR2_FreeQty: TCurrencyField;
    Query1CR2_charge: TCurrencyField;
    Query1Presell_FreeQty: TCurrencyField;
    Query1Presell_Charge: TCurrencyField;
    Query1SMS_FreeQty: TCurrencyField;
    Query1SMS_Charge: TCurrencyField;
    Query1PT_FreeQty: TCurrencyField;
    Query1PT_Charge: TCurrencyField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DS_Policy: TDataSource;
    Qry_PurchaserNoQ_Price: TIntegerField;
    Qry_Purchaser_NOPriceSEASON: TStringField;
    Qry_Purchaser_NOPriceCLBH: TStringField;
    Qry_Purchaser_NOPriceZSBH: TStringField;
    Qry_Purchaser_NOPriceYWPM: TStringField;
    Qry_Purchaser_NOPriceDWBH: TStringField;
    Qry_Purchaser_NOPriceZSYWJC: TStringField;
    Qry_Purchaser_NOPriceSamplePrice: TCurrencyField;
    Qry_Purchaser_NOPriceSamplePriceVN: TCurrencyField;
    Panel2: TPanel;
    DBGridEh8: TDBGridEh;
    Splitter1: TSplitter;
    dbgrdh5: TDBGridEh;
    DS_MatChange: TDataSource;
    Qry_MatChange: TQuery;
    strngfldqry5article: TStringField;
    Qry_MatChangeywpm: TStringField;
    Qry_MatChangedwbh: TStringField;
    Qry_MatChangezsywjc: TStringField;
    Qry_MatChangeFD: TStringField;
    Qry_MatChangeclbh: TStringField;
    Qry_MatChangecgdate: TDateTimeField;
    Qry_MatChangeyqdate: TDateTimeField;
    Qry_MatChangecgno: TStringField;
    Qry_MatChangePurQty: TCurrencyField;
    Qry_MatChangestage: TStringField;
    Qry_MatChangeResponsibility: TStringField;
    Qry_MatChangeSeason: TStringField;
    Qry_NOPurCfm: TQuery;
    Qry_NOPurCfmRKNO: TStringField;
    Qry_NOPurCfmZSBH: TStringField;
    Qry_NOPurCfmZSYWJC: TStringField;
    Qry_NOPurCfmZSNO: TStringField;
    Qry_NOPurCfmUSERID: TStringField;
    Qry_NOPurCfmUSERDATE: TDateTimeField;
    Qry_NOPurCfmCFMID: TStringField;
    Qry_NOPurCfmCFMDATE: TDateTimeField;
    Qry_NOPurCfmYN: TStringField;
    Qry_NOPurCfmGSBH: TStringField;
    Qry_NOPurCfmCKBH: TStringField;
    Qry_NOPurCfmDOCNO: TStringField;
    Qry_NOPurCfmMZSDH: TStringField;
    Qry_NOPurCfmMZSYWJC: TStringField;
    Qry_NOPurCfmPurConfirm: TStringField;
    DS_NOPurCfm: TDataSource;
    DBGridEh1: TDBGridEh;
    Qry_PurchaserNoCancel: TIntegerField;
    TabSheet1: TTabSheet;
    DBGridEh2: TDBGridEh;
    Qry_Purchaser_NoCancel: TQuery;
    StringField7: TStringField;
    DateTimeField4: TDateTimeField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    CurrencyField1: TCurrencyField;
    StringField13: TStringField;
    DS_Purchaser_NoCancel: TDataSource;
    Qry_Purchaser_NoCancelSEASON: TStringField;
    RadioGroup1: TRadioGroup;
    Noneedpurchase1: TMenuItem;
    Panel3: TPanel;
    Chk_ShowAll: TCheckBox;
    Qry_Purchaser_NOPurchaseNoNeedPur: TStringField;
    Edit_SeasonNew2: TEdit;
   // Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh8CellClick(Column: TColumnEh);
    procedure Excel1Click(Sender: TObject);
    procedure MenuPop_Purchaser_NoETDClick(Sender: TObject);
    procedure MenuPop_Purchaser_NoETAClick(Sender: TObject);
    procedure MenuPop_Purchaser_NoPurchaseClick(Sender: TObject);
    procedure Noneedpurchase1Click(Sender: TObject);
//    procedure Query1AfterScroll(DataSet: TDataSet);
 //   procedure FormDestroy(Sender: TObject);
  //  procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SamplePurchaseAnalysis: TSamplePurchaseAnalysis;
  NDate:TDate;
  ayear,amonth:string;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TSamplePurchaseAnalysis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TSamplePurchaseAnalysis.FormCreate(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    active:=false;
  end;
PageControl3.ActivePage:=TS_Empty;

end;

procedure TSamplePurchaseAnalysis.Button1Click(Sender: TObject);
var
   year,month,day:word;
begin

Qry_Purchaser_NOETD.Active:=false ;
Qry_Purchaser_NOETA.Active:=false ;
Qry_Purchaser_NOPurchase.Active:=false ;
Qry_Purchaser_NOPrice.Active:=false ;
Qry_Purchaser_NoCancel.Active:=false ;
Qry_NOPurCfm.Active:=false ;
Qry_MatChange.active:=false;  //Purchaser mistake

//第一頁 Purchaser
 with Qry_Purchaser do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#SamplePurchaseAnalysis'+''''+') is not null  ');
    sql.add(' begin   drop table #SamplePurchaseAnalysis end   ');
    sql.add(' if object_id('+''''+'tempdb..#SamplePurchaseAnalysis2'+''''+') is not null  ');
    sql.add(' begin   drop table #SamplePurchaseAnalysis2 end   ');

    sql.add('   select ZSZL.SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,ypzls.csbh,zszlyp.Zsywjc as ypzsjc ');
    sql.add('          ,CASE WHEN N.CLBH IS NULL THEN '''' ELSE ''NoNeed'' END  NoNeedPur     ');
    sql.add('   INTO #SamplePurchaseAnalysis  ');
    sql.add('   from ypzls   ');
    sql.add('   left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   left join (select Zsdh_TW,Max(ZSZL.ZSDH) as ZSDH from zszl where SamplePurchaser is not null and SamplePurchaser<>'''' group by Zsdh_TW  ');
    sql.add('              ) zszlSample on zszlSample.Zsdh_TW=ypzls.csbh ');
    sql.add('   left join zszl on zszl.ZSDH=zszlSample.ZSDH ');
    sql.add('   left join zszl zszlyp on zszlyp.ZSDH=ypzls.csbh ');
    sql.add('   left join clzl on clzl.cldh=ypzls.clbh ');
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=ypzls.clbh ');
    sql.add('   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=ypzls.clbh   ');
    sql.add('   left join (select ZLBH,CLBH,QTY from cgkcuse ');   //排除使用庫存
    sql.add('              where cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND ypzls.CLBH=da.CLBH ');
    sql.add('   left join (select BRS.ARTICLE,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('              where BRS.ReceiveNO=BR.ReceiveNO and BR.Stage IN (''PRO'',''SM2'',''SM3'',''SMU'' ) group by BRS.ARTICLE,BR.Stage');
    sql.add('              ) BR on ypzl.Article=BR.article AND ypzl.KFJD=BR.Stage ');
    sql.add('   where da.qty is null ');
    sql.add('         and BR.Article is not null ');
    sql.add('         and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=ypzl.article and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=ypzls.clbh ) ');
    sql.add('         and (kfxxzl.Jijie='''+Edit_Season.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew2.Text+''')');
    sql.add('         and ypzl.KFJD IN (''PRO'',''SM2'',''SM3'',''SMU'' ) ');
//    sql.add('         and EXISTS (SELECT BRS.ARTICLE FROM BOMReceiveS BRS,BOMReceive BR WHERE BRS.ReceiveNO=BR.ReceiveNO AND BRS.ARTICLE=ypzl.ARTICLE AND ypzl.KFJD=BR.Stage ) ');
    sql.add('         and zszlfilter.zsdh is null ');
    sql.add('         and clzlfilter.cldh is null ');
    sql.add('         and ypzls.clbh<> ''O040000031''');
    sql.add('         and clzl.clzmlb = ''N'' ');
    IF RadioGroup1.ItemIndex=0 then  //Sports
       sql.add('      and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Sports'' ');
    IF RadioGroup1.ItemIndex=1 then  //Originals
       sql.add('      and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Originals'' ');
    IF RadioGroup1.ItemIndex=2 then     //SMU
       sql.add('      and kfxxzl.DevType=''SMU''  ');
    if not Chk_ShowAll.Checked then
       sql.add('      and N.CLBH IS NULL   ');
    sql.add('   group by ZSZL.SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,ypzls.csbh ,zszlyp.Zsywjc,N.CLBH ');

    sql.add('   union all ');
    sql.add('   select ZSZL.SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 AS CLBH,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,CLZHZL.ZSDH as csbh ,zszlyp.Zsywjc as ypzsjc ');
    sql.add('          ,CASE WHEN N.CLBH IS NULL THEN '''' ELSE ''NoNeed'' END  NoNeedPur     ');
    sql.add('   from ypzls ');
    sql.add('   INNER JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.cldh ');
    sql.add('   left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   left join (select Zsdh_TW,Max(ZSZL.ZSDH) as ZSDH from zszl where SamplePurchaser is not null and SamplePurchaser<>'''' group by Zsdh_TW) zszlSample on zszlSample.Zsdh_TW=CLZHZL.ZSDH ');
    sql.add('   left join zszl on zszl.ZSDH=zszlSample.ZSDH ');
    sql.add('   left join zszl zszlyp on zszlyp.ZSDH=CLZHZL.ZSDH ');
    sql.add('   left join clzl on clzl.cldh=CLZHZL.CLDH1 ');
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 ');
    sql.add('   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=CLZHZL.CLDH1   ');
    sql.add('   left join (select ZLBH,CLBH,QTY from cgkcuse ');
    sql.add('              where cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH ');
    sql.add('   left join (select BRS.ARTICLE,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('              where BRS.ReceiveNO=BR.ReceiveNO and BR.Stage IN (''PRO'',''SM2'',''SM3'',''SMU'' ) group by BRS.ARTICLE,BR.Stage');
    sql.add('              ) BR on ypzl.Article=BR.article AND ypzl.KFJD=BR.Stage ');
    sql.add('   where da.qty is null                     ');
    sql.add('         and BR.Article is not null ');
    sql.add('         and (kfxxzl.Jijie='''+Edit_Season.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew2.Text+''')');
    sql.add('         and ypzl.KFJD IN (''PRO'',''SM2'',''SM3'',''SMU'' ) ');
//    sql.add('         and EXISTS (SELECT BRS.ARTICLE FROM BOMReceiveS BRS,BOMReceive BR WHERE BRS.ReceiveNO=BR.ReceiveNO AND BRS.ARTICLE=ypzl.ARTICLE AND ypzl.KFJD=BR.Stage ) ');
    sql.add('         and not exists (select ypzls.ypdh from ypzls ');
    sql.add('                         left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('                         left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('                         where  ypzl.KFJD IN (''PRO'',''SM2'',''SM3'',''SMU'' ) ');
    sql.add('                                and (kfxxzl.Jijie='''+Edit_Season.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew2.Text+''')');
    sql.add('                                AND YPZLS.CLBH=CLZHZL.CLDH1 ');
    sql.add('                         ) ');
    sql.add('         and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=kfxxzl.article and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 ) ');
    sql.add('         and CLZHZL.syl > 0 ');
    sql.add('         and zszlfilter.zsdh is null ');
    sql.add('         and clzlfilter.cldh is null ');
    sql.add('         and clzl.clzmlb = ''N'' ');
    IF RadioGroup1.ItemIndex=0 then  //Sports
       sql.add('      and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Sports'' ');
    IF RadioGroup1.ItemIndex=1 then  //Originals
       sql.add('      and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Originals'' ');
    IF RadioGroup1.ItemIndex=2 then  //SMU
       sql.add('      and kfxxzl.DevType=''SMU''  ');
    if not Chk_ShowAll.Checked then
       sql.add('      and N.CLBH IS NULL   ');
    sql.add('    group by ZSZL.SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 ,CLZL.YWPM,ypzl.KFJD,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,CLZHZL.ZSDH ,zszlyp.Zsywjc,N.CLBH');
    
    sql.add('  select DD.SamplePurchaser,COUNT(DD.SamplePurchaser) AS NoPurchase INTO #SamplePurchaseAnalysis2 ');
    sql.add('         from ( ');
    sql.add('               select ZSZL.SamplePurchaser,ypzls.clbh ');
    sql.add('               from ypzls ');
    sql.add('               left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('               left join (select Zsdh_TW,Max(ZSZL.ZSDH) as ZSDH from zszl where SamplePurchaser is not null and SamplePurchaser<>'''' group by Zsdh_TW) zszlSample on zszlSample.Zsdh_TW=ypzls.csbh ');
    sql.add('               left join zszl on zszl.ZSDH=zszlSample.ZSDH ');
    sql.add('               left join clzl on clzl.cldh=ypzls.clbh');
    sql.add('               left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
    sql.add('               left join clzlfilter on clzlfilter.cldh=ypzls.clbh');
    sql.add('               left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('               left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=ypzls.clbh   ');
    sql.Add('               left join (select ZLBH,CLBH,QTY from cgkcuse ');   //扣掉使用庫存的材料
    sql.Add('                          where cgkcuse.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add('                          ) da on ypzls.ypdh=da.zlbh AND ypzls.CLBH=da.CLBH ');
    sql.add('               left join (select BRS.ARTICLE,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('                          where BRS.ReceiveNO=BR.ReceiveNO and BR.Stage IN (''PRO'',''SM2'',''SM3'',''SMU'' ) group by BRS.ARTICLE,BR.Stage');
    sql.add('                          ) BR on ypzl.Article=BR.article AND ypzl.KFJD=BR.Stage ');
    sql.add('               where da.qty is null  ');
    sql.add('                     and BR.Article is not null ');
    sql.add('                     and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=kfxxzl.article and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=ypzls.clbh ) ');
    sql.add('                     and (kfxxzl.Jijie='''+Edit_Season.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew2.Text+''')');
    sql.add('                     and ypzl.KFJD IN (''PRO'',''SM2'',''SM3'',''SMU'' ) ');
    sql.add('                     and zszlfilter.zsdh is null');
    sql.add('                     and clzlfilter.cldh is null');
    sql.add('                     and ypzls.clbh<> ''O040000031''');
    sql.add('                     and clzl.clzmlb = ''N''');
    IF  RadioGroup1.ItemIndex=0 then  //Sports
        sql.add('                 and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Sports'' ');
    IF  RadioGroup1.ItemIndex=1 then  //Originals
        sql.add('                 and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Originals'' ');
    IF  RadioGroup1.ItemIndex=2 then  //SMU
        sql.add('                 and kfxxzl.DevType=''SMU''  ');
    if  not Chk_ShowAll.Checked then
        sql.add('                 and N.CLBH IS NULL   ');
    sql.Add('               group by ZSZL.SamplePurchaser,ypzls.clbh');

    sql.Add('               union all');
    sql.add('               select ZSZL.SamplePurchaser,CLZHZL.CLDH1 AS CLBH  from ypzls ');
    sql.Add('               INNER JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    sql.add('               left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('               left join (select Zsdh_TW,Max(ZSZL.ZSDH) as ZSDH from zszl where SamplePurchaser is not null and SamplePurchaser<>'''' group by Zsdh_TW) zszlSample on zszlSample.Zsdh_TW=CLZHZL.ZSDH ');
    sql.add('               left join zszl on zszl.ZSDH=zszlSample.ZSDH');
    sql.add('               left join clzl on clzl.cldh=CLZHZL.CLDH1');
    sql.add('               left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
    sql.add('               left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1');
    sql.add('               left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('               left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=CLZHZL.CLDH1   ');
    sql.Add('               left join (select ZLBH,CLBH,QTY from cgkcuse ');   //扣掉使用庫存的材料
    sql.Add('                          where cgkcuse.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add('                         ) da on ypzls.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH ');
    sql.add('               left join (select BRS.ARTICLE,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('                          where BRS.ReceiveNO=BR.ReceiveNO and BR.Stage IN (''PRO'',''SM2'',''SM3'',''SMU'' ) group by BRS.ARTICLE,BR.Stage');
    sql.add('                          ) BR on ypzl.Article=BR.article AND ypzl.KFJD=BR.Stage ');
    sql.add('               where da.qty is null ');
    sql.add('                     and BR.Article is not null ');
    sql.add('                     and (kfxxzl.Jijie='''+Edit_Season.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew2.Text+''')');
    sql.add('                     and ypzl.KFJD IN (''PRO'',''SM2'',''SM3'',''SMU'' ) ');
    sql.add('                     and not exists (select ypzls.ypdh from ypzls ');   //避免重複
    sql.add('                                     left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('                                     left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('                                     where 1=1 ');
    sql.add('                                           and (kfxxzl.Jijie='''+Edit_Season.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew.Text+''' OR kfxxzl.Jijie='''+Edit_SeasonNew2.Text+''')');
    sql.Add('                                           AND YPZLS.CLBH=CLZHZL.CLDH1 ');
    sql.Add('                                    )  ');
    sql.add('                     and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=kfxxzl.article and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 ) ');
    sql.Add('                     and CLZHZL.syl > 0');
    sql.add('                     and zszlfilter.zsdh is null');
    sql.add('                     and clzlfilter.cldh is null');
    sql.add('                     and clzl.clzmlb = ''N''');
    IF  RadioGroup1.ItemIndex=0 then  //Sports
        sql.add('                 and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Sports'' ');
    IF  RadioGroup1.ItemIndex=1 then  //Originals
        sql.add('                 and kfxxzl.DevType=''Inline'' AND kfxxzl.Category=''Originals'' ');
    IF  RadioGroup1.ItemIndex=2 then     //SMU
        sql.add('                 and kfxxzl.DevType=''SMU''  ');
    if  not Chk_ShowAll.Checked then
        sql.add('                 and N.CLBH IS NULL   ');
    sql.Add('               group by ZSZL.SamplePurchaser,CLZHZL.CLDH1 ');
    sql.add('              ) DD  ');
    sql.add('               GROUP BY DD.SamplePurchaser ');



    sql.add('select  ZSZL.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name ');
    sql.add('        ,A.NoETD as NoETD ');
    sql.add('        ,C.NoETA as NoETA ');
    sql.add('        ,D.NoPurchase as NoPurchase ');
    sql.add('        ,E.NoPurCfm as NoPurCfm ');
    sql.add('        ,F.NoMOQ as NoMOQ ');
    sql.add('        ,G.NoQ_Price as NoQ_Price ');
    sql.add('        ,H.NoCancel as NoCancel ');
    sql.add('    from ZSZL ');
    sql.add('    left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser ');
    sql.add('    left join (select ZSZL.SamplePurchaser,COUNT(*) AS NoETD ');
    sql.add('                     from CGZLS ');
    sql.add('                     left join CGZL ON CGZL.CGNO=CGZLS.CGNO ');
    sql.add('                     left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     WHERE LEFT(CGZLS.CLBH,1)<>''V'' AND CGZL.PURPOSE<>''PDT'' and CGZLS.qty>0 and CGZL.CGLX=''6'' ');
    sql.add('                           AND CGZLS.CFMDate IS NULL and CGZL.CGDate>''2010/12/1'' and CGZL.CGDate+3<getdate() ');
    sql.add('                     GROUP BY ZSZL.SamplePurchaser ');
    sql.add('              ) A on A.SamplePurchaser = ZSZL.SamplePurchaser ');
    sql.add('    left join (select ZSZL.SamplePurchaser,COUNT(ZSZL.SamplePurchaser) AS NoETA ');
    sql.add('                     from CGZLS ');
    sql.add('                     left join CGZL ON CGZL.CGNO=CGZLS.CGNO ');
    sql.add('                     left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     left join CGZLInvoiceS on CGZLS.CLBH=CGZLInvoiceS.CLBH and CGZLS.CGNO=CGZLInvoiceS.CGNO ');
    sql.add('                     left join CGZLInvoice on CGZLInvoiceS.CINO=CGZLInvoice.CINO ');
    sql.add('                     WHERE LEFT(CGZLS.CLBH,1)<>''V'' AND CGZL.PURPOSE<>''PDT'' and CGZLS.qty>0 and CGZL.CGLX=''6'' ');
    sql.add('                           AND CGZLInvoice.ETA IS NULL and CGZLS.CFMDate+3<getdate() and CGZL.CGDate>''2010/12/1''   ');
    sql.add('                     GROUP BY ZSZL.SamplePurchaser ');
    sql.add('              ) C on C.SamplePurchaser = ZSZL.SamplePurchaser ');

    sql.add('    left join #SamplePurchaseAnalysis2 D on D.SamplePurchaser = ZSZL.SamplePurchaser ');

    sql.add('    left join (select ZSZL.SamplePurchaser,COUNT(*) AS NoPurCfm from KCRK');
    sql.Add('                left join zszl on zszl.zsdh=KCRK.ZSBH ');
    sql.add('                where KCRK.USERDATE>''2011/08/31'' and KCRK.USERDATE+5<getdate() and isnull(PurConfirm,'''')<>''Y'' and CFMID=''NO''  AND CKBH='''+main.Edit2.Text+''' ');
    sql.add('                GROUP BY ZSZL.SamplePurchaser ');
    sql.add('              ) E on E.SamplePurchaser = ZSZL.SamplePurchaser ');

    sql.add('    left join (select ZSZL.SamplePurchaser,COUNT(*) AS NoMOQ from ');
    sql.add('                ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH from CGZLS,CGZL ');
    sql.add('                  where  LEFT(CGZLS.CLBH,1)<>''V'' AND LEFT(CGZLS.CLBH,1)<>''T'' AND CGZl.CGNO=CGZLS.CGNO ');
    sql.add('                         and (CGZL.SEASON='''+Edit_Season.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew2.Text+''')');
    sql.add('                         AND CGZL.CGLX=''6'' and CGZL.PURPOSE<>''PDT'' and CGZLS.Qty>0  ');
    sql.add('                  group by CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH ');
    sql.add('                ) CG  ');
    sql.Add('                left join zszl on zszl.zsdh=CG.ZSBH ');
    sql.add('                left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('                where (MaterialMOQ.ProdLeadTime is null or MaterialMOQ.Location IS NULL ) ');
    sql.add('                GROUP BY ZSZL.SamplePurchaser ');
    sql.add('              ) F on F.SamplePurchaser = ZSZL.SamplePurchaser ');

    sql.add('    left join (select ZSZL.SamplePurchaser,COUNT(*) AS NoQ_Price from ');
    sql.add('                ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH from CGZLS,CGZL ');
    sql.add('                  where  LEFT(CGZLS.CLBH,1)<>''V'' AND LEFT(CGZLS.CLBH,1)<>''T'' AND CGZl.CGNO=CGZLS.CGNO ');
    sql.add('                         and (CGZL.SEASON='''+Edit_Season.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew2.Text+''')');
    sql.add('                         AND CGZL.CGLX=''6'' and CGZL.PURPOSE<>''PDT'' and CGZLS.Qty>0  ');
    sql.add('                  group by CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH ');
    sql.add('                ) CG  ');
    sql.Add('                left join zszl on zszl.zsdh=CG.ZSBH ');
    sql.add('                left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('                where (isnull(MaterialMOQ.SamplePrice,0)=0 and isnull(MaterialMOQ.SamplePriceVN,0)=0 ) ');
    sql.add('                GROUP BY ZSZL.SamplePurchaser ');
    sql.add('              ) G on G.SamplePurchaser = ZSZL.SamplePurchaser ');

    sql.add('    left join (select ZSZL.SamplePurchaser,COUNT(*) AS NoCancel ');
    sql.add('                     from CGZLS ');
    sql.add('                     left join CGZL ON CGZL.CGNO=CGZLS.CGNO ');
    sql.add('                     left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     WHERE CGZL.PURPOSE<>''PDT'' and CGZLS.qty>0 and CGZL.CGLX=''6'' ');
    sql.add('                           and CGZL.CGDate>''2011/07/1'' and CGZL.CGDate+30<getdate() ');
    sql.add('                           and CGZLS.CLBH<>''TX01000237'' AND CGZLS.CLBH<>''TX01000241''  ');
    sql.add('                           and not exists (select * from kcrks where kcrks.clbh=CGZLS.CLBH and kcrks.CGBH=CGZLS.CGNO and RKSB=''VN'' ) ');
    sql.add('                     GROUP BY ZSZL.SamplePurchaser ');
    sql.add('              ) H on H.SamplePurchaser = ZSZL.SamplePurchaser ');

    sql.add('       WHERE ISNULL(ZSZL.SamplePurchaser,'''')<>'''' ');
    sql.add('       group by ZSZL.SamplePurchaser,BUSERS.USERNAME,A.NoETD,C.NoETA,D.NoPurchase,E.NoPurCfm,F.NoMOQ,G.NoQ_Price,H.NoCancel   ');

    sql.Add('union all');
    sql.add('select  ''New''  as SamplePurchaser,''Supplier'' as SamplePurchaser_Name ');
    sql.add('        ,null as NoETD ');
    sql.add('        ,null as NoETA ');
    sql.add('        ,count(E.SamplePurchaser) as NoPurchase ');
    sql.add('        ,null as NoPurCfm ');
    sql.add('        ,null as NoMOQ ');
    sql.add('        ,null as NoQ_Price ');
    sql.add('        ,null as NoCancel ');
    sql.add('    from ( SELECT SamplePurchaser FROM #SamplePurchaseAnalysis2 WHERE SamplePurchaser='''' ');
    sql.add('         ) E  ');
    funcObj.WriteErrorLog(sql.Text);
    Active := True;
  end;
  Qry_Purchaser_NOETD.Active:=True ;
  Qry_Purchaser_NOETA.Active:=True ;
  Qry_NOPurCfm.Active:=True ;
  Qry_Purchaser_NoCancel.Active:=True ;
  Qry_MatChange.active:=true;  //Purchaser mistake

  Qry_Purchaser_NOPurchase.Active:=false ;
 with Qry_Purchaser_NOPurchase do
  begin
    active:=false;
    sql.clear;
    sql.add(' select * FROM  #SamplePurchaseAnalysis WHERE isnull(SamplePurchaser,'''')=:SamplePurchaser   ');
    Active := True;
  end;

 Qry_Purchaser_NOMOQ.Active:=false ;
 with Qry_Purchaser_NOMOQ do
  begin
    active:=false;
    sql.clear;
    sql.add('select CG.SEASON,CG.CLBH,CG.ZSBH,CLZL.YWPM,CLZL.DWBH,CG.ZSYWJC, ');
    sql.add('       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,');
    sql.add('       MaterialMOQ.REMARK,MaterialMOQ.Location');
    sql.add('from ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC from CGZLS ');
    sql.add('       left join CGZL on CGZl.CGNO=CGZLS.CGNO  ');
    sql.Add('       left join zszl on zszl.zsdh=CGZL.ZSBH ');
    sql.add('       where LEFT(CGZLS.CLBH,1)<>''V''  AND LEFT(CGZLS.CLBH,1)<>''T''  ');
    sql.add('                AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
    sql.add('                and (CGZL.SEASON='''+Edit_Season.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew2.Text+''')');
    sql.add('                and ZSZL.SamplePurchaser=:SamplePurchaser  ');
    sql.add('        group by CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC ) CG  ');
    sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
    sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('where ( MaterialMOQ.ProdLeadTime is null or MaterialMOQ.Location IS NULL ) ');
    Active := True;
  end;

 Qry_Purchaser_NOPrice.Active:=false ;
 with Qry_Purchaser_NOPrice do
  begin
    active:=false;
    sql.clear;
    sql.add('select CG.SEASON,CG.CLBH,CG.ZSBH,CLZL.YWPM,CLZL.DWBH,CG.ZSYWJC, ');
    sql.add('       MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN');
    sql.add('from ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC from CGZLS ');
    sql.add('       left join CGZL on CGZl.CGNO=CGZLS.CGNO  ');
    sql.Add('       left join zszl on zszl.zsdh=CGZL.ZSBH ');
    sql.add('       where LEFT(CGZLS.CLBH,1)<>''V'' AND LEFT(CGZLS.CLBH,1)<>''T'' ');
    sql.add('                AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
    sql.add('                and (CGZL.SEASON='''+Edit_Season.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew.Text+''' OR CGZL.SEASON='''+Edit_SeasonNew2.Text+''')');
    sql.add('                and ZSZL.SamplePurchaser=:SamplePurchaser  ');
    sql.add('        group by CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC ) CG  ');
    sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
    sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('where (isnull(MaterialMOQ.SamplePrice,0)=0 and isnull(MaterialMOQ.SamplePriceVN,0)=0 ) ');
    Active := True;
  end;


{
with Qry_Policy do
  begin
    active:=false;
    sql.clear;
    sql.add('select '''+Edit_SeasonNew.Text+''' as Season  ');
    sql.add('      ,zszlSamplePayment.CR1_FreeQty  ');
    sql.add('      ,zszlSamplePayment.CR2_FreeQty  ');
    sql.add('      ,zszlSamplePayment.Presell_FreeQty  ');
    sql.add('      ,zszlSamplePayment.SMS_FreeQty  ');
    sql.add('      ,zszlSamplePayment.PT_FreeQty  ');
    sql.add('      ,zszlSamplePayment.CR1_Charge  ');
    sql.add('      ,zszlSamplePayment.CR2_Charge  ');
    sql.add('      ,zszlSamplePayment.Presell_Charge  ');
    sql.add('      ,zszlSamplePayment.SMS_Charge  ');
    sql.add('      ,zszlSamplePayment.PT_Charge  ');
    sql.add('      ,zszlSamplePayment.CR1  ');
    sql.add('      ,zszlSamplePayment.CR2  ');
    sql.add('      ,zszlSamplePayment.Presell  ');
    sql.add('      ,zszlSamplePayment.SMS  ');
    sql.add('      ,zszlSamplePayment.PT  ');
    sql.add('      ,zszlSamplePayment.EffectiveDate  ');
    sql.add('      ,zszlSamplePayment.EffectiveDate as EffectiveDate_OLD ');
    sql.add('      ,zszlSamplePayment.USERID  ');
    sql.add('      ,zszlSamplePayment.USERDATE  ');
    sql.add('      ,ZSZL.zsdh,ZSZL.ZSYWJC,ZSZL.style,BUSERS.USERNAME as SamplePurchaser_Name,ZSZL.Country ');
    sql.add('from ZSZL ');
    sql.add('left join (select * from zszlSamplePayment ');
    sql.add('           where 1=1 ');
    sql.add('                and zszlSamplePayment.Season='''+Edit_SeasonNew.Text+'''');
    sql.add('           ) zszlSamplePayment on ZSZL.zsdh=zszlSamplePayment.zsdh');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser  ');
    sql.add('where   (zszlSamplePayment.CR1_FreeQty is null or zszlSamplePayment.CR1_Charge IS NULL )   ');
    sql.add('       and exists ( select CGZLS.CGNO from CGZLS,CGZL ');
    sql.add('                        where  LEFT(CGZLS.CLBH,1)<>''V'' AND CGZl.CGNO=CGZLS.CGNO and CGZL.PURPOSE<>''PDT'' ');
    sql.add('                              AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
    sql.add('                              and CGZl.Season='''+Edit_SeasonNew.Text+'''');
    sql.add('                              and CGZL.ZSBH=ZSZL.zsdh ) ');
    sql.add('       and isnull(ZSZL.SamplePurchaser,'''')=:SamplePurchaser  ');
    sql.add('       and YN=''2'' ');  //越南輸入的廠商資料
    sql.add('order by ZSYWJC');
    active:=true;
  end;
}

end;

procedure TSamplePurchaseAnalysis.FormDestroy(Sender: TObject);
begin
  SamplePurchaseAnalysis:=nil;
end;

procedure TSamplePurchaseAnalysis.DBGridEh8CellClick(Column: TColumnEh);
begin
 if  Column.FieldName='NoETD' then
     PageControl3.ActivePageIndex:=1 ;
 if  Column.FieldName='NoQ_Price' then
     PageControl3.ActivePageIndex:=2 ;
 if  Column.FieldName='NoETA' then
     PageControl3.ActivePageIndex:=3 ;
 if  Column.FieldName='NoPurchase' then
     PageControl3.ActivePageIndex:=4 ;
 if  Column.FieldName='NoMOQ' then
     PageControl3.ActivePageIndex:=5 ;
 if  Column.FieldName='NoPurCfm' then
     PageControl3.ActivePageIndex:=6 ;
 if  Column.FieldName='NoCancel' then
     PageControl3.ActivePageIndex:=7 ;

 if  (Column.FieldName='SamplePurchaser') or (Column.FieldName='SamplePurchaser_Name') then
     PageControl3.ActivePageIndex:=0 ;
end;

procedure TSamplePurchaseAnalysis.Excel1Click(Sender: TObject);
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

procedure TSamplePurchaseAnalysis.MenuPop_Purchaser_NoETDClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh9  ;

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

procedure TSamplePurchaseAnalysis.MenuPop_Purchaser_NoETAClick(
  Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh11  ;

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

procedure TSamplePurchaseAnalysis.MenuPop_Purchaser_NoPurchaseClick(
  Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
tdbgh := DBGridEh12  ;

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

procedure TSamplePurchaseAnalysis.Noneedpurchase1Click(Sender: TObject);
begin


if Qry_Purchaser_NOPurchase.fieldbyname('clbh').AsString<>'' then
   begin
     if messagedlg('Are you sure no need to purchase?',mtinformation,[mbYes,mbNo],0)=mrYes then
       begin
         try
          with Query2 do
             begin
               active:=false;
                  sql.Clear;
                  sql.Add(' select * from YPZL_NoNeedPur ');
                  sql.Add('  where Article='''+Qry_Purchaser_NOPurchase.fieldbyname('Article').AsString+'''');
                  sql.Add('        and KFJD='''+Qry_Purchaser_NOPurchase.fieldbyname('KFJD').AsString+'''');
                  sql.Add('        and CLBH='''+Qry_Purchaser_NOPurchase.fieldbyname('clbh').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert YPZL_NoNeedPur (Article');
                    sql.Add(',KFJD');
                    sql.Add(',CLBH');
                    sql.Add(',userID,userdate  ');
                    sql.Add(') values (');
                    sql.Add(''''+Qry_Purchaser_NOPurchase.fieldbyname('Article').AsString+'''');
                    sql.Add(','''+Qry_Purchaser_NOPurchase.fieldbyname('KFJD').AsString+'''');
                    sql.Add(','''+Qry_Purchaser_NOPurchase.fieldbyname('CLBH').AsString+'''');
                    sql.Add(','''+main.edit1.text+'''');
                    sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.Add(')');
                    execsql;
                  end
             end;
           showmessage('Succeed.');
           Qry_Purchaser_NOPurchase.active:=false;
           Qry_Purchaser_NOPurchase.active:=true;
         except
           showmessage('Have wrong.');
         end;
       end ;
   end;


end;

end.
