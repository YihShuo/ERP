unit SemiMaterialMonth_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, DateUtils;

type
  TSemiMaterialMonth_Detail = class(TForm)
    DBGridEh2: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
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
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Query1YSBH: TStringField;
    Query1DDBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1Qty: TFloatField;
    Query1InQty: TIntegerField;
    Query1INDATE: TDateTimeField;
    Query1ShipQty: TIntegerField;
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
  SemiMaterialMonth_Detail: TSemiMaterialMonth_Detail;

implementation
  uses SemiMaterialMonth1, FunUnit;
{$R *.dfm}

procedure TSemiMaterialMonth_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSemiMaterialMonth_Detail.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth_Detail:=nil;
end;

procedure TSemiMaterialMonth_Detail.FormCreate(Sender: TObject);
var sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(SemiMaterialMonth.CBX3.Text), StrToInt(SemiMaterialMonth.CBX4.Text), 1);
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YWDD.YSBH,YWDD.DDBH,DDZL.ARTICLE,YWDD.Qty,YWCPIn.Qty InQty,YWCPIn.INDATE,YWCPShip.Qty as ShipQty,YWCPShip.EXEDATE as ShipDate,DDZL.DDZT');
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
    SQL.Add('      and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('    	 and not Exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)');
    SQL.Add('			 and KCLLS.SCBH=:DDBH ');
    //20230325全部原料品倉
    SQL.Add('     and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    SQL.Add(' UNION ALL');
    SQL.Add('Select KCLLS_CB.LLNO,KCLLS_CB.SCBH,KCLLS_CB.CLBH,KCLLS_CB.VNACC,KCLLS_CB.CNO,KCLLS_CB.HGLB,KCLL.CFMID,KCLL.CFMDate');
    SQL.Add('FROM KCLLS_CB');
    SQL.Add('Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('Left join KCCK on KCCK.CKBH=KCLL.CKBH');
    SQL.Add('where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('      and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('and KCLLS_CB.SCBH=:DDBH ');
    //20230325全部原料品倉
    SQL.Add('     and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
