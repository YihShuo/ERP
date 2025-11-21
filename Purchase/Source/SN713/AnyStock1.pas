unit AnyStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  ComCtrls,comobj, GridsEh, DBGridEh,ehlibBDE;

type
  TAnyStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    DataSource1: TDataSource;
    query2: TQuery;
    DTP1: TDateTimePicker;
    Query1CLDH: TStringField;
    Query1LastRem: TFloatField;
    Query1RKQty: TFloatField;
    Query1LLQty: TFloatField;
    Query1KCBH: TStringField;
    CB1: TCheckBox;
    Query1Qty: TFloatField;
    Query1JGRK: TFloatField;
    Query1JGCK: TFloatField;
    CBX1: TComboBox;
    Query1CKBH: TStringField;
    Query1JGCKTemp: TCurrencyField;
    Query1LBBH: TStringField;
    Query1ZWPM: TStringField;
    Panel2: TPanel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure NN2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   AnyStock: TAnyStock;
   NDate:TDate;
   ayear,amonth:string;

implementation

uses  main1;

{$R *.dfm}

procedure TAnyStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin  
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');
    execsql;
  end;
action:=cafree;
end;

procedure TAnyStock.Button1Click(Sender: TObject);
var 
   year,month,day:word;
begin
if CBX1.text='' then
  begin
    showmessage('Pls select  warehouse first.');
    abort;
  end;
decodedate(DTP1.Date,Year,Month,Day);   //т畐闽计沮
incAMonth(Year,Month,Day,-1);
ayear:=floattostr(year);
amonth:=floattostr(month);
if length(amonth)=1 then
  amonth:='0'+amonth;

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');

    sql.Add('select CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp');
    sql.add('into #CLZLKC from CLZL with (nolock) ');
                 //戳畐
    sql.add('left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as LastRem ');
    sql.add('           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('           and KCMONTH='+''''+amonth+'''');
    sql.add('           and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('           and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
    sql.add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');
          //畐计秖
    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS with (nolock) ');
    sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('           and KCRK.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');
           //畐计秖
    sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS  with (nolock) ');
    sql.add('           left join KCLL  with (nolock) on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('           and KCLL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');
           //畐计秖
    sql.add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');
            //畐计秖
    sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
   // sql.add('                      and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH');
       //虫秨临ゼㄓ计秖
    sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where  JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where  JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH');


    sql.add('select #CLZLKC.CLDH,#CLZLKC.LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,');
    sql.add('       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) as LLQty,');
    sql.add('       isnull(round(#CLZLKC.JGRK,2),0) as JGRK,isnull(round(#CLZLKC.JGCK,2),0) as JGCK,');
    sql.add('       isnull(round(#CLZLKC.JGCKTemp,2),0) as JGCKTemp,KCZLS.KCBH,KCZLS.CKBH,');
    sql.add('       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.RKQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as Qty'); //20141027 э计材
    sql.add('from #CLZLKC ');
    sql.add('left join CLZL on CLZL.CLDH=#CLZLKC.CLDH ');
    sql.add('left join (select * from KCZLS  with (nolock) where CKBH='+''''+CBX1.text+'''');
    sql.add('                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH');
    sql.add('  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null ');
    sql.add('               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null and #CLZLKC.JGCKTemp is null)');
    sql.add('and KCZLS.CKBH like '+''''+CBX1.Text+'%'+'''');
    sql.add('and #CLZLKC.CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
    if CB1.checked then
      begin
        sql.add('and (isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0))<=-0.005  ');
      end;
    sql.add('order by #CLZLKC.CLDH  ');
    //memo1.text:=sql.text;
    active:=true;
  end;


end;

procedure TAnyStock.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
    fieldbyname('Qty').Value:=fieldbyname('LastRem').Value+fieldbyname('RKQty').Value-fieldbyname('LLQty').Value;
  end;
end;

procedure TAnyStock.FormCreate(Sender: TObject);
begin
with query2 do
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
end;

procedure TAnyStock.Button2Click(Sender: TObject);
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

procedure TAnyStock.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TAnyStock.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TAnyStock.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  CBX1.SetFocus;
end;

procedure TAnyStock.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TAnyStock.FormDestroy(Sender: TObject);
begin
AnyStock:=nil;
end;

procedure TAnyStock.NN2Click(Sender: TObject);
begin
button2click(nil);
end;

end.
