unit MaterialSetP_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Menus,comobj;

type
  TMaterialSetP_CL = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CGQty: TFloatField;
    Query1CLSL: TFloatField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1CGDate: TDateTimeField;
    Query1CGNO: TStringField;
    Query1UseStock: TCurrencyField;
    Query1RKDate: TDateTimeField;
    Query1RKNO: TStringField;
    Query1RKQty: TFloatField;
    Query1ZWPM: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialSetP_CL: TMaterialSetP_CL;

implementation

uses MaterialSetP1;

{$R *.dfm}

procedure TMaterialSetP_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
action:=cafree;
end;

procedure TMaterialSetP_CL.FormDestroy(Sender: TObject);
begin
MaterialSetP_CL:=nil;
end;

procedure TMaterialSetP_CL.FormCreate(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,CLZl.CQDH,isnull(CGHZZL.CGQty,0) as CGQty,');
    sql.add('        isnull(ZLZLS2.CLSL,0) as CLSL,convert(smalldatetime,CGHZZL.YQDate) YQDate ,');
    sql.add('        convert(smalldatetime,CGHZZL.CFMDate) CFMDate,convert(smalldatetime,CGHZZL.CGDate) CGDate,CGHZZL.CGNO,');
    sql.add('        (isnull(CGKCUSE.Qty,0)+isnull(CGHZZL.st_Qty,0)) as UseStock,CONZL.CON_Date as RKDate,CONZL.CON_NO as RKNO ,CGHZZL.RKQty')  ;

    //制令材料數量
    sql.add('from (select ZLBH,CLBH,sum(CLSL) as CLSL ');
    sql.add('      from ZLZLS2');
    sql.add('      where ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('            and CLSL<>0');
    sql.add('            and ZLZLS2.ZMLB='+''''+'N'+'''');
    sql.add('      group by ZLBH,CLBH)ZLZLS2 ');
    //台灣采購材料
    sql.add('left join(select CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.DG_Qty) as CGQty,sum(CGHZZLS.st_Qty) as st_Qty ,sum(CGHZZLS.Ex_Qty) as RKQty,');
    sql.add('                 max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as YQDate, ');
    sql.add('                 max(convert(smalldatetime,(case when CGHZZLSS.hf_Date='+''''+'ZZZZZZZZ'+'''');
    sql.add('                       then null else CGHZZLSS.hf_Date end))) as CFMDate,');
    sql.add('                 max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,CGHZZLSS.DGDH as CGNO ');
    sql.add('          from CGHZZLS ');
    sql.add('          left join CGHZZLSS on  CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.SIZE=CGHZZLSS.SIZE');
    sql.add('          where CGHZZLS.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('          group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CGHZZLSS.DGDH) CGHZZL ');
    sql.add('       on CGHZZL.ZLBH=ZLZLS2.ZLBH and CGHZZL.CLBH=ZLZLS2.CLBH ');
    //出貨資料
    sql.add('left join ( SELECT EXZLSS.ZLBH,EXZLSS.CLDH,');
    sql.add('                   max(HGZL.CON_DATE) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as CON_NO FROM EXZLSS');
    sql.add('            LEFT JOIN EXZL ON EXZLSS.EXNO=EXZL.EXNO  ');
    sql.add('            LEFT JOIN HGZL ON EXZL.CON_NO=HGZL.CON_NO');
    sql.add('            where  EXZLSS.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('            GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH)CONZL');
    sql.add('       ON CGHZZL.clbh   = CONZL.cldh  AND CGHZZL.ZLBH   = CONZL.ZLBH  ');
    //其它
    sql.add('left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
    sql.add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    sql.add('where CLZL.CQDH='+''''+'TW'+'''');


    sql.add('union all ');
    sql.add('select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
    sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,');
    sql.add('        isnull(CGKCUSE.Qty,0) as UseStock,RKZL.RKDate,RKZL.RKNO,isnull(RKZL.RKQty,0) as RKQty ');
    sql.add('from ZLZLS2 ');
    sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.add('left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
            //加載采購相關的數量及日期等數據
    sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
    sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
    sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate ');
    sql.add('           from CGZLSS');
    sql.add('           left join CGZL on CGZl.CGNO=CGZLSS.CGNO');
    sql.add('           where  CGZLSS.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
    sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
          //加載入庫相關的數量及日期等數據
    sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate ');
    sql.add('           from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where  KCRKS.CGBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');

    sql.add('where ZLZLS2.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    //不要買安全庫存類的材料
    sql.add('       and ZLZLS2.CLBH not like '+''''+'P%'+'''');
    sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    sql.add('       and ZLZLS2.ZMLB='+''''+'N'+'''');
    sql.add('       and CLZL.CQDH='+''''+'VN'+'''');
    sql.add('       and ZLZLS2.CLSL<>0') ;
    sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
    sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty');
    sql.add('order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH');
    active:=true;
  end;

  {
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,DDZL.Pairs,');
    sql.add('        CLZl.CQDH,isnull(CGTW.CGQty,0) as CGQty,isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGTW.YQDate,CGTW.CFMDate,');
    sql.add('        CGTW.CGDate,CGTW.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate')  ;
    sql.add('from ZLZLS2 ');
    //台灣出貨材料
    sql.add('left join (select CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.st_Qty+CGHZZLS.dg_Qty) as CGQty,  ');
    sql.add('                  sum(CGHZZLS.Ex_Qty) as RKQty, max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as YQDate,');
    sql.add('                  max(convert(smalldatetime,(case when hf_Date='+''''+'ZZZZZZZZ'+''''+' then null else hf_Date end))) as CFMDate,');
    sql.add('                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,CGHZZLSS.DGDH as CGNO,CONZL.CON_Date as RKDate,CONZL.CON_NO as RKNO ');
    sql.add('           from CGHZZLS');
    sql.add('           left join CGHZZLSS on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH ');
    sql.add('           left join CLZL on CLZL.CLDH=CGHZZLSS.CLBH  ');
    //加上出貨資料
    sql.add('           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE,');
    sql.add('                   max(HGZL.CON_DATE) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as CON_NO FROM EXZLSS');
    sql.add('                   LEFT JOIN EXZL ON EXZLSS.EXNO=EXZL.EXNO  ');
    sql.add('                   LEFT JOIN HGZL ON EXZL.CON_NO=HGZL.CON_NO');
    sql.add('                   where  EXZLSS.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('                  GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE)');
    sql.add('                 AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH   = CONZL.ZLBH  AND CGHZZLS.size   = CONZL.size');

    sql.add('           where  CGHZZLS.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('                 and CLZL.CQDH='+''''+'TW'+'''');
    sql.add('           group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CGHZZLSS.CGHZBH ,CONZL.CON_Date,CONZL.CON_NO,CGHZZLSS.DGDH) CGTW') ;
    sql.add('     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   ');

    sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.add('left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.add('where ZLZLS2.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('      and ZLZLS2.ZMLB='+''''+'N'+'''');  //只針對子材料
    sql.add('      and ZLZLS2.CLSL<>0');//數量不等於0
    sql.add('      and CLZL.CQDH='+''''+'TW'+'''');
    sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,DDZL.Pairs,');
    sql.add('        CLZl.CQDH,CGTW.CGQty,CGTW.YQDate,CGTW.CFMDate,');
    sql.add('        CGTW.CGDate,CGTW.CGNO,CGKCUSE.Qty,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate')  ;

    sql.add('union all');

    sql.add('select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,DDZL.Pairs,');
    sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
    sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
    sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,');
    sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate ');
    sql.add('from ZLZLS2 ');
    sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.add('left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.add('left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    sql.add('left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //加載采購相關的數量及日期等數據
    sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
    sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
    sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate ');
    sql.add('           from CGZLSS');
    sql.add('           left join CGZL on CGZl.CGNO=CGZLSS.CGNO');
    sql.add('           where  CGZLSS.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
    sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
          //加載入庫相關的數量及日期等數據
    sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate ');
    sql.add('           from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where  KCRKS.CGBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');

    sql.add('where ZLZLS2.ZLBH='+''''+MaterialSetP.SCPTCL.fieldbyname('ZLBH').value+'''');
    //不要買安全庫存類的材料
    sql.add('       and ZLZLS2.CLBH not like '+''''+'P%'+'''');
    sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    sql.add('       and ZLZLS2.ZMLB='+''''+'N'+'''');
    sql.add('       and CLZL.CQDH='+''''+'VN'+'''');
    sql.add('       and ZLZLS2.CLSL<>0') ;
    //加上不要開發材料分類到無需領料的部分
    sql.add('       and (XXBWFLS.DFL<>'+''''+'G'+'''' +' or XXBWFLS.DFL is null) ' );
    sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,');
    sql.add('         DDZL.Pairs,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
    sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate');
    sql.add('order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH');
    active:=true;
  end;}
end;

procedure TMaterialSetP_CL.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;
        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              end;
            query1.Next;
            inc(j);
          end;
    eclapp.columns.autofit;
    eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

end.
