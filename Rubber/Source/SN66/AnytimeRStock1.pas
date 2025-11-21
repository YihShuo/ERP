unit AnytimeRStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,
  Buttons, Comobj;

type
  TAnytimeRStock = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    MJCB: TComboBox;
    CLCB: TComboBox;
    Button1: TButton;
    DTP1: TDateTimePicker;
    tmpQry: TQuery;
    WHSDQry: TQuery;
    WHSDDS: TDataSource;
    SizeQ: TQuery;
    Panel2: TPanel;
    LastMonth: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    bbt6: TBitBtn;
    ColorClassQry: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    WHSDIOQry: TQuery;
    WHSDIODS: TDataSource;
    WHSDIOQryMJBH: TStringField;
    WHSDIOQrySIZE: TStringField;
    WHSDIOQryLastRem: TCurrencyField;
    WHSDIOQryRKQty: TIntegerField;
    WHSDIOQryLLQty: TIntegerField;
    WHSDIOQryRemQty: TCurrencyField;
    WHSDIOQryEnglishName: TStringField;
    DateRB1: TRadioButton;
    DateRB2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
  private
    ColorNo:String;
    LastMon:string; //上個月(Month)
    LastYear:string;//上個月(Year)
    STLastMonDate:string; //上個月初
    EDLastMonDate:string; //上個月底
    //
    LastMon2:string;//上上一個月(Month) 月結累積加總計算
    LastYear2:string;//上上一個月(Year)
    //
    STDate:string; //當月月初
    EDDate:string; //今天
    //
    InitScanData:string;//盤點初始日期點
    { Private declarations }
    procedure GetDateParam();
    function CheckLastMonthEnding():boolean;
    procedure OutputExcel(Query:TQuery);
    procedure Execute_WHSDQry();
    procedure Execute_WHSDIOQry();
  public
    { Public declarations }
  end;

var
  AnytimeRStock: TAnytimeRStock;

implementation
  uses main1,FunUnit;
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
//取得時間參數
procedure TAnytimeRStock.GetDateParam();
var myYear, myMonth, myDay : Word;
    tmpDate:TDate;
begin
  //取得上個月起始和結束日期
  tmpDate:=incmonth(DTP1.Date,-1);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon:=Format('%.2d',[myMonth]);
  LastYear:=Format('%.4d',[myYear]);
  STLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //月初日期
  EDLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, DaysOfItsMonth(tmpDate)));//月底
  if CheckLastMonthEnding()=false then
    LastMonth.Caption:=STLastMonDate+'-'+EDLastMonDate+' Khong co ket thuc hang thang!'
  else
    LastMonth.Caption:='';
  //取得上上個月用來月結資料累積加總
  tmpDate:=incmonth(DTP1.Date,-2);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon2:=Format('%.2d',[myMonth]);
  LastYear2:=Format('%.4d',[myYear]);
  //取得當月初和今天日期
  DecodeDate(DTP1.Date, myYear, myMonth, myDay);
  STDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //月初日期
  EDDate:=FormatDateTime('YYYY/MM/DD', DTP1.Date);//基礎日
end;

//檢查上個月是否結算資料
function TAnytimeRStock.CheckLastMonthEnding():boolean;
begin

 with  tmpQry do
 begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCYear from '+main.LIY_DD+'.dbo.WorkWHSD_Month WorkWHSD_Month where   KCYear='''+LastYear+''' and KCMonth='''+LastMon+''' ');
    Active:=true;
    //是否有上個月資料
    if RecordCount=0 then
      result:=false
    else
      result:=true;
    active:=false;
 end;

end;
procedure TAnytimeRStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TAnytimeRStock.FormDestroy(Sender: TObject);
begin
  AnytimeRStock:=nil;
end;

procedure TAnytimeRStock.FormCreate(Sender: TObject);
var i:integer;
begin

  with tmpQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select bz2 as mjbh');
    SQL.Add('from '+main.LIY_DD+'.dbo.mjzl');
    SQL.Add('where IsNull(bz2,'''')<>''''');
    SQL.Add('group by bz2');
    SQL.Add('order by bz2');
    active:=true;
    MJCB.Items.Clear;
    MJCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      MJCB.Items.Add(fieldbyname('mjbh').asstring);
      Next;
    end;
    active:=false;
  end;

  with ColorClassQry do
  begin
    active:=false;
    SQL.clear;
    SQL.add('select EnglishName,ColorNo');
    SQL.add('from '+main.LIY_DD+'.dbo.colorclass');
    SQL.add('where IsNull(EnglishName,'''')<>''''');
    SQL.add('group by EnglishName,ColorNo');
    active:=true;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      CLCB.Items.Add(fieldbyname('EnglishName').asstring);
      Next;
    end;
  end;
  DTP1.Date:=Date();
  GetDateParam();
  if main.Edit2.Text='TR2' then
    InitScanData:='and WorkScan.ScanDate>=''2020/7/13 00:00:00'' ';
end;

procedure TAnytimeRStock.CLCBChange(Sender: TObject);
begin
  ColorClassQry.locate('englishname',clcb.Text,[]);
  ColorNo:=ColorClassQry.fieldbyname('colorno').Value;
end;

procedure TAnytimeRStock.Execute_WHSDQry();
var i:integer;
    DateFieldName:String;
begin
  //stock size 庫存量
  if DateRB1.Checked=true then DateFieldName:='UserDate';
  //scan size 庫存量
  if DateRB2.Checked=true then DateFieldName:='ScanDate';

  //查詢曾經掃描過的size
  with SizeQ do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select distinct SIZE from (');
    SQL.Add('select RModel.MJBH,RModel.ColorNo,RModel.SIZE,WorkWHSD_Month.Qty as LastRem,WorkScanI.RKQty,WorkScanO.LLQty,IsNull(WorkWHSD_Month.Qty,0)+IsNull(WorkScanI.RKQty,0)-IsNull(WorkScanO.LLQty,0) as RemQty from (');
    SQL.Add('select distinct workPlan.MJBH,workPlan.colorNo,workplans.SIZE from '+main.LIY_DD+'.dbo.workPlan workPlan,'+main.LIY_DD+'.dbo.workplans workplans where workplan.workID=workplans.workID and workplan.CQDH='''+main.Edit2.Text+''' ) RModel');
    SQL.Add('left join (select MJBH,ColorNo,SIZE,Qty from '+main.LIY_DD+'.dbo.WorkWHSD_Month WorkWHSD_Month where KCYEAR='''+LastYear+''' and KCMONTH='''+LastMon+''') WorkWHSD_Month on WorkWHSD_Month.MJBH=RModel.MJBH and RModel.ColorNo=WorkWHSD_Month.ColorNo and RModel.SIZE=WorkWHSD_Month.SIZE');
    SQL.Add('left join (');
    SQL.Add('select MJBH,ColorNo,SIZE,Sum(Qty) as RKQty from (');
    SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
    SQL.Add('where WorkScan.InOut=''I'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STDate+''' and '''+EDDate+'''  '+InitScanData);
    SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE ) WorkScanI on WorkScanI.MJBH=RModel.MJBH and WorkScanI.ColorNo=RModel.ColorNo and WorkScanI.SIZE=RModel.SIZE');
    SQL.Add('left join (');
    SQL.Add('select MJBH,ColorNo,SIZE ,Sum(Qty) as LLQty from (');
    SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
    SQL.Add('where WorkScan.InOut=''O'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STDate+''' and '''+EDDate+''' '+InitScanData);
    SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE  ) WorkScanO on WorkScanO.MJBH=RModel.MJBH and WorkScanO.ColorNo=RModel.ColorNo and WorkScanO.SIZE=RModel.SIZE');
    SQL.Add(' ) KCWorkScan');
    SQL.Add('where (LastRem is not null or RKQty is not null or LLQty is not null)');
    if mjcb.Text<>'ALL' then
      SQL.Add(' and KCWorkScan.MJBH='''+MJCB.Text+'''');
    if CLCB.Text<>'ALL' then
      SQL.Add(' and KCWorkScan.ColorNo='''+ColorNo+'''');
    SQL.Add('order by SIZE ');
    //Showmessage(sql.Text);
    Active:=true;
  end;

  // 查詢庫存量
  with WHSDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select MJBH,EnglishName ');
    SQL.Add(',SUM(RemQty) as TotalQty ');
    for i:=1 to SizeQ.recordcount do
    begin
      SQL.Add('  ,Max(Case when SIZE='''+SizeQ.FieldByName('SIZE').AsString+''' then RemQty end ) as ''['+SizeQ.FieldByName('SIZE').AsString+']'' ');
      SizeQ.Next;
    end;
    SQL.Add('from (');
    SQL.Add('select *  from (');
    SQL.Add('select RModel.MJBH,RModel.ColorNo,colorclass.EnglishName,RModel.SIZE,WorkWHSD_Month.Qty as LastRem,WorkScanI.RKQty,WorkScanO.LLQty,IsNull(WorkWHSD_Month.Qty,0)+IsNull(WorkScanI.RKQty,0)-IsNull(WorkScanO.LLQty,0) as RemQty from (');
    SQL.Add('select distinct workPlan.MJBH,workPlan.colorNo,workplans.SIZE from '+main.LIY_DD+'.dbo.workPlan workPlan,'+main.LIY_DD+'.dbo.workplans workplans where workplan.workID=workplans.workID and workplan.CQDH='''+main.Edit2.Text+''' ) RModel');
    SQL.Add('left join (select MJBH,ColorNo,SIZE,Qty from '+main.LIY_DD+'.dbo.WorkWHSD_Month WorkWHSD_Month where KCYEAR='''+LastYear+''' and KCMONTH='''+LastMon+''') WorkWHSD_Month on WorkWHSD_Month.MJBH=RModel.MJBH and RModel.ColorNo=WorkWHSD_Month.ColorNo and RModel.SIZE=WorkWHSD_Month.SIZE');
    SQL.Add('left join (');
    SQL.Add('select MJBH,ColorNo,SIZE,Sum(Qty) as RKQty from (');
    SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
    SQL.Add('where WorkScan.InOut=''I'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STDate+''' and '''+EDDate+''' '+InitScanData);
    SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE ) WorkScanI on WorkScanI.MJBH=RModel.MJBH and WorkScanI.ColorNo=RModel.ColorNo and WorkScanI.SIZE=RModel.SIZE');
    SQL.Add('left join (');
    SQL.Add('select MJBH,ColorNo,SIZE ,Sum(Qty) as LLQty from (');
    SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
    SQL.Add('where WorkScan.InOut=''O'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STDate+''' and '''+EDDate+''' '+InitScanData);
    SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE  ) WorkScanO on WorkScanO.MJBH=RModel.MJBH and WorkScanO.ColorNo=RModel.ColorNo and WorkScanO.SIZE=RModel.SIZE');
    SQl.Add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on colorclass.ColorNo=RModel.ColorNo ');
    SQL.Add(' ) KCWorkScan');
    SQL.Add('where (LastRem is not null or RKQty is not null or LLQty is not null)');
    if mjcb.Text<>'ALL' then
      SQL.Add(' and KCWorkScan.MJBH='''+MJCB.Text+'''');
    if CLCB.Text<>'ALL' then
      SQL.Add(' and KCWorkScan.ColorNo='''+ColorNo+'''');
    SQL.Add(' ) RKWorkScan Group by MJBH,EnglishName ');
    SQL.Add('order by  MJBH,EnglishName ');
    //Showmessage(sql.Text);
    Active:=true;
  end;
  //
  DBGridEh1.columns[0].width:=105;
  DBGridEh1.columns[0].Title.Caption:='型體|Model ID';
  DBGridEh1.columns[1].width:=66;
  DBGridEh1.columns[1].Title.Caption:='顏色|Color';
  DBGridEh1.columns[2].width:=66;
  DBGridEh1.columns[2].Title.Caption:='總數量|Total Qty';
  DBGridEh1.Columns[2].DisplayFormat:='##,#0';
  DBGridEh1.Columns[2].Footer.FieldName:='TotalQty';
  DBGridEh1.Columns[2].Footer.ValueType:=fvtSum;
  DBGridEh1.Columns[2].Footer.DisplayFormat:='##,#0';
  for i:=3 to WHSDQry.fieldcount-1 do
  begin
    DBGridEh1.columns[i].width:=43;
    DBGridEh1.columns[i].Title.Caption:='Size尺寸|'+WHSDQry.Fields[i].FieldName;
    if Pos(' ',WHSDQry.Fields[i].FieldName)>0 then DBGridEh1.columns[i].Title.Color:=clYellow;
    DBGridEh1.Columns[i].DisplayFormat:='##,#0';
  end;
end;

procedure TAnytimeRStock.Execute_WHSDIOQry();
var  DateFieldName:String;
begin
  if DateRB1.Checked=true then DateFieldName:='UserDate';
  if DateRB2.Checked=true then DateFieldName:='ScanDate';
  //
  with WHSDIOQry do
  begin
    Active:=false;
    SQL.Clear;
(*    SQL.Add('select *  from ( ');
SQL.Add('select RModel.MJBH,colorclass.EnglishName,RModel.SIZE,WorkWHSD_Month.Qty as LastRem,WorkScanI.RKQty,WorkScanO.LLQty,IsNull(WorkWHSD_Month.Qty,0)+IsNull(WorkScanI.RKQty,0)-IsNull(WorkScanO.LLQty,0) as RemQty from ( ');
SQL.Add('select distinct workPlan.MJBH,workPlan.colorNo,workplans.SIZE from TB_DD.dbo.workPlan workPlan,TB_DD.dbo.workplans workplans where workplan.workID=workplans.workID and workplan.CQDH=''HR2'' ) RModel ');
SQL.Add('left join (select MJBH,ColorNo,SIZE,Qty from TB_DD.dbo.WorkWHSD_Month WorkWHSD_Month where KCYEAR=''2024'' and KCMONTH=''09'') WorkWHSD_Month on WorkWHSD_Month.MJBH=RModel.MJBH and RModel.ColorNo=WorkWHSD_Month.ColorNo and RModel.SIZE=WorkWHSD_Month.SIZE ');
SQL.Add('left join ( ');
SQL.Add('select MJBH,ColorNo,SIZE,Sum(Qty) as RKQty from ( ');
SQL.Add('Select WorkScan.* from TB_DD.dbo.WorkScan WorkScan ');
SQL.Add('where WorkScan.InOut=''I'' and convert(smalldatetime,convert(varchar,WorkScan.UserDate,111)) between ''2024/10/01'' and ''2024/10/14'' ');
SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE ) WorkScanI on WorkScanI.MJBH=RModel.MJBH and WorkScanI.ColorNo=RModel.ColorNo and WorkScanI.SIZE=RModel.SIZE ');
SQL.Add('left join ( ');
SQL.Add('select MJBH,ColorNo,SIZE ,Sum(Qty) as LLQty from ( ');
SQL.Add('Select WorkScan.* from TB_DD.dbo.WorkScan WorkScan ');
SQL.Add('where WorkScan.InOut=''O'' and convert(smalldatetime,convert(varchar,WorkScan.UserDate,111)) between ''2024/10/01'' and ''2024/10/14'' ');
SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE  ) WorkScanO on WorkScanO.MJBH=RModel.MJBH and WorkScanO.ColorNo=RModel.ColorNo and WorkScanO.SIZE=RModel.SIZE ');
SQL.Add('left join TB_DD.dbo.colorclass colorclass on colorclass.ColorNo=RModel.ColorNo ');
SQL.Add(' ) KCWorkScan ');
SQL.Add('where (LastRem is not null or RKQty is not null or LLQty is not null) ');
SQL.Add('order by  MJBH,EnglishName,SIZE'); *)

    SQL.Add('select *  from (');
    SQL.Add('select RModel.MJBH,colorclass.EnglishName,RModel.SIZE,WorkWHSD_Month.Qty as LastRem,WorkScanI.RKQty,WorkScanO.LLQty,IsNull(WorkWHSD_Month.Qty,0)+IsNull(WorkScanI.RKQty,0)-IsNull(WorkScanO.LLQty,0) as RemQty from (');
    SQL.Add('select distinct workPlan.MJBH,workPlan.colorNo,workplans.SIZE from '+main.LIY_DD+'.dbo.workPlan workPlan,'+main.LIY_DD+'.dbo.workplans workplans where workplan.workID=workplans.workID and workplan.CQDH='''+main.Edit2.Text+''' ) RModel');
    SQL.Add('left join (select MJBH,ColorNo,SIZE,Qty from '+main.LIY_DD+'.dbo.WorkWHSD_Month WorkWHSD_Month where KCYEAR='''+LastYear+''' and KCMONTH='''+LastMon+''') WorkWHSD_Month on WorkWHSD_Month.MJBH=RModel.MJBH and RModel.ColorNo=WorkWHSD_Month.ColorNo and RModel.SIZE=WorkWHSD_Month.SIZE');
    SQL.Add('left join (');
    SQL.Add('select MJBH,ColorNo,SIZE,Sum(Qty) as RKQty from (');
    SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
    SQL.Add('where WorkScan.InOut=''I'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STDate+''' and '''+EDDate+''' '+InitScanData);
    SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE ) WorkScanI on WorkScanI.MJBH=RModel.MJBH and WorkScanI.ColorNo=RModel.ColorNo and WorkScanI.SIZE=RModel.SIZE');
    SQL.Add('left join (');
    SQL.Add('select MJBH,ColorNo,SIZE ,Sum(Qty) as LLQty from (');
    SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
    SQL.Add('where WorkScan.InOut=''O'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STDate+''' and '''+EDDate+'''  '+InitScanData);
    SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE  ) WorkScanO on WorkScanO.MJBH=RModel.MJBH and WorkScanO.ColorNo=RModel.ColorNo and WorkScanO.SIZE=RModel.SIZE');
    SQl.Add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on colorclass.ColorNo=RModel.ColorNo ');
    SQL.Add(' ) KCWorkScan');
    SQL.Add('where (LastRem is not null or RKQty is not null or LLQty is not null)');
    if MJCB.Text<>'ALL' then
      SQL.Add(' and KCWorkScan.MJBH='''+MJCB.Text+'''');
    if CLCB.Text<>'ALL' then
      SQL.Add(' and KCWorkScan.EnglishName='''+CLCB.Text+'''');
      SQL.Add('order by  MJBH,EnglishName,SIZE ');
    //SHOWmessage(sql.Text);
    Active:=true;
  end;

end;
//
procedure TAnytimeRStock.DTP1Change(Sender: TObject);
begin
  //取得時間參數
  GetDateParam();
end;

procedure TAnytimeRStock.bbt6Click(Sender: TObject);
begin
  if PageControl1.ActivePage=TabSheet1 then
    OutputExcel(WHSDQry);
  if PageControl1.ActivePage=TabSheet2 then
    OutputExcel(WHSDIOQry);
end;
procedure TAnytimeRStock.OutputExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query.Active=false then exit;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=0   to   Query.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
    end;
    //抬頭顏色
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,Query.fieldcount]].interior.color:=clyellow;
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,Query.fieldcount]].font.color:=clred;
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[Query.RecordCount+1,Query.fieldcount]].Borders.weight:=2;
    //
    Query.First;
    j:=2;
    while   not  Query.Eof   do
    begin
        for   i:=0   to   Query.fieldcount-1   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i].Value;
        end;
        Query.Next;
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
procedure TAnytimeRStock.Button1Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=0 then Execute_WHSDQry();
  if PageControl1.ActivePageIndex=1 then Execute_WHSDIOQry();
end;

procedure TAnytimeRStock.BB2Click(Sender: TObject);
var IsRunEndMonth:boolean;
    DateFieldName:String;
begin

  if DateRB1.Checked=true then DateFieldName:='UserDate';
  if DateRB2.Checked=true then DateFieldName:='ScanDate';

  IsRunEndMonth:=true;
  if CheckLastMonthEnding()=true then
  begin
    if Dialogs.MessageDlg('Calcuate Monthly Ending/ Co ket thuc hang thang', mtConfirmation, [mbYes, mbNo], 0) = mrNo then IsRunEndMonth:=false;
  end;
  if IsRunEndMonth=true then
  begin
    with tmpQry do
    begin
      Active:=false;
      SQL.Clear;
      (*SQL.Add('Delete from '+main.LIY_DD+'.dbo.WorkWHSD_Month where KCYEAR='''+LastYear+''' and KCMONTH='''+LastMon+''' and YN=1 ');
      SQL.Add('Insert into '+main.LIY_DD+'.dbo.WorkWHSD_Month ');
      SQL.Add('select '''+LastYear+''' as KCYEAR,'''+LastMon+''' as KCMONTH,MJBH,ColorNo,SIZE,Qty,'''+main.Edit1.Text+''',GetDate(),1 as YN   from (');
      SQL.Add('select RModel.MJBH,RModel..ColorNo,colorclass.EnglishName,RModel.SIZE,WorkWHSD_Month.Qty as LastRem,WorkScanI.RKQty,WorkScanO.LLQty,IsNull(WorkWHSD_Month.Qty,0)+IsNull(WorkScanI.RKQty,0)-IsNull(WorkScanO.LLQty,0) as Qty from (');
      SQL.Add('select distinct workPlan.MJBH,workPlan.colorNo,workplans.SIZE from '+main.LIY_DD+'.dbo.workPlan workPlan,'+main.LIY_DD+'.dbo.workplans workplans where workplan.workID=workplans.workID and workplan.CQDH='''+main.Edit2.Text+''' ) RModel');
      SQL.Add('left join (select MJBH,ColorNo,SIZE,Qty from '+main.LIY_DD+'.dbo.WorkWHSD_Month WorkWHSD_Month where KCYEAR='''+LastYear2+''' and KCMONTH='''+LastMon2+''') WorkWHSD_Month on WorkWHSD_Month.MJBH=RModel.MJBH and RModel.ColorNo=WorkWHSD_Month.ColorNo and RModel.SIZE=WorkWHSD_Month.SIZE');
      SQL.Add('left join (');
      SQL.Add('select MJBH,ColorNo,SIZE,Sum(Qty) as RKQty from (');
      SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
      SQL.Add('where WorkScan.InOut=''I'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' '+InitScanData);
      SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE ) WorkScanI on WorkScanI.MJBH=RModel.MJBH and WorkScanI.ColorNo=RModel.ColorNo and WorkScanI.SIZE=RModel.SIZE');
      SQL.Add('left join (');
      SQL.Add('select MJBH,ColorNo,SIZE ,Sum(Qty) as LLQty from (');
      SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
      SQL.Add('where WorkScan.InOut=''O'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' '+InitScanData);
      SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE  ) WorkScanO on WorkScanO.MJBH=RModel.MJBH and WorkScanO.ColorNo=RModel.ColorNo and WorkScanO.SIZE=RModel.SIZE');
      SQl.Add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on colorclass.ColorNo=RModel.ColorNo ');
      SQL.Add(' ) KCWorkScan');
      SQL.Add('where (LastRem is not null or RKQty is not null or LLQty is not null) and Qty>0');*)
      SQL.Add('Delete from '+main.LIY_DD+'.dbo.WorkWHSD_Month where KCYEAR='''+LastYear+''' and KCMONTH='''+LastMon+''' and YN=1  and CQDH='''+main.Edit2.Text+''' ');
      SQL.Add('Insert into '+main.LIY_DD+'.dbo.WorkWHSD_Month ');
      SQL.Add('select '''+LastYear+''' as KCYEAR,'''+LastMon+''' as KCMONTH,MJBH,ColorNo,SIZE,Qty,'''+main.Edit1.Text+''',GetDate(),1 as YN, '''+main.Edit2.Text+''' from (');
      SQL.Add('select RModel.MJBH,RModel..ColorNo,colorclass.EnglishName,RModel.SIZE,WorkWHSD_Month.Qty as LastRem,WorkScanI.RKQty,WorkScanO.LLQty,IsNull(WorkWHSD_Month.Qty,0)+IsNull(WorkScanI.RKQty,0)-IsNull(WorkScanO.LLQty,0) as Qty from (');
      SQL.Add('select distinct workPlan.MJBH,workPlan.colorNo,workplans.SIZE from '+main.LIY_DD+'.dbo.workPlan workPlan,'+main.LIY_DD+'.dbo.workplans workplans where workplan.workID=workplans.workID and workplan.CQDH='''+main.Edit2.Text+''' ) RModel');
      SQL.Add('left join (select MJBH,ColorNo,SIZE,Qty,CQDH from '+main.LIY_DD+'.dbo.WorkWHSD_Month WorkWHSD_Month where KCYEAR='''+LastYear2+''' and KCMONTH='''+LastMon2+''') WorkWHSD_Month on WorkWHSD_Month.MJBH=RModel.MJBH and RModel.ColorNo=WorkWHSD_Month.ColorNo and RModel.SIZE=WorkWHSD_Month.SIZE');
      SQL.Add('left join (');
      SQL.Add('select MJBH,ColorNo,SIZE,Sum(Qty) as RKQty from (');
      SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
      SQL.Add('where WorkScan.InOut=''I'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' '+InitScanData);
      if main.Edit2.Text='HR2' then
      SQL.Add('and UserID in(''001178'',''001194'')');
      if main.Edit2.Text='TR2' then
      SQL.Add('and UserID not in(''001178'',''001194'')');
      SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE ) WorkScanI on WorkScanI.MJBH=RModel.MJBH and WorkScanI.ColorNo=RModel.ColorNo and WorkScanI.SIZE=RModel.SIZE');
      SQL.Add('left join (');
      SQL.Add('select MJBH,ColorNo,SIZE ,Sum(Qty) as LLQty from (');
      SQL.Add('Select WorkScan.* from '+main.LIY_DD+'.dbo.WorkScan WorkScan');
      SQL.Add('where WorkScan.InOut=''O'' and convert(smalldatetime,convert(varchar,WorkScan.'+DateFieldName+',111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' '+InitScanData);
      if main.Edit2.Text='HR2' then
      SQL.Add('and UserID in(''001178'',''001194'')');
      if main.Edit2.Text='TR2' then
      SQL.Add('and UserID not in(''001178'',''001194'')');
      SQL.Add(') WorkScanI Group by MJBH,ColorNo,SIZE  ) WorkScanO on WorkScanO.MJBH=RModel.MJBH and WorkScanO.ColorNo=RModel.ColorNo and WorkScanO.SIZE=RModel.SIZE');
      SQl.Add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on colorclass.ColorNo=RModel.ColorNo ');
      SQL.Add(' ) KCWorkScan');
      SQL.Add('where (LastRem is not null or RKQty is not null or LLQty is not null) and Qty>0');
      //Showmessage(sql.Text);
      ExecSQL();
    end;
  end;
  if CheckLastMonthEnding()=true then LastMonth.Caption:='';
  showmessage('Tinh het / Calculate over!');
end;

end.
