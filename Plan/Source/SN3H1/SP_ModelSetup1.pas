unit SP_ModelSetup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, DB,
  DBTables, ComObj, DateUtils, Menus, TeEngine, Series, TeeProcs, Chart, ExcelXP;

type
  TSP_ModelSetup = class(TForm)
    QTemp: TQuery;
    Q_PLM: TQuery;
    DS_PLM: TDataSource;
    Q_PLMXieXing: TStringField;
    Q_PLMSheHao: TStringField;
    Q_PLMDAOMH: TStringField;
    Q_PLMARTICLE: TStringField;
    Q_PLMSPQty: TIntegerField;
    DS_PLD: TDataSource;
    U_PLD: TUpdateSQL;
    Q_PLD: TQuery;
    Q_PLDXieXing: TStringField;
    Q_PLDSheHao: TStringField;
    Q_PLDPart: TStringField;
    Q_PLDProcess: TStringField;
    Q_PLDSupplier: TStringField;
    Q_PLDZSYWJC: TStringField;
    Q_PLDLeadTime: TIntegerField;
    Q_PLDUserID: TStringField;
    Q_PLDUserDate: TDateTimeField;
    Q_PLDYN: TStringField;
    Q_PLMMonth: TStringField;
    Q_PLMLT: TIntegerField;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DTP_PL1: TDateTimePicker;
    CB_Building_PL: TComboBox;
    CB_Lean_PL: TComboBox;
    Button2: TButton;
    DTP_PL2: TDateTimePicker;
    ED_CD_PL: TEdit;
    ED_SKU_PL: TEdit;
    CB_Process_PL: TComboBox;
    Button9: TButton;
    CB_Supplier_PL: TComboBox;
    Button10: TButton;
    Panel4: TPanel;
    BPL1: TBitBtn;
    BPL2: TBitBtn;
    BPL3: TBitBtn;
    BPL4: TBitBtn;
    BPL5: TBitBtn;
    CB_PL1: TCheckBox;
    CB_PL2: TCheckBox;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh3: TDBGridEh;
    Q_PLMNPQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTP_PL1Change(Sender: TObject);
    procedure DTP_PL2Change(Sender: TObject);
    procedure CB_Building_PLChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BPL1Click(Sender: TObject);
    procedure BPL2Click(Sender: TObject);
    procedure BPL3Click(Sender: TObject);
    procedure BPL4Click(Sender: TObject);
    procedure BPL5Click(Sender: TObject);
    procedure Q_PLDNewRecord(DataSet: TDataSet);
    procedure Q_PLDAfterOpen(DataSet: TDataSet);
    procedure DBGridEh3Columns0UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure Q_PLDAfterScroll(DataSet: TDataSet);
    procedure CB_PL1Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button9Click(Sender: TObject);
    procedure CB_PL2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    procedure ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
  public
    { Public declarations }
  end;

var
  SP_ModelSetup: TSP_ModelSetup;

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
  main1;

{$R *.dfm}

procedure TSP_ModelSetup.ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
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

procedure TSP_ModelSetup.ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
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

procedure TSP_ModelSetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSP_ModelSetup.FormDestroy(Sender: TObject);
begin
  SP_ModelSetup := Nil;
end;

procedure TSP_ModelSetup.FormCreate(Sender: TObject);
begin
  DTP_PL1.Date := StartOfTheMonth(Date);
  DTP_PL2.Date := StartOfTheMonth(Date);

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY building_no');
    Active := true;

    CB_Building_PL.Clear;
    CB_Building_PL.Items.Add('ALL');

    while not Eof do
    begin                
      CB_Building_PL.Items.Add(FieldByName('building_no').AsString);
      Next;
    end;
                                 
    CB_Building_PL.ItemIndex := 0;
    CB_Building_PL.DropDownCount := RecordCount + 1;
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
                     
    CB_Lean_PL.Clear;
    CB_Lean_PL.Items.Add('ALL');

    while not Eof do
    begin                                 
      CB_Lean_PL.Items.Add(FieldByName('lean_no').AsString);
      Next;
    end;

    CB_Lean_PL.ItemIndex := 0;
    CB_Lean_PL.DropDownCount := RecordCount + 1;
  end;
end;
   
procedure TSP_ModelSetup.FormShow(Sender: TObject);
begin
  Panel3.SetFocus;
end;

procedure TSP_ModelSetup.DTP_PL1Change(Sender: TObject);
begin
  if (DTP_PL2.Date < DTP_PL1.Date) then
    DTP_PL2.Date := DTP_PL1.Date;

  ReloadBuilding(CB_Building_PL, DTP_PL1, DTP_PL2, 'ALL');
  ReloadLean(CB_Lean_PL, CB_Building_PL, DTP_PL1, DTP_PL2, 'ALL');
end;

procedure TSP_ModelSetup.DTP_PL2Change(Sender: TObject);
begin
  if (DTP_PL1.Date > DTP_PL2.Date) then
    DTP_PL1.Date := DTP_PL2.Date;

  ReloadBuilding(CB_Building_PL, DTP_PL1, DTP_PL2, 'ALL');
  ReloadLean(CB_Lean_PL, CB_Building_PL, DTP_PL1, DTP_PL2, 'ALL');
end;

procedure TSP_ModelSetup.CB_Building_PLChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_PL, CB_Building_PL, DTP_PL1, DTP_PL2, 'ALL');
end;

procedure TSP_ModelSetup.Button2Click(Sender: TObject);
begin
  with Q_PLM do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Month, XieXing, SheHao, DAOMH, ARTICLE, COUNT(Part) AS SPQty, MIN(LT) AS LT, SUM(CASE WHEN Part = ''NO PROCESSING'' THEN 1 ELSE 0 END) AS NPQty FROM (');
    SQL.Add('  SELECT SUBSTRING(CONVERT(VARCHAR, MIN(SC.schedule_date), 111), 1, 7) AS Month, XXZL.XieXing, XXZL.SheHao, XXZL.DAOMH, XXZL.ARTICLE, MSP.Part, ISNULL(MSP.LeadTime, 0) AS LT FROM schedule_crawler AS SC');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('  LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = XXZL.XieXing AND MSP.SheHao = XXZL.SheHao');
    SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_PL1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_PL2.Date)) + ''' AND XXZL.XieXing IS NOT NULL');
    if (CB_Building_PL.Text <> 'ALL') then
      SQL.Add('  AND SC.building_no = ''' + CB_Building_PL.Text + '''');
    if (CB_Lean_PL.Text <> 'ALL') then
      SQL.Add('  AND SC.lean_no = ''' + CB_Lean_PL.Text + '''');
    if (CB_Process_PL.Text <> 'ALL') then
      SQL.Add('  AND MSP.Process = ''' + ProcessKey[CB_Process_PL.ItemIndex] + '''');
    if (CB_Supplier_PL.Text <> 'ALL') then
      SQL.Add('  AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_PL.ItemIndex] + '''');
    if (ED_CD_PL.Text <> '') then
      SQL.Add('  AND XXZL.DAOMH LIKE ''%' + ED_CD_PL.Text + '%''');
    if (ED_SKU_PL.Text <> '') then
      SQL.Add('  AND XXZL.ARTICLE LIKE ''' + ED_SKU_PL.Text + '%''');
    SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('  GROUP BY XXZL.XieXing, XXZL.SheHao, XXZL.DAOMH, XXZL.ARTICLE, MSP.Part, MSP.LeadTime');
    SQL.Add(') AS SP');
    SQL.Add('GROUP BY Month, XieXing, SheHao, DAOMH, ARTICLE');
    SQL.Add('ORDER BY DAOMH, ARTICLE');
    Active := true;
  end;

  with Q_PLD do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MSP.XieXing, MSP.SheHao, MSP.Part, MSP.Process, MSP.Supplier, ZSZL.ZSYWJC, MSP.LeadTime, MSP.UserID, MSP.UserDate, MSP.YN FROM ModelSecondProcess AS MSP');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = MSP.Supplier');
    SQL.Add('WHERE XieXing = :XieXing AND SheHao = :SheHao');
    if (CB_Process_PL.Text <> 'ALL') then
      SQL.Add('AND MSP.Process = ''' + ProcessKey[CB_Process_PL.ItemIndex] + '''');
    if (CB_Supplier_PL.Text <> 'ALL') then
      SQL.Add('AND MSP.Supplier = ''' + SupplierKey[CB_Supplier_PL.ItemIndex] + '''');
    SQL.Add('ORDER BY MSP.Part, MSP.LeadTime DESC');
    Active := true;
  end;
end;

procedure TSP_ModelSetup.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_PLM.FieldByName('SPQty').AsInteger = 0) then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TSP_ModelSetup.BPL1Click(Sender: TObject);
begin
  with Q_PLD do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh3.Columns[0].ButtonStyle := cbsAuto;
  DBGridEh3.Columns[1].ButtonStyle := cbsAuto;
  DBGridEh3.Columns[2].ButtonStyle := cbsAuto;
  BPL4.Enabled := true;
  BPL5.Enabled := true;
end;

procedure TSP_ModelSetup.BPL2Click(Sender: TObject);
begin
  with Q_PLD do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BPL4.Enabled := true;
  BPL5.Enabled := true;
end;

procedure TSP_ModelSetup.BPL3Click(Sender: TObject);
begin
  with Q_PLD do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh3.Columns[0].ButtonStyle := cbsAuto; 
  DBGridEh3.Columns[1].ButtonStyle := cbsAuto;
  DBGridEh3.Columns[2].ButtonStyle := cbsAuto;
  BPL4.Enabled := true;
  BPL5.Enabled := true;
end;

procedure TSP_ModelSetup.BPL4Click(Sender: TObject);
var
  i: integer;
begin
  try
    Q_PLD.First;
    for i := 1 to Q_PLD.RecordCount do
    begin
      case Q_PLD.UpdateStatus of
        usInserted:
        begin
          if (Q_PLD.FieldByName('Part').AsString = 'NO PROCESSING') then
          begin
            Q_PLD.Edit;
            Q_PLD.FieldByName('Process').Value := '';
            Q_PLD.FieldByName('Supplier').Value := '';
            Q_PLD.FieldByName('LeadTime').Value := NULL;
          end;

          if (Q_PLD.FieldByName('Part').IsNull) OR (Q_PLD.FieldByName('Process').IsNull) then
          begin
            Q_PLD.Delete;
          end
          else begin
            Q_PLD.Edit;
            Q_PLD.FieldByName('UserID').Value := main.Edit1.Text;
            U_PLD.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_PLD.FieldByName('YN').Value = 0) then
          begin
            U_PLD.Apply(ukDelete);
          end
          else if (Q_PLD.FieldByName('Part').IsNull = false) AND (Q_PLD.FieldByName('Process').IsNull = false) then
          begin
            Q_PLD.Edit;
            Q_PLD.FieldByName('UserID').Value := main.Edit1.text;
            U_PLD.Apply(ukModify);
          end;
        end;
      end;

      Q_PLD.Next;
    end;

    Q_PLD.Active := false;
    Q_PLD.CachedUpdates := false;
    Q_PLD.RequestLive := false;
    Q_PLD.Active := true;
    DBGridEh3.Columns[0].ButtonStyle := cbsNone;
    DBGridEh3.Columns[1].ButtonStyle := cbsNone;
    DBGridEh3.Columns[2].ButtonStyle := cbsNone;
    BPL4.Enabled := false;
    BPL5.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSP_ModelSetup.BPL5Click(Sender: TObject);
begin
  with Q_PLD do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh3.Columns[0].ButtonStyle := cbsNone; 
  DBGridEh3.Columns[1].ButtonStyle := cbsNone;
  DBGridEh3.Columns[2].ButtonStyle := cbsNone;
  BPL4.Enabled := false;
  BPL5.Enabled := false;
end;

procedure TSP_ModelSetup.Q_PLDNewRecord(DataSet: TDataSet);
begin
  Q_PLD.FieldByName('XieXing').Value := Q_PLM.FieldByName('XieXing').AsString;
  Q_PLD.FieldByName('SheHao').Value := Q_PLM.FieldByName('SheHao').AsString;
end;

procedure TSP_ModelSetup.Q_PLDAfterOpen(DataSet: TDataSet);
begin
  if (Q_PLD.RecordCount = 1) AND (Q_PLD.FieldByName('Part').AsString = 'NO PROCESSING') then
    BPL1.Enabled := false
  else
    BPL1.Enabled := true;
  BPL2.Enabled := true;
  BPL3.Enabled := true;
end;

procedure TSP_ModelSetup.DBGridEh3Columns0UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  if (Value = 'NO PROCESSING') then
  begin
    DBGridEh3.Columns[1].ReadOnly := true;
    DBGridEh3.Columns[2].ReadOnly := true;
    DBGridEh3.Columns[3].ReadOnly := true;
    Q_PLD.FieldByName('Process').Value := '';
    Q_PLD.FieldByName('Supplier').Value := '';
    Q_PLD.FieldByName('LeadTime').Value := NULL;
    BPL1.Enabled := false;
  end
  else begin
    DBGridEh3.Columns[1].ReadOnly := false;
    DBGridEh3.Columns[2].ReadOnly := false;
    DBGridEh3.Columns[3].ReadOnly := false;
    BPL1.Enabled := true;
  end;
end;

procedure TSP_ModelSetup.Q_PLDAfterScroll(DataSet: TDataSet);
begin
  if (Q_PLD.RecordCount = 1) AND (Q_PLD.FieldByName('Part').AsString = 'NO PROCESSING') then
    BPL1.Enabled := false
  else
    BPL1.Enabled := true
end;

procedure TSP_ModelSetup.CB_PL1Click(Sender: TObject);
begin
  Q_PLM.Filter := '';

  if (CB_PL1.Checked) then
    Q_PLM.Filter := 'SPQty = 0';

  if (CB_PL2.Checked) then
  begin
    if (Q_PLM.Filter <> '') then
      Q_PLM.Filter := Q_PLM.Filter + 'AND LT = 0 AND NPQty = 0'
    else
      Q_PLM.Filter := 'LT = 0';
  end;

  Q_PLM.Filtered := (CB_PL1.Checked OR CB_PL2.Checked);
end;
    
procedure TSP_ModelSetup.CB_PL2Click(Sender: TObject);
begin
  Q_PLM.Filter := '';

  if (CB_PL2.Checked) then
    Q_PLM.Filter := Q_PLM.Filter + 'LT = 0 AND NPQty = 0';

  if (CB_PL1.Checked) then
  begin
    if (Q_PLM.Filter <> '') then
      Q_PLM.Filter := Q_PLM.Filter + 'AND SPQty = 0'
    else
      Q_PLM.Filter := 'SPQty = 0';
  end;

  Q_PLM.Filtered := (CB_PL1.Checked OR CB_PL2.Checked);
end;

procedure TSP_ModelSetup.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_PLD.FieldByName('YN').AsString = '0') then
    DBGridEh3.Canvas.Font.Color := clRed;
end;

procedure TSP_ModelSetup.Button9Click(Sender: TObject);
var
  i, Index: integer;
begin
  Index := CB_Process_PL.ItemIndex;
  CB_Process_PL.Clear;
  CB_Process_PL.Items.Add('ALL');
  DBGridEh3.Columns[0].PickList.Clear;
  DBGridEh3.Columns[1].PickList.Clear;

  if (Button9.Caption = 'VN') then
  begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin                                        
      CB_Process_PL.Items.Add(ProcessCH[i - 1]);
    end;

    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartCH[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessCH[i]);
    end;

    Button9.Caption := 'CH';
  end
  else if (Button9.Caption = 'CH') then
  begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin                                        
      CB_Process_PL.Items.Add(ProcessEN[i - 1]);
    end;

    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartEN[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessEN[i]);
    end;

    Button9.Caption := 'EN';
  end
  else begin
    for i := 1 to Length(ProcessKey) - 1 do
    begin                                       
      CB_Process_PL.Items.Add(ProcessVN[i - 1]);
    end;

    for i := 0 to DBGridEh3.Columns[0].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[0].PickList.Add(PartVN[i]);
    end;
    for i := 0 to DBGridEh3.Columns[1].KeyList.Count - 1 do
    begin
      DBGridEh3.Columns[1].PickList.Add(ProcessVN[i]);
    end;

    Button9.Caption := 'VN';
  end;

  DBGridEh3.Repaint;
  CB_Process_PL.ItemIndex := Index;
end;

procedure TSP_ModelSetup.Button10Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Q_PLM.Active) then
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
      for Col := 0 to DBGridEh2.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh2.Columns[Col].Title.Caption;
      end;

      for Col := 0 to DBGridEh3.Columns.Count - 3 do
      begin
        eclApp.Cells[1, Col + DBGridEh2.Columns.Count + 1] := DBGridEh3.Columns[Col].Title.Caption;
      end;

      Q_PLM.First;
      Row := 2;
      while not Q_PLM.Eof do
      begin
        Q_PLD.First;
        while not Q_PLD.Eof do
        begin
          for Col := 0 to DBGridEh2.Columns.Count - 1 do
          begin
            eclApp.Cells[Row, Col+1] := Q_PLM.FieldByName(DBGridEh2.Columns[Col].FieldName).Value;
          end;

          for Col := 0 to DBGridEh3.Columns.Count - 3 do
          begin
            eclApp.Cells[Row, Col + DBGridEh2.Columns.Count + 1] := DBGridEh3.Columns[Col].DisplayText;
          end;

          Inc(Row);
          Q_PLD.Next;
        end;

        Q_PLM.Next;
      end;

      eclapp.Columns.Autofit;
      ShowMessage('Successful');
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
