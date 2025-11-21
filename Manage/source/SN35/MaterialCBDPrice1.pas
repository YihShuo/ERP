unit MaterialCBDPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ComCtrls, Buttons,
  ExtCtrls, Comobj, DBGridEhImpExp, ShellAPI, Menus,StrUtils;

type
  TMaterialCBDPrice = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    mainPC: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGridEh;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGridEh;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label12: TLabel;
    Label25: TLabel;
    MatNMEEdit: TEdit;
    MatNMCEdit: TEdit;
    Button3: TButton;
    CB1: TComboBox;
    ArticleEdit: TEdit;
    Edit16: TEdit;
    SREdit: TEdit;
    CLBHEdit: TEdit;
    BuyNoEdit: TEdit;
    XXMQ: TQuery;
    XXMQCLBH: TStringField;
    XXMQYWPM: TStringField;
    XXMQZWPM: TStringField;
    XXMQDWBH: TStringField;
    XXMQZSDH: TStringField;
    XXMQZSYWJC: TStringField;
    XXMQCLZMLB: TStringField;
    XXMQSeason: TStringField;
    XXMQSamplePrice: TCurrencyField;
    XXMQuserID: TStringField;
    XXMQuserdate: TDateTimeField;
    DS1: TDataSource;
    ZLZLS2Qry: TQuery;
    DS2: TDataSource;
    ZLZLS2QrySamplePrice: TFloatField;
    ZLZLS2Qryusprice: TFloatField;
    ZLZLS2Qryvnprice: TFloatField;
    ZLZLS2QryBUYNO: TStringField;
    ZLZLS2QryZLBH: TStringField;
    ZLZLS2QryDDZT: TStringField;
    ZLZLS2QryKHPO: TStringField;
    ZLZLS2QryCSBH: TStringField;
    ZLZLS2QryCLBH: TStringField;
    ZLZLS2QryYWPM: TStringField;
    ZLZLS2QryZWPM: TStringField;
    ZLZLS2QryDWBH: TStringField;
    ZLZLS2QryArticle: TStringField;
    ZLZLS2QryXieMing: TStringField;
    ZLZLS2QryPairs: TIntegerField;
    ZLZLS2QryCQDH: TStringField;
    ZLZLS2QryCLSL: TFloatField;
    DDBHEdit: TEdit;
    Label1: TLabel;
    UpZLZLS2: TUpdateSQL;
    ZLZLS2QryYN: TBooleanField;
    TmpQry: TQuery;
    SaveDialog1: TSaveDialog;
    ZLZLS2QryBWLB: TStringField;
    ZLZLS2QrysamplePriceVN: TFloatField;
    ZLZLS2QrysampleEx: TFloatField;
    ExInfo: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    lock1: TMenuItem;
    BitBtn1: TBitBtn;
    Label26: TLabel;
    BWLBCombo1: TComboBox;
    ZLZLS2QryCYN: TBooleanField;
    ZLZLS2QryMYN: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    chkUseStock: TCheckBox;
    Label3: TLabel;
    ComboBox5: TComboBox;
    XXMQFreight: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure lock1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    IsEdit:boolean;
    UserDepID:string;
    { Private declarations }
    procedure QueryZLZLS2();
    procedure QueryMaterial();
    procedure ExportExcel(Query:TQuery);
    procedure ExportGridEhExcel(SelectDBGrid:TDBGridEh);
  public
    //CBDExchange:string;
    { Public declarations }
  end;

var
  MaterialCBDPrice: TMaterialCBDPrice;

implementation
  uses main1,CLZLCBDPrice1,FunUnit;
{$R *.dfm}

procedure TMaterialCBDPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMaterialCBDPrice.FormDestroy(Sender: TObject);
begin
  MaterialCBDPrice:=nil;
end;

//
procedure TMaterialCBDPrice.QueryMaterial();
begin    
  if ((ArticleEdit.Text='') and (SREdit.Text='') and (DDBHEdit.Text='') and (BuyNoEdit.Text='')) then
  begin
    showmessage('Please input  keypoint ');
    abort;
  end;
  if (Not(BuyNoEdit.Text='') and (Length(BuyNoEdit.Text)<6) ) then
  begin
    showmessage('Please input BuyNo likes 202406');
    abort;
  end;
  with XXMQ do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,Max(XXZLS.CSBH) as ZSDH,Max(ZSZL.ZSYWJC) as ZSYWJC,CLZL.CLZMLB,');
    sql.Add('       MaterialCBD.Season,MaterialCBD.SamplePrice,MaterialCBD.userID,MaterialCBD.userdate,MaterialCBD.Freight');
    SQL.Add('FROM (');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' union all ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB  ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
    SQL.Add(' union all ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB  from ( ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BWLB ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ) XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
    SQL.Add(' ) XXZLS ');
    SQL.Add('Left join XXZL on XXZL.XieXIng=XXZLS.XieXing and XXZL.Shehao=XXZLS.SheHao ');          
    sql.add(' and XXZL.KFCQ=''YIH'' ');
    if ComboBox5.ItemIndex=0 then
      sql.add('and XXZL.KHDH=''0062'' ')
    else if ComboBox5.ItemIndex=1 then
      sql.add('and XXZL.KHDH=''0054'' ')
    else if ComboBox5.ItemIndex=2 then
      sql.add('and XXZL.KHDH=''0078'' ');
    SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
    sql.Add('Left JOIN KFXXZL on XXZLS.XieXing=KFXXZL.XieXing and XXZLS.SheHao=KFXXZL.SheHao ');
    SQL.Add('Left JOIN DDZL on DDZL.XieXing=XXZLS.XieXing and DDZL.SheHao=XXZLS.SheHao ');
         if BuyNoEdit.Text<>'' then
            sql.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
         if DDBHEdit.Text<>'' then
            sql.Add('and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    //sql.add('Left Join MaterialCBD ON MaterialCBD.CLBH=XXZLS.CLBH  ');
    //20240626 穝糤厨基﹗竊  ノ块buy琩高
    sql.add('Left Join MaterialCBD_his MaterialCBD ON MaterialCBD.CLBH=XXZLS.CLBH');
    sql.add('   and MaterialCBD.Season like (');
    sql.add('   case when DDZL.BUYNO is null then ''%''');

    if ComboBox5.ItemIndex=0 then
      begin
        sql.add('   when CAST(SUBSTRING(DDZL.BUYNO,5,2) as NUMERIC(10, 0))<7 then ''FH''+SUBSTRING(DDZL.BUYNO,3,2)');
        sql.add('   else ''S''+CAST(CAST(SUBSTRING(DDZL.BUYNO,3,2)as NUMERIC(10, 0))+1 as VARCHAR)  end )');
        sql.add('   and MaterialCBD.KHDH=''0062'' ')
      end
    else if ComboBox5.ItemIndex=1 then
      begin
        sql.add('   when (left(DDZL.BUYNO,1)=''F'' or left(DDZL.BUYNO,1)=''W'')then ''FW''+Right(DDZL.BUYNO,2)');
        sql.add('   else ''S''+CAST(CAST(Right(DDZL.BUYNO,2)as NUMERIC(10, 0))+1 as VARCHAR)  end )');
        sql.add('   and MaterialCBD.KHDH=''0054'' ')
      end
    else if ComboBox5.ItemIndex=2 then
      begin
        sql.add('   when CAST(SUBSTRING(DDZL.BUYNO,5,2) as NUMERIC(10, 0))<7 then ''FH''+SUBSTRING(DDZL.BUYNO,3,2)');
        sql.add('   else ''SS''+CAST(CAST(SUBSTRING(DDZL.BUYNO,3,2)as NUMERIC(10, 0))+1 as VARCHAR)  end )');
        sql.add('   and MaterialCBD.KHDH=''0078'' ')
      end;
    sql.add(' and MaterialCBD.YN=0'); // Τ基蛤⊿基常穦╰参  YN=0ъΤ基
    sql.add('and MaterialCBD.KFCQ=''YIH'' ');
    if ((main.Edit2.Text='CDC') or  (main.Edit2.Text='VA12')) then
      sql.add('and  MaterialCBD.GSBH=''CDC''')
    else if ((main.Edit2.Text='VC1') or  (main.Edit2.Text='VC2')) then
      sql.add('and  MaterialCBD.GSBH=''VC1''');     //Cariuma
    //else if ((main.Edit2.Text='VB1') then
    //  sql.add('and  MaterialCBD.GSBH=''VB1''')     //LYI use
    //sql.add('and MaterialCBD.GSBH='''+main.Edit2.Text+'''');
    SQL.add('Left join MaterialCBDNo on MaterialCBDNo.XieXing=XXZLS.XieXing and MaterialCBDNo.SheHao=XXZLS.SheHao and MaterialCBDNo.CLBH=XXZLS.CLBH ');
    SQL.Add('where XXZL.Article like '''+ArticleEdit.Text+'%'+'''   AND CLZL.CLZMLB=''N''');
    sql.Add('and XXZLS.CLBH like '''+CLBHEdit.Text+'%''');
    sql.add('and CLZL.YWPM like '+''''+'%'+MatNMEEdit.Text+'%'+'''');
    sql.add('and CLZL.ZWPM like '+''''+'%'+MatNMCEdit.Text+'%'+'''');
    if edit16.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '+''''+'%'+edit16.Text+'%'+'''');
    if CB1.ItemIndex=1 then
    begin
      sql.Add('and (MaterialCBD.SamplePrice is null ) ');
      sql.Add('and IsNull(MaterialCBDNo.YN,0)<>1 ');
    end;
    if CB1.ItemIndex=2 then
    begin
      sql.Add('and (MaterialCBD.SamplePrice is not null or  MaterialCBDNo.YN=1 ) ');
    end;
    if CheckBox1.Checked=false then
      sql.Add('and CLZL.CQDH<>''TW'' ');
    if CheckBox2.Checked=false then
      sql.Add('and CLZL.CQDH<>''VN'' ');
    if SREdit.Text<>'' then
      sql.Add('and KFXXZL.DEVCODE like '''+SREdit.Text+'%'' ');
    if BWLBCombo1.ItemIndex>0 then
      sql.Add('and (XXZLS.BWLB='+Copy(BWLBCombo1.Text,1,1)+') ');
    SQL.Add('group by XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.CLZMLB,');
    SQL.Add('         MaterialCBD.Season,MaterialCBD.SamplePrice,MaterialCBD.userID,MaterialCBD.userdate,MaterialCBD.Freight');
    SQL.Add('ORDER BY XXZLS.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.text);
    Active:=true;
    BBT6.Enabled:=true;
 end;
end;

procedure TMaterialCBDPrice.QueryZLZLS2();
begin
  //
  if ((ArticleEdit.Text='') and (SREdit.Text='') and (DDBHEdit.Text='') and (BuyNoEdit.Text='')) then
  begin
    showmessage('Please input  keypoint ');
    abort;
  end;  
  with ZLZLS2Qry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from ( ');
    SQL.Add('select  Convert(Bit,IsNull(MaterialCBDFilter.YN,0)) as YN ,isnull(rkzl.usprice,CGZL.USPrice) as usprice,case when isnull(rkzl.usprice,CGZL.USPrice) is null then isnull(rkzl.vnprice,CGZL.VNPrice) else null end as vnprice,');
    SQL.Add('        isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CSBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
    SQL.Add('        CLZL.CQDH,XXZLS.BWLB,isnull(sum(ZLZLS2.CLSL),0) as CLSL     ');
    SQL.add('        ,MaterialCBD.samplePrice,Round(convert(money,MaterialCBD.samplePrice)*convert(money,MaterialCBDEx.CWHL),0) as samplePriceVN ,MaterialCBDEx.CWHL as sampleEx,Convert(Bit,IsNull(Max(MaterialCBDNo.YN),0)) as CYN,Max(CLZL.YN) as MYN  ');
    SQL.Add('from ZLZLS2 with (nolock)  ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
    SQL.Add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH ');
    SQL.Add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
    SQL.Add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
    sql.add('and XXZL.KFCQ=''YIH'' ');
         if ComboBox5.ItemIndex=0 then
            sql.add('and XXZL.KHDH=''0062''')
         else if ComboBox5.ItemIndex=1 then
            sql.add('and XXZL.KHDH=''0054''')     //Cariuma
         else if ComboBox5.ItemIndex=2 then
            sql.add('and XXZL.KHDH=''0078''');

    SQL.Add('left join XXZLS with (nolock) on XXZl.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao and XXZLS.BWBH=ZLZLS2.BWBH ');
    SQL.Add('left join KFXXZL  with (nolock) on XXZl.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao');
    SQL.Add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    SQL.Add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
    SQL.Add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
    SQL.Add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
    SQL.Add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPrice, CGBJS.season ');
    SQL.Add('           from CGZLSS with (nolock) ');
    SQL.Add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO');
    SQL.Add('           left join CGBJS on CGZLS.BJNO=CGBJS.BJNO and CGBJS.CLBH=CGZLS.CLBH ');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and CGZLSS.ZLBH like '''+DDBHEdit.Text+'%''');
    SQL.Add('                 and CGZLSS.CLBH like '''+CLBHEdit.Text+'%''');
    SQL.Add('           group by CGZLSS.ZLBH,CGZLSS.CLBH, CGBJS.season ');
    SQL.Add('           union all');
    SQL.Add('           select YWDD.YSBH as ZLBH,YWBZPO.CLBH,sum(YWBZPO.Qty) as CGQty,getdate() as CFMDate,max(CGZL.CGDate) as CGDate');
    SQL.Add('                  ,max(CGZL.CGNO) as CGNO,getdate() as YQDate,0 as USPrice,0 as VNPrice, 0 as season');
    SQL.Add('           from (select YWBZPO.DDBH,YWBZPO.CLBH,sum(CTS) as Qty from YWBZPO,YWDD where YWBZPO.ddbh=YWDD.DDBH and YWDD.YSBH like '''+DDBHEdit.Text+'%'' group by YWBZPO.DDBH,YWBZPO.CLBH');
    SQL.Add('                 union all select DDBH,CLBH,sum(CTS) as Qty from YWBZPOE where ddbh like '''+DDBHEdit.Text+'%'' group by DDBH,CLBH )ywbzpo');
    //
    SQL.Add('           left join YWDD on YWDD.DDBH=YWBZPO.DDBH');
    //SQL.Add('           left join DDZL on DDZL.DDBH=YWDD.YSBH');
    SQL.Add('           left join DDZL on DDZL.DDBH=YWDD.YSBH and DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('           left join CGZL on CGZL.CGNO=YWDD.CGNO');
    SQL.Add('           where DDZL.DDBH like '''+DDBHEdit.Text+'%''');
    SQL.Add('           and YWDD.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('           and YWBZPO.CLBH like '''+CLBHEdit.Text+'%''');
    SQL.Add('           group by YWDD.YSBH,YWBZPO.CLBH ) CGZL');
    SQL.Add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
    SQL.Add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.Add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.Add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.Add('           from  KCRKS with (nolock)  ');
    SQL.Add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and KCRKS.CGBH like '''+DDBHEdit.Text+'%''');
    SQL.Add('                 and KCRKS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    //SQL.add('Left Join MaterialCBD ON MaterialCBD.CLBH=ZLZLS2.CLBH and  ');
    // 20240626 穝糤﹗耞   ノCGZL.CGDate耞
    SQL.add('left join MaterialCBD_His MaterialCBD on ZLZLS2.CLBH = MaterialCBD.CLBH and MaterialCBD.Season=(');
     if ComboBox5.ItemIndex=0 then
      begin
        sql.add('   case when CAST(SUBSTRING(DDZL.BUYNO,5,2) as NUMERIC(10, 0))<7 then ''FH''+SUBSTRING(DDZL.BUYNO,3,2)');
        sql.add('   else ''S''+CAST(CAST(SUBSTRING(DDZL.BUYNO,3,2)as NUMERIC(10, 0))+1 as VARCHAR)  end )');
        sql.add('   and MaterialCBD.KHDH=''0062''');
      end
    else if ComboBox5.ItemIndex=1 then
      begin
        sql.add('   case when (left(DDZL.BUYNO,1)=''F'' or left(DDZL.BUYNO,1)=''W'')then ''FW''+Right(DDZL.BUYNO,2)');
        sql.add('   else ''S''+CAST(CAST(Right(DDZL.BUYNO,2)as NUMERIC(10, 0))+1 as VARCHAR)  end )');
        sql.add('   and MaterialCBD.KHDH=''0054''');
      end
    else if ComboBox5.ItemIndex=2 then
    begin              
      sql.add('   and MaterialCBD.KHDH=''0078''');
      showmessage('Uniqlo season not yet define');
      Exit;
    end;
    //SQL.add('(case when SUBSTRING(DDZLTW.BUYNO,10,1)=''F'' then ''FH''+SUBSTRING(DDZLTW.BUYNO,8,2)');
    //SQL.add('when  SUBSTRING(DDZLTW.BUYNO,10,1)=''H'' then ''FH''+SUBSTRING(DDZLTW.BUYNO,8,2)');
    //SQL.add('else ''SS''+SUBSTRING(DDZLTW.BUYNO,8,2) end)');
    SQL.add('and MaterialCBD.YN=0');  // Τ基蛤⊿基常穦╰参  YN=0ъΤ基
    SQL.add('and MaterialCBD.KFCQ=''YIH''');  // Τ基蛤⊿基常穦╰参  YN=0ъΤ基

    //﹗穝糤蹲瞯   CGZL.CGDate 璸衡﹗
    SQL.Add('left join MaterialCBDEx on MaterialCBD.Season=MaterialCBDEx.Season and MaterialCBD.KHDH=MaterialCBDEx.KHBH');

    SQL.Add('Left Join MaterialCBDFilter on MaterialCBDFilter.CLBH=zlzls2.CLBH and MaterialCBDFilter.GSBH='''+main.Edit2.Text+'''      ');
    SQL.Add('Left join MaterialCBDNo on MaterialCBDNo.XieXing=DDZL.XieXing and MaterialCBDNo.SheHao=DDZL.SheHao and MaterialCBDNo.CLBH=zlzls2.CLBH and  MaterialCBDNo.Season=SUBSTRING(DDZLTW.BUYNO,8,3) ');
     //20181018 add not show UseStock
    if  chkUseStock.Checked  then
    begin
      sql.Add(' Left Join (select ZLBH,CLBH');
      sql.Add('             from (select cgkcuse.zlbh as ZLBH,cgkcuse.clbh as CLBH from cgkcuse ');
      sql.Add('	               left join (select zlbh,clbh,sum(clsl) as CLSL from zlzls2 group by zlbh,clbh) ZLZLS2');
      sql.Add('                   on cgkcuse.zlbh=zlzls2.zlbh and cgkcuse.clbh=zlzls2.clbh');
      //sql.Add('            	   left join ddzl on zlzls2.zlbh=ddzl.ddbh ');
      sql.Add('            	   left join ddzl on zlzls2.zlbh=ddzl.ddbh and DDZL.GSBH='''+main.Edit2.Text+'''');
      sql.Add('           		   left join clzl on cgkcuse.clbh=clzl.cldh');
      sql.Add('           		   left join XXZL on ddzl.XieXing=XXZL.XieXing and DDZL.Shehao=XXZL.Shehao');
      sql.Add('           		   left join KFXXZL on XXZl.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao');
      sql.Add('               where 1=1');
      if CLBHEdit.Text<>'' then
        sql.Add('               and ZLZLS2.CLBH like '''+CLBHEdit.Text+'%'' ');
      if BuyNoEdit.Text<>'' then
        sql.Add('               and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      if DDBHEdit.Text<>'' then
        sql.Add('               and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
      if MatNMEEdit.Text<>'' then
        sql.add('               and CLZL.YWPM like '+''''+'%'+MatNMEEdit.Text+'%'+'''');
      if MatNMCEdit.Text<>'' then
        sql.add('               and CLZL.ZWPM like '+''''+'%'+MatNMCEdit.Text+'%'+'''');
      if ArticleEdit.Text<>'' then
        sql.Add('               and XXZL.Article like '''+ArticleEdit.Text+'%'' ');
      if SREdit.Text<>'' then
        sql.Add('               and KFXXZL.DEVCODE like '''+SREdit.Text+'%'' ');
      if CheckBox1.Checked=false then
        sql.Add('               and CLZL.CQDH<>''TW'' ');
      if CheckBox2.Checked=false then
        sql.Add('               and CLZL.CQDH<>''VN'' ');
      sql.Add('               group by cgkcuse.zlbh,cgkcuse.clbh');
      sql.Add('               having sum(cgkcuse.qty)>=sum(zlzls2.clsl))CGKCUSE)CGKCUSE on CGKCUSE.zlbh=ZLZLS2.zlbh and CGKCUSE.clbh=ZLZLS2.clbh');
    end;
    //
    SQL.Add('       where DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('       and ZLZLS2.CLBH not like ''W%''');
    SQL.Add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    SQL.Add('       and ZLZLS2.ZLBH like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('       and ZLZLS2.ZMLB=''N''');
    SQL.Add('       and ZLZLS2.CLSL<>0');
    SQL.Add('       and DDZL.DDLB<>''B''');//ぃ陪ボB珇璹虫
    if CLBHEdit.Text<>'' then
      sql.Add('       and ZLZLS2.CLBH like '''+CLBHEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
      sql.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if DDBHEdit.Text<>'' then
      sql.Add('       and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    if MatNMEEdit.Text<>'' then
      sql.add('       and CLZL.YWPM like '+''''+'%'+MatNMEEdit.Text+'%'+'''');
    if MatNMCEdit.Text<>'' then
      sql.add('       and CLZL.ZWPM like '+''''+'%'+MatNMCEdit.Text+'%'+'''');
    if ArticleEdit.Text<>'' then
      sql.Add('       and XXZL.Article like '''+ArticleEdit.Text+'%'' ');
    if SREdit.Text<>'' then
      sql.Add('       and KFXXZL.DEVCODE like '''+SREdit.Text+'%'' ');
    {if edit16.Text<>'' then
       sql.add('       and ZSZL.ZSYWJC like '+''''+'%'+edit16.Text+'%'+'''');}  //20181018 
    if CheckBox1.Checked=false then
      sql.Add('and CLZL.CQDH<>''TW'' ');
    if CheckBox2.Checked=false then
      sql.Add('and CLZL.CQDH<>''VN'' ');
    if CB1.ItemIndex=1 then
    begin
      sql.Add('       and (MaterialCBD.SamplePrice is null ) ');
      sql.Add('       and IsNull(MaterialCBDNo.YN,0)<>1 ');
    end;
    if CB1.ItemIndex=2 then
    begin
      sql.Add('       and (MaterialCBD.SamplePrice is not null or  MaterialCBDNo.YN=1 ) ');
    end;
    if CB1.ItemIndex=4 then
      sql.Add('       and MaterialCBDNo.YN=1 ');
    if BWLBCombo1.ItemIndex>0 then
      sql.Add('       and (XXZLS.BWLB='+Copy(BWLBCombo1.Text,1,1)+') ');
    SQL.Add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');
    //20181018 add not show Use Stock
    if  chkUseStock.Checked  then
    begin
      sql.Add('       and CGKCUSE.ZLBH  is null');
    end;
    //
    SQL.Add('Group by DDZLTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CSBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
    SQL.Add('         CLZL.CQDH,MaterialCBD.SamplePrice,rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice,MaterialCBDFilter.YN,XXZLS.BWLB,MaterialCBDEx.CWHL  ');
    SQL.Add(') ZLZLS2  ');
    SQL.Add('where 1=1 ');
    //Not OK Statment
    if CB1.ItemIndex=3 then
    begin
      SQL.Add('  and  (1=(');
      SQL.Add('           case when (sampleprice is null and CYN=0) and (IsNull(usprice,0)>0 or IsNull(vnprice,0)>0 ) then 1');
      SQL.Add('                when (usprice is not null) and (sampleprice is not null) then ');
      SQL.Add('                  case when usprice>sampleprice then 1 else 0 end');
      SQL.Add('                when (vnprice is not null) and (samplePriceVN is not null) then ');
      SQL.Add('                  case when vnprice>samplePriceVN then 1 else 0 end');
      SQL.Add('           end');
      SQL.Add('           ) and YN=0 and MYN=1)');
    end;
    SQL.Add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.text);
    Active:=true;
  end;

end;
//

procedure TMaterialCBDPrice.Button3Click(Sender: TObject);
begin
      if BuyNoEdit.text='' then
         if ((main.Edit2.Text='CDC') or  (main.Edit2.Text='VA12'))  then
          BuyNoEdit.Text:=formatdatetime('yyyyMM',now())
         else if ((main.Edit2.Text='VC1') or  (main.Edit2.Text='VC2'))  then
          if  (formatdatetime('MM',now())='01') or (formatdatetime('MM',now())='02') or (formatdatetime('MM',now())='03') then
            BuyNoEdit.Text:='FALL '+formatdatetime('yy',now())
          else if  (formatdatetime('MM',now())='04') or (formatdatetime('MM',now())='05') or (formatdatetime('MM',now())='06') then
            BuyNoEdit.Text:='WINTER '+formatdatetime('yy',now())
          else if  (formatdatetime('MM',now())='07') or (formatdatetime('MM',now())='082') or (formatdatetime('MM',now())='09') then
            BuyNoEdit.Text:='SPRING '+formatdatetime('yy',now())
          else if  (formatdatetime('MM',now())='10') or (formatdatetime('MM',now())='11') or (formatdatetime('MM',now())='12') then
            BuyNoEdit.Text:='SUMMER '+formatdatetime('yy',now());


          //BuyNoEdit.Text:=formatdatetime('yyyyMM',now());
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              
              sql.Add('select MaterialCBDEx.CWHL,MaterialCBDEx.Season from');
              SQL.Add('MaterialCBDEx');

             sql.add('   where MaterialCBDEx.Season = (');
             sql.add('   select  (case when CAST(SUBSTRING('''+BuyNoEdit.text+''',5,2) as INT)<7 then ''FH''+SUBSTRING('''+BuyNoEdit.text+''',3,2)');
             sql.add('   else ''S''+CAST(CAST(SUBSTRING('''+BuyNoEdit.text+''',3,2)as INT)+1 as VARCHAR)  end ))');
            { if ComboBox5.ItemIndex=0 then
                begin
                  sql.add('   select  (case when CAST(SUBSTRING('''+BuyNoEdit.text+''',5,2) as INT)<7 then ''FH''+SUBSTRING('''+BuyNoEdit.text+''',3,2)');
                  sql.add('   else ''S''+CAST(CAST(SUBSTRING('''+BuyNoEdit.text+''',3,2)as INT)+1 as VARCHAR)  end ))');
                  //sql.add('and MaterialCBDEx.GSBH=''CDC''')
                end
             else if ComboBox5.ItemIndex=1 then //Cariuma
                begin
                  if ((LeftStr(BuyNoEdit.text,1)='F') or (LeftStr(BuyNoEdit.text,1)='W') ) then
                    sql.add('  ''FW'+RightStr(BuyNoEdit.text,2)+'''')
                  else
                    sql.add('  ''S'+IntToStr(StrToInt(RightStr(BuyNoEdit.text,2))+1)+'''');
                  sql.add('  )');
                  sql.add('and MaterialCBDEx.GSBH=''VC1''');
                end
             else if ComboBox5.ItemIndex=2 then  //Uniqlo
                begin
                  sql.add('   select  (case when CAST(SUBSTRING('''+BuyNoEdit.text+''',5,2) as INT)<7 then ''FW''+SUBSTRING('''+BuyNoEdit.text+''',3,2)');
                  sql.add('   else ''S''+CAST(CAST(SUBSTRING('''+BuyNoEdit.text+''',3,2)as INT)+1 as VARCHAR)  end ))');
                  //sql.add('and MaterialCBDEx.GSBH=''CDC''')
                end;
              //SQl.Add('End ');
              //showmessage(SQL.text);  }
              Active:=true;
             // Label2.caption:='CostingSeason:'+TmpQry.FieldByName('Season').AsString+';Exchange Rate:'+TmpQry.FieldByName('CWHL').AsString;
              Active:=false;
            end;
  if mainPC.ActivePageIndex=0 then
    QueryZLZLS2()
  else
    QueryMaterial();
  BBT6.Enabled:=true;
end;

procedure TMaterialCBDPrice.BB4Click(Sender: TObject);
begin
  if ZLZLS2Qry.Active=false then  Exit;
  with ZLZLS2Qry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TMaterialCBDPrice.BB6Click(Sender: TObject);
begin
  with ZLZLS2Qry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TMaterialCBDPrice.BB5Click(Sender: TObject);
var i:integer;
begin
  //
  try
    ZLZLS2Qry.First;
    with ZLZLS2Qry do
    begin
      for i:=0 to ZLZLS2Qry.RecordCount-1 do
      begin
       case ZLZLS2Qry.updatestatus of
        usmodified:
        begin
          if ZLZLS2Qry.FieldByName('YN').Value=true then
          begin
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              sql.Add('IF NOT EXISTS (Select CLBH from MaterialCBDFilter where CLBH='''+ZLZLS2Qry.FieldByName('CLBH').AsString+''' and GSBH='''+main.Edit2.Text+''')');
              SQL.Add('Begin ');
              SQL.Add('Insert into MaterialCBDFilter (CLBH, GSBH, USERID, USERDATE, YN)');
              SQL.Add('Values( '''+ZLZLS2Qry.FieldByName('CLBH').AsString+''','''+main.Edit2.Text+''','''+main.Edit1.Text+''',Getdate(),1)');
              SQl.Add('End ');
              ExecSQL();
            end;
          end else
          begin
            with TmpQry do
            begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''MaterialCBDFilter'','''+main.Edit2.Text+'''');
                sql.add(','''+ZLZLS2Qry.FieldByName('CLBH').AsString+''','+''''+main.Edit1.Text+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
            end;
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from MaterialCBDFilter ');
              SQL.Add('where CLBH='''+ZLZLS2Qry.FieldByName('CLBH').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
              ExecSQL();
            end;
          end;
        end;
       end;//Case ENDet.updatestatus of
       ZLZLS2Qry.Next;
      end;
    end;
    ZLZLS2Qry.active:=false;
    ZLZLS2Qry.cachedupdates:=false;
    ZLZLS2Qry.requestlive:=false;
    ZLZLS2Qry.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    //
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //
end;
//
procedure TMaterialCBDPrice.ExportExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if Query.Active then
  begin
    if Query.recordcount=0 then
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
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1 to Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=1 to Query.fieldcount   do
      begin
          eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
      end;
      Query.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;
procedure TMaterialCBDPrice.ExportGridEhExcel(SelectDBGrid:TDBGridEh);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin

  tdbgh := SelectDBGrid;
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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;
//
procedure TMaterialCBDPrice.bbt6Click(Sender: TObject);
begin

  if Dialogs.MessageDlg('Choose export data type?| No=Excel', mtConfirmation, [mbYes, mbNo], 0,) = mrYes then
  begin
    if mainPC.ActivePageIndex=0 then
      ExportGridEhExcel(DBGrid2)
    else
      ExportGridEhExcel(DBGrid1);
  end else
  begin
    if mainPC.ActivePageIndex=0 then
      ExportExcel(ZLZLS2Qry)
    else
      ExportExcel(XXMQ);
  end;
end;

procedure TMaterialCBDPrice.FormCreate(Sender: TObject);
begin
  //厨基虫基 & CBD虫基
  with TmpQry do
  begin
    Active:=false;
    {SQL.Clear;
    SQL.Add('select top 1 CWHL from MaterialCBDEx ');
    Active:=true;
    if RecordCount>0 then
    begin
      CBDExchange:=FieldByname('CWHL').AsString;
      ExInfo.Caption:='厨基Exchange:'+CBDExchange;
    end;
    Active:=false;  }
    SQL.Clear;
    SQL.Add('select DepID from Busers where USERID='''+main.Edit1.Text+''' ');
    Active:=true;
    //羆そ絪胯
    if FieldByname('DepID').AsString<>'VTX' then IsEdit:=false else IsEdit:=true;
    if IsEdit=false then
    begin
     BB4.Enabled:=false;
     DBGrid2.Columns[0].Visible:=false;
    end;
    Active:=false;
  end;
  ComboBox5.ItemIndex:=0;
end;

procedure TMaterialCBDPrice.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ( (ZLZLS2Qry.FieldByName('usprice').AsString<>'') and (ZLZLS2Qry.FieldByName('sampleprice').AsString<>'')) then
  begin
    if ZLZLS2Qry.FieldByName('sampleprice').AsFloat<ZLZLS2Qry.FieldByName('usprice').AsFloat then
      DBGrid2.Canvas.Font.Color:=clred;
  end else if  ( (ZLZLS2Qry.FieldByName('samplePriceVN').AsString<>'') and (ZLZLS2Qry.FieldByName('vnprice').AsString<>'')) then
  begin
    if ZLZLS2Qry.FieldByName('samplePriceVN').AsFloat<ZLZLS2Qry.FieldByName('vnprice').AsFloat then
      DBGrid2.Canvas.Font.Color:=clred;
  end;
end;

procedure TMaterialCBDPrice.N1Click(Sender: TObject);
begin
  if ZLZLS2Qry.Active=true then
  begin
    if ZLZLS2Qry.RequestLive=true then
    begin
      while not ZLZLS2Qry.Eof do
      begin
        ZLZLS2Qry.Edit;
        ZLZLS2Qry.FieldByName('YN').Value:=1;
        ZLZLS2Qry.Post;
        ZLZLS2Qry.Next;
      end;
    end;
  end;
end;

procedure TMaterialCBDPrice.lock1Click(Sender: TObject);
begin
  if ZLZLS2Qry.Active=true then
  begin
    if ZLZLS2Qry.RequestLive=true then
    begin
      while not ZLZLS2Qry.Eof do
      begin
        ZLZLS2Qry.Edit;
        ZLZLS2Qry.FieldByName('YN').Value:=0;
        ZLZLS2Qry.Post;
        ZLZLS2Qry.Next;
      end;
    end;
  end;
end;

procedure TMaterialCBDPrice.BitBtn1Click(Sender: TObject);
begin
  CLZLCBDPrice:=TCLZLCBDPrice.Create(self);
  CLZLCBDPrice.IsEdit:=IsEdit;
  CLZLCBDPrice.ShowModal();
end;

end.
