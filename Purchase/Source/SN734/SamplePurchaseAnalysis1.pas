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
    Pop_Purchaser_NoPurchase: TPopupMenu;
    Shape1: TShape;
    Label1: TLabel;
    Edit_Stage: TEdit;
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
    Qry_PurchaserNoPolicy: TIntegerField;
    TS_NoPolicy: TTabSheet;
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
    Noneedpurchase1: TMenuItem;
    Panel3: TPanel;
    Edit_Season: TEdit;
    Label2: TLabel;
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
    Qry_Purchaser_NOPurchaseFD: TStringField;
    Qry_Purchaser_NOPurchaseJiJie: TStringField;
    Qry_Purchaser_NOPurchasecsbh: TStringField;
    Qry_Purchaser_NOPurchaseypzsjc: TStringField;
    Qry_Purchaser_NOPurchaseNoNeedPur: TStringField;
    Qry_Purchaser_NOPurchaseSamplePurchaser: TStringField;
    Qry_Purchaser_NOPurchasedevcode: TStringField;
    TabSheet1: TTabSheet;
    Image1: TImage;
    Memo1: TMemo;
    Qry_Purchaser_NOPurchaseRE_check: TBooleanField;
   // Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh8CellClick(Column: TColumnEh);
    procedure Excel1Click(Sender: TObject);
    procedure Noneedpurchase1Click(Sender: TObject);
    procedure Qry_PurchaserBeforeScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh12CellClick(Column: TColumnEh);
    procedure DBGridEh9CellClick(Column: TColumnEh);
    procedure DBGridEh11CellClick(Column: TColumnEh);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure DBGridEh10CellClick(Column: TColumnEh);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh12DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
//    procedure Query1AfterScroll(DataSet: TDataSet);
 //   procedure FormDestroy(Sender: TObject);
  //  procedure Button4Click(Sender: TObject);
  private
     SelectedDBGrid:TDBGridEh;
    { Private declarations }
    procedure ExportExcel();
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

procedure TSamplePurchaseAnalysis.Button1Click(Sender: TObject);
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
  Qry_NOPurCfm.Active:=false ;
  //第一頁 Purchaser
  with Qry_Purchaser do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#SamplePurchaseAnalysis'+''''+') is not null  ');
    sql.add(' begin   drop table #SamplePurchaseAnalysis end   ');
    sql.add(' if object_id('+''''+'tempdb..#SamplePurchaseAnalysis2'+''''+') is not null  ');
    sql.add(' begin   drop table #SamplePurchaseAnalysis2 end   ');
    //尚未採購明細
    sql.add('   select IsNull(zszl_dev.SamplePurchaser,''Empty'') as SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.devcode,kfxxzl.FD,kfxxzl.JiJie,ypzls.csbh,ZSZL.Zsywjc as ypzsjc ');
    sql.add('          ,Max(da.memo) as NoNeedPur     ');
    sql.add('   INTO #SamplePurchaseAnalysis  ');
    sql.add('   from ypzls   ');
    sql.add('   inner join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   inner join clzl on clzl.cldh=ypzls.clbh ');
    //20150523
    sql.add('     left join zszl on zszl.ZSDH=ypzls.csbh ');
    sql.add('     left join ZSZL_DEV on zszl.ZSDH=ZSZL_DEV.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''  ');
    //
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    //sql.add('   left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=ypzls.clbh   ');
    sql.add('   left join (select ZLBH,CLBH,QTY,memo from cgkcuse ');   //排除使用庫存
    sql.add('              where cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND ypzls.CLBH=da.CLBH ');
    sql.add('   left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('              where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+'''   and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' ) group by BRS.YPDH,BR.Stage');
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
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('      and kfxxzl.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('      and kfxxzl.DevType <> ''Inline'' ');
    sql.add('   group by zszl_dev.SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,ypzls.clbh,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.devcode,kfxxzl.FD,kfxxzl.JiJie,ypzls.csbh ,ZSZL.Zsywjc ');
    sql.add('   union all ');
    sql.add('   select IsNull(ZSZL_DEV.SamplePurchaser,''Empty'') as SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 AS CLBH,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.devcode,kfxxzl.FD,kfxxzl.JiJie,CLZHZL.ZSDH as csbh ,ZSZL.Zsywjc as ypzsjc ');
    sql.add('          ,Max(da.memo) as  NoNeedPur     ');
    sql.add('   from ypzls ');
    sql.add('   INNER JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.cldh ');
    sql.add('   inner join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('   inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('   inner join clzl on clzl.cldh=CLZHZL.CLDH1 ');
    //20150523
    sql.add('     left join zszl on zszl.ZSDH=CLZHZL.ZSDH ');
    sql.add('     left join ZSZL_DEV on zszl.ZSDH=ZSZL_DEV.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    //
    sql.add('   left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('   left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    //sql.add('   left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=CLZHZL.CLDH1   ');
    sql.add('   left join (select ZLBH,CLBH,QTY,memo from cgkcuse ');
    sql.add('              where cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    sql.add('              ) da on ypzls.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH ');
    sql.add('   left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('              where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+'''   and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'' ) group by BRS.YPDH,BR.Stage');
    sql.add('              ) BR on ypzl.YPDH=BR.YPDH AND ypzl.KFJD=BR.Stage ');
    sql.add('   where IsNull(da.qty,0)=0 and ypzl.GSDH='''+main.Edit2.Text+''' ');
    if Chk_Usg.Checked=false then
    sql.add('         and ypzls.CLSL>0 ');
    sql.add('         and BR.YPDH is not null ');
    sql.add('         and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('         and ypzl.KFJD ='''+Edit_Stage.Text+''' ');
    sql.add('         and not exists (select ypzls.ypdh from ypzls ');
    sql.add('                         left join ypzl yp on yp.ypdh=ypzls.ypdh ');
    sql.add('                         left join kfxxzl on kfxxzl.xiexing=yp.xiexing and kfxxzl.shehao=yp.shehao ');
    sql.add('                         where  yp.KFJD ='''+Edit_Stage.Text+''' and ypzl.YPDH=yp.YPDH ');
    sql.add('                                and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('                                AND YPZLS.CLBH=CLZHZL.CLDH1 ');
    sql.add('                         ) ');
    sql.add('         and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 ) ');
    sql.add('         and CLZHZL.syl > 0 ');
    sql.add('         and zszlfilter.zsdh is null ');
    sql.add('         and clzlfilter.cldh is null ');
    sql.add('         and clzl.clzmlb = ''N'' ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('       and kfxxzl.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('       and kfxxzl.DevType <> ''Inline'' ');
    sql.add('    group by ZSZL_DEV.SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 ,CLZL.YWPM,ypzl.KFJD,ypzl.YPDH,kfxxzl.devcode,kfxxzl.FD,kfxxzl.JiJie,CLZHZL.ZSDH ,ZSZL.Zsywjc');
    //第二階資料號
    sql.add('   union all ');
    SQL.Add('	  Select IsNull(ZSZL_DEV.SamplePurchaser,''Empty'') as SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1 AS CLBH,CLZL.YWPM,clzhzl2.KFJD,clzhzl2.YPDH,clzhzl2.devcode,clzhzl2.FD,clzhzl2.JiJie  ');
    SQL.add('        ,CLZHZL.ZSDH as csbh ,ZSZL.Zsywjc as ypzsjc,Max(da.memo) as  NoNeedPur ');
    SQL.Add('	  from (');
    SQL.Add('   SELECT ypzls.YPDH ,YPZL.KFJD ,clzhzl.CLDH1 as CLBH, kfxxzl.devcode,kfxxzl.FD,kfxxzl.JiJie');
    SQL.Add('   FROM ypzls ypzls');
    SQL.Add('   inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('   inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('   INNER join ypzl on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('   inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('   WHERE YPZL.KFJD='''+Edit_Stage.Text+''' and KFXXZL.JiJie='''+Edit_Season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('       and kfxxzl.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('       and kfxxzl.DevType <> ''Inline'' ');
    SQL.Add('   ) clzhzl2');
    SQL.Add('   inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('   inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('   left join zszl on zszl.ZSDH=CLZHZL.ZSDH');
    SQL.Add('   left join ZSZL_DEV on zszl.ZSDH=ZSZL_DEV.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('   left join zszlfilter on zszlfilter.zsdh=CLZHZL.ZSDH and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('   left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('   left join (select ZLBH,CLBH,QTY,memo from cgkcuse');
    SQL.Add('      where cgkcuse.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('      ) da on clzhzl2.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH');
    SQL.Add('   left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR');
    SQL.Add('      where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+'''   and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'' ) group by BRS.YPDH,BR.Stage');
    SQL.Add('      ) BR on clzhzl2.YPDH=BR.YPDH AND clzhzl2.KFJD=BR.Stage');
    SQL.Add('   where IsNull(da.qty,0)=0 and BR.YPDH is not null');
    SQL.Add('        and not exists (select ypzls.ypdh from ypzls');
    SQL.Add('                       left join ypzl yp on yp.ypdh=ypzls.ypdh');
    SQL.Add('                       left join kfxxzl on kfxxzl.xiexing=yp.xiexing and kfxxzl.shehao=yp.shehao');
    SQL.Add('                       where  yp.KFJD ='''+Edit_Stage.Text+''' and clzhzl2.YPDH=yp.YPDH');
    SQL.Add('                              and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    SQL.Add('                              AND YPZLS.CLBH=clzhzl.CLDH1');
    SQL.Add('                       )');
    SQL.Add('                 and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=clzhzl2.YPDH and CGZLSS.Stage=clzhzl2.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 )');
    SQL.Add('       and CLZHZL.syl > 0');
    SQL.Add('       and zszlfilter.zsdh is null');
    SQL.Add('       and clzlfilter.cldh is null');
    SQL.Add('       and clzl.clzmlb = ''N''');
    SQL.Add('   group by ZSZL_DEV.SamplePurchaser,ZSZL.ZSDH,ZSZL.zsjc,CLZHZL.CLDH1,CLZL.YWPM,clzhzl2.KFJD,clzhzl2.YPDH,clzhzl2.devcode,clzhzl2.FD,clzhzl2.JiJie,CLZHZL.ZSDH,ZSZL.Zsywjc ');
    //======================
    //主畫面使用 尚未採購統計
    sql.add('  select DD.SamplePurchaser,COUNT(DD.clbh) AS NoPurchase INTO #SamplePurchaseAnalysis2 ');
    sql.add('         from ( ');
    sql.add('               select ZSZL_DEV.SamplePurchaser,ypzls.clbh ');
    sql.add('               from ypzls ');
    sql.add('               inner join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('               inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('               inner join clzl on clzl.cldh=ypzls.clbh');
    //20150523
    sql.add('               left join zszl on zszl.ZSDH=ypzls.csbh ');
    sql.add('               left join ZSZL_DEV on zszl.ZSDH=ZSZL_DEV.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    //
    sql.add('               left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('               left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    //sql.add('               left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=ypzls.clbh   ');
    sql.Add('               left join (select ZLBH,CLBH,QTY from cgkcuse ');   //扣掉使用庫存的材料
    sql.Add('                          where cgkcuse.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add('                          ) da on ypzls.ypdh=da.zlbh AND ypzls.CLBH=da.CLBH ');
    sql.add('               left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('                          where BRS.ReceiveNO=BR.ReceiveNO and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'') group by BRS.YPDH,BR.Stage');
    sql.add('                          ) BR on ypzl.YPDH=BR.YPDH AND ypzl.KFJD=BR.Stage ');
    sql.add('               where IsNull(da.qty,0)=0 and ypzl.GSDH='''+main.Edit2.Text+''' ');
    if Chk_Usg.Checked=false then
    sql.add('                     and ypzls.CLSL>0 ');
    sql.add('                     and BR.YPDH is not null ');
    sql.add('                     and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=ypzls.clbh ) ');
    sql.add('                     and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('                     and ypzl.KFJD ='''+Edit_Stage.Text+'''');
    sql.add('                     and zszlfilter.zsdh is null');
    sql.add('                     and clzlfilter.cldh is null');
    sql.add('                     and clzl.clzmlb = ''N''');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('       and kfxxzl.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('       and kfxxzl.DevType <> ''Inline'' ');
    sql.Add('               group by ZSZL_DEV.SamplePurchaser,ZSZL.ZSDH,kfxxzl.JiJie,YPZL.KFJD,YPZL.YPDH,Kfxxzl.article,ypzls.clbh');
    sql.Add('               union all');
    sql.add('               select ZSZL_DEV.SamplePurchaser,CLZHZL.CLDH1 AS CLBH  from ypzls ');
    sql.Add('               INNER JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    sql.add('               INNER join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('               INNER join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('               INNER join clzl on clzl.cldh=CLZHZL.CLDH1');
    //20150523
    sql.add('               left join zszl on zszl.ZSDH=CLZHZL.ZSDH ');
    sql.add('               left join ZSZL_DEV on zszl.ZSDH=ZSZL_DEV.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    //
    sql.add('               left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('               left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
    sql.add('               left join YPZL_NoNeedPur N ON N.Article=ypzl.ARTICLE and N.KFJD=ypzl.KFJD AND N.CLBH=CLZHZL.CLDH1   ');
    sql.Add('               left join (select ZLBH,CLBH,QTY from cgkcuse ');   //扣掉使用庫存的材料
    sql.Add('                          where cgkcuse.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add('                         ) da on ypzls.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH ');
    sql.add('               left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR '); //排除未收到BOM
    sql.add('                          where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+'''   and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'' ) group by BRS.YPDH,BR.Stage');
    sql.add('                          ) BR on ypzl.YPDH=BR.YPDH AND ypzl.KFJD=BR.Stage ');
    sql.add('               where IsNull(da.qty,0)=0 and ypzl.GSDH='''+main.Edit2.Text+''' ');
    if Chk_Usg.Checked=false then
    sql.add('                     and ypzls.CLSL>0 ');
    sql.add('                     and BR.YPDH is not null ');
    sql.add('                     and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.add('                     and ypzl.KFJD ='''+Edit_Stage.Text+'''');
    sql.add('                     and not exists (select ypzls.ypdh from ypzls ');   //避免重複
    sql.add('                                     left join ypzl yp on yp.ypdh=ypzls.ypdh');
    sql.add('                                     left join kfxxzl on kfxxzl.xiexing=yp.xiexing and kfxxzl.shehao=yp.shehao ');
    sql.add('                                     where yp.KFJD ='''+Edit_Stage.Text+''' and ypzl.YPDH=yp.YPDH ');
    sql.add('                                           and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    sql.Add('                                           AND YPZLS.CLBH=CLZHZL.CLDH1 ');
    sql.Add('                                    )  ');
    sql.add('                     and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=ypzl.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 ) ');
    sql.Add('                     and CLZHZL.syl > 0');
    sql.add('                     and zszlfilter.zsdh is null');
    sql.add('                     and clzlfilter.cldh is null');
    sql.add('                     and clzl.clzmlb = ''N''');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('       and kfxxzl.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('       and kfxxzl.DevType <> ''Inline'' ');
    sql.Add('               group by ZSZL_DEV.SamplePurchaser,ZSZL.ZSDH,kfxxzl.JiJie,YPZL.KFJD,YPZL.YPDH,Kfxxzl.article,CLZHZL.CLDH1 ');
    //第二階段子材料
    SQL.Add('               union all ');
    SQL.Add('	              Select ZSZL_DEV.SamplePurchaser,CLZHZL.CLDH1 as CLBH ');
    SQL.Add('	              from (');
    SQL.Add('               SELECT ypzls.YPDH ,YPZL.KFJD ,clzhzl.CLDH1 as CLBH, kfxxzl.Article,kfxxzl.FD,kfxxzl.JiJie');
    SQL.Add('               FROM ypzls ypzls');
    SQL.Add('               inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('               inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('               INNER join ypzl on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('               inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('               WHERE YPZL.KFJD='''+Edit_Stage.Text+''' and KFXXZL.JiJie='''+Edit_Season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('             and kfxxzl.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('             and kfxxzl.DevType <> ''Inline'' ');
    SQL.Add('               ) clzhzl2');
    SQL.Add('               inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('               inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('               left join zszl on zszl.ZSDH=CLZHZL.ZSDH');
    SQL.Add('               left join ZSZL_DEV on zszl.ZSDH=ZSZL_DEV.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('               left join zszlfilter on zszlfilter.zsdh=CLZHZL.ZSDH and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('               left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('               left join (select ZLBH,CLBH,QTY,memo from cgkcuse');
    SQL.Add('               where cgkcuse.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('               ) da on clzhzl2.ypdh=da.zlbh AND CLZHZL.CLDH1=da.CLBH');
    SQL.Add('               left join (select BRS.YPDH,BR.Stage from BOMReceiveS BRS,BOMReceive BR');
    SQL.Add('               where BRS.ReceiveNO=BR.ReceiveNO and BR.GSBH='''+main.Edit2.Text+'''   and BR.Stage IN (select lbdh from lbzls where lbzls.lb = ''04'' and bz1=''Tyxuan'' ) group by BRS.YPDH,BR.Stage');
    SQL.Add('               ) BR on clzhzl2.YPDH=BR.YPDH AND clzhzl2.KFJD=BR.Stage');
    SQL.Add('               where IsNull(da.qty,0)=0 and BR.YPDH is not null');
    SQL.Add('               and not exists (select ypzls.ypdh from ypzls');
    SQL.Add('                       left join ypzl yp on yp.ypdh=ypzls.ypdh');
    SQL.Add('                       left join kfxxzl on kfxxzl.xiexing=yp.xiexing and kfxxzl.shehao=yp.shehao');
    SQL.Add('                       where  yp.KFJD ='''+Edit_Stage.Text+''' and clzhzl2.YPDH=yp.YPDH');
    SQL.Add('                              and (kfxxzl.Jijie='''+Edit_Season.Text+''')');
    SQL.Add('                              AND YPZLS.CLBH=clzhzl.CLDH1');
    SQL.Add('                       )');
    SQL.Add('               and not exists(select cgno from CGZLSS where CGZLSS.ZLBH=clzhzl2.YPDH and CGZLSS.Stage=clzhzl2.KFJD and CGZLSS.clbh=CLZHZL.CLDH1 )');
    SQL.Add('               and CLZHZL.syl > 0');
    SQL.Add('               and zszlfilter.zsdh is null');
    SQL.Add('               and clzlfilter.cldh is null');
    SQL.Add('               and clzl.clzmlb = ''N''');
    SQL.Add('   group by ZSZL_DEV.SamplePurchaser,ZSZL.ZSDH,clzhzl2.JiJie,clzhzl2.KFJD,clzhzl2.Article,clzhzl2.YPDH,CLZHZL.CLDH1 ');
    //===================
    sql.add('              ) DD  ');
    sql.add('               GROUP BY DD.SamplePurchaser ');
    //主畫面SQL
    sql.add('select  ZSZL_DEV.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name ');
    sql.add('        ,A.NoETD as NoETD ');
    sql.add('        ,C.NoETA as NoETA ');
    sql.add('        ,D.NoPurchase as NoPurchase ');
    sql.add('        ,E.NoPurCfm as NoPurCfm ');
    sql.add('        ,F.NoMOQ as NoMOQ ');
    sql.add('        ,G.NoQ_Price as NoQ_Price ');
    sql.add('    from ZSZL ');
    sql.add('    inner join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('    inner join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser ');
    sql.add('    left join (select ZSZL_DEV.SamplePurchaser,COUNT(CGZLS.CLBH) AS NoETD ');
    sql.add('                     from CGZLS ');
    sql.add('                     left join CGZL ON CGZL.CGNO=CGZLS.CGNO ');
    sql.add('                     left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''  ');
    sql.add('                     WHERE CGZL.PURPOSE ='''+Edit_Stage.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.CGLX=''6'' ');  
    sql.add('                           AND CGZLS.CFMDate IS NULL  and CGZL.CGDate+3<getdate() ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('                         and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('                         and CGZL.DevType <> ''Inline'' ');
    sql.add('                     GROUP BY ZSZL_DEV.SamplePurchaser ');
    sql.add('              ) A on A.SamplePurchaser = ZSZL_DEV.SamplePurchaser ');
    sql.add('    left join (select ZSZL_DEV.SamplePurchaser,COUNT(CGZLS.CLBH) AS NoETA ');
    sql.add('                     from CGZLS ');
    sql.add('                     left join CGZL ON CGZL.CGNO=CGZLS.CGNO ');
    sql.add('                     left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('                     left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                     left join CGZLInvoiceS on CGZLS.CLBH=CGZLInvoiceS.CLBH and CGZLS.CGNO=CGZLInvoiceS.CGNO ');
    sql.add('                     left join CGZLInvoice on CGZLInvoiceS.CINO=CGZLInvoice.CINO ');
    sql.add('                     WHERE CGZL.PURPOSE ='''+Edit_Stage.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.CGLX=''6'' ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('                         and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('                         and CGZL.DevType <> ''Inline'' ');
    sql.add('                           AND CGZLInvoice.ETA IS NULL and CGZLS.CFMDate+3<getdate()  ');
    sql.add('                     GROUP BY ZSZL_DEV.SamplePurchaser ');
    sql.add('              ) C on C.SamplePurchaser = ZSZL_DEV.SamplePurchaser ');

    sql.add('    left join #SamplePurchaseAnalysis2 D on D.SamplePurchaser = ZSZL_DEV.SamplePurchaser ');

    sql.add('    left join (select ZSZL_DEV.SamplePurchaser,COUNT(*) AS NoPurCfm from KCRK');
    sql.add('                inner join CGZL on KCRK.ZSNO=CGZL.CGNO ');
    sql.Add('                left join zszl on zszl.zsdh=CGZL.ZSBH ');
    sql.add('                left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                where KCRK.USERDATE+5<getdate() and isnull(PurConfirm,'''')<>''Y'' and CFMID=''NO''  AND CKBH='''+main.Edit2.Text+''' ');
    sql.add('                      and CGZL.PURPOSE ='''+Edit_Stage.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+''' ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('                         and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('                         and CGZL.DevType <> ''Inline'' ');
    sql.add('                GROUP BY ZSZL_DEV.SamplePurchaser ');
    sql.add('              ) E on E.SamplePurchaser = ZSZL_DEV.SamplePurchaser ');

    sql.add('    left join (select ZSZL_DEV.SamplePurchaser,COUNT(*) AS NoMOQ from ');
    sql.add('                ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH from CGZLS,CGZL ');
    sql.add('                  where  CGZL.CGLX=''6'' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.PURPOSE ='''+Edit_Stage.Text+'''   ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('                       and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('                       and CGZL.DevType <> ''Inline'' ');
    sql.add('                         and CGZl.CGNO=CGZLS.CGNO ');
    sql.add('                  group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH ');
    sql.add('                ) CG  ');
    sql.Add('                left join zszl on zszl.zsdh=CG.ZSBH ');
    sql.add('                left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('                where (IsNull(MaterialMOQ.ProdLeadTime,'''')='''' or IsNull(MaterialMOQ.Location,'''')=''''  ) ');
    sql.add('                GROUP BY ZSZL_DEV.SamplePurchaser ');
    sql.add('              ) F on F.SamplePurchaser = ZSZL_DEV.SamplePurchaser ');

    sql.add('    left join (select ZSZL_DEV.SamplePurchaser,COUNT(*) AS NoQ_Price from ');
    sql.add('                ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH from CGZLS,CGZL ');
    sql.add('                         where CGZL.CGLX=''6'' and CGZL.SEASON='''+Edit_Season.Text+''' and CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.PURPOSE ='''+Edit_Stage.Text+'''     ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('                       and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('                       and CGZL.DevType <> ''Inline'' ');
    sql.add('                         and LEFT(CGZLS.CLBH,1)<>''V''  AND CGZl.CGNO=CGZLS.CGNO ');
    sql.add('                  group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH ');
    sql.add('                ) CG  ');
    sql.Add('                left join zszl on zszl.zsdh=CG.ZSBH ');
    sql.add('                left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('                where (isnull(MaterialMOQ.SamplePrice,0)=0 and isnull(MaterialMOQ.SamplePriceVN,0)=0 ) ');
    sql.add('                GROUP BY ZSZL_DEV.SamplePurchaser ');
    sql.add('              ) G on G.SamplePurchaser = ZSZL_DEV.SamplePurchaser ');

    sql.add('       WHERE ISNULL(ZSZL_DEV.SamplePurchaser,'''')<>'''' and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('       group by ZSZL_DEV.SamplePurchaser,BUSERS.USERNAME,A.NoETD,C.NoETA,D.NoPurchase,E.NoPurCfm,F.NoMOQ,G.NoQ_Price  ');

    sql.Add('union all');
    sql.add('select  ''Empty''  as SamplePurchaser,''Supplier'' as SamplePurchaser_Name ');
    sql.add('        ,null as NoETD ');
    sql.add('        ,null as NoETA ');
    sql.add('        ,E.NoPurchase ');
    sql.add('        ,null as NoPurCfm ');
    sql.add('        ,null as NoMOQ ');
    sql.add('        ,null as NoQ_Price ');
    sql.add('    from ( SELECT NoPurchase FROM #SamplePurchaseAnalysis2 WHERE SamplePurchaser='''' or SamplePurchaser is null ');
    sql.add('         ) E  ');
    Active := True;
  end;

  
  //20150117無採購明細列表
  with Qry_Purchaser_NOPurchase do
  begin
    active:=false;
    sql.clear;
    sql.add('select ypzl.RE_check,* FROM  #SamplePurchaseAnalysis ypzls');
    sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh ');
    sql.add('WHERE isnull(ypzls.SamplePurchaser,'''')=:SamplePurchaser   ');
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
    SQL.Add('               inner join CGZL ON CGZL.CGNO=CGZLS.CGNO');
    SQL.Add('               inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    SQL.Add('               inner JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH');
    SQL.Add('               left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('               WHERE CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' AND CGZL.PURPOSE='''+Edit_Stage.Text+'''  and CGZL.CGLX=6 AND CGZLS.CFMDate IS NULL ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('              and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('              and CGZL.DevType <> ''Inline'' ');
    SQL.Add('                     and ZSZL_DEV.SamplePurchaser=:SamplePurchaser  and CGZL.CGDate+3<getdate()');

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
    SQL.Add('         inner JOIN CGZLS S ON S.CGNO=SS.CGNO AND S.CLBH=SS.CLBH');
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
    SQL.Add(' INNER join CGZL ON CGZL.CGNO=CGZLS.CGNO');
    SQL.Add(' INNER join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    SQL.Add(' INNER JOIN CLZL ON CLZL.CLDH=CGZLS.CLBH');
    SQL.Add(' Left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add(' left join CGZLInvoiceS on CGZLS.CLBH=CGZLInvoiceS.CLBH and CGZLS.CGNO=CGZLInvoiceS.CGNO');
    SQL.Add(' left join CGZLInvoice  on CGZLInvoiceS.CINO=CGZLInvoice.CINO');
    SQL.Add(' WHERE CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' AND CGZL.PURPOSE='''+Edit_Stage.Text+'''  and CGZL.CGLX=6 ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('              and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('              and CGZL.DevType <> ''Inline'' ');
    SQL.Add('       AND CGZLInvoice.ETA IS NULL and ZSZL_DEV.SamplePurchaser=:SamplePurchaser  and CGZLS.CFMDate+3<getdate() ');
  end;
  //NoMOQ Location or LeadTime
  with Qry_Purchaser_NOMOQ do
  begin
    active:=false;
    sql.clear;
    sql.add('select CG.SEASON,CG.CLBH,CG.ZSBH,CLZL.YWPM,CLZL.DWBH,CG.ZSYWJC, ');
    sql.add('       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,');
    sql.add('       MaterialMOQ.REMARK,MaterialMOQ.Location');
    sql.add('from ( select CGZL.SEASON,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC from CGZLS ');
    sql.add('       inner join CGZL on CGZl.CGNO=CGZLS.CGNO  ');
    sql.Add('       inner join zszl on zszl.zsdh=CGZL.ZSBH ');
    SQL.Add('       Left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('       where  CGZL.GSBH='''+main.Edit2.Text+'''  and CGZL.PURPOSE='''+Edit_Stage.Text+'''  ');
    sql.add('                AND CGZL.CGLX=''6'' ');
    sql.add('                and (CGZL.SEASON='''+Edit_Season.Text+''' )');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('              and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('              and CGZL.DevType <> ''Inline'' ');
    sql.add('                and ZSZL_DEV.SamplePurchaser=:SamplePurchaser  ');
    sql.add('        group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC ) CG  ');
    sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
    sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
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
    sql.add('       inner join CGZL on CGZl.CGNO=CGZLS.CGNO  ');
    sql.Add('       inner join zszl on zszl.zsdh=CGZL.ZSBH ');
    SQL.Add('       Left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('       where CGZL.GSBH='''+main.Edit2.Text+'''    and CGZL.PURPOSE='''+Edit_Stage.Text+'''   ');
    sql.add('                and LEFT(CGZLS.CLBH,1)<>''V'' AND CGZL.CGLX=''6''   ');
    sql.add('                and (CGZL.SEASON='''+Edit_Season.Text+''')');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('              and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('              and CGZL.DevType <> ''Inline'' ');
    sql.add('                and ZSZL_DEV.SamplePurchaser=:SamplePurchaser  ');
    sql.add('        group by CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CGZl.ZSBH,ZSZL.ZSYWJC ) CG  ');
    sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
    sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON ');
    sql.add('where (isnull(MaterialMOQ.SamplePrice,0)=0 and isnull(MaterialMOQ.SamplePriceVN,0)=0 ) ');
  end;
  with Qry_NOPurCfm do
  begin
    active:=false;
    sql.clear;
    SQL.Add('select KCRK.*,ZSZL.ZSYWJC ,ZSZL_DEV.MZSDH , (SELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=ZSZL_DEV.MZSDH) AS MZSYWJC');
    SQL.Add('from KCRK');
    SQL.Add('inner join CGZL on KCRK.ZSNO=CGZL.CGNO');
    SQL.Add('inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    SQL.Add('Left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('where CGZL.GSBH='''+main.Edit2.Text+''' and CGZL.SEASON='''+Edit_Season.Text+''' AND CGZL.PURPOSE='''+Edit_Stage.Text+''' and isnull(PurConfirm,'''')<>''Y'' and CFMID=''NO''  AND CKBH='''+main.Edit2.Text+''' ');
    if Cb_DevTP.ItemIndex = 1 then
      sql.add('              and CGZL.DevType = ''Inline'' ')
    else if Cb_DevTP.ItemIndex = 2 then
      sql.add('              and CGZL.DevType <> ''Inline'' ');
    SQL.Add('      and ZSZL_DEV.SamplePurchaser=:SamplePurchaser');
    SQL.Add('      and KCRK.USERDATE>''2011/08/31'' ');
    SQL.Add('      and KCRK.USERDATE+5<getdate()');
    SQL.Add('order by KCRK.RKNO');
  end;

end;

procedure TSamplePurchaseAnalysis.FormDestroy(Sender: TObject);
begin
  SamplePurchaseAnalysis:=nil;
end;

procedure TSamplePurchaseAnalysis.DBGridEh8CellClick(Column: TColumnEh);
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

 if  Column.FieldName='NoPurCfm' then
 begin
   Qry_NOPurCfm.Active:=true;
   PageControl3.ActivePageIndex:=6 ;
 end;

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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,True);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TSamplePurchaseAnalysis.Noneedpurchase1Click(Sender: TObject);
var bookmarklist:tbookmarklistEh;
    bm:Tbookmark;
    i:integer;
begin

   if Qry_Purchaser_NOPurchase.fieldbyname('SamplePurchaser').AsString<>main.Edit1.Text then
   begin
     Showmessage('You are not Purchaser: '+Qry_Purchaser_NOPurchase.fieldbyname('SamplePurchaser').AsString+' ,can''t modify');
     exit;
   end else
   begin
     //
     Qry_Purchaser_NOPurchase.disablecontrols;
     bm:=Qry_Purchaser_NOPurchase.getbookmark;
     bookmarklist:=DBGridEh12.selectedrows;
     //
     bookmarklist:=DBGridEh12.selectedrows;
     if bookmarklist.count>0 then
     begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          Qry_Purchaser_NOPurchase.gotobookmark(pointer(bookmarklist[i]));
          //
          with TempQuery do
          begin
          active:=false;
          sql.Clear;
          sql.Add(' select * from cgkcuse ');
          sql.Add('  where ZLBH='''+Qry_Purchaser_NOPurchase.fieldbyname('YPDH').AsString+'''');
          sql.Add('        and GSBH='''+main.Edit2.Text+'''');
          sql.Add('        and CLBH='''+Qry_Purchaser_NOPurchase.fieldbyname('clbh').AsString+'''');
          active:=true;
          if RecordCount=0 then
          begin
            active:=false;
            sql.Clear;
            sql.Add(' insert into cgkcuse (GSBH,ZLBH,CLBH,Qty,Memo,userID,userdate,YN)  ');
            sql.Add(' values (');
            sql.Add(''''+main.Edit2.Text+'''');
            sql.Add(','''+Qry_Purchaser_NOPurchase.fieldbyname('YPDH').AsString+'''');
            sql.Add(','''+Qry_Purchaser_NOPurchase.fieldbyname('CLBH').AsString+'''');
            sql.Add(',0.0001,''No Neeed Purchase'','''+main.edit1.text+'''');
            sql.Add(','''+formatdatetime('yyyyMMdd',Ndate)+''',1)');
            execsql;
          end else
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Update cgkcuse set  Qty=0.0001,Memo=''No Neeed Purchase'',UserID='''+main.edit1.text+''',UserDate='''+formatdatetime('yyyyMMdd',Ndate)+''' ');
            sql.Add(' where ZLBH='''+Qry_Purchaser_NOPurchase.fieldbyname('YPDH').AsString+'''');
            sql.Add('       and GSBH='''+main.Edit2.Text+'''');
            sql.Add('       and CLBH='''+Qry_Purchaser_NOPurchase.fieldbyname('clbh').AsString+'''');
            execsql;
          end;
          end;
          //
        end;
      finally
        begin
          Qry_Purchaser_NOPurchase.gotobookmark(bm);
          Qry_Purchaser_NOPurchase.freebookmark(bm);
          Qry_Purchaser_NOPurchase.enablecontrols;
          showmessage('You have finish!');
          Qry_Purchaser_NOPurchase.active:=false;
          Qry_Purchaser_NOPurchase.active:=true;
        end;
      end;
     end;
     //
   end;

end;

procedure TSamplePurchaseAnalysis.Qry_PurchaserBeforeScroll(
  DataSet: TDataSet);
begin
  Qry_Purchaser_NOETD.Active:=false ;
  Qry_Purchaser_NOETA.Active:=false ;
  Qry_Purchaser_NOPurchase.Active:=false ;
  Qry_Purchaser_NOMOQ.Active:=false;
  Qry_Purchaser_NOPrice.Active:=false ;
  Qry_NOPurCfm.Active:=false;
end;
//匯出Excel
procedure TSamplePurchaseAnalysis.ExportExcel();
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
procedure TSamplePurchaseAnalysis.Button2Click(Sender: TObject);
begin
  if SelectedDBGrid<>nil then
    ExportExcel();
end;

procedure TSamplePurchaseAnalysis.DBGridEh12CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh12;
end;

procedure TSamplePurchaseAnalysis.DBGridEh9CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh9;
end;

procedure TSamplePurchaseAnalysis.DBGridEh11CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh11;
end;

procedure TSamplePurchaseAnalysis.DBGrid1CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGrid1;
end;

procedure TSamplePurchaseAnalysis.DBGridEh10CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh10;
end;

procedure TSamplePurchaseAnalysis.DBGridEh1CellClick(Column: TColumnEh);
begin
  SelectedDBGrid:=DBGridEh1;
end;

procedure TSamplePurchaseAnalysis.DBGridEh12DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Qry_Purchaser_NOPurchase.FieldByName('RE_check').value = false then
  begin
    DBGridEh12.canvas.font.color:=clBlue;
    DBGridEh12.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.




