unit MonthOutPutPOH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, PrnDbgeh, DBTables,dateutils
  ,Comobj, iniFiles ;

type
  TMonthOutPutPOH = class(TForm)
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label1: TLabel;
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
    OpenDialog: TOpenDialog;
    CKBox1: TCheckBox;
    CKBox2: TCheckBox;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    RB1: TRadioButton;
    RB2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    AppDir:String;
    HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;    
    { Private declarations }
    procedure ReadIni();
    procedure ExportExternalExcel();
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();
  public
    ExcelSheetI:integer;
    { Public declarations }
  end;

var
  MonthOutPutPOH: TMonthOutPutPOH;

implementation
  uses main1,ExcelSheetDlg1,FunUnit;
{$R *.dfm}
procedure TMonthOutPutPOH.ReadIni();
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

procedure TMonthOutPutPOH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMonthOutPutPOH.FormDestroy(Sender: TObject);
begin
  MonthOutPutPOH:=nil;
  CreateHRM_DisConnect();
end;

procedure TMonthOutPutPOH.CreateHRM_Connect();
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
    ExecSQL();
  end;
  //
end;
//關閉HRM連線
procedure TMonthOutPutPOH.CreateHRM_DisConnect();
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


procedure TMonthOutPutPOH.Button1Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    i:integer;
    sDate,eDate:TDateTime;
    DepGXLB,GXLB:String;
begin
  iYear:=strtoint(CBX1.text);
  iMonth:=strtoint(CBX2.text);
  iDay:=1;
  sdate:=EncodeDate(iYear,iMonth,iDay);
  edate:=endofthemonth(sdate);
  decodedate(edate,iYear,iMonth,iDay);
  //成型線有掃描工段A 和 B
  GXLB:=CBX3.Text;
  if ((GXLB='A') or (GXLB='B')) then
    DepGXLB:='A'
  else
    DepGXLB:=GXLB;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#HumDataPOH'') is not null');
    SQL.Add(' begin   drop table #HumDataPOH end');
    if RB1.Checked=true then
    begin
      //刷卡工段直工或Lean線(C+S+A)直工
      if CKBox2.Checked=false then
      begin
        SQL.Add(' SELECT qt_ngay,ST_GIOQUETTHE.dv_ma,');
        SQL.Add('        dv_dilam=SUM(case when CC_GIOBINHTHUONG=8 then 1 else 0 end) into #HumDataPOH');
        SQL.Add(' FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
        SQL.Add(' inner join HumanDB.['+HrmsDBName+'].dbo.st_nhanvien st_nhanvien on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma');
        SQL.Add(' inner join HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
        SQL.Add(' inner join HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI on ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA ');
        SQL.Add(' where qt_ngay between CONVERT(smalldatetime, '''+Formatdatetime('yyyy/MM/dd',sDate)+''', 21) and CONVERT(smalldatetime, '''+Formatdatetime('yyyy/MM/dd',eDate)+''', 21) and X_MA_ like ''A%'' and ST_CONGVIEC.CV_MA like ''A%''');
        SQL.Add(' group by qt_ngay,ST_GIOQUETTHE.dv_ma');
        SQL.Add('  ');
      end else
      begin
        SQL.Add('  select HumData.*,BDepartment.ID_HRM as dv_ma into #HumDataPOH from ( ');
        SQL.Add('  select HumData.HMonth as qt_ngay,BDepartment.sumline,Sum(DirRelWorkers) as dv_dilam,Sum(TTLCHC) as TTLCHC,Sum(TTTCHC) as TTTCHC  from  ( ');
        SQL.Add('  select SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepartment.sumline,BDepartment.GXLB');
        SQL.Add('  from SCBBS');
        SQL.Add('  left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        SQL.Add('  left join BDepartment on BDepartment.ID=SCBB.DepNo');
        SQL.Add('  where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''  ');
        SQL.Add('        and SCBB.GSBH='''+main.Edit2.Text+''' ');
        SQL.Add('  Group by SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepartment.sumline,BDepartment.GXLB ) BDepartment');
        SQL.Add('  left join (');
        SQL.Add('  SELECT Convert(varchar,QT_NGAY,111) as HMonth,ST_GIOQUETTHE.dv_ma,');
        SQL.Add('  DirRelWorkers=SUM(case when CC_GIOBINHTHUONG=8 then 1 else 0 end),');
        SQL.Add('  TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
        SQL.Add('  TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3'' or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END) ');
        SQL.Add('  FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.st_nhanvien st_nhanvien on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI on ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA  ');//AND DV_LocBB =0
        SQL.Add('  where QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+'''  and X_MA_ like ''A%'' and ST_CONGVIEC.TTCV=1 ');
        SQL.Add('  group by QT_NGAY,ST_GIOQUETTHE.dv_ma ) HumData on  HumData.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT ');
        SQL.Add('  where  HumData.dv_ma is not null ');
        SQL.Add('  Group by  HumData.HMonth,BDepartment.sumline ) HumData');
        SQL.Add('  left join BDepartment on BDepartment.sumline=HumData.sumline and BDepartment.GXLB='''+DepGXLB+'''');
      end;
    end else
    begin
      if CKBox2.Checked=false then
      begin
        // Plan N2A2 廠務輸入直工
        SQL.Add('select * into #HumDataPOH from (');
        SQL.Add('select Convert(varchar,RSCQ.RSDate,111) as qt_ngay,BDepartment.sumline, RSCQ.CQQty as dv_dilam,0 as TTLCHC,0 as TTTCHC,BDepartment.ID_HRM as dv_ma from RSCQ ');
        SQL.Add('left join BDepartment on BDepartment.ID=RSCQ.DepNO');
        SQL.Add('where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))  ');
        SQL.Add('between '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ) HumData');
      end else
      begin
        // Plan N2A2 廠務輸入直工
{        SQL.Add('select * into #HumDataPOH from (');
        SQL.Add('select HumData.qt_ngay,HumData.sumline,HumData.dv_dilam,TTLCHC,TTTCHC,BDepartment.ID_HRM as dv_ma from (');
        SQL.Add('select Convert(varchar,RSCQ.RSDate,111) as qt_ngay,BDepartment.sumline, Sum(RSCQ.CQQty) as dv_dilam,0 as TTLCHC,0 as TTTCHC  from RSCQ ');
        SQL.Add('left join BDepartment on BDepartment.ID=RSCQ.DepNO');
        SQL.Add('where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))  ');
        SQL.Add('between '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
        SQL.Add('Group by Convert(varchar,RSCQ.RSDate,111), BDepartment.sumline ) HumData ');
        SQL.Add('inner join BDepartment on BDepartment.sumline=HumData.sumline and BDepartment.GXLB='''+DepGXLB+'''');
        SQL.Add(') HumData ');
}//改抓IE輸入人數
        SQL.Add(' SELECT date as qt_ngay,BDepartment.sumline,sum(Attendance) as dv_dilam,0 as TTLCHC,0 as TTTCHC,Department as dv_ma into #HumDataPOH');
        SQL.Add(' FROM WorkerAttendance');
        SQL.Add(' left join BDepartment on WorkerAttendance.Department = BDepartment.DepName');
        SQL.Add(' where date between CONVERT(smalldatetime, '''+Formatdatetime('yyyy/MM/dd',sDate)+''', 21) and CONVERT(smalldatetime, '''+Formatdatetime('yyyy/MM/dd',eDate)+''', 21)');
        SQL.Add(' and Attendance = ''1''');
        SQL.Add(' and BDepartment.sumline is not null');
        SQL.Add(' group by Department,Date,BDepartment.sumline');
        SQL.Add(' order by Department,date');
      end;
    end;
    SQL.Add('');
    SQL.Add('if object_id(''tempdb..#MonSCBBSPOH'') is not null  ');
    SQL.Add('   begin   drop table #MonSCBBSPOH end   ');
    SQL.Add('select * into #MonSCBBSPOH ');
    SQL.Add('from (');
    SQL.Add('');
    SQL.Add('       select  BDepartment.DepName');
    SQL.Add('               ,BDepartment.GXLB,''3.Actual'' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
    SQL.Add('       from SCBBS ');
    SQL.Add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and SCBBS.GXLB='''+GXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1 ');
    SQL.Add('       group by BDepartment.DepName,BDepartment.GXLB,datepart(day, SCBB.SCDate)  ');
    SQL.Add('      union  all ');
    SQL.Add('      select BDepartment.DepName');
    SQL.Add('               ,BDepartment.GXLB,''3.Actual'' as SB,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay  ');
    SQL.Add('      from SCBBS ');
    SQL.Add('      left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('      left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('             '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('             and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('             and SCBBS.GXLB='''+GXLB+''' ');
    SQL.Add('             and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1  ');
    SQL.Add('      group by BDepartment.DepName ,BDepartment.GXLB');
    SQL.Add('      union  all           ');
    SQL.Add('      select BDepartment.DepName');
    SQL.Add('              ,BDepartment.GXLB,''2.Plan'' as SB,sum(isnull(SCBZCL.Qty,0)) as Qty ,datepart(day, SCBZCL.BZDate) as NDay  ');
    SQL.Add('      from SCBZCL ');
    SQL.Add('      left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    SQL.Add('      where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 and SCBZCL.Qty>0 ');
    SQL.Add('      group by  BDepartment.DepName');
    SQL.Add('                ,BDepartment.GXLB,datepart(day, SCBZCL.BZDate)');
    SQL.Add('      union all ');
    SQL.Add('      select BDepartment.DepName');
    SQL.Add('             ,BDepartment.GXLB,''2.Plan'' as SB,isnull(sum(SCBZCL.Qty),0) as Qty ,32 as NDay  ');
    SQL.Add('       from SCBZCL ');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 and SCBZCL.Qty>0 ');
    if CheckBox1.Checked=true then
    begin
      SQL.Add('              and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
      SQL.Add('                            left join BDepartment on BDepartment.ID=SCBB.DepNO ');
      SQL.Add('                          where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.Add('                                '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
      SQL.Add('                                and BDepartment.DepName like ''%'+Edit1.Text+'%''');
      SQL.Add('                                and convert(varchar,SCBB.SCDate,111)=convert(varchar,SCBZCL.BZDate,111) )');
    end;
    SQL.Add('      group by BDepartment.DepName ,BDepartment.GXLB    ');
    SQL.Add('       --工時                  ');
    SQL.Add('       union all');
    SQL.Add('       select DepName,GXLB,''5.Hours'' as SB,Avg(SCRL.SCGS) as Qty,datepart(day, SCBB.SCDate)  as NDay   from (');
    SQL.Add('       select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB');
    SQL.Add('               ,SCBB.SCDate');
    SQL.Add('       from SCBB');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''       ');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    SQL.Add('       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    SQL.Add('       Group by DepName,GXLB,datepart(day, SCBB.SCDate)');
    SQL.Add('       union all');
    SQL.Add('       select DepName,GXLB,''5.Hours'' as SB,Sum(SCRL.SCGS) as Qty,32 as NDay   from (');
    SQL.Add('       select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB');
    SQL.Add('               ,SCBB.SCDate');
    SQL.Add('       from SCBB');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''       ');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    SQL.Add('       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    SQL.Add('       Group by DepName,GXLB       ');
    SQL.Add('       --刷卡人數');
    SQL.Add('       Union all');
    SQL.Add('       select  BDepartment.DepName,BDepartment.GXLB,''6.Workers'' as SB,Sum(#HumDataPOH.dv_dilam) as Qty,datepart(day, SCBB.SCDate) as NDay');
    SQL.Add('       from SCBB');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO');
    SQL.Add('       left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumDataPOH.qt_ngay=SCBB.SCDate');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('             '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('             and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('             and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('       group by BDepartment.DepName,BDepartment.GXLB,datepart(day, SCBB.SCDate)');
    SQL.Add('       union all');
    SQL.Add('       select  BDepartment.DepName,BDepartment.GXLB,''6.Workers'' as SB,Avg(#HumDataPOH.dv_dilam) as Qty,32 as NDay');
    SQL.Add('       from SCBB');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO');
    SQL.Add('       left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumDataPOH.qt_ngay=SCBB.SCDate');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    SQL.Add('             '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('             and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('             and BDepartment.GXLB='''+DepGXLB+''' ');
    SQL.Add('             and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('       group by BDepartment.DepName,BDepartment.GXLB      ');
    SQL.Add('       --                 ');
    SQL.Add('       union all');
    SQL.Add('       ');
    SQL.Add('       select T1.DepName,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
    SQL.Add('       from(select  Bdepartment.DepName as DepName,BDepartment.GXLB,''1.Sdr'' as SB ');
    SQL.Add('               ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay, SCRL.SCGS as Hours  ');
    SQL.Add('       from SCBBS ');
    SQL.Add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('       left join DDZL on SCBBS.SCBH=DDZL.DDBH');
    SQL.Add('       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=Bdepartment.GXLB and SCXXCL.BZLB=BDepartment.BZLB ');
    SQL.Add('       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and SCBBS.GXLB='''+GXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('       group by Bdepartment.DepName,BDepartment.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS )T1 ');
    SQL.Add('       group by  T1.DepName,T1.GXLB,T1.SB,T1.NDay  ');
    SQL.Add('       ');
    SQL.Add('       union all');
    SQL.Add('       select T2.DepName,T2.GXLB,T2.SB,sum(T2.Qty)as Qty,32 as NDay');
    SQL.Add('       from(select T1.DepName,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
    SQL.Add('       from(select  Bdepartment.DepName as DepName,BDepartment.GXLB,''1.Sdr'' as SB ');
    SQL.Add('               ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay,SCRL.SCGS as Hours  ');
    SQL.Add('       from SCBBS ');
    SQL.Add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('       left join DDZL on SCBBS.SCBH=DDZL.DDBH');
    SQL.Add('       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=Bdepartment.GXLB and SCXXCL.BZLB=BDepartment.BZLB');
    SQL.Add('       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and SCBBS.GXLB='''+GXLB+''' ');
    SQL.Add('              and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 ');
    SQL.Add('       group by Bdepartment.DepName,BDepartment.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS )T1 ');
    SQL.Add('       group by  T1.DepName,T1.GXLB,T1.SB,T1.NDay  )T2  ');
    SQL.Add('       group by T2.DepName,T2.GXLB,T2.SB');
    SQL.Add('');
    SQL.Add('     ) SCBBS ');
    SQL.Add('order by SCBBS.DepName,SCBBS.GXLB,SCBBS.NDay ');
    SQL.Add('');
    SQL.Add('alter table #MonSCBBSPOH ');
    SQL.Add('alter column DepName varchar(20) null');
    SQL.Add('alter table #MonSCBBSPOH ');
    SQL.Add('alter column SB varchar(15) null');
    SQL.Add('alter table #MonSCBBSPOH ');
    SQL.Add('alter column Qty float null');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('Select A1.DepName,A1.GXLB,''4.Diff'' as SB,IsNull(A2.Qty,0)-IsNull(A1.Qty,0) as Qty,A1.NDay');
    SQL.Add(' from (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''2.Plan'' ) A1');
    SQL.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''3.Actual'' ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB and A1.NDay=A2.NDay');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('Select A1.DepName,A1.GXLB,''7.OutHour'' as SB,A1.Qty/A2.Qty as Qty,A1.NDay');
    SQL.Add(' from (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''3.Actual'' ) A1');
    SQL.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''5.Hours'' ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB and A1.NDay=A2.NDay');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('Select A1.DepName,A1.GXLB,''8.POH'' as SB,Round(A1.Qty/A2.Qty,4) as Qty,A1.NDay');
    SQL.Add(' from (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''7.OutHour'' ) A1');
    SQL.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''6.Workers'' and IsNull(Qty,0)>0 ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB and A1.NDay=A2.NDay');
    SQL.Add('');
    //日平均
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''1.Sdr'' as SB,A1.Qty/A2.Cout as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=32 and  SB=''1.Sdr'') A1');
    SQL.Add('left join ( select DepName,GXLB,Count(NDay) as Cout from #MonSCBBSPOH  where SB=''1.Sdr''  and NDay<>32 Group by DepName,GXLB ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB --and A1.NDay=A2.NDay');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''2.Plan'' as SB,A1.Qty/A2.Cout as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=32 and  SB=''2.Plan'') A1');
    SQL.Add('left join ( select DepName,GXLB,Count(NDay) as Cout from #MonSCBBSPOH  where SB=''2.Plan''  and NDay<>32 Group by DepName,GXLB ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB --and A1.NDay=A2.NDay');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''3.Actual'' as SB,A1.Qty/A2.Cout as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=32 and  SB=''3.Actual'') A1');
    SQL.Add('left join ( select DepName,GXLB,Count(NDay) as Cout from #MonSCBBSPOH  where SB=''3.Actual''  and NDay<>32 Group by DepName,GXLB ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB --and A1.NDay=A2.NDay');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''4.Diff'' as SB,A1.Qty-A2.Qty as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=33 and  SB=''2.Plan'') A1');
    SQL.Add('left join ( select DepName,GXLB,Qty from #MonSCBBSPOH  where SB=''3.Actual''  and NDay=33  ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB --and A1.NDay=A2.NDay ');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''5.Hours'' as SB,A1.Qty/A2.Cout as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=32 and  SB=''5.Hours'') A1');
    SQL.Add('left join ( select DepName,GXLB,Count(NDay) as Cout from #MonSCBBSPOH  where SB=''5.Hours''  and NDay<>32 Group by DepName,GXLB ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB --and A1.NDay=A2.NDay');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''6.Workers'' as SB,A1.Qty as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=32 and  SB=''6.Workers'') A1');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''7.OutHour'' as SB,A1.Qty as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=32 and  SB=''7.OutHour'') A1');
    SQL.Add('');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select A1.DepName,A1.GXLB,''8.POH'' as SB,A1.Qty as Qty,33 as NDay ');
    SQL.Add('from (select DepName,GXLB,Qty from #MonSCBBSPOH  where NDay=32 and  SB=''8.POH'') A1');
    //
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select '' ZTotal'' as DepName,#MonSCBBSPOH.GXLB,#MonSCBBSPOH.SB,sum(Qty) as Qty,#MonSCBBSPOH.NDay ');
    SQL.Add('from #MonSCBBSPOH where (SB<>''5.Hours'' and SB<>''8.POH'' )');
    SQL.Add('group by #MonSCBBSPOH.GXLB,#MonSCBBSPOH.SB,#MonSCBBSPOH.NDay');
    SQL.Add('insert into #MonSCBBSPOH ');
    SQL.Add('select '' ZTotal'' as DepName,#MonSCBBSPOH.GXLB,#MonSCBBSPOH.SB,Avg(Qty) as Qty,#MonSCBBSPOH.NDay ');
    SQL.Add('from #MonSCBBSPOH where (SB=''5.Hours''  )');
    SQL.Add('group by #MonSCBBSPOH.GXLB,#MonSCBBSPOH.SB,#MonSCBBSPOH.NDay');
    SQL.Add('insert into #MonSCBBSPOH  ');
    SQL.Add('Select '' ZTotal'' as DepName,A1.GXLB as GXLB,''8.POH'' as SB,(A1.Qty/A2.Qty) as Qty,A1.NDay  ');
    SQL.Add('from (select GXLB,NDay ,Sum(Qty) as Qty from #MonSCBBSPOH  where SB=''7.OutHour'' Group by GXLB,NDay ) A1 ');
    SQL.Add('left join (select GXLB,NDay,Sum(Qty) as Qty from #MonSCBBSPOH  where SB=''6.Workers'' Group by GXLB,NDay having SUM(Qty)>0) A2 on  A1.GXLB=A2.GXLB and A1.NDay=A2.NDay ');
    SQL.Add('');
    SQL.Add('select SCBBS.DepName,SCBBS.GXLB,SCBBS.SB  ');
    SQL.Add(',sum(case  when NDay=''32''');
    SQL.Add(' then Qty  else 0 end) as ''32''');
    SQL.Add(',sum(case  when NDay=''33''');
    SQL.Add(' then Qty  else 0 end) as ''33''');
    for i:=1 to iDay do
    begin
         sql.add(',sum(case  when NDay='+''''+inttostr(i)+'''');
         sql.add(' then Qty  end) as '+''''+inttostr(i)+'''');     
    end;
    SQL.Add('from  (select #MonSCBBSPOH.* from #MonSCBBSPOH  ');
    SQL.Add('       ) SCBBS ');
    SQL.Add('group by   SCBBS.GXLB,SCBBS.DepName ,SCBBS.SB ');
    SQL.Add('order by   SCBBS.GXLB ,SCBBS.DepName ,SCBBS.SB');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;
end;

procedure TMonthOutPutPOH.FormCreate(Sender: TObject);
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

procedure TMonthOutPutPOH.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
   with DBGrideh1 do
   begin
     columns[0].Width:=90;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='單位線別|Lean';
     columns[1].Width:=30;  
     columns[1].title.titlebutton:=true;
     columns[1].title.caption:='工段|GX';
     columns[2].Width:=50;
     columns[2].title.caption:='類別|SB';
     for i:=5 to query1.FieldCount-1 do
     begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0.00' ;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
         begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
         end;
         columns[i].Width:=45;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
     end;
     columns[3].Width:=70;
     Tfloatfield(query1.Fields[3]).displayformat:='##,#0.00' ;
     columns[3].font.style:=[fsbold];
     columns[3].title.caption:='合計|Total';
     columns[4].Width:=70;
     Tfloatfield(query1.Fields[4]).displayformat:='##,#0.0' ;
     columns[4].font.style:=[fsbold];
     columns[4].title.caption:='日平均|Avage';
   end;

end;

procedure TMonthOutPutPOH.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(query1.FieldByName('DepName').value)='ZTotal' then
  begin
    dbgrideh1.canvas.brush.Color:=clAqua;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
  if trim(query1.FieldByName('SB').value)='8.POH' then
  begin
    dbgrideh1.canvas.font.style:=[fsbold];
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
  if trim(query1.FieldByName('SB').value)='4.Diff' then
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
      if (Column.Field.value<0)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clred;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
      if (Column.Field.value>=0)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clBlue;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
    end;
  end;

end;

//外部檔案
procedure TMonthOutPutPOH.ExportExternalExcel();
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
var i,j,k,excelcount:integer;
    eclApp,WorkBook:olevariant;
    SB,Str:string;
    tmpDate:TDateTime;
    iYear,iMonth:word;
begin

   if OpenDialog.Execute()=true then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(OpenDialog.FileName);
        ExcelSheetI:=1;
        excelcount:=eclApp.WorkSheets.count;
        //
        ExcelSheetDlg:=TExcelSheetDlg.Create(self);
        ExcelSheetDlg.ExcelSheetI:=@ExcelSheetI;
        for i:=1 to excelcount do
        begin
          ExcelSheetDlg.ListBox1.Items.Add(inttostr(i)+'.'+eclApp.WorkSheets[i].name);
        end;
        ExcelSheetDlg.ShowModal();
        ExcelSheetDlg.Free;
        //
        eclApp.WorkSheets[ExcelSheetI].Activate;
        if CBX3.Text='C' then Str:='裁斷';
        if CBX3.Text='A' then Str:='成型';
        if CBX3.Text='S' then Str:='針車';
        eclApp.Cells(2,1):=CBX1.Text+'/'+CBX2.Text+'月'+Str+'人均時產能報表';
        Query1.First;
        //
        eclApp.Cells(3,1):='Lean線';
        eclApp.Cells(3,2):='項目';
        eclApp.Cells(3,3):='總計';
        eclApp.Cells(3,4):='日平均';
        iYear:=strtoint(CBX1.text);
        iMonth:=strtoint(CBX2.text);
        for i:=5 to Query1.FieldCount-1 do
        begin
          //日期從Query.Fields[3]開始, Excel從
          eclApp.Cells(3,i):=Query1.Fields[i].FieldName;
          eclApp.Columns[i].ColumnWidth:=4;
          //判斷是否星期日  斜體
          TmpDate:=EncodeDate(iYear,iMonth,strtoint(Query1.Fields[i].FieldName));
          if DayofWeek(tmpDate)=1 then
          begin
            eclApp.Columns[i].Font.Italic:=true;
            eclApp.Cells[3,i].Interior.Color := clGray;  //
          end else
          begin
            eclApp.Cells[3,i].Interior.Color := clyellow;  //
          end;
        end;
        //外框線
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[1].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[2].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[3].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[4].Weight := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[1].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[2].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[3].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[4].LineStyle := 1;
        //刪除多餘Column
        for j:=i to 36 do
          eclApp.ActiveSheet.Columns[i].Delete;
        //
        //刪除歷史行數
        if CKBox1.Checked=false then
        begin
          //刪除區塊
          SB:=eclApp.Cells[12,2];
          while SB<>'' do
          begin
            eclApp.ActiveSheet.Rows[12].Delete;
            SB:=eclApp.Cells[12,2];
          end;
          //複製區塊

          for j:=1 to (Query1.RecordCount div 8)-1 do
          begin
            eclApp.Range[GetExcelColumnID(1)+'4:'+GetExcelColumnID(i)+'11'].Copy;
            eclApp.ActiveSheet.Rows[12+((j-1)*8)].Select;
            eclApp.ActiveSheet.Paste;
          end;

        end;
        //
        k:=0;
        for j:=0 to Query1.RecordCount-1 do
        begin
          eclApp.Cells(4+k,1):=Query1.FieldByName('DepName').AsString;
          if  Query1.FieldByName('SB').AsString='1.Sdr' then Str:='標準產量';
          if  Query1.FieldByName('SB').AsString='2.Plan' then Str:='目標產量';
          if  Query1.FieldByName('SB').AsString='3.Actual' then Str:='實際產量';
          if  Query1.FieldByName('SB').AsString='4.Diff' then Str:='差異';
          //
          if  Query1.FieldByName('SB').AsString='5.Hours' then Str:='工時';
          if  Query1.FieldByName('SB').AsString='6.Workers' then Str:='直工人數';
          if  Query1.FieldByName('SB').AsString='7.OutHour' then Str:='時產能';
          if  Query1.FieldByName('SB').AsString='8.POH' then Str:='人均時產';
          eclApp.Cells(4+k,2):=Str;
          for i:=3 to Query1.FieldCount-1 do
          begin
            eclApp.Cells(4+k,i):=Query1.Fields[i].Value;
            if Query1.Fields[i].Value<0 then  eclApp.Cells[4+k,i].Font.Color := clRed else eclApp.Cells[4+k,i].Font.Color := clBlack; //
            if ((Str='標準產量') or (Str='目標產量')) then eclApp.Cells[4+k,i].Interior.Color := $00F1E5DB;
            if (Str='人均時產') then eclApp.Cells[4+k,i].Interior.Color := $00BCE4D7;
          end;
          k:=k+1;
          Query1.Next;
        end;
        eclApp.Cells(4,1):='總計';
        //
        showmessage('Succeed.');
        eclApp.Visible:=True;

      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;
//
//預設Excel
procedure TMonthOutPutPOH.ExportFormatExcel();
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
var i,j,k,excelcount:integer;
    eclApp,WorkBook:olevariant;
    SB,Str:string;
    tmpDate:TDateTime;
    iYear,iMonth:word;
begin

   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN545.xls'),Pchar(AppDir+'Additional\Plan_SN545.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN545.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN545.xls');
        ExcelSheetI:=1;
        //
        eclApp.WorkSheets[ExcelSheetI].Activate;
        if CBX3.Text='C' then Str:='裁斷';
        if CBX3.Text='A' then Str:='成型';
        if CBX3.Text='S' then Str:='針車';
        eclApp.Cells(2,1):=CBX1.Text+'/'+CBX2.Text+'月'+Str+'人均時產能報表';
        Query1.First;
        //
        eclApp.Cells(3,1):='Lean線';
        eclApp.Cells(3,2):='項目';
        eclApp.Cells(3,3):='總計';
        eclApp.Cells(3,4):='日平均';
        iYear:=strtoint(CBX1.text);
        iMonth:=strtoint(CBX2.text);
        for i:=5 to Query1.FieldCount-1 do
        begin
          //日期從Query.Fields[3]開始, Excel從
          eclApp.Cells(3,i):=Query1.Fields[i].FieldName;
          eclApp.Columns[i].ColumnWidth:=4;
          //判斷是否星期日  斜體
          TmpDate:=EncodeDate(iYear,iMonth,strtoint(Query1.Fields[i].FieldName));
          if DayofWeek(tmpDate)=1 then
          begin
            eclApp.Columns[i].Font.Italic:=true;
            eclApp.Cells[3,i].Interior.Color := clGray;  //
          end else
          begin
            eclApp.Cells[3,i].Interior.Color := clyellow;  //
          end;
        end;
        //外框線
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[1].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[2].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[3].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[4].Weight := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[1].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[2].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[3].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'11'].Borders[4].LineStyle := 1;
        //刪除多餘Column
        for j:=i to 36 do
          eclApp.ActiveSheet.Columns[i].Delete;
        //
        //刪除歷史行數
        if CKBox1.Checked=false then
        begin
          //刪除區塊
          SB:=eclApp.Cells[12,2];
          while SB<>'' do
          begin
            eclApp.ActiveSheet.Rows[12].Delete;
            SB:=eclApp.Cells[12,2];
          end;
          //複製區塊

          for j:=1 to (Query1.RecordCount div 8)-1 do
          begin
            eclApp.Range[GetExcelColumnID(1)+'4:'+GetExcelColumnID(i)+'11'].Copy;
            eclApp.ActiveSheet.Rows[12+((j-1)*8)].Select;
            eclApp.ActiveSheet.Paste;
          end;
        end;
        //

        k:=0;
        for j:=0 to Query1.RecordCount-1 do
        begin
          eclApp.Cells(4+k,1):=Query1.FieldByName('DepName').AsString;
          if  Query1.FieldByName('SB').AsString='1.Sdr' then Str:='標準產量';
          if  Query1.FieldByName('SB').AsString='2.Plan' then Str:='目標產量';
          if  Query1.FieldByName('SB').AsString='3.Actual' then Str:='實際產量';
          if  Query1.FieldByName('SB').AsString='4.Diff' then Str:='差異';
          //
          if  Query1.FieldByName('SB').AsString='5.Hours' then Str:='工時';
          if  Query1.FieldByName('SB').AsString='6.Workers' then Str:='直工人數';
          if  Query1.FieldByName('SB').AsString='7.OutHour' then Str:='時產能';
          if  Query1.FieldByName('SB').AsString='8.POH' then Str:='人均時產';
          eclApp.Cells(4+k,2):=Str;
          for i:=3 to Query1.FieldCount-1 do
          begin
            eclApp.Cells(4+k,i):=Query1.Fields[i].Value;
            if Query1.Fields[i].Value<0 then  eclApp.Cells[4+k,i].Font.Color := clRed else eclApp.Cells[4+k,i].Font.Color := clBlack; //
            if ((Str='標準產量') or (Str='目標產量')) then eclApp.Cells[4+k,i].Interior.Color := $00F1E5DB;
            if (Str='人均時產') then eclApp.Cells[4+k,i].Interior.Color := $00BCE4D7;
          end;
          k:=k+1;
          Query1.Next;
        end;
        eclApp.Cells(4,1):='總計';
        //
        showmessage('Succeed.');
        eclApp.Visible:=True;

      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;
//
procedure TMonthOutPutPOH.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j:integer;
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

procedure TMonthOutPutPOH.Button2Click(Sender: TObject);
begin

  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    if Messagedlg(Pchar('Use External Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
     begin
       ExportExternalExcel();
     end else
     begin
       ExportFormatExcel();
     end;
  end else
  begin
     ExportDefaultExcel();
  end;
  //
end;

end.
