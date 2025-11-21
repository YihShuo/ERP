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
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    CK3: TCheckBox;
    CK4: TCheckBox;
    Label3: TLabel;
    Edit1: TEdit;
    InspectSQLCK: TCheckBox;
    TodayCheckBox: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function Get_SCBBS_SubSQL():String;
    function Get_SMZL_SubSQL():String;
    function Get_WOPR_SubSQL():String;

  public
    { Public declarations }
  end;

var
  MQRBD: TMQRBD;
  sdate,edate:Tdate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TMQRBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMQRBD.FormDestroy(Sender: TObject);
begin
  MQRBD:=nil;
end;
//SCBBS工段回傳SQL
function TMQRBD.Get_SCBBS_SubSQL():String;
var SubSQL:string;
begin

   //20140308舊版異動SMZL
   if (CK1.Checked or CK2.Checked) then SubSQL:=SubSQL+' scbbs.GXLB = ''A'' or ';
   if CK3.Checked then SubSQL:=SubSQL+' scbbs.GXLB = ''C'' or ';
   if CK4.Checked then SubSQL:=SubSQL+' scbbs.GXLB = ''S'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;
//SCBBS工段回傳SQL
function TMQRBD.Get_SMZL_SubSQL():String;
var SubSQL:string;
begin

   //20140308舊版異動SMZL
   if (CK1.Checked or CK2.Checked) then SubSQL:=SubSQL+' SMDDSS.GXLB = ''A'' or ';
   if CK3.Checked then SubSQL:=SubSQL+' SMDDSS.GXLB = ''C'' or ';
   if CK4.Checked then SubSQL:=SubSQL+' SMDDSS.GXLB = ''S'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;
//WOPR工段回傳SQL
function TMQRBD.Get_WOPR_SubSQL():String;
var SubSQL:string;
begin
   if CK1.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''A'' or ';
   if CK2.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''AR'' or ';
   if CK3.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''C'' or ';
   if CK4.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''C+S'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;

procedure TMQRBD.Button1Click(Sender: TObject);
var
  a,b,c,j,k :word;
  IsThisMonth:boolean;
  iYear,iMonth,iDay:word;//今天去Decode
  InspectQtySQL:string;
begin
  //至少勾選一個工段
  if ((CK1.Checked=false) and (CK2.Checked=false) and (CK3.Checked=false) and (CK4.Checked=false)) then
  begin
    showmessage('Please select 1 GXLB at last!');
    exit;
  end;
  DecodeDate(Date(),iYear,iMonth,iDay);
  a:=strtoint(CBX1.text);
  b:=strtoint(CBX2.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  //判斷選擇是否為當月
  if ((a=iYear) and (b=iMonth)) then
  begin
    IsThisMonth:=true;
    if TodayCheckBox.Checked=true then
      edate:=Date()//從月初抓到今天就可以了
    else
      edate:=Date()-1;
  end else
  begin
    //非當月從月初抓到月底
    IsThisMonth:=false;
    edate:=endofthemonth(sdate);
  end;
  if InspectSQLCK.Checked=true then InspectQtySQL:='SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty)' else InspectQtySQL:='SUM(WOPR.Qty)';
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
    //sql.add('             and SCBB.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add('      union all');
    sql.add('      select  datepart(day, SMZL.SCanDate) as NDay from SMZL');
    sql.add('      left join BDepartment on BDepartment.ID=SMZL.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SMZL.SCanDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('      ) as DayList') ;
    sql.Add(' order by NDay');
    active:=true;
  end;

  //整理交叉表的內容
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select QCC.DepNo,QCC.DepName,QCC.GXLB,QCC.SB');
    while not QTemp.eof do
    begin
      //e:=Qtemp.fieldbyname('NDay').asstring;
      sql.add(',sum(case  when NDay='+''''+Qtemp.fieldbyname('NDay').asstring+'''');
      sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('NDay').asstring+'''');
      QTemp.Next;
    end;
    sql.Add(',(case when SB='+''''+'1.Output'+''''+'');
    sql.Add('then sum(Qty)else Total end)as Total');
    //20140407 選擇月份是否為當月
    if IsThisMonth=true then
    begin
      //部門每日實際生產量 日期到前一天為止抓 scbbs日結檔產量 因為SMZL只保留15天
      sql.add('     from (select scbb.DepNo,BDepartment.DepName,scbbs.GXLB,'+''''+'1.Output'+''''+' as SB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay,''0''as Total');
      sql.add('	     from scbbs');
      sql.add('	     left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.add('	     left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''');
      sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
      sql.add('             and SCBB.GSBH ='+''''+main.sGSBH+''''+'');
      //20140226選擇工段回傳子SQL過濾條件
      sql.Add(Get_SCBBS_SubSQL());
      sql.add('	     group by scbb.DepNo,BDepartment.DepName,scbbs.GXLB,DATEPART(DAY,SCBB.SCDate)');

      sql.add('	     union all');
      //20140308當天抓SMZL即時產量
      sql.Add('select SMZL.DepNO,BDepartment.DepName,SMDDSS.GXLB,''1.Output'' as SB,sum(SMZL.CTS*SMDDSS.Qty) as Qty,DATEPART(DAY,SMZL.ScanDate) as NDay,''0''as Total ');
      sql.Add('from SMZL ');
      sql.Add('left join BDepartment on BDepartment.ID=SMZL.DepNO ');
      sql.Add('left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
      sql.add('      where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',eDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
      sql.add('             and BDepartment.GSBH ='+''''+main.sGSBH+''''+'');
      //20140226選擇工段回傳子SQL過濾條件
      sql.Add(Get_SMZL_SubSQL());
      sql.Add('group by SMZL.DepNO,BDepartment.DepName,SMDDSS.GXLB,datepart(DAY,SMZL.ScanDate) ');
      //
    end else
    begin
      //部門每日實際生產量 日期到期一天抓 scbbs日結檔產量
      sql.add('     from (select scbb.DepNo,BDepartment.DepName,scbbs.GXLB,'+''''+'1.Output'+''''+' as SB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay,''0''as Total');
      sql.add('	     from scbbs');
      sql.add('	     left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.add('	     left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
      sql.add('             and SCBB.GSBH ='+''''+main.sGSBH+''''+'');
      //20140226選擇工段回傳子SQL過濾條件
      sql.Add(Get_SCBBS_SubSQL());
      sql.add('	     group by scbb.DepNo,BDepartment.DepName,scbbs.GXLB,DATEPART(DAY,SCBB.SCDate)');
    end;
    //部門檢驗數量
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('	from(     select WOPR.DepNo,BDepartment.DepName,Replace(WOPR.GXLB,''C+S'',''S'')as GXLB,'+''''+'2.Total inspection'+''''+' as SB,'+InspectQtySQL+' as Qty');
    sql.add('             ,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('	     group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,DATEPART(DAY,WOPR.SCDATE))T1');
    //20150908
    sql.Add('left join(select WOPR.DepNo,BDepartment.DepName,Replace(WOPR.GXLB,''C+S'',''S'')as GXLB,'+''''+'2.Total inspection'+''''+' as SB,'+InspectQtySQL+' as Total')  ;
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('	     group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB)T2');
    sql.Add(' on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //部門檢驗不良數量
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from( select WOPR.DepNo,BDepartment.DepName,Replace(WOPR.GXLB,''C+S'',''S'')as GXLB,'+''''+'3.Total defect'+''''+' as SB,SUM(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('	     group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,DATEPART(DAY,WOPR.SCDATE))T1	');
    //20150908
    sql.Add('left join(select WOPR.DepNo,BDepartment.DepName,Replace(WOPR.GXLB,''C+S'',''S'')as GXLB,'+''''+'3.Total defect'+''''+' as SB,SUM(WOPR.NGQty) as Total')   ;
    sql.add('	         from WOPR');
    sql.add('	         left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('          where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('	     group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB)T2	');
    sql.Add(' on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //部門檢查良率
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from( select WOPRB.DepNo,WOPRB.DepName,Replace(WOPRB.GXLB,''C+S'',''S'')as GXLB,'+''''+'4.Pass%'+''''+' as SB,');
    sql.add('			 Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*100),2) as Qty,WOPRB.NDay');
    sql.add('	     from(select WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,'+InspectQtySQL+' as Qty');
    sql.add('           ,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('		        from WOPR');
    sql.add('		        left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('           where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                  and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                  and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('		        group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,DATEPART(DAY,WOPR.SCDATE)) as WOPRB');
    sql.Add('	     left join (select WOPR.DepNo,WOPR.GXLB,SUM(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('			            from WOPR');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('				          group by WOPR.DepNo,WOPR.GXLB,DATEPART(DAY,WOPR.SCDATE)) as QCRDB on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXLB and WOPRB.NDay = QCRDB.NDay)T1');
    //20150908
    sql.Add('left join(select WOPRB.DepNo,WOPRB.DepName,Replace(WOPRB.GXLB,''C+S'',''S'')as GXLB,'+''''+'4.Pass%'+''''+' as SB,');
    sql.add('			 Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*100),2) as Total');
    sql.add('	     from(select WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,'+InspectQtySQL+' as Qty');
    sql.add('		        from WOPR');
    sql.add('		        left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('           where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                  and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                  and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('		        group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB) as WOPRB');
    sql.Add('	     left join (select WOPR.DepNo,WOPR.GXLB,SUM(WOPR.NGQty) as Qty');
    sql.add('			            from WOPR');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('				          group by WOPR.DepNo,WOPR.GXLB) as QCRDB on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXLB)T2');
    sql.Add('    on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //檢驗總數量
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('	from(  select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'5.Daily inspection'+''''+' as SB');
    sql.add('             ,'+InspectQtySQL+' as Qty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('		   from WOPR');
    sql.add('			 left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			 group by DATEPART(DAY,WOPR.SCDATE))T1');
    //20150908
    sql.Add('left join(select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'5.Daily inspection'+''''+' as SB');
    sql.add('             ,'+InspectQtySQL+' as Total');
    sql.add('		   from WOPR');
    sql.add('			 left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('	)T2');
    sql.Add('   on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //檢驗通過總數量
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from( select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'6.Daily Pass'+''''+' as SB');
    sql.add('             ,SUM(WOPR.Qty)+SUM(WOPR.ReQty) as Qty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('	     group by DATEPART(DAY,WOPR.SCDATE))T1');
    //20150908
    sql.Add('left join(select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'6.Daily Pass'+''''+' as SB');
    sql.add('             ,SUM(WOPR.Qty)+SUM(WOPR.ReQty) as Total');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('	  )T2');
    sql.Add('    on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //檢驗不良總數量
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from( select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'7.Daily defect'+''''+' as SB,SUM(WOPR.NGQty) as Qty');
    sql.add('             ,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('	     group by DATEPART(DAY,WOPR.SCDATE))T1');
    //20150908
    sql.Add('    left join(select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'7.Daily defect'+''''+' as SB,SUM(WOPR.NGQty) as Total');
    sql.add('	     from WOPR');
    sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('             and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('             and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('	    )T2');
    sql.Add('    on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //線均檢驗數量
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from(  select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'8.AVG inspection'+''''+' as SB');
    sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Qty,DayInsp.NDay ');
    sql.add('	     from (select '+InspectQtySQL+' as Qty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('	    		   from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			       group by DATEPART(DAY,WOPR.SCDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('				          from WOPR');
    sql.add('			            left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.Add('                       and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			            group by DATEPART(DAY,WOPR.SCDATE)) as Depcount on DayInsp.NDay = Depcount.NDay)T1');
    //20150908
    sql.Add('left join(select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'8.AVG inspection'+''''+' as SB');
    sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Total,DayInsp.NDay ');
    sql.add('	     from (select '+InspectQtySQL+' as Qty,''0'' as NDay');
    sql.add('	    		   from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			  ) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,''0'' as NDay');
    sql.add('				          from WOPR');
    sql.add('			            left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.Add('                       and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('			    ) as Depcount on DayInsp.NDay = Depcount.NDay)T2');
    sql.Add('    on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //線均不良數量
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from( select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'9.AVG defect'+''''+' as SB');
    sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Qty,DayInsp.NDay ');
    sql.add('	     from (select sum(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('			       from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			       group by DATEPART(DAY,WOPR.SCDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('				          from WOPR');
     sql.add('			          left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                        and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('				          group by DATEPART(DAY,WOPR.SCDATE)) as Depcount on DayInsp.NDay = Depcount.NDay)T1	');
    //20150908
    sql.Add('left join(select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'9.AVG defect'+''''+' as SB');
    sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Total,DayInsp.NDay ');
    sql.add('	     from (select sum(WOPR.NGQty) as Qty,''0'' as NDay');
    sql.add('			       from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			      ) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,''0'' as NDay');
    sql.add('				          from WOPR');
    sql.add('			          left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                        and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('				   ) as Depcount on DayInsp.NDay = Depcount.NDay)T2	');
    sql.Add('    on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');

    //

    //線均不良率
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from( select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'' '' as GXLB,'+''''+'10.AVG defect%'+''''+' as SB');
    sql.add('			        ,Round(((CAST(DayInsp.NGQty AS Float)/Depcount.Depcount)/(CAST(DayInsp.InsQty AS Float)/Depcount.Depcount))*100,2) as Qty');
    sql.add('			        ,DayInsp.NDay ');
    sql.add('	     from (select '+InspectQtySQL+' as InsQty,SUM(WOPR.NGQty) as NGQty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('		    	   from WOPR');
    sql.add('		         left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			       group by DATEPART(DAY,WOPR.SCDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('				          from WOPR');
    sql.add('		              left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.Add('                       and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			            group by DATEPART(DAY,WOPR.SCDATE)) as Depcount on DayInsp.NDay = Depcount.NDay)T1');
    //20150908
    sql.Add('left join ( select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'' '' as GXLB,'+''''+'10.AVG defect%'+''''+' as SB');
    sql.add('			        ,Round(((CAST(DayInsp.NGQty AS Float)/Depcount.Depcount)/(CAST(DayInsp.InsQty AS Float)/Depcount.Depcount))*100,2) as Total');
    sql.add('			        ,DayInsp.NDay ');
    sql.add('	     from (select '+InspectQtySQL+' as InsQty,SUM(WOPR.NGQty) as NGQty,''0'' as NDay');
    sql.add('		    	   from WOPR');
    sql.add('		         left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			       ) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,''0'' as NDay');
    sql.add('				          from WOPR');
    sql.add('		              left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                       and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('		) as Depcount on DayInsp.NDay = Depcount.NDay)T2');
    sql.Add('    on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');
    //

    //每日RFT
    sql.add('	     union all');
    sql.Add('Select T1.DepNo,T1.DepName, T1.GXLB,T1.SB, T1.qty, T1.NDay,T2.ToTal');
    sql.add('from( select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'' '' as GXLB,'+''''+'11.Daily RFT%'+''''+' as SB');
    sql.add('             ,100-(Round(((CAST(DayInsp.NGQty AS Float)/Depcount.Depcount)/(CAST(DayInsp.InsQty AS Float)/Depcount.Depcount))*100,2)) as Qty');
    sql.add('	            ,DayInsp.NDay ');
    sql.add('	     from (select '+InspectQtySQL+' as InsQty,SUM(WOPR.NGQty) as NGQty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('			       from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			       group by DATEPART(DAY,WOPR.SCDATE)) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('				          from WOPR');
    sql.add('			            left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                        and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140226根據下拉式選擇工段回傳子SQL過濾條件
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('				          group by DATEPART(DAY,WOPR.SCDATE)) as Depcount on DayInsp.NDay = Depcount.NDay)T1');
    //20150908
    sql.Add('left join (select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'' '' as GXLB,'+''''+'11.Daily RFT%'+''''+' as SB');
    sql.add('             ,100-(Round(((CAST(DayInsp.NGQty AS Float)/Depcount.Depcount)/(CAST(DayInsp.InsQty AS Float)/Depcount.Depcount))*100,2)) as Total');
    sql.add('	            ,DayInsp.NDay ');
    sql.add('	     from (select '+InspectQtySQL+' as InsQty,SUM(WOPR.NGQty) as NGQty,''0'' as NDay');
    sql.add('			       from WOPR');
    sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    //
    sql.add('			       ) as DayInsp');
    sql.add('	     left join (select count(distinct DepNo) as Depcount,''0'' as NDay');
    sql.add('				          from WOPR');
    sql.add('			            left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                        and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                        and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(Get_WOPR_SubSQL());
    sql.add('				     ) as Depcount on DayInsp.NDay = Depcount.NDay)T2');
    sql.Add('    on T1.DepNo=T2.DepNo and t1.DepName=T2.DepName and t1.GXLB=T2.GXLB and T1.SB=T2.SB');

    //20162010 12.IE FTT%
    sql.add('	     union all');
    sql.add('select T1.DepName,T1.DepNo,t1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.ToTal');
    sql.add('from (');
    sql.Add('     select ''Z1'' as DepNo,''Z1'' as DepName,'' ''as GXLB,''12.FTT%'' as SB, T1.NDay,round(AVG(T1.Qty),1) as Qty');
    sql.Add('     from(');
    sql.add('          select '+''''+'Z1'+''''+' as DepNo,substring(FTT.DepName,1,Len(FTT.DepName)-2) as DepName,'' '' as GXLB,'+''''+'FTT%'+''''+' as SB, FTT.NDay');
    //sql.add('          ,ROUND(Avg(QTY) ,1) as Qty '); //20230721修正用平均，多個工段家總會有問題=> 原本LOG不正確,ROUND(power(10.0000,sum(LOG10(QTY*0.01)))*100 ,1) as Qty
    sql.add('            ,ROUND(power(10.0000,sum(LOG10(QTY*0.01)))*100 ,1) as Qty ');
    sql.add('          from (');
    SQL.add('              select  WOPRB.DepNo,WOPRB.DepName,WOPRB.sumline,Replace(WOPRB.GXLB,''C+S'',''S'') as GXLB,''4.Pass%'' as SB, ');
    sql.add('	                    Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*100),1) as Qty,WOPRB.NDay ');
    sql.add('	             from(select WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,WOPR.GXLB,'+InspectQtySQL+' as Qty,');
    sql.add('			                     DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('			              from WOPR');
    sql.add('			              left join BDepartment on WOPR.DepNo = BDepartment.ID ');
    sql.add('                   where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                         '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('                   and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                   and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(                    Get_WOPR_SubSQL());
    //
    sql.add('			              group by WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,WOPR.GXLB,DATEPART(DAY,WOPR.SCDATE)) as WOPRB');
    sql.add('	             left join (select WOPR.DepNo,WOPR.GXLB,SUM(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.SCDATE) as NDay');
    sql.add('				                  from WOPR');
    sql.add('                         where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                         and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(                          Get_WOPR_SubSQL());
    //
    sql.add('		                      group by WOPR.DepNo,WOPR.GXLB,DATEPART(DAY,WOPR.SCDATE)) as QCRDB ');
    sql.add('				       on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXLB and WOPRB.NDay = QCRDB.NDay ');
    sql.add('	         where WOPRB.sumline is not null)FTT ');
    sql.add('	         group by FTT.SB, FTT.NDay,substring(FTT.DepName,1,Len(FTT.DepName)-2))T1 ');
    sql.Add('     group by T1.SB, T1.NDay)T1');
    sql.add('     left join (');
    sql.add('     select ''Z1'' as DepName,T2.DepNo,T2.GXLB,T2.SB,round(avg(T2.ToTal),1)as Total');
    sql.add('     from (select '+''''+'Z1'+''''+' as DepNo,substring(T2.DepName,1,Len(T2.DepName)-2) as DepName,'' '' as GXLB,''12.FTT%'' as SB');

    //sql.add('                   ,ROUND(Avg(QTY) ,1) as ToTal ');//20230721修正用平均，多個工段家總會有問題=>  ROUND(power(10.0000,sum(LOG10(QTY*0.01)))*100 ,1) as ToTal');
    sql.add('                   ,ROUND(power(10.0000,sum(LOG10(QTY*0.01)))*100 ,1) as ToTal ');
    sql.add('           from (');
    SQL.add('                select  WOPRB.DepNo,WOPRB.DepName,WOPRB.sumline,Replace(WOPRB.GXLB,''C+S'',''S'') as GXLB,''4.Pass%'' as SB, ');
    sql.add('	                       Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*100),1) as Qty ');
    sql.add('	               from(');
    sql.add('	                   select WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,WOPR.GXLB,'+InspectQtySQL+' as Qty');
    sql.add('			               from WOPR');
    sql.add('			               left join BDepartment on WOPR.DepNo = BDepartment.ID');
    sql.add('                    where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                    and BDepartment.DepName like '''+edit1.Text+'%'' ');
    sql.add('                    and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(                     Get_WOPR_SubSQL());
    sql.add('			               group by WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,WOPR.GXLB) as WOPRB');
    sql.add('	               left join (select WOPR.DepNo,WOPR.GXLB,SUM(WOPR.NGQty) as Qty');
    sql.add('				                    from WOPR');
    sql.add('                           where  convert(smalldatetime,convert(varchar,WOPR.SCDATE,111)) between ');
    sql.add('                                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                           and WOPR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add(                            Get_WOPR_SubSQL());
    //
    sql.add('		                        group by WOPR.DepNo,WOPR.GXLB) as QCRDB ');
    sql.add('				        on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXLB  ');
    sql.add('     	        where WOPRB.sumline is not null)T2 ');
    sql.add('	          group by T2.SB,substring(T2.Depname,1,len(T2.DepName)-2)) T2');
    sql.Add('     group by T2.DepNo,T2.GXLB,T2.SB) T2 on T1.DepName=T2.DepName and T1.DepNo=T2.DepNo and T1.SB = T2.SB');
    sql.add('group by T1.DepName,T1.DepNo,t1.GXLB,T1.SB,T1.NDay,T1.Qty,T2.ToTal ');
    sql.add('	     )as QCC');
    sql.add('group by QCC.DepNo,QCC.DepName,QCC.GXLB,QCC.SB,QCC.Total	');
    sql.add('order by QCC.DepName,QCC.DepNo,QCC.GXLB,QCC.SB,QCC.Total');
    //memo1.Text:=sql.Text;
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    active:=true;
  end;

  with DBGrideh1 do
  begin
    columns[0].Width:=0;
    columns[0].title.caption:='部門編號|DepNo';
    columns[1].Width:=95;
    columns[1].title.caption:='部門名稱|DepName';
    columns[2].Width:=40;
    columns[2].title.caption:='工段|'+columns[2].title.caption;
    columns[3].Width:=95;
    columns[3].title.caption:='項目|'+columns[3].title.caption;
    for j:=4 to Query1.FieldCount-1 do
    begin
      columns[j].Width:=35;
      columns[j].Title.Caption:='日   期   Weekday|'+columns[j].Title.Caption;
       if j mod 2 <> 0 then
        columns[j].Color:=clInfoBk;
    end;
    for k:= Query1.FieldCount-1 to  Query1.FieldCount-1 do
    begin
     columns[k].Width:=60;
     columns[k].title.caption:='小計|Total';
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
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')  or (column.field.fieldname='Total')
    then
    begin
      if (Column.Field.value<91)   then
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
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')  or (column.field.fieldname='Total')
    then
    begin
      if (Column.Field.value<91)   then
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

procedure TMQRBD.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  //
end;

end.
