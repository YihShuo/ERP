unit OutsoleSTOCK_new1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls,comobj,
  Menus,ehlibBDE, ShellAPI ,DBGridEhImpExp , DateUtils, Buttons;

type                                                                                                  
  TOutsoleSizeR=record
   CLBH:string;
   IsSizR:array [0..39] of Boolean;
end;
//
type
  TOutsoleSTOCK = class(TForm)
    panel2: TPanel;
    qry1: TQuery;
    ds1: TDataSource;
    EditMatNo: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    pm1: TPopupMenu;
    S1: TMenuItem;
    dlgSave1: TSaveDialog;
    Qtemp1: TQuery;
    Label3: TLabel;
    EditMatNM: TEdit;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    CBX1: TComboBox;
    Label2: TLabel;
    Panel1: TPanel;
    LastMonth: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    bbt6: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgrdh1: TDBGridEh;
    qry2: TQuery;
    ds2: TDataSource;
    dbgrdh2: TDBGridEh;
    OutsoleSizQ: TQuery;
    TabSheet3: TTabSheet;
    qry3: TQuery;
    ds3: TDataSource;
    dbgrdh3: TDBGridEh;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    OutsoleSizeR:array of TOutsoleSizeR;
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
    { Private declarations }
    procedure GetDateParam();
    function CheckOutsoleMonthEnding():boolean;
    procedure OutputExcel(Query:TQuery);
    procedure Outsole_Size_Range_Init();
  public
    { Public declarations }
  end;

var
  OutsoleSTOCK: TOutsoleSTOCK;
  TCLBH:string;
  TLCRY:string;

implementation

uses  main1, OutsoleSTOCK_Det1, FunUnit;

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
procedure TOutsoleSTOCK.GetDateParam();
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
  if CheckOutsoleMonthEnding()=false then
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

procedure TOutsoleSTOCK.btn1Click(Sender: TObject);
var year,month,day:word;
    i:integer;
    ayear,amonth:string;
begin
  if LastMonth.Caption<>'' then
  begin
    if Dialogs.MessageDlg('Not yet Month Ending Calculate, quantity not exact.'+#13#10+' Chua co ket thuc hang thang, so luong khong chinh xac.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;
  end;
  decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;

  with Qtemp1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select Siz as XXCC from ( ');
    SQL.Add('Select Siz from OutsoleSizeR  Group by Siz ');
    SQL.Add('Union all ');
    SQL.Add('Select XXCC as Siz from Gender  Group by XXCC ) OutsoleSizeR Group by Siz order by Siz ');
    Active:=true;
  end;
 //目前庫存
 if PageControl1.ActivePage=TabSheet1 then
 begin
   with Qry1 do
   begin
      Active:=false;
      SQL.Clear;
      sql.add('  if object_id('+''''+'tempdb..#CLZLKC_Outsole'+''''+') is not null  ');
      sql.add('begin   drop table #CLZLKC_Outsole end   ');
      SQL.Add('select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,OutsoleKC.OutsoleRem,RK.RKQty,LL.LLQty into #CLZLKC_Outsole from (');
      SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
      SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
      SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
      SQL.Add('  Union All ');
      SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+''' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as tmpRKTLFL ');
      SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
      SQL.Add('left join ( ');
      SQL.Add('   select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+''' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as OutsoleKC on NowKC.CKBH=OutsoleKC.CKBH and NowKC.CLBH=OutsoleKC.CLBH and NowKC.SIZ=OutsoleKC.SIZ');
      SQL.Add('left join ( ');
      SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
      SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ  ) RK on NowKC.CKBH=RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ');
      SQL.Add('left join ( ');
      SQL.Add('   select OSLL.CKBH,OSLLSS.CLBH,OSLLSS.SIZ,SUM(OSLLSS.Qty) as LLQty from OSLLSS,OSLL ');
      SQL.Add('   where OSLLSS.LLNO=OSLL.LLNO  and OSLL.CFMID<>''NO'' and OSLL.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      SQL.Add('   Group by OSLL.CKBH,OSLLSS.CLBH,OSLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
      SQL.Add('select #CLZLKC_Outsole.CLBH,CLZL.YWPM, SUM(Qty) as Total,');
      for i:=0 to Qtemp1.RecordCount-1 do
      begin
        SQL.Add('   Max(case when SIZ='''+Qtemp1.FieldByName('XXCC').AsString+''' then Qty end) as ''['+Qtemp1.FieldByName('XXCC').AsString+']'', ');
        QTemp1.Next;
      end;
      SQL.Add('CLZL.CQDH ');
      SQL.Add('from #CLZLKC_Outsole  ');
      SQL.Add('left join CLZL on CLZL.cldh=#CLZLKC_Outsole.CLBH  where 1=1 ');
      if EditMatNo.Text<>'' then
        SQL.Add('and #CLZLKC_Outsole.CLBH like '''+EditMatNo.Text+'%'' ');
      if EditMatNM.Text<>'' then
        SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
      SQL.Add('Group by #CLZLKC_Outsole.CLBH,CLZL.YWPM,CLZL.CQDH ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
 end else if PageControl1.ActivePage=TabSheet2 then
 begin
   with Qry2 do
   begin
      Active:=false;
      SQL.Clear;
      sql.add('  if object_id('+''''+'tempdb..#CLZLKC_OutsoleK'+''''+') is not null  ');
      sql.add('begin   drop table #CLZLKC_OutsoleK end   ');
      SQL.Add('select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0) as Qty into #CLZLKC_OutsoleK from (');
      SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
      SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
      SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''NEWL'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
      SQL.Add('  Union All ');
      SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+'#L'' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as tmpRKTLFL ');
      SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
      SQL.Add('select #CLZLKC_OutsoleK.CLBH,CLZL.YWPM, SUM(Qty) as Total,');
      for i:=0 to Qtemp1.RecordCount-1 do
      begin
        SQL.Add('   Max(case when SIZ='''+Qtemp1.FieldByName('XXCC').AsString+''' then Qty end) as ''['+Qtemp1.FieldByName('XXCC').AsString+']'', ');
        QTemp1.Next;
      end;
      SQL.Add('CLZL.CQDH ');
      SQL.Add('from #CLZLKC_OutsoleK  ');
      SQL.Add('left join CLZL on CLZL.cldh=#CLZLKC_OutsoleK.CLBH where 1=1 ');
      if EditMatNo.Text<>'' then
        SQL.Add('and #CLZLKC_OutsoleK.CLBH like '''+EditMatNo.Text+'%'' ');
      if EditMatNM.Text<>'' then
        SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
      SQL.Add('Group by #CLZLKC_OutsoleK.CLBH,CLZL.YWPM,CLZL.CQDH ');
      funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
 end else if PageControl1.ActivePage=TabSheet3 then
 begin
   with Qry3 do
   begin
      Active:=false;
      sql.Clear;
      sql.add('  if object_id('+''''+'tempdb..#CLZLKC_OutsoleOut'+''''+') is not null  ');
      sql.add('begin   drop table #CLZLKC_OutsoleOut end   ');
      sql.add('select NowKC.DepID,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) as Qty into #CLZLKC_OutsoleOut  from ( ');
      sql.add('select DepID,CLBH,SIZ,Sum(LLQty) as NowLLQty from (');
      sql.add('select OSLL.DepID,OSLLSS.CLBH,OSLLSS.SIZ,SUM(OSLLSS.Qty) as LLQty from OSLLSS,OSLL ');
      sql.add('where OSLLSS.LLNO=OSLL.LLNO  and OSLL.CFMID<>''NO'' and OSLL.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''  ');
      sql.add('Group by OSLL.DepID,OSLLSS.CLBH,OSLLSS.SIZ ');
      sql.add('Union All ');
      sql.add('select DepID,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth_Out where CKBH='''+CBX1.Text+''' and  KCYEAR='''+ayear+''' and KCMonth='''+amonth+''') as tmpRKTLFL ');
      sql.add('group by DepID,CLBH,SIZ ) as NowKC ');
      sql.add('left join ( select OSRK.DepID,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK  ');
      sql.add('where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''Outsole'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      sql.add('Group by OSRK.DepID,OSRKSS.CLBH,OSRKSS.SIZ )  RK on NowKC.DepID=RK.DepID and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ ');
      sql.add('where  IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) >0 ');
      SQL.Add('select #CLZLKC_OutsoleOut.DepID,#CLZLKC_OutsoleOut.CLBH,CLZL.YWPM, SUM(Qty) as Total,');
      for i:=0 to Qtemp1.RecordCount-1 do
      begin
        SQL.Add('   Max(case when SIZ='''+Qtemp1.FieldByName('XXCC').AsString+''' then Qty end) as ''['+Qtemp1.FieldByName('XXCC').AsString+']'', ');
        QTemp1.Next;
      end;
      SQL.Add('CLZL.CQDH ');
      SQL.Add('from #CLZLKC_OutsoleOut  ');
      SQL.Add('left join CLZL on CLZL.cldh=#CLZLKC_OutsoleOut.CLBH where 1=1 ');
      if EditMatNo.Text<>'' then
        SQL.Add('and #CLZLKC_OutsoleOut.CLBH like '''+EditMatNo.Text+'%'' ');
      if EditMatNM.Text<>'' then
        SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
      SQL.Add('Group by #CLZLKC_OutsoleOut.DepID,#CLZLKC_OutsoleOut.CLBH,CLZL.YWPM,CLZL.CQDH ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
 end;
 //
 Qtemp1.Active:=false;
end;

procedure TOutsoleSTOCK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOutsoleSTOCK.FormDestroy(Sender: TObject);
begin
  OutsoleSTOCK:=nil;
end;

procedure TOutsoleSTOCK.S1Click(Sender: TObject);
begin
      OutsoleSTOCK_Det:=TOutsoleSTOCK_Det.create(self);
      OutsoleSTOCK_Det.show;
end;
//Outsole Size Range
procedure TOutsoleSTOCK.Outsole_Size_Range_Init();
  function GetDBGridTitle_Siz(str:string):string;
  begin
    result:=Copy(str,2,length(str)-2);
  end;
var i,j:integer;
begin
  //
  Qtemp1.Active:=false;
  Qtemp1.SQL.Clear;
  Qtemp1.SQL.Add('Select CLBH from OutsoleSizeR Group by CLBH Order by CLBH ');
  Qtemp1.Active:=true;
  //
  if Qtemp1.RecordCount>0 then
  begin
    setlength(OutsoleSizeR,Qtemp1.RecordCount);
    for i:=0  to Qtemp1.RecordCount-1 do
    begin
      OutsoleSizeR[i].CLBH:=Qtemp1.FieldByName('CLBH').AsString;
      Qtemp1.Next;
    end;
    Qtemp1.Active:=false;
    for i:=0 to  High(OutsoleSizeR) do
    begin
      Qtemp1.Active:=false;
      Qtemp1.SQL.Clear;
      Qtemp1.SQL.Add('Select SIZ from OutsoleSizeR where CLBH='''+OutsoleSizeR[i].CLBH+''' Order by SIZ ');
      Qtemp1.Active:=true;
      for j:=3 to 42 do
      begin
         if Qtemp1.Locate('SIZ',GetDBGridTitle_Siz(dbgrdh1.Columns[j].FieldName),[]) =true then
           OutsoleSizeR[i].IsSizR[j-3]:=true
         else
           OutsoleSizeR[i].IsSizR[j-3]:=false;
      end;
    end;
    //
  end;
  Qtemp1.Active:=false;
  //
end;
//
procedure TOutsoleSTOCK.FormCreate(Sender: TObject);
var NDate:TDate;
begin
  with Qtemp1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    while not eof do
    begin
      CBX1.items.add(fieldbyname('CKBH').AsString);
      next;
    end;
    CBX1.itemindex:=0;
    active:=false;
  end;
  DTP1.Date:=NDate;
  GetDateParam();
  Outsole_Size_Range_Init();
end;

procedure TOutsoleSTOCK.OutputExcel(Query:TQuery);
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
procedure TOutsoleSTOCK.bbt6Click(Sender: TObject);
begin
  if PageControl1.ActivePage=TabSheet1 then
    OutputExcel(Qry1);
  if PageControl1.ActivePage=TabSheet2 then
    OutputExcel(Qry2);
end;

procedure TOutsoleSTOCK.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

//檢查上個月是否結算資料
function TOutsoleSTOCK.CheckOutsoleMonthEnding():boolean;
begin

 with  Qtemp1 do
 begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCYear from OutsoleMONTH where CKBH='''+CBX1.Text+''' and KCYear='''+LastYear+''' and KCMonth='''+LastMon+''' ');
    Active:=true;
    //是否有上個月資料
    if RecordCount=0 then
      result:=false
    else
      result:=true;
    active:=false;
 end;

end;

procedure TOutsoleSTOCK.BB2Click(Sender: TObject);
begin
 //if  Messagedlg(Pchar('Are you sure caluate Monthly Ending?'),mtInformation,[mbYES,mbNo],0)=mrYes then
  //檢查是否月結資料是否已經存在
  if CheckOutsoleMonthEnding()=false then
  begin
      //產生月結資料
      with  Qtemp1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Insert into OutsoleMONTH ');
        SQL.Add('select '''+LastYear+''' as KCYear,'''+LastMon+''' as KCMonth,NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,'''+main.Edit1.Text+''',GetDate(),''1''  from (');
        SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
        SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
        SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
        SQL.Add('  Union All ');
        SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+''' and KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+''' ) as tmpRKTLFL ');
        SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
        SQL.Add('left join ( ');
        SQL.Add('   select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+''' and KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+''' ) as OutsoleKC on NowKC.CKBH=OutsoleKC.CKBH and NowKC.CLBH=OutsoleKC.CLBH and NowKC.SIZ=OutsoleKC.SIZ');
        SQL.Add('left join ( ');
        SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
        SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ  ) RK on NowKC.CKBH=RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ');
        SQL.Add('left join ( ');
        SQL.Add('   select OSLL.CKBH,OSLLSS.CLBH,OSLLSS.SIZ,SUM(OSLLSS.Qty) as LLQty from OSLLSS,OSLL ');
        SQL.Add('   where OSLLSS.LLNO=OSLL.LLNO  and OSLL.CFMID<>''NO'' and OSLL.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSLL.CFMDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('   Group by OSLL.CKBH,OSLLSS.CLBH,OSLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL();
        //月結全部庫存
        Active:=false;
        SQL.Clear;
        SQL.Add('Insert into OutsoleMONTH ');
        //20161101  IsNull(NowKC.NowRKQty,0) -> IsNull(Sum(NowKC.NowRKQty),0)
        SQL.Add('Select '''+LastYear+''' as KCYear,'''+LastMon+''' as KCMonth,'''+CBX1.Text+'#L'',NowKC.CLBH,NowKC.SIZ,IsNull(Sum(NowKC.NowRKQty),0),'''+main.Edit1.Text+''',GetDate(),''1''  from (');
        SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
        SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
        SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''NEWL'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
        SQL.Add('  Union All ');
        SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+'#L'' and KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+''' ) as tmpRKTLFL ');
        SQL.Add('  group by CKBH,CLBH,SIZ) as NowKC');
        sql.Add('  group by NowKC.CLBH,NowKC.SIZ');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL();

        //月結流通在外
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from OutsoleMONTH_Out where KCYear='''+LastYear+''' and KCMonth='''+LastMon+''' and CKBH='''+CBX1.Text+''' ');
        SQL.Add('Insert into OutsoleMONTH_Out ');
        sql.add('select '''+CBX1.Text+''' as CKBH,'''+LastYear+''' as KCYear,'''+LastMon+''' as KCMonth,NowKC.DepID,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) as Qty,'''+main.Edit1.Text+''',GetDate(),''1''  from ( ');
        sql.add('select DepID,CLBH,SIZ,Sum(LLQty) as NowLLQty from (');
        sql.add('select OSLL.DepID,OSLLSS.CLBH,OSLLSS.SIZ,SUM(OSLLSS.Qty) as LLQty from OSLLSS,OSLL ');
        sql.add('where OSLLSS.LLNO=OSLL.LLNO  and OSLL.CFMID<>''NO'' and OSLL.CKBH='''+CBX1.Text+''' and convert(smalldatetime,convert(varchar,OSLL.CFMDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+'''  ');
        sql.add('Group by OSLL.DepID,OSLLSS.CLBH,OSLLSS.SIZ ');
        sql.add('Union All ');
        sql.add('select DepID,CLBH,SIZ,QTY as LastRem from Outsolemonth_Out where  KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+''' and CKBH='''+CBX1.Text+''' ) as tmpRKTLFL ');
        sql.add('group by DepID,CLBH,SIZ ) as NowKC ');
        sql.add('left join ( select OSRK.DepID,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK  ');
        sql.add('where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''Outsole'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        sql.add('Group by OSRK.DepID,OSRKSS.CLBH,OSRKSS.SIZ )  RK on NowKC.DepID=RK.DepID and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ ');
        sql.add('where  IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) >0 ');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL();
      end;

      if CheckOutsoleMonthEnding()=true then LastMonth.Caption:='';
      showmessage('Tinh het / Calculate over!');

  end else
  begin
    showmessage(' Co ket thuc hang thang /Have Monthly Ending!');
  end;

end;

procedure TOutsoleSTOCK.DTP1Change(Sender: TObject);
begin
  //取得時間參數
  GetDateParam();
end;
//
procedure TOutsoleSTOCK.dbgrdh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var i:integer;
begin
  //
  if qry1.FieldByName('CLBH').AsString<>'' then
  begin
    DBGrdh1.Canvas.Brush.Color:=clLime;
    for i:=0 to High(OutsoleSizeR) do
    begin
      if OutsoleSizeR[i].CLBH = qry1.FieldByName('CLBH').AsString then
      begin
         if DataCol>=3 then
           if OutsoleSizeR[i].IsSizR[DataCol-3]=true then
             DBGrdh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
         break;
      end;
    end;
  end;
  //
end;

procedure TOutsoleSTOCK.dbgrdh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var i:integer;
begin
  //
  if qry2.FieldByName('CLBH').AsString<>'' then
  begin
    dbgrdh2.Canvas.Brush.Color:=clLime;
    for i:=0 to High(OutsoleSizeR) do
    begin
      if OutsoleSizeR[i].CLBH = qry2.FieldByName('CLBH').AsString then
      begin
         if DataCol>=3 then
           if OutsoleSizeR[i].IsSizR[DataCol-3]=true then
             dbgrdh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
         break;
      end;
    end;
  end;
  //

end;

end.
