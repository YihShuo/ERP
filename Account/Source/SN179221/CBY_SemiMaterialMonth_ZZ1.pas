unit CBY_SemiMaterialMonth_ZZ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, GridsEh, DBGridEh, DBTables, DateUtils,Comobj,
  Menus;

type
  TCBY_SemiMaterialMonth_ZZ = class(TForm)
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
  CBY_SemiMaterialMonth_ZZ: TCBY_SemiMaterialMonth_ZZ;

implementation

uses
  CBY_SemiMaterialMonth1, FunUnit;
  
{$R *.dfm}

procedure TCBY_SemiMaterialMonth_ZZ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCBY_SemiMaterialMonth_ZZ.FormDestroy(Sender: TObject);
begin
  CBY_SemiMaterialMonth_ZZ := Nil;
end;

procedure TCBY_SemiMaterialMonth_ZZ.FormCreate(Sender: TObject);
var sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(CBY_SemiMaterialMonth.CBX3.Text), StrToInt(CBY_SemiMaterialMonth.CBX4.Text), 1);
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCLL.GSBH, KCLL.CKBH, KCLLS.LLNO, KCLLS.SCBH, KCLLS.CLBH, KCLLS.VNACC_HG, KCLLS.YYBH, SCBLYY.YWSM, KCLLS.BLSB, KCLL.CFMID, KCLL.CFMDate FROM KCLL');
    SQL.Add('LEFT JOIN KCLLS ON KCLL.LLNO = KCLLS.LLNO');
    SQL.Add('LEFT JOIN SCBLYY ON KCLLS.YYBH = SCBLYY.YYBH');
    SQL.Add('LEFT JOIN KCZLS ON KCZLS.CLBH = KCLLS.CLBH AND KCZLS.CKBH = KCLL.CKBH');
    SQL.Add('Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('WHERE KCLL.YN=''5'' AND KCLL.CFMID <> ''NO'' AND CONVERT(VARCHAR, KCLL.CFMDate, 111) BETWEEN ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+'''');
    //20230325场珇
    SQL.Add('       and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    if (CBY_SemiMaterialMonth.CWBHEdit2.Text <> '') then
      SQL.Add('AND KCZLS.CWBH = ''' + CBY_SemiMaterialMonth.CWBHEdit2.Text + '''');
    if (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex > 0) AND (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex <> 5) then
      SQL.Add('AND KCLLS.HGLB = ''' + CBY_SemiMaterialMonth.CBX_HGLB2.Text + '''');
    if (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex = 5) then
    SQL.Add('AND KCLLS.HGLB IN (''NK'', ''KD'', ''HD'', ''TC'')');
    SQL.Add('AND KCLLS.CostID LIKE ''621%'' ');
    SQL.Add('      				and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'' or SUBSTRING(KCLLS.SCBH,4,1)=''T'' or SUBSTRING(KCLLS.SCBH,4,1)=''K'') ');
    //穦璸砏﹚だ舥禣ノぃ腳货妓珇刚┪痙┏
    SQL.Add('             and KCLLS.SCBH not like ''BYIK%'' and  KCLLS.SCBH not like ''BYIT%'' ');
    Active := true;
  end;

  with Query2 do
  begin
    Active := false;
    SQL.Clear;

    SQL.Add('Select sum(isnull(KCLL.VNACC,0)) - sum(isnull(KCRK.VNACC,0)) as VNACC,sum(InQty) as InQty,(sum(isnull(convert(float,KCLL.VNACC),0)) - sum(isnull(convert(float,KCRK.VNACC),0)))/sum(InQty) as AVGZVNACC ');
    SQL.Add('from (	select sum(VNACC) as VNACC ');
    SQL.Add('   		from(	Select Sum(VNACC_HG) as VNACC ');
    SQL.Add('             From KCLL');
    SQL.Add('     				Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('             left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH  ');
    SQL.Add('     				where KCLL.YN=''5'' and KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    //20230325场珇
    SQL.Add('       and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    if CBY_SemiMaterialMonth.CWBHEdit2.Text<> '' then
      SQL.add('     and KCZLS.CWBH = '''+CBY_SemiMaterialMonth.CWBHEdit2.Text+'''');
    if (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS.HGLB='''+CBY_SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'') ');
    SQL.Add('      				and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'' or SUBSTRING(KCLLS.SCBH,4,1)=''T'' or SUBSTRING(KCLLS.SCBH,4,1)=''K'') ');
    //穦璸砏﹚だ舥禣ノぃ腳货妓珇刚┪痙┏
    SQL.Add('             and KCLLS.SCBH not like ''BYIK%'' and  KCLLS.SCBH not like ''BYIT%'' ');
    SQL.Add('     				and not exists(select* from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    SQL.Add('     				UNION ALL');
    SQL.Add('     				SELECT Sum(VNACC) as VNACC ');
    SQL.Add('     				FROM KCLLS_CB ');
    SQL.Add('     				Left join KCLL on KCLL.LLNO=KCLLS_CB.LLNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('     				where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',sDate)+''' ');
    //20230325场珇
    SQL.Add('       and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    if (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS_CB.HGLB='''+CBY_SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and KCLLS_CB.HGLB in (''NK'',''KD'',''HD'',''TC'') ');
    SQL.Add('      				and KCLLS_CB.CostID like ''621%'' and (KCLLS_CB.SCBH_Cost like ''ZZZZ%'' or SUBSTRING(KCLLS_CB.SCBH,4,1)=''T'' or SUBSTRING(KCLLS_CB.SCBH,4,1)=''K'') ');//
    //穦璸砏﹚だ舥禣ノぃ腳货妓珇刚┪痙┏
    SQL.Add('             and KCLLS_CB.SCBH not like ''BYIK%'' and  KCLLS_CB.SCBH not like ''BYIT%'' ');
    SQL.Add('     			) KCLL');
    SQL.Add('   	 ) KCLL');
    SQL.Add('left join (  SELECT SUM(KCRKS.VNACC+ISNULL(EXCHACC,0)) VNACC');
    SQL.Add('             FROM KCRKS');
    SQL.Add('             LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('             WHERE Convert(varchar,KCRK.USERDATE,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',sDate)+''' ');
    //20230325场珇
    SQL.Add('             and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    SQL.Add('     			  AND KCRKS.CostID LIKE ''6211%''');
    if (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex>0) and (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('             AND KCRK.HGLB ='''+CBY_SemiMaterialMonth.CBX_HGLB2.Text+'''');
    if CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('             AND KCRK.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('             AND KCRKS.CGBH LIKE ''ZZZZ%''');
    SQL.Add('          )KCRK ON 1=1');
    SQL.Add('left join (  select Sum(InQty)+1 as InQty ');
    SQL.Add('             From ( SELECT SUM(total) AS InQty');
    SQL.Add('       			FROM CBY_Orders');
    SQL.Add('       			WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('       			GROUP BY MasterOrder');
    SQL.Add('       			Union all');
    SQL.Add('       			Select sum(shoetest2.qty) as InQty');
    SQL.Add('       			from shoetest');
    SQL.Add('       			left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('       			where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('     		    and SUBSTRING(shoetest.YPDH,4,1)=''V''');
    SQL.Add('       			) ddzl');
    SQL.Add('       		) B on 1=1');
    Active := true;
  end;

  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCRK.GSBH, KCRK.CKBH, KCRK.RKNO, KCRKS.CGBH, KCRKS.CLBH, KCRKS.VNACC + ISNULL(KCRKS.ExchACC, 0) AS VNACC, KCRK.CFMID, KCRK.CFMDATE FROM KCRKS');
    SQL.Add('LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO');
    SQL.Add('Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('WHERE CONVERT(VARCHAR, KCRK.USERDATE, 111) BETWEEN ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd',sDate) + '''');
    //20230325场珇
    SQL.Add('       and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    SQL.Add('AND KCRKS.CostID LIKE ''6211%''');
    if (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex > 0) AND (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex <> 5) then
      SQL.Add('AND KCRK.HGLB = ''' + CBY_SemiMaterialMonth.CBX_HGLB2.Text + '''');
    if (CBY_SemiMaterialMonth.CBX_HGLB2.ItemIndex = 5) then
      SQL.Add('AND KCRK.HGLB IN (''NK'', ''KD'', ''HD'', ''TC'')');
    SQL.Add('AND KCRKS.CGBH LIKE ''ZZZZ%''');
    Active := true;
  end;
end;
procedure TCBY_SemiMaterialMonth_ZZ.ExportDefaultExcel(Query: TQuery);
var
  eclApp, WorkBook: OleVariant;
  i,j:integer;
begin
  if (Query.Active) then
  begin
    if (Query.recordcount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else begin
    ShowMessage('No record.');
    Abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.Workbooks.Add;
    eclApp.Cells[1, 1] := 'NO';
    for i:=1 to Query.FieldCount do
    begin
      eclApp.Cells[1, i+1] := Query.Fields[i-1].FieldName;
    end;
    Query.First;
    j := 2;
    while not Query.Eof do
    begin
      eclApp.Cells[j, 1] := j-1;
      for i:=1 to Query.FieldCount do
      begin
        eclApp.Cells[j, i+1] := Query.Fields[i-1].Value;
      end;
      Query.Next;
      Inc(j);
    end;
    eclapp.Columns.Autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := true;
  except on F:Exception do
    ShowMessage(F.Message);
  end;
end;

procedure TCBY_SemiMaterialMonth_ZZ.Excel1Click(Sender: TObject);
begin
  ExportDefaultExcel(Query1);
end;

procedure TCBY_SemiMaterialMonth_ZZ.MenuItem1Click(Sender: TObject);
begin
  ExportDefaultExcel(Query3);
end;

end.
