unit PlanPOHMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, PrnDbgeh, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils
  ,Comobj,iniFiles, ComCtrls;

type
  TPlanPOHMonth = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    OpenDialog: TOpenDialog;
    PrintDBGridEh1: TPrintDBGridEh;
    Qtemp: TQuery;
    Query1SCBH: TStringField;
    Query1XieMing: TStringField;
    Query1ARTICLE: TStringField;
    Query1Pairs: TIntegerField;
    Query1PRS: TStringField;
    Query1DepName: TStringField;
    Query1SCDate: TStringField;
    Query1Begin_Cutting: TFloatField;
    Query1Begin_Stitching: TFloatField;
    Query1Begin_Assembly: TFloatField;
    Query1Before_Cutting: TFloatField;
    Query1Before_Stitching: TFloatField;
    Query1Before_Assembly: TFloatField;
    Query1Cutting: TFloatField;
    Query1Stitching: TFloatField;
    Query1Assembly: TFloatField;
    Query1Final_Cutting: TFloatField;
    Query1Final_Stitching: TFloatField;
    Query1Final_Assembly: TFloatField;
    Query1POH: TFloatField;
    Query1T1: TIntegerField;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label8: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    RYEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    sDate,eDate:TDateTime;
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanPOHMonth: TPlanPOHMonth;
  NDate:TDate;

implementation

uses main1,FunUnit;

{$R *.dfm}

function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TPlanPOHMonth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPlanPOHMonth.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  //InitCombo Year/Month
  DecodeDate(Date(), myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.Date:=EncodeDate(myYear, myMonth, DaysOfItsMonth(Date()+30));
end;

procedure TPlanPOHMonth.FormDestroy(Sender: TObject);
begin
  PlanPOHMonth:=nil;
end;

procedure TPlanPOHMonth.Button1Click(Sender: TObject);
var iYear,iMonth,iDay :word;
begin
  decodedate(incmonth(DTP1.Date,-1),iYear,iMonth,iDay);
  with query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('  Select SCBB.SCBH,XXZL.XieMing,DDZL.ARTICLE,DDZL.Pairs,''PRS'' as PRS,BDepartment.DepName,RIGHT(Convert(varchar,SCBB.MinSCDate,111),5)+''-''+RIGHT(Convert(varchar,SCBB.MaxSCDate,111),5) as SCDate  ');
    SQL.Add('         ,IsNull(Begin_SCBB.Begin_Cutting,0) as Begin_Cutting   ');
    SQL.Add('         ,IsNull(Begin_SCBB.Begin_Stitching,0) as Begin_Stitching  ');
    SQL.Add('  	   ,IsNull(Begin_SCBB.Begin_Assembly,0) as Begin_Assembly   ');
    SQL.Add('  	   ,SCBB.Before_Cutting,SCBB.Before_Stitching,SCBB.Before_Assembly  ');
    SQL.Add('  	   ,SCBB.Cutting,SCBB.Stitching,SCBB.Assembly  ');
    SQL.Add('         ,IsNull(Begin_SCBB.Begin_Cutting,0) +SCBB.Before_Cutting-SCBB.Cutting as Final_Cutting  ');
    SQL.Add('  	   ,IsNull(Begin_SCBB.Begin_Stitching,0) +SCBB.Before_Stitching-SCBB.Stitching as Final_Stitching  ');
    SQL.Add('  	   ,IsNull(Begin_SCBB.Begin_Assembly,0) +SCBB.Before_Assembly-SCBB.Assembly as Final_Assembly  ');
    SQL.Add('         ,SCXXCL.POH,case when SCXXCL.POH >=1.25 then 1  ');
    SQL.Add('              when SCXXCL.POH >=1.0 and SCXXCL.POH< 1.25 then 2  ');
    SQL.Add('              when SCXXCL.POH >= 0.75 and SCXXCL.POH<1.0 then 3  ');
    SQL.Add('              when SCXXCL.POH<0.75 then 4 end as T1  ');
    SQL.Add('  from (  ');
    SQL.Add('  Select SCBH  ');
    SQL.Add('         ,IsNull(Max(Case when GXLB=''C'' and LB=''Before'' then Qty end),0) as Before_Cutting  ');
    SQL.Add('  	   ,IsNull(Max(Case when GXLB=''S'' and LB=''Before''then Qty end),0) as Before_Stitching  ');
    SQL.Add('  	   ,IsNull(Max(Case when GXLB=''A'' and LB=''Before'' then Qty end),0) as Before_Assembly  ');
    SQL.Add('         ,IsNull(Max(Case when GXLB=''C'' and LB=''After'' then Qty end),0) as Cutting  ');
    SQL.Add('  	   ,IsNull(Max(Case when GXLB=''S'' and LB=''After''then Qty end),0) as Stitching  ');
    SQL.Add('  	   ,IsNull(Max(Case when GXLB=''A'' and LB=''After'' then Qty end),0) as Assembly  ');
    SQL.Add('  	   ,Max(DepNo) as DepNo,Max(MinSCDate) as MinSCDate,Max(MaxSCDate) as MaxSCDate  ');
    SQL.Add('  from (   ');
    SQL.Add('    ');
    SQL.Add('  Select SMDD.YSBH as SCBH,SMDD.GXLB,''Before'' as LB,null as DepNo,null as MaxSCDate,null as MinSCDate,Sum(SMDDSS.Qty*CTS) as Qty   ');
    SQL.Add('  From SMDDSS  ');
    SQL.Add('  Left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB  ');
    SQL.Add('	 where 1=1 and (convert(smalldatetime,convert(varchar,SMDDSS.UserDate,111)) between ');
    SQL.Add('					   '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    SQL.Add('  and SMDDSS.GXLB in (''A'',''C'',''S'')  ');
    if RYEdit.Text<>'' then
    SQL.Add('  and SMDD.DDBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('  Group By SMDD.YSBH,SMDD.GXLB  ');
    SQL.Add('  union all  ');
    SQL.Add('  Select * from (  ');
    SQL.Add('  select SCBBS.SCBH, SCBBS.GXLB,''After'' as LB,Max(SCBB.DepNo) as DepNo,Max(SCBB.SCDate) as MaxSCDate,Min(SCBB.SCDate) as MinSCDate,Sum(SCBBS.Qty) as Qty  ');
    SQL.Add('  from SCBBS  ');
    SQL.Add('  left join SCBB on SCBB.ProNo=SCBBS.ProNo  ');
    SQL.Add('	 where 1=1 and (convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('					   '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    SQL.Add('  and GXLB in (''A'',''C'',''S'')  ');
    if RYEdit.Text<>'' then
    SQL.Add('  and SCBBS.SCBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('  Group by SCBBS.SCBH, SCBBS.GXLB) SCBB  ');
    SQL.Add('  ) SCBB  ');
    SQL.Add('  where 1=1  ');
    SQL.Add('  Group by SCBB.SCBH) SCBB  ');
    SQL.Add('  left join (  ');
    SQL.Add('  	Select SCBH    ');
    SQL.Add('  		   ,IsNull(Max(Case when GXLB=''C'' and LB=''Before'' then Qty end),0)-IsNull(Max(Case when GXLB=''C'' and LB=''After'' then Qty end),0) as Begin_Cutting  ');
    SQL.Add('  		   ,IsNull(Max(Case when GXLB=''S'' and LB=''Before'' then Qty end),0)-IsNull(Max(Case when GXLB=''S'' and LB=''After'' then Qty end),0) as Begin_Stitching  ');
    SQL.Add('  		   ,IsNull(Max(Case when GXLB=''A'' and LB=''Before'' then Qty end),0)-IsNull(Max(Case when GXLB=''A'' and LB=''After'' then Qty end),0) as Begin_Assembly  ');
    SQL.Add('  	from (  ');
    SQL.Add('  		Select SMDD.YSBH as SCBH,SMDD.GXLB,''Before'' as LB,Sum(SMDDSS.Qty*CTS) as Qty   ');
    SQL.Add('  		From SMDDSS  ');
    SQL.Add('  		Left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB  ');
    SQL.Add('  		where SMDDSS.UserDate < '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and SMDDSS.GXLB in (''A'',''C'',''S'')  ');
    if RYEdit.Text<>'' then
    SQL.Add('          and SMDD.DDBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('  		Group By SMDD.YSBH,SMDD.GXLB  ');
    SQL.Add('  		union all  ');
    SQL.Add('  		Select * from (  ');
    SQL.Add('  		select SCBBS.SCBH, SCBBS.GXLB,''After'' as LB,Sum(SCBBS.Qty) as Qty  ');
    SQL.Add('  		from SCBBS  ');
    SQL.Add('  		left join SCBB on SCBB.ProNo=SCBBS.ProNo  ');
    SQL.Add('  		where SCBB.SCDate < '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and GXLB in (''A'',''C'',''S'')    ');
    if RYEdit.Text<>'' then
    SQL.Add('           and SCBBS.SCBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('  		Group by SCBBS.SCBH, SCBBS.GXLB ) SCBB  ');
    SQL.Add('  		where SCBH in (  ');
    SQL.Add('  			Select SCBH from (  ');
    SQL.Add('  			Select SMDD.YSBH as SCBH  ');
    SQL.Add('  			From SMDDSS  ');
    SQL.Add('  			Left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB  ');
    SQL.Add('				where 1=1 and (convert(smalldatetime,convert(varchar,SMDDSS.UserDate,111)) between ');
    SQL.Add('					   '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    SQL.Add('  		   	 and SMDDSS.GXLB in (''A'',''C'',''S'')  ');
    if RYEdit.Text<>'' then
    SQL.Add('          and SMDD.DDBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('  			Group By SMDD.YSBH  ');
    SQL.Add('  			union all  ');
    SQL.Add('  			Select * from (  ');
    SQL.Add('  			select SCBBS.SCBH  ');
    SQL.Add('  			from SCBBS  ');
    SQL.Add('  			left join SCBB on SCBB.ProNo=SCBBS.ProNo  ');
    SQL.Add('				where 1=1 and (convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('					   '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')');
    SQL.Add('  			and GXLB in (''A'',''C'',''S'')  ');
    if RYEdit.Text<>'' then
    SQL.Add('           and SCBBS.SCBH like '''+RYEdit.Text+'%'' ');    
    SQL.Add('  			Group by SCBBS.SCBH ) SCBB  ');
    SQL.Add('  			 )SCBB  Group by SCBH  ');
    SQL.Add('  		)  ');
    SQL.Add('  	) SCBB where 1=1 ');
    SQL.Add('  	Group by SCBH    ');
    SQL.Add('  ) Begin_SCBB on Begin_SCBB.SCBH=SCBB.SCBH   ');
    SQL.Add('  left join DDZL on DDZL.DDBH=SCBB.SCBH  ');
    SQL.Add('  left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
    SQL.Add('  left join BDepartment on BDepartment.ID=SCBB.DepNo  ');
    SQL.Add('  left join (Select XieXing,SheHao,BZLB,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,  ');
    SQL.Add('                    (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH   ');
    SQL.Add('             from SCXXCL   ');
    SQL.Add('             Group by XieXing,SheHao,BZLB) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=BDepartment.BZLB   ');
    //ncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TPlanPOHMonth.Button2Click(Sender: TObject);
var i,j,k:integer;
    tmpDate:TDateTime;
    eclApp,WorkBook:olevariant;
    iYear,iMonth,iDay :word;
begin
   decodedate(incmonth(DTP1.Date,-1),iYear,iMonth,iDay);
   with Qtemp do
   begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
   end;
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN6105.xls'),Pchar(AppDir+'Additional\Plan_SN6105.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN6105.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN6105.xls');
        eclApp.Cells(1,1):='揚州寶億制鞋有限公司'+formatdatetime('MM',DTP1.Date)+'月份匯總表';
        eclApp.Cells(2,2):= '生產年月:'+formatdatetime('YYYY',DTP1.Date)+formatdatetime('MM',DTP1.Date);
        eclApp.Cells(2,11):='列印時間:'+formatdatetime('YYYY/MM/DD/ HH:MM:SS',NDate);
        Query1.First;
        j:=5;
        while   not  Query1.Eof   do
        begin
          for i:=0 to Query1.FieldCount-1 do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
          end;
          Query1.Next;
          inc(j)
        end;
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[5,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
        end;
        Showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;

end.
