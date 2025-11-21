unit SemiMaterialMonth_ZZ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, GridsEh, DBGridEh, DBTables, DateUtils;

type
  TSemiMaterialMonth_ZZ = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1GSBH: TStringField;
    Query1CKBH: TStringField;
    Query1LLNO: TStringField;
    Query1SCBH: TStringField;
    Query1CLBH: TStringField;
    Query1VNACC_HG: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1BLSB: TStringField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Splitter1: TSplitter;
    DS2: TDataSource;
    Query2: TQuery;
    DBGridEh2: TDBGridEh;
    Query2VNACC: TCurrencyField;
    Query2InQty: TIntegerField;
    Query2AVGZVNACC: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemiMaterialMonth_ZZ: TSemiMaterialMonth_ZZ;

implementation
   uses SemiMaterialMonth1, FunUnit;
{$R *.dfm}

procedure TSemiMaterialMonth_ZZ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSemiMaterialMonth_ZZ.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth_ZZ:=nil;
end;

procedure TSemiMaterialMonth_ZZ.FormCreate(Sender: TObject);
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCLL.GSBH,KCLL.CKBH,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,KCLLS.VNACC_HG,KCLLS.YYBH,SCBLYY.YWSM,KCLLS.BLSB,KCLL.CFMID,KCLL.CFMDate ');
    SQL.Add('From KCLL');
    SQL.Add('Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join SCBLYY on KCLLS.YYBH=SCBLYY.YYBH ');
    SQL.Add('where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(SemiMaterialMonth.DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',SemiMaterialMonth.DTP.date)+'''');
    SQL.Add('    and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('         and KCLLS.CostID=''6211'' and KCLLS.SCBH=''ZZZZZZZZZZ''');
    SQL.Add('         and KCLLS.VNACC_HG>0');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select VNACC,InQty,VNACC/InQty as AVGZVNACC from (');
    SQL.Add('	Select Sum(VNACC_HG) as VNACC ');
    SQL.Add('	From KCLL');
    SQL.Add('	Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('	where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(SemiMaterialMonth.DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',SemiMaterialMonth.DTP.date)+'''');
    if SemiMaterialMonth.ComboBox1.Text <> 'ALL' then
    SQL.Add('	and KCLL.GSBH='''+SemiMaterialMonth.ComboBox1.Text+'''');
    SQL.Add('	and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    if SemiMaterialMonth.ComboBox1.Text <> 'ALL' then
    SQL.Add('	and KCLL.CKBH in (Select CKBH from KCCK where GSBH='''+SemiMaterialMonth.ComboBox1.Text+''')');
    SQL.Add('	and KCLLS.CostID=''6211'' and KCLLS.SCBH=''ZZZZZZZZZZ'' ) KCLL');
    SQL.Add('left join (');
    SQL.Add('	Select Sum(YWCP.Qty) as InQty  ');
    SQL.Add('	from YWCP with (nolock)');
    SQL.Add('	left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    SQL.Add('	where Convert(varchar,YWCP.Indate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(SemiMaterialMonth.DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',SemiMaterialMonth.DTP.date)+''' ');
    SQL.Add('		and IsNull(YWCP.SB,'''')<>''''  ');
    SQL.Add(') B on 1=1');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
