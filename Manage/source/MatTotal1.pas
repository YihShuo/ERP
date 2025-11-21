unit MatTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  PrnDbgeh, Menus,comobj;

type
  TMatTotal = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button2: TButton;
    Label6: TLabel;
    CBX4: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    RadG1: TRadioGroup;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1DaoMH: TStringField;
    Query1KFJC: TStringField;
    Query1pairs: TIntegerField;
    Query1OrdACC: TFloatField;
    Query1IPrice: TCurrencyField;
    Query1InACC: TCurrencyField;
    Query1LLACC: TFloatField;
    Query1BLACC: TFloatField;
    Query1InQty: TIntegerField;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Query1okQty: TIntegerField;
    Query1okACC: TCurrencyField;
    Query1ZLACC: TFloatField;
    Query1okLLACC: TFloatField;
    Query1okBLACC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatTotal: TMatTotal;
  NDate:TDate;

implementation

uses main1, MatTotal_Det1;

{$R *.dfm}

procedure TMatTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with Qtemp  do
  begin
    active:=false;
    sql.Clear;
    {sql.add('  if object_id('+''''+'tempdb..#totUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #totUSPrice end   ');  }
    sql.add('if object_id('+''''+'tempdb..#KCLLS'+''''+') is not null  ');
    sql.add('  begin   drop table #KCLLS end   ');
    execsql;
    active:=false;
  end;
action:=cafree;
end;

procedure TMatTotal.FormDestroy(Sender: TObject);
begin
MatTotal:=nil;
end;

procedure TMatTotal.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin 
    active:=false;
    sql.Clear; 
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    {active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#totUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #totUSPrice end   ');
    sql.add('declare @HL int ');
    sql.add('set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMONTH DESC,HLDAY DESC)  ');
    sql.add('select CLDH as CLBH ,case when USPrice is null then round(convert(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice');
    sql.add('into #totUSPrice from (select CLZL.CLDH,');
    sql.add('                      (select top 1 USPrice from KCRKS');
    sql.add('                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))  ');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))');
    sql.add('                         order by USERDATE  desc)  as USPrice,');
    sql.add('                      (select top 1 VNPrice from KCRKS  ');
    sql.add('                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))    ');
    sql.add('                         order by USERDATE  desc)  as VNPrice');
    sql.add('from CLZL ) CLZL  ');
    sql.add('where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  ');
    sql.Add(' order by CLZL.CLDH  ');
    execsql;}
    active:=false;
  end;
DTP1.date:=Ndate-7;
DTP2.date:=Ndate;

end;

procedure TMatTotal.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('if object_id('+''''+'tempdb..#KCLLS'+''''+') is not null  ');
    sql.add('  begin   drop table #KCLLS end   ');
    sql.add('select KCLLS.CLBH,KCLL.CFMDate,KCLLS.SCBH,KCLLS.Qty,isnull(KCLLS.BLSB,'+''''+''+''''+') as BLSB ');
    sql.add('into #KCLLS from KCLLS ');
    sql.add('left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    //sql.add('left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date-30)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date+10)+'''');
    sql.add('      and KCLLS.Qty<>0 ');
    sql.add('      and KCLL.CFMID<>'+''''+'NO'+'''');
    //sql.add('      and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
    sql.add('order by KCLLS.SCBH,KCLL.CFMDate');

    //計算金額
    sql.add('select DDZL.DDBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,DDZL.pairs,DDZLS.IPrice,DDZLS.OrdACC,');
    sql.add('       YWCPin.InQty,YWCPin.InACC,YWCPok.okQty,YWCPok.okACC,KCLLS.LLACC,KCBLS.BLACC,ZLZLS2.ZLACC');
    sql.add('       ,okLLS.okLLACC,okBLS.okBLACC ');
    sql.add('from DDZL ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH');
    //訂單總金額
    sql.add('left join (select DDBH,avg(DDZLS.IPrice) as IPrice,sum(Quantity*IPrice) as OrdACC');
    sql.add('           from DDZLS ');
    sql.add('           group by DDBH )DDZLS on DDZL.DDBH=DDZLS.DDBH');
    //成品倉總入庫金額
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWCPok.Qty) as okQty,sum(YWCPok.Qty*YWDDS.IPrice) as okACC');
    sql.add('           from (select YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
    sql.add('                 from YWCP ');
    sql.add('                 left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');  
    sql.add('                 where YWCP.InDate is not null ');
    sql.add('                 group by  YWCP.DDBH,YWBZPOS.DDCC) YWCPok ');
    sql.add('           left join YWDDS on YWDDS.DDBH=YWCPok.DDBH and YWDDS.DDCC=YWCPok.DDCC ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCPok.DDBH ');
    sql.add('           group by YWDD.YSBH) YWCPok on DDZL.DDBH=YWCPok.DDBH ');

    //成品倉入庫金額
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWCPin.Qty) as inQty,sum(YWCPin.Qty*YWDDS.IPrice) as InACC');
    sql.add('           from (select YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
    sql.add('                 from YWCP ');
    sql.add('                 left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('                 left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                 group by  YWCP.DDBH,YWBZPOS.DDCC) YWCPin ');
    sql.add('           left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.DDCC ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCPin.DDBH ');
    sql.add('           group by YWDD.YSBH) YWCPin on DDZL.DDBH=YWCPin.DDBH ');
    //制令材料總金額
    sql.add('left join (select ZLZLS2.ZLBH as DDBH,sum(ZLZLS2.CLSL*CWDJ.USPrice) as ZLACC');
    sql.add('           from ZLZLS2');
    sql.add('           left join (select CWDJ.CLBH,avg(CWDJ.USPrice) as USPrice from CWDJ ');
    sql.add('                      group by CLBH ) CWDJ on CWDJ.CLBH=ZLZLS2.CLBH  ');
    sql.add('           where ZLZLS2.MJBH='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('           group by ZLZLS2.ZLBH) ZLZLS2 on ZLZLS2.DDBH=DDZL.DDBH');
    //訂單總領正單料金額
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as okLLACC');
    sql.add('           from #KCLLS');
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           group by #KCLLS.SCBH ) okLLS on okLLS.DDBH=DDZl.DDBH ');
    //時段內正單領料金額
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as LLACC');
    sql.add('           from #KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           where convert(smalldatetime,convert(varchar,#KCLLS.CFMDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    //sql.add('                 and #KCLLS.BLSB<>'+''''+'Y'+'''');
    sql.add('           group by #KCLLS.SCBH ) KCLLS on KCLLS.DDBH=DDZl.DDBH ');
    //時段內補料金額
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as BLACC');
    sql.add('           from #KCLLS ');  
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           where convert(smalldatetime,convert(varchar,#KCLLS.CFMDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                 and #KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('           group by #KCLLS.SCBH ) KCBLS on KCBLS.DDBH=DDZl.DDBH ');
    //補料總金額
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as okBLACC');
    sql.add('           from #KCLLS'); 
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           where #KCLLS.BLSB ='+''''+'Y'+'''') ;
    sql.add('           group by #KCLLS.SCBH ) okBLS on okBLS.DDBH=DDZl.DDBH ');

    
    sql.add('where not (YWCPin.InACC is null and KCLLS.LLACC is null and KCBLS.BLACC is null)');
    if RadG1.itemindex=0 then
      begin
        sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
      end
      else
        begin
          sql.add('         and SCZLDate.GSBH='+''''+CBX4.text+'''');
        end;
    sql.add('order by DDZL.DDBH');       
    active:=true;
  end;
end;

procedure TMatTotal.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

procedure TMatTotal.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
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

procedure TMatTotal.Excel1Click(Sender: TObject);
begin
 Button2Click(nil);
end;

procedure TMatTotal.Print1Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMatTotal.DBGridEh1EditButtonClick(Sender: TObject);
begin

MatTotal_Det:=TMatTotal_Det.create(self);
if ((dbgrideh1.selectedfield.fieldname='pairs') or (dbgrideh1.selectedfield.fieldname='OrdACC')) then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select DDBH,CC,Quantity,IPrice,Quantity*IPrice as USACC  ');
        sql.add('from DDZLS');
        sql.add('where DDBH=:DDBH');
        sql.add('order by CC ');
        active:=true;
        MatTotal_Det.dbgrideh1.columns[2].displayformat:='##,#0'  ;
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.0000' ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.00'  ;
      end;
  end;    
if ((dbgrideh1.selectedfield.fieldname='okQty') or (dbgrideh1.selectedfield.fieldname='okACC')) then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select YWCPok.DDBH,YWCPok.DDCC,YWCPok.Qty as okQty,YWDDS.IPrice,YWCPok.Qty*YWDDS.IPrice as okACC');
        sql.add('from (select YWDD.YSBH as DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
        sql.add('      from YWCP ');
        sql.add('      left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');
        sql.add('      left join YWDD on YWDD.DDBH=YWCP.DDBH ');
        sql.add('      left join BDepartment on BDepartment.ID=YWCP.DepNO ');
        sql.add('      where YWDD.YSBH=:DDBH');
        sql.add('            and YWCP.InDate is not null ');
        sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('      group by  YWDD.YSBH,YWBZPOS.DDCC) YWCPok ');
        sql.add('left join YWDDS on YWDDS.DDBH=YWCPok.DDBH and YWDDS.DDCC=YWCPok.DDCC ');
        sql.add('order by YWCPok.DDBH,YWCPok.DDCC');
        active:=true;
        MatTotal_Det.dbgrideh1.columns[2].displayformat:='##,#0.00'    ;
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.0000'   ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.00'   ;
      end;
  end;
if ((dbgrideh1.selectedfield.fieldname='InQty') or (dbgrideh1.selectedfield.fieldname='InACC')) then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select YWCPin.DDBH,YWCPin.DDCC,YWCPin.Qty as inQty,YWDDS.IPrice,YWCPin.Qty*YWDDS.IPrice as InACC');
        sql.add('from (select YWDD.YSBH as DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
        sql.add('      from YWCP ');
        sql.add('      left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');
        sql.add('      left join YWDD on YWDD.DDBH=YWCP.DDBH ');
        sql.add('      left join BDepartment on BDepartment.ID=YWCP.DepNO ');
        sql.add('      where YWDD.YSBH=:DDBH');
        sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('            and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
        sql.add('      group by  YWDD.YSBH,YWBZPOS.DDCC) YWCPin ');
        sql.add('left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.DDCC ');
        sql.add('order by YWCPin.DDBH,YWCPin.DDCC');
        active:=true;    
        MatTotal_Det.dbgrideh1.columns[2].displayformat:='##,#0'  ;
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.0000'  ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.00'  ;
      end;
  end;
if dbgrideh1.selectedfield.fieldname='LLACC' then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,');
        sql.add('       CWDJ.USPrice,KCLLS.Qty*CWDJ.USPrice as LLACC');
        sql.add('       ,KCLLS.BLSB,SCBLYY.YWSM,SCBLYY.ZWSM');
        sql.add('from (select KCLLS.CLBH,KCLL.CFMDate,KCLLS.LLNO,KCLLS.DFL,KCLLS.YYBH,KCLLS.BLSB,KCLLS.SCBH,KCLLS.Qty');
        sql.add('      from KCLLS ');
        sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
        sql.add('      where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('            and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
        sql.add('            and KCLLS.Qty<>0 ');
        sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('            and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
        sql.add('            and KCLLS.SCBH=:DDBH');
        sql.add('      ) KCLLS ');
        sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
        sql.add('order by KCLLS.CLBH');
        active:=true;
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.00'  ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.0000'  ;
        MatTotal_Det.dbgrideh1.columns[5].displayformat:='##,#0.00'   ;
      end;
  end;
if dbgrideh1.selectedfield.fieldname='BLACC' then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,CWDJ.USPrice,KCLLS.Qty*KCLLS.SYL*CWDJ.USPrice as LLACC');
        sql.add('       ,KCLLS.BLSB,SCBLYY.YWSM,SCBLYY.ZWSM');
        sql.add('from (select KCLLS.CLBH ,KCLL.CFMDate,KCLLS.LLNO,KCLLS.DFL,KCLLS.YYBH,KCLLS.BLSB,KCLLS.SCBH,KCLLS.Qty');
        sql.add('      from KCLLS ');
        sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
        sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
        sql.add('      where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('            and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
        sql.add('            and KCLLS.Qty<>0 ');
        sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('            and KCLLS.BLSB='+''''+'Y'+'''');
        sql.add('            and KCLLS.SCBH=:DDBH');
        sql.add('      ) KCLLS ');
        sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
        sql.add('order by KCLLS.CLBH');
        active:=true;
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.00'     ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.0000'   ;
        MatTotal_Det.dbgrideh1.columns[5].displayformat:='##,#0.00'    ;
      end;
  end;
if dbgrideh1.selectedfield.fieldname='ZLACC' then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select ZLZLS2.ZLBH as DDBH,ZLZLS2.BWBH,ZLZLS2.CLBH,ZLZLS2.CLSL,CWDJ.USPrice,ZLZLS2.CLSL*CWDJ.USPrice as ZLACC');
        sql.add('from ZLZLS2'); 
        sql.add('left join (select CWDJ.CLBH,avg(CWDJ.USPrice) as USPrice from CWDJ ');
        sql.add('           group by CLBH ) CWDJ on CWDJ.CLBH=ZLZLS2.CLBH  ');
        sql.add('where ZLZLS2.MJBH='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('      and ZLZLS2.ZLBH=:DDBH');
        active:=true;
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.00'   ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.0000'  ;
        MatTotal_Det.dbgrideh1.columns[5].displayformat:='##,#0.00'   ;
      end;
  end; 
if dbgrideh1.selectedfield.fieldname='okLLACC' then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,');
        sql.add('       CWDJ.USPrice,KCLLS.Qty*CWDJ.USPrice as LLACC');
        sql.add('       ,KCLLS.BLSB,SCBLYY.YWSM,SCBLYY.ZWSM');
        sql.add('from (select KCLLS.CLBH,KCLLS.LLNO,KCLLS.DFL,KCLLS.YYBH,KCLLS.BLSB,KCLLS.SCBH,KCLLS.Qty,KCLL.CFMDate ');
        sql.add('      from KCLLS ');
        sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
        sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
        sql.add('      where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('            and KCLLS.Qty<>0 ');
        sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('            and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
        sql.add('            and KCLLS.SCBH=:DDBH');
        sql.add('      ) KCLLS ');                 
        sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
        sql.add('order by KCLLS.CLBH');
        active:=true;   
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.00'  ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.0000' ;
        MatTotal_Det.dbgrideh1.columns[5].displayformat:='##,#0.00'  ;
      end;
  end;
if dbgrideh1.selectedfield.fieldname='okBLACC' then
  begin
    with MatTotal_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,CWDJ.USPrice,KCLLS.Qty*CWDJ.USPrice as LLACC');
        sql.add('       ,KCLLS.BLSB,SCBLYY.YWSM,SCBLYY.ZWSM');
        sql.add('from (select KCLLS.CLBH,KCLLS.LLNO,KCLLS.DFL,KCLLS.YYBH,KCLLS.BLSB,KCLLS.SCBH,KCLLS.Qty,isnull(CLZHZL.SYL,1) as SYL');
        sql.add('      from KCLLS ');
        sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
        sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
        sql.add('      where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('            and KCLLS.Qty<>0 ');
        sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('            and KCLLS.BLSB='+''''+'Y'+'''');
        sql.add('            and KCLLS.SCBH=:DDBH');
        sql.add('      ) KCLLS ');    
        sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
        sql.add('order by KCLLS.CLBH');
        active:=true;  
        MatTotal_Det.dbgrideh1.columns[3].displayformat:='##,#0.00' ;
        MatTotal_Det.dbgrideh1.columns[4].displayformat:='##,#0.0000' ;
        MatTotal_Det.dbgrideh1.columns[5].displayformat:='##,#0.00'   ;
      end;
  end;

MatTotal_Det.show;
end;

procedure TMatTotal.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if  Query1.FieldByName('pairs').value=Query1.FieldByName('okQty').value   then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;  
if  Query1.FieldByName('okQty').isnull   then
  begin
    dbgrideh1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
