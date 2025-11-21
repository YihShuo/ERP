unit WareStock_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, DateUtils;

type
  TWareStock_Det = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1RKNO: TStringField;
    Query1CLDH: TStringField;
    Query1CGBH: TStringField;
    Query1RKSB: TStringField;
    Query1CNO: TStringField;
    Query1HGLB: TStringField;
    Query1RKQty: TCurrencyField;
    Query1UsdQty: TCurrencyField;
    Query1RemQty: TCurrencyField;
    Query1Declaretion: TStringField;
    Query1Export: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    //sYear,sMonth,sSTDT,sEDDT:String;
    //sDate,eDate,NDate:TDate;
    { Private declarations }
  public
    CLBH:string;
    CKBH:string;
    CNO:string;
    HGLB:string;
    ToKhai:String;
    SDT,EDT:String;
    { Public declarations }
    procedure ShowDet();
    procedure ShowDetToKhaiList();
  end;

var
  WareStock_Det: TWareStock_Det;

implementation
  uses WareStock1,FunUnit;
{$R *.dfm}

procedure TWareStock_Det.ShowDet();
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.KCYEAR as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB,CLHG.HGBH as CNO,KCCLMONTH.HGLB,null as Declaretion,null as Export,');
    SQL.Add('          Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty  from KCCLMONTH_HG as KCCLMONTH ');
    SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty from  KCRKCX where KCRKCX.RKNO='''+WareStock.sYear+''' and KCRKCX.CLDH='''+CLBH+''' and KCRKCX.CGBH='''+WareStock.sMonth+''' and KCRKCX.CKBH='''+CKBH+''' Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMONTH.KCYEAR ');
    SQL.Add('            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLMONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCLMONTH.CKBH   ');
    SQL.Add('left join CLHG  on CLHG.CLBH=KCCLMONTH.CLBH and KCCLMONTH.HGLB in (''NK'',''KD'') ');
    SQL.Add('where KCCLMONTH.KCYEAR='''+WareStock.sYear+''' and KCCLMONTH.KCMONTH='''+WareStock.sMonth+''' and KCCLMONTH.CKBH='''+CKBH+''' and KCCLMONTH.CLBH = '''+CLBH+''' ');
    if CNO<>'' then
    SQL.Add(' and  CLHG.HGBH='''+CNO+''' ');
    SQL.Add('Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLMONTH.CLBH,CLHG.HGBH having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
    SQL.Add('union all');
    SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB,Max(KCPK.Declaretion) as Declaretion,Max(KCPK.Export) as Export,');
    SQL.Add('        Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty ');
    SQL.Add('from KCRKS');
    SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO ');
    SQL.Add('left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  KCRKCX where KCRKCX.CLDH='''+CLBH+''' and KCRKCX.RKSB<>''JGRK'' Group by RKNO,CLDH,CGBH,RKSB  )  ');
    SQL.Add('           KCRKCX on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRKS.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+''' and KCRK.CKBH='''+CKBH+'''   and KCRKS.CLBH = '''+CLBH+''' ');
    if CNO<>'' then
    SQL.Add(' and  KCRKS.CNO = '''+CNO+''' ');
    SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB');
    SQL.Add('having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
    SQL.Add('Union all');
    SQL.Add('select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,''JGRK'' as RKSB,null as CNO,''GC'' as HGLB,null as Declaretion,null as Export,');
    SQL.Add('       Sum(JGZLS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from JGZLS');
    SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  KCRKCX where KCRKCX.CLDH='''+CLBH+'''and KCRKCX.RKSB=''JGRK''  Group by RKNO,CLDH,CGBH,RKSB  )   ');
    SQL.Add('           KCRKCX on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZLS.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB=''JGRK''');
    SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.CFMID1<>''NO'' and JGZL.CKBH='''+CKBH+''' and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+''' and JGZLS.CLBH = '''+CLBH+''' ');
    if CNO<>'' then
    SQL.Add(' and  1=2 ');
    SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 ');
    SQL.Add(') KCRKS');
    SQL.Add('where CLDH='''+CLBH+''' and IsNull(CNO,'''')='''+CNO+''' ');
    if HGLB='ZZ' then
      SQL.Add(' and (HGLB is null or HGLB=''ZZZZ'') ')
    else if HGLB<>'All' then
      SQL.Add(' and (HGLB='''+HGLB+''') ');
    //funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;

//
procedure TWareStock_Det.ShowDetToKhaiList();
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (');

    SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB,Max(KCPK.Declaretion) as Declaretion,Max(KCPK.Export) as Export,');
    SQL.Add('        Sum(KCRKS.Qty) as RKQty,0.0 as UsdQty,Sum(KCRKS.Qty) as RemQty ');
    SQL.Add('from KCRKS');
    SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO ');
    SQL.Add('where KCRK.USERDATE>=''2017/06/01'' and KCPK.Declaretion='''+ToKhai+''' and KCRK.CKBH='''+CKBH+'''   and KCRKS.CLBH = '''+CLBH+''' ');
    SQL.Add('and KCRK.USERDATE>='''+SDT+''' and KCRK.USERDATE<'''+EDT+''' ');
    if CNO<>'' then
    SQL.Add(' and  KCRKS.CNO = '''+CNO+''' ');
    SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB');
    SQL.Add(') KCRKS');
    SQL.Add('where CLDH='''+CLBH+''' and IsNull(CNO,'''')='''+CNO+''' ');
    if HGLB='ZZ' then
      SQL.Add(' and (HGLB is null or HGLB=''ZZZZ'') ')
    else if HGLB<>'All' then
      SQL.Add(' and (HGLB='''+HGLB+''') ');
    //funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//
procedure TWareStock_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TWareStock_Det.FormDestroy(Sender: TObject);
begin
  WareStock_Det:=nil;
end;

end.
