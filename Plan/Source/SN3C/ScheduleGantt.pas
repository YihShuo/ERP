unit ScheduleGantt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DateUtils, DB, DBTables, ComObj,
  ExcelXP;

type
  TF_ScheduleGantt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DTPS: TDateTimePicker;
    DTPE: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Query1: TQuery;
    StringGrid1: TStringGrid;
    Query2: TQuery;
    QCheck: TQuery;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GenerateStringGrid;
    procedure InitialStringGridData;
    procedure SetStringGridData;
    procedure SumStringGridData;
    procedure AdjustStringGridData;
  public
    { Public declarations }
  end;

var
  F_ScheduleGantt: TF_ScheduleGantt;
  SDate: TDateTime;
  SYear, SMonth, SDay: integer;
const
  Alphabet: array[0..26] of string = ('','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
  
implementation

{$R *.dfm}
uses
  main1;

procedure TF_ScheduleGantt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TF_ScheduleGantt.FormDestroy(Sender: TObject);
begin
  F_ScheduleGantt := nil;
end;

procedure TF_ScheduleGantt.FormCreate(Sender: TObject);
begin
  DTPS.Date := StartOfTheMonth(Now);
  DTPE.Date := EndOfTheMonth(Now);
  Combobox1.ItemIndex := 0;

  StringGrid1.ColWidths[0] := 60;
  StringGrid1.ColWidths[1] := 90;
  StringGrid1.RowHeights[StringGrid1.RowCount-1] := 45;
  StringGrid1.RowHeights[StringGrid1.RowCount-2] := 45;
  StringGrid1.Cells[0, 1] := '廠別';
  StringGrid1.Cells[1, 0] := '月　　份';
  StringGrid1.Cells[1, 1] := '上班工時';
  StringGrid1.Cells[1, 2] := '加班工時';
  StringGrid1.Cells[1, StringGrid1.RowCount-2] := '總　　　計';
  StringGrid1.Cells[1, StringGrid1.RowCount-1] := '平均每小時' + #13#10 + '雙　　　數';
  StringGrid1.Cells[StringGrid1.ColCount-1, 0] := '總計';
end;

procedure TF_ScheduleGantt.GenerateStringGrid;
var
  Col, Row: integer;
  TempDate: TDateTime;
  Year, Month, Day: Word;
begin
  //清除資料
  for Col := 2 to StringGrid1.ColCount-2 do
  begin
    StringGrid1.Cols[Col].Clear;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT DISTINCT ''LEAN '' + SUBSTRING(DepName,10,2) AS LEAN FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND ProYN = 1 AND sumline IS NOT NULL AND YN = 1');
    SQL.Add(' AND DEPNAME LIKE ''' + Combobox1.Text + '_LEAN%'' ');
    Active := true;

    TempDate := DTPS.Date;
    StringGrid1.ColCount := DaysBetween(DTPE.Date, DTPS.Date) + 4;
    StringGrid1.Cells[StringGrid1.ColCount-1, 0] := '總計';

    for Col := 1 to DaysBetween(DTPE.Date, DTPS.Date) + 1 do
    begin
      DecodeDate(TempDate, Year, Month, Day);
      StringGrid1.Cells[Col+1, 0] := IntToStr(Month) + '/' + IntToStr(Day);
      StringGrid1.Cells[Col+1, 2] := '0';

      with QCheck do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add(' SELECT ISNULL(FLOOR(AVG(S.SCGS)),0) AS HR FROM SCRL S');
        SQL.Add(' LEFT JOIN BDepartment B ON B.ID = S.DepNo');
        SQL.Add(' WHERE S.SCYEAR = ''' + IntToStr(Year) + ''' AND S.SCMONTH = ''' + IntToStr(Month) + ''' AND S.SCDAY = ''' + IntToStr(Day) + ''' AND ISNULL(SCGS,0) <> 0 AND S.GSBH = ''' + main.Edit2.Text + ''' ');
        SQL.Add(' AND B.GXLB = ''A'' AND B.ProYN = ''1'' AND B.sumline IS NOT NULL AND B.YN = ''1'' AND B.DepName LIKE ''' + Combobox1.Text + '_LEAN%'' ');
        Active := true;

        if (RecordCount > 0) then
        begin
          StringGrid1.Cells[Col+1, 1] := IntToStr(FieldByName('HR').AsInteger);
        end;
      end;

      TempDate := IncDay(TempDate);
    end;

    //清除標題
    StringGrid1.Cells[0, (StringGrid1.RowCount-3) DIV 2] := '';
    StringGrid1.RowHeights[StringGrid1.RowCount-1] := StringGrid1.DefaultRowHeight;
    StringGrid1.RowHeights[StringGrid1.RowCount-2] := StringGrid1.DefaultRowHeight;
    StringGrid1.Cells[1, StringGrid1.RowCount-2] := '';
    StringGrid1.Cells[1, StringGrid1.RowCount-1] := '';

    //重新產生標題
    StringGrid1.RowCount := RecordCount*2 + 5;
    StringGrid1.Cells[0, (StringGrid1.RowCount-3) DIV 2] := Combobox1.Text + '廠';
    StringGrid1.RowHeights[StringGrid1.RowCount-1] := 45;
    StringGrid1.RowHeights[StringGrid1.RowCount-2] := 45;
    StringGrid1.Cells[1, StringGrid1.RowCount-2] := '總　　　計';
    StringGrid1.Cells[1, StringGrid1.RowCount-1] := '平均每小時' + #13#10 + '雙　　　數';

    Row := 3;
    First;
    while not eof do
    begin
      StringGrid1.Cells[1, Row] := FieldByName('LEAN').AsString;
      Inc(Row, 2);
      Next;
    end;
  end;
end;

procedure TF_ScheduleGantt.InitialStringGridData;
var
  Col, Row: integer;
begin
  for Col := 2 to StringGrid1.ColCount-2 do
  begin
    Row := 4;

    while Row <= StringGrid1.RowCount-3 do
    begin
      StringGrid1.Cells[Col, Row] := '0';
      Inc(Row, 2);
    end;
  end;
end;

procedure TF_ScheduleGantt.SetStringGridData;
var
  Col, Row, TCol: integer;
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT SUBSTRING(B.DepName,10,2) AS DepNum, S.BZDate, S.Qty, A1.ROrder, A1.BUYNO, A1.Pairs, A1.DAOMH FROM SCBZCL S');
    SQL.Add(' LEFT JOIN (');
    SQL.Add('   SELECT S.RDepNO, S.RPlanDate, S.ROrder, D.BUYNO, SUM(S.Qty) AS Pairs, REPLACE(X.DAOMH,''LY-'','''') AS DAOMH FROM SMDD S');
    SQL.Add('   LEFT JOIN DDZL D ON D.DDBH = S.YSBH');
    SQL.Add('   LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
    SQL.Add('   LEFT JOIN SCBZCL SB ON SB.DepNo = S.RDepNO AND SB.BZDate = S.RPlanDate');
    SQL.Add('   LEFT JOIN BDepartment B ON B.ID = S.RDepNO AND B.GSBH = S.GSBH');
    SQL.Add('   WHERE S.RPlanDate BETWEEN ''' + DateToStr(DTPS.Date) + ''' AND ''' + DateToStr(DTPE.Date) + ''' ');
    SQL.Add('   AND S.GSBH = ''' + main.Edit2.Text + ''' AND S.GXLB = ''A'' ');
    SQL.Add('   AND B.DepName LIKE ''' + Combobox1.Text + '_LEAN%'' AND B.ProYN = ''1'' AND B.sumline IS NOT NULL');
    SQL.Add('   GROUP BY S.RDepNO, S.RPlanDate, ROrder, D.BUYNO, X.DAOMH');
    SQL.Add(' ) AS A1 ON A1.RDepNO = S.DepNO AND A1.RPlanDate = S.BZDate');
    SQL.Add(' LEFT JOIN BDepartment B ON B.ID = S.DepNo AND B.GSBH = S.GSBH');
    SQL.Add(' WHERE S.BZDate BETWEEN ''' + DateToStr(DTPS.Date) + ''' AND ''' + DateToStr(DTPE.Date) + ''' AND S.GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.Add(' AND B.GXLB = ''A'' AND B.ProYN = ''1'' AND B.sumline IS NOT NULL AND B.YN = ''1'' ');
    SQL.Add(' AND B.DepName LIKE ''' + Combobox1.Text + '_LEAN%'' ');
    SQL.Add(' ORDER BY DepNum, S.BZDate');
    Active := true;
    First;

    while not eof do
    begin
      Col := Trunc(FieldByName('BZDate').AsDateTime) - Trunc(SDate) + 2;
      Row := (FieldByName('DepNum').AsInteger * 2) + 2;
      StringGrid1.Cells[Col, Row] := FieldByName('Qty').AsString;

      if (FieldByName('ROrder').AsInteger = 1) then
      begin
        StringGrid1.Cells[Col, Row-1] := FieldByName('DAOMH').AsString;
      end
      else if (FieldByName('ROrder').AsInteger >= 2) then
      begin
        for TCol := Col+1 to StringGrid1.ColCount-2 do
        begin
          if (StringGrid1.Cells[TCol, 1] <> '0') OR (StringGrid1.Cells[TCol, 2] <> '0') then
          begin
            StringGrid1.Cells[TCol, Row-1] := FieldByName('DAOMH').AsString;
            break;
          end;
        end;
      end;
      Next;
    end;
  end;
end;

procedure TF_ScheduleGantt.AdjustStringGridData;
var
  Col, Row, TCol: integer;
  TDAOMH: string;
begin
  Row := 4;
  TDAOMH := '';
  //將沒有值的欄位設定為前一個有工時日期的欄位值
  while Row < StringGrid1.RowCount-2 do
  begin
    for Col := 2 to StringGrid1.ColCount-2 do
    begin
      if (StringGrid1.Cells[Col, Row-1] <> '') then
      begin
        if (TDAOMH = StringGrid1.Cells[Col, Row-1]) then
          StringGrid1.Cells[Col, Row-1] := ''
        else
          TDAOMH := StringGrid1.Cells[Col, Row-1];
      end;
    end;
    Inc(Row, 2);
  end;
end;

procedure TF_ScheduleGantt.SumStringGridData;
var
  Col, Row, Total, Counter: integer;
begin
  //底部總計
  for Col := 2 to StringGrid1.ColCount-2 do
  begin
    Total := 0;
    Counter := 0;
    Row := 4;

    while Row <= StringGrid1.RowCount-3 do
    begin
      if (StringGrid1.Cells[Col, Row] <> '0') then
        Counter := Counter + 1;
      Total := Total + StrToInt(StringGrid1.Cells[Col, Row]);
      Inc(Row, 2);
    end;

    StringGrid1.Cells[Col, StringGrid1.RowCount-2] := IntToStr(Total);
    if (Counter <> 0) AND ((StringGrid1.Cells[Col, 1] <> '0') OR (StringGrid1.Cells[Col, 2] <> '0')) then
      StringGrid1.Cells[Col, StringGrid1.RowCount-1] := IntToStr(Total DIV (StrToInt(StringGrid1.Cells[Col, 1]) + StrToInt(StringGrid1.Cells[Col, 2])) DIV Counter)
    else
      StringGrid1.Cells[Col, StringGrid1.RowCount-1] := '0';
  end;

  //側邊上班工時總計
  Total := 0;
  for Col := 2 to StringGrid1.ColCount-2 do
  begin
    Total := Total + StrToInt(StringGrid1.Cells[Col, 1]);
  end;
  StringGrid1.Cells[StringGrid1.ColCount-1, 1] := IntToStr(Total);

  //側邊總計
  Row := 2;
  while Row <= StringGrid1.RowCount-3 do
  begin
    Total := 0;

    for Col := 2 to StringGrid1.ColCount-2 do
    begin
      Total := Total + StrToInt(StringGrid1.Cells[Col, Row]);
    end;

    StringGrid1.Cells[StringGrid1.ColCount-1, Row] := IntToStr(Total);
    Inc(Row, 2);
  end;

  //側邊及底部重疊處總計
  Counter := 0;
  Row := 4;
  while Row <= StringGrid1.RowCount-3 do
  begin
    if (StringGrid1.Cells[StringGrid1.ColCount-1, Row] <> '0') then
      Inc(Counter);
    Total := Total + StrToInt(StringGrid1.Cells[StringGrid1.ColCount-1, Row]);
    Inc(Row, 2);
  end;
  StringGrid1.Cells[StringGrid1.ColCount-1, StringGrid1.RowCount-2] := IntToStr(Total);
  if (Total <> 0) AND ((StringGrid1.Cells[StringGrid1.ColCount-1, 1] <> '0') OR (StringGrid1.Cells[StringGrid1.ColCount-1, 2] <> '0')) then
    StringGrid1.Cells[StringGrid1.ColCount-1, StringGrid1.RowCount-1] := IntToStr(Total DIV (StrToInt(StringGrid1.Cells[StringGrid1.ColCount-1, 1]) + StrToInt(StringGrid1.Cells[StringGrid1.ColCount-1, 2])) DIV Counter)
  else
    StringGrid1.Cells[StringGrid1.ColCount-1, StringGrid1.RowCount-1] := '0';
end;

procedure TF_ScheduleGantt.Button1Click(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  SDate := DTPS.Date;
  DecodeDate(SDate, Year, Month, Day);
  SYear := Year;
  SMonth := Month;
  SDay := Day;
  
  GenerateStringGrid;
  InitialStringGridData;
  SetStringGridData;
  AdjustStringGridData;
  SumStringGridData;
  Button2.Enabled := true;
end;

procedure TF_ScheduleGantt.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin

  //合併儲存格
  if (ACol = 0) AND (ARow = 0) then
    Rect.Bottom := Rect.Bottom + 3
  else if (ACol = 0) AND (ARow = 2) then
    Rect.Top := Rect.Top - 3
  else if (ACol = 0) AND (ARow >= 3) AND (ARow <= StringGrid1.RowCount-2) then
    Rect.Bottom := Rect.Bottom + 2
  else if (ACol = 0) AND (ARow >= 4) AND (ARow <= StringGrid1.RowCount-1) then
    Rect.Top := Rect.Top - 2
  else if (ACol = 1) AND (ARow >= 3) AND (ARow <= StringGrid1.RowCount-4) AND (ARow MOD  2 = 1) then
      Rect.Bottom := Rect.Bottom + 2
  else if (Acol = 1) AND (ARow >= 4) AND (ARow <= StringGrid1.RowCount-3) AND (ARow MOD  2 = 0) then
      Rect.Top := Rect.Top - 2;

  with TStringGrid(Sender) do
  begin
    if (ACol >= 0) AND (ACol <= 1) then
    begin
      Canvas.Brush.Color := clSkyBlue;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 12;
      Canvas.FillRect(Rect);
    end
    else if (ACol >= 2) AND (ARow >= 0) AND (ARow <= 2) then
    begin
      Canvas.Brush.Color := clSkyBlue;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 12;
      Canvas.FillRect(Rect);
    end
    else if (ACol >= 2) AND (ACol <= StringGrid1.ColCount-2) AND (ARow >= 4) AND (ARow <= StringGrid1.RowCount-3) AND (ARow MOD 2 = 0) then
    begin
      Canvas.Brush.Color := clWindow;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 10;
      Canvas.FillRect(Rect);
    end
    else if (ACol >= 2) AND (ACol <= StringGrid1.ColCount-2) AND (ARow >= 3) AND (ARow <= StringGrid1.RowCount-3) AND (ARow MOD 2 = 1) then
    begin
      Canvas.Brush.Color := RGB(236,245,255);
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 6;
      Canvas.FillRect(Rect);
    end
    else if (ACol >= 2) AND (ARow >= StringGrid1.RowCount-2) then
    begin
      Canvas.Brush.Color := RGB(236,245,255);
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 12;
      Canvas.FillRect(Rect);
    end
    else if (ACol = StringGrid1.ColCount-1) AND (ARow >= 3) then
    begin
      Canvas.Brush.Color := RGB(236,245,255);
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 10;
      Canvas.FillRect(Rect);
    end;

    if (StringGrid1.Cells[ACol, 1] = '0') AND (StringGrid1.Cells[ACol, 2] = '0') then
    begin
      Canvas.Brush.Color := clYellow;
      Canvas.FillRect(Rect);
    end;

    if (gdSelected in State) then
    begin
      Canvas.Font.Color := clBlack;
      Canvas.Brush.Color := clMoneyGreen;
      Canvas.FillRect(Rect);
    end;

    if (ACol >= 2) AND (ARow >= StringGrid1.RowCount-2) then
    begin
      Canvas.Pen.Width := 1;
      Canvas.Pen.Color := clBlack;
      Canvas.Rectangle(Rect);
    end
    else if (ACol = StringGrid1.ColCount-1) AND (ARow >= 3) then
    begin
      Canvas.Pen.Width := 1;
      Canvas.Pen.Color := clBlack;
      Canvas.Rectangle(Rect);
    end;

    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

    if Pos(#13#10, Cells[ACol, ARow]) > 0 then
    begin
      Canvas.FillRect(Rect);
      Inc(Rect.Left, 2);
      Inc(Rect.Top, 2);
      DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), -1, Rect, DT_NOPREFIX or DT_WORDBREAK);
    end;
  end;
end;

procedure TF_ScheduleGantt.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  Col, Row: integer;
  Formula1, Formula2, Formula3, SCol: string;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    eclapp.workbooks[1].sheets[1].name := 'Gannt'; //Sheet 名稱

    //匯入Row Title
    eclApp.workbooks[1].sheets[1].Cells[1, 1] := StringGrid1.Cells[0, (StringGrid1.RowCount-3) DIV 2] + '生產訂單進度甘特圖';
    eclApp.workbooks[1].sheets[1].Cells[1, 1].Font.Size := 18;

    if (StringGrid1.ColCount > 26) then
      eclApp.workbooks[1].sheets[1].Range['A1:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '1'].Mergecells := True //合併欄位
    else
      eclApp.workbooks[1].sheets[1].Range['A1:' + Alphabet[StringGrid1.ColCount] + '1'].Mergecells := True; //合併欄位
    eclApp.workbooks[1].sheets[1].Cells[2, 1] := '廠別';
    eclApp.workbooks[1].sheets[1].Range['A2:A4'].Mergecells := True; //合併欄位
    eclApp.workbooks[1].sheets[1].Cells[5, 1] := StringGrid1.Cells[0, (StringGrid1.RowCount-3) DIV 2];
    eclApp.workbooks[1].sheets[1].Range['A5:A' + IntToStr(StringGrid1.RowCount-1)].Mergecells := True; //合併欄位
    eclApp.workbooks[1].sheets[1].Cells[IntToStr(StringGrid1.RowCount), 1] := '總計';
    eclApp.workbooks[1].sheets[1].Range['A' + IntToStr(StringGrid1.RowCount) + ':B' + IntToStr(StringGrid1.RowCount)].Mergecells := True; //合併欄位
    eclApp.workbooks[1].sheets[1].Cells[IntToStr(StringGrid1.RowCount+1), 1] := '平均每小時' + #10 + '雙　　　數';
    eclApp.workbooks[1].sheets[1].Range['A' + IntToStr(StringGrid1.RowCount+1) + ':B' + IntToStr(StringGrid1.RowCount+1)].Mergecells := True; //合併欄位
    eclApp.workbooks[1].sheets[1].Columns['A'].ColumnWidth := 5;
    eclApp.workbooks[1].sheets[1].Rows[IntToStr(StringGrid1.RowCount)].RowHeight  := 35;
    eclApp.workbooks[1].sheets[1].Rows[IntToStr(StringGrid1.RowCount+1)].RowHeight  := 35;

    eclApp.workbooks[1].sheets[1].Cells[2, 2] := '月　　份';
    eclApp.workbooks[1].sheets[1].Cells[3, 2] := '上班工時';
    eclApp.workbooks[1].sheets[1].Cells[4, 2] := '加班工時';
    eclApp.workbooks[1].sheets[1].Cells[2, StringGrid1.ColCount] := '總計';

    //匯入Lean線
    Row := 4;
    while Row <= StringGrid1.RowCount-3 do
    begin
      eclApp.workbooks[1].sheets[1].Cells[Row+1, 2] := StringGrid1.Cells[1, Row-1];
      eclApp.workbooks[1].sheets[1].Range['B'+ IntToStr(Row+1) +':B' + IntToStr(Row+2)].Mergecells := True; //合併欄位
      Inc(Row, 2);
    end;

    //匯入資料
    for Row := 0 to StringGrid1.RowCount-3 do
    begin
      for Col := 2 to StringGrid1.ColCount-2 do
      begin
        if (Row >= 3) AND (ROW MOD 2 = 1) then
          eclApp.workbooks[1].sheets[1].Cells[Row+2, Col+1].Font.Size := 8;
        eclApp.workbooks[1].sheets[1].Cells[Row+2, Col+1] := StringGrid1.Cells[Col, Row];
      end;
    end;

    //匯入右側公式
    eclApp.workbooks[1].sheets[1].Cells.Item[3, StringGrid1.ColCount] := '=SUM(C3:' + Alphabet[(StringGrid1.ColCount-1) DIV 27] + Alphabet[(StringGrid1.ColCount-1) MOD 27 + (StringGrid1.ColCount-1) DIV 27] + '3)';
    Row := 4;
    while Row <= StringGrid1.RowCount-1 do
    begin
      Formula1 := '=SUM(C'+ IntToStr(Row) +':' + Alphabet[(StringGrid1.ColCount-1) DIV 27] + Alphabet[(StringGrid1.ColCount-1) MOD 27 + (StringGrid1.ColCount-1) DIV 27] + IntToStr(Row) + ')';
      eclApp.workbooks[1].sheets[1].Cells.Item[Row, StringGrid1.ColCount] := Formula1;
      Inc(Row, 2);
    end;

    //匯入底部公式
    for Col := 3 to StringGrid1.ColCount do
    begin
      SCol := Alphabet[Col DIV 27] + Alphabet[Col MOD 27 + Col DIV 27];
      Row := 6;
      Formula2 := '=';
      while Row <= StringGrid1.RowCount-1 do
      begin
        Formula2 := Formula2 + '+' + SCol + IntToStr(Row);
        Inc(Row, 2);
      end;
      
      Formula3 := '=INT(' + SCol + IntToStr(StringGrid1.RowCount) + '/SUMPRODUCT((' + SCol + '6:' + SCol + IntToStr(StringGrid1.RowCount-1) + '>0)*(MOD(ROW(' + SCol + '6:' + SCol + IntToStr(StringGrid1.RowCount-1) + '),2)=0))/' + SCol + '3+' + SCol + '4)';
      eclApp.workbooks[1].sheets[1].Cells.Item[StringGrid1.RowCount, Col] := Formula2;
      eclApp.workbooks[1].sheets[1].Cells.Item[StringGrid1.RowCount+1, Col] := Formula3;
    end;

    //全部置中
    eclApp.workbooks[1].sheets[1].Range['A2:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount+1)].HorizontalAlignment := xlCenter;

    for Col := 3 to StringGrid1.ColCount-1 do
    begin
      eclApp.workbooks[1].sheets[1].Columns[Alphabet[Col DIV 27] + Alphabet[Col MOD 27 + Col DIV 27]].ColumnWidth := 12; //設定寬度

      //設定工時為0的日期背景色為黃色
      if (StringGrid1.Cells[Col-1, 1] = '0') AND (StringGrid1.Cells[Col-1, 2] = '0') then
        eclApp.workbooks[1].sheets[1].Range[Alphabet[Col DIV 27] + Alphabet[Col MOD 27 + Col DIV 27] + '2:' + Alphabet[Col DIV 27] + Alphabet[Col MOD 27 + Col DIV 27] + IntToStr(StringGrid1.RowCount+1)].Interior.Color := clYellow;
    end;

    //頂部邊框
    eclApp.workbooks[1].sheets[1].Range['A1:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '4'].Borders[1].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A1:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '4'].Borders[2].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A1:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '4'].Borders[3].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A1:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '4'].Borders[4].Weight := 3;

    //左側邊框
    eclApp.workbooks[1].sheets[1].Range['A5:B' + IntToStr(StringGrid1.RowCount+1)].Borders[1].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A5:B' + IntToStr(StringGrid1.RowCount+1)].Borders[2].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A5:B' + IntToStr(StringGrid1.RowCount+1)].Borders[3].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A5:B' + IntToStr(StringGrid1.RowCount+1)].Borders[4].Weight := 3;

    //底部邊框
    eclApp.workbooks[1].sheets[1].Range['A' + IntToStr(StringGrid1.RowCount) +':' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount+1)].Borders[1].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A' + IntToStr(StringGrid1.RowCount) +':' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount+1)].Borders[2].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A' + IntToStr(StringGrid1.RowCount) +':' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount+1)].Borders[3].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range['A' + IntToStr(StringGrid1.RowCount) +':' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount+1)].Borders[4].Weight := 3;

    //右側邊框
    eclApp.workbooks[1].sheets[1].Range[Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '5:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount-1)].Borders[1].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range[Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '5:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount-1)].Borders[2].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range[Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '5:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount-1)].Borders[3].Weight := 3;
    eclApp.workbooks[1].sheets[1].Range[Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + '5:' + Alphabet[StringGrid1.ColCount DIV 27] + Alphabet[StringGrid1.ColCount MOD 27 + StringGrid1.ColCount DIV 27] + IntToStr(StringGrid1.RowCount-1)].Borders[4].Weight := 3;

    ShowMessage('Succeed');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

end.
