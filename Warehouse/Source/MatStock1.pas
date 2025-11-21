unit MatStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls,dateutils, PrnDbgeh,comobj;

type
  TMatStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    Button3: TButton;
    CBX1: TComboBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    query2: TQuery;
    PopupMenu1: TPopupMenu;
    NN2: TMenuItem;
    NN3: TMenuItem;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1KCBH: TStringField;
    Query1CKBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TFloatField;
    Query1USACC: TFloatField;
    PrintDBGridEh1: TPrintDBGridEh;
    RadioGroup1: TRadioGroup;
    Query1ZLBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure NN3Click(Sender: TObject);
    procedure NN2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatStock: TMatStock;  
   NDate:TDate;
   ayear,amonth:string;

implementation

uses main1;

{$R *.dfm}

procedure TMatStock.FormDestroy(Sender: TObject);
begin
MatStock:=nil;
end;

procedure TMatStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#ACLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #ACLZLKC end   ');
    sql.add('  if object_id('+''''+'tempdb..#USPrice'+''''+') is not null  ');
    sql.add('begin   drop table #USPrice end   ');  
    sql.add('  if object_id('+''''+'tempdb..#ZLZLS2BH'+''''+') is not null  ');
    sql.add('begin   drop table #ZLZLS2BH end   ');
    execsql;
  end;
action:=cafree;
end;

procedure TMatStock.Button1Click(Sender: TObject);
var 
   year,oldyear,month,oldmonth,day:word;
begin
if CBX1.text='' then
  begin
    showmessage('Pls select  warehouse first.');
    abort;
  end;
decodedate(DTP1.Date,Year,Month,Day);   //т畐闽计沮
oldmonth:=month;
oldyear:=year;
incAMonth(Year,Month,Day,-1);
ayear:=floattostr(year);
amonth:=floattostr(month);
if length(amonth)=1 then
  amonth:='0'+amonth;
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#USPrice'+''''+') is not null  ');
    sql.add('begin   drop table #USPrice end   ');
    sql.add('declare @HL int ');
    sql.add('set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMONTH DESC,HLDAY DESC)  ');
    {sql.add('select CLDH as CLBH ,case when USPrice is null then round(convert(money,VNPrice)/@HL,4) else USPrice end as USPrice');
    sql.add('into #USPrice from (select CLZL.CLDH,');
    sql.add('                      (select top 1 USPrice from KCRKS with (nolock) ');
    sql.add('                         where convert(smalldatetime,convert(varchar,KCRKS.USERDATE,111)) between ');
    sql.add('                               '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.Date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('                               and KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))  ');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))');
    sql.add('                         order by USERDATE  desc)  as USPrice,');
    sql.add('                      (select top 1 VNPrice from KCRKS  with (nolock)  ');
    sql.add('                         where convert(smalldatetime,convert(varchar,KCRKS.USERDATE,111)) between ');
    sql.add('                               '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.Date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('                               and KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))    ');
    sql.add('                         order by USERDATE  desc)  as VNPrice');
    sql.add('from CLZL  with (nolock) ) CLZL  ');
    sql.add('where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  '); }
    sql.add('select CLBH,USPrice into #USPrice from CWDJ ');
    sql.add('where DJYEAR='+''''+floattostr(oldyear)+'''');
    sql.add('      and DJMONTH='+''''+floattostr(oldmonth)+'''');
    sql.add('insert #USPrice ');
    sql.add('select CLBH,convert(money,avg(TotPrice))/@HL as USPrice  from CWCLZL  with (nolock) ');
    sql.add('where KCYEAR='+''''+ ayear+'''');
    sql.add('      and KCMONTH='+''''+amonth+'''');
    sql.add('      and not exists(select CLBH from #USPrice where #USPRice.CLBH=CWCLZL.CLBH )');
    sql.add('group by CLBH ');
    execsql;
    active:=false;
  end;

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#ACLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #ACLZLKC end   ');
    sql.add('  if object_id('+''''+'tempdb..#ZLZLS2BH'+''''+') is not null  ');
    sql.add('begin   drop table #ZLZLS2BH end   ');

    sql.add('select distinct ZLZLS2.CLBH into #ZLZLS2BH ');
    sql.add('from ZLZLS2  with (nolock) ');
    sql.add('left join DDZL with (nolock)  on DDZL.ZLBH=ZLZLS2.ZLBH ');
    sql.add('left join KCCK with (nolock)  on KCCK.GSBH=DDZL.GSBH and KCCK.CKBH='+''''+CBX1.Text+'''');
    sql.add('where  KCCK.CKBH is not null');
    sql.add('      and DDZL.ShipDate>'+''''+formatdatetime('yyyy/MM/dd',NDate)+'''' );
    execsql;

    active:=false;
    sql.Clear;
    sql.Add('select CLZL.CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp');
    sql.add('into #ACLZLKC from CLZL  with (nolock)  ');
                 //戳畐
    sql.add('left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
    sql.add('           from KCCLMONTH  with (nolock)  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('           and KCMONTH='+''''+amonth+'''');
    sql.add('           and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('           and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
    sql.add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');
          //畐计秖
    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS with (nolock) ');
    sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('           and KCRK.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');
           //畐计秖
    sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS  with (nolock) ');
    sql.add('           left join KCLL with (nolock)  on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('           and KCLL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');
           //畐计秖
    sql.add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS with (nolock) ');
    sql.add('           left join JGZL with (nolock)  on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');
            //畐计秖
    sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL with (nolock)  on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
   // sql.add('                      and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH');
       //虫秨临ゼㄓ计秖
    sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS with (nolock)  ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where  JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where  JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH');
    execsql;

    active:=false;
    sql.clear;
    sql.add('select KC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KC.KCBH,KC.CKBH,KC.Qty ,');
    sql.add('       #USPrice.USPrice,isnull(#USPrice.USPrice,0)*KC.Qty USACC ');
    sql.add('       ,(select top 1 ZLZLS2.ZLBH from ZLZLS2 left join DDZL on DDZl.ZLBH=ZLZLS2.ZLBH   ');
    sql.add('         where ZLZLS2.CLBH=KC.CLDH and DDZL.ShipDate is not null order by DDZL.ShipDate DESC) as ZLBH  ');
    sql.add('from (select #ACLZLKC.CLDH,KCZLS.KCBH,KCZLS.CKBH,');
    sql.add('             isnull(#ACLZLKC.LastRem,0)+isnull(#ACLZLKC.RKQty,0)-isnull(#ACLZLKC.LLQty,0)+isnull(#ACLZLKC.JGRK,0)-isnull(#ACLZLKC.JGCK,0) as Qty');
    sql.add('      from #ACLZLKC ');
    sql.add('      left join (select * from KCZLS  where CKBH='+''''+CBX1.text+'''');
    sql.add('                 ) KCZLS on KCZLS.CLBH=#ACLZLKC.CLDH');
    //sql.add('      left join CLZHZL on CLZHZL.CLDH=#ACLZLKC.CLDH ')  ;
    sql.add('      where not (#ACLZLKC.LastRem is null  and #ACLZLKC.RKQty is null and #ACLZLKC.LLQty is null ');
    sql.add('                     and #ACLZLKC.JGRK is null and #ACLZLKC.JGCK is null and #ACLZLKC.JGCKTemp is null)');
    sql.add('            and KCZLS.CKBH like '+''''+CBX1.Text+'%'+'''');
    sql.add('            and #ACLZLKC.CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('       ) KC ');
    sql.add('left join CLZL  with (nolock) on CLZL.CLDH=KC.CLDH ');
    {sql.add('left join (select ZLZLS2.CLBH,max(ZLZLS2.ZLBH) as ZLBH from ZLZLS2 ');
    sql.add('           left join DDZL on DDZl.ZLBH=ZLZLS2.ZLBH ');
    sql.add('           where DDZL.ShipDate is not null    }
    sql.add('left join #USPrice on #USPrice.CLBH=KC.CLDH ');
    sql.add('where CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and KC.Qty>0.05');
    if radiogroup1.itemindex=0 then
      begin
        sql.add('     and exists(select  ZLZLS2.CLBH from ZLZLS2 with (nolock)  ');
        sql.add('                left join DDZL  with (nolock)  on DDZL.ZLBH=ZLZLS2.ZLBH ');
        sql.add('                left join KCCK  with (nolock)  on KCCK.GSBH=DDZL.GSBH and KCCK.CKBH='+''''+CBX1.Text+'''');
        sql.add('                where ZLZLS2.CLBH=KC.CLDH ');
        sql.add('                      and KCCK.CKBH is not null');
        sql.add('                      and DDZL.ShipDate>'+''''+formatdatetime('yyyy/MM/dd',NDate)+''''+')');
        DBGrid1.Columns[9].Width:=0;
      end;
    if radiogroup1.itemindex=1 then
      begin
        sql.add('     and not exists(select  #ZLZLS2BH.CLBH from #ZLZLS2BH where #ZLZLS2BH.CLBH=KC.CLDH)');
        DBGrid1.Columns[9].Width:=0;
      end;
    if radiogroup1.itemindex=2 then
      begin
        sql.add('     and  exists(select  ZLZLS2.CLBH from ZLZLS2  with (nolock)  ');
        sql.add('                left join DDZL  with (nolock)   on DDZL.ZLBH=ZLZLS2.ZLBH ');
        sql.add('                where ZLZLS2.CLBH=KC.CLDH ');
        sql.add('                      and DDZL.ShipDate>'+''''+formatdatetime('yyyy/MM/dd',NDate)+''''+')');
        sql.add('     and not exists(select  #ZLZLS2BH.CLBH from #ZLZLS2BH where #ZLZLS2BH.CLBH=KC.CLDH)');
        DBGrid1.Columns[9].Width:=95;
      end;
    //sql.add('group by  KC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KC.KCBH,KC.CKBH,KC.Qty ');
    sql.add('order by KC.CLDH  ');
    active:=true;
  end;
end;

procedure TMatStock.FormCreate(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    while not eof do
      begin
        CBX1.items.add(fieldbyname('CKBH').AsString);
        next;
      end;
    CBX1.itemindex:=0;
    active:=false;
   { sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#USPrice'+''''+') is not null  ');
    sql.add('begin   drop table #USPrice end   ');
    sql.add('declare @HL int ');
    sql.add('set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMONTH DESC,HLDAY DESC)  ');
    sql.add('select CLDH as CLBH ,case when USPrice is null then round(convert(money,VNPrice)/@HL,4) else USPrice end as USPrice');
    sql.add('into #USPrice from (select CLZL.CLDH,');
    sql.add('                      (select top 1 USPrice from KCRKS');
    sql.add('                         where convert(smalldatetime,convert(varchar,KCRKS.USERDATE,111)) between ');
    sql.add('                               '''+formatdatetime('yyyy/MM/dd',startofmonth(DTP1.Date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('                               and KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))  ');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))');
    sql.add('                         order by USERDATE  desc)  as USPrice,');
    sql.add('                      (select top 1 VNPrice from KCRKS  ');
    sql.add('                         where convert(smalldatetime,convert(varchar,KCRKS.USERDATE,111)) between ');
    sql.add('                               '''+formatdatetime('yyyy/MM/dd',startofmonth(DTP1.Date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('                               and KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))    ');
    sql.add('                         order by USERDATE  desc)  as VNPrice');
    sql.add('from CLZL ) CLZL  ');
    sql.add('where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  ');
    sql.Add('order by CLZL.CLDH  ');
    sql.add('insert #USPrice ');
    sql.add('select CLBH,convert(money,TotTPrice)/@HL as USPrice,VNPrice from CWCLZL ');
    sql.add('where
    execsql;
    active:=false; }
  end;
DTP1.Date:=NDate;
end;

procedure TMatStock.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
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

procedure TMatStock.Button3Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMatStock.NN3Click(Sender: TObject);
begin
button3click(nil);
end;

procedure TMatStock.NN2Click(Sender: TObject);
begin
button2click(nil);
end;

end.
