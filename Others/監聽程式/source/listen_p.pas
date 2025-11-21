unit listen_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBTables,comobj,
  ComCtrls, Mask, DBCtrls, ShellAPI, Menus;

const
  WM_TRAYICON = WM_APP + 0;
type
  TMain = class(TForm)
    DBGrid1: TDBGrid;
    dayreport: TQuery;
    ds1: TDataSource;
    weekreport: TQuery;
    mrworkday: TQuery;
    mrdayoutput: TQuery;
    mrmonthoutput: TQuery;
    Database1: TDatabase;
    getdayrep1: TQuery;
    dq1: TQuery;
    tempQry: TQuery;
    Panel1: TPanel;
    nowdate: TDateTimePicker;
    Button1: TButton;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Close1: TMenuItem;
    Show1: TMenuItem;
    CheckBox1: TCheckBox;
    DailyRunEdit: TEdit;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Database1Login(Database: TDatabase; LoginParams: TStrings);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
  private
   AppDir:string;
   procedure RTOVFile_Run();
    { Private declarations }
  public
    IsCanClose:boolean;
    { Public declarations }
    procedure AddPaoServiceIcon(Action: DWORD);
    procedure WMTrayIcon(var message: TMessage);  message WM_TRAYICON;
  end;

var
  Main: TMain;
  xlsFileName:string;
  eclApp,WorkBook:olevariant;
  outok,i,j:integer;
  IconData:TNotifyIconData;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TMain.AddPaoServiceIcon(Action: DWORD);
begin
   ZeroMemory(@IconData, sizeof(TNOTIFYICONDATA));
   IconData.cbSize:=sizeof(TNOTIFYICONDATA);
   IconData.Wnd:=Handle;
   IconData.uID:=1;
   IconData.uFlags := NIF_MESSAGE or NIF_ICON or NIF_TIP;
   IconData.uCallbackMessage:=WM_TRAYICON;
   IconData.hIcon:=application.Icon.Handle;
   StrPCopy(IconData.szTip,application.Title);
   Shell_NotifyIcon(Action, @IconData);
end;
//
procedure TMain.WMTrayIcon(var message: TMessage);
var MousePos:Tpoint;
begin
  if message.LPARAM = WM_RBUTTONDOWN then
  begin
    SetActiveWindow(Handle);
    GetCursorPos(MousePos);
    PopupMenu1.Popup(MousePos.X, MousePos.Y);
  end;
end;

procedure TMain.RTOVFile_Run();
var
  h,m,s,ms:word;
  i,j:integer;
  y,mh,d:word;
  mc,dc:string;
begin
    if (Date()-nowdate.Date)>13 then
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Can not run before 13 Days RTOV File ');
      exit;
    end;

    decodedate(nowdate.date,y,mh,d);
    decodetime(time,h,m,s,ms);
    if mh <= 9 then
      mc := '0'+inttostr(mh)
    else
      mc := inttostr(mh);

    if d <= 9 then
        dc := '0'+inttostr(d)
    else
        dc := inttostr(d);

    //檔案名稱
    xlsfilename:='D:\Download\RTS\RTOV DATA-LYN'+inttostr(y)+mc+dc+'.xlsx';
    if FileExists(xlsfilename)=true then
       xlsfilename:='D:\Download\RTS\RTOV DATA-LYN'+inttostr(y)+mc+dc+'-'+FormatDatetime('HHNNSS',Time())+'.xlsx';
    //
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
    try
      WorkBook:=eclApp.workbooks.Add;
      eclapp.workbooks[1].sheets.add;
      eclapp.workbooks[1].sheets.add;
      eclapp.workbooks[1].sheets.add;
      eclapp.workbooks[1].sheets.add;
      {2011/12/15業務要求要加的一頁，把內外銷分開}
      eclapp.workbooks[1].sheets.add;
      {end edit }
      eclapp.workbooks[1].sheets[1].name:='Production';
      //20230410 從WORP 更新 YWDD.InSpectQty 品管單位需求
      dq1.Active:=false;
      dq1.SQL.Clear;
      dq1.SQL.Add('Update YWDD Set InSpectQty=Case when (IsNull(YWDD.InSpectQty,0)+A.inspectqty)<=YWDD.Qty then (IsNull(YWDD.InSpectQty,0)+A.inspectqty) else Qty end,');
      dq1.SQL.Add('                InSpectDate=Case when (A.inspectqty>0 and IsNull(YWDD.InSpectQty,0)<YWDD.Qty) then A.INSPECTDATE else YWDD.InspectDate end,');
      dq1.SQL.Add('				InUSERID=Case when (A.inspectqty>0 and IsNull(YWDD.InSpectQty,0)<YWDD.Qty) then A.InUSERID else YWDD.InUSERID end,');
      dq1.SQL.Add('				InUSERDATE=Case when (A.inspectqty>0 and IsNull(YWDD.InSpectQty,0)<YWDD.Qty) then A.INSPECTDATE else YWDD.InUSERDATE end');
      dq1.SQL.Add('from (');
      dq1.SQL.Add('Select WOPR.SCDate as INSPECTDATE,WOPR.SCBH as YSBH,Sum(Qty) as inspectqty,Max(UserID) as InUSERID');
      dq1.SQL.Add('From WOPR');
      dq1.SQL.Add('where GXLB=''AR'' and  CONVERT(char(10),WOPR.SCDate,111)='''+FormatDatetime('yyyy/MM/dd', nowdate.date)+''' ');
      dq1.SQL.Add('Group by WOPR.SCDate,WOPR.SCBH  ) A');
      dq1.SQL.Add('where YWDD.YSBH=A.YSBH');
      dq1.ExecSQL;
      //日報
      dq1.SQL.Clear;
      dq1.SQL.Add('delete rtstemp ');
      dq1.SQL.Add('where  CONVERT(char(10), datadate,111)='''+FormatDatetime('yyyy/MM/dd', nowdate.date)+''' and IsNull(YN,'''')<>1  '); //20160316 YN=1 by hand revise
      //funcObj.WriteErrorLog('Step0: '+getdayrep1.SQL.Text);
      dq1.ExecSQL;
      //
      getdayrep1.SQL.Clear;
      getdayrep1.sql.Add('insert into rtstemp ');
      getdayrep1.sql.Add('select ''LYN'',isnull(max(BDepartment.sumline),''''),ddzl.khpo ');
      getdayrep1.sql.Add('       ,smddss.gxlb,'''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      getdayrep1.sql.Add('       ,sum(isnull(smzl.cts,0)*isnull(smddss.qty,0))  as qty ,ddzl.ddbh, null as YN');
      getdayrep1.sql.Add('from smzl ');
      getdayrep1.sql.Add('left join smddss on smddss.codebar=smzl.codebar ');
      getdayrep1.sql.Add('left join smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxlb ');
      getdayrep1.sql.Add('left join ddzl on smdd.ysbh = ddzl.ddbh ');
      getdayrep1.SQL.Add('left join (select YSBH,max(depno) as depno from SMDD where  GXLB=''A''');
      getdayrep1.SQL.Add('group by YSBH) yp on yp.YSBH=DDZL.DDBH');
      getdayrep1.SQL.Add('left join BDepartment on BDepartment.id=yp.depno');
      getdayrep1.sql.Add('where CONVERT(char(10), smzl.scandate,111)='+''''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      getdayrep1.sql.Add('	 and ddzl.khbh=''036''  and substring(smzl.depno,1,1)<>''R''');
      getdayrep1.sql.Add('   and substring(smzl.depno,1,1)<>''G''');
      getdayrep1.sql.Add('   and substring(ddzl.ddbh,1,2)<>''ZS'' ');
      getdayrep1.sql.Add(' group by ddzl.khpo,smddss.gxlb,ddzl.ddbh ');
      //因為要跟成型包裝數量相等  所以移到後面處理
{      getdayrep1.sql.Add('union all');
      getdayrep1.sql.Add('select ''LYN'',isnull(max(BDepartment.sumline),''''),ddzl.khpo');
      getdayrep1.sql.Add('       ,''I'','''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      getdayrep1.sql.Add('       ,(sum(ywdd.inspectqty)-isnull(old.yqty,0)) as qty ,ddzl.ddbh, null as YN');
      getdayrep1.sql.Add('from ywdd ');
      getdayrep1.sql.Add('left join ddzl on ywdd.ysbh = ddzl.ddbh and ddzl.DDZT<>''C'' ');
      getdayrep1.SQL.Add('left join (select YSBH,max(depno) as depno from SMDD where  GXLB=''A''');
      getdayrep1.SQL.Add('group by YSBH) yp on yp.YSBH=DDZL.DDBH');
      getdayrep1.SQL.Add('left join BDepartment on BDepartment.id=yp.depno');
      getdayrep1.sql.Add('left join ');
      getdayrep1.sql.Add('  (select khpo,sum(qty) as yqty from rtstemp ');
      getdayrep1.sql.Add('	 where gxlb=''I''');
      getdayrep1.sql.Add('	 group by khpo) as old on old.khpo=ddzl.khpo ');
      getdayrep1.sql.Add('where  CONVERT(char(10),ywdd.INSPECTDATE,111)='+''''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      getdayrep1.sql.Add('        and ddzl.khbh=''036''');
      getdayrep1.sql.Add('        and substring(ddzl.ddbh,1,2)<>''ZS''');
      getdayrep1.sql.Add('group by ddzl.khpo,old.yqty,ddzl.ddbh ');       }
      getdayrep1.sql.Add('union all ');
      getdayrep1.sql.Add('select ''LYN'',isnull(max(BDepartment.sumline),''''),ddzl.khpo');
      getdayrep1.sql.Add('       ,''O'','''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      getdayrep1.sql.Add('       ,sum(ywcp.qty) as qty,ddzl.ddbh, null as YN ');
      getdayrep1.sql.Add('from ywcp ');
      getdayrep1.sql.Add('left join ddzl on ywcp.ddbh = ddzl.ddbh ');
      getdayrep1.SQL.Add('left join (select YSBH,max(depno) as depno from SMDD where  GXLB=''A''');
      getdayrep1.SQL.Add('group by YSBH) yp on yp.YSBH=DDZL.DDBH');
      getdayrep1.SQL.Add('left join BDepartment on BDepartment.id=yp.depno');
      getdayrep1.sql.Add('where ywcp.sb=''3''');
      getdayrep1.sql.Add('      and CONVERT(char(10),ywcp.exedate,111)='+''''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      getdayrep1.sql.Add('      and ddzl.khbh=''036''');
      getdayrep1.sql.Add('      and substring(ddzl.ddbh,1,2)<>''ZS''');
      getdayrep1.sql.Add('group by ddzl.khpo,ddzl.ddbh');
      //funcObj.WriteErrorLog('Step1: '+getdayrep1.SQL.Text);
      getdayrep1.ExecSQL;
      //跑完所有資料後，再跑一次QC PASS數，因為要跟成型包裝數量相等
      getdayrep1.SQL.Clear;
      getdayrep1.sql.Add('insert into rtstemp ');
      getdayrep1.sql.Add('select fsno,sumline,khpo ');
      getdayrep1.sql.Add('       ,''I'',datadate,qty ,ry, YN');
      getdayrep1.sql.Add('from rtstemp ');
      getdayrep1.sql.Add('where datadate = '''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      getdayrep1.sql.Add('	 and gxlb = ''A''');
      getdayrep1.ExecSQL;

      dayreport.SQL.Clear;
      dayreport.SQL.Add('select  fsno,sumline,khpo');
      dayreport.SQL.Add('      ,isnull(sum( case when gxlb=''C'' then isnull(qty,0) end),0)  as cqty');
      dayreport.SQL.Add('      ,isnull(sum( case when gxlb=''S'' then isnull(qty,0) end),0)  as sqty');
      dayreport.SQL.Add('      ,isnull(sum( case when gxlb=''A'' then isnull(qty,0) end),0)  as aqty');
      dayreport.SQL.Add('      ,isnull(sum( case when gxlb=''I'' then isnull(qty,0) end),0)  as iqty');
      dayreport.SQL.Add('      ,isnull(sum( case when gxlb=''O'' then isnull(qty,0) end),0)  as oqty');
      dayreport.SQL.Add('      ,'''+FormatDatetime('yyyy/MM/dd', nowdate.date)+''',isnull(okdate,0)');
      dayreport.SQL.Add('      ,isnull(sum( case when gxlb=''A'' then isnull(qty,0) end),0) - isnull(sum( case when gxlb=''I'' then isnull(qty,0) end),0) as alarmqty');
      dayreport.SQL.Add('      ,ry');
      dayreport.SQL.add('from rtstemp ');
      dayreport.SQL.add('left join   (select smdd.ysbh,max(smdd.OKdate) as okdate ');
      dayreport.SQL.add('from smdd where smdd.gxlb=''A''');
      dayreport.SQL.add('group by smdd.ysbh) as A on A.ysbh=rtstemp.ry ');
      dayreport.sql.add(' where CONVERT(char(10),datadate,111)='''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');

      {2011/12/15業務要求要加的一頁，把內外銷分開 }
      dayreport.sql.add(' and substring(ry,1,1)=''Y''' );
      dayreport.sql.add(' and gxlb<>''B''');
      {end edit }

      dayreport.SQL.Add(' group by fsno,sumline,khpo,a.okdate,ry');
      dayreport.SQL.Add(' order by khpo');


      ds1.DataSet:=dayreport;
      dayreport.Active:=true;
      eclApp.Cells(1,1):='Factory Short Name';
      eclApp.Cells(1,2):='Assembly Line#';
      eclApp.Cells(1,3):='ManPon #';
      eclApp.Cells(1,4):='Daily Cutting Output';
      eclApp.Cells(1,5):='Daily Stitching Output';
      eclApp.Cells(1,6):='Daily Assembly Output';
      eclApp.Cells(1,7):='Passed Inspection Quantity';
      eclApp.Cells(1,8):='Shipped Pairs';
      eclApp.Cells(1,9):='Production Date';
      eclApp.Cells(1,10):='OK Date';
      eclApp.Cells(1,11):='Difference';
      eclApp.Cells(1,12):='RY';
      //更改欄位格式
      eclapp.ActiveSheet.Columns[3].NumberFormatLocal:='@';
      eclapp.ActiveSheet.Columns[9].NumberFormatLocal:='yyyy/mm/dd';
      //
      dayreport.First;
      j:=2;
      while   not  dayreport.Eof   do
      begin
        for   i:=1   to   dayreport.fieldcount   do
        begin
          if i = 7 then
            eclApp.workbooks[1].sheets[1].Cells(j,i):=dayreport.Fields[i-2].Value
          else
            eclApp.workbooks[1].sheets[1].Cells(j,i):=dayreport.Fields[i-1].Value;
//           eclApp.workbooks[1].sheets[1].Cells(j,i):=dayreport.Fields[i-1].Value;
        end;
        //20150627 修改 Assembly 完成顯示MPO 黃色
        if dayreport.Fields[9].Value<>'1900/1/1' then
          eclApp.Range[eclApp.Cells[j,3],eclApp.Cells[j,3]].interior.color:=clyellow;
        if dayreport.Fields[10].Value<'0' then
          eclApp.Range[eclApp.Cells[j,11],eclApp.Cells[j,11]].interior.color:=clred;
          //eclApp.workbooks[1].sheets[1].rows[j].Interior.ColorIndex := 6;
        dayreport.Next;
        inc(j);
      end;
      eclApp.workbooks[1].Sheets[1].Columns[10].Delete;
      dayreport.active:=false;
      //週報
      if (dayofweek(nowdate.date)=7) then
      begin
        eclapp.workbooks[1].sheets[2].name:='Production Schedule';
        ds1.DataSet:=weekreport;
        weekreport.Active:=true;
        eclApp.workbooks[1].sheets[2].Cells(1,1):='Factory Short Name';
        eclApp.workbooks[1].sheets[2].Cells(1,2):='ManPon #';
        eclApp.workbooks[1].sheets[2].Cells(1,3):='Material Status';
        eclApp.workbooks[1].sheets[2].Cells(1,4):='Cutting Estimated Start Date';
        eclApp.workbooks[1].sheets[2].Cells(1,5):='Cutting Estimated Finish Date';
        eclApp.workbooks[1].sheets[2].Cells(1,6):='Stitching Estimated Start Date';
        eclApp.workbooks[1].sheets[2].Cells(1,7):='Stitching Estimated Finish Date';
        eclApp.workbooks[1].sheets[2].Cells(1,8):='Assembly Estimated Start Date';
        eclApp.workbooks[1].sheets[2].Cells(1,9):='Assembly Estimated Finish Date';
        eclApp.workbooks[1].sheets[2].Cells(1,10):='Tech Level';
        eclApp.workbooks[1].sheets[2].Cells(1,11):='Submitted Date';
        //更改欄位格式
        eclapp.workbooks[1].sheets[2].Columns[2].NumberFormatLocal:='@';
        eclapp.workbooks[1].sheets[2].Columns[3].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[2].Columns[4].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[2].Columns[5].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[2].Columns[6].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[2].Columns[7].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[2].Columns[8].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[2].Columns[9].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[2].Columns[11].NumberFormatLocal:='yyyy/mm/dd';
        weekreport.First;
        j:=2;
        while   not  weekreport.Eof   do
        begin
          for   i:=1   to  11  do  //weekreport.fieldcount-2   do
          begin
             eclApp.workbooks[1].sheets[2].Cells(j,i):=weekreport.Fields[i-1].Value;
          end;
          weekreport.Next;
          inc(j);
        end;
        weekreport.Active:=false;

       //周報 - workday 工作時數
        eclapp.workbooks[1].sheets[3].name:='Working Days';
        ds1.DataSet:=mrworkday;
        mrworkday.Active:=true;
        eclApp.workbooks[1].sheets[3].Cells(1,1):='Factory Short Name';
        eclApp.workbooks[1].sheets[3].Cells(1,2):='Production Month';
        eclApp.workbooks[1].sheets[3].Cells(1,3):='Working Days';
        eclApp.workbooks[1].sheets[3].Cells(1,4):='Submitted Date';
        //更改欄位格式
        eclapp.workbooks[1].sheets[3].Columns[4].NumberFormatLocal:='yyyy/mm/dd';
        mrworkday.First;
        j:=2;
        while   not  mrworkday.Eof   do
        begin
          for   i:=1   to   mrworkday.fieldcount   do
            begin
              eclApp.workbooks[1].sheets[3].Cells(j,i):=mrworkday.Fields[i-1].Value;
            end;
          mrworkday.Next;
          inc(j);
        end;
        mrworkday.Active:=false;
      end;
      //每月月底28報 - dayoutput
      if (d=28) then
      begin
        eclapp.workbooks[1].sheets[4].name:='Target Daily Output';
        eclapp.workbooks[1].sheets[5].name:='Target Monthly Output';

        ds1.DataSet:=mrdayoutput;
        mrdayoutput.Active:=true;
        eclApp.workbooks[1].sheets[4].Cells(1,1):='Factory Short Name';
        eclApp.workbooks[1].sheets[4].Cells(1,2):='Line#';
        eclApp.workbooks[1].sheets[4].Cells(1,3):='Target Daily Output';
        eclApp.workbooks[1].sheets[4].Cells(1,4):='Production Date';
        eclApp.workbooks[1].sheets[4].Cells(1,5):='Submitted date';
       //更改欄位格式
        eclapp.workbooks[1].sheets[4].Columns[4].NumberFormatLocal:='yyyy/mm/dd';
        eclapp.workbooks[1].sheets[4].Columns[5].NumberFormatLocal:='yyyy/mm/dd';

        mrdayoutput.First;
        j:=2;
        while   not  mrdayoutput.Eof   do
        begin
          for   i:=1   to   mrdayoutput.fieldcount   do
          begin
              eclApp.workbooks[1].sheets[4].Cells(j,i):=mrdayoutput.Fields[i-1].Value;
          end;
          mrdayoutput.Next;
          inc(j);
        end;
        mrdayoutput.Active:=false;

       //月報 - mrmonthoutput
        ds1.DataSet:=mrmonthoutput;
        mrmonthoutput.Active:=true;

        eclApp.workbooks[1].sheets[5].Cells(1,1):='Factory Short Name';
        eclApp.workbooks[1].sheets[5].Cells(1,2):='Year Month';
        eclApp.workbooks[1].sheets[5].Cells(1,3):='Target Monthly Output';
        eclApp.workbooks[1].sheets[5].Cells(1,4):='Daily Target (8 Hours)';
        eclApp.workbooks[1].sheets[5].Cells(1,5):='Daily Target (9 Hours)';
        eclApp.workbooks[1].sheets[5].Cells(1,6):='Daily Target (10 Hours)';
        eclApp.workbooks[1].sheets[5].Cells(1,7):='Submitted date';
       //更改欄位格式
        eclapp.workbooks[1].sheets[5].Columns[7].NumberFormatLocal:='yyyy/mm/dd';

        mrmonthoutput.First;
        j:=2;
        while   not  mrmonthoutput.Eof   do
        begin
          for   i:=1   to   mrmonthoutput.fieldcount   do
          begin
              eclApp.workbooks[1].sheets[5].Cells(j,i):=mrmonthoutput.Fields[i-1].Value;
          end;
          mrmonthoutput.Next;
          inc(j);
        end;
        mrmonthoutput.Active:=false;
      end;
      {2011/12/15業務要求要加的一頁，把內外銷分開}
      dayreport.SQL.Clear;
      dayreport.SQL.Add('select  fsno,sumline,khpo');
      dayreport.SQL.Add('  ,isnull(sum( case when gxlb=''C'' then isnull(qty,0) end),0)  as cqty');
      dayreport.SQL.Add('  ,isnull(sum( case when gxlb=''S'' then isnull(qty,0) end),0)  as sqty');
      dayreport.SQL.Add('  ,isnull(sum( case when gxlb=''A'' then isnull(qty,0) end),0)  as aqty');
      dayreport.SQL.Add('  ,isnull(sum( case when gxlb=''I'' then isnull(qty,0) end),0)  as iqty');
      dayreport.SQL.Add('  ,isnull(sum( case when gxlb=''O'' then isnull(qty,0) end),0)  as oqty');
      dayreport.SQL.Add('  ,'''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''  ');
      dayreport.SQL.add(' from rtstemp ');
      dayreport.sql.add(' where CONVERT(char(10),datadate,111)='+''''+FormatDatetime('yyyy/MM/dd', nowdate.date)+'''');
      dayreport.sql.add(' and substring(ry,1,2)='+''''+'VN'+'''' );
      dayreport.SQL.Add(' group by fsno,sumline,khpo');
      dayreport.SQL.Add(' order by khpo');

      ds1.DataSet:=dayreport;
      dayreport.Active:=true;
      eclapp.workbooks[1].sheets[6].name:='ProductionVN';
      eclApp.workbooks[1].sheets[6].Cells(1,1):='Factory Short Name';
      eclApp.workbooks[1].sheets[6].Cells(1,2):='Assembly Line#';
      eclApp.workbooks[1].sheets[6].Cells(1,3):='ManPon #';
      eclApp.workbooks[1].sheets[6].Cells(1,4):='Daily Cutting Output';
      eclApp.workbooks[1].sheets[6].Cells(1,5):='Daily Stitching Output';
      eclApp.workbooks[1].sheets[6].Cells(1,6):='Daily Assembly Output';
      eclApp.workbooks[1].sheets[6].Cells(1,7):='Passed Inspection Quantity';
      eclApp.workbooks[1].sheets[6].Cells(1,8):='Shipped Pairs';
      eclApp.workbooks[1].sheets[6].Cells(1,9):='Production Date';
      //更改欄位格式
      eclapp.workbooks[1].sheets[6].Columns[3].NumberFormatLocal:='@';
      eclapp.workbooks[1].sheets[6].Columns[9].NumberFormatLocal:='yyyy/mm/dd';

      dayreport.First;
      j:=2;
      while   not  dayreport.Eof   do
      begin
        for   i:=1   to   dayreport.fieldcount   do
        begin
          if i = 7 then
            eclApp.workbooks[1].sheets[6].Cells(j,i):=dayreport.Fields[i-2].Value
          else
            eclApp.workbooks[1].sheets[6].Cells(j,i):=dayreport.Fields[i-1].Value;
        end;
        dayreport.Next;
        inc(j);
      end;
      dayreport.active:=false;
    {end edit }

    eclapp.columns.autofit;
    eclApp.Visible:=True;
    eclapp.workbooks[1].saveas(xlsfilename);
    eclapp.workbooks[1].close;
    eclapp.quit;
    funcObj.WriteErrorLog(Datetimetostr(now)+' Finish');
  except
    on   E:Exception  do
    begin
      funcObj.WriteErrorLog(Datetimetostr(now)+' '+E.Message);
    end;
  end;

end;

procedure TMain.Button1Click(Sender: TObject);
begin
   RTOVFile_Run(); //RTOV
end;

procedure TMain.Database1Login(Database: TDatabase; LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    susername,spassword,sline,pp:string;

begin
  assignfile(textfilevar,AppDir+'datalogin.txt');
  reset(textfilevar);
  readln(textfilevar,pp);
  // 密碼加密測試
  sline:='';
  ad:=strtoint(copy(pp,0,1)); //取得解密字元
  for i:=2 to (length(pp)) do //解密迴圈
  begin
    tempstr:=copy(pp,i,1);
    sline:=sline+chr(ord(tempstr[1])-ad-100);
  end;

  closefile(textfilevar);

  susername:=trim(copy(sline,0,pos('=',sline)-1));
  spassword:=trim(copy(sline,pos('=',sline)+1,maxint));

  loginparams.Values['user name']:=susername;
  loginparams.values['password']:=spassword;

  pp:=sline;
  ad:=dayofweek(now); //取得加密字元
  sline:=inttostr(ad);

  for i:=1 to (length(pp)) do //加密迴圈
    begin
      tempstr:=copy(pp,i,1);
      sline:=sline+chr(ord(tempstr[1])+ad+100);
    end;
  assignfile(textfilevar,AppDir+'datalogin.txt');
  Rewrite(textfilevar);
  writeln(textfilevar,sline);
  closefile(textfilevar);

end;

procedure TMain.FormCreate(Sender: TObject);
var sline:string;
    databasevar:textfile;
begin
  AppDir:=ExtractFilePath(ExtractFilePath(Application.ExeName));
  Database1.Connected:=false;
  assignfile(databasevar,AppDir+'database.txt');
  reset(databasevar);
  readln(databasevar,sline);

  closefile(databasevar);

  Database1.aliasname:=sline;
  Database1.Connected:=true;
 //
 AppDir:=ExtractFilePath(Application.ExeName);
 funcObj:=TFuncObj.Create;
 funcObj.setParameter(true,AppDir);
 //

 tempQry.ExecSQL;
 if ParamCount=1 then
  begin
    if ParamStr(1)='Auto_Run' then
    begin
      Application.ShowMainForm:=false;
      nowdate.Date:=date-1;
      RTOVFile_Run();
      Application.Terminate;
    end;
  end;
  nowdate.Date:=date-1;
  //
  //產生右下角icon
  IsCanClose:=false;
  AddPaoServiceIcon(NIM_ADD);
  //隱藏主視窗
  Application.ShowMainForm:=false;//
end;

procedure TMain.FormDestroy(Sender: TObject);
begin
  funcObj.Free;
  AddPaoServiceIcon(NIM_DELETE);
end;

procedure TMain.Show1Click(Sender: TObject);
begin
  Main.Show();
end;

procedure TMain.Close1Click(Sender: TObject);
begin
  IsCanClose:=true;
  Close;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if IsCanClose=true then CanClose:=true else CanClose:=false;
   if(CanClose<>true) then
   begin
      Hide();
   end;
end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
  if DailyRunEdit.Text=Formatdatetime('HH:MM:SS',time()) then
  begin
    if CheckBox1.Checked=true then
    begin
      nowdate.Date:=date-1;
      RTOVFile_Run(); //RTOV
    end;
  end;
end;

end.
