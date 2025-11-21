unit CostSheet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, ComCtrls, DateUtils, DB,
  DBTables, ComObj, ExcelXP;

type
  TCostSheet = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label8: TLabel;
    ED_Order: TEdit;
    Label4: TLabel;
    ED_SKU: TEdit;
    Label11: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1PlanDate: TDateTimeField;
    Query1DepName: TStringField;
    Query1DDQty: TIntegerField;
    Query1IPrice: TFloatField;
    Query1CBD_Lab: TFloatField;
    Query1CBD_Mat: TFloatField;
    Query1OrdAcc: TFloatField;
    Query1BLACC: TFloatField;
    Query1LLACC: TFloatField;
    Query1Num_Lab: TIntegerField;
    Query1HourlyCapacity: TFloatField;
    Query1WorkHour: TFloatField;
    Query1Wage: TFloatField;
    Query1Overhead: TFloatField;
    Query1MatCost: TFloatField;
    Query1LabCost: TFloatField;
    Query1OhCost: TFloatField;
    Query1blank: TStringField;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1ColWidthsChanged(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostSheet: TCostSheet;

implementation

  uses main1, CostSheet_CBD1;
  
{$R *.dfm}

procedure TCostSheet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCostSheet.FormDestroy(Sender: TObject);
begin
  CostSheet := Nil
end;

procedure TCostSheet.FormCreate(Sender: TObject);
begin
  DTP1.Date := StartOfTheMonth(Date);
  DTP2.Date := Date;
end;

procedure TCostSheet.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#KCLLS'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #KCLLS END');
    SQL.Add('SELECT KCLLS.LLNO, KCLLS.CLBH, KCLL.DepID, KCLLS.Qty, KCLLS.BLSB, KCLLS.SCBH, KCLL.CFMDate, DDZL.YN INTO #KCLLS FROM KCLLS');
    SQL.Add('LEFT JOIN KCLL ON KCLL.LLNO = KCLLS.LLNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCLLS.SCBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE KCLL.CFMID <> ''NO'' AND KCLLS.SCBH LIKE ''' + ED_Order.Text + '%'' AND DDZL.Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('AND KCLLS.Qty <> 0 AND KCLL.SCBH <> ''JJJJJJJJJJ'' AND DDZL.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND DDZL.DDBH IN (');
    SQL.Add('  SELECT YWDD.YSBH FROM YWCP');
    SQL.Add('  LEFT JOIN YWDD ON YWDD.DDBH = YWCP.DDBH');
    SQL.Add('  WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, YWCP.INDATE, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('  GROUP BY YWDD.YSBH');
    SQL.Add(')');

    SQL.Add('IF OBJECT_ID(''tempdb..#SMDD_Dep'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SMDD_Dep END');
    SQL.Add('SELECT SMDD.YSBH, REPLACE(REPLACE(LEFT(BDepartment.DepName, LEN(BDepartment.DepName)-2), ''LEAN'', ''L''), ''_'', '''') AS DepName, MIN(SMDD.PlanDate) AS PlanDate INTO #SMDD_Dep FROM SMDD');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SMDD.DepNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH');
    SQL.Add('WHERE SMDD.GXLB = ''A'' AND SMDD.YSBH IN (');
    SQL.Add('  SELECT YWDD.YSBH FROM YWCP');
    SQL.Add('  LEFT JOIN YWDD ON YWDD.DDBH = YWCP.DDBH');
    SQL.Add('  WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, YWCP.INDATE, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('  GROUP BY YWDD.YSBH');
    SQL.Add(')');
    SQL.Add('AND SMDD.YSBH LIKE ''' + ED_Order.Text + '%'' AND DDZL.Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('GROUP BY YSBH, BDepartment.DepName');

    SQL.Add('IF OBJECT_ID(''tempdb..#SMDD'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SMDD END');
    SQL.Add('SELECT SMDD.YSBH, SMDD.PlanDate, CAST(STUFF((');
    SQL.Add('  SELECT '', '' + DepName FROM (');
    SQL.Add('    SELECT * FROM #SMDD_Dep');
    SQL.Add('  ) AS SMDD_Dep');
    SQL.Add('  WHERE SMDD_Dep.YSBH = SMDD.YSBH');
    SQL.Add('  FOR XML PATH('''')), 1, 1, ''''');
    SQL.Add(') AS VARCHAR(30)) AS DepName INTO #SMDD FROM (');
    SQL.Add('  SELECT * FROM #SMDD_Dep');
    SQL.Add(') AS SMDD');
           
    SQL.Add('DECLARE @MinDate AS SmallDateTime');
    SQL.Add('SET @MinDate = (');
    SQL.Add('  SELECT MIN(SCBB.SCDate) AS SCDate FROM SCBBS');
    SQL.Add('  LEFT JOIN SCBB ON SCBB.ProNo = SCBBS.ProNo');
    SQL.Add('  WHERE SCBBS.GXLB = ''A'' AND SCBBS.SCBH IN (SELECT YSBH FROM #SMDD)');
    SQL.Add(')');
    SQL.Add('DECLARE @MaxDate AS SmallDateTime');
    SQL.Add('SET @MaxDate = (');
    SQL.Add('  SELECT MAX(SCBB.SCDate) AS SCDate FROM SCBBS');
    SQL.Add('  LEFT JOIN SCBB ON SCBB.ProNo = SCBBS.ProNo');
    SQL.Add('  WHERE SCBBS.GXLB = ''A'' AND SCBBS.SCBH IN (SELECT YSBH FROM #SMDD)');
    SQL.Add(')');
    SQL.Add('IF OBJECT_ID(''tempdb..#Capacity'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Capacity END');
    SQL.Add('SELECT SCBB.DepNo, SCBB.SCDate, SUM(SCBBS.Qty) AS Pairs INTO #Capacity FROM SCBBS');
    SQL.Add('LEFT JOIN SCBB ON SCBB.ProNo = SCBBS.ProNo');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SCBBS.SCBH');
    SQL.Add('WHERE SCBBS.GXLB = ''A'' AND SCBB.SCDate BETWEEN @MinDate AND @MaxDate');
    SQL.Add('AND SCBBS.SCBH LIKE ''' + ED_Order.Text + '%'' AND DDZL.Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('GROUP BY SCBB.DepNo, SCBB.SCDate');

    SQL.Add('IF OBJECT_ID(''tempdb..#Hourly'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Hourly END');
    SQL.Add('SELECT SCBH, ROUND(Pairs/SUM(WorkTime), 0) AS Capacity INTO #Hourly FROM (');
    SQL.Add('  SELECT SCBBS.SCBH, SCBB.DepNo, SCBB.SCDate, DDZL.Pairs, (SUM(SCBBS.Qty)/Capacity.Pairs)*ISNULL(SCRL.SCGS, 8) AS WorkTime FROM SCBBS');
    SQL.Add('  LEFT JOIN SCBB ON SCBB.ProNo = SCBBS.ProNo');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SCBBS.SCBH');
    SQL.Add('  LEFT JOIN SCRL ON SCRL.DepNO = SCBB.DepNo AND CONVERT(SmallDateTime, SCRL.SCYEAR + ''/'' + SCRL.SCMONTH + ''/'' + SCRL.SCDay) = SCBB.SCDate');
    SQL.Add('  LEFT JOIN #Capacity AS Capacity ON Capacity.DepNo = SCBB.DepNo AND Capacity.SCDate = SCBB.SCDate');
    SQL.Add('  WHERE SCBBS.GXLB = ''A'' AND SCBBS.SCBH IN (SELECT YSBH FROM #SMDD)');
    SQL.Add('  AND SCBBS.SCBH LIKE ''' + ED_Order.Text + '%'' AND DDZL.Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('  GROUP BY SCBBS.SCBH, SCBB.DepNo, SCBB.SCDate, DDZL.Pairs, Capacity.Pairs, SCRL.SCGS');
    SQL.Add(') AS SCBB');
    SQL.Add('GROUP BY SCBH, Pairs');
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT YWCP.DDBH, YWCP.Article, YWCP.PlanDate, YWCP.DepName, YWDD.DDQty,');
    SQL.Add('YWDD.IPrice, DDZL_CBD_Cost.CBD_Lab, DDZL_CBD_Cost.CBD_Mat, YWDD.OrdACC,');
    SQL.Add('ISNULL(MAX(KCBLS.BLACC), 0) AS BLACC, ISNULL(MAX(KCLLS.LLACC),0) AS LLACC,');
    SQL.Add('DDZL_CBD_Cost.Num_Lab, YWCP.Capacity AS HourlyCapacity FROM (');
    SQL.Add('  SELECT YWDD.YSBH AS DDBH, XXZL.Article, XXZL.XieMing, MAX(YWCP.INDATE) AS LastInDate, SMDD.PlanDate, SMDD.DepName, Hourly.Capacity FROM YWCP');
    SQL.Add('  LEFT JOIN YWDD ON YWDD.DDBH = YWCP.DDBH');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = YWDD.YSBH');
    SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('  LEFT JOIN #SMDD AS SMDD ON SMDD.YSBH = YWCP.DDBH');
    SQL.Add('  LEFT JOIN #Hourly AS Hourly ON Hourly.SCBH = YWCP.DDBH');
    SQL.Add('  WHERE YWCP.DDBH LIKE ''' + ED_Order.Text + '%'' AND XXZL.Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('  AND CONVERT(SmallDateTime, CONVERT(VARCHAR, YWCP.INDATE, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('  GROUP BY YWDD.YSBH, XXZL.Article, XXZL.XieMing, SMDD.PlanDate, SMDD.DepName, Hourly.Capacity');
    SQL.Add(') AS YWCP');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT YWDD.YSBH AS DDBH, SUM(YWDDS.Qty) AS DDQty, SUM(YWDDS.Qty*YWDDS.IPrice) AS OrdACC,');
    SQL.Add('  SUM(YWDDS.Qty*YWDDS.IPrice)/SUM(YWDDS.Qty) AS IPrice FROM YWDDS');
    SQL.Add('  LEFT JOIN YWDD ON YWDD.DDBH = YWDDS.DDBH');
    SQL.Add('  GROUP BY YWDD.YSBH');
    SQL.Add(') AS YWDD ON YWDD.DDBH = YWCP.DDBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT #KCLLS.SCBH AS DDBH, SUM(#KCLLS.Qty*CWDJ.USPrice) AS LLACC FROM #KCLLS');
    SQL.Add('  LEFT JOIN CWDJ ON CWDJ.CLBH = #KCLLS.CLBH AND CWDJ.DJYear = CONVERT(VARCHAR, DATEPART(yyyy, #KCLLS.CFMDate)) AND CWDJ.DJMonth = CONVERT(VARCHAR, DATEPART(MM, #KCLLS.CFMDate))');
    SQL.Add('  GROUP BY #KCLLS.SCBH');
    SQL.Add(') AS KCLLS ON KCLLS.DDBH = YWCP.DDBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT #KCLLS.SCBH AS DDBH, SUM(#KCLLS.Qty*CWDJ.USPrice) AS BLACC FROM #KCLLS');
    SQL.Add('  LEFT JOIN CWDJ ON CWDJ.CLBH = #KCLLS.CLBH AND CWDJ.DJYear = CONVERT(VARCHAR, DATEPART(yyyy, #KCLLS.CFMDate)) AND CWDJ.DJMonth = CONVERT(VARCHAR, DATEPART(MM, #KCLLS.CFMDate))');
    SQL.Add('  WHERE #KCLLS.BLSB = ''Y''');
    SQL.Add('  GROUP BY #KCLLS.SCBH');
    SQL.Add(') AS KCBLS ON KCBLS.DDBH = YWCP.DDBH');
    SQL.Add('LEFT JOIN [LIY_TYXUAN].[dbo].[DDZL_CBD_Cost] AS DDZL_CBD_Cost ON DDZL_CBD_Cost.DDBH = YWCP.DDBH');
    SQL.Add('WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, YWCP.LastInDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('GROUP BY YWCP.DDBH, YWCP.Article, YWCP.PlanDate, YWCP.DepName, YWDD.DDQty, YWDD.IPrice, DDZL_CBD_Cost.CBD_Lab, DDZL_CBD_Cost.CBD_Mat, YWDD.OrdACC, DDZL_CBD_Cost.Num_Lab, YWCP.Capacity');
    SQL.Add('ORDER BY YWCP.DDBH');
    Active := true;
  end;
end;

procedure TCostSheet.Query1CalcFields(DataSet: TDataSet);
begin
  Query1.FieldByName('WorkHour').Value := ROUND(Query1.FieldByName('DDQty').AsInteger * 10 / Query1.FieldByName('HourlyCapacity').AsInteger) / 10;
  Query1.FieldByName('Wage').Value := 1.6;
  Query1.FieldByName('MatCost').Value := Query1.FieldByName('LLACC').AsFloat;
  Query1.FieldByName('LabCost').Value := ROUND(Query1.FieldByName('Num_Lab').AsInteger * Query1.FieldByName('WorkHour').AsFloat * Query1.FieldByName('Wage').AsFloat * 10000) / 10000;
  Query1.FieldByName('OhCost').Value := ROUND(Query1.FieldByName('Overhead').AsFloat * Query1.FieldByName('DDQty').AsInteger * 10000) / 10000;
end;

procedure TCostSheet.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  Col, Row: integer;
begin
  if (Query1.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      eclApp.Cells[1, 1] := '¶µ¦¸';
      for Col:=0 to DBGridEh1.Columns.Count-2 do
      begin
        eclApp.Cells[1, Col+2] := DBGridEh1.Columns[Col].Title.Caption;
      end;

      Query1.First;
      Row := 2;
      while not Query1.Eof do
      begin
        eclApp.Cells[Row, 1] := Row-1;
        for Col:=0 to DBGridEh1.Columns.Count-2 do
        begin
          if (DBGridEh1.Columns[Col].FieldName = 'WorkHour') then
            eclApp.Cells[Row, Col+2] := '=ROUND(F' + IntToStr(Row) + '/N' + IntToStr(Row) + ', 1)'
          else if (DBGridEh1.Columns[Col].FieldName = 'MatCost') then
            eclApp.Cells[Row, Col+2] := '=L' + IntToStr(Row)
          else if (DBGridEh1.Columns[Col].FieldName = 'LabCost') then
            eclApp.Cells[Row, Col+2] := '=M' + IntToStr(Row) + '*O' + IntToStr(Row) + '*P' + IntToStr(Row)
          else if (DBGridEh1.Columns[Col].FieldName = 'OhCost') then
            eclApp.Cells[Row, Col+2] := '=F' + IntToStr(Row) + '*Q' + IntToStr(Row)
          else
            eclApp.Cells[Row, Col+2] := Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
        end;
        Query1.Next;
        Inc(Row);
      end;

      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, DBGridEh1.Columns.Count]].Font.Name := 'MicroSoft JhengHei';

      eclapp.Columns.Autofit; 
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TCostSheet.DBGridEh1ColWidthsChanged(Sender: TObject);
begin
  DBGridEh1.Columns[19].Width := 0;
end;

procedure TCostSheet.Button3Click(Sender: TObject);
begin
  CostSheet_CBD:=TCostSheet_CBD.Create(self);
  CostSheet_CBD.ShowModal();
end;

end.
