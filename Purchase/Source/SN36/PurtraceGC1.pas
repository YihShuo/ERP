unit PurtraceGC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, Menus, ComCtrls, dateutils, Buttons, ShellApi, DBGridEhImpExp;

type
  TPurtraceGC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Edit3: TEdit;
    PrintDBGridEh1: TPrintDBGridEh;
    Button3: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CB5: TCheckBox;
    Label4: TLabel;
    Edit7: TEdit;
    CheckBox5: TCheckBox;
    CYear: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    CMonth: TComboBox;
    Button4: TButton;
    PurchasePage: TPageControl;
    Label10: TLabel;
    Edit8: TEdit;
    lbKHPO: TLabel;
    edKHPO: TEdit;
    lbDDGB: TLabel;
    edDDGB: TEdit;
    Label11: TLabel;
    OrderType: TComboBox;
    DDZTCK: TCheckBox;
    CancelCK: TCheckBox;
    TabSheet3: TTabSheet;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField2: TFloatField;
    CurrencyField4: TCurrencyField;
    FloatField3: TFloatField;
    StringField13: TStringField;
    StringField14: TStringField;
    UpdateSQL3: TUpdateSQL;
    DS2: TDataSource;
    Query2ZSDH: TStringField;
    Query2zsywjc: TStringField;
    HistoryCB: TCheckBox;
    Query2DOCNO: TStringField;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Query2VNACC: TCurrencyField;
    GCCheckBox: TCheckBox;
    Query2ZMLB: TStringField;
    Query2JGNO: TStringField;
    Query2JGDate: TDateTimeField;
    Query2JGQty: TCurrencyField;
    SaveDialog1: TSaveDialog;
    PopupMenu: TPopupMenu;
    Copy1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query2CalcFields(DataSet: TDataSet);
    procedure Copy1Click(Sender: TObject);
  private
    IsChekcRSLOver:boolean;
    procedure Purchase_DefaultVer1();
    { Private declarations }
    procedure TWPurcahseSQL(Query:TQuery);
    procedure TWPurcahseDetailSQL(Query:TQuery);
    procedure InitTitleClick(IsOpen:boolean);
    procedure AddExtraItemList(Query:TQuery);
  public
    { Public declarations }
  end;

var
  PurtraceGC: TPurtraceGC;
implementation

uses main1, PurtraceGC_Det1, RSLSupplier1, RSLDDGB1, Clipbrd, FunUnit;

{$R *.dfm}

procedure TPurtraceGC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPurtraceGC.FormDestroy(Sender: TObject);
begin
PurtraceGC:=nil;
end;

procedure TPurtraceGC.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;

begin
 if (DBGrideh2.DataSource.DataSet.Active=true) and (DBGrideh2.DataSource.DataSet.RecordCount>0) then
 begin
  if Query2.Active=true then
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
        SaveDialog1.FileName := SaveDialog1.FileName + '.xls';
        SaveDBGridEhToExportFile(ExpClass,Dbgrideh2,SaveDialog1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
 end else
 showmessage('You have not Data, Please Query !!! Thank you~')
end;

//台灣採購
procedure TPurtraceGC.TWPurcahseSQL(Query:TQuery);
begin
  with Query  do
  begin

            //台灣出貨材料
            sql.add('left join (');
            if (OrderType.ItemIndex=0) then
            begin
              sql.add('         select CGHZZLS.ZLBH,CGHZZLS.CLBH,Sum(CGHZZLS.dg_Qty) as CGQty,');
              sql.add('                  CONZL.Ex_Qty as RKQty, max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as YQDate,');
              sql.add('                  max(convert(smalldatetime,(case when hf_Date='+''''+'ZZZZZZZZ'+''''+' then null else hf_Date end))) as CFMDate,');
              sql.add('                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,max(CGHZZLSS.DGDH) as CGNO,CONZL.CON_Date as RKDate,CONZL.CON_NO as RKNO ');
              sql.add('                  ,conzl.USPrice,conzl.VNPrice ');
            end;
            if ((OrderType.ItemIndex=1) or (OrderType.ItemIndex=2)) then
            begin
              sql.add('         select CGHZZLS.ZLBH,CGHZZLS.CLBH,Sum(CGHZZLS.dg_Qty) as CGQty,');
              sql.add('                  Sum(CONZL.Ex_Qty) as RKQty, max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as YQDate,');
              sql.add('                  max(convert(smalldatetime,(case when hf_Date='+''''+'ZZZZZZZZ'+''''+' then null else hf_Date end))) as CFMDate,');
              sql.add('                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,max(CGHZZLSS.DGDH) as CGNO,Max(CONZL.CON_Date) as RKDate,Max(CONZL.CON_NO) as RKNO ');
              sql.add('                  ,max(conzl.USPrice) as USPrice,max(conzl.VNPrice) as VNPrice ');
            end;
            sql.add('           from CGHZZLS with (nolock) ');
            sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
            sql.add('           left join CLZL  with (nolock) on CLZL.CLDH=CGHZZLS.CLBH         ');
            //正單補單
            if OrderType.ItemIndex=0 then
            begin
              sql.add('           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,sum(EXZLSS.CK_Qty) as EX_Qty,MAX(EXZLS.PY_dj) as USPrice ,convert(money,0) AS VNPrice');
            end else if ((OrderType.ItemIndex=1) or (OrderType.ItemIndex=2)) then
            begin
               sql.add('           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.dgdh,EXZLSS.CLDH,sum(EXZLSS.CK_Qty) as EX_Qty,MAX(EXZLS.PY_dj) as USPrice ,convert(money,0) AS VNPrice');
            end;
            sql.add('                             ,max(convert(smalldatetime,HGZL.CON_DATE)) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as CON_NO');
            sql.add('                      FROM EXZLSS');
            sql.add('                      left join EXZLS on EXZLS.EXNO=EXZLSS.exno AND exzls.xh=exzlss.xh ');
            sql.add('                      LEFT JOIN EXZL  with (nolock) ON EXZLSS.EXNO=EXZL.EXNO  ');
            sql.add('                      LEFT JOIN HGZL  with (nolock) ON EXZL.CON_NO=HGZL.CON_NO');
            sql.add('                      where EXZLSS.CLDH like '+''''+edit1.Text+'%'+'''');
            sql.add('                            and EXZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
            //正單補單
            if OrderType.ItemIndex=0 then
            begin
              sql.add('                      GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH ');
              sql.add('                      ) AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH   = CONZL.ZLBH   ') //區別正單和補單
            end else
            begin
              sql.add('                      GROUP BY EXZLSS.ZLBH,EXZLSS.dgdh,EXZLSS.CLDH ');
              sql.add('                      ) AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH   = CONZL.ZLBH  And  CGHZZLS.dgdh=CONZL.dgdh '); //區別正單和補單
            end;
            sql.add('           where CGHZZLS.CLBH like '+''''+edit1.Text+'%'+'''');
            sql.add('                 and CGHZZLS.ZLBH like '+''''+edit5.Text+'%'+'''');
            sql.add('                 and CLZL.CQDH='+''''+'TW'+'''');
            //區別正單和補單
            if OrderType.ItemIndex=1 then
               sql.Add('                 and CGHZZLS.cghzbh like ''LB%''');
            if OrderType.ItemIndex=2 then
               sql.Add('                 and CGHZZLS.cghzbh like ''RB%''');
            sql.Add('                 and CGHZZLS.DGDH<>''ZZZZZZZZZZZZZ''');
            if (OrderType.ItemIndex=0) then
               sql.add('           group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CONZL.Ex_Qty,CONZL.CON_Date,CONZL.CON_NO ,conzl.USPrice,conzl.VNPrice) CGTW') ;
            if ((OrderType.ItemIndex=1) or (OrderType.ItemIndex=2)) then
               sql.add('           group by CGHZZLS.ZLBH,CGHZZLS.CLBH ) CGTW') ;

  end;
end;
//

//加工費用項目
procedure TPurtraceGC.AddExtraItemList(Query:TQuery);
begin
  with Query  do
  begin
    if (checkbox1.Checked or checkbox2.Checked or checkbox5.Checked) then
    SQL.add('union all');
    SQL.Add('Select * from (');
    SQL.Add('      select DDZL.BUYNO,DDZL.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,''ZZZZZZZZZZ'' as CLBH,CLZL.CLZMLB as ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
    SQL.Add('             CLZL.CQDH, null CGQty,ExtraVN.CLSL*DDZL.Pairs as CLSL, null as YQDate, null as CFMDate, null as CGDate, null as CGNO,null as UseStock, null as RKNO,null as RKDate, null as RKQty,null as DOCNO,');
    SQL.Add('             Max(EXTRASS.JGNO) as JGNO,Max(EXTRASS.CFMDate) as JGDate,Sum(EXTRASS.Qty) as JGQty,');
    SQL.Add('             DDZL.Shipdate,ExtraVN.USPrice,ExtraVN.VNPrice,null as indate,null as cldate,null as orderdate,null as get2com, null as com2cg,null as cg2rk,null as cgkpi,lbzls.ywsm,Max(ZSZL.ZSDH) as ZSDH,Max(ZSZL.ZSYWJC) as ZSYWJC ');
    SQL.Add('      from ExtraVN ');
    SQL.Add('      inner join DDZl  on DDZL.XieXing=ExtraVN.XieXing and DDZL.Shehao=ExtraVN.SheHao ');
    SQL.Add('      left join EXTRASS on EXTRASS.XieXing=ExtraVN.XieXing and EXTRASS.Shehao=ExtraVN.SheHao and ExtraVN.CLBH=EXTRASS.CLBH and DDZL.DDBH=EXTRASS.ZLBH  ');
    SQL.Add('      left join DDZLTW with (nolock) on DDZLTW.DDBH=DDZL.DDBH');
    SQL.Add('      left join CLZL on CLZL.CLDH=ExtraVN.CLBH');
    SQL.Add('      left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
    SQL.Add('      left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
    SQL.Add('      left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
    SQL.Add('      left join EXTRA on  EXTRA.JGNO=EXTRASS.JGNO ');
    SQL.Add('      left join zszl on EXTRA.ZSBH=ZSZL.ZSDH');
    SQL.Add('      where DDZL.GSBH='''+main.Edit2.Text+''' ');
    if cyear.ItemIndex <> 0 then
       sql.add('      and year(DDZL.Shipdate)='''+cyear.Text+'''');  //出貨年
    if cmonth.ItemIndex <> 0 then
       sql.add('      and month(DDZL.Shipdate)='''+cmonth.text+'''');  //出貨月
    if edit5.text <> '' then
      sql.add('       and DDZL.DDBH like '''+edit5.Text+'%''');
    if edit2.Text <> '' then
      sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
    if edit6.Text <> '' then
      sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
    if edit3.Text <> '' then
      sql.add('       and XXZL.Article like '''+edit3.text+'%''');
    if edit8.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if edit4.Text <> '' then
      sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
    if CancelCK.Checked=false then
      sql.add('       and DDZLTW.DDZT<>''C'' ');
    if edKHPO.Text <> '' then
      sql.add('     and DDZL.KHPO like '''+edKHPO.Text+'%''');
    if edDDGB.text <> '' then
       sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
    SQL.Add('      Group by DDZL.BUYNO,DDZL.DDBH,DDZLTW.DDZT,DDZL.KHPO,CLZL.CLZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,CLZL.CQDH,ExtraVN.CLSL,DDZL.Shipdate,ExtraVN.USPrice,ExtraVN.VNPrice,lbzls.ywsm');
    //貼合材料
    SQL.Add('Union All');
    SQL.Add('      select DDZL.BUYNO,DDZL.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
    SQL.Add('             CLZL.CQDH, null CGQty,Sum(ZLZLS2.CLSL) as CLSL, null as YQDate, null as CFMDate, null as CGDate, null as CGNO,null as UseStock, null as RKNO,null as RKDate, null as RKQty,null as DOCNO,JGZL.JGNO,JGZL.JGDate,JGZL.JGQty,');
    SQL.Add('             DDZL.Shipdate,JGZL.USPrice as USPrice,JGZL.VNPrice as VNPrice,null as indate,null as cldate,null as orderdate,null as get2com,');
    SQL.Add('             null as com2cg,null as cg2rk,null as cgkpi,lbzls.ywsm,Max(ZSZL.ZSDH) as ZSDH,Max(ZSZL.ZSYWJC) as ZSYWJC     ');
    SQL.Add('      from  ZLZLS2 ');
    SQL.Add('      inner join DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('      left join DDZLTW with (nolock) on DDZLTW.DDBH=DDZL.DDBH');
    SQL.Add('      left join CLZL on CLZL.CLDH=ZLZLS2.CLBH');
    SQL.Add('      left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
    SQL.Add('      left join (    ');
    SQL.Add('      select JGZLSS.ZLBH ,JGZLS.CLBH,sum(JGZLSS.Qty) as JGQty, ');
    SQL.Add('                  max(JGZL.JGNO) as JGNO,max(JGZL.CFMDate1) as JGDate, ');
    SQL.Add('                  max(JGZLS.usprice) as usprice,max(JGZLS.vnprice) as vnprice ');
    SQL.Add('           from  JGZLSS with (nolock)  ');
    SQL.Add('           inner join DDZL on DDZL.DDBH=JGZLSS.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDBH like '''+edit5.Text+'%'' ');
    SQL.Add('           left join JGZLS with (nolock) on JGZLS.JGNO=JGZLSS.JGNO  and JGZLS.CLBH=JGZLSS.CLBH and  JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('           left join JGZL with (nolock)  on JGZL.JGNO=JGZLSS.JGNO ');
    SQL.Add('           where JGZLSS.Qty>0 and DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 and JGZLSS.ZLBH like '''+edit5.Text+'%''');
    if cyear.ItemIndex <> 0 then
       sql.add('              and year(DDZL.Shipdate)='''+cyear.Text+'''');  //出貨年
    if cmonth.ItemIndex <> 0 then
       sql.add('              and month(DDZL.Shipdate)='''+cmonth.text+'''');  //出貨月
    if edit8.Text <> '' then
      sql.add('               and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if CancelCK.Checked=false then
      sql.add('               and DDZL.DDZT<>''C'' ');
    if edKHPO.Text <> '' then
      sql.add('               and DDZL.KHPO like '''+edKHPO.Text+'%''');
    SQL.Add('                 and JGZL.CFMID2<>''NO''');
    SQL.Add('           group by JGZLSS.ZLBH ,JGZLS.CLBH');
    SQL.Add('      ) JGZL on  JGZL.ZLBH=ZLZLS2.ZLBH and JGZL.CLBH=ZLZLS2.CLBH ');
    SQL.Add('      left join zszl on ZLZLS2.CSBH=ZSZL.ZSDH');
    SQL.Add('      left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
    SQL.Add('      where 1=1 ');
    SQL.Add('           and ZLZLS2.ZMLB=''Y''  ');
    SQL.Add('           and CLSL>0 ');
    if cyear.ItemIndex <> 0 then
       sql.add('       and year(DDZL.Shipdate)='''+cyear.Text+'''');  //出貨年
    if cmonth.ItemIndex <> 0 then
       sql.add('       and month(DDZL.Shipdate)='''+cmonth.text+'''');  //出貨月
    if edit5.text <> '' then
      sql.add('        and DDZL.DDBH like '''+edit5.Text+'%''');
    if edit1.Text <> '' then
      sql.add('     and ZLZLS2.CLBH like '''+edit1.Text+'%''');
    if edit2.Text <> '' then
      sql.add('        and CLZL.YWPM like ''%'+edit2.Text+'%''');
    if edit6.Text <> '' then
      sql.add('        and XXZl.XieMing like ''%'+edit6.text+'%''');
    if edit3.Text <> '' then
      sql.add('        and XXZL.Article like '''+edit3.text+'%''');
    if edit8.Text <> '' then
      sql.add('        and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if edit4.Text <> '' then
      sql.add('        and KFZL.KFJC like ''%'+edit4.Text+'%''');
    if CancelCK.Checked=false then
      sql.add('        and DDZLTW.DDZT<>''C'' ');
    if edKHPO.Text <> '' then
      sql.add('        and DDZL.KHPO like '''+edKHPO.Text+'%''');
    if edDDGB.text <> '' then
       sql.add('       and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
    SQL.Add('      Group by DDZL.BUYNO,DDZL.DDBH ,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
    SQL.Add('               CLZL.CQDH,JGZL.JGNO,JGZL.JGDate,JGZL.JGQty,DDZL.Shipdate,JGZL.VNPrice,JGZL.USPrice,lbzls.ywsm ');
    SQL.Add(') ZLZLS2 ');
  end;
end;
//
procedure TPurtraceGC.Purchase_DefaultVer1();
var ff:textfile;
    DDZL_SubSQL:string;
    CLZL_SQL:string;
    CGZL,CGZLS,CGZLSS,KCRK,KCRKS,ZLZLS2:string;
begin
     // 修改SQL
     DDZL_SubSQL:='and DDZL.GSBH='''+main.Edit2.Text+''' ';
     if Edit8.Text<>'' then
       DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.BUYNO like '''+Edit8.Text+'%'' ';
     if Edit5.Text<>'' then
       DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.DDBH like '''+Edit5.Text+'%'' ';
     if cyear.ItemIndex <> 0 then
       DDZL_SubSQL:=DDZL_SubSQL+'and year(DDZL.Shipdate)='''+cyear.Text+''' ';  //出貨年
     if cmonth.ItemIndex <> 0 then
       DDZL_SubSQL:=DDZL_SubSQL+'  and month(DDZL.Shipdate)='''+cmonth.text+''' ';  //出貨月
     if Edit1.Text<>'' then
       CLZL_SQL:='inner join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH and CLZL.CLDH like '''+Edit1.Text+'%'' '
     else
       CLZL_SQL:='left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH ';
     //歷史資料
     if HistoryCB.Checked=true then
     begin
      CGZL:='(select * from CGZL union all select * from CGZL_2014 ) CGZL ';
      CGZLS:='(select * from CGZLS union all select * from CGZlS_2014 ) CGZlS ';
      CGZLSS:='(select * from CGZLSS union all select * from CGZlSS_2014 ) CGZlSS ';
      KCRK:='(select * from KCRK union all select * from KCRK_2014 ) KCRK ';
      KCRKS:='(select * from KCRKS union all select * from KCRKS_2014 ) KCRKS ';
      ZLZLS2:='(select * from ZLZLS2 union all select * from ZLZLS2_2014 ) ZLZLS2 ';
     end else
     begin
      CGZL:=' CGZL with (nolock) ';
      CGZLS:='CGZLS with (nolock) ';
      CGZLSS:='CGZLSS with (nolock) ';
      KCRK:='KCRK with (nolock) ';
      KCRKS:='KCRKS with (nolock) ';
      ZLZLS2:='ZLZLS2 with (nolock) ';
     end;
     //
      with query2 do
      begin
        active:=false;
        sql.Clear;
        sql.add('Select BUYNO, ZLBH, DDZT, KHPO, ZLZLS2.CLBH, ZMLB, YWPM, ZWPM, DWBH,Article, XieMing,Pairs, CQDH, CGQty, CLSL, YQDate, CFMDate, CGDate, CGNO, UseStock, RKNO, RKDate, RKQty, DOCNO, JGNO, ');
        sql.add('       JGDate, JGQty, ShipDate, IsNull(ZLZLS2.usprice,CGBJS.usprice) as usprice,IsNull(ZLZLS2.vnprice,CGBJS.vnprice) as vnprice, indate, cldate, orderdate, ywsm, ZSDH, zsywjc from (');
        if  ((checkbox1.Checked) or (checkbox2.Checked)) then
        begin
            sql.add('Select * from ( ');
            sql.add('select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
            // 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
            sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,');
            sql.add('        RKZL.RKNO,RKZL.RKDate,case when ((CLZL.CQDH=''TW'')and (HGINV.HGQty is not null)) then HGINV.HGQty else RKZL.RKQty end as RKQty,HGINV.DOCNO,null as JGNO,null as JGDate,null as JGQty,DDZL.ShipDate,');
            sql.add('        isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,zlzls2.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,null as get2com');
            sql.Add('    		 ,null as com2cg');
            sql.Add('    		 ,null as cg2rk');
            sql.Add('    		 ,null as cgkpi');
            sql.add('         ,lbzls.ywsm,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as zsywjc');//出貨國別 star 2014.2.27
            //edit end

            sql.add('from '+ZLZLS2+' ');
            sql.add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL);
            sql.add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
            sql.add(CLZL_SQL);
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='''+main.Edit2.Text+''' ');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
            sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
                //加載采購相關的數量及日期等數據
            sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
            sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPrice ');
            sql.add('           from '+CGZLSS+'');
            sql.add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
            sql.add('           left join '+CGZLS+' on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
            sql.add('           left join '+CGZL+' on CGZl.CGNO=CGZLSS.CGNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and CGZLSS.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and CGZLSS.ZLBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ');
             //
            sql.Add('           union all');
            sql.Add('           select YWDD.YSBH as ZLBH,YWBZPO.CLBH,sum(YWBZPO.Qty) as CGQty,getdate() as CFMDate,max(CGZL.CGDate) as CGDate');
            sql.Add('                  ,max(CGZL.CGNO) as CGNO,getdate() as YQDate,0 as USPrice,0 as VNPrice');
            sql.Add('           from (select YWBZPO.DDBH,YWBZPO.CLBH,sum(CTS) as Qty from YWBZPO,YWDD where YWBZPO.ddbh=YWDD.DDBH and YWDD.YSBH like '''+edit5.Text+'%'' group by YWBZPO.DDBH,YWBZPO.CLBH');
            sql.Add('                 union all select DDBH,CLBH,sum(CTS) as Qty from YWBZPOE where ddbh like '''+edit5.Text+'%'' group by DDBH,CLBH )ywbzpo');
            sql.Add('           left join YWDD on YWDD.DDBH=YWBZPO.DDBH');
            sql.Add('           left join DDZL on DDZL.DDBH=YWDD.YSBH');
            sql.Add('           left join CGZL on CGZL.CGNO=YWDD.CGNO');
            sql.Add('           where DDZL.DDBH like '''+edit5.Text+'%'' ');
            sql.Add('           and YWDD.GSBH='''+main.Edit2.Text+'''');
            if cyear.text <> '0000' then
              sql.add('         and year(DDZL.Shipdate)='+cyear.Text);
            if cmonth.text <> '00' then
              sql.add('         and month(DDZL.Shipdate)='+cmonth.Text);
            if edit8.Text <> '' then
              sql.add('         and DDZL.BuyNO like '''+edit8.Text+'%''');
            sql.Add('           and YWBZPO.CLBH like '''+edit1.Text+'%''');
            sql.Add('           group by YWDD.YSBH,YWBZPO.CLBH ) CGZL');
            //
            sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
              //加載入庫相關的數量及日期等數據
            sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
            sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
            sql.add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
            sql.add('           from  '+KCRKS+' ');
            sql.add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
            sql.add('           left join '+KCRK+' on KCRK.RKNO=KCRKS.RKNO ');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if edit5.text <> '' then
              sql.add('                 and KCRKS.CGBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
            sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
            // 台灣貨櫃文件
            sql.add('left join (select HG_INVS.CGBH as ZLBH ,HG_INVS.CLBH,sum(HG_INVS.Qty ) as HGQty, ');
            sql.add('                  max(HG_INV.DOCNO) as DOCNO,max(HG_INV.USERDate) as HGDate ');
            sql.add('           from  HG_INVS with (nolock) ');
            sql.add('           inner join DDZL on DDZL.DDBH=HG_INVS.CGBH '+DDZL_SubSQL);
            sql.add('           left join HG_INV with (nolock)  on HG_INV.RKNO=HG_INVS.RKNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and HG_INVS.CLBH like '''+edit1.Text+'%''');
            if edit5.text <> '' then
              sql.add('                 and HG_INVS.CGBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by HG_INVS.CGBH,HG_INVS.CLBH ) HGINV');
            sql.add('                 on HGINV.ZLBH=ZLZLS2.ZLBH and HGINV.CLBH=ZLZLS2.CLBH');
            sql.add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
            sql.add('       where DDZL.GSBH='''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZL.Shipdate)='''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZL.Shipdate)='''+cmonth.text+'''');  //出貨月
            if edit1.Text <> '' then
              sql.add('     and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            //不要買安全庫存類的材料
            //sql.add('       and ZLZLS2.CLBH not like ''W%''');
            //sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
            if edit5.text <> '' then
              sql.add('       and ZLZLS2.ZLBH like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edit8.Text <> '' then
              sql.add('       and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edit4.Text <> '' then
              sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
            sql.add('       and ZLZLS2.ZMLB=''N''');
            if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
               sql.add('       and CLZL.CQDH=''TW''');
            if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
               sql.add('       and CLZL.CQDH=''VN''');
            if CancelCK.Checked=false then
              sql.add('       and DDZLTW.DDZT<>''C'' ');
            sql.add('       and ZLZLS2.CLSL<>0') ;
            //加上不要開發材料分類到無需領料的部分
            sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');

            if edKHPO.Text <> '' then
              sql.add('     and DDZLTW.KHPO like '''+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');

    //end edit

            sql.add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
            sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
            sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,HGINV.HGQty,HGINV.DOCNO,DDZL.ShipDate, ');
            sql.add('         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice ');
            sql.add('		      ,ddzl.ddrq,zlzls2.userdate,lbzls.ywsm');
            if (checkbox3.Checked xor checkbox4.Checked)=true then
            begin
                sql.add('      having  ');
                if checkbox3.Checked=true then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                if checkbox4.Checked  then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                //20151203  add RKQty+UseQty
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  if checkbox6.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)<=isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)>isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0) ');
                end;
            end else
            begin
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  sql.add('      having  ');
                  if checkbox6.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)<=isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)>isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0) ');
                end;
            end;

            sql.add(') ZLZLS2  ');
        end;

    {Edit by BillWeng 2009/12/16 加入外箱
    //START }

        if ((checkbox1.Checked or checkbox2.Checked) and checkbox5.Checked) then sql.add('union all');

        if  checkbox5.Checked then
          begin
            sql.add('Select * from ( ');  //20150609 weston  修改BOX
            sql.add('select isnull(DDZLTW.BUYNO,0) as BUYNO,ddzl.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH,CLZL.CLZMLB as ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,convert(decimal,sum(ywbzpo.cts)) as CGQty,0.0 as clsl,getdate() as YQDate,');
            sql.add('         getdate() as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('         max(CGZL.CGNO) as CGNO,0.0 as usestock,RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,Null as DOCNO,null as JGNO,null as JGDate,null as JGQty,DDZL.ShipDate,');
            sql.add('           isnull(rkzl.USPrice,0) as USPrice,isnull(rkzl.VNPrice,0) as VNPrice   ');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,ywbzpo.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,null as get2com');
            sql.Add('    		 ,null as com2cg');
            sql.Add('    		 ,null as cg2rk');
            sql.Add('    		 ,null as cgkpi');
            sql.add('       ,lbzls.ywsm,'''' as zsdh,'''' as zsywjc');//出貨國別 star 2014.2.27
            //edit end
            sql.add('from ywbzpo  with (nolock) ');
            sql.add('left join ywdd on ywbzpo.ddbh = ywdd.ddbh');
            sql.add('left join '+CGZL+' on CGZL.CGNO=ywdd.CGNO ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ywbzpo.CLBH ');
            sql.add('left join DDZl  with (nolock) on DDZl.DDBH=ywdd.ysbh ');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ywdd.ysbh');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add(' left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,');
            sql.add(' max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate,usprice,vnprice  ');
            sql.add(' from  '+KCRKS+' ');
            sql.add(' left join DDZL on DDZL.DDBH = KCRKS.CGBH');
            sql.add('left join '+KCRK+' on KCRK.RKNO=KCRKS.RKNO ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.Text <> '0000' then
              sql.add('                 and  year(DDZL.Shipdate)='+cyear.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.Text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and KCRKS.CGBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH,usprice,vnprice ) RKZL');
            sql.add('                 on RKZL.ZLBH=ywbzpo.ddbh and RKZL.CLBH=ywbzpo.CLBH ');
            sql.add(' left join (select  ywbzpo.ddbh as ZLBH,ywbzpo.CLBH as clbh');
            sql.add(' from  ywbzpo with (nolock) ');
            sql.add(' left join DDZL on DDZL.DDBH = YWBZPO.DDBH');
            sql.Add(' where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);          //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and ywbzpo.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and ddzl.ddbh like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by ywbzpo.ddbh,ywbzpo.CLBH ) zlzls2');
            sql.add('                 on ywbzpo.ddbh=ZLZLS2.ZLBH and ywbzpo.CLBH=ZLZLS2.CLBH ');
            sql.add('       where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='+''''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZLTW.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZLTW.Shipdate)='+''''+cmonth.text+'''');  //出貨月
            if edit5.text <> '' then
              sql.add('       and ddzl.ddbh like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like '''+'%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edKHPO.Text <> '' then
              sql.add('       and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edit8.Text <> '' then
              sql.add('       and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edDDGB.text <> '' then
              sql.add('      and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            if CancelCK.Checked=false then
              sql.add('      and DDZLTW.DDZT<>''C'' ');
    //end edit

            sql.add(' group by DDZLTW.BUYNO,ddzl.DDBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH,CLZL.CLZMLB,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,XXZL.Article,XXZL.XieMing,');
            sql.add(' DDZL.Pairs,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate,');
            sql.add(' rkzl.USPrice,rkzl.VNPrice ');
            sql.Add(' ,ddzl.userdate,ddzl.ddrq,ywbzpo.userdate,lbzls.ywsm');
            sql.add(') ZLZLS2  '); //20150609 weston  修改BOX
            if ((edit1.Text <> '') and (UpperCase(Copy(edit1.Text,1,1))='U')) then
            sql.add(' where ZLZLS2.CLBH like '''+edit1.Text+'%''');
          end;
        // 加工費用項目
        if GCCheckBox.Checked=true then
        begin
          AddExtraItemList(query2);
        end;
    // End of edit   }
        sql.add(' ) ZLZLS2 ');
        SQL.Add('      left join (');
        SQL.Add('         select CLBH,USPrice ,VNPrice,rn  from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ');
        SQL.Add('         	    ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn ');
        SQL.Add('         from CGBJ ');
        SQL.Add('         left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
        SQL.Add('         where 1=2 and CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null ) CGBJ where rn=1     ');  //20211023 單價資料跟N31 一樣，不用報價單資料顯示
        SQL.Add('      ) CGBJS ON CGBJS.CLBH=ZLZLS2.CLBH ');
        sql.add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH ');

        assignfile(ff,'sql.txt');
        rewrite(ff);
        writeln(ff,sql.text);
        closefile(ff);
        //memo1.Text:=sql.Text;
        active:=true;
      end;
      if CB5.Checked then
      begin
        while not query2.eof do
        begin
            query2.cachedupdates:=true;
            query2.requestlive:=true;
            if ((not query2.FieldByName('CGDate').IsNull) or (query2.FieldByName('ZMLB').AsString='Y')) then   //ZMLB=Y 加工項目
            begin
              if ( (not query2.FieldByName('USPrice').IsNull) and ( query2.FieldByName('USPrice').value<>0) ) then
              begin
                 query2.Edit;
                 if edit7.text<>'' then
                 query2.FieldByName('VNPrice').Value:=query2.FieldByName('USPrice').Value* strtoint(edit7.Text) ;
                 query2.Post;
              end;
              if ( (not query2.FieldByName('VNPrice').IsNull) and (query2.FieldByName('VNPrice').value<>0) ) then
              begin
                 query2.Edit;
                 if edit7.text<>'' then
                 query2.FieldByName('USPrice').Value:=query2.FieldByName('VNPrice').Value/strtoint(edit7.Text);
                 query2.Post;
              end;
            end;
            query2.Next;
        end;
        query2.first;
      end else
      begin
          query2.cachedupdates:=false;
          query2.requestlive:=false;
      end;
end;

procedure TPurtraceGC.Button1Click(Sender: TObject);
var ff:textfile;
    InputIsOk:boolean;
begin
  if ((not checkbox1.Checked) and (not checkbox2.Checked) and (not checkbox5.Checked) and (not GCCheckBox.Checked) ) then
  begin
      showmessage('Pls select TW / VN material first.') ;
      abort;
  end;
  if ((not checkbox3.Checked) and (not checkbox4.Checked) ) then
  begin
      showmessage('Pls select material purchased ok or not.') ;
      abort;
  end;

  //廠區因為訂單比較多訂單必須輸入5碼 或 3碼訂單+1碼材料 或6碼BuyNo+1碼材料
  InputIsOk:=false;
  if length(edit5.Text)>=5 then InputIsOk:=true;
  if ((length(edit5.Text)>=3) and (length(edit1.Text)>=1)) then InputIsOk:=true;
  if ((length(Edit8.Text)>=4) and (length(edit1.Text)>=1)) then InputIsOk:=true;
  if ((length(Edit8.Text)>=4) and (length(edit3.Text)>=1)) then InputIsOk:=true;
  if length(Edit8.Text)>=4 then InputIsOk:=true;  //先暫時可以查一整年
  if (cyear.text <> '0000')  and (cmonth.text <> '00') then  InputIsOk:=true;
  if InputIsOk=false then
  begin
     Showmessage('Input OrderNo(5) '+#13#10+'Input OrderNo(3) and MatNo(1)'+#13#10+'Input BuyNo(4) and MatNo(1)'+#13#10+'Input BuyNo(4) and SKU(1)');
     abort;
  end;

  // 檢查Check
  if CheckBox5.Checked=true then
  begin
     if trim(Edit5.Text)='' then
     begin
       Showmessage('Show Box,Pls input OrderNo!');
       abort;
     end;
  end;
  Purchase_DefaultVer1();
  InitTitleClick(true);//開啟TitelBtn click
end;



procedure TPurtraceGC.Button3Click(Sender: TObject);
begin
  printdbgrideh1.Preview;
end;

// 台灣採購資料
procedure TPurtraceGC.TWPurcahseDetailSQL(Query:TQuery);
begin

  with Query  do
  begin
    if (OrderType.ItemIndex=1) then
    begin
     sql.Add('      and CGHZZLS.cghzbh like ''LB%'''); //20140502區別正單和補單
    end else if (OrderType.ItemIndex=2) then
    begin
     sql.Add('      and CGHZZLS.cghzbh like ''RB%''');
    end;
  end;

end;


procedure TPurtraceGC.CheckBox5Click(Sender: TObject);
begin
   if checkbox5.Checked then
      begin
      checkbox1.checked:=false;
      checkbox2.Checked:=false;
      end;
end;

procedure TPurtraceGC.CheckBox2Click(Sender: TObject);
begin
   if checkbox2.Checked then
      checkbox5.Checked:=false;
end;

procedure TPurtraceGC.CheckBox1Click(Sender: TObject);
begin
   if checkbox1.Checked then
      checkbox5.Checked:=false;
end;

procedure TPurtraceGC.Button4Click(Sender: TObject);
begin
  showmessage('如果查不到資料，請檢查'+chr(13)+'1.採區是不是沒有異動，選擇TW再查一次'+chr(13)+'2.在BOM模組中的N32 VN BOM中的BOM，對應的DEF欄位是否設定為G  ');

end;
//DBGridEh 抬頭排序開啟和關閉
procedure TPurtraceGC.InitTitleClick(IsOpen:boolean);
var i:integer;
begin

  if IsOpen=false then
  begin
    for i:=0 to DBGridEh2.Columns.Count-1 do
      DBGridEh2.Columns[i].Title.TitleButton:=false;
  end else
  begin
    if ((Query2.Active=true) and (DBGridEh2.Columns[0].Title.TitleButton=false))then
      for i:=0 to DBGridEh2.Columns.Count-1 do
        DBGridEh2.Columns[i].Title.TitleButton:=true;
  end;
end;
procedure TPurtraceGC.FormCreate(Sender: TObject);
begin
  InitTitleClick(false);
end;


procedure TPurtraceGC.Query2AfterOpen(DataSet: TDataSet);
begin
  if query2.recordcount>0 then
  begin
    DBGrideh2.Columns[7].buttonstyle:=cbsellipsis;
    DBGrideh2.Columns[8].buttonstyle:=cbsellipsis;
    DBGrideh2.Columns[9].buttonstyle:=cbsellipsis;
  end
  else
    begin
      DBGrideh2.Columns[7].buttonstyle:=cbsnone;
      DBGrideh2.Columns[8].buttonstyle:=cbsnone;
      DBGrideh2.Columns[9].buttonstyle:=cbsnone;
    end;
end;

procedure TPurtraceGC.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query2.FieldByName('DDZT').AsString='C' then
  begin
    dbgrideh2.Canvas.Brush.Color:=clBtnFace;
    dbgrideh2.defaultdrawcolumncell(rect,datacol,column,state);

  end;
end;

procedure TPurtraceGC.DBGridEh2EditButtonClick(Sender: TObject);
begin
  PurtraceGC_Det:=TPurtraceGC_Det.create(self);
  PurtraceGC_Det.Query1.Active:=false;
  PurtraceGC_Det.Query1.DataSource:=DS2;
  if dbgrideh2.selectedfield.fieldname='CGQty' then
  begin
    with PurtraceGC_Det.Query1 do
      begin
        active:=false;
        sql.Clear;  
        sql.add('select CGHZZLS.dgdh as CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) as CGQty');
        sql.add('from CGHZZLS with (nolock)');
        //20140318 weston更改增加and CGHZZLS.Size=CGHZZLSS.Size
        sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
        //end edit
        sql.add('left join ZSZL on ZSZL.ZSDH=CGHZZLSS.ZSBH ');
        sql.add('where CGHZZLS.CLBH=:CLBH');
        sql.add('      and CGHZZLS.dg_Qty<>0');
        sql.add('      and CGHZZLS.ZLBH=:ZLBH');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(PurtraceGC_Det.Query1);
        sql.add('group by CGHZZLS.dgdh,ZSZL.ZSJC,ZSZL.ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH');
        sql.add('union all');
        sql.add('select CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty   ');
        sql.add('from CGZLSS  with (nolock)');
        sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
        sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
        sql.add('where CGZLSS.CLBH=:CLBH ');
        sql.add('      and CGZLSS.Qty <>0');
        sql.add('      and CGZLSS.ZLBH=:ZLBH');
        sql.add('group by CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH ');
        // memo1.Text:=sql.Text;
        active:=true;
        PurtraceGC_Det.DBGrideh1.columns[0].width:=100;
        PurtraceGC_Det.DBGrideh1.columns[1].width:=100;
        PurtraceGC_Det.DBGrideh1.columns[2].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[3].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[4].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[5].displayformat:='##,#0.0';
        PurtraceGC_Det.DBGrideh1.columns[5].width:=60;
      end;
  end;
       
if dbgrideh2.selectedfield.fieldname='RKQty' then
  begin
    with PurtraceGC_Det.Query1 do
      begin
        active:=false;
        sql.Clear;   
        sql.Add('select HG_INV.USERDate,HG_INV.HGRK as RKNO,HG_INV.DOCNO,HG_INVS.CGBH as ZLBH,HG_INVS.CLBH,sum(HG_INVS.Qty) as RKQty,''VN'' as Way');
        sql.Add('from HG_INVS  with (nolock)');
        sql.Add('left join HG_INV on HG_INV.RKNO=HG_INVS.RKNO');
        sql.Add('where HG_INVS.CLBH=:CLBH');
        sql.Add('and HG_INVS.CGBH=:ZLBH');
        sql.Add('and HG_INVS.Qty<>0');
        sql.Add('and HG_INV.HGRK is null');
       // TWPurcahseDetailSQL(PurtraceGC_Det.Query1);
        sql.add('group by HG_INV.USERDate,HG_INV.HGRK,HG_INV.DOCNO,HG_INVS.CGBH ,HG_INVS.CLBH');
        sql.add('union all');
        sql.add('select KCRK.USERDate,KCRKS.RKNO,KCRK.DOCNO,KCRKS.CGBH as ZLBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty,'+''''+'VN'+''''+' as Way ');
        sql.add('from KCRKS  with (nolock)');
        sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        sql.add('where KCRKS.CLBH=:CLBH ');
        sql.add('      and KCRKS.CGBH=:ZLBH ');
        sql.add('      and KCRKS.Qty<>0');
        sql.add('group by KCRK.USERDate,KCRKS.RKNO,KCRK.DOCNO,KCRKS.CGBH ,KCRKS.CLBH ');

        active:=true;
        PurtraceGC_Det.DBGrideh1.columns[0].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[0].displayformat:='yyyy/MM/dd';
        PurtraceGC_Det.DBGrideh1.columns[1].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[2].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[3].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[4].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[5].displayformat:='##,#0.0';
        PurtraceGC_Det.DBGrideh1.columns[5].width:=60;
        PurtraceGC_Det.DBGrideh1.columns[6].width:=40;
      end;
  end; 
if dbgrideh2.selectedfield.fieldname='UseStock' then
  begin
    with PurtraceGC_Det.Query1  do
      begin
        active:=false;
        sql.Clear;   
        sql.add('select CGKCUSE.ZLBH,CGKCUSE.CLBH,CGKCUSE.Qty as KCUseQty,CGKCUSE.CLBHYS ');
        sql.add('from CGKCUSE  ');
        sql.add('where  CGKCUSE.CLBH=:CLBH');
        sql.add('       and CGKCUSE.ZLBH=:ZLBH ');
        sql.add('order by ZLBH,CLBH');
        active:=true;
        PurtraceGC_Det.DBGrideh1.columns[0].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[1].width:=80;
        PurtraceGC_Det.DBGrideh1.columns[2].displayformat:='##,#0.0';
        PurtraceGC_Det.DBGrideh1.columns[2].width:=60;
        PurtraceGC_Det.DBGrideh1.columns[3].width:=80;
      end;
  end;

PurtraceGC_Det.show;
end;


procedure TPurtraceGC.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.FieldByName('CLSL').value=Query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value then
  begin
    dbgrideh2.canvas.font.color:=clBlue;
  end;
  if (((query2.FieldByName('CGQty').value>0) or (Query2.FieldByName('UseStock').value>0))
                    and (query2.FieldByName('CLSL').value>(query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value))) then
  begin
    if ((Query2.FieldByName('CGQty').value<>0) or (Query2.FieldByName('UseStock').value<>0)) then
    begin
      dbgrideh2.canvas.font.color:=clred;
    end;
  end;
  if Query2.FieldByName('CLSL').value<Query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value then
  begin
    dbgrideh2.canvas.font.color:=clgreen;
  end;
end;

procedure TPurtraceGC.Query2CalcFields(DataSet: TDataSet);
begin
  if CB5.Checked then
  begin
    if query2.FieldByName('ZMLB').AsString<>'Y' then  //ZZZZZZZZZZ加工項目
    begin
      with query2 do
      begin
        if fieldbyname('CGQty').AsString<>'0' then
        begin
          fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CGQty').Value;
          fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CGQty').Value;
        end else
        begin
          fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value;
          fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CLSL').Value;
        end;
      end;
    end else
    begin
      // 加工項目預計金額統計
      with query2 do
      begin
        if fieldbyname('CGQty').AsString<>'0' then
        begin
          fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('JGQty').Value;
          fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('JGQty').Value;
        end else
        begin
          fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value;
          fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CLSL').Value;
        end;
      end;
    end;
  end;
end;


procedure TPurtraceGC.Copy1Click(Sender: TObject);
var i,j:integer;
    tempList:TStringlist;
    str:string;
begin
  if Query2.Active=false then Exit;
  tempList:=TStringlist.Create;
  Query2.First;
  DBGridEh2.DataSource:=nil;
  for i:=0 to Query2.FieldCount-1 do
  begin
    str:=str+Query2.Fields[i].FieldName+char(9);
  end;
  tempList.Add(str);
  //
  for i:=0 to Query2.RecordCount-1 do
  begin
     str:='';
     for J:=0 to Query2.FieldCount-1 do
     begin
       str:=str+Query2.Fields[j].AsString+char(9);
     end;
     tempList.Add(str);
     Query2.Next;
  end;
  ClipBoard.AsText:=tempList.Text;
  tempList.Free;
  DBGridEh2.DataSource:=DS2;
  showmessage('Success');
end;

end.
