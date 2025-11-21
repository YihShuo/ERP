unit SP_RYProgress1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DBTables, DB, StdCtrls, Buttons;

type
  TSP_RYProgress = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    Q_Input: TQuery;
    DS_Input: TDataSource;
    U_Input: TUpdateSQL;
    DS_Output: TDataSource;
    U_Output: TUpdateSQL;
    BI1: TBitBtn;
    BI2: TBitBtn;
    BI3: TBitBtn;
    BI4: TBitBtn;
    BI5: TBitBtn;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    Q_Process: TQuery;
    DS_Process: TDataSource;
    Q_ProcessPart: TStringField;
    Q_ProcessProcess: TStringField;
    Q_InputListNo: TStringField;
    Q_InputDate: TDateTimeField;
    Q_InputBuilding: TStringField;
    Q_InputLean: TStringField;
    Q_InputRY: TStringField;
    Q_InputPart: TStringField;
    Q_InputProcess: TStringField;
    Q_InputPairs: TIntegerField;
    Q_InputUserID: TStringField;
    Q_InputUserDate: TDateTimeField;
    Q_InputYN: TStringField;
    Q_Output: TQuery;
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
    DBGridEh2: TDBGridEh;
    Q_ProcessPairs: TIntegerField;
    Q_ProcessInputRate: TFloatField;
    Q_ProcessOutputRate: TFloatField;
    QTemp: TQuery;
    Panel6: TPanel;
    RG1: TRadioGroup;
    Q_ProcessSupplier: TStringField;
    Q_InputType: TStringField;
    Q_OutputType: TStringField;
    Q_ProcessLackInputPairs: TIntegerField;
    Q_ProcessLackOutputPairs: TIntegerField;
    Q_ProcessEstLaunchDate: TStringField;
    Q_ProcessActLaunchDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BI1Click(Sender: TObject);
    procedure BI2Click(Sender: TObject);
    procedure BI3Click(Sender: TObject);
    procedure BI4Click(Sender: TObject);
    procedure BI5Click(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure Q_InputNewRecord(DataSet: TDataSet);
    procedure Q_OutputNewRecord(DataSet: TDataSet);
    procedure DBGridEh1Columns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure RG1Click(Sender: TObject);
  private
    { Private declarations }
    sBuilding, sLean, sRY: string;
  public
    { Public declarations }
    procedure LoadData(Building, Lean, RY, Process, Supplier: string);
  end;

var
  SP_RYProgress: TSP_RYProgress;

  PartEN: array[0..20] of string = (
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

  PartVN: array[0..20] of string = (
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

  PartCH: array[0..20] of string = (
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
  main1;

{$R *.dfm}

procedure TSP_RYProgress.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSP_RYProgress.FormDestroy(Sender: TObject);
begin
  SP_RYProgress := Nil;
end;

procedure TSP_RYProgress.LoadData(Building, Lean, RY, Process, Supplier: string);
begin
  Self.Caption := Building + ' ' + UpperCase(Lean) + ' [' + RY + '] Progress';
  sBuilding := Building;
  sLean := Lean;
  sRY := RY;

  with Q_Process do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Part, Process, Supplier, Pairs, EstLaunchDate, ActLaunchDate, InputPairs - Pairs AS LackInputPairs, CAST(InputPairs * 100.0 / Pairs AS NUMERIC(4, 1)) AS InputRate,');
    SQL.Add('OutputPairs - Pairs AS LackOutputPairs, CAST(OutputPairs * 100.0 / Pairs AS NUMERIC(4, 1)) AS OutputRate FROM (');
    SQL.Add('  SELECT SC.DDBH, SC.Part, SC.Process, SC.Supplier, SC.Pairs, SC.EstLaunchDate, SC.ActLaunchDate, SC.InputPairs, ISNULL(SUM(SPO.Pairs), 0) AS OutputPairs FROM (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.Part, SC.Process, SC.Supplier, SC.Pairs, ISNULL(SUM(SPI.Pairs), 0) AS InputPairs, MIN(SPI.Date) AS ActLaunchDate, SC.EstLaunchDate FROM (');
    SQL.Add('      SELECT SC.building_no, SC.lean_no, DDZL.DDBH, MSP.Part, MSP.Process, MSP.Supplier, CAST(SC.sl AS INT) AS Pairs,');
    SQL.Add('      CASE WHEN MSP.LeadTime IS NOT NULL THEN CONVERT(VARCHAR, DATEADD(DAY, -MSP.LeadTime, MIN(SC.schedule_date)), 111) ELSE ''No Lead Time'' END AS EstLaunchDate FROM schedule_crawler AS SC');
    SQL.Add('      LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('      LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao AND MSP.Part <> ''NO PROCESSING''');
    SQL.Add('      WHERE SC.building_no = ''' + Building + ''' AND SC.lean_no = ''' + Lean + ''' AND DDZL.DDBH = ''' + RY + '''');
    if (Process <> 'ALL') then
      SQL.Add('      AND MSP.Process = ''' + Process + '''');
    if (Supplier <> 'ALL') then
      SQL.Add('      AND MSP.Supplier = ''' + Supplier + '''');
    SQL.Add('      GROUP BY SC.building_no, SC.lean_no, DDZL.DDBH, MSP.Part, MSP.Process, MSP.Supplier, SC.sl, MSP.LeadTime');
    SQL.Add('    ) AS SC');
    SQL.Add('    LEFT JOIN SecondProcessInput AS SPI ON SPI.Building = SC.building_no AND SPI.Lean = SC.lean_no AND SPI.RY = SC.DDBH AND SPI.Part = SC.Part AND SPI.Process = SC.Process');
    SQL.Add('    GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.Part, SC.Process, SC.Supplier, SC.Pairs, SC.EstLaunchDate');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SecondProcessOutput AS SPO ON SPO.Building = SC.building_no AND SPO.Lean = SC.lean_no AND SPO.RY = SC.DDBH AND SPO.Part = SC.Part AND SPO.Process = SC.Process');
    SQL.Add('  GROUP BY SC.DDBH, SC.Part, SC.Process, SC.Supplier, SC.Pairs, SC.EstLaunchDate, SC.ActLaunchDate, SC.InputPairs');
    SQL.Add(') AS SC');
    SQL.Add('ORDER BY Process, Part');
    Active := true;
  end;

  with Q_Input do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ListNo, Date, Building, Lean, RY, Part, Process, Pairs, UserID, UserDate, YN, ''INPUT'' AS Type FROM SecondProcessInput');
    SQL.Add('WHERE Building = ''' + Building + ''' AND Lean = ''' + Lean + ''' AND RY = ''' + RY + ''' AND Part = :Part AND Process = :Process');
    SQL.Add('ORDER BY Date DESC, ListNo DESC');
    Active := true;
  end;

  with Q_Output do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ListNo, Date, Building, Lean, RY, Part, Process, Pairs, UserID, UserDate, YN, ''OUTPUT'' AS Type FROM SecondProcessOutput');
    SQL.Add('WHERE Building = ''' + Building + ''' AND Lean = ''' + Lean + ''' AND RY = ''' + RY + ''' AND Part = :Part AND Process = :Process');
    SQL.Add('ORDER BY Date DESC, ListNo DESC');
    Active := true;
  end;
end;

procedure TSP_RYProgress.BI1Click(Sender: TObject);
begin
  if (BO4.Enabled) then
  begin
    ShowMessage('Please save the output data first.');
    Exit;
  end;

  with Q_Input do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh1.Columns[0].ButtonStyle := cbsAuto;
  BI4.Enabled := true;
  BI5.Enabled := true;
end;

procedure TSP_RYProgress.BI2Click(Sender: TObject);
begin
  if (BO4.Enabled) then
  begin
    ShowMessage('Please save the output data first.');
    Exit;
  end;

  with Q_Input do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BI4.Enabled := true;
  BI5.Enabled := true;
end;

procedure TSP_RYProgress.BI3Click(Sender: TObject);
begin
  if (BO4.Enabled) then
  begin
    ShowMessage('Please save the output data first.');
    Exit;
  end;

  with Q_Input do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh1.Columns[0].ButtonStyle := cbsAuto;
  BI4.Enabled := true;
  BI5.Enabled := true;
end;

procedure TSP_RYProgress.BI4Click(Sender: TObject);
var
  i: integer;
  Part, Process: string;
begin
  Part := Q_Process.FieldByName('Part').AsString;
  Process := Q_Process.FieldByName('Process').AsString;

  try
    Q_Input.First;
    for i := 1 to Q_Input.RecordCount do
    begin
      case Q_Input.UpdateStatus of
        usInserted:
        begin
          if (Q_Input.FieldByName('Pairs').AsInteger <= 0) then
          begin
            Q_Input.Delete;
            Continue;
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

            Q_Input.Edit;
            Q_Input.FieldByName('ListNo').Value := QTemp.FieldByName('ListNo').AsString;
            Q_Input.FieldByName('UserID').Value := main.Edit1.Text;
            U_Input.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_Input.FieldByName('YN').Value = 0) then
          begin
            U_Input.Apply(ukDelete);
          end
          else if (Q_Input.FieldByName('Pairs').AsInteger > 0) then
          begin
            Q_Input.Edit;
            Q_Input.FieldByName('UserID').Value := main.Edit1.text;
            U_Input.Apply(ukModify);
          end;
        end;
      end;

      Q_Input.Next;
    end;

    Q_Input.Active := false;
    Q_Input.CachedUpdates := false;
    Q_Input.RequestLive := false;

    Q_Process.Active := false;
    Q_Process.Active := true;
    Q_Process.Locate('Part;Process', VarArrayOf([Part, Process]), []);
    
    Q_Input.Active := true;
    DBGridEh1.Columns[0].ButtonStyle := cbsNone;
    BI4.Enabled := false;
    BI5.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSP_RYProgress.BI5Click(Sender: TObject);
begin
  with Q_Input do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh1.Columns[0].ButtonStyle := cbsNone;
  BI4.Enabled := false;
  BI5.Enabled := false;
end;

procedure TSP_RYProgress.BO1Click(Sender: TObject);
begin
  if (BI4.Enabled) then
  begin
    ShowMessage('Please save the input data first.');
    Exit;
  end;

  with Q_Output do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh2.Columns[0].ButtonStyle := cbsAuto;
  BO4.Enabled := true;
  BO5.Enabled := true;
end;

procedure TSP_RYProgress.BO2Click(Sender: TObject);
begin
  if (BI4.Enabled) then
  begin
    ShowMessage('Please save the input data first.');
    Exit;
  end;

  with Q_Output do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BO4.Enabled := true;
  BO5.Enabled := true;
end;

procedure TSP_RYProgress.BO3Click(Sender: TObject);
begin
  if (BI4.Enabled) then
  begin
    ShowMessage('Please save the input data first.');
    Exit;
  end;

  with Q_Output do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh2.Columns[0].ButtonStyle := cbsAuto;
  BO4.Enabled := true;
  BO5.Enabled := true;
end;

procedure TSP_RYProgress.BO4Click(Sender: TObject);
var
  i: integer;
  Part, Process: string;
begin
  Part := Q_Process.FieldByName('Part').AsString;
  Process := Q_Process.FieldByName('Process').AsString;

  try
    Q_Output.First;
    for i := 1 to Q_Output.RecordCount do
    begin
      case Q_Output.UpdateStatus of
        usInserted:
        begin
          if (Q_Output.FieldByName('Pairs').AsInteger <= 0) then
          begin
            Q_Output.Delete;
            Continue;
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

            Q_Output.Edit;
            Q_Output.FieldByName('ListNo').Value := QTemp.FieldByName('ListNo').AsString;
            Q_Output.FieldByName('UserID').Value := main.Edit1.Text;
            U_Output.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_Output.FieldByName('YN').Value = 0) then
          begin
            U_Output.Apply(ukDelete);
          end
          else if (Q_Output.FieldByName('Pairs').AsInteger > 0) then
          begin
            Q_Output.Edit;
            Q_Output.FieldByName('UserID').Value := main.Edit1.text;
            U_Output.Apply(ukModify);
          end;
        end;
      end;

      Q_Output.Next;
    end;

    Q_Output.Active := false;
    Q_Output.CachedUpdates := false;
    Q_Output.RequestLive := false;

    Q_Process.Active := false;
    Q_Process.Active := true;
    Q_Process.Locate('Part;Process', VarArrayOf([Part, Process]), []);

    Q_Output.Active := true;
    DBGridEh2.Columns[0].ButtonStyle := cbsNone;
    BO4.Enabled := false;
    BO5.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSP_RYProgress.BO5Click(Sender: TObject);
begin
  with Q_Output do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh2.Columns[0].ButtonStyle := cbsNone;
  BO4.Enabled := false;
  BO5.Enabled := false;
end;

procedure TSP_RYProgress.Q_InputNewRecord(DataSet: TDataSet);
begin
  Q_Input.FieldByName('Date').Value := Date;
  Q_Input.FieldByName('Building').Value := sBuilding;
  Q_Input.FieldByName('Lean').Value := sLean;
  Q_Input.FieldByName('RY').Value := sRY;
  Q_Input.FieldByName('Part').Value := Q_Process.FieldByName('Part').AsString;
  Q_Input.FieldByName('Process').Value := Q_Process.FieldByName('Process').AsString;
  Q_Input.FieldByName('Type').Value := 'INPUT';
end;

procedure TSP_RYProgress.Q_OutputNewRecord(
  DataSet: TDataSet);
begin
  Q_Output.FieldByName('Date').Value := Date;
  Q_Output.FieldByName('Building').Value := sBuilding;
  Q_Output.FieldByName('Lean').Value := sLean;
  Q_Output.FieldByName('RY').Value := sRY;
  Q_Output.FieldByName('Part').Value := Q_Process.FieldByName('Part').AsString;
  Q_Output.FieldByName('Process').Value := Q_Process.FieldByName('Process').AsString;
  Q_Output.FieldByName('Type').Value := 'OUTPUT';
end;

procedure TSP_RYProgress.DBGridEh1Columns3UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  MaxPairs, OldPairs: integer;
begin
  try
    if (Q_Input.FieldByName('ListNo').IsNull = false) then
      OldPairs := Q_Input.FieldByName('Pairs').OldValue
    else
      OldPairs := 0;
  except
    OldPairs := 0;
  end;

  MaxPairs := Q_Process.FieldByName('Pairs').AsInteger - StrToInt(StringReplace(DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[1]), ',', '', [rfReplaceAll])) + OldPairs;
  if (Value > MaxPairs) then
    Text := IntToStr(MaxPairs);
end;

procedure TSP_RYProgress.DBGridEh2Columns3UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  MaxPairs, OldPairs: integer;
begin
  try
    if (Q_Output.FieldByName('ListNo').IsNull = false) then
      OldPairs := Q_Output.FieldByName('Pairs').OldValue
    else
      OldPairs := 0;
  except
    OldPairs := 0;
  end;
  MaxPairs := StrToInt(StringReplace(DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[1]), ',', '', [rfReplaceAll])) - StrToInt(StringReplace(DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[1]), ',', '', [rfReplaceAll])) + OldPairs;
  if (Value > MaxPairs) then
    Text := IntToStr(MaxPairs);
end;

procedure TSP_RYProgress.DBGridEh1GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_Input.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TSP_RYProgress.DBGridEh2GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_Output.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TSP_RYProgress.RG1Click(Sender: TObject);
var
  i: integer;
begin
  DBGridEh3.Columns[0].PickList.Clear;
  DBGridEh3.Columns[1].PickList.Clear;

  if (RG1.ItemIndex = 0) then
  begin
    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartVN[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessVN[i]);
    end;
  end
  else if (RG1.ItemIndex = 1) then
  begin
    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartCH[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessCH[i]);
    end;
  end
  else if (RG1.ItemIndex = 2) then
  begin
    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartEN[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessEN[i]);
    end;
  end;
                      
  DBGridEh3.Repaint;
end;

end.
