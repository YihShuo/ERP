unit Purtrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, Menus, ComCtrls, dateutils;

type
  TPurtrace = class(TForm)
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
    Query1: TQuery;
    DS1: TDataSource;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1CQDH: TStringField;
    Query1CGQty: TCurrencyField;
    Query1CLSL: TFloatField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1CGDate: TDateTimeField;
    Query1CGNO: TStringField;
    Query1UseStock: TCurrencyField;
    Query1RKNO: TStringField;
    Query1RKDate: TDateTimeField;
    Query1RKQty: TCurrencyField;
    Query1ShipDate: TDateTimeField;
    PrintDBGridEh1: TPrintDBGridEh;
    Button3: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TIntegerField;
    Query1USACC: TFloatField;
    CB5: TCheckBox;
    UpdateSQL1: TUpdateSQL;
    Label4: TLabel;
    Edit7: TEdit;
    CheckBox5: TCheckBox;
    CYear: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    CMonth: TComboBox;
    Button4: TButton;
    Query1get2com: TIntegerField;
    Query1com2cg: TIntegerField;
    Query1cg2rk: TIntegerField;
    Query1cgkpi: TIntegerField;
    Query1INDATE: TDateTimeField;
    Query1CLDATE: TDateTimeField;
    Query1OrderDate: TDateTimeField;
    Query1BUYNO: TStringField;
    PurchasePage: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query2BUYNO: TStringField;
    Query2ZLBH: TStringField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2ZWPM: TStringField;
    Query2DWBH: TStringField;
    Query2Article: TStringField;
    Query2XieMing: TStringField;
    Query2Pairs: TIntegerField;
    Query2CQDH: TStringField;
    Query2CGQty: TCurrencyField;
    Query2CLSL: TFloatField;
    Query2DCYN: TStringField;
    Query2DCDate: TDateTimeField;
    Query2DCCFM: TStringField;
    Query2PDYN: TStringField;
    Query2PDDate: TDateTimeField;
    Query2PDCFM: TStringField;
    Query2DCRSL: TStringField;
    Query2PDRSL: TStringField;
    DataColorGroup: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    UpdateSQL2: TUpdateSQL;
    Label10: TLabel;
    Edit8: TEdit;
    Query1zsjc: TStringField;
    Query2ZSJC: TStringField;
    lbKHPO: TLabel;
    edKHPO: TEdit;
    Query1CCGB: TStringField;
    lbDDGB: TLabel;
    edDDGB: TEdit;
    Query2DDGB: TStringField;
    Label11: TLabel;
    OrderType: TComboBox;
    DDZTCK: TCheckBox;
    Query1DDZT: TStringField;
    CancelCK: TCheckBox;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    Query3: TQuery;
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
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    UpdateSQL3: TUpdateSQL;
    DS3: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PurchasePageChange(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure Query3CalcFields(DataSet: TDataSet);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
  private
    IsChekcRSLOver:boolean;
    //分三個頁面
    procedure Purchase_Default();
    procedure Purchase_DefaultVer1();
    procedure Purchase_RSL();
    { Private declarations }
    procedure TWPurcahseSQL(Query:TQuery);
    procedure TWPurcahseDetailSQL(Query:TQuery);
    procedure InitTitleClick(IsOpen:boolean);
    function CheckRSLIsValid(const DCYN,PDYN,DCDate,PDDate,DCCFM,PDCFM:string;var PDInfo,DCInfo:string):byte;
  public
    { Public declarations }
  end;

var
  Purtrace: TPurtrace;

implementation

uses main1, Purtrace_Det1,FunUnit;

{$R *.dfm}

procedure TPurtrace.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPurtrace.FormDestroy(Sender: TObject);
begin
Purtrace:=nil;
end;

procedure TPurtrace.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    Qeruy:TQuery;
 begin
  if PurchasePage.ActivePageIndex=0 then Qeruy:=Query1;
  if PurchasePage.ActivePageIndex=1 then Qeruy:=Query3;
  //
  if  Qeruy.active  then
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
        for   i:=0   to   Qeruy.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Qeruy.fields[i].FieldName;
          end;

        Qeruy.First;
        j:=2;
        while   not   Qeruy.Eof   do
          begin
            for   i:=0   to  Qeruy.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Qeruy.Fields[i].Value;
            end;
          Qeruy.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;
//20140503台灣採購
procedure TPurtrace.TWPurcahseSQL(Query:TQuery);
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
            //20140502正單補單
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
            //20140502正單補單
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
            //20140502 區別正單和補單
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
procedure TPurtrace.Purchase_Default();
var ff:textfile;
begin
      with query1 do
      begin
        active:=false;
        sql.Clear;
        if  checkbox1.Checked then
          begin
            sql.add('Select * from ( ');
            sql.add(' select isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
            sql.add('        CLZl.CQDH,isnull(CGTW.CGQty,0) as CGQty,');
            //20150605 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGTW.YQDate,CGTW.CFMDate,');
            sql.add('        CGTW.CGDate,CGTW.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate,CGTW.USPrice,CGTW.VNPrice')  ;
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate') ;
            sql.Add('        ,convert(smalldatetime,zlzls2.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');
            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,(convert(int,zlzls2.userdate)-convert(int,ddzl.ddrq)) as get2com');
            sql.Add('    		 ,(convert(int,CGtw.CGDate)-convert(int,zlzls2.userdate)) as com2cg');
            sql.Add('    		 ,(convert(int,cgtw.RKDate)-convert(int,CGtw.CGDate)) as cg2rk');
            sql.Add('    		 ,(convert(int,CGtw.CFMDate)-convert(int,cgtw.RKDate)) as cgkpi');
            sql.add('        ,lbzls.ywsm'); //加入出貨國別star 2014.2.27
            //edit end
            sql.add('from ZLZLS2 with (nolock) ');
            //台灣採購SQL
            TWPurcahseSQL(query1);
            //20140318 weston更改
            sql.add('     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   ');
            //
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
            sql.add('      and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
            sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
            sql.add('      and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
            sql.add('      and XXZL.Article like '+''''+edit3.text+'%'+'''');
            sql.add('      and IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='''+main.edit2.Text+'''');
            if edKHPO.text <> '' then
              sql.add('      and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            sql.add('      and IsNULL(DDZLTW.BuyNO,'''') like '+'''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            sql.add('      and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZLTW.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZLTW.Shipdate)='+''''+cmonth.text+'''');  //出貨月
    //end edit
            sql.add('      and ZLZLS2.ZMLB='+''''+'N'+'''');  //只針對子材料
            sql.add('      and ZLZLS2.CLSL<>0');//數量不等於0
            sql.add('      and CLZL.CQDH='+''''+'TW'+'''');
            if CancelCK.Checked=false then
              sql.add('      and DDZLTW.DDZT<>''C'' ');
            //20140502 區別正單和補單
            if OrderType.ItemIndex=2 then  sql.Add('      and CGTW.CGQty is not null ');
            // 20140318 weston 更改 刪除 ZLZLS2.SIZE
            sql.add('group by DDZLTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
            //end edit
            sql.add('        CLZl.CQDH,CGTW.CGQty,CGTW.YQDate,CGTW.CFMDate,ddzl.userdate,');
            sql.add('        CGTW.CGDate,CGTW.CGNO,CGKCUSE.Qty,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate,CGTW.USPrice,CGTW.VNPrice')  ;
            sql.Add('		     ,ddzl.ddrq,zlzls2.userdate,lbzls.ywsm');
            if not (checkbox3.Checked and checkbox4.Checked )then
            begin
                sql.add('      having  ');
                if checkbox3.Checked then
                  begin
                    sql.add('          isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGTW.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
                if checkbox4.Checked then
                  begin
                    sql.add('          isnull(sum(ZLZLS2.CLSL),0)>isnull(CGTW.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
            end;
            sql.add(') ZLZLS2  ');

         if (checkbox1.Checked and checkbox2.Checked) or (checkbox1.Checked and checkbox5.Checked) then
           begin
            sql.add('union all');
           end;
          end;
        if  checkbox2.Checked then
          begin
            sql.add('Select * from ( ');
            sql.add('select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
            //20150605 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
            sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,');
            sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate,');
            sql.add('        isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,zlzls2.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,(convert(int,zlzls2.userdate)-convert(int,ddzl.ddrq)) as get2com');
            sql.Add('    		 ,(convert(int,CGZl.CGDate)-convert(int,zlzls2.userdate)) as com2cg');
            sql.Add('    		 ,(convert(int,RKZL.RKDate)-convert(int,CGZl.CGDate)) as cg2rk');
            sql.Add('    		 ,(convert(int,CGZL.CFMDate)-convert(int,RKZL.RKDate)) as cgkpi');
            sql.add('         ,lbzls.ywsm');//出貨國別 star 2014.2.27
            //edit end

            sql.add('from ZLZLS2  with (nolock) ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH ');
            sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
            sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
                //加載采購相關的數量及日期等數據
            sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
            sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPrice ');
            sql.add('           from CGZLSS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH = CGZLSS.ZLBH');
            sql.add('           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
            sql.add('           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            sql.add('                 and DDZL.GSBH='''+main.edit2.Text+'''');  //在子查詢加入廠別搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and CGZLSS.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and CGZLSS.ZLBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
            sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
              //加載入庫相關的數量及日期等數據
            sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
            sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
            sql.add('                  kcrks.usprice,kcrks.vnprice ');
            sql.add('           from  KCRKS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH=KCRKS.CGBH');
            sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
            sql.add('           where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if edit5.text <> '' then
              sql.add('                 and KCRKS.CGBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH,kcrks.usprice,kcrks.vnprice ) RKZL');
            sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
            sql.add('       where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZLTW.Shipdate)='''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZLTW.Shipdate)='''+cmonth.text+'''');  //出貨月
            if edit1.Text <> '' then
              sql.add('     and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            //不要買安全庫存類的材料
            sql.add('       and ZLZLS2.CLBH not like ''W%''');
            sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
            if edit5.text <> '' then
              sql.add('       and ZLZLS2.ZLBH like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edit8.Text <> '' then
              sql.add('       and IsNULL(DDZLTW.BuyNO,'''') like ''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edit4.Text <> '' then
              sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
            sql.add('       and ZLZLS2.ZMLB=''N''');
            sql.add('       and CLZL.CQDH=''VN''');
            if CancelCK.Checked=false then
              sql.add('       and DDZLTW.DDZT<>''C'' ');
            sql.add('       and SCZL.SCBH=SCZl.ZLBH ');
            sql.add('       and SCZL.SCBH is not null ');
            sql.add('       and ZLZLS2.CLSL<>0') ;
            //加上不要開發材料分類到無需領料的部分
            sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');

            if edKHPO.Text <> '' then
              sql.add('     and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');

    //end edit

            sql.add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
            sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
            sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate, ');
            sql.add('         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice');
            sql.add('		      ,ddzl.ddrq,zlzls2.userdate,lbzls.ywsm');
            if not (checkbox3.Checked and checkbox4.Checked )then
            begin
                sql.add('      having  ');
                if checkbox3.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
                if checkbox4.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
            end;
            sql.add(') ZLZLS2  ');
          end;

    {Edit by BillWeng 2009/12/16 加入外箱
    //START }

        if (checkbox2.Checked and checkbox5.Checked) then sql.add('union all');

        if  checkbox5.Checked then
          begin
            sql.add('Select * from ( ');  //20150609 weston  修改BOX
            sql.add('select isnull(DDZLTW.BUYNO,0) as BUYNO,ywbzpo.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH ,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,convert(decimal,sum(ywbzpo.cts)) as CGQty,0.0 as clsl,getdate() as YQDate,');
            sql.add('         getdate() as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('         max(CGZL.CGNO) as CGNO,0.0 as usestock,RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate,');
            sql.add('           isnull(rkzl.USPrice,0) as USPrice,isnull(rkzl.VNPrice,0) as VNPrice   ');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,ywbzpo.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,null as get2com');
            sql.Add('    		 ,null as com2cg');
            sql.Add('    		 ,null as cg2rk');
            sql.Add('    		 ,null as cgkpi');
            sql.add('       ,lbzls.ywsm');//出貨國別 star 2014.2.27
            //edit end
            sql.add('from ywbzpo  with (nolock) ');
            sql.add('left join ywdd on ywbzpo.ddbh = ywdd.ddbh');
            sql.add('left join CGZL  with (nolock) on CGZL.CGNO=ywdd.CGNO ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ywbzpo.CLBH ');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ywbzpo.ddbh ');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.ZLBH=ywbzpo.ddbh');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add(' left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,');
            sql.add(' max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate,usprice,vnprice  ');
            sql.add(' from  KCRKS with (nolock) ');
            sql.add(' left join DDZL on DDZL.DDBH = KCRKS.CGBH');
            sql.add('left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.Text <> '0000' then
              sql.add('                 and  year(DDZL.Shipdate)='+cyear.Text);         //在子查詢加入日期搜尋 2014.1.24 star
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
              sql.add('                 and ywbzpo.ddbh like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by ywbzpo.ddbh,ywbzpo.CLBH ) zlzls2');
            sql.add('                 on ywbzpo.ddbh=ZLZLS2.ZLBH and ywbzpo.CLBH=ZLZLS2.CLBH ');
            sql.add('       where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='+''''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZLTW.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZLTW.Shipdate)='+''''+cmonth.text+'''');  //出貨月
            if edit5.text <> '' then
              sql.add('       and ywbzpo.ddbh like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like '''+'%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edKHPO.Text <> '' then
              sql.add('       and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edit8.Text <> '' then
              sql.add('       and IsNULL(DDZLTW.BuyNO,'''') like '+'''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edDDGB.text <> '' then
              sql.add('      and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            if CancelCK.Checked=false then
              sql.add('      and DDZLTW.DDZT<>''C'' ');
    //end edit

            sql.add(' group by DDZLTW.BUYNO,ywbzpo.DDBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,XXZL.Article,XXZL.XieMing,');
            sql.add(' DDZL.Pairs,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate,');
            sql.add(' rkzl.USPrice,rkzl.VNPrice ');
            sql.Add(' ,ddzl.userdate,ddzl.ddrq,ywbzpo.userdate,lbzls.ywsm');
            sql.add(') ZLZLS2  '); //20150609 weston  修改BOX
            if ((edit1.Text <> '') and (UpperCase(Copy(edit1.Text,1,1))='U')) then
            sql.add(' where ZLZLS2.CLBH like '''+edit1.Text+'%''');
          end;

    // End of edit   }
        sql.add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH ');

        assignfile(ff,'sql.txt');
        rewrite(ff);
        writeln(ff,sql.text);
        closefile(ff);
       // memo1.Text:=sql.Text;
        active:=true;
      end;
    if CB5.Checked then
      begin
        while not query1.eof do
          begin
            query1.cachedupdates:=true;
            query1.requestlive:=true;
            if not query1.FieldByName('CGDate').IsNull then
              begin
                 if ( (not query1.FieldByName('USPrice').IsNull) and ( query1.FieldByName('USPrice').value<>0) ) then
                   begin
                     query1.Edit;
                     if edit7.text<>'' then
                     query1.FieldByName('VNPrice').Value:=query1.FieldByName('USPrice').Value* strtoint(edit7.Text);
                     query1.Post;
                   end;
                 if ( (not query1.FieldByName('VNPrice').IsNull) and (query1.FieldByName('VNPrice').value<>0) ) then
                   begin
                     query1.Edit;
                     if edit7.text<>'' then
                     query1.FieldByName('USPrice').Value:=query1.FieldByName('VNPrice').Value/strtoint(edit7.Text);
                     query1.Post;
                   end;
                   //end;
              end;
            query1.Next;
          end;
        query1.first;
      end else
      begin
          query1.cachedupdates:=false;
          query1.requestlive:=false;
      end;
end;
//
procedure TPurtrace.Purchase_DefaultVer1();
var ff:textfile;
begin
 with query3 do
      begin
        active:=false;
        sql.Clear;
        if  checkbox1.Checked then
          begin
            sql.add('Select * from ( ');
            sql.add('select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
            //20150605 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
            sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,');
            sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate,');
            sql.add('        isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,zlzls2.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,(convert(int,zlzls2.userdate)-convert(int,ddzl.ddrq)) as get2com');
            sql.Add('    		 ,(convert(int,CGZl.CGDate)-convert(int,zlzls2.userdate)) as com2cg');
            sql.Add('    		 ,(convert(int,RKZL.RKDate)-convert(int,CGZl.CGDate)) as cg2rk');
            sql.Add('    		 ,(convert(int,CGZL.CFMDate)-convert(int,RKZL.RKDate)) as cgkpi');
            sql.add('         ,lbzls.ywsm');//出貨國別 star 2014.2.27
            //edit end

            sql.add('from ZLZLS2  with (nolock) ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH ');
            sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
            sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
                //加載采購相關的數量及日期等數據
            sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
            sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPrice ');
            sql.add('           from CGZLSS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH = CGZLSS.ZLBH');
            sql.add('           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
            sql.add('           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            sql.add('                 and DDZL.GSBH='''+main.edit2.Text+'''');  //在子查詢加入廠別搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and CGZLSS.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and CGZLSS.ZLBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
            sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
              //加載入庫相關的數量及日期等數據
            sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
            sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
            sql.add('                  kcrks.usprice,kcrks.vnprice ');
            sql.add('           from  KCRKS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH=KCRKS.CGBH');
            sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
            sql.add('           where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if edit5.text <> '' then
              sql.add('                 and KCRKS.CGBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH,kcrks.usprice,kcrks.vnprice ) RKZL');
            sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
            sql.add('       where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZLTW.Shipdate)='''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZLTW.Shipdate)='''+cmonth.text+'''');  //出貨月
            if edit1.Text <> '' then
              sql.add('     and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            //不要買安全庫存類的材料
            sql.add('       and ZLZLS2.CLBH not like ''W%''');
            sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
            if edit5.text <> '' then
              sql.add('       and ZLZLS2.ZLBH like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edit8.Text <> '' then
              sql.add('       and IsNULL(DDZLTW.BuyNO,'''') like ''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edit4.Text <> '' then
              sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
            sql.add('       and ZLZLS2.ZMLB=''N''');
            sql.add('       and CLZL.CQDH=''TW''');
            if CancelCK.Checked=false then
              sql.add('       and DDZLTW.DDZT<>''C'' ');
            sql.add('       and SCZL.SCBH=SCZl.ZLBH ');
            sql.add('       and SCZL.SCBH is not null ');
            sql.add('       and ZLZLS2.CLSL<>0') ;
            //加上不要開發材料分類到無需領料的部分
            sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');

            if edKHPO.Text <> '' then
              sql.add('     and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');

    //end edit

            sql.add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
            sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
            sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate, ');
            sql.add('         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice');
            sql.add('		      ,ddzl.ddrq,zlzls2.userdate,lbzls.ywsm');
            if not (checkbox3.Checked and checkbox4.Checked )then
            begin
                sql.add('      having  ');
                if checkbox3.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
                if checkbox4.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
            end;
            sql.add(') ZLZLS2  ');
          end;

          if (checkbox1.Checked and checkbox2.Checked) or (checkbox1.Checked and checkbox5.Checked) then
          begin
            sql.add('union all');
          end;
          if  checkbox2.Checked then
          begin
            sql.add('Select * from ( ');
            sql.add('select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
            //20150605 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
            sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,');
            sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate,');
            sql.add('        isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,zlzls2.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,(convert(int,zlzls2.userdate)-convert(int,ddzl.ddrq)) as get2com');
            sql.Add('    		 ,(convert(int,CGZl.CGDate)-convert(int,zlzls2.userdate)) as com2cg');
            sql.Add('    		 ,(convert(int,RKZL.RKDate)-convert(int,CGZl.CGDate)) as cg2rk');
            sql.Add('    		 ,(convert(int,CGZL.CFMDate)-convert(int,RKZL.RKDate)) as cgkpi');
            sql.add('         ,lbzls.ywsm');//出貨國別 star 2014.2.27
            //edit end

            sql.add('from ZLZLS2  with (nolock) ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH ');
            sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
            sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
                //加載采購相關的數量及日期等數據
            sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
            sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPrice ');
            sql.add('           from CGZLSS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH = CGZLSS.ZLBH');
            sql.add('           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
            sql.add('           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            sql.add('                 and DDZL.GSBH='''+main.edit2.Text+'''');  //在子查詢加入廠別搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and CGZLSS.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and CGZLSS.ZLBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
            sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
              //加載入庫相關的數量及日期等數據
            sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
            sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
            sql.add('                  kcrks.usprice,kcrks.vnprice ');
            sql.add('           from  KCRKS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH=KCRKS.CGBH');
            sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
            sql.add('           where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.text <> '00' then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if edit5.text <> '' then
              sql.add('                 and KCRKS.CGBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH,kcrks.usprice,kcrks.vnprice ) RKZL');
            sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
            sql.add('       where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZLTW.Shipdate)='''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZLTW.Shipdate)='''+cmonth.text+'''');  //出貨月
            if edit1.Text <> '' then
              sql.add('     and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            //不要買安全庫存類的材料
            sql.add('       and ZLZLS2.CLBH not like ''W%''');
            sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
            if edit5.text <> '' then
              sql.add('       and ZLZLS2.ZLBH like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edit8.Text <> '' then
              sql.add('       and IsNULL(DDZLTW.BuyNO,'''') like ''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edit4.Text <> '' then
              sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
            sql.add('       and ZLZLS2.ZMLB=''N''');
            sql.add('       and CLZL.CQDH=''VN''');
            if CancelCK.Checked=false then
              sql.add('       and DDZLTW.DDZT<>''C'' ');
            sql.add('       and SCZL.SCBH=SCZl.ZLBH ');
            sql.add('       and SCZL.SCBH is not null ');
            sql.add('       and ZLZLS2.CLSL<>0') ;
            //加上不要開發材料分類到無需領料的部分
            sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');

            if edKHPO.Text <> '' then
              sql.add('     and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');

    //end edit

            sql.add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
            sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
            sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate, ');
            sql.add('         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice');
            sql.add('		      ,ddzl.ddrq,zlzls2.userdate,lbzls.ywsm');
            if not (checkbox3.Checked and checkbox4.Checked )then
            begin
                sql.add('      having  ');
                if checkbox3.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
                if checkbox4.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
            end;
            sql.add(') ZLZLS2  ');
          end;

    {Edit by BillWeng 2009/12/16 加入外箱
    //START }

        if (checkbox2.Checked and checkbox5.Checked) then sql.add('union all');

        if  checkbox5.Checked then
          begin
            sql.add('Select * from ( ');  //20150609 weston  修改BOX
            sql.add('select isnull(DDZLTW.BUYNO,0) as BUYNO,ywbzpo.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH ,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,convert(decimal,sum(ywbzpo.cts)) as CGQty,0.0 as clsl,getdate() as YQDate,');
            sql.add('         getdate() as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('         max(CGZL.CGNO) as CGNO,0.0 as usestock,RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate,');
            sql.add('           isnull(rkzl.USPrice,0) as USPrice,isnull(rkzl.VNPrice,0) as VNPrice   ');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,ywbzpo.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,null as get2com');
            sql.Add('    		 ,null as com2cg');
            sql.Add('    		 ,null as cg2rk');
            sql.Add('    		 ,null as cgkpi');
            sql.add('       ,lbzls.ywsm');//出貨國別 star 2014.2.27
            //edit end
            sql.add('from ywbzpo  with (nolock) ');
            sql.add('left join ywdd on ywbzpo.ddbh = ywdd.ddbh');
            sql.add('left join CGZL  with (nolock) on CGZL.CGNO=ywdd.CGNO ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ywbzpo.CLBH ');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ywbzpo.ddbh ');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.ZLBH=ywbzpo.ddbh');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add(' left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,');
            sql.add(' max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate,usprice,vnprice  ');
            sql.add(' from  KCRKS with (nolock) ');
            sql.add(' left join DDZL on DDZL.DDBH = KCRKS.CGBH');
            sql.add('left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            if cyear.Text <> '0000' then
              sql.add('                 and  year(DDZL.Shipdate)='+cyear.Text);         //在子查詢加入日期搜尋 2014.1.24 star
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
              sql.add('                 and ywbzpo.ddbh like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by ywbzpo.ddbh,ywbzpo.CLBH ) zlzls2');
            sql.add('                 on ywbzpo.ddbh=ZLZLS2.ZLBH and ywbzpo.CLBH=ZLZLS2.CLBH ');
            sql.add('       where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='+''''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZLTW.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZLTW.Shipdate)='+''''+cmonth.text+'''');  //出貨月
            if edit5.text <> '' then
              sql.add('       and ywbzpo.ddbh like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like '''+'%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edKHPO.Text <> '' then
              sql.add('       and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edit8.Text <> '' then
              sql.add('       and IsNULL(DDZLTW.BuyNO,'''') like '+'''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edDDGB.text <> '' then
              sql.add('      and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            if CancelCK.Checked=false then
              sql.add('      and DDZLTW.DDZT<>''C'' ');
    //end edit

            sql.add(' group by DDZLTW.BUYNO,ywbzpo.DDBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,XXZL.Article,XXZL.XieMing,');
            sql.add(' DDZL.Pairs,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate,');
            sql.add(' rkzl.USPrice,rkzl.VNPrice ');
            sql.Add(' ,ddzl.userdate,ddzl.ddrq,ywbzpo.userdate,lbzls.ywsm');
            sql.add(') ZLZLS2  '); //20150609 weston  修改BOX
            if ((edit1.Text <> '') and (UpperCase(Copy(edit1.Text,1,1))='U')) then
            sql.add(' where ZLZLS2.CLBH like '''+edit1.Text+'%''');
          end;

    // End of edit   }
        sql.add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH ');

        assignfile(ff,'sql.txt');
        rewrite(ff);
        writeln(ff,sql.text);
        closefile(ff);
       // memo1.Text:=sql.Text;
        active:=true;
      end;
    if CB5.Checked then
      begin
        while not query3.eof do
          begin
            query3.cachedupdates:=true;
            query3.requestlive:=true;
            if not query3.FieldByName('CGDate').IsNull then
              begin

                     if ( (not query3.FieldByName('USPrice').IsNull) and ( query3.FieldByName('USPrice').value<>0) ) then
                       begin
                         query3.Edit;
                         if edit7.text<>'' then
                         query3.FieldByName('VNPrice').Value:=query3.FieldByName('USPrice').Value* strtoint(edit7.Text) ;
                         query3.Post;
                       end;
                     if ( (not query3.FieldByName('VNPrice').IsNull) and (query3.FieldByName('VNPrice').value<>0) ) then
                       begin
                         query3.Edit;
                         if edit7.text<>'' then
                         query3.FieldByName('USPrice').Value:=query3.FieldByName('VNPrice').Value/strtoint(edit7.Text);
                         query3.Post;
                       end;

              end;
            query3.Next;
          end;
        query3.first;
      end else
      begin
          query3.cachedupdates:=false;
          query3.requestlive:=false;
      end;
end;
//
procedure TPurtrace.Purchase_RSL();
var ff:textfile;
begin
 with query2 do
      begin
        active:=false;
        sql.Clear;
        if  checkbox1.Checked then
          begin
            sql.add(' select isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
            sql.add('        CLZl.CQDH,isnull(CGTW.CGQty,0) as CGQty,isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            //20131204 weston
            sql.Add('        CLZL.DCYN,RSTList.DCDate,RSTList.DCCFM,CLZL.PDYN,RSTList.PDDate,RSTList.PDCFM,''              '' as DCRSL,''              '' as PDRSL ');
            //

            sql.add(',lbzls.ywsm'); //出貨國別 star 2014.2.27
            sql.add('from ZLZLS2 with (nolock) ');
            //台灣採購SQL
            TWPurcahseSQL(query2);
            //
            sql.add('     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   ');
            //
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
            //20131204 weston 增加RSL 提醒
            sql.Add('left join RSTList on CLZL.cldh = RSTList.cldh ');
            //20140301 顯示出貨國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
            sql.add('      and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
            sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
            sql.add('      and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
            sql.add('      and XXZL.Article like '+''''+edit3.text+'%'+'''');
            sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
            sql.add('      and IsNULL(DDZL.BuyNO,'''') like '+'''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            sql.add('      and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZL.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZL.Shipdate)='+''''+cmonth.text+'''');  //出貨月
    //end edit
            sql.add('      and ZLZLS2.ZMLB='+''''+'N'+'''');  //只針對子材料
            sql.add('      and ZLZLS2.CLSL<>0');//數量不等於0
            sql.add('      and CLZL.CQDH='+''''+'TW'+'''');
            //20140502 區別正單和補單
            if OrderType.ItemIndex=2 then  sql.Add('      and CGTW.CGQty is not null ');            
            if edKHPO.Text <> '' then
              sql.add('    and DDZL.KHPO like ''%'+edKHPO.Text+'%''');

            if edDDGB.text <> '' then
              sql.add('      and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            // 20140318 weston 更改 刪除 ZLZLS2.SIZE
            //sql.add('group by DDZL.BUYNO,ZLZLS2.ZLBH,DDZL.KHPO,ZLZLS2.CLBH,ZLZLS2.SIZE,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
            sql.add('group by DDZL.BUYNO,ZLZLS2.ZLBH,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
            //end edit
            sql.add('        CLZl.CQDH,CGTW.CGQty,CGTW.YQDate,CGTW.CFMDate,ddzl.userdate ');
            //20131204 RSL 資訊
            sql.add('        ,CLZL.DCYN,RSTList.DCdate,RSTList.DCCFM,CLZL.PDYN,RSTList.PDdate,RSTList.PDCFM,lbzls.ywsm ');
            //
            {
            if not (checkbox3.Checked and checkbox4.Checked )then
              begin
                sql.add('      having  ');
                if checkbox3.Checked then
                  begin
                    sql.add('          isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGTW.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
                if checkbox4.Checked then
                  begin
                    sql.add('          isnull(sum(ZLZLS2.CLSL),0)>isnull(CGTW.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
              end;
            }
         if (checkbox1.Checked and checkbox2.Checked) or (checkbox1.Checked and checkbox5.Checked) then
           begin
            sql.add('union all');
           end;
          end;
        if  checkbox2.Checked then
          begin
            sql.add('select  isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
            sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL');
            //20131204 weston
            sql.Add('        ,CLZL.DCYN,RSTList.DCDate,RSTList.DCCFM,CLZL.PDYN,RSTList.PDDate,RSTList.PDCFM,''              '' as DCRSL,''              '' as PDRSL ');
            //
            sql.add(',lbzls.ywsm');
            sql.add('from ZLZLS2  with (nolock) ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
            sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH ');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
            //20131204 weston 增加RSL 提醒
            sql.Add('left join RSTList on CLZL.cldh = RSTList.cldh ');
            //
            sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
            sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            sql.add('left join zszl with (nolock) on zszl.zsdh = zlzls2.CSBH');   //加入廠商名稱 star 2014.2.24
            //20140301 weston 顯示出貨國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
                //加載采購相關的數量及日期等數據
            sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
            sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPrice ');
            sql.add('           from CGZLSS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH = CGZLSS.ZLBH');
            sql.add('           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
            sql.add('           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');
            if cyear.text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='''+cyear.Text+'''');
            if cmonth.Text <> '00' then
              sql.add('                 and month(DDZL.shipdate)='''+cmonth.text+'''');
            if edit1.Text <> '' then
              sql.add('                 and CGZLSS.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and CGZLSS.ZLBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
            sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
              //加載入庫相關的數量及日期等數據
            sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
            sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
            sql.add('                  kcrks.usprice,kcrks.vnprice ');
            sql.add('           from  KCRKS with (nolock) ');
            sql.add('           left join DDZL on DDZL.DDBH = KCRKS.CGBH');
            sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');
            if cyear.Text <> '0000' then
              sql.add('                 and year(DDZL.Shipdate)='''+cyear.Text+'''');
            if cmonth.Text <> '00' then
              sql.add('                 and month(DDZL.shipdate)='''+cmonth.text+'''');
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if edit5.Text <> '' then
              sql.add('                 and KCRKS.CGBH like '''+edit5.Text+'%''');
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH,kcrks.usprice,kcrks.vnprice ) RKZL');
            sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
            sql.add('       where DDZL.GSBH='''+main.edit2.Text+'''');
            if edit1.Text <> '' then
              sql.add('and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            //不要買安全庫存類的材料
            sql.add('       and ZLZLS2.CLBH not like '+''''+'W%'+'''');
            sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
            //sql.add('       and ZLZLS2.XH<>'+''''+'VN'+'''');
            if edit5.Text <> '' then
              sql.add('       and ZLZLS2.ZLBH like '''+edit5.Text+'%''');
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edit8.Text <> '' then
              sql.add('       and IsNULL(DDZL.BuyNO,'''') like ''%'+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edit4.text <> '' then
              sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
            sql.add('       and ZLZLS2.ZMLB=''N''');
            sql.add('       and CLZL.CQDH=''VN''');
            sql.add('       and SCZL.SCBH=SCZl.ZLBH ');
            sql.add('       and SCZL.SCBH is not null ');
            sql.add('       and ZLZLS2.CLSL<>0') ;
            //加上不要開發材料分類到無需領料的部分
            sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');

    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex <> 0 then
               sql.add('      and year(DDZL.Shipdate)='''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex <> 0 then
               sql.add('      and month(DDZL.Shipdate)='''+cmonth.text+'''');  //出貨月

            if edKHPO.Text <> '' then
              sql.add('       and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
              sql.add('      and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
    //end edit

            sql.add('group by DDZl.BUYNO,ZLZLS2.ZLBH,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
            sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGZl.CGQty,');
            //20131204 RSL 資訊
            sql.add('             CLZL.DCYN,RSTList.DCdate,RSTList.DCCFM,CLZL.PDYN,RSTList.PDdate,RSTList.PDCFM,lbzls.ywsm');
            {
            if not (checkbox3.Checked and checkbox4.Checked )then
              begin
                sql.add('      having  ');
                if checkbox3.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
                if checkbox4.Checked then
                  begin
                    sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                  end;
              end;
            }
          end;
        sql.add('order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH ');
        //memo1.Text:=sql.text;
        assignfile(ff,'sql.txt');
        rewrite(ff);
        writeln(ff,sql.text);
        closefile(ff);

        active:=true;
      end;
end;
//
procedure TPurtrace.Button1Click(Sender: TObject);
var ff:textfile;
begin
  if ((not checkbox1.Checked) and (not checkbox2.Checked) and (not checkbox5.Checked) ) then
    begin
      showmessage('Pls select TW / VN material first.') ;
      abort;
    end;
  if ((not checkbox3.Checked) and (not checkbox4.Checked)) then
    begin
      showmessage('Pls select material purchased ok or not.') ;
      abort;
    end;
  if ((length(edit1.Text)<3) and (length(edit5.Text)<3) and ((cyear.ItemIndex=0) and (cmonth.ItemIndex=0)) and (trim(edit8.Text)='')  and (edKHPO.Text = ''))  then
    begin
      showmessage('Pls setup condition first!');
      abort;
    end;
  //20150609 檢查Check
  if CheckBox5.Checked=true then
  begin
     if trim(Edit5.Text)='' then
     begin
       Showmessage('Show Box,Pls input OrderNo!');
       abort;
     end;
  end;
  //原本沒有RSL資訊DBGrid顯示
  if PurchasePage.ActivePageIndex=0 then
  begin
    Purchase_Default();
  end else if PurchasePage.ActivePageIndex=1 then
  begin
    Purchase_DefaultVer1();
  //RSL 資訊顯示
  end else if PurchasePage.ActivePageIndex=2 then
  begin
    Purchase_RSL();
  end;
  InitTitleClick(true);//開啟TitelBtn click
end;

procedure TPurtrace.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if Query1.FieldByName('CLSL').value=Query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
  if (((query1.FieldByName('CGQty').value>0) or (Query1.FieldByName('UseStock').value>0))
                    and (query1.FieldByName('CLSL').value>(query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value))) then
  begin
    if ((Query1.FieldByName('CGQty').value<>0) or (Query1.FieldByName('UseStock').value<>0)) then
    begin
      dbgrideh1.canvas.font.color:=clred;
    end;
  end;
  if Query1.FieldByName('CLSL').value<Query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value then
  begin
    dbgrideh1.canvas.font.color:=clgreen;
  end;

end;

procedure TPurtrace.Button3Click(Sender: TObject);
begin
  printdbgrideh1.Preview;
end;

procedure TPurtrace.Query1AfterOpen(DataSet: TDataSet);
begin
    if query1.recordcount>0 then
      begin
        DBGrideh1.Columns[7].buttonstyle:=cbsellipsis;
        DBGrideh1.Columns[8].buttonstyle:=cbsellipsis;
        DBGrideh1.Columns[9].buttonstyle:=cbsellipsis;
      end
      else
        begin
          DBGrideh1.Columns[7].buttonstyle:=cbsnone;
          DBGrideh1.Columns[8].buttonstyle:=cbsnone;
          DBGrideh1.Columns[9].buttonstyle:=cbsnone;
        end;
end;
//201405605 台灣採購資料
procedure TPurtrace.TWPurcahseDetailSQL(Query:TQuery);
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

procedure TPurtrace.DBGridEh1EditButtonClick(Sender: TObject);
begin
Purtrace_Det:=TPurtrace_Det.create(self);
Purtrace_Det.Query1.Active:=false;
Purtrace_Det.Query1.DataSource:=DS1;
if dbgrideh1.selectedfield.fieldname='CGQty' then
  begin
    with Purtrace_Det.Query1 do
      begin
        active:=false;
        sql.Clear;  
        sql.add('select CGHZZLS.dgdh as CGNO,ZSZL.ZSJC as ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) as CGQty');
        sql.add('from CGHZZLS with (nolock)');
        //20140318 weston更改增加and CGHZZLS.Size=CGHZZLSS.Size
        sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
        //end edit
        sql.add('left join ZSZL on ZSZL.ZSDH=CGHZZLSS.ZSBH ');
        sql.add('where CGHZZLS.CLBH=:CLBH');
        sql.add('      and CGHZZLS.dg_Qty<>0');
        sql.add('      and CGHZZLS.ZLBH=:ZLBH');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(Purtrace_Det.Query1);
        sql.add('group by CGHZZLS.dgdh,ZSZL.ZSJC,CGHZZLS.ZLBH,CGHZZLS.CLBH');
        sql.add('union all'); 
        sql.add('select CGZLSS.CGNO,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty   ');
        sql.add('from CGZLSS  with (nolock)');
        sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
        sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
        sql.add('where CGZLSS.CLBH=:CLBH ');
        sql.add('      and CGZLSS.Qty <>0');
        sql.add('      and CGZLSS.ZLBH=:ZLBH');
        sql.add('group by CGZLSS.CGNO,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH ');
        sql.add('order by CGZLSS.CGNO');
        //memo1.Text:=sql.Text;
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=100;
        Purtrace_Det.DBGrideh1.columns[1].width:=100;
        Purtrace_Det.DBGrideh1.columns[2].width:=80;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
        Purtrace_Det.DBGrideh1.columns[4].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[4].width:=60;
      end;
  end;
       
if dbgrideh1.selectedfield.fieldname='RKQty' then
  begin
    with Purtrace_Det.Query1 do
      begin
        active:=false;
        sql.Clear;   
        sql.add('SELECT convert(smalldatetime,HGZL.CON_Date) as USERDate,HGZL.CON_NO as RKNO,EXZLSS.ZLBH,EXZLSS.CLDH as CLBH');
        sql.add('       , sum(EXZLSS.CK_Qty) as RKQty,HGZL.lbdh07 as Way');
        sql.add('FROM EXZLSS');
        sql.add('left join HGZLS on HGZLS.CLBH=EXZLSS.EXNO+EXZLSS.XH ');
        sql.add('left join HGZL on HGZL.CON_NO=HGZLS.CON_NO ');
        sql.Add('left join CGHZZLS on CGHZZLS.dgdh=EXZLSS.dgdh and CGHZZLS.clbh   = EXZLSS.cldh  AND CGHZZLS.ZLBH   = EXZLSS.ZLBH  and CGHZZLS.size=EXZLSS.size ');
        sql.add('where EXZLSS.CLDH =:CLBH');
        sql.add('      and EXZLSS.ZLBH=:ZLBH ');
        sql.add('      and EXZLSS.CK_Qty<>0');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(Purtrace_Det.Query1);
        sql.add('group by HGZL.CON_Date,HGZL.CON_NO ,EXZLSS.ZLBH,EXZLSS.CLDH,HGZL.lbdh07');
        sql.add('union all');  
        sql.add('select KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH as ZLBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty,'+''''+'VN'+''''+' as Way ');
        sql.add('from KCRKS  with (nolock)');
        sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        sql.add('where KCRKS.CLBH=:CLBH ');
        sql.add('      and KCRKS.CGBH=:ZLBH ');
        sql.add('      and KCRKS.Qty<>0');
        sql.add('group by KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH ,KCRKS.CLBH ');
        sql.add('order by KCRK.USERDate,KCRKS.RKNO');
        //memo1.Text:=sql.Text;
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=80;
        Purtrace_Det.DBGrideh1.columns[0].displayformat:='yyyy/MM/dd';
        Purtrace_Det.DBGrideh1.columns[1].width:=80;
        Purtrace_Det.DBGrideh1.columns[2].width:=80;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
        Purtrace_Det.DBGrideh1.columns[4].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[4].width:=60;   
        Purtrace_Det.DBGrideh1.columns[5].width:=40;
      end;
  end; 
if dbgrideh1.selectedfield.fieldname='UseStock' then
  begin
    with Purtrace_Det.Query1  do
      begin
        active:=false;
        sql.Clear;   
        sql.add('select CGKCUSE.ZLBH,CGKCUSE.CLBH,CGKCUSE.Qty as KCUseQty,CGKCUSE.CLBHYS ');
        sql.add('from CGKCUSE  ');
        sql.add('where  CGKCUSE.CLBH=:CLBH');
        sql.add('       and CGKCUSE.ZLBH=:ZLBH ');
        sql.add('order by ZLBH,CLBH');
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=80;
        Purtrace_Det.DBGrideh1.columns[1].width:=80;
        Purtrace_Det.DBGrideh1.columns[2].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[2].width:=60;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
      end;
  end;

Purtrace_Det.show;
end;

procedure TPurtrace.Query1CalcFields(DataSet: TDataSet);
begin
  if CB5.Checked then
  begin
    with query1 do
      begin
        fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CGQty').Value;
        fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CGQty').Value;
      end;
  end;
end;

procedure TPurtrace.CheckBox5Click(Sender: TObject);
begin
   if checkbox5.Checked then
      begin
      checkbox1.checked:=false;
      checkbox2.Checked:=false;
      end;
end;

procedure TPurtrace.CheckBox2Click(Sender: TObject);
begin
   if checkbox2.Checked then
      checkbox5.Checked:=false;
end;

procedure TPurtrace.CheckBox1Click(Sender: TObject);
begin
   if checkbox1.Checked then
      checkbox5.Checked:=false;
end;

procedure TPurtrace.Button4Click(Sender: TObject);
begin
  showmessage('如果查不到資料，請檢查'+chr(13)+'1.採區是不是沒有異動，選擇TW再查一次'+chr(13)+'2.在BOM模組中的N32 VN BOM中的BOM，對應的DEF欄位是否設定為G  ');

end;
//DBGridEh 抬頭排序開啟和關閉
procedure TPurtrace.InitTitleClick(IsOpen:boolean);
var i:integer;
begin

  if IsOpen=false then
  begin
    for i:=0 to DBGridEh1.Columns.Count-1 do
      DBGridEh1.Columns[i].Title.TitleButton:=false;
    for i:=0 to DBGridEh2.Columns.Count-1 do
      DBGridEh2.Columns[i].Title.TitleButton:=false;
  end else
  begin
    if ((Query1.Active=true) and (DBGridEh1.Columns[0].Title.TitleButton=false))then
      for i:=0 to DBGridEh1.Columns.Count-1 do
        DBGridEh1.Columns[i].Title.TitleButton:=true;
    if ((Query2.Active=true) and (DBGridEh2.Columns[0].Title.TitleButton=false))then
      for i:=0 to DBGridEh2.Columns.Count-3 do
        DBGridEh2.Columns[i].Title.TitleButton:=true;
  end;
end;
procedure TPurtrace.FormCreate(Sender: TObject);
begin
  if ((main.Edit2.Text='VA12') OR (main.Edit2.Text='VB2'))  then
  begin
    DBGridEh1.Columns[0].Visible:=true;
    DBGridEh2.Columns[0].Visible:=true;
    DBGridEh3.Columns[0].Visible:=true;
  end;
  InitTitleClick(false);

  PurchasePage.TabIndex:=0;
end;

procedure TPurtrace.PurchasePageChange(Sender: TObject);
begin
  if ((PurchasePage.ActivePageIndex=0) or (PurchasePage.ActivePageIndex=1)) then
  begin
    CheckBox3.Visible:=true;
    CheckBox4.Visible:=true;
    CB5.Visible:=true;
    Label4.Visible:=true;
    Edit7.Visible:=true;
    CheckBox5.Visible:=true;
    DataColorGroup.Visible:=false;
  end else if PurchasePage.ActivePageIndex=2 then
  begin
    CheckBox3.Visible:=false;
    CheckBox4.Visible:=false;
    CB5.Visible:=false;
    Label4.Visible:=false;
    Edit7.Visible:=false;
    CheckBox5.Visible:=false;
    DataColorGroup.Visible:=true;
  end;
end;
//20131111 檢查RSL規格
function TPurtrace.CheckRSLIsValid(const DCYN,PDYN,DCDate,PDDate,DCCFM,PDCFM:string;var PDInfo,DCInfo:string):byte;
var reByte:Byte;
begin
  reByte:=0;
  //量產需要RSL
  if PDYN='Y' then
  begin
     if PDCFM<>'Y' then
     begin
       if  trim(PDDate)='' then
       begin
         reByte:=2;//沒有RSL有效日期
         PDInfo:='No RSL';
       end else
       begin
         reByte:=1; //PDRSL
         PDInfo:='Not Confirm';
       end;
     end;
     if PDCFM='Y' then
       if trim(PDDate)<>'' then
       begin
         if incYear(strtodate(PDDate))<=date() then
         begin
            reByte:=2; //Expire DCRSL 生產RSL有效日期逾期一年
            PDInfo:='RSL expired';
         end;
       end else
       begin
         reByte:=2;//沒有RSL有效日期
         PDInfo:='No RSL';
       end;//Expire PDRSL 生產RSL有效日期逾期一年
     //
  end;
  if DCYN='Y' then
  begin
     if DCCFM<>'Y' then
     begin
       if  trim(DCDate)='' then
       begin
         reByte:=4;//沒有RSL有效日期
         DCInfo:='No RSL';
       end else
       begin
         reByte:=3; //PDRSL
         DCInfo:='Not Confirm';
       end;
     end;
     if DCCFM='Y' then
       if trim(DCDate)<>'' then
       begin
         if incYear(strtodate(DCDate))<=date() then
         begin
            reByte:=4; //Expire DCRSL 生產RSL有效日期逾期一年
            DCInfo:='RSL expired';
         end;
       end else
       begin
         reByte:=4;//沒有RSL有效日期
         DCInfo:='No RSL';
       end;//Expire PDRSL 生產RSL有效日期逾期一年
     //
  end;
  result:=reByte;
end;
procedure TPurtrace.Query2AfterOpen(DataSet: TDataSet);
var PDInfo,DCInfo:string;
    RSLByte:Byte;
begin

    DBGridEh2.DataSource:=nil;
    with Query2 do
    begin
      requestlive:=true;
      cachedupdates:=true;
    end;
    //
    while not Query2.Eof do
    begin
      PDInfo:='';
      DCInfo:='';
      //檢查RSL  DCYN,PDYN,DCDate,PDDate,DCCFM,PDCFM
      RSLByte:=CheckRSLIsValid(query2.FieldByName('DCYN').AsString,query2.FieldByName('PDYN').AsString,query2.FieldByName('DCDate').AsString,
                             query2.FieldByName('PDDate').AsString,query2.FieldByName('DCCFM').AsString,query2.FieldByName('PDCFM').AsString,PDInfo,DCInfo);
      //
      Query2.Edit;
       query2.FieldByName('PDRSL').AsString:=PDInfo;
       query2.FieldByName('DCRSL').AsString:=DCInfo;
      Query2.Post;
      Query2.Next;
    end;
    //
    IsChekcRSLOver:=true;
    Query2.First;
    //顯示顏色
    DBGridEh2.Visible:=false;
    DBGridEh2.DataSource:=DS2;
    DBGridEh2.Visible:=true;
    //
    if query2.recordcount>0 then
    begin
      DBGrideh2.Columns[7].buttonstyle:=cbsellipsis;
    end else
    begin
        DBGrideh2.Columns[7].buttonstyle:=cbsnone;
    end;
  {
  if main.Edit2.Text='VA12' then
  begin

  end else
  begin
      if query2.recordcount>0 then
      begin
        DBGrideh2.Columns[6].buttonstyle:=cbsellipsis;
      end else
      begin
          DBGrideh2.Columns[6].buttonstyle:=cbsnone;
      end;
  end;
  }
end;

procedure TPurtrace.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //開啟資料會做RSL檢查
  if IsChekcRSLOver=true then
  begin
        if (trim(query2.FieldByName('PDRSL').AsString)<>'') then  //PD 生產RSL 逾期或未確認日期
        begin
          dbgrideh2.canvas.Brush.color:=$004DE6E1;
          dbgrideh2.defaultdrawcolumncell(rect,datacol,column,state);
        end else if (trim(query2.FieldByName('DCRSL').AsString)<>'') then   //DC 開發RSL 逾期或未確認日期
        begin
          dbgrideh2.canvas.Brush.color:=clskyblue;
          dbgrideh2.defaultdrawcolumncell(rect,datacol,column,state);
        end;
  end;
end;

procedure TPurtrace.DBGridEh2EditButtonClick(Sender: TObject);
begin
Purtrace_Det:=TPurtrace_Det.create(self);
Purtrace_Det.Query1.Active:=false;
Purtrace_Det.Query1.DataSource:=DS2;
if dbgrideh2.selectedfield.fieldname='CGQty' then
  begin
    with Purtrace_Det.Query1 do
      begin
        active:=false;
        sql.Clear;  
        sql.add('select CGHZZLS.dgdh as CGNO,ZSZL.ZSJC as ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) as CGQty');
        sql.add('from CGHZZLS with (nolock)');
        //20140318 weston更改增加and CGHZZLS.Size=CGHZZLSS.Size
        sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
        //end edit
        sql.add('left join ZSZL on ZSZL.ZSDH=CGHZZLSS.ZSBH ');
        sql.add('where CGHZZLS.CLBH=:CLBH');
        sql.add('      and CGHZZLS.dg_Qty<>0');
        sql.add('      and CGHZZLS.ZLBH=:ZLBH');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(Purtrace_Det.Query1);
        sql.add('group by CGHZZLS.dgdh,ZSZL.ZSJC,CGHZZLS.ZLBH,CGHZZLS.CLBH');
        sql.add('union all'); 
        sql.add('select CGZLSS.CGNO,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty   ');
        sql.add('from CGZLSS  with (nolock)');
        sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
        sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
        sql.add('where CGZLSS.CLBH=:CLBH ');
        sql.add('      and CGZLSS.Qty <>0');
        sql.add('      and CGZLSS.ZLBH=:ZLBH');
        sql.add('group by CGZLSS.CGNO,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH ');
        sql.add('order by CGZLSS.CGNO');
        //memo1.Text:=sql.Text;
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=100;
        Purtrace_Det.DBGrideh1.columns[1].width:=100;
        Purtrace_Det.DBGrideh1.columns[2].width:=80;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
        Purtrace_Det.DBGrideh1.columns[4].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[4].width:=60;
      end;
  end;

Purtrace_Det.show;
end;

procedure TPurtrace.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if Query1.FieldByName('DDZT').AsString='C' then
  begin
    dbgrideh1.Canvas.Brush.Color:=clBtnFace;
    dbgrideh1.defaultdrawcolumncell(rect,datacol,column,state);

  end;
end;

procedure TPurtrace.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query3.FieldByName('DDZT').AsString='C' then
  begin
    dbgrideh3.Canvas.Brush.Color:=clBtnFace;
    dbgrideh3.defaultdrawcolumncell(rect,datacol,column,state);

  end;
end;

procedure TPurtrace.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query3.FieldByName('CLSL').value=Query3.FieldByName('CGQty').value+Query3.FieldByName('UseStock').value then
  begin
    dbgrideh3.canvas.font.color:=clBlue;
  end;
  if (((query3.FieldByName('CGQty').value>0) or (Query3.FieldByName('UseStock').value>0))
                    and (query3.FieldByName('CLSL').value>(query3.FieldByName('CGQty').value+Query3.FieldByName('UseStock').value))) then
  begin
    if ((Query3.FieldByName('CGQty').value<>0) or (Query3.FieldByName('UseStock').value<>0)) then
    begin
      dbgrideh3.canvas.font.color:=clred;
    end;
  end;
  if Query3.FieldByName('CLSL').value<Query3.FieldByName('CGQty').value+Query3.FieldByName('UseStock').value then
  begin
    dbgrideh3.canvas.font.color:=clgreen;
  end;
end;

procedure TPurtrace.Query3AfterOpen(DataSet: TDataSet);
begin
  if query3.recordcount>0 then
  begin
    DBGrideh3.Columns[7].buttonstyle:=cbsellipsis;
    DBGrideh3.Columns[8].buttonstyle:=cbsellipsis;
    DBGrideh3.Columns[9].buttonstyle:=cbsellipsis;
  end
  else
    begin
      DBGrideh3.Columns[7].buttonstyle:=cbsnone;
      DBGrideh3.Columns[8].buttonstyle:=cbsnone;
      DBGrideh3.Columns[9].buttonstyle:=cbsnone;
    end;
end;

procedure TPurtrace.Query3CalcFields(DataSet: TDataSet);
begin
  if CB5.Checked then
  begin
    with query3 do
      begin
        fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CGQty').Value;
        fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CGQty').Value;
      end;
  end;
end;

procedure TPurtrace.DBGridEh3EditButtonClick(Sender: TObject);
begin
  Purtrace_Det:=TPurtrace_Det.create(self);
  Purtrace_Det.Query1.Active:=false;
  Purtrace_Det.Query1.DataSource:=DS3;
  if dbgrideh3.selectedfield.fieldname='CGQty' then
  begin
    with Purtrace_Det.Query1 do
      begin
        active:=false;
        sql.Clear;  
        sql.add('select CGHZZLS.dgdh as CGNO,ZSZL.ZSJC as ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) as CGQty');
        sql.add('from CGHZZLS with (nolock)');
        //20140318 weston更改增加and CGHZZLS.Size=CGHZZLSS.Size
        sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
        //end edit
        sql.add('left join ZSZL on ZSZL.ZSDH=CGHZZLSS.ZSBH ');
        sql.add('where CGHZZLS.CLBH=:CLBH');
        sql.add('      and CGHZZLS.dg_Qty<>0');
        sql.add('      and CGHZZLS.ZLBH=:ZLBH');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(Purtrace_Det.Query1);
        sql.add('group by CGHZZLS.dgdh,ZSZL.ZSJC,CGHZZLS.ZLBH,CGHZZLS.CLBH');
        sql.add('union all'); 
        sql.add('select CGZLSS.CGNO,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty   ');
        sql.add('from CGZLSS  with (nolock)');
        sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
        sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
        sql.add('where CGZLSS.CLBH=:CLBH ');
        sql.add('      and CGZLSS.Qty <>0');
        sql.add('      and CGZLSS.ZLBH=:ZLBH');
        sql.add('group by CGZLSS.CGNO,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH ');
        sql.add('order by CGZLSS.CGNO');
        //memo1.Text:=sql.Text;
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=100;
        Purtrace_Det.DBGrideh1.columns[1].width:=100;
        Purtrace_Det.DBGrideh1.columns[2].width:=80;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
        Purtrace_Det.DBGrideh1.columns[4].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[4].width:=60;
      end;
  end;
       
if dbgrideh3.selectedfield.fieldname='RKQty' then
  begin
    with Purtrace_Det.Query1 do
      begin
        active:=false;
        sql.Clear;   
        sql.add('SELECT convert(smalldatetime,HGZL.CON_Date) as USERDate,HGZL.CON_NO as RKNO,EXZLSS.ZLBH,EXZLSS.CLDH as CLBH');
        sql.add('       , sum(EXZLSS.CK_Qty) as RKQty,HGZL.lbdh07 as Way');
        sql.add('FROM EXZLSS');
        sql.add('left join HGZLS on HGZLS.CLBH=EXZLSS.EXNO+EXZLSS.XH ');
        sql.add('left join HGZL on HGZL.CON_NO=HGZLS.CON_NO ');
        sql.Add('left join CGHZZLS on CGHZZLS.dgdh=EXZLSS.dgdh and CGHZZLS.clbh   = EXZLSS.cldh  AND CGHZZLS.ZLBH   = EXZLSS.ZLBH  and CGHZZLS.size=EXZLSS.size ');
        sql.add('where EXZLSS.CLDH =:CLBH');
        sql.add('      and EXZLSS.ZLBH=:ZLBH ');
        sql.add('      and EXZLSS.CK_Qty<>0');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(Purtrace_Det.Query1);
        sql.add('group by HGZL.CON_Date,HGZL.CON_NO ,EXZLSS.ZLBH,EXZLSS.CLDH,HGZL.lbdh07');
        sql.add('union all');  
        sql.add('select KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH as ZLBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty,'+''''+'VN'+''''+' as Way ');
        sql.add('from KCRKS  with (nolock)');
        sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        sql.add('where KCRKS.CLBH=:CLBH ');
        sql.add('      and KCRKS.CGBH=:ZLBH ');
        sql.add('      and KCRKS.Qty<>0');
        sql.add('group by KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH ,KCRKS.CLBH ');
        sql.add('order by KCRK.USERDate,KCRKS.RKNO');
        //memo1.Text:=sql.Text;
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=80;
        Purtrace_Det.DBGrideh1.columns[0].displayformat:='yyyy/MM/dd';
        Purtrace_Det.DBGrideh1.columns[1].width:=80;
        Purtrace_Det.DBGrideh1.columns[2].width:=80;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
        Purtrace_Det.DBGrideh1.columns[4].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[4].width:=60;   
        Purtrace_Det.DBGrideh1.columns[5].width:=40;
      end;
  end; 
if dbgrideh3.selectedfield.fieldname='UseStock' then
  begin
    with Purtrace_Det.Query1  do
      begin
        active:=false;
        sql.Clear;   
        sql.add('select CGKCUSE.ZLBH,CGKCUSE.CLBH,CGKCUSE.Qty as KCUseQty,CGKCUSE.CLBHYS ');
        sql.add('from CGKCUSE  ');
        sql.add('where  CGKCUSE.CLBH=:CLBH');
        sql.add('       and CGKCUSE.ZLBH=:ZLBH ');
        sql.add('order by ZLBH,CLBH');
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=80;
        Purtrace_Det.DBGrideh1.columns[1].width:=80;
        Purtrace_Det.DBGrideh1.columns[2].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[2].width:=60;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
      end;
  end;

Purtrace_Det.show;
end;

end.
