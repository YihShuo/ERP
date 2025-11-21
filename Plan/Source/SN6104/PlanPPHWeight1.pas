unit PlanPPHWeight1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, Comobj;

type
  TPlanPPHWeight = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    LeanEdit: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Depname: TStringField;
    Query1T1: TIntegerField;
    Query1T2: TIntegerField;
    Query1T3: TIntegerField;
    Query1T4: TIntegerField;
    Query1T5: TIntegerField;
    Query1T6: TIntegerField;
    Query1T7: TIntegerField;
    Query1T8: TIntegerField;
    Query1TotalQty: TIntegerField;
    Query1PPH: TFloatField;
    Query1HourQty: TFloatField;
    Query1CQQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanPPHWeight: TPlanPPHWeight;

implementation

uses main1,FunUnit,dateUtils;

{$R *.dfm}

//當月天數
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TPlanPPHWeight.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPlanPPHWeight.FormDestroy(Sender: TObject);
begin
  PlanPPHWeight:=nil;
end;

procedure TPlanPPHWeight.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sdate,edate,NDate:TDate;
begin

  decodedate(incmonth(DTP1.Date,-1),iYear,iMonth,iDay);
  NDate:=EncodeDate(iYear, iMonth, iDay);
  sdate:=startofthemonth(NDate);
  edate:=endofthemonth(NDate);

  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    //20210316 現場點名直工數
    SQL.Add('if object_id(''tempdb..#RSCQPOH'') is not null');
    SQL.Add('begin  drop table #RSCQPOH end');
    SQL.Add('Select RSDate,BDepartment.sumline,Sum(RSCQ.CQQty) as CQQty into  #RSCQPOH ');
    SQL.Add('from RSCQ ');
    SQL.Add('inner join BDepartment on Bdepartment.ID=RSCQ.DepNo');
    SQL.Add('where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))  between  '''+Formatdatetime('yyyy/MM/dd',sdate)+''' and '''+Formatdatetime('yyyy/MM/dd',edate)+''' ');
    SQL.Add('Group by  RSDate,BDepartment.sumline ');
    //
    SQL.Add('select POH_FIN.*,SCRL.HourQty,RSCQ.Workers from (');
    SQL.Add('	select Depname,');
    SQL.Add('		   Max(case when Tier=1 then pairs end) as T1,');
    SQL.Add('		   Max(case when Tier=2 then pairs end) as T2,');
    SQL.Add('		   Max(case when Tier=3 then pairs end) as T3,');
    SQL.Add('		   Max(case when Tier=4 then pairs end) as T4,');
    SQL.Add('		   Max(case when Tier=5 then pairs end) as T5,');
    SQL.Add('		   Max(case when Tier=6 then pairs end) as T6,');
    SQL.Add('		   Max(case when Tier=7 then pairs end) as T7,');
    SQL.Add('		   Max(case when Tier=8 then pairs end) as T8,');
    SQL.Add('		   Max(Total) as TotalQty,Sum(PPH) as PPH');
    SQL.Add('');
    SQL.Add('	from (');
    SQL.Add('	select POH_Main.*,Round(POH_Main.Qty*POH_Det.Qty,2) as PPH from (');
    SQL.Add('		select POH.depname,Tier as Tier,pairs,total,Round(Max(Convert(float,pairs))/Sum(total),2) as ''Qty''');
    SQL.Add('		from (');
    SQL.Add('		  select POH.depname,POH.pairs,POH.Tier,POH_T.total  from (  ');
    SQL.Add('			select depname,sum (pairs) as pairs,Tier from(');
    SQL.Add('				select Bdepartment.depname,max(SMDD.plandate) as plandate,Sum(SMDD.Qty) as pairs,IEQty,IEPeo,POH,');
    SQL.Add('						case when POH>=1.5 then 1');
    SQL.Add('						when POH>=1.25 and POH<1.5 then 2');
    SQL.Add('						when POH>=1.13 and POH<1.25 then 3');
    SQL.Add('						when POH>=1.0 and POH<1.13 then 4');
    SQL.Add('						when POH>=0.86 and POH<1.0 then 5');
    SQL.Add('						when POH>=0.75 and POH<0.86 then 6');
    SQL.Add('						when POH>=0.61 and POH<0.75 then 7');
    SQL.Add('						when POH<=0.6 then 8 end Tier');
    SQL.Add('				 from SMDD ');
    SQL.Add('				 left join Bdepartment on Bdepartment.ID=SMDD.DepNo');
    SQL.Add('				 left join DDZL on DDZl.DDBH=SMDD.YSBH');
    SQL.Add('				 left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    //2021/02/19 增加 Left Join SCXXCL.BZLB
    SQL.Add('				 left join (select SCXXCL.xiexing,SCXXCL.shehao,SCXXCL.BZLB,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    //2021/02/19 增加 Group By BZLB 與 SCXXCL.BZLB=Bdepartment.BZLB
    SQL.Add('							from SCXXCL group by xiexing,shehao,BZLB) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao and SCXXCL.BZLB=Bdepartment.BZLB');
    SQL.Add('				 where 1=1 ');
    SQL.Add('				 and  DDZL.buyno like ''%''');
    SQL.Add('				 and  DDZL.DDBH like ''%''');
    SQL.Add('				 and  DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('				 and  Bdepartment.Depname like '''+LeanEdit.Text+'%''');
    SQL.Add('				 and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.Add('					   '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    SQL.Add('				 and SMDD.GXLB =''A'' ');
    SQL.Add('				 group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.ARTICLE');
    SQL.Add('				 ,XXZL.YSSM,DDZL.SHipdate,DDZL.DDGB,XXZL.DAOMH,XXZL.XTMH,IEQty,IEPeo,POH');
    SQL.Add('			) POH group by depname,Tier');
    SQL.Add('		  ) POH ');
    SQL.Add('		  left join (');
    SQL.Add('			 select depname,sum (pairs) as total from (');
    SQL.Add('				select Bdepartment.depname,max(SMDD.plandate) as plandate ,Sum(SMDD.Qty) as pairs,');
    SQL.Add('					case when POH>=1.5 then 1');
    SQL.Add('					when POH>=1.25 and POH<1.5 then 2');
    SQL.Add('					when POH>=1.13 and POH<1.25 then 3');
    SQL.Add('					when POH>=1.0 and POH<1.13 then 4');
    SQL.Add('					when POH>=0.86 and POH<1.0 then 5');
    SQL.Add('					when POH>=0.75 and POH<0.86 then 6');
    SQL.Add('					when POH>=0.61 and POH<0.75 then 7');
    SQL.Add('					when POH<=0.6 then 8 end Tier');
    SQL.Add('				from SMDD ');
    SQL.Add('				left join Bdepartment on Bdepartment.ID=SMDD.DepNo');
    SQL.Add('				left join DDZL on DDZl.DDBH=SMDD.YSBH');
    SQL.Add('				left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    //2021/02/19 增加 Left Join SCXXCL.BZLB
    SQL.Add('				left join (select SCXXCL.xiexing,SCXXCL.shehao,SCXXCL.BZLB,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    //2021/02/19 增加 Group By BZLB 與 SCXXCL.BZLB=Bdepartment.BZLB
    SQL.Add('							from SCXXCL group by xiexing,shehao,BZLB) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao and SCXXCL.BZLB=Bdepartment.BZLB');
    SQL.Add('				where 1=1 ');
    SQL.Add('				and  DDZL.buyno like ''%''');
    SQL.Add('				and  DDZL.DDBH like ''%''');
    SQL.Add('				and  DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('				and  Bdepartment.Depname like '''+LeanEdit.Text+'%''');
    SQL.Add('				and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.Add('					   '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    SQL.Add('				and SMDD.GXLB =''A'' ');
    SQL.Add('				group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.ARTICLE');
    SQL.Add('				,XXZL.YSSM,DDZL.SHipdate,DDZL.DDGB,XXZL.DAOMH,XXZL.XTMH,IEQty,IEPeo,POH ');
    SQL.Add('			) POH_T group by depname ');
    SQL.Add('		  ) POH_T on POH_T.depname=POH.depname ');
    SQL.Add('		  where POH.depname like '''+LeanEdit.Text+'%''');
    SQL.Add('		) POH group by POH.depname,Tier,total,pairs ');
    SQL.Add('	) POH_Main');
    SQL.Add('	left join (');
    SQL.Add('		select DepName,Tier,round(sum(convert(float,Pairs)/Total*POH),2) as Qty');
    SQL.Add('		from(select T1.DepName,T1.DDBH,T1.Pairs,T1.POH,T1.Tier,T2.Total');
    SQL.Add('			 from(select DDZL.BuyNo,Bdepartment.depname as DepName,DDZL.DDBH,Sum(SMDD.Qty) as pairs,POH,');
    SQL.Add('						 case when POH>=1.5 then ''1''');
    SQL.Add('							  when POH>=1.25 and POH<1.5 then ''2''');
    SQL.Add('							  when POH>=1.13 and POH<1.25 then ''3''');
    SQL.Add('							  when POH>=1.0 and POH<1.13 then ''4''');
    SQL.Add('							  when POH>=0.86 and POH<1.0 then ''5''');
    SQL.Add('							  when POH>=0.75 and POH<0.86 then ''6''');
    SQL.Add('							  when POH>=0.61 and POH<0.75 then ''7''');
    SQL.Add('							  when POH<=0.6 then ''8'' end Tier');
    SQL.Add('				   from SMDD ');
    SQL.Add('				   left join Bdepartment on Bdepartment.ID=SMDD.DepNo');
    SQL.Add('				   left join DDZL on DDZl.DDBH=SMDD.YSBH');
    SQL.Add('				   left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    //2021/02/19 增加 Left Join SCXXCL.BZLB
    SQL.Add('				   left join (select SCXXCL.xiexing,SCXXCL.shehao,SCXXCL.BZLB,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    //2021/02/19 增加 Group By BZLB 與 SCXXCL.BZLB=Bdepartment.BZLB
    SQL.Add('							  from SCXXCL group by xiexing,shehao,BZLB) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao and SCXXCL.BZLB=Bdepartment.BZLB');
    SQL.Add('				   where 1=1 ');
    SQL.Add('				   and  DDZL.buyno like ''%''');
    SQL.Add('				   and  Bdepartment.depname like '''+LeanEdit.Text+'%''');
    SQL.Add('				   and  DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('				   and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.Add('						'''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    SQL.Add('				   and SMDD.GXLB =''A''');
    SQL.Add('				   group by DDZL.BuyNo,DDZL.DDBH,Bdepartment.depname,POH) T1');
    SQL.Add('			 left join(select DepName, sum(Pairs)as Total,Tier');
    SQL.Add('					   from(select DDZL.BuyNo,Bdepartment.depname as DepName,DDZL.DDBH,Sum(SMDD.Qty) as pairs,POH,');
    SQL.Add('								   case when POH>=1.5 then ''1''');
    SQL.Add('								   when POH>=1.25 and POH<1.5 then ''2''');
    SQL.Add('								   when POH>=1.13 and POH<1.25 then ''3''');
    SQL.Add('								   when POH>=1.0 and POH<1.13 then ''4''');
    SQL.Add('								   when POH>=0.86 and POH<1.0 then ''5''');
    SQL.Add('								   when POH>=0.75 and POH<0.86 then ''6''');
    SQL.Add('								   when POH>=0.61 and POH<0.75 then ''7''');
    SQL.Add('								   when POH<=0.6 then ''8'' end Tier');
    SQL.Add('							 from SMDD ');
    SQL.Add('							 left join Bdepartment on Bdepartment.ID=SMDD.DepNo');
    SQL.Add('							 left join DDZL on DDZl.DDBH=SMDD.YSBH');
    SQL.Add('							 left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    //2021/02/19 增加 Left Join SCXXCL.BZLB
    SQL.Add('							 left join (select SCXXCL.xiexing,SCXXCL.shehao,SCXXCL.BZLB,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    //2021/02/19 增加 Group By BZLB 與 SCXXCL.BZLB=Bdepartment.BZLB
    SQL.Add('										from SCXXCL group by xiexing,shehao,BZLB) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao and SCXXCL.BZLB=Bdepartment.BZLB');
    SQL.Add('							 where 1=1 ');
    SQL.Add('							 and  DDZL.buyno like ''%''');
    SQL.Add('							 and  Bdepartment.depname like '''+LeanEdit.Text+'%''');
    SQL.Add('							 and  DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('							 and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    SQL.Add('								 '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' )');
    SQL.Add('							 and SMDD.GXLB =''A''');
    SQL.Add('							 group by DDZL.BuyNo,DDZL.DDBH,Bdepartment.depname,POH)T2 ');
    SQL.Add('					   group by DepName,Tier)T2 on T1.DepName=T2.DepName and T1.Tier=T2.Tier  ');
    SQL.Add('			 group by   T1.DepName,T1.DDBH,T1.Pairs,T1.POH,T1.Tier,T2.Total)T3');
    SQL.Add('		 group by DepName, Tier');
    SQL.Add('	) POH_Det on POH_Main.DepName=POH_Det.Depname and POH_Main.Tier=POH_Det.Tier');
    SQL.Add('	) POH_FIN ');
    SQL.Add('	Group by Depname ) POH_FIN');
    SQL.Add('left join (');
    SQL.Add('	select BDepartment.DepName,Sum(SCRL.SCGS) as HourQty  ');
    SQL.Add('	from SCRL');
    SQL.Add('	left join BDepartment on BDepartment.ID=SCRL.DepNO ');
    SQL.Add('	where BDepartment.GXLB=''A'' ');
    SQL.Add('		  and BDepartment.DepName like '''+LeanEdit.Text+'%''');
    SQL.Add('		  and Convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCDAY) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('		  and SCRL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('	Group by BDepartment.DepName ) SCRL on SCRL.DepName=POH_FIN.DepName');
    //
    SQL.Add('left join (');
    SQL.Add('    select  BDepartment.DepName,Avg(RSCQ.CQQty) as Workers from #RSCQPOH as RSCQ');
    SQL.Add('    inner join BDepartment on BDepartment.Sumline=RSCQ.Sumline and BDepartment.GXLB=''A'' ');
    SQL.Add('    where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111)) between ');
    SQL.Add('					   '''+formatdatetime('yyyy/MM/dd',sdate)+''' and  '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    SQL.Add('	Group by BDepartment.DepName ) RSCQ on RSCQ.DepName=POH_FIN.DepName	');
    //
    SQL.Add(' order by POH_FIN.DepName ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TPlanPPHWeight.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin
  DecodeDate(Date()+30, myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.Date:=EncodeDate(myYear, myMonth, DaysOfItsMonth(Date()+30));
end;

procedure TPlanPPHWeight.Button2Click(Sender: TObject);
var 
    eclApp,WorkBook:olevariant;
    i,j,k:integer;
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
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
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
