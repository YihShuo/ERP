unit BGradeOrders1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,
  DateUtils, ComObj, ExcelXP;

type
  TBGradeOrders = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Button1: TButton;
    Query1Seq: TFloatField;
    Query1LLNO: TStringField;
    Query1XieMing: TStringField;
    Query1Article: TStringField;
    Query1YSSM: TStringField;
    Query1DevCode: TStringField;
    Query1JiJie: TStringField;
    Query1DDMH: TStringField;
    Query1Qty: TFloatField;
    Query1BDEDesigner030: TFloatField;
    Query1BDEDesigner035: TFloatField;
    Query1BDEDesigner040: TFloatField;
    Query1BDEDesigner045: TFloatField;
    Query1BDEDesigner050: TFloatField;
    Query1BDEDesigner055: TFloatField;
    Query1BDEDesigner060: TFloatField;
    Query1BDEDesigner065: TFloatField;
    Query1BDEDesigner070: TFloatField;
    Query1BDEDesigner075: TFloatField;
    Query1BDEDesigner080: TFloatField;
    Query1BDEDesigner085: TFloatField;
    Query1BDEDesigner090: TFloatField;
    Query1BDEDesigner095: TFloatField;
    Query1BDEDesigner100: TFloatField;
    Query1BDEDesigner105: TFloatField;
    Query1BDEDesigner110: TFloatField;
    Query1BDEDesigner115: TFloatField;
    Query1BDEDesigner120: TFloatField;
    Query1BDEDesigner125: TFloatField;
    Query1BDEDesigner130: TFloatField;
    Query1BDEDesigner135: TFloatField;
    Query1BDEDesigner140: TFloatField;
    Query1BDEDesigner150: TFloatField;
    Query1BDEDesigner160: TFloatField;
    Button2: TButton;
    Query1ZLBH: TStringField;
    Query1Field170: TFloatField;
    Query1Field010: TFloatField;
    Query1Field015: TFloatField;
    Query1Field020: TFloatField;
    Query1Field025: TFloatField;
    Query1Field145: TFloatField;
    Query1Field155: TFloatField;
    Query1Field165: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    SizeQty: array[0..25] of double;
    { Private declarations }
  public
    workflow: boolean;
    { Public declarations }
  end;

var
  BGradeOrders: TBGradeOrders;
const
  MonthList: array[1..12] of string = ('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Aug', 'Jul', 'Sep', 'Oct', 'Nov', 'Dec');

implementation

uses
  main1;

{$R *.dfm}

procedure TBGradeOrders.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBGradeOrders.FormDestroy(Sender: TObject);
begin
  BGradeOrders := Nil;
end;
   
procedure TBGradeOrders.FormCreate(Sender: TObject);
begin
  if (main.ServerIP = '192.168.23.9') then
    workflow := true
  else
    workflow := false;
  DTP1.Date := StartOfTheMonth(Date);
  DTP2.Date := Date;
end;

procedure TBGradeOrders.Button1Click(Sender: TObject);
var
  i, Col: integer;
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('SELECT ROW_NUMBER() OVER(PARTITION BY LLNO ORDER BY LLNO) AS Seq,');
    SQL.Add('LLNO, ZLBH, XieMing, Article, YSSM, DevCode, JiJie, DDMH, SUM(Qty) AS Qty'); 
    SQL.Add(', MAX(CASE WHEN Size = ''01.0'' THEN Qty END) AS ''01.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''01.5'' THEN Qty END) AS ''01.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''02.0'' THEN Qty END) AS ''02.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''02.5'' THEN Qty END) AS ''02.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''03.0'' THEN Qty END) AS ''03.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''03.5'' THEN Qty END) AS ''03.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''04.0'' THEN Qty END) AS ''04.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''04.5'' THEN Qty END) AS ''04.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''05.0'' THEN Qty END) AS ''05.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''05.5'' THEN Qty END) AS ''05.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''06.0'' THEN Qty END) AS ''06.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''06.5'' THEN Qty END) AS ''06.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''07.0'' THEN Qty END) AS ''07.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''07.5'' THEN Qty END) AS ''07.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''08.0'' THEN Qty END) AS ''08.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''08.5'' THEN Qty END) AS ''08.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''09.0'' THEN Qty END) AS ''09.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''09.5'' THEN Qty END) AS ''09.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''10.0'' THEN Qty END) AS ''10.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''10.5'' THEN Qty END) AS ''10.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''11.0'' THEN Qty END) AS ''11.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''11.5'' THEN Qty END) AS ''11.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''12.0'' THEN Qty END) AS ''12.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''12.5'' THEN Qty END) AS ''12.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''13.0'' THEN Qty END) AS ''13.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''13.5'' THEN Qty END) AS ''13.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''14.0'' THEN Qty END) AS ''14.0'''); 
    SQL.Add(', MAX(CASE WHEN Size = ''14.5'' THEN Qty END) AS ''14.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''15.0'' THEN Qty END) AS ''15.0'''); 
    SQL.Add(', MAX(CASE WHEN Size = ''15.5'' THEN Qty END) AS ''15.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''16.0'' THEN Qty END) AS ''16.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''16.5'' THEN Qty END) AS ''16.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''17.0'' THEN Qty END) AS ''17.0'' FROM (');
    SQL.Add('  SELECT KCLL_BC.LLNO, KCLL_BC.ZLBH, XXZL.XieMing, DDZL.Article, XXZL.YSSM, KFXXZL.DevCode, XXZL.JiJie, XXZL.DDMH, KCLLS_BC.Size, KCLLS_BC.Qty FROM KCLLS_BC');
    SQL.Add('  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH');
    SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('  LEFT JOIN KFXXZL ON KFXXZL.XieXing = XXZL.XieXing AND KFXXZL.SheHao = XXZL.SheHao');
    SQL.Add('  WHERE KCLL_BC.Purpose = ''Sale''');
    if (workflow) then
    begin
      SQL.Add('  AND KCLL_BC.flowflag = ''Z''');
      SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.CFMDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end
    else begin
      SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end;
    SQL.Add(') AS KCLLS_BC');
    SQL.Add('GROUP BY LLNO, ZLBH, XieMing, Article, YSSM, DevCode, JiJie, DDMH');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT NULL AS Seq,');
    SQL.Add('LLNO, ZLBH, '''' AS XieMing, ZLBH AS Article, '''' AS YSSM, '''' AS DevCode, '''' AS JiJie, '''' AS DDMH, SUM(Qty) AS Qty');
    SQL.Add(', MAX(CASE WHEN Size = ''01.0'' THEN Qty END) AS ''01.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''01.5'' THEN Qty END) AS ''01.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''02.0'' THEN Qty END) AS ''02.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''02.5'' THEN Qty END) AS ''02.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''03.0'' THEN Qty END) AS ''03.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''03.5'' THEN Qty END) AS ''03.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''04.0'' THEN Qty END) AS ''04.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''04.5'' THEN Qty END) AS ''04.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''05.0'' THEN Qty END) AS ''05.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''05.5'' THEN Qty END) AS ''05.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''06.0'' THEN Qty END) AS ''06.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''06.5'' THEN Qty END) AS ''06.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''07.0'' THEN Qty END) AS ''07.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''07.5'' THEN Qty END) AS ''07.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''08.0'' THEN Qty END) AS ''08.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''08.5'' THEN Qty END) AS ''08.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''09.0'' THEN Qty END) AS ''09.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''09.5'' THEN Qty END) AS ''09.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''10.0'' THEN Qty END) AS ''10.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''10.5'' THEN Qty END) AS ''10.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''11.0'' THEN Qty END) AS ''11.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''11.5'' THEN Qty END) AS ''11.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''12.0'' THEN Qty END) AS ''12.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''12.5'' THEN Qty END) AS ''12.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''13.0'' THEN Qty END) AS ''13.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''13.5'' THEN Qty END) AS ''13.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''14.0'' THEN Qty END) AS ''14.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''14.5'' THEN Qty END) AS ''14.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''15.0'' THEN Qty END) AS ''15.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''15.5'' THEN Qty END) AS ''15.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''16.0'' THEN Qty END) AS ''16.0''');
    SQL.Add(', MAX(CASE WHEN Size = ''16.5'' THEN Qty END) AS ''16.5''');
    SQL.Add(', MAX(CASE WHEN Size = ''17.0'' THEN Qty END) AS ''17.0'' FROM (');
    SQL.Add('  SELECT KCLL_BC.LLNO, KCLL_BC.ZLBH, KCLLS_BC.Size, KCLLS_BC.Qty FROM KCLLS_BC');
    SQL.Add('  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH');
    SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('  LEFT JOIN KFXXZL ON KFXXZL.XieXing = XXZL.XieXing AND KFXXZL.SheHao = XXZL.SheHao');
    SQL.Add('  WHERE KCLL_BC.Purpose = ''Sale''');
    if (workflow) then
    begin
      SQL.Add('  AND KCLL_BC.flowflag = ''Z''');
      SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.CFMDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end
    else begin
      SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end;
    SQL.Add(') AS KCLLS_BC');
    SQL.Add('GROUP BY LLNO, ZLBH');
    SQL.Add(') AS KCLLS_BC');
    SQL.Add('ORDER BY LLNO, ZLBH, ISNULL(Seq, 999)');
    Active := true;

    DisableControls;
    for i := 0 to Length(SizeQty)-1 do
    begin
      SizeQty[i] := 0;
    end;
    while not Eof do
    begin
      if NOT (FieldByName('Seq').IsNull) then
      begin
        for Col:=7 to DBGridEh1.Columns.Count-1 do
        begin
          if NOT (Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).IsNull) then
            SizeQty[Col-7] := SizeQty[Col-7] + Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).AsFloat;
        end;
      end;
      Next;
    end;

    First;
    for i := 0 to Length(SizeQty)-1 do
    begin
      DBGridEh1.Columns[i+7].Footer.Value := FloatToStr(SizeQty[i]);
    end;
    EnableControls;
  end;
end;

procedure TBGradeOrders.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('Seq').IsNull) then
    Background := $00CCFFCC;
end;

procedure TBGradeOrders.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
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

      eclApp.Cells[1, 1] := 'B-Grade Orders';
      eclApp.Cells[1, 1].Font.Size := 20;
      eclApp.Cells[3, 1] := 'TO:';
      eclApp.Cells[4, 1] := 'FM:';
      eclApp.Cells[5, 1] := 'Report period: ' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '-' + FormatDateTime('yyyy/MM/dd', DTP2.Date);
      eclApp.Range[eclApp.Cells[4, 1], eclApp.Cells[5, 3]].Font.Color := clWhite;
      eclApp.Range[eclApp.Cells[4, 1], eclApp.Cells[5, 3]].Interior.Color := clBlack;
      eclApp.Cells[6, DBGridEh1.Columns.Count-2] := 'Date: ' + MonthList[MonthOf(Date)] + FormatDateTime('-dd-yyyy', Date);

      Row := 7;
      for Col:=0 to 7 do
      begin
        eclApp.Range[eclApp.Cells[Row, Col+1], eclApp.Cells[Row+1, Col+1]].Merge;
        eclApp.Cells[Row, Col+1].NumberFormatLocal := '@';
        eclApp.Cells[Row, Col+1] := DBGridEh1.Columns[Col].Title.Caption;
      end;
      eclApp.Range[eclApp.Cells[Row, 9], eclApp.Cells[Row+1, 9]].Merge;
      eclApp.Cells[Row, 9] := 'Price';
      eclApp.Cells[Row, 10] := 'Price';
      eclApp.Cells[Row+1, 10] := '40%Off';
      eclApp.Range[eclApp.Cells[Row, 11], eclApp.Cells[Row+1, 11]].Merge;
      eclApp.Cells[Row, 11] := 'TTL-Price';
      eclApp.Range[eclApp.Cells[Row, 12], eclApp.Cells[Row, DBGridEh1.Columns.Count+3]].Merge;
      eclApp.Cells[Row, 12] := 'Size Run';
      eclApp.Cells[Row, 12].HorizontalAlignment := xlHAlignCenter;
      for Col := 8 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells[Row+1, Col+4].NumberFormatLocal := '@';
        eclApp.Cells[Row+1, Col+4] := DBGridEh1.Columns[Col].Title.Caption;
      end;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row+1, DBGridEh1.Columns.Count+3]].Font.Color := clWhite;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row+1, DBGridEh1.Columns.Count+3]].Interior.Color := clBlack;

      Query1.First;
      Row := 9;
      while not Query1.Eof do
      begin
        for Col:=0 to DBGridEh1.Columns.Count-1 do
        begin
          if (Col <= 7) then
            eclApp.Cells[Row, Col+1] := Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).Value
          else
            eclApp.Cells[Row, Col+4] := Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
        end;

        if (Query1.FieldByName('Seq').IsNull) then
          eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, DBGridEh1.Columns.Count+3]].Interior.Color := $00CCFFCC;

        Query1.Next;
        Inc(Row);
      end;
      eclApp.Cells[Row, 1] := 'Grand total';
      eclApp.Cells[Row, 8] := DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[7]);
      for Col:=8 to DBGridEh1.Columns.Count-1 do
      begin
        if (StrToInt(DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[Col])) > 0) then
          eclApp.Cells[Row, Col+4] := DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[Col]);
      end;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, DBGridEh1.Columns.Count+3]].Font.Color := clWhite;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, DBGridEh1.Columns.Count+3]].Interior.Color := clBlack;

      eclApp.Cells[Row+1, 2] := 'Reported by:';
      eclApp.Cells[Row+2, 2] := 'Inspected by:';

      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[Query1.RecordCount+9, DBGridEh1.Columns.Count+3]].Borders[1].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[Query1.RecordCount+9, DBGridEh1.Columns.Count+3]].Borders[2].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[Query1.RecordCount+9, DBGridEh1.Columns.Count+3]].Borders[3].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[Query1.RecordCount+9, DBGridEh1.Columns.Count+3]].Borders[4].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Query1.RecordCount+11, DBGridEh1.Columns.Count+3]].Font.Name := 'MicroSoft JhengHei';

      eclapp.Columns[1].ColumnWidth := 3.5;
      eclapp.Columns[2].ColumnWidth := 17;
      eclapp.Columns[3].ColumnWidth := 15;
      eclapp.Columns[4].ColumnWidth := 12;
      eclapp.Columns[5].ColumnWidth := 19;
      eclapp.Columns[6].ColumnWidth := 7;
      eclapp.Columns[7].ColumnWidth := 15;
      eclapp.Columns[8].ColumnWidth := 4;
      eclapp.Columns[9].ColumnWidth := 5.5;
      eclapp.Columns[10].ColumnWidth := 7;
      eclapp.Columns[11].ColumnWidth := 9;
      for Col:=12 to DBGridEh1.Columns.Count+3 do
      begin
        eclapp.Columns[Col].ColumnWidth := 4;
      end;

      ShowMessage('Succeed');
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
