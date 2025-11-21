unit AnyStock_PrintIO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, Grimgctrl, DateUtils;

type
  TAnyStock_PrintIO = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel60: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    CLZLQry: TQuery;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    CLZLQryCLBH: TStringField;
    CLZLQryKCBH: TStringField;
    CLZLQryYWPM: TStringField;
    QRDBText2: TQRDBText;
    QRShape8: TQRShape;
    QRHRule1: TQRHRule;
    QRLabel2: TQRLabel;
    QRShape6: TQRShape;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    CLZLQryDWBH: TStringField;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText4: TQRDBText;
    QRSubDetail: TQRSubDetail;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRHRule2: TQRHRule;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    MatIOQry: TQuery;
    MatIOQryUserDate: TDateTimeField;
    MatIOQryRKNO: TStringField;
    MatIOQryLLNO: TStringField;
    MatIOQryCLBH: TStringField;
    MatIOQryRKQty: TCurrencyField;
    MatIOQryLLQty: TCurrencyField;
    MatIOQryLastQty: TCurrencyField;
    MatIOQrySB: TStringField;
    MatIOQryRN: TFloatField;
    MatIOQrySumQty1: TCurrencyField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    DS1: TDataSource;
    QRLabel11: TQRLabel;
    MonthQRLabel: TQRLabel;
    ExeQry: TQuery;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    CurrencyField4: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnyStock_PrintIO: TAnyStock_PrintIO;

implementation
  uses  main1,AnyStock1, FunUnit;
{$R *.dfm}

procedure TAnyStock_PrintIO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TAnyStock_PrintIO.FormDestroy(Sender: TObject);
begin
  AnyStock_PrintIO:=nil;
end;

procedure TAnyStock_PrintIO.FormCreate(Sender: TObject);
var 
   year,month,day:word;
   KCRK,KCRKS,KCLL,KCLLS:string;
   KCCLMONTHSQL:String;
   LastMonthDate:string;
begin

  decodedate(AnyStock.DTP1.Date,Year,Month,Day);   //т畐闽计沮
  MonthQRLabel.Caption:=inttostr(Year)+'-'+inttostr(Month);//絃翴る
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //る┏ら戳
  LastMonthDate:=FormatDatetime('YYYY/MM/DD',Endofthemonth( EncodeDate(Year,Month,Day)));
  with  CLZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLBHList.*,CLZL.YWPM,CLZL.DWBH from (');
    SQL.Add('Select CLBH,Max(KCBH) as KCBH from (');
    SQL.Add('select KCCLMONTH.CLBH,KCZLS.KCBH ');
    SQL.Add('from KCCLMONTH  ');
    SQL.Add('Left join KCZLS on KCZLS.CLBH=KCCLMONTH.CLBH and KCZLS.CKBH=KCCLMONTH.CKBH ');
    SQL.Add('where 1=1 and QTY > 0');
    SQL.Add('and KCYear = '''+ayear+'''');
    SQL.Add('and KCMonth = '''+amonth+'''');
    SQL.Add('and KCCLMONTH.CLBH like '''+AnyStock.Edit1.Text+'%'' ');
    SQL.Add('and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       sql.Add('        and KCCLMONTH.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       sql.Add('        and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       sql.add('        and KCCLMONTH.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add('Union all ');
    SQL.Add('select KCRKS.CLBH,KCZLS.KCBH ');
    SQL.Add('from KCRKS ');
    SQL.Add('left join KCRK on KCRK.RKNO = KCRKS.RKNO ');
    SQL.Add('Left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH ');
    SQL.Add('where KCRKS.Qty>0 and KCRK.USERDATE between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('and KCRKS.CLBH like '''+AnyStock.Edit1.Text+'%'' ');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       sql.Add('        and KCRK.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       sql.Add('        and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       sql.add('        and KCRK.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add('Union all ');
    SQL.Add('select JGZLS.CLBH,KCZLS.KCBH ');
    SQL.Add('from JGZLS ');
    SQL.Add('left join JGZL on JGZL.JGNO = JGZLS.JGNO  ');
    SQL.Add('Left join KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CKBH ');
    SQL.Add('where JGZL.CFMID1<>''NO'' and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 ');
    SQL.Add('      and JGZL.CFMDate1 between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+'''  ');
    SQL.Add('and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('and JGZLS.CLBH like '''+AnyStock.Edit1.Text+'%'' ');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       sql.Add('        and JGZL.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       sql.Add('        and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       sql.add('        and JGZL.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add('Union all ');
    SQL.Add('select KCLLS.CLBH,KCZLS.KCBH ');
    SQL.Add('from KCLLS ');
    SQL.Add('left join KCLL on KCLL.LLNO = KCLLS.LLNO ');
    SQL.Add('Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
    SQL.Add('where KCLL.CFMID<>''NO'' and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMDate between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('and KCLLS.CLBH like '''+AnyStock.Edit1.Text+'%'' ');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       sql.Add('        and KCLL.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       sql.Add('        and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       sql.add('        and KCLL.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add('Union all ');
    SQL.Add('select KCLLS.CLBH,KCZLS.KCBH ');
    SQL.Add('from KCLLS ');
    SQL.Add('left join KCLL on KCLL.LLNO = KCLLS.LLNO ');
    SQL.Add('Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
    SQL.Add('where KCLL.CFMID<>''NO'' and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMDate between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('and KCLLS.CLBH like '''+AnyStock.Edit1.Text+'%'' ');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       sql.Add('        and KCLL.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       sql.Add('        and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       sql.add('        and KCLL.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add(') CLBHList');
    SQL.Add('Group by CLBH  ) CLBHList');
    SQL.Add('left join CLZL on CLZL.CLDH=CLBHList.CLBH');
    SQL.Add('order by CLBHList.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  with ExeQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#tmpDCAccumW'') is not null');
    SQL.Add('begin   drop table #tmpDCAccumW end ');
    SQL.Add('Select DataList.UserDate,DataList.RKNO,DataList.LLNO,DataList.CLBH,Case When DataList.RKQty<>0.00 then DataList.RKQty else null end as RKQty,Case When DataList.LLQty<>0.00 then DataList.LLQty else null end as LLQty,DataList.LastQty,DataList.SB,');
    SQL.Add('       row_number() over(PARTITION BY CLBH order by   Convert(smalldatetime,convert(varchar,USERDATE,111)) asc,SB desc) AS RN  into #tmpDCAccumW from (');
    SQL.Add('Select Convert(smalldatetime,convert(varchar,USERDATE,111)) as UserDate,RKNO,LLNO,CLBH,Sum(IsNull(RKQty,0.0)) as RKQty,Sum(IsNull(LLQty,0.0)) LLQty,Sum(IsNull(LastQty,0.0))  LastQty,SB ');
    SQL.Add('from (');
    SQL.Add('	select '''+ayear+'-'+amonth+''' as RKNO,null as LLNO,KCCLMONTH.CKBH,KCCLMONTH.HGLB, KCCLMONTH.CLBH,null as RKQty,null as LLQty,KCCLMONTH.Qty as LastQty,'''+LastMonthDate+''' as UserDate,''LastQty'' as SB');
    SQL.Add('	from KCCLMONTH_HG  KCCLMONTH');
    SQL.Add('	Left join KCZLS on KCZLS.CLBH=KCCLMONTH.CLBH and KCZLS.CKBH=KCCLMONTH.CKBH ');
    SQL.Add('	where 1=1 and QTY > 0');
    SQL.Add('	and KCYear = '''+ayear+'''');
    SQL.Add('	and KCMonth = '''+amonth+'''');
    SQL.Add('	and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('	and KCCLMONTH.CLBH like '''+AnyStock.Edit1.Text+'%''');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       sql.Add('        and KCCLMONTH.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       sql.Add('        and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       sql.add('        and KCCLMONTH.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add('	union all');
    SQL.Add('	Select KCRK.RKNO,null as LLNO,KCRK.CKBH,KCRK.HGLB,KCRKS.CLBH,KCRKS.Qty as RKQty,null as LLQty,null as LastQty,KCRK.USERDATE,''RK'' as SB ');
    SQL.Add('	from KCRKS ');
    SQL.Add('	left join KCRK on KCRK.RKNO = KCRKS.RKNO ');
    SQL.Add('	Left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH ');
    SQL.Add('	where Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))  between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('	and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('	and KCRKS.CLBH like '''+AnyStock.Edit1.Text+'%''');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       sql.Add('        and KCRK.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       sql.Add('        and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       sql.add('        and KCRK.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add('	union all');
    SQL.Add('	Select JGZL.JGNO,null as LLNO,JGZL.CKBH,''GC'' as HGLB,JGZLS.CLBH,JGZLS.Qty as JGQty,null as LLQty,null as LastQty,JGZL.CFMDate1,''RKJG'' as SB');
    SQL.Add('	from JGZLS');
    SQL.Add('	Left join JGZL on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('	Left join KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CKBH ');
    SQL.Add('	where JGZL.CFMID1<>''NO'' and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('		  and Convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))   between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('		  and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('	    and JGZLS.CLBH like '''+AnyStock.Edit1.Text+'%''');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       SQL.Add('        and JGZL.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       SQL.Add('        and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       SQL.add('        and JGZL.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //烩虫ぃ陪ボ
    SQL.Add('	union all ');
    SQL.Add('	select null as RKNO,'''' as LLNO,KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,null as RKQty,KCLLS.Qty as LLQty,null as LastQty,KCLL.CFMDate,''CK'' as SB');
    SQL.Add('	from KCLLS ');
    SQL.Add('	left join KCLL on KCLL.LLNO = KCLLS.LLNO ');
    SQL.Add('	Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
    SQL.Add('	where KCLL.CFMID<>''NO'' and KCLL.SCBH<>''JJJJJJJJJJ'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111))   between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('	and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('	and KCLLS.CLBH like '''+AnyStock.Edit1.Text+'%''');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       SQL.Add('        and KCLL.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       SQL.Add('        and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       SQL.add('        and KCLL.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //烩虫腹ぃ陪ボ
    SQL.Add('	union all ');
    SQL.Add('	select null as RKNO,'''' as LLNO,KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,null as RKQty,KCLLS.Qty as LLQty,null as LastQty,KCLL.CFMDate,''CKJG'' as SB');
    SQL.Add('	from KCLLS ');
    SQL.Add('	left join KCLL on KCLL.LLNO = KCLLS.LLNO ');
    SQL.Add('	Left join KCZLS on KCLLS.CLBH=KCZLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
    SQL.Add('	where KCLL.CFMID<>''NO'' and KCLL.SCBH=''JJJJJJJJJJ'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111))   between '''+formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('	and KCZLS.KCBH like '''+AnyStock.KCBHEdit.Text+'%''');
    SQL.Add('	and KCLLS.CLBH like '''+AnyStock.Edit1.Text+'%''');
    //场畐
    if AnyStock.CBX1.text<>'ALL' then
       SQL.Add('        and KCLL.CKBH='''+AnyStock.CBX1.Text+'''')
    else
       SQL.Add('        and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if AnyStock.NotInCKBHEdit.Text<>'' then
       SQL.add('        and KCLL.CKBH<>'''+AnyStock.NotInCKBHEdit.Text+'''');
    //
    SQL.Add(' )  DataList');
    SQL.Add('Group by RKNO,LLNO,CLBH,convert(varchar,USERDATE,111) ,SB  ) DataList');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  with MatIOQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select a1.*,(select SUM(IsNull(LastQty,0.0)+IsNull(RKQty,0.0)-IsNull(LLQty,0.0)) as SumQty from #tmpDCAccumW b1 where b1.RN<=a1.RN and b1.CLBH=a1.CLBH  ) as SumQty1 ');
    SQL.Add('from #tmpDCAccumW a1');
    SQL.Add('where a1.CLBH=:CLBH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
