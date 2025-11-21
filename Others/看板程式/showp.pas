unit showp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids,shellapi, StdCtrls,iniFiles,
  Menus;
  
const
  WM_TRAYICON = WM_APP + 0;
type
  TLEDShowForm = class(TForm)
    Timer1: TTimer;
    RFTQry: TQuery;
    database: TDatabase;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    GSBHCombo: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    RFTQrysumline: TStringField;
    RFTQryqty: TIntegerField;
    RFTQrynowqty: TIntegerField;
    ExecTimeEdit: TEdit;
    Label2: TLabel;
    SMZLQry: TQuery;
    ExecBtn: TButton;
    PopupMenu1: TPopupMenu;
    Show1: TMenuItem;
    Close1: TMenuItem;
    TmpQry: TQuery;
    Label3: TLabel;
    Label4: TLabel;
    QryVerCombo: TComboBox;
    TXTVerCombo: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure databaseLogin(Database: TDatabase; LoginParams: TStrings);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ExecBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetLEDInfo();
    procedure LoadQuerySQL_tyxuan();
    procedure LoadQuerySQL_tybach();
    function ParseTxtName(DepNM:string;sumline:string):string;
    procedure UpdateQC_RFT_Dep_List();
    procedure UpdateRFTInfo();
    procedure Readini();//讀取上次參數GSBH
    procedure Writeini();
    procedure ListGSBH();
  public
    IsCanClose:boolean;
    GSBH:String;
    QryVer,TXTVer:String;
    { Public declarations }
    procedure AddPaoServiceIcon(Action: DWORD);
    procedure WMTrayIcon(var message: TMessage);  message WM_TRAYICON;
  end;

var
  LEDShowForm: TLEDShowForm;
  IconData:TNotifyIconData ;
  IconShowint:integer;//ICON顯示秒數
implementation

uses FunUnit;

{$R *.dfm}
procedure TLEDShowForm.AddPaoServiceIcon(Action: DWORD);

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
procedure TLEDShowForm.WMTrayIcon(var message: TMessage);
var MousePos:Tpoint;
begin
  if message.LPARAM = WM_RBUTTONDOWN then
  begin
    SetActiveWindow(Handle);
    GetCursorPos(MousePos);
    PopupMenu1.Popup(MousePos.X, MousePos.Y);
  end;
end;

//讀取GSBH參數
procedure TLEDShowForm.Readini();
var ini:TiniFile;
    i:integer;
begin
   try
     ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Show.ini');
     GSBH:=ini.ReadString('ERP','GSBH','VA12');
     QryVer:=ini.ReadString('ERP','QryVer','Tyxuan');
     TXTVer:=ini.ReadString('ERP','TXTVer','LED Ver1');
     for i:=0 to GSBHCombo.Items.Count-1 do
     begin
       if GSBHCombo.Items[i]=GSBH then
       begin
         GSBHCombo.ItemIndex:=i;
         break;
       end;
     end;
     for i:=0 to QryVerCombo.Items.Count-1 do
     begin
       if QryVerCombo.Items[i]=QryVer then
       begin
         QryVerCombo.ItemIndex:=i;
         break;
       end;
     end;
     for i:=0 to TXTVerCombo.Items.Count-1 do
     begin
       if TXTVerCombo.Items[i]=TXTVer then
       begin
         TXTVerCombo.ItemIndex:=i;
         break;
       end;
     end;
   finally
     ini.Free;
   end;
end;
//寫入GSBH參數
procedure TLEDShowForm.Writeini();
var ini:TiniFile;
begin
   try
     ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Show.ini');
     ini.WriteString('ERP','GSBH',GSBHCombo.Text);
     ini.WriteString('ERP','QryVer',QryVerCombo.Text);
     ini.WriteString('ERP','TXTVer',TXTVerCombo.Text);
   finally
     ini.Free;
   end;
end;
//不同廠取GSBH讀取SQL  當日目標產能達成率
procedure TLEDShowForm.LoadQuerySQL_tyxuan();
begin
  try
    with  SMZLQry do
    begin
      Active:=false;
      SQL.Clear;
{      SQL.Add('select BDepartment.DepName,BDepartment.sumline,IsNULL(scbzcl.qty,0) as qty,sum(smzl.cts*smddss.qty) as nowqty,');
      SQL.Add('case when scbzcl.qty>0 then convert(int,sum(smzl.cts*smddss.qty)/convert(float,IsNULL(scbzcl.qty,0))*1000) else 0 end   as PT,convert(int,isnull(QC_rft_DEP.rft,0)*10) as rft ');
      SQL.Add('from smzl ');
      SQL.Add('left join smddss on smzl.codebar=smddss.codebar ');
      SQL.Add('left join BDepartment on BDepartment.id=smzl.depno ');
      SQL.Add('left join  scbzcl on smzl.depno=scbzcl.depno ');
      SQL.Add('      and (convert(smalldatetime,convert(varchar,scbzcl.bzdate,111)))=(convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
      SQL.Add('      left join QC_rft_DEP on  BDepartment.ID = QC_rft_DEP.DepNO ');
      SQL.Add('where 1=1 and  BDepartment.GXLB=''A'' and BDepartment.GSBH='''+GSBHCombo.Text+''' ');
      SQL.Add('      and smzl.scandate>(convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
      SQL.Add('and smddss.gxlb=''A'' ');
      SQL.Add('and BDepartment.sumline is not null ');
      SQL.Add('group by BDepartment.DepName,BDepartment.sumline,scbzcl.qty,QC_rft_DEP.rft ');
      SQL.Add('order by  BDepartment.DepName ');}
      //funcObj.WriteErrorLog(sql.Text);
      SQL.Add('select QC_rft_Dep.DEPNO,QC_rft_Dep.DepNM,QC_rft_Dep.sumline,QC_rft_Dep.qty,QC_rft_Dep.nowqty,QC_rft_Dep.PT');
      SQL.Add(',convert(varchar(100),CAST(QC_rft_Dep.RFT AS INT)) + SUBSTRING(STR(QC_rft_Dep.RFT, 16, 1), CHARINDEX(''.'', STR(QC_rft_Dep.RFT, 16, 1)) + 1, LEN(QC_rft_Dep.RFT)) AS RFT');
      SQL.Add(',BDepartment.Depname from QC_rft_Dep ');
      SQL.Add('left join BDepartment on BDepartment.ID = QC_rft_Dep.DEPNO');
      SQL.Add('where QC_rft_Dep.sumline is not null');
      //showmessage(SQL.Text);
      SMZLQry.Active:=true;
    end;                           
 except
   on E:Exception do
   begin
     database.Connected:=false;
     funcObj.WriteErrorLog(datetimetostr(now)+' Load Dep Info Error:'+E.Message);
   end;
 end;
end;

//不同廠取GSBH讀取SQL  目標產能根據時數累積來計算達成率
procedure TLEDShowForm.LoadQuerySQL_tybach();
begin
  try
    with  SMZLQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select SMZLT.DepName, SMZLT.DepNo, SMZLT.sumline, SMZLT.BZDate, SMZLT.Qty, SMZLT.nowqty, (round(convert(float,convert(float,(SMZLT.nowqty*100)))/SMZLT.Qty1,1)*10) as PT, SMZLT.RFT from (');
      SQL.Add('	select BDepartment.DepName as DepName,SCBZCL.DepNo as DepNo,BDepartment.sumline, BZDate, SCBZCL.Qty,sum(smzl.cts*smddss.qty) as nowqty,convert(int,isnull(QC_rft_DEP.rft,0)*10) as rft, SCBZCLT.Qty as Qty1');
      SQL.Add('	from smzl ');
      SQL.Add('	left join smddss on smzl.codebar=smddss.codebar');
      SQL.Add('	left join BDepartment on BDepartment.id=smzl.depno');
      SQL.Add('	left join scbzcl on smzl.depno=scbzcl.depno and (convert(smalldatetime,convert(varchar,scbzcl.bzdate,111)))=(convert(smalldatetime,convert(varchar(10),getdate(),111)))');
      SQL.Add('	left join (');
      SQL.Add('		select distinct depno,scyear,scmonth,scday, case when sum(Qty2)<=Qty1 then sum(Qty2) else Qty1 end as Qty');
      SQL.Add('		from (');
      SQL.Add('		select distinct SCRL.DepNo, SCYEAR,SCMONTH,SCDay,SCBZCL.Qty as Qty1 ');
      SQL.Add('		       ,convert(int, round((IsNULL(SCBZCL.Qty/SCRL.SCGS,0))*SCSJDV.minut,2)) as Qty2, datepart(hh,scandate) as dem ');
      SQL.Add('		from SCBZCL');
      SQL.Add('		left join SCRL on SCBZCL.DepNo=SCRL.DepNO and YEAR(BZDate) = SCYEAR and month(BZDate)= SCMONTH and DAY(BZDate) = SCDay');
      SQL.Add('		left join SMZL on smzl.depno=scbzcl.depno');
      SQL.Add('   left join SCSJDV on SCSJDV.ID=scbzcl.depno and SCSJDV.hors=datepart(hh,scandate) ');
      SQL.Add('		where 1=1 and SMZL.scandate>(convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
      SQL.Add('		        and (convert(smalldatetime,convert(varchar,scbzcl.bzdate,111)))=(convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
      SQL.Add('		group by SCRL.DepNo,SCBZCL.Qty,SCRL.SCGS,SCYEAR,SCMONTH,SCDay,scandate,SCSJDV.minut ');
      SQL.Add('		) as SCBZCLT');
      SQL.Add('		group by depno,scyear,scmonth,scday, Qty1 ) SCBZCLT on SCBZCLT.DepNo=SCBZCL.DepNo and YEAR(BZDate) = SCBZCLT.SCYEAR and month(BZDate)= SCBZCLT.SCMONTH and DAY(BZDate) = SCBZCLT.SCDay');
      SQL.Add('	left join QC_rft_DEP on BDepartment.ID = QC_rft_DEP.DepNO');
      SQL.Add('	where 1=1 ');
      SQL.Add('	and BDepartment.GXLB=''A'' and BDepartment.GSBH='''+GSBHCombo.Text+''' ');
      SQL.Add('	and smzl.scandate>(convert(smalldatetime,convert(varchar(10),getdate(),111)))');
      SQL.Add('	and smddss.gxlb=''A'' ');
      SQL.Add('	and BDepartment.sumline is not null');
      SQL.Add('	group by BDepartment.DepName,BDepartment.sumline,scbzcl.qty,QC_rft_DEP.rft , BZDate, SCBZCL.DepNo, SCBZCLT.Qty ) SMZLT');
      SQL.Add('group by SMZLT.DepName, SMZLT.DepNo, SMZLT.sumline, SMZLT.BZDate, SMZLT.Qty, SMZLT.nowqty, SMZLT.RFT, SMZLT.Qty1');
      SQL.Add('order by SMZLT.DepName');
      //funcObj.WriteErrorLog(sql.Text);
      SMZLQry.Active:=true;
    end;
 except
   on E:Exception do
   begin
     database.Connected:=false;
     funcObj.WriteErrorLog(datetimetostr(now)+' Load Dep Info Error:'+E.Message);
   end;
 end;
end;

//更新RFT 公式
procedure TLEDShowForm.UpdateRFTInfo();
begin
 try
  with RFTQry do
  begin
     Active:=false;
     SQL.Clear;
     if GSBHCombo.Text<>'VB1' then //2015之前B廠區RFT計算公式=裁斷*成型　A廠區是 = 裁斷*針車*成型*成型後
     begin

       SQL.Add('update QC_rft_Dep  set QC_rft_Dep.RFT=IsNUll(RFT_TB.RFT,0),QC_rft_Dep.Userdate=GetDate() ');
       SQL.Add('from QC_rft_Dep ');     
       SQL.Add('left join ');
       //SQL.Add('( select VA_GXLB_A.DepNo, Round(IsNull(VA_GXLB_A.RFT,0)*IsNull(VA_GXLB_AR.RFT,0)*IsNull(VA_GXLB_C.RFT,0)*IsNull(VA_GXLB_CS.RFT,0)*100,1) as RFT from  ');
       SQL.Add('( select VA_GXLB_AR.DepNo, Round(IsNull(VA_GXLB_AR.RFT,0)*100,1) as RFT from  ');
       //成型前
       SQL.Add('( ');
       SQL.Add('select WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline, ');
//       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) )  )  as RFT ');
       //修正公式 拿掉reqty
       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+sum(WOPR.NGQty) )  )  as RFT ');
       SQL.Add('from WOPR ');
       SQL.Add('left join BDepartment on WOPR.DepNo=BDepartment.ID ');
       SQL.Add('where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
       SQL.Add('(convert(smalldatetime,convert(varchar(10),getdate(),111))) and (convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
       SQL.Add('and WOPR.GSBH ='''+GSBHCombo.Text+''' ');
       SQL.Add('and WOPR.GXLB = ''AR'' group by WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline ');
       SQL.Add(') as VA_GXLB_AR ');
{       SQL.Add('left join ');
       //關聯 成型後
       SQL.Add('( ');
       SQL.Add('select WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline, ');
//       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) )  )  as RFT ');
       //修正公式 拿掉reqty
       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+sum(WOPR.NGQty) )  )  as RFT ');
       SQL.Add('from WOPR ');
       SQL.Add('left join BDepartment on WOPR.DepNo=BDepartment.ID ');
       SQL.Add('where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
       SQL.Add('(convert(smalldatetime,convert(varchar(10),getdate(),111))) and (convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
       SQL.Add('and WOPR.GSBH ='''+GSBHCombo.Text+''' ');
       SQL.Add('and WOPR.GXLB = ''AR'' group by WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline ');
       SQL.Add(') as VA_GXLB_AR on VA_GXLB_AR.Sumline=VA_GXLB_A.Sumline');
       //關聯 Cutting
       SQL.Add('left join ');
       SQL.Add('( ');
       SQL.Add('select WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline, ');
//       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) )  )  as RFT ');
       //修正公式 拿掉reqty
       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+sum(WOPR.NGQty) )  )  as RFT ');
       SQL.Add('from WOPR ');
       SQL.Add('left join BDepartment on WOPR.DepNo=BDepartment.ID ');
       SQL.Add('where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
       SQL.Add('(convert(smalldatetime,convert(varchar(10),getdate(),111))) and (convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
       SQL.Add('and WOPR.GSBH ='''+GSBHCombo.Text+''' ');
       SQL.Add('and WOPR.GXLB = ''C'' group by WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline ');
       SQL.Add(') as VA_GXLB_C on  VA_GXLB_A.Sumline=VA_GXLB_C.Sumline ');
       //關聯 Stitching
       SQL.Add('left join ');
       SQL.Add('( ');
       SQL.Add('select WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline, ');
//       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) )  )  as RFT ');
       //修正公式 拿掉reqty
       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+sum(WOPR.NGQty) )  )  as RFT ');
       SQL.Add('from WOPR ');
       SQL.Add('left join BDepartment on WOPR.DepNo=BDepartment.ID ');
       SQL.Add('where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
       SQL.Add('(convert(smalldatetime,convert(varchar(10),getdate(),111))) and (convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
       SQL.Add('and WOPR.GSBH ='''+GSBHCombo.Text+''' ');
       SQL.Add('and WOPR.GXLB = ''C+S'' group by WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline ');
       SQL.Add(') as VA_GXLB_CS on  VA_GXLB_A.Sumline=VA_GXLB_CS.Sumline '); }
       //
       SQL.Add(') as RFT_TB ');
       SQL.Add('on QC_rft_Dep.DepNO = RFT_TB.DepNO ');
       SQL.Add('where QC_rft_Dep.GSBH='''+GSBHCombo.Text+''' ');
       //funcObj.WriteErrorLog(sql.Text);
     end else if GSBHCombo.Text='VB1' then //VB1  =>成型RFT*裁切針車RFT ,如果成型沒有RFT ,必定為 0 所以依照成型線為主體
     begin
       SQL.Add('update QC_rft_Dep  set QC_rft_Dep.RFT=IsNUll(RFT_TB.RFT,0),QC_rft_Dep.Userdate=GetDate() ');
       SQL.Add('from QC_rft_Dep ');     
       SQL.Add('left join ');
       SQL.Add('( select VB_GXLB_A.DepNo, Round(IsNull(VB_GXLB_A.RFT,0)*IsNull(VB_GXLB_CS.RFT,0)*100,1) as RFT from  ');
       SQL.Add('( ');
       SQL.Add('select WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline, ');
//       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) )  )  as RFT ');
       //修正公式 拿掉reqty
       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+sum(WOPR.NGQty) )  )  as RFT ');
       SQL.Add('from WOPR ');
       SQL.Add('left join BDepartment on WOPR.DepNo=BDepartment.ID ');
       SQL.Add('where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
       SQL.Add('(convert(smalldatetime,convert(varchar(10),getdate(),111))) and (convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
       SQL.Add('and WOPR.GSBH ='''+GSBHCombo.Text+''' ');
       SQL.Add('and WOPR.GXLB = ''A'' group by WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline ');
       SQL.Add(') as VB_GXLB_A ');
       SQL.Add('left join ');
       SQL.Add('( ');
       SQL.Add('select WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline, ');
//       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) )  )  as RFT ');
       //修正公式 拿掉reqty
       SQL.Add('      (1 - cast(sum(WOPR.NGQty) as float)  /( SUM(WOPR.Qty)+sum(WOPR.NGQty) )  )  as RFT ');
       SQL.Add('from WOPR ');
       SQL.Add('left join BDepartment on WOPR.DepNo=BDepartment.ID ');
       SQL.Add('where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
       SQL.Add('(convert(smalldatetime,convert(varchar(10),getdate(),111))) and (convert(smalldatetime,convert(varchar(10),getdate(),111))) ');
       SQL.Add('and WOPR.GSBH ='''+GSBHCombo.Text+''' ');
       SQL.Add('and WOPR.GXLB = ''C+S'' group by WOPR.DepNo,BDepartment.DepName,BDepartment.Sumline ');
       //SQL.Add(') as VB_GXLB_CS on SubString(VB_GXLB_A.DepName,1,5)=SubString(VB_GXLB_CS.DepName,1,5) ');
       SQL.Add(') as VB_GXLB_CS on  VB_GXLB_A.Sumline=VB_GXLB_CS.Sumline ');
       SQL.Add(') as RFT_TB ');
       SQL.Add('on QC_rft_Dep.DepNO = RFT_TB.DepNO ');
       SQL.Add('where QC_rft_Dep.GSBH='''+GSBHCombo.Text+''' ');
       //funcObj.WriteErrorLog(sql.Text);
     end;
     if SQL.Count>0 then ExecSQL();
  end;
 except
   on E:Exception do
   begin
     database.Connected:=false;
     funcObj.WriteErrorLog(datetimetostr(now)+' Update RFT Error:'+E.Message);
   end;
 end;
end;
//更新QC_RFT_Dep 清單,根據部門成型工段資料
procedure TLEDShowForm.UpdateQC_RFT_Dep_List();
begin
  try
    with RFTQry do
    begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Insert into QC_rft_Dep (DepNO,GSBH,DepNM,RFT,Userdate,sumline,qty,nowqty,PT)');
       SQL.Add('select ID,GSBH,DepName,0,GetDate(),NULL,0,0,0  from BDepartment  ');
       SQL.Add('where GSBH='''+GSBHCombo.Text+''' and GXLB=''A'' and Sumline is not null and ID not in (select DepNO from QC_rft_Dep) ');
       //funcObj.WriteErrorLog(sql.Text);
       ExecSQL();
    end;
 except
   on E:Exception do
   begin
     database.Connected:=false;
     funcObj.WriteErrorLog(datetimetostr(now)+' Updte RFT_Dep Error:'+E.Message);
   end;
 end;
end;
//回傳儲存文字檔名
function TLEDShowForm.ParseTxtName(DepNM:string;sumline:string):string;
var Posi:integer;
    Symbol,Num1,Num2:string;
    resNM:string;
begin
   Symbol:=copy(sumline,4,1);
   Num1:=copy(sumline,6,1);
   Num2:=copy(sumline,Length(sumline)-1,2);
   resNM:=Symbol+Num1+'-'+Num2;
   result:=resNM;
end;
//取出資料庫寫成7碼文字檔
procedure TLEDShowForm.GetLEDInfo();
var filevar1:textfile;
  sline1:string;
  fl:THandle;
  sqty:string;
  nqty:string;
  rft:string;
  pt:string;
  //runs:string;
  TxtFN:string;
begin
 if QryVerCombo.Text='Tyxuan' then LoadQuerySQL_tyxuan();//載入SQL
 if QryVerCombo.Text='Tybach' then LoadQuerySQL_tybach();//載入SQL
 try
  ExecTimeEdit.Text:=timetostr(time);
  SMZLQry.First;
  while not SMZLQry.Eof do
  begin
    TxtFN:=extractfilepath(application.ExeName)+SMZLQry.fieldbyname('sumline').AsString+'.txt';
    if TxtFN<>'' then
    begin
      if fileexists(TxtFN)=true then
      begin
        //已有檔案
        assignfile(filevar1,TxtFN);
        rewrite(filevar1);
        sqty:='';
        nqty:='';
        pt:='';
        rft:='';
        //目標
        if length(SMZLQry.fieldbyname('qty').AsString)=4 then
            sqty:=SMZLQry.fieldbyname('qty').AsString;
        if length( SMZLQry.fieldbyname('qty').AsString)=3 then
            sqty:='0'+SMZLQry.fieldbyname('qty').AsString;
        if length(SMZLQry.fieldbyname('qty').AsString)=2 then
            sqty:='00'+SMZLQry.fieldbyname('qty').AsString;
        if length(SMZLQry.fieldbyname('qty').AsString)=1 then
            sqty:='000'+SMZLQry.fieldbyname('qty').AsString;
        if SMZLQry.fieldbyname('qty').AsString='' then sqty:='0000';
        //產能
        if length(SMZLQry.fieldbyname('nowqty').AsString)=4 then
            Nqty:=SMZLQry.fieldbyname('nowqty').AsString;
        if length( SMZLQry.fieldbyname('nowqty').AsString)=3 then
            Nqty:='0'+SMZLQry.fieldbyname('nowqty').AsString;
        if length(SMZLQry.fieldbyname('nowqty').AsString)=2 then
            Nqty:='00'+SMZLQry.fieldbyname('nowqty').AsString;
        if length(SMZLQry.fieldbyname('nowqty').AsString)=1 then
            Nqty:='000'+SMZLQry.fieldbyname('nowqty').AsString;
        if SMZLQry.fieldbyname('nowqty').AsString='' then Nqty:='0000';

        if TXTVerCombo.Text='LED Ver2' then
        begin
          // PT 累計時產能達成率
          if length(SMZLQry.fieldbyname('PT').AsString)=4 then
              pt:=SMZLQry.fieldbyname('PT').AsString;
          if length( SMZLQry.fieldbyname('PT').AsString)=3 then
              pt:='0'+SMZLQry.fieldbyname('PT').AsString;
          if length(SMZLQry.fieldbyname('PT').AsString)=2 then
              pt:='00'+SMZLQry.fieldbyname('PT').AsString;
          if length(SMZLQry.fieldbyname('PT').AsString)=1 then
              pt:='000'+SMZLQry.fieldbyname('PT').AsString;
          if SMZLQry.fieldbyname('PT').AsString='' then pt:='0000';
        end;
        //RFT
        if length(SMZLQry.fieldbyname('rft').AsString)=4 then
            rft:=SMZLQry.fieldbyname('rft').AsString;
        if length( SMZLQry.fieldbyname('rft').AsString)=3 then
            rft:='0'+SMZLQry.fieldbyname('rft').AsString;
        if length(SMZLQry.fieldbyname('rft').AsString)=2 then
            rft:='00'+SMZLQry.fieldbyname('rft').AsString;
        if length(SMZLQry.fieldbyname('rft').AsString)=1 then
            rft:='000'+SMZLQry.fieldbyname('rft').AsString;
        if SMZLQry.fieldbyname('rft').AsString='' then rft:='0000';

        // FTT FOR CUSTOMER
        // A02-LEAN01
      {  if (SMZLQry.FieldByName('sumline').AsString = 'A02L0101') then
        begin
        // 90.3%
        rft := '0903'
        end;
        // A02-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0102') then
        begin
        // 94.9%
        rft := '0949'
        end;
        // A02-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0103') then
        begin
        // 90.5%
        rft := '0905'
        end;
        // A02-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0104') then
        begin
        // 91.6%
        rft := '0916'
        end;

        // A03-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0205') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A03-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0206') then
        begin
        // 94.6%
        rft := '0946'
        end;
        // A03-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0207') then
        begin
        // 91.8%
        rft := '0918'
        end;
        // A03-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0208') then
        begin
        // 90.1%
        rft := '0901'
        end;
        // A03-LEAN05
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0209') then
        begin
        // 91.1%
        rft := '0911'
        end;

        // A07-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0101') then
        begin
        // 94.0%
        rft := '0940'
        end;
        // A07-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0102') then
        begin
        // 93.2%
        rft := '0932'
        end;
        // A07-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0103') then
        begin
        // 90.9%
        rft := '0909'
        end;
        // A07-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0104') then
        begin
        // 90.3%
        rft := '0903'
        end;

        // A08-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0205') then
        begin
        // 93.7%
        rft := '0937'
        end;
        // A08-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0206') then
        begin
        // 92.8%
        rft := '0928'
        end;
        // A08-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0207') then
        begin
        // 93.3%
        rft := '0933'
        end;
        // A08-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0208') then
        begin
        // 92.6%
        rft := '0926'
        end;

        // A09-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0309') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A09-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0310') then
        begin
        // 94.1%
        rft := '0941'
        end;
        // A09-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0311') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A09-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0312') then
        begin
        // 94.7%
        rft := '0947'
        end;

        // A11-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0413') then
        begin
        // 91.6%
        rft := '0916'
        end;
        // A11-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0414') then
        begin
        // 90.1%
        rft := '0901'
        end;
        // A11-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0415') then
        begin
        // 91.3%
        rft := '0913'
        end;
        // A11-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0416') then
        begin
        // 98.2%
        rft := '0982'
        end;
        // A11-LEAN06
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0417') then
        begin
        // 96.5%
        rft := '0965'
        end;

        // A12-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0517') then
        begin
        // 93.1%
        rft := '0931'
        end;
        // A12-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0518') then
        begin
        // 90.3%
        rft := '0903'
        end;
        // A12-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0519') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A12-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0520') then
        begin
        // 91.5%
        rft := '0915'
        end;

        // A15-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0621') then
        begin
        // 91.3%
        rft := '0913'
        end;
        // A15-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0623') then
        begin
        // 90.9%
        rft := '0909'
        end;
        // A15-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0624') then
        begin
        // 90.0%
        rft := '0900'
        end;
        // A15-LEAN05
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0625') then
        begin
        // 91.7%
        rft := '0917'
        end;
        // A15-LEAN06
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0626') then
        begin
        // 92.2%
        rft := '0922'
        end;

        // A16-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0309') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A16-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0310') then
        begin
        // 92.4%
        rft := '0924'
        end;
        // A16-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0311') then
        begin
        // 92.0%
        rft := '0920'
        end; }

        sline1:='2'+sqty+nqty+pt+rft;
        writeln(filevar1, sline1);
        closefile(filevar1);
      end
      else
      begin
        //沒有檔案
        fl:=filecreate(TxtFN);
        fileclose(fl);
        //
        assignfile(filevar1,TxtFN);
        rewrite(filevar1);
        sqty:='';
        nqty:='';
        pt:='';
        rft:='';
        //目標
        if length(SMZLQry.fieldbyname('qty').AsString)=4 then
            sqty:=SMZLQry.fieldbyname('qty').AsString;
        if length( SMZLQry.fieldbyname('qty').AsString)=3 then
            sqty:='0'+SMZLQry.fieldbyname('qty').AsString;
        if length(SMZLQry.fieldbyname('qty').AsString)=2 then
            sqty:='00'+SMZLQry.fieldbyname('qty').AsString;
        if length(SMZLQry.fieldbyname('qty').AsString)=1 then
            sqty:='000'+SMZLQry.fieldbyname('qty').AsString;
        if SMZLQry.fieldbyname('qty').AsString='' then sqty:='0000';
        //產能
        if length(SMZLQry.fieldbyname('nowqty').AsString)=4 then
            Nqty:=SMZLQry.fieldbyname('nowqty').AsString;
        if length( SMZLQry.fieldbyname('nowqty').AsString)=3 then
            Nqty:='0'+SMZLQry.fieldbyname('nowqty').AsString;
        if length(SMZLQry.fieldbyname('nowqty').AsString)=2 then
            Nqty:='00'+SMZLQry.fieldbyname('nowqty').AsString;
        if length(SMZLQry.fieldbyname('nowqty').AsString)=1 then
            Nqty:='000'+SMZLQry.fieldbyname('nowqty').AsString;
        if SMZLQry.fieldbyname('nowqty').AsString='' then Nqty:='0000';

        if TXTVerCombo.Text='LED Ver2' then
        begin
          // PT 累計時產能達成率
          if length(SMZLQry.fieldbyname('PT').AsString)=4 then
              pt:=SMZLQry.fieldbyname('PT').AsString;
          if length( SMZLQry.fieldbyname('PT').AsString)=3 then
              pt:='0'+SMZLQry.fieldbyname('PT').AsString;
          if length(SMZLQry.fieldbyname('PT').AsString)=2 then
              pt:='00'+SMZLQry.fieldbyname('PT').AsString;
          if length(SMZLQry.fieldbyname('PT').AsString)=1 then
              pt:='000'+SMZLQry.fieldbyname('PT').AsString;
          if SMZLQry.fieldbyname('PT').AsString='' then pt:='0000';
        end;
        //RFT
        if length(SMZLQry.fieldbyname('rft').AsString)=4 then
            rft:=SMZLQry.fieldbyname('rft').AsString;
        if length( SMZLQry.fieldbyname('rft').AsString)=3 then
            rft:='0'+SMZLQry.fieldbyname('rft').AsString;
        if length(SMZLQry.fieldbyname('rft').AsString)=2 then
            rft:='00'+SMZLQry.fieldbyname('rft').AsString;
        if length(SMZLQry.fieldbyname('rft').AsString)=1 then
            rft:='000'+SMZLQry.fieldbyname('rft').AsString;
        if SMZLQry.fieldbyname('rft').AsString='' then rft:='0000';

        // FTT FOR CUSTOMER
        // A02-LEAN01
      {  if (SMZLQry.FieldByName('sumline').AsString = 'A02L0101') then
        begin
        // 90.3%
        rft := '0903'
        end;
        // A02-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0102') then
        begin
        // 94.9%
        rft := '0949'
        end;
        // A02-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0103') then
        begin
        // 90.5%
        rft := '0905'
        end;
        // A02-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0104') then
        begin
        // 91.6%
        rft := '0916'
        end;

        // A03-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0205') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A03-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0206') then
        begin
        // 94.6%
        rft := '0946'
        end;
        // A03-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0207') then
        begin
        // 91.8%
        rft := '0918'
        end;
        // A03-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0208') then
        begin
        // 90.1%
        rft := '0901'
        end;
        // A03-LEAN05
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0209') then
        begin
        // 91.1%
        rft := '0911'
        end;

        // A07-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0101') then
        begin
        // 94.0%
        rft := '0940'
        end;
        // A07-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0102') then
        begin
        // 93.2%
        rft := '0932'
        end;
        // A07-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0103') then
        begin
        // 90.9%
        rft := '0909'
        end;
        // A07-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0104') then
        begin
        // 90.3%
        rft := '0903'
        end;

        // A08-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0205') then
        begin
        // 93.7%
        rft := '0937'
        end;
        // A08-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0206') then
        begin
        // 92.8%
        rft := '0928'
        end;
        // A08-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0207') then
        begin
        // 93.3%
        rft := '0933'
        end;
        // A08-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0208') then
        begin
        // 92.6%
        rft := '0926'
        end;

        // A09-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0309') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A09-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0310') then
        begin
        // 94.1%
        rft := '0941'
        end;
        // A09-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0311') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A09-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0312') then
        begin
        // 94.7%
        rft := '0947'
        end;

        // A11-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0413') then
        begin
        // 91.6%
        rft := '0916'
        end;
        // A11-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0414') then
        begin
        // 90.1%
        rft := '0901'
        end;
        // A11-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0415') then
        begin
        // 91.3%
        rft := '0913'
        end;
        // A11-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0416') then
        begin
        // 98.2%
        rft := '0982'
        end;
        // A11-LEAN06
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0417') then
        begin
        // 96.5%
        rft := '0965'
        end;

        // A12-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0517') then
        begin
        // 93.1%
        rft := '0931'
        end;
        // A12-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0518') then
        begin
        // 90.3%
        rft := '0903'
        end;
        // A12-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0519') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A12-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0520') then
        begin
        // 91.5%
        rft := '0915'
        end;

        // A15-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0621') then
        begin
        // 91.3%
        rft := '0913'
        end;
        // A15-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0623') then
        begin
        // 90.9%
        rft := '0909'
        end;
        // A15-LEAN04
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0624') then
        begin
        // 90.0%
        rft := '0900'
        end;
        // A15-LEAN05
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0625') then
        begin
        // 91.7%
        rft := '0917'
        end;
        // A15-LEAN06
        if (SMZLQry.FieldByName('sumline').AsString = 'A01L0626') then
        begin
        // 92.2%
        rft := '0922'
        end;

        // A16-LEAN01
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0309') then
        begin
        // 90.2%
        rft := '0902'
        end;
        // A16-LEAN02
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0310') then
        begin
        // 92.4%
        rft := '0924'
        end;
        // A16-LEAN03
        if (SMZLQry.FieldByName('sumline').AsString = 'A02L0311') then
        begin
        // 92.0%
        rft := '0920'
        end; }

        sline1:='2'+sqty+nqty+pt+rft;
        //sline1:=sline1+inttostr((inttostr(q1.fieldbyname('nowqty').Value)/q1.fieldbyname('qty').Value)*100);
        writeln(filevar1, sline1);
        closefile(filevar1);
      end;
    end;

    SMZLQry.Next;
  end;
  //執行廠商snedsm.exe傳給LED設備顯示
  ShellExecute(handle,'open', 'show.bat' ,'.','',1);
 except
   on E:Exception do
   begin
     database.Connected:=false;
     funcObj.WriteErrorLog(datetimetostr(now)+' GetLEDInfo Error:'+E.Message);
   end;
 end;
end;
//
procedure TLEDShowForm.Button1Click(Sender: TObject);
begin
  if timer1.Enabled then
  begin
    timer1.Enabled:=false;
    button1.Caption:='Start Show';
    funcObj.WriteErrorLog(datetimetostr(now)+' Stop Timer');
  end
  else
  begin
    timer1.Enabled:=true;
    button1.Caption:='Stop Show';
    funcObj.WriteErrorLog(datetimetostr(now)+' Start Timer');
  end;

end;

procedure TLEDShowForm.databaseLogin(Database: TDatabase;
  LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    a,susername,spassword,sline,pp:string;

begin
  assignfile(textfilevar,a+'datalogin.txt');
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
  //
  pp:=sline;
  ad:=dayofweek(now); //取得加密字元
  sline:=inttostr(ad);

  for i:=1 to (length(pp)) do //加密迴圈
  begin
    tempstr:=copy(pp,i,1);
    sline:=sline+chr(ord(tempstr[1])+ad+100);
  end;
  assignfile(textfilevar,a+'datalogin.txt');
  Rewrite(textfilevar);
  writeln(textfilevar,sline);
  closefile(textfilevar);
end;

procedure TLEDShowForm.ListGSBH();
begin
  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSDH from Bgszl where SFL=''PD'' and YN=1 ');
    Active:=true;
    GSBHCombo.Clear;
    while not Eof do
    begin
      GSBHCombo.Items.add(FieldByName('GSDH').AsString);
      Next;
    end;
    Active:=false;
    if GSBHCombo.Items.Count>0 then GSBHCombo.ItemIndex:=0;
  end;
end;      

procedure TLEDShowForm.FormCreate(Sender: TObject);
var sline:string;
    databasevar:textfile;
begin
  //Connect DB
  database.Connected:=false;
  assignfile(databasevar,'database.txt');
  reset(databasevar);
  readln(databasevar,sline);
  closefile(databasevar);
  database.aliasname:=sline;
  database.Connected:=true;
  //
  FuncObj:=TFUncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ListGSBH();
  Readini();
  //檢查RFT 部門清單是否要更新
  UpdateQC_RFT_Dep_List();
  //產生LED顯示資訊
//  UpdateRFTInfo();
  GetLEDInfo();
  //產生右下角icon
  IsCanClose:=false;
  AddPaoServiceIcon(NIM_ADD);
  //隱藏主視窗
  Application.ShowMainForm:=false;//
end;

procedure TLEDShowForm.Timer1Timer(Sender: TObject);
begin
   Timer1.Enabled:=false;
//   UpdateRFTInfo();
   GetLEDInfo();
   Timer1.Enabled:=true;
end;

procedure TLEDShowForm.ExecBtnClick(Sender: TObject);
begin
   Timer1.Enabled:=false;
//   if QryVerCombo.Text <> 'Tyxuan' then
//     UpdateRFTInfo();
   GetLEDInfo();
   Timer1.Enabled:=true;
end;

procedure TLEDShowForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   LEDShowForm.Hide();
end;

procedure TLEDShowForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if IsCanClose=true then CanClose:=true else CanClose:=false;
   if(CanClose<>true) then
   begin
      Hide();
   end;
end;

procedure TLEDShowForm.FormDestroy(Sender: TObject);
begin
  Writeini();
  FuncObj.Free;
  AddPaoServiceIcon(NIM_DELETE);
end;

procedure TLEDShowForm.Show1Click(Sender: TObject);
begin
  LEDShowForm.Show;
end;

procedure TLEDShowForm.Close1Click(Sender: TObject);
begin
  IsCanClose:=true;
  Close;
end;

end.
