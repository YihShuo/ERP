unit MatTotalDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, Menus, PrnDbgeh, DB, DBTables, StdCtrls,
  ComCtrls, ExtCtrls,comobj;

type
  TMatTotalDep = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button2: TButton;
    Edit1: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Detail1: TMenuItem;
    DBGridEh1: TDBGridEh;
    Query1InQty: TIntegerField;
    Query1InACC: TCurrencyField;
    Query1LLACC: TFloatField;
    Query1BLACC: TFloatField;
    Query1XLLACC: TFloatField;
    Query1GSBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatTotalDep: TMatTotalDep;
  NDate:TDate;

implementation

uses main1, MatTotalDep_Det1, MatTotalDep_Dep1;

{$R *.dfm}

procedure TMatTotalDep.FormDestroy(Sender: TObject);
begin
MatTotalDep:=nil;
end;

procedure TMatTotalDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin  {
with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('  if object_id('+''''+'tempdb..#totDepUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #totDepUSPrice end   ');
    execsql;
    active:=false;
  end;  }
action:=cafree;
end;

procedure TMatTotalDep.FormCreate(Sender: TObject);
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
    {sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#totDepUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #totDepUSPrice end   ');
    sql.add('declare @HL int ');
    sql.add('set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMONTH DESC,HLDAY DESC)  ');
    sql.add('select CLDH as CLBH ,case when USPrice is null then round(convert(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice');
    sql.add('into #totDepUSPrice from (select CLZL.CLDH,');
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
    execsql;
    active:=false;  }
  end;
DTP1.date:=NDate-7;
DTP2.date:=NDate-1;
end;

procedure TMatTotalDep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select Det.GSBH,sum(Det.InQty) as InQty,sum(Det.InACC) as InACC,sum(Det.LLACC) as LLACC,sum(Det.BLACC) as BLACC,sum(Det.XLLACC) as XLLACC');
    sql.add('from (');
    sql.add('select BDepartment.ID,YWCPin.InQty,YWCPin.InACC,KCLLS.LLACC,KCBLS.BLACC,XKCLLS.XLLACC');
    sql.add('       ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) as GSBH');
    sql.add('from BDepartment ');
    //入庫數量及金額
    sql.add('left join (select YWCPin.DepNo,sum(YWCPin.Qty) as inQty,sum(YWCPin.Qty*YWDDS.IPrice) as InACC');
    sql.add('           from (select YWCP.DepNO,YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
    sql.add('                 from YWCP ');
    sql.add('                 left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('                 left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                 group by  YWCP.DepNO,YWCP.DDBH,YWBZPOS.DDCC) YWCPin ');
    sql.add('           left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.DDCC ');
    sql.add('           group by YWCPin.DepNO) YWCPin on BDepartment.ID=YWCPin.DepNO ');
    //時段內正單領料金額
    sql.add('left join (select KCLLS.DepID,sum(KCLLS.Qty*CWDJ.USPrice) as LLACC');
    sql.add('           from (select KCLLS.CLBH,KCLL.DepID,KCLLS.Qty,KCLL.CFMDate ');
    sql.add('                 from KCLLS ');
    sql.add('                 left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    //sql.add('                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('                 left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                       and KCLLS.Qty<>0 ');
    sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                       and KCLL.SCBH<>'+''''+'XXXXXXXXXX'+'''');
    sql.add('                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
    sql.add('                 ) KCLLS ');
    sql.add('          left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
    sql.add('                            and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
    sql.add('                            and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
    sql.add('           group by KCLLS.DepID ) KCLLS on KCLLS.DepID=BDepartment.ID ');
    //時段內補料金額
    sql.add('left join (select KCBLS.DepID,sum(KCBLS.Qty*CWDJ.USPrice) as BLACC');
    sql.add('           from (select KCLLS.CLBH,KCLL.DepID,KCLLS.Qty,KCLL.CFMDate');
    sql.add('                 from KCLLS ');
    sql.add('                 left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    //sql.add('                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('                 left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                       and KCLLS.Qty<>0 ');
    sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                       and KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('                 ) KCBLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=KCBLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCBLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,KCBLS.CFMDate)) ');
    sql.add('           group by KCBLS.DepID ) KCBLS on KCBLS.DepID=BDepartment.ID ');
    //時段內總務類領料金額
    sql.add('left join (select KCLLS.DepID,sum(KCLLS.Qty*CWDJ.USPrice) as XLLACC');
    sql.add('           from (select KCLLS.CLBH,KCLL.DepID,KCLLS.Qty,KCLL.CFMDate ');
    sql.add('                 from KCLLS ');
    sql.add('                 left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    //sql.add('                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('                 left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                       and KCLLS.Qty<>0 ');
    sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                       and KCLL.SCBH='+''''+'XXXXXXXXXX'+'''');
    sql.add('                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
    sql.add('                 ) KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
    sql.add('           group by KCLLS.DepID ) XKCLLS on XKCLLS.DepID=BDepartment.ID ');
    //其它收入，如R2與R3廠廠內銷售收入
    

    sql.add('where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and not(YWCPin.InQty is null and KCLLS.LLACC is null and KCBLS.BLACC is null and XKCLLS.XLLACC is null)');
    sql.Add(')Det ');
    sql.add('group by Det.GSBH ');
    sql.add('order by Det.GSBH');
    active:=true;
  end;
end;

procedure TMatTotalDep.Button2Click(Sender: TObject);
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

procedure TMatTotalDep.Excel1Click(Sender: TObject);
begin
button2click(nil);
end;

procedure TMatTotalDep.Print1Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMatTotalDep.DBGridEh1EditButtonClick(Sender: TObject);
begin

MatTotalDep_Det:=TMatTotalDep_Det.create(self);
if ((dbgrideh1.selectedfield.fieldname='InQty') or (dbgrideh1.selectedfield.fieldname='InACC')) then
  begin
    with MatTotalDep_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select YWCPin.DDBH,sum(YWCPin.Qty) as inQty,avg(YWDDS.IPrice) as IPrice,sum(YWCPin.Qty*YWDDS.IPrice) as InACC');
        sql.add('from (select YWDD.YSBH as DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
        sql.add('      from YWCP ');
        sql.add('      left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');
        sql.add('      left join YWDD on YWDD.DDBH=YWCP.DDBH ');
        sql.add('      left join BDepartment on BDepartment.ID=YWCP.DepNO ');
        sql.add('      where convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
        sql.add('            and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
        sql.add('                 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
        sql.add('      group by  YWDD.YSBH,YWBZPOS.DDCC) YWCPin ');
        sql.add('left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.DDCC ');
        sql.add('group by  YWCPin.DDBH ');
        sql.add('order by YWCPin.DDBH');
        active:=true;
      end;
  end;
if dbgrideh1.selectedfield.fieldname='LLACC' then
  begin
    with MatTotalDep_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,CWDJ.USPrice,KCLLS.Qty*CWDJ.USPrice as LLACC');
        sql.add('       ,KCLLS.BLSB,SCBLYY.YWSM,SCBLYY.ZWSM');
        sql.add('from (select KCLLS.CLBH,KCLLS.LLNO,KCLLS.DFL,KCLLS.YYBH,KCLLS.BLSB,KCLLS.SCBH,KCLLS.Qty,KCLL.CFMDate ');
        sql.add('      from KCLLS ');
        sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
        sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
        sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
        sql.add('            and KCLLS.Qty<>0 ');
        sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('            and KCLL.SCBH<>'+''''+'XXXXXXXXXX'+'''');
        sql.add('            and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
        sql.add('            and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
        sql.add('                 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
        sql.add('      ) KCLLS ');
        sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
        sql.add('order by KCLLS.CLBH,KCLLS.LLNO');
        active:=true;
      end;
  end;
if dbgrideh1.selectedfield.fieldname='BLACC' then
  begin
    with MatTotalDep_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,');
        sql.add('       CWDJ.USPrice,KCLLS.Qty*CWDJ.USPrice as LLACC');
        sql.add('       ,KCLLS.BLSB,SCBLYY.YWSM,SCBLYY.ZWSM');
        sql.add('from (select KCLLS.CLBH,KCLLS.LLNO,KCLLS.DFL,KCLLS.YYBH,KCLLS.BLSB,KCLLS.SCBH,KCLLS.Qty,KCLL.CFMDate');
        sql.add('      from KCLLS ');
        sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
        sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
        sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
        sql.add('            and KCLLS.Qty<>0 ');
        sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('            and KCLLS.BLSB='+''''+'Y'+''''); 
        sql.add('            and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
        sql.add('                 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
        sql.add('      ) KCLLS ');   
        sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
        sql.add('order by KCLLS.CLBH,KCLLS.LLNO');
        active:=true;
      end;
  end; 
if dbgrideh1.selectedfield.fieldname='XLLACC' then
  begin
    with MatTotalDep_Det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,');
        sql.add('       CWDJ.USPrice,KCLLS.Qty*CWDJ.USPrice as LLACC');
        sql.add('       ,KCLLS.BLSB,SCBLYY.YWSM,SCBLYY.ZWSM');
        sql.add('from (select KCLLS.CLBH,KCLLS.LLNO,KCLLS.DFL,KCLLS.YYBH,KCLLS.BLSB,KCLLS.SCBH,KCLLS.Qty ,KCLL.CFMDate ');
        sql.add('      from KCLLS ');
        sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        //sql.add('      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
        sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
        sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
        sql.add('            and KCLLS.Qty<>0 ');
        sql.add('            and KCLL.CFMID<>'+''''+'NO'+''''); 
        sql.add('            and KCLL.SCBH='+''''+'XXXXXXXXXX'+'''');
        sql.add('            and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');  
        sql.add('            and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
        sql.add('                 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
        sql.add('      ) KCLLS '); 
        sql.add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
        sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
        sql.add('order by KCLLS.CLBH,KCLLS.LLNO');
        active:=true;
      end;
  end;
MatTotalDep_Det.show;
end;

procedure TMatTotalDep.Detail1Click(Sender: TObject);
begin
MatTotalDep_Dep:=TMatTotalDep_Dep.create(self);
with MatTotalDep_Dep.query1 do
  begin 
    active:=false;
    sql.Clear;
    sql.add('select BDepartment.DepName,BDepartment.DepMemo,YWCPin.InQty,YWCPin.InACC,KCLLS.LLACC,KCBLS.BLACC,XKCLLS.XLLACC');
    sql.add('from BDepartment ');
    //入庫數量及金額
    sql.add('left join (select YWCPin.DepNo,sum(YWCPin.Qty) as inQty,sum(YWCPin.Qty*YWDDS.IPrice) as InACC');
    sql.add('           from (select YWCP.DepNO,YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
    sql.add('                 from YWCP ');
    sql.add('                 left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('                 left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                       and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
    sql.add('                 group by  YWCP.DepNO,YWCP.DDBH,YWBZPOS.DDCC) YWCPin ');
    sql.add('           left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.DDCC ');
    sql.add('           group by YWCPin.DepNO) YWCPin on BDepartment.ID=YWCPin.DepNO ');
    //時段內正單領料金額
    sql.add('left join (select KCLLS.DepID,sum(KCLLS.Qty*CWDJ.USPrice) as LLACC');
    sql.add('           from (select KCLLS.CLBH,KCLL.DepID,KCLLS.Qty ');
    sql.add('                 from KCLLS ');
    sql.add('                 left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    //sql.add('                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('                 left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                       and KCLLS.Qty<>0 ');
    sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                       and KCLL.SCBH<>'+''''+'XXXXXXXXXX'+'''');
    sql.add('                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
    sql.add('                       and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
    sql.add('                 ) KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
    sql.add('           group by KCLLS.DepID ) KCLLS on KCLLS.DepID=BDepartment.ID ');
    //時段內補料金額
    sql.add('left join (select KCBLS.DepID,sum(KCBLS.Qty*CWDJ.USPrice) as BLACC');
    sql.add('           from (select KCLLS.CLBH,KCLL.DepID,KCLLS.Qty ');
    sql.add('                 from KCLLS ');
    sql.add('                 left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    //sql.add('                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('                 left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                       and KCLLS.Qty<>0 ');
    sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                       and KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('                       and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
    sql.add('                 ) KCBLS '); 
    sql.add('           left join CWDJ on CWDJ.CLBH=KCBLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCBLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,KCBLS.CFMDate)) ');
    sql.add('           group by KCBLS.DepID ) KCBLS on KCBLS.DepID=BDepartment.ID ');
    //時段內總務類領料金額
    sql.add('left join (select KCLLS.DepID,sum(KCLLS.Qty*CWDJ.USPrice) as XLLACC');
    sql.add('           from (select KCLLS.CLBH,KCLL.DepID,KCLLS.Qty ');
    sql.add('                 from KCLLS ');
    sql.add('                 left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    //sql.add('                 left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('                 left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('                 where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('                       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                       and KCLLS.Qty<>0 ');
    sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                       and KCLL.SCBH='+''''+'XXXXXXXXXX'+'''');
    sql.add('                       and (KCLLS.BLSB is null or KCLLS.BLSB<>'+''''+'Y'+''''+')');
    sql.add('                       and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
    sql.add('                 ) KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLLS.CFMDate)) ');
    sql.add('           group by KCLLS.DepID ) XKCLLS on XKCLLS.DepID=BDepartment.ID ');



    sql.add('where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and not(YWCPin.InQty is null and KCLLS.LLACC is null and KCBLS.BLACC is null and XKCLLS.XLLACC is null)');
    sql.add('      and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('          then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) ='+''''+query1.fieldbyname('GSBH').Value+'''');
    sql.add('order by BDepartment.ID');
    active:=true;
  end;

MatTotalDep_Dep.show;
end;

end.
