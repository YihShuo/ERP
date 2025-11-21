unit FeeMaterialOrd1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,dateutils,ehlibBDE,comobj;

type
  TFeeMaterialOrd = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1KFJC: TStringField;
    Query1pairs: TIntegerField;
    Query1IPrice: TCurrencyField;
    Query1OrdACC: TFloatField;
    Query1okQty: TIntegerField;
    Query1InQty: TIntegerField;
    Query1LLACC: TFloatField;
    DS1: TDataSource;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Query1GSBH: TStringField;
    Query1doneQty: TCurrencyField;
    Query1LLGSBH: TStringField;
    Query1CWHL: TFloatField;
    Query1VNIPrice: TCurrencyField;
    Query1VNOrdACC: TCurrencyField;
    Query1doneUsACC: TCurrencyField;
    Query1doneVnACC: TFloatField;
    Detail1: TMenuItem;
    Query1PerInACC: TIntegerField;
    Label1: TLabel;
    cbf: TComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FeeMaterialOrd: TFeeMaterialOrd;
  sdate,edate:Tdate;

implementation

uses {FeeMaterialOrd_Det1,} main1;

{$R *.dfm}

procedure TFeeMaterialOrd.FormDestroy(Sender: TObject);
begin
FeeMaterialOrd:=nil;
end;

procedure TFeeMaterialOrd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#DDZLDY'+''''+') is not null  ');
    sql.add('begin   drop table #DDZLDY end   ');
    execsql;
  end;
action:=cafree;
end;

procedure TFeeMaterialOrd.Button1Click(Sender: TObject);
var a,b,c :word;
i:word;
begin
a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
sdate:=EncodeDate(a,b,c);
edate:=endofthemonth(sdate);
//decodedate(edate,a,b,c);
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#DDZLDY'+''''+') is not null  ');
    sql.add('begin   drop table #DDZLDY end   ');
    sql.add('select distinct KCLLS.SCBH as DDBH ');
    sql.add('into #DDZLDY from KCLLS ');
    sql.add('left join KCLL on KCLL.LLNo=KCLLS.LLNO ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('insert #DDZLDY ');
    sql.add('select distinct YWDD.YSBH as DDBH from YWCP ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('where convert(smalldatetime,convert(varchar,InDate-7,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    execsql;

    active:=false;
    sql.clear;
    sql.add('declare @CWHL bigint ');
    sql.add('set @CWHL=(select CWHL from CWHL ');
    sql.add('           where HLYEAR='+''''+CBX1.Text+'''');
    sql.add('                 and HLMONTH='+''''+CBX2.Text+''''+')');
    sql.add('select DDZLDY.DDBH,DDZL.GSBH,XXZl.Article,XXZL.XieMing,KFZL.KFJC,isnull(DDZL.pairs,0) as Pairs,YWDDS.IPrice,YWDDS.OrdACC,@CWHL as CWHL');
    sql.add('       ,YWDDS.VNIPrice,YWDDS.VNOrdACC,KCLLS.LLGSBH,isnull(KCLLS.LLACC,0) as LLACC,isnull(YWCPin.inQty,0) as InQty,YWCPok.okQty');
    sql.add('       ,doneCW.doneQty,doneCW.doneUsACC,doneCW.doneVnACC');
    //訂單清單有入庫或材料有發生
    sql.add('from (select DDBH from DDZL ');
    sql.add('      where exists (select DDBH from #DDZLDY where #DDZLDY.DDBH=DDZL.DDBH ))DDZLDY ');
    //本月出材料單金額
    sql.add('left join (select KCLLS.SCBH as DDBH,KCLL.GSBH,sum(KCLLS.VNACC) as LLACC');
    sql.add('                  ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) as LLGSBH');
    sql.add('           from KCLLS ');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('           left join BDepartment on BDepartment.ID=KCLL.DepID');
    //sql.Add('           left join DDZL on DDZl.ZLBH=KCLLS.SCBH ');
    sql.add('           left join CLLBFYS on KCLL.GSBH=CLLBFYS.GSBH and CLLBFYS.CLBH=KCLLS.CLBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    //sql.add('                and KCLLS.<>0 ');
    //sql.add('                 and DDZL.XieXing is not null ');
    sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                 and (CLLBFYS.FYLB like '+''''+'A%'+''''+' or CLLBFYS.FYLB like '+''''+'C%'+''''+')');
    sql.add('           group by substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end )');
    sql.add('                    ,KCLL.GSBH,KCLLS.SCBH) KCLLS on KCLLS.DDBH=DDZLDY.DDBH' );
    //訂單總金額
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWDDS.Qty*YWDDS.IPrice)/sum(YWDDS.Qty) as IPrice,sum(YWDDS.Qty*YWDDS.IPrice) as OrdACC');
    sql.add('           ,round(sum(YWDDS.Qty*YWDDS.IPrice)/sum(YWDDS.Qty)*@CWHL,0) as VNIPrice,round(sum(YWDDS.Qty*YWDDS.IPrice)*@CWHL,0) as VNOrdACC');
    sql.add('           from YWDDS ');
    sql.add('           left join YWDD on YWDD.DDBH=YWDDS.DDBH ');
    sql.add('           group by YWDD.YSBH )YWDDS on DDZLDY.DDBH=YWDDS.DDBH');
    //本月成品倉入庫數量
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as inQty');
    sql.add('           from YWCP ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.InDate-7,111)) between ');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('           group by YWDD.YSBH) YWCPin on DDZLDY.DDBH=YWCPin.DDBH ');
    //成品倉累計總入庫數量
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as okQty');
    sql.add('           from YWCP    ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('           where InDate-7<='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('           group by YWDD.YSBH) YWCPok on DDZLDY.DDBH=YWCPok.DDBH ');
    //財務已分攤數量及金額
    sql.add('left join (select DDBH,Sum(Qty) as doneQty,sum(UsACC) as doneUsACC,sum(VNACC) as doneVNACC ');
    sql.add('           from CWDD ');
    sql.add('           group by DDBH ) doneCW on doneCW.DDBH=DDZLDY.DDBH ');

    sql.add('left join DDZL on DDZL.DDBH=DDZLDY.DDBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.Add('order by DDZL.GSBH,DDZLDY.DDBH ');

    active:=true;
  end;

end;

procedure TFeeMaterialOrd.Query1CalcFields(DataSet: TDataSet);
begin
if query1.FieldByName('Pairs').value<>0 then
  begin
    query1.FieldByName('PerInACC').value:= trunc(query1.FieldByName('LLACC').value/query1.FieldByName('Pairs').value*query1.FieldByName('InQty').value);
  end;
end;

procedure TFeeMaterialOrd.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[TDate]',CBX1.Text+'/'+CBX2.text]);

end;

procedure TFeeMaterialOrd.Print1Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TFeeMaterialOrd.Excel1Click(Sender: TObject);
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

procedure TFeeMaterialOrd.Detail1Click(Sender: TObject);
begin
{FeeMaterialOrd_Det:=TFeeMaterialOrd_Det.create(self);
with FeeMaterialOrd_Det.Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.LLNO,BDepartment.DepName,KCLL.CFMDate,KCLLS.CLBH,CLZL.YWPM,');
    sql.add('       KCLLS.Qty,KCLLS.VNPrice,KCLLS.VNACC,KCLLS.SCBH,KCLLS.DFL,KCLLS.BLSB,KCLLS.YYBH,SCBLYY.YWSM');
    sql.add('      from KCLLS ');
    sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    sql.add('      left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('      left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    sql.add('      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and CLLBFYS.GSBH= KCLL.GSBH');
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('            and KCLLS.SCBH=:DDBH');
    sql.add('            and (CLLBFYS.FYLB like '+''''+'A%'+''''+' or CLLBFYS.FYLB like '+''''+'C%'+''''+')');
    sql.add('            and substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end )=:LLGSBH ');
    sql.add('order by KCLLS.CLBH,KCLL.LLNO ');
    active:=true;
  end;
FeeMaterialOrd_Det.show;}
end;

end.
