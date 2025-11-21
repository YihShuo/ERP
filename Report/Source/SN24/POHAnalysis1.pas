unit POHAnalysis1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, PrnDbgeh, DBTables,dateutils
  ,Comobj,fununit ;

type
  TPOHAnalysis = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    SCBBS: TQuery;
    Qtemp: TQuery;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  POHAnalysis: TPOHAnalysis;

implementation

uses Main1;

{$R *.dfm}

procedure TPOHAnalysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TPOHAnalysis.FormCreate(Sender: TObject);
var i:integer;
begin
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
  
end;

procedure TPOHAnalysis.FormDestroy(Sender: TObject);
begin
  POHAnalysis:=nil;
end;

procedure TPOHAnalysis.Button1Click(Sender: TObject);
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
  GXLB:=CBX3.Text;
  if ((GXLB='A') or (GXLB='B')) then
    DepGXLB:='A'
  else
    DepGXLB:=GXLB;
  with SCBBS do
  begin
    Active:=false;
    SQL.Clear;
    Sql.Add('if object_id(''tempdb..#MonSCBBSPOH'') is not null');
    Sql.Add('begin   drop table #MonSCBBSPOH end');
    Sql.Add('select * into #MonSCBBSPOH');
    Sql.Add('from (');
    Sql.Add('     select  BDepartment.DepName,BDepartment.GXLB,''5.Actual'' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay');
    Sql.Add('     from SCBBS');
    Sql.Add('     left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and SCBBS.GXLB='''+GXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+''' and BDepartment.YN=1');
    Sql.Add('     group by BDepartment.DepName,BDepartment.GXLB,datepart(day, SCBB.SCDate)');
    Sql.Add('     union  all');
    Sql.Add('     select BDepartment.DepName,BDepartment.GXLB,''5.Actual'' as SB,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay');
    Sql.Add('     from SCBBS');
    Sql.Add('     left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and SCBBS.GXLB='''+GXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    Sql.Add('     group by BDepartment.DepName ,BDepartment.GXLB');
    Sql.Add('     union all');
    Sql.Add('     select DepName,GXLB,''1.Hours'' as SB,Avg(SCRL.SCGS) as Qty,datepart(day, SCBB.SCDate)  as NDay   from (');
    Sql.Add('     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    Sql.Add('     from SCBB');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and BDepartment.GXLB='''+DepGXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    Sql.Add('     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    Sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    Sql.Add('     Group by DepName,GXLB,datepart(day, SCBB.SCDate)');
    Sql.Add('     union all');
    Sql.Add('     select DepName,GXLB,''1.Hours'' as SB,Sum(SCRL.SCGS) as Qty,32 as NDay   from ( ');
    Sql.Add('     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    Sql.Add('     from SCBB');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and BDepartment.GXLB='''+DepGXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    Sql.Add('     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    Sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    Sql.Add('     Group by DepName,GXLB');
    Sql.Add('     union all');
    Sql.Add('     select DepName,GXLB,''2.PrdHours'' as SB,Avg(SCRL.SCGS1) as Qty,datepart(day, SCBB.SCDate)  as NDay   from (');
    Sql.Add('     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    Sql.Add('     from SCBB');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and BDepartment.GXLB='''+DepGXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    Sql.Add('     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    Sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    Sql.Add('     Group by DepName,GXLB,datepart(day, SCBB.SCDate)');
    Sql.Add('     union all');
    Sql.Add('     select DepName,GXLB,''2.PrdHours'' as SB,Sum(SCRL.SCGS1) as Qty,32 as NDay   from (');
    Sql.Add('     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate ');
    Sql.Add('     from SCBB ');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and BDepartment.GXLB='''+DepGXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    Sql.Add('     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    Sql.Add('     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
    Sql.Add('     Group by DepName,GXLB ');
    Sql.Add('     union all');
    Sql.Add('     select DepName,GXLB,''4.PrdWorkers'' as SB,Avg(RSCQ.CQQty) as Qty,datepart(day, SCBB.SCDate)  as NDay   from (');
    Sql.Add('     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB');
    Sql.Add('     ,SCBB.SCDate');
    Sql.Add('     from SCBB ');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and BDepartment.GXLB='''+DepGXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    Sql.Add('     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    Sql.Add('     left join RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.DepNo=SCBB.Depno');
    Sql.Add('     Group by DepName,GXLB,datepart(day, SCBB.SCDate)');
    Sql.Add('     union all');
    Sql.Add('     select DepName,GXLB,''4.PrdWorkers'' as SB,Sum(RSCQ.CQQty) as Qty,32 as NDay   from (');
    Sql.Add('     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate');
    Sql.Add('     from SCBB');
    Sql.Add('     left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
    Sql.Add('     '''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('     and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('     and BDepartment.GXLB='''+DepGXLB+''' ');
    Sql.Add('     and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1');
    Sql.Add('     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    Sql.Add('     left join RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.DepNo=SCBB.Depno');
    Sql.Add('     Group by DepName,GXLB');
    Sql.Add('     ) SCBBS ');
    Sql.Add('order by SCBBS.DepName,SCBBS.GXLB,SCBBS.NDay');
    Sql.Add('alter table #MonSCBBSPOH');
    Sql.Add('alter column Qty float null');
    Sql.Add('insert into #MonSCBBSPOH');
    Sql.Add('Select A1.DepName,A1.GXLB,''6.POH'' as SB,Round(A1.Qty/IsNull(A4.Qty,A2.Qty)/IsNull(A5.Qty,9999.000),4) as Qty,A1.NDay');
    Sql.Add('from (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''5.Actual'' ) A1');
    Sql.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''1.Hours'' and IsNull(Qty,0)>0 ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB and A1.NDay=A2.NDay ');
    Sql.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''2.PrdHours'' and IsNull(Qty,0)>0 ) A4 on A1.DepName=A4.Depname and A1.GXLB=A4.GXLB and A1.NDay=A4.NDay');
    Sql.Add('left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=''4.PrdWorkers'' and IsNull(Qty,0)>0 ) A5 on A1.DepName=A5.Depname and A1.GXLB=A5.GXLB and A1.NDay=A5.NDay');
    SQL.Add('');
    Sql.Add('select DepName,Sum(T1) as T1,Sum(T2) as T2 ,Sum(T3) as T3  from (');
    Sql.Add('select POH.DepName,POH.Qty as POH,IEPOH.Qty as IEPOH');
    Sql.Add(',case when (POH.Qty/IEPOH.Qty)*100>100.5 then 1 else 0 end as T1');
    Sql.Add(',case when (POH.Qty/IEPOH.Qty)*100>=99.5 and (POH.Qty/IEPOH.Qty)*100<=100.5  then 1 else 0 end as T2');
    Sql.Add(',case when (POH.Qty/IEPOH.Qty)*100<99.5 then 1 else 0 end as T3');
    Sql.Add('from (');
    Sql.Add('select #MonSCBBSPOH.* from #MonSCBBSPOH where SB=''6.POH'' ) POH');
    Sql.Add('Left join (');
    Sql.Add('     select BDepartment.DepName,BDepartment.GXLB,''7.IE POH'' as SB ');
    Sql.Add('     ,(select convert(varchar(10),Round(Avg(POH),4))  as POH from ( ');
    Sql.Add('     select SCBBS.SCBH,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH from SCBBS');
    Sql.Add('     inner join DDZL on DDZL.DDBH=SCBBS.SCBH');
    Sql.Add('     inner join  SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao');
    Sql.Add('     where SCBBS.GXLB='''+DepGXLB+''' and SCBBS.ProNo=SCBB.ProNo Group by SCBBS.SCBH )  A )  Qty');
    Sql.Add('     ,datepart(day, SCBB.SCDate)  as NDay');
    Sql.Add('from SCBB');
    Sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
    Sql.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    Sql.Add(''''+Formatdatetime('yyyy/MM/dd',sDate)+'''and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    Sql.Add('and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add('and BDepartment.GXLB='''+DepGXLB+''' ');
    Sql.Add('and BDepartment.GSBH='''+main.Edit2.Text+'''  and BDepartment.YN=1 )  IEPOH  on POH.DepName=IEPOH.Depname and POH.GXLB=IEPOH.GXLB and POH.NDay=IEPOH.NDay');
    Sql.Add('where POH.DepName like ''%'+Edit1.Text+'%''');
    Sql.Add(') SCBBS');
    Sql.Add('Group by DepName');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TPOHAnalysis.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,CountDep:integer;

begin
  if SCBBS.Active then
  begin
    if SCBBS.recordcount=0 then
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
    SCBBS.First;
    CountDep:=1;
    while   not   SCBBS.Eof   do
    begin
       for CountDep:=1 to SCBBS.fieldcount do
       begin
          eclApp.Cells(CountDep,1):=SCBBS.fields[CountDep-1].FieldName;
          SCBBS.Next;
       end;

    end;
    SCBBS.First;
    j:=1;
    while   not   SCBBS.Eof   do
    begin
       for CountDep:=1 to SCBBS.RecordCount do
       begin
          eclApp.Cells(1,CountDep+1):=SCBBS.FieldByName('DepName').AsString;
          eclApp.Cells(2,CountDep+1):=SCBBS.FieldByName('T1').AsString;
          eclApp.Cells(3,CountDep+1):=SCBBS.FieldByName('T2').AsString;
          eclApp.Cells(4,CountDep+1):=SCBBS.FieldByName('T3').AsString;
          SCBBS.Next;
       end;
    end;
    for k:=1 to 4 do
    begin
    eclApp.range[eclApp.cells[1,1],eclApp.cells[4,SCBBS.RecordCount+1]].borders[k].linestyle:=1;
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
