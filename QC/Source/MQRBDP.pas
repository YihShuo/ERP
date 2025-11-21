unit MQRBDP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils,comobj;

type
  TMQRBD = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    Label1: TLabel;
    CBX3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MQRBD: TMQRBD;
  sdate,edate:Tdate;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TMQRBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMQRBD.FormDestroy(Sender: TObject);
begin
  MQRBD:=nil;
end;

procedure TMQRBD.Button1Click(Sender: TObject);
var
  a,b,c,i,j :word;
begin

  a:=strtoint(CBX1.text);
  b:=strtoint(CBX2.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);

  //整理當月工作日期
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct NDay ');
    sql.add('from (select  datepart(day, SCBB.SCDate) as NDay from SCBB');
    sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and SCBB.GSBH ='+''''+main.edit2.Text+''''+'');
    sql.add('      ) as DayList order by NDay');
    active:=true;
  end;

  //整理交叉表的內容
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select QCC.DepNo,QCC.DepName,QCC.SB');
    while not QTemp.eof do
    begin
      //e:=Qtemp.fieldbyname('NDay').asstring;
      sql.add(',sum(case  when NDay='+''''+Qtemp.fieldbyname('NDay').asstring+'''');
      sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('NDay').asstring+'''');
      QTemp.Next;
    end;

    //部門每日實際生產量
    sql.add('from (select scbb.DepNo,BDepartment.DepName,'+''''+'1.Output'+''''+' as SB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
    sql.add('	     from scbbs');
    sql.add('	     left join scbb on scbb.ProNo = scbbs.ProNo');
    sql.add('	     left join BDepartment on scbb.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and SCBB.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and scbbs.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and scbbs.GXLB = '+''''+'S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (scbbs.GXLB = '+''''+'A'+''''+' or scbbs.GXLB = '+''''+'S'+''''+')');
    sql.add('	     group by scbb.DepNo,BDepartment.DepName,scbbs.GXLB,DATEPART(DAY,SCBB.SCDate)');

    //部門檢驗數量
    sql.add('	     union all');
    sql.add('	     select WOPR.DepNo,BDepartment.DepName,'+''''+'2.Total inspection'+''''+' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty');
    sql.add('             ,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('	     group by WOPR.DepNo,BDepartment.DepName,DATEPART(DAY,WOPR.USERDATE)');

    //部門檢驗不良數量
    sql.add('	     union all');
    sql.add('	     select WOPR.DepNo,BDepartment.DepName,'+''''+'3.Total defect'+''''+' as SB,SUM(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('	     group by WOPR.DepNo,BDepartment.DepName,DATEPART(DAY,WOPR.USERDATE)	');

    //部門檢查良率
    sql.add('	     union all');
    sql.add('      select WOPRB.DepNo,WOPRB.DepName,'+''''+'4.Pass%'+''''+' as SB,');
    sql.add('			 Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*100),2) as Qty,WOPRB.NDay');
    sql.add('	     from(select WOPR.DepNo,BDepartment.DepName,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty');
    sql.add('           ,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('		        from WOPR');
    sql.add('		        left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('           where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                  and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('		        group by WOPR.DepNo,BDepartment.DepName,DATEPART(DAY,WOPR.USERDATE)) as WOPRB');
    sql.Add('	     left join (select WOPR.DepNo,SUM(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('			            from WOPR');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                        and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                      and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                      and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                      and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('				          group by WOPR.DepNo,DATEPART(DAY,WOPR.USERDATE)) as QCRDB on WOPRB.DepNo = QCRDB.DepNo and WOPRB.NDay = QCRDB.NDay');

    //檢驗總數量
    sql.add('	     union all');
    sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'+''''+'5.Daily inspection'+''''+' as SB');
    sql.add('             ,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('		   from WOPR');
    sql.add('			 left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('			 group by DATEPART(DAY,WOPR.USERDATE)');

    //檢驗通過總數量
    sql.add('	     union all');
    sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'+''''+'6.Daily Pass'+''''+' as SB');
    sql.add('             ,SUM(WOPR.Qty)+SUM(WOPR.ReQty) as Qty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('	     group by DATEPART(DAY,WOPR.USERDATE)');

    //檢驗不良總數量
    sql.add('	     union all');
    sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'+''''+'7.Daily defect'+''''+' as SB,SUM(WOPR.NGQty) as Qty');
    sql.add('             ,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('	     group by DATEPART(DAY,WOPR.USERDATE)');

    //線均檢驗數量
    sql.add('	     union all');
    sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'+''''+'8.AVG inspection'+''''+' as SB');
    sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Qty,DayInsp.NDay ');
    sql.add('	     from (select SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('	    		   from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                   and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                 and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                 and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                 and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('			       group by DATEPART(DAY,WOPR.USERDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('				          from WOPR');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                        and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                      and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                      and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                      and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('			            group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay');

    //線均不良數量
    sql.add('	     union all');
    sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'+''''+'9.AVG defect'+''''+' as SB');
    sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Qty,DayInsp.NDay ');
    sql.add('	     from (select sum(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('			       from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                   and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                 and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                 and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                 and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('			       group by DATEPART(DAY,WOPR.USERDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('				          from WOPR');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                        and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                      and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                      and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                      and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('				          group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay	');

    //線均不良率
    sql.add('	     union all');
    sql.add('	     select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'+''''+'10.AVG defect%'+''''+' as SB');
    sql.add('			        ,Round(((CAST(DayInsp.NGQty AS Float)/Depcount.Depcount)/(CAST(DayInsp.InsQty AS Float)/Depcount.Depcount))*100,2) as Qty');
    sql.add('			        ,DayInsp.NDay ');
    sql.add('	     from (select SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as InsQty,SUM(WOPR.NGQty) as NGQty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('		    	   from WOPR');
    sql.add('		         left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                   and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                 and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                 and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                 and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('			       group by DATEPART(DAY,WOPR.USERDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('				          from WOPR');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                        and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                      and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                      and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                      and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('			            group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay');

    //每日RFT
    sql.add('	     union all');
    sql.add('	     select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'+''''+'11.Daily RFT%'+''''+' as SB');
    sql.add('             ,100-(Round(((CAST(DayInsp.NGQty AS Float)/Depcount.Depcount)/(CAST(DayInsp.InsQty AS Float)/Depcount.Depcount))*100,2)) as Qty');
    sql.add('	            ,DayInsp.NDay ');
    sql.add('	     from (select SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as InsQty,SUM(WOPR.NGQty) as NGQty,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('			       from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                   and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                 and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                 and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                 and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('			       group by DATEPART(DAY,WOPR.USERDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
    sql.add('				          from WOPR');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                        and WOPR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                      and WOPR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                      and WOPR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                      and (WOPR.GXLB = '+''''+'A'+''''+' or WOPR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('				          group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay');
    sql.add('	     )as QCC');
    sql.add('group by QCC.DepNo,QCC.DepName,QCC.SB	');
    sql.add('order by QCC.DepNo,QCC.SB');
    //memo1.Text:=sql.Text;
    FuncObj.writeErrorLog(sql.Text);
    active:=true;
  end;

  with DBGrideh1 do
  begin
    columns[0].Width:=0;
    columns[0].title.caption:='部門編號|DepNo';
    columns[1].Width:=95;
    columns[1].title.caption:='部門名稱|DepName';
    columns[2].Width:=95;
    columns[2].title.caption:='項目|'+columns[2].title.caption;
    for j:=3 to Query1.FieldCount-1 do
    begin
      columns[j].Width:=35;
      columns[j].Title.Caption:='日   期   Weekday|'+columns[j].Title.Caption;
      if j mod 2 <> 0 then
        columns[j].Color:=clInfoBk;
    end;
  end;

end;

procedure TMQRBD.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(query1.FieldByName('DepNo').value)='Z' then
  begin
    dbgrideh1.canvas.brush.Color:=clAqua;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

  if trim(query1.FieldByName('DepNo').value)='Z1' then
  begin
    dbgrideh1.canvas.brush.Color:=clAqua;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

  if trim(query1.FieldByName('SB').value)='11.Daily RFT%' then
  begin
    if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
        or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
        or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
        or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
        or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
        or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
        or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')
    then
    begin
      if (Column.Field.value<90)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clred;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
      if (Column.Field.value>95)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clBlue;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
    end;
  end;

  if trim(query1.FieldByName('SB').value)='4.Pass%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
        or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
        or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
        or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
        or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
        or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
        or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')
    then
    begin
      if (Column.Field.value<90)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clred;

        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
      if (Column.Field.value>95)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clBlue;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
    end;
  end;
end;

procedure TMQRBD.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  Query1.active  then
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
          for   i:=0   to   Query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
            end;

          Query1.First;
          j:=2;
          while   not   Query1.Eof   do
            begin
              for   i:=0   to  Query1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
              end;
            Query1.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;

end;

end.
