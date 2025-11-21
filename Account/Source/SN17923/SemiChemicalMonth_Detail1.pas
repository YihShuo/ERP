unit SemiChemicalMonth_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, DateUtils;

type
  TSemiChemicalMonth_Detail = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    DS2: TDataSource;
    Query2: TQuery;
    Query2LLNO: TStringField;
    Query2SCBH: TStringField;
    Query2CLBH: TStringField;
    Query2VNACC: TCurrencyField;
    Query2CNO: TStringField;
    Query2HGLB: TStringField;
    Query2CFMID: TStringField;
    Query2CFMDate: TDateTimeField;
    Query1YSBH: TStringField;
    Query1DDBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1Qty: TFloatField;
    Query1InQty: TFloatField;
    Query1INDATE: TDateTimeField;
    Query1ShipQty: TFloatField;
    Query1ShipDate: TDateTimeField;
    Query1DDZT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemiChemicalMonth_Detail: TSemiChemicalMonth_Detail;

implementation
  uses SemiChemicalMonth1, Fununit;
{$R *.dfm}

procedure TSemiChemicalMonth_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSemiChemicalMonth_Detail.FormDestroy(Sender: TObject);
begin
  SemiChemicalMonth_Detail:=nil;
end;

procedure TSemiChemicalMonth_Detail.FormCreate(Sender: TObject);
var sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(SemiChemicalMonth.CBX3.Text), StrToInt(SemiChemicalMonth.CBX4.Text), 1);
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    //量產訂單
    SQL.Add('Select YWDD.YSBH,YWDD.DDBH,DDZL.ARTICLE,Convert(float,YWDD.Qty) as Qty,Convert(float,YWCPIn.Qty)  as InQty,YWCPIn.INDATE,Convert(float,YWCPShip.Qty) as ShipQty,YWCPShip.EXEDATE as ShipDate,DDZL.DDZT ');
    SQL.Add('from DDZL');
    SQL.Add('left join YWDD on YWDD.YSBH=DDZL.DDBH');
    SQL.Add('Left join (');
    SQL.Add('Select DDZL.DDBH,Sum(YWCP.Qty) as Qty,Min(YWCP.INDATE) as INDATE');
    SQL.Add('from YWCP ');
    SQL.Add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    SQL.Add('left join DDZL on YWDD.YSBH=DDZL.DDBH');
    SQL.Add('where DDZL.DDBH=:DDBH and YWCP.INDATE is not null');
    SQL.Add('Group by DDZL.DDBH');
    SQL.Add(') YWCPIn on YWCPIn.DDBH=DDZL.DDBH ');
    SQL.Add('Left join (');
    SQL.Add('Select DDZL.DDBH,Sum(YWCP.Qty) as Qty,Min(YWCP.EXEDATE) as EXEDATE');
    SQL.Add('from YWCP ');
    SQL.Add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    SQL.Add('left join DDZL on YWDD.YSBH=DDZL.DDBH');
    SQL.Add('where DDZL.DDBH=:DDBH and YWCP.EXEDATE is not null');
    SQL.Add('Group by DDZL.DDBH');
    SQL.Add(') YWCPShip on YWCPShip.DDBH=DDZL.DDBH ');
    SQL.Add('where DDZL.DDBH=:DDBH ');
    SQL.Add('Union all ');
    //開發樣品 + CBY
    SQL.Add('Select shoetest.TestNo as YSBH,YPZL.YPDH as DDBH,YPZL.ARTICLE,YPZL.Quantity as Qty,Case when shoetest.Complete is not null then shoetest2.Qty else 0 end as InQty,shoetest.Complete as INDATE,');
    SQL.Add('       Shoetestshipping.Qty as ShipQty,shoetestshipping.ShipDate_final as ShipDate,''Y'' as DDZT ');
    SQL.Add('from YPZL ');
    SQL.Add('left join shoetest on YPZL.YPDH=shoetest.YPDH ');
    SQL.Add('left join (select TestNo, Sum(Qty) as Qty from shoetest2 Group by TestNo) shoetest2 on shoetest2.TestNo=shoeTest.TestNo ');
    SQL.Add('left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno ');
    SQL.Add('where YPZL.YPDH=:DDBH');
    SQL.Add('Union all ');
    SQL.Add('Select CBY_Orders.workOrderId as TestNO,CBY_Orders.MasterOrder as YPDH,CBY_Orders.style as Article,CBY_Orders.total as Quantity,Case when CBY_Orders.StockDate is not null then CBY_Orders.total else 0 end as InQty,CBY_Orders.StockDate as INDATE');
    SQL.Add('       ,case when CBY_Orders.ShipDate is not null then CBY_Orders.total  else 0 end as ShipQty,CBY_Orders.ShipDate,case when CBY_Orders.CancelDate is not null then ''C'' else ''Y'' end as DDZT ');
    SQL.Add('From CBY_Orders');
    SQL.Add('where CBY_Orders.MasterOrder=:DDBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,KCLLS.VNACC_HG as VNACC,KCLLS.CNO,KCLLS.HGLB,KCLL.CFMID,KCLL.CFMDate');
    SQL.Add('From KCLL');
    SQL.Add('Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('Left join KCCK on KCCK.CKBH=KCLL.CKBH');
    SQL.Add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    SQL.Add('where  KCLL.YN=''5'' and KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('      and KCZLS.CWBH = ''152''');
    SQL.Add('      and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('    	 and not Exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)');
    SQL.Add('			 and KCLLS.SCBH=:DDBH ');
    //20230325全部化學品倉
    SQL.Add('      and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    SQL.Add(' UNION ALL');
    SQL.Add('Select KCLLS_CB.LLNO,KCLLS_CB.SCBH,KCLLS_CB.CLBH,KCLLS_CB.VNACC,KCLLS_CB.CNO,KCLLS_CB.HGLB,KCLL.CFMID,KCLL.CFMDate');
    SQL.Add('FROM KCLLS_CB');
    SQL.Add('Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('Left join KCCK on KCCK.CKBH=KCLL.CKBH');
    SQL.Add('where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('      and KCLLS_CB.HGLB in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('and KCLLS_CB.SCBH=:DDBH ');
    //20230325全部化學品倉
    SQL.Add('      and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
