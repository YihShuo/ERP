unit SemiMaterialMonth_Sample_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls,DateUtils;

type
  TSemiMaterialMonth_Sample_Detail = class(TForm)
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1TestNO: TStringField;
    Query1YPDH: TStringField;
    Query1Quantity: TFloatField;
    Query1Article: TStringField;
    Query1InQty: TFloatField;
    Query1INDATE: TDateTimeField;
    Query1ShipQty: TCurrencyField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemiMaterialMonth_Sample_Detail: TSemiMaterialMonth_Sample_Detail;

implementation

uses SemiMaterialMonth_Sample1;

{$R *.dfm}

procedure TSemiMaterialMonth_Sample_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiMaterialMonth_Sample_Detail.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth_Sample_Detail:=nil
end;

procedure TSemiMaterialMonth_Sample_Detail.FormCreate(Sender: TObject);
var sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(SemiMaterialMonth_Sample.CBX3.Text), StrToInt(SemiMaterialMonth_Sample.CBX4.Text), 1);
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select shoetest.TestNo,YPZL.YPDH,YPZL.ARTICLE,YPZL.Quantity,Case when shoetest.Complete is not null then shoetest2.Qty else 0 end as InQty,shoetest.Complete as INDATE,Shoetestshipping.Qty as ShipQty,shoetestshipping.ShipDate_final as ShipDate');
    SQL.Add('       ,''Y'' as DDZT ');
    SQL.Add('from YPZL ');
    SQL.Add('left join shoetest on YPZL.YPDH=shoetest.YPDH ');
    SQL.Add('left join (select TestNo, Sum(Qty) as Qty from shoetest2 Group by TestNo) shoetest2 on shoetest2.TestNo=shoeTest.TestNo ');
    SQL.Add('left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno ');
    SQL.Add('where YPZL.YPDH=:DDBH');
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
    SQL.Add('      and KCCK.CKBH'+SemiMaterialMonth_Sample.CKBH_SQL);
    SQL.Add('    	 and not Exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)');
    SQL.Add('			 and KCLLS.SCBH=:DDBH ');
    SQL.Add(' UNION ALL');
    SQL.Add('Select KCLLS_CB.LLNO,KCLLS_CB.SCBH,KCLLS_CB.CLBH,KCLLS_CB.VNACC,KCLLS_CB.CNO,KCLLS_CB.HGLB,KCLL.CFMID,KCLL.CFMDate');
    SQL.Add('FROM KCLLS_CB');
    SQL.Add('Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('Left join KCCK on KCCK.CKBH=KCLL.CKBH');
    SQL.Add('where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('      and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('      and KCCK.CKBH'+SemiMaterialMonth_Sample.CKBH_SQL);
    SQL.Add('and KCLLS_CB.SCBH=:DDBH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
