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
    DBGridEh: TDBGridEh;
    LastMonth: TLabel;
    DS: TDataSource;
    tempQuery: TQuery;
    DC_TLFLRpt: TQuery;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BaseDate: TDateTimePicker;
    bbt6: TBitBtn;
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
      SQL.Add('       (IsNULL(RKTLFL.TQty,0)-IsNULL(LLTLFL.TQty,0)) as TQty,');
      SQL.Add('       (IsNULL(RKTLFL.AQty,0)-IsNULL(LLTLFL.AQty,0)) as AQty,');
      SQL.Add('       (IsNULL(RKTLFL.BQty,0)-IsNULL(LLTLFL.BQty,0)) as BQty, ');
      SQL.Add('       (IsNULL(RKTLFL.CQty,0)-IsNULL(LLTLFL.CQty,0)) as CQty,');
      SQL.Add('       (IsNULL(RKTLFL.DQty,0)-IsNULL(LLTLFL.DQty,0)) as DQty,');
      SQL.Add('       (IsNULL(RKTLFL.EQty,0)-IsNULL(LLTLFL.EQty,0)) as EQty,');
      SQL.Add('       (IsNULL(RKTLFL.FQty,0)-IsNULL(LLTLFL.FQty,0)) as FQty,');
      SQL.Add('       (IsNULL(RKTLFL.GQty,0)-IsNULL(LLTLFL.GQty,0)) as GQty ');
      SQL.Add('from ');
      //本月入庫 Union 上個月材料剩餘數量加總
      SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from ');
      SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
      SQL.Add('where   convert(smalldatetime,convert(varchar,UserDate,111)) between '''+STDate+''' and '''+EDDate+''' and LB=1 ');
      SQL.Add('group by CLBH ');
      SQL.Add('Union ');
      SQL.Add('(select CLBH,TQty,AQty,BQty,CQty,DQty,EQty,FQty,GQty from DC_TLFLMonth where DCYEAR='''+LastYear+''' and DCMonth='''+LastMon+'''))as tmpRKTLFL group by CLBH) as RKTLFL ');
      //扣除出庫 (不可能有只有出庫完全沒入庫的材料)
      SQL.Add('left join ');
      SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
      SQL.Add('where   convert(smalldatetime,convert(varchar,UserDate,111)) between '''+STDate+''' and '''+EDDate+''' and LB=2 ');
      SQL.Add('group by CLBH) as LLTLFL on RKTLFL.CLBH=LLTLFL.CLBH ');//出庫
      SQL.Add('left join clzl on CLZL.CLDH=RKTLFL.CLBH');
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
  EDDate:=FormatDateTime('YYYY/MM/DD', Date());//今天
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
    SQL.Add('Select DCYear from DC_TLFLMonth where DCYear='''+LastYear+''' and DCMonth='''+LastMon+''' ');
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
        SQL.Add('Delete from DC_TLFLMonth where DCYear='''+LastYear+''' and DCMonth='''+LastMon+''' ');
        SQL.Add('Insert into DC_TLFLMonth ');
        SQL.Add('select '''+LastYear+''' as DCYear,'''+LastMon+''' as DCMonth,RKTLFL.CLBH,');
        SQL.Add('       (IsNULL(RKTLFL.TQty,0)-IsNULL(LLTLFL.TQty,0)) as TQty,');
        SQL.Add('       (IsNULL(RKTLFL.AQty,0)-IsNULL(LLTLFL.AQty,0)) as AQty,');
        SQL.Add('       (IsNULL(RKTLFL.BQty,0)-IsNULL(LLTLFL.BQty,0)) as BQty, ');
        SQL.Add('       (IsNULL(RKTLFL.CQty,0)-IsNULL(LLTLFL.CQty,0)) as CQty,');
        SQL.Add('       (IsNULL(RKTLFL.DQty,0)-IsNULL(LLTLFL.DQty,0)) as DQty,');
        SQL.Add('       (IsNULL(RKTLFL.EQty,0)-IsNULL(LLTLFL.EQty,0)) as EQty,');
        SQL.Add('       (IsNULL(RKTLFL.FQty,0)-IsNULL(LLTLFL.FQty,0)) as FQty,');
        SQL.Add('       (IsNULL(RKTLFL.GQty,0)-IsNULL(LLTLFL.GQty,0)) as GQty,');
        SQL.Add('       '''+main.Edit1.Text+''' as UserID,GetDate() as UserDate ');
        SQL.Add('from ');
        //上個月入庫(有可能上個月完全沒入庫會造成空值而無法月結) Union 上上個月材料剩餘數量加總
        SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from ');
        SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
        SQL.Add('where   convert(smalldatetime,convert(varchar,UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' and LB=1 ');
        SQL.Add('group by CLBH ');
        SQL.Add('Union ');
        SQL.Add('(select CLBH,TQty,AQty,BQty,CQty,DQty,EQty,FQty,GQty from DC_TLFLMonth where DCYEAR='''+LastYear2+''' and DCMonth='''+LastMon2+'''))as tmpRKTLFL group by CLBH) as RKTLFL ');
        SQL.Add('left join ');
        //扣除出庫
        SQL.Add('(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as BQty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(FQty) as FQty,Sum(GQty) as GQty  from DC_TLFL ');
        SQL.Add('where   convert(smalldatetime,convert(varchar,UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' and LB=2 ');
        SQL.Add('group by CLBH) as LLTLFL on RKTLFL.CLBH=LLTLFL.CLBH ');
        SQL.Add('left join clzl on CLZL.CLDH=RKTLFL.CLBH');
        SQL.Add(' order by RKTLFL.CLBH');
        ExecSQL();
      end;
      //鎖定 入庫DC_TLFL明細 YN=2 避免修改異動
      with  tempQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update DC_TLFL Set YN=''2'' where convert(smalldatetime,convert(varchar,UserDate,111)) between '''+STLastMonDate+''' and '''+EDLastMonDate+''' '  );
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
          for   i:=0   to   DC_TLFLRpt.fieldcount-1-2   do  //最後兩個是備用欄位目前用不到
            begin
                eclApp.Cells(1,i+1):=DC_TLFLRpt.fields[i].FieldName;
            end;

          DC_TLFLRpt.First;
          j:=2;
          while   not   DC_TLFLRpt.Eof   do
            begin
              for   i:=0   to  DC_TLFLRpt.fieldcount-1-2  do   //最後兩個是備用欄位目前用不到
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
