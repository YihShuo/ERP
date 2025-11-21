unit SP_Printing_C91;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, DB,
  DBTables, ComObj, DateUtils, Menus, TeEngine, Series, TeeProcs, Chart, ExcelXP;

type
  TSP_Printing_C9 = class(TForm)
    QTemp: TQuery;
    DS_PSI: TDataSource;
    Q_PSI: TQuery;
    U_PSI: TUpdateSQL;
    Q_PSIListNo: TStringField;
    Q_PSIDate: TDateTimeField;
    Q_PSIBuilding: TStringField;
    Q_PSILean: TStringField;
    Q_PSIRY: TStringField;
    Q_PSIPart: TStringField;
    Q_PSIProcess: TStringField;
    Q_PSIPairs: TIntegerField;
    Q_PSIUserID: TStringField;
    Q_PSIUserDate: TDateTimeField;
    Q_PSIYN: TStringField;
    OpenDialog1: TOpenDialog;
    DS_PSO: TDataSource;
    Q_PSO: TQuery;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    StringField7: TStringField;
    DateTimeField2: TDateTimeField;
    StringField8: TStringField;
    U_PSO: TUpdateSQL;
    Q_PSIRYPairs: TIntegerField;
    Q_PSILackPairs: TIntegerField;
    Q_PSORYPairs: TIntegerField;
    Q_PSOLackPairs: TIntegerField;
    Q_PSIschedule_date: TDateTimeField;
    Q_PSIDAOMH: TStringField;
    Q_PSIARTICLE: TStringField;
    Q_PSIBUY: TStringField;
    Q_PSOschedule_date: TDateTimeField;
    Q_PSODAOMH: TStringField;
    Q_PSOARTICLE: TStringField;
    Q_PSOBUY: TStringField;
    Panel1: TPanel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DTP_PS: TDateTimePicker;
    Button5: TButton;
    CB_Process_PS: TComboBox;
    CB_Supplier_PS: TComboBox;
    Button6: TButton;
    CB_Building_PS: TComboBox;
    CB_Lean_PS: TComboBox;
    PC2: TPageControl;
    TabSheet4: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel5: TPanel;
    BB2_PSI: TBitBtn;
    BB3_PSI: TBitBtn;
    BB1_PSI: TBitBtn;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    Panel6: TPanel;
    BB2_PSO: TBitBtn;
    BB3_PSO: TBitBtn;
    BB1_PSO: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BB1_PSIClick(Sender: TObject);
    procedure Q_PSIAfterOpen(DataSet: TDataSet);
    procedure Q_PSOAfterOpen(DataSet: TDataSet);
    procedure BB3_PSIClick(Sender: TObject);
    procedure BB2_PSIClick(Sender: TObject);
    procedure BB1_PSOClick(Sender: TObject);
    procedure BB2_PSOClick(Sender: TObject);
    procedure BB3_PSOClick(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DTP_PSChange(Sender: TObject);
    procedure CB_Building_PSChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    psDate: TDate;
    psProcess, psProcessText, psSupplier: string;
    procedure ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    procedure ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
  public
    { Public declarations }
    ResultRY: string;
  end;

var
  SP_Printing_C9: TSP_Printing_C9;

const
  ProcessKey: array[0..2] of string = (
    'ALL',
    'PRINTING',
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

  ProcessEN: array[0..1] of string = (
    'PRINTING',
    'TRANSFER PRINTING'
  );

  ProcessVN: array[0..1] of string = (
    'IN',
    'CHUYEN IN'
  );

  ProcessCH: array[0..1] of string = (
    '印刷',
    '轉印'
  );

implementation

uses
  main1;

{$R *.dfm}

procedure TSP_Printing_C9.ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
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

procedure TSP_Printing_C9.ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
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

procedure TSP_Printing_C9.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSP_Printing_C9.FormDestroy(Sender: TObject);
begin
  SP_Printing_C9 := Nil;
end;

procedure TSP_Printing_C9.FormCreate(Sender: TObject);
begin
  DTP_PS.Date := Date;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('ORDER BY building_no');
    Active := true;

    CB_Building_PS.Clear;
    CB_Building_PS.Items.Add('ALL');

    while not Eof do
    begin
      CB_Building_PS.Items.Add(FieldByName('building_no').AsString);
      Next;
    end;

    CB_Building_PS.ItemIndex := 0;
    CB_Building_PS.DropDownCount := RecordCount + 1;
  end;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SUBSTRING(lean_no, 1, 6) AS lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('ORDER BY lean_no');
    Active := true;

    CB_Lean_PS.Clear;
    CB_Lean_PS.Items.Add('ALL');

    while not Eof do
    begin
      CB_Lean_PS.Items.Add(FieldByName('lean_no').AsString);
      Next;
    end;

    CB_Lean_PS.ItemIndex := 0;
    CB_Lean_PS.DropDownCount := RecordCount + 1;
  end;

  PC2.ActivePageIndex := 0;
end;
  
procedure TSP_Printing_C9.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TSP_Printing_C9.Button6Click(Sender: TObject);
var
  i, Index: integer;
begin
  Index := CB_Process_PS.ItemIndex;
  CB_Process_PS.Clear;

  DBGridEh4.Columns[9].PickList.Clear;
  DBGridEh4.Columns[10].PickList.Clear;
  DBGridEh5.Columns[9].PickList.Clear;
  DBGridEh5.Columns[10].PickList.Clear;

  if (Button6.Caption = 'VN') then
  begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin
      CB_Process_PS.Items.Add(ProcessCH[i - 1]);
    end;

    for i := 0 to DBGridEh4.Columns[9].KeyList.Count - 1 do
    begin
      DBGridEh4.Columns[9].PickList.Add(PartCH[i + 1]);  
      DBGridEh5.Columns[9].PickList.Add(PartCH[i + 1]);
    end;
    for i := 0 to DBGridEh4.Columns[10].KeyList.Count - 1 do
    begin
      DBGridEh4.Columns[10].PickList.Add(ProcessCH[i]);
      DBGridEh5.Columns[10].PickList.Add(ProcessCH[i]);
    end;

    Button6.Caption := 'CH';
  end
  else if (Button6.Caption = 'CH') then
  begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin
      CB_Process_PS.Items.Add(ProcessEN[i - 1]);
    end;

    for i := 0 to DBGridEh4.Columns[9].KeyList.Count - 1 do
    begin
      DBGridEh4.Columns[9].PickList.Add(PartEN[i + 1]);
      DBGridEh5.Columns[9].PickList.Add(PartEN[i + 1]);
    end;
    for i := 0 to DBGridEh4.Columns[10].KeyList.Count - 1 do
    begin
      DBGridEh4.Columns[10].PickList.Add(ProcessEN[i]); 
      DBGridEh5.Columns[10].PickList.Add(ProcessEN[i]);
    end;

    Button6.Caption := 'EN';
  end
  else begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin
      CB_Process_PS.Items.Add(ProcessVN[i - 1]);
    end;

    for i := 0 to DBGridEh4.Columns[9].KeyList.Count - 1 do
    begin
      DBGridEh4.Columns[9].PickList.Add(PartVN[i + 1]);
      DBGridEh5.Columns[9].PickList.Add(PartVN[i + 1]);
    end;
    for i := 0 to DBGridEh4.Columns[10].KeyList.Count - 1 do
    begin
      DBGridEh4.Columns[10].PickList.Add(ProcessVN[i]);  
      DBGridEh5.Columns[10].PickList.Add(ProcessVN[i]);
    end;

    Button6.Caption := 'VN';
  end;

  DBGridEh4.Repaint; 
  DBGridEh5.Repaint;
  CB_Process_PS.ItemIndex := Index;
end;

procedure TSP_Printing_C9.Button5Click(Sender: TObject);
var
  RY: string;
  RYQty: integer;
begin
  psDate := DTP_PS.Date;
  psProcess := ProcessKey[CB_Process_PS.ItemIndex + 1];
  psProcessText := CB_Process_PS.Text;
  psSupplier := SupplierKey[CB_Supplier_PS.ItemIndex + 1];

  with Q_PSI do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT SPI.ListNo, SPI.Date, SPI.Building, SPI.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPI.RY,');
    SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPI.Part, SPI.Process, SPI.Pairs, ISNULL(SUM(SPIO.Pairs), 0) - CAST(SC.sl AS INT) AS LackPairs, SPI.UserID, SPI.UserDate, SPI.YN FROM SecondProcessInput AS SPI');
    SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPI.RY AND SC.building_no = SPI.Building AND SC.lean_no = SPI.Lean');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPI.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPI.Part AND MSP.Process = SPI.Process');
    SQL.Add('LEFT JOIN SecondProcessInput AS SPIO ON SPIO.Building = SC.building_no AND SPIO.Lean = SC.lean_no AND SPIO.RY = DDZL.DDBH AND SPIO.Part = MSP.Part AND SPIO.Process = MSP.Process AND SPIO.Date <= ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + '''');
    SQL.Add('WHERE SPI.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + ''' AND SPI.Process = ''' + ProcessKey[CB_Process_PS.ItemIndex + 1] + ''' AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_PS.ItemIndex + 1] + ''' AND SPI.Department = ''C9''');
    if (CB_Building_PS.Text <> 'ALL') then
      SQL.Add('AND SPI.Building = ''' + CB_Building_PS.Text + '''');
    if (CB_Lean_PS.Text <> 'ALL') then
      SQL.Add('AND SPI.Lean = ''' + CB_Lean_PS.Text + '''');
    SQL.Add('GROUP BY SPI.ListNo, SPI.Date, SPI.Building, SPI.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, DDZL.BUYNO, SPI.RY, SC.sl, SPI.Part, SPI.Process, SPI.Pairs, SPI.UserID, SPI.UserDate, SPI.YN');
    SQL.Add('ORDER BY SPI.Building, SPI.Lean, SPI.RY');
    Active := true;

    RY := '';
    RYQty := 0;
    DisableControls;
    while not Eof do
    begin
      if (FieldByName('RY').AsString <> RY) then
      begin
        Inc(RYQty);
        RY := FieldByName('RY').AsString;
      end;
      Next;
    end;
    DBGridEh4.Columns[3].Footer.Value := FormatFloat('###,###,##0', RYQty);
    First;
    EnableControls;
  end;

  with Q_PSO do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT SPO.ListNo, SPO.Date, SPO.Building, SPO.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPO.RY,');
    SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPO.Part, SPO.Process, SPO.Pairs, ISNULL(SUM(SPOO.Pairs), 0) - CAST(SC.sl AS INT) AS LackPairs, SPO.UserID, SPO.UserDate, SPO.YN FROM SecondProcessOutput AS SPO');
    SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPO.RY AND SC.building_no = SPO.Building AND SC.lean_no = SPO.Lean');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPO.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPO.Part AND MSP.Process = SPO.Process');
    SQL.Add('LEFT JOIN SecondProcessOutput AS SPOO ON SPOO.Building = SC.building_no AND SPOO.Lean = SC.lean_no AND SPOO.RY = DDZL.DDBH AND SPOO.Part = MSP.Part AND SPOO.Process = MSP.Process AND SPOO.Date <= ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + '''');
    SQL.Add('WHERE SPO.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + ''' AND SPO.Process = ''' + ProcessKey[CB_Process_PS.ItemIndex + 1] + ''' AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_PS.ItemIndex + 1] + ''' AND SPO.Department = ''C9''');
    if (CB_Building_PS.Text <> 'ALL') then
      SQL.Add('AND SPO.Building = ''' + CB_Building_PS.Text + '''');
    if (CB_Lean_PS.Text <> 'ALL') then
      SQL.Add('AND SPO.Lean = ''' + CB_Lean_PS.Text + '''');
    SQL.Add('GROUP BY SPO.ListNo, SPO.Date, SPO.Building, SPO.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, DDZL.BUYNO, SPO.RY, SC.sl, SPO.Part, SPO.Process, SPO.Pairs, SPO.UserID, SPO.UserDate, SPO.YN');
    SQL.Add('ORDER BY SPO.Building, SPO.Lean, SPO.RY');
    Active := true;

    RY := '';
    RYQty := 0;
    DisableControls;
    while not Eof do
    begin
      if (FieldByName('RY').AsString <> RY) then
      begin
        Inc(RYQty);
        RY := FieldByName('RY').AsString;
      end;
      Next;
    end;
    DBGridEh5.Columns[3].Footer.Value := FormatFloat('###,###,##0', RYQty);
    First;
    EnableControls;
  end;
end;

procedure TSP_Printing_C9.BB1_PSIClick(Sender: TObject);
var
  eclApp, Sheet: OleVariant;
  SelectedFileName, Part: string;
  Col, Row, id_Building, id_Lean, id_RY, id_Part, id_Input, i, Pairs: integer;
begin
  try
    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);
      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.workbooks.Open(OpenDialog1.FileName);

        Sheet := eclApp.WorkSheets[1];
        eclapp.Columns.Autofit;

        Row := 1;
        Col := 1;
        while (Sheet.Cells[Row, Col].Text <> '') do
        begin
          if (UpperCase(Sheet.Cells[Row, Col]) = 'BUILDING') then
            id_Building := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'LEAN') then
            id_Lean := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'RY') then
            id_RY := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'PART') then
            id_Part := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'INPUT') then
            id_Input := Col;

          Inc(Col);
        end;

        if (id_Building > 0) AND (id_Lean > 0) AND (id_RY > 0) AND (id_Part > 0) AND (id_Input > 0) then
        begin
          if (MessageDlg('Are you sure you want to overwrite the [' + psProcessText + '] progress for [' + FormatDateTime('yyyy/MM/dd', psDate) +']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          begin
            with Q_PSI do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT SPI.ListNo, SPI.Date, SPI.Building, SPI.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPI.RY,');
              SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPI.Part, SPI.Process, SPI.Pairs, 0 AS LackPairs, SPI.UserID, SPI.UserDate, SPI.YN FROM SecondProcessInput AS SPI');
              SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPI.RY AND SC.building_no = SPI.Building AND SC.lean_no = SPI.Lean');
              SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPI.RY');
              SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
              SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPI.Part AND MSP.Process = SPI.Process');
              SQL.Add('WHERE 1 = 0');

              RequestLive := true;
              CachedUpdates := true;
              Active := true;
            end;

            Row := 2;
            while (Sheet.Cells[Row, 1].Text <> '') do
            begin
              for i := 1 to Length(PartEN) - 1 do
              begin
                if (Sheet.Cells[Row, id_Part].Text = PartEN[i]) OR (Sheet.Cells[Row, id_Part].Text = PartVN[i]) OR (Sheet.Cells[Row, id_Part].Text = PartCH[i]) then
                begin
                  Part := PartEN[i];
                  Break;
                end;
              end;

              with QTemp do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs, ''' + Part + ''' AS Part, ''' + psProcess + ''' AS Process, ISNULL(SUM(SPI.Pairs), 0) AS DPairs FROM (');
                SQL.Add('  SELECT SC.building_no, SC.lean_no, DDZL.DDBH, SUM(CAST(SC.sl AS INT)) AS RYPairs FROM schedule_crawler AS SC');
                SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
                SQL.Add('  WHERE SC.building_no = ''' + Sheet.Cells[Row, id_Building].Text + ''' AND SC.lean_no = ''' + Sheet.Cells[Row, id_Lean].Text + ''' AND DDZL.DDBH = ''' + Sheet.Cells[Row, id_RY].Text + '''');
                SQL.Add('  GROUP BY SC.building_no, SC.lean_no, DDZL.DDBH');
                SQL.Add(') AS SC');
                SQL.Add('LEFT JOIN SecondProcessInput AS SPI ON SPI.Building = SC.building_no AND SPI.Lean = SC.lean_no AND SPI.RY = SC.DDBH AND SPI.Part = ''' + Part + ''' AND SPI.Process = ''' + psProcess + ''' AND SPI.Date <> ''' + FormatDateTime('yyyy/MM/dd', psDate) + '''');
                SQL.Add('GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs');
                Active := true;
              end;

              if (QTemp.RecordCount > 0) then
              begin
                with Q_PSI do
                begin
                  if (Locate('Building;Lean;RY;Part;Process', VarArrayOf([QTemp.FieldByName('building_no').AsString, QTemp.FieldByName('lean_no').AsString, QTemp.FieldByName('DDBH').AsString, QTemp.FieldByName('Part').AsString, QTemp.FieldByName('Process').AsString]), []) = false) then
                  begin
                    if (StrToInt(Sheet.Cells[Row, id_Input].Text) <= QTemp.FieldByName('RYPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger) then
                      Pairs := StrToInt(Sheet.Cells[Row, id_Input].Text)
                    else
                      Pairs := QTemp.FieldByName('RYPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger;

                    if (Pairs > 0) then
                    begin
                      Append;
                      FieldByName('Date').Value := psDate;
                      FieldByName('Building').Value := QTemp.FieldByName('building_no').AsString;
                      FieldByName('Lean').Value := QTemp.FieldByName('lean_no').AsString;
                      FieldByName('RY').Value := QTemp.FieldByName('DDBH').AsString;
                      FieldByName('RYPairs').Value := QTemp.FieldByName('RYPairs').AsInteger;
                      FieldByName('Part').Value := QTemp.FieldByName('Part').AsString;
                      FieldByName('Process').Value := QTemp.FieldByName('Process').AsString;
                      FieldByName('Pairs').Value := Pairs;
                      FieldByName('LackPairs').Value := FieldByName('Pairs').AsInteger + QTemp.FieldByName('DPairs').AsInteger - QTemp.FieldByName('RYPairs').AsInteger;
                    end
                    else begin
                      ShowMessage(
                        'The following imported data has exceeded the total quantity of ' + FormatFloat('###,###,##0', QTemp.FieldByName('RYPairs').AsInteger) + ' pairs' + #13#10 + #13#10 +
                        'Lean: [' + Sheet.Cells[Row, id_Building].Text + ' ' + Sheet.Cells[Row, id_Lean].Text + ']' + #13#10 +
                        'RY: [' + Sheet.Cells[Row, id_RY].Text + ']' + #13#10 +
                        'Process: [' + psProcessText + ']' + #13#10 +
                        'Part: [' + Sheet.Cells[Row, id_Part].Text + ']'
                      );
                    end;
                  end
                  else begin
                    Pairs := StrToInt(Sheet.Cells[Row, id_Input].Text);
                    Edit;
                    FieldByName('Pairs').Value := FieldByName('Pairs').AsInteger + Pairs;

                    if (FieldByName('Pairs').AsInteger > QTemp.FieldByName('RYPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger) then
                    begin
                      FieldByName('Pairs').Value := QTemp.FieldByName('RYPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger;
                      ShowMessage(
                        'The following imported data has exceeded the total quantity of ' + FormatFloat('###,###,##0', QTemp.FieldByName('RYPairs').AsInteger) + ' pairs' + #13#10 + #13#10 +
                        'Lean: [' + Sheet.Cells[Row, id_Building].Text + ' ' + Sheet.Cells[Row, id_Lean].Text + ']' + #13#10 +
                        'RY: [' + Sheet.Cells[Row, id_RY].Text + ']' + #13#10 +
                        'Process: [' + psProcessText + ']' + #13#10 +
                        'Part: [' + Sheet.Cells[Row, id_Part].Text + ']'
                      );
                    end;
                  end;
                end;
              end
              else begin
                ShowMessage(
                  'The following information cannot be found.' + #13#10 + #13#10 +
                  'Lean: [' + Sheet.Cells[Row, id_Building].Text + ' ' + Sheet.Cells[Row, id_Lean].Text + ']' + #13#10 +
                  'RY: [' + Sheet.Cells[Row, id_RY].Text + ']' + #13#10 +
                  'Process: [' + psProcessText + ']' + #13#10 +
                  'Part: [' + Sheet.Cells[Row, id_Part].Text + ']'
                );
              end;

              Inc(Row);
            end;
          end;
        end
        else begin
          eclApp.DisplayAlerts := false;
          eclApp.WorkBooks.Close;
          eclApp.Quit;
          ShowMessage('Unacceptable Excel Format.');
          Exit;
        end;

        Q_PSI.First;
        BB2_PSI.Enabled := true;
        BB3_PSI.Enabled := true;
        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
        ShowMessage('Completed');
      except on F:Exception do
        begin
          eclApp.DisplayAlerts := false;
          eclApp.WorkBooks.Close;
          eclApp.Quit;
          ShowMessage(F.Message);
          Exit;
        end;
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;
end;

procedure TSP_Printing_C9.Q_PSIAfterOpen(DataSet: TDataSet);
begin
  BB1_PSI.Enabled := (DTP_PS.Date = main.Today);
end;

procedure TSP_Printing_C9.Q_PSOAfterOpen(DataSet: TDataSet);
begin
  BB1_PSO.Enabled := (DTP_PS.Date = main.Today);
end;
       
procedure TSP_Printing_C9.BB2_PSIClick(Sender: TObject);
var
  i: integer;
begin
  try
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM SecondProcessInput');
      SQL.Add('WHERE ListNo IN (');
      SQL.Add('  SELECT SPI.ListNo FROM SecondProcessInput AS SPI');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SPI.RY');
      SQL.Add('  LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPI.Part AND MSP.Process = SPI.Process');
      SQL.Add('  WHERE SPI.Date = ''' + FormatDateTime('yyyy/MM/dd', psDate) + ''' AND SPI.Process = ''' + psProcess + ''' AND MSP.Supplier = ''' + psSupplier + ''' AND SPI.Department = ''C9''');
      SQL.Add(')');
      ExecSQL;
    end;

    Q_PSI.First;
    for i := 1 to Q_PSI.RecordCount do
    begin
      case Q_PSI.UpdateStatus of
        usInserted:
        begin
          if (Q_PSI.FieldByName('Date').IsNull) OR (Q_PSI.FieldByName('Building').IsNull) OR (Q_PSI.FieldByName('Lean').IsNull) OR (Q_PSI.FieldByName('RY').IsNull) OR (Q_PSI.FieldByName('Part').IsNull) OR (Q_PSI.FieldByName('Process').IsNull) OR (Q_PSI.FieldByName('Pairs').AsInteger <= 0) then
          begin
            Q_PSI.Delete;
          end
          else begin
            with QTemp do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT ISNULL(LEFT(MAX(ListNo), 6), LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6)) + RIGHT(''00000'' + CAST(ISNULL(CAST(RIGHT(MAX(ListNo), 5) AS INT), 0) + 1 AS VARCHAR), 5) AS ListNo,');
              SQL.Add('CONVERT(SmallDateTime, CONVERT(VARCHAR, GETDATE(), 111)) AS Date FROM SecondProcessInput');
              SQL.Add('WHERE ListNo LIKE LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6) + ''%''');
              Active := true;
            end;

            Q_PSI.Edit;
            Q_PSI.FieldByName('ListNo').Value := QTemp.FieldByName('ListNo').AsString;
            Q_PSI.FieldByName('UserID').Value := main.Edit1.Text;
            U_PSI.Apply(ukInsert);
          end;
        end;
      end;

      Q_PSI.Next;
    end;

    with Q_PSI do
    begin
      Active := false;
      RequestLive := false;
      CachedUpdates := false;
      SQL.Clear;
      SQL.Add('SELECT SPI.ListNo, SPI.Date, SPI.Building, SPI.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPI.RY,');
      SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPI.Part, SPI.Process, SPI.Pairs, ISNULL(SUM(SPIO.Pairs), 0) - CAST(SC.sl AS INT) AS LackPairs, SPI.UserID, SPI.UserDate, SPI.YN FROM SecondProcessInput AS SPI');
      SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPI.RY AND SC.building_no = SPI.Building AND SC.lean_no = SPI.Lean');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPI.RY');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPI.Part AND MSP.Process = SPI.Process');
      SQL.Add('LEFT JOIN SecondProcessInput AS SPIO ON SPIO.Building = SC.building_no AND SPIO.Lean = SC.lean_no AND SPIO.RY = DDZL.DDBH AND SPIO.Part = MSP.Part AND SPIO.Process = MSP.Process AND SPIO.Date <= ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + '''');
      SQL.Add('WHERE SPI.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + ''' AND SPI.Process = ''' + ProcessKey[CB_Process_PS.ItemIndex + 1] + ''' AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_PS.ItemIndex + 1] + ''' AND SPI.Department = ''C9''');
      SQL.Add('GROUP BY SPI.ListNo, SPI.Date, SPI.Building, SPI.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, DDZL.BUYNO, SPI.RY, SC.sl, SPI.Part, SPI.Process, SPI.Pairs, SPI.UserID, SPI.UserDate, SPI.YN');
      SQL.Add('ORDER BY SPI.Building, SPI.Lean, SPI.RY');
      Active := true;
    end;
    BB2_PSI.Enabled := false;
    BB3_PSI.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSP_Printing_C9.BB3_PSIClick(Sender: TObject);
begin
  with Q_PSI do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT SPI.ListNo, SPI.Date, SPI.Building, SPI.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPI.RY,');
    SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPI.Part, SPI.Process, SPI.Pairs, 0 AS LackPairs, SPI.UserID, SPI.UserDate, SPI.YN FROM SecondProcessInput AS SPI');
    SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPI.RY AND SC.building_no = SPI.Building AND SC.lean_no = SPI.Lean');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPI.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPI.Part AND MSP.Process = SPI.Process');
    SQL.Add('WHERE 1 = 0');
    Active := true;
  end;

  BB2_PSI.Enabled := false;
  BB3_PSI.Enabled := false;
end;

procedure TSP_Printing_C9.BB1_PSOClick(Sender: TObject);
var
  eclApp, Sheet: OleVariant;
  SelectedFileName, Part: string;
  Col, Row, id_Building, id_Lean, id_RY, id_Part, id_Output, i, Pairs: integer;
begin
  try
    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);
      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.workbooks.Open(OpenDialog1.FileName);

        Sheet := eclApp.WorkSheets[1];
        eclapp.Columns.Autofit;

        Row := 1;
        Col := 1;
        while (Sheet.Cells[Row, Col].Text <> '') do
        begin
          if (UpperCase(Sheet.Cells[Row, Col]) = 'BUILDING') then
            id_Building := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'LEAN') then
            id_Lean := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'RY') then
            id_RY := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'PART') then
            id_Part := Col
          else if (UpperCase(Sheet.Cells[Row, Col]) = 'OUTPUT') then
            id_Output := Col;

          Inc(Col);
        end;

        if (id_Building > 0) AND (id_Lean > 0) AND (id_RY > 0) AND (id_Part > 0) AND (id_Output > 0) then
        begin
          if (MessageDlg('Are you sure you want to overwrite the [' + psProcessText + '] progress for [' + FormatDateTime('yyyy/MM/dd', psDate) +']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
          begin
            with Q_PSO do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT SPO.ListNo, SPO.Date, SPO.Building, SPO.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPO.RY,');
              SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPO.Part, SPO.Process, SPO.Pairs, 0 AS LackPairs, SPO.UserID, SPO.UserDate, SPO.YN FROM SecondProcessOutput AS SPO');
              SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPO.RY AND SC.building_no = SPO.Building AND SC.lean_no = SPO.Lean');
              SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPO.RY');
              SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
              SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPO.Part AND MSP.Process = SPO.Process');
              SQL.Add('WHERE 1 = 0');

              RequestLive := true;
              CachedUpdates := true;
              Active := true;
            end;

            Row := 2;
            while (Sheet.Cells[Row, 1].Text <> '') do
            begin
              for i := 1 to Length(PartEN) - 1 do
              begin
                if (Sheet.Cells[Row, id_Part].Text = PartEN[i]) OR (Sheet.Cells[Row, id_Part].Text = PartVN[i]) OR (Sheet.Cells[Row, id_Part].Text = PartCH[i]) then
                begin
                  Part := PartEN[i];
                  Break;
                end;
              end;

              with QTemp do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs, SC.Part, SC.Process, SC.InPairs, ISNULL(SUM(SPO.Pairs), 0) AS DPairs FROM (');
                SQL.Add('  SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs, ''' + Part + ''' AS Part, ''' + psProcess + ''' AS Process, ISNULL(SUM(SPI.Pairs), 0) AS InPairs FROM (');
                SQL.Add('    SELECT SC.building_no, SC.lean_no, DDZL.DDBH, SUM(CAST(SC.sl AS INT)) AS RYPairs FROM schedule_crawler AS SC');
                SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
                SQL.Add('    WHERE SC.building_no = ''' + Sheet.Cells[Row, id_Building].Text + ''' AND SC.lean_no = ''' + Sheet.Cells[Row, id_Lean].Text + ''' AND DDZL.DDBH = ''' + Sheet.Cells[Row, id_RY].Text + '''');
                SQL.Add('    GROUP BY SC.building_no, SC.lean_no, DDZL.DDBH');
                SQL.Add('  ) AS SC');
                SQL.Add('  LEFT JOIN SecondProcessInput AS SPI ON SPI.Building = SC.building_no AND SPI.Lean = SC.lean_no AND SPI.RY = SC.DDBH AND SPI.Part = ''' + Part + ''' AND SPI.Process = ''' + psProcess + '''');
                SQL.Add('  GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs');
                SQL.Add(') AS SC');
                SQL.Add('LEFT JOIN SecondProcessOutput AS SPO ON SPO.Building = SC.building_no AND SPO.Lean = SC.lean_no AND SPO.RY = SC.DDBH AND SPO.Part = SC.Part AND SPO.Process = SC.Process AND SPO.Date <> ''' + FormatDateTime('yyyy/MM/dd', psDate) + '''');
                SQL.Add('GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs, SC.Part, SC.Process, SC.InPairs');
                Active := true;
              end;

              if (QTemp.RecordCount > 0) then
              begin
                with Q_PSO do
                begin
                  if (Locate('Building;Lean;RY;Part;Process', VarArrayOf([QTemp.FieldByName('building_no').AsString, QTemp.FieldByName('lean_no').AsString, QTemp.FieldByName('DDBH').AsString, QTemp.FieldByName('Part').AsString, QTemp.FieldByName('Process').AsString]), []) = false) then
                  begin
                    if (StrToInt(Sheet.Cells[Row, id_Output].Text) <= QTemp.FieldByName('InPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger) then
                      Pairs := StrToInt(Sheet.Cells[Row, id_Output].Text)
                    else
                      Pairs := QTemp.FieldByName('InPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger;

                    if (Pairs > 0) then
                    begin
                      Append;
                      FieldByName('Date').Value := psDate;
                      FieldByName('Building').Value := QTemp.FieldByName('building_no').AsString;
                      FieldByName('Lean').Value := QTemp.FieldByName('lean_no').AsString;
                      FieldByName('RY').Value := QTemp.FieldByName('DDBH').AsString;    
                      FieldByName('RYPairs').Value := QTemp.FieldByName('RYPairs').AsInteger;
                      FieldByName('Part').Value := QTemp.FieldByName('Part').AsString;
                      FieldByName('Process').Value := QTemp.FieldByName('Process').AsString;
                      FieldByName('Pairs').Value := Pairs;
                      FieldByName('LackPairs').Value := FieldByName('Pairs').AsInteger + QTemp.FieldByName('DPairs').AsInteger - QTemp.FieldByName('RYPairs').AsInteger;
                    end
                    else begin
                      ShowMessage(
                        'The following imported data has exceeded the total quantity of ' + FormatFloat('###,###,##0', QTemp.FieldByName('RYPairs').AsInteger) + ' pairs' + #13#10 + #13#10 +
                        'Lean: [' + Sheet.Cells[Row, id_Building].Text + ' ' + Sheet.Cells[Row, id_Lean].Text + ']' + #13#10 +
                        'RY: [' + Sheet.Cells[Row, id_RY].Text + ']' + #13#10 +
                        'Process: [' + psProcessText + ']' + #13#10 +
                        'Part: [' + Sheet.Cells[Row, id_Part].Text + ']'
                      );
                    end;
                  end
                  else begin
                    Pairs := StrToInt(Sheet.Cells[Row, id_Output].Text);
                    Edit;
                    FieldByName('Pairs').Value := FieldByName('Pairs').AsInteger + Pairs;

                    if (FieldByName('Pairs').AsInteger > QTemp.FieldByName('InPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger) then
                    begin
                      FieldByName('Pairs').Value := QTemp.FieldByName('InPairs').AsInteger - QTemp.FieldByName('DPairs').AsInteger;
                      ShowMessage(
                        'The following imported data has exceeded the total quantity of ' + FormatFloat('###,###,##0', QTemp.FieldByName('RYPairs').AsInteger) + ' pairs' + #13#10 + #13#10 +
                        'Lean: [' + Sheet.Cells[Row, id_Building].Text + ' ' + Sheet.Cells[Row, id_Lean].Text + ']' + #13#10 +
                        'RY: [' + Sheet.Cells[Row, id_RY].Text + ']' + #13#10 +
                        'Process: [' + psProcessText + ']' + #13#10 +
                        'Part: [' + Sheet.Cells[Row, id_Part].Text + ']'
                      );
                    end;
                  end;
                end;
              end
              else begin
                ShowMessage(
                  'The following information cannot be found.' + #13#10 + #13#10 +
                  'Lean: [' + Sheet.Cells[Row, id_Building].Text + ' ' + Sheet.Cells[Row, id_Lean].Text + ']' + #13#10 +
                  'RY: [' + Sheet.Cells[Row, id_RY].Text + ']' + #13#10 +
                  'Process: [' + psProcessText + ']' + #13#10 +
                  'Part: [' + Sheet.Cells[Row, id_Part].Text + ']'
                );
              end;

              Inc(Row);
            end;
          end;
        end
        else begin
          eclApp.DisplayAlerts := false;
          eclApp.WorkBooks.Close;
          eclApp.Quit;
          ShowMessage('Unacceptable Excel Format.');
          Exit;
        end;

        Q_PSO.First;
        BB2_PSO.Enabled := true;
        BB3_PSO.Enabled := true;
        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;       
        ShowMessage('Completed');
      except on F:Exception do
        begin
          eclApp.DisplayAlerts := false;
          eclApp.WorkBooks.Close;
          eclApp.Quit;
          ShowMessage(F.Message);
          Exit;
        end;
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;
end;

procedure TSP_Printing_C9.BB2_PSOClick(Sender: TObject);
var
  i: integer;
begin
  try
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM SecondProcessOutput');
      SQL.Add('WHERE ListNo IN (');
      SQL.Add('  SELECT SPO.ListNo FROM SecondProcessOutput AS SPO');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SPO.RY');
      SQL.Add('  LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPO.Part AND MSP.Process = SPO.Process');
      SQL.Add('  WHERE SPO.Date = ''' + FormatDateTime('yyyy/MM/dd', psDate) + ''' AND SPO.Process = ''' + psProcess + ''' AND MSP.Supplier = ''' + psSupplier + ''' AND SPO.Department = ''C9''');
      SQL.Add(')');
      ExecSQL;
    end;

    Q_PSO.First;
    for i := 1 to Q_PSO.RecordCount do
    begin
      case Q_PSO.UpdateStatus of
        usInserted:
        begin
          if (Q_PSO.FieldByName('Date').IsNull) OR (Q_PSO.FieldByName('Building').IsNull) OR (Q_PSO.FieldByName('Lean').IsNull) OR (Q_PSO.FieldByName('RY').IsNull) OR (Q_PSO.FieldByName('Part').IsNull) OR (Q_PSO.FieldByName('Process').IsNull) OR (Q_PSO.FieldByName('Pairs').AsInteger <= 0) then
          begin
            Q_PSO.Delete;
          end
          else begin
            with QTemp do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT ISNULL(LEFT(MAX(ListNo), 6), LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6)) + RIGHT(''00000'' + CAST(ISNULL(CAST(RIGHT(MAX(ListNo), 5) AS INT), 0) + 1 AS VARCHAR), 5) AS ListNo,');
              SQL.Add('CONVERT(SmallDateTime, CONVERT(VARCHAR, GETDATE(), 111)) AS Date FROM SecondProcessOutput');
              SQL.Add('WHERE ListNo LIKE LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6) + ''%''');
              Active := true;
            end;

            Q_PSO.Edit;
            Q_PSO.FieldByName('ListNo').Value := QTemp.FieldByName('ListNo').AsString;
            Q_PSO.FieldByName('UserID').Value := main.Edit1.Text;
            U_PSO.Apply(ukInsert);
          end;
        end;
      end;

      Q_PSO.Next;
    end;

    with Q_PSO do
    begin
      Active := false;
      RequestLive := false;
      CachedUpdates := false;
      SQL.Clear;
      SQL.Add('SELECT SPO.ListNo, SPO.Date, SPO.Building, SPO.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPO.RY,');
      SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPO.Part, SPO.Process, SPO.Pairs, ISNULL(SUM(SPOO.Pairs), 0) - CAST(SC.sl AS INT) AS LackPairs, SPO.UserID, SPO.UserDate, SPO.YN FROM SecondProcessOutput AS SPO');
      SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPO.RY AND SC.building_no = SPO.Building AND SC.lean_no = SPO.Lean');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPO.RY');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPO.Part AND MSP.Process = SPO.Process');
      SQL.Add('LEFT JOIN SecondProcessOutput AS SPOO ON SPOO.Building = SC.building_no AND SPOO.Lean = SC.lean_no AND SPOO.RY = DDZL.DDBH AND SPOO.Part = MSP.Part AND SPOO.Process = MSP.Process AND SPOO.Date <= ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + '''');
      SQL.Add('WHERE SPO.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_PS.Date) + ''' AND SPO.Process = ''' + ProcessKey[CB_Process_PS.ItemIndex + 1] + ''' AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_PS.ItemIndex + 1] + ''' AND SPO.Department = ''C9''');
      SQL.Add('GROUP BY SPO.ListNo, SPO.Date, SPO.Building, SPO.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, DDZL.BUYNO, SPO.RY, SC.sl, SPO.Part, SPO.Process, SPO.Pairs, SPO.UserID, SPO.UserDate, SPO.YN');
      SQL.Add('ORDER BY SPO.Building, SPO.Lean, SPO.RY');
      Active := true;
    end;
    BB2_PSO.Enabled := false;
    BB3_PSO.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSP_Printing_C9.BB3_PSOClick(Sender: TObject);
begin
  with Q_PSO do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT SPO.ListNo, SPO.Date, SPO.Building, SPO.Lean, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUY, SPO.RY,');
    SQL.Add('CAST(SC.sl AS INT) AS RYPairs, SPO.Part, SPO.Process, SPO.Pairs, 0 AS LackPairs, SPO.UserID, SPO.UserDate, SPO.YN FROM SecondProcessOutput AS SPO');
    SQL.Add('LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = SPO.RY AND SC.building_no = SPO.Building AND SC.lean_no = SPO.Lean');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SPO.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part = SPO.Part AND MSP.Process = SPO.Process');
    SQL.Add('WHERE 1 = 0');
    Active := true;
  end;

  BB2_PSO.Enabled := false;
  BB3_PSO.Enabled := false;
end;

procedure TSP_Printing_C9.DBGridEh4DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Q_PSI.FieldByName('LackPairs').AsInteger = 0) then
    DBGridEh4.Canvas.Brush.Color := $00FFC175
  else
    DBGridEh4.Canvas.Brush.Color := $008CFFFA;

  if (gdFocused in State) OR (gdSelected in State) then
  begin
    DBGridEh4.Canvas.Brush.Color := clHighlight;
    DBGridEh4.Canvas.Font.Color := clHighlightText;
  end;

  DBGridEh4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TSP_Printing_C9.DBGridEh5DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Q_PSO.FieldByName('LackPairs').AsInteger = 0) then
    DBGridEh5.Canvas.Brush.Color := $008DFCC8
  else
    DBGridEh5.Canvas.Brush.Color := $00FFC175;

  if (gdFocused in State) OR (gdSelected in State) then
  begin
    DBGridEh5.Canvas.Brush.Color := clHighlight;
    DBGridEh5.Canvas.Font.Color := clHighlightText;
  end;

  DBGridEh5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TSP_Printing_C9.DTP_PSChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_PS, DTP_PS, DTP_PS, 'ALL');
  ReloadLean(CB_Lean_PS, CB_Building_PS, DTP_PS, DTP_PS, 'ALL');
end;

procedure TSP_Printing_C9.CB_Building_PSChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_PS, CB_Building_PS, DTP_PS, DTP_PS, 'ALL');
end;

end.
