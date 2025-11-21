unit DailyReportDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, fununit,
  ADODB, Comobj, Dateutils, iniFiles;

type
  TDailyReportDetail = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    CB1: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Qtemp: TQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    ExeQuery: TQuery;
    Qtemp1: TQuery;
    CBHuman: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    AppDir: string;
    HrmsDBIP, HrmsDBUser, HrmsDBPass, HrmsDBName: string;
    procedure ReadIni();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyReportDetail: TDailyReportDetail;
  NDate: TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDailyReportDetail.ReadIni();
var
  MyIni: Tinifile;
  AppDir: string;
begin
  AppDir := ExtractFilePath(Application.ExeName);
  if FileExists(AppDir + '\ComName.ini') = true then
  begin
    try
      MyIni := Tinifile.Create(AppDir + '\ComName.ini');
      HrmsDBIP := MyIni.ReadString('HRMS', 'IP', '192.168.23.12');
      HrmsDBName := MyIni.ReadString('HRMS', 'Database', 'P0104-TYXUAN');
      HrmsDBUser := MyIni.ReadString('HRMS', 'User', 'hrms');
      HrmsDBPass := MyIni.ReadString('HRMS', 'Pass', '123456');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDailyReportDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TDailyReportDetail.FormDestroy(Sender: TObject);
begin
  CreateHRM_DisConnect();
  DailyReportDetail := nil;
end;

procedure TDailyReportDetail.FormCreate(Sender: TObject);
var
  i: integer;
begin

  AppDir := ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active := false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active := true;
    for i := 1 to recordcount do
    begin
      CB1.Items.Add(fieldbyname('GSDH').asstring);
      next;
    end;
    CB1.Text := main.edit2.Text;
    active := false;
    sql.Clear;
    sql.add('Select convert(smalldatetime,convert(varchar,getdate(),111)) as NDate ');
    active := true;
    NDate := fieldbyname('NDate').value;
    active := false;
  end;
  DTP1.Date := NDate;
  ReadIni();
  CreateHRM_Connect();
end;

procedure TDailyReportDetail.CreateHRM_Connect();
begin
  //
  with ExeQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('--//[1] Create Linkserver');
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    SQL.Add(' ');
    SQL.Add('if  not exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') ');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('   @server=''HumanDB'', --//linkserver name.');
    SQL.Add('   @srvproduct='''', --//一般描述');
    SQL.Add('   @provider=''SQLOLEDB'', --//OLEDB Provider name, check BOL for more providers');
    SQL.Add('   @datasrc=''' + HrmsDBIP + ''', --//遠端Server Name  192.168.11.100\sql2k8');
    SQL.Add('   @catalog=''' + HrmsDBName + ''' --//default database for linkserver');
    //SQL.Add('GO');
    SQL.Add('');
    SQL.Add('--//[2]Add linked server login');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'', --//false=使用遠端使用者/密碼登入');
    SQL.Add(' --//true=使用本地端使用者/密碼連線遠端SERVER                        ');
    SQL.Add('@rmtsrvname=''HumanDB'', --//Linked server name');
    SQL.Add('@rmtuser=''' + HrmsDBUser + ''' , --//遠端登入使用者');
    SQL.Add('@rmtpassword=''' + HrmsDBPass + ''' --//遠端登入使用者密碼');
    //SQL.Add('GO');
    ExecSQL();
  end;
  //
end;

//關閉HRM連線
procedure TDailyReportDetail.CreateHRM_DisConnect();
begin
  with ExeQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('if exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') begin');
    SQL.Add('Exec sp_droplinkedsrvlogin ''HumanDB'',Null ');
    SQL.Add('Exec sp_dropserver ''HumanDB'',''droplogins'' ');
    SQL.Add('end');
    ExecSQL();
  end;
end;

procedure TDailyReportDetail.Button1Click(Sender: TObject);
var
  j, k, h: integer;
begin

  with Query1 do
  begin
    active := false;
    sql.Clear;
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    sql.Add('if object_id(''tempdb..#Scbbdata'') is not null');
    sql.Add(' begin   ');
    sql.Add('   drop table #Scbbdata ');
    sql.Add(' end');
    //
    if formatdatetime('yyyy/MM/dd', DTP1.Date) = formatdatetime('yyyy/MM/dd', NDate) then
    begin
      sql.Add('if object_id(''tempdb..#LKTT'') is not null');
      sql.Add(' begin ');
      sql.Add('  drop table #LKTT ');
      sql.Add(' end ');
      sql.Add('if object_id(''tempdb..#LKTT'') is  null');
      sql.Add(' begin ');
      sql.Add('  CREATE TABLE [tempdb].[#LKTT](');
      sql.Add('	 [DepNo] [varchar](10) NOT NULL,');
      sql.Add('	 [GXLB] [varchar](2) NOT NULL,');
      sql.Add('	 [DepName] [varchar](50) NULL,');
      sql.Add('	 [QtyTT] [float] NULL,');
      sql.Add('  ) ON [PRIMARY] ');
      sql.Add(' end ');
      sql.Add('truncate table #LKTT ');
      sql.Add('insert  into #LKTT ');
      sql.Add('select LKTT.DepNo,LKTT.GXLB,LKTT.DepName,sum(LKTT.QtyTT)as QtyTT');
      sql.Add('           from (select SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SCBBS.Qty)),0) as QtyTT');
      sql.Add('                 from SCBB');
      sql.Add('                 left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('                 left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('                 where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))');
      sql.Add('                        between ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and  ''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                 and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                 and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('                 and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''O'')');
      sql.Add('                 Group by SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName');
      sql.Add('                 Union all');
      sql.Add('                 select SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as QtyTT');
      sql.Add('                 from SMZL');
      sql.Add('                 left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.Add('                 left join BDepartment on BDepartment.ID=SMZL.DepNo');
      sql.Add('                 left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
      sql.Add('                 where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) ');
      sql.Add('                        between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and  ''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                 and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                 and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('                 and (SMDDSS.GXLB=''A'' or SMDDSS.GXLB=''C'' or SMDDSS.GXLB=''S'' or SMDDSS.GXLB=''O'')');
      sql.Add('                 Group by SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName)LKTT ');
      sql.Add('           Group by LKTT.DepNo,LKTT.GXLB,LKTT.DepName ');
    end;
    //

    if formatdatetime('yyyy/MM/dd', DTP1.Date) = formatdatetime('yyyy/MM/dd', NDate) then
    begin
      sql.Add(' select SL.*,LKMT.QtyMT,#LKTT.QtyTT');
      sql.Add(' into #Scbbdata');
      sql.Add(' from ( ');
      sql.add('       select convert(varchar,SMZL.USERDATE,111) as SCDate ,SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,isnull(SCBZCL.Qty,0) as bzQty,');
      sql.add('              Convert(float,SCRL.SCGS) as SCGS,null as SDGS,isnull(sum(SMZL.CTS*SMDDSS.Qty),0)/SCRL.SCGS  as AvgQty');
      sql.add('       from SMZL');
      sql.add('       left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.add('       left join BDepartment on BDepartment.ID=SMZL.DepNo');
      sql.add('       left join SCBZCL on SCBZCL.BZDate=convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) and SCBZCL.DepNo=SMZL.DepNo');
      sql.add('       left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
      sql.add('       left join SCRL on SCRL.SCYEAR=Year(SMZL.USERDATE) and SCRL.SCMONTH=Month(SMZL.USERDATE) and SCRL.SCDay=Day(SMZL.USERDATE ) ');
      sql.add('                      and SCRL.DepNO=SMZL.DepNO');
      sql.add('       where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111))=''' + formatdatetime('yyyy/MM/dd',
        DTP1.Date) + '''');
      sql.add('       and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.add('       and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.add('       and (SMDDSS.GXLB=''A'' or SMDDSS.GXLB=''C'' or SMDDSS.GXLB=''S'' or SMDDSS.GXLB=''O'')');
      sql.add('       Group by convert(varchar,SMZL.USERDATE,111) ,SMZL.DepNo,SMDDSS.GXLB,BDepartment.DepName ,SCBZCL.Qty,SCRL.SCGS ) SL');
      sql.Add('left join #LKTT  on #LKTT.DepNo COLLATE DATABASE_DEFAULT =SL.DepNo COLLATE DATABASE_DEFAULT and #LKTT.GXLB COLLATE DATABASE_DEFAULT =SL.GXLB COLLATE DATABASE_DEFAULT ');
    end
    else
    begin
      sql.Add(' select SL.*,LKMT.QtyMT,LKTT.QtyTT');
      sql.Add(' into #Scbbdata');
      sql.Add(' from (');
      sql.Add('       Select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty,isnull(SCBZCL.Qty,0) as bzQty,');
      sql.Add('              Convert(float,SCRL.SCGS) as SCGS,null as SDGS,isnull(sum(SCBBS.Qty),0)/SCRL.SCGS  as AvgQty');
      sql.Add('       from SCBB');
      sql.Add('       left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('       left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=SCBB.DepNo');
      sql.Add('       left join DDZL on DDZl.DDBH=SCBBS.SCBH');
      sql.Add('       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
      sql.Add('       left join SCRL on SCRL.SCYEAR=Year(SCBB.SCDate) and SCRL.SCMONTH=Month(SCBB.SCDate) and SCRL.SCDay=Day(SCBB.SCDate )');
      sql.Add('                      and SCRL.DepNO=SCBB.DepNO');
      sql.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))=''' + formatdatetime('yyyy/MM/dd', DTP1.Date)
        + '''');
      sql.Add('       and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add('       and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('       and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''S''or SCBBS.GXLB=''O'')');
      sql.Add('       Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName ,SCBZCL.Qty,SCRL.SCGS ) SL');
      sql.Add(' left join (select SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,isnull(sum(Convert(float,SCBBS.Qty)),0) as QtyTT');
      sql.Add('            from SCBB');
      sql.Add('            left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('            left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('            where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))');
      sql.Add('                   between ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and  ''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('            and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('            and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('            and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''S''or SCBBS.GXLB=''O'')');
      sql.Add('            Group by SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName ) LKTT on LKTT.DepNo=SL.DepNo and LKTT.GXLB=SL.GXLB');
    end;
    //
    sql.Add(' left join( select SCBZCL.Depno,Bdepartment.GXLB,Bdepartment.Depname,isnull(sum(qty),0) as QtyMT');
    sql.Add('	           from SCBZCL left join bdepartment on SCBZCL.Depno=Bdepartment.id');
    sql.Add('	           where convert(smalldatetime,convert(varchar,SCBZCL.bzdate,111)) between');
    sql.Add('                  ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and  ''' +
      formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
    sql.Add('            and bdepartment.GSBH=' + '''' + CB1.text + '''');
    sql.Add('            and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
    sql.Add('            and (bdepartment.GXLB=''A'' or bdepartment.GXLB=''C'' or bdepartment.GXLB=''S'' or bdepartment.GXLB=''O'')');
    sql.Add('            group by SCBZCL.Depno,Bdepartment.GXLB,Bdepartment.Depname )LKMT on LKMT.DepNo=SL.DepNo and LKMT.GXLB=SL.GXLB');

    sql.Add('select DepName as ''單位'',SCGS as ''上班時間'',RY1 as ''訂單1'',RY2 as ''訂單2'',RY3 as ''訂單3'',RY4 as ''訂單4'',RY5 as ''訂單5'',RY6 as ''訂單6'',RY7 as ''訂單7'',RY8 as ''訂單8'' ,RY9 as ''訂單9'',RY10 as ''訂單10'',');
    sql.Add('       RY11 as ''訂單11'',RY12 as ''訂單12'',RY13 as ''訂單13'',RY14 as ''訂單14'',RY15 as ''訂單15'',');
   // if CB1.Text = 'VC2' then
      sql.Add('       RY16 as ''訂單16'',RY17 as ''訂單17'',RY18 as ''訂單18'',RY19 as ''訂單19'',RY20 as ''訂單20'',RY21 as ''訂單21'',RY22 as ''訂單22'',RY23 as ''訂單23'',RY24 as ''訂單24'',RY25 as ''訂單25'',');
    sql.Add('       RY26 as ''訂單26'',RY27 as ''訂單27'',RY28 as ''訂單28'',RY29 as ''訂單29'',RY30 as ''訂單30'',');
    sql.Add('       Qty1 as ''產量1'',Qty2 as ''產量2'',Qty3 as ''產量3'',Qty4 as ''產量4'',Qty5 as ''產量5'',Qty6 as ''產量6'',Qty7 as ''產量7'',Qty8 as ''產量8'',Qty9 as ''產量9'',Qty10 as ''產量10'' ,');
    sql.Add('       Qty11 as ''產量11'',Qty12 as ''產量12'',Qty13 as ''產量13'',Qty14 as ''產量14'',Qty15 as ''產量15'',');
    //if CB1.Text = 'VC2' then
      sql.Add('       Qty16 as ''產量16'',Qty17 as ''產量17'',Qty18 as ''產量18'',Qty19 as ''產量19'',Qty20 as ''產量20'',Qty21 as ''產量21'',Qty22 as ''產量22'',Qty23 as ''產量23'',Qty24 as ''產量24'',Qty25 as ''產量25'',');
     sql.Add('       Qty26 as ''產量26'',Qty27 as ''產量27'',Qty28 as ''產量28'',Qty29 as ''產量29'',Qty30 as ''產量30'',');
    sql.Add('       BzQty as ''目標產量'',Qty as ''實際產量'',LackQty as ''DELAY'',Rate as ''達成率'' ,QtyMT,QtyTT,RateLK,AvgQty as ''平均一小時雙數'',Substring(''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + ''',6,5) as ''生產日'' ');
    sql.Add('from (select SCBB.SCDate,case when SCBB.GXLB=''A'' then 3 when  SCBB.GXLB=''O'' then 4 when  SCBB.GXLB=''S'' then 2  when SCBB.GXLB=''C'' then 1 end as GXLB ,SCBB.DepNo ,SCBB.DepName ,SCBB.Qty ,SCBB.bzQty ,SCBB.Qty-SCBB.BzQty as LackQty,');
    sql.Add('             (case when SCBB.bzQty <> 0 then Convert(varchar,round(SCBB.Qty/convert(float,SCBB.BzQty)*100,0))+''%'' end) Rate,SCGS,round(AvgQty,0) as AvgQty,');
    sql.Add('             SCBB.QtyMT,SCBB.QtyTT,(case when SCBB.QtyMT <> 0 then Convert(varchar,round(SCBB.QtyTT/convert(float,SCBB.QtyMT)*100,0))+''%'' end) RateLK,');
    sql.Add('             RYList.RY1,RYList.RY2,RYList.RY3,RYList.RY4,RYList.RY5,RYList.RY6,RYList.RY7,RYList.RY8,RYList.RY9,RYList.RY10,RYList.RY11,RYList.RY12,RYList.RY13,RYList.RY14,RYList.RY15,');
   // if CB1.Text = 'VC2' then
      sql.Add('             RYList.RY16,RYList.RY17,RYList.RY18,RYList.RY19,RYList.RY20,RYList.RY21,RYList.RY22,RYList.RY23,RYList.RY24,RYList.RY25,');
      sql.Add('             RYList.RY26,RYList.RY27,RYList.RY28,RYList.RY29,RYList.RY30,');
    sql.Add('             RYList.Qty1,RYList.Qty2,RYList.Qty3,RYList.Qty4,RYList.Qty5,RYList.Qty6,RYList.Qty7,RYList.Qty8,RYList.Qty9,RYList.Qty10,RYList.Qty11,RYList.Qty12,RYList.Qty13,RYList.Qty14,RYList.Qty15');
   // if CB1.Text = 'VC2' then
      sql.Add('             ,RYList.Qty16,RYList.Qty17,RYList.Qty18,RYList.Qty19,RYList.Qty20,RYList.Qty21,RYList.Qty22,RYList.Qty23,RYList.Qty24,RYList.Qty25');
      sql.Add('             ,RYList.Qty26,RYList.Qty27,RYList.Qty28,RYList.Qty29,RYList.Qty30');
    sql.Add('      from (select * from #Scbbdata where #Scbbdata.GXLB=''C''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''C'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''C''');
    sql.Add('            Group by SCDate');
    sql.Add('            Union all');
    sql.Add('            select * from #Scbbdata where #Scbbdata.GXLB=''S''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''S'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''S''');
    sql.Add('            Group by SCDate');
    sql.Add('            Union all');
    sql.Add('            select * from #Scbbdata where #Scbbdata.GXLB=''O''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''O'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''O''');
    sql.Add('            Group by SCDate');
    sql.Add('            Union all');
    sql.Add('            select * from #Scbbdata where #Scbbdata.GXLB=''A''');
    sql.Add('            Union all');
    sql.Add('            select SCDate ,''zTotal'' as DepNo,''A'' as GXLB,''zTotal'' as  DepName,isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,null as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0)  as AvgQty');
    sql.Add('            ,isnull(sum(QtyMT),0) as QtyMT,isnull(sum(QtyTT),0) as QtyTT');
    sql.Add('            from #Scbbdata where #Scbbdata.GXLB=''A''');
    sql.Add('            Group by SCDate ) SCBB');
    sql.Add('      left join (');
    sql.Add('                 select SCDate,DepNo,');
    sql.Add('                        Max(Case when RYNo=1 then SCBH end) as RY1,');
    sql.Add('                        Max(Case when RYNo=2 then SCBH end) as RY2,');
    sql.Add('                        Max(Case when RYNo=3 then SCBH end) as RY3,');
    sql.Add('                        Max(Case when RYNo=4 then SCBH end) as RY4,');
    sql.Add('                        Max(Case when RYNo=5 then SCBH end) as RY5,');
    sql.Add('                        Max(Case when RYNo=6 then SCBH end) as RY6,');
    sql.Add('                        Max(Case when RYNo=7 then SCBH end) as RY7,');
    sql.Add('                        Max(Case when RYNo=8 then SCBH end) as RY8,');
    sql.Add('                        Max(Case when RYNo=9 then SCBH end) as RY9,');
    sql.Add('                        Max(Case when RYNo=10 then SCBH end) as RY10,');
    sql.Add('                        Max(Case when RYNo=11 then SCBH end) as RY11,');
    sql.Add('                        Max(Case when RYNo=12 then SCBH end) as RY12,');
    sql.Add('                        Max(Case when RYNo=13 then SCBH end) as RY13,');
    sql.Add('                        Max(Case when RYNo=14 then SCBH end) as RY14,');
    sql.Add('                        Max(Case when RYNo=15 then SCBH end) as RY15,');
    //if CB1.Text = 'VC2' then
   // begin
      sql.Add('                        Max(Case when RYNo=16 then SCBH end) as RY16,');
      sql.Add('                        Max(Case when RYNo=17 then SCBH end) as RY17,');
      sql.Add('                        Max(Case when RYNo=18 then SCBH end) as RY18,');
      sql.Add('                        Max(Case when RYNo=19 then SCBH end) as RY19,');
      sql.Add('                        Max(Case when RYNo=20 then SCBH end) as RY20,');
      sql.Add('                        Max(Case when RYNo=21 then SCBH end) as RY21,');
      sql.Add('                        Max(Case when RYNo=22 then SCBH end) as RY22,');
      sql.Add('                        Max(Case when RYNo=23 then SCBH end) as RY23,');
      sql.Add('                        Max(Case when RYNo=24 then SCBH end) as RY24,');
      sql.Add('                        Max(Case when RYNo=25 then SCBH end) as RY25,');
      sql.Add('                        Max(Case when RYNo=26 then SCBH end) as RY26,');
      sql.Add('                        Max(Case when RYNo=27 then SCBH end) as RY27,');
      sql.Add('                        Max(Case when RYNo=28 then SCBH end) as RY28,');
      sql.Add('                        Max(Case when RYNo=29 then SCBH end) as RY29,');
      sql.Add('                        Max(Case when RYNo=30 then SCBH end) as RY30,');
    //end;
    sql.Add('                        Max(Case when RYNo=1 then Convert(float,Qty) end) as Qty1,');
    sql.Add('                        Max(Case when RYNo=2 then Convert(float,Qty) end) as Qty2,');
    sql.Add('                        Max(Case when RYNo=3 then Convert(float,Qty) end) as Qty3,');
    sql.Add('                        Max(Case when RYNo=4 then Convert(float,Qty) end) as Qty4,');
    sql.Add('                        Max(Case when RYNo=5 then Convert(float,Qty) end) as Qty5,');
    sql.Add('                        Max(Case when RYNo=6 then Convert(float,Qty) end) as Qty6,');
    sql.Add('                        Max(Case when RYNo=7 then Convert(float,Qty) end) as Qty7,');
    sql.Add('                        Max(Case when RYNo=8 then Convert(float,Qty) end) as Qty8,');
    sql.Add('                        Max(Case when RYNo=9 then Convert(float,Qty) end) as Qty9,');
    sql.Add('                        Max(Case when RYNo=10 then Convert(float,Qty) end) as Qty10,');
    sql.Add('                        Max(Case when RYNo=11 then Convert(float,Qty) end) as Qty11,');
    sql.Add('                        Max(Case when RYNo=12 then Convert(float,Qty) end) as Qty12,');
    sql.Add('                        Max(Case when RYNo=13 then Convert(float,Qty) end) as Qty13,');
    sql.Add('                        Max(Case when RYNo=14 then Convert(float,Qty) end) as Qty14,');
    sql.Add('                        Max(Case when RYNo=15 then Convert(float,Qty) end) as Qty15,');
   // if CB1.Text = 'VC2' then
   // begin
      sql.Add('                        Max(Case when RYNo=16 then Convert(float,Qty) end) as Qty16,');
      sql.Add('                        Max(Case when RYNo=17 then Convert(float,Qty) end) as Qty17,');
      sql.Add('                        Max(Case when RYNo=18 then Convert(float,Qty) end) as Qty18,');
      sql.Add('                        Max(Case when RYNo=19 then Convert(float,Qty) end) as Qty19,');
      sql.Add('                        Max(Case when RYNo=20 then Convert(float,Qty) end) as Qty20,');
      sql.Add('                        Max(Case when RYNo=21 then Convert(float,Qty) end) as Qty21,');
      sql.Add('                        Max(Case when RYNo=22 then Convert(float,Qty) end) as Qty22,');
      sql.Add('                        Max(Case when RYNo=23 then Convert(float,Qty) end) as Qty23,');
      sql.Add('                        Max(Case when RYNo=24 then Convert(float,Qty) end) as Qty24,');
      sql.Add('                        Max(Case when RYNo=25 then Convert(float,Qty) end) as Qty25,');
      sql.Add('                        Max(Case when RYNo=26 then Convert(float,Qty) end) as Qty26,');
      sql.Add('                        Max(Case when RYNo=27 then Convert(float,Qty) end) as Qty27,');
      sql.Add('                        Max(Case when RYNo=28 then Convert(float,Qty) end) as Qty28,');
      sql.Add('                        Max(Case when RYNo=29 then Convert(float,Qty) end) as Qty29,');
      sql.Add('                        Max(Case when RYNo=30 then Convert(float,Qty) end) as Qty30');
   // end;
    sql.Add('                 from (select *,ROW_NUMBER() over (PARTITION BY SCDATE,DepNo ORDER BY SCDATE,DepNo,SCBH Asc) as  RYNo');
    //
    if formatdatetime('yyyy/MM/dd', DTP1.Date) = formatdatetime('yyyy/MM/dd', NDate) then
    begin
      sql.Add('                       from (select convert(varchar,SMZL.USERDATE,111) as SCDate ,SMZL.DepNo,SMDD.YSBH as SCBH,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0)  as Qty');
      sql.Add('                             from SMZL');
      sql.Add('                             left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.Add('                             left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
      sql.Add('                             where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) =''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                             and SMDD.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                             and (SMDDSS.GXLB=''A'' or SMDDSS.GXLB=''S'' or SMDDSS.GXLB=''C'' or SMDDSS.GXLB=''O'')');
      sql.Add('                             Group by convert(varchar,SMZL.USERDATE,111)  ,SMZL.DepNo,SMDD.YSBH) SCBBS ) SCBBS');
      sql.Add('                       Group by   SCDate,DepNo  ) RYList on RYList.SCDate=SCBB.SCDate and RYList.DepNo=SCBB.DepNO ');
    end
    else
    begin
      sql.Add('                       from (select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SCBBS.SCBH,isnull(sum(Convert(float,SCBBS.Qty)),0)  as Qty');
      sql.Add('                             from SCBB');
      sql.Add('                             left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('                             left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
      sql.Add('                             where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) =''' +
        formatdatetime('yyyy/MM/dd', DTP1.Date) + '''');
      sql.Add('                             and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add('                             and (SCBBS.GXLB=''A'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''C'' or SCBBS.GXLB=''O'' )');
      sql.Add('                             Group by convert(varchar,SCBB.SCDate,111)  ,SCBB.DepNo,SCBBS.SCBH ) SCBBS ) SCBBS');
      sql.Add('                       Group by   SCDate,DepNo  ) RYList on RYList.SCDate=SCBB.SCDate and RYList.DepNo=SCBB.DepNO ');
    end;
    sql.Add('                 left join BDepartment on BDepartment.ID = SCBB.DepNo');
    sql.Add('     ) Scbbs');
    sql.Add('   order by GXLB,DepName');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    //exit;
    active := true;
  end;
  with DBGrideh1 do
  begin
    columns[0].Width := 95;
    columns[0].title.caption := 'DepName|單位';
    columns[1].Width := 40;
    columns[2].Width := 35;
    for j := 2 to Query1.FieldCount - 40 do
    begin
      columns[j].Width := 65;
      columns[j].Title.Caption := 'RY|' + columns[j].Title.Caption;
    end;
    for k := Query1.FieldCount - 39 to Query1.FieldCount - 7 do
    begin
      columns[k].Width := 65;
      columns[k].Title.Caption := 'Qty|' + columns[k].Title.Caption;
    end;
      columns[63].Width := 55;
      columns[63].Title.Caption := 'SL trong ngay:當天產量|目標產量';
      columns[64].Width := 55;
      columns[64].Title.Caption := 'SL trong ngay:當天產量|實際產量';
      columns[65].Width := 55;
      columns[65].Title.Caption := 'SL trong ngay:當天產量|DELAY';
      columns[66].Width := 55;
      columns[66].Title.Caption := 'SL trong ngay:當天產量|達成率';

      columns[67].Width := 55;
      columns[67].Title.Caption := 'Luy ke san luong:累計產量|目標產量';
      columns[68].Width := 55;
      columns[68].Title.Caption := 'Luy ke san luong:累計產量|實際產量';
      columns[69].Width := 55;
      columns[69].Title.Caption := 'Luy ke san luong:累計產量|達成率';
  end;
  // Assembly Plan output
  with Qtemp do
  begin
    active := false;
    sql.Clear;
    sql.Add('select isnull(sum(qty),0) as Qty');
    sql.Add('from SCBZCL left join bdepartment on SCBZCL.Depno=Bdepartment.id');
    sql.Add('where convert(smalldatetime,convert(varchar,SCBZCL.bzdate,111)) between');
    sql.Add(' ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and ''' + formatdatetime('yyyy/MM/dd',
      endofthemonth(DTP1.date)) + '''');
    sql.Add('and bdepartment.GSBH=' + '''' + CB1.text + '''');
    sql.add('and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
    sql.Add('and bdepartment.GXLB=''A''');
    active := true;
  end;
  // Assembly Actual Quantity
  with Qtemp1 do
  begin
    active := false;
    sql.Clear;
    if formatdatetime('yyyy/MM', DTP1.Date) = formatdatetime('yyyy/MM', NDate) then
    begin
      sql.Add('select sum(TT.Qty)as Qty');
      sql.Add('from(select isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty');
      sql.Add('     from SCBB');
      sql.Add('     left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('     left join DDZL on DDZl.DDBH=SCBBS.SCBH');
      sql.Add('     left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
      sql.Add('     left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay))=convert(varchar,SCBB.SCDate)');
      sql.Add('                    and SCRL.DepNO=SCBB.DepNO');
      sql.Add('     left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
      sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add('            ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and ''' +
        formatdatetime('yyyy/MM/dd', endofthemonth(DTP1.date)) + '''');
      sql.Add('     and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add('     and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('     and SCBBS.GXLB=''A''');
      sql.Add('     Union all');
      sql.Add('     select isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty');
      sql.Add('     from SMZL');
      sql.Add('     left join SMDDSS on  SMZL.CODEBAR=SMDDSS.CODEBAR');
      sql.Add('     left join BDepartment on BDepartment.ID=SMZL.DepNo');
      sql.Add('     left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay))=convert(varchar,SMZL.USERDATE)');
      sql.Add('     and SCRL.DepNO=SMZL.DepNO');
      sql.Add('     where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) between');
      sql.Add('            ''' + formatdatetime('yyyy/MM/dd', NDate) + ''' and ''' + formatdatetime('yyyy/MM/dd', NDate) + '''');
      sql.Add('     and BDepartment.GSBH=' + '''' + CB1.text + '''');
      sql.Add('     and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add('     and SMDDSS.GXLB=''A'')TT');
    end
    else
    begin
      sql.Add('select isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty');
      sql.Add('from SCBB');
      sql.Add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNo');
      sql.Add('left join DDZL on DDZl.DDBH=SCBBS.SCBH');
      sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
      sql.Add('left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay))=convert(varchar,SCBB.SCDate)');
      sql.Add('and SCRL.DepNO=SCBB.DepNO');
      sql.Add('left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
      sql.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add(' ''' + formatdatetime('yyyy/MM/dd', startofthemonth(DTP1.date)) + ''' and ''' + formatdatetime('yyyy/MM/dd',
        endofthemonth(DTP1.date)) + '''');
      sql.Add('and SCBB.GSBH=' + '''' + CB1.text + '''');
      sql.Add(' and BDepartment.DepName like ' + '''' + '%' + edit1.Text + '%' + '''');
      sql.Add(' and SCBBS.GXLB=''A''');
    end;
    active := true;
  end;
end;

procedure TDailyReportDetail.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(Query1.FieldByName('單位').Value) = 'zTotal' then
  begin
    dbgrideh1.canvas.brush.Color := $00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TDailyReportDetail.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j, k: integer;
begin
  //
  if CB1.Text = 'VC2' then
  begin
    if (not DirectoryExists(AppDir + 'Additional\')) then
      ForceDirectories(AppDir + 'Additional\');
    CopyFile(Pchar('\\' + main.ServerIP + '\liy_erp\Additional\Plan_SN535_VC2.xls'), Pchar(AppDir + 'Additional\Plan_SN535_VC2.xls'),
      false);
    if FileExists(AppDir + 'Additional\Plan_SN535_VC2.xls') then
    begin
      //

      if Query1.active then
      begin
        try
          eclApp := CreateOleObject('Excel.Application');
          WorkBook := CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir + 'Additional\Plan_SN535_VC2.xls');
          eclapp.ActiveSheet.Columns[42].NumberFormatLocal := 'yyyy/mm/dd';

          Query1.First;
          j := 6;
          while not Query1.Eof do
          begin
            for i := 0 to Query1.fieldcount - 1 do
            begin
              eclApp.Cells(j, i + 1) := Query1.Fields[i].Value;
            end;
            if Query1.FieldByName('單位').Value = 'zTotal' then
              eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, i]].interior.color := clyellow;
            Query1.Next;
            inc(j);
          end;
          //  add outline
          for k := 1 to 4 do
          begin
            eclApp.range[eclApp.cells[4, 1], eclApp.cells[j - 1, 42]].borders[k].linestyle := 1;
          end;
          //

          eclApp.Range[eclApp.Cells[j + 1, 54], eclApp.Cells[j + 1, 55]].merge;
          eclApp.cells(j + 1, 54) := '月份目標產能:';
          eclApp.cells(j + 1, 56) := Qtemp.FieldByName('Qty').Value;

          eclApp.cells(j + 1, 58) := '月份累計:';
          eclApp.cells(j + 1, 59) := Qtemp1.FieldByName('Qty').Value;

          eclapp.columns.autofit;

          eclApp.ActiveSheet.Columns[58].ColumnWidth := 8;
          eclApp.ActiveSheet.Columns[59].ColumnWidth := 8;
          eclApp.ActiveSheet.Columns[50].ColumnWidth := 8;

          eclApp.ActiveSheet.Columns[61].ColumnWidth := 8;
          eclApp.ActiveSheet.Columns[62].ColumnWidth := 13;

          // eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible := True;
        except
          on F: Exception do
            showmessage(F.Message);
        end;
      end;
    end
  end else
    begin
      if (not DirectoryExists(AppDir + 'Additional\')) then
        ForceDirectories(AppDir + 'Additional\');
      CopyFile(Pchar('\\' + main.ServerIP + '\lys_erp\Additional\Plan_SN535TT.xls'), Pchar(AppDir + 'Additional\Plan_SN535TT.xls'),
        false);
      if FileExists(AppDir + 'Additional\Plan_SN535TT.xls') then
      begin
        //

        if Query1.active then
        begin
          try
            eclApp := CreateOleObject('Excel.Application');
            WorkBook := CreateOleObject('Excel.Sheet');
          except
            Application.MessageBox('No Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
            Exit;
          end;
          try
            eclApp.WorkBooks.Open(AppDir + 'Additional\Plan_SN535TT.xls');
            eclapp.ActiveSheet.Columns[71].NumberFormatLocal := 'yyyy/mm/dd';

            Query1.First;
            j := 6;
            while not Query1.Eof do
            begin
              for i := 0 to Query1.fieldcount - 1 do
              begin
                eclApp.Cells(j, i + 1) := Query1.Fields[i].Value;
              end;
              if Query1.FieldByName('單位').Value = 'zTotal' then
                eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, i]].interior.color := clyellow;
              Query1.Next;
              inc(j);
            end;
            //  add outline
            for k := 1 to 4 do
            begin
              eclApp.range[eclApp.cells[4, 1], eclApp.cells[j - 1, 71]].borders[k].linestyle := 1;
            end;
            //

            eclApp.Range[eclApp.Cells[j + 1, 61], eclApp.Cells[j + 1, 62]].merge;
            eclApp.cells(j + 1, 61) := '月份目標產能:';
            eclApp.cells(j + 1, 63) := Qtemp.FieldByName('Qty').Value;

            eclApp.cells(j + 1, 66) := '月份累計:';
            eclApp.cells(j + 1, 67) := Qtemp1.FieldByName('Qty').Value;

            eclapp.columns.autofit;

            eclApp.ActiveSheet.Columns[68].ColumnWidth := 8;
            eclApp.ActiveSheet.Columns[69].ColumnWidth := 8;
            eclApp.ActiveSheet.Columns[60].ColumnWidth := 8;

            eclApp.ActiveSheet.Columns[61].ColumnWidth := 8;
            eclApp.ActiveSheet.Columns[62].ColumnWidth := 13;

            // eclapp.columns.autofit;
            showmessage('Succeed');
            eclApp.Visible := True;
          except
            on F: Exception do
              showmessage(F.Message);
          end;
        end;
      end;
      //
    end;

end;

end.

