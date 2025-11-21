unit DetailInSampleOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, ExtCtrls, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, Comobj, Buttons, iniFiles;

type
  TDetailInSampleOrder = class(TForm)
    HGQuery: TQuery;
    FloatField4: TFloatField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    CurrencyField15: TCurrencyField;
    HGDS: TDataSource;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    N1: TMenuItem;
    MAHG1: TMenuItem;
    RYQuery: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    StringField11: TStringField;
    FloatField3: TFloatField;
    RYDS: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RYEdit: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    MatEdit: TEdit;
    HGEdit: TEdit;
    DBGridEh5: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh4: TDBGridEh;
    RYQueryQuantity: TFloatField;
    RYQueryCalDate: TStringField;
    SpeedButton1: TSpeedButton;
    Qtemp: TQuery;
    CK2: TCheckBox;
    RYQueryRate_HG: TFloatField;
    RYQueryHG_NO: TStringField;
    RYQueryRate_HD: TFloatField;
    RYQueryHD_NO: TStringField;
    RYQueryTHQty: TCurrencyField;
    HGQueryHG_NO: TStringField;
    Label1: TLabel;
    HDEdit: TEdit;
    HGQueryTC: TFloatField;
    RYQueryTC: TCurrencyField;
    RYQueryRate_TC: TFloatField;
    RYQueryTC_NO: TStringField;
    HGQueryTC_NO: TStringField;
    HGQueryHD_NO: TStringField;
    HGQueryHG_HGPM: TStringField;
    HGQueryHG_Unit: TStringField;
    HGQueryTC_HGPM: TStringField;
    HGQueryTC_Unit: TStringField;
    HGQueryHD_HGPM: TStringField;
    HGQueryHD_Unit: TStringField;
    RYQueryLLMemo: TStringField;
    HGQueryKD_NO: TStringField;
    RYQueryRate_KD: TFloatField;
    RYQueryKD_NO: TStringField;
    HGQueryZLBH: TStringField;
    HGQueryUsage: TFloatField;
    RYQueryRate_HG1: TFloatField;
    RYQueryHG1_NO: TStringField;
    RYQueryRate_TC1: TFloatField;
    RYQueryTC1_NO: TStringField;
    RYQueryRate_HD1: TFloatField;
    RYQueryHD1_NO: TStringField;
    RYQueryRate_KD1: TFloatField;
    RYQueryKD1_NO: TStringField;
    RYQueryNK1: TCurrencyField;
    RYQueryTC1: TCurrencyField;
    RYQueryHD1: TCurrencyField;
    RYQueryKD1: TCurrencyField;
    RYQueryH11: TCurrencyField;
    RYQueryNQ: TCurrencyField;
    RYQueryRate_NQ: TFloatField;
    RYQueryNQ_NO: TStringField;
    RYQueryRate_NKNQ: TFloatField;
    RYQueryNKNQ_NO: TStringField;
    RYQueryNKNQ: TCurrencyField;
    Edit2: TEdit;
    Label3: TLabel;
    Button7: TButton;
    procedure Button6Click(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MAHG1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RYQueryCalcFields(DataSet: TDataSet);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure RYEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    IsHide_Warehouse_XT:string;
    IsYPZL_ZLZLS2:boolean;
    YPDH:String;
    RYEditSubSQL:String;
    //
    GSBH_VGC:String;
    GSBH_XuongR_2Ma:String;
    RubberGSBH:array of String;  
    { Private declarations }
    procedure readini();
    procedure ButtonMaHG();
    procedure ButtonMaVatTu();
    procedure ExportExcel(MasQry:TQuery;DetQry:TQuery);
    procedure ExportFormatExcel();
    procedure ButtonMaHG_V2(QueryObj:TQuery);
    procedure ButtonMaVatTu_V2();
    procedure RYEditPaste();
    function GetMutiRYSubSQL(Str:String):String;
  public
    SRText:String;
    { Public declarations }
  end;

var
  DetailInSampleOrder: TDetailInSampleOrder;

implementation

uses main1,DetailInVNO_Det1,MaHaiQuan1,DetailInSampleOrderList1,FunUnit,untClipboard;

{$R *.dfm}

procedure TDetailInSampleOrder.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    DBGridEh4.Columns[22].Visible:=false;
    DBGridEh4.Columns[24].Visible:=false;
    DBGridEh5.Columns[12].Visible:=false;
    DBGridEh5.Columns[14].Visible:=false;
    DBGridEh5.Columns[5].Visible:=false;
  end;
end;

procedure TDetailInSampleOrder.ButtonMaVatTu_V2();
var i:integer;
begin
  //
  RYEditSubSQL:=GetMutiRYSubSQL(RYEdit.Text);

  if RYEditSubSQL='' then
  begin
    showmessage('Pls input Sample Order!');
    abort;
  end;
  with Qtemp do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select top 1 YPDH from YPZL_ZLZLS2 where YPDH '+RYEditSubSQL+' ');
     Active:=true;
     if RecordCount>0 then
     begin
       YPDH:=FieldByName('YPDH').AsString;
       IsYPZL_ZLZLS2:=true;
     end else
     begin
       YPDH:=RYEditSubSQL;
       IsYPZL_ZLZLS2:=false;
     end;
     Active:=false;
  end;
  //
  with  RYQuery do
  begin
    Active:=false;
    SQL.Clear;
     sql.Add(' if object_id('+''''+'tempdb..#tmp'+''''+') is not null ');         //////////////////////////////    if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null
      sql.add('begin   drop table #tmp end    ');                     /////////////////////////////////////////
      sql.Add('select * into #tmp ');                                 ///////////////////////////////
      sql.add('from (                         ');
    //20201127 實領-退庫 Qty-THQty
    //SQL.Add('Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Quantity,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty');
    //SQL.Add('       ,ZLZLS2.NK-ISNULL(KCRKTH.NK,0) as NK,ZLZLS2.HD-ISNULL(KCRKTH.HD,0) as HD,ZLZLS2.KD-ISNULL(KCRKTH.KD,0) as KD,ZLZLS2.XT-ISNULL(KCRKTH.XT,0) as XT,ZLZLS2.GC-ISNULL(KCRKTH.GC,0) as GC,ZLZLS2.ZZ,ZLZLS2.Qty-ISNULL(KCRKTH.Qty,0) as Qty');
    //SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO_NK,CLHG.HGBH) else null end as HG_NO,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO_HD,CLHD.HGBH) else null end as HD_NO,KCRKTH.Qty as THQty from (');
    SQL.Add('Select top 100000 ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Quantity,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty ');
    SQL.Add('       ,ZLZLS2.NK,ZLZLS2.TC,ZLZLS2.HD,ZLZLS2.KD,ZLZLS2.XT,ZLZLS2.GC,ZLZLS2.ZZ,ZLZLS2.Qty ');
    SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO_NK,CLHG.HGBH) else null end as HG_NO ');
    SQL.Add('       ,CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0)  then IsNull(CNO_TC,CLTC.HGBH) else null end as TC_NO ');
    SQL.Add('       ,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO_HD,CLHD.HGBH) else null end as HD_NO ');
    SQL.Add('       ,CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0)  then CNO_KD else null end as KD_NO ');
    SQL.Add('       ,KCRKTH.Qty as THQty,KCLLMeMo.LLMemo  ');
    SQL.Add('       ,ZLZLS2.NK1,ZLZLS2.TC1,ZLZLS2.HD1,ZLZLS2.KD1,ZLZLS2.H11,ZLZLS2.NQ,ZLZLS2.NKNQ ');
    SQL.Add('       ,CLHG1.RateC as Rate_HG1,case when (ZLZLS2.NK1>0)  then IsNull(CNO_NK1,CLHG1.HGBH) else null end as HG1_NO ');
    SQL.Add('       ,CLTC1.RateC as Rate_TC1,case when (ZLZLS2.TC1>0)  then IsNull(CNO_TC1,CLTC1.HGBH) else null end as TC1_NO ');
    SQL.Add('       ,CLHD1.RateC as Rate_HD1,case when (ZLZLS2.HD1>0)  then IsNull(CNO_HD1,CLHD1.HGBH) else null end as HD1_NO ');
    SQL.Add('       ,CLKD1.RateC as Rate_KD1,case when (ZLZLS2.KD1>0)  then CNO_KD1 else null end as KD1_NO ');
    SQL.Add('       ,CLNQ.RateC as Rate_NQ,case when (ZLZLS2.NQ>0)  then IsNull(CNO_NQ,CLNQ.HGBH) else null end as NQ_NO');
    SQL.Add('       ,CLNKNQ.RateC as Rate_NKNQ,case when (ZLZLS2.NKNQ>0)  then IsNull(CNO_NKNQ,CLNKNQ.HGBH) else null end as NKNQ_NO');
    SQL.Add('from (');
    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC,');
    SQL.Add('       case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,KCLLS.RKQty,');
    SQL.Add('       IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) ');
    SQL.Add('                             -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0)-IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0),2),0)  as ZZ,KCLLS.Qty, ');
    SQL.Add('       case when KCLLS.CNO_NK1='''' then null else CNO_NK1 end CNO_NK1,case when KCLLS.CNO_TC1='''' then null else CNO_TC1 end CNO_TC1, ');
    SQL.Add('       case when KCLLS.CNO_HD1='''' then null else CNO_HD1 end CNO_HD1,case when KCLLS.CNO_KD1='''' then null else CNO_KD1 end CNO_KD1,case when KCLLS.CNO_NQ='''' then null else CNO_NQ end CNO_NQ, ');
    SQL.Add('       IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11,IsNull(KCLLS.NQ,0) as NQ,');
    SQL.Add('       case when KCLLS.CNO_NKNQ='''' then null else CNO_NKNQ end CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ ');
    //20200910 開發調整樣品單總用量 後來改成無條件進位
    if IsYPZL_ZLZLS2=false then
    begin
      SQL.Add('from (select * from (select YPZLS.YPDH as ZLBH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH, YPZLS.CLSL, ');
      SQL.Add('      CLZL.YWPM,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH  from ( ');
      SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
      SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH'); //過濾包材
      SQL.Add('      WHERE YPZLS.YPDH '+RYEditSubSQL+' ');
      SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
      SQL.Add('            and YPZL_NoNeedPart.bwbh is null');//過濾包材
      SQL.Add('      union all ');
      SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');  //過濾包材
      SQL.Add('      WHERE YPZLS.YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
      SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
      SQL.Add('            and YPZL_NoNeedPart.bwbh is null');//過濾包材
      SQL.Add('      union all');
      SQL.Add('      Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb ');
      SQL.Add('       from (');
      SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH'); //過濾包材
      SQL.Add('      WHERE YPZLS.YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y'' and YPZL_NoNeedPart.bwbh is null');
      SQL.Add('      ) clzhzl2');
      SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      where  CLZL.CLDH like '''+MatEdit.Text+'%'' ');
      SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
      SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
      SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
      SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ) YPZL where CLSL>0  ');
    end else
    begin
    //YPZL_ZLZLS2樣品單展算
      SQL.Add('from (select * from (select ZLZLS2.YPDH as ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
      SQL.Add('       sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,');
      SQL.Add('       Convert(varchar,Max(ZLZLS2.USERDATE),112) as CalDate,YPZL.GSDH as GSBH ');
      SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
      SQL.Add('left join YPZL on YPZL.YPDH=ZLZLS2.YPDH');
      SQL.Add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      SQL.Add('left join KFXXZl on KFXXZl.XieXing=YPZL.XieXing and KFXXZl.Shehao=YPZL.SheHao');
      SQL.Add('left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH'); //過濾包材用
      SQL.Add('where ZLZLS2.YPDH'+RYEditSubSQL+'');
      SQL.Add('     and ZLZLS2.MJBH=''ZZZZZZZZZZ'' --and ZLZLS2.CLSL>0');
      SQL.Add('     and ZLZLS2.CLBH like '''+MatEdit.Text+'%''');
      SQL.Add('     and YPZL_NoNeedPart.bwbh is null');
      SQL.Add('group by ZLZLS2.YPDH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,YPZL.GSDH     ');
      SQL.Add('Union all');
      SQL.Add('select ZLZLS2.YPDH as ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from YPZL_ZLZLS2 as  A where A.CLBH=ZLZLS2.MJBH and A.YPDH=ZLZLS2.YPDH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
      SQL.Add('       sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,');
      SQL.Add('       Convert(varchar,Max(ZLZLS2.USERDATE),112) as CalDate,YPZL.GSDH as GSBH ');
      SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
      SQL.Add('left join YPZL on YPZL.YPDH=ZLZLS2.YPDH');
      SQL.Add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      SQL.Add('left join KFXXZl on KFXXZl.XieXing=YPZL.XieXing and KFXXZl.Shehao=YPZL.SheHao');
      SQL.Add('left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH'); //過濾包材用
      SQL.Add('where ZLZLS2.YPDH'+RYEditSubSQL+'');
      SQL.Add('     and ZLZLS2.MJBH<>''ZZZZZZZZZZ''-- and ZLZLS2.CLSL>0');
      SQL.Add('     and ZLZLS2.CLBH like '''+MatEdit.Text+'%''');
      SQL.Add('     and YPZL_NoNeedPart.bwbh is null');
      SQL.Add('group by ZLZLS2.YPDH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,YPZL.GSDH  ) YPZL where CLSL>0  ');
    end;
    //
    SQL.Add(') OrdCL');
    SQL.Add('left join (');
    SQL.Add('          select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Sum(RKQty) as RKQty,');
    SQL.Add('                  Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ, ');
    SQL.Add('                  Max(CNO_NK1) as CNO_NK1,Max(CNO_TC1) as CNO_TC1,Max(CNO_HD1) as CNO_HD1,Max(CNO_KD1) as CNO_KD1,Max(CNO_NQ) as CNO_NQ,Max(CNO_NKNQ) as CNO_NKNQ, ');
    SQL.Add('                  Sum(NK1) as NK1,Sum(TC1) as TC1,Sum(HD1) as HD1,Sum(KD1) as KD1,Sum(H11) as H11,Sum(NQ) as NQ,Sum(NKNQ) as NKNQ  ');
    SQL.Add('         from (');
    SQL.Add('                  ');
    //
    SQL.Add('          select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
    SQL.Add('					    Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''NK1'' then Qty else 0 end ) as NK1,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''TC1'' then Qty else 0 end ) as TC1,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''HD1'' then Qty else 0 end ) as HD1,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''KD1'' then Qty else 0 end ) as KD1,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''H11'' then Qty else 0 end ) as H11,');
    SQL.Add('             Sum(Case when KCLLS.HGLB=''NQ'' then Qty else 0 end ) as NQ,');
    SQL.Add('             Sum(Case when KCLLS.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
    SQL.Add('		       from KCLLS');
    SQL.Add('          left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('		       left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('		       left join CLZL on CLZL.CLDH=KCLLS.CLBH		   ');
    SQL.Add('		       where  KCLLS.CLBH like '''+MatEdit.Text+'%''');
    SQL.Add('				    and KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('		       group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
    SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
    SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
    SQL.Add('where 1=1 ');
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CNO_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) ');
        SQL.Add('                -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0)-IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0) as ZZ,KCLLS.Qty,');
        SQL.Add('       KCLLS.CNO_NK1,KCLLS.CNO_TC1,KCLLS.CNO_HD1,KCLLS.CNO_KD1,KCLLS.CNO_NQ,IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11,IsNull(KCLLS.NQ,0) as NQ, ');
        SQL.Add('       KCLLS.CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ ');
        SQL.Add(' from (');
        SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
        SQL.Add('left join KFXXZL on ERP_DDZL.XieXing=KFXXZL.XieXing and ERP_DDZL.Shehao=KFXXZL.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1'+RYEditSubSQL+' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,KFXXZL.Article, KFXXZL.XieMing,ERP_DDZL.Quantity ) ZLZLS3');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then Qty else 0 end ) as NK1,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then Qty else 0 end ) as TC1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD1'' then Qty else 0 end ) as HD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD1'' then Qty else 0 end ) as KD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''H11'' then Qty else 0 end ) as H11,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then Qty else 0 end ) as NQ,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           where 1=1 '); //KCLL.USERDate>getdate()-360
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+''' ');
        SQL.Add('                 and KCLLS.SCBH '+RYEditSubSQL+' ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
      end;
      //CDC不在制令表中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,KCLLS.CLBH as Parent,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
      SQL.Add('       KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.TC,0) as TC,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.TC,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) -IsNull(KCRKCX.NK1,0)-IsNull(KCRKCX.TC1,0)-IsNull(KCRKCX.HD1,0)-IsNull(KCRKCX.KD1,0)-IsNull(KCRKCX.H11,0)');
      SQL.Add('        -IsNull(KCRKCX.NQ,0)-IsNull(KCRKCX.NKNQ,0) as ZZ,KCLLS.Qty,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,IsNull(KCRKCX.NK1,0) as NK1');
      SQL.Add('       ,IsNull(KCRKCX.TC1,0) as TC1,IsNull(KCRKCX.HD1,0) as HD1,IsNull(KCRKCX.KD1,0) as KD1,IsNull(KCRKCX.H11,0) as H11,IsNull(KCRKCX.NQ,0) as NQ,KCRKCX.CNO_NKNQ,IsNull(KCRKCX.NKNQ,0) as NKNQ');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then Qty else 0 end ) as NK1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then Qty else 0 end ) as TC1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then Qty else 0 end ) as HD1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then Qty else 0 end ) as KD1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then Qty else 0 end ) as H11, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then Qty else 0 end ) as NQ,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ,');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
      SQL.Add('           from KCLLS ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
      SQL.add('                 and KCLLS.HGLB<>''XT'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH ');
      SQL.Add('WHERE KCLL.GSBH ='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
      //20200910 開發調整樣品單總用量
      if IsYPZL_ZLZLS2=false then
      begin
        SQL.Add('      and NOT EXISTS ( select * from (select CLBH from (');
        SQL.Add('      SELECT ypzls.CLBH ');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      WHERE YPDH '+RYEditSubSQL+' ');
        SQL.Add('      union all ');
        SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
        SQL.Add('      union all');
        SQL.Add('      Select clzhzl.CLDH1 as CLBH ');
        SQL.Add('       from (');
        SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
        SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
        SQL.Add('      ) clzhzl2');
        SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh  ) YPZLS Group by CLBH ) YPZLS where KCLLS.CLBH=YPZLS.CLBH) ');
      end else
      begin
        //SQL.Add('      and NOT EXISTS (select CLBH from (SELECT CLBH from YPZL_ZLZLS2 as ZLZLS2 where ZLZLS2.CLSL>0 and YPDH='''+RYEdit.Text+''' Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH)');
        SQL.Add(' and NOT EXISTS (select CLBH from (SELECT CLBH, case when MJBH<>''ZZZZZZZZZZ'' then MJBH else ''N'' end as MJBH from YPZL_ZLZLS2 as ZLZLS2 where ZLZLS2.CLSL>0 and YPDH'+RYEditSubSQL+'  Group by CLBH,MJBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH and zlzls2.MJBH=KCLLS.DFL) ');
      end;
      SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
      //VR廠不在制令表材料中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.TC,0) as TC,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.TC,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0)-IsNull(KCRKCX.NK1,0)-IsNull(KCRKCX.TC1,0)-IsNull(KCRKCX.HD1,0)-IsNull(KCRKCX.KD1,0)-IsNull(KCRKCX.H11,0)');
      SQL.Add('       -IsNull(KCRKCX.NQ,0)-IsNull(KCRKCX.NKNQ,0) as ZZ,KCLLS.Qty,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,IsNull(KCRKCX.NK1,0) as NK1,IsNull(KCRKCX.TC1,0) as TC1,IsNull(KCRKCX.HD1,0) as HD1,IsNull(KCRKCX.KD1,0) as KD1');
      SQL.Add('       ,IsNull(KCRKCX.H11,0) as H11,IsNull(KCRKCX.NQ,0) as NQ,KCRKCX.CNO_NKNQ,IsNull(KCRKCX.NKNQ,0) as NKNQ');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,  ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then Qty else 0 end ) as NK1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then Qty else 0 end ) as TC1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then Qty else 0 end ) as HD1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then Qty else 0 end ) as KD1, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then Qty else 0 end ) as H11, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then Qty else 0 end ) as NQ,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ,');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
      SQL.Add('           from KCLLS left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
      SQL.add('                 and KCLLS.HGLB<>''XT'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
      SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLL.GSBH=ZLZLS3.CQDH)');
      SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    end;
    SQL.Add('  ) ZLZLS2    ');
    SQL.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ');
    //20201127 增加退庫和紅發票海關代碼
    SQL.Add('Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHG1 on CLHG1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHD1 on CLHD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD1 on CLKD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC1 on CLTC1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLNQ on CLNQ.CLBH=ZLZLS2.CLBH ');
    SQL.Add('Left join CLNKNQ on CLNKNQ.CLBH=ZLZLS2.CLBH ');
    SQL.Add('Left join (');
    SQL.Add('Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('       Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK'' then Qty else 0 end ) as NK, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC'' then Qty else 0 end ) as TC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD'' then Qty else 0 end ) as HD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD'' then Qty else 0 end ) as KD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''XT'' then Qty else 0 end ) as XT, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''GC'' then Qty else 0 end ) as GC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,  ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK1'' then Qty else 0 end ) as NK1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC1'' then Qty else 0 end ) as TC1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD1'' then Qty else 0 end ) as HD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD1'' then Qty else 0 end ) as KD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''H11'' then Qty else 0 end ) as H11, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NQ'' then Qty else 0 end ) as NQ, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ ');
    SQL.Add('from KCRK ');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH'+RYEditSubSQL+' ');
    SQL.Add('Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add(') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and KCRKTH.GSBH=ZLZLS2.GSBH');
    sql.Add('left join ( select kclls.SCBH, kclls.CLBH,case when KCLLS.DFL=''N'' then CLBH else DFL end as DFL, LLMemo from kclls where HGLB=''KD'' and LLMemo is not null and kclls.scbh'+RYEditSubSQL+' and KCLLS.Qty>0 )KCLLMeMo');
    sql.Add('          on KCLLMeMo.SCBH=zlzls2.ZLBH and KCLLMeMo.CLBH=ZLZLS2.CLBH and KCLLMeMo.DFL=ZLZLS2.MJBH ');
    //
    SQL.Add('where 1=1 ');
    if HGEdit.Text<>'' then
      SQL.Add(' and IsNull(CNO_NK,CLHG.HGBH)='''+HGEdit.Text+''' ');
    if HDEdit.Text<>'' then
      SQL.Add(' and IsNull(CNO_HD,CLHD.HGBH)='''+HDEdit.Text+''' ');
    SQL.Add('Order by ZLZLS2.ZLBH,ZLZLS2.GSBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH');
    sql.add(') as subquery');
    sql.add('select * from #tmp');
    //funcObj.WriteErrorLog(sql.GetText);
    Active:=true;
  end;

end;

procedure TDetailInSampleOrder.Button6Click(Sender: TObject);
begin
    ButtonMaVatTu_V2();
end;

procedure TDetailInSampleOrder.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((RYQuery.FieldByName('DType').AsString='Gia cong'))  then          //
  begin
    DBGridEh4.canvas.Brush.Color:=clBtnface;
    DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if ((RYQuery.FieldByName('NK').AsString<>'0'))  then          //
  begin
    if RYQuery.FieldByName('HG_NO').AsString='' then
     if DataCol=10 then
       DBGridEh4.canvas.Brush.Color:=clFuchsia;
    if RYQuery.FieldByName('Rate_HG').AsString='' then
     if DataCol=11 then
       DBGridEh4.canvas.Brush.Color:=clFuchsia;
    DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TDetailInSampleOrder.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if( not RYQuery.FieldByName('Qty').IsNull) then
  begin
    if  ((strtofloat(floattostr(RYQuery.FieldByName('Qty').value))>(strtofloat(floattostr(RYQuery.FieldByName('CLSL').value))*1.01)))     then
    begin
      DBGridEh4.canvas.font.color:=clred;
    end;
    if  ((strtofloat(floattostr(RYQuery.FieldByName('Qty').value))<strtofloat(floattostr(RYQuery.FieldByName('CLSL').value))) and (RYQuery.FieldByName('CLSL').value>0))    then
    begin
      DBGridEh4.canvas.font.color:=clblue;
    end;
  end;
  if(( RYQuery.FieldByName('Qty').IsNull) and (RYQuery.FieldByName('CLSL').value>0)) then
  begin
     DBGridEh4.canvas.font.color:=clblue;
  end;

end;

procedure TDetailInSampleOrder.MenuItem3Click(Sender: TObject);
begin
  DetailInVNO_Det:=TDetailInVNO_Det.Create(self);
  DetailInVNO_Det.ZLBH:=DetailInSampleOrder.RYQuery.FieldByName('ZLBH').AsString;
  DetailInVNO_Det.CLBH:=DetailInSampleOrder.RYQuery.FieldByName('CLBH').AsString;
  DetailInVNO_Det.MJBH:=DetailInSampleOrder.RYQuery.FieldByName('MJBH').AsString;
  DetailInVNO_Det.DType:=DetailInSampleOrder.RYQuery.FieldByName('DType').AsString;
  DetailInVNO_Det.GSBH:=DetailInSampleOrder.RYQuery.FieldByName('GSBH').AsString;
  if IsHide_Warehouse_XT='Y' then
  begin
    DetailInVNO_Det.DBGridEh1.Columns[9].Visible:=false;
    DetailInVNO_Det.DBGridEh1.Columns[11].Visible:=false;
  end;
  DetailInVNO_Det.ShowDetail();
  DetailInVNO_Det.ShowModal;
end;

procedure TDetailInSampleOrder.MenuItem1Click(Sender: TObject);
begin
  ExportExcel(RYQuery,nil);
end;

procedure TDetailInSampleOrder.MAHG1Click(Sender: TObject);
var FilterSQL:string;
begin
  //
  if RYQuery.Active=true then
  begin
    RYQuery.First;
    while Not RYQuery.Eof do
    begin
      if ((RYQuery.FieldByName('NK').AsString<>'0') and
        ((RYQuery.FieldByName('CNO').AsString='') or  (RYQuery.FieldByName('RateC').AsString='')) ) then
      begin
        FilterSQL:=FilterSQL+RYQuery.FieldByName('CLBH').AsString+'*';
      end;
      RYQuery.Next;
    end;
    if FilterSQL<>'' then
    begin
      FilterSQL:=Copy(FilterSQL,1,length(FilterSQL)-1);
      if MaHaiQuan=nil  then
      MaHaiQuan:=TMaHaiQuan.Create(self);
      MaHaiQuan.CheckBox1.Checked:=false;
      MaHaiQuan.MatNoEdit.Text:=FilterSQL;
      MaHaiQuan.Show;
      MaHaiQuan.Button1.Click;
    end;
  end;
  //
end;
//
procedure TDetailInSampleOrder.ExportExcel(MasQry:TQuery;DetQry:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if MasQry.Active then
  begin
    if MasQry.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    if DetQry<>nil then DetQry.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for  i:=1  to  MasQry.fieldcount   do
    begin
      if IsHide_Warehouse_XT='Y' then
      begin
        if (MasQry.fields[i-1].FieldName<>'XT') and (MasQry.fields[i-1].FieldName<>'ZZ') then
          eclApp.Cells(1,i+1):=MasQry.fields[i-1].FieldName;
      end else
      begin
        eclApp.Cells(1,i+1):=MasQry.fields[i-1].FieldName;
      end;
    end;
    MasQry.First;
    j:=2;
    while   not  MasQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   MasQry.fieldcount   do
      begin
        if IsHide_Warehouse_XT='Y' then
        begin
          if (MasQry.fields[i-1].FieldName<>'XT') and (MasQry.fields[i-1].FieldName<>'ZZ') then
             eclApp.Cells(j,i+1):=MasQry.Fields[i-1].Value;
        end else
        begin
          eclApp.Cells(j,i+1):=MasQry.Fields[i-1].Value;
        end;
      end;
      MasQry.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    if DetQry<>nil then DetQry.Active:=true;
  except
    on  F:Exception   do
      showmessage(F.Message);
  end;
end;
//

procedure TDetailInSampleOrder.ButtonMaHG_V2(QueryObj:TQuery);
var i:integer;
begin
  if RYEdit.Text='' then
  begin
    showmessage('Pls input Sample Order!');
    abort;
  end;
  //
  with Qtemp do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select top 1 YPDH from YPZL_ZLZLS2 where YPDH'+RYEditSubSQL+' ');
     Active:=true;
     if RecordCount>0 then
     begin
       YPDH:=FieldByName('YPDH').AsString;
       IsYPZL_ZLZLS2:=true;
     end else
     begin
       YPDH:=RYEditSubSQL;
       IsYPZL_ZLZLS2:=false;
     end;
     Active:=false;
  end;
  //
  with QueryObj do
  begin
    Active:=false;
    SQL.Clear;
    sql.Add(' if object_id('+''''+'tempdb..#tmp'+''''+') is not null ');         //////////////////////////////    if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null
      sql.add('begin   drop table #tmp end    ');                     /////////////////////////////////////////
      sql.Add('select * into #tmp ');                                 ///////////////////////////////
      sql.add('from (                         ');
    SQL.Add('Select top 100000 ZLBH,HG_NO,TC_NO,HD_NO,KD_NO,Usage');
    SQL.Add('       ,Round(Round(Sum(CLSL)/Max(Quantity),6)*IsNull(Max(Rate_HG),1),6) as CLSL ');
    SQL.Add('       ,Round(Round(Sum(Qty)/Max(Quantity),6)*IsNull(Max(Rate_HG),1),6) as Qty ');
    SQL.Add('       ,Round(Round(Sum(NK)/Max(Quantity),6)*IsNull(Max(Rate_HG),1),6) as NK ');
    SQL.Add('       ,Round(Round(Sum(TC)/Max(Quantity),6)*IsNull(Max(Rate_TC),1),6) as TC ');
    SQL.Add('       ,Round(Round(Sum(HD)/Max(Quantity),6)*IsNull(Max(Rate_HD),1),6) as HD ');
    SQL.Add('       ,Round(Round(Sum(KD)/Max(Quantity),6)*IsNull(Max(Rate_KD),1),6) as KD ');
    SQL.Add('       ,Round(Round(Sum(XT)/Max(Quantity),6)*IsNull(Max(Rate_HG),1),6) as XT ');
    SQL.Add('       ,Round(Round(Sum(GC)/Max(Quantity),6)*IsNull(Max(Rate_HG),1),6) as GC ');
    SQL.Add('       ,Round(Round(Sum(ZZ)/Max(Quantity),6)*IsNull(Max(Rate_HG),1),6) as ZZ ');
    SQL.Add('       ,Max(HG_HGPM) as HG_HGPM,Max(HG_Unit) as HG_Unit,Max(TC_HGPM) as TC_HGPM,Max(TC_Unit) as TC_Unit,Max(HD_HGPM) as HD_HGPM,Max(HD_Unit) as HD_Unit ');
    SQL.Add('       ,Max(KD_HGPM) as KD_HGPM,Max(KD_Unit) as KD_Unit ');
    SQL.Add('from (');
    //20201127 實領-退庫 Qty-THQty
    //SQL.Add('Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Quantity,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty');
    //SQL.Add('       ,ZLZLS2.NK-ISNULL(KCRKTH.NK,0) as NK,ZLZLS2.HD-ISNULL(KCRKTH.HD,0) as HD,ZLZLS2.KD-ISNULL(KCRKTH.KD,0) as KD,ZLZLS2.XT-ISNULL(KCRKTH.XT,0) as XT,ZLZLS2.GC-ISNULL(KCRKTH.GC,0) as GC,ZLZLS2.ZZ,ZLZLS2.Qty-ISNULL(KCRKTH.Qty,0) as Qty');
    //SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO_NK,CLHG.HGBH) else null end as HG_NO,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO_HD,CLHD.HGBH) else null end as HD_NO,KCRKTH.Qty as THQty from (');
    SQL.Add('Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Quantity,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty ');
    SQL.Add('       ,ZLZLS2.NK,ZLZLS2.TC,ZLZLS2.HD,ZLZLS2.KD,ZLZLS2.XT,ZLZLS2.GC,ZLZLS2.ZZ,ZLZLS2.Qty ');
    SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO_NK,CLHG.HGBH) else null end as HG_NO,CLHG.HGPM as HG_HGPM,CLHG.UnitC as HG_Unit ');
    SQL.Add('       ,CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0)  then IsNull(CNO_TC,CLTC.HGBH) else null end as TC_NO,CLTC.HGPM as TC_HGPM,CLTC.UnitC as TC_Unit ');
    SQL.Add('       ,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO_HD,CLHD.HGBH) else null end as HD_NO,CLHD.HGPM as HD_HGPM,CLHD.UnitC as HD_Unit  ');
    SQL.Add('       ,CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0)  then CNO_KD else null end as KD_NO,CLKD.HGPM as KD_HGPM,CLKD.UnitC as KD_Unit  ');
    SQL.Add('       ,KCRKTH.Qty as THQty from (');


    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC');
    SQL.Add(',case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,KCLLS.RKQty,');
    SQL.Add('       IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty ');
    //20200910 開發調整樣品單總用量 後來改成無條件進位
    if IsYPZL_ZLZLS2=false then
    begin
      SQL.Add('from (select * from (select YPZLS.YPDH as ZLBH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH, YPZLS.CLSL, ');
      SQL.Add('      CLZL.YWPM,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH  from ( ');
      SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
      SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH'); //過濾包材
      SQL.Add('      WHERE YPZLS.YPDH '+RYEditSubSQL+' ');
      SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
      SQL.Add('            and YPZL_NoNeedPart.bwbh is null');//過濾包材
      SQL.Add('      union all ');
      SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');  //過濾包材
      SQL.Add('      WHERE YPZLS.YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
      SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
      SQL.Add('            and YPZL_NoNeedPart.bwbh is null');//過濾包材
      SQL.Add('      union all');
      SQL.Add('      Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb ');
      SQL.Add('       from (');
      SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH'); //過濾包材
      SQL.Add('      WHERE YPZLS.YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y'' and YPZL_NoNeedPart.bwbh is null');
      SQL.Add('      ) clzhzl2');
      SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      where  CLZL.CLDH like '''+MatEdit.Text+'%'' ');
      SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
      SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
      SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
      SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ) YPZL where CLSL>0  ');
    end else
    begin
    //YPZL_ZLZLS2樣品單展算
      SQL.Add('from (select * from (select ZLZLS2.YPDH as ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
      SQL.Add('       sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,');
      SQL.Add('       Convert(varchar,Max(ZLZLS2.USERDATE),112) as CalDate,YPZL.GSDH as GSBH ');
      SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
      SQL.Add('left join YPZL on YPZL.YPDH=ZLZLS2.YPDH');
      SQL.Add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      SQL.Add('left join KFXXZl on KFXXZl.XieXing=YPZL.XieXing and KFXXZl.Shehao=YPZL.SheHao');
      SQL.Add('left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH'); //過濾包材用
      SQL.Add('where ZLZLS2.YPDH'+RYEditSubSQL+'');
      SQL.Add('     and ZLZLS2.MJBH=''ZZZZZZZZZZ'' --and ZLZLS2.CLSL>0');
      SQL.Add('     and ZLZLS2.CLBH like '''+MatEdit.Text+'%''');
      SQL.Add('     and YPZL_NoNeedPart.bwbh is null');
      SQL.Add('group by ZLZLS2.YPDH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,YPZL.GSDH     ');
      SQL.Add('Union all');
      SQL.Add('select ZLZLS2.YPDH as ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from YPZL_ZLZLS2 as  A where A.CLBH=ZLZLS2.MJBH and A.YPDH=ZLZLS2.YPDH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
      SQL.Add('       sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,');
      SQL.Add('       Convert(varchar,Max(ZLZLS2.USERDATE),112) as CalDate,YPZL.GSDH as GSBH ');
      SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
      SQL.Add('left join YPZL on YPZL.YPDH=ZLZLS2.YPDH');
      SQL.Add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      SQL.Add('left join KFXXZl on KFXXZl.XieXing=YPZL.XieXing and KFXXZl.Shehao=YPZL.SheHao');
      SQL.Add('left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH'); //過濾包材用
      SQL.Add('where ZLZLS2.YPDH'+RYEditSubSQL+'');
      SQL.Add('     and ZLZLS2.MJBH<>''ZZZZZZZZZZ''-- and ZLZLS2.CLSL>0');
      SQL.Add('     and ZLZLS2.CLBH like '''+MatEdit.Text+'%''');
      SQL.Add('     and YPZL_NoNeedPart.bwbh is null');
      SQL.Add('group by ZLZLS2.YPDH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,YPZL.GSDH  ) YPZL where CLSL>0  ');
    end;
    //
    SQL.Add(') OrdCL');
    SQL.Add('left join (');
    SQL.Add('          select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Sum(RKQty) as RKQty,');
    SQL.Add('                  Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (');
    SQL.Add('                  ');
    //
    SQL.Add('          select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
    SQL.Add('					    Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('					    Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD');
    SQL.Add('		       from KCLLS');
    SQL.Add('          left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('		       left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('		       left join CLZL on CLZL.CLDH=KCLLS.CLBH		   ');
    SQL.Add('		       where  KCLLS.CLBH like '''+MatEdit.Text+'%''');
    SQL.Add('				    and KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('		       group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
    SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
    SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
    SQL.Add('where 1=1 ');
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CNO_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty');
        SQL.Add(' from (');
        SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
        SQL.Add('left join KFXXZL on ERP_DDZL.XieXing=KFXXZL.XieXing and ERP_DDZL.Shehao=KFXXZL.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1'+RYEditSubSQL+' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,KFXXZL.Article, KFXXZL.XieMing,ERP_DDZL.Quantity ) ZLZLS3');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD');
        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           where 1=1 '); //KCLL.USERDate>getdate()-360
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+''' ');
        SQL.Add('                 and KCLLS.SCBH '+RYEditSubSQL+' ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
      end;
      //CDC不在制令表中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,KCLLS.CLBH as Parent,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
      SQL.Add('       KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.TC,0) as TC,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.TC,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
      SQL.Add('       ,KCLLS.Qty');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD ');
      SQL.Add('           from KCLLS ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
      SQL.add('                 and KCLLS.HGLB<>''XT'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
      SQL.Add('WHERE KCLL.GSBH ='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
      //20200910 開發調整樣品單總用量
      if IsYPZL_ZLZLS2=false then
      begin
        SQL.Add('      and NOT EXISTS ( select * from (select CLBH from (');
        SQL.Add('      SELECT ypzls.CLBH ');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      WHERE YPDH '+RYEditSubSQL+' ');
        SQL.Add('      union all ');
        SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
        SQL.Add('      union all');
        SQL.Add('      Select clzhzl.CLDH1 as CLBH ');
        SQL.Add('       from (');
        SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
        SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
        SQL.Add('      ) clzhzl2');
        SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh  ) YPZLS Group by CLBH ) YPZLS where KCLLS.CLBH=YPZLS.CLBH) ');
      end else
      begin
        SQL.Add('      and NOT EXISTS (select CLBH from (SELECT CLBH from YPZL_ZLZLS2 as ZLZLS2 where ZLZLS2.CLSL>0 and YPDH'+RYEditSubSQL+' Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH)');
      end;
      SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
      //VR廠不在制令表材料中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.TC,0) as TC,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.TC,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
      SQL.Add('       ,KCLLS.Qty');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,  ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
      SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD ');
      SQL.Add('           from KCLLS ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
      SQL.add('                 and KCLLS.HGLB<>''XT'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
      SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)');
      SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    end;
    SQL.Add('  ) ZLZLS2    ');
    SQL.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ');
    //20201127 增加退庫和紅發票海關代碼
    SQL.Add('Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join (');
    SQL.Add('Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('       Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK'' then Qty else 0 end ) as NK, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC'' then Qty else 0 end ) as TC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD'' then Qty else 0 end ) as HD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD'' then Qty else 0 end ) as KD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''XT'' then Qty else 0 end ) as XT, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''GC'' then Qty else 0 end ) as GC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ  ');
    SQL.Add('from KCRK ');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH'+RYEditSubSQL+' ');
    SQL.Add('Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add(') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and KCRKTH.GSBH=ZLZLS2.GSBH');
    //
    SQL.Add(') ZLZLS2 ');
    SQL.Add('Left join HG_Compare on HG_Compare.DDBH = ZLZLS2.ZLBH and ((HG_Compare.HGBH = ZLZLS2.HG_NO) or (HG_Compare.HGBH = ZLZLS2.HD_NO) or (HG_Compare.HGBH = ZLZLS2.TC_NO))');
    SQL.Add('where 1=1  ');
    SQL.Add('and IsNull(HG_NO,'''')<>'''' or IsNull(TC_NO,'''')<>'''' or IsNull(HD_NO,'''')<>'''' or IsNull(KD_NO,'''')<>''''');
    SQL.Add('Group by ZLZLS2.ZLBH,ZLZLS2.HG_NO,ZLZLS2.Rate_HG,ZLZLS2.TC_NO,ZLZLS2.Rate_TC,ZLZLS2.HD_NO,ZLZLS2.KD_NO,ZLZLS2.Rate_HD,Usage');
    SQL.Add('Order by ZLZLS2.ZLBH,ZLZLS2.HG_NO desc,ZLZLS2.TC_NO desc,ZLZLS2.HD_NO desc');
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    sql.add(') as subquery');
    sql.add('select * from #tmp');
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    //end;;
    //funcObj.WriteErrorLog(sql.GetText);
    Active:=true;
  end;
end;

procedure TDetailInSampleOrder.Button5Click(Sender: TObject);
begin
  ButtonMaHG_V2(HGQuery)
end;

procedure TDetailInSampleOrder.Button4Click(Sender: TObject);
begin
   ExportFormatExcel;
end;

procedure TDetailInSampleOrder.ExportFormatExcel();
var AppDir:String;
    i,j,datai:integer;
    eclApp,WorkBook:olevariant;
    DataRow,ExcelRow:integer;
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SP_N13.xls'),Pchar(AppDir+'Additional\SP_N13.xls'),false);
   if FileExists(AppDir+'Additional\SP_N13.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\SP_N13.xls');
        for i:=1 to (HGQuery.RecordCount-1) do
        begin
          eclApp.ActiveSheet.Rows[12].Copy;
          eclApp.ActiveSheet.Rows[12].Insert;
          eclApp.Range[eclApp.Cells[12,1],eclApp.Cells[12+i,1]].merge;
          eclApp.Range[eclApp.Cells[12,2],eclApp.Cells[12+i,2]].merge;
          eclApp.Range[eclApp.Cells[12,3],eclApp.Cells[12+i,3]].merge;
          eclApp.Range[eclApp.Cells[12,4],eclApp.Cells[12+i,4]].merge;
        end;
        eclApp.Cells(12,2):=RYEdit.Text;
        eclApp.Cells(12,4):='Doi/Cap';
        eclApp.Cells(12,1):='1';
        HGQuery.First;
        datai:=0;
        for i:=0 to HGQuery.RecordCount -1 do
        begin
          if HGQuery.FieldByName('HG_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+12,5):=HGQuery.FieldByName('HG_NO').AsString;
           eclApp.Cells(datai+12,8):=HGQuery.FieldByName('NK').AsString;
           eclApp.Cells(datai+12,6):=HGQuery.FieldByName('HG_HGPM').AsString ;
           eclApp.Cells(datai+12,7):=HGQuery.FieldByName('HG_UNit').AsString ;
           datai:=datai+1;
          end;
          if HGQuery.FieldByName('TC_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+12,5):=HGQuery.FieldByName('TC_NO').AsString;
           eclApp.Cells(datai+12,8):=HGQuery.FieldByName('TC').AsString;
           eclApp.Cells(datai+12,6):=HGQuery.FieldByName('TC_HGPM').AsString ;
           eclApp.Cells(datai+12,7):=HGQuery.FieldByName('TC_UNit').AsString ;
           datai:=datai+1;
          end;
          if HGQuery.FieldByName('HD_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+12,5):=HGQuery.FieldByName('HD_NO').AsString;
           eclApp.Cells(datai+12,8):=HGQuery.FieldByName('HD').AsString;
           eclApp.Cells(datai+12,6):=HGQuery.FieldByName('HD_HGPM').AsString ;
           eclApp.Cells(datai+12,7):=HGQuery.FieldByName('HD_UNit').AsString ;
           eclApp.Cells(datai+12,9):='X';
           datai:=datai+1;
          end;
          //if  HGQuery.FieldByName('Qty').value<>(HGQuery.FieldByName('CLSL').value)   then  eclApp.Rows[i+11].Font.Color := clRed;  //Gender Size不符合
          HGQuery.Next;
        end;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TDetailInSampleOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDetailInSampleOrder.FormDestroy(Sender: TObject);
begin
  DetailInSampleOrder:=nil;
end;

procedure TDetailInSampleOrder.SpeedButton1Click(Sender: TObject);
begin
   if DetailInSampleOrderList=nil then
     DetailInSampleOrderList:=TDetailInSampleOrderList.Create(self);
     DetailInSampleOrderList.Show();
end;

procedure TDetailInSampleOrder.RYQueryCalcFields(DataSet: TDataSet);
begin
  with RYQuery do
  begin
    if FieldByName('CLSL').value<>0 then
    begin
      FieldByName('Person').value:=FieldByName('Qty').value/FieldByName('CLSL').value*100;
    end;
  end;
end;

procedure TDetailInSampleOrder.ButtonMaHG();
var RubberGSBH:array [0..2] of string;
    i:integer;
begin

  if RYEdit.Text='' then
  begin
    showmessage('Pls input RY!');
    abort;
  end;
  //
  RubberGSBH[0]:='VR1';
  RubberGSBH[1]:='VR2';
  RubberGSBH[2]:='VR3';
  //
  with HGQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CNO,Max(DWBH) as DWBH,Round(Round(Sum(CLSL)/Max(Quantity),6)*IsNull(Max(RateC),1),6) as CLSL');
    SQL.Add('          ,Round(Round(Convert(float,Sum(Qty))/Max(Quantity),6)*IsNull(Max(RateC),1),6) as Qty ');
    SQL.Add('          ,Round(Round(Sum(NK)/Max(Quantity),6)*IsNull(Max(RateC),1),6) as NK ');
    SQL.Add('          ,Round(Round(Sum(HD)/Max(Quantity),6)*IsNull(Max(RateC),1),6) as HD ');
    SQL.Add('          ,Round(Round(Sum(KD)/Max(Quantity),6)*IsNull(Max(RateC),1),6) as KD ');
    SQL.Add('          ,Round(Round(Sum(XT)/Max(Quantity),6)*IsNull(Max(RateC),1),6) as XT ');
    SQL.Add('          ,Round(Round(Sum(GC)/Max(Quantity),6)*IsNull(Max(RateC),1),6) as GC ');
    SQL.Add('          ,Round(Round(Sum(ZZ)/Max(Quantity),6)*IsNull(Max(RateC),1),6) as ZZ ');
    SQL.Add('           from (');
    //=======
    SQL.Add('Select ZLZLS2.*,CLHG.RateC,case when (NK>0) then IsNull(CNO1,CLHG.HGBH) else null end as CNO  from (');
    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO='''' then null else CNO end CNO1,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty ');
    SQL.Add('from (select YPZLS.YPDH as ZLBH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL*YPZL.Quantity as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH  from ( ');
    SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
    SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,ypzls.CLSL,clzl.CLZMLB ');
    SQL.Add('      FROM ypzls ypzls ');
    SQL.Add('      LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('      WHERE YPDH '+RYEditSubSQL+' ');
    SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      union all ');
    SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,ypzls.CLSL*clzhzl.syl as CLSL,clzl.CLZMLB ');
    SQL.Add('      FROM ypzls ypzls ');
    SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    //SQL.Add('      left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
    SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      union all');
    SQL.Add('      Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,clzhzl2.CLSL*clzhzl.syl as CLSL,clzl.clzmlb ');
    SQL.Add('       from (');
    SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,ypzls.CLSL*clzhzl.syl as CLSL ');
    SQL.Add('      FROM ypzls ypzls ');
    SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    SQL.Add('      ) clzhzl2');
    SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('      where  CLZL.CLDH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
    SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
    SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
    SQL.Add(') OrdCL');
    SQL.Add('left join (');
    SQL.Add('      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO) as CNO,Sum(RKQty) as RKQty,');
    SQL.Add('                  Sum(NK) as NK,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (');
    SQL.Add('                  ');
    SQL.Add('      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
    SQL.Add('					Max(KCLLS.CNO) as CNO,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ');
    SQL.Add('		   from KCLLS');
    SQL.Add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('		   left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('		   left join CLZL on CLZL.CLDH=KCLLS.CLBH		   ');
    SQL.Add('		   where  KCLLS.CLBH like '''+MatEdit.Text+'%''');
    SQL.Add('				    and KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('				    and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
    SQL.Add('		   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
    SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
    SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
    SQL.Add('where 1=1 ');
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty');
        SQL.Add(' from (');
        SQL.Add('select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,round(sum(ZLZLS3.TCLYL),2) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
        SQL.Add('left join KFXXZL on ERP_DDZL.XieXing=KFXXZL.XieXing and ERP_DDZL.Shehao=KFXXZL.shehao ');
        SQL.Add('where ZLZLS3.ZLBH1'+RYEditSubSQL+' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,KFXXZL.Article, KFXXZL.XieMing,ERP_DDZL.Quantity ) ZLZLS3');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  Max(KCLLS.CNO) as CNO,round(sum(KCLLS.Qty),2) as RKQty,');
        SQL.Add('                  					Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ');
        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           where 1=1 '); //KCLL.USERDate>getdate()-360
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+'''');
        SQL.Add('                 and KCLLS.SCBH '+RYEditSubSQL+' and KCLL.CFMID<>''NO''  ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
      end;
      //CDC不在制令表中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
      SQL.Add('       ,KCLLS.Qty');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Max(KCLLS.CNO) as CNO,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ  ');
      SQL.Add('           from KCLLS ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
      SQL.Add('WHERE KCLL.GSBH ='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
      SQL.Add('      and NOT EXISTS ( select * from (select CLBH from (');
      SQL.Add('      SELECT ypzls.CLBH ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      WHERE YPDH '+RYEditSubSQL+' ');
      SQL.Add('      union all ');
      SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
      SQL.Add('      union all');
      SQL.Add('      Select clzhzl.CLDH1 as CLBH ');
      SQL.Add('       from (');
      SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
      SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
      SQL.Add('      ) clzhzl2');
      SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh  ) YPZLS Group by CLBH ) YPZLS where KCLLS.CLBH=YPZLS.CLBH) ');
      SQL.Add('   and KCLLS.SCBH'+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
      //VR廠不在制令表材料中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
      SQL.Add('       ,KCLLS.Qty');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Max(KCLLS.CNO) as CNO,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ  ');
      SQL.Add('           from KCLLS ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');      
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
      SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)');
      SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    end;
    SQL.Add('  ) ZLZLS2   ');
    SQl.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ) ZLZLS2  ');
    SQL.Add('where 1=1 and IsNull(CNO,'''')<>'''' ');
    SQL.Add('Group by CNO ');
    //funcObj.WriteErrorLog(sql.GetText);
    Active:=true;
    //
  end;
  //

end;

//後續替換KCLLS.HGLB KCRKCX.HGLB
procedure TDetailInSampleOrder.ButtonMaVatTu();
var RubberGSBH:array [0..2] of string;
    i:integer;
begin
  //
  if RYEdit.Text='' then
  begin
    showmessage('Pls input RY!');
    abort;
  end;
  //
  RubberGSBH[0]:='VR1';
  RubberGSBH[1]:='VR2';
  RubberGSBH[2]:='VR3';
  //
  with  RYQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select *,CLHG.RateC,case when (NK>0)  then IsNull(CNO1,CLHG.HGBH) else null end as CNO  from (');
    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO='''' then null else CNO end CNO1,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty ');
    SQL.Add('from (select YPZLS.YPDH as ZLBH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL*YPZL.Quantity as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH  from ( ');
    SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
    SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,ypzls.CLSL,clzl.CLZMLB ');
    SQL.Add('      FROM ypzls ypzls ');
    SQL.Add('      LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('      WHERE YPDH '+RYEditSubSQL+' ');
    SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      union all ');
    SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,ypzls.CLSL*clzhzl.syl as CLSL,clzl.CLZMLB ');
    SQL.Add('      FROM ypzls ypzls ');
    SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    //SQL.Add('      left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
    SQL.Add('            and CLZL.CLDH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      union all');
    SQL.Add('      Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,clzhzl2.CLSL*clzhzl.syl as CLSL,clzl.clzmlb ');
    SQL.Add('       from (');
    SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,ypzls.CLSL*clzhzl.syl as CLSL ');
    SQL.Add('      FROM ypzls ypzls ');
    SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    SQL.Add('      ) clzhzl2');
    SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('      where  CLZL.CLDH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
    SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
    SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
    SQL.Add(') OrdCL');
    SQL.Add('left join (');
    SQL.Add('      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO) as CNO,Sum(RKQty) as RKQty,');
    SQL.Add('                  Sum(NK) as NK,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (');
    SQL.Add('                  ');
    SQL.Add('      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
    SQL.Add('					Max(KCLLS.CNO) as CNO,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ');
    SQL.Add('		   from KCLLS');
    SQL.Add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('		   left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('		   left join CLZL on CLZL.CLDH=KCLLS.CLBH		   ');
    SQL.Add('		   where  KCLLS.CLBH like '''+MatEdit.Text+'%''');
    SQL.Add('				    and KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('				    and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
    SQL.Add('		   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
    SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
    SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
    SQL.Add('where 1=1 ');
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty');
        SQL.Add(' from (');
        SQL.Add('select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,round(sum(ZLZLS3.TCLYL),2) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
        SQL.Add('left join KFXXZL on ERP_DDZL.XieXing=KFXXZL.XieXing and ERP_DDZL.Shehao=KFXXZL.shehao ');
        SQL.Add('where ZLZLS3.ZLBH1'+RYEditSubSQL+' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,KFXXZL.Article, KFXXZL.XieMing,ERP_DDZL.Quantity ) ZLZLS3');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  Max(KCLLS.CNO) as CNO,round(sum(KCLLS.Qty),2) as RKQty,');
        SQL.Add('                  					Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ');
        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           where 1=1 '); //KCLL.USERDate>getdate()-360
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+'''');
        SQL.Add('                 and KCLLS.SCBH '+RYEditSubSQL+' and KCLL.CFMID<>''NO'' ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
      end;
      //CDC不在制令表中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
      SQL.Add('       ,KCLLS.Qty');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Max(KCLLS.CNO) as CNO,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ  ');
      SQL.Add('           from KCLLS ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
      SQL.Add('WHERE KCLL.GSBH ='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
      SQL.Add('      and NOT EXISTS ( select * from (select CLBH from (');
      SQL.Add('      SELECT ypzls.CLBH ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      WHERE YPDH '+RYEditSubSQL+' ');
      SQL.Add('      union all ');
      SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0  ');
      SQL.Add('      union all');
      SQL.Add('      Select clzhzl.CLDH1 as CLBH ');
      SQL.Add('       from (');
      SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
      SQL.Add('      WHERE YPDH '+RYEditSubSQL+'  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
      SQL.Add('      ) clzhzl2');
      SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh  ) YPZLS Group by CLBH ) YPZLS where KCLLS.CLBH=YPZLS.CLBH) ');
      SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
      //VR廠不在制令表材料中
      SQL.Add('union all');
      SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
      SQL.Add('       ,KCRKCX.CNO,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
      SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
      SQL.Add('       ,KCLLS.Qty');
      SQL.Add('from  KCLLS');
      SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
      SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('left join ( ');
      SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Max(KCLLS.CNO) as CNO,Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
      SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ  ');
      SQL.Add('           from KCLLS ');
      SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
      SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
      SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');      
      SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
      SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)');
      SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    end;
    SQL.Add('  ) ZLZLS2    ');
    SQL.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('where 1=1 ');
    if HGEdit.Text<>'' then
      SQL.Add(' and IsNull(CNO1,CLHG.HGBH)='''+HGEdit.Text+''' ');
    //SQL.Add(' Order by ZLBH,GSBH,Parent,DType,ZLZLS2.CLBH');
    //funcObj.WriteErrorLog(sql.GetText);
    Active:=true;
  end;

end;
//
procedure TDetailInSampleOrder.DBGridEh5GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  HGQuery.FieldByName('Qty').value<>(HGQuery.FieldByName('CLSL').value)   then
  begin
    DBGridEh5.canvas.font.color:=clred;
  end;
end;

procedure TDetailInSampleOrder.FormCreate(Sender: TObject);
var i:integer;
begin
  //底廠
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''RB'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    setlength(RubberGSBH,RecordCount);
    for i:=0 to RecordCount-1 do
    begin
      RubberGSBH[i]:=FieldByName('GSBH').AsString;
      if GSBH_XuongR_2Ma='' then GSBH_XuongR_2Ma:=Copy(FieldByName('GSBH').AsString,1,2)+'%';
      Next;
    end;
    Active:=false;
  end;
  //印刷加工廠
  GSBH_VGC:='NULL';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''GC'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    if RecordCount>0 then GSBH_VGC:=FieldByName('GSBH').AsString;
    Active:=false;
  end;
  Readini();
end;



function TDetailInSampleOrder.GetMutiRYSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   //BDE TQuery 不能太長所以改用暫存
   if ((tmpList.Count>=20) and (tmpList.Count<=50)) then
   begin
     with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#RYList'') is not null    ');
       SQL.add('begin drop table #RYList end                 ');
       SQL.Add('select YPDH into #RYList from YPZL');
       SQL.Add('where  YPDH '+tmResult);
       //funcobj.WriteErrorLog(sql.Text);
       ExecSQL();
       Result:=' in (select YPDH from #RYList) ';
     end;
   end else if (tmpList.Count>=50) then
   begin
      showmessage('Vui long khong nhap nhieu hon 50 RY#');
      abort;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' ='''+Str+''' ';
 end;
end;



procedure TDetailInSampleOrder.Button7Click(Sender: TObject);
var AppDir:String;
    i,j,datai:integer;
    eclApp,WorkBook:olevariant;
    DataRow,ExcelRow:integer;
begin
    if Edit2.Text='' then begin
    showmessage('Vui long nhap ty gia');
    abort;
    end;
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.71.7\lys_erp\Additional\SP_N13.xlsx'),Pchar(AppDir+'Additional\SP_N13.xlsx'),false);   //'+main.serverIP+'
   if FileExists(AppDir+'Additional\SP_N13.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\SP_N13.xlsx');
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          sql.Add(' if object_id('+''''+'tempdb..#tmp1'+''''+') is not null ');         //////////////////////////////    if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null
          sql.add('begin   drop table #tmp1 end    ');
          sql.add('select ZLBH,MJBH,Parent,DType,CLBH,CLSL,YWPM,dwbh,ARTICLE,XieMing,Quantity');
          sql.add(',CalDate,GSBH,TempQty,RKQty,NK,TC,HD,KD,XT,GC,ZZ,Qty,Rate_HG,HG_NO');
          sql.add(',Rate_TC,TC_NO,Rate_HD,HD_NO,Rate_KD,KD_NO,NK1,TC1,HD1,KD1,H11,NQ,NKNQ,Rate_HG1,HG1_NO,Rate_TC1,TC1_NO,Rate_HD1,HD1_NO,Rate_KD1,KD1_NO');
          sql.add(',Rate_NQ,NQ_NO,Rate_NKNQ,NKNQ_NO,THQty,ISNULL((select distinct top 1 kcpkll.PKNO from KCPKLL where SCBH = '''+RYEdit.Text+''' and CLBH=#tmp.CLBH), (SELECT distinct TOP 1 RKNO FROM KCRKS WHERE CGBH = '''+RYEdit.Text+''' and CLBH=#tmp.CLBH)) AS PKNO');
          sql.add('into #tmp1 from #tmp');

          SQL.Add('  select distinct  ISNULL(A.HG_NO,ISNULL(A.TC_NO,A.HD_NO)) as MHQ, b.DWBH,b.HS_code,b.Name, a.CLSL, round(a.CLSL/a.Quantity,6) as CLSLpair,');
          SQL.Add(' CONVERT(date, kcrk.USERDATE) as userdateKCRK,sum(a.Qty) as qty,a.Qty,zszl.zsjc,');
	        SQL.Add(' isnull( KCPK.Declaretion,kcrk.DOCNO) as TKorHD, a.CLBH,a.ZLBH,');
          SQL.Add('SUBSTRING(A.ARTICLE, 1, CHARINDEX(''-'', A.ARTICLE) - 1) AS ARTICLE,'); // cat chuoi article

          SQL.Add('a.Quantity,ISNULL( kcrks.USPrice,kcrks.VNPrice/'''+Edit2.text+''') as USprice, kcrks.USPrice,kcrks.VNPrice');
	// --, case when kcpk.Declaretion is null then kcrk.USERDATE else KCPK.UserDate end as datetime
	        SQL.Add(' from #tmp1 A ');
          SQL.Add(' left join MHQ B on b.MHQ=A.HG_NO or b.MHQ=A.TC_NO or b.MHQ=A.HD_NO');
          SQL.Add(' left join KCRK on KCRK.RKNO=A.PKNO ');
          SQL.Add(' Left join KCPK on KCPK.PKNO=A.PKNO  ');
          SQL.Add(' left join kcrks on kcrk.RKNO=kcrks.RKNO and  ISNULL(A.HG_NO,ISNULL(A.TC_NO,A.HD_NO)) =kcrks.CNO and a.CLBH= kcrks.CLBH ');
          SQL.Add(' left join YPZLS on YPZLS.YPDH= a.ZLBH');
          SQL.Add(' left join zszl on kcrk.ZSBH = zszl.zsdh');
	        SQL.Add(' where b.MHQ is not null ');
          SQL.Add(' group by A.ZLBH,ISNULL(A.HG_NO, ISNULL(A.TC_NO, A.HD_NO)),b.DWBH,b.HS_code,b.Name,zszl.zsjc,');
          SQL.Add(' a.CLSL,a.ARTICLE,a.Quantity,KCRK.USERDATE,KCPK.Declaretion,KCRK.DOCNO,a.CLBH,kcrks.USPrice,kcrks.VNPrice,a.Qty ');
          Active:=true;
        end;
        eclApp.Cells(8,9):=Qtemp.FieldByName('Quantity').AsString;    //cells(dong;cot)
        eclApp.Cells(7,9):=Qtemp.FieldByName('ZLBH').AsString +'('+ Qtemp.FieldByName('ARTICLE').AsString +')' ;
        //eclApp.Cells(9,9):= Qtemp.FieldByName('IPrice').AsFloat  * Qtemp.FieldByName('Pairs').AsFloat;
        Qtemp.First;
        i:=16;
        j:=1;
        while not Qtemp.Eof do
        begin
          eclApp.Cells(i,1):=Qtemp.fieldbyname('MHQ').AsString;
          eclApp.Cells(i,2):=Qtemp.fieldbyname('Name').AsString;
          eclApp.Cells(i,3):=Qtemp.fieldbyname('HS_code').AsString;
          eclApp.Cells(i,4):=Qtemp.fieldbyname('DWBH').AsString;
          eclApp.Cells(i,5):=Qtemp.fieldbyname('CLSLpair').AsString;
          eclApp.Cells(i,6):=Qtemp.fieldbyname('USprice').AsString;
          //eclApp.Cells(i,8):=Qtemp.fieldbyname('CLSLpair').AsFloat * Qtemp.FieldByName('USprice').AsFloat* Qtemp.fieldbyname('Quantity').AsFloat;
          eclApp.Cells[i, 8] := Format('=F%d*E%d*$I$%d', [i, i, 8]);
          eclApp.Cells(i,10):=Qtemp.fieldbyname('TKorHD').AsString;
          eclApp.Cells(i,11):=Qtemp.fieldbyname('userdateKCRK').AsString;
          eclApp.Cells(i,14):=Qtemp.fieldbyname('zsjc').AsString;
          eclApp.Cells(i,15):=Qtemp.fieldbyname('ZLBH').AsString;
          eclApp.ActiveSheet.Rows[i+1].Insert;
          Qtemp.Next;
          inc(i);
        end;
        eclApp.ActiveSheet.Rows[i].delete;
        eclApp.Cells[i, 7] := '=SUM(G16:G' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 8] := '=SUM(H16:H' + IntToStr(i-1) + ')';
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TDetailInSampleOrder.RYEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    RYEditPaste();
end;
end;
procedure TDetailInSampleOrder.RYEditPaste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalDDBH:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalDDBH:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalDDBH:=TotalDDBH+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalDDBH)>0 then
    begin
      RYEdit.Text:=Copy(TotalDDBH,1,length(TotalDDBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;
end.
