unit HourArticlePPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Dateutils
  , Comobj;

type
  THourArticlePPH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CBX4: TComboBox;
    Button2: TButton;
    CB1: TCheckBox;
    QTemp: TQuery;
    Query1: TQuery;
    DataSource1: TDataSource;
    InfoLabel: TLabel;
    Query1ScanDate: TStringField;
    Query1DepName: TStringField;
    Query1GXLB: TStringField;
    Query1SB: TStringField;
    Query1BDEDesigner7: TStringField;
    Query1BDEDesigner8: TStringField;
    Query1BDEDesigner9: TStringField;
    Query1BDEDesigner10: TStringField;
    Query1BDEDesigner11: TStringField;
    Query1BDEDesigner12: TStringField;
    Query1BDEDesigner13: TStringField;
    Query1BDEDesigner14: TStringField;
    Query1BDEDesigner15: TStringField;
    Query1BDEDesigner16: TStringField;
    Query1BDEDesigner17: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    query2: TQuery;
    DataSource2: TDataSource;
    query2IE_T2: TIntegerField;
    query2DAOMH: TStringField;
    query2Article: TStringField;
    query2IE_PPH: TFloatField;
    query2ScanDate: TStringField;
    query2TimeGroupID: TIntegerField;
    query2DepName: TStringField;
    query2PPH: TFloatField;
    DataSource3: TDataSource;
    Query3: TQuery;
    Query3Article: TStringField;
    Query3PPH: TFloatField;
    Query3PPH_Cnt: TIntegerField;
    Query3PPH_Avg: TFloatField;
    Query3IE_PPH: TFloatField;
    Query3IE_T2: TIntegerField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    query2TierABC: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    AppDir:String;
    NDate:TDate;
    { Private declarations }
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
    procedure ExportDefaultExcelReport();
  public
    { Public declarations }
  end;

var
  HourArticlePPH: THourArticlePPH;

implementation
  uses main1,FuNunit;
{$R *.dfm}

procedure THourArticlePPH.Button1Click(Sender: TObject);
   procedure Main_PerhourPPHSQL(Qry:TQuery);
   begin
     with Qry do
     begin
       SQL.Add('	select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(IE_PPH) as IE_PPH');
       SQL.Add('		   ,(select A.Article+'':''+Convert(varchar,A.Qty)+'','' from #PerhourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.ScanDate=#PerhourPPH.ScanDate ');
       SQL.Add('      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.GXLB  Group by A.Article,A.Qty for XML Path ('''') ) as Article,TierABC');
       SQL.Add('	from #PerhourPPH');
       SQL.Add('	Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,TierABC ');
     end;
   end;
var i:integer;
begin
  if WithinPastDays(DTP1.Date, DTP3.Date, 45)=false then
  begin
    Showmessage('Pham vi khong cho phep qua 45 ngay. xin chon lai');
    abort;
  end;
  //
  if PageControl1.ActivePageIndex=0 then
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if object_id(''tempdb..#PerhourPPH'') is not null');
      SQL.Add('begin   drop table #PerhourPPH end');
      SQL.Add('');
      SQL.Add('select SMZL.*,IsNull(SCSJDV.minut,1) as minut ');
      SQL.Add('       ,SCBZCL.Qty as  StdQty into #PerhourPPH  from ( ');
      SQL.Add('select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDepartment.ID,BDepartment.DepName,SMDDSS.GXLB');
      SQL.Add('       ,case when Max(DDZL.ordermode) in (''MU'',''NU'') then  '' ''+SMDD.Article+''(''+XXZL.DAOMH+'')''  when Max(DDZL.ordermode) in (''TN'') then  ''  ''+SMDD.Article+''(''+XXZL.DAOMH+'')''  else SMDD.Article+''(''+XXZL.DAOMH+'')'' end as Article');
      SQL.Add('       ,SMDD.XieMing,sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeGroupID,');
      SQL.Add('       RSCQ.CQQty,Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) / Count(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,');
      SQL.Add('       SCXXCL.POH as IE_PPH,SCXXDV.TierABC');
      SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
      SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
      SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
      SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
      SQL.Add('left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate=convert(varchar,SMZL.ScanDate,111)');
      SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
      SQL.Add('left join xxzl on ddzl.xiexing = xxzl.xiexing and ddzl.shehao=xxzl.shehao ');
      SQL.Add('left join SCXXDV on XXZL.XieXing=SCXXDV.XieXing and XXZL.Shehao=SCXXDV.Shehao');
      SQL.Add('left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
      SQL.Add('                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH ');
      SQL.Add('           from SCXXCL ');
      SQL.Add('           Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao           ');
      SQL.Add('left join (');
      SQL.Add('');
      SQL.Add('select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZL.ScanDate))-0)/60 as TimeGroupID ');
      SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
      SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
      SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
      SQL.Add('where SMZL.ScanDate between ');
      SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
      SQL.Add('      and SMDDSS.DDBH like '''+Edit2.Text+'%'' and BDepartment.DepName like '''+Edit1.Text+'%'' and BDepartment.YN=1 ');
      SQL.Add('      and SMDDSS.GXLB='''+CBX4.Text+''' ');
      if CB1.Checked=false then
      SQL.Add('      and SMDDSS.DDBH not like ''ZS%''  ');
      SQL.Add(' ) SMZLT on SMZLT.SMNO=SMZL.SMNO');
      SQL.Add('where BDepartment.DepName like '''+Edit1.Text+'%'' and BDepartment.YN=1 ');
      SQL.Add('      and SMDDSS.DDBH like '''+Edit2.Text+'%''');
      SQL.Add('      and SMDDSS.GXLB='''+CBX4.Text+'''');
      SQL.Add('      and DDZL.GSBH='''+main.Edit2.Text+''' ');
      if CB1.Checked=false then
      SQL.Add('      and SMDDSS.DDBH not like ''ZS%'' ');
      SQL.Add('      and SMZL.ScanDate between ');
      SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
      SQL.Add('group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BDepartment.ID,BDepartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeGroupID,RSCQ.CQQty,SCXXCL.POH,XXZL.DAOMH,SCXXDV.TierABC ');
      SQL.Add(') SMZL ');
      //
      SQL.Add('left join (');
      SQL.Add('  select convert(varchar,SCBZCL.BZDate,111) as BZDate,SCBZCL.DepNo,CEILING(SCBZCL.Qty/SCRL.SCGS)  as Qty from SCBZCL');
      SQL.Add('  left join SCRL on SCRL.SCYEAR=year(SCBZCL.BZDate)and SCRL.SCMONTH=month(SCBZCL.BZDate)and SCRL.SCDAY=day(SCBZCL.BZDate)and SCRL.DepNo=SCBZCL.Depno');
      SQL.Add('  left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
      SQL.Add('  where   SCBZCL.BZDate between ');
      SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
      SQL.Add('          and BDepartment.DepName like '''+Edit1.Text+'%'' and BDepartment.YN=1 ');
      SQL.Add('          and BDepartment.GSBH='''+main.Edit2.Text+''' ');
      SQL.Add('       ');
      SQL.Add(') SCBZCL on SCBZCL.BZDate=SMZL.ScanDate and SMZL.ID=SCBZCL.DepNo  ');
      SQL.Add('Left join SCSJDV on SCSJDV.ID=SMZL.ID and SCSJDV.hors=TimeGroupID ');
      //20181004 寶億IE_POH，如同時段生產兩個型體，計算用最大IE_POH  尚未確定
      //SQL.Add('update #PerhourPPH set IE_PPH=0 ');
      //SQL.Add('from ( select ScanDate,ID,GXLB,TimeGroupID,Max(Qty) as Qty from #PerhourPPH ');
      //SQL.Add('group by ScanDate,ID,GXLB,TimeGroupID ) A ');
      //SQL.Add('where A.ScanDate=#PerhourPPH.ScanDate and A.ID=#PerhourPPH.ID and A.GXLB=#PerhourPPH.GXLB and A.TimeGroupID=#PerhourPPH.TimeGroupID and #PerhourPPH.Qty<>A.Qty ');
      //PPH報表========================================================================
      SQL.Add('select * from (');
      //SB 1.Hour
      SQL.Add('	select ScanDate,DepName,GXLB,''1.Hour'' as SB');
      for i:=7 to 17 do
      begin
        SQL.Add('		,convert(varchar,Max(case when TimeGroupID='+inttostr(i)+' then '''+Format('%.2d',[i])+':00-'+Format('%.2d',[i+1])+':00'' end)) as '''+inttostr(i)+''' ');
      end;
      SQL.Add('	from (');
      Main_PerhourPPHSQL(Query1);  //主要SQL
      SQL.Add('	) PerhourPPH');
      SQL.Add('	Group by ScanDate,DepName,GXLB ');
      SQL.Add('	Union all');
      //SB 2.Article
      SQL.Add('	select ScanDate,DepName,GXLB,''2.Article'' as SB');
      for i:=7 to 17 do
      begin
        SQL.Add('		,convert(varchar,Max(case when TimeGroupID='+inttostr(i)+' then Article end)) as '''+inttostr(i)+''' ');
      end;
      SQL.Add('	from (');
      Main_PerhourPPHSQL(Query1);  //主要SQL
      SQL.Add('	) PerhourPPH');
      SQL.Add('	Group by ScanDate,DepName,GXLB 	');
      SQL.Add('	Union all');
      //SB 3.Workers
      SQL.Add('	select ScanDate,DepName,GXLB,''3.Workers'' as SB');
      for i:=7 to 17 do
      begin
        SQL.Add('		,convert(varchar,Max(case when TimeGroupID='+inttostr(i)+' then CQQty end)) as '''+inttostr(i)+''' ');
      end;
      SQL.Add('	from (');
      Main_PerhourPPHSQL(Query1);  //主要SQL
      SQL.Add('	) PerhourPPH');
      SQL.Add('	Group by ScanDate,DepName,GXLB 	');
      SQL.Add('	union all');
      //SB 4.StdQty
      SQL.Add('	select ScanDate,DepName,GXLB,''4.StdQty'' as SB');
      for i:=7 to 17 do
      begin
        SQL.Add('		,convert(varchar,Max(case when TimeGroupID='+inttostr(i)+' then StdQty end)) as '''+inttostr(i)+''' ');
      end;
      SQL.Add('	from (');
      Main_PerhourPPHSQL(Query1);  //主要SQL
      SQL.Add('	) PerhourPPH');
      SQL.Add('	Group by ScanDate,DepName,GXLB');
      SQL.Add('	union all');
      //SB 5.Qty
      SQL.Add('	select ScanDate,DepName,GXLB,''5.Qty'' as SB');
      for i:=7 to 17 do
      begin
        SQL.Add('		,convert(varchar,Max(case when TimeGroupID='+inttostr(i)+' then Qty end)) as '''+inttostr(i)+''' ');
      end;
      SQL.Add('	from (');
      Main_PerhourPPHSQL(Query1);  //主要SQL
      SQL.Add('	) PerhourPPH');
      SQL.Add('	Group by ScanDate,DepName,GXLB');
      SQL.Add('	union all');
      //SB 6.PPH
      SQL.Add('	select ScanDate,DepName,GXLB,''6.POH'' as SB');
      for i:=7 to 17 do
      begin
         SQL.Add('		,convert(varchar,Max(case when TimeGroupID='+inttostr(i)+' then PPH end)) as '''+inttostr(i)+''' ');
      end;
      SQL.Add('	from (');
      Main_PerhourPPHSQL(Query1); //主要SQL
      SQL.Add('	) PerhourPPH');
      SQL.Add('	Group by ScanDate,DepName,GXLB');
      SQL.Add('	union all');
      //SB 7.TierABC
      SQL.Add('	select ScanDate,DepName,GXLB,''7.TierABC'' as SB');
      for i:=7 to 17 do
      begin
        SQL.Add('		,convert(varchar,Max(case when TimeGroupID='+inttostr(i)+' then TierABC end)) as '''+inttostr(i)+''' ');
      end;
      SQL.Add('	from (');
      Main_PerhourPPHSQL(Query1);  //主要SQL
      SQL.Add('	) PerhourPPH');
      SQL.Add('	Group by ScanDate,DepName,GXLB');
      SQL.Add(') PerhourPPH');
      SQL.Add('order by ScanDate,DepName,GXLB,SB ');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
  //
  //
  if PageControl1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      Active:=false;
      sql.Clear;
      SQL.Add('select case when IE_PPH>=1.5 then 1');
      SQL.Add('            when IE_PPH>=1.25 and IE_PPH<1.5 then 2');
      SQL.Add('            when IE_PPH>=1.13 and IE_PPH<1.25 then 3');
      SQL.Add('            when IE_PPH>=1.0 and IE_PPH<1.13 then 4');
      SQL.Add('            when IE_PPH>=0.86 and IE_PPH<1.0 then 5');
      SQL.Add('            when IE_PPH>=0.75 and IE_PPH<0.86 then 6');
      SQL.Add('            when IE_PPH>=0.61 and IE_PPH<0.75 then 7');
      SQL.Add('            when IE_PPH<=0.61 then 8 end IE_T2');
      SQL.Add(',SMZL.DAOMH,SMZL.Article,SMZL.IE_PPH,SMZL.ScanDate,SMZL.TimeGroupID,SMZL.DepName,Round((SMZL.Qty/Convert(float,SMZL.CQQty)/IsNull(SCSJDV.minut,1)),4) as PPH,SMZL.TierABC   from(');
      SQL.Add('select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDepartment.ID,BDepartment.DepName,SMDDSS.GXLB');
      SQL.Add(',case when Max(DDZL.ordermode) in (''MU'',''NU'') then  '' ''+SMDD.Article when Max(DDZL.ordermode) in (''TN'') then  ''  ''+SMDD.Article else SMDD.Article end as Article');
      SQL.Add(',SMDD.XieMing,sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeGroupID,');
      SQL.Add('RSCQ.CQQty,Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) / Count(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,SCXXCL.POH as IE_PPH,XXZL.DAOMH,SCXXDV.TierABC');
      SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
      SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
      SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
      SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
      SQL.Add('left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate=convert(varchar,SMZL.ScanDate,111)');
      SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
      SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL.Shehao');
      SQl.Add('left join SCXXDV on XXZL.XieXing=SCXXDV.XieXing and XXZL.Shehao=SCXXDV.Shehao');
      SQL.Add('left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
      SQL.Add('(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH from SCXXCL');
      SQL.Add('Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao');
      SQL.Add('left join (');
      SQL.Add('select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZL.ScanDate))-0)/60 as TimeGroupID ');
      SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
      SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
      SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
      SQL.Add('where SMZL.ScanDate between ');
      SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
      SQL.Add('and SMDDSS.DDBH like '''+Edit2.Text+'%'' and BDepartment.DepName like '''+Edit1.Text+'%'' and BDepartment.YN=1 ');
      SQL.Add('and SMDDSS.GXLB='''+CBX4.Text+''' ) SMZLT on SMZLT.SMNO=SMZL.SMNO');
      SQL.Add('where BDepartment.DepName like '''+Edit1.Text+'%'' and BDepartment.YN=1');
      SQL.Add('and SMDDSS.DDBH like '''+Edit2.Text+'%''');
      SQL.Add('and SMDDSS.GXLB='''+CBX4.Text+'''');
      SQL.Add('and DDZL.GSBH='''+main.Edit2.Text+''' ');
      SQL.Add('and SMZL.ScanDate between ');
      SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
      SQL.Add('group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BDepartment.ID,BDepartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeGroupID,RSCQ.CQQty,SCXXCL.POH,XXZL.DAOMH,SCXXDV.TierABC) SMZL');
      SQL.Add('Left join SCSJDV on SCSJDV.ID=SMZL.ID and SCSJDV.hors=TimeGroupID ');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
  //
  if PageControl1.ActivePageIndex=2 then
  begin
    with Query3 do
    begin
    Active:=false;
    sql.Clear;
    SQL.Add('select Article,Sum(PPH) as PPH,Count(Article) as PPH_Cnt,Round(Avg(PPH),4) as PPH_Avg,Max(IE_PPH) as IE_PPH,Max(IE_T2) as IE_T2 from (');
    SQL.Add('select SMZL.ScanDate,SMZL.ID,SMZL.DepName,SMZL.GXLB,SMZL.Article,SMZL.XieMing,SMZL.Qty,SMZL.TimeGroupID,SMZL.CQQty,Round((SMZL.Qty/Convert(float,SMZL.CQQty)/IsNull(SCSJDV.minut,1)),4) as PPH,SMZL.DAOMH,SMZL.IE_PPH, ');
    SQL.Add('        case when IE_PPH>=1.5 then 1');
    SQL.Add('             when IE_PPH>=1.25 and IE_PPH<1.5 then 2');
    SQL.Add('             when IE_PPH>=1.13 and IE_PPH<1.25 then 3');
    SQL.Add('             when IE_PPH>=1.0 and IE_PPH<1.13 then 4');
    SQL.Add('             when IE_PPH>=0.86 and IE_PPH<1.0 then 5');
    SQL.Add('             when IE_PPH>=0.75 and IE_PPH<0.86 then 6');
    SQL.Add('             when IE_PPH>=0.61 and IE_PPH<0.75 then 7');
    SQL.Add('             when IE_PPH<=0.61 then 8 end IE_T2');
    SQL.Add('from (');
    SQL.Add('select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDepartment.ID,BDepartment.DepName,SMDDSS.GXLB');
    SQL.Add(',case when Max(DDZL.ordermode) in (''MU'',''NU'') then  '' ''+SMDD.Article when Max(DDZL.ordermode) in (''TN'') then  ''  ''+SMDD.Article else SMDD.Article end as Article');
    SQL.Add(',SMDD.XieMing,sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeGroupID,');
    SQL.Add('RSCQ.CQQty,Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) / Count(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,');
    SQL.Add('SCXXCL.POH as IE_PPH,XXZL.DAOMH');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
    SQL.Add('left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate=convert(varchar,SMZL.ScanDate,111)');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL.Shehao');
    SQL.Add('left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
    SQL.Add('(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH');
    SQL.Add('from SCXXCL');
    SQL.Add('Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao');
    SQL.Add('left join (');
    SQL.Add('select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZL.ScanDate))-0)/60 as TimeGroupID ');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('where SMZL.ScanDate between');
    SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    SQL.Add('and SMDDSS.DDBH like '''+Edit2.Text+'%'' and BDepartment.DepName like '''+Edit1.Text+'%'' and BDepartment.YN=1');
    SQL.Add('and SMDDSS.GXLB='''+CBX4.Text+'''');
    SQL.Add(' ) SMZLT on SMZLT.SMNO=SMZL.SMNO');
    SQL.Add('where BDepartment.DepName like '''+Edit1.Text+'%'' and BDepartment.YN=1 ');
    SQL.Add('and SMDDSS.DDBH like '''+Edit2.Text+'%''');
    SQL.Add('and SMDDSS.GXLB='''+CBX4.Text+'''');
    SQL.Add('and DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('and SMZL.ScanDate between');
    SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    SQL.Add('group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BDepartment.ID,BDepartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeGroupID,RSCQ.CQQty,SCXXCL.POH,XXZL.DAOMH');
    SQL.Add(') SMZL  ');
    SQL.Add('Left join SCSJDV on SCSJDV.ID=SMZL.ID and SCSJDV.hors=TimeGroupID ) SMZL ');
    SQL.Add('Group by Article');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    end;
  end;
end;

procedure THourArticlePPH.FormCreate(Sender: TObject);
var i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  InfoLabel.Caption:='Du lieu cua May chu ERP:'+DatetoStr(now)+'-'+datetostr(Date()-45)+' xin dao ra som nhe';
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
        CBX4.Items.Add(fieldbyname('GX').asstring);
        next;
    end;
    CBX4.ItemIndex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;

    DTP1.date:=NDate-1;
    DTP2.time:=startoftheday(NDate);
    DTP3.date:=NDate-1;
    DTP4.time:=endoftheday(NDate);
  end;
end;

procedure THourArticlePPH.DTP1Change(Sender: TObject);
begin
  DTP3.Date:=DTP1.Date;
end;

procedure THourArticlePPH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure THourArticlePPH.FormDestroy(Sender: TObject);
begin
  HourArticlePPH:=nil;
end;

procedure THourArticlePPH.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j,SPos,EIndex,s:integer;
    IsArticleInfo:boolean;
    SCDate_S,SCDate_E: string;
begin
  // Get day to add sheet
   with Qtemp do
   begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct convert(varchar,scandate,111) as Scandate');
    sql.Add('from ( select ScanDate');
    sql.Add('       from SMZL');
    sql.Add('	      where SMZL.ScanDate between');
    SQL.Add('       convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    sql.Add('   		union all');
    sql.Add('       select ScanDate');
    sql.Add('   		from SMZLOld');
    sql.Add('   		where SMZLOld.ScanDate between');
    SQL.Add('       convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    sql.Add('      ) smzl');
    sql.Add('order by scandate');
    active:=true;
   end;
   //
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN7805.xls'),Pchar(AppDir+'Additional\Plan_SN7805.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN7805.xls') then
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
            Query1.First;
            eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN7805.xls');
            // add sheet
            for i:=3 to Qtemp.RecordCount-1 do
            begin
              eclApp.workbooks[1].sheets[3].select;
              eclapp.workbooks[1].sheets.add;
            end;
            s:=1;
            while not Qtemp.Eof do
            begin
              eclApp.workbooks[1].sheets[1].select;
              eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[267,13]].Copy;
              eclApp.workbooks[1].sheets[s].select;
              eclApp.workbooks[1].sheets[s].Cells[1,1].Select;
              eclApp.ActiveSheet.Paste;
              eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,13]].merge;
              //
              eclapp.workbooks[1].sheets[s].name:=copy(Qtemp.Fields[0].Value,6,2) + copy(Qtemp.Fields[0].Value,9,2);
              eclApp.workbooks[1].sheets[s].Cells(2,1):='生產日期:'+Qtemp.FieldByname('ScanDate').AsString;
              eclApp.workbooks[1].sheets[s].Range[eclApp.Cells[3,3],eclApp.Cells[3,13]].merge;
              QTemp.Next;
              s:=s+1;
             //
            end;
            s:=1;
            Qtemp.First;
            while not Qtemp.Eof do
            begin
              eclApp.workbooks[1].sheets[s].select;
              SPos:=3;
              EIndex:=1;
              SCDate_S:='';
              if Query1.fieldbyname('Scandate').AsString<>'' then SCDate_S:= Query1.fieldbyname('Scandate').AsString;
              while not Query1.Eof do
              begin
                if SCDate_E<>'' then SCDate_S:=SCDate_E;
                SCDate_E:=query1.fieldbyname('Scandate').AsString;
                  if  SCDate_S = SCDate_E then
                  begin
                    //Lean線
                    if (EIndex mod 8)=1 then
                      eclApp.workbooks[1].sheets[s].Range[eclApp.Cells[SPos+EIndex,1],eclApp.Cells[SPos+EIndex+7,1]].merge;
                    eclApp.workbooks[1].sheets[s].Cells(SPos+EIndex,1):=Query1.FieldByName('DepName').Value;
                    if Query1.FieldByName('SB').Value='2.Article' then IsArticleInfo:=true else IsArticleInfo:=false;
                    For i:=4 to Query1.fieldcount-1  do
                    begin
                      //欄位是Article 資訊
                      if IsArticleInfo=true then
                      begin
                        eclApp.Cells(SPos+EIndex,i-1):=trim(Copy(Query1.Fields[i].AsString,1,length(Query1.Fields[i].AsString)-1));
                        if Copy(Query1.Fields[i].AsString,1,1)=' ' then
                          eclApp.Cells[SPos+EIndex,i-1].Interior.Color := clyellow;
                        if Copy(Query1.Fields[i].AsString,1,2)='  ' then
                          eclApp.Cells[SPos+EIndex,i-1].Font.Color := clred;
                      end else
                      begin
                         eclApp.Cells(SPos+EIndex,i-1):=Query1.Fields[i].Value;
                         if (EIndex mod 8)=8  then
                            eclApp.Cells(SPos+EIndex-1,i-1):=Query1.Fields[i].Value;
                      end;
                    end; 
                    if (EIndex mod 8)=6  then
                      inc(EIndex);
                      //if ( ((EIndex mod 7)=3) or ((EIndex mod 7)=6) ) then  inc(EIndex);
                    inc(EIndex);
                    Query1.Next;
                  end else
                  begin
                    break;
                  end;
              end;
              //總共234行多的刪除
              for i:=SPos+EIndex to 267 do
                eclApp.ActiveSheet.Rows[SPos+EIndex].Delete;
              Qtemp.Next;
              S:=S+1;
            end;
            //
            showmessage('Succeed');
            eclApp.Visible:=True;
          except
            on   F:Exception   do
              showmessage(F.Message);
          end;
        end;
   end;
end;
//
procedure THourArticlePPH.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if  Query1.Active  then
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
        while not Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
          end;
          Query1.Next;
          inc(j);
        end;
         //add outline
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
        end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
    on  F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;
//
//
procedure THourArticlePPH.ExportDefaultExcelReport();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if PageControl1.ActivePageIndex=1 then
  begin
    if  Query2.Active  then
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
          for   i:=0   to   Query2.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=Query2.fields[i].FieldName;
          end;
          Query2.First;
          j:=2;
          while not Query2.Eof   do
          begin
            for   i:=0   to  Query2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query2.Fields[i].Value;
            end;
            Query2.Next;
            inc(j);
          end;
           //add outline
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
          end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
      on  F:Exception   do
        showmessage(F.Message);
      end;
    end;
  end;
  //
  if PageControl1.ActivePageIndex=2 then
  begin
    if Query3.Active  then
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
          for   i:=0   to   Query3.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=Query3.fields[i].FieldName;
          end;
          Query3.First;
          j:=2;
          while not Query3.Eof   do
          begin
            for   i:=0   to  Query3.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query3.Fields[i].Value;
            end;
            Query3.Next;
            inc(j);
          end;
           //add outline
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
          end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
      on  F:Exception   do
        showmessage(F.Message);
      end;
    end;
  end;
end;
//
//
procedure THourArticlePPH.Button2Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=0 then
  begin
    if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      ExportFormatExcel();
    end else
    begin
      ExportDefaultExcel();
    end;
  end else
    ExportDefaultExcelReport();
end;

procedure THourArticlePPH.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Copy(Query1.Fields[DataCol].AsString,1,1)=' ' then
  begin
    DBGridEh1.canvas.Brush.Color:=clyellow;
    if Copy(Query1.Fields[DataCol].AsString,1,2)='  ' then
      DBGridEh1.canvas.Font.Color:=clred;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  //
end;

end.
