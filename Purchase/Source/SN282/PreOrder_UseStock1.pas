unit PreOrder_UseStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, DB, DBTables,
  Menus, Dateutils;

type
  TPreOrder_UseStock = class(TForm)
    Panel1: TPanel;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel8: TPanel;
    Splitter3: TSplitter;
    Panel7: TPanel;
    Label13: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Edit_Supplier1: TEdit;
    Button5: TButton;
    Chk_NoLQty1: TCheckBox;
    Edit_MatNo1: TEdit;
    Edit_MatNM1_A: TEdit;
    Edit_Loc1: TEdit;
    Edit_MatNM1_B: TEdit;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    TS2: TTabSheet;
    Splitter4: TSplitter;
    Panel10: TPanel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Edit_Supplier2: TEdit;
    Button3: TButton;
    Chk_NoLQty2: TCheckBox;
    Edit_MatNo2: TEdit;
    Edit_MatNM2_A: TEdit;
    Edit_MatNM2_B: TEdit;
    Edit_Loc2: TEdit;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    Label8: TLabel;
    ZKNOEdit: TEdit;
    DS_ToPO: TDataSource;
    Qry_ToPO1: TQuery;
    Qry_ToPO1Upd: TUpdateSQL;
    DS_ToPO2: TDataSource;
    Qry_ToPO2: TQuery;
    Qry_ToPO2Upd: TUpdateSQL;
    Qry_ToPO1ZKNO: TStringField;
    Qry_ToPO1CLBH: TStringField;
    Qry_ToPO1Memo: TStringField;
    Qry_ToPO1ZKBH: TStringField;
    Qry_ToPO1YWPM: TStringField;
    Qry_ToPO1ZWPM: TStringField;
    Qry_ToPO1DWBH: TStringField;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    EditRY1: TEdit;
    Label16: TLabel;
    EditRY2: TEdit;
    EditArticle: TEdit;
    DDLBCb: TComboBox;
    Label2: TLabel;
    OrderModeCB: TComboBox;
    chk_RYDate: TCheckBox;
    DTP3: TDateTimePicker;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DTP4: TDateTimePicker;
    Label3: TLabel;
    BuyNoEdit: TEdit;
    Label20: TLabel;
    LocCB: TComboBox;
    chk_shp: TCheckBox;
    Chk_B: TCheckBox;
    Qry_ToPO_RY1: TQuery;
    Query1ZLBH: TStringField;
    Query1Article: TStringField;
    Query1Pairs: TIntegerField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    Query1ShipDate: TDateTimeField;
    Query1DDRQ: TDateTimeField;
    Qry_ToPO_RY1Diff: TCurrencyField;
    Qry_ToPO_RY1DDZT: TStringField;
    Qry_ToPO_RY1Size: TStringField;
    Qry_ToPO_RY1BuyNo: TStringField;
    Qry_ToPO_RY1DDLB: TStringField;
    Qry_ToPO_RY1Ordermode: TStringField;
    DS_ToPO_RY: TDataSource;
    Qry_ToPO_RY1Upd: TUpdateSQL;
    DS_ToPO_RY2: TDataSource;
    Qry_ToPO_RY2: TQuery;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField2: TIntegerField;
    FloatField5: TFloatField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    CurrencyField14: TCurrencyField;
    Qry_ToPO_RY2DDZT: TStringField;
    Qry_ToPO_RY2Size: TStringField;
    Qry_ToPO_RY2BuyNo: TStringField;
    Qry_ToPO_RY2DDLB: TStringField;
    Qry_ToPO_RY2Ordermode: TStringField;
    Qry_ToPO_RY2Upd: TUpdateSQL;
    Pop_ToPO_RY1: TPopupMenu;
    RY_Modify1: TMenuItem;
    RY_UseStock1: TMenuItem;
    RY_Save1: TMenuItem;
    RY_Cancel1: TMenuItem;
    Pop_ToPO_RY2: TPopupMenu;
    RY_Modify2: TMenuItem;
    RY_UseStock2: TMenuItem;
    RY_Save2: TMenuItem;
    RY_Cancel2: TMenuItem;
    Qry_ToPO2ZKNO: TStringField;
    Qry_ToPO2CLBH: TStringField;
    Qry_ToPO2Memo: TStringField;
    Qry_ToPO2ZKBH: TStringField;
    Qry_ToPO2YWPM: TStringField;
    Qry_ToPO2ZWPM: TStringField;
    Qry_ToPO2DWBH: TStringField;
    Pop_ToPO: TPopupMenu;
    E1: TMenuItem;
    N1: TMenuItem;
    QUseStock1: TMenuItem;
    Pop_ToPO2: TPopupMenu;
    E2: TMenuItem;
    N2: TMenuItem;
    QUseStock2: TMenuItem;
    Query1: TQuery;
    Qry_ToPO1ZKQty: TFloatField;
    Qry_ToPO1ZKLQty: TFloatField;
    Qry_ToPO2ZKQty: TFloatField;
    Qry_ToPO2ZKLQty: TFloatField;
    M1: TMenuItem;
    Cancel1: TMenuItem;
    M2: TMenuItem;
    Cancel2: TMenuItem;
    KCZKSQry: TQuery;
    UpdKCZKS: TUpdateSQL;
    Qry_ToPO_RY1CLBH: TStringField;
    Qry_ToPO_RY2CLBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure RY_Modify1Click(Sender: TObject);
    procedure RY_UseStock1Click(Sender: TObject);
    procedure RY_Save1Click(Sender: TObject);
    procedure RY_Cancel1Click(Sender: TObject);
    procedure RY_Modify2Click(Sender: TObject);
    procedure RY_UseStock2Click(Sender: TObject);
    procedure RY_Save2Click(Sender: TObject);
    procedure RY_Cancel2Click(Sender: TObject);
    procedure QUseStock1Click(Sender: TObject);
    procedure QUseStock2Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ERP_UseSize_Array:array of String;
    ERP_UseStock_Array:array of double;  
    { Private declarations }
    procedure RY_UseStockAutoValue(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;IsSize:boolean);
    procedure CheckCGYGUSES(Query_PO:TQuery;Query_RY:TQuery;DS:TDataSource);
    procedure CheckCGYGUSES_CGYGUSE(ZLBH:String;CLBH:string);
    procedure QuerySizeAndNoSize(MastQry:TQuery; DetailQry:TQuery; IsSize:boolean; Chk_NoLQty:TCheckBox;
           Edit_Supplier:TEdit; Edit_MatNo:TEdit; Edit_MatNM_A:TEdit; Edit_MatNM_B:TEdit; Edit_Loc:TEdit);
    procedure RY_UseSockSaveProces(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;RY_UseStock:TMenuItem;RY_Save:TMenuItem;RY_Cancel:TMenuItem;DS:TDataSource);
    //
    procedure Quick_UseStock(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;E:TMenuItem;M:TMenuItem;Cancel:TMenuItem;
                             UseStock:TMenuItem;DBGridEh: TDBGridEh;RY_Modify:TMenuItem; RY_UseStock:TMenuItem;RY_Save:TMenuItem);
  public
    { Public declarations }
  end;

var
  PreOrder_UseStock: TPreOrder_UseStock;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TPreOrder_UseStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPreOrder_UseStock.FormDestroy(Sender: TObject);
begin
  PreOrder_UseStock:=nil;
end;

//多筆利庫
procedure TPreOrder_UseStock.Quick_UseStock(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;E:TMenuItem;M:TMenuItem;Cancel:TMenuItem;UseStock:TMenuItem;DBGridEh: TDBGridEh;
                                       RY_Modify:TMenuItem; RY_UseStock:TMenuItem;RY_Save:TMenuItem);
var i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEH;
begin
  Qry_ToPO_RY.Active:=false;
  //DBGridEh.SelectedRows.SelectAll;
  //
  Qry_ToPO.disablecontrols;
  bm:=Qry_ToPO.getbookmark;
  bookmarklist:=DBGridEh.selectedrows;
  try
    for i:=0 to bookmarklist.count-1 do
    begin
       Qry_ToPO.gotobookmark(pointer(bookmarklist[i]));
       if (Qry_ToPO.FieldByName('ZKLQty').AsFloat>0) then //有採購數量
       begin
         Qry_ToPO_RY.Active:=true;
         RY_Modify.Click;
         RY_UseStock.Click;
         RY_Save.Click;
         Qry_ToPO_RY.Active:=false;
       end;
    end;
  finally
    Qry_ToPO.gotobookmark(bm);
    Qry_ToPO.freebookmark(bm);
    Qry_ToPO.enablecontrols;
  end;
  //
  showmessage('finish !');
  Qry_ToPO_RY.Active:=true;
  //
  E.Enabled:=true;
  M.Enabled:=true;
  Cancel.Enabled:=false;
  UseStock.Enabled:=false;
  //
  Qry_ToPO.Active:=false;
  Qry_ToPO.Active:=true;
end;

procedure TPreOrder_UseStock.QuerySizeAndNoSize(MastQry:TQuery; DetailQry:TQuery; IsSize:boolean; Chk_NoLQty:TCheckBox;
           Edit_Supplier:TEdit; Edit_MatNo:TEdit; Edit_MatNM_A:TEdit; Edit_MatNM_B:TEdit; Edit_Loc:TEdit);
begin
  if ZKNOEdit.Text='' then
  begin
    Showmessage('Apply Pre-Order No is null, please key in ZKNO ');
    Exit;
  end;
  if  ((not chk_shp.Checked) and (not chk_RYDate.Checked)) then
  begin
    if ((length(EditRY1.Text)<3) and (length(BuyNoEdit.Text)<5)  and  (chk_shp.Checked=False) and (chk_RYDate.Checked=false)   ) then
    begin
      showmessage('Pls setup condition first!');
      abort;
    end;
  end;
  with KCZKSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('    Select KCZK.*,KCZK.ZKQty-IsNull(CGYGUSES.UseQty,0) as ZKLQty from (');
    SQL.Add('    Select KCZK.YN,KCZK.CLBH,KCZKS.ZKBH,KCZKS.SIZE,KCZKS.Qty as ZKQty');
    SQL.Add('     from KCZK ');
    SQL.Add('     left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH ');
    SQL.Add('     where KCZK.YN<>''X'' and KCZK.ZKNO='''+ZKNOEdit.Text+''' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180    ');
    SQL.Add('                  and KCZK.CLBH=:CLBH and KCZKS.SIZE=:SIZE ) KCZK');
    SQL.Add('     left join (Select ZKBH,CLBH,SIZE,Sum(Qty) as UseQty from CGYGUSES where GSBH='''+main.edit2.Text+''' and CLBH=:CLBH and SIZE=:SIZE  and ZKBH<>''ZZZZZZZZZZ'' ');
    SQL.Add('	              and ZKBH in (Select ZKBH from KCZK where  KCZK.YN<>''X'' and KCZK.ZKNO='''+ZKNOEdit.Text+''' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180  and KCZK.CLBH=:CLBH ) ');
    SQL.Add('				  Group by ZKBH,CLBH,SIZE)  CGYGUSES on CGYGUSES.ZKBH=KCZK.ZKBH and CGYGUSES.CLBH=KCZK.CLBH and CGYGUSES.SIZE=KCZK.SIZE');
    SQL.Add('    where (KCZK.ZKQty-IsNull(CGYGUSES.UseQty,0)>0) ');
    SQL.Add('    order by KCZK.YN DESC, KCZK.ZKBH DESC');
  end;
  //
  with  MastQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCZK.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH From ( ');
    SQL.Add('Select KCZKP.ZKNO,KCZK.CLBH,KCZK.Memo,Max(KCZK.ZKBH) as ZKBH,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty ');
    SQL.Add('from KCZKP');
    SQL.Add('Left join KCZK on KCZK.ZKNO=KCZKP.ZKNO ');
    SQL.Add('left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH');
    SQL.Add('where KCZKP.ZKNO='''+ZKNOEdit.Text+''' ');
    if IsSize=false then   //非尺寸材料
      SQL.Add(' and KCZKS.SIZE=''ZZZZZZ'' ')
    else
      SQL.Add(' and KCZKS.SIZE<>''ZZZZZZ'' ');
    SQL.Add('Group by KCZKP.ZKNO,KCZK.CLBH,KCZK.Memo ) KCZK');
    SQL.Add('Left join CLZL on CLZL.CLDH= KCZK.CLBH');
    if Chk_NoLQty.Checked=true then
    SQL.Add('where  ZKLQty>0 ');
    Active:=true;
  end;
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
    sql.add('        ,S2.DDLB ');
    sql.add('        ,S2.Ordermode ');
    sql.add('        ,isnull(CG.CGQTY,0) as CGQty');
    sql.add('        ,isnull(Stock.UseStock,0) as UseStock ');
    sql.add('        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)-S2.CLSL as Diff ');
    sql.add('FROM (select  ZLZLS2.ZLBH');
    sql.add('        ,ZLZLS2.CLBH ');
    sql.add('        ,XXZL.Article ');
    sql.add('        ,DDZL.Pairs ');
    sql.add('        ,case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL ');
    sql.add('        ,ZLZLS2.SIZE ');
    sql.add('        ,DDZL.ShipDate ');
    sql.add('        ,DDZL.DDRQ ');
    sql.add('        ,DDZL.BuyNo ');
    sql.add('        ,DDZLTW.DDZT ');
    sql.add('        ,DDZL.DDLB ');
    sql.add('        ,DDZL.Ordermode ');
    sql.add('      from ZLZLS2 ');
    sql.add('      left join CLZL on CLZL.CLDH=ZLZLS2.CLBH ');
    sql.add('      left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH ');
    sql.add('      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH ');
    sql.add('      left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH ');
    sql.add('      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao ');
    sql.add('      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    sql.add('      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH ');
    sql.add('      where  ');
    if IsSize=false then   //非尺寸材料
      sql.add('            ZLZLS2.SIZE=''ZZZZZZ''  ')
    else
      sql.add('            ZLZLS2.SIZE<>''ZZZZZZ''  ');
    sql.add('             and left(ZLZLS2.CLBH,1)<>'+''''+'W'+'''');
    sql.add('             and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('             and ZLZLS2.CLBH=:CLBH ');
    sql.add('             and ZLZLS2.ZMLB=''N''       ');
    sql.add('             and SCZL.SCBH=SCZl.ZLBH ');
    sql.add('             and SCZL.SCBH is not null ');
    sql.add('             and ZLZLS2.CLSL<>0 ');
    if DDLBCb.Text<>'' then
    sql.add('            and DDZL.DDLB'+DDLBCb.Text+' ');
    if OrderModeCB.Text<>'' then
    sql.add('            and IsNull(DDZL.ordermode,''ZZ'')'+OrderModeCB.Text+' ');
    if LocCB.Text<>'' then
    sql.add('            and CLZL.CQDH='''+locCB.Text+''' ');// 採區      
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
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    //
    IF Chk_B.Checked THEN
       sql.add('          and DDZL.DDLB<>''B''  ');
    if EditArticle.Text<>'' then
       sql.add('          and XXZL.Article like '+''''+EditArticle.text+'%'+'''');

    sql.add('       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.SIZE,XXZL.Article,DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BuyNo,DDZLTW.DDZT,DDZL.DDLB,DDZL.Ordermode,SCZL.IsCGZLS ');
    sql.add('      ) S2  ');
    sql.Add('LEFT JOIN (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,ISNULL(SUM(CGZLSS.Qty),0) as CGQty ');
    sql.add('           FROM CGZLSS  ' );
    sql.Add('           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  ' );
    sql.add('           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH');
    sql.add('           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.Add('           WHERE CGZL.CGLX<>''6''  ' );
    sql.add('               and CGZLSS.CLBH=:CLBH  ');
    sql.add('               and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
       sql.add('            and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('and CGZLSS.ZLBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
       sql.add('and CGZLSS.ZLBH >= '+''''+EditRY1.Text+'''');
       sql.add('and CGZLSS.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC ');
    sql.add('          ) CG ON CG.CLBH=S2.CLBH and CG.ZLBH=S2.ZLBH  and CG.XXCC=S2.SIZE ');
    sql.Add(' LEFT JOIN ( select CGYGUSES.ZLBH,CGYGUSES.CLBH,CGYGUSES.SIZE,ISNULL(SUM(CGYGUSES.Qty),0) as UseStock ');
    sql.add('                   FROM CGYGUSES  ' );
    sql.add('                   left join DDZl on DDZl.DDBH=CGYGUSES.ZLBH');
    sql.add('                   left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.Add('                   WHERE CGYGUSES.CLBH=:CLBH  ' );
    sql.add('                         and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
      sql.add('                      and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
      sql.add('and CGYGUSES.ZLBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('and CGYGUSES.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('and CGYGUSES.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    sql.add('                   group by CGYGUSES.CLBH,CGYGUSES.ZLBH,CGYGUSES.SIZE ');
    sql.add('            ) Stock on Stock.ZLBH=S2.ZLBH and Stock.CLBH=S2.CLBH and Stock.SIZE=S2.SIZE  ');
    sql.add('order by S2.ZLBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
end;

procedure TPreOrder_UseStock.Button3Click(Sender: TObject);
begin
  QuerySizeAndNoSize(Qry_ToPO2, Qry_ToPO_RY2, true , Chk_NoLQty2,Edit_Supplier2, Edit_MatNo2, Edit_MatNM2_A, Edit_MatNM2_B, Edit_Loc2);
end;

procedure TPreOrder_UseStock.Button5Click(Sender: TObject);
begin
  QuerySizeAndNoSize(Qry_ToPO1, Qry_ToPO_RY1, false, Chk_NoLQty1,Edit_Supplier1, Edit_MatNo1, Edit_MatNM1_A, Edit_MatNM1_B, Edit_Loc1);
end;

procedure TPreOrder_UseStock.E2Click(Sender: TObject);
begin

end;
//
procedure TPreOrder_UseStock.RY_UseStockAutoValue(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;IsSize:boolean);
var i,j:integer;
    ERP_UseStock:double;
begin
  if Qry_ToPO.FieldByName('ZKLQty').AsString<>'' then
  begin
    //20210324 無尺碼  No Size
    if  IsSize=false then
    begin
      ERP_UseStock:=0;
      with Query1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('	Select KCZK.CLBH,KCZKS.SIZE,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty');
        SQL.Add('	from KCZK');
        SQL.Add('	left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH');
        SQL.Add('	where KCZK.YN<>''X'' and KCZK.ZKNO='''+Qry_ToPO.FieldByName('ZKNO').AsString+''' and KCZKS.SIZE=''ZZZZZZ'' and KCZK.CLBH='''+Qry_ToPO.FieldByName('CLBH').AsString+''' ');
        SQL.Add('       and KCZK.GSBH='''+main.Edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>0 ');
        SQL.Add('	Group by KCZK.CLBH,KCZKS.SIZE');
        Active:=true;
        if RecordCount>0 then
        ERP_UseStock:=Query1.FieldByName('ZKLQty').Value;
        Active:=false;
      end;
      //
      Qry_ToPO_RY.First;
      for i:=0 to Qry_ToPO_RY.RecordCount-1 do
      begin
        if (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)>0 then
        begin
          if ERP_UseStock>=(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)  then
          begin
            ERP_UseStock:=ERP_UseStock- (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
            Qry_ToPO_RY.Edit;
            Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
            Qry_ToPO_RY.Post;
          end else
          begin
            Qry_ToPO_RY.Edit;
            Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+ERP_UseStock;
            Qry_ToPO_RY.Post;
            ERP_UseStock:=0;
          end;
        end;
        if ERP_UseStock<=0 then break;
        Qry_ToPO_RY.Next;
      end;
    end else
    begin
      //20210324 有尺碼  Size
      with Query1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('	Select KCZK.CLBH,KCZKS.SIZE,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty');
        SQL.Add('	from KCZK');
        SQL.Add('	left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH');
        SQL.Add('	where KCZK.YN<>''X'' and KCZK.ZKNO='''+Qry_ToPO.FieldByName('ZKNO').AsString+''' and KCZKS.SIZE<>''ZZZZZZ'' and KCZK.CLBH='''+Qry_ToPO.FieldByName('CLBH').AsString+''' ');
        SQL.Add('       and KCZK.GSBH='''+main.Edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>0 ');
        SQL.Add('	Group by KCZK.CLBH,KCZKS.SIZE');
        Active:=true;
        Setlength(ERP_UseSize_Array,RecordCount);
        Setlength(ERP_UseStock_Array,RecordCount);
        for i:=0 to RecordCount-1 do
        begin
          ERP_UseSize_Array[i]:=FieldByName('SIZE').AsString;
          ERP_UseStock_Array[i]:=FieldByName('ZKLQty').Value;
          Next;
        end;
        Active:=false;
      end;
      //
      Qry_ToPO_RY.First;
      for i:=0 to Qry_ToPO_RY.RecordCount-1 do
      begin
        for j:=0 to High(ERP_UseSize_Array) do
        begin
          if ERP_UseSize_Array[j]=Qry_ToPO_RY.FieldByName('SIZE').AsString then
          begin
            if ERP_UseStock_Array[j]>0 then
            begin
              if (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)>0 then
              begin
                if ERP_UseStock_Array[j]>=(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)  then
                begin
                  ERP_UseStock_Array[j]:=ERP_UseStock_Array[j]- (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
                  Qry_ToPO_RY.Edit;
                  Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
                  Qry_ToPO_RY.Post;
                end else
                begin
                  Qry_ToPO_RY.Edit;
                  Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+ERP_UseStock_Array[j];
                  Qry_ToPO_RY.Post;
                  ERP_UseStock_Array[j]:=0;
                end;
              end;
            end;
            break;
          end;
        end;
        Qry_ToPO_RY.Next;
      end;
      Query1.Active:=false;
    end;
  end;
end;
//
//檢查設定庫存
procedure TPreOrder_UseStock.CheckCGYGUSES(Query_PO:TQuery;Query_RY:TQuery;DS:TDataSource);
var i:integer;
    USESTOCK,UseStockQty:double;
    ZKBH:String;
begin
    with Query1 do
    begin
       active:=false;
       sql.Clear;
       sql.add('Select ZLBH from CGYGUSES where  ZLBH='''+Query_RY.FieldByName('ZLBH').AsString+''' and CLBH='''+Query_PO.FieldByName('CLBH').AsString+''' and SIZE='''+Query_RY.FieldByName('Size').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
       active:=true;
       if RecordCount=0 then
       begin
         if Query_RY.FieldByName('UseStock').Value>0 then
         begin
           //沖銷造庫單號和數量
           KCZKSQry.Active:=false;
           KCZKSQry.DataSource:=DS;
           KCZKSQry.Active:=true;
           USESTOCK:=Query_RY.fieldbyname('USESTOCK').Value;
           //
           repeat
             if KCZKSQry.RecordCount>0 then
             begin
               if KCZKSQry.FieldByName('ZKLQty').Value>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end else
                 begin
                   UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
             end else
             begin
               UseStockQty:=USESTOCK;
               USESTOCK:=USESTOCK-UseStockQty;
               ZKBH:='ZZZZZZZZZZ';
             end;
             active:=false;
             sql.Clear;
             sql.Add('Insert into CGYGUSES');
             sql.Add('(GSBH,ZLBH,CLBH,SIZE,ZKBH, Qty,UserID,UserDate,YN) values');
             sql.Add('('''+main.Edit2.Text+''''+','''+Query_RY.fieldbyname('ZLBH').AsString+''','''+Query_PO.fieldbyname('CLBH').AsString+''','''+Query_RY.FieldByName('Size').AsString+''',');
             sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
             //funcObj.WriteErrorLog(sql.Text);
             Execsql;
           until USESTOCK<=0;
         end;
       end else
       begin
           if (Query_RY.FieldByName('UseStock').Value=0)  then
           begin
             active:=false;
             sql.Clear;
             sql.Add('Delete CGYGUSES from CGYGUSES');
             sql.Add('where ZLBH='''+Query_RY.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+Query_PO.fieldbyname('CLBH').AsString+''' and SIZE='''+Query_RY.FieldByName('Size').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');
             //funcObj.WriteErrorLog(sql.Text);
             execsql;
           end else
           begin
             //更新要先刪除
             active:=false;
             sql.Clear;
             sql.Add('Delete CGYGUSES from CGYGUSES');
             sql.Add('where ZLBH='''+Query_RY.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+Query_RY.fieldbyname('CLBH').AsString+''' and SIZE='''+Query_RY.FieldByName('SIZE').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+'''  ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
             //funcObj.WriteErrorLog(sql.Text);
             execsql;
             //沖銷造庫單號和數量
             KCZKSQry.Active:=false;
             KCZKSQry.DataSource:=DS;
             KCZKSQry.Active:=true;
             USESTOCK:=Query_RY.fieldbyname('USESTOCK').Value;
             //
             repeat
               if KCZKSQry.RecordCount>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>0 then
                 begin
                   if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                   begin
                     UseStockQty:=USESTOCK;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end else
                   begin
                     UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end;
                 end else
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:='ZZZZZZZZZZ';
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
               active:=false;
               sql.Clear;
               sql.Add('Insert into CGYGUSES');
               sql.Add('(GSBH,ZLBH,CLBH,SIZE,ZKBH, Qty,UserID,UserDate,YN) values');
               sql.Add('('''+main.Edit2.Text+''''+','''+Query_RY.fieldbyname('ZLBH').AsString+''','''+Query_PO.fieldbyname('CLBH').AsString+''','''+Query_RY.FieldByName('Size').AsString+''',');
               sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
               //funcObj.WriteErrorLog(sql.Text);
               Execsql;
             until USESTOCK<=0;
             //
           end;
       end;
    end;
end;
//
//Update CGYGUSE
procedure TPreOrder_UseStock.CheckCGYGUSES_CGYGUSE(ZLBH:String;CLBH:string);
var UseQty:String;
begin
  //
  UseQty:='0';
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select IsNull(Sum(Qty),0) as Qty from CGYGUSES where ZLBH='''+ZLBH+''' and CLBH='''+CLBH+''' and GSBH='''+main.Edit2.Text+''' ');
    Active:=true;
    if RecordCount>0 then UseQty:=FieldByName('Qty').AsString;
    Active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('Select ZLBH from CGYGUSE where  ZLBH='''+ZLBH+''' and CLBH='''+CLBH+'''  and GSBH='''+main.Edit2.Text+'''  ');
    Active:=true;
    if ((RecordCount=0) and (strtofloat(UseQty)>0)) then
    begin
      SQL.Clear;
      SQL.Add('Insert into CGYGUSE');
      SQL.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,Memo,UserID,UserDate,YN) values');
      SQL.Add('('''+main.Edit2.Text+''','''+ZLBH+''','''+CLBH+''',');
      SQL.Add(''''+UseQty+''',null,null,'''+main.Edit1.Text+''',GetDate(),1)');
      //funcObj.WriteErrorLog(sql.Text);
      Execsql;
    end else
    begin
       if ((RecordCount>0) and (strtofloat(UseQty)=0)) then
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Delete  from CGYGUSE');
         SQL.Add('where ZLBH='''+ZLBH+'''') ;
         SQL.Add('and CLBH='''+CLBH+'''  ');
         SQL.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc)  ');
         //funcObj.WriteErrorLog(sql.Text);
         Execsql;
       end else
       begin
         if (RecordCount>0) then
         begin
           active:=false;
           SQL.Clear;
           SQL.Add('update CGYGUSE set Qty='''+UseQty+'''');
           SQL.add(',CLBHYS=null');
           SQL.add(',Memo=null ');
           SQL.add(',USERDATE=GetDate()');
           SQL.add(',USERID='''+main.Edit1.Text+'''');
           SQL.add('where ZLBH='''+ZLBH+'''');
           SQL.add('and CLBH='''+CLBH+'''');
           SQL.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
           //funcObj.WriteErrorLog(sql.Text);
           execsql;
         end;
       end;
    end;
  end;
end;
//
procedure TPreOrder_UseStock.RY_UseSockSaveProces(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;RY_UseStock:TMenuItem;RY_Save:TMenuItem;RY_Cancel:TMenuItem;DS:TDataSource);
var i:integer;
    //
    ZLBH,CLBH,ZKBH:String;
    IsUpdateCGYGUSE:boolean;
begin
  //if messagedlg('Are you sure save use Stock  ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  //begin
    Qry_ToPO_RY.First;
    for i:=0 to Qry_ToPO_RY.RecordCount-1 do
    begin
      //20210324分段尺碼多訂單 利庫
      if Qry_ToPO_RY.fieldbyname('UseStock').IsNull then
      begin
        Qry_ToPO_RY.Edit;
        Qry_ToPO_RY.fieldbyname('UseStock').Value:=0;
        Qry_ToPO_RY.Post;
      end;
      if ((ZLBH<>'') and (ZLBH<>Qry_ToPO_RY.FieldByName('ZLBH').AsString) and IsUpdateCGYGUSE=true ) then
      begin
        CheckCGYGUSES_CGYGUSE(ZLBH,CLBH);
        IsUpdateCGYGUSE:=false;
      end;
      ZLBH:=Qry_ToPO_RY.FieldByName('ZLBH').AsString;
      CLBH:=Qry_ToPO.FieldByName('CLBH').AsString;
      ZKBH:=Qry_ToPO.fieldbyname('ZKBH').AsString;
      //
      case Qry_ToPO_RY.updatestatus of
        usmodified:
         begin
            //檢查庫存
            if Qry_ToPO_RY.FieldByName('UseStock').Value<>Qry_ToPO_RY.FieldByName('UseStock').OldValue then
            begin
             CheckCGYGUSES(Qry_ToPO,Qry_ToPO_RY,DS);
             IsUpdateCGYGUSE:=true;
            end;
         end;
      end;
      Qry_ToPO_RY.Next;
    end;
    if ((ZLBH<>'') and (IsUpdateCGYGUSE=true))  then
    begin
      CheckCGYGUSES_CGYGUSE(ZLBH,CLBH);
    end;
    //
  //end;
  //20200814檢查更新造庫數量
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZKS set LQty=A.LQty from (');
    SQL.Add('select KCZKS.ZKBH,KCZKS.SIZE,IsNull(CGYGUSE.Qty,0) as UseQty,Round(KCZKS.Qty-IsNull(CGYGUSE.Qty,0),1) as LQty from KCZKS');
    SQL.Add('left join (');
    SQL.Add('Select CGYGUSES.ZKBH ,CGYGUSES.SIZE,Sum(CGYGUSES.Qty) as Qty from CGYGUSES');
    SQL.Add('where CGYGUSES.CLBH='''+CLBH+''' and CGYGUSES.ZKBH<>''ZZZZZZZZZZ''  and CGYGUSES.UserDate>=GETDATE()-180  ');
    SQL.Add('Group by CGYGUSES.ZKBH ,CGYGUSES.SIZE ) CGYGUSE on KCZKS.ZKBH=CGYGUSE.ZKBH and KCZKS.SIZE=CGYGUSE.SIZE');
    SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where   KCZK.ZKNO<>''ZZZZZZZZZZ'' and CLBH='''+CLBH+''' and UserDate>=GETDATE()-180 )  ) A');
    SQL.Add('where  A.ZKBH=KCZKS.ZKBH and A.SIZE=KCZKS.SIZE ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZK set LQty=A.LQty from ');
    SQL.Add('(Select ZKBH,Sum(LQty) as LQty ');
    SQL.Add('from KCZKS ');
    SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where  KCZK.ZKNO<>''ZZZZZZZZZZ'' and CLBH='''+CLBH+''' and UserDate>=GETDATE()-180 ) ');
    SQL.Add('Group by ZKBH) A ');
    SQL.Add('where A.ZKBH=KCZK.ZKBH ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  Query1.Active:=false;
  Qry_ToPO_RY.Active:=false;
  Qry_ToPO_RY.cachedupdates:=false;
  Qry_ToPO_RY.requestlive:=false;
  Qry_ToPO_RY.Active:=true;
  //
  RY_UseStock.enabled:=false;
  RY_Save.enabled:=false;
  RY_Cancel.enabled:=false;
  //
  KCZKSQry.Active:=false;
end;
//

procedure TPreOrder_UseStock.RY_Modify1Click(Sender: TObject);
begin
  if Qry_ToPO_RY1.Active then
  begin
    Qry_ToPO_RY1.RequestLive:=true;
    Qry_ToPO_RY1.CachedUpdates:=true;
    Qry_ToPO_RY1.Edit;
    RY_UseStock1.enabled:=true;
    RY_Save1.enabled:=true;
    RY_Cancel1.enabled:=true;
  end;
end;

procedure TPreOrder_UseStock.RY_UseStock1Click(Sender: TObject);
begin
  RY_UseStockAutoValue(Qry_ToPO1,Qry_ToPO_RY1,false);
end;

procedure TPreOrder_UseStock.RY_Save1Click(Sender: TObject);
begin
  RY_UseSockSaveProces(Qry_ToPO1,Qry_ToPO_RY1,RY_UseStock1,RY_Save1,RY_Cancel1,DS_ToPO_RY);
end;

procedure TPreOrder_UseStock.RY_Cancel1Click(Sender: TObject);
begin
  if Qry_ToPO_RY1.CachedUpdates then
  begin
    Qry_ToPO_RY1.Active:=false;
    Qry_ToPO_RY1.CachedUpdates:=false;
    Qry_ToPO_RY1.RequestLive:=false;
    Qry_ToPO_RY1.Active:=true;
  end;
  RY_UseStock1.enabled:=false;
  RY_Save1.enabled:=false;
  RY_Cancel1.enabled:=false;
end;

procedure TPreOrder_UseStock.RY_Modify2Click(Sender: TObject);
begin
  if Qry_ToPO_RY2.Active then
  begin
    Qry_ToPO_RY2.RequestLive:=true;
    Qry_ToPO_RY2.CachedUpdates:=true;
    Qry_ToPO_RY2.Edit;
    RY_UseStock2.enabled:=true;
    RY_Save2.enabled:=true;
    RY_Cancel2.enabled:=true;
  end;
end;

procedure TPreOrder_UseStock.RY_UseStock2Click(Sender: TObject);
begin
  RY_UseStockAutoValue(Qry_ToPO2,Qry_ToPO_RY2,true);
end;

procedure TPreOrder_UseStock.RY_Save2Click(Sender: TObject);
begin
  RY_UseSockSaveProces(Qry_ToPO2,Qry_ToPO_RY2,RY_UseStock2,RY_Save2,RY_Cancel2,DS_ToPO_RY2);
end;

procedure TPreOrder_UseStock.RY_Cancel2Click(Sender: TObject);
begin
  if Qry_ToPO_RY2.CachedUpdates then
  begin
    Qry_ToPO_RY2.Active:=false;
    Qry_ToPO_RY2.CachedUpdates:=false;
    Qry_ToPO_RY2.RequestLive:=false;
    Qry_ToPO_RY2.Active:=true;
  end;
  RY_UseStock2.enabled:=false;
  RY_Save2.enabled:=false;
  RY_Cancel2.enabled:=false;
end;

procedure TPreOrder_UseStock.QUseStock1Click(Sender: TObject);
begin
  Quick_UseStock(Qry_ToPO1, Qry_ToPO_RY1, false, E1,M1,Cancel1,QUseStock1,DBGridEh2, RY_Modify1, RY_UseStock1, RY_Save1);
end;

procedure TPreOrder_UseStock.QUseStock2Click(Sender: TObject);
begin
  Quick_UseStock(Qry_ToPO2, Qry_ToPO_RY2, false, E2, M2,Cancel2,QUseStock2,DBGridEh4, RY_Modify2, RY_UseStock2, RY_Save2);
end;

procedure TPreOrder_UseStock.Cancel1Click(Sender: TObject);
begin
  Qry_ToPO_RY1.Active:=true ;
  E1.Enabled:=true;
  M1.Enabled:=true;
  QUseStock1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TPreOrder_UseStock.M1Click(Sender: TObject);
begin
  Qry_ToPO_RY1.Active:=false ;
  E1.Enabled:=false;
  M1.Enabled:=false;
  QUseStock1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TPreOrder_UseStock.M2Click(Sender: TObject);
begin
  Qry_ToPO_RY2.Active:=false ;
  E2.Enabled:=false;
  M2.Enabled:=false;
  QUseStock2.Enabled:=true;
  Cancel2.Enabled:=true;
end;

procedure TPreOrder_UseStock.FormCreate(Sender: TObject);
begin

  DTP1.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP2.Datetime:=EndOfTheMonth(IncMonth(Date(),0));

  DTP3.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP4.Datetime:=EndOfTheMonth(IncMonth(Date(),0));
end;

end.
