unit UseStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Menus,dateutils,
  GridsEh, DBGridEh,ehlibbde, PrnDbgeh,comobj, ComCtrls;

type
  TUseStock = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    UpSql1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
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
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1CLBHYS: TStringField;
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
    Button3: TButton;
    CheckBox2: TCheckBox;
    qrUsestock: TQuery;
    UseStockPage: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DS2: TDataSource;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    PopupMenu2: TPopupMenu;
    S11: TMenuItem;
    S22: TMenuItem;
    S33: TMenuItem;
    Query2ZLBH: TStringField;
    Query2Article: TStringField;
    Query2XieMing: TStringField;
    Query2Pairs: TIntegerField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2CQDH: TStringField;
    Query2CLSL: TFloatField;
    Query2CGQty: TCurrencyField;
    Query2RKQty: TCurrencyField;
    Query2UseStock: TCurrencyField;
    Query2CGDate: TDateTimeField;
    Query2YQDate: TDateTimeField;
    Query2CFMDate: TDateTimeField;
    Query2CGNO: TStringField;
    Query2RKNO: TStringField;
    Query2ZWPM: TStringField;
    Query2CLBHYS: TStringField;
    Query2RKDate: TDateTimeField;
    Query2ShipDate: TDateTimeField;
    UpSql2: TUpdateSQL;
    PrintDBGridEh2: TPrintDBGridEh;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure S11Click(Sender: TObject);
    procedure S22Click(Sender: TObject);
    procedure S33Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseStock: TUseStock;
  sdate,edate:Tdate;

implementation

uses main1, UseStock_CL1;

{$R *.dfm}

procedure TUseStock.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;

end;

procedure TUseStock.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit4.SetFocus;
end;

procedure TUseStock.Edit3KeyPress(Sender: TObject; var Key: Char);
begin {
if key=#13 then
  edit4.SetFocus;}
end;

procedure TUseStock.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit6.SetFocus;
end;

procedure TUseStock.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
button1click(nil);
end;

procedure TUseStock.Button1Click(Sender: TObject);
begin
if ((not checkbox1.Checked) and (not checkbox2.Checked)) then
  begin
    showmessage('Pls select TW / VN material first.') ;
    abort;
  end;
if ((length(edit1.Text)<3) and (length(edit5.Text)<3)) then
  begin
    showmessage('Pls setup condition first!');
    abort;
  end;
if UseStockPage.ActivePageIndex=0 then
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      if  checkbox1.Checked then
        begin
          sql.add(' select ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
          sql.add('        CLZl.CQDH,isnull(CGTW.CGQty,0) as CGQty,isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGTW.YQDate,CGTW.CFMDate,');
          sql.add('        CGTW.CGDate,CGTW.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGKCUSE.CLBHYS,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate')  ;
          sql.add('from ZLZLS2 with (nolock) ');
          //台灣出貨材料
          sql.add('left join (select CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) as CGQty,  ');
          sql.add('                  CONZL.Ex_Qty as RKQty, max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as YQDate,');
          sql.add('                  max(convert(smalldatetime,(case when hf_Date='+''''+'ZZZZZZZZ'+''''+' then null else hf_Date end))) as CFMDate,');
          sql.add('                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,max(CGHZZLSS.DGDH) as CGNO,CONZL.CON_Date as RKDate,CONZL.CON_NO as RKNO ');
          sql.add('           from CGHZZLS with (nolock) ');
          sql.add('           left join CGHZZLSS  with (nolock) on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH ');
          sql.add('                                                and CGHZZLS.DGDH=CGHZZLSS.DGDH ') ;
          sql.add('           left join CLZL  with (nolock) on CLZL.CLDH=CGHZZLSS.CLBH         ');
          //加上出貨資料
          sql.add('           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE,sum(CK_Qty) as EX_Qty');
          sql.add('                             ,max(convert(smalldatetime,HGZL.CON_DATE)) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as CON_NO');
          sql.add('                      FROM EXZLSS');
          sql.add('                      LEFT JOIN EXZL  with (nolock) ON EXZLSS.EXNO=EXZL.EXNO  ');
          sql.add('                      LEFT JOIN HGZL  with (nolock) ON EXZL.CON_NO=HGZL.CON_NO');
          sql.add('                      where EXZLSS.CLDH like '+''''+edit1.Text+'%'+'''');
          sql.add('                            and EXZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
          sql.add('                      GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE');
          sql.add('                      ) AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH   = CONZL.ZLBH ');

          sql.add('           where CGHZZLS.CLBH like '+''''+edit1.Text+'%'+'''');
         // sql.add('                 and CGHZZLSS.hf_Date<>'+''''+'ZZZZZZZZ'+'''');
          sql.add('                 and CGHZZLS.ZLBH like '+''''+edit5.Text+'%'+'''');
          sql.add('                 and CLZL.CQDH='+''''+'TW'+'''');
          sql.add('           group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CONZL.Ex_Qty,CONZL.CON_Date,CONZL.CON_NO) CGTW') ;
       //                                CGHZZLS.ZLBH,CGHZZLS.CLBH,CONZL.Ex_Qty,CONZL.CON_Date,CONZL.CON_NO
          sql.add('     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   ');

          sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
          sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
          sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH ');
          sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
          sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
          sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
          sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
          sql.add('      and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
          sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
          //sql.add('       and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
          //sql.add('       and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
          sql.add('      and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
          {sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ' );
          sql.add('         '''+formatdatetime('yyyy/MM/dd',sdate) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate) +'''');
          sql.add('         and DDZL.DDZT='+''''+'Y'+'''');
          //sql.add('       and ZLZL.CQDH='+''''+'LTY'+''''); }
          sql.add('      and XXZL.Article like '+''''+edit3.text+'%'+'''');
          sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
          sql.add('      and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
          sql.add('      and ZLZLS2.ZMLB='+''''+'N'+'''');  //只針對子材料
          sql.add('      and ZLZLS2.CLSL<>0');//數量不等於0
          sql.add('      and CLZL.CQDH='+''''+'TW'+'''');
          sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
          sql.add('        CLZl.CQDH,CGTW.CGQty,CGTW.YQDate,CGTW.CFMDate,');
          sql.add('        CGTW.CGDate,CGTW.CGNO,CGKCUSE.Qty,CGKCUSE.CLBHYS,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate')  ;
       if checkbox1.Checked and checkbox2.Checked then
         begin
          sql.add('union all');
         end;
        end;  
      if  checkbox2.Checked then
        begin
          sql.add('select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
          sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
          sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
          sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGKCUSE.CLBHYS,');
          sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate ');
          sql.add('from ZLZLS2  with (nolock) ');
          sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
          sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
          sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH ');
          sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
          sql.add('left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH ');
          sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
          sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
          sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
          sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
              //加載采購相關的數量及日期等數據
          sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
          sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
          sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate ');
          sql.add('           from CGZLSS with (nolock) ');
          sql.add('           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGNO');
          sql.add('           where CGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
          sql.add('                 and CGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
          sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
          sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
            //加載入庫相關的數量及日期等數據
          sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
          sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate ');
          sql.add('           from  KCRKS with (nolock) ');
          sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
          sql.add('           where KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
          sql.add('                 and KCRKS.CGBH like '+''''+edit5.Text+'%'+'''');
          sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
          sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');

          sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
          //不要買安全庫存類的材料
          sql.add('       and ZLZLS2.CLBH not like '+''''+'W%'+'''');
          sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
          //sql.add('       and ZLZLS2.XH<>'+''''+'VN'+'''');
          sql.add('       and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
          sql.add('       and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
          sql.add('       and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
          sql.add('       and XXZL.Article like '+''''+edit3.text+'%'+'''');
          sql.add('       and DDZL.GSBH='+''''+main.edit2.Text+'''');
          sql.add('       and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
          sql.add('       and ZLZLS2.ZMLB='+''''+'N'+'''');
          sql.add('       and CLZL.CQDH='+''''+'VN'+'''');
          sql.add('       and SCZL.SCBH=SCZl.ZLBH ');
          sql.add('       and SCZL.SCBH is not null ');
          sql.add('       and ZLZLS2.CLSL<>0') ;
          //加上不要開發材料分類到無需領料的部分
          sql.add('       and (XXBWFLS.DFL<>'+''''+'G'+''''+' or XXBWFLS.DFL is null)');
          sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,');
          sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGKCUSE.CLBHYS,CGZl.CGQty,CGZL.YQDate,');
          sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate');
        end;
      sql.add('order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH');
      active:=true;
    end;
end
//
else if UseStockPage.ActivePageIndex=1 then
begin
  with query2 do
    begin
      active:=false;
      sql.Clear;
      if  ((checkbox1.Checked) or (checkbox2.Checked)) then
        begin
         active:=false;
         sql.Clear;
         sql.add('select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
         sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
         sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
         sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGKCUSE.CLBHYS,');
         sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate ');
         sql.add('from ZLZLS2  with (nolock) ');
         sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
         sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
         sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH ');
         sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
         sql.add('left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH ');
         sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
         sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
         sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
         sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
              //加載采購相關的數量及日期等數據
         sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
         sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
         sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate ');
         sql.add('           from CGZLSS with (nolock) ');
         sql.add('           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGNO');
         sql.add('           where CGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
         sql.add('                 and CGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
         sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
         sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
            //加載入庫相關的數量及日期等數據
         sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
         sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate ');
         sql.add('           from  KCRKS with (nolock) ');
         sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
         sql.add('           where KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
         sql.add('                 and KCRKS.CGBH like '+''''+edit5.Text+'%'+'''');
         sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
         sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');

         sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
          //不要買安全庫存類的材料
         sql.add('       and ZLZLS2.CLBH not like '+''''+'W%'+'''');
         sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
          //sql.add('       and ZLZLS2.XH<>'+''''+'VN'+'''');
         sql.add('       and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
         sql.add('       and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
         sql.add('       and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
         sql.add('       and XXZL.Article like '+''''+edit3.text+'%'+'''');
         sql.add('       and DDZL.GSBH='+''''+main.edit2.Text+'''');
         sql.add('       and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
         sql.add('       and ZLZLS2.ZMLB='+''''+'N'+'''');
         if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
            sql.add('       and CLZL.CQDH=''TW''');
         if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
            sql.add('       and CLZL.CQDH=''VN''');
          sql.add('       and SCZL.SCBH=SCZl.ZLBH ');
          sql.add('       and SCZL.SCBH is not null ');
          sql.add('       and ZLZLS2.CLSL<>0') ;
          //加上不要開發材料分類到無需領料的部分
          sql.add('       and (XXBWFLS.DFL<>'+''''+'G'+''''+' or XXBWFLS.DFL is null)');
          sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,');
          sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGKCUSE.CLBHYS,CGZl.CGQty,CGZL.YQDate,');
          sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate');
          sql.add('order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH');
          active:=true;
         end;
    end;

end;
end;

procedure TUseStock.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit6.SetFocus;
end;

procedure TUseStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if S2.enabled  then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=Cafree;
    end;
end;


procedure TUseStock.S1Click(Sender: TObject);
begin
if query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    DBGrideh1.Columns[8].ReadOnly:=false;
    S2.enabled:=true;
    S3.enabled:=true;
    DBGrideh1.Columns[8].ButtonStyle:=cbsellipsis;
  end;
end;

procedure TUseStock.S2Click(Sender: TObject);
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if query1.updatestatus=usmodified then
          begin
            if ((fieldbyname('UseStock').value=0) or (fieldbyname('UseStock').IsNull)) then
              begin
                  with qrUsestock do
                  begin
                     active:=false;
                     sql.Clear;
                     sql.Add('Delete CGKCUSE from CGKCUSE');
                     sql.Add('where ZLBH='''+Query1.fieldbyname('ZLBH').AsString+'''') ;
                     sql.Add('and CLBH='''+Query1.fieldbyname('CLBH').AsString+'''');
                     sql.Add('and GSBH='''+main.Edit2.Text+''' ');
                     execsql;
                  end;
               //
              end
              else
                begin
                   //
                   with qrUsestock do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.Add('select * from CGKCUSE where ZLBH='''+Query1.fieldbyname('ZLBH').AsString+'''');
                      sql.Add('and CLBH='''+Query1.fieldbyname('CLBH').AsString+'''');
                      active:=true;
                      if qrUsestock.RecordCount=0 then
                        begin
                           qrUsestock.Active:=false;
                           sql.Clear;
                           sql.Add('Insert into CGKCUSE');
                           sql.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,UserID,UserDate,YN) values');
                           sql.Add('('''+main.Edit2.Text+''''+','''+Query1.fieldbyname('ZLBH').AsString+''','''+Query1.fieldbyname('CLBH').AsString+''''+',');
                           sql.Add(''''+Query1.fieldbyname('USESTOCK').AsString+''','''+Query1.fieldbyname('CLBHYS').AsString+''','''+main.Edit1.Text+''','''+formatdatetime('yyyy/mm/dd',date)+''',1)');
                           execsql;
                        end
                      else
                        begin
                          qrUsestock.Active:=false;
                          sql.Clear;
                          sql.Add('update CGKCUSE set Qty='+''''+Query1.fieldbyname('USESTOCK').AsString+'''');
                          sql.add(',CLBHYS='+''''+Query1.fieldbyname('CLBHYS').AsString+'''');
                          sql.add(',USERDATE='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                          sql.add(',USERID='''+main.Edit1.Text+'''');
                          sql.add('where ZLBH='''+Query1.fieldbyname('ZLBH').AsString+'''');
                          sql.add('and CLBH='+''''+Query1.FieldByName('CLBH').Value+'''');
                          sql.Add('and GSBH='''+main.Edit2.Text+''' ');
                          execsql;
                          close;
                        end;
                   end;
                //
               end;
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    DBGrideh1.Columns[8].ButtonStyle:=cbsnone;
  end;
    S2.enabled:=false;
    S3.Enabled:=false;
end;

procedure TUseStock.S3Click(Sender: TObject);
begin
if query1.CachedUpdates then
  begin
    query1.Active:=false;
    query1.CachedUpdates:=false;
    query1.RequestLive:=false;
    S2.Enabled:=false;
    S3.enabled:=false;
    query1.Active:=true;
    DBGrideh1.Columns[8].ButtonStyle:=cbsnone;
  end;
end;

procedure TUseStock.FormDestroy(Sender: TObject);
begin
UseStock:=nil;
end;

procedure TUseStock.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
{if key=#13 then
  begin
    if DBGrideh1.selectedfield.fieldname='UseStock' then
      begin
      //  showmessage('aaaq') ;
        if Query1.CachedUpdates then
          begin
            if Query1.FieldByName('CLSL').value-0.05>
               Query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value then
              begin
                query1.edit;
                Query1.FieldByName('UseStock').Value:=
                     Query1.FieldByName('CLSL').Value-Query1.FieldByName('CGQty').Value;
              end;
          end;
        query1.Next;
      end;
  end; }
end;

procedure TUseStock.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if Query1.FieldByName('CLSL').value<=Query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value then
  begin
        dbgrideh1.canvas.font.color:=clBlue;
        //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if (((query1.FieldByName('CGQty').value>0) or (Query1.FieldByName('UseStock').value>0))
                    and (query1.FieldByName('CLSL').value>query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value)) then
  begin
    if ((Query1.FieldByName('CGQty').value<>0) or (Query1.FieldByName('UseStock').value<>0)) then
      begin
        dbgrideh1.canvas.font.color:=clred;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
      end;
  end;
if Query1.FieldByName('CLSL').value<Query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value then
  begin
        dbgrideh1.canvas.font.color:=clgreen;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TUseStock.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
 if UseStockPage.ActivePageIndex=0 then
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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
 end
 else if  UseStockPage.ActivePageIndex=1 then
 begin
  if  query2.active  then
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
        for   i:=0   to   query2.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query2.fields[i].FieldName;
          end;

        query2.First;
        j:=2;
        while   not   query2.Eof   do
          begin
            for   i:=0   to  query2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query2.Fields[i].Value;
            end;
          query2.Next;
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

end;

procedure TUseStock.DBGridEh1EditButtonClick(Sender: TObject);
begin
UseStock_CL:=TUseStock_CL.create(self);
UseStock_CL.show;
end;

procedure TUseStock.Button3Click(Sender: TObject);
begin
if UseStockPage.ActivePageIndex=0 then
  begin
    printdbgrideh1.Preview;
  end
else if UseStockPage.ActivePageIndex=1 then
  begin
    printdbgrideh2.Preview;
  end;
end;

procedure TUseStock.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.FieldByName('CLSL').value<=Query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value then
  begin
        DBGridEh2.canvas.font.color:=clBlue;
        //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if (((Query2.FieldByName('CGQty').value>0) or (Query2.FieldByName('UseStock').value>0))
                    and (Query2.FieldByName('CLSL').value>Query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value)) then
  begin
    if ((Query2.FieldByName('CGQty').value<>0) or (Query2.FieldByName('UseStock').value<>0)) then
      begin
        DBGridEh2.canvas.font.color:=clred;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
      end;
  end;
if Query2.FieldByName('CLSL').value<Query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value then
  begin
        DBGridEh2.canvas.font.color:=clgreen;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TUseStock.S11Click(Sender: TObject);
begin
  if query2.Active then
  begin
    query2.RequestLive:=true;
    query2.CachedUpdates:=true;
    DBGrideh2.Columns[8].ReadOnly:=false;
    S22.enabled:=true;
    S33.enabled:=true;
    DBGrideh2.Columns[8].ButtonStyle:=cbsellipsis;
  end;
end;

procedure TUseStock.S22Click(Sender: TObject);
begin
 with query2 do
  begin
    first;
    while not eof do
      begin
        if query2.updatestatus=usmodified then
          begin
            if ((fieldbyname('UseStock').value=0) or (fieldbyname('UseStock').IsNull)) then
              begin
                  with qrUsestock do
                  begin
                     active:=false;
                     sql.Clear;
                     sql.Add('Delete CGKCUSE from CGKCUSE');
                     sql.Add('where ZLBH='''+Query2.fieldbyname('ZLBH').AsString+'''') ;
                     sql.Add('and CLBH='''+Query2.fieldbyname('CLBH').AsString+'''');
                     sql.Add('and GSBH='''+main.Edit2.Text+''' ');
                     execsql;
                  end;
               //
              end
              else
                begin
                   //
                   with qrUsestock do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.Add('select * from CGKCUSE where ZLBH='''+query2.fieldbyname('ZLBH').AsString+'''');
                      sql.Add('and CLBH='''+query2.fieldbyname('CLBH').AsString+'''');
                      active:=true;
                      if qrUsestock.RecordCount=0 then
                        begin
                           qrUsestock.Active:=false;
                           sql.Clear;
                           sql.Add('Insert into CGKCUSE');
                           sql.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,UserID,UserDate,YN) values');
                           sql.Add('('''+main.Edit2.Text+''''+','''+query2.fieldbyname('ZLBH').AsString+''','''+query2.fieldbyname('CLBH').AsString+''''+',');
                           sql.Add(''''+query2.fieldbyname('USESTOCK').AsString+''','''+query2.fieldbyname('CLBHYS').AsString+''','''+main.Edit1.Text+''','''+formatdatetime('yyyy/mm/dd',date)+''',1)');
                           execsql;
                        end
                      else
                        begin
                          qrUsestock.Active:=false;
                          sql.Clear;
                          sql.Add('update CGKCUSE set Qty='+''''+query2.fieldbyname('USESTOCK').AsString+'''');
                          sql.add(',CLBHYS='+''''+query2.fieldbyname('CLBHYS').AsString+'''');
                          sql.add(',USERDATE='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                          sql.add(',USERID='''+main.Edit1.Text+'''');
                          sql.add('where ZLBH='''+query2.fieldbyname('ZLBH').AsString+'''');
                          sql.add('and CLBH='+''''+query2.FieldByName('CLBH').Value+'''');
                          sql.Add('and GSBH='''+main.Edit2.Text+''' ');
                          execsql;
                          close;
                        end;
                   end;
                //
               end;
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    DBGrideh2.Columns[8].ButtonStyle:=cbsnone;
  end;
    S22.enabled:=false;
    S33.Enabled:=false;
end;

procedure TUseStock.S33Click(Sender: TObject);
begin
if query2.CachedUpdates then
  begin
    query2.Active:=false;
    query2.CachedUpdates:=false;
    query2.RequestLive:=false;
    S22.Enabled:=false;
    S33.enabled:=false;
    query2.Active:=true;
    DBGrideh2.Columns[8].ButtonStyle:=cbsnone;
  end;
end;

procedure TUseStock.DBGridEh2EditButtonClick(Sender: TObject);
begin
UseStock_CL:=TUseStock_CL.create(self);
UseStock_CL.show;
end;

end.
