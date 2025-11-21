unit SampleSupplierAnalysis1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,comobj,
  Dateutils,ehlibBDE, GridsEh, DBGridEh, DBCtrls, TeeProcs, TeEngine, Chart,
  TeeFunci, Series, DbChart, Mask, Menus,ShellAPI,DBGridEhImpExp, jpeg,
  Buttons;

type
  TSampleSupplierAnalysis = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    TempQuery: TQuery;
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
    Qry_Purchaser_NOETAINVOICE: TStringField;
    Qry_Purchaser_NOETDSTAGE: TStringField;
    Qry_Purchaser_NOETASTAGE: TStringField;
    SaveDialog1: TSaveDialog;
    Shape1: TShape;
    Label1: TLabel;
    Edit_Stage: TEdit;
    Qry_PurchaserNoMOQ: TIntegerField;
    Qry_Purchaser_NOMOQ: TQuery;
    DS_Purchaser_NoMOQ: TDataSource;
    Splitter4: TSplitter;
    PageControl3: TPageControl;
    TS_Empty: TTabSheet;
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
    Panel3: TPanel;
    Edit_Season: TEdit;
    Label2: TLabel;
    Image1: TImage;
    Label11: TLabel;
    Cb_DevTP: TComboBox;
    Button2: TButton;
    Chk_Usg: TCheckBox;
    Qry_Purchaser_NOPurchaseZSDH: TStringField;
    Qry_Purchaser_NOPurchasezsjc: TStringField;
    Qry_Purchaser_NOPurchaseclbh: TStringField;
    Qry_Purchaser_NOPurchaseYWPM: TStringField;
    Qry_Purchaser_NOPurchaseKFJD: TStringField;
    Qry_Purchaser_NOPurchaseYPDH: TStringField;
    Qry_Purchaser_NOPurchaseArticle: TStringField;
    Qry_Purchaser_NOPurchaseFD: TStringField;
    Qry_Purchaser_NOPurchaseJiJie: TStringField;
    Qry_Purchaser_NOPurchaseCSBH: TStringField;
    Qry_Purchaser_NOPurchaseypzsjc: TStringField;
    Qry_Purchaser_NOPurchaseNoNeedPur: TStringField;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
   // Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh8CellClick(Column: TColumnEh);
    procedure Qry_PurchaserBeforeScroll(DataSet: TDataSet);
    procedure DBGridEh12CellClick(Column: TColumnEh);
    procedure DBGridEh9CellClick(Column: TColumnEh);
    procedure DBGridEh11CellClick(Column: TColumnEh);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure Button2Click(Sender: TObject);
  private
     SelectedDBGrid:TDBGridEh;  
    { Private declarations }
    procedure ExportExcel();
    procedure ExportAllETD();
  public
    { Public declarations }
  end;

var
  SampleSupplierAnalysis: TSampleSupplierAnalysis;
  NDate:TDate;
  ayear,amonth:string;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TSampleSupplierAnalysis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TSampleSupplierAnalysis.FormCreate(Sender: TObject);
begin
with TempQuery do
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

procedure TSampleSupplierAnalysis.Button1Click(Sender: TObject);
var
   year,month,day:word;
begin
  if ((Edit_Season.Text='') or (Edit_Stage.Text='')) then
  begin
    Showmessage('Please Input Season and Stage');
    Exit;
  end;
  Qry_Purchaser_NOETD.Active:=false ;
  Qry_Purchaser_NOETA.Active:=false ;
  Qry_Purchaser_NOPurchase.Active:=false ;
  Qry_Purchaser_NOMOQ.Active:=false;
  Qry_Purchaser_NOPrice.Active:=false ;
  //第一頁 Purchaser
  with Qry_Purchaser do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#SampleSupplierAnalysis'+''''+') is not null  ');
    sql.add(' begin   drop table #SampleSupplierAnalysis end   ');
    sql.add(' if object_id('+''''+'tempdb..#SampleSupplierAnalysis2'+''''+') is not null  ');
    sql.add(' begin   drop table #SampleSupplierAnalysis2 end   ');
    //尚未採購明細
    sql.add('   select case when ZSZL.ZSDH='''' or ZSZL.ZSDH is null then ''Empty'' else ZSZL.ZSDH end as ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,');
    sql.add('          case when ypzls.csbh='''' or ypzls.csbh is null then ''Empty'' else ypzls.csbh end as CSBH,ZSZL.Zsywjc as ypzsjc ');
    sql.add('          ,Max(da.memo) as NoNeedPur     ');
    sql.add('   INTO #SampleSupplierAnalysis  ');
    sql.add('   from ypzls   ');
    //sql.add('   left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    //sql.add('   left join (select ZSDH,Max(ZSZL.ZSDH_TW) as ZSDH_TW from zszl group by Zsdh) zszlSample on zszlSample.ZSDH=ypzls.csbh ');
    //sql.add('   left join zszl on zszl.ZSDH=zszlSample.ZSDH_TW ');
    //sql.add('   left join zszl zszlyp on zszlyp.ZSDH=ypzls.csbh ');
    sql.add('   inner join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   inner join clzl on clzl.cldh=ypzls.clbh ');
    //20150523
    sql.add('     left join zszl on zszl.ZSDH=ypzls.csbh ');
    //
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('   left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=ypzls.clbh   ');
    sql.add('   left join (select ZLBH,CLBH,QTY,memo from cgkcuse ');   //排除使用庫存
    sql.add('              where cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND ypzls.CLBH=da.CLBH ');
    sql.add('   left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('              where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+''' and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'') group by BRS.YPDH,BR.Stage');
    sql.add('              ) BR on ypzl.YPDH=BR.YPDH AND ypzl.KFJD=BR.Stage ');
    sql.add('   where IsNull(da.qty,0)=0 and ypzl.GSDH='''+main.Edit2.Text+''' ');
    if Chk_Usg.Checked=false then
    sql.add('         and ypzls.CLSL>0 ');
    sql.add('         and BR.YPDH is not null ');
    sql.add('         and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=ypzls.clbh ) ');
    sql.add('         and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('         and ypzl.KFJD ='''+Edit_Stage.Text+''' ');
    sql.add('         and zszlfilter.zsdh is null ');
    sql.add('         and clzlfilter.cldh is null ');
    sql.add('         and clzl.clzmlb = ''N'' ');
    IF Cb_DevTP.Text<>'' then
       sql.add('      and kfxxzl.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('   group by ZSZL.ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,ypzls.csbh ,ZSZL.Zsywjc ');
    sql.add('   union all ');
    sql.add('   select case when ZSZL.ZSDH='''' or ZSZL.ZSDH is null then ''Empty'' else ZSZL.ZSDH end as ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 AS CLBH,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,');
    sql.add('   case when CLZHZL.ZSDH='''' or CLZHZL.ZSDH is null then ''Empty'' else CLZHZL.ZSDH end as CSBH,ZSZL.Zsywjc as ypzsjc ');
    sql.add('          ,Max(da.memo) as NoNeedPur     ');
    sql.add('   from ypzls ');
    sql.add('   INNER JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.cldh ');
    sql.add('   INNER join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   INNER join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   INNER join clzl on clzl.cldh=CLZHZL.CLDH1 ');
    //20150523
    sql.add('     left join zszl on zszl.ZSDH=CLZHZL.ZSDH ');
    //
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('   left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=CLZHZL.CLDH1   ');
    sql.add('   left join (select ZLBH,CLBH,QTY,memo from cgkcuse ');
    sql.add('              where cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH ');
    sql.add('   left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('              where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+''' and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'') group by BRS.YPDH,BR.Stage');
    sql.add('              ) BR on ypzl.YPDH=BR.YPDH AND ypzl.KFJD=BR.Stage ');
    sql.add('   where IsNull(da.qty,0)=0  and ypzl.GSDH='''+main.Edit2.Text+'''   ');
    if Chk_Usg.Checked=false then
    sql.add('         and ypzls.CLSL>0 ');
    sql.add('         and BR.YPDH is not null ');
    sql.add('         and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('         and ypzl.KFJD ='''+Edit_Stage.Text+''' ');
    sql.add('         and not exists (select ypzls.ypdh from ypzls ');
    sql.add('                         left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('                         left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('                         where  ypzl.KFJD ='''+Edit_Stage.Text+''' ');
    sql.add('                                and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('                                AND YPZLS.CLBH=CLZHZL.CLDH1 ');
    sql.add('                         ) ');
    sql.add('         and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 ) ');
    sql.add('         and CLZHZL.syl > 0 ');
    sql.add('         and zszlfilter.zsdh is null ');
    sql.add('         and clzlfilter.cldh is null ');
    sql.add('         and clzl.clzmlb = ''N'' ');
    IF Cb_DevTP.Text<>'' then
       sql.add('      and kfxxzl.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('    group by ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 ,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie,CLZHZL.ZSDH ,ZSZL.Zsywjc');

    //主畫面使用 尚未採購統計
    sql.add('  select DD.ZSDH,COUNT(DD.clbh) AS NoPurchase INTO #SampleSupplierAnalysis2 ');
    sql.add('         from ( ');
    sql.add('               select case when ZSZL.ZSDH='''' or ZSZL.ZSDH is null then ''Empty'' else ZSZL.ZSDH end as ZSDH,ypzls.clbh ');
    sql.add('               from ypzls ');
    sql.add('               inner join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('               inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('               inner join clzl on clzl.cldh=ypzls.clbh');
    //20150523
    sql.add('               left join zszl on zszl.ZSDH=ypzls.csbh ');
    sql.add('               left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('               left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    //sql.add('               left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=ypzls.clbh   ');
    sql.Add('               left join (select ZLBH,CLBH,QTY from cgkcuse ');   //扣掉使用庫存的材料
    sql.Add('                          where cgkcuse.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add('                          ) da on ypzls.ypdh=da.zlbh AND ypzls.CLBH=da.CLBH ');
    sql.add('               left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('                          where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+'''  and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'') group by BRS.YPDH,BR.Stage');
    sql.add('                          ) BR on ypzl.YPDH=BR.YPDH AND ypzl.KFJD=BR.Stage ');
    sql.add('               where IsNull(da.qty,0)=0 and ypzl.GSDH='''+main.Edit2.Text+'''  ');
    if Chk_Usg.Checked=false then
    sql.add('                     and ypzls.CLSL>0 ');
    sql.add('                     and BR.YPDH is not null ');
    sql.add('                     and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=ypzls.clbh ) ');
    sql.add('                     and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('                     and ypzl.KFJD ='''+Edit_Stage.Text+'''');
    sql.add('                     and zszlfilter.zsdh is null');
    sql.add('                     and clzlfilter.cldh is null');
    sql.add('                     and clzl.clzmlb = ''N''');
    IF Cb_DevTP.Text<>'' then
       sql.add('      and kfxxzl.DevType='''+Cb_DevTP.Text+''' ');
    sql.Add('               group by ZSZL.ZSDH,kfxxzl.JiJie,YPZL.KFJD,ypzl.YPDH,Kfxxzl.article,ypzls.clbh');
    sql.Add('               union all');
    sql.add('               select case when ZSZL.ZSDH='''' or ZSZL.ZSDH is null then ''Empty'' else ZSZL.ZSDH end as ZSDH,CLZHZL.CLDH1 AS CLBH  from ypzls ');
    sql.Add('               INNER JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    sql.add('               inner join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('               inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('               INNER join clzl on clzl.cldh=CLZHZL.CLDH1');
    //20150523
    sql.add('               left join zszl on zszl.ZSDH=CLZHZL.ZSDH ');
    //
    sql.add('               left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('               left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('               left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=CLZHZL.CLDH1   ');
    sql.Add('               left join (select ZLBH,CLBH,QTY from cgkcuse ');   //扣掉使用庫存的材料
    sql.Add('                          where cgkcuse.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add('                         ) da on ypzls.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH ');
    sql.add('               left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('                          where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+'''  and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'') group by BRS.YPDH,BR.Stage');
    sql.add('                          ) BR on ypzl.YPDH=BR.YPDH AND ypzl.KFJD=BR.Stage ');
    sql.add('               where IsNull(da.qty,0)=0 and ypzl.GSDH='''+main.Edit2.Text+'''  ');
    if Chk_Usg.Checked=false then
    sql.add('                     and ypzls.CLSL>0 ');
    sql.add('                     and BR.YPDH is not null ');
    sql.add('                     and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('                     and ypzl.KFJD ='''+Edit_Stage.Text+'''');
    sql.add('                     and not exists (select ypzls.ypdh from ypzls ');   //避免重複
    sql.add('                                     left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('                                     left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('                                     where ypzl.KFJD ='''+Edit_Stage.Text+''' ');
    sql.add('                                           and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.Add('                                           AND YPZLS.CLBH=CLZHZL.CLDH1 ');
    sql.Add('                                    )  ');
    sql.add('                     and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 ) ');
    sql.Add('                     and CLZHZL.syl > 0');
    sql.add('                     and zszlfilter.zsdh is null');
    sql.add('                     and clzlfilter.cldh is null');
    sql.add('                     and clzl.clzmlb = ''N''');
    IF Cb_DevTP.Text<>'' then
       sql.add('      and kfxxzl.DevType='''+Cb_DevTP.Text+''' ');
    sql.Add('               group by ZSZL.ZSDH,kfxxzl.JiJie,YPZL.KFJD,ypzl.YPDH,Kfxxzl.article,CLZHZL.CLDH1 ');
    sql.add('              ) DD  ');
    sql.add('               GROUP BY DD.ZSDH ');
    //主畫面SQL
    sql.add('select  ZSZL.ZSDH,ZSZL.ZSYWJC+''(''+ZSZL.ZSJC+'')'' as Supplier_Name ');
    sql.add('        ,A.NoETD as NoETD ');
    sql.add('        ,C.NoETA as NoETA ');
    sql.add('        ,D.NoPurchase as NoPurchase ');
    sql.add('        ,F.NoMOQ as NoMOQ ');
    sql.add('        ,G.NoQ_Price as NoQ_Price ');
    sql.add('    from ZSZL ');
    sql.add('    left join (select ZSZL.ZSDH,COUNT(CGZLS.CLBH) AS NoETD ');
    sql.add('                     from CGZLS ');
    sql.add('                     left join CGZL ON CGZL.CGNO=CGZLS.CGNO ');
    sql.add('                     left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     WHERE CGZL.PURPOSE ='''+Edit_Stage.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.CGLX=''6'' ');
    sql.add('                           AND CGZLS.CFMDate IS NULL  and CGZL.CGDate+3<getdate() ');
    IF Cb_DevTP.Text<>'' then
       sql.add('                        AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('                     GROUP BY ZSZL.ZSDH ');
    sql.add('              ) A on A.ZSDH = ZSZL.ZSDH ');
    sql.add('    left join (select ZSZL.ZSDH,COUNT(CGZLS.CLBH) AS NoETA ');
    sql.add('                     from CGZLS ');
    sql.add('                     left join CGZL ON CGZL.CGNO=CGZLS.CGNO ');
    sql.add('                     left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     left join CGZLInvoiceS on CGZLS.CLBH=CGZLInvoiceS.CLBH and CGZLS.CGNO=CGZLInvoiceS.CGNO ');
    sql.add('                     left join CGZLInvoice on CGZLInvoiceS.CINO=CGZLInvoice.CINO ');
    sql.add('                     WHERE CGZL.PURPOSE ='''+Edit_Stage.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.CGLX=''6'' ');
    IF Cb_DevTP.Text<>'' then
       sql.add('                        AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('                           AND CGZLInvoice.ETA IS NULL and CGZLS.CFMDate+3<getdate()  ');
    sql.add('                     GROUP BY ZSZL.ZSDH ');
    sql.add('              ) C on C.ZSDH = ZSZL.ZSDH ');

    sql.add('    left join #SampleSupplierAnalysis2 D on D.ZSDH = ZSZL.ZSDH ');

    sql.add('    left join (select ZSZL.ZSDH,COUNT(*) AS NoMOQ from ');
    sql.add('                ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH from CGZLS,CGZL ');
    sql.add('                  where  CGZL.CGLX=''6'' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.PURPOSE ='''+Edit_Stage.Text+'''   ');
    IF Cb_DevTP.Text<>'' then
       sql.add('                      AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('                         and CGZl.CGNO=CGZLS.CGNO ');
    sql.add('                  group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH ');
    sql.add('                ) CG  ');
    sql.Add('                left join zszl on zszl.zsdh=CG.ZSBH ');
    sql.add('                left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('                where (IsNull(MaterialMOQ.ProdLeadTime,'''')=''''  or IsNull(MaterialMOQ.Location,'''')='''' ) ');
    sql.add('                GROUP BY ZSZL.ZSDH ');
    sql.add('              ) F on F.ZSDH = ZSZL.ZSDH ');

    sql.add('    left join (select ZSZL.ZSDH,COUNT(*) AS NoQ_Price from ');
    sql.add('                ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH from CGZLS,CGZL ');
    sql.add('                         where CGZL.CGLX=''6'' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.PURPOSE ='''+Edit_Stage.Text+'''   ');
    IF Cb_DevTP.Text<>'' then
       sql.add('                      AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('                         and LEFT(CGZLS.CLBH,1)<>''V''  AND CGZl.CGNO=CGZLS.CGNO ');
    sql.add('                  group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH ');
    sql.add('                ) CG  ');
    sql.Add('                left join zszl on zszl.zsdh=CG.ZSBH ');
    sql.add('                left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('                where (isnull(MaterialMOQ.SamplePrice,0)=0 and isnull(MaterialMOQ.SamplePriceVN,0)=0 ) ');
    sql.add('                GROUP BY ZSZL.ZSDH ');
    sql.add('              ) G on G.ZSDH = ZSZL.ZSDH ');

    sql.add('       WHERE ZSZL.ZSDH<>'''' and (A.NoETD is not null) or (C.NoETA is not null) or (D.NoPurchase is not null) or (F.NoMOQ is not null) or (G.NoQ_Price is not null) ');
    sql.add('       group by ZSZL.ZSDH,ZSZL.ZSYWJC,ZSZL.ZSJC,A.NoETD,C.NoETA,D.NoPurchase,F.NoMOQ,G.NoQ_Price  ');

    sql.Add('union all');
    sql.add('select  ''Empty''  as SamplePurchaser,''Empty'' as Supplier_Name ');
    sql.add('        ,null as NoETD ');
    sql.add('        ,null as NoETA ');
    sql.add('        ,E.NoPurchase ');
    sql.add('        ,null as NoMOQ ');
    sql.add('        ,null as NoQ_Price ');
    sql.add('    from ( SELECT NoPurchase FROM #SampleSupplierAnalysis2 WHERE ZSDH=''Empty'' ');
    sql.add('         ) E  ');
    Active := True;
  end;


  //20150117無採購明細列表
  with Qry_Purchaser_NOPurchase do
  begin
    active:=false;
    sql.clear;
    sql.add(' select * FROM  #SampleSupplierAnalysis WHERE CSBH=:ZSDH   ');
  end;
  //NoETD
  with Qry_Purchaser_NOETD do
  begin
    active:=false;
    SQL.clear;
    SQL.Add('        select ZSZL.ZSDH,ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,cgzls.qty,CGZL.CGDate');
    SQL.Add('               ,CGZLS.CGNO,');
    SQL.Add('                         (');
    SQL.Add('                          select MAX(L.Jijie+''-''+SS.STAGE) from CGZLSS SS');
    SQL.Add('                          Inner JOIN CGZLS S ON S.CGNO=SS.CGNO AND S.CLBH=SS.CLBH');
    SQL.Add('                          LEFT JOIN KFXXZL L ON L.ARTICLE=SS.ZLBH');
    SQL.Add('                          WHERE SS.STAGE is not null');
    SQL.Add('                                AND L.Jijie IS NOT NULL');
    SQL.Add('                                and S.CGNO=CGZLS.CGNO AND S.CLBH=CGZLS.CLBH');
    SQL.Add('                         )+ '' ''+');
    SQL.Add('                         (');
    SQL.Add('                          select MAX(L2.Jijie+''-''+SS2.STAGE) from CGZLSS SS2');
    SQL.Add('                          Inner JOIN CGZLS S2 ON S2.CGNO=SS2.CGNO AND S2.CLBH=SS2.CLBH');
    SQL.Add('                          LEFT JOIN KFXXZL L2 ON L2.ARTICLE=SS2.ZLBH');
    SQL.Add('                          WHERE SS2.STAGE is not null');
    SQL.Add('                                AND L2.Jijie IS NOT NULL');
    SQL.Add('                                and S2.CGNO=CGZLS.CGNO AND S2.CLBH=CGZLS.CLBH');
    SQL.Add('                                AND L2.Jijie+SS2.STAGE <> (');
    SQL.Add('                                                select MAX(L3.Jijie+SS3.STAGE) from CGZLSS SS3');
    SQL.Add('                                                LEFT JOIN CGZLS S3 ON S3.CGNO=SS3.CGNO AND S3.CLBH=SS3.CLBH');
    SQL.Add('                                                LEFT JOIN KFXXZL L3 ON L3.ARTICLE=SS3.ZLBH');
    SQL.Add('                                                WHERE SS3.STAGE is not null');
    SQL.Add('                                                      AND L3.Jijie IS NOT NULL');
    SQL.Add('                                                      and S3.CGNO=CGZLS.CGNO AND S3.CLBH=CGZLS.CLBH');
    SQL.Add('                                                )');
    SQL.Add('                         )');
    SQL.Add('                          as STAGE');
    SQL.Add('               from CGZLS');
    SQL.Add('               Inner join CGZL ON CGZL.CGNO=CGZLS.CGNO');
    SQL.Add('               Inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    SQL.Add('               Inner JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH');
    SQL.Add('               WHERE CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' AND CGZL.PURPOSE='''+Edit_Stage.Text+''' and CGZL.CGLX=6 AND CGZLS.CFMDate IS NULL ');
    IF Cb_DevTP.Text<>'' then
       sql.add('             AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    SQL.Add('                     and ZSZL.ZSDH=:ZSDH  and CGZL.CGDate+3<getdate()');

  end;
  //NOETA
  with Qry_Purchaser_NOETA do
  begin
    active:=false;
    SQL.clear;
    SQL.Add(' select ZSZL.ZSDH,ZSZL.zsjc,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,cgzls.qty,CGZL.CGDate,CGZLS.CGNO,');
    SQL.Add('        CGZLS.CFMDate as ETD ,CGZLInvoice.INVOICE,');
    SQL.Add('        (');
    SQL.Add('         select MAX(L.Jijie+''-''+SS.STAGE) from CGZLSS SS');
    SQL.Add('         Inner JOIN CGZLS S ON S.CGNO=SS.CGNO AND S.CLBH=SS.CLBH');
    SQL.Add('         LEFT JOIN KFXXZL L ON L.ARTICLE=SS.ZLBH');
    SQL.Add('         WHERE SS.STAGE is not null');
    SQL.Add('               AND L.Jijie IS NOT NULL');
    SQL.Add('               AND S.CGNO=CGZLS.CGNO  AND S.CLBH=CGZLS.CLBH');
    SQL.Add('        )+ '' ''+');
    SQL.Add('        (');
    SQL.Add('                          select MAX(L2.Jijie+''-''+SS2.STAGE) from CGZLSS SS2');
    SQL.Add('                          LEFT JOIN CGZLS S2 ON S2.CGNO=SS2.CGNO AND S2.CLBH=SS2.CLBH');
    SQL.Add('                          LEFT JOIN KFXXZL L2 ON L2.ARTICLE=SS2.ZLBH');
    SQL.Add('                          WHERE SS2.STAGE is not null');
    SQL.Add('                                AND L2.Jijie IS NOT NULL');
    SQL.Add('                                and S2.CGNO=CGZLS.CGNO AND S2.CLBH=CGZLS.CLBH');
    SQL.Add('                                AND L2.Jijie+SS2.STAGE <> (');
    SQL.Add('                                                select MAX(L3.Jijie+SS3.STAGE) from CGZLSS SS3');
    SQL.Add('                                                LEFT JOIN CGZLS S3 ON S3.CGNO=SS3.CGNO AND S3.CLBH=SS3.CLBH');
    SQL.Add('                                                LEFT JOIN KFXXZL L3 ON L3.ARTICLE=SS3.ZLBH');
    SQL.Add('                                                WHERE SS3.STAGE is not null');
    SQL.Add('                                                      AND L3.Jijie IS NOT NULL');
    SQL.Add('                                                      and S3.CGNO=CGZLS.CGNO AND S3.CLBH=CGZLS.CLBH');
    SQL.Add('                                                          )');
    SQL.Add('         ) as STAGE');
    SQL.Add(' from CGZLS');
    SQL.Add(' Inner join CGZL ON CGZL.CGNO=CGZLS.CGNO');
    SQL.Add(' Inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    SQL.Add(' Inner JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH');
    SQL.Add(' left join CGZLInvoiceS on CGZLS.CLBH=CGZLInvoiceS.CLBH and CGZLS.CGNO=CGZLInvoiceS.CGNO');
    SQL.Add(' left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoice.CINO');
    SQL.Add(' WHERE CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' AND CGZL.PURPOSE='''+Edit_Stage.Text+'''  and CGZL.CGLX=6 ');
    IF Cb_DevTP.Text<>'' then
       sql.add('             AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    SQL.Add('       AND CGZLInvoice.ETA IS NULL and ZSZL.ZSDH=:ZSDH   and CGZLS.CFMDate+3<getdate() ');
  end;
  //NoMOQ Location or LeadTime
  with Qry_Purchaser_NOMOQ do
  begin
    active:=false;
    sql.clear;
    sql.add('select CG.SEASON,CG.CLBH,CG.ZSBH,CLZL.YWPM,CLZL.DWBH,CG.ZSYWJC, ');
    sql.add('       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,');
    sql.add('       MaterialMOQ.REMARK,zszl_dev.country as Location');
    sql.add('from ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC from CGZLS ');
    sql.add('       Inner join CGZL on CGZl.CGNO=CGZLS.CGNO  ');
    sql.Add('       Inner join zszl on zszl.zsdh=CGZL.ZSBH ');
    sql.add('       where  CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.PURPOSE='''+Edit_Stage.Text+'''  ');
    sql.add('                AND CGZL.CGLX=''6'' ');
    sql.add('                and (CGZL.SEASON='''+Edit_Season.Text+''' )');
    IF Cb_DevTP.Text<>'' then
       sql.add('             AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('                and ZSZL.ZSDH=:ZSDH  ');
    sql.add('        group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC ) CG  ');
    sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
    sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('left join (select * from zszl_dev where zszl_dev.gsbh=''CDC'')zszl_dev on zszl_dev.zsdh=cg.ZSBH ');
    sql.add('where ( IsNull(MaterialMOQ.ProdLeadTime,'''')=''''  or IsNull(MaterialMOQ.Location,'''')='''' ) ');
  end;
  //NoSamplePrice
  with Qry_Purchaser_NOPrice do
  begin
    active:=false;
    sql.clear;
    sql.add('select CG.SEASON,CG.CLBH,CG.ZSBH,CLZL.YWPM,CLZL.DWBH,CG.ZSYWJC, ');
    sql.add('       MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN');
    sql.add('from ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC from CGZLS ');
    sql.add('       Inner join CGZL on CGZl.CGNO=CGZLS.CGNO  ');
    sql.Add('       Inner join zszl on zszl.zsdh=CGZL.ZSBH ');
    sql.add('       where CGZL.GSBH='''+main.Edit2.Text+'''    and CGZL.PURPOSE='''+Edit_Stage.Text+'''   ');
    sql.add('                AND CGZL.CGLX=''6''  ');
    sql.add('                and (CGZL.SEASON='''+Edit_Season.Text+''')');
    IF Cb_DevTP.Text<>'' then
       sql.add('             AND CGZL.DevType='''+Cb_DevTP.Text+''' ');
    sql.add('                and ZSZL.ZSDH=:ZSDH  ');
    sql.add('        group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC ) CG  ');
    sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
    sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('where (isnull(MaterialMOQ.SamplePrice,0)=0 and isnull(MaterialMOQ.SamplePriceVN,0)=0 ) ');
  end;

end;

procedure TSampleSupplierAnalysis.FormDestroy(Sender: TObject);
begin
  SampleSupplierAnalysis:=nil;
end;

procedure TSampleSupplierAnalysis.DBGridEh8CellClick(Column: TColumnEh);
begin
 SelectedDBGrid:=DBGridEh8;
 if  Column.FieldName='NoPurchase' then
 begin
   Qry_Purchaser_NOPurchase.Active:=true;
   PageControl3.ActivePageIndex:=1 ;
 end;
 if  Column.FieldName='NoETD' then
 begin
   Qry_Purchaser_NOETD.Active:=true;
   PageControl3.ActivePageIndex:=2 ;
 end;
 if  Column.FieldName='NoETA' then
 begin
   Qry_Purchaser_NOETA.Active:=True ;
   PageControl3.ActivePageIndex:=3 ;
 end;
 if  Column.FieldName='NoMOQ' then
 begin
   Qry_Purchaser_NOMOQ.Active:=true;
   PageControl3.ActivePageIndex:=4 ;
 end;
 if  Column.FieldName='NoQ_Price' then
 begin
   Qry_Purchaser_NOPrice.Active:=true;
   PageControl3.ActivePageIndex:=5 ;
 end;

 if  (Column.FieldName='SamplePurchaser') or (Column.FieldName='SamplePurchaser_Name') then
     PageControl3.ActivePageIndex:=0 ;
end;

procedure TSampleSupplierAnalysis.Qry_PurchaserBeforeScroll(
  DataSet: TDataSet);
begin
  Qry_Purchaser_NOETD.Active:=false ;
  Qry_Purchaser_NOETA.Active:=false ;
  Qry_Purchaser_NOPurchase.Active:=false ;
  Qry_Purchaser_NOMOQ.Active:=false;
  Qry_Purchaser_NOPrice.Active:=false ;
end;

//匯出Excel
procedure TSampleSupplierAnalysis.ExportExcel();
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
      ExpClass:TDBGridEhExportClass;
      Ext, target:String;
      tdbgh : TDBGridEh;
begin
  tdbgh := SelectedDBGrid  ;
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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,True);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSampleSupplierAnalysis.DBGridEh12CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh12;
end;

procedure TSampleSupplierAnalysis.DBGridEh9CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh9;
end;

procedure TSampleSupplierAnalysis.DBGridEh11CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh11;
end;

procedure TSampleSupplierAnalysis.DBGrid1CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGrid1;
end;
//匯出全部廠商ETD表格
procedure TSampleSupplierAnalysis.ExportAllETD();
begin
   
end;
//
procedure TSampleSupplierAnalysis.Button2Click(Sender: TObject);
begin
  if SelectedDBGrid<>nil then
    ExportExcel();
end;

end.
