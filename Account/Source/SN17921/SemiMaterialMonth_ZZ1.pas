unit SemiMaterialMonth_ZZ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, GridsEh, DBGridEh, DBTables, DateUtils,Comobj,
  Menus;

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
    Query2AVGZVNACC: TCurrencyField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DBGridEh3: TDBGridEh;
    Splitter3: TSplitter;
    Query3: TQuery;
    DS3: TDataSource;
    Query3GSBH: TStringField;
    Query3CKBH: TStringField;
    Query3RKNO: TStringField;
    Query3CGBH: TStringField;
    Query3CLBH: TStringField;
    Query3VNACC: TCurrencyField;
    Query3CFMID: TStringField;
    Query3CFMDATE: TDateTimeField;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Query2InQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);

  private
    { Private declarations }
    procedure ExportDefaultExcel(Query:TQuery);
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
var sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(SemiMaterialMonth.CBX3.Text), StrToInt(SemiMaterialMonth.CBX4.Text), 1);
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Select KCLL.GSBH,KCLL.CKBH,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,KCLLS.VNACC_HG,KCLLS.YYBH,SCBLYY.YWSM,KCLLS.BLSB,KCLL.CFMID,KCLL.CFMDate ');
    SQL.Add(' From KCLL');
    SQL.Add(' Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add(' left join SCBLYY on KCLLS.YYBH=SCBLYY.YYBH ');
    SQL.Add(' Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add(' left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH  ');
    SQL.Add(' where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325场珇
    SQL.Add('       and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    if SemiMaterialMonth.CWBHEdit2.Text<> '' then
      SQL.add('     and KCZLS.CWBH = '''+SemiMaterialMonth.CWBHEdit2.Text+'''');
    if (SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     	and KCLLS.HGLB='''+SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     	and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('     	and KCLLS.CostID like ''621%'' and KCLLS.SCBH like ''ZZZZ%''');
    SQL.Add('     	and not exists(select* from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    SQL.Add('       and KCLLS.CostID like ''621%'' and KCLLS.SCBH like ''ZZZZ%''');
    //SQL.Add('       and KCLLS.VNACC_HG>0');
    SQL.Add(' UNION ALL');
    SQL.Add(' SELECT KCLL.GSBH,KCLL.CKBH,KCLLS_CB.LLNO,KCLLS_CB.SCBH_Cost,KCLLS_CB.CLBH,KCLLS_CB.VNACC,'''' as YYBH,'''' as YWSM,'''' as BLSB,KCLL.CFMID,KCLL.CFMDate  ');
    SQL.Add(' FROM KCLLS_CB ');
    SQL.Add(' Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add(' Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add(' where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325场珇
    SQL.Add('       and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    if (SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     	and KCLLS_CB.HGLB='''+SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     	and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('      	and KCLLS_CB.CostID like ''621%'' and KCLLS_CB.SCBH_Cost like ''ZZZZ%''');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select sum(isnull(KCLL.VNACC,0)) - sum(isnull(KCRK.VNACC,0)) as VNACC,sum(InQty) as InQty,(sum(isnull(convert(float,KCLL.VNACC),0)) - sum(isnull(convert(float,KCRK.VNACC),0)))/sum(InQty) as AVGZVNACC ');
    SQL.Add('from (	select sum(VNACC) as VNACC ');
    SQL.Add('   		from(	Select Sum(VNACC_HG) as VNACC ');
    SQL.Add('             From KCLL');
    SQL.Add('     				Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('             left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH  ');
    SQL.Add('     				where KCLL.YN=''5'' and KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325场珇
    SQL.Add('       and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    if SemiMaterialMonth.CWBHEdit2.Text<> '' then
      SQL.add('     and KCZLS.CWBH = '''+SemiMaterialMonth.CWBHEdit2.Text+'''');
    if (SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS.HGLB='''+SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('     				and KCLLS.CostID like ''621%'' and KCLLS.SCBH like ''ZZZZ%''');
    SQL.Add('     				and not exists(select* from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    SQL.Add('     				UNION ALL');
    SQL.Add('     				SELECT Sum(VNACC) as VNACC ');
    SQL.Add('     				FROM KCLLS_CB ');
    SQL.Add('     				Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('     				where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325场珇
    SQL.Add('             and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    if (SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS_CB.HGLB='''+SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('      				and KCLLS_CB.CostID like ''621%'' and KCLLS_CB.SCBH_Cost like ''ZZZZ%''');
    SQL.Add('     			) KCLL');
    SQL.Add('   	 ) KCLL');
    SQL.Add('left join (  SELECT SUM(KCRKS.VNACC+ISNULL(EXCHACC,0)) VNACC');
    SQL.Add('             FROM KCRKS');
    SQL.Add('             LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('             WHERE Convert(varchar,KCRK.USERDATE,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325场珇
    SQL.Add('             and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    SQL.Add('     			  AND KCRKS.CostID LIKE ''6211%''');
    if (SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('             AND KCRK.HGLB ='''+SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('             AND left(KCRK.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('             AND KCRKS.CGBH LIKE ''ZZZZ%''');
    SQL.Add('          )KCRK ON 1=1');
    SQL.Add('left join (  Select Sum(InQty) as InQty');
    SQL.Add('             From ( Select YWCP.DDBH,Sum(YWCP.Qty) as InQty');
    SQL.Add('       		  from (select * from YWCP union all select * from YWCPOld) YWCP ');
    SQL.Add('             left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH');
    SQL.Add('       			where convert(varchar,YWCP.Indate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    SQL.Add('     				and IsNull(YWCP.SB,'''')<>'''' ');
    SQL.Add('             GROUP BY YWCP.DDBH ');
    SQL.Add('             Union all');
    SQL.Add('             Select DDBH,sum(qty) as InQty ');
    SQL.Add('       			from LIY_DD.dbo.OUTSOLE_RK ');
    SQL.Add('       			where DDBH like ''Y%'' ');
    SQL.Add('             and Convert(varchar,Indate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('             Group by DDBH ');
    SQL.Add('       			) ddzl');
    SQL.Add('       		) B on 1=1');
    Active:=true;
  end;
  with query3 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add(' SELECT KCRK.GSBH,KCRK.CKBH,KCRK.RKNO,KCRKS.CGBH,KCRKS.CLBH,KCRKS.VNACC+isnull(KCRKS.ExchACC,0) as VNACC,KCRK.CFMID,KCRK.CFMDATE');
    SQL.Add(' FROM KCRKS');
    SQL.Add(' LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add(' Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add(' WHERE Convert(varchar,KCRK.USERDATE,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325场珇
    SQL.Add('     and KCCK.CKBH'+SemiMaterialMonth.CKBH_SQL);
    SQL.Add('     AND KCRKS.CostID LIKE ''6211%''');
    if (SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     AND KCRK.HGLB ='''+SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     AND left(KCRK.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('     AND KCRKS.CGBH LIKE ''ZZZZ%''');
    active:=true;
    //funcObj.WriteErrorLog(sql.Text);
  end;
end;
procedure TSemiMaterialMonth_ZZ.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query.Active then
  begin
    if Query.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for   i:=1   to   Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
        end;
        Query.Next;
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
procedure TSemiMaterialMonth_ZZ.Excel1Click(Sender: TObject);
begin
  ExportDefaultExcel(Query1);
end;

procedure TSemiMaterialMonth_ZZ.MenuItem1Click(Sender: TObject);
begin
  ExportDefaultExcel(Query3);
end;

end.
