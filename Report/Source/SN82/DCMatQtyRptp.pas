unit DCMatQtyRptp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh,DateUtils, DB, DBTables,
  Buttons, ComCtrls,comobj;

type
  TDCMatQtyRpt = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    QryBtn: TButton;
    TLFLDBGridEh: TDBGridEh;
    LastMonth: TLabel;
    DS: TDataSource;
    tempQuery: TQuery;
    DC_TLFLRpt: TQuery;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BaseDate: TDateTimePicker;
    bbt6: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    DC_TLFLRptCLDH: TStringField;
    DC_TLFLRptYWPM: TStringField;
    DC_TLFLRptTQty: TFloatField;
    DC_TLFLRptAQty: TFloatField;
    DC_TLFLRptBQty: TFloatField;
    DC_TLFLRptCQty: TFloatField;
    DC_TLFLRptDQty: TFloatField;
    DC_TLFLRptEQty: TFloatField;
    DC_TLFLRptFQty: TFloatField;
    DC_TLFLRptGQty: TFloatField;
    CKQty: TCheckBox;
    procedure Button2Click(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BaseDateChange(Sender: TObject);
    procedure LastMonthDblClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
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
    function CheckLastMonthEnding():boolean;
  public
    { Public declarations }
  end;

var
  DCMatQtyRpt: TDCMatQtyRpt;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TDCMatQtyRpt.Button2Click(Sender: TObject);
begin
  with DC_TLFLRpt do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add(' select CLZL.CLDH,CLZL.YWPM,');
      SQL.Add('       (IsNULL(RKTLFL.TQty,0)-IsNULL(LLTLFL.TQty,0)+IsNull(TLFLMO.TQty,0)) as TQty,');
      SQL.Add('       (IsNULL(RKTLFL.AQty,0)-IsNULL(LLTLFL.AQty,0)+IsNull(TLFLMO.AQty,0)) as AQty,');
      SQL.Add('       (IsNULL(RKTLFL.BQty,0)-IsNULL(LLTLFL.BQty,0)+IsNull(TLFLMO.BQty,0)) as BQty, ');
      SQL.Add('       (IsNULL(RKTLFL.CQty,0)-IsNULL(LLTLFL.CQty,0)+IsNull(TLFLMO.CQty,0)) as CQty,');
      SQL.Add('       (IsNULL(RKTLFL.DQty,0)-IsNULL(LLTLFL.DQty,0)+IsNull(TLFLMO.DQty,0)) as DQty,');
      SQL.Add('       (IsNULL(RKTLFL.EQty,0)-IsNULL(LLTLFL.EQty,0)+IsNull(TLFLMO.EQty,0)) as EQty,');
      SQL.Add('       (IsNULL(RKTLFL.FQty,0)-IsNULL(LLTLFL.FQty,0)+IsNull(TLFLMO.FQty,0)) as FQty,');
      SQL.Add('       (IsNULL(RKTLFL.GQty,0)-IsNULL(LLTLFL.GQty,0)+IsNull(TLFLMO.GQty,0) ) as GQty ');
      SQL.Add('from ');
      //本月入庫 Union 上個月材料剩餘數量加總
      SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from ');
      SQL.Add('(select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
      SQL.Add('left join KCRKS on KCRKS.RKNO=DC_TLFL.DJBH and KCRKS.CLBH=DC_TLFL.CLBH and KCRKS.CGBH=DC_TLFL.DFL1 and KCRKS.RKSB=DC_TLFL.DFL2 ');
      SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('where   DC_TLFL.GSBH='''+main.sGSBH+''' and convert(smalldatetime,convert(varchar,KCRK.UserDate,111)) between '''+STDate+''' and '''+EDDate+''' and DC_TLFL.LB=1 and DC_TLFL.YN=1  ');
      SQL.Add('group by DC_TLFL.CLBH ');
      //加工進
      SQL.Add('Union All');
      SQL.Add('select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
      SQL.Add('left join JGZLS on JGZLS.JGNO=DC_TLFL.DJBH and JGZLS.CLBH=DC_TLFL.DFL1 and JGZLS.ZMLB=DC_TLFL.DFL2 ');
      SQL.Add('left join JGZL on JGZLS.JGNO=JGZL.JGNO ');
      SQL.Add('where  DC_TLFL.GSBH='''+main.sGSBH+''' and JGZL.CFMID1<>''NO'' and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+STDate+''' and '''+EDDate+''' and DC_TLFL.LB=3 and DC_TLFL.DFL2=''ZZZZZZZZZZ'' and DC_TLFL.YN=1  ');
      SQL.Add('group by DC_TLFL.CLBH ');
      //
      SQL.Add('Union All ');
      SQL.Add('(select CLBH,TQty,AQty,BQty,CQty,DQty,EQty,FQty,GQty from DC_TLFLMonth where GSBH='''+main.sGSBH+''' and DCYEAR='''+LastYear+''' and DCMonth='''+LastMon+'''))as tmpRKTLFL group by CLBH) as RKTLFL ');
      //扣除出庫 (不可能有只有出庫完全沒入庫的材料)
      SQL.Add('left join ');
      SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from ');
      SQL.Add('(select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
      SQL.Add('left join KCLLS on KCLLS.LLNO=DC_TLFL.DJBH and KCLLS.CLBH=DC_TLFL.CLBH and KCLLS.DFL=DC_TLFL.DFL1 and KCLLS.SCBH=DC_TLFL.DFL2 ');
      SQL.Add('left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add('where  DC_TLFL.GSBH='''+main.sGSBH+''' and KCLL.CFMID<>''NO'' and  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+STDate+''' and '''+EDDate+''' and DC_TLFL.LB=2  and DC_TLFL.YN=1 ');
      SQL.Add('group by DC_TLFL.CLBH ');//出庫
      //加工出
      SQL.Add('Union All ');
      SQL.Add('select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
      SQL.Add('left join JGZLS on JGZLS.JGNO=DC_TLFL.DJBH and JGZLS.CLBH=DC_TLFL.DFL1 and JGZLS.ZMLB=DC_TLFL.DFL2 ');
      SQL.Add('left join JGZL on JGZLS.JGNO=JGZL.JGNO ');
      SQL.Add('where  DC_TLFL.GSBH='''+main.sGSBH+'''  and JGZL.CFMID1<>''NO'' and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+STDate+''' and '''+EDDate+''' and DC_TLFL.LB=3 and DC_TLFL.DFL2<>''ZZZZZZZZZZ'' and DC_TLFL.YN=1  ');
      SQL.Add('group by DC_TLFL.CLBH ) as tmpLLTLFL group by CLBH');
      //
      SQL.Add(') as LLTLFL on RKTLFL.CLBH=LLTLFL.CLBH ');
      //20150624庫存分類轉移
      SQL.Add('left join (select DC_TLFL.CLBH,0 as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty from DC_TLFL ');
      SQL.Add(' where DC_TLFL.GSBH='''+main.sGSBH+''' and DC_TLFL.LB=4 and YN=1 and convert(smalldatetime,convert(varchar,DC_TLFL.UserDate,111)) between '''+STDate+''' and '''+EDDate+''' group by DC_TLFL.CLBH ) as TLFLMO on RKTLFL.CLBH=TLFLMO.CLBH ');
      //
      SQL.Add('left join clzl on CLZL.CLDH=RKTLFL.CLBH');
      SQL.Add(' where CLZL.CLDH like ''%'+Edit1.Text+'%'' ');
      if Edit2.Text<>'' then
        SQL.Add('       and CLZL.YWPM like ''%'+Edit2.Text+'%'' ');
      if CKQty.Checked=true then
        SQL.Add('       and (IsNULL(RKTLFL.TQty,0)-IsNULL(LLTLFL.TQty,0))>0 ');
      SQL.Add(' order by RKTLFL.CLBH');
      Active:=true;
  end;
  Panel2.Visible:=false;
end;

procedure TDCMatQtyRpt.QryBtnClick(Sender: TObject);
begin
  
end;
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
procedure TDCMatQtyRpt.GetDateParam();
var myYear, myMonth, myDay : Word;
    tmpDate:TDate;
begin
  //取得上個月起始和結束日期
  tmpDate:=incmonth(BaseDate.Date,-1);
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
  tmpDate:=incmonth(BaseDate.Date,-2);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon2:=Format('%.2d',[myMonth]);
  LastYear2:=Format('%.4d',[myYear]);
  //取得當月初和今天日期
  DecodeDate(BaseDate.Date, myYear, myMonth, myDay);
  STDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //月初日期
  EDDate:=FormatDateTime('YYYY/MM/DD', BaseDate.Date);//基礎日
end;
procedure TDCMatQtyRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TDCMatQtyRpt.FormDestroy(Sender: TObject);
begin
    DCMatQtyRpt:=nil;
end;
//檢查上個月是否結算資料
function TDCMatQtyRpt.CheckLastMonthEnding():boolean;
begin
 with  tempQuery do
 begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DCYear from DC_TLFLMonth where GSBH='''+main.sGSBH+''' and DCYear='''+LastYear+''' and DCMonth='''+LastMon+''' ');
    Active:=true;
    //是否有上個月資料
    if RecordCount=0 then
      result:=false
    else
      result:=true;
    active:=false;
 end;
end;
//上個月結束
procedure TDCMatQtyRpt.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TDCMatQtyRpt.BB2Click(Sender: TObject);
begin
  //if  Messagedlg(Pchar('Are you sure caluate Monthly Ending?'),mtInformation,[mbYES,mbNo],0)=mrYes then
  //檢查是否月結資料是否已經存在
  if CheckLastMonthEnding()=false then
  begin
      //產生月結資料
      with  tempQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DC_TLFLMonth where GSBH='''+main.sGSBH+''' and DCYear='''+LastYear+''' and DCMonth='''+LastMon+''' ');
        SQL.Add('Insert into DC_TLFLMonth ');
        SQL.Add('select '''+LastYear+''' as DCYear,'''+LastMon+''' as DCMonth,'''+main.sGSBH+''',RKTLFL.CLBH,');
        SQL.Add('       (IsNULL(RKTLFL.TQty,0)-IsNULL(LLTLFL.TQty,0)+IsNull(TLFLMO.TQty,0)) as TQty,');
        SQL.Add('       (IsNULL(RKTLFL.AQty,0)-IsNULL(LLTLFL.AQty,0)+IsNull(TLFLMO.AQty,0)) as AQty,');
        SQL.Add('       (IsNULL(RKTLFL.BQty,0)-IsNULL(LLTLFL.BQty,0)+IsNull(TLFLMO.BQty,0)) as BQty, ');
        SQL.Add('       (IsNULL(RKTLFL.CQty,0)-IsNULL(LLTLFL.CQty,0)+IsNull(TLFLMO.CQty,0)) as CQty,');
        SQL.Add('       (IsNULL(RKTLFL.DQty,0)-IsNULL(LLTLFL.DQty,0)+IsNull(TLFLMO.DQty,0)) as DQty,');
        SQL.Add('       (IsNULL(RKTLFL.EQty,0)-IsNULL(LLTLFL.EQty,0)+IsNull(TLFLMO.EQty,0)) as EQty,');
        SQL.Add('       (IsNULL(RKTLFL.FQty,0)-IsNULL(LLTLFL.FQty,0)+IsNull(TLFLMO.FQty,0)) as FQty,');
        SQL.Add('       (IsNULL(RKTLFL.GQty,0)-IsNULL(LLTLFL.GQty,0)+IsNull(TLFLMO.GQty,0)) as GQty,');
        SQL.Add('       '''+main.sUser+''' as UserID,GetDate() as UserDate ');
        SQL.Add('from ');
        //上個月入庫(有可能上個月完全沒入庫會造成空值而無法月結) Union 上上個月材料剩餘數量加總
        SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from ');
        SQL.Add('(select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
        SQL.Add('left join KCRKS on KCRKS.RKNO=DC_TLFL.DJBH and KCRKS.CLBH=DC_TLFL.CLBH and KCRKS.CGBH=DC_TLFL.DFL1 and KCRKS.RKSB=DC_TLFL.DFL2 ');
        SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        SQL.Add('where  DC_TLFL.GSBH='''+main.sGSBH+''' and  convert(smalldatetime,convert(varchar,KCRK.UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' and DC_TLFL.LB=1 ');
        SQL.Add('group by DC_TLFL.CLBH ');
        //加工進
        SQL.Add('Union All');
        SQL.Add('select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
        SQL.Add('left join JGZLS on JGZLS.JGNO=DC_TLFL.DJBH and JGZLS.CLBH=DC_TLFL.DFL1 and JGZLS.ZMLB=DC_TLFL.DFL2 ');
        SQL.Add('left join JGZL on JGZLS.JGNO=JGZL.JGNO ');
        SQL.Add('where  DC_TLFL.GSBH='''+main.sGSBH+''' and JGZL.CFMID1<>''NO'' and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' and DC_TLFL.LB=3 and DC_TLFL.DFL2=''ZZZZZZZZZZ'' ');
        SQL.Add('group by DC_TLFL.CLBH ');
        //
        SQL.Add('Union All');
        SQL.Add('(select CLBH,TQty,AQty,BQty,CQty,DQty,EQty,FQty,GQty from DC_TLFLMonth where GSBH='''+main.sGSBH+''' and DCYEAR='''+LastYear2+''' and DCMonth='''+LastMon2+'''))as tmpRKTLFL group by CLBH) as RKTLFL ');
        SQL.Add('left join ');
        //扣除出庫
        SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from ');
        SQL.Add('(select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
        SQL.Add('left join KCLLS on KCLLS.LLNO=DC_TLFL.DJBH and KCLLS.CLBH=DC_TLFL.CLBH and KCLLS.DFL=DC_TLFL.DFL1 and KCLLS.SCBH=DC_TLFL.DFL2 ');
        SQL.Add('left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        SQL.Add('where  DC_TLFL.GSBH='''+main.sGSBH+''' and KCLL.CFMID<>''NO'' and  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' and DC_TLFL.LB=2 ');
        SQL.Add('group by DC_TLFL.CLBH ');
        //加工出
        SQL.Add('Union All ');
        SQL.Add('select DC_TLFL.CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
        SQL.Add('left join JGZLS on JGZLS.JGNO=DC_TLFL.DJBH and JGZLS.CLBH=DC_TLFL.DFL1 and JGZLS.ZMLB=DC_TLFL.DFL2 ');
        SQL.Add('left join JGZL on JGZLS.JGNO=JGZL.JGNO ');
        SQL.Add('where  DC_TLFL.GSBH='''+main.sGSBH+'''  and JGZL.CFMID1<>''NO'' and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' and DC_TLFL.LB=3 and DC_TLFL.DFL2<>''ZZZZZZZZZZ'' ');
        SQL.Add('group by DC_TLFL.CLBH ) as tmpLLTLFL group by CLBH');
        //
        SQL.Add(') as LLTLFL on RKTLFL.CLBH=LLTLFL.CLBH ');
        //20150624庫存分類轉移
        SQL.Add('left join (select DC_TLFL.CLBH,0 as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty from DC_TLFL ');
        SQL.Add(' where DC_TLFL.GSBH='''+main.sGSBH+''' and DC_TLFL.LB=4 and YN=1 and convert(smalldatetime,convert(varchar,DC_TLFL.UserDate,111)) between '''+STDate+''' and '''+EDDate+''' group by DC_TLFL.CLBH ) as TLFLMO on RKTLFL.CLBH=TLFLMO.CLBH ');
        //
        SQL.Add('left join clzl on CLZL.CLDH=RKTLFL.CLBH ');
        SQL.Add('where (IsNULL(RKTLFL.TQty,0)-IsNULL(LLTLFL.TQty,0))>0 ');
        SQL.Add('order by RKTLFL.CLBH');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL();
      end;
      //鎖定 入庫DC_TLFL明細 YN=2 避免修改異動
      with  tempQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update DC_TLFL Set YN=''2'' where GSBH='''+main.sGSBH+''' and convert(smalldatetime,convert(varchar,UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' '  );
        ExecSQL();
      end;
      if CheckLastMonthEnding()=true then LastMonth.Caption:='';
      showmessage('Tinh het / Calculate over!');
  end else
  begin
    showmessage(' Co ket thuc hang thang /Have Monthly Ending!');
  end;

end;

procedure TDCMatQtyRpt.FormCreate(Sender: TObject);
begin
  //取得時間參數
  BaseDate.Date:=Date();//預設以今天為基準日
  GetDateParam();
  //CDC 和 KDC顯示項目不一樣
  if main.sGSBH='CDC' then
  begin
    TLFLDBGridEh.Columns[7].Visible:=false;
    TLFLDBGridEh.Columns[8].Visible:=false;
   //和預設介面一樣
  end;
  if main.sGSBH='KDC' then
  begin
    TLFLDBGridEh.Columns[3].Title.Caption:='K-SwissQty';
    TLFLDBGridEh.Columns[4].Title.Caption:='PALLADIUMQty';
    TLFLDBGridEh.Columns[5].Title.Caption:='361Qty';
    TLFLDBGridEh.Columns[6].Title.Caption:='G-STARQty';
    TLFLDBGridEh.Columns[7].Title.Caption:='TOMMYQty';
    TLFLDBGridEh.Columns[8].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[9].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[7].Visible:=true;
    TLFLDBGridEh.Columns[8].Visible:=true;
    TLFLDBGridEh.Columns[9].Visible:=true;
  end;
end;

procedure TDCMatQtyRpt.BaseDateChange(Sender: TObject);
begin
  //取得時間參數
  GetDateParam();
end;

procedure TDCMatQtyRpt.LastMonthDblClick(Sender: TObject);
begin

  BaseDate.Visible:=BaseDate.Visible xor true;
  //取得時間參數
  GetDateParam();
end;

procedure TDCMatQtyRpt.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  DC_TLFLRpt.active  then
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
          for   i:=0   to   DC_TLFLRpt.fieldcount-1   do  //最後兩個是備用欄位目前用不到
            begin
                eclApp.Cells(1,i+1):=DC_TLFLRpt.fields[i].FieldName;
            end;

          DC_TLFLRpt.First;
          j:=2;
          while   not   DC_TLFLRpt.Eof   do
            begin
              for   i:=0   to  DC_TLFLRpt.fieldcount-1  do   //最後兩個是備用欄位目前用不到
              begin
                eclApp.Cells(j,i+1):=DC_TLFLRpt.Fields[i].Value;
              end;
            DC_TLFLRpt.Next;
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
