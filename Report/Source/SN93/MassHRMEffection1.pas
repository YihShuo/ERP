unit MassHRMEffection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls,Comobj, inifiles;

type
  TMassHRMEffection = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX3: TComboBox;
    CBX4: TComboBox;
    HRMQry: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    TTGioQry: TQuery;
    DS3: TDataSource;
    ExeQuery: TQuery;
    HRMQryHMonth: TStringField;
    HRMQryHDays: TIntegerField;
    HRMQryStdQty: TIntegerField;
    HRMQryPodQty: TFloatField;
    HRMQryDirStdWorks: TIntegerField;
    HRMQryDirRelWorkers: TIntegerField;
    HRMQryDirRelHours: TFloatField;
    HRMQryDirStdHours: TFloatField;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    HRDQry: TQuery;
    DS2: TDataSource;
    HRDQryHMonth: TStringField;
    HRDQryHDays: TIntegerField;
    HRDQryStdQty: TIntegerField;
    HRDQryPodQty: TFloatField;
    HRDQryDirStdWorks: TIntegerField;
    HRDQryDirRelWorkers: TIntegerField;
    HRDQryDirRelHours: TFloatField;
    HRDQryDirStdHours: TFloatField;
    TTGioQryHMonth: TStringField;
    TTGioQryHDays: TIntegerField;
    TTGioQryStdQty: TIntegerField;
    TTGioQryPodQty: TFloatField;
    TTGioQryDirStdWorks: TIntegerField;
    TTGioQryDirRelWorkers: TIntegerField;
    TTGioQryDirRelHours: TFloatField;
    TTGioQryDirStdHours: TFloatField;
    TTGioQryDepName: TStringField;
    TTGioQryDDBH: TStringField;
    TTGioQryArticle: TStringField;
    TTGioQryXieXing: TStringField;
    TTGioQryID: TStringField;
    Splitter2: TSplitter;
    TTGioQryID_HRM: TStringField;
    HRMQryDirRelComWorkers: TIntegerField;
    HRDQryDirRelComWorkers: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Button2Click(Sender: TObject);
  private
    SelectSTD:string;
    SelectedIndex:integer;
    STDList,ETDList:TStringlist;
    HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    { Private declarations }
    procedure ReadIni();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();    
  public
    { Public declarations }
  end;

var
  MassHRMEffection: TMassHRMEffection;

implementation
  uses main1, DateUtils,FunUnit;
{$R *.dfm}
procedure TMassHRMEffection.ReadIni();
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

procedure TMassHRMEffection.CreateHRM_Connect();
begin
  //
  with ExeQuery do
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
procedure TMassHRMEffection.CreateHRM_DisConnect();
begin
  with ExeQuery do
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

procedure TMassHRMEffection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  STDList.Free;
  ETDList.Free;
  CreateHRM_DisConnect();
  Action:=Cafree;
end;

procedure TMassHRMEffection.FormDestroy(Sender: TObject);
begin
  MassHRMEffection:=nil;
end;

procedure TMassHRMEffection.Button1Click(Sender: TObject);
var STD,ETD:string;
    i:integer;
begin
  //
  if CBX1.Text<>CBX3.Text then
  begin
    Showmessage('Please select the same year');
    exit;
  end;
  if (Strtoint(CBX4.Text)-Strtoint(CBX2.Text))>3 then
  begin
    Showmessage('Please select between month < 3 month');
    exit;
  end;
  STD:=CBX1.Text+'-'+CBX2.Text+'-01';
  ETD:=FormatDatetime('YYYY-MM-DD', EndOfAMonth(strtoint(CBX3.Text),strtoint(CBX4.Text)));
  //begin
  STDList.Clear;
  ETDList.Clear;
  if StrtoInt(CBX2.Text)<=StrtoInt(CBX4.Text) then
  begin
    for i:= StrtoInt(CBX2.Text) to StrtoInt(CBX4.Text) do
    begin
       STDList.Add(CBX1.Text+'-'+Format('%.2d',[i])+'-01');
       ETDList.Add( FormatDatetime('YYYY-MM-DD', EndOfAMonth(strtoint(CBX3.Text),i)) );
    end;
  end;
  //
  with HRMQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on');
    SQL.Add('select SCBZCL.BMonth as ''HMonth'',SCBZCL.BCount as ''HDays'',');
    SQL.Add('       PlanProd.StdQty,SCBB.Qty as ''PodQty'',(ProdDDZL.StdWorks/SCBZCL.BCount) as ''DirStdWorks'',');
    SQL.Add('       (HumData.DirRelWorkers/SCBZCL.BCount) as DirRelWorkers,(HumData.DirRelComWorkers/SCBZCL.BCount) as DirRelComWorkers,(HumData.TTLCHC+HumData.TTTCHC) as DirRelHours,');
    SQL.Add('       (SCRL.DayHours*SCBZCL.BCount)*(ProdDDZL.StdWorks/SCBZCL.BCount) as ''DirStdHours'' ');
    SQL.Add('from (       ');
    SQL.Add('select Convert(varchar,month(BZDate)) as BMonth,Count (distinct BZDate) as BCount ');
    SQL.Add('from SCBZCL ');
    SQL.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
    SQL.Add('where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.ProYN=1 and BZDate>='''+STD+''' and BZDate<='''+ETD+''' and BZDate<='''+FormatDateTime('YYYY/MM/DD',Date())+''' and Qty>0');
    SQL.Add('Group by month(BZDate) ) SCBZCL');
    SQL.Add('left join ( ');
    SQL.Add('select month(SCBB.SCDate) as PMonth,Sum(Qty) as Qty ');
    SQL.Add('from SCBBS');
    SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
    SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH='''+main.sGSBH+''' ');
    SQL.Add('Group by month(SCBB.SCDate) ) SCBB  on SCBB.PMonth=SCBZCL.BMonth ');
    SQL.Add('left join (');
    SQL.Add('select Convert(varchar,month(BZDate)) as BMonth,Sum(Qty) as StdQty');
    SQL.Add('from SCBZCL ');
    SQL.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
    SQL.Add('where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.GXLB=''A'' and BDepartment.ProYN=1 and BZDate>='''+STD+''' and BZDate<='''+ETD+''' and BZDate<='''+FormatDateTime('YYYY/MM/DD',Date())+''' and Qty>0');
    SQL.Add('Group by month(BZDate) ) PlanProd  on PlanProd.BMonth=SCBZCL.BMonth ');
    SQL.Add('left join (');
    SQL.Add('select month(ProdDDZL.SCDate) as PMonth,Sum(SCXXCL.BZRS) as StdWorks from (');
    SQL.Add('select SCBB.SCDate,SCBB.DepNO,Max(SCBBS.SCBH) as DDBH,Sum(Qty) as Qty');
    SQL.Add('from SCBBS');
    SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
    SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH=''VA12'' ');
    SQL.Add('Group by SCBB.SCDate,SCBB.DepNO ) ProdDDZL');
    SQL.Add('Left join DDZL on DDZL.DDBH=ProdDDZL.DDBH');
    SQL.Add('Left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and  SCXXCL.GXLB in (''A'',''C'',''S'') and BZLB=3');
    SQL.Add('--where ProdDDZL.DDBH=''Y1612-1057''');
    SQL.Add('Group by month(ProdDDZL.SCDate) ) ProdDDZL on  ProdDDZL.PMonth=SCBZCL.BMonth ');
    SQL.Add('left join (');
    SQL.Add('  select Month(convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay)) as PMonth,Sum(SCGS)/Count(BDepartment.ID) as DayHours');
    SQL.Add('  from SCRL');
    SQL.Add('  inner join  SCBZCL on SCBZCL.BZDate=convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay) and SCBZCL.DepNO=SCRL.DepNo');
    SQL.Add('  left join BDepartment on BDepartment.ID=SCRL.DepNo');
    SQL.Add('  where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.GXLB=''A'' and convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay)  between '''+STD+''' and '''+ETD+''' ');
    SQL.Add('  Group by Month(convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay))');
    SQL.Add(') SCRL on SCRL.PMonth=SCBZCL.BMonth ');
    SQL.Add('Left join ( ');
    SQL.Add('  SELECT Convert(varchar,month(QT_NGAY)) as HMonth,');
    SQL.Add('  DirRelWorkers=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1  THEN 1 ELSE 0 END), ');
    SQL.Add('  DirRelComWorkers=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 and X_MA_ in (''A1A2'') THEN 1 ELSE 0 END), ');
    SQL.Add('  TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
    SQL.Add('  TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3'' or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END)');
    SQL.Add('  FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.st_nhanvien st_nhanvien on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma');
    SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
    SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI on ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');    //
    SQL.Add('  where QT_NGAY>='''+STD+''' and QT_NGAY<='''+ETD+'''  and X_MA_ like ''A%'' ');
    SQL.Add('  group by month(QT_NGAY)');
    SQL.Add(' ) HumData  on   HumData.HMonth COLLATE DATABASE_DEFAULT =SCBZCL.BMonth COLLATE DATABASE_DEFAULT');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  SelectedIndex:=-1;
  //
end;

procedure TMassHRMEffection.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  SelectedIndex:=-1;
  STDList:=TStringlist.Create;
  ETDList:=TStringlist.Create;
  //
  DecodeDate(Date()-30, myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX3.ItemIndex:=i;
      break;
    end;
  end;

  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      CBX4.ItemIndex:=i;
      break;
    end;
  end;
  ReadIni();
  CreateHRM_Connect();

end;

procedure TMassHRMEffection.DBGridEh1CellClick(Column: TColumnEh);
var STD,ETD:string;
    i:integer;
    IsFreshDetail:boolean;
begin

   if HRMQry.Active=false then exit;
   IsFreshDetail:=true;
   for i:=0 to STDList.Count-1 do
   begin
     if strtoint(Copy(STDList.Strings[i],6,2))=HRMQry.FieldByName('HMonth').AsInteger then
     begin
       STD:=STDList.Strings[i];
       ETD:=ETDList.Strings[i];
       if SelectedIndex=i then IsFreshDetail:=false;
       SelectedIndex:=i;
       break;
     end;
   end;
   //差勤人數
   if  ((Column.FieldName='StdQty') or (Column.FieldName='PodQty') or (Column.FieldName='DirStdWorks') or (Column.FieldName='DirRelWorkers')) then
   begin
      if ((IsFreshDetail=true) or (HRDQry.Active=false)) then
      with HRDQry do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('set ansi_nulls on ');
        SQL.Add('set ansi_warnings on');
        SQL.Add('select SCBZCL.BMonth as ''HMonth'',SCBZCL.BCount as ''HDays'',');
        SQL.Add('       PlanProd.StdQty,SCBB.Qty as ''PodQty'',(ProdDDZL.StdWorks/SCBZCL.BCount) as ''DirStdWorks'',');
        SQL.Add('       (HumData.DirRelWorkers/SCBZCL.BCount) as DirRelWorkers,(HumData.DirRelComWorkers/SCBZCL.BCount) as DirRelComWorkers,(HumData.TTLCHC+HumData.TTTCHC) as DirRelHours,');
        SQL.Add('       (SCRL.DayHours*SCBZCL.BCount)*(ProdDDZL.StdWorks/SCBZCL.BCount) as ''DirStdHours'' ');
        SQL.Add('from (       ');
        SQL.Add('select Convert(varchar,BZDate,111) as BMonth,Count (distinct BZDate) as BCount ');
        SQL.Add('from SCBZCL ');
        SQL.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
        SQL.Add('where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.ProYN=1 and BZDate>='''+STD+''' and BZDate<='''+ETD+''' and BZDate<='''+FormatDateTime('YYYY/MM/DD',Date())+''' and Qty>0');
        SQL.Add('Group by BZDate ) SCBZCL');
        SQL.Add('left join ( ');
        SQL.Add('select Convert(varchar,SCBB.SCDate,111) as PMonth,Sum(Qty) as Qty ');
        SQL.Add('from SCBBS');
        SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
        SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH=''VA12'' ');
        SQL.Add('Group by SCBB.SCDate ) SCBB  on SCBB.PMonth=SCBZCL.BMonth ');
        SQL.Add('left join (');
        SQL.Add('select Convert(varchar,BZDate,111) as BMonth,Sum(Qty) as StdQty');
        SQL.Add('from SCBZCL ');
        SQL.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
        SQL.Add('where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.GXLB=''A'' and BDepartment.ProYN=1 and BZDate>='''+STD+''' and BZDate<='''+ETD+''' and BZDate<='''+FormatDateTime('YYYY/MM/DD',Date())+''' and Qty>0');
        SQL.Add('Group by BZDate ) PlanProd  on PlanProd.BMonth=SCBZCL.BMonth ');
        SQL.Add('left join (');
        SQL.Add('select Convert(varchar,ProdDDZL.SCDate,111) as PMonth,Sum(SCXXCL.BZRS) as StdWorks from (');
        SQL.Add('select SCBB.SCDate,SCBB.DepNO,Max(SCBBS.SCBH) as DDBH,Sum(Qty) as Qty');
        SQL.Add('from SCBBS');
        SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
        SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH=''VA12'' ');
        SQL.Add('Group by SCBB.SCDate,SCBB.DepNO ) ProdDDZL');
        SQL.Add('Left join DDZL on DDZL.DDBH=ProdDDZL.DDBH');
        SQL.Add('Left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and  SCXXCL.GXLB in (''A'',''C'',''S'') and BZLB=3');
        SQL.Add('--where ProdDDZL.DDBH=''Y1612-1057''');
        SQL.Add('Group by ProdDDZL.SCDate ) ProdDDZL on  ProdDDZL.PMonth=SCBZCL.BMonth ');
        SQL.Add('left join (');
        SQL.Add('  select convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay,111) as PMonth,Sum(SCGS)/Count(BDepartment.ID) as DayHours');
        SQL.Add('  from SCRL');
        SQL.Add('  inner join  SCBZCL on SCBZCL.BZDate=convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay) and SCBZCL.DepNO=SCRL.DepNo');
        SQL.Add('  left join BDepartment on BDepartment.ID=SCRL.DepNo');
        SQL.Add('  where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.GXLB=''A'' and convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay)  between '''+STD+''' and '''+ETD+''' ');
        SQL.Add('  Group by convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay,111)');
        SQL.Add(') SCRL on SCRL.PMonth=SCBZCL.BMonth ');
        SQL.Add('Left join ( ');
        SQL.Add('  SELECT Convert(varchar,QT_NGAY,111) as HMonth,');
        SQL.Add('  DirRelWorkers=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1  THEN 1 ELSE 0 END), ');
        SQL.Add('  DirRelComWorkers=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 and X_MA_ in (''A1A2'') THEN 1 ELSE 0 END), ');
        SQL.Add('  TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
        SQL.Add('  TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3'' or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END) ');
        SQL.Add('  FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.st_nhanvien st_nhanvien on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI on ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');  //
        SQL.Add('  where QT_NGAY>='''+STD+''' and QT_NGAY<='''+ETD+'''  and X_MA_ like ''A%'' ');
        SQL.Add('  group by QT_NGAY');
        SQL.Add(' ) HumData  on   HumData.HMonth COLLATE DATABASE_DEFAULT =SCBZCL.BMonth COLLATE DATABASE_DEFAULT');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
   end;

end;

procedure TMassHRMEffection.DBGridEh2CellClick(Column: TColumnEh);
var STD,ETD:string;
    i:integer;
    IsFreshDetail:boolean;
begin

   IsFreshDetail:=true;
   if  SelectSTD=HRDQry.FieldByName('HMonth').AsString then IsFreshDetail:=false;

   SelectSTD:=HRDQry.FieldByName('HMonth').AsString;

   STD:=HRDQry.FieldByName('HMonth').AsString;
   ETD:=HRDQry.FieldByName('HMonth').AsString;

   if  (Column.FieldName='HMonth')  then
   begin
      if ((IsFreshDetail=true) or (TTGioQry.Active=false)) then
      with TTGioQry do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('set ansi_nulls on ');
        SQL.Add('set ansi_warnings on');
        SQL.Add('select SCBZCL.BMonth as ''HMonth'',SCBZCL.BCount as ''HDays'',');
        SQL.Add('       PlanProd.StdQty,SCBB.Qty as ''PodQty'',(ProdDDZL.StdWorks/SCBZCL.BCount) as ''DirStdWorks'',');
        SQL.Add('       (HumData.DirRelWorkers/SCBZCL.BCount) as DirRelWorkers,(HumData.TTLCHC+HumData.TTTCHC) as DirRelHours,');
        SQL.Add('       (SCRL.DayHours*SCBZCL.BCount)*(ProdDDZL.StdWorks/SCBZCL.BCount) as ''DirStdHours'',BDepartment.ID,BDepartment.ID_HRM,BDepartment.DepName,ProdDDZL.DDBH,ProdDDZL.Article,ProdDDZL.XieXing ');
        SQL.Add('from (  ');
        SQL.Add('     ');
        SQL.Add('select Convert(varchar,BZDate,111) as BMonth,Count (distinct BZDate) as BCount ');
        SQL.Add('from SCBZCL ');
        SQL.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
        SQL.Add('where BDepartment.GSBH='''+main.sGSBH+'''  and BDepartment.ProYN=1 and BZDate>='''+STD+''' and BZDate<='''+ETD+''' and BZDate<='''+FormatDateTime('YYYY/MM/DD',Date())+''' and Qty>0');
        SQL.Add('Group by BZDate ) SCBZCL');
        SQL.Add('left join ( ');
        SQL.Add('select Convert(varchar,SCBB.SCDate,111) as PMonth,SCBB.DepNo,Sum(Qty) as Qty ');
        SQL.Add('from SCBBS');
        SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
        SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH='''+main.sGSBH+''' ');
        SQL.Add('Group by SCBB.SCDate,SCBB.DepNo ) SCBB  on SCBB.PMonth=SCBZCL.BMonth ');
        SQL.Add('left join (');
        SQL.Add('select Convert(varchar,BZDate,111) as BMonth,SCBZCL.DepNo,Sum(Qty) as StdQty');
        SQL.Add('from SCBZCL ');
        SQL.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
        SQL.Add('where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.GXLB=''A'' and BDepartment.ProYN=1 and BZDate>='''+STD+''' and BZDate<='''+ETD+''' and BZDate<='''+FormatDateTime('YYYY/MM/DD',Date())+''' and Qty>0');
        SQL.Add('Group by BZDate,SCBZCL.DepNo ) PlanProd  on PlanProd.BMonth=SCBZCL.BMonth and PlanProd.DepNo=SCBB.DepNo');
        SQL.Add('left join (');
        SQL.Add('select Convert(varchar,ProdDDZL.SCDate,111) as PMonth,DepNO,ProdDDZL.DDBH,DDZL.Article,DDZL.XieXing,Sum(SCXXCL.BZRS) as StdWorks from (');
        SQL.Add('select SCBB.SCDate,SCBB.DepNO,Max(SCBBS.SCBH) as DDBH,Sum(Qty) as Qty');
        SQL.Add('from SCBBS');
        SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
        SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH='''+main.sGSBH+''' ');
        SQL.Add('Group by SCBB.SCDate,SCBB.DepNO ) ProdDDZL');
        SQL.Add('Left join DDZL on DDZL.DDBH=ProdDDZL.DDBH');
        SQL.Add('Left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and  SCXXCL.GXLB in (''A'',''C'',''S'') and BZLB=3');
        SQL.Add('--where ProdDDZL.DDBH=''Y1612-1057''');
        SQL.Add('Group by ProdDDZL.SCDate,ProdDDZL.DepNO,ProdDDZL.DDBH,DDZL.Article,DDZL.XieXing ) ProdDDZL on  ProdDDZL.PMonth=SCBZCL.BMonth and ProdDDZL.DepNo=SCBB.DepNo');
        SQL.Add('left join (');
        SQL.Add('  select convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay,111) as PMonth,SCRL.DepNo,Sum(SCGS)/Count(BDepartment.ID) as DayHours');
        SQL.Add('  from SCRL');
        SQL.Add('  inner join  SCBZCL on SCBZCL.BZDate=convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay) and SCBZCL.DepNO=SCRL.DepNo');
        SQL.Add('  left join BDepartment on BDepartment.ID=SCRL.DepNo');
        SQL.Add('  where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.GXLB=''A'' and convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay)  between '''+STD+''' and '''+ETD+''' ');
        SQL.Add('  Group by convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay,111),SCRL.DepNo');
        SQL.Add('  ');
        SQL.Add(') SCRL on SCRL.PMonth=SCBZCL.BMonth and SCRL.DepNo=SCBB.DepNo');
        SQL.Add('Left join BDepartment on BDepartment.ID=SCBB.DepNo');
        SQL.Add('Left join (  ');
        SQL.Add('  select HumData.*,BDepartment.ID_HRM as dv_ma from ( ');
        SQL.Add('  select HumData.HMonth,BDepartment.sumline,Sum(DirRelWorkers) as DirRelWorkers,Sum(TTLCHC) as TTLCHC,Sum(TTTCHC) as TTTCHC  from  ( ');
        SQL.Add('  select SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepartment.sumline,BDepartment.GXLB');
        SQL.Add('  from SCBBS');
        SQL.Add('  left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        SQL.Add('  left join BDepartment on BDepartment.ID=SCBB.DepNo');
        SQL.Add('  where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
        SQL.Add('        and SCBB.GSBH='''+main.sGSBH+''' ');
        SQL.Add('  Group by SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepartment.sumline,BDepartment.GXLB ) BDepartment');
        SQL.Add('  left join (');
        SQL.Add('  SELECT Convert(varchar,QT_NGAY,111) as HMonth,ST_GIOQUETTHE.dv_ma,');
        SQL.Add('  DirRelWorkers=SUM(case when CC_GIOBINHTHUONG=8 then 1 else 0 end),');
        SQL.Add('  TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
        SQL.Add('  TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3'' or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END) ');
        SQL.Add('  FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.st_nhanvien st_nhanvien on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
        SQL.Add('  inner join HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI on ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');  //
        SQL.Add('  where QT_NGAY>='''+STD+''' and QT_NGAY<='''+ETD+'''  and X_MA_ like ''A%'' ');
        SQL.Add('  group by QT_NGAY,ST_GIOQUETTHE.dv_ma ) HumData on  HumData.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT ');
        SQL.Add('  where  HumData.dv_ma is not null ');
        SQL.Add('  Group by  HumData.HMonth,BDepartment.sumline ) HumData');
        SQL.Add('  left join BDepartment on BDepartment.sumline=HumData.sumline and BDepartment.GXLB=''A''');
        SQL.Add(' ) HumData  on   HumData.HMonth COLLATE DATABASE_DEFAULT =SCBZCL.BMonth COLLATE DATABASE_DEFAULT and HumData.dv_ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
   end;

end;

procedure TMassHRMEffection.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  HRMQry.active  then
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
          for   i:=0   to   HRMQry.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=HRMQry.fields[i].FieldName;
          end;

          HRMQry.First;
          j:=2;
          while   not   HRMQry.Eof   do
          begin
            for   i:=0   to  HRMQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=HRMQry.Fields[i].Value;
            end;
            HRMQry.Next;
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
