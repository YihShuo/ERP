unit DAOSTOCK_new1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls,comobj,
  Menus,ehlibBDE, ShellAPI ,DBGridEhImpExp , DateUtils, Buttons;

type
  TLastSizeR=record
   CLBH:string;
   IsSizR:array [0..39] of Boolean;
end;
//
type
  TDAOSTOCK = class(TForm)
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
    LastSizQ: TQuery;
    TabSheet3: TTabSheet;
    qry3: TQuery;
    ds3: TDataSource;
    dbgrdh3: TDBGridEh;
    TabSheet4: TTabSheet;
    dbgrdh4: TDBGridEh;
    ds4: TDataSource;
    qry4: TQuery;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    CheckBox1: TCheckBox;
    btn_Print_Kho: TBitBtn;
    btn_Print_Tong: TBitBtn;
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
    procedure dbgrdh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure RB3Click(Sender: TObject);
    procedure btn_Print_KhoClick(Sender: TObject);
    procedure btn_Print_TongClick(Sender: TObject);
  private
    XXCC:array of string;
    LastSizeR:array of TLastSizeR;
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
    procedure DBGridInit();
    procedure GetDateParam();
    function CheckLastMonthEnding():boolean;
    procedure OutputExcel(Query:TQuery);
    procedure Last_Size_Range_Init();
  public
    { Public declarations }
  end;

var
  DAOSTOCK: TDAOSTOCK;
  TCLBH:string;
  TLCRY:string;

implementation

uses  main1, DAOSTOCK_Det1, FunUnit, DAOstock_Print1, DAOstock_PrintTong1;

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
procedure TDAOSTOCK.GetDateParam();
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

procedure TDAOSTOCK.DBGridInit();
var i:integer;
    objColumn:TColumnEh;
begin
    DS1.DataSet:=nil;
    DS2.DataSet:=nil;
    DS3.DataSet:=nil;
    DS4.DataSet:=nil;
    for i:=3 to DBGrdh1.Columns.Count-1 do
    begin
      if DBGrdh1.Columns[3]<>nil then
         DBGrdh1.Columns[3].Destroy;
      if DBGrdh2.Columns[3]<>nil then
         DBGrdh2.Columns[3].Destroy;
      if DBGrdh3.Columns[4]<>nil then
         DBGrdh3.Columns[4].Destroy;
      if DBGrdh4.Columns[3]<>nil then
         DBGrdh4.Columns[3].Destroy;
    end;
    //
    with Qtemp1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Siz from LastSize where LB=''03'' ');
      if RB2.Checked=true then
      SQL.Add(' and len(Siz)<=6 ');
      if RB3.Checked=true then
      SQL.Add(' and len(Siz)>6 ');
      SQL.Add(' order by case when len(Siz)<=6 then 1 else 2 end, Siz asc ');
      Active:=true;
      if RecordCount>0 then
      begin
        setlength(XXCC,RecordCount);
        for i:=0 to RecordCount-1 do
        begin
          XXCC[i]:=FieldByName('Siz').AsString;
          //
          objColumn:=DBGrdh1.Columns.Add;
          objColumn.FieldName:='['+FieldByName('Siz').AsString+']';
          objColumn.Title.Caption:='尺碼|'+'['+FieldByName('Siz').AsString+']';
          if length(FieldByName('Siz').AsString)<=6 then
            objColumn.Width:=42
          else
            objColumn.Width:=70;
          if Copy(FieldByName('Siz').AsString,1,1)=' ' then
          objColumn.Color:=clyellow;
          objColumn.Checkboxes:=False;
          //
          objColumn:=DBGrdh2.Columns.Add;
          objColumn.FieldName:='['+FieldByName('Siz').AsString+']';
          objColumn.Title.Caption:='尺碼|'+'['+FieldByName('Siz').AsString+']';
          if length(FieldByName('Siz').AsString)<=6 then
            objColumn.Width:=42
          else
            objColumn.Width:=70;
          if Copy(FieldByName('Siz').AsString,1,1)=' ' then
          objColumn.Color:=clyellow;
          objColumn.Checkboxes:=False;
          //
          objColumn:=DBGrdh3.Columns.Add;
          objColumn.FieldName:='['+FieldByName('Siz').AsString+']';
          objColumn.Title.Caption:='尺碼|'+'['+FieldByName('Siz').AsString+']';
          if length(FieldByName('Siz').AsString)<=6 then
            objColumn.Width:=42
          else
            objColumn.Width:=70;
          if Copy(FieldByName('Siz').AsString,1,1)=' ' then
          objColumn.Color:=clyellow;
          objColumn.Checkboxes:=False;
          //
          objColumn:=DBGrdh4.Columns.Add;
          objColumn.FieldName:='['+FieldByName('Siz').AsString+']';
          objColumn.Title.Caption:='尺碼|'+'['+FieldByName('Siz').AsString+']';
          if length(FieldByName('Siz').AsString)<=6 then
            objColumn.Width:=42
          else
            objColumn.Width:=70;
          if Copy(FieldByName('Siz').AsString,1,1)=' ' then
          objColumn.Color:=clyellow;
          objColumn.Checkboxes:=False;
          //
          Next;
        end;
      end else
      begin
         setlength(XXCC,0);
      end;
      Active:=false;
    end;
    DS1.DataSet:=qry1;
    DS2.DataSet:=qry2;
    DS3.DataSet:=qry3;
    DS4.DataSet:=qry4;
end;

procedure TDAOSTOCK.btn1Click(Sender: TObject);
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

 //目前庫存
 if PageControl1.ActivePage=TabSheet1 then
 begin
   with Qry1 do
   begin
      Active:=false;
      SQL.Clear;
      sql.add('  if object_id(''tempdb..#CLZLKC_Last'') is not null  ');
      sql.add('begin   drop table #CLZLKC_Last end   ');
      SQL.Add('select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into #CLZLKC_Last from (');
      SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
      SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
      SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.SFL in (''1'',''2'') and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      if CBX1.Text <> '' then
        SQL.Add('  and LTRK.CKBH='''+CBX1.Text+''' ');
      SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ ');
      SQL.Add('  Union All ');
      SQL.Add('  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where KCYEAR='''+ayear+''' and KCMonth='''+amonth+'''  and CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  ');
      if CBX1.Text <> '' then
        SQL.Add('  and CKBH='''+CBX1.Text+''' ')
      else
        SQL.Add('  and CKBH not like ''%#L'' ');
      SQL.Add('  ) as tmpRKTLFL ');
      SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
      SQL.Add('left join ( ');
      SQL.Add('   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where KCYEAR='''+ayear+''' and KCMonth='''+amonth+'''  and CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  ');
      if CBX1.Text <> '' then
        SQL.Add('  and CKBH='''+CBX1.Text+''' ');
      SQL.Add('   ) as LastKC on NowKC.CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC.SIZ');
      SQL.Add('left join ( ');
      SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
      SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.SFL in (''1'',''2'') and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      if CBX1.Text <> '' then
        SQL.Add('  and LTRK.CKBH='''+CBX1.Text+'''  ');
      SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ');
      SQL.Add('left join ( ');
      SQL.Add('   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
      SQL.Add('   where LTLLSS.LLNO=LTLL.LLNO and isnull(LTLL.flowflag,'''') <>''X'' and LTLL.CFMID<>''NO'' and LTLL.SFL in (''1'',''2'') and LTLL.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')   and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      if CBX1.Text <> '' then
        SQL.Add(' and LTLL.CKBH='''+CBX1.Text+''' ');
      SQL.Add('   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
      //
      SQL.Add('select #CLZLKC_Last.CLBH,CLZL.YWPM, SUM(Qty) as Total,');
      for i:=0 to High(XXCC) do
      begin
        SQL.Add('   Max(case when SIZ='''+XXCC[i]+''' then Qty end) as ''['+XXCC[i]+']'', ');
      end;
      SQL.Add('     CLZL.CQDH, CLZL.DWBH ');
      SQL.Add('from #CLZLKC_Last  ');
      SQL.Add('left join CLZL on CLZL.cldh=#CLZLKC_Last.CLBH  where 1=1 ');
      if EditMatNo.Text<>'' then
        SQL.Add('and #CLZLKC_Last.CLBH like '''+EditMatNo.Text+'%'' ');
      if EditMatNM.Text<>'' then
        SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
      SQL.Add('Group by #CLZLKC_Last.CLBH,CLZL.YWPM,CLZL.CQDH,CLZL.DWBH ');
      if CheckBox1.Checked then
        SQL.Add('HAVING SUM(Qty) > 0 ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
 end else if PageControl1.ActivePage=TabSheet2 then
 begin
   with Qry2 do
   begin
      Active:=false;
      SQL.Clear;
      sql.add('  if object_id(''tempdb..#CLZLKC_LastK'') is not null  ');
      sql.add('begin   drop table #CLZLKC_LastK end   ');
      SQL.Add('select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty into #CLZLKC_LastK from (');
      SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
      SQL.Add('  select LTRK.CKBH+''#L'' as CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
      SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.SFL=''2''  and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      if CBX1.Text <> '' then
        SQL.Add(' and LTRK.CKBH='''+CBX1.Text+''' ');
      SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ ');
      SQL.Add('  Union All ');
      SQL.Add('  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where KCYEAR='''+ayear+''' and KCMonth='''+amonth+'''  and CKBH in (Select CKBH+''#L'' from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')   ');
      if CBX1.Text <> '' then
        SQL.Add(' and CKBH='''+CBX1.Text+'#L'' ')
      else
        SQL.Add(' and CKBH like ''%#L'' ');
      SQL.Add('  ) as tmpRKTLFL ');
      SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
      SQL.Add('left join ( ');
      SQL.Add('   select LTLL.CKBH+''#L'' as CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
      SQL.Add('   where LTLLSS.LLNO=LTLL.LLNO and isnull(LTLL.flowflag,'''') <>''X'' and LTLL.CFMID<>''NO'' and LTLL.SFL=''2'' and LTLL.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')   and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      if CBX1.Text <> '' then
        SQL.Add(' and LTLL.CKBH='''+CBX1.Text+''' ');
      SQL.Add('   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH  and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ ');
      //
      SQL.Add('select #CLZLKC_LastK.CLBH,CLZL.YWPM, SUM(Qty) as Total,');
      for i:=0 to High(XXCC) do
      begin
        SQL.Add('   Max(case when SIZ='''+XXCC[i]+''' then Qty end) as ''['+XXCC[i]+']'', ');
      end;
      SQL.Add('CLZL.CQDH, CLZL.DWBH ');
      SQL.Add('from #CLZLKC_LastK  ');
      SQL.Add('left join CLZL on CLZL.cldh=#CLZLKC_LastK.CLBH where 1=1 ');
      if EditMatNo.Text<>'' then
        SQL.Add('and #CLZLKC_LastK.CLBH like '''+EditMatNo.Text+'%'' ');
      if EditMatNM.Text<>'' then
        SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
      SQL.Add('Group by #CLZLKC_LastK.CLBH,CLZL.YWPM,CLZL.CQDH, CLZL.DWBH ');
      if CheckBox1.Checked then
        SQL.Add('HAVING SUM(Qty) > 0 ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
 end else if PageControl1.ActivePage=TabSheet3 then
 begin
   with Qry3 do
   begin
      Active:=false;
      sql.Clear;
      sql.add(' if object_id(''tempdb..#CLZLKC_LastOut'') is not null  ');
      sql.add('begin   drop table #CLZLKC_LastOut end   ');
      sql.add('select NowKC.DepID,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) as Qty into #CLZLKC_LastOut  from ( ');
      sql.add('select DepID,CLBH,SIZ,Sum(LLQty) as NowLLQty from (');
      sql.add('select LTLL.DepID,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
      sql.add('where LTLLSS.LLNO=LTLL.LLNO and isnull(LTLL.flowflag,'''') <>''X'' and LTLL.CFMID<>''NO'' and LTLL.SFL=''1'' and LTLL.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''  ');
      if CBX1.Text <> '' then
        SQL.Add(' and LTLL.CKBH='''+CBX1.Text+''' ');
      sql.add('Group by LTLL.DepID,LTLLSS.CLBH,LTLLSS.SIZ ');
      sql.add('Union All ');
      sql.add('select DepID,CLBH,SIZ,QTY as LastRem from Lastmonth_Out where KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' and CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  ');
      if CBX1.Text <> '' then
        SQL.Add(' and CKBH='''+CBX1.Text+''' ');
      sql.add(') as tmpRKTLFL ');
      sql.add('group by DepID,CLBH,SIZ ) as NowKC ');
      sql.add('left join ( select LTRK.DepID,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK  ');
      sql.add('where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.SFL=''1'' and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')   and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      if CBX1.Text <> '' then
        SQL.Add(' and LTRK.CKBH='''+CBX1.Text+''' ');
      sql.add('Group by LTRK.DepID,LTRKSS.CLBH,LTRKSS.SIZ )  RK on NowKC.DepID=RK.DepID and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ ');
      sql.add('where  IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) >0 ');
      //
      SQL.Add('select BDepartment.DepName,#CLZLKC_LastOut.CLBH,CLZL.YWPM, SUM(Qty) as Total,');
      for i:=0 to High(XXCC) do
      begin
        SQL.Add('   Max(case when SIZ='''+XXCC[i]+''' then Qty end) as ''['+XXCC[i]+']'', ');
      end;
      SQL.Add('CLZL.CQDH ');
      SQL.Add('from #CLZLKC_LastOut  ');
      SQL.Add('left join CLZL on CLZL.cldh=#CLZLKC_LastOut.CLBH  ');
      SQL.Add('Left join BDepartment on BDepartment.ID=#CLZLKC_LastOut.DepID ');
      SQL.Add('where 1=1 ');
      if EditMatNo.Text<>'' then
        SQL.Add('and #CLZLKC_LastOut.CLBH like '''+EditMatNo.Text+'%'' ');
      if EditMatNM.Text<>'' then
        SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
      SQL.Add('Group by BDepartment.DepName ,#CLZLKC_LastOut.CLBH,CLZL.YWPM,CLZL.CQDH ');
      //FuncObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
 end else if PageControl1.ActivePage=TabSheet4 then
 begin
   with Qry4 do
   begin
      Active:=false;
      SQL.Clear;
      sql.add('  if object_id(''tempdb..#CLZLKC_BO'') is not null  ');
      sql.add('begin   drop table #CLZLKC_BO end   ');
      SQL.Add('   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as Qty into #CLZLKC_BO from LTLLSS,LTLL ');
      SQL.Add('   where LTLLSS.LLNO=LTLL.LLNO and isnull(LTLL.flowflag,'''') <>''X'' and LTLL.CFMID<>''NO'' and LTLL.SFL in (''2'') and LTLL.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  ');
      //SQL.Add('   and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      SQL.Add('   and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) <= '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' ');
      if CBX1.Text <> '' then
        SQL.Add(' and LTLL.CKBH='''+CBX1.Text+''' ');
      SQL.Add('   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ');
      SQL.Add('select #CLZLKC_BO.CLBH,CLZL.YWPM, SUM(Qty) as Total,');
      for i:=0 to High(XXCC) do
      begin
        SQL.Add('   Max(case when SIZ='''+XXCC[i]+''' then Qty end) as ''['+XXCC[i]+']'', ');
      end;
      SQL.Add('CLZL.CQDH ');
      SQL.Add('from #CLZLKC_BO  ');
      SQL.Add('left join CLZL on CLZL.cldh=#CLZLKC_BO.CLBH  where 1=1 ');
      if EditMatNo.Text<>'' then
        SQL.Add('and #CLZLKC_BO.CLBH like '''+EditMatNo.Text+'%'' ');
      if EditMatNM.Text<>'' then
        SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
      SQL.Add('Group by #CLZLKC_BO.CLBH,CLZL.YWPM,CLZL.CQDH ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
 end;
 //
 Qtemp1.Active:=false;
end;

procedure TDAOSTOCK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDAOSTOCK.FormDestroy(Sender: TObject);
begin
  DAOSTOCK:=nil;
end;

procedure TDAOSTOCK.S1Click(Sender: TObject);
begin
  DAOSTOCK_Det:=TDAOSTOCK_Det.create(self);
  DAOSTOCK_Det.show;
end;
//Last Size Range
procedure TDAOSTOCK.Last_Size_Range_Init();
  function GetDBGridTitle_Siz(str:string):string;
  begin
    result:=Copy(str,2,length(str)-2);
  end;
var i,j:integer;
begin
  //
  Qtemp1.Active:=false;
  Qtemp1.SQL.Clear;
  Qtemp1.SQL.Add('Select CLBH from LastSizeR where LB=''03'' Group by CLBH Order by CLBH ');
  Qtemp1.Active:=true;
  //
  if Qtemp1.RecordCount>0 then
  begin
    setlength(LastSizeR,Qtemp1.RecordCount);
    for i:=0  to Qtemp1.RecordCount-1 do
    begin
      LastSizeR[i].CLBH:=Qtemp1.FieldByName('CLBH').AsString;
      Qtemp1.Next;
    end;
    Qtemp1.Active:=false;
    for i:=0 to  High(LastSizeR) do
    begin
      Qtemp1.Active:=false;
      Qtemp1.SQL.Clear;
      Qtemp1.SQL.Add('Select SIZ from LastSizeR where CLBH='''+LastSizeR[i].CLBH+''' and LB=''03'' Order by SIZ ');
      Qtemp1.Active:=true;
      for j:=3 to dbgrdh1.Columns.Count-1 do
      begin
         if Qtemp1.Locate('SIZ',GetDBGridTitle_Siz(dbgrdh1.Columns[j].FieldName),[]) =true then
           LastSizeR[i].IsSizR[j-3]:=true
         else
           LastSizeR[i].IsSizR[j-3]:=false;
      end;
    end;
    //
  end;
  Qtemp1.Active:=false;
  //
end;
//
procedure TDAOSTOCK.FormCreate(Sender: TObject);
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
    sql.add('select CKBH from LastKCCK ');
    sql.add('where GSBH='''+main.edit2.text+''' and LB=''03'' ');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    while not eof do
    begin
      CBX1.items.add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.Items.Add('');
    CBX1.itemindex:=0;
    active:=false;
  end;
  DTP1.Date:=NDate;
  GetDateParam();
  DBGridInit();
  //
  //Last_Size_Range_Init();
end;

procedure TDAOSTOCK.OutputExcel(Query:TQuery);
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
procedure TDAOSTOCK.bbt6Click(Sender: TObject);
begin
  if PageControl1.ActivePage=TabSheet1 then
    OutputExcel(Qry1);
  if PageControl1.ActivePage=TabSheet2 then
    OutputExcel(Qry2);
  if PageControl1.ActivePage=TabSheet3 then
    OutputExcel(Qry3);
  if PageControl1.ActivePage=TabSheet4 then
    OutputExcel(Qry4);
end;

procedure TDAOSTOCK.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

//檢查上個月是否結算資料
function TDAOSTOCK.CheckLastMonthEnding():boolean;
begin

 with  Qtemp1 do
 begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCYear from LASTMONTH where KCYear='''+LastYear+''' and KCMonth='''+LastMon+''' and CKBH='''+CBX1.Text+''' ');
    Active:=true;
    //是否有上個月資料
    if RecordCount=0 then
      result:=false
    else
      result:=true;
    active:=false;
 end;

end;

procedure TDAOSTOCK.BB2Click(Sender: TObject);
var IsCal:boolean;
begin
  if CBX1.Text = '' then begin
    showmessage('Please Choice CKBH !');
    exit;
  end;
  //
  with Qtemp1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 KCYEAR,YN from LASTMONTH where KCYEAR='''+LastYear+''' and KCMONTH='''+LastMon+''' and CKBH='''+CBX1.Text+'''  ');
    Active:=true;
    if FieldByName('YN').AsString='2' then
    begin
      Showmessage('Can''t be recalculated: '+LastYear+'/'+LastMon );
      Active:=false;
      Exit;
    end;
    Active:=false;
  end;
  //
  if CheckLastMonthEnding()=true then
  begin
    if  Messagedlg(Pchar('Are you sure caluate Monthly Ending?'),mtInformation,[mbYES,mbNo],0)=mrYes then
      IsCal:=true
    else
      IsCal:=false;
  end else
  begin
    IsCal:=true;
  end;
  if IsCal=true then
  begin
      //產生月結資料
      with  Qtemp1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from LASTMONTH where KCYear='''+LastYear+''' and KCMonth='''+LastMon+''' and CKBH='''+CBX1.Text+''' and YN=''1'' ');
        SQL.Add('Insert into LASTMONTH ');
        SQL.Add('select '''+LastYear+''' as KCYear,'''+LastMon+''' as KCMonth,NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,'''+main.Edit1.Text+''',GetDate(),''1''  from (');
        SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
        SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
        SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.CKBH='''+CBX1.Text+''' and LTRK.SFL in (''1'',''2'') and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ ');
        SQL.Add('  Union All ');
        SQL.Add('  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH='''+CBX1.Text+''' and KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+'''  and CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') ) as tmpRKTLFL ');
        SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
        SQL.Add('left join ( ');
        SQL.Add('   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH='''+CBX1.Text+''' and KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+''' and CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') ) as LastKC on NowKC.CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC.SIZ');
        SQL.Add('left join ( ');
        SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
        SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.CKBH='''+CBX1.Text+''' and LTRK.SFL in (''1'',''2'') and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ');
        SQL.Add('left join ( ');
        SQL.Add('   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
        SQL.Add('   where LTLLSS.LLNO=LTLL.LLNO and isnull(LTLL.flowflag,'''') <>''X'' and LTLL.CFMID<>''NO'' and LTLL.CKBH='''+CBX1.Text+''' and LTLL.SFL in (''1'',''2'') and LTLL.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
        ExecSQL();
        //月結全部庫存
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from LASTMONTH where KCYear='''+LastYear+''' and KCMonth='''+LastMon+''' and CKBH='''+CBX1.Text+'#L'' and YN=''1'' ');
        SQL.Add('Insert into LASTMONTH ');
        SQL.Add('select '''+LastYear+''' as KCYear,'''+LastMon+''' as KCMonth,'''+CBX1.Text+'#L'',NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,'''+main.Edit1.Text+''',GetDate(),''1''  from (');
        SQL.Add('  select CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
        SQL.Add('  select LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
        SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.CKBH='''+CBX1.Text+''' and LTRK.SFL=''2'' and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('  Group by LTRKSS.CLBH,LTRKSS.SIZ ');
        SQL.Add('  Union All ');
        SQL.Add('  select CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH='''+CBX1.Text+'#L'' and KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+''' and CKBH in (Select CKBH+''#L'' from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  ) as tmpRKTLFL ');
        SQL.Add('  group by CLBH,SIZ) as NowKC');
        SQL.Add('left join ( ');
        SQL.Add('   select LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
        SQL.Add('   where LTLLSS.LLNO=LTLL.LLNO and isnull(LTLL.flowflag,'''') <>''X'' and LTLL.CFMID<>''NO'' and LTLL.CKBH='''+CBX1.Text+''' and LTLL.SFL=''2'' and LTLL.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''') and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        SQL.Add('   Group by LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
       // sql.Add('  group by NowKC.CLBH,NowKC.SIZ');
        ExecSQL();

        //月結流通在外
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from LASTMONTH_Out where KCYear='''+LastYear+''' and KCMonth='''+LastMon+''' and CKBH='''+CBX1.Text+''' ');
        SQL.Add('Insert into LASTMONTH_Out ');
        sql.add('select '''+CBX1.Text+''' as CKBH,'''+LastYear+''' as KCYear,'''+LastMon+''' as KCMonth,NowKC.DepID,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) as Qty,'''+main.Edit1.Text+''',GetDate(),''1''  from ( ');
        sql.add('select DepID,CLBH,SIZ,Sum(LLQty) as NowLLQty from (');
        sql.add('select LTLL.DepID,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
        sql.add('where LTLLSS.LLNO=LTLL.LLNO and isnull(LTLL.flowflag,'''') <>''X'' and LTLL.CFMID<>''NO'' and LTLL.CKBH='''+CBX1.Text+''' and LTLL.SFL=''1'' and LTLL.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+'''  ');
        sql.add('Group by LTLL.DepID,LTLLSS.CLBH,LTLLSS.SIZ ');
        sql.add('Union All ');
        sql.add('select DepID,CLBH,SIZ,QTY as LastRem from Lastmonth_Out where  KCYEAR='''+LastYear2+''' and KCMonth='''+LastMon2+''' and CKBH='''+CBX1.Text+''' and CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  ) as tmpRKTLFL ');
        sql.add('group by DepID,CLBH,SIZ ) as NowKC ');
        sql.add('left join ( select LTRK.DepID,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK  ');
        sql.add('where LTRKSS.RKNO=LTRK.RKNO and isnull(LTRK.flowflag,'''') <>''X'' and LTRK.CKBH='''+CBX1.Text+''' and LTRK.SFL=''1''  and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''03'' and GSBH='''+main.Edit2.Text+''')  and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' ');
        sql.add('Group by LTRK.DepID,LTRKSS.CLBH,LTRKSS.SIZ )  RK on NowKC.DepID=RK.DepID and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ ');
        sql.add('where  IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) >0 ');
        ExecSQL();
      end;

      if CheckLastMonthEnding()=true then LastMonth.Caption:='';
      showmessage('Tinh het / Calculate over!');
  end;

end;

procedure TDAOSTOCK.DTP1Change(Sender: TObject);
begin
  //取得時間參數
  GetDateParam();
end;
//
procedure TDAOSTOCK.dbgrdh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var i:integer;
begin
  //
  if qry1.FieldByName('CLBH').AsString<>'' then
  begin
    DBGrdh1.Canvas.Brush.Color:=clLime;
    for i:=0 to High(LastSizeR) do
    begin
      if LastSizeR[i].CLBH = qry1.FieldByName('CLBH').AsString then
      begin
         if DataCol>=3 then
           if LastSizeR[i].IsSizR[DataCol-3]=true then
             DBGrdh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
         break;
      end;
    end;
  end;
  //
end;

procedure TDAOSTOCK.dbgrdh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var i:integer;
begin
  //
  if qry2.FieldByName('CLBH').AsString<>'' then
  begin
    dbgrdh2.Canvas.Brush.Color:=clLime;
    for i:=0 to High(LastSizeR) do
    begin
      if LastSizeR[i].CLBH = qry2.FieldByName('CLBH').AsString then
      begin
         if DataCol>=3 then
           if LastSizeR[i].IsSizR[DataCol-3]=true then
             dbgrdh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
         break;
      end;
    end;
  end;
  //

end;

procedure TDAOSTOCK.dbgrdh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var i:integer;
begin
  if qry4.FieldByName('CLBH').AsString<>'' then
  begin
    DBGrdh4.Canvas.Brush.Color:=clLime;
    for i:=0 to High(LastSizeR) do
    begin
      if LastSizeR[i].CLBH = qry4.FieldByName('CLBH').AsString then
      begin
         if DataCol>=3 then
           if LastSizeR[i].IsSizR[DataCol-3]=true then
             DBGrdh4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
         break;
      end;
    end;
  end;
end;

procedure TDAOSTOCK.RB1Click(Sender: TObject);
begin
  DBGridInit();
end;

procedure TDAOSTOCK.RB2Click(Sender: TObject);
begin
  DBGridInit();
end;

procedure TDAOSTOCK.RB3Click(Sender: TObject);
begin
  DBGridInit();
end;

procedure TDAOSTOCK.btn_Print_KhoClick(Sender: TObject);
begin
  with Qtemp1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH,Memo from LastKCCK WHERE GSBH='''+main.Edit2.text+''' and LB =''03'' and CKBH ='''+CBX1.Text+''' order by CKBH');
    active:=true;
  end;
  DAOstock_Print:=TDAOstock_Print.Create(self);
  DAOstock_Print.quickrep1.prepare;
  DAOstock_Print.QRLabel39.Caption:=Qtemp1.FieldByName('CKBH').AsString+'-'+Qtemp1.FieldByName('Memo').AsString;
  DAOstock_Print.QRLabel35.Caption:=main.Edit2.text;
  DAOstock_Print.PageN.caption:=inttostr(DAOstock_Print.quickrep1.QRPrinter.pagecount);
  DAOstock_Print.quickrep1.preview;
  DAOstock_Print.free;
end;

procedure TDAOSTOCK.btn_Print_TongClick(Sender: TObject);
begin
  with Qtemp1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH,Memo from LastKCCK WHERE GSBH='''+main.Edit2.text+''' and LB =''03'' and CKBH ='''+CBX1.Text+''' order by CKBH');
    active:=true;
  end;
  DAOstock_PrintTong:=TDAOstock_PrintTong.Create(self);
  DAOstock_PrintTong.quickrep1.prepare;
  DAOstock_PrintTong.QRLabel39.Caption:=Qtemp1.FieldByName('CKBH').AsString+'-'+Qtemp1.FieldByName('Memo').AsString;
  DAOstock_PrintTong.QRLabel35.Caption:=main.Edit2.text;
  DAOstock_PrintTong.PageN.caption:=inttostr(DAOstock_PrintTong.quickrep1.QRPrinter.pagecount);
  DAOstock_PrintTong.quickrep1.preview;
  DAOstock_PrintTong.free;
end;

end.
