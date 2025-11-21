unit MonthProductionReportP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DB, Grids, DBGrids, DBTables,dateutils,
  GridsEh, DBGridEh, DBCtrls,comobj;

type
  TMonthProductionReport = class(TForm)
    Panel1: TPanel;
    PC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label1: TLabel;
    ym: TDateTimePicker;
    Q1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qt: TQuery;
    DBGridEh1: TDBGridEh;
    Q2: TQuery;
    DataSource2: TDataSource;
    DBGridEh2: TDBGridEh;
    TabSheet8: TTabSheet;
    q3: TQuery;
    DataSource3: TDataSource;
    tempq: TQuery;
    Label2: TLabel;
    FCB: TComboBox;
    q4: TQuery;
    DataSource4: TDataSource;
    DBGridEh3: TDBGridEh;
    q5: TQuery;
    DataSource5: TDataSource;
    DBGridEh4: TDBGridEh;
    q5depmemo: TStringField;
    q5bzmon: TStringField;
    q5planqty: TIntegerField;
    q5h: TFloatField;
    q5qty: TFloatField;
    q5pphofplan: TFloatField;
    q5pphofreal: TFloatField;
    Label3: TLabel;
    wcb: TComboBox;
    q4GSBH: TStringField;
    q4bzmon: TStringField;
    q4planqty: TIntegerField;
    q4h: TFloatField;
    q4qty: TFloatField;
    q4pm: TFloatField;
    q4pphofplan: TFloatField;
    q4pphofreal: TFloatField;
    smdd: TQuery;
    DBGridEh5: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Q1AfterOpen(DataSet: TDataSet);
    procedure PCChange(Sender: TObject);
    procedure wcbChange(Sender: TObject);
    procedure Q2AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthProductionReport: TMonthProductionReport;
  sdate,edate:TDate;
  Year,Month,Day:Word;
implementation

uses OrderAnalysisp;

{$R *.dfm}

procedure TMonthProductionReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=Cafree;
end;

procedure TMonthProductionReport.FormDestroy(Sender: TObject);
begin
   orderanalysis:=nil;
end;

procedure TMonthProductionReport.FormCreate(Sender: TObject);
begin
  ym.Date:=now;
end;

procedure TMonthProductionReport.Button1Click(Sender: TObject);
var i,ey,em,ny,nm,nd :word ;
var mon :string;
begin
  DecodeDate(ym.Date,Year,Month,Day);
  sdate:=EncodeDate(year,month,1);
  edate:=endofthemonth(sdate);
  DecodeDate(eDate,Year,Month,Day);
  pc.ActivePageIndex:=0;
  Label3.Visible:=false;
  wcb.Visible:=false;
//產生總表 SQL 設定
  with Qt do
  begin
    active:=false;
    sql.Clear;
    sql.add('if object_id('+''''+'tempdb..#Monrp'+''''+') is not null  ');
    sql.add('   begin   drop table #Monrp end   ');
    sql.add('select * into #Monrp ');
    sql.add('from (select classnameC as GSBH,SCBBS.GXLB,'+''''+'2.實際產能'+''''+' as SB,');
    sql.add('               sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
    sql.add('       from SCBBS ');
    sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('       left join monthreportdepclass on bdepartment.reportclass=classid ');
    sql.add('       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ')  ;
    sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('              and BDepartment.GXLB<>'+''''+'G'+'''');
    sql.add('              and (SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    //加入廠別
     if fcb.Text<>'ALL' then
        sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');


    sql.add('       group by classnameC,SCBBS.GXLB,datepart(day, SCBB.SCDate)  ');
                               //各廠加總
    sql.add('      union  all ');
    sql.add('      select classnameC as GSBH,SCBBS.GXLB,'+''''+'2.實際產能'+''''+' as SB,');
    sql.add('               isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay  ');
    sql.add('      from SCBBS ');
    sql.add('      left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('      left join monthreportdepclass on bdepartment.reportclass=classid ');
    sql.add('      left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ') ;
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('              and BDepartment.GXLB<>'+''''+'G'+'''');
    sql.add('              and (SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');

    sql.add('       group by classnameC,SCBBS.GXLB,datepart(day, SCBB.SCDate)  ');
            //每日各部門計劃產量
    sql.add('       union  all');
    sql.add('       select classnameC as GSBH,BDepartment.GXLB,'+''''+'1.目標產能'+''''+' as SB,');
    sql.add('              sum(isnull(SCBZCL.Qty,0)) as Qty ,datepart(day, SCBZCL.BZDate) as NDay  ');
    sql.add('       from SCBZCL ');
    sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    sql.add('       left join monthreportdepclass on bdepartment.reportclass=classid ');
    sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('              and BDepartment.GXLB<>'+''''+'G'+'''');
    sql.add('              and (BDepartment.GXLB='+''''+'S'+''''+' or BDepartment.GXLB='+''''+'A'+''''+')');
    //加入廠別
     if fcb.Text<>'ALL' then
        sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');

    sql.add('       group by  ClassnameC,BDepartment.GXLB,datepart(day, SCBZCL.BZDate)');
                              //各廠加總
    sql.add('       union all ');
    sql.add('       select classnameC as GSBH,BDepartment.GXLB,'+''''+'1.目標產能'+''''+' as SB,');
    sql.add('             isnull(sum(SCBZCL.Qty),0) as Qty ,32 as NDay  ');
    sql.add('       from SCBZCL ');
    sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    sql.add('       left join monthreportdepclass on bdepartment.reportclass=classid ');
    sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('              and BDepartment.GXLB<>'+''''+'G'+'''');
    sql.add('              and (BDepartment.GXLB='+''''+'S'+''''+' or BDepartment.GXLB='+''''+'A'+''''+')');
    //加入廠別
     if fcb.Text<>'ALL' then
        sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');
    sql.add('       group by ClassnameC,BDepartment.GXLB ');
    sql.add('     ) SCBBS ');
    sql.add('order by SCBBS.GSBH,SCBBS.GXLB,SCBBS.NDay ');
    //sql.add('alter table #Monrp ');
    //sql.add('alter column GSBH varchar(20) null ');
    //加入全公司加總數
    sql.add('insert into #Monrp ');
    sql.add('select '+''''+'ZTotal'+''''+' as GSBH,#Monrp.GXLB,#Monrp.SB,sum(Qty) as Qty,#Monrp.NDay ');
    sql.add('from #Monrp ');
    sql.add('group by #Monrp.GXLB,#Monrp.SB,#Monrp.NDay  ');
    sql.add('select * from #monrp ');
//    memo1.Text:=sql.Text;
    execsql;
    active:=true;
  end;

  with Q1 do
   begin
     active:=false;
     sql.clear;
     sql.add('select SCBBS.GSBH as Factory,SCBBS.GXLB,SCBBS.SB  ');
     for i:=1 to day do
       begin
         sql.add(',sum(case  when NDay='+''''+inttostr(i)+'''');
         sql.add(' then Qty  end) as '+''''+inttostr(i)+'''');
       end;
     sql.add(',sum(case  when NDay='+''''+'32'+'''');
     sql.add(' then Qty  else 0 end) as '+''''+'32'+'''');

     //每日實際產量及計劃
     sql.add('from  (select #Monrp.* from #Monrp  ');
     //每日計劃差額
     sql.add('       union all ');
     sql.add('       select SCBZCL.GSBH,SCBZCL.GXLB,'+''''+'3.誤差'+''''+' as SB,');
     sql.add('             case when isnull(SCBBS.Qty,0)<>0  then  isnull(SCBBS.Qty,0)-isnull(SCBZCL.Qty,0) end Qty,SCBZCL.NDay');
     sql.add('       from (select * from #Monrp where #Monrp.SB like '+''''+'1.目標產能'+''''+') SCBZCL ');
     sql.add('       left join (select gsbh,gxlb,sum(qty) as qty,nday from #Monrp ');
     sql.add('                  where #Monrp.SB like '+''''+'2.實際產能'+'''');
     sql.add('                  group by gsbh,gxlb,nday) SCBBS ');
     sql.add('                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS.GXLB and SCBZCL.NDay=SCBBS.NDay ') ;
     //每日達成率
     sql.add('       union all ');
     sql.add('       select SCBZCL.GSBH,SCBZCL.GXLB,'+''''+'4.達成率%'+''''+' as SB,');
     sql.add('             case when isnull(SCBZCL.Qty,0)<>0 then convert(int,isnull(SCBBS.Qty,0)/isnull(SCBZCL.Qty,0)*100)  end Qty,SCBZCL.NDay ');
     sql.add('       from (select * from #Monrp where #Monrp.SB like '+''''+'1.目標產能'+''''+') SCBZCL ');
     sql.add('       left join (select * from #Monrp where #Monrp.SB like '+''''+'2.實際產能'+''''+') SCBBS ');
     sql.add('                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS.GXLB and SCBZCL.NDay=SCBBS.NDay ') ;
     sql.add('       ) SCBBS ');
     sql.add('group by   SCBBS.GXLB,SCBBS.GSBH ,SCBBS.SB ');
     sql.add('order by   SCBBS.GXLB,SCBBS.GSBH ,SCBBS.SB');
     //memo1.Text:=sql.Text;
     active:=true;
   end;
//產能總表結束
//--------------------------------------------------------------------------------------------------------------------
//接單生產分析表 SQL 開始  Q3
  with tempq do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(min(scbbs.userdate)) as y,month(min(scbbs.userdate)) as m ');
    sql.add(' from scbbs');
    sql.add(' left join ddzl on ddzl.ddbh=scbbs.scbh');
    sql.add(' where CONVERT(char(7),shipdate,111)=substring('+''''+formatdatetime('yyyy/MM/dd',ym.date)+''''+',1,7)');
    //memo1.text:=sql.text;
    active:=true;
    ey:=fieldbyname('y').Value;   //最小生產年
    em:=fieldbyname('m').Value;   //最小生產月
//    decodedate(fieldbyname('y').Value,ey,em,ed);//最小生產年月
    DecodeDate(Date,ny,nm,nd);
  end;
  with q3 do
  begin
    i:=1;
    active:=false;
    sql.Clear;
    sql.add('select kfzl.kfjc,CONVERT(char(7),shipdate,111) as csd');
    sql.add(',isnull(sum(pairs),0) as OrderTotal,isnull(sum(smzl.qty),0) AS TOTOAL');
    nm:=nm+((ny-ey)*12);   //年加權
    while (ey <= ny) and  (em<=nm) do
    begin
      if em <=9 then    //轉成yyyy/mm格式
        mon:=inttostr(ey)+'/0'+inttostr(em)
      else
        mon:=inttostr(ey)+'/'+inttostr(em);

      sql.Add('    ,isnull(sum(smzl.q'+intTOstr(i)+'),0) as '+''''+mon+'''');
      i:=i+1;
      em:=em+1;
      if em > 12 then //跨年處理
      begin
        ey:=ey+1;
        em:=1;
        nm:=nm-12;
      end;
    end;
    sql.add('from ddzl');
    sql.add('left join kfzl on kfzl.kfdh=ddzl.khbh');
    sql.add('left join (');
    sql.add('	select scbbs.scbh,scbbs.gxlb,sum(qty) as qty');

    ey:=tempq.fieldbyname('y').Value;   //最小生產年
    em:=tempq.fieldbyname('m').Value;   //最小生產月
    i:=1;
    nm:=nm+((ny-ey)*12); //年加權
    while (ey<=ny) and (em<=nm) do
    begin
      if em <=9 then    //轉成yyyy/mm格式
        mon:=inttostr(ey)+'/0'+inttostr(em)
      else
        mon:=inttostr(ey)+'/'+inttostr(em);

      sql.Add('	,sum(case  when CONVERT(char(7),scdate,111)='+''''+mon+'''');
      sql.add('	 then scbbs.Qty  end) as q'+inttostr(i));

      i:=i+1;
      em:=em+1;
      if em > 12 then
      begin
        ey:=ey+1;
        nm:=nm-12;
        em:=1;
      end;
    end;
    //轉出生產最小年月
    if tempq.fieldbyname('m').Value <=9 then
       mon:=inttostr(tempq.fieldbyname('y').Value)+'/0'+inttostr(tempq.fieldbyname('m').Value)
    else
       mon:=inttostr(tempq.fieldbyname('y').Value)+'/'+inttostr(tempq.fieldbyname('m').Value);

    sql.add('	 from scbbs');
    sql.add('	left join scbb on scbb.prono=scbbs.prono');
    sql.add('	where gxlb='+''''+'A'+'''');
    sql.Add(' and CONVERT(char(7),scdate,111)>='+''''+mon+'''');
    sql.add('	group by scbbs.scbh,scbbs.gxlb) as smzl on smzl.scbh=ddzl.ddbh');
    //算出最小訂單交期年月
    if Month <=9 then   //轉成yyyy/mm格式
       mon:=inttostr(Year)+'/0'+inttostr(Month)
    else
       mon:=inttostr(Year)+'/'+inttostr(Month);

    sql.add('where CONVERT(char(7),shipdate,111)>='+''''+mon+'''');
    //加入廠別
     if fcb.Text<>'ALL' then
        sql.add('and ddzl.gsbh = '+''''+fcb.Text+'''');

    sql.add('group by kfzl.kfjc,CONVERT(char(7),shipdate,111)');
    sql.add('order by  kfzl.kfjc,CONVERT(char(7),shipdate,111)');
    //memo1.text:=sql.text;
  end;
//接單生產分析表結束
//---------------------------------------------------------------------------------------
//生產效能總表  q4
  with q4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select classnameC as GSBH,CONVERT(char(7),SCBZCL.bzdate,111) as bzmon');
    sql.add('	,sum(SCBZCL.qty) as planqty, worktime.h	,rq.qty');
    sql.add('	,((rq.qty/sum(SCBZCL.qty))*100) as pm');
    sql.add('	,(sum(SCBZCL.qty)/worktime.h) as pphofplan');
    sql.add('	,(rq.qty/worktime.h) as pphofreal');
    sql.add('from SCBZCL');
    sql.add('left join BDepartment on BDepartment.ID=SCBzcl.DepNO ');
    sql.add('left join monthreportdepclass on bdepartment.reportclass=classid ');
    sql.add('left join');
    sql.add('	(select reportclass,sum(scgs) as h from scrl ');
    sql.add('   left join BDepartment on BDepartment.ID=scrl.DepNO');
    sql.add('			where (scyear='+''''+inttostr(Year)+'''');
    sql.add('             and scmonth='+''''+inttostr(Month)+''''+') ');

    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scrl.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if wcb.Text<>'ALL' then
       sql.add('and BDepartment.gxlb= '+''''+wcb.Text+'''');

    sql.add('		group by reportclass) as worktime on bdepartment.reportclass=worktime.reportclass');
    sql.add('left join ');
    sql.add('	(select reportclass,sum(scbbs.qty) as qty from scbb');
    sql.add('		left join scbbs on scbb.prono=scbbs.prono');
    sql.add('		left join BDepartment on BDepartment.ID=scbb.DepNO');

    if Month <=9 then   //轉成yyyy/mm格式
       mon:=inttostr(Year)+'/0'+inttostr(Month)
    else
       mon:=inttostr(Year)+'/'+inttostr(Month);

    sql.add('		where CONVERT(char(7),scbb.scdate,111) = '+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scbb.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if Wcb.Text<>'ALL' then
       sql.add('and scbbs.gxlb = '+''''+wcb.Text+'''');

    sql.add('		group by reportclass) as rq on rq.reportclass=bdepartment.reportclass');
    sql.add('where CONVERT(char(7),SCBZCL.bzdate,111)='+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if wcb.Text<>'ALL' then
       sql.add('and BDepartment.gxlb= '+''''+wcb.Text+'''');


    sql.add('	and SCBZCL.qty <> 0');
    sql.add('group by classnameC ,CONVERT(char(7),SCBZCL.bzdate,111),worktime.h,rq.qty');
    //memo1.Text:=sql.text;
    //active:=true;

  end;
//生產效能總表結束
//--------------------------------------------------------------------------------------------------
//生產效能明細  q5
  with q5 do
  begin
    sql.Clear;
    sql.add('select BDepartment.depmemo,CONVERT(char(7),SCBZCL.bzdate,111) as bzmon');
    sql.add('	,sum(SCBZCL.qty) as planqty, worktime.h	,rq.qty');
    sql.add('	,(sum(SCBZCL.qty)/worktime.h) as pphofplan');
    sql.add('	,(rq.qty/worktime.h) as pphofreal');
    sql.add('from SCBZCL');
    sql.add('left join BDepartment on BDepartment.ID=SCBzcl.DepNO ');
    sql.add('left join');
    sql.add('	(select depno,sum(scgs) as h from scrl ');
    sql.add('			where (scyear='+''''+inttostr(Year)+'''');
    sql.add('             and scmonth='+''''+inttostr(Month)+''''+') ');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scrl.gsbh = '+''''+fcb.Text+'''');

    sql.add('		group by depno) as worktime on scbzcl.depno=worktime.depno');
    sql.add('left join ');
    sql.add('	(select depno,sum(scbbs.qty) as qty from scbb');
    sql.add('		left join scbbs on scbb.prono=scbbs.prono');

    if Month <=9 then   //轉成yyyy/mm格式
       mon:=inttostr(Year)+'/0'+inttostr(Month)
    else
       mon:=inttostr(Year)+'/'+inttostr(Month);

    sql.add('		where CONVERT(char(7),scbb.scdate,111) = '+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scbb.gsbh = '+''''+fcb.Text+'''');

    sql.add('		group by depno) as rq on rq.depno=scbzcl.depno ');
    sql.add('where CONVERT(char(7),SCBZCL.bzdate,111)='+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');

    sql.add('	and SCBZCL.qty <> 0');
    sql.add('group by BDepartment.depmemo,CONVERT(char(7),SCBZCL.bzdate,111),worktime.h,rq.qty');
  end;
//生產效能明細結束

end;

procedure TMonthProductionReport.PCChange(Sender: TObject);
begin
  case pc.ActivePageIndex of
    0:
    begin
      Label3.Visible:=false;
      wcb.Visible:=false;
      qt.Active:=true;
      q1.active:=true;
    end;

    1:
    begin
      Label3.Visible:=false;
      wcb.Visible:=false;
      with q2 do
      begin
        q2.Active:=true
      end;
    end;

    2:
    begin
      Label3.Visible:=false;
      wcb.Visible:=false;
      with q3 do
      begin
        q3.Active:=true
      end;
    end;

    3:
    begin
      Label3.Visible:=true;
      wcb.Visible:=true;
      with q4 do
      begin
        q4.Active:=true
      end;
    end;

    4:
    begin
      label3.Visible:=true;
      wcb.Visible:=true;
      with q5 do
      begin
        q5.Active:=true
      end;
    end;


  end;
end;

procedure TMonthProductionReport.Q1AfterOpen(DataSet: TDataSet);
var i:word;
begin
 with DBGrideh1 do
   begin
     columns[0].Width:=40;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='廠區|Factory';
     columns[1].Width:=30;
     columns[1].title.titlebutton:=true;
     columns[1].title.caption:='工段|GX';
     columns[2].Width:=65;
     columns[2].title.caption:='類別|SB';
     for i:=3 to q1.FieldCount-2 do
       begin
         Tfloatfield(q1.Fields[i]).displayformat:='##,#0';
         if dayoftheweek(EncodeDate(year,Month,strtoint(columns[i].title.caption)))=7 then
           begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
           end;
         columns[i].Width:=40;
         columns[i].Title.Caption:='日  期  ( '+inttostr(year)+' / '+inttostr(Month)+' )|'+columns[i].Title.Caption;
       end;
     columns[q1.FieldCount-1].Width:=60;
     Tfloatfield(q1.Fields[q1.FieldCount-1]).displayformat:='##,#0' ;
     columns[q1.FieldCount-1].font.style:=[fsbold];
     columns[q1.FieldCount-1].title.caption:='合計|Total';
   end;
end;


procedure TMonthProductionReport.wcbChange(Sender: TObject);
var mon :string;
begin
//---------------------------------------------------------------------------------------
//生產效能總表  q4
  with q4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select classnameC as GSBH,CONVERT(char(7),SCBZCL.bzdate,111) as bzmon');
    sql.add('	,sum(SCBZCL.qty) as planqty, worktime.h	,rq.qty');
    sql.add('	,((rq.qty/sum(SCBZCL.qty))*100) as pm');
    sql.add('	,(sum(SCBZCL.qty)/worktime.h) as pphofplan');
    sql.add('	,(rq.qty/worktime.h) as pphofreal');
    sql.add('from SCBZCL');
    sql.add('left join BDepartment on BDepartment.ID=SCBzcl.DepNO ');
    sql.add('left join monthreportdepclass on bdepartment.reportclass=classid ');
    sql.add('left join');
    sql.add('	(select reportclass,sum(scgs) as h from scrl ');
    sql.add('   left join BDepartment on BDepartment.ID=scrl.DepNO');
    sql.add('			where (scyear='+''''+inttostr(Year)+'''');
    sql.add('             and scmonth='+''''+inttostr(Month)+''''+') ');

    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scrl.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if wcb.Text<>'ALL' then
       sql.add('and BDepartment.gxlb= '+''''+wcb.Text+'''');

    sql.add('		group by reportclass) as worktime on bdepartment.reportclass=worktime.reportclass');
    sql.add('left join ');
    sql.add('	(select reportclass,sum(scbbs.qty) as qty from scbb');
    sql.add('		left join scbbs on scbb.prono=scbbs.prono');
    sql.add('		left join BDepartment on BDepartment.ID=scbb.DepNO');

    if Month <=9 then   //轉成yyyy/mm格式
       mon:=inttostr(Year)+'/0'+inttostr(Month)
    else
       mon:=inttostr(Year)+'/'+inttostr(Month);

    sql.add('		where CONVERT(char(7),scbb.scdate,111) = '+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scbb.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if Wcb.Text<>'ALL' then
       sql.add('and scbbs.gxlb = '+''''+wcb.Text+'''');

    sql.add('		group by reportclass) as rq on rq.reportclass=bdepartment.reportclass');
    sql.add('where CONVERT(char(7),SCBZCL.bzdate,111)='+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if wcb.Text<>'ALL' then
       sql.add('and BDepartment.gxlb= '+''''+wcb.Text+'''');


    sql.add('	and SCBZCL.qty <> 0');
    sql.add('group by classnameC ,CONVERT(char(7),SCBZCL.bzdate,111),worktime.h,rq.qty');
    //memo1.Text:=sql.text;
    active:=true;

  end;
//生產效能總表結束
//--------------------------------------------------------------------------------------------------

//生產效能明細  q5
  with q5 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select BDepartment.depmemo,CONVERT(char(7),SCBZCL.bzdate,111) as bzmon');
    sql.add('	,sum(SCBZCL.qty) as planqty, worktime.h	,rq.qty');
    sql.add('	,(sum(SCBZCL.qty)/worktime.h) as pphofplan');
    sql.add('	,(rq.qty/worktime.h) as pphofreal');
    sql.add('from SCBZCL');
    sql.add('left join BDepartment on BDepartment.ID=SCBzcl.DepNO ');
    sql.add('left join');
    sql.add('	(select depno,sum(scgs) as h from scrl ');
    sql.add('   left join BDepartment on BDepartment.ID=scrl.DepNO');
    sql.add('			where (scyear='+''''+inttostr(Year)+'''');
    sql.add('             and scmonth='+''''+inttostr(Month)+''''+') ');

    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scrl.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if wcb.Text<>'ALL' then
       sql.add('and BDepartment.gxlb= '+''''+wcb.Text+'''');

    sql.add('		group by depno) as worktime on scbzcl.depno=worktime.depno');
    sql.add('left join ');
    sql.add('	(select depno,sum(scbbs.qty) as qty from scbb');
    sql.add('		left join scbbs on scbb.prono=scbbs.prono');

    if Month <=9 then   //轉成yyyy/mm格式
       mon:=inttostr(Year)+'/0'+inttostr(Month)
    else
       mon:=inttostr(Year)+'/'+inttostr(Month);

    sql.add('		where CONVERT(char(7),scbb.scdate,111) = '+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and scbb.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if Wcb.Text<>'ALL' then
       sql.add('and scbbs.gxlb = '+''''+wcb.Text+'''');

    sql.add('		group by depno) as rq on rq.depno=scbzcl.depno ');
    sql.add('where CONVERT(char(7),SCBZCL.bzdate,111)='+''''+mon+'''');
    //加入廠別
    if fcb.Text<>'ALL' then
       sql.add('and BDepartment.gsbh = '+''''+fcb.Text+'''');
    //加入工段
    if wcb.Text<>'ALL' then
       sql.add('and BDepartment.gxlb= '+''''+wcb.Text+'''');


    sql.add('	and SCBZCL.qty <> 0');
    sql.add('group by BDepartment.depmemo,CONVERT(char(7),SCBZCL.bzdate,111),worktime.h,rq.qty');
    //memo1.Text:=sql.text;
    active:=true;

  end;
//生產效能明細結束
end;

procedure TMonthProductionReport.Q2AfterOpen(DataSet: TDataSet);
var i:word;
begin
 with DBGrideh2 do
   begin
     columns[0].Width:=100;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='品牌|Customer';
     columns[1].Width:=60;
     columns[1].title.titlebutton:=true;
     columns[1].title.caption:='出貨月|ShipMonthe';
     columns[2].Width:=60;
     Tfloatfield(q2.Fields[2]).displayformat:='##,#0';
     columns[2].title.caption:='訂單總數|Order Total';

     columns[3].Width:=60;
     Tfloatfield(q2.Fields[3]).displayformat:='##,#0';
     columns[3].title.caption:='完成總數|OK QTY';

     columns[4].Width:=60;
     Tfloatfield(q2.Fields[4]).displayformat:='##,#0';
     columns[4].title.caption:='未排程|NO Plan ';

     columns[5].Width:=60;
     Tfloatfield(q2.Fields[5]).displayformat:='##,#0';
     columns[5].title.caption:='A12生產|A12 QTY';

     columns[6].Width:=60;
     Tfloatfield(q2.Fields[6]).displayformat:='##,#0';
     columns[6].title.caption:='A3生產|A3 QTY';

     columns[7].Width:=60;
     Tfloatfield(q2.Fields[7]).displayformat:='##,#0';
     columns[7].title.caption:='B1生產|B1 QTY';


     for i:=8 to q2.FieldCount-1 do
       begin
         Tfloatfield(q2.Fields[i]).displayformat:='##,#0';
         if dayoftheweek(EncodeDate(year,Month,strtoint(columns[i].title.caption)))=7 then
           begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
           end;
         columns[i].Width:=40;
         columns[i].Title.Caption:='日  期  ( '+inttostr(year)+' / '+inttostr(Month)+' )|'+columns[i].Title.Caption;
       end;
   end;

end;

procedure TMonthProductionReport.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

smdd.Active:=false;
smdd.SQL.Clear;
case pc.ActivePageIndex of
  0:
    begin
      smdd.SQL.Text:=q1.SQL.Text;
      smdd.Active:=true;
    end;
  1:
    begin
      smdd.SQL.Text:=q2.SQL.Text;
      smdd.Active:=true;
    end;
  2:
    begin
      smdd.SQL.Text:=q3.SQL.Text;
      smdd.Active:=true;
    end;
  3:
    begin
      smdd.SQL.Text:=q4.SQL.Text;
      smdd.Active:=true;
    end;
  4:
    begin
      smdd.SQL.Text:=q5.SQL.Text;
      smdd.Active:=true;
    end;

end;
try
  WorkBook:=eclApp.workbooks.Add;
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   SMDD.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SMDD.fields[i-1].FieldName;
    end;
  SMDD.First;
  j:=2;
  while   not  SMDD.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SMDD.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SMDD.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SMDD.Next;
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
end.

