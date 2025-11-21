unit DepartmentDailyPPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, PrnDbgeh, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils
  ,Comobj,iniFiles;

type
  TDepartmentDailyPPH = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    Button2: TButton;
    CBX3: TComboBox;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    OpenDialog: TOpenDialog;
    Label1: TLabel;
    Label7: TLabel;
    CB1: TCheckBox;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
  private
    AppDir:String;
    HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    //
    sDate,eDate:TDateTime;
    DepGXLB,GXLB,BDepartmentSQL:String;
    { Private declarations }
    procedure ReadIni();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
  public
    { Public declarations }
  end;

var
  DepartmentDailyPPH: TDepartmentDailyPPH;

implementation

uses main1,FunUnit;

{$R *.dfm}
procedure TDepartmentDailyPPH.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      HrmsDBIP:=MyIni.ReadString('HRMS','IP','192.168.23.12');
      HrmsDBName:=MyIni.ReadString('HRMS','Database','P0104-TYXUAN');
      HrmsDBUser:=MyIni.ReadString('HRMS','User','hrms');
      HrmsDBPass:=MyIni.ReadString('HRMS','Pass','123456');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TDepartmentDailyPPH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TDepartmentDailyPPH.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    CBX3.Clear;
    for i:=1 to recordcount do
    begin
        CBX3.Items.Add(fieldbyname('GX').asstring);
        Next;
    end;
    CBX3.ItemIndex:=0;
    active:=false;
  end;
  //InitCombo Year/Month
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
  ReadIni();
  CreateHRM_Connect();
end;

procedure TDepartmentDailyPPH.FormDestroy(Sender: TObject);
begin
  DepartmentDailyPPH:=nil;
  CreateHRM_DisConnect();
end;
procedure TDepartmentDailyPPH.CreateHRM_Connect();
begin
  //
  with Qtemp do
  begin
    Active:=false;
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
    SQL.Add('   @datasrc='''+HrmsDBIP+''', --//遠端Server Name  192.168.11.100\sql2k8');
    SQL.Add('   @catalog='''+HrmsDBName+''' --//default database for linkserver');
    //SQL.Add('GO');
    SQL.Add('');
    SQL.Add('--//[2]Add linked server login');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'', --//false=使用遠端使用者/密碼登入');
    SQL.Add(' --//true=使用本地端使用者/密碼連線遠端SERVER                        ');
    SQL.Add('@rmtsrvname=''HumanDB'', --//Linked server name');
    SQL.Add('@rmtuser='''+HrmsDBUser+''' , --//遠端登入使用者');
    SQL.Add('@rmtpassword='''+HrmsDBPass+''' --//遠端登入使用者密碼');
    //SQL.Add('GO');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
end;
//關閉HRM連線
procedure TDepartmentDailyPPH.CreateHRM_DisConnect();
begin
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') begin');
    SQL.Add('Exec sp_droplinkedsrvlogin ''HumanDB'',Null ');
    SQL.Add('Exec sp_dropserver ''HumanDB'',''droplogins'' ');
    SQL.Add('end');
    ExecSQL();
  end;
end;

procedure TDepartmentDailyPPH.Button1Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    i:integer;
begin
  //成型線有掃描工段A 和 B
  GXLB:=CBX3.Text;
  if ((GXLB='A') or (GXLB='B')) then
    DepGXLB:='A'
  else
    DepGXLB:=GXLB;
  //
  iYear:=strtoint(CBX1.text);
  iMonth:=strtoint(CBX2.text);
  iDay:=1;
  sdate:=EncodeDate(iYear,iMonth,iDay);
  edate:=endofthemonth(sdate);
  decodedate(edate,iYear,iMonth,iDay);
  //線別中文
  if CB1.Checked=true  then
    BDepartmentSQL:='BDepartment.DepMemo'
  else
    BDepartmentSQL:='BDepartment.DepName';
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('if object_id(''tempdb..#HumDataPOH'') is not null');
    sql.Add('begin   drop table #HumDataPOH end');
    sql.Add('select HumData.*,HumData.TTLCHC+HumData.TTTCHC as HC_ALL,BDepartment.ID_HRM as dv_ma into #HumDataPOH from (');
    sql.Add('select HumData.HMonth as qt_ngay,BDepartment.sumline,Sum(DirRelWorkers) as dv_dilam,Sum(TTLCHC) as TTLCHC,Sum(TTTCHC) as TTTCHC  from  (');
    sql.Add('select SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepartment.sumline,BDepartment.GXLB');
    sql.Add('from SCBBS');
    sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNo');
    sql.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('and SCBB.GSBH='''+main.Edit2.Text+'''');
    sql.Add('Group by SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepartment.sumline,BDepartment.GXLB ) BDepartment');
    sql.Add('left join (');
    sql.Add('SELECT Convert(varchar,QT_NGAY,111) as HMonth,ST_GIOQUETTHE.dv_ma,');
    sql.Add('DirRelWorkers=SUM(case when CC_GIOBINHTHUONG=8 then 1 else 0 end),');
    sql.Add('TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3'' or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
    sql.Add('TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3'' or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END)');
    sql.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    sql.Add('inner join HumanDB.['+HrmsDBName+'].dbo.st_nhanvien st_nhanvien on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma');
    sql.Add('inner join HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
    sql.Add('inner join HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI on ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA');
    sql.Add('where QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+'''  and X_MA_ like ''A%''  and ST_CONGVIEC.TTCV=1 ');
    sql.Add('group by QT_NGAY,ST_GIOQUETTHE.dv_ma ) HumData on  HumData.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT');
    sql.Add('where  1=1 and HumData.dv_ma is not null');
    sql.Add('Group by  HumData.HMonth,BDepartment.sumline ) HumData');
    sql.Add('left join BDepartment on BDepartment.sumline=HumData.sumline and BDepartment.GXLB='''+DepGXLB+'''');
    //20210108時段訂單
    SQL.Add('if object_id(''tempdb..#SMZLHour'') is not null');
    SQL.Add('begin   drop table #SMZLHour end');
    SQL.Add('Select SMZL.DepNo,SMDD.YSBH,convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) as ScanDate,datepart (hh,SMZL.ScanDate) as iHur  into  #SMZLHour');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
    SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('where convert(smalldatetime,convert(varchar,SMZL.ScanDate,111))  between  '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('      and SMDDSS.GXLB='''+GXLB+'''');
    SQL.Add('      and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('      and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1 ');
    SQL.Add('Group by SMZL.DepNo,SMDD.YSBH,convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)),datepart (hh,SMZL.ScanDate)');
    //20210316 現場點名直工數
    SQL.Add('if object_id(''tempdb..#RSCQ'') is not null');
    SQL.Add('begin  drop table #RSCQ end');
    SQL.Add('Select RSDate,BDepartment.sumline,Sum(RSCQ.CQQty) as CQQty into  #RSCQ ');
    SQL.Add('from RSCQ ');
    SQL.Add('inner join BDepartment on Bdepartment.ID=RSCQ.DepNo');
    SQL.Add('where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))  between  '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('Group by  RSDate,BDepartment.sumline ');
    //
    sql.Add('if object_id(''tempdb..#MonSCBBSPOH'') is not null');
    sql.Add('begin   drop table #MonSCBBSPOH end');
    sql.Add('select * into #MonSCBBSPOH');
    sql.Add('from (');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''8.Actual'' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay');
    sql.Add('     from SCBBS');
    sql.Add('     left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and SCBBS.GXLB='''+GXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1');
    sql.Add('     group by '+BDepartmentSQL+',BDepartment.GXLB,datepart(day, SCBB.SCDate)');
    sql.Add('     union  all');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''8.Actual'' as SB,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay');
    sql.Add('     from SCBBS');
    sql.Add('     left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and SCBBS.GXLB='''+GXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     group by '+BDepartmentSQL+', BDepartment.GXLB');
    sql.Add('     union all');
    sql.Add('     select DepName,GXLB,''1.Hours'' as SB,Avg(SCRL.SCGS) as Qty,datepart(day, SCBB.SCDate) as NDay from (');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     Group by BDepartment.ID,'+BDepartmentSQL+',BDepartment.GXLB,SCBB.SCDate) SCBB');
    sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    sql.Add('     Group by DepName,GXLB,datepart(day, SCBB.SCDate)');
    sql.Add('     union all');
    sql.Add('     select DepName,GXLB,''1.Hours'' as SB,Sum(SCRL.SCGS) as Qty,32 as NDay   from (');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     Group by BDepartment.ID,'+BDepartmentSQL+',BDepartment.GXLB,SCBB.SCDate) SCBB');
    sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    sql.Add('     Group by DepName,GXLB');
    //--廠務工時
    sql.Add('     union all');
    sql.Add('     select DepName,GXLB,''2.PrdHours'' as SB,Avg(SCRL.SCGS1) as Qty,datepart(day, SCBB.SCDate) as NDay from (');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     Group by BDepartment.ID,'+BDepartmentSQL+',BDepartment.GXLB,SCBB.SCDate) SCBB');
    sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    sql.Add('     Group by DepName,GXLB,datepart(day, SCBB.SCDate)');
    sql.Add('     union all');
    sql.Add('     select DepName,GXLB,''2.PrdHours'' as SB,Sum(SCRL.SCGS1) as Qty,32 as NDay from (');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     Group by BDepartment.ID,'+BDepartmentSQL+',BDepartment.GXLB,SCBB.SCDate) SCBB');
    sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    sql.Add('     Group by DepName,GXLB');
    //--刷卡人數
    sql.Add('     Union all');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''3.Workers'' as SB,Sum(#HumDataPOH.dv_dilam) as Qty,datepart(day, SCBB.SCDate) as NDay');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumDataPOH.qt_ngay=SCBB.SCDate');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     group by '+BDepartmentSQL+',BDepartment.GXLB,datepart(day, SCBB.SCDate)');
    sql.Add('     union all');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''3.Workers'' as SB,Avg(#HumDataPOH.dv_dilam) as Qty,32 as NDay');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumDataPOH.qt_ngay=SCBB.SCDate');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     group by '+BDepartmentSQL+',BDepartment.GXLB');
    //--廠務人數
    sql.Add('     union all');
    sql.Add('     select DepName,GXLB,''4.PrdWorkers'' as SB,Avg(RSCQ.CQQty) as Qty,datepart(day, SCBB.SCDate) as NDay from (');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.ID as DepNo,BDepartment.Sumline,BDepartment.GXLB,SCBB.SCDate');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     Group by BDepartment.ID,'+BDepartmentSQL+',BDepartment.Sumline,BDepartment.GXLB,SCBB.SCDate) SCBB');
    sql.Add('     left join #RSCQ as RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.Sumline=SCBB.Sumline');
    sql.Add('     Group by DepName,GXLB,datepart(day, SCBB.SCDate)');
    sql.Add('     union all');
    sql.Add('     select DepName,GXLB,''4.PrdWorkers'' as SB,Avg(RSCQ.CQQty) as Qty,32 as NDay from (');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.ID as DepNo,BDepartment.Sumline,BDepartment.GXLB,SCBB.SCDate');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     Group by BDepartment.ID,'+BDepartmentSQL+',BDepartment.Sumline,BDepartment.GXLB,SCBB.SCDate) SCBB');
    sql.Add('     left join #RSCQ as RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.Sumline=SCBB.Sumline');
    sql.Add('     Group by DepName,GXLB');
    //直工總工時
    sql.Add('     union all');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''5.DirectWorkHours'' as SB,Sum(#HumDataPOH.HC_ALL) as Qty,datepart(day, SCBB.SCDate) as NDay');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumDataPOH.qt_ngay=SCBB.SCDate');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     group by '+BDepartmentSQL+',BDepartment.GXLB,datepart(day, SCBB.SCDate)');
    sql.Add('     union all');
    sql.Add('     select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''5.DirectWorkHours'' as SB,Avg(#HumDataPOH.HC_ALL) as Qty,32 as NDay');
    sql.Add('     from SCBB');
    sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('     left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumDataPOH.qt_ngay=SCBB.SCDate');
    sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('     and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    sql.Add('     group by '+BDepartmentSQL+',BDepartment.GXLB');
    //20200901 生管目標產能
    SQL.Add('     union all ');
    SQL.Add('     select '+BDepartmentSQL+' as DepName');
    SQL.Add('              ,BDepartment.GXLB,''7.Plan'' as SB,sum(isnull(SCBZCL.Qty,0)) as Qty ,datepart(day, SCBZCL.BZDate) as NDay  ');
    SQL.Add('     from SCBZCL ');
    SQL.Add('     left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    SQL.Add('     where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('            and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('            and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('            and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 and SCBZCL.Qty>0 ');
    SQL.Add('     group by '+BDepartmentSQL);
    SQL.Add('            ,BDepartment.GXLB,datepart(day, SCBZCL.BZDate)');
    SQL.Add('     union all ');
    SQL.Add('     select '+BDepartmentSQL+' as DepName');
    SQL.Add('             ,BDepartment.GXLB,''7.Plan'' as SB,isnull(sum(SCBZCL.Qty),0) as Qty ,32 as NDay  ');
    SQL.Add('     from SCBZCL ');
    SQL.Add('     left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    SQL.Add('     where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    SQL.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 and SCBZCL.Qty>0 ');
    SQL.Add('     group by '+BDepartmentSQL+' ,BDepartment.GXLB   ');
    //20200901 標準IE產能
    SQL.Add('     union all       ');
    SQL.Add('     select T1.DepName,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
    SQL.Add('     from(select  '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''6.Sdr'' as SB ');
    SQL.Add('		   ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay, SCRL.SCGS as Hours  ');
    SQL.Add('     from SCBBS ');
    SQL.Add('     left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('     left join DDZL on SCBBS.SCBH=DDZL.DDBH');
    //2021.2.19 Left Join 新增SCXXCL.BZLB=BDepartment.BZLB
    SQL.Add('     left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=Bdepartment.GXLB and SCXXCL.BZLB=BDepartment.BZLB ');
    SQL.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    SQL.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('		  and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('		  and SCBBS.GXLB='''+DepGXLB+''' ');
    SQL.Add('		  and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('     group by '+BDepartmentSQL+',BDepartment.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS )T1 ');
    SQL.Add('     group by  T1.DepName,T1.GXLB,T1.SB,T1.NDay  ');
    SQL.Add('     union all');
    SQL.Add('     select T2.DepName,T2.GXLB,T2.SB,sum(T2.Qty)as Qty,32 as NDay');
    SQL.Add('     from(select T1.DepName,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
    SQL.Add('     from(select  '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''6.Sdr'' as SB ');
    SQL.Add('		   ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay,SCRL.SCGS as Hours  ');
    SQL.Add('     from SCBBS ');
    SQL.Add('     left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('     left join DDZL on SCBBS.SCBH=DDZL.DDBH');
    //2021.2.19 Left Join 新增SCXXCL.BZLB=BDepartment.BZLB
    SQL.Add('     left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=Bdepartment.GXLB and SCXXCL.BZLB=BDepartment.BZLB ');
    SQL.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    SQL.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('		  and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('		  and SCBBS.GXLB='''+DepGXLB+''' ');
    SQL.Add('		  and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('     group by '+BDepartmentSQL+',BDepartment.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS )T1 ');
    SQL.Add('     group by T1.DepName,T1.GXLB,T1.SB,T1.NDay  )T2  ');
    SQL.Add('     group by T2.DepName,T2.GXLB,T2.SB');
    //
    sql.Add('     ) SCBBS');
    sql.Add('order by SCBBS.DepName,SCBBS.GXLB,SCBBS.NDay');

    sql.Add('alter table #MonSCBBSPOH');
    sql.Add('alter column DepName nvarchar(20) null');
    sql.Add('alter table #MonSCBBSPOH');
    sql.Add('alter column SB varchar(20) null');
    sql.Add('alter table #MonSCBBSPOH');
    sql.Add('alter column Qty float null');
    sql.Add('insert into #MonSCBBSPOH');
    sql.Add('Select A1.DepName,A1.GXLB,''9.POH'' as SB,Round(A1.Qty/IsNull(A4.Qty,A2.Qty)/IsNull(A5.Qty,A3.Qty),4) as Qty,A1.NDay');
    sql.Add('from (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''8.Actual'' ) A1');
    sql.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''1.Hours'' and IsNull(Qty,0)>0 ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB and A1.NDay=A2.NDay ');
    sql.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''3.Workers'' and IsNull(Qty,0)>0 ) A3 on A1.DepName=A3.Depname and A1.GXLB=A3.GXLB and A1.NDay=A3.NDay ');
    sql.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''2.PrdHours'' and IsNull(Qty,0)>0 ) A4 on A1.DepName=A4.Depname and A1.GXLB=A4.GXLB and A1.NDay=A4.NDay ');
    sql.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''4.PrdWorkers'' and IsNull(Qty,0)>0 ) A5 on A1.DepName=A5.Depname and A1.GXLB=A5.GXLB and A1.NDay=A5.NDay ');
    sql.Add('where A1.NDay<=31');
    sql.Add('insert into #MonSCBBSPOH');
    sql.Add('Select A1.DepName,A1.GXLB,''9.POH'' as SB,Avg(Qty) as Qty,32 as NDay');
    sql.Add('from #MonSCBBSPOH A1');
    sql.Add('where SB=''9.POH''');
    sql.Add('Group by A1.DepName,A1.GXLB');

    sql.Add('select SCBBS.DepName COLLATE DATABASE_DEFAULT as DepName');
    sql.Add('       ,SCBBS.GXLB COLLATE DATABASE_DEFAULT as GXLB');
    sql.Add('       ,SCBBS.SB  COLLATE DATABASE_DEFAULT as SB');
    sql.Add('       ,convert(varchar,sum(case  when NDay=''32''  then Qty  end)) as ''32'' ');
    for i:=1 to iDay do
    begin
      sql.add('      ,convert(varchar,sum(case  when NDay='+''''+inttostr(i)+'''');
      sql.add('       then Qty  end)) as '+''''+inttostr(i)+'''');
    end;
    sql.Add('from  (select #MonSCBBSPOH.* from #MonSCBBSPOH');
    sql.Add('       ) SCBBS');
    sql.Add('group by   SCBBS.DepName,SCBBS.GXLB ,SCBBS.SB');
    //SKU 清單
    sql.Add('union all');
    sql.Add('select SKU.DepName,SKU.GXLB,SKU.SB');
    sql.Add('       ,''All''  as ''32'' ');
    for i:=1 to iDay do
    begin
      sql.add('      ,Max(case  when NDay='+''''+inttostr(i)+'''');
      sql.add('       then Qty  end) as '+''''+inttostr(i)+'''');
    end;
    sql.Add('from (');
    sql.Add('select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''0.SKU'' as SB');
    sql.Add('       ,cast((select DDZL.Article+''(''+XXZL.DAOMH+'')''  + '','' from DDZL,SCBBS,XXZL  where SCBBS.GXLB='''+GXLB+''' and  SCBBS.ProNo=SCBB.ProNo and DDZL.DDBH=SCBBS.SCBH AND DDZL.XieXing=XXZL.XieXing and DDZL.Shehao=XXZl.Shehao and isnull(DDZL.Article,'''') <> ''''');
    sql.Add('              Group by DDZL.Article+''(''+XXZL.DAOMH+'')'' for XML Path ('''')) as varchar(5000)) as Qty');
    sql.Add('       ,datepart(day, SCBB.SCDate)  as NDay');
    sql.Add('from SCBB');
    sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
    sql.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    sql.Add(' '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    sql.Add('and BDepartment.GXLB='''+DepGXLB+'''');
    sql.Add('and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1) SKU');
    sql.Add('group by SKU.DepName,SKU.GXLB,SKU.SB');
    //標準POH
    sql.Add('union all');
    sql.Add('select SKU.DepName ,SKU.GXLB,SKU.SB');
    sql.add('        ,Max(case  when NDay=''32''  then Qty  end) as ''32'' ');
    for i:=1 to iDay do
    begin
      sql.add('      ,Max(case  when NDay='+''''+inttostr(i)+'''');
      sql.add('       then Qty  end) as '+''''+inttostr(i)+'''');
    end;
    sql.Add('from (');
    //20210108
    SQL.Add('select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''A.IE POH'' as SB');
    SQL.Add('       ,(select convert(varchar(10),Round(Avg(POH),4))  as POH from (');
    SQL.Add('       select SCXXCL.iHur,Avg(POH) as POH from (');
    SQL.Add('       select SCXXCL.ScanDate,SCXXCL.iHur,SCXXCL.Article,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH from (');
    SQL.Add('       select #SMZLHour.ScanDate,#SMZLHour.iHur,DDZL.Article,SCXXCL.BZCL,SCXXCL.BZRS,SCXXCL.BZJS');
    SQL.Add('       from SCBBS');
    SQL.Add('       inner join DDZL on DDZL.DDBH=SCBBS.SCBH ');
    //2021.2.19 Left Join 新增SCXXCL.BZLB=BDepartment.BZLB
    SQL.Add('       inner join  SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=BDepartment.BZLB ');
    SQL.Add('       left join #SMZLHour on #SMZLHour.YSBH=DDZL.DDBH and #SMZLHour.ScanDate=SCBB.SCDate and #SMZLHour.DepNO=SCBB.DepNo');
    SQL.Add('       where SCBBS.GXLB='''+GXLB+''' and SCBBS.ProNo=SCBB.ProNo Group by #SMZLHour.ScanDate,#SMZLHour.iHur,DDZL.Article,SCXXCL.BZCL,SCXXCL.BZRS,SCXXCL.BZJS ) SCXXCL Group by SCXXCL.ScanDate,SCXXCL.iHur,SCXXCL.Article) SCXXCL Group by iHur )  A )  Qty ');
    SQL.Add('       ,datepart(day, SCBB.SCDate)  as NDay');
    SQL.Add('from SCBB');
    SQL.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
    SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    SQL.Add(' '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('and BDepartment.GXLB='''+DepGXLB+'''');
    SQL.Add('and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1 ');
    sql.Add('union all ');
    SQL.Add('select DepName,GXLB,SB,convert(varchar(10),Avg(Convert(float,Qty))) as Qty,32 as NDay from (');
    //20210108
    SQL.Add('select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,''A.IE POH'' as SB');
    SQL.Add('       ,(select convert(varchar(10),Round(Avg(POH),4))  as POH from (');
    SQL.Add('       select SCXXCL.iHur,Avg(POH) as POH from (');
    SQL.Add('       select SCXXCL.ScanDate,SCXXCL.iHur,SCXXCL.Article,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH from (');
    SQL.Add('       select #SMZLHour.ScanDate,#SMZLHour.iHur,DDZL.Article,SCXXCL.BZCL,SCXXCL.BZRS,SCXXCL.BZJS');
    SQL.Add('       from SCBBS');
    SQL.Add('       inner join DDZL on DDZL.DDBH=SCBBS.SCBH ');
    //2021.2.19 Left Join 新增SCXXCL.BZLB=BDepartment.BZLB
    SQL.Add('       inner join  SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=BDepartment.BZLB ');
    SQL.Add('       left join #SMZLHour on #SMZLHour.YSBH=DDZL.DDBH and #SMZLHour.ScanDate=SCBB.SCDate and #SMZLHour.DepNO=SCBB.DepNo');
    SQL.Add('       where SCBBS.GXLB='''+GXLB+''' and SCBBS.ProNo=SCBB.ProNo Group by #SMZLHour.ScanDate,#SMZLHour.iHur,DDZL.Article,SCXXCL.BZCL,SCXXCL.BZRS,SCXXCL.BZJS ) SCXXCL Group by SCXXCL.ScanDate,SCXXCL.iHur,SCXXCL.Article) SCXXCL Group by iHur )  A )  Qty ');
    SQL.Add('       ,datepart(day, SCBB.SCDate)  as NDay');
    SQL.Add('from SCBB');
    SQL.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
    SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    SQL.Add(' '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('and BDepartment.GXLB='''+DepGXLB+'''');
    SQL.Add('and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1 ');
    SQL.Add(' ) SCBB Group by DepName,GXLB,SB ');
    sql.Add(') SKU');
    sql.Add('group by SKU.DepName,SKU.GXLB ,SKU.SB');
    //
    sql.Add('order by SCBBS.GXLB ,SCBBS.DepName ,SCBBS.SB');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;


procedure TDepartmentDailyPPH.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with DBGrideh1 do
  begin
    if (CB1.Checked) then
      columns[0].Width:=120
    else
      columns[0].Width:=90;
    columns[0].title.titlebutton:=true;
    columns[0].title.caption:='單位線別|Lean';
    columns[1].Width:=30;
    columns[1].title.titlebutton:=true;
    columns[1].title.caption:='工段|GX';
    columns[2].Width:=100;
    columns[2].title.caption:='類別|SB';
    columns[3].Width:=70;
    columns[3].title.caption:='合計|Total';
    for i:=4 to query1.FieldCount-1 do
    begin
       //Tfloatfield(query1.Fields[i]).displayformat:='##,#0.00' ;
       if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
       begin
           columns[i].font.color:=clred;
           columns[i].font.style:=[fsitalic];
           columns[i].title.font.style:=[fsitalic];
           columns[i].title.font.color:=clred;
       end;
       columns[i].Width:=50;
       columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
    end;
  end;

end;
procedure TDepartmentDailyPPH.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for i:=0 to query1.FieldCount-1 do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i].FieldName ;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      for i:=0 to query1.FieldCount-1 do
      begin
        eclApp.Cells(j,i+1):=query1.Fields[i].Value;
      end;
      query1.Next;
      inc(j)
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TDepartmentDailyPPH.Button2Click(Sender: TObject);
begin
  ExportFormatExcel();
end;

//預設Excel
procedure TDepartmentDailyPPH.ExportFormatExcel();
  //
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
  //
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    Str,IE_POH,POH:String;
    //參數
    DataRow,ExcelRow:integer;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN547_V1.xls'),Pchar(AppDir+'Additional\Plan_SN547_V1.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN547_V1.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      DataRow:=11;   //ERP Data 9 row
      ExcelRow:=13; //Excel 12 row format
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN547_V1.xls');
        //
        for i:=4 to Query1.FieldCount-1 do
        begin
          eclApp.Cells(1,i):=inttostr(strtoint(CBX2.Text))+'/'+Query1.Fields[i].FieldName;
        end;
        //刪除多餘Column
        for j:=i to 36 do
          eclApp.ActiveSheet.Columns[i].Delete;
        //複製
        for j:=1 to (Query1.RecordCount div DataRow)-1 do
        begin
          eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(i)+inttostr(ExcelRow)].Copy;
          eclApp.ActiveSheet.Rows[(ExcelRow+1)+((j-1)*ExcelRow)].Select;
          eclApp.ActiveSheet.Paste;
        end;
        //訂單ABC分類
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select SCBBS.*,DDZL_ABC.ABC from ( ');
          SQL.Add('Select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,SCBBS.SCBH,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay ');
          SQL.Add('from SCBBS ');
          SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
          SQL.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
          SQL.Add('where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
          sql.Add(' '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
          SQL.Add('      and BDepartment.DepName like ''%%'' ');
          SQL.Add('      and SCBBS.GXLB='''+DepGXLB+''' ');
          SQL.Add('      and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1 ');
          SQL.Add('Group by '+BDepartmentSQL+',BDepartment.GXLB,SCBBS.SCBH,datepart(day, SCBB.SCDate) ) SCBBS ');
          SQL.Add('left join DDZL_ABC on DDZL_ABC.DDBH=SCBBS.SCBH ');
          SQL.Add('order by DepName,NDay, Qty desc ');
          //funcobj.WriteErrorLog(sql.Text );
          Active:=true;
        end;
        //
        K:=0;
        Query1.First;
        for j:=1 to Query1.RecordCount do
        begin
          //
          if (j mod DataRow)=1 then
          begin
            eclApp.Cells(j+K,1):=Query1.FieldByName('DepName').AsString;
            K:=K+1;
          end;
          //
          for i:=3 to Query1.FieldCount-1 do
          begin
            eclApp.Cells(j+K,i):=Query1.Fields[i].Value;

            //POH 和 IE POH
            if (j mod DataRow)=0  then
            begin
              POH:=eclApp.Cells[j+K-1,i];
              IE_POH:=eclApp.Cells[j+K,i];
              if ((POH<>'') and (IE_POH<>'')) then
              begin
                if strtofloat(POH)+0.05<strtofloat(IE_POH) then
                eclApp.Cells[j+K,i].Font.Color := clRed;
                //20201028 廠企劃分訂單ABC三個分類顏色
                if Qtemp.Locate('DepName;NDay',vararrayof([Query1.FieldByName('DepName').AsString,Query1.Fields[i].FieldName]),[]) then
                begin
                  if Qtemp.FieldByName('ABC').AsString='A' then
                    eclApp.Cells[j+K+1,i].Interior.Color := $00C1FFC1;
                  if Qtemp.FieldByName('ABC').AsString='B' then
                    eclApp.Cells[j+K+1,i].Interior.Color := $0080FFFF;
                  if Qtemp.FieldByName('ABC').AsString='C' then
                    eclApp.Cells[j+K+1,i].Interior.Color := $004080FF;
                end;
              end;
            end;

          end;
          if (j mod DataRow)=0 then   K:=K+1;
          //
          Query1.Next;
        end;
        //
        Qtemp.Active:=false;
        Showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
   //
end;
procedure TDepartmentDailyPPH.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((trim(query1.FieldByName('SB').value)='9.POH') or (trim(query1.FieldByName('SB').value)='A.IE POH')) then
  begin
    Dbgrideh1.canvas.font.style:=[fsbold];
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TDepartmentDailyPPH.Button3Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  //成型線有掃描工段A 和 B
  GXLB:=CBX3.Text;
  if ((GXLB='A') or (GXLB='B')) then
    DepGXLB:='A'
  else
    DepGXLB:=GXLB;
  //
  iYear:=strtoint(CBX1.text);
  iMonth:=strtoint(CBX2.text);
  iDay:=1;
  sdate:=EncodeDate(iYear,iMonth,iDay);
  edate:=endofthemonth(sdate);
  decodedate(edate,iYear,iMonth,iDay);
  //線別中文
  if CB1.Checked=true  then
    BDepartmentSQL:='BDepartment.DepMemo'
  else
    BDepartmentSQL:='BDepartment.DepName';
  //訂單ABC分類
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SCBBS.*,DDZL_ABC.ABC from ( ');
    SQL.Add('Select '+BDepartmentSQL+' as DepName,BDepartment.GXLB,SCBBS.SCBH,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay ');
    SQL.Add('from SCBBS ');
    SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.Add(' '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('      and BDepartment.DepName like ''%%'' ');
    SQL.Add('      and SCBBS.GXLB='''+DepGXLB+''' ');
    SQL.Add('      and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1 ');
    SQL.Add('Group by '+BDepartmentSQL+',BDepartment.GXLB,SCBBS.SCBH,datepart(day, SCBB.SCDate) ) SCBBS ');
    SQL.Add('left join DDZL_ABC on DDZL_ABC.DDBH=SCBBS.SCBH ');
    SQL.Add('order by DepName,NDay, Qty desc ');
    Active:=true;
  end;
  //
  if Qtemp.Active then
  begin
    if Qtemp.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for i:=0 to Qtemp.FieldCount-1 do
    begin
      eclApp.Cells(1,i+1):=Qtemp.fields[i].FieldName ;
    end;
    Qtemp.First;
    j:=2;
    while   not  Qtemp.Eof   do
    begin
      for i:=0 to Qtemp.FieldCount-1 do
      begin
        eclApp.Cells(j,i+1):=Qtemp.Fields[i].Value;
      end;
      Qtemp.Next;
      inc(j)
    end;
    //eclapp.columns.autofit;
    Qtemp.Active:=false;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
