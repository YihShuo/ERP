unit UseStockList1;      

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, GridsEh, DBGridEh, ExtCtrls, ComCtrls,
  StdCtrls, Dateutils, Comobj;

type
  TUseStockList = class(TForm)
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Button4: TButton;
    Button5: TButton;
    EditRY1: TEdit;
    EditRY2: TEdit;
    Chk_B: TCheckBox;
    chk_shp: TCheckBox;
    dtp3: TDateTimePicker;
    dtp4: TDateTimePicker;
    BuyNoEdit: TEdit;
    CheckBoxTW: TCheckBox;
    CheckBoxVN: TCheckBox;
    Edit_MatNo: TEdit;
    EditArticle: TEdit;
    BaseDate: TDateTimePicker;
    CB1: TCheckBox;
    Chk_Det: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    Panel3: TPanel;
    Splitter3: TSplitter;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    RemQuery: TQuery;
    RemQueryCLBH: TStringField;
    RemQueryYWPM: TStringField;
    RemQueryDWBH: TStringField;
    RemQueryCQDH: TStringField;
    RemQueryCLSL: TFloatField;
    RemQueryOnCGQty: TCurrencyField;
    RemQueryUseStock: TCurrencyField;
    RemQueryQty: TCurrencyField;
    RemQueryUnRKQty: TCurrencyField;
    RemQueryUnRKJG: TCurrencyField;
    RemQueryUnJG: TFloatField;
    RemQueryUnLL: TFloatField;
    RemQueryRemain: TFloatField;
    RemQueryERP_UseStock: TFloatField;
    RemQueryLackCLSL: TFloatField;
    DS3: TDataSource;
    PopupMenu3: TPopupMenu;
    Remain1: TMenuItem;
    N1: TMenuItem;
    UpSql3: TUpdateSQL;
    DS4: TDataSource;
    DetailQry: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    DateTimeField1: TDateTimeField;
    Query1DDRQ: TDateTimeField;
    DetailQryDiff: TCurrencyField;
    DetailQryDDZT: TStringField;
    DetailQrySize: TStringField;
    DetailQryBuyNo: TStringField;
    DetailQryCGNO: TStringField;
    DetailQryRKQty: TCurrencyField;
    DetailQryRKNO: TStringField;
    DetailQryCLBH: TStringField;
    PopupMenu4: TPopupMenu;
    Modify1: TMenuItem;
    UseStock1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    qrUsestock: TQuery;
    RemQueryZWPM: TStringField;
    CK_J: TCheckBox;
    CB4: TCheckBox;
    CB7: TCheckBox;
    STLCombo: TComboBox;
    Excel1: TMenuItem;
    RemQueryUSPrice: TFloatField;
    RemQueryVNPrice: TFloatField;
    ExchangLabel: TLabel;
    TempQry: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Chk_DetClick(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Remain1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure UseStock1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseStockList: TUseStockList;

implementation

uses RYTemp1 , main1, FunUnit;

{$R *.dfm}

procedure TUseStockList.FormDestroy(Sender: TObject);
begin
  UseStockList:=nil;
end;

procedure TUseStockList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TUseStockList.Button4Click(Sender: TObject);
var year,month,day:word;
    ayear,amonth:string;
begin
    if ((chk_shp.Checked=false) and (length(BuyNoEdit.Text)<=4)) then
    begin
      showmessage('Please choice RYDate or BuyNo');
      exit;
    end;
    if length(Edit_MatNo.Text)<-1 then
    begin
      showmessage('Please iput Mat ID as least(1)');
      exit;
    end;
    //找庫存相關的數據
    decodedate(BaseDate.Date,Year,Month,Day);  //今天日期:例2011.10.28
    incAMonth(Year,Month,Day,-1);          //指定日期倒推一個月:2011.9.28
    ayear:=floattostr(year);               //2011年
    amonth:=floattostr(month);             //9月
    if length(amonth)=1 then
      amonth:='0'+amonth;

    with RemQuery do
    begin
      //目前庫存
      active:=false;
      sql.Clear;
      sql.add('  if object_id('+''''+'tempdb..#RemainKC'+''''+') is not null  ');
      sql.add('begin   drop table #RemainKC end   ');

      sql.Add('select CLZL.CLDH,');
      sql.add('       CLZL.CLLB,');
      sql.add('       CLZL.DWBH,');
      sql.add('       LastKC.LastRem,');
      sql.add('       RK.RKQty,');
      sql.add('       QC.QCQty,');
      sql.add('       LL.LLQty,');
      sql.add('       JGRK.JGRK,');
      sql.add('       JGCK.JGCK,');
      sql.add('       JGCKTemp.JGCK as JGCKTemp,');
      sql.add('       JGCKTemp1.JGCK as JGCKTempM'); //add by Nick 2015.10.23
      sql.add('into #RemainKC from CLZL  ');
      //期初庫存 (前一個月的庫存.例:9月)
      sql.add('left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
      sql.add('           from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
      sql.add('           and KCMONTH='+''''+amonth+'''');
      sql.add('           and KCCLMONTH.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.Add('           and KCCLMONTH.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');

      //入庫數量 (入庫日期>=今天日期 而且 <=入庫日期>=今天日期 例:)
      sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty ');
      sql.add('           from KCRKS');
      sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
      sql.add('                 and ');
      sql.add('                 convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('                 and KCRKS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.Add('                 and KCRK.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');

      //入庫數量->不良品 (入庫日期>=今天日期 而且 <=入庫日期>=今天日期 例:)
      sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as QCQty ');
      sql.add('           from KCRKS');
      sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO and KCRK.QCID=''NO'' ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
      sql.add('                '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
      sql.add('                and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
      sql.add('                '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('                and KCRKS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.Add('                and KCRK.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by KCRKS.CLBH) QC on QC.CLBH=CLZL.CLDH ');

      //出庫數量 =>倉庫確認出庫   (出庫日期>=今天日期 而且 <=出庫日期>=今天日期   而且 尚未Confirm 例:)
      //sql.add('left join (select KCLLS.CLBH,round(sum(KCLLS.Qty),3) as LLQty ');
      sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty ');
      sql.add('           from KCLLS ');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
      sql.add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('                 and KCLLS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
      sql.add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
      sql.Add('                 and KCLL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');
      //加工入庫數量 =>母材料+倉庫已確認入庫    (出庫日期>=今天日期 而且 <=出庫日期>=今天日期   而且 尚未Confirm 例:)
      sql.add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK ');
      sql.add('           from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
      sql.add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('                 and JGZLS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('                 and JGZL.CFMID1 <>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('                 and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                 group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');
      //加工出庫數量 =>子材料+倉庫確認出庫
      sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK ');
      sql.add('           from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty ');
      sql.add('                      from JGZLS ');
      sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
      sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
      sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('                      '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('                      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('                      and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
      sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
      sql.add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' ');
      sql.add('                 and JGZLS.ZMLB like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('                 and JGZL.CFMID1 <>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('                 and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.Add('                 group by JGZLS.ZMLB ');
      //20180516 加工出材料單切轉20170901
      sql.add('            union all ');
      sql.Add('            select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
      sql.add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('            where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=');
      sql.add('                  '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
      sql.add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.Add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
      sql.add('                 and KCLLS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
      sql.Add('                 and KCLL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                 and KCLL.SCBH =''JJJJJJJJJJ''');
      sql.add('            group by KCLL.CKBH,KCLLS.CLBH ) JGCK on JGCK.ZMLB=CLZL.CLDH ');

      //加工單開還未回來數量 (在途數量)
      sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK ');
      sql.add('           from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
      sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('                      where  JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('                      and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
      sql.add('           where 1=2 and JGZLS.ZMLB like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
      sql.add('           and convert(smalldatetime,convert(varchar,JGZL.JGDATE,111))<=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('           and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH');
      //加工單已開將來預計要入庫母料數量 (預計入庫母料數量)  add by Nick 2015.10.23
      sql.add(' left join (select JGZLS.CLBH,sum(round(JGZLS.Qty,2)) as JGCK ');
      sql.add('           from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           where  JGZLS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
      sql.add('           and convert(smalldatetime,convert(varchar,JGZL.JGDATE,111))<=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
      sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('           and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by JGZLS.CLBH ) JGCKTemp1 on JGCKTemp1.CLBH=CLZL.CLDH');
      //查詢訂單
      if (( editRY1.Text<>'') or (editRY2.Text<>'') or(BuyNoEdit.Text<>'') or (chk_shp.Checked)) then
      begin
      sql.add('left join (');
      sql.add('            select  ZLZLS2.CLBH from ZLZLS2');
      sql.add('            left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH ');
      sql.add('            where DDZL.GSBH='+''''+main.edit2.Text+'''');
      sql.add('            and ZLZLS2.ZMLB=''N'' '); //
      sql.add('            and ZLZLS2.CLSL<>0') ;
      if (editRY1.Text<>'') and (editRY2.Text='') then
         sql.add('and ZLZLS2.ZLBH like '+''''+editRY1.Text+'%'+'''');
      if (editRY1.Text<>'') and (editRY2.Text<>'') then
      begin
          sql.add('and ZLZLS2.ZLBH >= '+''''+editRY1.Text+'''');
          sql.add('and ZLZLS2.ZLBH <= '+''''+editRY2.Text+'''');
      end;
      //20150904
      if BuyNoEdit.Text <> '' then
            sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102
      if chk_shp.Checked then
      begin
            sql.add('and DDZL.DDRQ between ');
            sql.add('Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''')'+ ' and '+'Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''')');
      end;
      sql.add('   Group by  ZLZLS2.CLBH) ZLZLS2 on ZLZLS2.CLBH=CLZL.CLDH ');
      end;
      //=====
      sql.add('  where not (LastKC.LastRem is null  and RK.RKQty is null and LL.LLQty is null ');
      sql.add('               and JGRK.JGRK is null and JGCK.JGCK is null and JGCKTemp.JGCK is null and JGCKTemp1.JGCK is null)');
      if Edit_MatNo.Text<>'' then
         sql.add('and CLZL.CLDH like '+''''+Edit_MatNo.Text+'%'+'''');
      // filter RY, BuyNo
      if (( editRY1.Text<>'') or (editRY2.Text<>'') or(BuyNoEdit.Text<>'') or (chk_shp.Checked)) then
      begin
        sql.add('and IsNull(ZLZLS2.CLBH,'''')<>'''' ');
      end;
      //
      sql.add('and LEFT(CLZL.CLDH,1)<>''X''  ');
      sql.add('and LEFT(CLZL.CLDH,1)<>''Z''  ');
      sql.add('and LEFT(CLZL.CLDH,2)<>''U1''  ');
      sql.add('and LEFT(CLZL.CLDH,1)<>''V''  ');
      if CK_J.Checked=true then
         sql.add('and LEFT(CLZL.CLDH,1)<>''J''  ');
      //
      sql.add('DECLARE @Ldate as datetime');
      sql.add('set @Ldate = DATEADD(month, -6, GETDATE())'); //限定六個月內的訂單
      //訂單資訊
      sql.add('select * from (');
      sql.add('select  *,');
      SQL.Add('   case when Remain>=0 then');
      SQL.Add('     case when LackCLSL <= (Remain-OnCGQty) then');
      SQL.Add('       LackCLSL');
      SQL.Add('     else');
      SQL.Add('       case when (Remain-OnCGQty)>0 then LackCLSL else Remain end ');
      SQL.Add('      end ');
      SQL.Add('   else');
      SQL.Add('     case when (LackCLSL+Remain-OnCGQty)>0  then');
      SQL.Add('       (LackCLSL+Remain-OnCGQty)');
      SQL.Add('     else');
      SQL.Add('       0');
      SQL.Add('     end');
      SQL.Add('   end    as ERP_UseStock  from (');
      sql.add('select ZLZLS2.*,Remain.Qty,Remain.UnRKQty,Remain.UnRKJG,Remain.UnJG,Remain.UnLL,Remain.Remain,CGBJ.USPrice,CGBJ.VNPrice from ( ');
      sql.add('select  S2.CLBH');
      sql.add('        ,S2.YWPM');
      sql.add('        ,S2.ZWPM');
      sql.add('        ,S2.DWBH');
      sql.add('        ,S2.ZSYWJC ');
      sql.add('        ,S2.CQDH ');
      sql.add('        ,S2.CLSL ');
      sql.add('        ,S2.CSBH ');
      sql.add('        ,Case when (CG.CGQTY-IsNull(RKZL.RKQty,0))>0 then (CG.CGQTY-IsNull(RKZL.RKQty,0)) else 0 end   as OnCGQty   ');
      sql.add('        ,S2.CLSL- IsNull(RKZL.RKQty,0)-IsNull(Stock.UseStock,0) as LackCLSL  ');
      sql.add('        ,IsNull(Stock.UseStock,0) as UseStock ');
      sql.add('FROM (select  ZLZLS2.CLBH');
      sql.add('        ,CLZL.YWPM');
      sql.add('        ,CLZL.ZWPM');
      sql.add('        ,CLZL.DWBH');
      sql.add('        ,CLZL.CQDH');
      sql.add('        ,Max(ZSZL.ZSYWJC) as ZSYWJC ');
      sql.add('        ,isnull(sum(ZLZLS2.CLSL),0) as CLSL ');
      sql.add('        ,Max(ZLZLS2.CSBH) as CSBH ');
      sql.add('      from ZLZLS2 ');
      sql.add('      left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
      sql.add('      left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');
      sql.add('      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH');
      sql.add('      left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH ');
      sql.add('      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
      sql.add('      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
      sql.add('      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH ');
      sql.add('      LEFT JOIN ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH');
      sql.add('      where 1=1 ');
      {
      if IsSize=false then   //非尺寸材料
        sql.add('            ZLZLS2.SIZE=''ZZZZZZ''  ')
      else
        sql.add('            ZLZLS2.SIZE<>''ZZZZZZ''  ');
      }
      sql.add('            and left(ZLZLS2.CLBH,1)<>'+''''+'W'+'''');
      sql.add('            and DDZL.GSBH='+''''+main.edit2.Text+'''');
      sql.add('            and ZLZLS2.ZMLB='+''''+'N'+''''); //子件
      sql.add('            and SCZL.SCBH=SCZl.ZLBH ');
      sql.add('            and SCZL.SCBH is not null '); //已放行2
      sql.add('            and ZLZLS2.CLSL<>0') ;
      sql.add('            and DDZlTW.DDZT<>''C'' ');
      if (CheckBoxTW.Checked xor CheckBoxVN.Checked)=true  then
      begin
         if CheckBoxTW.Checked=true then
            sql.add('            and CLZL.CQDH=''TW'' ')// 採區
         else
            sql.add('            and CLZL.CQDH=''VN'' ')
      end;
      sql.add('            and isnull(XXBWFLS.DFL,'''')<>''G''  '); //加上不要材料分類到無需領料的部分
      if (editRY1.Text<>'') and (editRY2.Text='') then
          sql.add('and SCZL.SCBH like '+''''+editRY1.Text+'%'+'''');
      if (editRY1.Text<>'') and (editRY2.Text<>'') then
      begin
        sql.add('and SCZL.SCBH >= '+''''+editRY1.Text+'''');
        sql.add('and SCZL.SCBH <= '+''''+editRY2.Text+'''');
      end;
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      if chk_shp.Checked then
      begin
          sql.Add('and DDZL.DDRQ between ');
          sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');      
      end;
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      //
      IF Chk_B.Checked THEN
         sql.add('         and DDZL.DDLB<>''B''  ');
      if EditArticle.Text<>'' then
         sql.add('         and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
      if Edit_MatNo.Text<>'' then
         sql.add('         and ZLZLs2.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      sql.add('      group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH');
      sql.add('     ) S2 ');
      sql.Add('Left join (select CGZLSS.CLBH,ISNULL(SUM(CGZLSS.Qty),0) as CGQty ');
      sql.add('           FROM CGZLSS  ' );
      sql.Add('           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  ' );
//      sql.add('           left join CLZL on CLZL.CLDH=CGZLSS.CLBH');
      sql.add('           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH');
      sql.add('           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
      sql.Add('           WHERE CGZL.CGLX<>''6'' ' );
      sql.add('                 and DDZL.GSBH='+''''+main.edit2.Text+'''');
      if EditArticle.Text<>'' then
         sql.add('              and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
      if Edit_MatNo.Text<>'' then
         sql.add('              and CGZLSS.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text='') then
         sql.add('and CGZLSS.ZLBH like '+''''+editRY1.Text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
      begin
        sql.add('and CGZLSS.ZLBH >= '+''''+EditRY1.Text+'''');
        sql.add('and CGZLSS.ZLBH <= '+''''+EditRY2.Text+'''');
      end;
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      if chk_shp.Checked then
      begin
          sql.Add('and DDZL.DDRQ between ');
          sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');      
      end;
      sql.add('and Convert(varchar,CGZL.CGDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      //
      sql.add('           GROUP BY CGZLSS.CLBH  ');
      sql.add('           ) CG ON CG.CLBH=S2.CLBH  ');
      sql.Add('Left Join (select CGKCUSE.CLBH,case when IsNull(CGKCUSE.CLBHYS,'''')<>''''   then IsNull(CGKCUSE.CLBHYS,'''')   else CGKCUSE.CLBH end as UseCLBH,ISNULL(SUM(CGKCUSE.Qty),0) as UseStock ');
      sql.add('                   FROM CGKCUSE  ' );
      sql.add('                   left join DDZl on DDZl.DDBH=CGKCUSE.ZLBH');
      sql.add('                   left join CLZL  on CLZL.CLDH=CGKCUSE.CLBH');
      sql.add('                   left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
      sql.Add('                   WHERE 1=1  ' );
      sql.add('                   and DDZL.GSBH='+''''+main.edit2.Text+'''');
      if EditArticle.Text<>'' then
         sql.add('                      and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
      if Edit_MatNo.Text<>'' then
         sql.add('                      and CGKCUSE.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text='') then
         sql.add('and CGKCUSE.ZLBH like '+''''+EditRY1.Text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
      begin
        sql.add('and CGKCUSE.ZLBH >= '+''''+EditRY1.Text+'''');
        sql.add('and CGKCUSE.ZLBH <= '+''''+EditRY2.Text+'''');
      end;
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      if chk_shp.Checked then
      begin
          sql.Add('and DDZL.DDRQ between ');
          sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
      end;
      sql.add('and Convert(varchar,CGKCUSE.USERDATE,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''  ');
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      //
      sql.add('           GROUP BY CGKCUSE.CLBH,IsNull(CGKCUSE.CLBHYS,'''')   ');
      sql.add('           ) Stock ON Stock.CLBH=S2.CLBH  ');
      //20160106已入庫
      sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty ');
      sql.add('           from  KCRKS with (nolock) ');
      sql.add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH='''+main.edit2.Text+''' ');
      sql.add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO  ');
      sql.add('           where DDZL.GSBH='''+main.edit2.Text+''' ');
      if Edit_MatNo.Text<>'' then
         sql.add('              and KCRKS.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text='') then
         sql.add('and KCRKS.CGBH like '+''''+EditRY1.Text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
      begin
        sql.add('and KCRKS.CGBH >= '+''''+EditRY1.Text+'''');
        sql.add('and KCRKS.CGBH <= '+''''+EditRY2.Text+'''');
      end;
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      if chk_shp.Checked then
      begin
          sql.Add('and DDZL.DDRQ between ');
          sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
      end;
      sql.add('and Convert(varchar,KCRK.USERDATE,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''  ');
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      sql.add('           group by KCRKS.CLBH ) RKZL ON RKZL.CLBH=S2.CLBH   ');
      //
      sql.add('where 1=1 ');
      if CB2.Checked=true then
         sql.add('and S2.CLBH in (select CLDH from #RemainKC) ');      
      sql.add(') ZLZLS2 ');
      //20160812 add Price
      sql.Add(' left join (select CGBJ.CLBH,case when CGBJ.USPrice is not null then CGBJ.USPrice else round(sum(CGBJ.VNPrice/'+ExchangLabel.Caption+'),3) end as USPrice,CGBJ.VNPrice from (');
      sql.Add('select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ where CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='''+main.Edit2.Text+'''   and CGBJS.CLBH not like ''V%''');
      sql.Add(') CGBJ where rn=1 group by CLBH,CGBJ.USPrice,CGBJ.VNPrice) CGBJ on CGBJ.CLBH=ZLZLS2.CLBH');
      //
      sql.add(' left join ( ');
      //20151231 可利庫計算
      sql.add('select #RemainKC.CLDH,');                              //材料編號
      sql.Add('       #RemainKC.CLLB,');                              //材料類別
      sql.add('       #RemainKC.DWBH,');                              //單位
      sql.add('       isnull(#RemainKC.LastRem,0) as LastRem,');      //last month上個月
      sql.add('       isnull(#RemainKC.RKQty,0) as RKQty,');          //RKQty+
      sql.add('       isnull(#RemainKC.QCQty,0) as QCQty,');          //QCQty
      sql.add('       isnull(#RemainKC.LLQty,0) as LLQty,');          //LLQty-
      sql.add('       isnull(round(#RemainKC.JGRK,2),0) as JGRK,');   //JGRK+
      sql.add('       isnull(round(#RemainKC.JGCK,2),0) as JGCK,');   //JGCK-
      sql.add('       isnull(round(#RemainKC.JGCKTemp,2),0) as JGCKTemp,'); //JGTmp# 在途數量
      sql.add('       KCZLS.KCBH,');
      sql.add('       KCZLS.CKBH,');
      sql.add('       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0) as Qty,');
      sql.add('       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)-isnull(#RemainKC.JGCKTemp,0) as STOCKQty,');
      //可利用庫存
      sql.add('       case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)<0 then 0 else isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0) end as UnLL,');
      sql.add('       isnull(Round(JGZLZLS2.CLSL,2),0) as UnJG ,');
      sql.add('       isnull(#RemainKC.JGCKTempM,0) as UnRkJG, ');
      sql.add('       isnull(UnRk.UnRkQty,0) as UnRkQty, ');
      //sql.add('       isnull(UnBURk.UnBURkQty,0) as UnBURkQty, ');
      //實際在倉庫的可利用庫存
      if CB7.Checked=false then
      begin
        sql.Add('    case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)>=0 then');
        sql.Add('      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
        sql.Add('      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(ZLZLS2.CLSL,0)+ISNULL(ZLZLS2LL.QTY,0)-isnull(JGZLZLS2.CLSL,0)');
        sql.Add('    else ');
        sql.Add('      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
        sql.Add('      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(JGZLZLS2.CLSL,0) end as Remain');
      end else
      begin
        sql.add('     (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
        sql.add('     + case when (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(ZLZLS2.CLSL,0)+ISNULL(ZLZLS2LL.QTY,0)-isnull(JGZLZLS2.CLSL,0))<0 then ');
        sql.add('     (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(ZLZLS2.CLSL,0)+ISNULL(ZLZLS2LL.QTY,0)-isnull(JGZLZLS2.CLSL,0)) else 0 end ');
        sql.add('      ) as Remain ');
      end;
    //
      sql.add('from #RemainKC ');
      sql.add('left join (select * ');
      sql.add('           from KCZLS ');
      sql.add('           where CKBH='+''''+main.Edit2.Text+''' and CLBH like '+''''+Edit_MatNo.Text+'%'+''' ');
      sql.add('           ) KCZLS on KCZLS.CLBH=#RemainKC.CLDH');
      sql.add('left join (select ZLZLS2.CLBH ');  //非加工件
      sql.add('                   ,sum(ZLZLS2.CLSL) AS CLSL ');
      sql.add('             from  ZLZLS2  ');
      sql.add('             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'); //抓訂單狀態及出貨日期
      sql.add('             where ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ddzl.GSBH='''+main.Edit2.Text+''' and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
      sql.add('                   and ZLZLS2.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('                   and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''))  and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'')  and ddzl.shipdate > @Ldate');  // add no risk RY
      sql.add('             group by ZLZLS2.CLBH ) ZLZLS2 ON ZLZLS2.CLBH=#RemainKC.CLDH ');
      //已領料數量
      //Updated by Nick 2015.7.2 to drop minus RY --Start
      //sql.add('left join (select  KCLLS.CLBH, sum(KCLLS.Qty) as Qty ');
      sql.add('left join (select  KCLLS.CLBH, sum(CASE  WHEN (KCLLS.CLSL > KCLLS.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty ');
      sql.add('           from  KCLLS,KCLL ');
      sql.add('           left join ddzl on ddzl.ddbh=KCLL.SCBH');  //add by Nick
      //20161012    KCLL.USERDATE -> KCLL.CFMDate
      sql.add('           where KCLL.CFMID<>''NO'' AND KCLLS.LLNO=KCLL.LLNO AND KCLL.SCBH<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+'''  and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
      sql.add('                 and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''))  and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'')   and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
      sql.add('                 and KCLLS.CLBH like '''+Edit_MatNo.Text+'%'' ');
      sql.Add('                 and KCLL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                 and KCLL.SCBH<>''JJJJJJJJJJ''');  //2017/09/01 sua gia cong vat tu
      sql.add('           group by KCLLS.CLBH ) ZLZLS2LL on ZLZLS2LL.CLBH=#RemainKC.CLDH ');
      //有問題    修改加工淨需求計算時不算負值 Nick Lee 2015-06-26
      //加工子件材料  加工淨需求計算時不算負值
      sql.add('left join( select za.clbh,sum(CLSLS) as clsl from (select ZLZLS2.ZLBH,ZLZLS2.CLBH ,sum(ZLZLS2.CLSL) - isnull(JGZLBK.okQty,0) AS CLSLS');
      sql.add('             from  ZLZLS2  ');
      sql.add('             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh');    //add by Nick
      sql.add('             left join (select JGZLSS.ZLBH,JGZLS.CLBH as MJBH,JGZLS.ZMLB as CLBH,sum(JGZLSS.Qty*JGZLS.QTY) as okQty from JGZLSS');
      sql.add('						   left join JGZL on JGZL.JGNO=JGZLSS.JGNO ');
      sql.add('						   left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLBH=JGZLSS.CLBH');
      sql.add('              left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  ');  //add by Nick
      sql.add('						   where JGZL.CFMID1 <>''NO'' and JGZLS.ZMLB like '''+Edit_MatNo.Text+'%'' ');
      sql.add('								 and JGZLS.ZMLB<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+''' ');
      sql.Add('                and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111))< ''2017/09/01'''); //<''2017/09/01
      sql.add('                and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''))  and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'')  and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
      sql.add('							  group by  JGZLSS.ZLBH,JGZLS.CLBH,JGZLS.ZMLB ');
      // >=''2017/09/01
      sql.Add('            union all');
      sql.Add('            select KCLLS.SCBH,KCLLS.DFL as MJBH,KCLLS.CLBH,sum(KCLLS.Qty) as okQty from KCLL ');
      sql.add('            left join KCLLS on KCLLS.LLNO=KCLL.LLNO ');
      sql.add('            left join ddzl on ddzl.ddbh=KCLLS.SCBH  ');
      sql.Add('                where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
      sql.add('                 and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID <>''NO''');
      sql.add('                 and KCLLS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('                 and KCLL.GSBH='''+main.Edit2.Text+''' and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
      sql.add('                 and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''))  and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'')  and ddzl.shipdate > @Ldate and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
      sql.add('            group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH');

      sql.add('						  ) JGZLBK on JGZLBK.MJBH=ZLZLS2.MJBH and JGZLBK.CLBH=ZLZLS2.CLBH and JGZLBK.ZLBH=ZLZLS2.ZLBH');
      sql.add('             where ZLZLS2.MJBH<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+''' ');
      sql.add('                   and ZLZLS2.CLBH like '''+Edit_MatNo.Text+'%'' ');
      sql.add('                   and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''))  and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
      sql.add('             group by ZLZLS2.ZLBH,ZLZLS2.CLBH,JGZLBK.okQty');
      sql.add('                   having sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty,0)');
      sql.add('            ) za group by za.CLBH) JGZLZLS2 ON JGZLZLS2.CLBH=#RemainKC.CLDH ');
      //已採未入庫量不包含補料
      sql.add('left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGRK.okQty,0)) as UnRkQty  ');
      sql.add('           from CGZLS');
      sql.add('           left join CGZL on CGZL.CGNO=CGZLS.CGNO');
      sql.add('           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty) as okQty from KCRKS');
      sql.add('                      left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      sql.add('                      where  IsNull(KCRKS.Charge,0)<>1  and ISNULL(KCRKS.RKSB,'''')<>''NG'' and ISNULL(KCRKS.RKSB,'''')<>''DL'' and KCRK.GSBH='''+main.Edit2.Text+''' ');
      sql.add('                            and ZSNO in (select CGNO from CGZL where CGZL.GSBH='''+main.Edit2.Text+'''  ');
      // 20161012
      sql.add('                            and convert(varchar,KCRK.USERDATE,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
      //
      sql.add('                                                                      and (CGZL.CGLX=''2'' ');
      sql.add('                                                                      or CGZL.CGLX=''5'' ');
      sql.add('                                                                      or CGZL.CGLX=''3'' ' );
      sql.add('                                                                      or CGZL.CGLX=''1'')' );
      sql.add('                                                                    and CGZL.CGDate > DATEADD(month, -6, GETDATE()) ) ');
      sql.add('                      group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH ') ;
      sql.add('           where  CGZLS.YN<>''5'' and CGZLS.YN<>''0'' and IsNull(CGZL.DevType,'''')<>''Z07'' ');
      sql.add('                  and CGZLS.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
      sql.add('                  and CGZL.GSBH='+''''+main.Edit2.Text+'''');
      sql.add('                  and CGZL.CGDate > @LDate  and convert(varchar,CGZL.CGDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''  ');   // add by Nick
      sql.add('                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) ');
      sql.add('                  and (CGZL.CGLX='+''''+'2'+'''' );
      sql.add('                  or CGZL.CGLX='+''''+'5'+'''' );
      sql.add('                  or CGZL.CGLX='+''''+'3'+'''' );
      sql.add('                  or CGZL.CGLX='+''''+'1'+''''+')' );
      sql.add('           group by CGZLS.CLBH ) UnRk on UnRk.CLBH=#RemainKC.CLDH ') ;
      //已採未入庫量不包含補料
      sql.add('where 1=1 ');
      sql.add(') Remain on ZLZLS2.CLBH=Remain.CLDH ');
      sql.add(') as SetUseStock ) as SetUseStock where  1=1 ');
      if CB4.Checked=false then
      begin
        if CB3.Checked=true then
           sql.add(' and ERP_UseStock>=1 ');
      end else
      begin
        if CB3.Checked=true then
           sql.add(' and (ERP_UseStock>=1 or  UseStock>0 ) ')
        else
           sql.add(' and UseStock>0 ');
      end;
      if CB1.checked then
        sql.add('and Remain>0.05');
      //
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    //明細
    with DetailQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('select  S2.ZLBH');
      sql.add('        ,S2.CLBH ');
      sql.add('        ,S2.Article ');
      sql.add('        ,S2.Pairs ');
      sql.add('        ,S2.CLSL ');
      sql.add('        ,S2.Size ');
      sql.add('        ,S2.ShipDate ');
      sql.add('        ,S2.DDRQ ');
      sql.add('        ,s2.BuyNo ');
      sql.add('        ,S2.DDZT ');
      sql.add('        ,isnull(CG.CGQTY,0) as CGQty');
      sql.add('        ,isnull(Stock.UseStock,0) as UseStock ');
      sql.add('        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)-S2.CLSL as Diff ');
      sql.add('        ,CG.CGNO  ');
      sql.add('        ,RKZL.RKQty ');
      sql.add('        ,RKZL.RKNO  ');
      sql.add('FROM (select  ZLZLS2.ZLBH');
      sql.add('        ,ZLZLS2.CLBH ');
      sql.add('        ,XXZL.Article ');
      sql.add('        ,DDZL.Pairs ');
      sql.add('        ,case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL ');
      sql.add('        ,ZLZLS2.SIZE ');
      sql.add('        ,DDZL.ShipDate ');
      sql.add('        ,DDZL.DDRQ ');
      sql.add('        ,DDZL.BuyNo ');
      sql.add('        ,DDZLTW.DDZT ');
      sql.add('      from ZLZLS2 ');
      sql.add('      left join CLZL on CLZL.CLDH=ZLZLS2.CLBH ');
      sql.add('      left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH ');
      sql.add('      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH ');
      sql.add('      left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH ');
      sql.add('      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao ');
      sql.add('      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
      sql.add('      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH ');
      sql.add('      where 1=1 '); 
      {
      if IsSize=false then   //非尺寸材料
        sql.add('            ZLZLS2.SIZE=''ZZZZZZ''  ')
      else
        sql.add('            ZLZLS2.SIZE<>''ZZZZZZ''  ');
      }
      sql.add('             and left(ZLZLS2.CLBH,1)<>'+''''+'W'+'''');
      sql.add('             and DDZL.GSBH='+''''+main.edit2.Text+'''');
      sql.add('             and ZLZLS2.CLBH=:CLBH ');
      sql.add('             and ZLZLS2.ZMLB=''N''       ');
      sql.add('             and SCZL.SCBH=SCZl.ZLBH ');
      sql.add('             and SCZL.SCBH is not null ');
      sql.add('             and ZLZLS2.CLSL<>0 ');
      if (CheckBoxTW.Checked xor CheckBoxVN.Checked)=true  then
      begin
         if CheckBoxTW.Checked=true then
            sql.add('            and CLZL.CQDH=''TW'' ')// 採區
         else
            sql.add('            and CLZL.CQDH=''VN'' ')
      end;
      sql.add('             and isnull(XXBWFLS.DFL,'''')<>''G''  '); //加上不要材料分類到無需領料的部分
      if (EditRY1.Text<>'') and (EditRY2.Text='') then
         sql.add('and SCZL.SCBH like '+''''+EditRY1.Text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
      begin
           sql.add('and SCZL.SCBH >= '+''''+EditRY1.Text+'''');
           sql.add('and SCZL.SCBH <= '+''''+EditRY2.Text+'''');
      end;
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      if chk_shp.Checked then
      begin
          sql.Add('and DDZL.DDRQ between ');
          sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
      end;
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      //
      IF Chk_B.Checked THEN
         sql.add('          and DDZL.DDLB<>''B''  ');
      if EditArticle.Text<>'' then
         sql.add('          and XXZL.Article like '+''''+EditArticle.text+'%'+'''');

      sql.add('       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.SIZE,XXZL.Article,DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BuyNo,DDZLTW.DDZT ');
      sql.add('      ) S2  ');
      sql.Add('LEFT JOIN (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,ISNULL(SUM(CGZLSS.Qty),0) as CGQty,Max(CGZLSS.CGNO) as CGNO  ');
      sql.add('           FROM CGZLSS  ' );
      sql.Add('           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  ' );
      sql.add('           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH');
      sql.add('           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
      sql.Add('           WHERE CGZL.CGLX<>''6''  ' );
      sql.add('               and CGZLSS.CLBH=:CLBH  ');
      sql.add('               and DDZL.GSBH='+''''+main.edit2.Text+'''');
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      sql.add('and CGZL.USERDATE<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date+1)+''')  ');
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      if EditArticle.Text<>'' then
         sql.add('            and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text='') then
         sql.add('and CGZLSS.ZLBH like '+''''+EditRY1.Text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
      begin
         sql.add('and CGZLSS.ZLBH >= '+''''+EditRY1.Text+'''');
         sql.add('and CGZLSS.ZLBH <= '+''''+EditRY2.Text+'''');
      end;

      sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC ');
      sql.add('          ) CG ON CG.CLBH=S2.CLBH and CG.ZLBH=S2.ZLBH  and CG.XXCC=S2.SIZE ');
      sql.Add(' LEFT JOIN ( select CGKCUSE.ZLBH,CGKCUSE.CLBH,ISNULL(SUM(CGKCUSE.Qty),0) as UseStock ');
      sql.add('                   FROM CGKCUSE  ' );
      sql.add('                   left join DDZl on DDZl.DDBH=CGKCUSE.ZLBH');
      sql.add('                   left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
      sql.Add('                   WHERE CGKCUSE.CLBH=:CLBH  ' );
      sql.add('                         and DDZL.GSBH='+''''+main.edit2.Text+'''');
      if EditArticle.Text<>'' then
        sql.add('                      and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text='') then
        sql.add('and CGKCUSE.ZLBH like '+''''+EditRY1.Text+'%'+'''');
      if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
      begin
        sql.add('and CGKCUSE.ZLBH >= '+''''+EditRY1.Text+'''');
        sql.add('and CGKCUSE.ZLBH <= '+''''+EditRY2.Text+'''');
      end;
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      if chk_shp.Checked then
      begin
          sql.Add('and DDZL.DDRQ between ');
          sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
      end;
      sql.add('                   group by CGKCUSE.CLBH,CGKCUSE.ZLBH ');
      sql.add('            ) Stock on Stock.ZLBH=S2.ZLBH and Stock.CLBH=S2.CLBH  ');
      //入庫
      sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
      sql.add('                  max(KCRKS.RKNO) as RKNO ');
      sql.add('           from  KCRKS with (nolock) ');
      sql.add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH='''+main.edit2.Text+''' ');
      sql.add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO  ');
      sql.add('           where DDZL.GSBH='''+main.edit2.Text+''' ');
      sql.add('                 and KCRKS.CLBH=:CLBH ');
      //20150904增加
      if BuyNoEdit.Text <> '' then
        sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
      sql.add('and KCRK.USERDATE<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date+1)+''')  ');
      sql.add('and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')  ');
      if STLCombo.ItemIndex=1 then
         sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
      else if STLCombo.ItemIndex=2 then
         sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
      if chk_shp.Checked then
      begin
          sql.Add('and DDZL.DDRQ between ');
          sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
      end;
      sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL ON RKZL.CLBH=S2.CLBH and RKZL.ZLBH=S2.ZLBH  ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    //
    if Chk_Det.Checked=true then
    begin
      DetailQry.Active:=true;
      Splitter3.Align:=alRight;
      DBGridEh4.Visible:=true;
    end else
    begin
      DetailQry.Active:=false;
      Splitter3.Align:=alNone;
      DBGridEh4.Visible:=false;
    end;

end;

procedure TUseStockList.FormCreate(Sender: TObject);
begin
  BaseDate.Date:=Date();
  DTP3.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP4.Datetime:=EndOfTheMonth(IncMonth(Date(),0));
  //抬頭資訊
  with TempQry do
  begin
    Active:=false;
    SQL.Clear();
    SQL.Add('select top 1 CWHL  from CWHLS order by HLYEAR desc ,HLMONTH desc,HLDAY desc');
    Active:=true;
    ExchangLabel.Caption:=FieldByName('CWHL').AsString;
    Active:=false;
  end;
end;

procedure TUseStockList.Chk_DetClick(Sender: TObject);
begin
    //
    if Chk_Det.Checked then
    begin
      DBGridEh3.FieldColumns['UnRKQty'].Visible:=true ;
      DBGridEh3.FieldColumns['UnRKJG'].Visible:=true ;
      DBGridEh3.FieldColumns['UnJG'].Visible:=true ;
      DBGridEh3.FieldColumns['UnLL'].Visible:=true ;
      DBGridEh3.FieldColumns['OnCGQty'].Visible:=true ;
      DBGridEh3.FieldColumns['LackCLSL'].Visible:=true ;
      if RemQuery.Active=true then DetailQry.Active:=true;
      DBGridEh4.Visible:=true;
      Splitter3.Align:=alRight;
    end
    else
    begin
      DBGridEh3.FieldColumns['UnRKQty'].Visible:=false ;
      DBGridEh3.FieldColumns['UnRKJG'].Visible:=false ;
      DBGridEh3.FieldColumns['UnJG'].Visible:=false ;
      DBGridEh3.FieldColumns['UnLL'].Visible:=false ;
      DBGridEh3.FieldColumns['OnCGQty'].Visible:=false ;
      DBGridEh3.FieldColumns['LackCLSL'].Visible:=false ;
      DetailQry.Active:=false;
      DBGridEh4.Visible:=false;
      Splitter3.Align:=alNone;
    end;
    //
end;

procedure TUseStockList.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  {
  if RemQuery.FieldByName('UseStock').value<RemQuery.FieldByName('ERP_UseStock').value then
  begin
    DBGridEh3.canvas.font.color:=clRed;
  end;
  if ( (RemQuery.FieldByName('UseStock').value<RemQuery.FieldByName('ERP_UseStock').value) and (RemQuery.FieldByName('OnCGQty').value=0) )  then
  begin
    DBGridEh3.canvas.font.color:=clblue;
  end;
  }
  if RemQuery.FieldByName('ERP_UseStock').Value>RemQuery.FieldByName('UseStock').Value then
     DBGridEh3.canvas.font.color := clBlue;
  if RemQuery.FieldByName('UseStock').Value+RemQuery.FieldByName('OnCGQty').Value-2>RemQuery.FieldByName('CLSL').Value then
     DBGridEh3.canvas.font.color := clRed;
end;

procedure TUseStockList.Remain1Click(Sender: TObject);
begin
  RYTemp:=TRYTemp.create(self);
  RYTemp.BaseDate:=BaseDate.Date;
  RYTemp.CKBH:=main.Edit2.Text;
  RYTemp.Edit1.text:=RemQuery.fieldbyname('CLBH').AsString;
  RYTemp.Lab_MatID.caption:=RemQuery.fieldbyname('CLBH').AsString;
  RYTemp.Lab_Unit.caption:=RemQuery.fieldbyname('DWBH').AsString;
  RYTemp.Lab_MatName.caption:=RemQuery.fieldbyname('YWPM').AsString;
  RYTemp.Lab_Stock.caption:=RemQuery.fieldbyname('Qty').AsString;
  RYTemp.Lab_UnRK.caption:=RemQuery.fieldbyname('UnRkQty').AsString;
  RYTemp.Lab_UnRkJG.caption:=RemQuery.fieldbyname('UnRkJG').AsString;
  RYTemp.Lab_Add.caption:=RemQuery.fieldbyname('Qty').value+RemQuery.fieldbyname('UnRkQty').value+RemQuery.fieldbyname('UnRkJG').Value;
  RYTemp.Lab_Min.caption:=RemQuery.fieldbyname('UnLL').value+RemQuery.fieldbyname('UnJG').value;
  RYTemp.Lab_UnLL.caption:=RemQuery.fieldbyname('UnLL').AsString;
  RYTemp.Lab_UnJG.caption:=RemQuery.fieldbyname('UnJG').AsString;
  if CB7.Checked=false then
    RYTemp.Lab_Remain.caption:=RemQuery.fieldbyname('Remain').AsString
  else
    RYTemp.Lab_Remain.caption:=RemQuery.fieldbyname('Remain').AsString+'(倉庫可利庫) + '+FormatFloat('0.0',strtofloat(RYTemp.Lab_Add.caption)-strtofloat(RYTemp.Lab_Min.Caption)-strtofloat(RemQuery.fieldbyname('Remain').AsString))+'(在途量)';
  //RYTemp.Lab_Remain.caption:=RemQuery.fieldbyname('Remain').AsString;
  RYTemp.button1click(nil);
  RYTemp.show;
end;

procedure TUseStockList.Modify1Click(Sender: TObject);
begin
  if DetailQry.Active then
  begin
    DetailQry.RequestLive:=true;
    DetailQry.CachedUpdates:=true;
    DetailQry.Edit;
    UseStock1.enabled:=true;
    Save1.enabled:=true;
    Cancel1.enabled:=true;
  end;
end;

procedure TUseStockList.UseStock1Click(Sender: TObject);
var i:integer;
    ERP_UseStock:double;
begin
  ERP_UseStock:=RemQuery.FieldByName('ERP_UseStock').Value;
  DetailQry.First;
  for i:=0 to DetailQry.RecordCount-1 do
  begin
    if (DetailQry.FieldByName('CLSL').Value-DetailQry.FieldByName('CGQty').Value-DetailQry.FieldByName('UseStock').Value)>0 then
    begin
      if ERP_UseStock>=(DetailQry.FieldByName('CLSL').Value-DetailQry.FieldByName('CGQty').Value-DetailQry.FieldByName('UseStock').Value)  then
      begin
        ERP_UseStock:=ERP_UseStock- (DetailQry.FieldByName('CLSL').Value-DetailQry.FieldByName('CGQty').Value-DetailQry.FieldByName('UseStock').Value);
        DetailQry.Edit;
        DetailQry.FieldByName('UseStock').Value:=DetailQry.FieldByName('UseStock').Value+(DetailQry.FieldByName('CLSL').Value-DetailQry.FieldByName('CGQty').Value-DetailQry.FieldByName('UseStock').Value);
        DetailQry.Post;
      end else
      begin
        DetailQry.Edit;
        DetailQry.FieldByName('UseStock').Value:=DetailQry.FieldByName('UseStock').Value+ERP_UseStock;
        DetailQry.Post;
        ERP_UseStock:=0;
      end;
    end;
    if ERP_UseStock<=0 then break;
    DetailQry.Next;
  end;
end;

procedure TUseStockList.Save1Click(Sender: TObject);
var i:integer;
begin
  if messagedlg('Are you sure save use Stock  ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DetailQry.First;
    for i:=0 to DetailQry.RecordCount-1 do
    begin
      with qrUsestock do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select ZLBH from CGKCUSE where  ZLBH='''+DetailQry.FieldByName('ZLBH').AsString+''' and CLBH='''+DetailQry.FieldByName('CLBH').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
         active:=true;
         if RecordCount=0 then
         begin
           if DetailQry.FieldByName('UseStock').Value>0 then
           begin
             active:=false;
             sql.Clear;
             sql.Add('Insert into CGKCUSE');
             sql.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,UserID,UserDate,YN) values');
             sql.Add('('''+main.Edit2.Text+''''+','''+DetailQry.fieldbyname('ZLBH').AsString+''','''+RemQuery.fieldbyname('CLBH').AsString+''''+',');
             sql.Add(''''+DetailQry.fieldbyname('USESTOCK').AsString+''',null,'''+main.Edit1.Text+''','''+formatdatetime('yyyy/mm/dd',date)+''',1)');
             execsql;
           end;
         end else
         begin
           if ((DetailQry.FieldByName('UseStock').Value=0)  or (DetailQry.FieldByName('UseStock').IsNull=true)) then
           begin
             active:=false;
             sql.Clear;
             sql.Add('Delete CGKCUSE from CGKCUSE');
             sql.Add('where ZLBH='''+DetailQry.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+RemQuery.fieldbyname('CLBH').AsString+'''');
             sql.Add('and GSBH='''+main.Edit2.Text+''' ');
             execsql;
           end else
           begin
             sql.Add('update CGKCUSE set Qty='+''''+DetailQry.fieldbyname('USESTOCK').AsString+'''');
             sql.add(',CLBHYS=null');
             sql.add(',USERDATE='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
             sql.add(',USERID='''+main.Edit1.Text+'''');
             sql.add('where ZLBH='''+DetailQry.fieldbyname('ZLBH').AsString+'''');
             sql.add('and CLBH='+''''+DetailQry.FieldByName('CLBH').Value+'''');
             sql.Add('and GSBH='''+main.Edit2.Text+''' ');
             execsql;
           end;
         end;
      end;
      DetailQry.Next;
    end;
    //
  end;
  qrUsestock.Active:=false;
  DetailQry.Active:=false;
  DetailQry.cachedupdates:=false;
  DetailQry.requestlive:=false;
  DetailQry.Active:=true;
  //
  UseStock1.enabled:=false;
  Save1.enabled:=false;
  Cancel1.enabled:=false;

end;

procedure TUseStockList.Cancel1Click(Sender: TObject);
begin
  if DetailQry.CachedUpdates then
  begin
    DetailQry.Active:=false;
    DetailQry.CachedUpdates:=false;
    DetailQry.RequestLive:=false;
    DetailQry.Active:=true;
  end;
  UseStock1.enabled:=false;
  Save1.enabled:=false;
  Cancel1.enabled:=false;
end;

procedure TUseStockList.Button5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    ClumnWidth:array [0..18] of integer;
    ClumnDesc:array [0..18] of string;
begin
    DetailQry.Active:=false;
    if  RemQuery.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
        ClumnDesc[0]:='材料編號/MatNo.';
        ClumnDesc[1]:='材料英文/MatName';
        ClumnDesc[2]:='材料中文/MatName';
        ClumnDesc[3]:='單位/Unit';
        ClumnDesc[4]:='採區/CQDH';
        ClumnDesc[5]:='總用量/Total Usage';
        ClumnDesc[6]:='採購在途/OnCGQty';
        ClumnDesc[7]:='使用庫存/UseStock';
        ClumnDesc[8]:='現有庫存/Qty';
        ClumnDesc[9]:='+總在途量/Total OnCGQty';
        ClumnDesc[10]:='+加工入庫/UnRkJG';
        ClumnDesc[11]:='-加工淨需求/UnJG';
        ClumnDesc[12]:='-領料淨需求/UnLL';
        ClumnDesc[13]:='可利庫/Remain';
        ClumnDesc[14]:='ERP建議利庫數/ERP UseStock';
        ClumnDesc[15]:='尚未入庫數';
        ClumnDesc[16]:='USPrice';
        ClumnDesc[17]:='VNPrice';
        ClumnDesc[18]:='描述';

        ClumnWidth[0]:=10;
        ClumnWidth[1]:=20;
        ClumnWidth[2]:=20;
        ClumnWidth[3]:=5;
        ClumnWidth[4]:=5;
        ClumnWidth[5]:=8;
        ClumnWidth[6]:=10;
        ClumnWidth[7]:=10;
        ClumnWidth[8]:=10;
        ClumnWidth[9]:=10;
        ClumnWidth[10]:=10;
        ClumnWidth[11]:=10;
        ClumnWidth[12]:=10;
        ClumnWidth[13]:=10;
        ClumnWidth[14]:=10;
        ClumnWidth[15]:=10;
        ClumnWidth[16]:=10;
        ClumnWidth[17]:=10;
        ClumnWidth[18]:=35;
      try
          WorkBook:=eclApp.workbooks.Add;
          for i:=0 to High(ClumnWidth) do
          begin
            eclApp.ActiveSheet.Columns[i+1].ColumnWidth := ClumnWidth[i]; //欄位寬度
            eclApp.Cells[1,i+1].HorizontalAlignment := -4108; //文字水平置中
            eclApp.Cells(1,i+1):=ClumnDesc[i]; //抬頭名稱 YPZLZLS2.fields[i].FieldName;
          end;
          //抬頭顏色
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clYellow;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,High(ClumnWidth)+1]].WrapText:=true;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[RemQuery.RecordCount+1,High(ClumnWidth)+1]].Borders.weight:=2;
          //
          RemQuery.First;
          j:=2;
          while   not   RemQuery.Eof   do
          begin
            for   i:=0   to  RemQuery.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=RemQuery.Fields[i].Value;
             if RemQuery.FieldByName('ERP_UseStock').Value>RemQuery.FieldByName('UseStock').Value then
               eclApp.Rows[j].Font.Color := clBlue;
             if RemQuery.FieldByName('UseStock').Value+RemQuery.FieldByName('OnCGQty').Value-2>RemQuery.FieldByName('CLSL').Value then
               eclApp.Rows[j].Font.Color := clRed;
            end;
            //問題資料
            if RemQuery.FieldByName('ERP_UseStock').Value>RemQuery.FieldByName('UseStock').Value then
              eclApp.Cells(j,i+1):='ERP計算可使用庫存>採購使用庫存';
            if RemQuery.FieldByName('UseStock').Value>RemQuery.FieldByName('Remain').Value then
              eclApp.Cells(j,i+1):='採購使用庫存>可利庫數';
            if RemQuery.FieldByName('UseStock').Value+RemQuery.FieldByName('OnCGQty').Value-2>RemQuery.FieldByName('CLSL').Value then
              eclApp.Cells(j,i+1):='('+FormatFloat('0.##',RemQuery.FieldByName('UseStock').Value+RemQuery.FieldByName('OnCGQty').Value-2-RemQuery.FieldByName('CLSL').Value)+')採購使用庫存+採購量>總用量';
            RemQuery.Next;
            inc(j);
          end;
         //eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
        on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
    if Chk_Det.Checked=true then DetailQry.Active:=true;
end;

procedure TUseStockList.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if  DetailQry.active  then
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
        for   i:=0   to   DetailQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=DetailQry.fields[i].FieldName;
          end;

        DetailQry.First;
        j:=2;
        while   not   DetailQry.Eof   do
          begin
            for   i:=0   to  DetailQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=DetailQry.Fields[i].Value;
            end;
          DetailQry.Next;
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
