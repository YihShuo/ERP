unit DailyMenu1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Dateutils,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.ComCtrls, MyADOQuery, MyADOUpdateSQL, ComObj;

type
  TDailyMenu = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel2: TPanel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    UpdateSQL1: TMyADOUpdateSQL;
    Query1: TMyADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Query1Date: TDateTimeField;
    Query1Category: TStringField;
    Query1DishCN: TWideStringField;
    Query1DishVN: TWideStringField;
    Query1YN: TStringField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DS2: TDataSource;
    Query2: TMyADOQuery;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    StringField2: TStringField;
    UpdateSQL2: TMyADOUpdateSQL;
    DS3: TDataSource;
    Query3: TMyADOQuery;
    DateTimeField2: TDateTimeField;
    StringField3: TStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    StringField4: TStringField;
    UpdateSQL3: TMyADOUpdateSQL;
    Query1Seq: TIntegerField;
    Query2Seq: TIntegerField;
    Query3Seq: TIntegerField;
    QExport: TMyADOQuery;
    QUpdate: TMyADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1Columns2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure DTP1Change(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Query2NewRecord(DataSet: TDataSet);
    procedure Query3NewRecord(DataSet: TDataSet);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExportData(SDate, EDate: TDate);
  end;

var
  DailyMenu: TDailyMenu;

implementation

uses
  DM1, main1, ExportDlg1;

{$R *.dfm}

procedure TDailyMenu.BB2Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      if (LockType <> ltBatchOptimistic) then
      begin
        Active := false;
        LockType := ltBatchOptimistic;
        Active := true;
      end;
      Append;
    end;
    DBGridEh1.ReadOnly := false;
    DBGridEh1.Columns[0].ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      if (LockType <> ltBatchOptimistic) then
      begin
        Active := false;
        LockType := ltBatchOptimistic;
        Active := true;
      end;
      Append;
    end;
    DBGridEh2.ReadOnly := false;
    DBGridEh2.Columns[0].ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      if (LockType <> ltBatchOptimistic) then
      begin
        Active := false;
        LockType := ltBatchOptimistic;
        Active := true;
      end;
      Append;
    end;
    DBGridEh3.ReadOnly := false;
    DBGridEh3.Columns[0].ReadOnly := true;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDailyMenu.BB3Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      if (LockType <> ltBatchOptimistic) then
      begin
        Active := false;
        LockType := ltBatchOptimistic;
        Active := true;
      end;
      Edit;
    end;
    DBGridEh1.ReadOnly := false;
    DBGridEh1.Columns[0].ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      if (LockType <> ltBatchOptimistic) then
      begin
        Active := false;
        LockType := ltBatchOptimistic;
        Active := true;
      end;
      Edit;
    end;
    DBGridEh2.ReadOnly := false;
    DBGridEh2.Columns[0].ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      if (LockType <> ltBatchOptimistic) then
      begin
        Active := false;
        LockType := ltBatchOptimistic;
        Active := true;
      end;
      Edit;
    end;
    DBGridEh3.ReadOnly := false;
    DBGridEh3.Columns[0].ReadOnly := true;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDailyMenu.BB4Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDailyMenu.BB5Click(Sender: TObject);
var
  i: integer;
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    Query1.First;
    for i := 0 to Query1.RecordCount-1 do
    begin
      case Query1.UpdateStatus of
        usInserted:
        begin
          if (Query1.FieldByName('DishCN').AsString = '') AND (Query1.FieldByName('DishVN').AsString = '') then
          begin
            Query1.Delete;
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('Date').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
            UpdateSQL1.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Query1.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL1.Apply(ukDelete);
            with QUpdate do
            begin
              SQL.Clear;
              SQL.Add('UPDATE DailyMenu');
              SQL.Add('SET DailyMenu.Seq = DailyMenu2.NewSeq');
              SQL.Add('FROM DailyMenu');
              SQL.Add('LEFT JOIN (');
              SQL.Add('  SELECT ROW_NUMBER() OVER(ORDER BY Seq) AS NewSeq, * FROM DailyMenu');
              SQL.Add('  WHERE Date = ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' AND Category = ''Breakfast''');
              SQL.Add(') AS DailyMenu2 ON DailyMenu2.Date = DailyMenu.Date AND DailyMenu2.Category = DailyMenu.Category AND DailyMenu2.Seq = DailyMenu.Seq');
              SQL.Add('WHERE DailyMenu.Date = ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' AND DailyMenu.Category = ''Breakfast''');
              ExecSQL;
            end;
          end
          else begin
            if (Query1.FieldByName('DishCN').AsString <> '') OR (Query1.FieldByName('DishVN').AsString <> '') then
            begin
              UpdateSQL1.Apply(ukModify);
            end;
          end;
        end;
      end;
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.LockType := ltReadOnly;
    Query1.Active := true;
    DBGridEh1.ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    Query2.First;
    for i := 0 to Query2.RecordCount-1 do
    begin
      case Query2.UpdateStatus of
        usInserted:
        begin
          if (Query2.FieldByName('DishCN').AsString = '') AND (Query2.FieldByName('DishVN').AsString = '') then
          begin
            Query2.Delete;
          end
          else begin
            Query2.Edit;
            Query2.FieldByName('Date').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
            UpdateSQL2.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Query2.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL2.Apply(ukDelete);
            with QUpdate do
            begin
              SQL.Clear;
              SQL.Add('UPDATE DailyMenu');
              SQL.Add('SET DailyMenu.Seq = DailyMenu2.NewSeq');
              SQL.Add('FROM DailyMenu');
              SQL.Add('LEFT JOIN (');
              SQL.Add('  SELECT ROW_NUMBER() OVER(ORDER BY Seq) AS NewSeq, * FROM DailyMenu');
              SQL.Add('  WHERE Date = ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' AND Category = ''Lunch''');
              SQL.Add(') AS DailyMenu2 ON DailyMenu2.Date = DailyMenu.Date AND DailyMenu2.Category = DailyMenu.Category AND DailyMenu2.Seq = DailyMenu.Seq');
              SQL.Add('WHERE DailyMenu.Date = ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' AND DailyMenu.Category = ''Lunch''');
              ExecSQL;
            end;
          end
          else begin
            if (Query2.FieldByName('DishCN').AsString <> '') OR (Query2.FieldByName('DishVN').AsString <> '') then
            begin
              UpdateSQL2.Apply(ukModify);
            end;
          end;
        end;
      end;
      Query2.Next;
    end;

    Query2.Active := false;
    Query2.LockType := ltReadOnly;
    Query2.Active := true;
    DBGridEh2.ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    Query3.First;
    for i := 0 to Query3.RecordCount-1 do
    begin
      case Query3.UpdateStatus of
        usInserted:
        begin
          if (Query3.FieldByName('DishCN').AsString = '') AND (Query3.FieldByName('DishVN').AsString = '') then
          begin
            Query3.Delete;
          end
          else begin
            Query3.Edit;
            Query3.FieldByName('Date').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
            UpdateSQL3.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Query3.FieldByName('YN').AsString = '0') then
          begin
            UpdateSQL3.Apply(ukDelete);
            with QUpdate do
            begin
              SQL.Clear;
              SQL.Add('UPDATE DailyMenu');
              SQL.Add('SET DailyMenu.Seq = DailyMenu2.NewSeq');
              SQL.Add('FROM DailyMenu');
              SQL.Add('LEFT JOIN (');
              SQL.Add('  SELECT ROW_NUMBER() OVER(ORDER BY Seq) AS NewSeq, * FROM DailyMenu');
              SQL.Add('  WHERE Date = ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' AND Category = ''Dinner''');
              SQL.Add(') AS DailyMenu2 ON DailyMenu2.Date = DailyMenu.Date AND DailyMenu2.Category = DailyMenu.Category AND DailyMenu2.Seq = DailyMenu.Seq');
              SQL.Add('WHERE DailyMenu.Date = ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' AND DailyMenu.Category = ''Dinner''');
              ExecSQL;
            end;
          end
          else begin
            if (Query3.FieldByName('DishCN').AsString <> '') OR (Query3.FieldByName('DishVN').AsString <> '') then
            begin
              UpdateSQL3.Apply(ukModify);
            end;
          end;
        end;
      end;
      Query3.Next;
    end;

    Query3.Active := false;
    Query3.LockType := ltReadOnly;
    Query3.Active := true;
    DBGridEh3.ReadOnly := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TDailyMenu.BB6Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      Active := false;
      LockType := ltReadOnly;
      Active := true;
    end;
    DBGridEh1.ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      Active := false;
      LockType := ltReadOnly;
      Active := true;
    end;
    DBGridEh2.ReadOnly := true;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      Active := false;
      LockType := ltReadOnly;
      Active := true;
    end;
    DBGridEh3.ReadOnly := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TDailyMenu.BB7Click(Sender: TObject);
begin
  if (ExportDlg <> Nil) then
    ExportDlg.Close;
  ExportDlg := TExportDlg.Create(Self);
  ExportDlg.Show;
end;

procedure TDailyMenu.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM DailyMenu');
    SQL.Add('WHERE Date = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND Category = ''Breakfast''');
    SQL.Add('ORDER BY Seq');
    Active := true;
  end;

  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM DailyMenu');
    SQL.Add('WHERE Date = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND Category = ''Lunch''');
    SQL.Add('ORDER BY Seq');
    Active := true;
  end;

  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM DailyMenu');
    SQL.Add('WHERE Date = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND Category = ''Dinner''');
    SQL.Add('ORDER BY Seq');
    Active := true;
  end;

  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TDailyMenu.DBGridEh1Columns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  Qty: double;
begin
  if (TryStrToFloat(Text, Qty)) then
  begin
    if (Query1.FieldByName('UnitPrice').AsString <> '') then
      Query1.FieldByName('TotalPrice').Value := Qty * Query1.FieldByName('UnitPrice').AsInteger;
  end
  else begin
    Text := '';
  end;
end;

procedure TDailyMenu.DBGridEh1Columns4UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  UnitPrice: integer;
begin
  if (TryStrToInt(Text, UnitPrice)) then
  begin
    if (Query1.FieldByName('Qty').AsString <> '') then
      Query1.FieldByName('TotalPrice').Value := Query1.FieldByName('Qty').AsInteger * UnitPrice;
  end
  else begin
    Text := '';
  end;
end;

procedure TDailyMenu.DTP1Change(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TDailyMenu.ExportData(SDate, EDate: TDate);
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  i: integer;
  TempDate, DishStr: string;
const
  weekdayCN: array[0..6] of string = ('週一', '週二', '週三', '週四', '週五', '週六', '週日');
  weekdayVN: array[0..6] of string = ('THỨ HAI', 'THỨ BA', 'THỨ TƯ', 'THỨ NĂM', 'THỨ SÁU', 'THỨ BẢY', 'CHỦ NHẬT');
begin
  try
    ExcelApp := CreateOleObject('Excel.Application');
    WorkBook := ExcelApp.Workbooks.Add;
  except
    Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  try
    WorkSheet := ExcelApp.WorkSheets.Add;
    WorkSheet.Name := FormatDateTime('yyyy.MM.dd', SDate) + '-' + FormatDateTime('dd', EDate);
    ExcelApp.WorkSheets[FormatDateTime('yyyy.MM.dd', SDate) + '-' + FormatDateTime('dd', EDate)].Activate;
    ExcelApp.Columns.Font.Name := 'Arial';
    ExcelApp.Cells[1, 1] := '菜單';
    ExcelApp.Cells[1, 1].Font.Size := 72;
    ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[1, 4]].MergeCells := true;
    ExcelApp.Cells[2, 1] := FormatDateTime('yyyy/MM/dd', SDate) + ' - ' + FormatDateTime('yyyy/MM/dd', EDate);
    ExcelApp.Cells[2, 1].Font.Size := 24;
    ExcelApp.Range[ExcelApp.Cells[2, 1], ExcelApp.Cells[2, 4]].MergeCells := true;
    ExcelApp.Cells[3, 1] := '日期';
    ExcelApp.Cells[3, 2] := '早餐 CƠM SÁNG';
    ExcelApp.Cells[3, 3] := '午餐 CƠM TRƯA';
    ExcelApp.Cells[3, 4] := '晚餐 CƠM CHIỀU';
    ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[3, 4]].Font.Size := 22;
    ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[3, 4]].HorizontalAlignment := -4108;

    for i := 4 to DaysBetween(SDate, EDate) + 4 do
    begin
      ExcelApp.Cells[i, 1] := weekdayCN[DayOfTheWeek(SDate + i - 4) - 1] + Chr(10) + weekdayVN[DayOfTheWeek(SDate + i - 4) - 1] + Chr(10) + FormatDateTime('yyyy/MM/dd', SDate + i - 4);
      ExcelApp.Cells[i, 1].HorizontalAlignment := -4108;
      ExcelApp.Rows[i].Font.Size := 22;
    end;
    ExcelApp.Columns[1].ColumnWidth := 155;

    //早餐
    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DECLARE @StartDate DATETIME;');
      SQL.Add('DECLARE @EndDate DATETIME;');
      SQL.Add('SET @StartDate = ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''';');
      SQL.Add('SET @EndDate = ''' + FormatDateTime('yyyy/MM/dd', EDate) + ''';');

      SQL.Add('WITH DateRange(Date) AS');
      SQL.Add('(');
      SQL.Add('  SELECT @StartDate AS Date');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT DATEADD(d, 1, Date) FROM DateRange');
      SQL.Add('  WHERE Date < @EndDate');
      SQL.Add(')');

      SQL.Add('SELECT CONVERT(VARCHAR, DateRange.Date, 111) AS Date, DailyMenu.Category, DailyMenu.Seq, DailyMenu.DishCN, DailyMenu.DishVN FROM DateRange');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT CONVERT(VARCHAR, Date, 111) AS Date, Category, Seq, DishCN, DishVN FROM DailyMenu');
      SQL.Add('  WHERE Category = ''Breakfast'' AND Date BETWEEN @StartDate AND @EndDate');
      SQL.Add(') AS DailyMenu ON DailyMenu.Date = DateRange.Date');
      SQL.Add('ORDER BY DateRange.Date, DailyMenu.Seq');
      SQL.Add('OPTION (MAXRECURSION 0)');
      Active := true;

      i := 3;
      TempDate := '';
      while not Eof do
      begin
        if (FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime) <> TempDate) then
        begin
          if (i <> 3) then
            ExcelApp.Cells[i, 2] := DishStr;
          if (QExport.FieldByName('Category').AsString <> '') then
            DishStr := QExport.FieldByName('Seq').AsString + '. ' + QExport.FieldByName('DishCN').AsString + ' ' + QExport.FieldByName('DishVN').AsString
          else 
            DishStr := '';
          TempDate := FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime);
          Inc(i);
        end
        else begin
          if (QExport.FieldByName('Category').AsString <> '') then
            DishStr := DishStr + Chr(10) + QExport.FieldByName('Seq').AsString + '. ' + QExport.FieldByName('DishCN').AsString + ' ' + QExport.FieldByName('DishVN').AsString;
        end;

        Next;
      end;
      ExcelApp.Cells[i, 2] := DishStr;
    end;

    //午餐
    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DECLARE @StartDate DATETIME;');
      SQL.Add('DECLARE @EndDate DATETIME;');
      SQL.Add('SET @StartDate = ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''';');
      SQL.Add('SET @EndDate = ''' + FormatDateTime('yyyy/MM/dd', EDate) + ''';');

      SQL.Add('WITH DateRange(Date) AS');
      SQL.Add('(');
      SQL.Add('  SELECT @StartDate AS Date');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT DATEADD(d, 1, Date) FROM DateRange');
      SQL.Add('  WHERE Date < @EndDate');
      SQL.Add(')');

      SQL.Add('SELECT CONVERT(VARCHAR, DateRange.Date, 111) AS Date, DailyMenu.Category, DailyMenu.Seq, DailyMenu.DishCN, DailyMenu.DishVN FROM DateRange');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT CONVERT(VARCHAR, Date, 111) AS Date, Category, Seq, DishCN, DishVN FROM DailyMenu');
      SQL.Add('  WHERE Category = ''Lunch'' AND Date BETWEEN @StartDate AND @EndDate');
      SQL.Add(') AS DailyMenu ON DailyMenu.Date = DateRange.Date');
      SQL.Add('ORDER BY DateRange.Date, DailyMenu.Seq');
      SQL.Add('OPTION (MAXRECURSION 0)');
      Active := true;

      i := 3;
      TempDate := '';
      while not Eof do
      begin
        if (FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime) <> TempDate) then
        begin
          if (i <> 3) then
            ExcelApp.Cells[i, 3] := DishStr;
          if (QExport.FieldByName('Category').AsString <> '') then
            DishStr := QExport.FieldByName('Seq').AsString + '. ' + QExport.FieldByName('DishCN').AsString + ' ' + QExport.FieldByName('DishVN').AsString
          else 
            DishStr := '';

          TempDate := FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime);
          Inc(i);
        end
        else begin
          if (QExport.FieldByName('Category').AsString <> '') then
            DishStr := DishStr + Chr(10) + QExport.FieldByName('Seq').AsString + '. ' + QExport.FieldByName('DishCN').AsString + ' ' + QExport.FieldByName('DishVN').AsString;
        end;

        Next;
      end;
      ExcelApp.Cells[i, 3] := DishStr;
    end;

    //晚餐
    with QExport do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DECLARE @StartDate DATETIME;');
      SQL.Add('DECLARE @EndDate DATETIME;');
      SQL.Add('SET @StartDate = ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''';');
      SQL.Add('SET @EndDate = ''' + FormatDateTime('yyyy/MM/dd', EDate) + ''';');

      SQL.Add('WITH DateRange(Date) AS');
      SQL.Add('(');
      SQL.Add('  SELECT @StartDate AS Date');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT DATEADD(d, 1, Date) FROM DateRange');
      SQL.Add('  WHERE Date < @EndDate');
      SQL.Add(')');

      SQL.Add('SELECT CONVERT(VARCHAR, DateRange.Date, 111) AS Date, DailyMenu.Category, DailyMenu.Seq, DailyMenu.DishCN, DailyMenu.DishVN FROM DateRange');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT CONVERT(VARCHAR, Date, 111) AS Date, Category, Seq, DishCN, DishVN FROM DailyMenu');
      SQL.Add('  WHERE Category = ''Dinner'' AND Date BETWEEN @StartDate AND @EndDate');
      SQL.Add(') AS DailyMenu ON DailyMenu.Date = DateRange.Date');
      SQL.Add('ORDER BY DateRange.Date, DailyMenu.Seq');
      SQL.Add('OPTION (MAXRECURSION 0)');
      Active := true;

      i := 3;
      TempDate := '';
      while not Eof do
      begin
        if (FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime) <> TempDate) then
        begin
          if (i <> 3) then
            ExcelApp.Cells[i, 4] := DishStr;
          if (QExport.FieldByName('Category').AsString <> '') then
            DishStr := QExport.FieldByName('Seq').AsString + '. ' + QExport.FieldByName('DishCN').AsString + ' ' + QExport.FieldByName('DishVN').AsString
          else 
            DishStr := '';

          TempDate := FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime);
          Inc(i);
        end
        else begin
          if (QExport.FieldByName('Category').AsString <> '') then
            DishStr := DishStr + Chr(10) + QExport.FieldByName('Seq').AsString + '. ' + QExport.FieldByName('DishCN').AsString + ' ' + QExport.FieldByName('DishVN').AsString;
        end;

        Next;
      end;
      ExcelApp.Cells[i, 4] := DishStr;
    end;
    ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[i, 4]].Borders.Linestyle := 1;

    ExcelApp.Range[ExcelApp.Cells[i+2, 2], ExcelApp.Cells[i+2, 4]].MergeCells := true;
    ExcelApp.Cells[i+2, 2] := '備註：買不到菜或品質不好時，餐廳會視情況調整菜單' + Chr(10) + 'Những lúc không có hàng nhà ăn có thể thay đổi thực đơn';
    ExcelApp.Cells[i+2, 2].Font.Size := 20;
    ExcelApp.Rows[i+2].RowHeight := 75;
                                                                                        
    ExcelApp.Columns.Autofit;
    ShowMessage('Succeed');
    ExcelApp.Visible := True;
  except on ex: Exception do
    ShowMessage(ex.Message);
  end;
end;

procedure TDailyMenu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDailyMenu.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date;
  PageControl1.ActivePageIndex := 0;
  Button1Click(Nil);
end;

procedure TDailyMenu.FormDestroy(Sender: TObject);
begin
  DailyMenu := Nil;
end;

procedure TDailyMenu.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if BB5.Enabled then
  begin
    ShowMessage('請存檔後再切換分頁!');
    AllowChange := false;
  end;
end;

procedure TDailyMenu.Query1AfterOpen(DataSet: TDataSet);
begin
  Query1.AfterOpenRecNo(DataSet);

end;

procedure TDailyMenu.Query1NewRecord(DataSet: TDataSet);
begin
  Query1.FieldByName('Date').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  Query1.FieldByName('Category').Value := 'Breakfast';
  Query1.FieldByName('Seq').Value := Query1.RecordCount + 1;
  Query1.FieldByName('DishCN').Value := '';
  Query1.FieldByName('DishVN').Value := '';
end;

procedure TDailyMenu.Query2NewRecord(DataSet: TDataSet);
begin
  Query2.FieldByName('Date').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  Query2.FieldByName('Category').Value := 'Lunch';
  Query2.FieldByName('Seq').Value := Query2.RecordCount + 1;
  Query2.FieldByName('DishCN').Value := '';
  Query2.FieldByName('DishVN').Value := '';
end;

procedure TDailyMenu.Query3NewRecord(DataSet: TDataSet);
begin
  Query3.FieldByName('Date').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  Query3.FieldByName('Category').Value := 'Dinner';
  Query3.FieldByName('Seq').Value := Query3.RecordCount + 1;
  Query3.FieldByName('DishCN').Value := '';
  Query3.FieldByName('DishVN').Value := '';
end;

end.
