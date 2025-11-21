unit SP_RYTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, DB,
  DBTables, ComObj, DateUtils, Menus, TeEngine, Series, TeeProcs, Chart, ExcelXP;

type
  TSP_RYTracking = class(TForm)
    Q_P: TQuery;
    DS_P: TDataSource;
    QTemp: TQuery;
    PC1: TPageControl;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    DTP_P: TDateTimePicker;
    CB_Building_P: TComboBox;
    CB_Lean_P: TComboBox;
    Button1: TButton;
    ED_RY_P: TEdit;
    DBGridEh1: TDBGridEh;
    Q_PBuilding: TStringField;
    Q_PLean: TStringField;
    Q_PPlanDate: TDateTimeField;
    Q_PCuttingDie: TStringField;
    Q_PARTICLE: TStringField;
    Q_PDDBH: TStringField;
    Q_PPairs: TIntegerField;
    Q_PShipDate: TDateTimeField;
    Q_PCountry: TStringField;
    Q_PInputRate: TStringField;
    Q_POutputRate: TStringField;
    Label4: TLabel;
    CB_Process_P: TComboBox;
    Label9: TLabel;
    CB_Supplier_P: TComboBox;
    Q_PBuyNo: TStringField;
    Button3: TButton;
    Button4: TButton;
    Q_PParts: TStringField;
    Q_PMatchedPairs: TIntegerField;
    Q_PInputPairs: TIntegerField;
    Q_POutputPairs: TIntegerField;
    TabSheet6: TTabSheet;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DTP_TC1: TDateTimePicker;
    Button7: TButton;
    CB_Process_TC: TComboBox;
    CB_Supplier_TC: TComboBox;
    Button8: TButton;
    DTP_TC2: TDateTimePicker;
    Label18: TLabel;
    Chart_TC: TChart;
    Series_TC_Input: TBarSeries;
    Series_TC_Output: TBarSeries;
    ToolTip: TPanel;
    TT_Content: TLabel;
    Label19: TLabel;
    ED_SKU_P: TEdit;
    Q_PInput: TStringField;
    Q_POutput: TStringField;
    PopupMenu2: TPopupMenu;
    Excel1: TMenuItem;
    Q_PSeq: TFloatField;
    Timer1: TTimer;
    Q_PEstLaunchDate: TStringField;
    Q_PActLaunchDate: TDateTimeField;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DTP_EWT: TDateTimePicker;
    Button2: TButton;
    CB_Process_EWT: TComboBox;
    CB_Supplier_EWT: TComboBox;
    Button5: TButton;
    Chart_EWT: TChart;
    Series_EWT_EstInput: TBarSeries;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTP_PChange(Sender: TObject);
    procedure CB_Building_PChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure Q_PAfterScroll(DataSet: TDataSet);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Q_PAfterOpen(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Series_TC_InputGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure Series_TC_OutputGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure Series_TC_InputClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Series_TC_OutputClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Series_EWT_EstInputClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart_EWTGetAxisLabel(Sender: TChartAxis;
      Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
  private
    { Private declarations }
    WarningFlag: boolean;
    sProcess, sSupplier, ewProcess, ewSupplierID, ewSupplierName: string;
    InputContent, OutputContent: array of string;
    procedure ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    procedure ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    function CountOccurrences(SubStr, Text: string): integer;
  public
    { Public declarations }
    ResultRY: string;
  end;

var
  SP_RYTracking: TSP_RYTracking;

const
  ProcessKey: array[0..4] of string = (
    'ALL',
    'PRINTING',
    'HEAT PRESSING',
    'EMBROIDERY',
    'TRANSFER PRINTING'
  );

  SupplierKey: array[0..10] of string = (
    'ALL',
    'JNG',
    'P154',
    'V066',
    'P213',
    'A159',
    'V133',
    'V034',
    'V194',
    'K110',
    'P186'
  );

  PartEN: array[0..21] of string = (
    'NO PROCESSING',
    'UPPER',
    'UPPER LOGO', 
    'TONGUE',
    'TONGUE LOGO',
    'TONGUE LINING',
    'TONGUE LINING LOGO',
    'EYESTAY LOGO',
    'COLLAR LOGO',
    'BACKSTAY LOGO',
    'HEEL LOGO',
    'BACK TAB LOGO',
    'STAR/CHEVRN LOGO',
    'TOE CAP',
    'OUTSOLE',
    'FOXING',
    'BB FOXING',
    'INSOLE',
    'BACKSTAY',
    'STRAP',
    'WEBBING',
    'QUARTER OVERLAY BAR'
  );

  PartVN: array[0..21] of string = (
    'KHONG CAN GIA CONG',
    'THAN',
    'LOGO THAN',
    'LUOI GA',
    'LOGO LUOI GA',
    'LOT LUOI GA',
    'LOGO LOT LUOI GA',
    'LOGO DEM',
    'LOGO VONG CO',
    'LOGO DAY GOT',
    'NHAN GOT',
    'LOGO HAU',
    'TRANG/SAO',
    'BAO MUI',
    'DE LON',
    'DAY CCS',
    'TALON THAN',
    'DE TRUNG',
    'DAY GOT',
    'DAY QUAI',
    'DAY DET',
    'TRANG TRI THAN'
  );

  PartCH: array[0..21] of string = (
    '不需加工',
    '鞋身',
    '鞋身LOGO', 
    '鞋舌',
    '鞋舌LOGO', 
    '鞋舌內裡',
    '鞋舌內裡LOGO',
    '眼片LOGO',
    '領口LOGO',
    '後吊LOGO',
    '後跟標',
    '後上片',
    '星星月亮LOGO',
    '前包頭',
    '大底',
    '邊條', 
    'BB邊條',
    '中底',
    '後吊',
    '絆帶',
    '織帶',
    '鞋面飾片'
  );

  ProcessEN: array[0..3] of string = (
    'PRINTING',
    'HEAT PRESSING',
    'EMBROIDERY',
    'TRANSFER PRINTING'
  );

  ProcessVN: array[0..3] of string = (
    'IN',
    'EP',
    'THEU',
    'CHUYEN IN'
  );

  ProcessCH: array[0..3] of string = (
    '印刷',
    '高週波',
    '電繡',
    '轉印'
  );

implementation

uses
  main1, SP_RYProgress1, EstWorkload1;

{$R *.dfm}

function TSP_RYTracking.CountOccurrences(SubStr, Text: string): Integer;
var
  PosIndex: Integer;
  StartPos: Integer;
begin
  Result := 0;
  StartPos := 1;

  PosIndex := Pos(SubStr, Copy(Text, StartPos, Length(Text) - StartPos + 1));
  
  while PosIndex > 0 do
  begin
    Inc(Result);
    StartPos := StartPos + PosIndex + Length(SubStr) - 1;
    PosIndex := Pos(SubStr, Copy(Text, StartPos, Length(Text) - StartPos + 1));
  end;
end;

procedure TSP_RYTracking.ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
var
  Building: string;
  i: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    if (Mode = 'OS') OR (Mode = 'OS_Only') then
    begin
      SQL.Add('SELECT DISTINCT Building_TX AS building_no FROM schedule_factorylink');
      SQL.Add('WHERE Year + ''/'' + Month = (');
      SQL.Add('  SELECT MAX(Year + ''/'' + Month) AS Month FROM schedule_factorylink');
      SQL.Add('  WHERE DATEDIFF(MONTH, CONVERT(SmallDateTime, Year + ''/'' + Month + ''/01''), CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/01', StartOfTheMonth(DTP_Start.Date)) + ''')) BETWEEN 0 AND 6');
      SQL.Add(')');
      SQL.Add('ORDER BY Building_TX');
    end
    else begin
      SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
      SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_Start.Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_End.Date)) + '''');
      SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('ORDER BY building_no');
    end;
    Active := true;

    i := 0;
    Building := ComboBox.Text;
    ComboBox.Clear;
    if (Mode = 'ALL') OR (Mode = 'OS') then
    begin
      ComboBox.Items.Add('ALL');
      ComboBox.ItemIndex := 0;
      Inc(i);
    end;
    
    while not Eof do
    begin
      ComboBox.Items.Add(FieldByName('building_no').AsString);
      if (FieldByName('building_no').AsString = Building) then
        ComboBox.ItemIndex := i;
      Inc(i);
      Next;
    end;
    if (ComboBox.ItemIndex < 0) then
      ComboBox.ItemIndex := 0;
    ComboBox.DropDownCount := RecordCount + 1;
  end;
end;

procedure TSP_RYTracking.ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
var
  Lean: string;
  i: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    if (Mode = 'OS') OR (Mode = 'OS_Only') then
    begin
      SQL.Add('SELECT DISTINCT Lean_TX AS lean_no FROM schedule_factorylink');
      SQL.Add('WHERE Year + ''/'' + Month = (');
      SQL.Add('  SELECT MAX(Year + ''/'' + Month) AS Month FROM schedule_factorylink');
      SQL.Add('  WHERE DATEDIFF(MONTH, CONVERT(SmallDateTime, Year + ''/'' + Month + ''/01''), CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/01', StartOfTheMonth(DTP_Start.Date)) + ''')) BETWEEN 0 AND 6');
      SQL.Add(')');
      if (SourceBox.Text <> 'ALL') then
        SQL.Add('AND Building_TX = ''' + SourceBox.Text + '''');
      SQL.Add('ORDER BY Lean_TX');
    end
    else begin
      if (Mode = 'NONE') then
        SQL.Add('SELECT DISTINCT UPPER(SUBSTRING(lean_no, 1, 6)) AS lean_no FROM schedule_crawler')
      else
        SQL.Add('SELECT DISTINCT UPPER(lean_no) AS lean_no FROM schedule_crawler');
      SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_Start.Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_End.Date)) + '''');
      if (SourceBox.Text <> 'ALL') then
        SQL.Add('AND building_no = ''' + SourceBox.Text + '''');
      SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('ORDER BY lean_no');
    end;
    Active := true;

    i := 0;
    Lean := ComboBox.Text;
    ComboBox.Clear;
    if (Mode = 'ALL') OR (Mode = 'OS') then
    begin
      ComboBox.Items.Add('ALL');
      ComboBox.ItemIndex := 0;
      Inc(i);
    end;

    while not Eof do
    begin
      ComboBox.Items.Add(FieldByName('lean_no').AsString);
      if (FieldByName('lean_no').AsString = Lean) then
        ComboBox.ItemIndex := i;
      Inc(i);
      Next;
    end;
    if (ComboBox.ItemIndex < 0) then
      ComboBox.ItemIndex := 0;
    ComboBox.DropDownCount := RecordCount + 1;
  end;
end;

procedure TSP_RYTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSP_RYTracking.FormDestroy(Sender: TObject);
begin
  SP_RYTracking := Nil;
end;

procedure TSP_RYTracking.FormCreate(Sender: TObject);
begin
  WarningFlag := true;
  DTP_P.Date := StartOfTheMonth(Date); 
  DTP_EWT.Date := Date;
  DTP_TC1.Date := StartOfTheMonth(Date);
  DTP_TC2.Date := Date;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY building_no');
    Active := true;

    CB_Building_P.Clear;
    CB_Building_P.Items.Add('ALL');

    while not Eof do
    begin
      CB_Building_P.Items.Add(FieldByName('building_no').AsString);
      Next;
    end;

    CB_Building_P.ItemIndex := 0;
    CB_Building_P.DropDownCount := RecordCount + 1;
  end;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SUBSTRING(lean_no, 1, 6) AS lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY lean_no');
    Active := true;

    CB_Lean_P.Clear;
    CB_Lean_P.Items.Add('ALL');

    while not Eof do
    begin
      CB_Lean_P.Items.Add(FieldByName('lean_no').AsString);
      Next;
    end;

    CB_Lean_P.ItemIndex := 0;
    CB_Lean_P.DropDownCount := RecordCount + 1;
  end;

  PC1.ActivePageIndex := 0;
end;

procedure TSP_RYTracking.DTP_PChange(Sender: TObject);
begin
  WarningFlag := true;
  ReloadBuilding(CB_Building_P, DTP_P, DTP_P, 'ALL');
  ReloadLean(CB_Lean_P, CB_Building_P, DTP_P, DTP_P, 'ALL');
end;

procedure TSP_RYTracking.CB_Building_PChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_P, CB_Building_P, DTP_P, DTP_P, 'ALL');
end;

procedure TSP_RYTracking.Button1Click(Sender: TObject);
var
  InputPairs, OutputPairs, i: integer;
  SKU: string;
  eDate: TDate;
begin
  sProcess := ProcessKey[CB_Process_P.ItemIndex];
  sSupplier := SupplierKey[CB_Supplier_P.ItemIndex];

  eDate := EndOfTheMonth(IncMonth(DTP_P.Date, 1));
  if (eDate <= EndOfTheMonth(IncMonth(main.Today, 1))) then
    eDate := EndOfTheMonth(IncMonth(main.Today, 1));

  if (WarningFlag) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT DISTINCT SC.XieXing, SC.SheHao, SC.ARTICLE FROM (');
      SQL.Add('  SELECT DISTINCT DDZL.XieXing, DDZL.SheHao, DDZL.ARTICLE FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_P.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', eDate) + ''' AND DDZL.XieXing IS NOT NULL');
      SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + ''''); 
      SQL.Add(') AS SC');
      SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = SC.XieXing AND MSP.SheHao = SC.SheHao');
      SQL.Add('WHERE MSP.XieXing IS NULL OR (MSP.Part <> ''NO PROCESSING'' AND ISNULL(MSP.LeadTime, 0) = 0)');
      Active := true;

      if (RecordCount > 0) then
      begin
        SKU := '';
        i := 1;
        while not Eof do
        begin
          SKU := SKU + #13#10 + IntToStr(i) + '. ' + FieldByName('ARTICLE').AsString;
          Inc(i);
          Next;
        end;

        ShowMessage('There are ' + IntToStr(RecordCount) + ' SKUs don''t have processing data set up between [' + FormatDateTime('yyyy/MM', DTP_P.Date) + '] ~ [' + FormatDateTime('yyyy/MM', eDate) + '].' + #13#10 + SKU);
      end;
    end;
    WarningFlag := false;
  end;

  with Q_P do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#SC'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SC END;');
    ExecSQL;

    SQL.Add('SELECT SC.Building, SC.Lean, SC.PlanDate, SC.ry_index, SC.CuttingDie, SC.ARTICLE, SC.BuyNo, SC.DDBH, SC.Pairs, SC.ShipDate, SC.Country,');
    SQL.Add('SC.Part, SC.Process, SC.ZLPairs, SC.EstLaunchDate, SC.ActLaunchDate, SC.InputPairs, ISNULL(SUM(SPO.Pairs), 0) AS OutputPairs INTO #SC FROM (');
    SQL.Add('  SELECT SC.Building, SC.Lean, SC.PlanDate, SC.ry_index, SC.CuttingDie, SC.ARTICLE, SC.BuyNo, SC.DDBH, SC.Pairs, SC.ShipDate, SC.Country,');
    SQL.Add('  SC.Part, SC.Process, SC.ZLPairs, ISNULL(SUM(SPI.Pairs), 0) AS InputPairs, SC.EstLaunchDate, MIN(SPI.Date) AS ActLaunchDate FROM (');
    SQL.Add('    SELECT SC.Building, SC.Lean, SC.PlanDate, SC.ry_index, XXZL.DAOMH AS CuttingDie, XXZL.ARTICLE, CAST(CAST(SUBSTRING(SC.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BuyNo,');
    SQL.Add('    SC.DDBH, SC.Pairs, SC.ShipDate, LBZLS.YWSM AS Country, MSP.Part, MSP.Process, CASE WHEN MSP.Part IS NOT NULL THEN SC.Pairs ELSE 0 END AS ZLPairs,');
    SQL.Add('    CASE WHEN MSP.LeadTime IS NOT NULL THEN CONVERT(VARCHAR, DATEADD(DAY, -MSP.LeadTime, SC.PlanDate), 111) ELSE CASE WHEN MSP.Part IS NOT NULL THEN ''No Lead Time'' ELSE NULL END END AS EstLaunchDate FROM (');
    SQL.Add('      SELECT Building, Lean, CONVERT(SmallDateTime, LEFT(PlanDate, 10)) AS PlanDate, CAST(RIGHT(PlanDate, 1) AS INT) AS ry_index, RYPairs, Pairs, DDBH, BUYNO, XieXing, SheHao, ShipDate, DDGB FROM (');
    SQL.Add('        SELECT SC.building_no AS Building, SC.lean_no AS Lean, MIN(CONVERT(VARCHAR, SC.schedule_date, 111) + ''-'' + CAST(SC.ry_index AS VARCHAR)) AS PlanDate,');
    SQL.Add('        DDZL.Pairs AS RYPairs, SUM(CAST(SC.sl AS INT)) AS Pairs, DDZL.DDBH, DDZL.BUYNO, DDZL.XieXing, DDZL.SheHao, DDZL.ShipDate, DDZL.DDGB FROM schedule_crawler AS SC');
    SQL.Add('        LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('        WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_P.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_P.Date)) + '''');
    if (CB_Building_P.Text <> 'ALL') then
      SQL.Add('        AND SC.building_no = ''' + CB_Building_P.Text + '''');
    if (CB_Lean_P.Text <> 'ALL') then
      SQL.Add('        AND SC.lean_no = ''' + CB_Lean_P.Text + '''');
    if (ED_SKU_P.Text <> '') then
      SQL.Add('        AND DDZL.ARTICLE LIKE ''' + ED_SKU_P.Text + '%''');
    if (ED_RY_P.Text <> '') then
      SQL.Add('        AND DDZL.DDBH LIKE ''' + ED_RY_P.Text + '%''');
    SQL.Add('        AND SC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('        GROUP BY SC.building_no, SC.lean_no, DDZL.Pairs, DDZL.DDBH, DDZL.BUYNO, DDZL.XieXing, DDZL.SheHao, DDZL.ShipDate, DDZL.DDGB');
    SQL.Add('      ) AS SC');
    SQL.Add('    ) AS SC');
    SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = SC.XieXing AND XXZL.SheHao = SC.SheHao');
    SQL.Add('    LEFT JOIN LBZLS ON LBZLS.LBDH = SC.DDGB AND LBZLS.LB = ''06''');
    SQL.Add('    LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = XXZL.XieXing AND MSP.SheHao = XXZL.SheHao AND MSP.Part <> ''NO PROCESSING''');
    SQL.Add('    WHERE 1 = 1');
    if (CB_Process_P.Text <> 'ALL') then
      SQL.Add('    AND MSP.Process = ''' + ProcessKey[CB_Process_P.ItemIndex] + '''');
    if (CB_Supplier_P.Text <> 'ALL') then
      SQL.Add('    AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_P.ItemIndex] + '''');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SecondProcessInput AS SPI ON SPI.Building = SC.Building AND SPI.Lean = SC.Lean AND SPI.RY = SC.DDBH AND SPI.Part = SC.Part AND SPI.Process = SC.Process');
    SQL.Add('  GROUP BY SC.Building, SC.Lean, SC.PlanDate, SC.ry_index, SC.CuttingDie, SC.ARTICLE, SC.BuyNo, SC.DDBH, SC.Pairs, SC.ShipDate, SC.Country, SC.Part, SC.Process, SC.ZLPairs, SC.EstLaunchDate');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN SecondProcessOutput AS SPO ON SPO.Building = SC.Building AND SPO.Lean = SC.Lean AND SPO.RY = SC.DDBH AND SPO.Part = SC.Part AND SPO.Process = SC.Process');
    SQL.Add('GROUP BY SC.Building, SC.Lean, SC.PlanDate, SC.ry_index, SC.CuttingDie, SC.ARTICLE, SC.BuyNo, SC.DDBH, SC.Pairs, SC.ShipDate, SC.Country, SC.Part, SC.Process, SC.ZLPairs, SC.InputPairs, SC.EstLaunchDate, SC.ActLaunchDate');

    SQL.Add('SELECT SC.Building, SC.Lean, SC.PlanDate, SC.CuttingDie, SC.ARTICLE, SC.BuyNo, SC.DDBH, SC.Pairs, SC.ShipDate, SC.Country, SC.EstLaunchDate, SC.ActLaunchDate, SC.InputPairs, SC.InputRate,');
    SQL.Add('SC.OutputPairs, SC.OutputRate, CAST(SP.Parts AS VARCHAR(200)) AS Parts, CAST(SP.Input AS VARCHAR(200)) AS Input, CAST(SP.Output AS VARCHAR(200)) AS Output, MC.MatchedPairs,');
    SQL.Add('ROW_NUMBER() OVER(PARTITION BY SC.Building, SC.Lean ORDER BY SC.PlanDate, SC.ry_index) AS Seq FROM (');
    SQL.Add('  SELECT Building, Lean, PlanDate, ry_index, CuttingDie, ARTICLE, BuyNo, DDBH, Pairs, ShipDate, Country, MIN(EstLaunchDate) AS EstLaunchDate, MIN(ActLaunchDate) AS ActLaunchDate,');
    SQL.Add('  MIN(InputPairs) AS InputPairs, CASE WHEN SUM(ZLPairs) > 0 THEN CAST(CAST(SUM(InputPairs) * 100.0 / SUM(ZLPairs) AS NUMERIC(4, 1)) AS VARCHAR) + ''%'' ELSE ''Not Required'' END AS InputRate,');
    SQL.Add('  MIN(OutputPairs) AS OutputPairs, CASE WHEN SUM(ZLPairs) > 0 THEN CAST(CAST(SUM(OutputPairs) * 100.0 / SUM(ZLPairs) AS NUMERIC(4, 1)) AS VARCHAR) + ''%'' ELSE ''Not Required'' END AS OutputRate FROM #SC AS SC');
    SQL.Add('  GROUP BY Building, Lean, PlanDate, ry_index, CuttingDie, ARTICLE, BuyNo, DDBH, Pairs, ShipDate, Country');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DISTINCT Building, Lean, DDBH, STUFF((');
    SQL.Add('    SELECT '', '' + Part FROM #SC AS SC2');
    SQL.Add('    WHERE SC2.DDBH = SC.DDBH AND SC2.Building = SC.Building AND SC2.Lean = SC.Lean');
    SQL.Add('    ORDER BY Process, Part');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 2, '''') AS Parts, STUFF((');
    SQL.Add('    SELECT '', '' + CAST(InputPairs AS VARCHAR) FROM #SC AS SC2');
    SQL.Add('    WHERE SC2.DDBH = SC.DDBH AND SC2.Building = SC.Building AND SC2.Lean = SC.Lean');
    SQL.Add('    ORDER BY Process, Part');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 2, '''') AS Input, STUFF((');
    SQL.Add('    SELECT '', '' + CAST(OutputPairs AS VARCHAR) FROM #SC AS SC2');
    SQL.Add('    WHERE SC2.DDBH = SC.DDBH AND SC2.Building = SC.Building AND SC2.Lean = SC.Lean');
    SQL.Add('    ORDER BY Process, Part');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 2, '''') AS Output FROM #SC AS SC');
    SQL.Add(') AS SP ON SP.Building = SC.Building AND SP.Lean = SC.Lean AND SP.DDBH = SC.DDBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT Building, Lean, DDBH, MIN(MatchedPairs) AS MatchedPairs FROM (');
    SQL.Add('    SELECT SC.Building, SC.Lean, SC.DDBH, SC.Process, SC.Part, ISNULL(SUM(SPO.Pairs), 0) AS MatchedPairs FROM #SC AS SC');
    SQL.Add('    LEFT JOIN SecondProcessOutput AS SPO ON SPO.Building = SC.Building AND SPO.Lean = SC.Lean AND SPO.RY = SC.DDBH AND SPO.Part = SC.Part AND SPO.Process = SC.Process');
    SQL.Add('    GROUP BY SC.Building, SC.Lean, SC.DDBH, SC.Process, SC.Part');
    SQL.Add('  ) AS SC');
    SQL.Add('  GROUP BY Building, Lean, DDBH');
    SQL.Add(') AS MC ON MC.Building = SC.Building AND MC.Lean = SC.Lean AND MC.DDBH = SC.DDBH');
    SQL.Add('ORDER BY SC.Building, SC.Lean, SC.PlanDate, SC.ry_index');
    Active := true;

    DisableControls;
    InputPairs := 0;
    OutputPairs := 0;
    while not Eof do
    begin
      Inc(InputPairs, FieldByName('InputPairs').AsInteger);
      Inc(OutputPairs, FieldByName('OutputPairs').AsInteger);
      Next;
    end;
    DBGridEh1.Columns[12].Footer.Value := FormatFloat('###,###,##0', InputPairs);
    DBGridEh1.Columns[13].Footer.Value := FormatFloat('###,###,##0', OutputPairs);
    First;
    EnableControls;
  end;
end;

procedure TSP_RYTracking.DBGridEh1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  sRect: TRect;
  StrDate: string;
  EstDate: TDate;
begin
  if (DataCol >= 5) then
  begin
    DBGridEh1.Canvas.Font.Color := clBlack;
    if (Q_P.FieldByName('OutputRate').AsString = '100.0%') then
      DBGridEh1.Canvas.Brush.Color := $008DFCC8
    else if (Q_P.FieldByName('InputRate').AsString = '100.0%') then
      DBGridEh1.Canvas.Brush.Color := $00FFC175
    else if (Q_P.FieldByName('EstLaunchDate').AsString <> 'No Lead Time') AND (Q_P.FieldByName('InputRate').AsString <> 'Not Required') then
    begin
      StrDate := Q_P.FieldByName('EstLaunchDate').AsString;
      EstDate := EncodeDateTime(StrToInt(Copy(StrDate, 1, 4)), StrToInt(Copy(StrDate, 6, 2)), StrToInt(Copy(StrDate, 9, 2)), 0, 0, 0, 0);

      if (Q_P.FieldByName('ActLaunchDate').IsNull) then
      begin
        if (EstDate <= Date) then
        begin
          DBGridEh1.Canvas.Brush.Color := clRed;
          DBGridEh1.Canvas.Font.Color := clWindow;
        end;
      end
      else begin
        if (EstDate < Q_P.FieldByName('ActLaunchDate').AsDateTime) then
        begin
          DBGridEh1.Canvas.Brush.Color := clRed;
          DBGridEh1.Canvas.Font.Color := clWindow;
        end;
      end;
    end
    else if (Q_P.FieldByName('InputRate').AsString <> 'Not Required') AND (Q_P.FieldByName('InputRate').AsString <> '0.0%') then
      DBGridEh1.Canvas.Brush.Color := $008CFFFA
    else if (Q_P.FieldByName('InputRate').AsString = '0.0%') then
      DBGridEh1.Canvas.Brush.Color := clWindow
    else begin
      DBGridEh1.Canvas.Brush.Color := clGray;
      DBGridEh1.Canvas.Font.Color := clWindow;
    end;
  end;

  if (gdFocused in State) OR (gdSelected in State) then
  begin
    DBGridEh1.Canvas.Font.Color := clWhite;
    DBGridEh1.Canvas.Brush.Color := clHighlight;
  end;

  if (Column.FieldName = 'InputRate') AND (Q_P.FieldByName('InputRate').AsString = 'Not Required') then
  begin
    sRect := Rect;
    Inc(sRect.Right, DBGridEh1.Columns[DataCol + 1].Width);
    DBGridEh1.Canvas.FillRect(sRect);
    DBGridEh1.Canvas.TextOut(sRect.Left + (sRect.Right - sRect.Left - DBGridEh1.Canvas.TextWidth(DBGridEh1.Fields[DataCol].AsString)) DIV 2, sRect.Top + 2, DBGridEh1.Fields[DataCol].AsString);
  end
  else if (Column.FieldName = 'OutputRate') AND (Q_P.FieldByName('OutputRate').AsString = 'Not Required') then
  begin
    sRect := Rect;
    Inc(sRect.Left, -DBGridEh1.Columns[DataCol - 1].Width-1);
    DBGridEh1.Canvas.FillRect(sRect);
    DBGridEh1.Canvas.TextOut(sRect.Left + (sRect.Right - sRect.Left - DBGridEh1.Canvas.TextWidth(DBGridEh1.Fields[DataCol].AsString)) DIV 2, sRect.Top + 2, DBGridEh1.Fields[DataCol].AsString);
  end
  else if (DataCol >= 5) then
  begin
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  if (gdFixed in State = false) AND (DataCol >= 1) AND (DataCol <= 4) AND (Q_P.FieldByName('Seq').AsInteger = 1) then
  begin
    DBGridEh1.Canvas.Font.Color := clBlack;
    DBGridEh1.Canvas.FillRect(Rect);
    if (Column.FieldName = 'PlanDate') then
      DBGridEh1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, FormatDateTime('yyyy/MM/dd', DBGridEh1.Fields[DataCol].AsDateTime))
    else
      DBGridEh1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, DBGridEh1.Fields[DataCol].AsString);

    if (DBGridEh1.Row > 1) then
    begin
      DBGridEh1.Canvas.Pen.Color := clSilver;
      DBGridEh1.Canvas.Pen.Style := psSolid;
      DBGridEh1.Canvas.MoveTo(Rect.Left, Rect.Top - 1);
      DBGridEh1.Canvas.LineTo(Rect.Right, Rect.Top - 1);
    end;
  end;
end;

procedure TSP_RYTracking.DBGridEh1ColEnter(Sender: TObject);
begin
  if (DBGridEh1.SelectedIndex IN [12, 13]) AND (Q_P.FieldByName('InputRate').AsString = 'Not Required') then
  begin
    DBGridEh1.SelectedIndex := 13;
    DBGridEh1.Options := DBGridEh1.Options - [dgEditing];
  end
  else begin
    DBGridEh1.Options := DBGridEh1.Options + [dgEditing];
  end;
end;
      
procedure TSP_RYTracking.Q_PAfterScroll(DataSet: TDataSet);
begin
  if (DBGridEh1.SelectedIndex IN [12, 13]) AND (Q_P.FieldByName('InputRate').AsString = 'Not Required') then
  begin
    DBGridEh1.SelectedIndex := 13;
    DBGridEh1.Options := DBGridEh1.Options - [dgEditing];
  end
  else begin
    DBGridEh1.Options := DBGridEh1.Options + [dgEditing];
  end;
end;

procedure TSP_RYTracking.DBGridEh1Columns11EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (Q_P.FieldByName('InputRate').AsString <> 'Not Required') then
  begin
    SP_RYProgress := TSP_RYProgress.Create(Self);
    SP_RYProgress.LoadData(Q_P.FieldByName('Building').AsString, Q_P.FieldByName('Lean').AsString, Q_P.FieldByName('DDBH').AsString, sProcess, sSupplier);
    SP_RYProgress.ShowModal;
  end
  else begin
    ShowMessage('The RY [' + Q_P.FieldByName('DDBH').AsString + '] does not require processing.');
  end;
end;

procedure TSP_RYTracking.Q_PAfterOpen(DataSet: TDataSet);
begin
  DBGridEh1.Columns[15].Visible := (Q_P.RecordCount > 0);
end;

procedure TSP_RYTracking.Button3Click(Sender: TObject);
var
  i, Index1, Index2, Index3: integer;
begin
  Index1 := CB_Process_P.ItemIndex;
  Index2 := CB_Process_TC.ItemIndex; 
  Index3 := CB_Process_EWT.ItemIndex;

  CB_Process_P.Clear;
  CB_Process_TC.Clear;
  CB_Process_EWT.Clear;
  
  CB_Process_P.Items.Add('ALL');

  if (Button3.Caption = 'VN') then
  begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin
      CB_Process_P.Items.Add(ProcessCH[i - 1]);
      CB_Process_TC.Items.Add(ProcessCH[i - 1]);
      CB_Process_EWT.Items.Add(ProcessCH[i - 1]);
    end;

    Button3.Caption := 'CH';
    Button8.Caption := 'CH';
    Button5.Caption := 'CH';
  end
  else if (Button3.Caption = 'CH') then
  begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin
      CB_Process_P.Items.Add(ProcessEN[i - 1]);
      CB_Process_TC.Items.Add(ProcessEN[i - 1]); 
      CB_Process_EWT.Items.Add(ProcessEN[i - 1]);
    end;

    Button3.Caption := 'EN';
    Button8.Caption := 'EN';
    Button5.Caption := 'EN';
  end
  else begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin
      CB_Process_P.Items.Add(ProcessVN[i - 1]);
      CB_Process_TC.Items.Add(ProcessVN[i - 1]);
      CB_Process_EWT.Items.Add(ProcessVN[i - 1]);
    end;

    Button3.Caption := 'VN';
    Button8.Caption := 'VN';
    Button5.Caption := 'VN';
  end;

  CB_Process_P.ItemIndex := Index1;  
  CB_Process_TC.ItemIndex := Index2;
  CB_Process_EWT.ItemIndex := Index3;
end;

procedure TSP_RYTracking.Button4Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row, i: integer;
  Parts, Input, Output: string;
begin
  if (Q_P.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      for Col := 0 to DBGridEh1.Columns.Count - 5 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh1.Columns[Col].Title.Caption;
      end;
      eclApp.Cells[1, Col+1] := 'Part';
      eclApp.Cells[1, Col+2] := 'Processing|Input';
      eclApp.Cells[1, Col+3] := 'Processing|Input-Lack';
      eclApp.Cells[1, Col+4] := 'Processing|Output';
      eclApp.Cells[1, Col+5] := 'Processing|Output-Lack';

      Q_P.First;
      Row := 2;
      while not Q_P.Eof do
      begin
        Parts := Q_P.FieldByName('Parts').AsString;
        Input := Q_P.FieldByName('Input').AsString; 
        Output := Q_P.FieldByName('Output').AsString;
        
        if (Button3.Caption = 'VN') then
        begin
          for i := Length(PartEN) - 1 downto 0 do
          begin
            if (Pos(PartEN[i], Parts) > 0) then
              Parts := StringReplace(Parts, PartEN[i], PartVN[i], [rfReplaceAll]);
          end;
        end
        else if (Button3.Caption = 'CH') then
        begin
          for i := Length(PartEN) - 1 downto 0 do
          begin
            if (Pos(PartEN[i], Parts) > 0) then
              Parts := StringReplace(Parts, PartEN[i], PartCH[i], [rfReplaceAll]);
          end;
        end;

        while (Pos(',', Parts) > 0) do
        begin
          for Col := 0 to DBGridEh1.Columns.Count - 5 do
          begin
            eclApp.Cells[Row, Col+1] := Q_P.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
          end;

          eclApp.Cells[Row, Col+1] := Copy(Parts, 1, Pos(',', Parts) - 1);
          eclApp.Cells[Row, Col+2] := Copy(Input, 1, Pos(',', Input) - 1);
          eclApp.Cells[Row, Col+3] := eclApp.Cells[Row, Col+2].Value - Q_P.FieldByName('Pairs').AsInteger;
          eclApp.Cells[Row, Col+4] := Copy(Output, 1, Pos(',', Output) - 1);
          eclApp.Cells[Row, Col+5] := eclApp.Cells[Row, Col+4].Value - Q_P.FieldByName('Pairs').AsInteger;
          Parts := Copy(Parts, Pos(',', Parts) + 2, Length(Parts) - Pos(',', Parts) - 1); 
          Input := Copy(Input, Pos(',', Input) + 2, Length(Input) - Pos(',', Input) - 1);
          Output := Copy(Output, Pos(',', Output) + 2, Length(Output) - Pos(',', Output) - 1);
          Inc(Row);
        end;
        
        for Col := 0 to DBGridEh1.Columns.Count - 5 do
        begin
          eclApp.Cells[Row, Col+1] := Q_P.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
        end;
        eclApp.Cells[Row, Col+1] := Parts;
        eclApp.Cells[Row, Col+2] := Input;
        eclApp.Cells[Row, Col+3] := StrToInt(Input) - Q_P.FieldByName('Pairs').AsInteger;
        eclApp.Cells[Row, Col+4] := Output;
        eclApp.Cells[Row, Col+5] := StrToInt(Output) - Q_P.FieldByName('Pairs').AsInteger;

        Q_P.Next;
        Inc(Row);
      end;

      eclapp.Columns.Autofit;
      ShowMessage('Successful');
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TSP_RYTracking.Button7Click(Sender: TObject);
var
  sDate: TDate;
  Content: string;
  Input, Output: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('WITH TEMPTAB(Date) AS (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_TC1.Date)) + ''')');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS Date FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_TC2.Date) + ''')');
    SQL.Add(')');

    SQL.Add('SELECT TEMPTAB.Date, SPI.Part, SPI.Process, ISNULL(SPI.Pairs, 0) AS Pairs FROM TEMPTAB');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SPI.Date, SPI.Part, SPI.Process, SUM(SPI.Pairs) AS Pairs FROM SecondProcessInput AS SPI');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SPI.RY');
    SQL.Add('  LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPI.Part AND MSP.Process = SPI.Process');
    SQL.Add('  WHERE SPI.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP_TC1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_TC2.Date) + '''');
    SQL.Add('  AND SPI.Process = ''' + ProcessKey[CB_Process_TC.ItemIndex + 1] + ''' AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_TC.ItemIndex + 1] + '''');
    SQL.Add('  GROUP BY SPI.Date, SPI.Part, SPI.Process');
    SQL.Add(') AS SPI ON SPI.Date = TEMPTAB.Date');          
    SQL.Add('ORDER BY TEMPTAB.Date, SPI.Part, SPI.Process');
    SQL.Add('OPTION (MAXRECURSION 0)');
    Active := true;

    Input := 0;
    Content := '';
    SetLength(InputContent, 0);
    sDate := FieldByName('Date').AsDateTime;
    Series_TC_Input.Clear;
    while not Eof do
    begin
      if (FieldByName('Date').AsDateTime = sDate) then
      begin
        if (FieldByName('Pairs').AsInteger > 0) then
        begin
          Content := Content + '  ▲' + FieldByName('Part').AsString + ': ' + FormatFloat('###,###,##0', FieldByName('Pairs').AsInteger) + #13#10;
          Inc(Input, FieldByName('Pairs').AsInteger);
        end;
      end
      else begin
        SetLength(InputContent, Length(InputContent) + 1);
        InputContent[Length(InputContent) - 1] := Content;
        Series_TC_Input.Add(Input, FormatDateTime('M/d', sDate));
        sDate := FieldByName('Date').AsDateTime;
        if (FieldByName('Pairs').AsInteger > 0) then
        begin
          Content := '  ▲' + FieldByName('Part').AsString + ': ' + FormatFloat('###,###,##0', FieldByName('Pairs').AsInteger) + #13#10;
          Input := FieldByName('Pairs').AsInteger;
        end
        else begin
          Content := '';
          Input := 0;
        end;
      end;

      Next;
    end;
    SetLength(InputContent, Length(InputContent) + 1);
    InputContent[Length(InputContent) - 1] := Content;
    Series_TC_Input.Add(Input, FormatDateTime('M/d', sDate));

    Active := false;
    SQL.Clear;
    SQL.Add('WITH TEMPTAB(Date) AS (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_TC1.Date)) + ''')');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS Date FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_TC2.Date) + ''')');
    SQL.Add(')');

    SQL.Add('SELECT TEMPTAB.Date, SPO.Part, SPO.Process, ISNULL(SPO.Pairs, 0) AS Pairs FROM TEMPTAB');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SPO.Date, SPO.Part, SPO.Process, SUM(SPO.Pairs) AS Pairs FROM SecondProcessOutput AS SPO');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SPO.RY');
    SQL.Add('  LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPO.Part AND MSP.Process = SPO.Process');
    SQL.Add('  WHERE SPO.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP_TC1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_TC2.Date) + ''' AND SPO.Process = ''' + ProcessKey[CB_Process_TC.ItemIndex + 1] + ''' AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_TC.ItemIndex + 1] + '''');
    SQL.Add('  GROUP BY SPO.Date, SPO.Part, SPO.Process');
    SQL.Add(') AS SPO ON SPO.Date = TEMPTAB.Date');     
    SQL.Add('ORDER BY TEMPTAB.Date, SPO.Part, SPO.Process');
    SQL.Add('OPTION (MAXRECURSION 0)');
    Active := true;

    Output := 0;
    Content := '';
    SetLength(OutputContent, 0);
    sDate := FieldByName('Date').AsDateTime;
    Series_TC_Output.Clear;
    while not Eof do
    begin
      if (FieldByName('Date').AsDateTime = sDate) then
      begin
        if (FieldByName('Pairs').AsInteger > 0) then
        begin
          Content := Content + '  ▲' + FieldByName('Part').AsString + ': ' + FormatFloat('###,###,##0', FieldByName('Pairs').AsInteger) + #13#10;
          Inc(Output, FieldByName('Pairs').AsInteger);
        end;
      end
      else begin
        SetLength(OutputContent, Length(OutputContent) + 1);
        OutputContent[Length(OutputContent) - 1] := Content;
        Series_TC_Output.Add(Output, FormatDateTime('M/d', sDate));
        sDate := FieldByName('Date').AsDateTime;
        if (FieldByName('Pairs').AsInteger > 0) then
        begin
          Content := '  ▲' + FieldByName('Part').AsString + ': ' + FormatFloat('###,###,##0', FieldByName('Pairs').AsInteger) + #13#10;
          Output := FieldByName('Pairs').AsInteger;
        end
        else begin    
          Content := '';
          Output := 0;
        end;
      end;

      Next;
    end;
    SetLength(OutputContent, Length(OutputContent) + 1);
    OutputContent[Length(OutputContent) - 1] := Content;
    Series_TC_Output.Add(Output, FormatDateTime('M/d', sDate));
  end;
end;

procedure TSP_RYTracking.Series_TC_InputGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  if (MarkText = '0') then
    MarkText := '';
end;

procedure TSP_RYTracking.Series_TC_OutputGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  if (MarkText = '0') then
    MarkText := '';
end;

procedure TSP_RYTracking.Series_TC_InputClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Lines: integer;
begin
  if (Button = mbLeft) then
  begin
    TT_Content.Caption := (
      '[' + Series_TC_Input.XLabel[ValueIndex] + ' ' + ProcessKey[CB_Process_TC.ItemIndex + 1] + ' - INPUT]' + #13#10 +
      'Contents:' + #13#10 +
      InputContent[ValueIndex]
    );

    Lines := CountOccurrences(#13#10, TT_Content.Caption);
    ToolTip.Height := Lines * 16 + 10;
    ToolTip.Width := TT_Content.Width + 20;

    if (X + 10 + ToolTip.Width <= TabSheet6.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet6.Width - 5 - ToolTip.Width;
    if (Y - 30 + ToolTip.Height <= TabSheet6.Height) then
      ToolTip.Top := Y - 30
    else
      ToolTip.Top := TabSheet6.Height - 5 - ToolTip.Height;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;

procedure TSP_RYTracking.Series_TC_OutputClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Lines: integer;
begin
  if (Button = mbLeft) then
  begin
    TT_Content.Caption := (
      '[' + Series_TC_Output.XLabel[ValueIndex] + ' ' + ProcessKey[CB_Process_TC.ItemIndex + 1] + ' - OUTPUT]' + #13#10 +
      'Contents:' + #13#10 +
      OutputContent[ValueIndex]
    );

    Lines := CountOccurrences(#13#10, TT_Content.Caption);
    ToolTip.Height := Lines * 16 + 10;
    ToolTip.Width := TT_Content.Width + 20;

    if (X + 10 + ToolTip.Width <= TabSheet6.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet6.Width - 5 - ToolTip.Width;
    if (Y - 30 + ToolTip.Height <= TabSheet6.Height) then
      ToolTip.Top := Y - 30
    else
      ToolTip.Top := TabSheet6.Height - 5 - ToolTip.Height;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;

procedure TSP_RYTracking.Timer1Timer(Sender: TObject);
begin
  ToolTip.Visible := false;
  Timer1.Enabled := false;
end;

procedure TSP_RYTracking.Excel1Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_TC_Input.XValues.Count > 0) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      eclApp.Cells.Select;
      eclApp.Selection.Font.Name := 'MicroSoft JhengHei';
      eclApp.Selection.HorizontalAlignment := xlHAlignCenter;
      eclApp.Selection.VerticalAlignment := xlVAlignCenter;
      eclApp.Selection.Font.Size := 10;

      eclApp.Cells[1, 1] := 'Date';
      eclApp.Cells[1, 2] := 'Input';
      eclApp.Cells[1, 3] := 'Output';

      Row := 2;
      for i := 0 to Series_TC_Input.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_TC_Input.XLabel[i];
        eclApp.Cells[Row, 2] := Series_TC_Input.YValue[i];
        eclApp.Cells[Row, 3] := Series_TC_Output.YValue[i];
        Inc(Row);
      end;

      eclapp.Columns.Autofit;
      ShowMessage('Successful');
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TSP_RYTracking.Button2Click(Sender: TObject);
begin
  ewProcess := ProcessKey[CB_Process_EWT.ItemIndex + 1];
  ewSupplierID := SupplierKey[CB_Supplier_EWT.ItemIndex + 1]; 
  ewSupplierName := CB_Supplier_EWT.Text;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('WITH TEMPTAB(Date) AS (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_EWT.Date)) + ''')');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS Date FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_EWT.Date)) + ''')');
    SQL.Add(')');

    SQL.Add('SELECT TEMPTAB.Date, SP.Qty FROM TEMPTAB');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT EstDate, SUM(Qty) AS Qty FROM (');
    SQL.Add('    SELECT MSP.Process, MSP.Supplier, MSP.Part, DATEADD(DAY, -MSP.LeadTime, SC.schedule_date) AS EstDate, CAST(SC.sl AS INT) AS Qty FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao');
    SQL.Add('    WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_EWT.Date)) + ''' AND DATEADD(DAY, (SELECT MAX(LeadTime) AS LT FROM ModelSecondProcess), ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_EWT.Date)) + ''')');
    SQL.Add('    AND MSP.Process = ''' + ProcessKey[CB_Process_EWT.ItemIndex + 1] + ''' AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_EWT.ItemIndex + 1] + ''' AND ISNULL(MSP.LeadTime, 0) > 0');
    SQL.Add('  ) AS SP');
    SQL.Add('  GROUP BY EstDate');
    SQL.Add(') AS SP ON SP.EstDate = TEMPTAB.Date');
    SQL.Add('ORDER BY TEMPTAB.Date');
    SQL.Add('OPTION (MAXRECURSION 0)');
    Active := true;

    Series_EWT_EstInput.Clear;
    while not Eof do
    begin
      Series_EWT_EstInput.Add(FieldByName('Qty').AsFloat, FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime));
      Next;
    end;
  end;
end;

procedure TSP_RYTracking.Series_EWT_EstInputClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  EstWorkload := TEstWorkload.Create(Self);
  EstWorkload.LoadData(Series_EWT_EstInput.XLabel[ValueIndex], ewProcess, ewSupplierID, ewSupplierName);
  EstWorkload.ShowModal;
end;

procedure TSP_RYTracking.Chart_EWTGetAxisLabel(Sender: TChartAxis;
  Series: TChartSeries; ValueIndex: Integer; var LabelText: String);
begin
  if (Sender.Horizontal) AND (Pos('/', LabelText) > 0) then
    LabelText := IntToStr(StrToInt(Copy(LabelText, 6, 2))) + '/' + IntToStr(StrToInt(Copy(LabelText, 9, 2)));
end;

end.
