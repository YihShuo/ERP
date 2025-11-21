unit DeliverAccFin1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,dateutils,comobj;

type
  TDeliverAccFin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1DaoMH: TStringField;
    Query1KFJC: TStringField;
    Query1DDQty: TIntegerField;
    Query1IPrice: TCurrencyField;
    Query1OrdACC: TCurrencyField;
    Query1InQty: TIntegerField;
    Query1LLACC: TFloatField;
    Query1BLACC: TFloatField;
    Query1LLPerson: TFloatField;
    Query1BLPerson: TFloatField;
    Query1LastInDate: TDateTimeField;
    Button2: TButton;
    Query1CostAvgP: TFloatField;
    Query1CostAvgO: TFloatField;
    Query1TotCost: TFloatField;
    Query1Money: TFloatField;
    Query1PePerson: TFloatField;
    Query1OrPerson: TFloatField;
    Query1MtCost: TFloatField;
    Query1MLLPerson: TFloatField;
    Query1MoneyPerson: TFloatField;
    Label12: TLabel;
    CB1: TComboBox;
    OldDataCK: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverAccFin: TDeliverAccFin;
  NDate:TDate;

implementation

uses DeliverAccFin_det1,costsetup1,FunUnit, main1;

{$R *.dfm}

procedure TDeliverAccFin.FormDestroy(Sender: TObject);
begin
DeliverAccFin:=nil;
end;

procedure TDeliverAccFin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#KCLLS'+''''+') is not null  ');
    sql.add('begin   drop table #KCLLS end   ');
    execsql;
  end;
  action:=cafree;
end;

procedure TDeliverAccFin.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
  end;
  DTP1.date:=startofthemonth(Ndate);
  DTP2.date:=Ndate;
end;

procedure TDeliverAccFin.Button1Click(Sender: TObject);
var YWCPSQL:String;
begin
  if OldDataCK.Checked=true then
  begin
    YWCPSQL:=' (select * from YWCP with (nolock) Union Select * from YWCPOld with (nolock) ) as YWCP  ';
  end else
  begin
    YWCPSQL:=' YWCP ';
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear; 
    sql.add('  if object_id('+''''+'tempdb..#KCLLS'+''''+') is not null  ');
    sql.add('begin   drop table #KCLLS end   ');
    sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLL.DepID,KCLLS.Qty,KCLLS.BLSB,KCLLS.SCBH,KCLL.CFMDate,DDZL.YN');
    sql.add('into #KCLLS from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join DDZL on DDZL.DDBH=KCLLS.SCBH ');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZL.XieXing and XXZl.SheHao=DDZl.SheHao');
    sql.add(' where KCLL.CFMID<>''NO'' ');
    sql.add('      and KCLLS.SCBH like ''%'+edit1.text+'%''');
    sql.add('      and DDZL.Article like '''+edit2.Text+'%''');
    sql.add('      and XXZL.DAOMH like '''+edit4.text+'%''');
    sql.add('      and KFZL.KFJC like ''%'+edit3.Text+'%''');
    sql.add('      and KCLLS.Qty<>0');
    sql.add('      and KCLL.SCBH<>''JJJJJJJJJJ'' ');
    sql.add('      and DDZl.GSBH='''+CB1.text+'''');
    sql.Add('	     and DDZL.DDBH in (');
    sql.Add('	      Select  YWDD.YSBH from '+YWCPSQL+',YWDD where YWCP.DDBH=YWDD.DDBH ');
    sql.Add('	      and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.Add('       Group by YWDD.YSBH )');
    //funcobj.WriteErrorLog(sql.Text);
    execsql;

    active:=false;
    sql.Clear;
    sql.add('select YWCP.DDBH,YWCP.Article,YWCP.XieMing,YWCP.DaoMH,YWCP.KFJC,MAX(YWCP.LastInDate) as LastInDate,YWDD.DDQty,YWDD.IPrice');
    sql.add('        ,YWDD.OrdACC,sum(YWCPIn.InQty) as InQty,isnull(max(KCLLS.LLACC),0) as LLACC,isnull(max(KCBLS.BLACC),0) as BLACC' );
    {當月人事及管銷成本,目前計算累計各月分擔成本*當月入庫數}
    sql.add('         ,sum((YWCPIn.inQty*isnull(YWCPIn.costavgp,0))) as CostAvgP');
    sql.add('         ,sum((YWCPIn.inQty*isnull(YWCPIn.costavgo,0))) as CostAvgO');
    //期間入庫數量
    sql.add('from (select YWDD.YSBH as DDBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,max(YWCP.InDate) as LastInDate');
    sql.add('      from '+YWCPSQL);
    sql.add('      left join YWDD on YWDD.DDBH=YWCP.DDBH ')  ;
    sql.add('      left join DDZL on DDZL.DDBH=YWDD.YSBH ');
    sql.add('      left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('      left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('      where YWDD.YSBH like  '+''''+'%'+edit1.text+'%'+'''');
    //去除滿箱限制，只要有入庫就計算2010/7/8 BillWeng
    //sql.add('            and YWDD.SB is not null ');
    sql.add('            and DDZL.Article like '+''''+edit2.Text+'%'+'''');
    sql.add('            and XXZL.DAOMH like '+''''+edit4.text+'%'+'''');
    sql.add('            and KFZL.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('            and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('      group by YWDD.YSBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC )YWCP   ');
    //為限定訂單范圍,最後入庫時間為選定區間
    sql.add('left join (select sum(YWCP.Qty) as InQty,YWDD.YSBH as DDBH ');
    sql.add('                    ,kcbh,costset.costavgp,costset.costavgo');
    sql.add('           from '+YWCPSQL);
    sql.add('           left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    //加入各月平均人工及其他費用 加入欄為 [ywcp.kcbh,costset.costavgp,costset.costavgo]
    sql.Add('           left join costset on  costset.costyear=year(YWCP.InDate)');
    sql.add('                          and costset.costmon=month(YWCP.InDate) and costset.costdep=ywcp.kcbh');
    //end
    sql.add('           where YWCP.InDate is not null');
    sql.add('           group by YWDD.YSBH,kcbh,costset.costavgp,costset.costavgo ) YWCPIn  on YWCPIn.DDBH=YWCP.DDBH');
    //訂單總金額
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWDDS.Qty) as DDQty,sum(YWDDS.Qty*YWDDS.IPrice) as OrdACC,');
    sql.add('                 sum(YWDDS.Qty*YWDDS.IPrice)/sum(YWDDS.Qty) as IPrice');
    sql.add('           from YWDDS ');
    sql.add('           left join YWDD on YWDD.DDBH=YWDDS.DDBH  ');
    sql.add('           group by YWDD.YSBH )YWDD on YWDD.DDBH=YWCP.DDBH');

    //總領料金額
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as LLACC');
    sql.add('           from #KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                              and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                              and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           group by #KCLLS.SCBH ) KCLLS  on KCLLS.DDBH=YWCP.DDBH ');
    //總補料金額
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as BLACC');
    sql.add('           from #KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           where #KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('           group by #KCLLS.SCBH ) KCBLS  on KCBLS.DDBH=YWCP.DDBH ');
    sql.add('where convert(smalldatetime,convert(varchar,YWCP.LastInDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add(' group by YWCP.DDBH,YWCP.Article,YWCP.XieMing,YWCP.DaoMH,YWCP.KFJC,YWDD.DDQty,YWDD.IPrice,YWDD.OrdACC');
    sql.add('order by YWCP.DDBH ');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
end;

procedure TDeliverAccFin.Query1CalcFields(DataSet: TDataSet);
begin
{edit by BillWeng 2009/12/30
 加入人工及其他成本，需均提到當月入庫的各訂單中，以入庫點計算當月總數量
 程式名稱costsetup1}
with query1 do
  begin
    //生產成本計算及各單項成本對於生產成本的比率計算
    //材料成本=領料+補料
    fieldbyname('MtCost').Value:=fieldbyname('LLACC').value+fieldbyname('BLACC').value;
    //生產成本=材料成本+人工成本+其他成本
    fieldbyname('TotCost').Value:=fieldbyname('MtCost').value+fieldbyname('CostAvgP').value+fieldbyname('CostAvgO').value;
    if fieldbyname('TotCost').Value <> 0 then
    begin
      //材料比率=材料成本/生產成本
      fieldbyname('LLPerson').value:=fieldbyname('MtCost').value/fieldbyname('TotCost').value*100;
      //人工比率=人工費用/生產成本
      fieldbyname('PePerson').value:=fieldbyname('CostAvgP').value/fieldbyname('TotCost').value*100;
      //其他比率=其他費用/生產成本
      fieldbyname('OrPerson').value:=fieldbyname('CostAvgO').value/fieldbyname('TotCost').value*100;
    end;
    if fieldbyname('OrdACC').value<>0 then
      begin
        //毛利=訂單金額-生產成本
        fieldbyname('money').value:= fieldbyname('OrdACC').value-fieldbyname('TotCost').value;
        //毛利率=毛利/訂單金額
        fieldbyname('moneyPerson').value:= fieldbyname('money').value/fieldbyname('ordacc').value*100;
        //材料佔訂單金額比率=材料成本/訂單金額
        fieldbyname('MLLPerson').value:=fieldbyname('MtCost').value/fieldbyname('OrdACC').value*100;
//        fieldbyname('LLPerson').value:=fieldbyname('LLACC').value/fieldbyname('OrdACC').value*100;
      end;
    if fieldbyname('LLACC').value<>0 then
      begin
        fieldbyname('BLPerson').value:=fieldbyname('BLACC').value/fieldbyname('LLACC').value*100;
      end;
    {edit by BillWeng 2009/12/30 從costset資料表中取出成本計算}
    {edit end}
  end;
end;

procedure TDeliverAccFin.DBGridEh1EditButtonClick(Sender: TObject);
begin
  DeliverAccFin_det:=TDeliverAccFin_det.create(self);
  DeliverAccFin_det.show;
end;

procedure TDeliverAccFin.Print1Click(Sender: TObject);
begin
Printdbgrideh1.Preview;
end;

procedure TDeliverAccFin.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
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

procedure TDeliverAccFin.Button2Click(Sender: TObject);
begin
if costsetup<>nil then
  begin
    costsetup.show;
  end
  else
    begin
      costsetup:=Tcostsetup.Create(self);
      costsetup.Show;
    end;
end;

end.
