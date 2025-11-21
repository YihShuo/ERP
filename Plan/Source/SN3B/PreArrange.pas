unit PreArrange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, DB, DBTables, DateUtils,
  ComCtrls, Grids, OleServer, ExcelXP, Menus, ComObj, Math, Buttons, jpeg;

type
  TF_PreArrange = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Panel4: TPanel;
    ComboBox3: TComboBox;
    Panel5: TPanel;
    Splitter2: TSplitter;
    DBGridEh3: TDBGridEh;
    Query2: TQuery;
    DataSource3: TDataSource;
    Query3: TQuery;
    Query4: TQuery;
    StringGrid2: TStringGrid;
    StringGrid1: TStringGrid;
    Query5: TQuery;
    Splitter3: TSplitter;
    Query1DDBH: TStringField;
    Query1GXLB: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Qty: TIntegerField;
    Query1DAOMH: TStringField;
    Query1XTMH: TStringField;
    Query1DepName: TStringField;
    Query1RPlanDate: TDateTimeField;
    QUpdate: TQuery;
    PopupMenu1: TPopupMenu;
    AssignTo: TMenuItem;
    Return: TMenuItem;
    PopupMenu2: TPopupMenu;
    ReturnToLean: TMenuItem;
    QLean: TQuery;
    QLeanLEANNO: TStringField;
    PopupMenu3: TPopupMenu;
    ENABLE: TMenuItem;
    PopupMenu4: TPopupMenu;
    Query2YSBH: TStringField;
    Query2GXLB: TStringField;
    Query2XieXing: TStringField;
    Query2XieMing: TStringField;
    Query2SheHao: TStringField;
    Query2Article: TStringField;
    Query2Pairs: TIntegerField;
    Query2ShipDate: TDateTimeField;
    Query2DAOMH: TStringField;
    Query2XTMH: TStringField;
    Button2: TButton;
    PopupMenu5: TPopupMenu;
    DISABLE: TMenuItem;
    Edit1: TEdit;
    QSearch: TQuery;
    Edit2: TEdit;
    DSTemp: TDataSource;
    A1LEAN1: TMenuItem;
    A1LEAN2: TMenuItem;
    A1LEAN3: TMenuItem;
    A1LEAN4: TMenuItem;
    A1LEAN5: TMenuItem;
    A2LEAN1: TMenuItem;
    A2LEAN2: TMenuItem;
    A2LEAN3: TMenuItem;
    QLeanOrders: TIntegerField;
    QLeanPairs: TIntegerField;
    Button3: TButton;
    Splitter1: TSplitter;
    Button4: TButton;
    SPLITTHEORDER: TMenuItem;
    Query5LY: TStringField;
    Query5RY: TStringField;
    Query5MaterialVT: TStringField;
    Query5CHATLIEU: TStringField;
    Query5Last: TStringField;
    Query5BUY: TStringField;
    Query5SKU: TStringField;
    Query5QuantitySL: TIntegerField;
    Query5FormingG: TStringField;
    Query5CountryN: TStringField;
    Query5CSD: TStringField;
    Label3: TLabel;
    DBGridEh4: TDBGridEh;
    QBuyNo: TQuery;
    DataSource4: TDataSource;
    QBuyNoBUYNO: TStringField;
    QLeanBUYNO: TStringField;
    QBuyNoOrders: TIntegerField;
    QBuyNoPairs: TIntegerField;
    QBuyNoBUY: TStringField;
    Query1ROrder: TIntegerField;
    Query2ShipDate1: TStringField;
    Query2DAOMH1: TStringField;
    Edit3: TEdit;
    Panel6: TPanel;
    Splitter5: TSplitter;
    ListBox1: TListBox;
    ScrollBox1: TScrollBox;
    TabSheet3: TTabSheet;
    Query6: TQuery;
    Query6YSBH: TStringField;
    Query6GXLB: TStringField;
    Query6XieXing: TStringField;
    Query6XieMing: TStringField;
    Query6SheHao: TStringField;
    Query6Article: TStringField;
    Query6Pairs: TIntegerField;
    Query6ShipDate: TDateTimeField;
    Query6DAOMH: TStringField;
    Query6XTMH: TStringField;
    Query6RDepNO: TStringField;
    Query6DepName: TStringField;
    Query6RPlanDate: TDateTimeField;
    Query6RPlanEdate: TDateTimeField;
    Query6ROrder: TIntegerField;
    Label4: TLabel;
    Edit4: TEdit;
    Button12: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    StringGrid3: TStringGrid;
    Button11: TButton;
    MonthCalendar1: TMonthCalendar;
    StringGrid4: TStringGrid;
    Button6: TButton;
    Panel7: TPanel;
    Query6PRdate: TDateTimeField;
    Query6OKdate: TDateTimeField;
    Button13: TButton;
    EditC: TEdit;
    EditS: TEdit;
    EditA: TEdit;
    ScrollBox2: TScrollBox;
    ImageLoad: TImage;
    A12PM1: TMenuItem;
    Query5Process: TStringField;
    ScrollBox3: TScrollBox;
    ImageExport: TImage;
    ScrollBox4: TScrollBox;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image2: TImage;
    PopupMenu6: TPopupMenu;
    DELETE: TMenuItem;
    PopupMenu7: TPopupMenu;
    Query5StitchingM: TIntegerField;
    Query2RecNo: TFloatField;
    Query5CutC: TIntegerField;
    Edit5: TEdit;
    Label5: TLabel;
    Image5: TImage;
    Query7: TQuery;
    TrackBar1: TTrackBar;
    Button15: TButton;
    Button14: TButton;
    Label6: TLabel;
    QLeanIsSLT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ReturnClick(Sender: TObject);
    procedure ReturnToLeanClick(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EnbleClick(Sender: TObject);
    procedure DISABLEClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure StringGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure A1LEAN1Click(Sender: TObject);
    procedure A1LEAN2Click(Sender: TObject);
    procedure A1LEAN3Click(Sender: TObject);
    procedure A1LEAN4Click(Sender: TObject);
    procedure A1LEAN5Click(Sender: TObject);
    procedure A2LEAN1Click(Sender: TObject);
    procedure A2LEAN2Click(Sender: TObject);
    procedure A2LEAN3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SPLITTHEORDERClick(Sender: TObject);
    procedure DBGridEh3KeyPress(Sender: TObject; var Key: Char);
    procedure QBuyNoAfterScroll(DataSet: TDataSet);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid3SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScrollBox1Click(Sender: TObject);
    procedure DBGridEh3ColWidthsChanged(Sender: TObject);
    procedure StringGrid3TopLeftChanged(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure StringGrid3SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure QBuyNoBeforeScroll(DataSet: TDataSet);
    procedure QLeanBeforeScroll(DataSet: TDataSet);
    procedure A12PM1Click(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure StringGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DELETEClick(Sender: TObject);
    procedure StringGrid1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    { Private declarations }
    procedure Combobox3SetLean;
    procedure GenerateStringGrid;
    procedure CheckFinalPairs;
    procedure GetServerDate;
    procedure SumData;
    procedure ShowLoading;
    procedure HideLoading;
    procedure ShowExport;
    procedure HideExport;
  public
    { Public declarations }
    procedure CalculateLeanAmount;
    procedure SetDataRow;
    procedure RefreshOrder;
    procedure SetEditGrid;
    procedure HideAllButton;
  end;

var
  F_PreArrange: TF_PreArrange;
  Col, Sum, Cap: array[1..31] of integer;
  HR: array[1..31] of double;
  Total: array[1..10] of integer;
  AColWidth: array[0..17] of integer = (11, 70, 35, 80, 80, 50, 60, 45, 70, 80, 80, 70, 90, 70, 70, 50, 64, 64);
  DataRow: integer = 10;
  TCol, TRow, InitialPairs, ATop, RLeft, RRight, RTop, RBottom, SG2Row: integer;
  Flag, LoadSuccess, SG2Query, SLT: Boolean;
  BookMarkQLean: TBookmark;
  YSBHSplit, RangeSelection, ShowData, YSBHSG2, Input: string;
  RSOrder, RSCol, RSRow, RSCellData: TStringList;
  Mode: Char;
  SDate: TDateTime;
  LoadingDialog : TForm;
const
  Alphabet: array[0..26] of string = ('0','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
  EditGridTitle: array[0..17] of string = ('','YSBH','GXLB','XieXing','XieMing','SheHao','Article','Pairs','ShipDate','DAOMH','XTMH','RDepNO','DepName','RPlanDate','RPlanEdate','ROrder','PRdate','OKdate');

implementation

{$R *.dfm}
uses
  main1, NotYetRelease, SplitTheOrder, Department1, Shape1, Process1;


procedure TF_PreArrange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LoadSuccess := false;
  Action := caFree;
end;

procedure TF_PreArrange.FormCreate(Sender: TObject);
var
  i, Year: integer;
begin
  LoadSuccess := false;
  SG2Query := false;
  SLT := false;
  Input := 'Mouse';
  
  //自動產生Combobox1可選擇年份為2017年到今年
  Year := YearOf(Date);
  for i := 2017 to Year+9 do
  begin
    Combobox1.Items.Add(IntToStr(i));
  end;

  //設定Combobox預設值
  Combobox1.ItemIndex := Year - 2017;
  Combobox2.ItemIndex := Monthof(Date) - 1;

  for i := 0 to StringGrid3.ColCount-1 do
  begin
    StringGrid3.ColWidths[i] := AColWidth[i];
    StringGrid4.ColWidths[i] := AColWidth[i];
  end;

  //初始化範圍移動功能
  RSOrder := TStringList.Create;
  RSCol := TStringList.Create;
  RSRow := TStringList.Create;
  RSCellData := TStringList.Create;

  StringGrid1.DoubleBuffered := true;
  StringGrid2.Selection := TGridRect(Rect(-1, -1, -1, -1));
  StringGrid4.Selection := TGridRect(Rect(-1, -1, -1, -1));

  MonthCalendar1.Date := Date;

  CalculateLeanAmount;
  Combobox3SetLean;
  GenerateStringGrid;
  RefreshOrder;
  SetDataRow;
  GetServerDate;

  QBuyNo.First;
  SetEditGrid;
  LoadSuccess := true;
  HideLoading;
  HideExport;
end;

procedure TF_PreArrange.CalculateLeanAmount;
begin
  DBGridEh3.DataSource := DSTemp;
  with QBuyNo do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT S1.BUY, S1.BUYNO, S2.Orders, S2.Pairs FROM (');
    SQL.Add('   SELECT SUBSTRING(DDZL.BUYNO,1,4) + '' '' + CAST(CAST(SUBSTRING(DDZL.BUYNO,5,2) AS INT) AS VARCHAR) + ''BUY'' AS BUY, SUBSTRING(DDZL.BUYNO,1,6) AS BUYNO, SUM(SMDD.Qty) AS Pairs FROM SMDD');
    SQL.Add('   LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
    SQL.Add('   WHERE SMDD.GSBH = ''' + main.Edit2.Text + ''' AND DDZL.DDLB IN (''N'', ''F'') AND DDZL.DDZT IN (''Y'', ''S'') AND SMDD.GXLB = ''A'' AND SMDD.RDepNO IS NOT NULL AND DDZL.BUYNO IS NOT NULL');
    SQL.Add('   GROUP BY SUBSTRING(DDZL.BUYNO,1,4), SUBSTRING(DDZL.BUYNO,5,2), SUBSTRING(DDZL.BUYNO,1,6)');
    SQL.Add(' ) AS S1 LEFT JOIN (');
    SQL.Add('   SELECT T.BUYNO, COUNT(T.YSBH) AS Orders, SUM(T.Qty) AS Pairs FROM (');
    SQL.Add('     SELECT SUBSTRING(DDZL.BUYNO,1,6) AS BUYNO, SMDD.YSBH, SUM(SMDD.Qty) AS Qty FROM SMDD');
    SQL.Add('     LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
    SQL.Add('     WHERE SMDD.GSBH = ''' + main.Edit2.Text + ''' AND DDZL.DDLB IN (''N'', ''F'') AND DDZL.DDZT IN (''Y'', ''S'') AND SMDD.GXLB = ''A''');
    SQL.Add('     GROUP BY SMDD.YSBH, SUBSTRING(DDZL.BUYNO,1,6)');
    SQL.Add('   ) AS T');
    SQL.Add('   GROUP BY T.BUYNO');
    SQL.Add(' ) AS S2 ON S2.BUYNO = S1.BUYNO LEFT JOIN (');
    SQL.Add('   SELECT T.BUYNO, COUNT(T.YSBH) AS Orders FROM (');
    SQL.Add('     SELECT SUBSTRING(DDZL.BUYNO,1,6) AS BUYNO, SMDD.YSBH, SUM(SMDD.Qty) AS Pairs FROM SMDD');
    SQL.Add(' 	LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
    SQL.Add('     WHERE SMDD.GSBH = ''' + main.Edit2.Text + ''' AND DDZL.DDLB IN (''N'', ''F'') AND DDZL.DDZT IN (''Y'', ''S'') AND SMDD.GXLB = ''A'' AND SMDD.RPlanDate IS NOT NULL');
    SQL.Add(' 	GROUP BY SMDD.YSBH, SUBSTRING(DDZL.BUYNO,1,6)');
    SQL.Add('   ) AS T');
    SQL.Add('   GROUP BY T.BUYNO');
    SQL.Add(' ) AS S3 ON S3.BUYNO = S1.BUYNO');
    SQL.Add(' UNION ALL SELECT ''快速訂單'', ''SLT'', 12, 0');
    //SQL.Add(' WHERE S2.Orders > ISNULL(S3.Orders,0)');
    SQL.Add(' ORDER BY S1.BUYNO DESC');
    Active := true;
  end;

  with QLean do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT B.LEANNO, ISNULL(S1.NotScheduled,0)+ISNULL(S2.Scheduled,0) AS Orders, ISNULL(S1.Pairs,0)+ISNULL(S2.Pairs,0) AS Pairs,');
    SQL.Add(' ISNULL(CASE WHEN S1.BUYNO IS NOT NULL THEN S1.BUYNO ELSE S2.BUYNO END, ''NO'') AS BUYNO, ');
    SQL.Add(' CASE WHEN :BUYNO = ''SLT'' THEN :BUYNO ELSE ''NO'' END AS IsSLT FROM');
    SQL.Add(' ( SELECT DISTINCT SUBSTRING(DepName, 1, 10) AS LEANNO FROM BDepartment');
    SQL.Add('   WHERE GSBH = ''' + main.Edit2.Text + ''' AND (YN = 1 OR YN = 5) AND sumline IS NOT NULL AND ProYN = 1');
    SQL.Add(' ) AS B');
    SQL.Add(' LEFT JOIN');
    SQL.Add(' ( SELECT T.RDepNO, COUNT(T.YSBH) AS NOTScheduled, SUM(T.Qty) AS Pairs, T.BUYNO FROM');
    SQL.Add('   ( SELECT S.YSBH, S.RDepNO, SUM(S.Qty) AS Qty, SUBSTRING(D.BUYNO,1,6) AS BUYNO FROM SMDD S');
    SQL.Add('     LEFT JOIN DDZL D ON D.DDBH = S.YSBH AND D.GSBH = S.GSBH');
    SQL.Add('     WHERE S.GXLB = ''A'' AND S.GSBH = ''' + main.Edit2.Text + ''' AND D.BUYNO LIKE :BUYNO + ''%'' AND D.DDLB IN (''N'', ''F'') AND D.DDZT IN (''Y'', ''S'') AND (S.RDepNO LIKE ''%LEAN%'' OR S.RDepNO = ''A12_PM'') ');
    SQL.Add('     GROUP BY S.YSBH, S.RDepNO, SUBSTRING(D.BUYNO,1,6)');
    SQL.Add('   ) AS T');
    SQL.Add('   GROUP BY T.RDepNO, T.BUYNO');
    SQL.Add(' ) AS S1 ON S1.RDepNO = B.LEANNO');
    SQL.Add(' LEFT JOIN');
    SQL.Add(' ( SELECT T.LEANNO, COUNT(T.YSBH) AS Scheduled, SUM(T.Qty) AS Pairs, T.BUYNO FROM');
    SQL.Add('   ( SELECT S.YSBH, SUBSTRING(DepName, 1, 10) AS LEANNO, SUM(Qty) AS Qty, SUBSTRING(D.BUYNO,1,6) AS BUYNO FROM SMDD S');
    SQL.Add('     LEFT JOIN DDZL D ON D.DDBH = S.YSBH AND D.GSBH = S.GSBH');
    SQL.Add('     LEFT JOIN BDepartment B ON B.ID = S.RDepNO AND B.GSBH = S.GSBH');
    SQL.Add('     WHERE S.GXLB = ''A'' AND S.GSBH = ''' + main.Edit2.Text + ''' AND D.BUYNO LIKE :BUYNO + ''%'' AND D.DDLB IN (''N'', ''F'') AND D.DDZT IN (''Y'', ''S'') AND B.sumline IS NOT NULL');
    SQL.Add('     GROUP BY S.YSBH, SUBSTRING(DepName, 1, 10), SUBSTRING(D.BUYNO,1,6)');
    SQL.Add('   ) AS T');
    SQL.Add('   GROUP BY T.LEANNO, T.BUYNO');
    SQL.Add(' ) AS S2 ON S2.LEANNO = B.LEANNO');
    SQL.Add(' GROUP BY B.LEANNO, ISNULL(S1.NotScheduled,0)+ISNULL(S2.Scheduled,0), ISNULL(S1.Pairs,0)+ISNULL(S2.Pairs,0), S1.BUYNO, S2.BUYNO');
    SQL.Add(' ORDER BY B.LEANNO');
    Active := true;
  end;

  //顯示Detail
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT S.DDBH, S.GXLB, CASE WHEN CHARINDEX(''/'',S.Article)>0 THEN SUBSTRING(S.Article,1,CHARINDEX(''/'',S.Article)-1) ELSE S.Article END AS Article, S.XieMing, X.DAOMH, X.XTMH, S.Qty, B.DepName, S.RPlanDate, S.ROrder FROM SMDD S');
    SQL.Add(' LEFT JOIN DDZL D ON D.DDBH = S.YSBH');
    SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
    SQL.Add(' LEFT JOIN BDepartment B ON B.ID = S.RDepNO');
    SQL.Add(' WHERE B.DepName LIKE :LEANNO + ''%'' AND S.GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.Add(' AND YEAR(S.RPlanDate) = ''' + Combobox1.Text + ''' AND MONTH(S.RPlanDate) = ''' + Combobox2.Text + ''' '); 
    Active := true;
  end;

  //預設DBGridEh1選擇第一個Row
  DBGridEh1.SelectedRows.CurrentRowSelected := true;
  DBGridEh3.DataSource := DataSource3;
end;

procedure TF_PreArrange.GenerateStringGrid;
var
  i, Day: integer;
  MyDate: TDateTime;
  PYear, PMonth: string;
const
  Title1: array[0..15] of string = ('D/T', 'DAY', 'HR', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '訂單數量', '保證產量', '小時目標');
  Title2: array[0..13] of string = ('LY', 'RY', '材料/VT', 'CHAT LIEU', 'Last#', 'BUY', '特殊/DD', '裁斷/C', 'SKU', ' 針車/M', '數量/SL', '成型/G', 'CSD', '國家/N');
begin
  //清空StringGrid
  for i := 0 to StringGrid1.RowCount-1 do
  begin
    StringGrid1.Rows[i].Clear;
  end;

  //設定StringGrid格式 
  StringGrid1.Selection := TGridRect(Rect(1, 3, 1, 3));
  StringGrid1.DefaultColWidth := 105;
  StringGrid1.DefaultRowHeight := 32;
  StringGrid1.RowCount := 7 + DataRow;
  StringGrid1.ColCount := DayOfTheMonth(EndOfAMonth(StrToInt(Combobox1.Text), StrToInt(Combobox2.Text))) + 2;

  StringGrid1.ColWidths[0] := 70;
  StringGrid1.ColWidths[StringGrid1.ColCount-1] := 90;
  for i := 3 to DataRow+2 do
  begin
    if (i <= 5) then
      StringGrid1.RowHeights[i] := 64
    else
      StringGrid1.RowHeights[i] := 0;
  end;

  StringGrid2.DefaultColWidth := 90;
  StringGrid2.DefaultRowHeight := 32;
  StringGrid2.ColWidths[0] := 45;
  
  with Query4 do
  begin
    //帶入前月剩餘雙數
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT InitialPairs FROM ScheduleData WHERE PlanYear = ' + Combobox1.Text + ' AND PlanMonth = ' + Combobox2.Text + ' AND PlanDay = 0 AND DepNo = ''' + Edit1.Text + ''' ');
    Active := true;

    if (RecordCount = 0) then
      StringGrid1.Cells[0, StringGrid1.RowCount-1] := '0'
    else if (RecordCount > 0) then
      StringGrid1.Cells[0, StringGrid1.RowCount-1] := FieldByName('InitialPairs').AsString;

    if (Combobox2.Text = '12') then
    begin
      PYear := IntToStr(StrToInt(Combobox1.text)+1);
      PMonth := '1';
    end
    else begin
      PYear := Combobox1.text;
      PMonth := IntToStr(StrToInt(Combobox2.Text)+1);
    end;

    //初始化本月剩餘雙數
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT InitialPairs FROM ScheduleData WHERE PlanYear = ' + PYear + ' AND PlanMonth = ' + PMonth + ' AND PlanDay = 0 AND DepNo = ''' + Edit1.Text + ''' ');
    Active := true;

    if (RecordCount = 0) then
      InitialPairs := 0
    else if (RecordCount > 0) then
      InitialPairs := FieldByName('InitialPairs').AsInteger;
  end;

  //將日期(Row[0])、星期(Row[1])、生產工時(Row[2])、保證產量(Row[last3])、小時目標(Row[last2])資料填入StringGrid1中
  for i := 1 to StringGrid1.ColCount-2 do
  begin
    MyDate := StrToDate(combobox1.text + '/' + combobox2.text + '/' + IntToStr(i));
    Day := DayOfTheWeek(MyDate);
    StringGrid1.Cells[i, 0] := ComboBox2.Text + '/' + inttostr(i); //日期

    //星期
    case Day of
      1: StringGrid1.Cells[i, 1] := '一';
      2: StringGrid1.Cells[i, 1] := '二';
      3: StringGrid1.Cells[i, 1] := '三';
      4: StringGrid1.Cells[i, 1] := '四';
      5: StringGrid1.Cells[i, 1] := '五';
      6: StringGrid1.Cells[i, 1] := '六';
      7: StringGrid1.Cells[i, 1] := '日';
    end;

    with Query4 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT SCGS FROM SCRL WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(i) + ''' AND GSBH = ''VA12'' AND DepNO = ''' + Edit1.Text + ''' ');
      Active := true;

       //生產工時
      if (RecordCount = 0) then
        StringGrid1.Cells[i, 2] := '0'
      else if (RecordCount > 0) then
        StringGrid1.Cells[i, 2] := FieldByName('SCGS').AsString;

      Active := false;
      SQL.Clear;
      SQL.Add(' SELECT Qty FROM SCBZCL WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
      Active := true;

      //保證產量
      if (RecordCount = 0) then
        StringGrid1.Cells[i, StringGrid1.RowCount-3] := '0'
      else if (RecordCount > 0) then
        StringGrid1.Cells[i, StringGrid1.RowCount-3] := FieldByName('Qty').AsString;

      //小時目標
      if (StrToFloat(StringGrid1.Cells[i, 2]) > 0) AND (StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-3]) > 0) then
        StringGrid1.Cells[i, StringGrid1.RowCount-2] := IntToStr(Floor(StrToFLoat(StringGrid1.Cells[i, StringGrid1.RowCount-3]) / StrToFloat(StringGrid1.Cells[i, 2])))
      else
        StringGrid1.Cells[i, StringGrid1.RowCount-2] := '0';
    end;
  end;

  //清空DataRow(Row[3]~Row[12])
  for i := 3 to 2 + DataRow do
  begin
    StringGrid1.Rows[i].Clear;
  end;

  //填入StringGrid1及StringGrid2的RowTitle
  for i := 0 to StringGrid1.RowCount - 1 do
  begin
    //StringGrid1
    if (i < StringGrid1.RowCount - 1)  then
      StringGrid1.Cells[0,i] := Title1[i];

    //StringGrid2
    if (i <= 13) then
      StringGrid2.Cells[0, i] := Title2[i];
  end;

  StringGrid1.Cells[StringGrid1.ColCount-1, 1] := 'TTL';
end;

procedure TF_PreArrange.Combobox3SetLean;
begin
  ComboBox3.Items.Clear;

  //選項加入該課所有Lean線
  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT DepName AS Lean FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND ProYN = 1 AND sumline IS NOT NULL AND (YN = 1 OR YN = 5) AND SUBSTRING(DepName, 1, 10) = ''' + QLean.FieldByName('LEANNO').AsString + '''');
    SQL.Add(' ORDER BY DepName');
    Active := true;
    First;

    while not eof do
    begin
      ComboBox3.Items.Add(FieldByName('Lean').AsString);
      Next;
    end;

    ComboBox3.ItemIndex := 0;
  end;

  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ID, GXLB FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DepName = ''' + Combobox3.Text + ''' AND ProYN = 1 AND sumline IS NOT NULL AND (YN = 1 OR YN = 5)');
    Active := true;

    Edit1.Text := FieldByName('ID').AsString;
    Edit2.Text := FieldByName('GXLB').AsString;

    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ID, GXLB FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND ProYN = 1 AND (YN = 1 OR YN = 5) AND sumline IS NOT NULL');
    if (COPY(Combobox3.Text, 1, 6) = 'A12_PM') then
      SQL.Add(' AND DepName LIKE ''' + COPY(Combobox3.Text, 1, 6) + '%'' ')
    else
      SQL.Add(' AND DepName LIKE ''' + COPY(Combobox3.Text, 1, 11) + '%'' ');
    Active := true;

    while not eof do
    begin
      if (FieldByName('GXLB').AsString = 'A') then
        EditA.Text := FieldByName('ID').AsString
      else if (FieldByName('GXLB').AsString = 'S') then
        EditS.Text := FieldByName('ID').AsString
      else if (FieldByName('GXLB').AsString = 'C') then
        EditC.Text := FieldByName('ID').AsString;
      Next;
    end;
  end;
end;

procedure TF_PreArrange.SetDataRow;
var
  i, TempPairs: integer;
begin
  //初始化計算用陣列
  for i := 1 to StringGrid1.ColCount-2 do
  begin
    Col[i] := 3;
    sum[i] := 0;
  end;

  with Query4 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT S.YSBH, SUM(S.Qty) AS Pairs, S.RPlanDate, S.ROrder, REPLACE(X.DAOMH,''LY-'','''') AS DAOMH,');
    SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS ShipDate,');
    SQL.Add(' CASE WHEN CHARINDEX(''/'',S.Article)>0 THEN SUBSTRING(S.Article,1,CHARINDEX(''/'',S.Article)-1) ELSE S.Article END AS Article,');
    SQL.Add(' CASE WHEN SUM(S.Qty) >= D.Pairs THEN ''N'' ELSE ''S'' END AS Flag FROM SMDD S');
    SQL.Add(' LEFT JOIN DDZL D ON D.DDBH = S.YSBH');
    SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
    SQL.Add(' LEFT JOIN BDepartment B ON B.ID = S.RDepNO');
    SQL.Add(' WHERE B.DepName = ''' + Combobox3.Text + ''' AND S.GSBH = ''' + main.Edit2.Text + '''  AND S.GXLB = ''' + Edit2.Text + ''' ');
    SQL.Add(' AND YEAR(S.RPlanDate) = ' + Combobox1.Text + ' AND MONTH(S.RPlanDate) = ' + Combobox2.Text + '');
    SQL.Add(' GROUP BY S.YSBH, D.Pairs, S.RPlanDate, S.ROrder, X.DAOMH, D.ShipDate, S.Article ORDER BY S.RPlanDate, S.ROrder');
    Active := true;

    //將資料填入DataRow中
    while not eof do
    begin
      i := DayOfTheMonth(FieldByName('RPlanDate').Value);
      sum[i] := sum[i] + FieldByName('Pairs').AsInteger;
      StringGrid1.RowHeights[Col[i]] := 64; //增加有資料的ROW高度

      if (FieldByName('Flag').AsString = 'S') then
      begin
        with Query7 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('SELECT ROW_NUMBER() OVER(ORDER BY MIN(SUBSTRING(DDBH,12,3)) ASC) AS RowNo, YSBH, RDepNo FROM SMDD WHERE YSBH = ''' + Query4.FieldByName('YSBH').AsString + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''A'' GROUP BY YSBH, RDepNo');
          Active := true;
          Locate('RDepNo', Edit1.Text, []);
        end;
        StringGrid1.Cells[i, Col[i]] :=  FieldByName('YSBH').AsString + ' -' + Query7.FieldByName('RowNo').AsString + ' - [' + FieldByName('ShipDate').AsString + ']' + #13#10 + FieldByName('DAOMH').AsString + #13#10 + FieldByName('Article').AsString + #13#10 + 'Pairs:' + FieldByName('Pairs').AsString;
      end
      else
        StringGrid1.Cells[i, Col[i]] :=  FieldByName('YSBH').AsString + ' - [' + FieldByName('ShipDate').AsString + ']' + #13#10 + FieldByName('DAOMH').AsString + #13#10 + FieldByName('Article').AsString + #13#10 + 'Pairs:' + FieldByName('Pairs').AsString;
      Col[i] := Col[i] + 1;
      Next;
    end;

    //快速訂單
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT * FROM ScheduleData WHERE PlanYear = ' + ComboBox1.Text + ' AND PlanMonth = ' + ComboBox2.Text + ' AND DepNO = ''' + Edit1.Text + ''' AND PlanDay > 0');
    Active := true;

    while not eof do
    begin
      i := FieldByName('PlanDay').AsInteger;
      sum[i] := sum[i] + FieldByName('InitialPairs').AsInteger;
      StringGrid1.RowHeights[Col[i]] := 64; //增加有資料的ROW高度
      StringGrid1.Cells[i, Col[i]] := FieldByName('SLTBUYNO').AsString + 'BUY 快速訂單' + #13#10 + 'Pairs:' + FieldByName('InitialPairs').AsString;
      Col[i] := Col[i] + 1;
      Next;
    end;
  end;

  //依照填入的當日需生產雙數計算出剩餘總雙數
  for i := 1 to StringGrid1.ColCount-2 do
  begin
    StringGrid1.Cells[i, StringGrid1.RowCount - 4] := IntToStr(sum[i]);
    TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 3]);
    if TempPairs < 0 then
      StringGrid1.Cells[i, StringGrid1.RowCount - 1] := '0'
    else
      StringGrid1.Cells[i, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
  end;
  SumData;
  //CheckFinalPairs;
  //StringGrid1.Selection := TGridRect(Rect(-1, -1, -1, -1)); //預設不選擇Cell
  StringGrid1.Refresh;
end;

procedure TF_PreArrange.RefreshOrder;
begin
  //依日期、Lean、工段來顯示訂單
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY S.YSBH DESC) AS RecNo, S.YSBH, S.GXLB, D.XieXing, S.XieMing, D.SheHao,');
    SQL.Add(' CASE WHEN CHARINDEX(''/'',S.Article)>0 THEN SUBSTRING(S.Article,1,CHARINDEX(''/'',S.Article)-1) ELSE S.Article END AS Article, SUM(S.Qty) AS Pairs, D.ShipDate, ');
    SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS ShipDate1, X.DAOMH, REPLACE(X.DAOMH,''LY-'','''') AS DAOMH1, X.XTMH FROM SMDD S');
    SQL.Add(' LEFT JOIN DDZL D ON D.DDBH = S.YSBH');
    SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
    SQL.Add(' WHERE S.RDepNO = :LEANNO AND D.BUYNO LIKE :BUYNO + ''%'' AND S.GXLB = ''' + Edit2.Text + '''');
    SQL.Add(' GROUP BY S.YSBH, S.GXLB, D.XieXing, S.XieMing, D.SheHao, S.Article, D.ShipDate, X.DAOMH, X.XTMH');
    SQL.Add(' UNION ALL SELECT * FROM (');
    SQL.Add(' SELECT 1 T1, ''1BUY 快速訂單'' T2, NULL T3, NULL T4, NULL T5, NULL T6, NULL T7, 0 T8, NULL T9, NULL T10, NULL T11, :IsSLT T12, NULL T13');
    SQL.Add(' UNION ALL SELECT 2, ''2BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 3, ''3BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 4, ''4BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 5, ''5BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 6, ''6BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 7, ''7BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 8, ''8BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 9, ''9BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 10, ''10BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 11, ''11BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL');
    SQL.Add(' UNION ALL SELECT 12, ''12BUY 快速訂單'', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, :IsSLT, NULL) AS BUY');
    SQL.Add(' WHERE BUY.T12 = ''SLT''');
    Active := true;
  end;
end;

procedure TF_PreArrange.CheckFinalPairs;
var
  PYear, PMonth: string;
begin
  //當這個月最後有剩餘的雙數沒有生產完將數量寫入資料庫
  if (StrToInt(StringGrid1.Cells[StringGrid1.ColCount-2, StringGrid1.RowCount-1]) <> InitialPairs) then
  begin
    InitialPairs := StrToInt(StringGrid1.Cells[StringGrid1.ColCount-2, StringGrid1.RowCount-1]);

    if (Combobox2.Text = '12') then
    begin
      PYear := IntToStr(StrToInt(Combobox1.Text)+1);
      PMonth := '1';
    end
    else begin
      PYear := Combobox1.Text;
      PMonth := IntToStr(StrToInt(Combobox2.Text)+1);
    end;

    with Query4 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add(' SELECT InitialPairs FROM ScheduleData WHERE PlanYear = ' + PYear + ' AND PlanMonth = ' + PMonth + ' AND PlanDay = 0 AND DepNo = ''' + Edit1.Text + ''' ');
      Active := true;

      if (RecordCount = 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('INSERT INTO ScheduleData VALUES(' + PYear + ',' + PMonth + ',0,''' + Edit1.Text + ''',' + StringGrid1.Cells[StringGrid1.ColCount-2, StringGrid1.RowCount-1] + ',0)');
          ExecSQL;
        end;
      end
      else if (RecordCount > 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('UPDATE ScheduleData SET InitialPairs = ' + StringGrid1.Cells[StringGrid1.ColCount-2, StringGrid1.RowCount-1] + ' WHERE PlanYear = ' + PYear + ' AND PlanMonth = ' + PMonth + ' AND PlanDay = 0 AND DepNo = ''' + Edit1.Text + ''' ');
          ExecSQL;
        end;
      end;
    end;
  end;
end;

procedure TF_PreArrange.ComboBox1Change(Sender: TObject);
begin       
  ShowLoading;
  LoadSuccess := false;
  GenerateStringGrid;
  SetDataRow;
  LoadSuccess := true;  
  HideLoading;
end;

procedure TF_PreArrange.ComboBox2Change(Sender: TObject);
begin    
  ShowLoading;
  LoadSuccess := false;
  GenerateStringGrid;
  SetDataRow;
  LoadSuccess := true; 
  HideLoading;
end;

procedure TF_PreArrange.Button1Click(Sender: TObject);
begin
  if F_NotYetRelease <> nil then
  begin
    F_NotYetRelease.show;
  end else
  begin
    F_NotYetRelease := TF_NotYetRelease.Create(self);
    F_NotYetRelease.Show;
  end;
end;

procedure TF_PreArrange.ComboBox3Change(Sender: TObject);
begin
  ShowLoading;
  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ID, GXLB FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DepName = ''' + Combobox3.Text + ''' AND ProYN = 1 AND sumline IS NOT NULL AND (YN = 1 OR YN = 5)');
    Active := true;

    Edit1.Text := FieldByName('ID').AsString;
    Edit2.Text := FieldByName('GXLB').AsString;

    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ID, GXLB FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND ProYN = 1 AND (YN = 1 OR YN = 5) AND sumline IS NOT NULL ');
    if (COPY(Combobox3.Text, 1, 6) = 'A12_PM') then
      SQL.Add(' AND DepName LIKE ''' + COPY(Combobox3.Text, 1, 6) + '%''')
    else
      SQL.Add(' AND DepName LIKE ''' + COPY(Combobox3.Text, 1, 11) + '%''');
    Active := true;

    while not eof do
    begin
      if (FieldByName('GXLB').AsString = 'A') then
        EditA.Text := FieldByName('ID').AsString
      else if (FieldByName('GXLB').AsString = 'S') then
        EditS.Text := FieldByName('ID').AsString
      else if (FieldByName('GXLB').AsString = 'C') then
        EditC.Text := FieldByName('ID').AsString;
      Next;
    end;
  end;

  RefreshOrder;
  GenerateStringGrid;
  SetDataRow;
  StringGrid2.Cols[1].Clear;
  HideLoading;
end;

procedure TF_PreArrange.FormDestroy(Sender: TObject);
begin
  F_PreArrange := nil;
end;

procedure TF_PreArrange.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  i, TotalPairs, Counter, TempPairs: integer;
  PairsPCH: PChar;
  PairsSTR, YSBH, DepID_C, DepID_S, DepID_A, ProNo, GXLB: string;
  PlanDate_C, PlanDate_S, PlanDate_A: TDateTime;
  Q2BookMark: TBookmark;
begin
  //初始化參數
  Counter:=0;
  TotalPairs:=0;
 
  if (RLeft <> RRight) OR (RTop <> RBottom) then
  begin
    StringGrid1.Selection := TGridRect(Rect(RLeft, 3, RRight, 10));
    Exit;
  end;

  //當有選擇訂單時
  if DBGridEh3.SelectedRows.Count > 0 then
  begin
    YSBH := DBGridEh3.Datasource.DataSet.FieldByName('YSBH').AsString;
    GXLB := DBGridEh3.Datasource.DataSet.FieldByName('GXLB').AsString;

    if (StringGrid1.Cells[ACol, 2] = '0') OR (ACol = StringGrid1.ColCount-1) then
    begin
      ShowMessage('Not working day!');
      DBGridEh3.SelectedRows.Clear;
      Exit;
    end;
    {else if (StringGrid1.Cells[ACol, StringGrid1.RowCount-1] <> '0') then
    begin
      ShowMessage('Full capacity!');
      Exit;
    end;}

    //一天放入超過10筆資料時顯示提示
    for i := 3 to DataRow + 2 do
    begin
      if (StringGrid1.Cells[ACol, i] = '') then
      begin
        if (Copy(YSBH, Length(YSBH)-7,8) <> '快速訂單') then
          StringGrid1.Cells[ACol, i] := YSBH + ' - [' + Query2.FieldByName('ShipDate1').AsString + ']' + #13#10 + Query2.FieldByName('DAOMH1').AsString + #13#10 + Query2.FieldByName('Article').AsString + #13#10 + 'Pairs:' + Query2.FieldByName('Pairs').AsString
        else
          StringGrid1.Cells[ACol, i] := YSBH + #13#10 + 'Pairs:' + Query2.FieldByName('Pairs').AsString;

        //放入資料時更新SMDD
        DepID_C := EditC.Text;
        DepID_S := EditS.Text;
        DepID_A := EditA.Text;
        PlanDate_C := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(ACol));
        PlanDate_S := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(ACol));
        PlanDate_A := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(ACol));

        with QUpdate do
        begin
          SQL.Clear;

          if (GXLB = 'C') then
          begin
            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add(' SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GSBH = ''' + main.Edit2.Text + ''' ');
              Active := true;
            end;
            SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_C + ''', RPlanDate = ''' + DateToStr(PlanDate_C) + ''', ROrder = ' + Query4.FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''';');
          end
          else if (GXLB = 'S') then
          begin
            PlanDate_C := IncDay(PlanDate_C,-2);
            if (DayOfTheWeek(PlanDate_C) = 7) then
              PlanDate_C := IncDay(PlanDate_C,-1);

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add(' SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GSBH = ''' + main.Edit2.Text + ''' ');
              Active := true;
            end;
            SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_C + ''', RPlanDate = ''' + DateToStr(PlanDate_C) + ''', ROrder = ' + Query4.FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''';');

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add(' SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_S + ''' AND RPlanDate = ''' + DateToStr(PlanDate_S) + ''' AND GSBH = ''' + main.Edit2.Text + ''' ');
              Active := true;
            end;
            SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_S + ''', RPlanDate = ''' + DateToStr(PlanDate_S) + ''', ROrder = ' + Query4.FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''';');
          end
          else if (GXLB = 'A') then
          begin
            PlanDate_C := IncDay(PlanDate_C,-3);
            if (DayOfTheWeek(PlanDate_C) = 7) then
              PlanDate_C := IncDay(PlanDate_C,-1);

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add(' SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GSBH = ''' + main.Edit2.Text + ''' ');
              Active := true;
            end;
            SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_C + ''', RPlanDate = ''' + DateToStr(PlanDate_C) + ''', ROrder = ' + Query4.FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''';');

            PlanDate_S := IncDay(PlanDate_S,-1);
            if (DayOfTheWeek(PlanDate_S) = 7) then
              PlanDate_S := IncDay(PlanDate_S,-1);

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add(' SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_S + ''' AND RPlanDate = ''' + DateToStr(PlanDate_S) + ''' AND GSBH = ''' + main.Edit2.Text + ''' ');
              Active := true;
            end;
            SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_S + ''', RPlanDate = ''' + DateToStr(PlanDate_S) + ''', ROrder = ' + Query4.FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''';');

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add(' SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_A + ''' AND RPlanDate = ''' + DateToStr(PlanDate_A) + ''' AND GSBH = ''' + main.Edit2.Text + ''' ');
              Active := true;
            end;
            SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_A + ''', RPlanDate = ''' + DateToStr(PlanDate_A) + ''', ROrder = ' + Query4.FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''';');
          end
          else if (GXLB = '') then
          begin
            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT * FROM ScheduleData WHERE PlanYear = ' + Combobox1.Text + ' AND PlanMonth = ' + Combobox2.Text + ' AND PlanDay = ' + IntToStr(ACol) + ' AND DepNo = ''' + Edit1.Text + ''' AND SLTBUYNO = ''' + COPY(Query2.FieldByName('YSBH').AsString, 1, Pos('BUY', Query2.FieldByName('YSBH').AsString)-1) + ''' ');
              Active := true;
            end;

            if (Query4.RecordCount = 0) then
              SQL.Add('INSERT INTO ScheduleData VALUES(' + Combobox1.Text + ',' + Combobox2.Text + ',' + IntToStr(ACol) + ',''' + Edit1.Text + ''',' + Query2.FieldByName('Pairs').AsString + ',0,''' + COPY(Query2.FieldByName('YSBH').AsString, 1, Pos('BUY', Query2.FieldByName('YSBH').AsString)-1) + ''')')
            else if (RecordCount > 0) then
              SQL.Add('UPDATE ScheduleData SET InitialPairs = ' + Query2.FieldByName('Pairs').AsString + ' WHERE PlanYear = ' + Combobox1.Text + ' AND PlanMonth = ' + Combobox2.Text + ' AND PlanDay = ' + IntToStr(ACol) + ' AND DepNo = ''' + Edit1.Text + ''' AND SLTBUYNO = ''' + COPY(Query2.FieldByName('YSBH').AsString, 1, Pos('BUY', Query2.FieldByName('YSBH').AsString)-1) + ''' ');
          end;
          ExecSQL;

          //選擇最後一筆
          if (Query2.FieldByName('RecNo').AsInteger = Query2.RecordCount) AND (Query2.RecordCount >= 2) then
          begin
            Query2.Prior;
            Q2BookMark := Query2.GetBookmark;
            RefreshOrder;
            Query2.GotoBookmark(Q2BookMark);
          end
          //只剩一筆
          else if (Query2.RecordCount = 1) then
          begin
            RefreshOrder;
          end
          else begin
            Q2BookMark := Query2.GetBookmark;
            RefreshOrder;
            Query2.GotoBookmark(Q2BookMark);
          end;
        end;
        break;
      end
      else begin
        Counter := Counter + 1;
        if Counter >= 10 then
          ShowMessage('Out of range !');
      end;
    end;

    //計算該日訂單雙數
    for i := 3 to DataRow + 2 do
    begin
      if StringGrid1.Cells[ACol, i] <> '' then
      begin
        PairsPCH := StrPos(PChar(StringGrid1.Cells[ACol, i]), 'Pairs:');
        PairsSTR := PairsPCH;
        PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
        TotalPairs := TotalPairs + StrtoInt(PairsSTR);
      end;
    end;
    StringGrid1.Cells[ACol, DataRow + 3] := IntToStr(TotalPairs);

    //計算剩餘雙數
    for i := 1 to StringGrid1.ColCount-2 do
    begin
      TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 3]);
      if TempPairs < 0 then
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := '0'
      else
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
    end;
    SumData;
    //CheckFinalPairs;

    DBGridEh3.SelectedRows.Clear;
    DBGridEh3.SelectedRows.CurrentRowSelected := false;
    StringGrid1.Refresh;
  end;

  if (Input = 'Keyboard') then
  begin
    YSBHSG2 := COPY(StringGrid1.Cells[ACol, ARow], 1, Pos(' ', StringGrid1.Cells[ACol, ARow])-1);

    if (YSBHSG2 <> '') then
    begin
      with Query5 do
      begin
        QSearch.Active := false;
        QSearch.SQL.Clear;
        QSearch.SQL.Add('SELECT DISTINCT ProNo FROM SCBBSS WHERE SCBH = ''' + YSBHSG2 + ''' AND GXLB = ''A''');
        QSearch.Active := true;

        if (QSearch.RecordCount > 0) then
        begin
          ProNo := QuotedStr(QSearch.FieldByName('ProNo').AsString);
          QSearch.Next;
          while not QSearch.eof do
          begin
            ProNo := ProNo + ',' + QuotedStr(QSearch.FieldByName('ProNo').AsString);
            QSearch.Next;
          end;

          Active := false;
          SQL.Clear;
          SQL.Add(' SELECT REPLACE(X.DAOMH,''LY-'','''') AS LY, D.DDBH AS RY, '''' AS ''Material/VT'', S.Style AS ''CHAT LIEU'', REPLACE(X.XTMH,''TV-'','''') AS ''Last#'', CONVERT(varchar(6), MONTH(SUBSTRING(D.BUYNO,1,6)+''01''))+'' Buy'' AS BUY, SCZL.Process AS ''Process'',');
          SQL.Add(' CASE WHEN POH >= 1.5 THEN 1 WHEN POH >= 1.25 AND POH < 1.5 THEN 2 WHEN POH >= 1.13 AND POH <= 1.24 THEN 3 WHEN POH >= 1.01 AND POH <= 1.12 THEN 4');
          SQL.Add('      WHEN POH >= 0.86 AND POH <= 1.0 THEN 5 WHEN POH >= 0.75 AND POH <= 0.85 THEN 6 WHEN POH >= 0.61 AND POH <= 0.74 THEN 7 WHEN POH <= 0.6 THEN 8 END AS ''Cut/C'',');
          SQL.Add(' D.ARTICLE AS SKU, SCZL.Shape AS ''Stitching/M'', D.Pairs AS ''Quantity/SL'',');
          SQL.Add(' CASE WHEN SUM(SCBBSS.Qty) >= D.Pairs THEN ''OK ''+CONVERT(varchar(2), MONTH(MAX(SCBB.SCDate)))+''/''+ CONVERT(varchar(2), DAY(MAX(SCBB.SCDate))) ');
          SQL.Add(' ELSE ''-''+CONVERT(varchar, CEILING(D.Pairs-SUM(SCBBSS.Qty))) END AS ''Forming/G'',');
          SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS CSD, L.YWSM AS ''Country/N'' FROM DDZL D');
          SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
          SQL.Add(' LEFT JOIN SCXXDV S ON S.XieXing = D.XieXing AND S.SheHao = D.SheHao');
          SQL.Add(' LEFT JOIN CLLBZL C ON C.CLLB = X.CLID');
          SQL.Add(' LEFT JOIN LBZLS L ON L.LB = ''06'' and L.LBDH = D.DDGB ');
          SQL.Add(' LEFT JOIN SCZL ON SCZL.ZLBH = D.DDBH');
          SQL.Add(' LEFT JOIN (');
          SQL.Add('   SELECT SCXXCL.XieXing, SCXXCL.SheHao, ROUND(MAX(CONVERT(float, SCXXCL.BZCL))/SUM(SCXXCL.BZRS+SCXXCL.BZJS), 2) AS POH FROM SCXXCL GROUP BY XieXing, SheHao');
          SQL.Add(' ) AS SCXXCL ON SCXXCL.XieXing = D.XieXing AND SCXXCL.SheHao = D.SheHao');
          SQL.Add(' LEFT JOIN SCBBSS ON SCBBSS.SCBH = D.DDBH');
          SQL.Add(' LEFT JOIN SCBB ON SCBB.ProNo = SCBBSS.ProNo');
          SQL.Add(' WHERE D.DDBH = ''' + YSBHSG2 + ''' AND SCBBSS.ProNO IN (' + ProNo + ') AND SCBBSS.GXLB = ''A'' ');
          SQL.Add(' GROUP BY X.DAOMH, D.DDBH, S.Style, X.XTMH, D.BUYNO, SCZL.Process, SCXXCL.POH, D.ARTICLE, SCZL.Shape, D.Pairs, D.ShipDate, L.YWSM');
          Active := true;
        end
        else begin
          Active := false;
          SQL.Clear;
          SQL.Add(' SELECT REPLACE(X.DAOMH,''LY-'','''') AS LY, D.DDBH AS RY, '''' AS ''Material/VT'', S.Style AS ''CHAT LIEU'', REPLACE(X.XTMH,''TV-'','''') AS ''Last#'', CONVERT(varchar(6), MONTH(SUBSTRING(D.BUYNO,1,6)+''01''))+'' Buy'' AS BUY, SCZL.Process AS ''Process'',');
          SQL.Add(' CASE WHEN POH >= 1.5 THEN 1 WHEN POH >= 1.25 AND POH < 1.5 THEN 2 WHEN POH >= 1.13 AND POH <= 1.24 THEN 3 WHEN POH >= 1.01 AND POH <= 1.12 THEN 4');
          SQL.Add('      WHEN POH >= 0.86 AND POH <= 1.0 THEN 5 WHEN POH >= 0.75 AND POH <= 0.85 THEN 6 WHEN POH >= 0.61 AND POH <= 0.74 THEN 7 WHEN POH <= 0.6 THEN 8 END AS ''Cut/C'',');
          SQL.Add(' D.ARTICLE AS SKU, SCZL.Shape AS ''Stitching/M'', D.Pairs AS ''Quantity/SL'', '''' AS ''Forming/G'',');
          SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS CSD, L.YWSM AS ''Country/N'' FROM DDZL D');
          SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
          SQL.Add(' LEFT JOIN SCXXDV S ON S.XieXing = D.XieXing AND S.SheHao = D.SheHao');
          SQL.Add(' LEFT JOIN CLLBZL C ON C.CLLB = X.CLID');
          SQL.Add(' LEFT JOIN LBZLS L ON L.LB = ''06'' and L.LBDH = D.DDGB ');
          SQL.Add(' LEFT JOIN SCZL ON SCZL.ZLBH = D.DDBH');
          SQL.Add(' LEFT JOIN (');
          SQL.Add('   SELECT SCXXCL.XieXing, SCXXCL.SheHao, ROUND(MAX(CONVERT(float, SCXXCL.BZCL))/SUM(SCXXCL.BZRS+SCXXCL.BZJS), 2) AS POH FROM SCXXCL GROUP BY XieXing, SheHao');
          SQL.Add(' ) AS SCXXCL ON SCXXCL.XieXing = D.XieXing AND SCXXCL.SheHao = D.SheHao');
          SQL.Add(' WHERE D.DDBH = ''' + YSBHSG2 + ''' ');
          Active := true;
        end;

        First;
        for i := 0 to StringGrid2.RowCount - 1 do
        begin
          StringGrid2.Cells[1, i] := Fields[i].AsString;
        end;
      end;
    end
    else begin
      StringGrid2.Cols[1].Clear;
    end;
    StringGrid2.Selection := TGridRect(Rect(-1, -1, -1, -1));
  end;
end;

procedure TF_PreArrange.ReturnClick(Sender: TObject);
begin
  if MessageDlg('Are you sure to return ' + Query2.FieldByName('YSBH').AsString + ' ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = NULL WHERE DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    CalculateLeanAmount;
    LoadSuccess := true;
  end;
end;

procedure TF_PreArrange.A1LEAN1Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A1 LEAN1 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A1_LEAN1'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;
    HideLoading;
  end;
end;

procedure TF_PreArrange.A1LEAN2Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A1 LEAN2 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A1_LEAN2'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;
    HideLoading;
  end;
end;

procedure TF_PreArrange.A1LEAN3Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A1 LEAN3 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A1_LEAN3'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;
    HideLoading;
  end;
end;

procedure TF_PreArrange.A1LEAN4Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A1 LEAN4 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A1_LEAN4'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;
    HideLoading;
  end;
end;

procedure TF_PreArrange.A1LEAN5Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A1 LEAN5 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A1_LEAN5'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;    
    HideLoading;
  end;
end;


procedure TF_PreArrange.A12PM1Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A12 PM ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A12_PM'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;         
    LoadSuccess := true;
    QLean.GotoBookmark(BookMarkQLean);
    HideLoading;
  end;
end;


procedure TF_PreArrange.A2LEAN1Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A2 LEAN1 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A2_LEAN1'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;   
    HideLoading;
  end;
end;

procedure TF_PreArrange.A2LEAN2Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A2 LEAN2 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A2_LEAN2'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;    
    HideLoading;
  end;
end;

procedure TF_PreArrange.A2LEAN3Click(Sender: TObject);
begin
  BookMarkQLean := QLean.GetBookmark;
  if MessageDlg('Are you sure to assign ' + Query2.FieldByName('YSBH').AsString + ' to A2 LEAN3 ?', mtinformation, [mbYes,mbNo], 0) = mrYes then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('UPDATE SMDD SET RDepNO = ''A2_LEAN3'' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DDBH LIKE ''' + Query2.FieldByName('YSBH').AsString + '%'';');
      ExecSQL;
    end;
    LoadSuccess := false;
    QLean.Active := false;
    QLean.Active := true;
    QLean.GotoBookmark(BookMarkQLean);
    LoadSuccess := true;    
    HideLoading;
  end;
end;

procedure TF_PreArrange.ReturnToLeanClick(Sender: TObject);
var
  i, TotalPairs, NCol, NRow, TempPairs: integer;
  PairsPCH: PChar;
  PairsSTR, LeanNO, YSBH, GXLB: string;
begin
  TotalPairs:=0;
  NCol := StringGrid1.Col;
  NRow := StringGrid1.Row;

  if (NCol >= 1) AND (NRow >= 3) AND (NRow <= DataRow + 2) AND (StringGrid1.Cells[NCol, NRow] <> '') then
  begin
    if MessageDlg('Are you sure to return it?', mtinformation, [mbYes,mbNo], 0) = mrYes then
    begin
      YSBH := COPY(StringGrid1.Cells[NCol, NRow], 1, Pos(' ', StringGrid1.Cells[NCol, NRow])-1);
      StringGrid1.Cells[NCol, NRow] := '';

      //退回快速訂單時更新ScheduleData
      if (Copy(YSBH, Length(YSBH)-2, 3) = 'BUY') then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM ScheduleData WHERE PlanYear = ' + ComboBox1.Text + ' AND PlanMonth = ' + ComboBox2.Text + ' AND PlanDay = ' + IntToStr(NCol) + ' AND DepNo = ''' + Edit1.Text + ''' AND SLTBUYNO = ' + COPY(YSBH, 1, Pos('BUY', YSBH)-1) + '');
          ExecSQL;
        end;
      end
      //退回排程時更新SMDD
      else if (YSBH <> '') then
      begin
        with Query4 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('SELECT SUBSTRING(DepName, 1, 8) AS LeanNO FROM BDepartment WHERE GSBH = ''' + main.Edit2.Text + ''' AND DepName = ''' + Combobox3.Text + '''');
          Active := true;
          First;

          LeanNO := FieldByName('LeanNO').AsString;

          with QUpdate do
          begin
            SQL.Clear;
            SQL.Add('UPDATE SMDD SET RDepNO = ''' + LeanNO + ''', RPlanDate = NULL, RPlanEdate = NULL, ROrder = NULL WHERE DDBH LIKE ''' + YSBH + '%'' AND GSBH = ''' + main.Edit2.Text + ''';');
            ExecSQL;
            RefreshOrder;
          end;
        end;
      end;

      //退回一筆資料時將下方資料上移並更新排序
      if (NRow < DataRow + 2) then
      begin
        QUpdate.SQL.Clear;
        for i := NRow + 1 to DataRow + 2 do
        begin
          if (StringGrid1.Cells[NCol, i] <> '') then
          begin
            YSBH := COPY(StringGrid1.Cells[NCol, i], 1, Pos(' ', StringGrid1.Cells[NCol, i])-1);

            StringGrid1.Cells[NCol, i-1] := StringGrid1.Cells[NCol, i];
            StringGrid1.Cells[NCol, i] := '';
            QUpdate.SQL.Add('UPDATE SMDD SET ROrder = ' + IntToStr(i-3) + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''' + GXLB + ''' AND GSBH = ''' + main.Edit2.Text + ''';');
          end
          else
            break;
        end;
        if (QUpdate.SQL.Text <> '') then
          QUpdate.ExecSQL;
      end;

      //計算訂單雙數
      for i := 3 to DataRow + 2 do
      begin
        if StringGrid1.Cells[NCol, i] <> '' then
        begin
          PairsPCH := StrPos(PChar(StringGrid1.Cells[NCol, i]), 'Pairs:');
          PairsSTR := PairsPCH;
          PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
          TotalPairs := TotalPairs + StrtoInt(PairsSTR);
        end;
      end;
      StringGrid1.Cells[NCol, DataRow + 3] := IntToStr(TotalPairs);

      //計算剩餘雙數
      for i := 1 to StringGrid1.ColCount-2 do
      begin
        TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 3]);
        if TempPairs < 0 then
          StringGrid1.Cells[i, StringGrid1.RowCount - 1] := '0'
        else
          StringGrid1.Cells[i, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
      end;
      SumData;
      //CheckFinalPairs;
    end;
    StringGrid1.Refresh;
    StringGrid2.Cols[1].Clear;
    Query2.Locate('YSBH', YSBH, []);
    DBGridEh3.SelectedRows.CurrentRowSelected := true;
    DBGridEh3.SetFocus;
  end;
end;

procedure TF_PreArrange.SPLITTHEORDERClick(Sender: TObject);
begin
  YSBHSplit := COPY(StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row], 1, Pos(' ', StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row])-1);

  if F_SplitTheOrder <> nil then
  begin
    F_SplitTheOrder.Close;
  end;

  F_SplitTheOrder := TF_SplitTheOrder.Create(self);
  F_SplitTheOrder.Show;
end;

procedure TF_PreArrange.DBGridEh1CellClick(Column: TColumnEh);
begin
  Combobox3SetLean;
  GenerateStringGrid;
  SetDataRow;
  StringGrid2.Cols[1].Clear;
  HideLoading;
end;

procedure TF_PreArrange.DBGridEh3CellClick(Column: TColumnEh);
begin
  DBGridEh1.SelectedRows.CurrentRowSelected := true;
  DBGridEh3.SelectedRows.CurrentRowSelected := true;
end;

procedure TF_PreArrange.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  i, Counter: integer;
begin
  with TStringGrid(Sender) do
  begin
    if (ACol = 0) then
    begin
      Canvas.Brush.Color := clSkyBlue;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 12 * TrackBar1.Position div 100;
      Canvas.FillRect(Rect);
    end
    else if (ACol >= 1) and (ARow = 0) then
    begin
      Canvas.Brush.Color := clSkyBlue;
      Canvas.Font.Size := 18 * TrackBar1.Position div 100;
      Canvas.FillRect(Rect);
    end
    else if (ACol > 0) and (ARow = 1) then
    begin
      Canvas.Brush.Color := clSkyBlue;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 18 * TrackBar1.Position div 100;
      Canvas.FillRect(Rect);
    end
    else if (ACol > 0) and (ARow = 2) then
    begin
      Canvas.Brush.Color := clSkyBlue;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 12 * TrackBar1.Position div 100;
      Canvas.FillRect(Rect);
    end
    else if (ACol > 0) and (ARow > 2) and (ARow < DataRow + 3) then
    begin
      Canvas.Brush.Color := clWindow;
      Canvas.Font.Size := 8 * TrackBar1.Position div 100;
      Canvas.FillRect(Rect);
    end
    else if (ACol > 0) and (ARow >= DataRow + 3) then
    begin
      Canvas.Brush.Color := clWindow;
      if ARow <> DataRow + 5 then
        Canvas.Font.Color := clBlack
      else
        Canvas.Font.Color := clRed;
      Canvas.Font.Size := 16 * TrackBar1.Position div 100;
      Canvas.FillRect(Rect);
    end;

    if (ACol >= 1) AND (ACol <= StringGrid1.ColCount-2) AND (ARow >= 3) AND (ARow <= StringGrid1.RowCount-5) AND (ARow MOD 2 = 0) then
    begin
      Canvas.Brush.Color := clWindow;
      Canvas.FillRect(Rect);
    end
    else if (ACol >= 1) AND (ACol <= StringGrid1.ColCount-2) AND (ARow >= 3) AND (ARow <= StringGrid1.RowCount-5) AND (ARow MOD 2 = 1) then
    begin
      Canvas.Brush.Color := RGB(236,245,255);
      Canvas.FillRect(Rect);
    end
    else if (ACol >= 1) AND (ARow >= StringGrid1.RowCount-4) then
    begin
      Canvas.Brush.Color := RGB(236,245,255);
      Canvas.FillRect(Rect);
    end
    else if (ACol = StringGrid1.ColCount-1) AND (ARow > 2) then
    begin
      Canvas.Brush.Color := RGB(236,245,255);
      Canvas.FillRect(Rect);
    end;

    if (StringGrid1.Cells[ACol, 2] = '0') then
    begin
      Canvas.Brush.Color := clYellow;
      Canvas.FillRect(Rect);
    end;

    if (gdSelected in State) then
    begin
      Canvas.Font.Color := clBlack;
      Canvas.Brush.Color := RGB(180,255,180);
      Canvas.FillRect(Rect);
    end;

    //統計欄位邊框
    if (ACol > 0) and (ARow >= DataRow + 3) then
    begin
      Canvas.Pen.Width := 1;
      Canvas.Pen.Color := clBlack;
      Canvas.Rectangle(Rect);
    end;

    //如生產工時為0則縮小欄寬
    if (ACol >= 1) then
    begin
      if(StringGrid1.Cells[ACol, 2] = '0') then
      begin
        if (ARow = 0) then
          Canvas.Font.Size := 6 * TrackBar1.Position div 100
        else
          Canvas.Font.Size := 8 * TrackBar1.Position div 100;
        StringGrid1.ColWidths[ACol] := 12 * TrackBar1.Position div 100;
        Canvas.FillRect(Rect);
      end;
    end;

    //Row 04~10 如無資料則隱藏
    if (ARow >= 6) and (ARow <= 12) and (ACol = 1) then
    begin
      Counter := 0;
      for i := 1 to StringGrid1.ColCount-2 do
      begin
        if (StringGrid1.Cells[i, ARow] <> '') then
          Break
        else
          Inc(Counter);
      end;

      if (Counter = StringGrid1.ColCount-2) then
        StringGrid1.RowHeights[ARow] := 0
      else
        StringGrid1.RowHeights[ARow] := 64 * TrackBar1.Position div 100;
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

procedure TF_PreArrange.StringGrid2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: string;
  R: TRect;
begin
  with TStringGrid(Sender) do
  begin
    if (ACol = 0) then
    begin
      Canvas.Brush.Color := clSkyBlue;
      Canvas.Font.Color := clBlack;
      if (ARow = 3) then
        Canvas.Font.Size := 6
      else
        Canvas.Font.Size := 8;
      Canvas.FillRect(Rect);
    end
    else if (ACol = 1) then
    begin
      Canvas.Brush.Color := clWindow;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 8;
      Canvas.FillRect(Rect);
    end;

    if (gdSelected in State) then
    begin
      Canvas.Font.Color := clBlack;
      //Canvas.Brush.Color := RGB(180,255,180);
      Canvas.FillRect(Rect);
    end;

    S := Cells[ACol, ARow];
    R := Rect;
    DrawText(Canvas.Handle, PChar(S), Length(S), R, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

    if (ACol = 1) AND (ARow = 9) then
    begin
      if (StringGrid2.Cells[1, 9] = '1') then
      begin
        Canvas.Font.Color := clWhite;
        Canvas.Draw(90-Image1.Width div 2, Rect.Top, Image1.Picture.Graphic);
      end
      else if (StringGrid2.Cells[1, 9] = '2') then
      begin
        Canvas.Font.Color := clWhite;
        Canvas.Draw(90-Image2.Width div 2, Rect.Top, Image2.Picture.Graphic);
      end
      else if (StringGrid2.Cells[1, 9] = '3') then
      begin
        Canvas.Font.Color := clWhite;
        Canvas.Draw(90-Image3.Width div 2, Rect.Top, Image3.Picture.Graphic);
      end
      else if (StringGrid2.Cells[1, 9] = '4') then
      begin
        Canvas.Font.Color := clWhite;
        Canvas.Draw(90-Image4.Width div 2, Rect.Top, Image4.Picture.Graphic);
      end
      else if (StringGrid2.Cells[1, 9] = '5') then
      begin
        Canvas.Font.Color := clWhite;
        Canvas.Draw(90-Image5.Width div 2, Rect.Top, Image5.Picture.Graphic);
      end;
    end;
  end;
end;

procedure TF_PreArrange.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Column, Row: Longint;
begin
  StringGrid1.MouseToCell(X, Y, Column, Row);
  Mode := 'S';
  YSBHSG2 := '';
  StringGrid1.Options := StringGrid1.Options - [goRangeSelect];
  Input := 'Mouse';

  //依照點擊的Cell範圍變更滑鼠右鍵選單
  if Button = mbRight then
  begin
    TCol := Column;

    if (Column >= 1) AND (Column <= StringGrid1.ColCount-2) AND (Row >= 0) AND (Row <= 2) then
    begin
      if (StringGrid1.Cells[Column, 2] = '0') then
        StringGrid1.PopupMenu := PopupMenu3
      else
        StringGrid1.PopupMenu := PopupMenu5;
    end
    else if (Column >= 1) AND (Column <= StringGrid1.ColCount-2) AND (Row >= 3) AND (Row <= DataRow + 2) AND (StringGrid1.Cells[Column, Row] <> '') then
    begin
      StringGrid1.Selection := TGridRect(Rect(Column, Row, Column, Row));
      StringGrid1.PopupMenu := PopupMenu2;
      if (COPY(StringGrid1.Cells[Column, Row], Pos(' ', StringGrid1.Cells[Column, Row])-3, 3) = 'BUY') then
        PopupMenu2.Items[1].Visible := false
      else
        PopupMenu2.Items[1].Visible := true;
    end
    else begin
      StringGrid1.PopupMenu := PopupMenu4;
    end;
  end
  //設定FixedCol及FixedRow可點擊的範圍
  else if Button = mbLeft then
  begin
    if (Column = 0) AND (Row = StringGrid1.RowCount - 1) then
      StringGrid1.Selection := TGridRect(Rect(Column, Row, Column, Row))
    else if (Column = 0) AND (Row = StringGrid1.RowCount-3) then
      StringGrid1.Selection := TGridRect(Rect(Column, Row, Column, Row))
    else if (Column = 0) AND (Row = 2) then
      StringGrid1.Selection := TGridRect(Rect(Column, Row, Column, Row))
    else if (Column >= 1) AND (Column <= StringGrid1.ColCount-2) AND (Row >= 3) AND (Row <= DataRow + 2) then
    begin
      if (RLeft <> RRight) OR (RTop <> RBottom) then
      begin
        if (Column >= RLeft) AND (Column <= RRight) then
        begin
          Mode := 'A';
          StringGrid1.Selection := TGridRect(Rect(Column, 3, Column + RRight - RLeft, 10));
          TCol := Column;
          TRow := Row;
        end
        else begin
          Mode := 'S';

          RLeft := -1;
          RRight := -1;
          RTop := -1;
          RBottom := -1;
        end;
      end
      else begin
        if (StringGrid1.Cells[Column, Row] <> '') then
        begin
          TCol := Column;
          TRow := Row;
          SG2Query := true;
          YSBHSG2 := COPY(StringGrid1.Cells[Column, Row], 1, Pos(' ', StringGrid1.Cells[Column, Row])-1);
          StringGrid1.BeginDrag(false, 30);
        end
        else
          StringGrid2.Cols[1].Clear;
      end;
    end
    else if (Column >= 1) AND (Column <= StringGrid1.ColCount-2) AND (Row in [0,1]) then
    begin
      Mode := 'R';
      StringGrid1.Selection := TGridRect(Rect(Column, 3, Column, 10));
      TCol := Column;
      TRow := Row;
    end
    else if (Column >= 1) AND (Column <= StringGrid1.ColCount-2) AND (Row = 2) then
    begin
      Mode := 'H';
      StringGrid1.Selection := TGridRect(Rect(Column, Row, Column, Row));
      TCol := Column;
      TRow := Row;
    end
    else if (Column >= 1) AND (Column <= StringGrid1.ColCount-2) AND (Row = StringGrid1.RowCount-3) then
    begin
      Mode := 'C';
      TCol := Column;
      TRow := Row;
      StringGrid1.Options := StringGrid1.Options + [goRangeSelect];
    end;
  end;
end;

procedure TF_PreArrange.StringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
begin     
  StringGrid1.MouseToCell(X, Y, Col, Row);
  if (Mode = 'H') then
  begin
    if (ssLeft in Shift) then
    begin
      StringGrid1.Selection := TGridRect(Rect(TCol, TRow, Col, Row));
    end
    else
      Mode := 'S';
  end
  else if (Mode = 'R') then
  begin
    if (ssLeft in Shift) then
    begin
      StringGrid1.Selection := TGridRect(Rect(TCol, 3, Col, 10));
    end
    else
      Mode := 'S';
  end
  else if (Mode = 'A') then
  begin
    if (ssLeft in Shift) then
    begin
      StringGrid1.Selection := TGridRect(Rect(Col, 3, Col + RRight - RLeft, 10));
    end
  end;
end;

procedure TF_PreArrange.StringGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row, i, j, TempPairs, Offset, TotalPairs: integer;
  MyDate, DateA, DateS, DateC: TDateTime;
  PairsSTR, ProNo: string;
  PairsPCH: PChar;
begin
  StringGrid1.MouseToCell(X, Y, Col, Row);
  
  //拖拉修改工時
  if (Mode = 'H') then
  begin
    if (Col = TCol) then
    begin
      Mode := 'S';
      Exit;
    end;

    MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(TCol));
    if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
    begin
      if (Row = TRow) then
      begin
        if (Col > TCol) then
        begin
          for i := TCol to Col do
          begin
            StringGrid1.Cells[i, 2] := StringGrid1.Cells[TCol, 2];
            StringGrid1.Cells[i, StringGrid1.RowCount-2] := IntToStr(Floor(StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-3]) / StrToFloat(StringGrid1.Cells[i, 2])));

            if (StrToFloat(StringGrid1.Cells[TCol, 2]) > 0) then
              StringGrid1.ColWidths[i] := 105 * TrackBar1.Position div 100
            else if (StrToFloat(StringGrid1.Cells[TCol, 2]) = 0) then
              StringGrid1.ColWidths[i] := 12 * TrackBar1.Position div 100;

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT SCGS FROM SCRL WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(i) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
              Active := true;

              if (RecordCount = 0) then
              begin
                with QUpdate do
                begin
                  SQL.Clear;
                  SQL.Add('INSERT INTO SCRL (SCYEAR, SCMONTH, SCDay, DepNO, GSBH, SCGS, USERDATE, USERID, YN) VALUES(''' + Combobox1.Text + ''',''' + Combobox2.Text + ''',''' + IntToStr(i) + ''',''' + Edit1.Text + ''',''VA12'',' + StringGrid1.Cells[TCol, 2] + ',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''' + main.Edit1.Text + ''',''1'')');
                  ExecSQL;
                end;
              end
              else if (RecordCount > 0) then
              begin
                with QUpdate do
                begin
                  SQL.Clear;
                  SQL.Add('UPDATE SCRL SET SCGS = ' + StringGrid1.Cells[TCol, 2] + ', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''', USERID = ''' + main.Edit1.Text + ''' WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(i) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
                  ExecSQL;
                end;
              end;
            end;
          end;
        end
        else if (Col < TCol) then
        begin
          for i := TCol downto Col do
          begin
            StringGrid1.Cells[i, 2] := StringGrid1.Cells[TCol, 2];
            StringGrid1.Cells[i, StringGrid1.RowCount-2] := IntToStr(Floor(StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-3]) / StrToFloat(StringGrid1.Cells[i, 2])));

            if (StrToFloat(StringGrid1.Cells[TCol, 2]) > 0) then
              StringGrid1.ColWidths[i] := 105 * TrackBar1.Position div 100
            else if (StrToFloat(StringGrid1.Cells[TCol, 2]) = 0) then
              StringGrid1.ColWidths[i] := 12 * TrackBar1.Position div 100;

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT SCGS FROM SCRL WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(i) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
              Active := true;

              if (RecordCount = 0) then
              begin
                with QUpdate do
                begin
                  SQL.Clear;
                  SQL.Add('INSERT INTO SCRL (SCYEAR, SCMONTH, SCDay, DepNO, GSBH, SCGS, USERDATE, USERID, YN) VALUES(''' + Combobox1.Text + ''',''' + Combobox2.Text + ''',''' + IntToStr(i) + ''',''' + Edit1.Text + ''',''VA12'',' + StringGrid1.Cells[TCol, 2] + ',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''' + main.Edit1.Text + ''',''1'')');
                  ExecSQL;
                end;
              end
              else if (RecordCount > 0) then
              begin
                with QUpdate do
                begin
                  SQL.Clear;
                  SQL.Add('UPDATE SCRL SET SCGS = ' + StringGrid1.Cells[TCol, 2] + ', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''', USERID = ''' + main.Edit1.Text + ''' WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(i) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
                  ExecSQL;
                end;
              end;
            end;
          end;
        end;
        //計算剩餘雙數
        for i := 1 to StringGrid1.ColCount-2 do
        begin
          TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount-1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-3]);
          if (TempPairs < 0) then
            StringGrid1.Cells[i, StringGrid1.RowCount-1] := '0'
          else
            StringGrid1.Cells[i, StringGrid1.RowCount-1] := IntToStr(TempPairs);
        end;
        SumData;
        //CheckFinalPairs;
        StringGrid1.Refresh;
      end
      else
        ShowMessage('Out of range!!');
    end
    else begin
      ShowMessage('Working hour of this month has been locked!');
    end;
  end
  //拖拉修改目標產量
  else if (Mode = 'C') then
  begin
    if (Col = TCol) then
    begin
      Mode := 'S';
      Exit;
    end;

    MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(TCol));
    if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
    begin
      if (Row = TRow) then
      begin
        if (Col > TCol) then
        begin
          for i := TCol to Col do
          begin
            if (StrToFloat(StringGrid1.Cells[i, 2]) > 0) then
            begin
              StringGrid1.Cells[i, StringGrid1.RowCount-3] := StringGrid1.Cells[TCol, StringGrid1.RowCount-3];
              StringGrid1.Cells[i, StringGrid1.RowCount-2] := IntToStr(Floor(StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-3]) / StrToFloat(StringGrid1.Cells[i, 2])));
              MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(i));

              with Query4 do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT Qty FROM SCBZCL WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
                Active := true;

                if (RecordCount = 0) then
                begin
                  with QUpdate do
                  begin
                    SQL.Clear;
                    SQL.Add('INSERT INTO SCBZCL VALUES(''' + Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''',''' + FormatDateTime('yyyy/mm/dd', MyDate) + ''',''' + StringGrid1.Cells[TCol, StringGrid1.RowCount-3] + ''',''VA12'',''' + main.Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''1'')');
                    ExecSQL;
                  end;
                end
                else if (RecordCount > 0) then
                begin
                  with QUpdate do
                  begin
                    SQL.Clear;
                    SQL.Add('UPDATE SCBZCL SET Qty = ' + StringGrid1.Cells[TCol, StringGrid1.RowCount-3] + ', USERID = ''' + main.Edit1.Text + ''', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''' WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
                    ExecSQL;
                  end;
                end;
              end;
            end;
          end;
        end
        else if (Col < TCol) then
        begin
          for i := TCol downto Col do
          begin
            if (StrToFloat(StringGrid1.Cells[i, 2]) > 0) then
            begin
              StringGrid1.Cells[i, StringGrid1.RowCount-3] := StringGrid1.Cells[TCol, StringGrid1.RowCount-3];
              StringGrid1.Cells[i, StringGrid1.RowCount-2] := IntToStr(Floor(StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-3]) / StrToFloat(StringGrid1.Cells[i, 2])));
              MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(i));

              with Query4 do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT Qty FROM SCBZCL WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
                Active := true;

                if (RecordCount = 0) then
                begin
                  with QUpdate do
                  begin
                    SQL.Clear;
                    SQL.Add('INSERT INTO SCBZCL VALUES(''' + Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''',''' + FormatDateTime('yyyy/mm/dd', MyDate) + ''',''' + StringGrid1.Cells[TCol, StringGrid1.RowCount-3] + ''',''VA12'',''' + main.Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''1'')');
                    ExecSQL;
                  end;
                end
                else if (RecordCount > 0) then
                begin
                  with QUpdate do
                  begin
                    SQL.Clear;
                    SQL.Add('UPDATE SCBZCL SET Qty = ' + StringGrid1.Cells[TCol, StringGrid1.RowCount-3] + ', USERID = ''' + main.Edit1.Text + ''', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''' WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
                    ExecSQL;
                  end;
                end;
              end;
            end;
          end;
        end;
        //計算剩餘雙數
        for i := 1 to StringGrid1.ColCount-2 do
        begin
          TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount-1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount-3]);
          if (TempPairs < 0) then
            StringGrid1.Cells[i, StringGrid1.RowCount-1] := '0'
          else
            StringGrid1.Cells[i, StringGrid1.RowCount-1] := IntToStr(TempPairs);
        end;
        SumData;
        //CheckFinalPairs;
        StringGrid1.Refresh;
      end
      else
        ShowMessage('Out of range!!');
    end
    else begin
      ShowMessage('Capacity of this month has been locked!');
    end;
  end
  //選擇範圍後取得該範圍內的訂單資料
  else if (Mode = 'R') then
  begin
    RLeft := StringGrid1.Selection.Left;
    RRight := StringGrid1.Selection.Right;
    RTop := StringGrid1.Selection.Top;
    RBottom := StringGrid1.Selection.Bottom;

    RSOrder.Clear;
    RSCol.Clear;
    RSRow.Clear;
    RSCellData.Clear;

    for i := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
    begin
      for j := 3 to 10 do
      begin
        if (StringGrid1.Cells[i, j] <> '') then
        begin
          RSCellData.Add(StringGrid1.Cells[i, j]);
          RSOrder.Add(COPY(StringGrid1.Cells[i, j], 1, Pos(' ', StringGrid1.Cells[i, j])-1));
          RSCol.Add(IntToStr(i));
          RSRow.Add(IntToStr(j));
        end;
      end;
    end;
  end
  //移動選擇範圍後資料更新
  else if (Mode = 'A') then
  begin
    Offset := StringGrid1.Selection.Left - RLeft; //選擇範圍跟移動後的Column移動量

    //檢查選擇範圍移動後是否在該月區間內
    if (StringGrid1.Selection.Left < 1) OR (StringGrid1.Selection.Right > StringGrid1.ColCount-2) then
    begin
      ShowMessage('Out of range!');
      StringGrid1.Selection := TGridRect(Rect(RLeft, 3, RRight, 10));
      Exit;
    end;

    //檢查選擇範圍移動後是否包含星期日
    for i := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
    begin
      if (DayOfTheWeek(StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(i))) = 7) then
      begin
        ShowMessage('The range you selected including Sunday!');    
        StringGrid1.Selection := TGridRect(Rect(RLeft, 3, RRight, 10));
        Exit;
      end;
    end;

    //檢查選擇範圍移動後是否包含其他排程
    //移動後範圍與移動前無重疊
    if (StringGrid1.Selection.Right < RLeft) OR (StringGrid1.Selection.Left > RRight) then
    begin
      for i := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
      begin
        for j := 3 to 10 do
        begin
          if (StringGrid1.Cells[i, j] <> '') then
          begin
            ShowMessage('There are some orders in the selected range!');
            StringGrid1.Selection := TGridRect(Rect(RLeft, 3, RRight, 10));
            Exit;
          end;
        end;
      end;
    end
    //移動後範圍與移動前有重疊
    else begin
      //向右移動
      if (Offset > 0) then
      begin
        for i := RRight+1 to StringGrid1.Selection.Right do
        begin
          for j := 3 to 10 do
          begin
            if (StringGrid1.Cells[i, j] <> '') then
            begin
              ShowMessage('There are some orders in the selected range!');
              StringGrid1.Selection := TGridRect(Rect(RLeft, 3, RRight, 10));
              Exit;
            end;
          end;
        end;
      end
      //向左移動
      else if (Offset < 0) then
      begin
        for i := StringGrid1.Selection.Left to RLeft-1 do
        begin
          for j := 3 to 10 do
          begin
            if (StringGrid1.Cells[i, j] <> '') then
            begin
              ShowMessage('There are some orders in the selected range!');
              StringGrid1.Selection := TGridRect(Rect(RLeft, 3, RRight, 10));
              Exit;
            end;
          end;
        end;
      end;
    end;

    if (Offset <> 0) then
    begin
      for i := RLeft to RRight do
      begin
        for j := 3 to 10 do
        begin
          StringGrid1.Cells[i, j] := '';
        end;
      end;

      QUpdate.SQL.Clear;
      for i := 0 to RSOrder.Count-1 do
      begin
        DateA := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(StrToInt(RSCol[i]) + Offset));
        DateS := IncDay(DateA, -1);
        DateC := IncDay(DateA, -3);

        if (DayOfTheWeek(DateS) = 7) then
        begin
          DateS := IncDay(DateS, -1);
          DateC := IncDay(DateC, -1);
        end
        else if (DayOfTheWeek(DateC) = 7) then
        begin
          DateC := IncDay(DateC, -1);
        end;

        StringGrid1.Cells[StrToInt(RSCol[i]) + Offset, StrToInt(RSRow[i])] := RSCellData[i];
        
        QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + FormatDateTime('yyyy-mm-dd', DateA) + ''' WHERE DDBH LIKE ''' + RSOrder[i] + '%'' AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + EditA.Text + ''';');
        QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + FormatDateTime('yyyy-mm-dd', DateS) + ''' WHERE DDBH LIKE ''' + RSOrder[i] + '%'' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + EditS.Text + ''';');
        QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + FormatDateTime('yyyy-mm-dd', DateC) + ''' WHERE DDBH LIKE ''' + RSOrder[i] + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + EditC.Text + ''';');
      end;
      QUpdate.ExecSQL;
      Qupdate.SQL.Clear;
    end;

    //移動前的Column
    for i := RLeft to RRight do
    begin
      //計算該日訂單雙數
      TotalPairs := 0;
      for j := 3 to DataRow + 2 do
      begin
        if (StringGrid1.Cells[i, j] <> '') then
        begin
          PairsPCH := StrPos(PChar(StringGrid1.Cells[i, j]), 'Pairs:');
          PairsSTR := PairsPCH;
          PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
          TotalPairs := TotalPairs + StrtoInt(PairsSTR);
        end;
      end;
      StringGrid1.Cells[i, DataRow + 3] := IntToStr(TotalPairs);
    end;

    //移動後的Column
    for i := StringGrid1.Selection.Left to StringGrid1.Selection.Right do
    begin
      //計算該日期訂單雙數
      TotalPairs := 0;
      for j := 3 to DataRow + 2 do
      begin
        if (StringGrid1.Cells[i, j] <> '') then
        begin
          PairsPCH := StrPos(PChar(StringGrid1.Cells[i, j]), 'Pairs:');
          PairsSTR := PairsPCH;
          PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
          TotalPairs := TotalPairs + StrtoInt(PairsSTR);
        end;
      end;
      StringGrid1.Cells[i, DataRow + 3] := IntToStr(TotalPairs);
    end;

    //計算該月每日剩餘雙數
    for i := 1 to StringGrid1.ColCount-2 do
    begin
      TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 3]);
      if TempPairs < 0 then
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := '0'
      else
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
    end;
    SumData;
    //CheckFinalPairs;
    StringGrid1.Refresh;
    Exit;
  end;
  Mode := 'S';
end;

procedure TF_PreArrange.EnbleClick(Sender: TObject);
var
  i, TempPairs: integer;
  MyDate: TDateTime;
begin
  GetServerDate;
  MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(TCol));

  if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
  begin
    StringGrid1.ColWidths[TCol] := 105 * TrackBar1.Position div 100;

    with Query4 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add(' SELECT SCGS FROM SCRL WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(TCol) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
      Active := true;

      StringGrid1.Cells[TCol,2] := '8'; //生產工時
      StringGrid1.Refresh;

      if (RecordCount = 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('INSERT INTO SCRL (SCYEAR, SCMONTH, SCDay, DepNO, GSBH, SCGS, USERDATE, USERID, YN) VALUES(''' + Combobox1.Text + ''',''' + Combobox2.Text + ''',''' + IntToStr(TCol) + ''',''' + Edit1.Text + ''',''VA12'',0,''' + DateToStr(SDate) + ''',''' + main.Edit1.Text + ''',''1'')');
          ExecSQL;
        end;
      end
      else if (RecordCount > 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('UPDATE SCRL SET SCGS = 8 WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(TCol) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
          ExecSQL;
        end;
      end;
    end;
  end
  else
    ShowMessage('Data of this month has been locked!');

  //計算剩餘雙數
  for i := 1 to StringGrid1.ColCount-2 do
  begin
    TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 3]);
    if TempPairs < 0 then
      StringGrid1.Cells[i, StringGrid1.RowCount - 1] := '0'
    else
      StringGrid1.Cells[i, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
  end;
  SumData;
  //CheckFinalPairs;
end;

procedure TF_PreArrange.DISABLEClick(Sender: TObject);
var
  i, TempPairs: integer;
  MyDate: TDateTime;
begin
  GetServerDate;
  MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(TCol));

  if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
  begin
    for i := 3 to DataRow+2 do
    begin
      if (StringGrid1.Cells[TCol, i] <> '') then
      begin
        ShowMessage('There are some orders on this date, cannot disable!');
        Exit;
      end;
    end;

    StringGrid1.Cells[TCol,2] := '0';
    StringGrid1.Refresh;
    StringGrid1.Cells[TCol, StringGrid1.RowCount - 2] := '0';
    StringGrid1.Cells[TCol, StringGrid1.RowCount - 3] := '0';

    with Query4 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT SCGS FROM SCRL WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(TCol) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
      Active := true;

      if (RecordCount = 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('INSERT INTO SCRL (SCYEAR, SCMONTH, SCDay, DepNO, GSBH, SCGS, USERDATE, USERID, YN) VALUES(''' + Combobox1.Text + ''',''' + Combobox2.Text + ''',''' + IntToStr(TCol) + ''',''' + Edit1.Text + ''',''VA12'',0,''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''' + main.Edit1.Text + ''',''1'')');
          ExecSQL;
        end;
      end
      else if (RecordCount > 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('UPDATE SCRL SET SCGS = 0, USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''', USERID = ''' + main.Edit1.Text + ''' WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(TCol) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
          ExecSQL;
        end;
      end;

      Active := false;
      SQL.Clear;
      SQL.Add(' SELECT Qty FROM SCBZCL WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
      Active := true;

      if (RecordCount = 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('INSERT INTO SCBZCL VALUES(''' + Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''',''' + FormatDateTime('yyyy/mm/dd', MyDate) + ''',0,''VA12'',''' + main.Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''1'')');
          ExecSQL;
        end;
      end
      else if (RecordCount > 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('UPDATE SCBZCL SET Qty = 0, USERID = ''' + main.Edit1.Text + ''', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''' WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
          ExecSQL;
        end;
      end;
    end;

    //計算剩餘雙數
    for i := 1 to StringGrid1.ColCount-2 do
    begin
      TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 3]);
      if TempPairs < 0 then
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := '0'
      else
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
    end;
    SumData;
    //CheckFinalPairs;
  end
  else
    ShowMessage('Data of this month has been locked!');
end;

procedure TF_PreArrange.Button3Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  Col, Row: integer;
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
    eclapp.workbooks[1].sheets.add;
    eclapp.workbooks[1].sheets[1].name := QLEAN.FieldByName('LEANNO').AsString; //Sheet名稱

    with Query2 do
    begin
      Row := 1;
      First;
      while not eof do
      begin
        for Col := 1 to DBGridEh3.Columns.Count do
        begin
          eclApp.workbooks[1].sheets[1].Cells[Row, Col] := FieldByName(DBGRidEh3.Columns[Col-1].Title.Caption).AsString;
        end;
        Inc(Row);
        Next;
      end;
      First;
    end;

    eclapp.columns.autofit;
    ShowMessage('Succeed');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

procedure TF_PreArrange.Button2Click(Sender: TObject);
var
  Col, Row, TempLast, LastRow, i: integer;
  ColumnCount, Day, StartRow, Counter: integer;
  Pairs: integer;
  eclApp, WorkBook, GSheet: olevariant;
  Block, CMEMO, BZDate, Order, Formula1, Formula2, Formula3, Formula4, ProNo: string;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
    LastRow := 0;
    ColumnCount := DayOfTheMonth(EndOfAMonth(StrToInt(Combobox1.Text), StrToInt(Combobox2.Text))) + 2;
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  ShowExport;
  
  //查詢Lean線的資料
  with Query4 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT S.CMEMO, B.Xuong FROM BDepartment B');
    SQL.Add(' LEFT JOIN SCGXDY S ON S.GXLB = B.GXLB');
    SQL.Add(' WHERE B.GSBH = ''' + main.Edit2.Text + ''' AND B.DepName = ''' + Combobox3.Text + ''' ');
    Active := true;

    Block := FieldByName('Xuong').AsString;
    CMEMO := FieldByName('CMEMO').AsString;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, ''L''+SUBSTRING(DepName,10,2) AS Line FROM BDepartment WHERE Xuong = ''' + Block + ''' AND GXLB = ''A'' ');
    Active := true;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    GSheet := eclapp.workbooks[1].sheets[1];

    //Sheet名稱
    if (StrToInt(ComboBox2.Text) <= 9) then
      GSheet.name := 'T0' + Combobox2.Text
    else
      GSheet.name := 'T' + Combobox2.Text;
    //第一行標題
    GSheet.Range[GSheet.Cells[1, 1], GSheet.Cells[1, ColumnCount]].MergeCells := true;
    GSheet.Cells[1, 1] := COPY(Combobox3.Text, 1, 2) + '-0' + COPY(Combobox3.Text, 8, 1) + ' 廠 ' + Combobox1.Text + ' 年 ' + Combobox2.Text + '月份生產進度表--' + CMEMO + ' / ' + COPY(StringReplace(Combobox3.Text, '_', ' ', [rfReplaceAll]), 1, 8) + '(CONVERSE)' + Block + '棟';
    GSheet.Cells[1, 1].Font.Size := 36;
    //第二行本月目標
    GSheet.Range[GSheet.Cells[2, 21], GSheet.Cells[2, 24]].MergeCells := true;
    GSheet.Cells[2, 21].Font.Size := 14;
    //日期
    GSheet.Cells[3, 1] := 'D/T';
    for Col := 2 to ColumnCount-1 do
    begin
      GSheet.Cells[3, Col] := ComboBox1.Text + '/' + ComboBox2.Text + '/' + IntToStr(Col-1);
      GSheet.Cells[3, Col].NumberFormatLocal := 'm'+'/'+'d'; //設定日期格式
    end;
    //TTL
    GSheet.Range[GSheet.Cells[4, ColumnCount], GSheet.Cells[3, ColumnCount]].MergeCells := true;
    GSheet.Cells[3, ColumnCount] := 'TTL';
    GSheet.Cells[3, ColumnCount].Font.Size := 14;
    GSheet.Cells[5, ColumnCount] := '=SUM(B5:A' + Alphabet[ColumnCount-27] + '5)';
    //星期
    GSheet.Cells[4, 1] := 'DAY';
    for Col := 2 to ColumnCount-1 do
    begin
      if (Col <= 26) then
        GSheet.Cells[4, Col] := '=CHOOSE(WEEKDAY(' + Alphabet[Col] + '3, 1),"日","一","二","三","四","五","六")'
      else
        GSheet.Cells[4, Col] := '=CHOOSE(WEEKDAY(A' + Alphabet[Col-26] + '3, 1),"日","一","二","三","四","五","六")';
    end;
    //生產時數
    GSheet.Cells[5, 1] := 'HR';

    //排程資料
    TempLast := 0;
    StartRow := 6;
    Counter := 1;

    for i := 1 to 31 do
    begin
      HR[i] := 0;
    end;

    while not Query4.Eof do
    begin
      with QSearch do
      begin
        //前月剩餘雙數
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT InitialPairs FROM ScheduleData WHERE PlanYear = ' + ComboBox1.Text + ' AND PlanMonth = ' + ComboBox2.Text + ' AND PlanDay = 0 AND DepNo = ''' + Query4.FieldByName('ID').AsString + ''' ');
        Active := true;
        Pairs := FieldByName('InitialPairs').AsInteger;

        Active := false;
        SQL.Clear;
        SQL.Add(' SELECT * FROM (');
        SQL.Add('   SELECT SCRL.DepNO, SCRL.SCGS, SCBZCL.BZDate, DAY(BZDate) AS DAY, SCBZCL.Qty, SMDD.YSBH, SMDD.Pairs, SMDD.ROrder,');
        SQL.Add('   CASE WHEN SMDD.Pairs >= SMDD.OPairs THEN ''N'' WHEN SMDD.YSBH IS NULL THEN ''N'' ELSE ''S'' END AS Flag FROM SCRL');
        SQL.Add('   LEFT JOIN SCBZCL ON YEAR(SCBZCL.BZDate) = SCRL.SCYEAR AND MONTH(SCBZCL.BZDate) = SCRL.SCMONTH AND DAY(SCBZCL.BZDate) = SCRL.SCDAY AND SCBZCL.DepNO = SCRL.DepNO');
        SQL.Add('   LEFT JOIN (');
        SQL.Add('     SELECT YSBH, SUM(Qty) AS Pairs, RDepNo, RPlanDate, ROrder, DDZL.Pairs AS OPairs FROM SMDD');
        SQL.Add('     LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
        SQL.Add('     WHERE GXLB = ''A'' AND SMDD.GSBH = ''' + main.Edit2.Text + ''' ');
        SQL.Add('     GROUP BY YSBH, RDepNo, RPlanDate, ROrder, DDZL.Pairs');
        SQL.Add('   ) AS SMDD ON CONVERT(varchar, SMDD.RPlanDate, 111) = CONVERT(varchar, SCBZCL.BZDate, 111) AND SMDD.RDepNo = SCRL.DepNO');
        SQL.Add('   LEFT JOIN BDepartment ON BDepartment.ID = SCRL.DepNO');
        SQL.Add('   WHERE SCRL.SCYEAR = ' + ComboBox1.Text + ' AND SCRL.SCMONTH = ' + ComboBox2.Text + ' AND SCBZCL.DepNO = ''' + Query4.FieldByName('ID').AsString + ''' ');
        SQL.Add('   UNION ALL');
        SQL.Add('   SELECT DepNo, 0, CONVERT(DateTime,CONVERT(varchar, 10000*PlanYear+100*PlanMonth+PlanDay)), PlanDay, SLTBUYNO, ''SLT'', InitialPairs, 99, ''N'' FROM ScheduleData');
        SQL.Add('   WHERE PlanYear = ' + ComboBox1.Text + ' AND PlanMonth = ' + ComboBox2.Text + ' AND PlanDay <> 0 AND DepNo = ''' + Query4.FieldByName('ID').AsString + '''');
        SQL.Add(' ) AS Data');
        SQL.Add(' ORDER BY Data.DepNO, Data.BZDate, Data.ROrder');
        Active := true;

        Day := 0;
        for i := 1 to 31 do
        begin
          Cap[i] := 0;
        end;

        while not eof do
        begin
          if (FieldByName('YSBH').AsString <> '') then
          begin
            with Query5 do
            begin
              if (QSearch.FieldByName('YSBH').AsString <> 'SLT') then
              begin
                Query7.Active := false;
                Query7.SQL.Clear;
                Query7.SQL.Add('SELECT DISTINCT ProNo FROM SCBBSS WHERE SCBH = ''' + QSearch.FieldByName('YSBH').AsString + ''' AND GXLB = ''A''');
                Query7.Active := true;

                if (Query7.RecordCount > 0) then
                begin
                  ProNo := QuotedStr(Query7.FieldByName('ProNo').AsString);
                  Query7.Next;
                  while not Query7.eof do
                  begin
                    ProNo := ProNo + ',' + QuotedStr(Query7.FieldByName('ProNo').AsString);
                    Query7.Next;
                  end;

                  Active := false;
                  SQL.Clear;
                  SQL.Add(' SELECT REPLACE(X.DAOMH,''LY-'','''') AS LY, D.DDBH AS RY, '''' AS ''Material/VT'', S.Style AS ''CHAT LIEU'', ');
                  SQL.Add(' CASE WHEN X.XTMH LIKE ''%-[0-9]%'' AND X.XTMH NOT LIKE ''%[0-9]-%'' THEN SUBSTRING(X.XTMH, CHARINDEX(''-'', X.XTMH)+1, LEN(X.XTMH)) WHEN X.XTMH LIKE ''%[0-9]-%'' AND X.XTMH NOT LIKE ''%-[0-9]%'' THEN X.XTMH ELSE X.XTMH END AS ''Last#'', ');
                  SQL.Add(' CONVERT(varchar(6), MONTH(SUBSTRING(D.BUYNO,1,6)+''01''))+'' Buy'' AS BUY, SCZL.Process AS ''Process'',');
                  SQL.Add(' CASE WHEN POH >= 1.5 THEN 1 WHEN POH >= 1.25 AND POH < 1.5 THEN 2 WHEN POH >= 1.13 AND POH <= 1.24 THEN 3 WHEN POH >= 1.01 AND POH <= 1.12 THEN 4');
                  SQL.Add('      WHEN POH >= 0.86 AND POH <= 1.0 THEN 5 WHEN POH >= 0.75 AND POH <= 0.85 THEN 6 WHEN POH >= 0.61 AND POH <= 0.74 THEN 7 WHEN POH <= 0.6 THEN 8 END AS ''Cut/C'',');
                  SQL.Add(' CASE WHEN CHARINDEX(''/'',D.ARTICLE)>0 THEN SUBSTRING(D.ARTICLE,1,CHARINDEX(''/'',D.ARTICLE)-1) ELSE D.ARTICLE END AS SKU, SCZL.Shape AS ''Stitching/M'', SMDD.Pairs AS ''Quantity/SL'',');
                  SQL.Add(' CASE WHEN SUM(SCBBSS.Qty) >= SMDD.Pairs THEN ''OK ''+CONVERT(varchar(2), MONTH(MAX(SCBB.SCDate)))+''/''+ CONVERT(varchar(2), DAY(MAX(SCBB.SCDate))) ');
                  SQL.Add(' ELSE ''-''+CONVERT(varchar, CEILING(SMDD.Pairs-SUM(SCBBSS.Qty))) END AS ''Forming/G'',');
                  SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS CSD, ');
                  SQL.Add(' CASE WHEN L.YWSM = ''NETHERLANDS B.V'' THEN ''B.V'' ELSE L.YWSM END AS ''Country/N'' FROM DDZL D');
                  SQL.Add(' LEFT JOIN (');
                  SQL.Add('   SELECT RDepNo, YSBH, SUM(Qty) AS Pairs FROM SMDD');
                  SQL.Add('   WHERE GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''' ');
                  SQL.Add('   GROUP BY RDepNo, YSBH');
                  SQL.Add(' ) AS SMDD ON SMDD.YSBH = D.DDBH');
                  SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
                  SQL.Add(' LEFT JOIN SCXXDV S ON S.XieXing = D.XieXing AND S.SheHao = D.SheHao');
                  SQL.Add(' LEFT JOIN CLLBZL C ON C.CLLB = X.CLID');
                  SQL.Add(' LEFT JOIN LBZLS L ON L.LB = ''06'' and L.LBDH = D.DDGB');
                  SQL.Add(' LEFT JOIN SCZL ON SCZL.ZLBH = D.DDBH');
                  SQL.Add(' LEFT JOIN (');
                  SQL.Add('   SELECT SCXXCL.XieXing, SCXXCL.SheHao, ROUND(MAX(CONVERT(float, SCXXCL.BZCL))/SUM(SCXXCL.BZRS+SCXXCL.BZJS), 2) AS POH FROM SCXXCL GROUP BY XieXing, SheHao');
                  SQL.Add(' ) AS SCXXCL ON SCXXCL.XieXing = D.XieXing AND SCXXCL.SheHao = D.SheHao');
                  SQL.Add(' LEFT JOIN SCBBSS ON SCBBSS.SCBH = D.DDBH');
                  SQL.Add(' LEFT JOIN SCBB ON SCBB.ProNo = SCBBSS.ProNo');
                  SQL.Add(' WHERE D.DDBH = ''' + QSearch.FieldByName('YSBH').AsString + ''' AND SCBBSS.ProNO IN (' + ProNo + ') AND SCBBSS.GXLB = ''A'' AND SMDD.RDepNo = ''' + Query4.FieldByName('ID').AsString + ''' ');
                  SQL.Add(' GROUP BY X.DAOMH, D.DDBH, S.Style, X.XTMH, D.BUYNO, SCZL.Process, SCXXCL.POH, D.ARTICLE, SCZL.Shape, SMDD.Pairs, D.ShipDate, L.YWSM');
                  Active := true;
                end
                else begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add(' SELECT REPLACE(X.DAOMH,''LY-'','''') AS LY, D.DDBH AS RY, '''' AS ''Material/VT'', S.Style AS ''CHAT LIEU'', ');
                  SQL.Add(' CASE WHEN X.XTMH LIKE ''%-[0-9]%'' AND X.XTMH NOT LIKE ''%[0-9]-%'' THEN SUBSTRING(X.XTMH, CHARINDEX(''-'', X.XTMH)+1, LEN(X.XTMH)) WHEN X.XTMH LIKE ''%[0-9]-%'' AND X.XTMH NOT LIKE ''%-[0-9]%'' THEN X.XTMH ELSE X.XTMH END AS ''Last#'', ');
                  SQL.Add(' CONVERT(varchar(6), MONTH(SUBSTRING(D.BUYNO,1,6)+''01''))+'' Buy'' AS BUY, SCZL.Process AS ''Process'',');
                  SQL.Add(' CASE WHEN POH >= 1.5 THEN 1 WHEN POH >= 1.25 AND POH < 1.5 THEN 2 WHEN POH >= 1.13 AND POH <= 1.24 THEN 3 WHEN POH >= 1.01 AND POH <= 1.12 THEN 4');
                  SQL.Add('      WHEN POH >= 0.86 AND POH <= 1.0 THEN 5 WHEN POH >= 0.75 AND POH <= 0.85 THEN 6 WHEN POH >= 0.61 AND POH <= 0.74 THEN 7 WHEN POH <= 0.6 THEN 8 END AS ''Cut/C'',');
                  SQL.Add(' CASE WHEN CHARINDEX(''/'',D.ARTICLE)>0 THEN SUBSTRING(D.ARTICLE,1,CHARINDEX(''/'',D.ARTICLE)-1) ELSE D.ARTICLE END AS SKU, SCZL.Shape AS ''Stitching/M'', SMDD.Pairs AS ''Quantity/SL'', '''' AS ''Forming/G'',');
                  SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS CSD, ');
                  SQL.Add(' CASE WHEN L.YWSM = ''NETHERLANDS B.V'' THEN ''B.V'' ELSE L.YWSM END AS ''Country/N'' FROM DDZL D');
                  SQL.Add(' LEFT JOIN (');
                  SQL.Add('   SELECT RDepNo, YSBH, SUM(Qty) AS Pairs FROM SMDD');
                  SQL.Add('   WHERE GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''' ');
                  SQL.Add('   GROUP BY RDepNo, YSBH');
                  SQL.Add(' ) AS SMDD ON SMDD.YSBH = D.DDBH');
                  SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
                  SQL.Add(' LEFT JOIN SCXXDV S ON S.XieXing = D.XieXing AND S.SheHao = D.SheHao');
                  SQL.Add(' LEFT JOIN CLLBZL C ON C.CLLB = X.CLID');
                  SQL.Add(' LEFT JOIN LBZLS L ON L.LB = ''06'' and L.LBDH = D.DDGB');
                  SQL.Add(' LEFT JOIN SCZL ON SCZL.ZLBH = D.DDBH');
                  SQL.Add(' LEFT JOIN (');
                  SQL.Add('   SELECT SCXXCL.XieXing, SCXXCL.SheHao, ROUND(MAX(CONVERT(float, SCXXCL.BZCL))/SUM(SCXXCL.BZRS+SCXXCL.BZJS), 2) AS POH FROM SCXXCL GROUP BY XieXing, SheHao');
                  SQL.Add(' ) AS SCXXCL ON SCXXCL.XieXing = D.XieXing AND SCXXCL.SheHao = D.SheHao');
                  SQL.Add(' WHERE D.DDBH = ''' + QSearch.FieldByName('YSBH').AsString + ''' AND SMDD.RDepNo = ''' + Query4.FieldByName('ID').AsString + ''' ');
                  Active := true;
                end;
              end
              else
              begin
                Active := false;
                SQL.Clear;
                SQL.Add(' SELECT '''' AS LY, '''' AS RY, '''' AS ''Material/VT'', '''' AS ''CHAT LIEU'', '''' AS ''Last#'', '''' AS BUY, '''' AS Process, Null AS ''Cut/C'',');
                SQL.Add(' ''' + QSearch.FieldByName('Qty').AsString + 'BUY 快速訂單'' AS SKU, Null AS ''Stitching/M'', ' + QSearch.FieldByName('Pairs').AsString + ' AS ''Quantity/SL'', '''' AS ''Forming/G'', '''' AS CSD, '''' AS ''Country/N''');
                Active := true;
              end;
            end;

            if (Day <> QSearch.FieldByName('DAY').AsInteger) then
            begin
              TempLast := 1;
              Day := QSearch.FieldByName('DAY').AsInteger;
            end
            else begin
              Inc(TempLast);
            end;

            for Row := 0 to StringGrid2.RowCount-1 do
            begin
              GSheet.Cells[Row + StartRow + (TempLast-1)*14, 1] := Query5.Fields[Row].DisplayLabel;
              GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1] := Query5.Fields[Row].AsString;
              if (Query5.Fields[Row].DisplayLabel = 'RY') AND (QSearch.FieldByName('Flag').AsString = 'S') then
              begin
                with Query3 do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('SELECT ROW_NUMBER() OVER(ORDER BY MIN(SUBSTRING(DDBH,12,3)) ASC) AS RowNo, YSBH, RDepNo FROM SMDD WHERE YSBH = ''' + QSearch.FieldByName('YSBH').AsString + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''A'' GROUP BY YSBH, RDepNo');
                  Active := true;
                  Locate('RDepNo', Query4.FieldByName('ID').AsString, []);
                end;
                GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1] := QSearch.FieldByName('YSBH').AsString + '-' + Query3.FieldByName('RowNo').AsString;
              end
              else if (Query5.Fields[Row].DisplayLabel = 'Stitching/M') then
              begin
                //Star
                if (Query5.Fields[Row].AsInteger = 1) then
                begin
                  GSheet.Shapes.AddShape(92, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 19, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);
                end
                //Double Star
                else if (Query5.Fields[Row].AsInteger = 2) then
                begin
                  GSheet.Shapes.AddShape(92, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 10, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);

                  GSheet.Shapes.AddShape(92, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 28, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);
                end
                //Explosion
                else if (Query5.Fields[Row].AsInteger = 3) then
                begin
                  GSheet.Shapes.AddShape(89, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 19, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);
                end
                //Circle
                else if (Query5.Fields[Row].AsInteger = 4) then
                begin
                  GSheet.Shapes.AddShape(9, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 15, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight + 8, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);
                end
                //Double Star & Explosion
                else if (Query5.Fields[Row].AsInteger = 5) then
                begin
                  GSheet.Shapes.AddShape(92, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 19, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);

                  GSheet.Shapes.AddShape(92, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 2, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);

                  GSheet.Shapes.AddShape(89, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Left + 36, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].Top, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight, GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].RowHeight).Select;
                  eclApp.Selection.ShapeRange.Line.Transparency := 1;
                  eclApp.Selection.ShapeRange.Fill.ForeColor.RGB := RGB(85, 142, 213);
                end;
                GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1] := ''; //清除圖案代號
              end
              else if (Query5.Fields[Row].DisplayLabel = '成型/G') then
              begin
                if (COPY(Query5.Fields[Row].AsString, 1, 1) <> '-') then
                  GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].NumberFormatLocal := 'm'+'/'+'d'; //設定日期格式
              end
              else if (Query5.Fields[Row].DisplayLabel = 'CSD') then
              begin
                GSheet.Cells[Row + StartRow + (TempLast-1)*14, QSearch.FieldByName('DAY').AsInteger+1].NumberFormatLocal := 'm'+'/'+'d'; //設定日期格式
              end;
            end;

            //紀錄最後一個Row的位置
            if (LastRow < StartRow + TempLast*14) then
            begin
              LastRow := StartRow + TempLast*14;
              //GSheet.Range[GSheet.Cells[LastRow-1, 1], GSheet.Cells[LastRow-1, ColumnCount]].Borders[4].Weight := 3; //訂單分隔線
            end;
          end;

          if (QSearch.FieldByName('YSBH').AsString <> 'SLT') then
          begin
            HR[QSearch.FieldByName('DAY').AsInteger] := QSearch.FieldByName('SCGS').AsFloat;
            Cap[QSearch.FieldByName('DAY').AsInteger] := QSearch.FieldByName('Qty').AsInteger;
          end;
          QSearch.Next;
        end;

        if (RecordCount > 0) then
        begin
          GSheet.Range[GSheet.Cells[StartRow, 2], GSheet.Cells[LastRow-1, ColumnCount]].Font.Size := 10;

          Total[Counter] := LastRow+1;

          //統計Title
          GSheet.Cells[LastRow, 1] := '訂單數量';
          GSheet.Cells[LastRow+1, 1] := '保證產量';
          GSheet.Cells[LastRow+2, 1] := '小時目標';
          GSheet.Cells[LastRow+3, 1] := Pairs;

          GSheet.Range[GSheet.Cells[LastRow, 1], GSheet.Cells[LastRow+3, ColumnCount]].Borders[1].Weight := 3;
          GSheet.Range[GSheet.Cells[LastRow, 1], GSheet.Cells[LastRow+3, ColumnCount]].Borders[2].Weight := 3;
          GSheet.Range[GSheet.Cells[LastRow, 1], GSheet.Cells[LastRow+3, ColumnCount]].Borders[3].Weight := 3;
          GSheet.Range[GSheet.Cells[LastRow, 1], GSheet.Cells[LastRow+3, ColumnCount]].Borders[4].Weight := 3;

          //生產工時
          for Col := 2 to ColumnCount-1 do
          begin
            GSheet.Cells[5, Col] := HR[Col-1];
          end;
          //統計欄位公式
          for Col := 2 to ColumnCount-1 do
          begin
            Formula1 := '=';
            Row := StartRow;
            while (Row < LastRow) do
            begin
              if (Col <= 26) then
                Formula1 := Formula1 + '+' + Alphabet[Col] + IntToStr(Row+10)
              else
                Formula1 := Formula1 + '+A' + Alphabet[Col-26] + IntToStr(Row+10);
              Inc(Row, 14);
            end;
            GSheet.Cells[LastRow, Col] := Formula1;
            GSheet.Cells[LastRow+1, Col] := Cap[Col-1];
            if (Col <= 26) then
            begin
              GSheet.Cells[LastRow+2, Col] := '=IF(ISERROR(INT(' + Alphabet[Col] + IntToStr(LastRow+1) + '/' + Alphabet[Col] + '5)),0,INT(' + Alphabet[Col] + IntToStr(LastRow+1) + '/' + Alphabet[Col] + '5))';
              GSheet.Cells[LastRow+3, Col] := '=IF(' + Alphabet[Col-1] + IntToStr(LastRow+3) + '+' + Alphabet[Col] + IntToStr(LastRow) + '-' + Alphabet[Col] + IntToStr(LastRow+1) + '<0,0,' + Alphabet[Col-1] + IntToStr(LastRow+3) + '+' + Alphabet[Col] + IntToStr(LastRow) + '-' + Alphabet[Col] + IntToStr(LastRow+1) + ')';
            end
            else begin
              GSheet.Cells[LastRow+2, Col] := '=IF(ISERROR(INT(A' + Alphabet[Col-26] + IntToStr(LastRow+1) + '/A' + Alphabet[Col-26] + '5)),0,INT(A' + Alphabet[Col-26] + IntToStr(LastRow+1) + '/A' + Alphabet[Col-26] + '5))';
              if (Col = 27) then
                GSheet.Cells[LastRow+3, Col] := '=IF(Z' + IntToStr(LastRow+3) + '+A' + Alphabet[Col-26] + IntToStr(LastRow) + '-A' + Alphabet[Col-26] + IntToStr(LastRow+1) + '<0,0,Z' + IntToStr(LastRow+3) + '+A' + Alphabet[Col-26] + IntToStr(LastRow) + '-A' + Alphabet[Col-26] + IntToStr(LastRow+1) + ')'
              else
                GSheet.Cells[LastRow+3, Col] := '=IF(A' + Alphabet[Col-27] + IntToStr(LastRow+3) + '+A' + Alphabet[Col-26] + IntToStr(LastRow) + '-A' + Alphabet[Col-26] + IntToStr(LastRow+1) + '<0,0,A' + Alphabet[Col-27] + IntToStr(LastRow+3) + '+A' + Alphabet[Col-26] + IntToStr(LastRow) + '-A' + Alphabet[Col-26] + IntToStr(LastRow+1) + ')';
            end;
          end;
          GSheet.Range[GSheet.Cells[LastRow+2, 2], GSheet.Cells[LastRow+2, ColumnCount]].Font.Color := clRed;
          GSheet.Range[GSheet.Cells[StartRow, ColumnCount], GSheet.Cells[LastRow-1, ColumnCount]].MergeCells := true;
          GSheet.Cells[StartRow, ColumnCount] := Query4.FieldByName('Line').AsString;
          GSheet.Range[GSheet.Cells[StartRow, ColumnCount], GSheet.Cells[LastRow-1, ColumnCount]].VerticalAlignment := $FFFFEFF4;
          GSheet.Cells[StartRow, ColumnCount].Font.Size := 24;
          GSheet.Cells[LastRow, ColumnCount] := '=SUM(B' + IntToStr(LastRow) + ':A' + Alphabet[ColumnCount-27] + IntToStr(LastRow) + ')';
          GSheet.Cells[LastRow+1, ColumnCount] := '=SUM(B' + IntToStr(LastRow+1) + ':A' + Alphabet[ColumnCount-27] + IntToStr(LastRow+1) + ')';

          StartRow := LastRow+4;
          GSheet.Rows[LastRow+4].PageBreak := 1;
        end;
      end;
      Inc(Counter);
      Query4.Next;
    end;
    GSheet.Rows[LastRow+4].PageBreak := 0;

    //Total
    GSheet.Cells[LastRow+5, 1] := 'Total';
    for Col := 2 to ColumnCount do
    begin
      Formula3 := '=';
      for Row := 1 to 10 do
      begin
        if (Total[Row] > 0) then
        begin
          if (Col <=26) then
            Formula3 := Formula3 + '+' + Alphabet[Col] + IntToStr(Total[Row])
          else
            Formula3 := Formula3 + '+A' + Alphabet[Col-26] + IntToStr(Total[Row]);
        end;
      end;
      GSheet.Cells[LastRow+5, Col] := Formula3;
      GSheet.Cells[LastRow+5, Col].Font.Color := clRed;
    end;

    //簽名欄位
    GSheet.Range[GSheet.Cells[LastRow+6, 2], GSheet.Cells[LastRow+6, 4]].MergeCells := true;
    GSheet.Cells[LastRow+6, 2] := '審核:';
    GSheet.Range[GSheet.Cells[LastRow+6, 9], GSheet.Cells[LastRow+6, 11]].MergeCells := true;
    GSheet.Cells[LastRow+6, 9] := '廠主管:';
    GSheet.Range[GSheet.Cells[LastRow+6, 16], GSheet.Cells[LastRow+6, 18]].MergeCells := true;
    GSheet.Cells[LastRow+6, 16] := '生管:';
    GSheet.Range[GSheet.Cells[LastRow+6, 23], GSheet.Cells[LastRow+6, 25]].MergeCells := true;
    GSheet.Cells[LastRow+6, 23] := '製表:';
    GSheet.Range[GSheet.Cells[LastRow+6, 27], GSheet.Cells[LastRow+6, 29]].MergeCells := true;
    GSheet.Cells[LastRow+6, 27] := 'T-DCC-057B';
    GSheet.Cells[LastRow+6, 1].RowHeight := 30;
    GSheet.Range[GSheet.Cells[LastRow+6, 1], GSheet.Cells[LastRow+6, ColumnCount]].Font.Size := 16;

    //設定欄寬
    GSheet.Range[GSheet.Cells[1, 1], GSheet.Cells[LastRow+5, 1]].ColumnWidth := 10;

    //第二行本月目標
    GSheet.Cells[2, 21] := '="本月目標："&A' + Alphabet[ColumnCount-26] + IntToStr(LastRow+5) + '&"雙 (PRS)"';

    //加上邊框
    GSheet.Range[GSheet.Cells[3, 1], GSheet.Cells[5, ColumnCount]].Borders[1].Weight := 3;
    GSheet.Range[GSheet.Cells[3, 1], GSheet.Cells[5, ColumnCount]].Borders[2].Weight := 3;
    GSheet.Range[GSheet.Cells[3, 1], GSheet.Cells[5, ColumnCount]].Borders[3].Weight := 3;
    GSheet.Range[GSheet.Cells[3, 1], GSheet.Cells[5, ColumnCount]].Borders[4].Weight := 3;
    GSheet.Range[GSheet.Cells[3, 1], GSheet.Cells[LastRow+3, 1]].Borders[2].Weight := 3;
    GSheet.Range[GSheet.Cells[3, ColumnCount], GSheet.Cells[LastRow+3, ColumnCount]].Borders[1].Weight := 3;
    GSheet.Range[GSheet.Cells[3, ColumnCount], GSheet.Cells[LastRow+3, ColumnCount]].Borders[2].Weight := 3;
    GSheet.Range[GSheet.Cells[LastRow+5, 1], GSheet.Cells[LastRow+5, ColumnCount]].Borders[1].Weight := 3;
    GSheet.Range[GSheet.Cells[LastRow+5, 1], GSheet.Cells[LastRow+5, ColumnCount]].Borders[2].Weight := 3;
    GSheet.Range[GSheet.Cells[LastRow+5, 1], GSheet.Cells[LastRow+5, ColumnCount]].Borders[3].Weight := 3;
    GSheet.Range[GSheet.Cells[LastRow+5, 1], GSheet.Cells[LastRow+5, ColumnCount]].Borders[4].Weight := 3;

    //文字置中
    GSheet.Range[GSheet.Cells[1, 1], GSheet.Cells[LastRow+5, ColumnCount]].HorizontalAlignment := xlCenter;

    //調整工時為0的Column欄寬及背景色
    for Col := 2 to ColumnCount-1 do
    begin
      if (HR[Col-1] = 0) then
      begin
        GSheet.Range[GSheet.Cells[3, Col], GSheet.Cells[LastRow+3, Col]].Interior.Color := clYellow;
        GSheet.Range[GSheet.Cells[3, Col], GSheet.Cells[LastRow+3, Col]].Font.Size := 6;
        GSheet.Range[GSheet.Cells[3, Col], GSheet.Cells[LastRow+3, Col]].ColumnWidth := 2;

        GSheet.Cells[LastRow+5, Col].Interior.Color := clYellow;
        GSheet.Cells[LastRow+5, Col].Font.Size := 6;
        GSheet.Cells[LastRow+5, Col].ColumnWidth := 2;
      end;
    end;

    //凍結儲存格
    GSheet.Cells[6, 2].Select;
    eclApp.ActiveWindow.FreezePanes := True;

    //列印版面配置
    GSheet.PageSetup.PrintTitleRows := '$1:$5';
    GSheet.PageSetup.HeaderMargin := 0;
    GSheet.PageSetup.HeaderMargin := 0;
    GSheet.PageSetup.TopMargin := 0;
    GSheet.PageSetup.BottomMargin := 0;
    GSheet.PageSetup.LeftMargin := 0;
    GSheet.PageSetup.RightMargin := 0;
    GSheet.PageSetup.CenterHorizontally := 1;
    //橫印,直印改成xlPortrait
    GSheet.PageSetup.Orientation := xlLandscape;
    //設定列印縮放大小
    if (ColumnCount-2 = 31) then
      GSheet.PageSetup.Zoom := 54
    else
      GSheet.PageSetup.Zoom := 55;
    //GSheet.PageSetup.FitToPagesWide := 1;
    //GSheet.PageSetup.FitToPagesTall := 1;

    HideExport;
    ShowMessage('Succeed!!');
    eclApp.Visible := True;

  except on F:Exception do
    showmessage(F.Message);
  end;
end;

procedure TF_PreArrange.StringGrid1DblClick(Sender: TObject);
var
  Pairs, HR, DC: string;
  Isnumber, TempPairs, Col, Counter: integer;
  IsDouble: Double;
  Parameters: TStringList;
  MyDate: TDateTime;
begin
  GetServerDate;

  //設定前一個月剩餘雙數
  if (StringGrid1.Col = 0) AND (StringGrid1.Row = StringGrid1.RowCount - 1) then
  begin
    if InputQuery('','Please enter the initial value of this month', Pairs) = true then
    begin
      if TryStrToInt(Pairs, Isnumber) then
      begin
        StringGrid1.Cells[0, StringGrid1.RowCount - 1] := Pairs;
        with Query4 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('SELECT * FROM ScheduleData WHERE PlanYear = ' + Combobox1.Text + ' AND PlanMonth = ' + Combobox2.Text + ' AND PlanDay = 0 AND DepNo = ''' + Edit1.Text + ''' ');
          Active := true;

          if (RecordCount = 0) then
          begin
            with QUpdate do
            begin
              SQL.Clear;
              SQL.Add('INSERT INTO ScheduleData VALUES(' + Combobox1.Text + ',' + Combobox2.Text + ',0,''' + Edit1.Text + ''',' + Pairs + ',0)');
              ExecSQL;
            end;
          end
          else if (RecordCount > 0) then
          begin
            with QUpdate do
            begin
              SQL.Clear;
              SQL.Add('UPDATE ScheduleData SET InitialPairs = ' + Pairs + ' WHERE PlanYear = ' + Combobox1.Text + ' AND PlanMonth = ' + Combobox2.Text + ' AND PlanDay = 0 AND DepNo = ''' + Edit1.Text + ''' ');
              ExecSQL;
            end;
          end;
        end;
      end
      else
        ShowMessage('Numbers only!');
    end;
  end
  //設定上班工時
  else if (StringGrid1.Col >= 1) AND (StringGrid1.Col <= StringGrid1.ColCount-2) AND (StringGrid1.Row = 2) then
  begin
    MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(StringGrid1.Col));

    if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
    begin
      if InputQuery('','Please enter the working hour of this date', HR) = true then
      begin
        if TryStrToFloat(HR, IsDouble) then
        begin
          if (IsDouble > 0) then
            StringGrid1.ColWidths[StringGrid1.Col] := 105 * TrackBar1.Position div 100
          else if (IsDouble = 0) then
            StringGrid1.ColWidths[StringGrid1.Col] := 12 * TrackBar1.Position div 100;

          if (IsDouble > 0) AND (StrToInt(StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount-3]) > 0) then
          begin
            StringGrid1.Cells[StringGrid1.Col, 2] := HR;
            StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount-2] := IntToStr(Floor(StrToFloat(StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount-3]) / IsDouble));
          end
          else begin
            StringGrid1.Cells[StringGrid1.Col, 2] := HR;
            StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount-2] := '0';
          end;

          with Query4 do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT SCGS FROM SCRL WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(StringGrid1.Col) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
            Active := true;

            if (RecordCount = 0) then
            begin
              with QUpdate do
              begin
                SQL.Clear;
                SQL.Add('INSERT INTO SCRL (SCYEAR, SCMONTH, SCDay, DepNO, GSBH, SCGS, USERDATE, USERID, YN) VALUES(''' + Combobox1.Text + ''',''' + Combobox2.Text + ''',''' + IntToStr(StringGrid1.Col) + ''',''' + Edit1.Text + ''',''VA12'',' + HR + ',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''' + main.Edit1.Text + ''',''1'')');
                ExecSQL;
              end;
            end
            else if (RecordCount > 0) then
            begin
              with QUpdate do
              begin
                SQL.Clear;
                SQL.Add('UPDATE SCRL SET SCGS = ' + HR + ', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''', USERID = ''' + main.Edit1.Text + ''' WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(StringGrid1.Col) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
                ExecSQL;
              end;
            end;
          end;
        end
        else
          ShowMessage('Numbers only!');
      end;
    end
    else begin
      ShowMessage('Working hour of this month has been locked!');
    end;
  end
  //設定目標產能
  else if (StringGrid1.Col >= 1) AND (StringGrid1.Col <= StringGrid1.ColCount-2) AND (StringGrid1.Row = StringGrid1.RowCount - 3) then
  begin
    MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(StringGrid1.Col));

    if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
    begin
      if InputQuery('','Please enter the capacity of this date', DC) = true then
      begin
        if TryStrToInt(DC, Isnumber) then
        begin
          MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(StringGrid1.Col));
          if (Isnumber > 0) AND (StrToFloat(StringGrid1.Cells[StringGrid1.Col, 2]) > 0) then
          begin
            StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount - 3] := DC;
            StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount - 2] := IntToStr(Floor(Isnumber / StrToFloat(StringGrid1.Cells[StringGrid1.Col, 2])));
          end
          else begin
            StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount - 3] := DC;
            StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount - 2] := '0';
          end;

          with Query4 do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT Qty FROM SCBZCL WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
            Active := true;

            if (RecordCount = 0) then
            begin
              with QUpdate do
              begin
                SQL.Clear;
                SQL.Add('INSERT INTO SCBZCL VALUES(''' + Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''',''' + FormatDateTime('yyyy/mm/dd', MyDate) + ''',''' + StringGrid1.Cells[StringGrid1.Col, StringGrid1.RowCount-3] + ''',''VA12'',''' + main.Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''1'')');
                ExecSQL;
              end;
            end
            else if (RecordCount > 0) then
            begin
              with QUpdate do
              begin
                SQL.Clear;
                SQL.Add('UPDATE SCBZCL SET Qty = ' + DC + ', USERID = ''' + main.Edit1.Text + ''', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''' WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
                ExecSQL;
              end;
            end;
          end;
        end
        else
          ShowMessage('Numbers only!');
      end;
    end
    else begin
      ShowMessage('Capacity of this month has been locked!');
    end;
  end
  //設定全部上班工時
  else if (StringGrid1.Col = 0) AND (StringGrid1.Row = 2) then
  begin
    MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/1');

    if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
    begin
      if InputQuery('','Please enter the working hour of this month', HR) = true then
      begin
        if TryStrToFloat(HR, IsDouble) then
        begin
          for Col := 1 to StringGrid1.ColCount-2 do
          begin
            if (IsDouble > 0) then
              StringGrid1.ColWidths[Col] := 105 * TrackBar1.Position div 100
            else if (IsDouble = 0) then
              StringGrid1.ColWidths[Col] := 12 * TrackBar1.Position div 100;

            if (IsDouble > 0) AND (StrToInt(StringGrid1.Cells[Col, StringGrid1.RowCount-3]) > 0) then
            begin
              StringGrid1.Cells[Col, 2] := HR;
              StringGrid1.Cells[Col, StringGrid1.RowCount-2] := IntToStr(Floor(StrToFloat(StringGrid1.Cells[Col, StringGrid1.RowCount-3]) / IsDouble));
            end
            else begin
              StringGrid1.Cells[Col, 2] := HR;
              StringGrid1.Cells[Col, StringGrid1.RowCount-2] := '0';
            end;

            with Query4 do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT SCGS FROM SCRL WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(Col) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
              Active := true;

              if (RecordCount = 0) then
              begin
                with QUpdate do
                begin
                  SQL.Clear;
                  SQL.Add('INSERT INTO SCRL (SCYEAR, SCMONTH, SCDay, DepNO, GSBH, SCGS, USERDATE, USERID, YN) VALUES(''' + Combobox1.Text + ''',''' + Combobox2.Text + ''',''' + IntToStr(Col) + ''',''' + Edit1.Text + ''',''VA12'',' + HR + ',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''' + main.Edit1.Text + ''',''1'')');
                  ExecSQL;
                end;
              end
              else if (RecordCount > 0) then
              begin
                with QUpdate do
                begin
                  SQL.Clear;
                  SQL.Add('UPDATE SCRL SET SCGS = ' + HR + ', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''', USERID = ''' + main.Edit1.Text + ''' WHERE SCYEAR = ''' + Combobox1.Text + ''' AND SCMONTH = ''' + Combobox2.Text + ''' AND SCDAY = ''' + IntToStr(Col) + ''' AND DepNO = ''' + Edit1.Text + ''' AND GSBH = ''VA12'' ');
                  ExecSQL;
                end;
              end;
            end;
          end;
        end;

      end
      else
        ShowMessage('Numbers only!');
    end
    else
      ShowMessage('Working hour of this month has been locked');
  end
  //設定全部目標產能
  else if (StringGrid1.Col = 0) AND (StringGrid1.Row = StringGrid1.RowCount - 3) then
  begin
    MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/1');

    if (MyDate > SDate) and (MonthofTheYear(MyDate) <> MonthofTheYear(SDate)) then
    begin
      if InputQuery('','Please enter the capacity of this month', DC) = true then
      begin
        if TryStrToInt(DC, Isnumber) then
        begin
          for Col := 1 to StringGrid1.ColCount-2 do
          begin
            if (StrToFloat(StringGrid1.Cells[Col, 2]) > 0) then
            begin
              MyDate := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(Col));
              if (Isnumber > 0) then
              begin
                StringGrid1.Cells[Col, StringGrid1.RowCount - 3] := DC;
                StringGrid1.Cells[Col, StringGrid1.RowCount - 2] := IntToStr(Floor(Isnumber / StrToFloat(StringGrid1.Cells[Col, 2])));
              end
              else begin
                StringGrid1.Cells[Col, StringGrid1.RowCount - 3] := DC;
                StringGrid1.Cells[Col, StringGrid1.RowCount - 2] := '0';
              end;

              with Query4 do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT Qty FROM SCBZCL WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
                Active := true;

                if (RecordCount = 0) then
                begin
                  with QUpdate do
                  begin
                    SQL.Clear;
                    SQL.Add('INSERT INTO SCBZCL VALUES(''' + Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''',''' + FormatDateTime('yyyy/mm/dd', MyDate) + ''',''' + StringGrid1.Cells[Col, StringGrid1.RowCount-3] + ''',''VA12'',''' + main.Edit1.Text + ''',''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''',''1'')');
                    ExecSQL;
                  end;
                end
                else if (RecordCount > 0) then
                begin
                  with QUpdate do
                  begin
                    SQL.Clear;
                    SQL.Add('UPDATE SCBZCL SET Qty = ' + DC + ', USERID = ''' + main.Edit1.Text + ''', USERDATE = ''' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ''' WHERE DepNO = ''' + Edit1.Text + ''' AND BZDate = ''' + FormatDateTime('yyyy-mm-dd', MyDate) + ''' AND GSBH = ''VA12'' ');
                    ExecSQL;
                  end;
                end;
              end;
            end;
          end;
        end;
      end
      else
        ShowMessage('Numbers only!');
    end
    else
      ShowMessage('Capacity of this month has been locked!');
  end
  //編輯快速訂單雙數
  else if (Copy(YSBHSG2, Length(YSBHSG2)-2, 3) = 'BUY') then
  begin
    SLT := true;
    {if InputQuery('','Please enter the total pairs of SLT orders', Pairs) = true then
    begin
      if TryStrToInt(Pairs, Isnumber) then
      begin
        StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row] := 'SLT 快速訂單' + #13#10 + 'Pairs:' + Pairs;
        //計算該日訂單雙數
        for i := 3 to DataRow + 2 do
        begin
          if StringGrid1.Cells[StringGrid1.Col, i] <> '' then
          begin
            PairsPCH := StrPos(PChar(StringGrid1.Cells[StringGrid1.Col, i]), 'Pairs:');
            PairsSTR := PairsPCH;
            PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
            TotalPairs := TotalPairs + StrtoInt(PairsSTR);
          end;
        end;
        StringGrid1.Cells[StringGrid1.Col, DataRow + 3] := IntToStr(TotalPairs);

        with QUpdate do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('UPDATE ScheduleData SET InitialPairs = ' + Pairs + ' WHERE PlanYear = ' + Combobox1.Text + ' AND PlanMonth = ' + Combobox2.Text + ' AND PlanDay = ' + IntToStr(StringGrid1.Col) + ' AND DepNo = ''' + Edit1.Text + ''' ');
          ExecSQL;
        end;
      end
      else
        ShowMessage('Numbers Only');
    end;}
  end;

  //計算剩餘雙數
  for Col := 1 to StringGrid1.ColCount-2 do
  begin
    TempPairs := StrToInt(StringGrid1.Cells[Col-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[Col, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[Col, StringGrid1.RowCount - 3]);
    if TempPairs < 0 then
      StringGrid1.Cells[Col, StringGrid1.RowCount - 1] := '0'
    else
      StringGrid1.Cells[Col, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
  end;
  SumData;
  //CheckFinalPairs;
  StringGrid1.Refresh;
end;

procedure TF_PreArrange.StringGrid1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Col, Row, i, Counter, TotalPairs, TempPairs, Pairs: integer;
  DepID_C, DepID_S, DepID_A, GXLB, YSBH, PairsSTR, TempStr: string;
  PlanDate_C, PlanDate_S, PlanDate_A: TDateTime;
  PairsPCH: PChar;
begin
  StringGrid1.MouseToCell(X, Y, Col, Row);

  if (StringGrid1.Cells[Col, 2] <> '0') AND (Col <= StringGrid1.ColCount-2) then
  begin
    TotalPairs := 0;
    Counter := 0;

    DepID_C := EditC.Text;
    DepID_S := EditS.Text;
    DepID_A := EditA.Text;

    PlanDate_C := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(Col));
    PlanDate_S := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(Col));
    PlanDate_A := StrToDate(Combobox1.Text + '/' + Combobox2.Text + '/' + IntToStr(Col));

    YSBH := COPY(StringGrid1.Cells[TCol, TRow], 1, Pos(' ', StringGrid1.Cells[TCol, TRow])-1);
    GXLB := Edit2.Text;

    //檢查移動後的日期是否超過10筆排程，超過顯示提示，沒有超過則更新資料庫
    for i := 3 to DataRow+2 do
    begin
      if StringGrid1.Cells[Col, i] = '' then
      begin
        StringGrid1.Cells[Col, i] := StringGrid1.Cells[TCol, TRow];
        break;
      end
      else begin
        Inc(Counter);
        if Counter >= 10 then
        begin
          ShowMessage('超過上限');
          Exit;
        end;
      end;
    end;

    //更新移動後排程日期及排序
    with QUpdate do
    begin
      SQL.Clear;
      if (Copy(YSBH, Length(YSBH)-2, 3) <> 'BUY') then
      begin
        //移動裁斷時更新裁斷的排程日及排序
        if (GXLB = 'C') then
        begin
          with Query4 do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' ');
            Active := true;
            QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + DateToStr(PlanDate_C) + ''', ROrder = ' + FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + DepID_C + ''';');
          end;
        end
        //移動針車時更新裁斷、針車的排程日及排序
        else if (GXLB = 'S') then
        begin
          PlanDate_C := IncDay(PlanDate_C, -2);

          with Query4 do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' ');
            Active := true;
            QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + DateToStr(PlanDate_C) + ''', ROrder = ' + FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + DepID_C + ''';');

            Active := false;
            SQL.Clear;
            SQL.Add('SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_S + ''' AND RPlanDate = ''' + DateToStr(PlanDate_S) + ''' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''' ');
            Active := true;
            QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + DateToStr(PlanDate_S) + ''', ROrder = ' + FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + DepID_S + ''';');
          end;
        end
        //移動成型時更新裁斷、針車、成型的排程日及排序
        else if (GXLB = 'A') then
        begin
          PlanDate_C := IncDay(PlanDate_C, -3);
          PlanDate_S := IncDay(PlanDate_S, -1);

          with Query4 do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' ');
            Active := true;
            QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + DateToStr(PlanDate_C) + ''', ROrder = ' + FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + DepID_C + ''';');

            Active := false;
            SQL.Clear;
            SQL.Add('SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_S + ''' AND RPlanDate = ''' + DateToStr(PlanDate_S) + ''' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''' ');
            Active := true;
            QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + DateToStr(PlanDate_S) + ''', ROrder = ' + FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + DepID_S + ''';');

            Active := false;
            SQL.Clear;
            SQL.Add('SELECT ISNULL(MAX(ROrder),0)+1 AS ROrder FROM SMDD WHERE RDepNO = ''' + DepID_A + ''' AND RPlanDate = ''' + DateToStr(PlanDate_A) + ''' AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''' ');
            Active := true;
            QUpdate.SQL.Add('UPDATE SMDD SET RPlanDate = ''' + DateToStr(PlanDate_A) + ''', ROrder = ' + FieldByName('ROrder').AsString + ' WHERE DDBH LIKE ''' + YSBH + '%'' AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + DepID_A + ''';');
          end;
        end;
        with Query4 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add(' SELECT RPlanDate FROM SMDD WHERE YSBH = ''' + YSBH + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNo IN (''' + DepID_C + ''',''' + DepID_S + ''',''' + DepID_A + ''')');
          SQL.Add(' GROUP BY RPlanDate, GXLB, RDepNO ORDER BY SUBSTRING(RDepNO,4,2)');
          Active := true;
          First;
        end;
        ExecSQL;
        SQL.Clear;
        RefreshOrder;
      end;
    end;

    //移動前的日期下方資料上移
    StringGrid1.Cells[TCol, TRow] := '';
    for i := 3 to DataRow+2 do
    begin
      if (StringGrid1.Cells[TCol, i] = '') AND (StringGrid1.Cells[TCol, i+1] <> '') AND (i < DataRow+2) then
      begin
        StringGrid1.Cells[TCol, i] := StringGrid1.Cells[TCol, i+1];
        StringGrid1.Cells[TCol, i+1] := '';
      end;
    end;

    if (Copy(YSBH, Length(YSBH)-2, 3) <> 'BUY') then
    begin
      PlanDate_C := Query4.FieldByName('RPlanDate').AsDateTime;
      Query4.Next;
      PlanDate_S := Query4.FieldByName('RPlanDate').AsDateTime;
      Query4.Next;
      PlanDate_A := Query4.FieldByName('RPlanDate').AsDateTime;

      //移動前的日期下方資料更新排序
      if (GXLB = 'C') then
      begin
        with Query4 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY ROrder) AS ROWID ,YSBH, GXLB, ROrder, RDepNO FROM SMDD');
          SQL.Add(' WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' ');
          SQL.Add(' GROUP BY YSBH, GXLB, ROrder, RDepNO');
          Active := true;

          First;
          while not eof do
          begin
            if (FieldByName('ROWID').AsInteger <> FieldByName('ROrder').AsInteger) then
            begin
              QUpdate.SQL.Add('UPDATE SMDD SET ROrder = ' + FieldByName('ROWID').AsString + ' WHERE DDBH LIKE ''' + FieldByName('YSBH').AsString + '%'' AND GXLB = ''' + FieldByName('GXLB').AsString + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + FieldByName('RDepNO').AsString + ''';');
            end;
            Next;
          end;
        end;
      end
      else if (GXLB = 'S') then
      begin
        with Query4 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY ROrder) AS ROWID ,YSBH, GXLB, SUM(Qty) AS Qty, ROrder, RDepNO FROM SMDD');
          SQL.Add(' WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' ');
          SQL.Add(' GROUP BY YSBH, GXLB, ROrder, RDepNO');
          SQL.Add(' UNION ALL');
          SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY ROrder) AS ROWID ,YSBH, GXLB, SUM(Qty) AS Qty, ROrder, RDepNO FROM SMDD');
          SQL.Add(' WHERE RDepNO = ''' + DepID_S + ''' AND RPlanDate = ''' + DateToStr(PlanDate_S) + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''S'' ');
          SQL.Add(' GROUP BY YSBH, GXLB, ROrder, RDepNO');
          Active := true;

          First;
          while not eof do
          begin
            if (FieldByName('ROWID').AsInteger <> FieldByName('ROrder').AsInteger) then
            begin
              QUpdate.SQL.Add('UPDATE SMDD SET ROrder = ' + FieldByName('ROWID').AsString + ' WHERE DDBH LIKE ''' + FieldByName('YSBH').AsString + '%'' AND GXLB = ''' + FieldByName('GXLB').AsString + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + FieldByName('RDepNO').AsString + ''';');
            end;
            Next;
          end;
        end;
      end
      else if (GXLB = 'A') then
      begin
        with Query4 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY ROrder) AS ROWID ,YSBH, GXLB, SUM(Qty) AS Qty, ROrder, RDepNO FROM SMDD');
          SQL.Add(' WHERE RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' ');
          SQL.Add(' GROUP BY YSBH, GXLB, ROrder, RDepNO');
          SQL.Add(' UNION ALL');
          SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY ROrder) AS ROWID ,YSBH, GXLB, SUM(Qty) AS Qty, ROrder, RDepNO FROM SMDD');
          SQL.Add(' WHERE RDepNO = ''' + DepID_S + ''' AND RPlanDate = ''' + DateToStr(PlanDate_S) + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''S'' ');
          SQL.Add(' GROUP BY YSBH, GXLB, ROrder, RDepNO');
          SQL.Add(' UNION ALL');
          SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY ROrder) AS ROWID ,YSBH, GXLB, SUM(Qty) AS Qty, ROrder, RDepNO FROM SMDD');
          SQL.Add(' WHERE RDepNO = ''' + DepID_A + ''' AND RPlanDate = ''' + DateToStr(PlanDate_A) + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''A'' ');
          SQL.Add(' GROUP BY YSBH, GXLB, ROrder, RDepNO');
          Active := true;

          First;
          while not eof do
          begin
            if (FieldByName('ROWID').AsInteger <> FieldByName('ROrder').AsInteger) then
            begin
              QUpdate.SQL.Add('UPDATE SMDD SET ROrder = ' + FieldByName('ROWID').AsString + ' WHERE DDBH LIKE ''' + FieldByName('YSBH').AsString + '%'' AND GXLB = ''' + FieldByName('GXLB').AsString + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND RDepNO = ''' + FieldByName('RDepNO').AsString + ''';');
            end;
            Next;
          end;
        end;
      end;
    end;

    if (Copy(YSBH, Length(YSBH)-2, 3) = 'BUY') then
    begin
      QUpdate.SQL.Add('UPDATE ScheduleData SET PlanYear = ' + ComboBox1.Text + ', PlanMonth = ' + ComboBox2.Text + ', PlanDay = ' + IntToStr(Col) + ' WHERE PlanYear = ' + ComboBox1.Text + ' AND PlanMonth = ' + ComboBox2.Text + ' AND PlanDay = ' + IntToStr(TCol) + ' AND DepNo = ''' + Edit1.Text + ''' AND SLTBUYNO = ' + COPY(YSBH, 1, Pos('BUY', YSBH)-1) + '');
    end;

    if (QUpdate.SQL.Text <> '') then
      QUpdate.ExecSQL;

    //計算該日訂單雙數
    for i := 3 to DataRow + 2 do
    begin
      if StringGrid1.Cells[Col, i] <> '' then
      begin
        PairsPCH := StrPos(PChar(StringGrid1.Cells[Col, i]), 'Pairs:');
        PairsSTR := PairsPCH;
        PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
        TotalPairs := TotalPairs + StrtoInt(PairsSTR);
      end;
    end;
    StringGrid1.Cells[Col, DataRow + 3] := IntToStr(TotalPairs);

    if (TCol <> Col) then
    begin
      TotalPairs := 0;
      //計算該日訂單雙數
      for i := 3 to DataRow + 2 do
      begin
        if (StringGrid1.Cells[TCol, i] <> '') then
        begin
          PairsPCH := StrPos(PChar(StringGrid1.Cells[TCol, i]), 'Pairs:');
          PairsSTR := PairsPCH;
          PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
          TotalPairs := TotalPairs + StrtoInt(PairsSTR);
        end;
      end;
      StringGrid1.Cells[TCol, DataRow + 3] := IntToStr(TotalPairs);
    end;

    //計算該日剩餘雙數
    for i := 1 to StringGrid1.ColCount-2 do
    begin
      TempPairs := StrToInt(StringGrid1.Cells[i-1, StringGrid1.RowCount - 1]) + StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 4]) - StrToInt(StringGrid1.Cells[i, StringGrid1.RowCount - 3]);
      if TempPairs < 0 then
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := '0'
      else
        StringGrid1.Cells[i, StringGrid1.RowCount - 1] := IntToStr(TempPairs);
    end;
    SumData;
    //CheckFinalPairs; 
    SG2Query := false;
    StringGrid1.Refresh;
  end
  else if (StringGrid1.Cells[Col, 2] = '0') then
    ShowMessage('Not working day!');
  {else if (StrToInt(StringGrid1.Cells[Col, StringGrid1.RowCount-1]) - Pairs > 0) then
    ShowMessage('Full capacity!');}
end;

procedure TF_PreArrange.StringGrid1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  Col, Row: integer;
begin
  StringGrid1.MouseToCell(X, Y, Col, Row);

  if (Mode = 'S') then
    StringGrid1.Selection := TGridRect(Rect(Col, Row, Col, Row))
  else if (Mode = 'C') then
    StringGrid1.Selection := TGridRect(Rect(TCol, TRow, Col, Row));
end;

procedure TF_PreArrange.Button4Click(Sender: TObject);
begin
  DBGridEh3.SelectedRows.Clear;
  
  //快速查詢訂單
  if (Edit3.Text = '') then
  begin
    ShowMessage('Please enter an order');
    Edit3.SetFocus;
  end
  else if (Edit3.Text = 'SLT') then
  begin
    Query2.Locate('YSBH', 'SLT 快速訂單', []);
  end
  else if (Query2.Locate('YSBH', Edit3.Text, []) = false) then
  begin
    ShowMessage('Data not found !');
    Edit3.SetFocus;
  end
  else if (Query2.Locate('YSBH', Edit3.Text, []) = true) then
  begin
    DBGridEh3.SelectedRows.CurrentRowSelected := true;
    DBGridEh3.SetFocus;
  end;
end;

procedure TF_PreArrange.DBGridEh3KeyPress(Sender: TObject; var Key: Char);
begin
  //按ESC時取消選擇訂單
  if (Key = #27) then
  begin
    DBGridEh3.SelectedRows.Clear;
    StringGrid1.SetFocus;
  end;
end;

procedure TF_PreArrange.QBuyNoBeforeScroll(DataSet: TDataSet);
begin
  if LoadSuccess then
  begin
    ShowLoading;
    BookMarkQLean := QLean.GetBookmark;
    DBGridEh3.DataSource := DSTemp;
  end;
end;

procedure TF_PreArrange.QBuyNoAfterScroll(DataSet: TDataSet);
begin
  if LoadSuccess then
  begin
    SetEditGrid;
    QLean.GotoBookmark(BookMarkQLean);
    DBGridEh3.DataSource := DataSource3;
    HideLoading;
    
    //選擇BUY別時檢查是否有新訂單
    {if (DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[1]) <> QBuyNo.FieldByName('Orders').AsString) then
      ShowMessage('There are new orders in ' + QBuyNo.FieldByName('BUY').AsString);}
  end;
end;

procedure TF_PreArrange.GetServerDate;
begin
  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GetDate() AS Date');
    Active := true;

    SDate := FieldByName('Date').AsDateTime;
  end;
end;

procedure TF_PreArrange.SumData;
var
  Col, Pairs, Capacity: integer;
  HR: Double;
begin
  HR := 0;
  Pairs := 0;
  Capacity := 0;

  for Col := 1 to StringGrid1.ColCount-2 do
  begin
    HR := HR + StrToFloat(StringGrid1.Cells[Col, 2]);
    Pairs := Pairs + StrToInt(StringGrid1.Cells[Col, StringGrid1.RowCount-4]);
    Capacity := Capacity + StrToInt(StringGrid1.Cells[Col, StringGrid1.RowCount-3]);
  end;

  StringGrid1.Cells[StringGrid1.ColCount-1, 2] := FloatToStr(HR);
  StringGrid1.Cells[StringGrid1.ColCount-1, StringGrid1.RowCount-4] := IntToStr(Pairs);
  StringGrid1.Cells[StringGrid1.ColCount-1, StringGrid1.RowCount-3] := IntToStr(Capacity);

  if (StrToFloat(StringGrid1.Cells[StringGrid1.ColCount-1, 2]) > 0) then
    StringGrid1.ColWidths[StringGrid1.ColCount-1] := 90
  else
    StringGrid1.ColWidths[StringGrid1.ColCount-1] := 12;
end;

procedure TF_PreArrange.StringGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  //按ESC時取消選擇訂單
  if (Key = #27) then
  begin
    DBGridEh3.SelectedRows.Clear;
    StringGrid1.SetFocus;
  end;
end;

procedure TF_PreArrange.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  //按Enter時進行查詢
  if (Key = #13) then
  begin
    Key := #0;
    Button4Click(Button4);
  end;
end;

procedure TF_PreArrange.StringGrid3SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  HideAllButton;
  MonthCalendar1.Visible := false;
  ListBox1.Visible := false;
end;

procedure TF_PreArrange.HideAllButton;
begin
  Button6.Visible := false;
  Button7.Visible := false;
  Button8.Visible := false;
  Button9.Visible := false;
  Button10.Visible := false;
end;

procedure TF_PreArrange.Button6Click(Sender: TObject);
begin
  MonthCalendar1.Visible := false;
  ListBox1.Visible := false;

  if F_Department <> nil then
  begin
    F_Department.show;
  end else
  begin
    F_Department := TF_Department.Create(self);
    F_Department.Show;
  end;
end;

procedure TF_PreArrange.Button7Click(Sender: TObject);
begin
  MonthCalendar1.Visible := false;
  ListBox1.Visible := false;

  if F_Department <> nil then
  begin
    F_Department.show;
  end else
  begin
    F_Department := TF_Department.Create(self);
    F_Department.Show;
  end;
end;

procedure TF_PreArrange.Button8Click(Sender: TObject);
begin
  ListBox1.Visible := false;
  if (StringGrid3.Height - ATop >= MonthCalendar1.Height) then
    MonthCalendar1.Top := Panel7.Height + Button8.Top - 21
  else
    MonthCalendar1.Top := Panel7.Height + Button8.Top - MonthCalendar1.Height - 42;
  MonthCalendar1.Left := Button8.Left - MonthCalendar1.Width + 15;
  MonthCalendar1.Visible := not MonthCalendar1.Visible;
  if MonthCalendar1.Visible then
  begin
    MonthCalendar1.Repaint;
    MonthCalendar1.SetFocus;
  end;
end;

procedure TF_PreArrange.Button9Click(Sender: TObject);
begin
  ListBox1.Visible := false;
  if (StringGrid3.Height - ATop >= MonthCalendar1.Height) then
    MonthCalendar1.Top := Panel7.Height + Button9.Top - 21
  else
    MonthCalendar1.Top := Panel7.Height + Button9.Top - MonthCalendar1.Height - 42;
  MonthCalendar1.Left := Button9.Left - MonthCalendar1.Width + 15;
  MonthCalendar1.Visible := not MonthCalendar1.Visible;
  if MonthCalendar1.Visible then
  begin
    MonthCalendar1.Repaint;
    MonthCalendar1.SetFocus;
  end;
end;

procedure TF_PreArrange.Button10Click(Sender: TObject);
begin
  MonthCalendar1.Visible := false;
  if (StringGrid3.Height - ATop >= ListBox1.Height) then
    ListBox1.Top := Panel7.Height + Button10.Top - 21
  else
    ListBox1.Top := Panel7.Height + Button10.Top - ListBox1.Height - 41;
  ListBox1.Left := Button10.Left - ListBox1.Width + 16;
  ListBox1.Visible := not ListBox1.Visible;
  if ListBox1.Visible then
  begin
    ListBox1.Repaint;
    ListBox1.SetFocus;
  end;
end;

procedure TF_PreArrange.MonthCalendar1Click(Sender: TObject);
begin;
  if (Mouse.CursorPos.Y - ScrollBox1.Height - 71 > MonthCalendar1.Top + 56) then
  begin
    StringGrid3.Cells[StringGrid3.Col, StringGrid3.Row] := DateToStr(MonthCalendar1.Date);
    if (StringGrid3.Cells[11, StringGrid3.Row] <> '') AND (StringGrid3.Cells[12, StringGrid3.Row] <> '') AND (StringGrid3.Cells[13, StringGrid3.Row] <> '') AND (StringGrid3.Cells[14, StringGrid3.Row] <> '') AND (StringGrid3.Cells[15, StringGrid3.Row] <> '') then
      StringGrid3.Cells[0, StringGrid3.Row] := '*'
    else
      StringGrid3.Cells[0, StringGrid3.Row] := '';
    MonthCalendar1.Visible := false;
    HideAllButton;
  end;
end;

procedure TF_PreArrange.ListBox1Click(Sender: TObject);
begin
  StringGrid3.Cells[15, StringGrid3.Row] := ListBox1.Items[ListBox1.ItemIndex];
  if (StringGrid3.Cells[11, StringGrid3.Row] <> '') AND (StringGrid3.Cells[12, StringGrid3.Row] <> '') AND (StringGrid3.Cells[13, StringGrid3.Row] <> '') AND (StringGrid3.Cells[14, StringGrid3.Row] <> '') AND (StringGrid3.Cells[15, StringGrid3.Row] <> '') then
    StringGrid3.Cells[0, StringGrid3.Row] := '*'
  else
    StringGrid3.Cells[0, StringGrid3.Row] := '';
  ListBox1.Visible := false;
  ListBox1.ItemIndex := -1;
  HideAllButton;
end;

procedure TF_PreArrange.Button11Click(Sender: TObject);
var
  Row, Counter: integer;
  DepID_C, DepID_S, DepID_A: string;
  PlanDate_C, PlanDate_S, PlanDate_A, PlanEdate_C, PlanEdate_S, PlanEdate_A: TDateTime;
begin
  HideAllButton;
  with QUpdate do
  begin
    Counter := 0;
    SQL.Clear;

    for Row := 1 to StringGrid3.RowCount-1 do
    begin
      if (StringGrid3.Cells[0, Row] = '*') then
      begin
        if (COPY(StringGrid3.Cells[11, Row],1,3) = 'A01') then
        begin
          DepID_C := StringGrid3.Cells[11, Row];
          System.Delete(DepID_C, 4, 2);
          System.Insert('01', DepID_C, 4);

          DepID_S := StringGrid3.Cells[11, Row];
          System.Delete(DepID_S, 4, 2);
          System.Insert('02', DepID_S, 4);

          DepID_A := StringGrid3.Cells[11, Row];
          System.Delete(DepID_A, 4, 2);
          System.Insert('03', DepID_A, 4);
        end
        else if (COPY(StringGrid3.Cells[11, Row],1,2) = 'A2') then
        begin
          DepID_C := StringGrid3.Cells[11, Row];
          System.Delete(DepID_C, 3, 2);
          System.Insert('01', DepID_C, 3);

          DepID_S := StringGrid3.Cells[11, Row];
          System.Delete(DepID_S, 3, 2);
          System.Insert('02', DepID_S, 3);

          DepID_A := StringGrid3.Cells[11, Row];
          System.Delete(DepID_A, 3, 2);
          System.Insert('03', DepID_A, 3);
        end
        else if (COPY(StringGrid3.Cells[11, Row],1,3) = 'A12') then
        begin
          DepID_C := StringGrid3.Cells[11, Row];
          System.Delete(DepID_C, 6, 2);
          System.Insert('01', DepID_C, 6);

          DepID_S := StringGrid3.Cells[11, Row];
          System.Delete(DepID_S, 6, 2);
          System.Insert('02', DepID_S, 6);

          DepID_A := StringGrid3.Cells[11, Row];
          System.Delete(DepID_A, 6, 2);
          System.Insert('03', DepID_A, 6);
        end;

        PlanDate_C := StrToDate(StringGrid3.Cells[13, Row]);
        PlanDate_C := IncDay(PlanDate_C,-3);
        if (DayOfTheWeek(PlanDate_C) = 7) then
          PlanDate_C := IncDay(PlanDate_C,-1);

        PlanEdate_C := StrToDate(StringGrid3.Cells[14, Row]);
        PlanEdate_C := IncDay(PlanEdate_C,-3);
        if (DayOfTheWeek(PlanEdate_C) = 7) then
          PlanEdate_C := IncDay(PlanEdate_C,-1);

        PlanDate_S := StrToDate(StringGrid3.Cells[13, Row]);
        PlanDate_S := IncDay(PlanDate_S,-1);
        if (DayOfTheWeek(PlanDate_S) = 7) then
          PlanDate_S := IncDay(PlanDate_S,-1);

        PlanEdate_S := StrToDate(StringGrid3.Cells[14, Row]);
        PlanEdate_S := IncDay(PlanEdate_S,-1);
        if (DayOfTheWeek(PlanEdate_S) = 7) then
          PlanEdate_S := IncDay(PlanEdate_S,-1);

        PlanDate_A := StrToDate(StringGrid3.Cells[13, Row]);
        PlanEdate_A := StrToDate(StringGrid3.Cells[14, Row]);

        SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_A + ''', RPlanDate = ''' + DateToStr(PlanDate_A) + ''', RPlanEdate = ''' + DateToStr(PlanEdate_A) + ''', ROrder = ' + StringGrid3.Cells[15, Row] + '');
        SQL.Add(' WHERE DDBH LIKE ''' + StringGrid3.Cells[1, Row] + '%'' AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''';');
        SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_S + ''', RPlanDate = ''' + DateToStr(PlanDate_S) + ''', RPlanEdate = ''' + DateToStr(PlanEdate_S) + ''', ROrder = ' + StringGrid3.Cells[15, Row] + '');
        SQL.Add(' WHERE DDBH LIKE ''' + StringGrid3.Cells[1, Row] + '%'' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''';');
        SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_C + ''', RPlanDate = ''' + DateToStr(PlanDate_C) + ''', RPlanEdate = ''' + DateToStr(PlanEdate_C) + ''', ROrder = ' + StringGrid3.Cells[15, Row] + '');
        SQL.Add(' WHERE DDBH LIKE ''' + StringGrid3.Cells[1, Row] + '%'' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''';');
        Inc(Counter);
      end;

      if (Counter = 50) then
      begin
        Counter := 0;
        ExecSQL;
        SQL.Clear;
      end;
    end;

    if (SQL.Text <> '') then
    begin
      ExecSQL;
      SQL.Clear;
    end;
  end;

  LoadSuccess := false;
  
  GenerateStringGrid;
  RefreshOrder;
  SetDataRow;
  SetEditGrid;
  LoadSuccess := true;
  ShowMessage('Succeed!');
end;

procedure TF_PreArrange.Button12Click(Sender: TObject);
var
  Col, Row: integer;
begin
  with Query6 do
  begin
    Active := false;
    SQL.Clear;

    if (Edit4.Text <> '') OR (Edit5.Text <> '') then
    begin
      SQL.Add(' SELECT SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.SheHao, SMDD.Article, SUM(SMDD.Qty) AS Pairs, DDZL.ShipDate,');
      SQL.Add(' XXZL.DAOMH, XXZL.XTMH, SMDD.RDepNO, BDepartment.DepName, SMDD.RPlanDate, SMDD.RPlanEdate, SMDD.ROrder, SMDD.PRdate, SMDD.OKdate FROM SMDD');
      SQL.Add(' LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
      SQL.Add(' LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add(' LEFT JOIN BDepartment ON BDepartment.ID = SMDD.RDepNO');
      SQL.Add(' WHERE DDZL.BUYNO LIKE :BUYNO + ''%''');
      if (Edit4.Text <> '') then
        SQL.Add(' AND SMDD.YSBH = ''' + Edit4.Text + '''');
      if (Edit5.Text <> '') then
        SQL.Add(' AND SMDD.Article LIKE ''' + Edit5.Text + '''');
      SQL.Add(' AND SMDD.GSBH = ''' + main.Edit2.Text + ''' AND SMDD.GXLB = ''A'' AND DDZL.DDLB = ''N'' AND DDZL.DDZT IN (''Y'', ''S'')');
      SQL.Add(' GROUP BY SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.SheHao, SMDD.Article, DDZL.ShipDate, XXZL.DAOMH, XXZL.XTMH, SMDD.RDepNO, BDepartment.DepName, SMDD.RPlanDate, SMDD.RPlanEdate, SMDD.ROrder, SMDD.PRdate, SMDD.OKdate');
      if (StringGrid3.Cells[13, 0] = 'RPlanDate▼') then
        SQL.Add(' ORDER BY CASE WHEN SMDD.RPlanDate IS NULL THEN 2 ELSE 1 END, SMDD.RPlanDate, SMDD.ROrder')
      else if (StringGrid3.Cells[13, 0] = 'RPlanDate▲') then
        SQL.Add(' ORDER BY CASE WHEN SMDD.RPlanDate IS NULL THEN 2 ELSE 1 END, SMDD.RPlanDate DESC, SMDD.ROrder')
      else
        SQL.Add(' ORDER BY SMDD.YSBH');
    end
    else begin
      SQL.Add(' SELECT SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.SheHao, SMDD.Article, SUM(SMDD.Qty) AS Pairs, DDZL.ShipDate,');
      SQL.Add(' XXZL.DAOMH, XXZL.XTMH, SMDD.RDepNO, BDepartment.DepName, SMDD.RPlanDate, SMDD.RPlanEdate, SMDD.ROrder, SMDD.PRdate, SMDD.OKdate FROM SMDD');
      SQL.Add(' LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
      SQL.Add(' LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add(' LEFT JOIN BDepartment ON BDepartment.ID = SMDD.RDepNO');
      SQL.Add(' WHERE DDZL.BUYNO LIKE :BUYNO + ''%'' AND SMDD.GSBH = ''' + main.Edit2.Text + ''' AND SMDD.GXLB = ''A'' AND DDZL.DDLB = ''N'' AND DDZL.DDZT IN (''Y'', ''S'')');
      SQL.Add(' GROUP BY SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.SheHao, SMDD.Article, DDZL.ShipDate, XXZL.DAOMH, XXZL.XTMH, SMDD.RDepNO, BDepartment.DepName, SMDD.RPlanDate, SMDD.RPlanEdate, SMDD.ROrder, SMDD.PRdate, SMDD.OKdate');
      if (StringGrid3.Cells[13, 0] = 'RPlanDate▼') then
        SQL.Add(' ORDER BY CASE WHEN SMDD.RPlanDate IS NULL THEN 2 ELSE 1 END, SMDD.RPlanDate, SMDD.ROrder')
      else if (StringGrid3.Cells[13, 0] = 'RPlanDate▲') then
        SQL.Add(' ORDER BY CASE WHEN SMDD.RPlanDate IS NULL THEN 2 ELSE 1 END, SMDD.RPlanDate DESC, SMDD.ROrder')
      else
        SQL.Add(' ORDER BY SMDD.YSBH');
    end;
    Active := true;

    for Col := 0 to StringGrid3.ColCount-1 do
    begin
      if (Col <> 13) then
      begin
        StringGrid3.Cols[Col].Clear;
        StringGrid3.Cells[Col, 0] := EditGridTitle[Col];
      end
      else begin
        if (StringGrid3.Cells[13, 0] = 'RPlanDate▼') then
        begin
          StringGrid3.Cols[13].Clear;
          StringGrid3.Cells[13, 0] := 'RPlanDate▼'
        end
        else if (StringGrid3.Cells[13, 0] = 'RPlanDate▲') then
        begin
          StringGrid3.Cols[13].Clear;
          StringGrid3.Cells[13, 0] := 'RPlanDate▲'
        end;
      end;
    end;

    StringGrid3.Selection := TGridRect(Rect(1, 1, 1, 1));
    if (RecordCount > 0) then
      StringGrid3.RowCount := RecordCount+1
    else
      StringGrid3.RowCount := RecordCount+2;
    StringGrid4.Cells[1, 0] := IntToStr(RecordCount);

    First;
    Row := 1;
    while not Eof do
    begin
      for Col := 1 to StringGrid3.ColCount-1 do
      begin
        StringGrid3.Cells[Col, Row] := FieldByName(EditGridTitle[Col]).AsString;
      end;
      Inc(Row);
      Next;
    end;
  end;
  if (Query6.RecordCount = 0) then
    ShowMessage('Data not found!');
  StringGrid3.TopRow := 1;
end;

procedure TF_PreArrange.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  //按Enter時進行查詢
  if (Key = #13) then
  begin
    Key := #0;
    Button12Click(Button12);
  end;
end;
  
procedure TF_PreArrange.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  //按Enter時進行查詢
  if (Key = #13) then
  begin
    Key := #0;
    Button12Click(Button12);
  end;
end;

procedure TF_PreArrange.StringGrid3DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (StringGrid3.ColWidths[ACol] <> AColWidth[ACol]) then
  begin
    HideAllButton;
    AColWidth[ACol] := StringGrid3.ColWidths[ACol];
    StringGrid4.ColWidths[ACol] := StringGrid3.ColWidths[ACol];
  end;
end;

procedure TF_PreArrange.StringGrid3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
begin
  //取得選擇的Cell位置
  StringGrid3.MouseToCell(X, Y, Col, Row);
  
  if (Button = mbLeft) then
  begin
    if (Col = -1) AND (Row = -1) then
    begin
      HideAllButton;
      MonthCalendar1.Visible := false;
      ListBox1.Visible := false;
      Exit;
    end
    else if (Col = 1) AND (Row = 0) AND (StringGrid3.Cells[13, 0] <> 'RPlanDate') then
    begin
      StringGrid3.Cells[13, 0] := 'RPlanDate';
      Button12Click(Button12);
    end
    else if (Col = 13) AND (Row = 0) then
    begin
      if (StringGrid3.Cells[Col, Row] = 'RPlanDate▼') then
      begin
        StringGrid3.Cells[Col, Row] := 'RPlanDate▲';
      end
      else begin
        StringGrid3.Cells[Col, Row] := 'RPlanDate▼';
      end;
      Button12Click(Button12);
    end;

    if (Col in [13,14,15]) then
      StringGrid3.Options := StringGrid3.Options + [goEditing]
    else
      StringGrid3.Options := StringGrid3.Options - [goEditing];

    ATop := StringGrid3.CellRect(Col, Row).Top;
    //解決StringGrid3顯示高度超過VisibleRowCount的高度時點擊最後一行按鈕位置錯誤
    if (Row - StringGrid3.TopRow > StringGrid3.VisibleRowCount - 1) then
      ATop := ATop - 20;

    if (Col >= 11) AND (Col <= 15) AND (Row >= 1) then
    begin
      //移動按鈕到選擇的Row
      Button6.Top := Panel7.Height + ATop + 2;
      Button7.Top := Panel7.Height + ATop + 2;
      Button8.Top := Panel7.Height + ATop + 2;
      Button9.Top := Panel7.Height + ATop + 2;
      Button10.Top := Panel7.Height + ATop + 2;

      //依照選擇的Column靠右顯示對應的按鈕
      with StringGrid3 do
      begin
        case Col of
          11: begin
                Button6.Left := ColWidths[11] - Button6.Width + 674;
                Button6.Visible := true;
              end;
          12: begin
                Button7.Left := ColWidths[11] + ColWidths[12] - Button7.Width + 675;
                Button7.Visible := true;
              end;
          13: begin
                Button8.Left := ColWidths[11] + ColWidths[12] + ColWidths[13] - Button8.Width + 676;
                Button8.Visible := true;
              end;
          14: begin
                Button9.Left := ColWidths[11] + ColWidths[12] + ColWidths[13] + ColWidths[14] - Button9.Width + 677;
                Button9.Visible := true;
              end;
          15: begin
                Button10.Left := ColWidths[11] + ColWidths[12] + ColWidths[13] + ColWidths[14] + ColWidths[15] - Button10.Width + 678;
                Button10.Visible := true;
              end;
        end;
      end;
    end;
  end;
end;

procedure TF_PreArrange.SetEditGrid;
var
  Col, Row: integer;
begin
  //查詢該BUYNO所有訂單資料
  with Query6 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.SheHao, SMDD.Article, SUM(SMDD.Qty) AS Pairs, DDZL.ShipDate,');
    SQL.Add(' XXZL.DAOMH, XXZL.XTMH, SMDD.RDepNO, BDepartment.DepName, SMDD.RPlanDate, SMDD.RPlanEdate, SMDD.ROrder, SMDD.PRdate, SMDD.OKdate FROM SMDD');
    SQL.Add(' LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
    SQL.Add(' LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add(' LEFT JOIN BDepartment ON BDepartment.ID = SMDD.RDepNO');
    SQL.Add(' WHERE DDZL.BUYNO LIKE :BUYNO + ''%'' AND SMDD.GSBH = ''' + main.Edit2.Text + ''' AND SMDD.GXLB = ''A'' AND DDZL.DDLB = ''N'' AND DDZL.DDZT IN (''Y'', ''S'')');
    SQL.Add(' GROUP BY SMDD.YSBH, SMDD.GXLB, DDZL.XieXing, SMDD.XieMing, DDZL.SheHao, SMDD.Article, DDZL.ShipDate, XXZL.DAOMH, XXZL.XTMH, SMDD.RDepNO, BDepartment.DepName, SMDD.RPlanDate, SMDD.RPlanEdate, SMDD.ROrder, SMDD.PRdate, SMDD.OKdate');
    if (StringGrid3.Cells[13, 0] = 'RPlanDate▼') then
        SQL.Add(' ORDER BY CASE WHEN SMDD.RPlanDate IS NULL THEN 2 ELSE 1 END, SMDD.RPlanDate, SMDD.ROrder')
    else if (StringGrid3.Cells[13, 0] = 'RPlanDate▲') then
      SQL.Add(' ORDER BY CASE WHEN SMDD.RPlanDate IS NULL THEN 2 ELSE 1 END, SMDD.RPlanDate DESC, SMDD.ROrder')
    else
      SQL.Add(' ORDER BY SMDD.YSBH');
    Active := true;

    for Col := 0 to StringGrid3.ColCount-1 do
    begin
      StringGrid3.Cols[Col].Clear;
      StringGrid3.Cells[Col, 0] := EditGridTitle[Col];
    end;

    StringGrid3.Selection := TGridRect(Rect(1, 1, 1, 1));
    StringGrid3.RowCount := RecordCount+1;
    StringGrid4.Cells[1, 0] := IntToStr(RecordCount);

    First;
    Row := 1;
    while not Eof do
    begin
      for Col := 1 to StringGrid3.ColCount-1 do
      begin
        StringGrid3.Cells[Col, Row] := FieldByName(EditGridTitle[Col]).AsString;
      end;
      Inc(Row);
      Next;
    end;
  end;
  TabSheet3.Caption := QBuyNo.FieldByName('BUY').AsString;
  StringGrid3.TopRow := 1;
end;

procedure TF_PreArrange.ScrollBox1Click(Sender: TObject);
begin
  DBGridEh3.SelectedRows.Clear;
  if (PageControl1.ActivePageIndex = 0) then
    StringGrid1.SetFocus
  else if (PageControl1.ActivePageIndex = 1) then
    DBGridEh2.SetFocus
  else if (PageControl1.ActivePageIndex = 2) then
    StringGrid3.SetFocus;
end;

procedure TF_PreArrange.DBGridEh3ColWidthsChanged(Sender: TObject);
var
  Width, Col: integer;
begin
  Width := 0;
  for Col := 0 to DBGridEh3.Columns.Count-1 do
  begin
    Width := Width + DBGridEh3.Columns.Items[Col].Width;
  end;
  Panel5.Width := DBGridEh4.Width + Splitter1.Width + DBGridEh1.Width + Splitter2.Width + Width + 45;
end;

procedure TF_PreArrange.StringGrid3TopLeftChanged(Sender: TObject);
begin
  HideAllButton;
  MonthCalendar1.Visible := false;
  ListBox1.Visible := false;
end;

procedure TF_PreArrange.FormResize(Sender: TObject);
begin
  HideAllButton;
  MonthCalendar1.Visible := false;
  ListBox1.Visible := false;
end;

procedure TF_PreArrange.Button13Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  Col, Row: integer;
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
    eclapp.workbooks[1].sheets.add;
    eclapp.workbooks[1].sheets[1].name := TabSheet3.Caption; //Sheet名稱

    for Col := 1 to StringGrid3.ColCount-1 do
    begin
      eclApp.workbooks[1].sheets[1].Cells[1, Col] := StringGrid3.Cells[Col, 0];
    end;

    with Query6 do
    begin
      Row := 2;
      First;
      while not eof do
      begin
        for Col := 1 to StringGrid3.ColCount-1 do
        begin
          eclApp.workbooks[1].sheets[1].Cells[Row, Col] := FieldByName(StringGrid3.Cells[Col, 0]).AsString;
        end;
        Inc(Row);
        Next;
      end;
      First;
    end;

    eclapp.columns.autofit;
    ShowMessage('Succeed');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

procedure TF_PreArrange.StringGrid3SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
  if (ACol in [13,14,15]) then
  begin
    if (StringGrid3.Cells[11, ARow] <> '') AND (StringGrid3.Cells[12, ARow] <> '') AND (StringGrid3.Cells[13, ARow] <> '') AND (StringGrid3.Cells[14, ARow] <> '') AND (StringGrid3.Cells[15, ARow] <> '') then
      StringGrid3.Cells[0, ARow] := '*'
    else
      StringGrid3.Cells[0, ARow] := '';
  end;
end;

procedure TF_PreArrange.ShowLoading;
begin
  ScrollBox2.Left := (main.Width - ScrollBox2.Width) div 2;
  ScrollBox2.Top := (main.Height - ScrollBox2.Height) div 2;
  if LoadSuccess then
    ImageLoad.Repaint;
end;

procedure TF_PreArrange.HideLoading;
begin
  ScrollBox2.Left := -1-ScrollBox2.Width;
  ScrollBox2.Top := -1-ScrollBox2.Height;
end;

procedure TF_PreArrange.ShowExport;
begin
  ScrollBox3.Left := (main.Width - ScrollBox3.Width) div 2;
  ScrollBox3.Top := (main.Height - ScrollBox3.Height) div 2;
  if LoadSuccess then
    ImageExport.Repaint;
end;

procedure TF_PreArrange.HideExport;
begin
  ScrollBox3.Left := -1-ScrollBox3.Width;
  ScrollBox3.Top := -1-ScrollBox3.Height;
end;

procedure TF_PreArrange.QLeanBeforeScroll(DataSet: TDataSet);
begin
  ShowLoading;
end;

procedure TF_PreArrange.StringGrid2DblClick(Sender: TObject);
begin
  if (StringGrid2.Cells[1, 1] <> '') then
  begin
    if (StringGrid2.Col = 1) AND (StringGrid2.Row = 6) then
    begin
      if F_Process <> nil then
      begin
        F_Process.show;
      end else
      begin
        F_Process := TF_Process.Create(self);
        F_Process.Show;
      end;
    end
    else if (StringGrid2.Col = 1) AND (StringGrid2.Row = 9) then
    begin
      if F_Shape <> nil then
      begin
        F_Shape.show;
      end else
      begin
        F_Shape := TF_Shape.Create(self);
        F_Shape.Show;
      end;
    end;
  end;
end;

procedure TF_PreArrange.StringGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
begin
  StringGrid2.MouseToCell(X, Y, Col, Row);
  SG2Row := Row;

  if (StringGrid2.Cells[1, 1] <> '') then
  begin
    if (Button = mbRight) AND (Col = 1) AND (Row = 6) AND (StringGrid2.Cells[1, 6] <> '') then
    begin
      StringGrid2.PopupMenu := PopupMenu6;
    end
    else if (Button = mbRight) AND (Col = 1) AND (Row = 9) AND (StringGrid2.Cells[1, 9] <> '') then
    begin
      StringGrid2.PopupMenu := PopupMenu6;
    end
    else
      StringGrid2.PopupMenu := PopupMenu7;
  end
  else
    StringGrid2.PopupMenu := PopupMenu7;
end;

procedure TF_PreArrange.DELETEClick(Sender: TObject);
begin
  QUpdate.SQL.Clear;
  if (SG2Row = 6) then
  begin
    StringGrid2.Cells[1, 6] := '';
    QUpdate.SQL.Add('UPDATE SCZL SET Process = Null WHERE ZLBH = ''' + StringGrid2.Cells[1, 1] + '''');
    QUpdate.ExecSQL;
  end
  else if (SG2Row = 9) then
  begin
    StringGrid2.Cells[1, 9] := '';
    QUpdate.SQL.Add('UPDATE SCZL SET Shape = Null WHERE ZLBH = ''' + StringGrid2.Cells[1, 1] + '''');
    QUpdate.ExecSQL;
  end;
  QUpdate.SQL.Clear;
end;

procedure TF_PreArrange.StringGrid1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
var
  ProNo, Pairs, PairsSTR: string;
  i, Isnumber, TotalPairs: integer;
  PairsPCH: PChar;
begin
  //選擇的Cell有排程時查詢詳細資料
  if (YSBHSG2 <> '') AND (Copy(YSBHSG2, Length(YSBHSG2)-2, 3) <> 'BUY') AND (SG2Query) then
  begin
    with Query5 do
    begin
      QSearch.Active := false;
      QSearch.SQL.Clear;
      QSearch.SQL.Add('SELECT DISTINCT ProNo FROM SCBBSS WHERE SCBH = ''' + YSBHSG2 + ''' AND GXLB = ''A''');
      QSearch.Active := true;

      if (QSearch.RecordCount > 0) then
      begin
        ProNo := QuotedStr(QSearch.FieldByName('ProNo').AsString);
        QSearch.Next;
        while not QSearch.eof do
        begin
          ProNo := ProNo + ',' + QuotedStr(QSearch.FieldByName('ProNo').AsString);
          QSearch.Next;
        end;

        Active := false;
        SQL.Clear;
        SQL.Add(' SELECT REPLACE(X.DAOMH,''LY-'','''') AS LY, D.DDBH AS RY, '''' AS ''Material/VT'', S.Style AS ''CHAT LIEU'', REPLACE(X.XTMH,''TV-'','''') AS ''Last#'', CONVERT(varchar(6), MONTH(SUBSTRING(D.BUYNO,1,6)+''01''))+'' Buy'' AS BUY, SCZL.Process AS ''Process'',');
        SQL.Add(' CASE WHEN POH >= 1.5 THEN 1 WHEN POH >= 1.25 AND POH < 1.5 THEN 2 WHEN POH >= 1.13 AND POH <= 1.24 THEN 3 WHEN POH >= 1.01 AND POH <= 1.12 THEN 4');
        SQL.Add('      WHEN POH >= 0.86 AND POH <= 1.0 THEN 5 WHEN POH >= 0.75 AND POH <= 0.85 THEN 6 WHEN POH >= 0.61 AND POH <= 0.74 THEN 7 WHEN POH <= 0.6 THEN 8 END AS ''Cut/C'',');
        SQL.Add(' CASE WHEN CHARINDEX(''/'',D.ARTICLE)>0 THEN SUBSTRING(D.ARTICLE,1,CHARINDEX(''/'',D.ARTICLE)-1) ELSE D.ARTICLE END AS SKU, SCZL.Shape AS ''Stitching/M'', D.Pairs AS ''Quantity/SL'',');
        SQL.Add(' CASE WHEN SUM(SCBBSS.Qty) >= D.Pairs THEN ''OK ''+CONVERT(varchar(2), MONTH(MAX(SCBB.SCDate)))+''/''+ CONVERT(varchar(2), DAY(MAX(SCBB.SCDate))) ');
        SQL.Add(' ELSE ''-''+CONVERT(varchar, CEILING(D.Pairs-SUM(SCBBSS.Qty))) END AS ''Forming/G'',');
        SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS CSD, L.YWSM AS ''Country/N'' FROM DDZL D');
        SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
        SQL.Add(' LEFT JOIN SCXXDV S ON S.XieXing = D.XieXing AND S.SheHao = D.SheHao');
        SQL.Add(' LEFT JOIN CLLBZL C ON C.CLLB = X.CLID');
        SQL.Add(' LEFT JOIN LBZLS L ON L.LB = ''06'' and L.LBDH = D.DDGB ');
        SQL.Add(' LEFT JOIN SCZL ON SCZL.ZLBH = D.DDBH');
        SQL.Add(' LEFT JOIN (');
        SQL.Add('   SELECT SCXXCL.XieXing, SCXXCL.SheHao, ROUND(MAX(CONVERT(float, SCXXCL.BZCL))/SUM(SCXXCL.BZRS+SCXXCL.BZJS), 2) AS POH FROM SCXXCL GROUP BY XieXing, SheHao');
        SQL.Add(' ) AS SCXXCL ON SCXXCL.XieXing = D.XieXing AND SCXXCL.SheHao = D.SheHao');
        SQL.Add(' LEFT JOIN SCBBSS ON SCBBSS.SCBH = D.DDBH');
        SQL.Add(' LEFT JOIN SCBB ON SCBB.ProNo = SCBBSS.ProNo');
        SQL.Add(' WHERE D.DDBH = ''' + YSBHSG2 + ''' AND SCBBSS.ProNO IN (' + ProNo + ') AND SCBBSS.GXLB = ''A'' ');
        SQL.Add(' GROUP BY X.DAOMH, D.DDBH, S.Style, X.XTMH, D.BUYNO, SCZL.Process, SCXXCL.POH, D.ARTICLE, SCZL.Shape, D.Pairs, D.ShipDate, L.YWSM');
        Active := true;
      end
      else begin
        Active := false;
        SQL.Clear;
        SQL.Add(' SELECT REPLACE(X.DAOMH,''LY-'','''') AS LY, D.DDBH AS RY, '''' AS ''Material/VT'', S.Style AS ''CHAT LIEU'', REPLACE(X.XTMH,''TV-'','''') AS ''Last#'', CONVERT(varchar(6), MONTH(SUBSTRING(D.BUYNO,1,6)+''01''))+'' Buy'' AS BUY, SCZL.Process AS ''Process'',');
        SQL.Add(' CASE WHEN POH >= 1.5 THEN 1 WHEN POH >= 1.25 AND POH < 1.5 THEN 2 WHEN POH >= 1.13 AND POH <= 1.24 THEN 3 WHEN POH >= 1.01 AND POH <= 1.12 THEN 4');
        SQL.Add('      WHEN POH >= 0.86 AND POH <= 1.0 THEN 5 WHEN POH >= 0.75 AND POH <= 0.85 THEN 6 WHEN POH >= 0.61 AND POH <= 0.74 THEN 7 WHEN POH <= 0.6 THEN 8 END AS ''Cut/C'',');
        SQL.Add(' CASE WHEN CHARINDEX(''/'',D.ARTICLE)>0 THEN SUBSTRING(D.ARTICLE,1,CHARINDEX(''/'',D.ARTICLE)-1) ELSE D.ARTICLE END AS SKU, SCZL.Shape AS ''Stitching/M'', D.Pairs AS ''Quantity/SL'', '''' AS ''Forming/G'',');
        SQL.Add(' CONVERT(varchar(2), MONTH(D.ShipDate))+''/''+ CONVERT(varchar(2), DAY(D.ShipDate)) AS CSD, L.YWSM AS ''Country/N'' FROM DDZL D');
        SQL.Add(' LEFT JOIN XXZL X ON X.XieXing = D.XieXing AND X.SheHao = D.SheHao');
        SQL.Add(' LEFT JOIN SCXXDV S ON S.XieXing = D.XieXing AND S.SheHao = D.SheHao');
        SQL.Add(' LEFT JOIN CLLBZL C ON C.CLLB = X.CLID');
        SQL.Add(' LEFT JOIN LBZLS L ON L.LB = ''06'' and L.LBDH = D.DDGB ');
        SQL.Add(' LEFT JOIN SCZL ON SCZL.ZLBH = D.DDBH');
        SQL.Add(' LEFT JOIN (');
        SQL.Add('   SELECT SCXXCL.XieXing, SCXXCL.SheHao, ROUND(MAX(CONVERT(float, SCXXCL.BZCL))/SUM(SCXXCL.BZRS+SCXXCL.BZJS), 2) AS POH FROM SCXXCL GROUP BY XieXing, SheHao');
        SQL.Add(' ) AS SCXXCL ON SCXXCL.XieXing = D.XieXing AND SCXXCL.SheHao = D.SheHao');
        SQL.Add(' WHERE D.DDBH = ''' + YSBHSG2 + ''' ');
        Active := true;
      end;

      First;
      for i := 0 to StringGrid2.RowCount - 1 do
      begin
        StringGrid2.Cells[1, i] := Fields[i].AsString;
      end;
    end;
  end
  else if (Copy(YSBHSG2, Length(YSBHSG2)-2, 3) = 'BUY') AND (SLT) then
  begin
    if InputQuery('','Please enter the total pairs of SLT orders', Pairs) = true then
    begin
      if TryStrToInt(Pairs, Isnumber) then
      begin
        StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row] := YSBHSG2 + ' 快速訂單' + #13#10 + 'Pairs:' + Pairs;
        //計算該日訂單雙數
        TotalPairs := 0;
        for i := 3 to DataRow + 2 do
        begin
          if StringGrid1.Cells[StringGrid1.Col, i] <> '' then
          begin
            PairsPCH := StrPos(PChar(StringGrid1.Cells[StringGrid1.Col, i]), 'Pairs:');
            PairsSTR := PairsPCH;
            PairsSTR := StringReplace(PairsSTR, 'Pairs:', '', [rfReplaceAll]);
            TotalPairs := TotalPairs + StrtoInt(PairsSTR);
          end;
        end;
        StringGrid1.Cells[StringGrid1.Col, DataRow + 3] := IntToStr(TotalPairs);

        with QUpdate do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('UPDATE ScheduleData SET InitialPairs = ' + Pairs + ' WHERE PlanYear = ' + Combobox1.Text + ' AND PlanMonth = ' + Combobox2.Text + ' AND PlanDay = ' + IntToStr(StringGrid1.Col) + ' AND DepNo = ''' + Edit1.Text + ''' AND SLTBUYNO = ' + COPY(YSBHSG2, 1, Pos('BUY', YSBHSG2)-1) + '');
          ExecSQL;
        end;
      end
      else
        ShowMessage('Numbers Only');
    end;
    SLT := false;
  end
  else begin
    StringGrid2.Cols[1].Clear;
  end;

  SG2Query := false;
  StringGrid2.Selection := TGridRect(Rect(-1, -1, -1, -1));
end;

procedure TF_PreArrange.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key IN [VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN]) then
  begin
    Input := 'Keyboard';
  end;
end;

procedure TF_PreArrange.TrackBar1Change(Sender: TObject);
var
  Col, Row: integer;
begin
  Label6.Caption := IntToStr(TrackBar1.Position) + '%';

  StringGrid1.ColWidths[0] := 70 * TrackBar1.Position div 100;
  for Col := 1 to StringGrid1.ColCount-2 do
  begin
    StringGrid1.ColWidths[Col] := 105 * TrackBar1.Position div 100;
  end;
  StringGrid1.ColWidths[StringGrid1.ColCount-1] := 90 * TrackBar1.Position div 100;

  for Row := 0 to 2 do
  begin
    StringGrid1.RowHeights[Row] := 32 * TrackBar1.Position div 100;
  end;

  for Row := 3 to StringGrid1.RowCount-5 do
  begin
    StringGrid1.RowHeights[Row] := 64 * TrackBar1.Position div 100;
  end;

  for Row := StringGrid1.RowCount-4 to StringGrid1.RowCount-1 do
  begin
    StringGrid1.RowHeights[Row] := 32 * TrackBar1.Position div 100;
  end;
  StringGrid1.LeftCol := 1;
  StringGrid1.TopRow := 3;
end;

procedure TF_PreArrange.Button14Click(Sender: TObject);
begin
  TrackBar1.Position := TrackBar1.Position + 10;
end;

procedure TF_PreArrange.Button15Click(Sender: TObject);
begin
  TrackBar1.Position := TrackBar1.Position - 10;
end;

end.
