unit PurtraceMatch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, GridsEh, DBGridEh, DB,
  DBTables, Comobj, Menus;

type
  TPurtraceMatch = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    LeftPanel: TPanel;
    DDZlDBGrid: TDBGridEh;
    Panel4: TPanel;
    UpperLabel: TLabel;
    AcessoriesLabel: TLabel;
    ReinformceLabel: TLabel;
    BottomLabel: TLabel;
    RightPanel: TPanel;
    MainClassPage: TPageControl;
    TabSheet2: TTabSheet;
    DBDetGrid_ML: TDBGridEh;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DDZLQry: TQuery;
    DDZLDS: TDataSource;
    tmpQuery: TQuery;
    DDZLQryZLBH: TStringField;
    DDZLQryARTICLE: TStringField;
    DDZLQryPairs: TIntegerField;
    DDZLQryAPlanDate: TDateTimeField;
    DDZLQryShipDate: TDateTimeField;
    DDZLQryML: TStringField;
    DDZLQryFML: TStringField;
    DDZLQryFGL: TStringField;
    DDZLQryDL: TStringField;
    Splitter1: TSplitter;
    Label1: TLabel;
    BuyNoEdit: TEdit;
    Label5: TLabel;
    DDBHEdit: TEdit;
    DDZLDet_MLDS: TDataSource;
    DDZLDet_ML: TQuery;
    DDZLDet_FMLDS: TDataSource;
    DDZLDet_FGLDS: TDataSource;
    DDZLDet_DLDS: TDataSource;
    DDZLDet_MLBUYNO: TStringField;
    DDZLDet_MLZLBH: TStringField;
    DDZLDet_MLDDZT: TStringField;
    DDZLDet_MLKHPO: TStringField;
    DDZLDet_MLCLBH: TStringField;
    DDZLDet_MLYWPM: TStringField;
    DDZLDet_MLZWPM: TStringField;
    DDZLDet_MLDWBH: TStringField;
    DDZLDet_MLArticle: TStringField;
    DDZLDet_MLXieMing: TStringField;
    DDZLDet_MLPairs: TIntegerField;
    DDZLDet_MLCQDH: TStringField;
    DDZLDet_MLCGQty: TCurrencyField;
    DDZLDet_MLCLSL: TFloatField;
    DDZLDet_MLCGNO: TStringField;
    DDZLDet_MLUseStock: TCurrencyField;
    DDZLDet_MLRKNO: TStringField;
    DDZLDet_MLRKDate: TDateTimeField;
    DDZLDet_MLAPlanDate: TDateTimeField;
    DDZLDet_MLShipDate: TDateTimeField;
    DDZLDet_MLindate: TDateTimeField;
    DDZLDet_MLcldate: TDateTimeField;
    DDZLDet_MLorderdate: TDateTimeField;
    DDZLDet_MLywsm: TStringField;
    DDZLDet_MLZSDH: TStringField;
    DDZLDet_MLzsywjc: TStringField;
    DDZLDet_MLProdLeadTime: TIntegerField;
    DDZLDet_MLRKQty: TCurrencyField;
    DDZLDet_FML: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField1: TIntegerField;
    StringField11: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField12: TStringField;
    StringField13: TStringField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    DateTimeField9: TDateTimeField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    IntegerField2: TIntegerField;
    DDZLDet_FGL: TQuery;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    IntegerField3: TIntegerField;
    StringField27: TStringField;
    FloatField2: TFloatField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    StringField28: TStringField;
    StringField29: TStringField;
    DateTimeField13: TDateTimeField;
    DateTimeField14: TDateTimeField;
    DateTimeField15: TDateTimeField;
    DateTimeField16: TDateTimeField;
    DateTimeField17: TDateTimeField;
    DateTimeField18: TDateTimeField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    IntegerField4: TIntegerField;
    DDZLDet_DL: TQuery;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    IntegerField5: TIntegerField;
    StringField43: TStringField;
    FloatField3: TFloatField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    StringField44: TStringField;
    StringField45: TStringField;
    DateTimeField22: TDateTimeField;
    DateTimeField23: TDateTimeField;
    DateTimeField24: TDateTimeField;
    DateTimeField25: TDateTimeField;
    DateTimeField26: TDateTimeField;
    DateTimeField27: TDateTimeField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    IntegerField6: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    DBDetGrid_FML: TDBGridEh;
    DBDetGrid_FGL: TDBGridEh;
    DBDetGrid_DL: TDBGridEh;
    DTP1: TDateTimePicker;
    Label6: TLabel;
    DTP2: TDateTimePicker;
    PlandateCK: TCheckBox;
    DDZLQryBuyNo: TStringField;
    DDZLQryKHPO: TStringField;
    DDZLDet_MLYQDate: TStringField;
    DDZLDet_MLCFMDate: TStringField;
    DDZLDet_MLCGDate: TStringField;
    DDZLDet_FMLYQDate: TStringField;
    DDZLDet_FMLCFMDate: TStringField;
    DDZLDet_FMLCGDate: TStringField;
    DDZLDet_FGLYQDate: TStringField;
    DDZLDet_FGLCFMDate: TStringField;
    DDZLDet_FGLCGDate: TStringField;
    DDZLDet_DLYQDate: TStringField;
    DDZLDet_DLCFMDate: TStringField;
    DDZLDet_DLCGDate: TStringField;
    OrderExcelBtn: TButton;
    Label8: TLabel;
    OrderCombo: TComboBox;
    NoNeedPopu: TPopupMenu;
    Noneedpurchase1: TMenuItem;
    NoneedpurchaseList1: TMenuItem;
    N1: TMenuItem;
    DDZLDet_MLSamplePurchaser: TStringField;
    DDZLDet_MLUSERName: TStringField;
    DDZLDet_FMLSamplePurchaser: TStringField;
    DDZLDet_FMLUSERName: TStringField;
    DDZLDet_FGLSamplePurchaser: TStringField;
    DDZLDet_FGLUSERName: TStringField;
    DDZLDet_DLSamplePurchaser: TStringField;
    DDZLDet_DLUSERName: TStringField;
    NoETDBtn: TButton;
    OpenDialog: TOpenDialog;
    Label7: TLabel;
    Label9: TLabel;
    ArticleEdit: TEdit;
    DDZLDet_MLETADate: TStringField;
    DDZLDet_FMLETADate: TStringField;
    DDZLDet_FGLETADate: TStringField;
    DDZLDet_DLETADate: TStringField;
    DDZLQryReadyDate1: TIntegerField;
    DDZLQryReadyDate2: TIntegerField;
    Excel1: TMenuItem;
    CancelCK: TCheckBox;
    DDZLQryXieMing: TStringField;
    Label22: TLabel;
    SupplierEdit: TEdit;
    Label20: TLabel;
    LocCB: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    OS: TEdit;
    Label21: TLabel;
    Edit1: TEdit;
    Label19: TLabel;
    ComboBox1: TComboBox;
    Button3: TButton;
    CheckBox1: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DDZlDBGridCellClick(Column: TColumnEh);
    procedure DBDetGrid_MLGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBDetGrid_FMLGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure DBDetGrid_FGLGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure DBDetGrid_DLGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OrderExcelBtnClick(Sender: TObject);
    procedure Noneedpurchase1Click(Sender: TObject);
    procedure NoneedpurchaseList1Click(Sender: TObject);
    procedure NoETDBtnClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DDZlDBGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    procedure ExportOrderList();
    procedure ExportMatDetial();
    procedure InsertCLZLFilter(CLBH:String);
    procedure ExportQueryExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  PurtraceMatch: TPurtraceMatch;

implementation
  uses main1, PurtraceMatch_OrderExcel1, PurtraceMatch_NoNeedPurchase1, FunUnit;
{$R *.dfm}

procedure TPurtraceMatch.FormDestroy(Sender: TObject);
begin
  PurtraceMatch:=nil;
end;

procedure TPurtraceMatch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TPurtraceMatch.Button1Click(Sender: TObject);
begin
  if ((BuyNoEdit.Text='') and (DDBHEdit.Text='') and (PlandateCK.Checked=false) and (OrderCombo.Text='') ) then
  begin
    Showmessage('Please input Order or BuyNo or PlanDate');
    Exit;
  end;

  DDZLDet_ML.Active:=false;
  DDZLDet_FML.Active:=false;
  DDZLDet_FGL.Active:=false;
  DDZLDet_DL.Active:=false;
  with DDZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#RYPurchase'') is not null    ');
    SQL.Add('begin drop table #RYPurchase end ');
    SQL.Add('');
    SQL.Add('Select * into #RYPurchase from ( ');
    SQL.Add('select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
    SQL.Add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
    SQL.Add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,');
    SQL.Add('        convert(varchar,CGZL.YQDate,111) as YQDate,convert(varchar,CGZL.CFMDate,111) as CFMDate,case when CLZL.CQDH=''VN'' then convert(varchar,CGZL.CFMDate,111) else convert(varchar,CGZL.CFMDate,111) end  as ETADate,');
    SQL.Add('        convert(varchar,CGZl.CGDate,111) as CGDate,');
    SQL.Add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,');
    SQL.Add('        RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,min(SC.schedule_date) as APlanDate,DDZL.ShipDate      ');
    SQL.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
    SQL.Add('        ,convert(smalldatetime,max(zlzls2.userdate),111) as cldate');
    SQL.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');
    SQL.Add('        ,lbzls.ywsm,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as zsywjc');
    SQL.Add('        ,MaterialMOQ.ProdLeadTime   ');
    SQL.Add('from ZLZLS2 with (nolock)  ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' and DDZL.DDBH  like '''+DDBHEdit.Text+'%'' and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    if OrderCombo.Text<>'' then
    SQL.Add('inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL_Excel.DDBH and DDZL_Excel.DFL='''+OrderCombo.Text+''' ');
    SQL.Add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
    SQL.Add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH ');
    SQL.Add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
    SQL.Add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
    SQL.Add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    SQL.Add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
    SQL.Add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
    //SQL.Add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH ');
    SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = ZLZLS2.ZLBH');
    SQL.Add('Left join CLZLFilter on CLZLFilter.CLDH=ZLZLS2.CLBH and CLZLFilter.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
    SQL.Add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
    SQL.Add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPrice ');
    SQL.Add('           from CGZLSS with (nolock) ');
    SQL.Add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' and DDZL.DDBH  like '''+DDBHEdit.Text+'%'' and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    if OrderCombo.Text<>'' then
    SQL.Add('           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL_Excel.DDBH and DDZL_Excel.DFL='''+OrderCombo.Text+''' ');
    SQL.Add('           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and CGZLSS.ZLBH  like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ');
    SQL.Add('           union all');
    SQL.Add('           select YWDD.YSBH as ZLBH,YWBZPO.CLBH,sum(YWBZPO.Qty) as CGQty,getdate() as CFMDate,max(CGZL.CGDate) as CGDate');
    SQL.Add('                  ,max(CGZL.CGNO) as CGNO,getdate() as YQDate,0 as USPrice,0 as VNPrice');
    SQL.Add('           from (select YWBZPO.DDBH,YWBZPO.CLBH,sum(CTS) as Qty from YWBZPO,YWDD where YWBZPO.ddbh=YWDD.DDBH and YWDD.YSBH  like '''+DDBHEdit.Text+'%''  group by YWBZPO.DDBH,YWBZPO.CLBH');
    SQL.Add('                 union all select DDBH,CLBH,sum(CTS) as Qty from YWBZPOE where ddbh  like '''+DDBHEdit.Text+'%''  group by DDBH,CLBH )ywbzpo');
    SQL.Add('           left join YWDD on YWDD.DDBH=YWBZPO.DDBH');
    SQL.Add('           left join DDZL on DDZL.DDBH=YWDD.YSBH');
    if OrderCombo.Text<>'' then
    SQL.Add('           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL_Excel.DDBH and DDZL_Excel.DFL='''+OrderCombo.Text+''' ');
    SQL.Add('           left join CGZL on CGZL.CGNO=YWDD.CGNO');
    SQL.Add('           where DDZL.DDBH  like '''+DDBHEdit.Text+'%'' and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    SQL.Add('           and YWDD.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('           and DDZL.BuyNO like '''+BuyNoEdit.Text+'%''');
    SQL.Add('           and YWBZPO.CLBH like ''%''');
    SQL.Add('           group by YWDD.YSBH,YWBZPO.CLBH ) CGZL');
    SQL.Add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
    SQL.Add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.Add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.Add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.Add('           from  KCRKS with (nolock)  ');
    SQL.Add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' and DDZL.DDBH  like '''+DDBHEdit.Text+'%'' and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    if OrderCombo.Text<>'' then
    SQL.Add('           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL_Excel.DDBH and DDZL_Excel.DFL='''+OrderCombo.Text+''' ');
    SQL.Add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and KCRKS.CGBH  like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    SQL.Add('left join (select HG_INVS.CGBH as ZLBH ,HG_INVS.CLBH,sum(HG_INVS.Qty ) as HGQty, ');
    SQL.Add('                  max(HG_INV.DOCNO) as DOCNO,max(HG_INV.USERDate) as HGDate ');
    SQL.Add('           from  HG_INVS with (nolock) ');
    SQL.Add('           inner join DDZL on DDZL.DDBH=HG_INVS.CGBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' and DDZL.DDBH  like '''+DDBHEdit.Text+'%'' and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    if OrderCombo.Text<>'' then
    SQL.Add('           inner join DDZL_Excel with (nolock) on DDZL.DDBH=DDZL_Excel.DDBH and DDZL_Excel.DFL='''+OrderCombo.Text+''' ');
    SQL.Add('           left join HG_INV with (nolock)  on HG_INV.RKNO=HG_INVS.RKNO');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and HG_INVS.CGBH  like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('           group by HG_INVS.CGBH,HG_INVS.CLBH ) HGINV');
    SQL.Add('                 on HGINV.ZLBH=ZLZLS2.ZLBH and HGINV.CLBH=ZLZLS2.CLBH');
    SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
    SQL.Add('left join (');
    SQL.Add('		   Select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location from (');
    SQL.Add('		   Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_Leadtime,A.Location from (');
    SQL.Add('			   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,USERDATE desc) ');
    SQL.Add('			   as  rn from ');
    SQL.Add('			  (');
    SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USERDATE ');
    SQL.Add('			  from MaterialMOQ with (nolock)');
    SQL.Add('			  left join CLZL_LS with (nolock) on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
    SQL.Add('			  where 1=1');
    SQL.Add('		   ) A where A.rn=1 and A.CLBH in (select distinct CLBH from ZLZLS2,DDZL where DDZL.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    if OrderCombo.Text<>'' then
    SQL.Add('                                       and DDZL.DDBH in (Select DDBH from DDZL_Excel where DFL='''+OrderCombo.Text+''') ');
    SQL.Add('                                       and ZLZLS2.ZLBH  like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('                                       and ZLZLS2.CLBH not like ''W%'' and ZLZLS2.CLBH like ''%'' and ZLZLS2.CLSL<>0 and ZLZLS2.ZMLB=''N'') ');
    SQL.Add('    ) MatMOQ');
    SQL.Add('		) MaterialMOQ on MaterialMOQ.CLBH=ZLZLS2.CLBH ');
    SQL.Add('       where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('       and ZLZLS2.CLBH not like ''W%''');
    SQL.Add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    SQL.Add('       and ZLZLS2.ZLBH  like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%''');
    SQL.Add('       and ZLZLS2.ZMLB=''N''');
    SQL.Add('       and ZLZLS2.CLSL<>0');
    SQL.Add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');
    SQL.Add('       and CLZLFilter.CLDH is null ');
    if CancelCK.Checked=false then
    SQL.Add('       and DDZL.DDZT<>''C'' ');
    if LocCB.Text<>'' then
    SQL.Add('       and CLZL.CQDH='''+LocCB.Text+''' ');
    if PlandateCK.Checked=true then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,SC.schedule_date,111))  between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if SupplierEdit.Text<>'' then
      SQL.add(' and ZSZL.zsywjc like ''%'+SupplierEdit.Text+'%'' ');
    SQL.Add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
    SQL.Add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
    SQL.Add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate, ');
    SQL.Add('         ddzl.ddrq,lbzls.ywsm ');
    SQL.Add('         ,MaterialMOQ.ProdLeadTime');
    SQL.Add(') ZLZLS2 where 1=1 and ZLZLS2.CFMDate IS NOT NULL  ');
    //
    SQL.Add('select * from ( ');
    SQL.Add('Select #RYPurchase.ZLBH,#RYPurchase.BuyNO,#RYPurchase.KHPO,#RYPurchase.XieMing,#RYPurchase.ARTICLE,#RYPurchase.Pairs,#RYPurchase.APlanDate,#RYPurchase.ShipDate,null as ReadyDate1,null as ReadyDate2');
    SQL.Add('       ,Min(Case when CG_ML.ZLBH is not null then  Case when Min_EDT_ML<>'''' then Max_EDT_ML else Min_EDT_ML  end   else Convert(varchar,#RYPurchase.orderdate,111) end) as ML ');
    SQL.Add('       ,Min(Case when CG_FML.ZLBH is not null then Case when Min_EDT_FML<>'''' then Max_EDT_FML else Min_EDT_FML  end else Convert(varchar,#RYPurchase.orderdate,111) end) as FML ');
    SQL.Add('       ,Min(Case when CG_FGL.ZLBH is not null then  Case when Min_EDT_FGL<>'''' then Max_EDT_FGL else Min_EDT_FGL  end  else Convert(varchar,#RYPurchase.orderdate,111) end) as FGL ');
    SQL.Add('       ,Min(Case when CG_DL.ZLBH is not null then Case when Min_EDT_DL<>'''' then Max_EDT_DL else Min_EDT_FGL  end  else Convert(varchar,#RYPurchase.orderdate,111) end) as DL ');
    SQL.Add('       ,case when APlanDate is null then ShipDate-42 else APlanDate-7 end as comparedate ');
    SQL.Add('from #RYPurchase');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'''')) as Min_EDT_ML,MAX(IsNull(Convert(varchar,ETADate,111),'''')) as Max_EDT_ML');
    SQL.Add('   from  #RYPurchase A');
    SQL.Add('   where   (LEFT(A.CLBH,1) in (''A'',''C'',''F'',''K'',''B'')  or (LEFT(A.CLBH,3)=''P21'' and A.dwbh<>''PRS''))  and IsNull(UseStock,0.0)<CLSL');
    //SQL.Add('   and RKdate is null');
    SQL.Add('   Group by ZLBH');
    SQL.Add(') CG_ML on  CG_ML.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'''')) as Min_EDT_FML,MAX(IsNull(Convert(varchar,ETADate,111),'''')) as Max_EDT_FML');
    SQL.Add('   from  #RYPurchase B');
    SQL.Add('   where (LEFT(B.CLBH,1) in (''E'',''G'',''I'',''L'',''M'',''N'')  or  LEFT(B.CLBH,3)  in (''D01'',''D02'',''D11''))  and IsNull(UseStock,0.0)<CLSL');
    //SQL.Add('   and RKdate is null');
    SQL.Add('   Group by ZLBH');
    SQL.Add(') CG_FML on  CG_FML.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'''')) as Min_EDT_FGL,MAX(IsNull(Convert(varchar,ETADate,111),'''')) as Max_EDT_FGL');
    SQL.Add('   from  #RYPurchase C');
    SQL.Add('   where LEFT(C.CLBH,1) in (''D'',''H'',''O'') and LEFT(C.CLBH,3)  not in (''D01'',''D02'',''D11'')   and IsNull(UseStock,0.0)<CLSL');
    SQL.Add('   Group by ZLBH');
    SQL.Add(') CG_FGL on  CG_FGL.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,ETADate,111),'''')) as Min_EDT_DL,MAX(IsNull(Convert(varchar,ETADate,111),'''')) as Max_EDT_DL');
    SQL.Add('   from  #RYPurchase D');
    SQL.Add('   where LEFT(D.CLBH,1) in (''J'',''P'') and LEFT(D.CLBH,3) not in  (''P21'')  and IsNull(UseStock,0.0)<CLSL');
    SQL.Add('   Group by  ZLBH');
    SQL.Add(') CG_DL on  CG_DL.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('Group by #RYPurchase.ZLBH,#RYPurchase.BuyNO,#RYPurchase.KHPO,#RYPurchase.XieMing,#RYPurchase.ARTICLE,#RYPurchase.Pairs,#RYPurchase.APlanDate,#RYPurchase.ShipDate');
    SQL.Add(') RYPurchase ');
    if CheckBox1.Checked then begin
    SQL.Add('where (ML is null or FML is null) or (ML > comparedate or FML > comparedate)');
    end;
    SQL.Add('Order by RYPurchase.APlanDate ');
    //以入庫日為優先
    {
    SQL.Add('Select #RYPurchase.ZLBH,#RYPurchase.BuyNO,#RYPurchase.KHPO,#RYPurchase.ARTICLE,#RYPurchase.Pairs,#RYPurchase.APlanDate,#RYPurchase.ShipDate,null as ReadyDate');
    SQL.Add('       ,Min(Case when CG_ML.ZLBH is not null then Case when Min_RK_ML='''' then Case when Min_EDT_ML<>'''' then Max_EDT_ML else Min_EDT_ML  end else Max_RK_ML end else ''X'' end) as ML');
    SQL.Add('       ,Min(Case when CG_FML.ZLBH is not null then Case when Min_RK_FML='''' then Case when Min_EDT_FML<>'''' then Max_EDT_FML else Min_EDT_FML  end else Max_RK_FML end else ''X'' end) as FML');
    SQL.Add('       ,Min(Case when CG_FGL.ZLBH is not null then Case when Min_RK_FGL='''' then Case when Min_EDT_FGL<>'''' then Max_EDT_FGL else Min_EDT_FGL  end else Max_RK_FGL end else ''X'' end) as FGL');
    SQL.Add('       ,Min(Case when CG_DL.ZLBH is not null then Case when Min_RK_DL='''' then Case when Min_EDT_DL<>'''' then Max_EDT_DL else Min_EDT_FGL  end else Max_RK_DL end else ''X'' end) as DL');
    SQL.Add('from #RYPurchase');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Min_EDT_ML,MAX(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Max_EDT_ML,');
    SQL.Add('               MIN(IsNull(Convert(varchar,RKDate,111),'''')) as Min_RK_ML,Max(IsNull(Convert(varchar,RKDate,111),'''')) as Max_RK_ML     ');
    SQL.Add('   from  #RYPurchase A');
    SQL.Add('   where   (LEFT(A.CLBH,1) in (''A'',''C'',''F'',''K'',''B'')  or LEFT(A.CLBH,3)=''P21'')  and IsNull(UseStock,0.0)<CLSL');
    SQL.Add('   Group by ZLBH');
    SQL.Add(') CG_ML on  CG_ML.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Min_EDT_FML,MAX(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Max_EDT_FML,');
    SQL.Add('               MIN(IsNull(Convert(varchar,RKDate,111),'''')) as Min_RK_FML,Max(IsNull(Convert(varchar,RKDate,111),'''')) as Max_RK_FML    ');
    SQL.Add('   from  #RYPurchase B');
    SQL.Add('   where (LEFT(B.CLBH,1) in (''E'',''G'',''I'',''L'',''M'',''N'')  or  LEFT(B.CLBH,3)  in (''D01'',''D02'',''D11''))  and IsNull(UseStock,0.0)<CLSL');
    SQL.Add('   Group by ZLBH');
    SQL.Add(') CG_FML on  CG_FML.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Min_EDT_FGL,MAX(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Max_EDT_FGL,');
    SQL.Add('               MIN(IsNull(Convert(varchar,RKDate,111),'''')) as Min_RK_FGL,Max(IsNull(Convert(varchar,RKDate,111),'''')) as Max_RK_FGL  ');
    SQL.Add('   from  #RYPurchase C');
    SQL.Add('   where LEFT(C.CLBH,1) in (''D'',''H'',''O'',''U'') and LEFT(C.CLBH,3)  not in (''D01'',''D02'',''D11'')   and IsNull(UseStock,0.0)<CLSL');
    SQL.Add('   Group by ZLBH');
    SQL.Add(') CG_FGL on  CG_FGL.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('left join (');
    SQL.Add('   Select ZLBH,Min(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Min_EDT_DL,MAX(IsNull(Convert(varchar,IsNull(RKDate,ETADate),111),'''')) as Max_EDT_DL,');
    SQL.Add('               MIN(IsNull(Convert(varchar,RKDate,111),'''')) as Min_RK_DL,Max(IsNull(Convert(varchar,RKDate,111),'''')) as Max_RK_DL  ');
    SQL.Add('   from  #RYPurchase D');
    SQL.Add('   where LEFT(D.CLBH,1) in (''J'',''P'') and LEFT(D.CLBH,3) not in  (''P21'')  and IsNull(UseStock,0.0)<CLSL');
    SQL.Add('   Group by  ZLBH');
    SQL.Add(') CG_DL on  CG_DL.ZLBH=#RYPurchase.ZLBH ');
    SQL.Add('Group by #RYPurchase.ZLBH,#RYPurchase.BuyNO,#RYPurchase.KHPO,#RYPurchase.ARTICLE,#RYPurchase.Pairs,#RYPurchase.APlanDate,#RYPurchase.ShipDate');
    SQL.Add('Order by #RYPurchase.APlanDate ');
    }
    funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
    //
  end;

  with DDZLDet_ML do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select A.*,zszl_dev.SamplePurchaser,BUsers.USERName     ');
    SQL.Add('from  #RYPurchase A');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=A.ZSDH and zszl_dev.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser ');
    SQL.Add('where ZLBH=:ZLBH and  (LEFT(A.CLBH,1) in (''A'',''C'',''F'',''K'',''B'')   or (LEFT(A.CLBH,3)=''P21'' and A.dwbh<>''PRS'')) ');
  end;

  with DDZLDet_FML do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('Select B.*, zszl_dev.SamplePurchaser, BUsers.USERName');
    SQL.Add('from  #RYPurchase B');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh = B.ZSDH and zszl_dev.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('left join BUsers on Busers.USERID = zszl_dev.SamplePurchaser ');
    SQL.Add('where ZLBH = :ZLBH');
    SQL.Add('  and (LEFT(B.CLBH, 1) in (''E'',''G'',''I'',''M'',''N'')');
    SQL.Add('       or LEFT(B.CLBH, 1) = ''L'' and B.CLBH in (''L050000091'', ''L050000092'', ''L090000541''))');
  end;

  with DDZLDet_FGL do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('Select C.*, zszl_dev.SamplePurchaser, BUsers.USERName');
    SQL.Add('from  #RYPurchase C');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh = C.ZSDH and zszl_dev.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('left join BUsers on Busers.USERID = zszl_dev.SamplePurchaser ');
    SQL.Add('where ZLBH = :ZLBH and LEFT(C.CLBH,1) in (''D'',''H'',''O'',''L'') and LEFT(C.CLBH,3) not in (''D01'',''D02'',''D11'')');
    SQL.Add('and C.CLBH not in (''L050000091'', ''L050000092'', ''L090000541'')');
   end;

  
  //Code sua
  {with DDZLDet_FML do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select B.*,zszl_dev.SamplePurchaser,BUsers.USERName     ');
    SQL.Add('from  #RYPurchase B');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=B.ZSDH and zszl_dev.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser ');
    SQL.Add('where ZLBH=:ZLBH and (LEFT(B.CLBH,1) in (''E'',''G'',''I'',''L'',''M'',''N'')  or  LEFT(B.CLBH,3)  in (''D01'',''D02'',''D11''))');
    SQL.Add('and not (LEFT(B.CLBH, 1) = ''L'' and B.CLBH in (''L050000091'', ''L050000092'', ''L090000541''))');

  end;

  with DDZLDet_FGL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select C.*,zszl_dev.SamplePurchaser,BUsers.USERName     ');
    SQL.Add('from  #RYPurchase C');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=C.ZSDH and zszl_dev.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser ');
    SQL.Add('where ZLBH=:ZLBH and LEFT(C.CLBH,1) in (''D'',''H'',''O'',''L'') and LEFT(C.CLBH,3)  not in (''D01'',''D02'',''D11'') ');
    SQL.Add('or not (LEFT(C.CLBH, 1) = ''L'' and C.CLBH not in (''L050000091'', ''L050000092'', ''L090000541''))');
  end;}


  with DDZLDet_DL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select D.*,zszl_dev.SamplePurchaser,BUsers.USERName    ');
    SQL.Add('from  #RYPurchase D');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=D.ZSDH and zszl_dev.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser ');
    SQL.Add('where ZLBH=:ZLBH and (LEFT(D.CLBH,1) in (''J'') or (LEFT(D.CLBH,1) in (''P'') and D.dwbh=''PRS''))');
  end;

end;

procedure TPurtraceMatch.DDZlDBGridCellClick(Column: TColumnEh);
begin
  if DDZLQry.Active=true then
  begin
    if Column.FieldName='ML' then
    begin
     DDZLDet_ML.Active:=true;
     MainClassPage.ActivePageIndex:=0 ;
    end;
    if Column.FieldName='FML' then
    begin
     DDZLDet_FML.Active:=true;
     MainClassPage.ActivePageIndex:=1 ;
    end;
    if Column.FieldName='FGL' then
    begin
     DDZLDet_FGL.Active:=true;
     MainClassPage.ActivePageIndex:=2 ;
    end;
    if Column.FieldName='DL' then
    begin
     DDZLDet_DL.Active:=true;
     MainClassPage.ActivePageIndex:=3 ;
    end;
  end;
end;

procedure TPurtraceMatch.DBDetGrid_MLGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DDZLDet_ML.FieldByName('CLSL').value=DDZLDet_ML.FieldByName('CGQty').value+DDZLDet_ML.FieldByName('UseStock').value then
  begin
    DBDetGrid_ML.canvas.font.color:=clBlue;
  end;
  if (((DDZLDet_ML.FieldByName('CGQty').value>0) or (DDZLDet_ML.FieldByName('UseStock').value>0))
                    and (DDZLDet_ML.FieldByName('CLSL').value>(DDZLDet_ML.FieldByName('CGQty').value+DDZLDet_ML.FieldByName('UseStock').value))) then
  begin
    if ((DDZLDet_ML.FieldByName('CGQty').value<>0) or (DDZLDet_ML.FieldByName('UseStock').value<>0)) then
    begin
      DBDetGrid_ML.canvas.font.color:=clred;
    end;
  end;
  if DDZLDet_ML.FieldByName('CLSL').value<DDZLDet_ML.FieldByName('CGQty').value+DDZLDet_ML.FieldByName('UseStock').value then
  begin
    DBDetGrid_ML.canvas.font.color:=clgreen;
  end;
end;

procedure TPurtraceMatch.DBDetGrid_FMLGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DDZLDet_FML.FieldByName('CLSL').value=DDZLDet_FML.FieldByName('CGQty').value+DDZLDet_FML.FieldByName('UseStock').value then
  begin
    DBDetGrid_FML.canvas.font.color:=clBlue;
  end;
  if (((DDZLDet_FML.FieldByName('CGQty').value>0) or (DDZLDet_FML.FieldByName('UseStock').value>0))
                    and (DDZLDet_FML.FieldByName('CLSL').value>(DDZLDet_FML.FieldByName('CGQty').value+DDZLDet_FML.FieldByName('UseStock').value))) then
  begin
    if ((DDZLDet_FML.FieldByName('CGQty').value<>0) or (DDZLDet_FML.FieldByName('UseStock').value<>0)) then
    begin
      DBDetGrid_FML.canvas.font.color:=clred;
    end;
  end;
  if DDZLDet_FML.FieldByName('CLSL').value<DDZLDet_FML.FieldByName('CGQty').value+DDZLDet_FML.FieldByName('UseStock').value then
  begin
    DBDetGrid_FML.canvas.font.color:=clgreen;
  end;
end;

procedure TPurtraceMatch.DBDetGrid_FGLGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DDZLDet_FGL.FieldByName('CLSL').value=DDZLDet_FGL.FieldByName('CGQty').value+DDZLDet_FGL.FieldByName('UseStock').value then
  begin
    DBDetGrid_FGL.canvas.font.color:=clBlue;
  end;
  if (((DDZLDet_FGL.FieldByName('CGQty').value>0) or (DDZLDet_FGL.FieldByName('UseStock').value>0))
                    and (DDZLDet_FGL.FieldByName('CLSL').value>(DDZLDet_FGL.FieldByName('CGQty').value+DDZLDet_FGL.FieldByName('UseStock').value))) then
  begin
    if ((DDZLDet_FML.FieldByName('CGQty').value<>0) or (DDZLDet_FML.FieldByName('UseStock').value<>0)) then
    begin
      DBDetGrid_FGL.canvas.font.color:=clred;
    end;
  end;
  if DDZLDet_FGL.FieldByName('CLSL').value<DDZLDet_FGL.FieldByName('CGQty').value+DDZLDet_FGL.FieldByName('UseStock').value then
  begin
    DBDetGrid_FGL.canvas.font.color:=clgreen;
  end;
end;

procedure TPurtraceMatch.DBDetGrid_DLGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DDZLDet_DL.FieldByName('CLSL').value=DDZLDet_DL.FieldByName('CGQty').value+DDZLDet_DL.FieldByName('UseStock').value then
  begin
    DBDetGrid_DL.canvas.font.color:=clBlue;
  end;
  if (((DDZLDet_DL.FieldByName('CGQty').value>0) or (DDZLDet_DL.FieldByName('UseStock').value>0))
                    and (DDZLDet_DL.FieldByName('CLSL').value>(DDZLDet_DL.FieldByName('CGQty').value+DDZLDet_DL.FieldByName('UseStock').value))) then
  begin
    if ((DDZLDet_DL.FieldByName('CGQty').value<>0) or (DDZLDet_DL.FieldByName('UseStock').value<>0)) then
    begin
      DBDetGrid_DL.canvas.font.color:=clred;
    end;
  end;
  if DDZLDet_DL.FieldByName('CLSL').value<DDZLDet_DL.FieldByName('CGQty').value+DDZLDet_DL.FieldByName('UseStock').value then
  begin
    DBDetGrid_DL.canvas.font.color:=clgreen;
  end;
end;

procedure TPurtraceMatch.FormCreate(Sender: TObject);
begin

  with tmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Distinct DFL from DDZL_Excel');
    Active:=true;
    OrderCombo.Items.Clear;
    OrderCombo.Items.Add('');
    while not Eof do
    begin
      OrderCombo.Items.add(FieldByName('DFL').AsString);
      Next;
    end;
    Active:=false;
  end;
  DTP1.Date:=Date()-3;
  DTP2.Date:=Date();
  //
end;


procedure TPurtraceMatch.ExportMatDetial();
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    MatDate,APlanDate:TDateTime;
    MatList,MatDateStr:String;
    //日期格式
    OldShortDateFormat:string;    
begin
  if  DDZLQry.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        //日期格式
        OldShortDateFormat := ShortDateFormat;
        ShortDateFormat := 'YYYY/MM/DD';
        //    
        DDZLDet_ML.Active:=true;
        DDZLDet_FML.Active:=true;
        DDZLDet_FGL.Active:=true;
        DDZLDet_DL.Active:=true;
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Cells(1,1):='RY#';
        eclApp.Cells(1,2):='Buy No';
        eclApp.Cells(1,3):='Main PO';
        eclApp.Cells(1,4):='Shoe Name';
        eclApp.Cells(1,5):='SKU#';
        eclApp.Cells(1,6):='Pairs';
        eclApp.Cells(1,7):='GAC Date';
        eclApp.Cells(1,8):='Plan Date';
        eclApp.Cells(1,9):='Ready Date(U+S)面料+針車副料';
        eclApp.Cells(1,10):='Ready Date(B+P)包裝+底組件';
        eclApp.Cells(1,11):='Uppers Date';
        eclApp.Cells(1,12):='Stitching Date';
        eclApp.Cells(1,13):='Assembly Date';
        eclApp.Cells(1,14):='Packing Date';
        eclApp.Cells(1,15):='Plan Stitching Date';
        //材料清單
        eclApp.Cells(1,16):='Uppers';
        eclApp.Cells(1,17):='Stitching';
        eclApp.Cells(1,18):='Bottom';
        eclApp.Cells(1,19):='Packing';
        //
        DDZLQry.First;
        j:=2;
        while  not  DDZLQry.Eof   do
        begin
          //20210610會議 針車上線日-42天
          if (DDZLQry.FieldByName('APlanDate').AsString<>'')  then
            APlanDate:=DDZLQry.FieldByName('APlanDate').Value-7
          else
            APlanDate:=DDZLQry.FieldByName('ShipDate').Value-42;
          eclApp.Cells(j,15):=APlanDate;
          for   i:=0   to  DDZLQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DDZLQry.Fields[i].Value;
          end;
          //U+S配套日
          MatDateStr:='';
          if ((DDZLQry.Fields[10].AsString<>'') and (DDZLQry.Fields[11].AsString<>'')  ) then  //
          begin
            MatDate:=Date()-99999;
            if DDZLQry.Fields[10].AsString<>'X' then
              if strtodate(DDZLQry.Fields[10].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[10].Value);
            if DDZLQry.Fields[11].AsString<>'X' then
              if strtodate(DDZLQry.Fields[11].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[11].Value);
            if ((DDZLQry.Fields[10].AsString<>'X') and (DDZLQry.Fields[11].AsString<>'X'))  then  MatDateStr:=datetostr(MatDate);
            eclApp.Cells(j,9):=MatDateStr;
          end else
            if ((DDZLQry.Fields[10].AsString<>'') or (DDZLQry.Fields[11].AsString<>'') ) then
              eclApp.Rows[j].Font.Color :=clBlue
            else
            if ((DDZLQry.Fields[10].AsString='') and (DDZLQry.Fields[11].AsString='') ) then
              eclApp.Rows[j].Font.Color :=clgreen;
          //配套日>上線日顯示紅色
          if  MatDate>APlanDate  then
          begin
            eclApp.Rows[j].Font.Color := clRed;
          end;
          //A+B配套日
          MatDateStr:='';
          if ((DDZLQry.Fields[12].AsString<>'') and (DDZLQry.Fields[13].AsString<>'')  ) then  //
          begin
            MatDate:=Date()-99999;
            if DDZLQry.Fields[12].AsString<>'X' then
              if strtodate(DDZLQry.Fields[12].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[12].Value);
            if DDZLQry.Fields[13].AsString<>'X' then
              if strtodate(DDZLQry.Fields[13].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[13].Value);
            if ((DDZLQry.Fields[12].AsString<>'X') and (DDZLQry.Fields[13].AsString<>'X'))  then  MatDateStr:=datetostr(MatDate);
            eclApp.Cells(j,10):=MatDateStr;
          end;
          //面料材料明細
          MatList:='';
          for k:=0 to DDZLDet_ML.RecordCount-1 do
          begin
            MatList:=MatList+'('+inttostr(k+1)+')'+'Mat:'+DDZLDet_ML.FieldByName('ywpm').AsString+'_Supplier:'+DDZLDet_ML.FieldByName('zsywjc').AsString+'_PODate:'+DDZLDet_ML.FieldByName('CGDate').AsString+'_ETD:'+DDZLDet_ML.FieldByName('YQDate').AsString+'_ETA:'+DDZLDet_ML.FieldByName('CFMDate').AsString+''+Chr(10);
            DDZLDet_ML.Next;
          end;
          eclApp.Cells(j,16):=MatList;
          //針車副料明細
          MatList:='';
          for k:=0 to DDZLDet_FML.RecordCount-1 do
          begin
            MatList:=MatList+'('+inttostr(k+1)+')'+'Mat:'+DDZLDet_FML.FieldByName('ywpm').AsString+'_Supplier:'+DDZLDet_FML.FieldByName('zsywjc').AsString+'_PODate:'+DDZLDet_FML.FieldByName('CGDate').AsString+'_ETD:'+DDZLDet_FML.FieldByName('YQDate').AsString+'_ETA:'+DDZLDet_FML.FieldByName('CFMDate').AsString+''+Chr(10);
            DDZLDet_FML.Next;
          end;
          eclApp.Cells(j,17):=MatList;
          //成型副料明細
          MatList:='';
          for k:=0 to DDZLDet_FGL.RecordCount-1 do
          begin
            MatList:=MatList+'('+inttostr(k+1)+')'+'Mat:'+DDZLDet_FGL.FieldByName('ywpm').AsString+'_Supplier:'+DDZLDet_FGL.FieldByName('zsywjc').AsString+'_PODate:'+DDZLDet_FGL.FieldByName('CGDate').AsString+'_ETD:'+DDZLDet_FGL.FieldByName('YQDate').AsString+'_ETA:'+DDZLDet_FGL.FieldByName('CFMDate').AsString+''+Chr(10);
            DDZLDet_FGL.Next;
          end;
          eclApp.Cells(j,18):=MatList;
          //底料明細
          MatList:='';
          for k:=0 to DDZLDet_DL.RecordCount-1 do
          begin
            MatList:=MatList+'('+inttostr(k+1)+')'+'Mat:'+DDZLDet_DL.FieldByName('ywpm').AsString+'_Supplier:'+DDZLDet_DL.FieldByName('zsywjc').AsString+'_PODate:'+DDZLDet_DL.FieldByName('CGDate').AsString+'_ETD:'+DDZLDet_DL.FieldByName('YQDate').AsString+'_ETA:'+DDZLDet_DL.FieldByName('CFMDate').AsString+''+Chr(10);
            DDZLDet_DL.Next;
          end;
          eclApp.Cells(j,19):=MatList;
          //
          eclApp.Rows[j].RowHeight := 50;
          DDZLQry.Next;
          inc(j);
        end;
        //外框線
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+5)+inttostr(j-1)].Borders[1].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+5)+inttostr(j-1)].Borders[2].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+5)+inttostr(j-1)].Borders[3].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+5)+inttostr(j-1)].Borders[4].LineStyle := 1;

        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
        DDZLDet_ML.Active:=false;
        DDZLDet_FML.Active:=false;
        DDZLDet_FGL.Active:=false;
        DDZLDet_DL.Active:=false;
    except
        on   F:Exception   do
        begin
          ShortDateFormat := OldShortDateFormat;
          eclapp.quit;
          showmessage(F.Message);
        end;
    end;
  end;
end;

procedure TPurtraceMatch.ExportOrderList();
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var eclApp,WorkBook:olevariant;
    i,j,DDZL:integer;
    MatDate,APlanDate,MaxDate:TDateTime;
    MatDateStr:string;
    //日期格式
    OldShortDateFormat:string;
begin
  if  DDZLQry.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        //日期格式
        OldShortDateFormat := ShortDateFormat;
        ShortDateFormat := 'YYYY/MM/DD';
        //
        DDZLDet_ML.Active:=false;
        DDZLDet_FML.Active:=false;
        DDZLDet_FGL.Active:=false;
        DDZLDet_DL.Active:=false;
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Cells(1,1):='RY#';
        eclApp.Cells(1,2):='Buy No';
        eclApp.Cells(1,3):='Main PO';
        eclApp.Cells(1,4):='Shoe Name';
        eclApp.Cells(1,5):='SKU#';
        eclApp.Cells(1,6):='Pairs';
        eclApp.Cells(1,7):='GAC Date';
        eclApp.Cells(1,8):='Plan Date';
        eclApp.Cells(1,9):='Ready Date(U+S)面料+針車副料';
        eclApp.Cells(1,10):='Ready Date(B+P)包裝+底組件';
        eclApp.Cells(1,11):='Uppers';
        eclApp.Cells(1,12):='Stitching';
        eclApp.Cells(1,13):='Bottom';
        eclApp.Cells(1,14):='Packing';
        eclApp.Cells(1,15):='Plan Stitching Date';
        eclApp.Cells(1,16):='最晚配套日';
        eclApp.Cells(1,17):='配套KPI';
        //
        DDZLQry.First;
        j:=2;
        while  not  DDZLQry.Eof   do
        begin
          //20210610 會議 針車上線日-42天
          if (DDZLQry.FieldByName('APlanDate').AsString<>'')  then
            APlanDate:=DDZLQry.FieldByName('APlanDate').Value-7
          else
            APlanDate:=DDZLQry.FieldByName('ShipDate').Value-42;
          eclApp.Cells(j,15):=APlanDate;
          //
          for   i:=0   to  DDZLQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DDZLQry.Fields[i].Value;
          end;
          //U+S配套日
          MatDateStr:='';
          if ((DDZLQry.Fields[10].AsString<>'') and (DDZLQry.Fields[11].AsString<>'')  ) then  //
          begin
            MatDate:=Date()-99999;
            if DDZLQry.Fields[10].AsString<>'X' then
              if strtodate(DDZLQry.Fields[10].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[10].Value);
            if DDZLQry.Fields[11].AsString<>'X' then
              if strtodate(DDZLQry.Fields[11].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[11].Value);
            if ((DDZLQry.Fields[10].AsString<>'X') and (DDZLQry.Fields[11].AsString<>'X'))  then  MatDateStr:=datetostr(MatDate);
            eclApp.Cells(j,9):=MatDateStr;
          end else
            if ((DDZLQry.Fields[10].AsString<>'') or (DDZLQry.Fields[11].AsString<>'') ) then
              eclApp.Rows[j].Font.Color :=clBlue
            else
            if ((DDZLQry.Fields[10].AsString='') and (DDZLQry.Fields[11].AsString='') ) then
              eclApp.Rows[j].Font.Color :=clgreen;
          //配套日>上線日顯示紅色
          if  MatDate>APlanDate  then
          begin
            eclApp.Rows[j].Font.Color := clRed;
          end;
          //A+B配套日
          MatDateStr:='';
          if ((DDZLQry.Fields[12].AsString<>'') and (DDZLQry.Fields[13].AsString<>'')  ) then  //
          begin
            MatDate:=Date()-99999;
            if DDZLQry.Fields[12].AsString<>'X' then
              if strtodate(DDZLQry.Fields[12].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[12].Value);
            if DDZLQry.Fields[13].AsString<>'X' then
              if strtodate(DDZLQry.Fields[13].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[13].Value);
            if ((DDZLQry.Fields[12].AsString<>'X') and (DDZLQry.Fields[13].AsString<>'X'))  then  MatDateStr:=datetostr(MatDate);
            eclApp.Cells(j,10):=MatDateStr;
          end;
          if (DDZLQry.Fields[10].AsString<>'') and (DDZLQry.Fields[12].AsString<>'') then
          begin
            if DDZLQry.Fields[10].AsString > DDZLQry.Fields[12].AsString then
            begin
              MaxDate:=strtodate(DDZLQry.Fields[10].AsString);
            end else
            if DDZLQry.Fields[10].AsString < DDZLQry.Fields[12].AsString then
            begin
              MaxDate:=strtodate(DDZLQry.Fields[12].AsString);
            end;
          end else
          begin
            if (DDZLQry.Fields[10].AsString<>'') and (DDZLQry.Fields[12].AsString='') then
            begin
              MaxDate:=strtodate(DDZLQry.Fields[10].AsString);
            end else
            if (DDZLQry.Fields[10].AsString='') and (DDZLQry.Fields[12].AsString<>'') then
            begin
              MaxDate:=strtodate(DDZLQry.Fields[12].AsString);
            end else
            if (DDZLQry.Fields[10].AsString='') and (DDZLQry.Fields[12].AsString='') then
              MaxDate:=0;
          end;
          eclApp.Cells(j,16):= MaxDate;

          if DDZLQry.Fields[7].AsString <> '' then
          begin
            if (strtodate(DDZLQry.Fields[7].AsString)-MaxDate)>=21 then
            begin
              eclApp.Cells(j,17):= 1;
              DDZL:=DDZL+1;
            end else
              eclApp.Cells(j,17):= 0;
            OS.Text:=floattostr((DDZL/DDZLQry.recordcount)*100);
            OS.Text:=copy(OS.Text,1,5);
          end;
          //
          DDZLQry.Next;
          inc(j);
        end;
        //外框線
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+3)+inttostr(j-1)].Borders[1].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+3)+inttostr(j-1)].Borders[2].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+3)+inttostr(j-1)].Borders[3].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i+3)+inttostr(j-1)].Borders[4].LineStyle := 1;

        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
        DDZLDet_ML.Active:=true;
        DDZLDet_FML.Active:=true;
        DDZLDet_FGL.Active:=true;
        DDZLDet_DL.Active:=true;
        //原本日期格式
        ShortDateFormat := OldShortDateFormat;
    except
        on   F:Exception   do
        begin
          ShortDateFormat := OldShortDateFormat;
          eclapp.quit;
          showmessage(F.Message);
        end;
    end;
  end;

end;

procedure TPurtraceMatch.Button2Click(Sender: TObject);
var DlgBtn : Integer;
begin
  DlgBtn := messagedlg('Do you want to order List',mtCustom,[mbYes,mbAll,mbCancel], 0);
  if DlgBtn=mrYes then ExportOrderList();
  if DlgBtn=mrAll then ExportMatDetial();

end;

procedure TPurtraceMatch.OrderExcelBtnClick(Sender: TObject);
begin
  PurtraceMatch_OrderExcel:=TPurtraceMatch_OrderExcel.Create(self);
  PurtraceMatch_OrderExcel.Show;
end;

procedure TPurtraceMatch.InsertCLZLFilter(CLBH:String);
begin
   with tmpQuery do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('IF NOT EXISTS (Select * from CLZLFilter where GSBH='''+main.Edit2.Text+''' and CLDH='''+CLBH+''')');
     SQL.Add('Begin ');
     SQL.Add('Insert into CLZLFilter (GSBH, CLDH, UserID, UserDate, YN) ');
     SQL.Add('Values ('''+main.Edit2.Text+''','''+CLBH+''','''+main.Edit1.Text+''',GetDate(),1)');
     SQl.Add('End ');
     ExecSQL();
   end;
   Showmessage('Success');
end;


procedure TPurtraceMatch.Noneedpurchase1Click(Sender: TObject);
begin
  if MainClassPage.ActivePageIndex=0 then
  begin
    if DDZLDet_ML.Active=true then
       InsertCLZLFilter(DDZLDet_ML.FieldByName('CLBH').AsString);
  end else if MainClassPage.ActivePageIndex=1 then
  begin
    if DDZLDet_FML.Active=true then
       InsertCLZLFilter(DDZLDet_FML.FieldByName('CLBH').AsString);
  end else if MainClassPage.ActivePageIndex=2 then
  begin
    if DDZLDet_FGL.Active=true then
       InsertCLZLFilter(DDZLDet_FGL.FieldByName('CLBH').AsString);
  end else if MainClassPage.ActivePageIndex=3 then
  begin
    if DDZLDet_DL.Active=true then
       InsertCLZLFilter(DDZLDet_DL.FieldByName('CLBH').AsString);
  end;
end;

procedure TPurtraceMatch.NoneedpurchaseList1Click(Sender: TObject);
begin
  PurtraceMatch_NoNeedPurchase:=TPurtraceMatch_NoNeedPurchase.Create(self);
  PurtraceMatch_NoNeedPurchase.ShowModal();
end;

procedure TPurtraceMatch.NoETDBtnClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  //
  if DDZLQry.Active=false then Exit;
  with tmpQuery do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select #RYPurchase.*,zszl_dev.SamplePurchaser,BUsers.USERName');
   SQL.Add('from  #RYPurchase');
   SQL.Add('left join zszl_dev on zszl_dev.zsdh=#RYPurchase.ZSDH and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
   SQL.Add('left join BUsers on Busers.USERID=zszl_dev.SamplePurchaser');
   SQL.Add('where  #RYPurchase.ETADate is null ');
   Active:=true;
  end;
  if  tmpQuery.active  then
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
        //
        for i:=0 to tmpQuery.fieldcount-1 do
        begin
          eclApp.Cells(1,i+1):=tmpQuery.fields[i].FieldName;
        end;

        tmpQuery.First;
        j:=2;
        while  not  tmpQuery.Eof   do
        begin
          for   i:=0   to  tmpQuery.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=tmpQuery.Fields[i].Value;
          end;
          tmpQuery.Next;
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
  tmpQuery.Active:=false;
end;
//
procedure  TPurtraceMatch.ExportQueryExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  //
  if Query.Active=false then Exit;
  if  Query.active  then
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
        //
        eclApp.Cells(1,1):='BuyNo別';
        eclApp.Cells(1,2):='RY訂單編號';
        eclApp.Cells(1,3):='Status訂單狀態';
        eclApp.Cells(1,4):='PO#訂單PO#';
        eclApp.Cells(1,5):='MatNo料號';
        eclApp.Cells(1,6):='MatName材料英文';
        eclApp.Cells(1,7):='MatName Chinese材料中文';
        eclApp.Cells(1,8):='Unit材料單位';
        eclApp.Cells(1,9):='Article SKU#';
        eclApp.Cells(1,10):='ShoeName 鞋名';
        eclApp.Cells(1,11):='Pairs雙數';
        eclApp.Cells(1,12):='VN/TW採區';
        eclApp.Cells(1,13):='Usage用量';
        eclApp.Cells(1,14):='Pur Qty採購數量';
        eclApp.Cells(1,15):='Entry Qty入庫數量';
        eclApp.Cells(1,16):='Use Stock Qty利庫數量';
        eclApp.Cells(1,17):='Pur Date採購日期';
        eclApp.Cells(1,18):='Req Date要求交期';
        eclApp.Cells(1,19):='ETD 回覆交期';
        eclApp.Cells(1,20):='ETA 到達交期';
        eclApp.Cells(1,21):='Pur No採購單號';
        eclApp.Cells(1,22):='Entry Date入庫日期';
        eclApp.Cells(1,23):='Entry No入庫單號';
        eclApp.Cells(1,24):='Plan Date生產上線日';
        eclApp.Cells(1,25):='GAC訂單出貨日';
        eclApp.Cells(1,26):='InDate接單日';
        eclApp.Cells(1,27):='CalDate展算訂單日';
        eclApp.Cells(1,28):='OrderDate訂單放行日';
        eclApp.Cells(1,29):='Country出貨國別';
        eclApp.Cells(1,30):='Vendor ID廠商ID';
        eclApp.Cells(1,31):='Vendor廠商';
        eclApp.Cells(1,32):='LeadTime';
        eclApp.Cells(1,33):='Purchaser ID採購員ID';
        eclApp.Cells(1,34):='Purchaser採購員';


        Query.First;
        j:=2;
        while  not  Query.Eof   do
        begin
          for   i:=0   to  Query.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query.Fields[i].Value;
          end;
          Query.Next;
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

procedure TPurtraceMatch.Excel1Click(Sender: TObject);
begin
  if MainClassPage.ActivePageIndex=0 then
  begin
    ExportQueryExcel(DDZLDet_ML);
  end else if MainClassPage.ActivePageIndex=1 then
  begin
    ExportQueryExcel(DDZLDet_FML);
  end else if MainClassPage.ActivePageIndex=2 then
  begin
    ExportQueryExcel(DDZLDet_FGL);
  end else if MainClassPage.ActivePageIndex=3 then
  begin
    ExportQueryExcel(DDZLDet_DL);
  end;
end;

procedure TPurtraceMatch.DDZlDBGridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var MatDate,APlanDate:TDateTime;
    MatDateStr:string;
begin
  MatDateStr:='';
  if (DDZLQry.FieldByName('APlanDate').AsString<>'')  then
    APlanDate:=DDZLQry.FieldByName('APlanDate').Value-7
  else
    APlanDate:=DDZLQry.FieldByName('ShipDate').Value-42;
  if ((DDZLQry.Fields[10].AsString<>'') and (DDZLQry.Fields[11].AsString<>'')  ) then
  begin
    MatDate:=Date()-99999;
    if DDZLQry.Fields[10].AsString<>'X' then
      if strtodate(DDZLQry.Fields[10].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[10].AsString);
    if DDZLQry.Fields[11].AsString<>'X' then
      if strtodate(DDZLQry.Fields[11].AsString)>MatDate then MatDate:=strtodate(DDZLQry.Fields[11].AsString);
    if ((DDZLQry.Fields[10].AsString<>'X') and (DDZLQry.Fields[11].AsString<>'X'))  then  MatDateStr:=datetostr(MatDate);
  end else
  if ((DDZLQry.Fields[10].AsString<>'') or (DDZLQry.Fields[11].AsString<>'') ) then
    DDZlDBGrid.canvas.font.color:=clBlue
  else
  if ((DDZLQry.Fields[10].AsString='') and (DDZLQry.Fields[11].AsString='') ) then
    DDZlDBGrid.canvas.font.color:=clgreen;

  if  MatDate>APlanDate  then
  begin
    DDZlDBGrid.canvas.font.color:=clred;
  end;

end;

procedure TPurtraceMatch.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    Uppers,Stitching,Bottom,Packing:integer;
begin
  DDZLQry.First;
  Uppers:=0;
  while  not  DDZLQry.Eof   do
  begin
    if DDZLQry.Fields[7].AsString <> '' then
    begin
      if DDZLQry.Fields[10].AsString <> '' then
      begin
        if (strtodate(DDZLQry.Fields[7].AsString)-strtodate(DDZLQry.Fields[10].AsString))>=15 then
        begin
          Uppers:=Uppers+1;
        end;
      end;
      if DDZLQry.Fields[11].AsString <> '' then
      begin
        if (strtodate(DDZLQry.Fields[7].AsString)-strtodate(DDZLQry.Fields[11].AsString))>=15 then
        begin
          Stitching:=Stitching+1;
        end;
      end;
      if DDZLQry.Fields[12].AsString <> '' then
      begin
        if (strtodate(DDZLQry.Fields[7].AsString)-strtodate(DDZLQry.Fields[12].AsString))>=15 then
        begin
          Bottom:=Bottom+1;
        end;
      end;
      if DDZLQry.Fields[13].AsString <> '' then
      begin
        if (strtodate(DDZLQry.Fields[7].AsString)-strtodate(DDZLQry.Fields[13].AsString))>=15 then
        begin
          Packing:=Packing+1;
        end;
      end;
      if ComboBox1.Text='Uppers' then
      begin
        Label21.Caption:='Uppers KPI %';
        Edit1.Text:=floattostr((Uppers/DDZLQry.recordcount)*100);
        Edit1.Text:=copy(Edit1.Text,1,5);
      end;
      if ComboBox1.Text='Stitching' then
      begin
        Label21.Caption:='Stitching KPI%';
        Edit1.Text:=floattostr((Stitching/DDZLQry.recordcount)*100);
        Edit1.Text:=copy(Edit1.Text,1,5);
      end;
      if ComboBox1.Text='Bottom' then
      begin
        Label21.Caption:='Bottom KPI%';
        Edit1.Text:=floattostr((Bottom/DDZLQry.recordcount)*100);
        Edit1.Text:=copy(Edit1.Text,1,5);
      end;
      if ComboBox1.Text='Packing' then
      begin
        Label21.Caption:='Packing KPI%';
        Edit1.Text:=floattostr((Packing/DDZLQry.recordcount)*100);
        Edit1.Text:=copy(Edit1.Text,1,5);
      end;
    end;
    //
    DDZLQry.Next;
  end;
end;

procedure TPurtraceMatch.ComboBox1Change(Sender: TObject);
begin
  Button3.Click;
end;

end.
