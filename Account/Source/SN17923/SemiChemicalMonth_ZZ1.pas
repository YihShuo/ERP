unit SemiChemicalMonth_ZZ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, ExtCtrls,DateUtils,Comobj;

type
  TSemiChemicalMonth_ZZ = class(TForm)
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
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
    DS2: TDataSource;
    Query2: TQuery;
    Query2VNACC: TCurrencyField;
    Query2AVGZVNACC: TCurrencyField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Query3: TQuery;
    Query3GSBH: TStringField;
    Query3CKBH: TStringField;
    Query3RKNO: TStringField;
    Query3CGBH: TStringField;
    Query3CLBH: TStringField;
    Query3VNACC: TCurrencyField;
    Query3CFMID: TStringField;
    Query3CFMDATE: TDateTimeField;
    DS3: TDataSource;
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
  SemiChemicalMonth_ZZ: TSemiChemicalMonth_ZZ;

implementation

uses main1, SemiChemicalMonth1,Fununit;

{$R *.dfm}

procedure TSemiChemicalMonth_ZZ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiChemicalMonth_ZZ.FormDestroy(Sender: TObject);
begin
  SemiChemicalMonth_ZZ:=nil;
end;

procedure TSemiChemicalMonth_ZZ.FormCreate(Sender: TObject);
var sDate:TDate;
    iYear,iMonth,iDay,iiYear,iiMonth,iiDay:word;
    sYear,sMonth,VNACC,ssYear,ssMonth:string;
begin
  sDate := EncodeDate(StrToInt(SemiChemicalMonth.CBX3.Text), StrToInt(SemiChemicalMonth.CBX4.Text), 1);
  DecodeDate(sDate, iYear, iMonth, iDay); //找庫存相關的數據
  IncAMonth(iYear, iMonth, iDay, -1);
  sYear := FloatToStr(iYear);
  sMonth := FloatToStr(iMonth);
  if (Length(sMonth) = 1) then
    sMonth := '0' + sMonth;
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
    //20230325全部化學品倉
    SQL.Add('       and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    if SemiChemicalMonth.CWBHEdit2.Text<> '' then
      SQL.add('     and KCZLS.CWBH = '''+SemiChemicalMonth.CWBHEdit2.Text+'''');
    if (SemiChemicalMonth.CBX_HGLB2.ItemIndex>0) and (SemiChemicalMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     	and KCLLS.HGLB='''+SemiChemicalMonth.CBX_HGLB2.Text+'''');
    if SemiChemicalMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     	and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    //if (strtoint(SemiChemicalMonth.CBX3.Text)<=2023) and (strtoint(SemiChemicalMonth.CBX4.Text)<=4) then      //20230606
    if Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/05/01' then
    begin
      SQL.Add('     	and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'' or KCLLS.SCBH like ''LAIT%'' or KCLLS.SCBH like ''LAIK%'' or KCLLS.SCBH like ''CBYK%'')');
    end else if ((Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) >=  '2023/05/01')  and  (Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/10/01'))  then
    begin
      SQL.Add('     	and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'')');
    end else
    begin
      SQL.Add('      	and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'' or KCLLS.SCBH like ''BYIT%'' or KCLLS.SCBH like ''BYIK%'' or KCLLS.SCBH like ''LAIT%'' or KCLLS.SCBH like ''LAIK%'' or KCLLS.SCBH like ''CBYK%'')');
    end;
    SQL.Add('     	and not exists(select* from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    //SQL.Add('       and KCLLS.VNACC_HG>0');
    SQL.Add(' UNION ALL');
    SQL.Add(' SELECT KCLL.GSBH,KCLL.CKBH,KCLLS_CB.LLNO,KCLLS_CB.SCBH_Cost,KCLLS_CB.CLBH,KCLLS_CB.VNACC,'''' as YYBH,'''' as YWSM,'''' as BLSB,KCLL.CFMID,KCLL.CFMDate  ');
    SQL.Add(' FROM KCLLS_CB ');
    SQL.Add(' Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add(' Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add(' where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325全部化學品倉
    SQL.Add('       and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    if (SemiChemicalMonth.CBX_HGLB2.ItemIndex>0) and (SemiChemicalMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     	and KCLLS_CB.HGLB='''+SemiChemicalMonth.CBX_HGLB2.Text+'''');
    if SemiChemicalMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     	and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    //if (strtoint(SemiChemicalMonth.CBX3.Text)<=2023) and (strtoint(SemiChemicalMonth.CBX4.Text)<=4) then
    if Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/05/01' then
    begin
      SQL.Add('      	and KCLLS_CB.CostID like ''621%'' and ( KCLLS_CB.SCBH_Cost like ''ZZZZ%'' or KCLLS_CB.SCBH_Cost like ''LAIT%'' or KCLLS_CB.SCBH_Cost like ''LAIK%'' or KCLLS_CB.SCBH_Cost like ''CBYK%'')');
    end else if ((Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) >=  '2023/05/01')  and  (Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/10/01'))  then
    begin
      SQL.Add('      	and KCLLS_CB.CostID like ''621%'' and ( KCLLS_CB.SCBH_Cost like ''ZZZZ%'')');
    end else
    begin
      SQL.Add('      	and KCLLS_CB.CostID like ''621%'' and (KCLLS_CB.SCBH_Cost like ''ZZZZ%'' or KCLLS_CB.SCBH_Cost like ''BYIT%'' or KCLLS_CB.SCBH_Cost like ''BYIK%'' or KCLLS_CB.SCBH_Cost like ''LAIT%'' or KCLLS_CB.SCBH_Cost like ''LAIK%'' or KCLLS_CB.SCBH_Cost like ''CBYK%'')');
    end;
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
    //20230325全部化學品倉
    SQL.Add('       and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    if SemiChemicalMonth.CWBHEdit2.Text<> '' then
      SQL.add('     and KCZLS.CWBH = '''+SemiChemicalMonth.CWBHEdit2.Text+'''');
    if (SemiChemicalMonth.CBX_HGLB2.ItemIndex>0) and (SemiChemicalMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS.HGLB='''+SemiChemicalMonth.CBX_HGLB2.Text+'''');
    if SemiChemicalMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    //if (strtoint(SemiChemicalMonth.CBX3.Text)<=2023) and (strtoint(SemiChemicalMonth.CBX4.Text)<=4) then
    if Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/05/01' then
    begin
      SQL.Add('     				and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'' or KCLLS.SCBH like ''LAIT%'' or KCLLS.SCBH like ''LAIK%'' or KCLLS.SCBH like ''CBYK%'')');
    end else if ((Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) >=  '2023/05/01')  and  (Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/10/01'))  then
    begin
      SQL.Add('     				and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'')');
    end else
    begin
      SQL.Add('      	      and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'' or KCLLS.SCBH like ''BYIT%'' or KCLLS.SCBH like ''BYIK%'' or KCLLS.SCBH like ''LAIT%'' or KCLLS.SCBH like ''LAIK%'' or KCLLS.SCBH like ''CBYK%'')');
    end;
    SQL.Add('     				and not exists(select* from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    SQL.Add('     				UNION ALL');
    SQL.Add('     				SELECT Sum(VNACC) as VNACC ');
    SQL.Add('     				FROM KCLLS_CB ');
    SQL.Add('     				Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('     				where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325全部化學品倉
    SQL.Add('       and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    if (SemiChemicalMonth.CBX_HGLB2.ItemIndex>0) and (SemiChemicalMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS_CB.HGLB='''+SemiChemicalMonth.CBX_HGLB2.Text+'''');
    if SemiChemicalMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    //if (strtoint(SemiChemicalMonth.CBX3.Text)<=2023) and (strtoint(SemiChemicalMonth.CBX4.Text)<=4) then
    if Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/05/01' then
    begin
      SQL.Add('      				and KCLLS_CB.CostID like ''621%'' and (KCLLS_CB.SCBH_Cost like ''ZZZZ%'' or  KCLLS_CB.SCBH_Cost like ''LAIT%'' or KCLLS_CB.SCBH_Cost like ''LAIK%'' or KCLLS_CB.SCBH_Cost like ''CBYK%'')');
    end else if ((Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) >=  '2023/05/01')  and  (Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/10/01'))  then
    begin
      SQL.Add('      				and KCLLS_CB.CostID like ''621%'' and (KCLLS_CB.SCBH_Cost like ''ZZZZ%'')');
    end else
    begin
      SQL.Add('      	      and KCLLS_CB.CostID like ''621%'' and  ');
      SQL.Add('             (KCLLS_CB.SCBH_Cost like ''ZZZZ%'' or KCLLS_CB.SCBH_Cost like ''BYIT%'' or KCLLS_CB.SCBH_Cost like ''BYIK%'' or KCLLS_CB.SCBH_Cost like ''LAIT%'' or KCLLS_CB.SCBH_Cost like ''LAIK%'' or KCLLS_CB.SCBH_Cost like ''CBYK%'')');
    end;
    SQL.Add('     			) KCLL');
    SQL.Add('   	 ) KCLL');
    SQL.Add('left join (  SELECT SUM(KCRKS.VNACC+ISNULL(EXCHACC,0)) VNACC');
    SQL.Add('             FROM KCRKS');
    SQL.Add('             LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('             WHERE Convert(varchar,KCRK.USERDATE,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    //20230325全部化學品倉
    SQL.Add('       and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    SQL.Add('     			  AND KCRKS.CostID LIKE ''6211%''');
    if (SemiChemicalMonth.CBX_HGLB2.ItemIndex>0) and (SemiChemicalMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('             AND KCRK.HGLB ='''+SemiChemicalMonth.CBX_HGLB2.Text+'''');
    if SemiChemicalMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('             AND left(KCRK.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('             AND KCRKS.CGBH LIKE ''ZZZZ%''');
    SQL.Add('          )KCRK ON 1=1');
    SQL.Add('left join (  select Sum(InQty) as InQty ');
    SQL.Add('             From ( Select YWCP.DDBH,Sum(YWCP.Qty) as InQty');
    SQL.Add('       		  from (select * from YWCP union all select * from YWCPOld) YWCP ');
    SQL.Add('             left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH');
    SQL.Add('       			where convert(varchar,YWCP.Indate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    SQL.Add('     				and IsNull(YWCP.SB,'''')<>'''' ');
    SQL.Add('             Group by YWCP.DDBH');
    SQL.Add('             Union all ');
    SQL.Add('       			SELECT MasterOrder,SUM(total) AS InQty');
    SQL.Add('       			FROM CBY_Orders');
    SQL.Add('       			WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    SQL.Add('             Group by MasterOrder');
    SQL.Add('       			Union all');
    SQL.Add('       			Select YPDH,sum(shoetest2.qty) as InQty');
    SQL.Add('       			from shoetest');
    SQL.Add('       			left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('       			where Convert(varchar,shoetest.complete, 111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    SQL.Add('     		    and SUBSTRING(shoetest.YPDH,4,1)=''V''');
    SQL.Add('             Group by YPDH');
    SQL.Add('             Union all ');
    SQL.Add('             Select DDBH,sum(qty) as InQty');
    SQL.Add('       			from '+main.LIY_DD+'.dbo.OUTSOLE_RK');
    SQL.Add('       			where (DDBH like ''AUR%'' or DDBH like ''Y%'')');
    SQL.Add('       			and Convert(varchar,Indate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    SQL.Add('             Group by DDBH');
    SQL.Add('       			) ddzl');
    SQL.Add('             Where DDBH in ( Select KCLLS.SCBH ');
    SQL.Add('                   								From KCLL ');
    SQL.Add('                   								Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('                   								Left join KCCK on KCCK.CKBH=KCLL.CKBH  ');
    SQL.Add('                   								where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between ''' + FormatDatetime('yyyy/MM/dd', StartOfTheMonth(sDate)) + ''' AND ''' + FormatDatetime('yyyy/MM/dd', EndOfTheMonth(sDate))+''' ');
    SQL.Add('                                   and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    if (SemiChemicalMonth.CBX_HGLB2.ItemIndex>0) and (SemiChemicalMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     	                            and KCLLS.HGLB='''+SemiChemicalMonth.CBX_HGLB2.Text+'''');
    if SemiChemicalMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     	                            and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('                                   and KCLLS.Qty<>0 and SUBSTRING(KCLLS.SCBH,4,1) not in(''T'',''K'')');
    SQL.Add('                   								Group by KCLLS.SCBH ');
    SQL.Add('                   								union all ');
    SQL.Add('                   								Select DDBH ');
    SQL.Add('              								      from CWKCLLMonth ');
    SQL.Add('	                                  where KCYEAR='''+sYear+''' and KCMONTH='''+sMonth+''' ');
    SQL.Add('		                                and CWKCLLMonth.CKBH='''+SemiChemicalMonth.CKBHID+''' ');
    SQL.Add('                                   and CWKCLLMonth.VNACC>0)');
    SQL.Add('       		) B on 1=1');
    //funcObj.WriteErrorLog(sql.Text);
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
    //20230325全部化學品倉
    SQL.Add('       and KCCK.CKBH'+SemiChemicalMonth.CKBH_SQL);
    SQL.Add('     AND KCRKS.CostID LIKE ''6211%''');
    if (SemiChemicalMonth.CBX_HGLB2.ItemIndex>0) and (SemiChemicalMonth.CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     AND KCRK.HGLB ='''+SemiChemicalMonth.CBX_HGLB2.Text+'''');
    if SemiChemicalMonth.CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     AND left(KCRK.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('     AND KCRKS.CGBH LIKE ''ZZZZ%''');
    active:=true;
    //funcObj.WriteErrorLog(sql.Text);
  end;
end;
procedure TSemiChemicalMonth_ZZ.ExportDefaultExcel(Query:TQuery);
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

procedure TSemiChemicalMonth_ZZ.Excel1Click(Sender: TObject);
begin
  ExportDefaultExcel(Query1);
end;

procedure TSemiChemicalMonth_ZZ.MenuItem1Click(Sender: TObject);
begin
  ExportDefaultExcel(Query3);
end;

end.
