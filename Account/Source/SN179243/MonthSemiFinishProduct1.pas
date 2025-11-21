unit MonthSemiFinishProduct1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, comobj;

type
  TMonthSemiFinishProduct = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edt_RY1: TEdit;
    btn_Query: TButton;
    btn_Excel: TButton;
    cbx_Year: TComboBox;
    cbx_Month: TComboBox;
    btn_Monthly: TButton;
    DBG_MonthStock: TDBGridEh;
    Qry_MonthStock: TQuery;
    DS_MonthStock: TDataSource;
    Qry_Temp: TQuery;
    SaveDialog1: TSaveDialog;
    Qry_MonthStockKCYEAR: TStringField;
    Qry_MonthStockKCMONTH: TStringField;
    Qry_MonthStockDDBH: TStringField;
    Qry_MonthStockDepot: TStringField;
    Qry_MonthStockRemQty: TCurrencyField;
    Qry_MonthStockRemCost: TFloatField;
    Qry_MonthStockRemCost01T: TFloatField;
    Qry_MonthStockRemCost02T: TFloatField;
    Qry_MonthStockRemCost03T: TFloatField;
    Qry_MonthStockRemCost04T: TFloatField;
    Qry_MonthStockRemCost05T: TFloatField;
    Qry_MonthStockRemCost06T: TFloatField;
    Qry_MonthStockRemCost07T: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure btn_MonthlyClick(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure Qry_MonthStockAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthSemiFinishProduct: TMonthSemiFinishProduct;
  NDate: TDate;
  ayear,amonth:string;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TMonthSemiFinishProduct.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TMonthSemiFinishProduct.FormDestroy(Sender: TObject);
begin
  MonthSemiFinishProduct:=Nil;
end;

procedure TMonthSemiFinishProduct.FormCreate(Sender: TObject);
var i : integer;
begin
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  // Load year-month
  i:=strtoint(formatdatetime('yyyy',Ndate))-5;
  cbx_Year.Clear;
  while i<(strtoint(formatdatetime('yyyy',Ndate))+3) do
  begin
      cbx_Year.Items.Add(inttostr(i));
      i:=i+1;
  end;
  cbx_Year.ItemIndex:=cbx_Year.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_Month.ItemIndex:=cbx_Month.Items.IndexOf(formatdatetime('mm',Ndate));
  PC1.ActivePage:=TS1;
end;

procedure TMonthSemiFinishProduct.btn_ExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Qry_MonthStock.Active then
  begin
    if Qry_MonthStock.recordcount=0 then
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
    eclApp.ActiveSheet.Rows[1].font.Bold:=true;
    for i := 0 to DBG_MonthStock.FieldCount-1 do
    begin
      eclApp.Cells(1, i + 2) :=DBG_MonthStock.Columns[i].Title.Caption
    end;
    
    Qry_MonthStock.First;
    j:=2;
    while   not  Qry_MonthStock.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=0   to   Qry_MonthStock.fieldcount-1  do
      begin
        eclApp.Cells(j,i+2):=Qry_MonthStock.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      Qry_MonthStock.Next;
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

procedure TMonthSemiFinishProduct.btn_MonthlyClick(Sender: TObject);
var STD:String;
begin
  STD:=cbx_Year.Text+'/'+cbx_Month.Text+'/01';
  //
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM CW_MastCostMonth_SemiFG');
    sql.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with Qry_Temp do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE CW_MastCostMonth_SemiFG');
          sql.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  With Qry_Temp do   //All CKBH
  begin 
    Close;
    SQL.Clear;
    SQL.Add('   if object_id(''tempdb..#EntryStockRY_Semi'') is not null      ');
    SQL.Add('      begin drop table #EntryStockRY_Semi end   ');
    SQL.Add('   select '''+cbx_Year.Text+''' KCYEAR,'''+cbx_Month.Text+''' KCMONTH,RY,Depot,0 RKQTY, isnull(RemCost,0) RemCost,isnull(T_Data,0)  T_Data      ');
    SQL.Add('            ,DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+''' ) [Month] ,KC.End_UnFQty    ');
    SQL.Add('  	into #EntryStockRY_Semi    ');
    SQL.Add('   from (		SELECT KCYEAR, KCMONTH, G_DDBH RY,case when G_DDBH like ''Y%'' then ''A'' else ''A-KT'' end Depot, sum(AA_SemiVNACC) as RemCost,sum(T_TCPPS) as T_Data , max(X_NotInQty) End_UnFQty     ');
    SQL.Add('  			FROM CW_MatCostMonth_Total WHERE G_DDBH IN(SELECT DISTINCT G_DDBH FROM CW_MatCostMonth_Total WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''')   ');
    SQL.Add('  			GROUP BY  KCYEAR, KCMONTH, G_DDBH) KC         ');
    SQL.Add('    where DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''   )<13  and DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''   )>-1      ');

    SQL.Add('    --==================================================    ');
    SQL.Add('   Create INDEX #EntryStockRY_Semi_index on #EntryStockRY_Semi(RY,Depot,[Month])       ');
    SQL.Add('      UPDATE B SET B.End_UnFQty = A.End_UnFQty         ');
    SQL.Add('      FROM #EntryStockRY_Semi B     ');
    SQL.Add('    	 INNER JOIN (SELECT  RY, End_UnFQty , ROW_NUMBER() OVER(PARTITION BY RY ORDER BY (case when End_UnFQty=0 THEN 99999999 ELSE End_UnFQty END ) asc ) Num     ');
    SQL.Add('                  FROM #EntryStockRY_Semi)A ON A.Num=1 AND A.RY=B.RY    ');
    SQL.Add('      WHERE A.End_UnFQty<>B.End_UnFQty  ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    SQL.Clear;
    SQL.Add('    --==================================================    ');
    SQL.Add('   if object_id(''tempdb..#EntryStockRY_Semi1'') is not null      ');
    SQL.Add('      begin drop table #EntryStockRY_Semi1 end   ');
    SQL.Add('  	select *,      ');
    SQL.Add('      	case when c.[Month]=0 then c.RemCost end RemCost_c0,     ');
    SQL.Add('  		  case when c.[Month]=0 then c.T_Data end T_c0,   ');
    SQL.Add('      	case when c.[Month]=1 then c.RemCost end RemCost_c1,   ');
    SQL.Add('  		  case when c.[Month]=1 then c.T_Data end T_c1,      ');
    SQL.Add('      	case when c.[Month]=2 then c.RemCost end RemCost_c2,   ');
    SQL.Add('  		  case when c.[Month]=2 then c.T_Data end T_c2,       ');
    SQL.Add('      	case when c.[Month]=3 then c.RemCost end RemCost_c3,   ');
    SQL.Add('  		  case when c.[Month]=3 then c.T_Data end T_c3,      ');
    SQL.Add('      	case when c.[Month]=4 then c.RemCost end RemCost_c4,   ');
    SQL.Add('  		  case when c.[Month]=4 then c.T_Data end T_c4,      ');
    SQL.Add('      	case when c.[Month]=5 then c.RemCost end RemCost_c5,   ');
    SQL.Add('  		  case when c.[Month]=5 then c.T_Data end T_c5,      ');
    SQL.Add('      	case when c.[Month]=6 then c.RemCost end RemCost_c6,   ');
    SQL.Add('  		  case when c.[Month]=6 then c.T_Data end T_c6,      ');
    SQL.Add('      	case when c.[Month]=7 then c.RemCost end RemCost_c7,  ');
    SQL.Add('  		  case when c.[Month]=7 then c.T_Data end T_c7,       ');
    SQL.Add('      	case when c.[Month]=8 then c.RemCost end RemCost_c8,   ');
    SQL.Add('  		  case when c.[Month]=8 then c.T_Data end T_c8,      ');
    SQL.Add('      	case when c.[Month]=9 then c.RemCost end RemCost_c9,   ');
    SQL.Add('  		  case when c.[Month]=9 then c.T_Data end T_c9,      ');
    SQL.Add('      	case when c.[Month]=10 then c.RemCost end RemCost_c10,   ');
    SQL.Add('  		  case when c.[Month]=10 then c.T_Data end T_c10,      ');
    SQL.Add('      	case when c.[Month]=11 then c.RemCost end RemCost_c11,   ');
    SQL.Add('  		  case when c.[Month]=11 then c.T_Data end T_c11,     ');
    SQL.Add('      	case when c.[Month]=12 then c.RemCost end RemCost_c12,  ');
    SQL.Add('  		  case when c.[Month]=12 then c.T_Data end T_c12      ');
    SQL.Add('  into #EntryStockRY_Semi1  ');
    SQL.Add('  		from ( select KCYEAR,KCMonth,RY,Depot,[Month],0 SumRKqty,RKQty,RemCost,T_Data,End_UnFQty from #EntryStockRY_Semi )c  ');

    SQL.Add('    --==================================================    ');
    SQL.Add('  if object_id(''tempdb..#EntryStockRY_Semi2'') is not null      ');
    SQL.Add('      begin drop table #EntryStockRY_Semi2 end   ');
    SQL.Add('  select d.KCYear,d.KCMonth,d.RY DDBH,d.Depot,isnull(max(d.End_UnFQty),0) RemQty  ');
    SQL.Add('  			,isnull(sum(d.RemCost_c0),0) as RemCost --cot D  ');
    SQL.Add('  			,case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end as RemCost01T -- [<30] cot E  ');
    SQL.Add('  			,case when isnull(sum(d.T_c1),0) > isnull(sum(d.RemCost_c0),0) - case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end   ');
    SQL.Add('  					then isnull(sum(d.RemCost_c0),0) - case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end else isnull(sum(d.T_c1),0) end as RemCost02T --[31~60] cot G  ');
    SQL.Add('  			, case when isnull(sum(d.T_c2),0) > isnull(sum(d.RemCost_c0),0) -case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end  ');
    SQL.Add('  				-case when isnull(sum(d.T_c1),0) > isnull(sum(d.RemCost_c0),0) - case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end   ');
    SQL.Add('  						then isnull(sum(d.RemCost_c0),0) - case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end   ');
    SQL.Add('  						else isnull(sum(d.T_c1),0) end  then isnull(sum(d.RemCost_c0),0) -case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end  ');
    SQL.Add('  				-case when isnull(sum(d.T_c1),0) > isnull(sum(d.RemCost_c0),0) - case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end   ');
    SQL.Add('  						then isnull(sum(d.RemCost_c0),0) - case when isnull(sum(d.T_c0),0) > isnull(sum(d.RemCost_c0),0) then isnull(Sum(d.RemCost_c0),0) else isnull(sum(T_c0),0) end   ');
    SQL.Add('  						else isnull(sum(d.T_c1),0) end else isnull(sum(d.T_c2),0) end as RemCost03T --[90 ngay]  cot I  ');
    SQL.Add('  into #EntryStockRY_Semi2  ');
    SQL.Add('  from #EntryStockRY_Semi1 d  ');
    SQL.Add('  group by d.KCYear,d.KCMonth,d.RY,d.Depot  ');

    SQL.Add('    --==================================================    ');
    SQL.Add('  if object_id(''tempdb..#EntryStockRY_Semi3'') is not null      ');
    SQL.Add('      begin drop table #EntryStockRY_Semi3 end   ');
    SQL.Add('  select Semi2.KCYear,Semi2.KCMonth,Semi2.DDBH,Semi2.Depot,max(Semi2.RemQty) as RemQty  ');
    SQL.Add('  		, max(Semi2.RemCost) as RemCost -- cot D gia tri ton   ');
    SQL.Add('  		, max(Semi2.RemCost01T) as RemCost01T -- cot E ton 30 ngay  ');
    SQL.Add('  		, max(Semi2.RemCost02T) as RemCost02T -- cot G ton 60 ngay  ');
    SQL.Add('  		, max(Semi2.RemCost03T) as RemCost03T -- cot I ton 90 ngay  ');
    SQL.Add('  		, case when max(isnull(Semi1.T_c3,0))  > max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T)   ');
    SQL.Add('  			  then  max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T)  else max(isnull(Semi1.T_c3,0)) end as RemCost04T -- cot K 120 ngay  ');
    SQL.Add('  		, case when max(isnull(Semi1.T_c4,0)) > max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T)   ');
    SQL.Add('  					- case when max(isnull(Semi1.T_c3,0))  > max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T) then  max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T) ');
    SQL.Add('               else max(isnull(Semi1.T_c3,0)) end  ');
    SQL.Add('  				      then max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T)   ');
    SQL.Add('  					- case when max(isnull(Semi1.T_c3,0))  > max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T) then  max(Semi2.RemCost) - max(Semi2.RemCost01T) - max(Semi2.RemCost02T) - max(Semi2.RemCost03T) ');
    SQL.Add('               else max(isnull(Semi1.T_c3,0)) end  ');
    SQL.Add('  			else max(isnull(Semi1.T_c4,0))  end as RemCost05T  -- cot M 150 ngay  ');
    SQL.Add('  into #EntryStockRY_Semi3  ');
    SQL.Add('  from #EntryStockRY_Semi2 Semi2 left  join #EntryStockRY_Semi1 Semi1  ');
    SQL.Add('  on Semi2.KCYEAR=Semi1.KCYEAR and Semi2.KCMONTH=Semi1.KCMONTH and Semi2.DDBH=Semi1.RY   ');
    SQL.Add('  group by Semi2.KCYEAR,Semi2.KCMONTH,Semi2.DDBH,Semi2.Depot  ');

    SQL.Add('    --==================================================    ');
    SQL.Add('  if object_id(''tempdb..#EntryStockRY_Semi4'') is not null      ');
    SQL.Add('      begin drop table #EntryStockRY_Semi4 end   ');
    SQL.Add('  select Semi3.KCYear,Semi3.KCMonth,Semi3.DDBH,Semi3.Depot,max(Semi3.RemQty) as RemQty  ');
    SQL.Add('  		, max(Semi3.RemCost) as RemCost -- cot D gia tri ton   ');
    SQL.Add('  		, max(Semi3.RemCost01T) as RemCost01T -- cot E ton 30 ngay  ');
    SQL.Add('  		, max(Semi3.RemCost02T) as RemCost02T -- cot G ton 60 ngay  ');
    SQL.Add('  		, max(Semi3.RemCost03T) as RemCost03T -- cot I ton 90 ngay  ');
    SQL.Add('  		, max(Semi3.RemCost04T) as RemCost04T -- cot I ton 90 ngay  ');
    SQL.Add('  		, max(Semi3.RemCost05T) as RemCost05T -- cot M ton 150 ngay  ');
    SQL.Add('  		, case when max(isnull(Semi1.T_c5,0)) > max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) -  max(Semi3.RemCost05T) then  ');
    SQL.Add('  				max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) -  max(Semi3.RemCost05T) else max(isnull(Semi1.T_c5,0)) end as RemCost06T -- cot O ton 180 ngay  ');
    SQL.Add('  		, case when max(isnull(Semi1.T_c6,0)) > max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) - max(Semi3.RemCost05T)   ');
    SQL.Add('  			- case when max(isnull(Semi1.T_c5,0)) > max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) -  max(Semi3.RemCost05T) then  ');
    SQL.Add('  				max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) -  max(Semi3.RemCost05T) else max(isnull(Semi1.T_c5,0)) end  then   ');
    SQL.Add('  				max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) - max(Semi3.RemCost05T)   ');
    SQL.Add('  			- case when max(isnull(Semi1.T_c5,0)) > max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) -  max(Semi3.RemCost05T) then  ');
    SQL.Add('  				max(Semi3.RemCost) - max(Semi3.RemCost01T) - max(Semi3.RemCost02T) - max(Semi3.RemCost03T) - max(Semi3.RemCost04T) -  max(Semi3.RemCost05T) else max(isnull(Semi1.T_c5,0)) end  ');
    SQL.Add('  			else max(isnull(Semi1.T_c6,0)) end as RemCost07T -- cot Q ton > 180 ngay  ');
    SQL.Add('  into #EntryStockRY_Semi4  ');
    SQL.Add('  from #EntryStockRY_Semi3 Semi3 left  join #EntryStockRY_Semi1 Semi1  ');
    SQL.Add('  on Semi3.KCYEAR=Semi1.KCYEAR and Semi3.KCMONTH=Semi1.KCMONTH and Semi3.DDBH=Semi1.RY   ');
    SQL.Add('  group by Semi3.KCYEAR,Semi3.KCMONTH,Semi3.DDBH,Semi3.Depot  ');

    SQL.Add('    --==================================================    ');
    SQL.Add('  Insert into CW_MastCostMonth_SemiFG (KCYEAR, KCMONTH, DDBH, Depot,RemQty, RemCost, RemCost01T, RemCost02T, RemCost03T, RemCost04T, RemCost05T, RemCost06T, RemCost07T, USERID, USERDATE, YN)       ');
    SQL.Add('  Select KCYEAR,KCMONTH,DDBH,Depot,RemQty,RemCost,RemCost01T, RemCost02T, RemCost03T, RemCost04T, RemCost05T, RemCost06T, RemCost07T,'''+main.Edit1.Text+''' as USERID, GETDATE() as UserDate,''1'' as YN  ');
    SQL.Add('  from #EntryStockRY_Semi4  ');
    SQL.Add('  where RemCost>0 and DDBH not in (SELECT G_DDBH FROM CW_MatCostMonth_Total WHERE KCYEAR='''+cbx_Year.Text+'''  AND KCMONTH='''+cbx_Month.Text+''' AND X_NotInQty =0 )    ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;
  showmessage('Finish');
  btn_Query.Click;
end;

procedure TMonthSemiFinishProduct.btn_QueryClick(Sender: TObject);
begin
  With Qry_MonthStock do
  begin 
    active:=false;
    SQL.Clear; 
    SQL.Add('SELECT KCYEAR,KCMONTH,DDBH,Depot,RemQty,RemCost,RemCost01T,RemCost02T,RemCost03T,RemCost04T,RemCost05T,RemCost06T,RemCost07T   ');
    SQL.Add('FROM CW_MastCostMonth_SemiFG  ');
    SQL.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+'''  ');
    if edt_RY1.Text<>'' then
      SQL.Add('    AND DDBH LIKE '''+edt_RY1.Text+'%'' ');
    SQL.Add('ORDER BY KCYEAR,KCMONTH,Depot,DDBH ');
    active:=true;
  end;
end;

procedure TMonthSemiFinishProduct.Qry_MonthStockAfterOpen(
  DataSet: TDataSet);
begin
  With Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select * From CW_MastCostMonth_SemiFG Where KCYEAR='''+cbx_year.Text+''' and KCMONTH='''+cbx_month.Text+''' ');
    active:=true;
  end;
  if Qry_Temp.RecordCount = 0 then
  begin
    if messagedlg('No data. Do you want to calculate it ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
    begin
      btn_Monthly.Click;
    end;
  end;
end;

end.
