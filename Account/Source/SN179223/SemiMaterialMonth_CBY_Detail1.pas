unit SemiMaterialMonth_CBY_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls,DateUtils;

type
  TSemiMaterialMonth_CBY_Detail = class(TForm)
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1TestNO: TStringField;
    Query1YPDH: TStringField;
    Query1Article: TStringField;
    Query1INDATE: TDateTimeField;
    Query1ShipDate: TDateTimeField;
    Query1DDZT: TStringField;
    Query2: TQuery;
    Query2LLNO: TStringField;
    Query2SCBH: TStringField;
    Query2CLBH: TStringField;
    Query2VNACC: TCurrencyField;
    Query2CNO: TStringField;
    Query2HGLB: TStringField;
    Query2CFMID: TStringField;
    Query2CFMDate: TDateTimeField;
    DS2: TDataSource;
    Query1Quantity: TIntegerField;
    Query1InQty: TIntegerField;
    Query1ShipQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemiMaterialMonth_CBY_Detail: TSemiMaterialMonth_CBY_Detail;

implementation

uses SemiMaterialMonth_CBY1;

{$R *.dfm}

procedure TSemiMaterialMonth_CBY_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiMaterialMonth_CBY_Detail.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth_CBY_Detail:=nil;
end;

procedure TSemiMaterialMonth_CBY_Detail.FormCreate(Sender: TObject);
var sDate:TDate;
begin
   sDate := EncodeDate(StrToInt(SemiMaterialMonth_CBY.CBX3.Text), StrToInt(SemiMaterialMonth_CBY.CBX4.Text), 1);
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
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
    SQL.Add('      and KCCK.CKBH'+SemiMaterialMonth_CBY.CKBH_SQL);
    SQL.Add('    	 and not Exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)');
    SQL.Add('			 and KCLLS.SCBH=:DDBH ');
    SQL.Add(' UNION ALL');
    SQL.Add('Select KCLLS_CB.LLNO,KCLLS_CB.SCBH,KCLLS_CB.CLBH,KCLLS_CB.VNACC,KCLLS_CB.CNO,KCLLS_CB.HGLB,KCLL.CFMID,KCLL.CFMDate');
    SQL.Add('FROM KCLLS_CB');
    SQL.Add('Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('Left join KCCK on KCCK.CKBH=KCLL.CKBH');
    SQL.Add('where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('      and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('      and KCCK.CKBH'+SemiMaterialMonth_CBY.CKBH_SQL);
    SQL.Add('and KCLLS_CB.SCBH=:DDBH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
