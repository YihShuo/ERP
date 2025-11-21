unit ScheduleUpload1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, DBTables, StrUtils,
  GridsEh, DBGridEh, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ComObj, DateUtils, CheckLst, TeEngine, Series,
  TeeProcs, Chart, Menus, ExcelXP;

type
  TScheduleUpload = class(TForm)
    DS_S: TDataSource;
    OpenDialog1: TOpenDialog;
    QTemp: TQuery;
    QUpload: TQuery;
    Query_S: TQuery;
    IdHTTP1: TIdHTTP;
    Query_Sbuilding_no: TStringField;
    Query_Slean_no: TStringField;
    Query_Sly: TStringField;
    Query_Sry: TStringField;
    Query_Svt: TStringField;
    Query_Schat_lieu: TStringField;
    Query_Slast: TStringField;
    Query_Sbuy: TStringField;
    Query_Sbts: TStringField;
    Query_Scutting: TStringField;
    Query_Ssku: TStringField;
    Query_Ssl: TStringField;
    Query_Sassembly: TStringField;
    Query_Scsd: TStringField;
    Query_Scountry: TStringField;
    Query_Suser_id: TStringField;
    Query_Sschedule_date: TDateTimeField;
    Query_Suser_date: TDateTimeField;
    QUpdate: TQuery;
    Query_Sstitching: TStringField;
    PC_Main: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh_S: TDBGridEh;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DTP_S1: TDateTimePicker;
    DTP_S2: TDateTimePicker;
    Button_QS: TButton;
    CB_Building_S: TComboBox;
    CB_Lean_S: TComboBox;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DTP_SQ1: TDateTimePicker;
    DTP_SQ2: TDateTimePicker;
    Button_QSQ: TButton;
    CB_Building_SQ: TComboBox;
    CB_Lean_SQ: TComboBox;
    PC_SQ: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGridEh_SQ: TDBGridEh;
    Query_SQ: TQuery;
    DS_SQ: TDataSource;
    RG_SQ: TRadioGroup;
    Query_SQbuilding_no: TStringField;
    Query_SQlean_no: TStringField;
    Query_SQDDBH: TStringField;
    Query_SQARTICLE: TStringField;
    Query_SQPairs: TIntegerField;
    Query_SQC_Labor: TIntegerField;
    Query_SQS_Labor: TIntegerField;
    Query_SQA_Labor: TIntegerField;
    Query_SQry_index: TStringField;
    Query_SQschedule_date: TDateTimeField;
    Chart_SQ: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    TabSheet5: TTabSheet;
    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DTP_HC: TDateTimePicker;
    Button_QHC: TButton;
    CB_Building_HC: TComboBox;
    CB_Lean_HC: TComboBox;
    DBGridEh_HC: TDBGridEh;
    DS_HC: TDataSource;
    Query_HC: TQuery;
    Query_HCbuilding_no: TStringField;
    Query_HClean_no: TStringField;
    Query_HCXieXing: TStringField;
    Query_HCSheHao: TStringField;
    Query_HCARTICLE: TStringField;
    Query_HCBZCL: TIntegerField;
    Query_HCCapacity: TIntegerField;
    UpdateSQL_HC: TUpdateSQL;
    Query_HCDAOMH: TStringField;
    Panel4: TPanel;
    BHC1: TBitBtn;
    BHC2: TBitBtn;
    BHC3: TBitBtn;
    BHC4: TBitBtn;
    BHC5: TBitBtn;
    BHC6: TBitBtn;
    BHC7: TBitBtn;
    Query_HCMonth: TStringField;
    Query_HCRate: TIntegerField;
    Panel5: TPanel;
    BS1: TBitBtn;
    BS2: TBitBtn;
    BS3: TBitBtn;
    BS4: TBitBtn;
    BS5: TBitBtn;
    BS6: TBitBtn;
    BS7: TBitBtn;
    BS8: TBitBtn;
    UpdateSQL_S: TUpdateSQL;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel7: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DTP_3D: TDateTimePicker;
    Button_Q3D: TButton;
    CB_Building_3D: TComboBox;
    CB_Lean_3D: TComboBox;
    ScrollBox1: TScrollBox;
    DS_3D: TDataSource;
    DS_1D: TDataSource;
    Query_3D: TQuery;
    UpdateSQL_3D: TUpdateSQL;
    Query_HCUserID: TStringField;
    Query_HCUserDate: TDateTimeField;
    BHC8: TBitBtn;
    Query_3DBuilding: TStringField;
    Query_3DLean: TStringField;
    Query_3DPlanType: TStringField;
    Query_3DRY: TStringField;
    Query_3DShipDate: TDateTimeField;
    Query_3DNT: TStringField;
    Query_3DBUYNO: TStringField;
    Query_3DARTICLE: TStringField;
    Query_3DDAOMH: TStringField;
    Query_3DCycleStart: TIntegerField;
    Query_3DCycleEnd: TIntegerField;
    Query_3DPairs: TIntegerField;
    Query_3DUserID: TStringField;
    Query_3DUserDate: TDateTimeField;
    Query_3DYN: TStringField;
    Query_3DPlanDate: TDateTimeField;
    Query_3DMinCycle: TIntegerField;
    Query_3DMaxCycle: TIntegerField;
    BS9: TBitBtn;
    Button_ESQ: TButton;
    Panel8: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DTP_1D: TDateTimePicker;
    Button_Q1D: TButton;
    CB_Building_1D: TComboBox;
    CB_Lean_1D: TComboBox;
    Panel10: TPanel;
    B1D2: TBitBtn;
    B1D3: TBitBtn;
    B1D4: TBitBtn;
    B1D5: TBitBtn;
    B1D6: TBitBtn;
    DBGridEh_1D: TDBGridEh;
    Query_1D: TQuery;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    DateTimeField12: TDateTimeField;
    StringField41: TStringField;
    DateTimeField13: TDateTimeField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    IntegerField10: TIntegerField;
    StringField45: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField46: TStringField;
    DateTimeField14: TDateTimeField;
    StringField47: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    UpdateSQL_1D: TUpdateSQL;
    Query_1DRYPairs: TIntegerField;
    Query_1DDeliveryTime: TStringField;
    Query_1DAssemblyTime: TStringField;
    Query_1DXTMH: TStringField;
    Query_3DRYPairs: TIntegerField;
    Query_3DRemark: TStringField;
    Query_1DRemark: TStringField;
    Panel6: TPanel;
    B3D2: TBitBtn;
    B3D3: TBitBtn;
    B3D4: TBitBtn;
    B3D5: TBitBtn;
    B3D6: TBitBtn;
    DBGridEh_3D: TDBGridEh;
    B3D8: TBitBtn;
    B3D9: TBitBtn;
    B3D1: TBitBtn;
    B3D7: TBitBtn;
    B1D1: TBitBtn;
    B1D8: TBitBtn;
    B1D9: TBitBtn;
    B1D7: TBitBtn;
    Query_HCStandard: TIntegerField;
    Query_SYN: TStringField;
    Query_HCDL_C: TIntegerField;
    Query_HCDL_S: TIntegerField;
    Query_HCDL_A: TIntegerField;
    Query_HCDL_P: TIntegerField;
    Query_HCIDL: TIntegerField;
    Query_HCPairs: TIntegerField;
    TabSheet8: TTabSheet;
    Panel9: TPanel;
    BGCD1: TBitBtn;
    BGCD2: TBitBtn;
    BGCD3: TBitBtn;
    BGCD4: TBitBtn;
    BGCD5: TBitBtn;
    BGCD6: TBitBtn;
    BGCD8: TBitBtn;
    BGCD9: TBitBtn;
    BGCD7: TBitBtn;
    Panel11: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DTP_GCD: TDateTimePicker;
    Button_QGCD: TButton;
    CB_Building_GCD: TComboBox;
    CB_Lean_GCD: TComboBox;
    DBGridEh_GCD: TDBGridEh;
    DS_GCD: TDataSource;
    Query_GCD: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    DateTimeField2: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField1: TIntegerField;
    StringField8: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField9: TStringField;
    DateTimeField3: TDateTimeField;
    StringField10: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField11: TStringField;
    UpdateSQL_GCD: TUpdateSQL;
    Label21: TLabel;
    CB_Type_1D: TComboBox;
    Query_GCDSeq: TIntegerField;
    Query_3DSeq: TIntegerField;
    Query_1DSeq: TIntegerField;
    Query_1DSubRY: TStringField;
    Label22: TLabel;
    CB_Type_3D: TComboBox;
    Query_HCCapacity_His: TStringField;
    Query_HCCapacityMonth: TStringField;
    CB_HC1: TCheckBox;
    CB_HC2: TCheckBox;
    Query_SVersion: TStringField;
    Query_3DSubRY: TStringField;
    CB_HC3: TCheckBox;
    TabSheet9: TTabSheet;
    Panel12: TPanel;
    Label23: TLabel;
    DTP_MCF1: TDateTimePicker;
    Button1: TButton;
    Chart_MCF: TChart;
    Series_MCF_Planned: TBarSeries;
    Series_MCF_Actual: TBarSeries;
    Series_MCF_Unplanned: TLineSeries;
    DTP_MCF2: TDateTimePicker;
    Label24: TLabel;
    Label25: TLabel;
    CB_Section: TComboBox;
    Label26: TLabel;
    CB_Mode: TComboBox;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Label27: TLabel;
    ED_Labor: TEdit;
    IdHTTP2: TIdHTTP;
    Query_1DReason: TStringField;
    B1D10: TButton;
    Query_GCDGSBH: TStringField;
    Query_3DGSBH: TStringField;
    Query_1DGSBH: TStringField;
    Query_Sry_index: TIntegerField;
    TBUpload: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BS8Click(Sender: TObject);
    procedure Button_QSClick(Sender: TObject);
    procedure DTP_S1Change(Sender: TObject);
    procedure DTP_S2Change(Sender: TObject);
    procedure CB_Building_SChange(Sender: TObject);
    procedure DTP_SQ1Change(Sender: TObject);
    procedure DTP_SQ2Change(Sender: TObject);
    procedure CB_Building_SQChange(Sender: TObject);
    procedure Button_QSQClick(Sender: TObject);
    procedure DTP_HCChange(Sender: TObject);
    procedure CB_Building_HCChange(Sender: TObject);
    procedure Button_QHCClick(Sender: TObject);
    procedure Query_HCAfterOpen(DataSet: TDataSet);
    procedure BHC4Click(Sender: TObject);
    procedure BHC5Click(Sender: TObject);
    procedure BHC6Click(Sender: TObject);
    procedure BHC7Click(Sender: TObject);
    procedure Query_HCCapacityChange(Sender: TField);
    procedure BS5Click(Sender: TObject);
    procedure BS6Click(Sender: TObject);
    procedure BS7Click(Sender: TObject);
    procedure BHC8Click(Sender: TObject);
    procedure Button_Q3DClick(Sender: TObject);
    procedure B3D2Click(Sender: TObject);
    procedure Query_3DAfterOpen(DataSet: TDataSet);
    procedure B3D3Click(Sender: TObject);
    procedure B3D4Click(Sender: TObject);
    procedure B3D5Click(Sender: TObject);
    procedure B3D6Click(Sender: TObject);
    procedure Query_3DNewRecord(DataSet: TDataSet);
    procedure DBGridEh_3DGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DTP_3DChange(Sender: TObject);
    procedure CB_Building_3DChange(Sender: TObject);
    procedure Query_3DCycleStartChange(Sender: TField);
    procedure Query_3DCycleEndChange(Sender: TField);
    procedure BS9Click(Sender: TObject);
    procedure Button_ESQClick(Sender: TObject);
    procedure DTP_1DChange(Sender: TObject);
    procedure CB_Building_1DChange(Sender: TObject);
    procedure Button_Q1DClick(Sender: TObject);
    procedure B1D2Click(Sender: TObject);
    procedure B1D3Click(Sender: TObject);
    procedure B1D4Click(Sender: TObject);
    procedure B1D5Click(Sender: TObject);
    procedure B1D6Click(Sender: TObject);
    procedure DBGridEh_1DGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query_1DAfterOpen(DataSet: TDataSet);
    procedure Query_1DNewRecord(DataSet: TDataSet);
    procedure DBGridEh_1DColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure IntegerField11Change(Sender: TField);
    procedure IntegerField12Change(Sender: TField);
    procedure DBGridEh_3DKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh_1DKeyPress(Sender: TObject; var Key: Char);
    procedure B3D9Click(Sender: TObject);
    procedure B1D9Click(Sender: TObject);
    procedure B3D7Click(Sender: TObject);
    procedure B1D7Click(Sender: TObject);
    procedure DBGridEh_3DColumns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure B3D8Click(Sender: TObject);
    procedure B1D8Click(Sender: TObject);
    procedure DBGridEh_SGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DTP_GCDChange(Sender: TObject);
    procedure CB_Building_GCDChange(Sender: TObject);
    procedure BGCD2Click(Sender: TObject);
    procedure BGCD3Click(Sender: TObject);
    procedure BGCD4Click(Sender: TObject);
    procedure BGCD5Click(Sender: TObject);
    procedure BGCD6Click(Sender: TObject);
    procedure BGCD7Click(Sender: TObject);
    procedure BGCD8Click(Sender: TObject);
    procedure BGCD9Click(Sender: TObject);
    procedure DBGridEh_GCDGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh_GCDKeyPress(Sender: TObject; var Key: Char);
    procedure Query_GCDAfterOpen(DataSet: TDataSet);
    procedure Query_GCDNewRecord(DataSet: TDataSet);
    procedure Button_QGCDClick(Sender: TObject);
    procedure DBGridEh_GCDColumns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh_HCGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure CB_HC1Click(Sender: TObject);
    procedure CB_HC2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Series_MCF_ActualClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Series_MCF_PlannedClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Series_MCF_UnplannedClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure DTP_MCF1Change(Sender: TObject);
    procedure DTP_MCF2Change(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure CB_ModeChange(Sender: TObject);
    procedure ED_LaborChange(Sender: TObject);
    procedure B1D10Click(Sender: TObject);
    procedure TBUploadClick(Sender: TObject);
  private
    { Private declarations }
    GCD_Date, P3D_Date, P1D_Date: TDate;
    GCD_Building, GCD_Lean, P3D_Building, P3D_Lean, P1D_Building, P1D_Lean: string;
    GCD_Mode, P3D_Mode, P1D_Mode, P1D_Type, MCF_Mode: string;
    RY_List, Cycle_List: TStringList;
    MCF_Labor: integer;
    procedure MES_Connect;
    procedure MES_DisConnect;
    procedure MES_DeleteOldScheduleFile(Building: string);
    procedure MES_UploadScheduleFile(Building: string);
    procedure ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    procedure ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    procedure ProductionLineCheck(SDate: TDate; Building: string);
  public
    { Public declarations }
    Version: string;
    GCD_RY, P3D_RY, P1D_RY: string;
    UploadPage: array of string;   
    procedure SeqCheck(Building: string; CheckDate: TDate);
  end;

var
  ScheduleUpload: TScheduleUpload;

const
  TypeList3D: array[0..1] of string = ('3-Day', '3-Day U');
  TypeList1D: array[0..3] of string = ('1-Day', '1-Day U', 'Testing', 'R2');

implementation

uses
  main1, SchedulePage1, RYDialog1, ExportDialog1, ScheduleVersion1,
  LeanModelChanges1, SequenceCheck1;

{$R *.dfm}

procedure TScheduleUpload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RY_List.Free;
  Cycle_List.Free;
  Action := caFree;
end;
       
procedure TScheduleUpload.FormDestroy(Sender: TObject);
begin
  ScheduleUpload := Nil;
end;

procedure TScheduleUpload.ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
var
  Building: string;
  i: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_Start.Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_End.Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY building_no');
    Active := true;

    i := 0;
    Building := ComboBox.Text;
    ComboBox.Clear;
    if (Mode = 'ALL') then
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

procedure TScheduleUpload.ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
var
  Lean: string;
  i: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    if (Mode = 'NONE') then
      SQL.Add('SELECT DISTINCT SUBSTRING(lean_no, 1, 6) AS lean_no FROM schedule_crawler')
    else
      SQL.Add('SELECT DISTINCT lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_Start.Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_End.Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    if (SourceBox.ItemIndex >= 0) then
      SQL.Add('AND building_no = ''' + SourceBox.Text + '''');
    SQL.Add('ORDER BY lean_no');
    Active := true;

    i := 0;
    Lean := ComboBox.Text;
    ComboBox.Clear;
    if (Mode = 'ALL') then
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

procedure TScheduleUpload.SeqCheck(Building: string; CheckDate: TDate);
const
  URL = 'http://192.168.23.12:80/api/ERP/sendTelegramMessage';
var
  TempMsg, Response: string;
  JsonBody: TStringStream;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#PP'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #PP END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#SC'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SC END;');
    ExecSQL;

    SQL.Add('DECLARE @LDate AS SmallDateTime = (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', CheckDate) + ''')');
    SQL.Add(')');

    SQL.Add('DECLARE @DDate AS SmallDateTime = (');
    SQL.Add('  SELECT MIN(CONVERT(SmallDateTime, CAST(SCYEAR AS VARCHAR) + ''/'' + CAST(SCMONTH AS VARCHAR) + ''/'' + CAST(SCDay AS VARCHAR))) AS Date FROM SCRL');
    SQL.Add('  WHERE CONVERT(SmallDateTime, CAST(SCYEAR AS VARCHAR) + ''/'' + CAST(SCMONTH AS VARCHAR) + ''/'' + CAST(SCDay AS VARCHAR)) > @LDate AND ISNULL(SCGS, 0) > 0');
    SQL.Add(')');

    SQL.Add('SELECT Building, Lean, AssemblyTime, RY, PDate, Seq INTO #PP FROM (');
    SQL.Add('  SELECT Building, Lean, AssemblyTime, RY, PDate, 0 AS Seq FROM (');
    SQL.Add('    SELECT PP.Building, PP.Lean, PP.AssemblyTime, PP.RY, MIN(SC.schedule_date) AS PDate,');
    SQL.Add('    ROW_NUMBER() OVER(PARTITION BY PP.Building, PP.Lean ORDER BY ISNULL(PP.Seq, 99) DESC, PP.AssemblyTime DESC, MIN(CONVERT(VARCHAR, SC.schedule_date, 111) + ''-'' + CAST(SC.ry_index AS VARCHAR)) DESC) AS Seq FROM ProductionPlan AS PP');
    SQL.Add('    LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean');
    SQL.Add('    AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
    SQL.Add('    WHERE PlanType LIKE ''1-Day%'' AND PlanDate = @LDate AND Building = ''' + Building + '''');
    SQL.Add('    GROUP BY PP.Building, PP.Lean, PP.RY, PP.Seq, PP.AssemblyTime');
    SQL.Add('  ) AS LastPP');
    SQL.Add('  WHERE Seq = 1');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT PP.Building, PP.Lean, PP.AssemblyTime, PP.RY, MIN(SC.schedule_date) AS PDate,');
    SQL.Add('  ROW_NUMBER() OVER(PARTITION BY PP.Building, PP.Lean ORDER BY ISNULL(PP.Seq, 99), PP.AssemblyTime, MIN(CONVERT(VARCHAR, SC.schedule_date, 111) + ''-'' + CAST(SC.ry_index AS VARCHAR))) AS Seq FROM ProductionPlan AS PP');
    SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean');
    SQL.Add('  AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
    SQL.Add('  WHERE PlanType LIKE ''1-Day%'' AND PlanDate = @DDate AND Building = ''' + Building + '''');
    SQL.Add('  GROUP BY PP.Building, PP.Lean, PP.RY, PP.Seq, PP.AssemblyTime');
    SQL.Add(') AS PP');
    SQL.Add('ORDER BY PP.Building, PP.Lean, PP.Seq');

    SQL.Add('SELECT SC.building_no, SC.lean_no, DDZL.DDBH, SC.schedule_date AS PDate, ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date, SC.ry_index) AS Seq INTO #SC FROM schedule_crawler AS SC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('WHERE SC.building_no = ''' + Building + ''' AND schedule_date >= LEFT(CONVERT(VARCHAR, DATEADD(MM, -1, GETDATE()), 111), 7) + ''/01''');

    SQL.Add('SELECT PP.Building, PP.Lean, @DDate AS Date, PP.AssemblyTime, SC.FromRY AS PlanFromRY, SC.PFromRYDate, SC.ToRY AS PlanToRY, SC.PToRYDate,');
    SQL.Add('PP.FromRY AS ActualFromRY, PP.AFromRYDate, PP.ToRY AS ActualToRY, PP.AToRYDate FROM (');
    SQL.Add('  SELECT PP1.Building, PP1.Lean, PP1.Seq, PP2.AssemblyTime, PP1.RY AS FromRY, PP1.PDate AS AFromRYDate, PP2.RY AS ToRY, PP2.PDate AS AToRYDate FROM #PP AS PP1');
    SQL.Add('  LEFT JOIN #PP AS PP2 ON PP2.Building = PP1.Building AND PP2.Lean = PP1.Lean AND PP2.Seq = PP1.Seq + 1');
    SQL.Add('  WHERE PP1.RY <> ISNULL(PP2.RY, '''')');
    SQL.Add(') AS PP');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SC1.building_no AS Building, SC1.lean_no AS Lean, SC1.DDBH AS FromRY, SC1.PDate AS PFromRYDate, SC2.DDBH AS ToRY, SC2.PDate AS PToRYDate FROM #SC AS SC1');
    SQL.Add('  LEFT JOIN #SC AS SC2 ON SC2.building_no = SC1.building_no AND SC2.lean_no = SC1.lean_no AND SC2.Seq = SC1.Seq + 1');
    SQL.Add(') AS SC ON SC.Building = PP.Building AND SC.Lean = PP.Lean AND SC.FromRY = PP.FromRY AND ISNULL(SC.ToRY, '''') <> ISNULL(PP.ToRY, '''')');
    SQL.Add('WHERE PP.ToRY IS NOT NULL AND SC.Building IS NOT NULL');
    SQL.Add('ORDER BY PP.Building, PP.Lean, PP.Seq');
    Active := true;

    if (RecordCount > 0) then
    begin
      TempMsg := '';
      while not Eof do
      begin
        TempMsg := TempMsg + '\n\n' + FieldByName('Lean').AsString + ' [' + FieldByName('AssemblyTime').AsString + ']:\n  Plan: (' + FormatDateTime('M/d', FieldByName('PFromRYDate').AsDateTime) + ')' + FieldByName('PlanFromRY').AsString + ' -> (' + FormatDateTime('M/d', FieldByName('PToRYDate').AsDateTime) + ')' + FieldByName('PlanToRY').AsString + '\n    Act: (' + FormatDateTime('M/d', FieldByName('AFromRYDate').AsDateTime) + ')' + FieldByName('ActualFromRY').AsString + ' -> (' + FormatDateTime('M/d', FieldByName('AToRYDate').AsDateTime) + ')' + FieldByName('ActualToRY').AsString;
        Next;
      end;

      try
        JsonBody := TStringStream.Create('{"ChatID":"7738524933","ParseMode":"HTML","Text":"<blockquote>[' + FieldByName('Building').AsString + '] is preparing for an unscheduled RY change during [' + FormatDateTime('yyyy/MM/dd', FieldByName('Date').AsDateTime) + ']</blockquote>' + TempMsg + '"}');
        idHTTP2.Request.ContentType := 'application/json';
        Response := idHTTP2.Post(URL, JsonBody);
      except on E: Exception do
        ShowMessage(E.Message);
      end;
    end;
  end;
end;

procedure TScheduleUpload.ProductionLineCheck(SDate: TDate; Building: string);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#SC'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SC END;');
    ExecSQL;

    SQL.Add('SELECT SC.RY, SC.MinCycle, SC.MaxCycle, SC.Building, SC.Lean, CD.DDBH, CD.ListNo, LEFT(CD.DepID, 3) + ''_'' + RIGHT(CD.DepID, 6) AS Lean_CD INTO #SC FROM (');
    SQL.Add('  SELECT SC.RY,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.RY THEN 1 ELSE ISNULL(CAST(RIGHT(SMDD.DDBH, 3) AS INT), 1) END)) AS MaxCycle,');
    SQL.Add('  SC.Building, SC.Lean FROM (');
    SQL.Add('    SELECT DDZL.DDBH AS RY, CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles,');
    SQL.Add('    SC.building_no AS Building, UPPER(SC.lean_no) AS Lean FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    WHERE SC.building_no = ''' + Building + ''' AND SC.schedule_date >= ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND DDZL.DDBH IS NOT NULL');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY SC.RY, SC.Building, SC.Lean, SC.Cycles');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN CycleDispatch AS CD ON CD.ZLBH = SC.RY AND CD.GXLB = ''C'' AND CASE WHEN CD.DDBH = SC.RY THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');

    SQL.Add('UPDATE CycleDispatch SET CycleDispatch.DepID = SC.Lean');
    SQL.Add('FROM (');
    SQL.Add('  SELECT RY, MinCycle, MaxCycle, Building + ''_'' + Lean AS Lean, DDBH, Lean_CD FROM #SC AS SC');
    SQL.Add('  WHERE DDBH IS NOT NULL AND Building + ''_'' + Lean <> Lean_CD');
    SQL.Add(') AS SC');
    SQL.Add('WHERE CycleDispatch.ZLBH = SC.RY AND CycleDispatch.GXLB = ''C'' AND CycleDispatch.DDBH = SC.DDBH;');

    SQL.Add('UPDATE CycleDispatchList SET CycleDispatchList.Building = SC.Building, CycleDispatchList.Lean = SC.Lean');
    SQL.Add('FROM (');
    SQL.Add('  SELECT DISTINCT CDL.ListNo, SC.Building, SC.Lean, CDL.Building AS Building_CD, CDL.Lean AS Lean_CD FROM #SC AS SC');
    SQL.Add('  LEFT JOIN CycleDispatchList AS CDL ON CDL.ListNo = SC.ListNo');
    SQL.Add('  WHERE CDL.ListNo IS NOT NULL AND SC.Building + ''_'' + SC.Lean <> CDL.Building + ''_'' + CDL.Lean');
    SQL.Add(') AS SC');
    SQL.Add('WHERE CycleDispatchList.ListNo = SC.ListNo;');

    SQL.Add('UPDATE KCCLMONTH_Upper SET KCCLMONTH_Upper.Building = SC.Building, KCCLMONTH_Upper.Lean = SC.Lean');
    SQL.Add('FROM (');
    SQL.Add('  SELECT KC.ZLBH, KC.DDBH, SC.Building, REPLACE(SC.Lean, ''LEAN'', ''Lean'') AS Lean FROM (');
    SQL.Add('    SELECT Building, Lean, ZLBH, DDBH, CASE WHEN DDBH = ZLBH THEN 1 ELSE CAST(RIGHT(DDBH, 3) AS INT) END AS Cycle FROM KCCLMONTH_Upper');
    SQL.Add('    WHERE ZLBH IN (SELECT RY FROM #SC)');
    SQL.Add('  ) AS KC');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT RY, MinCycle, MaxCycle, Building, Lean FROM (');
    SQL.Add('      SELECT RY, MinCycle, MaxCycle, Building, Lean, ROW_NUMBER() OVER(PARTITION BY RY, MinCycle, MaxCycle ORDER BY Ver DESC, Building, Lean) AS Seq FROM (');
    SQL.Add('        SELECT SC.RY,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.RY THEN 1 ELSE ISNULL(CAST(RIGHT(SMDD.DDBH, 3) AS INT), 1) END)) AS MaxCycle,');
    SQL.Add('        SC.Building, SC.Lean, SC.Ver FROM (');
    SQL.Add('          SELECT DDZL.DDBH AS RY, CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles,');
    SQL.Add('          SC.building_no AS Building, UPPER(SC.lean_no) AS Lean, SC.version AS Ver FROM schedule_crawler AS SC');
    SQL.Add('          LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('          WHERE DDZL.DDBH IN (SELECT RY FROM #SC)');
    SQL.Add('        ) AS SC');
    SQL.Add('        LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A''');
    SQL.Add('        GROUP BY SC.RY, SC.Building, SC.Lean, SC.Cycles, SC.Ver');
    SQL.Add('      ) AS SC');
    SQL.Add('    ) AS SC');
    SQL.Add('    WHERE Seq = 1');
    SQL.Add('  ) AS SC ON SC.RY = KC.ZLBH AND KC.Cycle BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('  WHERE SC.Building IS NOT NULL AND KC.Building + ''_'' + KC.Lean <> SC.Building + ''_'' + SC.Lean');
    SQL.Add(') AS SC');
    SQL.Add('WHERE KCCLMONTH_Upper.ZLBH = SC.ZLBH AND KCCLMONTH_Upper.DDBH = SC.DDBH;');

    SQL.Add('UPDATE KCRK_Upper SET KCRK_Upper.Building = KCRK.Building, KCRK_Upper.Lean = KCRK.Lean');
    SQL.Add('FROM (');
    SQL.Add('  SELECT KCRK.RKNO, KCRK.RY, SC.Building, REPLACE(SC.Lean, ''LEAN'', ''Lean'') AS Lean FROM (');
    SQL.Add('    SELECT KCRK.RKNO, KCRK.Building, KCRK.Lean, KCRK.RY, KCRKS.DDBH,');
    SQL.Add('    CASE WHEN KCRKS.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(DDBH, 3) AS INT) END AS Cycle FROM KCRK_Upper AS KCRK');
    SQL.Add('    LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('    WHERE KCRK.RY IN (SELECT RY FROM #SC)');
    SQL.Add('  ) AS KCRK');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT RY, MinCycle, MaxCycle, Building, Lean FROM (');
    SQL.Add('      SELECT RY, MinCycle, MaxCycle, Building, Lean, ROW_NUMBER() OVER(PARTITION BY RY, MinCycle, MaxCycle ORDER BY Ver DESC, Building, Lean) AS Seq FROM (');
    SQL.Add('        SELECT SC.RY,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.RY THEN 1 ELSE ISNULL(CAST(RIGHT(SMDD.DDBH, 3) AS INT), 1) END)) AS MaxCycle,');
    SQL.Add('        SC.Building, SC.Lean, SC.Ver FROM (');
    SQL.Add('          SELECT DDZL.DDBH AS RY, CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles,');
    SQL.Add('          SC.building_no AS Building, UPPER(SC.lean_no) AS Lean, SC.version AS Ver FROM schedule_crawler AS SC');
    SQL.Add('          LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('          WHERE DDZL.DDBH IN (SELECT RY FROM #SC)');
    SQL.Add('        ) AS SC');
    SQL.Add('        LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A''');
    SQL.Add('        GROUP BY SC.RY, SC.Building, SC.Lean, SC.Cycles, SC.Ver');
    SQL.Add('      ) AS SC');
    SQL.Add('    ) AS SC');
    SQL.Add('    WHERE Seq = 1');
    SQL.Add('  ) AS SC ON SC.RY = KCRK.RY AND KCRK.Cycle BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('  WHERE SC.Building IS NOT NULL AND KCRK.Building + ''_'' + KCRK.Lean <> SC.Building + ''_'' + SC.Lean');
    SQL.Add(') AS KCRK');
    SQL.Add('WHERE KCRK_Upper.RKNO = KCRK.RKNO;');

    SQL.Add('UPDATE KCLL_Upper SET KCLL_Upper.Building = KCLL.Building, KCLL_Upper.Lean = KCLL.Lean');
    SQL.Add('FROM (');
    SQL.Add('  SELECT KCLL.LLNO, KCLL.RY, SC.Building, REPLACE(SC.Lean, ''LEAN'', ''Lean'') AS Lean FROM (');
    SQL.Add('    SELECT KCLL.LLNO, KCLL.Building, KCLL.Lean, KCLL.RY, KCLLS.DDBH,');
    SQL.Add('    CASE WHEN KCLLS.DDBH = KCLL.RY THEN 1 ELSE CAST(RIGHT(DDBH, 3) AS INT) END AS Cycle FROM KCLL_Upper AS KCLL');
    SQL.Add('    LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.LLNO = KCLL.LLNO');
    SQL.Add('    WHERE KCLL.RY IN (SELECT RY FROM #SC)');
    SQL.Add('  ) AS KCLL');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT RY, MinCycle, MaxCycle, Building, Lean FROM (');
    SQL.Add('      SELECT RY, MinCycle, MaxCycle, Building, Lean, ROW_NUMBER() OVER(PARTITION BY RY, MinCycle, MaxCycle ORDER BY Ver DESC, Building, Lean) AS Seq FROM (');
    SQL.Add('        SELECT SC.RY,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.RY THEN 1 ELSE ISNULL(CAST(RIGHT(SMDD.DDBH, 3) AS INT), 1) END)) AS MaxCycle,');
    SQL.Add('        SC.Building, SC.Lean, SC.Ver FROM (');
    SQL.Add('          SELECT DDZL.DDBH AS RY, CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles,');
    SQL.Add('          SC.building_no AS Building, UPPER(SC.lean_no) AS Lean, SC.version AS Ver FROM schedule_crawler AS SC');
    SQL.Add('          LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('          WHERE DDZL.DDBH IN (SELECT RY FROM #SC)');
    SQL.Add('        ) AS SC');
    SQL.Add('        LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A''');
    SQL.Add('        GROUP BY SC.RY, SC.Building, SC.Lean, SC.Cycles, SC.Ver');
    SQL.Add('      ) AS SC');
    SQL.Add('    ) AS SC');
    SQL.Add('    WHERE Seq = 1');
    SQL.Add('  ) AS SC ON SC.RY = KCLL.RY AND KCLL.Cycle BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('  WHERE SC.Building IS NOT NULL AND KCLL.Building + ''_'' + KCLL.Lean <> SC.Building + ''_'' + SC.Lean');
    SQL.Add(') AS KCLL');
    SQL.Add('WHERE KCLL_Upper.LLNO = KCLL.LLNO;');

    SQL.Add('UPDATE KCLL_Upper SET KCLL_Upper.Building = KCLL.Building, KCLL_Upper.Lean = KCLL.Lean');
    SQL.Add('FROM (');
    SQL.Add('  SELECT KCLL.LLNO, KCLL.RY, SC.Building, REPLACE(SC.Lean, ''LEAN'', ''Lean'') AS Lean FROM (');
    SQL.Add('    SELECT KCLL.LLNO, KCLL.Building, KCLL.Lean, KCLL.RY, KCLLS.DDBH,');
    SQL.Add('    CASE WHEN KCLLS.DDBH = KCLL.RY THEN 1 ELSE CAST(RIGHT(DDBH, 3) AS INT) END AS Cycle FROM KCLL_Upper AS KCLL');
    SQL.Add('    LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.LLNO = KCLL.LLNO');
    SQL.Add('    WHERE KCLL.RY IN (SELECT RY FROM #SC)');
    SQL.Add('  ) AS KCLL');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT RY, MinCycle, MaxCycle, Building, Lean FROM (');
    SQL.Add('      SELECT RY, MinCycle, MaxCycle, Building, Lean, ROW_NUMBER() OVER(PARTITION BY RY, MinCycle, MaxCycle ORDER BY Ver DESC, Building, Lean) AS Seq FROM (');
    SQL.Add('        SELECT SC.RY,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('        ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('        CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.RY THEN 1 ELSE ISNULL(CAST(RIGHT(SMDD.DDBH, 3) AS INT), 1) END)) AS MaxCycle,');
    SQL.Add('        SC.Building, SC.Lean, SC.Ver FROM (');
    SQL.Add('          SELECT DDZL.DDBH AS RY, CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles,');
    SQL.Add('          SC.building_no AS Building, UPPER(SC.lean_no) AS Lean, SC.version AS Ver FROM schedule_crawler AS SC');
    SQL.Add('          LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('          WHERE DDZL.DDBH IN (SELECT RY FROM #SC)');
    SQL.Add('        ) AS SC');
    SQL.Add('        LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A''');
    SQL.Add('        GROUP BY SC.RY, SC.Building, SC.Lean, SC.Cycles, SC.Ver');
    SQL.Add('      ) AS SC');
    SQL.Add('    ) AS SC');
    SQL.Add('    WHERE Seq = 1');
    SQL.Add('  ) AS SC ON SC.RY = KCLL.RY AND KCLL.Cycle BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('  WHERE SC.Building IS NOT NULL AND KCLL.Building + ''_'' + KCLL.Lean <> SC.Building + ''_'' + SC.Lean');
    SQL.Add(') AS KCLL');
    SQL.Add('WHERE KCLL_Upper.LLNO = KCLL.LLNO;');
    ExecSQL;
  end;
end;

procedure TScheduleUpload.FormCreate(Sender: TObject);
begin
  PC_Main.TabIndex := 0;
  PC_SQ.TabIndex := 0;

  if (main.Edit2.Text = 'TBA') or (main.Edit2.Text = 'HBA') then begin
    TBUpload.Visible := true;
    Panel9.Visible := false;
    Panel11.Visible := false;
    DBGridEh_GCD.Visible := false;
    Panel6.Visible := false;
    Panel7.Visible := false;
    DBGridEh_3D.Visible := false;
    Panel10.Visible := false;
    Panel8.Visible := false;
    DBGridEh_1D.Visible := false;
    Panel4.Visible := false;
    Panel3.Visible := false;
    DBGridEh_HC.Visible := false;
    Panel1.Visible := false;
    PC_SQ.Visible := false;
    Panel12.Visible := false;
    Chart_MCF.Visible := false;
  end;

  RY_List := TStringList.Create;
  Cycle_List := TStringList.Create;

  DTP_S1.Date := StartOfTheMonth(Date);
  DTP_S2.Date := EndOfTheMonth(Date);
  DTP_GCD.Date := Date;
  GCD_Date := Date;
  DTP_3D.Date := Date;
  P3D_Date := Date;
  DTP_1D.Date := Date;
  P1D_Date := Date;
  DTP_HC.Date := Date;
  DTP_SQ1.Date := StartOfTheMonth(Date);
  DTP_SQ2.Date := EndOfTheMonth(Date);
  DTP_MCF1.Date := StartOfTheMonth(IncMonth(Date, -1));
  DTP_MCF1.MinDate := EncodeDate(2024, 02, 01);
  DTP_MCF2.Date := Date;     
  DTP_MCF2.MinDate := EncodeDate(2024, 02, 01);

  GCD_Mode := 'Normal';
  P3D_Mode := 'Normal';
  P1D_Mode := 'Normal';
  P1D_Type := TypeList1D[CB_Type_1D.ItemIndex];

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY building_no');
    Active := true;

    CB_Building_S.Clear;
    CB_Building_GCD.Clear;
    CB_Building_3D.Clear;
    CB_Building_1D.Clear;
    CB_Building_HC.Clear;
    CB_Building_SQ.Clear;

    CB_Building_S.Items.Add('ALL');
    CB_Building_HC.Items.Add('ALL');
    CB_Building_SQ.Items.Add('ALL');
    
    while not Eof do
    begin
      CB_Building_S.Items.Add(FieldByName('building_no').AsString);
      CB_Building_GCD.Items.Add(FieldByName('building_no').AsString);
      CB_Building_3D.Items.Add(FieldByName('building_no').AsString);
      CB_Building_1D.Items.Add(FieldByName('building_no').AsString);
      CB_Building_HC.Items.Add(FieldByName('building_no').AsString);
      CB_Building_SQ.Items.Add(FieldByName('building_no').AsString);
      Next;
    end;
    
    CB_Building_S.ItemIndex := 0;
    CB_Building_GCD.ItemIndex := 0;
    CB_Building_3D.ItemIndex := 0;
    CB_Building_1D.ItemIndex := 0;
    CB_Building_HC.ItemIndex := 0; 
    CB_Building_SQ.ItemIndex := 0;

    CB_Building_S.DropDownCount := RecordCount + 1;
    CB_Building_GCD.DropDownCount := RecordCount + 1;
    CB_Building_3D.DropDownCount := RecordCount + 1;
    CB_Building_1D.DropDownCount := RecordCount + 1;
    CB_Building_HC.DropDownCount := RecordCount + 1; 
    CB_Building_SQ.DropDownCount := RecordCount + 1;
  end;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY lean_no');
    Active := true;

    CB_Lean_S.Clear;
    CB_Lean_HC.Clear;
    CB_Lean_SQ.Clear;

    CB_Lean_S.Items.Add('ALL');
    CB_Lean_HC.Items.Add('ALL');
    CB_Lean_SQ.Items.Add('ALL');

    while not Eof do
    begin
      CB_Lean_S.Items.Add(FieldByName('lean_no').AsString);
      CB_Lean_HC.Items.Add(FieldByName('lean_no').AsString);
      CB_Lean_SQ.Items.Add(FieldByName('lean_no').AsString);
      Next;
    end;

    CB_Lean_S.ItemIndex := 0;
    CB_Lean_HC.ItemIndex := 0;
    CB_Lean_SQ.ItemIndex := 0;

    CB_Lean_S.DropDownCount := RecordCount + 1;
    CB_Lean_HC.DropDownCount := RecordCount + 1;
    CB_Lean_SQ.DropDownCount := RecordCount + 1;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SUBSTRING(lean_no, 1, 6) AS lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(Date)) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND building_no = ''' + CB_Building_3D.Text + '''');
    SQL.Add('ORDER BY lean_no');
    Active := true;

    CB_Lean_GCD.Clear;
    CB_Lean_3D.Clear;
    CB_Lean_1D.Clear;

    while not Eof do
    begin
      CB_Lean_GCD.Items.Add(FieldByName('lean_no').AsString);
      CB_Lean_3D.Items.Add(FieldByName('lean_no').AsString);
      CB_Lean_1D.Items.Add(FieldByName('lean_no').AsString);
      Next;
    end;
                       
    CB_Lean_GCD.ItemIndex := 0;
    CB_Lean_3D.ItemIndex := 0;
    CB_Lean_1D.ItemIndex := 0;

    CB_Lean_GCD.DropDownCount := RecordCount + 1;
    CB_Lean_3D.DropDownCount := RecordCount + 1;
    CB_Lean_1D.DropDownCount := RecordCount + 1;
  end;
end;

procedure TScheduleUpload.DTP_S1Change(Sender: TObject);
begin
  ReloadBuilding(CB_Building_S, DTP_S1, DTP_S2, 'ALL');
  ReloadLean(CB_Lean_S, CB_Building_S, DTP_S1, DTP_S2, 'ALL');
end;

procedure TScheduleUpload.DTP_S2Change(Sender: TObject);
begin
  ReloadBuilding(CB_Building_S, DTP_S1, DTP_S2, 'ALL');
  ReloadLean(CB_Lean_S, CB_Building_S, DTP_S1, DTP_S2, 'ALL');
end;

procedure TScheduleUpload.CB_Building_SChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_S, CB_Building_S, DTP_S1, DTP_S2, 'ALL');
end;

procedure TScheduleUpload.Button_QSClick(Sender: TObject);
begin
  with Query_S do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT version, building_no, CONVERT(SmallDateTime, schedule_date, 111) AS schedule_date, lean_no, ry_index, ly, ry, vt, chat_lieu, last, buy,');
    SQL.Add('bts, cutting, sku, stitching, sl, assembly, csd, country, user_id, CONVERT(SmallDateTime, user_date, 111) AS user_date, ''1'' AS YN FROM schedule_crawler');
    SQL.Add('WHERE CONVERT(SmallDateTime, schedule_date, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP_S1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_S2.Date) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    if (CB_Building_S.ItemIndex > 0) then
      SQL.Add('AND building_no = ''' + CB_Building_S.Text + '''');
    if (CB_Lean_S.ItemIndex > 0) then
      SQL.Add('AND lean_no = ''' + CB_Lean_S.Text + '''');
    SQL.Add('ORDER BY building_no, lean_no, CONVERT(SmallDateTime, schedule_date, 111), ry_index');
    Active := true;
  end;
end;

procedure TScheduleUpload.MES_Connect;
begin
  with QUpload do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Set ansi_nulls on');
    SQL.Add('Set ansi_warnings on');
    SQL.Add('if not exists (select * from master..sysservers where srvname= ''MesDB'')');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('@server = ''MesDB'', @srvproduct = '''', @provider = ''SQLOLEDB'', @datasrc = ''192.168.23.122'', @catalog = ''''');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself = ''false'', @rmtsrvname = ''MesDB'', @rmtuser = ''tyx'', @rmtpassword = ''Itkhua@!erp''');
    ExecSQL;
  end;
end;

procedure TScheduleUpload.MES_DisConnect;
begin
  with QUpload do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('if exists (select * from master..sysservers where srvname = ''MesDB'')');
    SQL.Add('begin');
    SQL.Add('  Exec sp_droplinkedsrvlogin ''MesDB'', Null ');
    SQL.Add('  Exec sp_dropserver ''MesDB'', ''droplogins''');
    SQL.Add('end');
    ExecSQL;
  end;
end;

procedure TScheduleUpload.MES_DeleteOldScheduleFile(Building: string);
begin
  if (Building <> '') then
  begin
    with QUpload do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM [MesDB].[LIY_MES].[dbo].[schedule_files] WHERE building_no = ''' + Building + '''');
      ExecSQL;
    end;
  end;
end;

procedure TScheduleUpload.MES_UploadScheduleFile(Building: string);
var
  FileStream: TFileStream;
begin
  if (Building <> '') then
  begin
    FileStream := TFileStream.Create(OpenDialog1.FileName, fmOpenRead);
    with QUpload do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('INSERT INTO [MesDB].[LIY_MES].[dbo].[schedule_files] (created_at, updated_at, building_no, file_stream)');
      SQL.ADd('VALUES (:createTime, :updateTime, :buildingNo, :fileStream)');
      ParamByName('createTime').Value := Date;
      ParamByName('updateTime').Value := Date;
      ParamByName('buildingNo').Value := Building;
      ParamByName('fileStream').LoadFromStream(FileStream, ftBlob);
      FileStream.Free;
      ExecSQL;
    end;
  end;
end;

procedure TScheduleUpload.BS8Click(Sender: TObject);
  function IsCycleFormat(Text: string): Boolean;
  var
    sText: string;
    sValue: integer;
  begin
    if (Pos('~', Text) > 0) OR ((Pos('-', Text) > 0) AND (Length(Text) >= 5) AND (TryStrToInt(Text, sValue) = false)) then
    begin
      sText := StringReplace(StringReplace(StringReplace(Text, '-', '', [rfReplaceAll]), '~', '', [rfReplaceAll]), 'T', '', [rfReplaceAll]);
      Result := TryStrToInt(sText, sValue);
    end
    else begin
      Result := false;
    end;
  end;
var
  i, j, Page, Col, Row, index: integer;
  eclApp, Sheet: OleVariant;
  AllowedFileNames: array[0..10] of string;
  PlanFormat, Building, Response, SelectedFileName, RowTitle, CellText: string;
  IsValidFileName, KeepSearching: Boolean;
  Row_Date, Row_Seq, MinCol_Date, MaxCol_Date, Row_Lean: integer;
  TempDate: TDateTime;
  ScheduleBlock: array of array[0..13] of integer;
begin
  try
    AllowedFileNames[0] := 'A02.xlsx';
    AllowedFileNames[1] := 'A03.xlsx';
    AllowedFileNames[2] := 'A07.xlsx';
    AllowedFileNames[3] := 'A08.xlsx';
    AllowedFileNames[4] := 'A09.xlsx';
    AllowedFileNames[5] := 'A11.xlsx';
    AllowedFileNames[6] := 'A12.xlsx';
    AllowedFileNames[7] := 'A15.xlsx';
    AllowedFileNames[8] := 'A16.xlsx';  
    AllowedFileNames[9] := 'C02.xlsx';
    AllowedFileNames[10] := 'PM.xlsx';

    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);
      Building := StringReplace(SelectedFileName, '.xlsx', '', [rfReplaceAll, rfIgnoreCase]);

      IsValidFileName := False;
      for i := 0 to Length(AllowedFileNames) - 1 do
      begin
        if SameText(SelectedFileName, AllowedFileNames[i]) then
        begin
          IsValidFileName := True;
          Break;
        end;
      end;

      if (IsValidFileName) then
      begin
        if (MessageDlg('Are you sure to upload the schedule?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        begin
          Version := '';
          ScheduleVersion := TScheduleVersion.Create(Self);
          ScheduleVersion.ShowModal;
          if (Version = '') then
            Exit;

          MES_Connect();
          MES_DeleteOldScheduleFile(Building);
          MES_UploadScheduleFile(Building);
          MES_DisConnect();

          //停用呼叫api上傳排程功能
          {try
            try
              Response := IdHTTP1.Get('http://192.168.23.122:8080/api/v1/mes/sync_schedule?buildingNo=' + Building + '&userId=' + main.Edit1.Text);
              ShowMessage('上傳成功，排程表大約三分鐘後即可查詢。' + #13#10 + Response);
            except
              ShowMessage('系統正在同步排程，請稍後再上傳。');
            end;
          finally
            // do something
          end;}

          with Query_S do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT version, building_no, CONVERT(SmallDateTime, schedule_date, 111) AS schedule_date, lean_no, ry_index, ly, ry, vt, chat_lieu, last, buy,');
            SQL.Add('bts, cutting, sku, stitching, sl, assembly, csd, country, user_id, CONVERT(SmallDateTime, user_date, 111) AS user_date, ''1'' AS YN FROM schedule_crawler');
            SQL.Add('WHERE 1 = 0');
            Active := true;
          
            RequestLive := true;
            CachedUpdates := true;
          end;

          try
            eclApp := CreateOleObject('Excel.Application');
            eclApp.workbooks.Open(OpenDialog1.FileName);

            SchedulePage := TSchedulePage.Create(Self);
            SchedulePage.PageBox.Clear;
            for i := 1 to eclApp.WorkSheets.Count do
            begin
              if (eclApp.WorkSheets[i].Visible) then
                SchedulePage.PageBox.Items.Add(eclApp.WorkSheets[i].Name);
            end;
            if (SchedulePage.ShowModal = mrOK) then
            begin
              SetCursor(Screen.Cursors[crHourGlass]);
            
              for Page := 0 to Length(UploadPage) - 1 do
              begin
                Sheet := eclApp.WorkSheets[UploadPage[Page]];
                eclapp.Columns.Autofit;

                //取得排程日期範圍
                Row_Date := 0;
                MinCol_Date := 2;
                MaxCol_Date := 2;
                PlanFormat := '';
                for Row := 1 to 5 do
                begin
                  if (Sheet.Cells[Row, 1].Text = '目標') then
                  begin
                    PlanFormat := 'Vertical';
                    Row_Date := Row;
                    Break;
                  end
                  else if (Sheet.Cells[Row, 1].Text = '序號') then
                  begin
                    PlanFormat := 'Horizontal';
                    Row_Date := Row;
                    Break;
                  end;
                end;
              
                if (PlanFormat = 'Vertical') AND (Row_Date > 0) then
                begin
                  Col := MinCol_Date;
                  while (TryStrToDate(Sheet.Cells[Row_Date, Col].Value, TempDate)) do
                  begin
                    MaxCol_Date := Col;
                    Inc(Col);
                  end;

                  //尋找排程資料
                  Row := Row_Date;
                  KeepSearching := true;
                  while (KeepSearching) do
                  begin
                    //取得線別所在行數
                    Row_Lean := 0;
                    for i := Row + 1 to Row + 300 do
                    begin
                      if (Sheet.Cells[i, 1].Text = '線別') then
                      begin
                        Row_Lean := i;
                        Break;
                      end;
                    end;

                    if (Row_Lean > 0) then
                    begin
                      Row := Row_Lean + 2;
                      SetLength(ScheduleBlock, 0);
                      while (Sheet.Cells[Row, 1].Text = 'RY') do
                      begin
                        SetLength(ScheduleBlock, Length(ScheduleBlock) + 1);
                        for i := Row - 1 to Row + 12 do
                        begin
                          RowTitle := Sheet.Cells[i, 1].Text;
                          index := Pos('/', RowTitle);
                          if (index = 0) then
                            RowTitle := UpperCase(Copy(Sheet.Cells[i, 1].Text, 1, 2))
                          else
                            RowTitle := UpperCase(Copy(RowTitle, index, 3));

                          if (RowTitle = 'LY') then
                            ScheduleBlock[Length(ScheduleBlock)-1][0] := i
                          else if (RowTitle = 'RY') then
                            ScheduleBlock[Length(ScheduleBlock)-1][1] := i
                          else if (RowTitle = '/VT') then
                            ScheduleBlock[Length(ScheduleBlock)-1][2] := i
                          else if (RowTitle = 'CH') then
                            ScheduleBlock[Length(ScheduleBlock)-1][3] := i
                          else if (RowTitle = 'LA') then
                            ScheduleBlock[Length(ScheduleBlock)-1][4] := i
                          else if (RowTitle = 'BU') then
                            ScheduleBlock[Length(ScheduleBlock)-1][5] := i
                          else if (RowTitle = 'BT') then
                            ScheduleBlock[Length(ScheduleBlock)-1][6] := i
                          else if (RowTitle = '/C') then
                            ScheduleBlock[Length(ScheduleBlock)-1][7] := i
                          else if (RowTitle = 'SK') then
                            ScheduleBlock[Length(ScheduleBlock)-1][8] := i
                          else if (RowTitle = '/M') then
                            ScheduleBlock[Length(ScheduleBlock)-1][9] := i
                          else if (RowTitle = '/SL') then
                            ScheduleBlock[Length(ScheduleBlock)-1][10] := i
                          else if (RowTitle = '/G') then
                            ScheduleBlock[Length(ScheduleBlock)-1][11] := i
                          else if (RowTitle = 'CS') then
                            ScheduleBlock[Length(ScheduleBlock)-1][12] := i
                          else if (RowTitle = '/N') then
                            ScheduleBlock[Length(ScheduleBlock)-1][13] := i;
                        end;

                        Inc(Row, 12);
                        if (Sheet.Cells[Row+1, 1].Text = '') then
                          Inc(Row, 3)
                        else
                          Inc(Row, 2);
                      end;

                      for Col := MinCol_Date to MaxCol_Date do
                      begin
                        index := 1;
                        for i := 0 to Length(ScheduleBlock)-1 do
                        begin
                          CellText := Sheet.Cells[ScheduleBlock[i][1], Col].Text;
                          if ((Copy(CellText, 1, 1) = 'Y') OR (Copy(CellText, 1, 2) = 'SJ')) AND (Length(CellText) >= 10) AND (Sheet.Cells[Row_Lean, Col].Text <> '') then
                          begin
                            //LockWindowUpdate(DBGridEh_S.Handle);
                            with Query_S do
                            begin
                              Append;
                              FieldByName('Version').Value := Version;
                              FieldByName('building_no').Value := Building;
                              FieldByName('lean_no').Value := Sheet.Cells[Row_Lean, Col].Text;
                              FieldByName('schedule_date').Value := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row_Date, Col].Value);
                              FieldByName('ry_index').Value := IntToStr(index);
                              if (ScheduleBlock[i][0] > 0) then
                                FieldByName('ly').Value := Sheet.Cells[ScheduleBlock[i][0], Col].Text;
                              if (ScheduleBlock[i][1] > 0) then
                                FieldByName('ry').Value := Sheet.Cells[ScheduleBlock[i][1], Col].Text;
                              if (ScheduleBlock[i][2] > 0) then
                                FieldByName('vt').Value := Sheet.Cells[ScheduleBlock[i][2], Col].Text;
                              if (ScheduleBlock[i][3] > 0) then
                                FieldByName('chat_lieu').Value := Sheet.Cells[ScheduleBlock[i][3], Col].Text;
                              if (ScheduleBlock[i][4] > 0) then
                                FieldByName('last').Value := Sheet.Cells[ScheduleBlock[i][4], Col].Text;
                              if (ScheduleBlock[i][5] > 0) then
                                FieldByName('buy').Value := Sheet.Cells[ScheduleBlock[i][5], Col].Text;
                              if (ScheduleBlock[i][6] > 0) then
                                FieldByName('bts').Value := Sheet.Cells[ScheduleBlock[i][6], Col].Text;
                              if (ScheduleBlock[i][7] > 0) then
                                FieldByName('cutting').Value := Sheet.Cells[ScheduleBlock[i][7], Col].Text;
                              if (ScheduleBlock[i][8] > 0) then
                                FieldByName('sku').Value := Sheet.Cells[ScheduleBlock[i][8], Col].Text;
                              if (ScheduleBlock[i][9] > 0) then
                                FieldByName('stitching').Value := Sheet.Cells[ScheduleBlock[i][9], Col].Text;
                              if (ScheduleBlock[i][10] > 0) then
                                FieldByName('sl').Value := Sheet.Cells[ScheduleBlock[i][10], Col].Text;
                              if (ScheduleBlock[i][11] > 0) then
                                FieldByName('assembly').Value := Sheet.Cells[ScheduleBlock[i][11], Col].Text;
                              if (ScheduleBlock[i][12] > 0) then
                                FieldByName('csd').Value := FormatDateTime('yyyy/MM/dd', Sheet.Cells[ScheduleBlock[i][12], Col].Value);
                              if (ScheduleBlock[i][13] > 0) then
                                FieldByName('country').Value := Sheet.Cells[ScheduleBlock[i][13], Col].Text;
                              FieldByName('YN').Value := '1';

                              if (IsCycleFormat(FieldByName('stitching').AsString) = false) then
                              begin
                                FieldByName('stitching').Value := '';
                                for j := ScheduleBlock[i][0] to ScheduleBlock[i][13] do
                                begin
                                  if (IsCycleFormat(Sheet.Cells[j, Col].Text)) then
                                  begin
                                    FieldByName('stitching').Value := Sheet.Cells[j, Col].Text;
                                    Break;
                                  end;
                                end;
                              end;

                              QTemp.Active := false;
                              QTemp.SQL.Clear;
                              QTemp.SQL.Add('DECLARE @RY VARCHAR(20) = ''' + FieldByName('ry').AsString + ''';');
                              QTemp.SQL.Add('SELECT Target.RY, DDBH.ExistInDDBH, SC.ExistInOtherLean FROM (');
                              QTemp.SQL.Add('  SELECT @RY AS RY');
                              QTemp.SQL.Add(') AS Target');
                              QTemp.SQL.Add('LEFT JOIN (');
                              QTemp.SQL.Add('  SELECT COUNT(DDBH) AS ExistInDDBH FROM DDZL');
                              QTemp.SQL.Add('  WHERE DDBH = CASE WHEN LEN(@RY) - LEN(REPLACE(@RY, ''-'', '''')) < 2 THEN @RY ELSE SUBSTRING(@RY, 1, LEN(@RY) - CHARINDEX(''-'', REVERSE(@RY))) END');
                              QTemp.SQL.Add(') AS DDBH ON 1 = 1');
                              QTemp.SQL.Add('LEFT JOIN (');
                              QTemp.SQL.Add('  SELECT COUNT(ry) AS ExistInOtherLean FROM schedule_crawler');
                              QTemp.SQL.Add('  WHERE ry = @RY AND building_no + lean_no NOT LIKE ''' + FieldByName('building_no').AsString + FieldByName('lean_no').AsString + '%''');
                              QTemp.SQL.Add(') AS SC ON 1 = 1');
                              QTemp.Active := true;
                              if (QTemp.FieldByName('ExistInDDBH').AsInteger = 0) then
                              begin
                                FieldByName('YN').Value := '0';
                                Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + FieldByName('building_no').AsString + #13#10 + '　Lean: ' + FieldByName('lean_no').AsString + #13#10 + '　Date: ' + FormatDateTime('yyyy/MM/dd', FieldByName('schedule_date').AsDateTime) + #13#10 + '　RY: ' + FieldByName('ry').AsString), 'WARNING', MB_OK + MB_ICONWARNING);
                              end;
                              {else if (QTemp.FieldByName('ExistInOtherLean').AsInteger > 0) then
                              begin
                                FieldByName('YN').Value := '0';
                                Application.MessageBox(PChar('The following RY already exist in other lean:' + #13#10#13#10 + '　Building: ' + FieldByName('building_no').AsString + #13#10 + '　Lean: ' + FieldByName('lean_no').AsString + #13#10 + '　Date: ' + FormatDateTime('yyyy/MM/dd', FieldByName('schedule_date').AsDateTime) + #13#10 + '　RY: ' + FieldByName('ry').AsString), 'WARNING', MB_OK + MB_ICONWARNING);
                              end;}
                            end;
                            //LockWindowUpdate(0);
                            Inc(index);
                          end;
                        end;
                      end;
                    end
                    else begin
                      KeepSearching := false;
                    end;
                  end;
                end
                else if (PlanFormat = 'Horizontal') then
                begin
                  Row := Row_Date;
                  SetLength(ScheduleBlock, 1);
                  for i := 1 to 50 do
                  begin
                    RowTitle := Sheet.Cells[Row, i].Text;
                    if (RowTitle = '線別') then
                      Row_Lean := i;
                    index := Pos('(', RowTitle);
                    if (index = 0) then
                      RowTitle := UpperCase(Copy(Sheet.Cells[Row, i].Text, 1, 2))
                    else
                      RowTitle := UpperCase(Copy(RowTitle, index, 3));
                      

                    if (RowTitle = 'DA') then
                      Row_Date := i
                    else if (RowTitle = 'SE') then
                      Row_Seq := i
                    else if (RowTitle = 'LY') then
                      ScheduleBlock[0][0] := i
                    else if (RowTitle = 'RY') then
                      ScheduleBlock[0][1] := i
                    else if (RowTitle = '(VT') then
                      ScheduleBlock[0][2] := i
                    else if (RowTitle = 'CH') then
                      ScheduleBlock[0][3] := i
                    else if (RowTitle = 'LA') then
                      ScheduleBlock[0][4] := i
                    else if (RowTitle = 'BU') then
                      ScheduleBlock[0][5] := i
                    else if (RowTitle = 'BT') then
                      ScheduleBlock[0][6] := i
                    else if (RowTitle = '(C)') then
                      ScheduleBlock[0][7] := i
                    else if (RowTitle = 'SK') then
                      ScheduleBlock[0][8] := i
                    else if (RowTitle = '(S)') then
                      ScheduleBlock[0][9] := i
                    else if (RowTitle = '(SL') then
                      ScheduleBlock[0][10] := i
                    else if (RowTitle = '(A)') then
                      ScheduleBlock[0][11] := i
                    else if (RowTitle = 'CS') then
                      ScheduleBlock[0][12] := i
                    else if (RowTitle = '(N)') then
                      ScheduleBlock[0][13] := i;
                  end;

                  Row := Row + 1;
                  index := 0;
                  KeepSearching := true;
                  while (KeepSearching) do
                  begin
                    if (Sheet.Cells[Row, ScheduleBlock[0][1]].Text <> '') then
                    begin
                      with Query_S do
                      begin
                        Append;
                        FieldByName('Version').Value := Version;
                        FieldByName('building_no').Value := Building;
                        FieldByName('lean_no').Value := Sheet.Cells[Row, Row_Lean].Text;
                        FieldByName('schedule_date').Value := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, Row_Date].Value);
                        FieldByName('ry_index').Value := Sheet.Cells[Row, Row_Seq].Value;
                        if (ScheduleBlock[0][0] > 0) then
                          FieldByName('ly').Value := Sheet.Cells[Row, ScheduleBlock[0][0]].Text;
                        if (ScheduleBlock[0][1] > 0) then
                          FieldByName('ry').Value := Sheet.Cells[Row, ScheduleBlock[0][1]].Text;
                        if (ScheduleBlock[0][2] > 0) then
                          FieldByName('vt').Value := Sheet.Cells[Row, ScheduleBlock[0][2]].Text;
                        if (ScheduleBlock[0][3] > 0) then
                          FieldByName('chat_lieu').Value := Sheet.Cells[Row, ScheduleBlock[0][3]].Text;
                        if (ScheduleBlock[0][4] > 0) then
                          FieldByName('last').Value := Sheet.Cells[Row, ScheduleBlock[0][4]].Text;
                        if (ScheduleBlock[0][5] > 0) then
                          FieldByName('buy').Value := Sheet.Cells[Row, ScheduleBlock[0][5]].Text;
                        if (ScheduleBlock[0][6] > 0) then
                          FieldByName('bts').Value := Sheet.Cells[Row, ScheduleBlock[0][6]].Text;
                        if (ScheduleBlock[0][7] > 0) then
                          FieldByName('cutting').Value := Sheet.Cells[Row, ScheduleBlock[0][7]].Text;
                        if (ScheduleBlock[0][8] > 0) then
                          FieldByName('sku').Value := Sheet.Cells[Row, ScheduleBlock[0][8]].Text;
                        if (ScheduleBlock[0][9] > 0) then
                          FieldByName('stitching').Value := Sheet.Cells[Row, ScheduleBlock[0][9]].Text;
                        if (ScheduleBlock[0][10] > 0) then
                          FieldByName('sl').Value := Sheet.Cells[Row, ScheduleBlock[0][10]].Text;
                        if (ScheduleBlock[0][11] > 0) then
                          FieldByName('assembly').Value := Sheet.Cells[Row, ScheduleBlock[0][11]].Text;
                        if (ScheduleBlock[0][12] > 0) then
                          FieldByName('csd').Value := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, ScheduleBlock[0][12]].Value);
                        if (ScheduleBlock[0][13] > 0) then
                          FieldByName('country').Value := Sheet.Cells[Row, ScheduleBlock[0][13]].Text;
                        FieldByName('YN').Value := '1';

                        QTemp.Active := false;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add('DECLARE @RY VARCHAR(20) = ''' + FieldByName('ry').AsString + ''';');
                        QTemp.SQL.Add('SELECT Target.RY, DDBH.ExistInDDBH, SC.ExistInOtherLean FROM (');
                        QTemp.SQL.Add('  SELECT @RY AS RY');
                        QTemp.SQL.Add(') AS Target');
                        QTemp.SQL.Add('LEFT JOIN (');
                        QTemp.SQL.Add('  SELECT COUNT(DDBH) AS ExistInDDBH FROM DDZL');
                        QTemp.SQL.Add('  WHERE DDBH = CASE WHEN LEN(@RY) - LEN(REPLACE(@RY, ''-'', '''')) < 2 THEN @RY ELSE SUBSTRING(@RY, 1, LEN(@RY) - CHARINDEX(''-'', REVERSE(@RY))) END');
                        QTemp.SQL.Add(') AS DDBH ON 1 = 1');
                        QTemp.SQL.Add('LEFT JOIN (');
                        QTemp.SQL.Add('  SELECT COUNT(ry) AS ExistInOtherLean FROM schedule_crawler');
                        QTemp.SQL.Add('  WHERE ry = @RY AND building_no + lean_no NOT LIKE ''' + FieldByName('building_no').AsString + FieldByName('lean_no').AsString + '%''');
                        QTemp.SQL.Add(') AS SC ON 1 = 1');
                        QTemp.Active := true;
                        if (QTemp.FieldByName('ExistInDDBH').AsInteger = 0) then
                        begin
                          FieldByName('YN').Value := '0';
                          Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + FieldByName('building_no').AsString + #13#10 + '　Lean: ' + FieldByName('lean_no').AsString + #13#10 + '　Date: ' + FormatDateTime('yyyy/MM/dd', FieldByName('schedule_date').AsDateTime) + #13#10 + '　RY: ' + FieldByName('ry').AsString), 'WARNING', MB_OK + MB_ICONWARNING);
                        end;
                      end;
                      index := 0;
                    end
                    else begin
                      Inc(index);
                      if (index >= 10) then
                        KeepSearching := false;
                    end;
                    
                    Inc(Row);
                  end;
                end
                else begin
                  ShowMessage('Imported excel format error');
                end;
              end;

              eclApp.DisplayAlerts := false;
              eclApp.WorkBooks.Close;
              eclApp.Quit;
              Self.Cursor := crDefault;
              BS5.Enabled := true;
              BS6.Enabled := true;
              Query_S.First;
              ShowMessage('Completed');
            end
            else begin
              eclApp.DisplayAlerts := false;
              eclApp.WorkBooks.Close;
              eclApp.Quit;
            end;
          except on F:Exception do
            begin
              eclApp.DisplayAlerts := false;
              eclApp.WorkBooks.Close;
              eclApp.Quit;
              Application.MessageBox(PChar(F.Message), 'Excution Failed', MB_OK + MB_ICONERROR);
              Exit;
            end;
          end;
        end;
      end
      else begin
        ShowMessage('Only file names of [A02, A03, A07, A08, A09, A11, A12, A15, A16, C02, PM] are allowed to be uploaded');
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;
end;

procedure TScheduleUpload.DTP_SQ1Change(Sender: TObject);
begin
  ReloadBuilding(CB_Building_SQ, DTP_SQ1, DTP_SQ2, 'ALL');
  ReloadLean(CB_Lean_SQ, CB_Building_SQ, DTP_SQ1, DTP_SQ2, 'ALL');
end;

procedure TScheduleUpload.DTP_SQ2Change(Sender: TObject);
begin
  ReloadBuilding(CB_Building_SQ, DTP_SQ1, DTP_SQ2, 'ALL');
  ReloadLean(CB_Lean_SQ, CB_Building_SQ, DTP_SQ1, DTP_SQ2, 'ALL');
end;

procedure TScheduleUpload.CB_Building_SQChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_SQ, CB_Building_SQ, DTP_SQ1, DTP_SQ2, 'ALL');
end;

procedure TScheduleUpload.Button_QSQClick(Sender: TObject);
var
  i, j, C_Labor, S_Labor, A_Labor: integer;
  SearchDate: TDate;
  Lean: string;
  LeanLabor: array of array of array[0..2] of integer;
begin
  with Query_SQ do
  begin
    Active := false;
    SQL.Clear;
    DBGridEh_SQ.DataSource := Nil;
    SQL.Add('IF OBJECT_ID(''tempdb..#Schedule'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Schedule END;');

    SQL.Add('SELECT Seq, building_no, lean_no, schedule_date, ry_index, DDBH, ARTICLE, Pairs, C_DL, C_IDL, S_DL, S_IDL, A_DL, A_IDL INTO #Schedule FROM (');
    SQL.Add('  SELECT ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date, SC.ry_index) AS Seq,');
    SQL.Add('  SC.building_no, SC.lean_no, SC.schedule_date, SC.ry_index, DDZL.DDBH, DDZL.ARTICLE, DDZL.Pairs,');
    SQL.Add('  ISNULL(MAX(CASE WHEN GXLB = ''C'' THEN SCXXCL.BZRS END), 0) AS C_DL, ISNULL(MAX(CASE WHEN GXLB = ''C'' THEN SCXXCL.BZJS END), 0) AS C_IDL,');
    SQL.Add('  ISNULL(MAX(CASE WHEN GXLB = ''S'' THEN SCXXCL.BZRS END), 0) AS S_DL, ISNULL(MAX(CASE WHEN GXLB = ''S'' THEN SCXXCL.BZJS END), 0) AS S_IDL,');
    SQL.Add('  ISNULL(MAX(CASE WHEN GXLB = ''A'' THEN SCXXCL.BZRS END), 0) AS A_DL, ISNULL(MAX(CASE WHEN GXLB = ''A'' THEN SCXXCL.BZJS END), 0) AS A_IDL FROM schedule_crawler AS SC');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('  LEFT JOIN SCXXCL ON SCXXCL.XieXing = DDZL.XieXing AND SCXXCL.SheHao = DDZL.SheHao AND SCXXCL.BZLB = ''3''');
    SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP_SQ1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_SQ2.Date) + '''');
    SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + '''');
    if (CB_Building_SQ.ItemIndex > 0) then
      SQL.Add('  AND SC.building_no = ''' + CB_Building_SQ.Text + '''');
    if (CB_Lean_SQ.ItemIndex > 0) then
      SQL.Add('  AND SC.lean_no = ''' + CB_Lean_SQ.Text + '''');
    SQL.Add('  GROUP BY SC.building_no, SC.lean_no, SC.schedule_date, SC.ry_index, DDZL.DDBH, DDZL.ARTICLE, DDZL.Pairs');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT 0 AS Seq, Schedule.building_no, Schedule.lean_no, Schedule.Date, Schedule.ry_index, DDZL.DDBH, DDZL.ARTICLE, DDZL.Pairs,');
    SQL.Add('  ISNULL(MAX(CASE WHEN GXLB = ''C'' THEN SCXXCL.BZRS END), 0) AS C_DL, ISNULL(MAX(CASE WHEN GXLB = ''C'' THEN SCXXCL.BZJS END), 0) AS C_IDL,');
    SQL.Add('  ISNULL(MAX(CASE WHEN GXLB = ''S'' THEN SCXXCL.BZRS END), 0) AS S_DL, ISNULL(MAX(CASE WHEN GXLB = ''S'' THEN SCXXCL.BZJS END), 0) AS S_IDL,');
    SQL.Add('  ISNULL(MAX(CASE WHEN GXLB = ''A'' THEN SCXXCL.BZRS END), 0) AS A_DL, ISNULL(MAX(CASE WHEN GXLB = ''A'' THEN SCXXCL.BZJS END), 0) AS A_IDL FROM (');
    SQL.Add('    SELECT Schedule.building_no, Schedule.lean_no, Schedule.Date, MAX(SC.ry_index) AS ry_index FROM (');
    SQL.Add('      SELECT Schedule.building_no, Schedule.lean_no, MAX(SC.schedule_date) AS Date FROM (');
    SQL.Add('        SELECT DISTINCT building_no, lean_no FROM schedule_crawler');
    SQL.Add('        WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP_SQ1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_SQ2.Date) + '''');
    SQL.Add('        AND GSBH = ''' + main.Edit2.Text + '''');
    if (CB_Building_SQ.ItemIndex > 0) then
      SQL.Add('        AND building_no = ''' + CB_Building_SQ.Text + '''');
    if (CB_Lean_SQ.ItemIndex > 0) then
      SQL.Add('        AND lean_no = ''' + CB_Lean_SQ.Text + '''');
    SQL.Add('      ) AS Schedule');
    SQL.Add('      LEFT JOIN schedule_crawler AS SC ON SC.building_no = Schedule.building_no AND SC.lean_no = Schedule.lean_no AND SC.schedule_date < ''' + FormatDateTime('yyyy/MM/dd', DTP_SQ1.Date) + '''');
    SQL.Add('      GROUP BY Schedule.building_no, Schedule.lean_no');
    SQL.Add('    ) AS Schedule');
    SQL.Add('    LEFT JOIN schedule_crawler AS SC ON SC.building_no = Schedule.building_no AND SC.lean_no = Schedule.lean_no AND SC.schedule_date = Schedule.Date');
    SQL.Add('    GROUP BY Schedule.building_no, Schedule.lean_no, Schedule.Date');
    SQL.Add('  ) AS Schedule');
    SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = Schedule.building_no AND SC.lean_no = Schedule.lean_no AND SC.schedule_date = Schedule.Date AND SC.ry_index = Schedule.ry_index');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('  LEFT JOIN SCXXCL ON SCXXCL.XieXing = DDZL.XieXing AND SCXXCL.SheHao = DDZL.SheHao AND SCXXCL.BZLB = ''3''');
    SQL.Add('  GROUP BY Schedule.building_no, Schedule.lean_no, Schedule.Date, Schedule.ry_index, DDZL.DDBH, DDZL.ARTICLE, DDZL.Pairs');
    SQL.Add(') AS Schedule');

    if (RG_SQ.ItemIndex = 0) then
      SQL.Add('SELECT S1.building_no, S1.lean_no, S1.schedule_date, S1.ry_index, S1.DDBH, S1.ARTICLE, S1.Pairs, S1.C_DL + S1.C_IDL AS C_Labor, S1.S_DL + S1.S_IDL AS S_Labor, S1.A_DL + S1.A_IDL AS A_Labor FROM #Schedule AS S1')
    else
      SQL.Add('SELECT S1.building_no, S1.lean_no, S1.schedule_date, S1.ry_index, S1.DDBH, S1.ARTICLE, S1.Pairs, S1.C_DL AS C_Labor, S1.S_DL AS S_Labor, S1.A_DL AS A_Labor FROM #Schedule AS S1');
    SQL.Add('LEFT JOIN #Schedule AS S2 ON S2.building_no = S1.building_no AND S2.lean_no = S1.lean_no AND S2.Seq = S1.Seq - 1');
    SQL.Add('WHERE S1.C_DL <> S2.C_DL OR S1.C_IDL <> S2.C_IDL OR S1.S_DL <> S2.S_DL OR S1.S_IDL <> S2.S_IDL OR S1.A_DL <> S2.A_DL OR S1.A_IDL <> S2.A_IDL OR S2.schedule_date IS NULL');
    SQL.Add('ORDER BY S1.building_no, S1.lean_no, S1.schedule_date, S1.ry_index');
    Active := true;

    C_Labor := 0;
    S_Labor := 0;
    A_Labor := 0;
    i := -1;
    Lean := '';
    SetLength(LeanLabor, 0);
    SearchDate := EncodeDate(1900, 01, 01);
    while not Eof do
    begin
      if (FieldByName('building_no').AsString + FieldByName('lean_no').AsString <> Lean) then
      begin
        if (SearchDate > EncodeDate(1900, 01, 01)) AND (SearchDate < DTP_SQ2.Date) then
        begin
          for j := DaysBetween(DTP_SQ1.Date, SearchDate) to DaysBetween(DTP_SQ1.Date, DTP_SQ2.Date) do
          begin
            LeanLabor[i][j][0] := C_Labor;
            LeanLabor[i][j][1] := S_Labor;
            LeanLabor[i][j][2] := A_Labor;
          end;
        end;
        
        Inc(i);
        SetLength(LeanLabor, Length(LeanLabor) + 1);
        SetLength(LeanLabor[i], DaysBetween(DTP_SQ1.Date, DTP_SQ2.Date) + 1);
        Lean := FieldByName('building_no').AsString + FieldByName('lean_no').AsString;
        C_Labor := FieldByName('C_Labor').AsInteger;
        S_Labor := FieldByName('S_Labor').AsInteger;
        A_Labor := FieldByName('A_Labor').AsInteger;
        SearchDate := DTP_SQ1.Date;
      end;

      if (FieldByName('schedule_date').AsDateTime >= SearchDate) then
      begin
        for j := DaysBetween(DTP_SQ1.Date, SearchDate) to DaysBetween(DTP_SQ1.Date, FieldByName('schedule_date').AsDateTime) do
        begin
          LeanLabor[i][j][0] := C_Labor;
          LeanLabor[i][j][1] := S_Labor;
          LeanLabor[i][j][2] := A_Labor;
        end;

        C_Labor := FieldByName('C_Labor').AsInteger; 
        S_Labor := FieldByName('S_Labor').AsInteger;
        A_Labor := FieldByName('A_Labor').AsInteger;
        SearchDate := FieldByName('schedule_date').AsDateTime;
      end;

      Next;
    end;

    if (SearchDate > EncodeDate(1900, 01, 01)) AND (SearchDate < DTP_SQ2.Date) then
    begin
      for j := DaysBetween(DTP_SQ1.Date, SearchDate) to DaysBetween(DTP_SQ1.Date, DTP_SQ2.Date) do
      begin
        LeanLabor[i][j][0] := C_Labor;
        LeanLabor[i][j][1] := S_Labor;
        LeanLabor[i][j][2] := A_Labor;
      end;
    end;

    Series1.Clear;
    Series2.Clear;
    Series3.Clear;
    
    for i := 0 to DaysBetween(DTP_SQ1.Date, DTP_SQ2.Date) do
    begin
      C_Labor := 0;
      S_Labor := 0;
      A_Labor := 0;

      for j := 0 to Length(LeanLabor)-1 do
      begin
        Inc(C_Labor, LeanLabor[j][i][0]);
        Inc(S_Labor, LeanLabor[j][i][1]);
        Inc(A_Labor, LeanLabor[j][i][2]);
      end;

      Series1.AddXY(i, C_Labor, FormatDateTime('M/d', DTP_SQ1.Date + i), clGreen);
      Series2.AddXY(i, S_Labor, FormatDateTime('M/d', DTP_SQ1.Date + i), $00D59B5B);
      Series3.AddXY(i, A_Labor, FormatDateTime('M/d', DTP_SQ1.Date + i), $00317DED);
    end;

    Active := false;
    SQL.Clear;
    if (RG_SQ.ItemIndex = 0) then
      SQL.Add('SELECT building_no, lean_no, schedule_date, ry_index, DDBH, ARTICLE, Pairs, C_DL + C_IDL AS C_Labor, S_DL + S_IDL AS S_Labor, A_DL + A_IDL AS A_Labor FROM #Schedule')
    else
      SQL.Add('SELECT building_no, lean_no, schedule_date, ry_index, DDBH, ARTICLE, Pairs, C_DL AS C_Labor, S_DL AS S_Labor, A_DL AS A_Labor FROM #Schedule');
    SQL.Add('ORDER BY building_no, lean_no, schedule_date, ry_index');
    Active := true;
    DBGridEh_SQ.DataSource := DS_SQ;
  end;
end;

procedure TScheduleUpload.DTP_HCChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_HC, DTP_HC, DTP_HC, 'ALL');
  ReloadLean(CB_Lean_HC, CB_Building_HC, DTP_HC, DTP_HC, 'ALL');
end;

procedure TScheduleUpload.CB_Building_HCChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_HC, CB_Building_HC, DTP_HC, DTP_HC, 'ALL');
end;

procedure TScheduleUpload.Button_QHCClick(Sender: TObject);
begin
  with Query_HC do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT SC.building_no, SC.lean_no, SC.XieXing, SC.SheHao, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH, SC.ARTICLE, SC.Pairs,');
    SQL.Add('MAX(CASE WHEN SCXXCL.GXLB = ''C'' THEN SCXXCL.BZRS END) AS DL_C, MAX(CASE WHEN SCXXCL.GXLB = ''S'' THEN SCXXCL.BZRS END) AS DL_S,');
    SQL.Add('MAX(CASE WHEN SCXXCL.GXLB = ''A'' THEN SCXXCL.BZRS END) AS DL_A, MAX(CASE WHEN SCXXCL.GXLB = ''P'' THEN SCXXCL.BZRS END) AS DL_P,');
    SQL.Add('SUM(SCXXCL.BZJS) AS IDL, SCXXCL.BZCL, SCXXCL.BZCL AS Standard, ISNULL(CAST(MS_His.Capacity_His AS VARCHAR), ''NEW'') AS Capacity_His, MS.Capacity,');
    SQL.Add('ISNULL(MS.Capacity, MS_His.Capacity_His) * 100 / SCXXCL.BZCL AS Rate, ''' + FormatDateTime('yyyy/MM', DTP_HC.Date) + ''' AS Month, MS.Month AS CapacityMonth,');
    SQL.Add('ISNULL(MS.UserID, MS_His.UserID) AS UserID, ISNULL(MS.UserDate, MS_His.UserDate) AS UserDate FROM (');
    SQL.Add('  SELECT SC.building_no, SC.lean_no, DDZL.XieXing, DDZL.SheHao, DDZL.ARTICLE, SUM(CASE WHEN ISNUMERIC(SC.sl) = 1 THEN CAST(SC.sl AS INT) ELSE 0 END) AS Pairs, MIN(SC.schedule_date) AS Date FROM schedule_crawler AS SC');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_HC.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_HC.Date)) + '''');
    SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + '''');
    if (CB_Building_HC.ItemIndex > 0) then
      SQL.Add('  AND SC.building_no = ''' + CB_Building_HC.Text + '''');
    if (CB_Lean_HC.ItemIndex > 0) then
      SQL.Add('  AND SC.lean_no = ''' + CB_Lean_HC.Text + '''');
    SQL.Add('  GROUP BY SC.building_no, SC.lean_no, DDZL.XieXing, DDZL.SheHao, DDZL.ARTICLE');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = SC.XieXing AND XXZL.SheHao = SC.SheHao');
    SQL.Add('LEFT JOIN SCXXCL ON SCXXCL.XieXing = SC.XieXing AND SCXXCL.SheHao = SC.SheHao AND SCXXCL.BZLB = ''3''');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT MS1.Month AS CapacityMonth, MS1.Building, MS1.Lean, MS1.XieXing, MS1.SheHao, MS2.Capacity AS Capacity_His, MS2.UserID, MS2.UserDate FROM (');
    SQL.Add('    SELECT Building, Lean, XieXing, SheHao, MAX(Month) AS Month FROM ModelStandard');
    SQL.Add('    WHERE Month < ''' + FormatDateTime('yyyy/MM', DTP_HC.Date) + '''');
    SQL.Add('    GROUP BY Building, Lean, XieXing, SheHao');
    SQL.Add('  ) AS MS1');
    SQL.Add('  LEFT JOIN ModelStandard AS MS2 ON MS2.Month = MS1.Month AND MS2.Building = MS1.Building AND MS2.Lean = MS1.Lean AND MS2.XieXing = MS1.XieXing AND MS2.SheHao = MS1.SheHao');
    SQL.Add(') AS MS_His ON MS_His.XieXing = SC.XieXing AND MS_His.SheHao = SC.SheHao AND MS_His.Building = SC.building_no AND MS_His.Lean = SC.lean_no');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT Month, Building, Lean, XieXing, SheHao, Capacity, UserID, UserDate FROM ModelStandard');
    SQL.Add('  WHERE Month = ''' + FormatDateTime('yyyy/MM', DTP_HC.Date) + '''');
    SQL.Add(') AS MS ON MS.XieXing = SC.XieXing AND MS.SheHao = SC.SheHao AND MS.Building = SC.building_no AND MS.Lean = SC.lean_no');
    SQL.Add('WHERE 1 = 1');
    if (CB_HC1.Checked) then
      SQL.Add('AND ISNULL(CAST(MS_His.Capacity_His AS VARCHAR), ''NEW'') = ''NEW''')
    else if (CB_HC2.Checked) then
      SQL.Add('AND MS_His.Capacity_His IS NULL AND MS.Capacity IS NULL')
    else if (CB_HC3.Checked) then
      SQL.Add('AND SCXXCL.XieXing IS NULL');
    SQL.Add('GROUP BY SC.building_no, SC.lean_no, SC.XieXing, SC.SheHao, XXZL.DAOMH, SC.ARTICLE, SC.Pairs, SCXXCL.BZCL,');
    SQL.Add('MS_His.Capacity_His, MS_His.UserID, MS_His.UserDate, MS.Month, MS.Capacity, MS.UserID, MS.UserDate, SC.Date');
    SQL.Add('ORDER BY SC.building_no, SC.lean_no, SC.Date, XXZL.DAOMH, SC.XieXing, SC.SheHao');
    Active := true;
  end;

  BHC5.Enabled := false;
  BHC6.Enabled := false;
end;

procedure TScheduleUpload.Query_HCAfterOpen(DataSet: TDataSet);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SUBSTRING(CONVERT(VARCHAR, GETDATE(), 111), 1, 7) AS Month');
    Active := true;
  end;

  BHC4.Enabled := true
end;

procedure TScheduleUpload.BHC4Click(Sender: TObject);
begin
  with Query_HC do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BHC5.Enabled := true;
  BHC6.Enabled := true;
end;

procedure TScheduleUpload.BHC5Click(Sender: TObject);
var
  i: integer;
begin
  try
    Query_HC.First;
    for i := 1 to Query_HC.RecordCount do
    begin
      case Query_HC.UpdateStatus of
        usModified:
        begin
          if (Query_HC.FieldByName('Capacity').AsInteger = 0) then
          begin
            QUpdate.SQL.Clear;
            QUpdate.SQL.Add('DELETE FROM ModelStandard');
            QUpdate.SQL.Add('WHERE Month = ''' + Query_HC.FieldByName('Month').AsString + '''');
            QUpdate.SQL.Add('AND Building = ''' + Query_HC.FieldByName('building_no').AsString + ''''); 
            QUpdate.SQL.Add('AND Lean = ''' + Query_HC.FieldByName('lean_no').AsString + '''');
            QUpdate.SQL.Add('AND XieXing = ''' + Query_HC.FieldByName('XieXing').AsString + '''');
            QUpdate.SQL.Add('AND SheHao = ''' + Query_HC.FieldByName('SheHao').AsString + '''');
            QUpdate.ExecSQL;
          end
          else begin
            QUpdate.SQL.Clear;
            if (Query_HC.FieldByName('CapacityMonth').IsNull) then
            begin
              QUpdate.SQL.Add('INSERT INTO ModelStandard (Month, Building, Lean, XieXing, SheHao, Capacity, UserID, UserDate, YN)');
              QUpdate.SQL.Add('VALUES (');
              QUpdate.SQL.Add('  ''' + Query_HC.FieldByName('Month').AsString + ''',');
              QUpdate.SQL.Add('  ''' + Query_HC.FieldByName('building_no').AsString + ''','); 
              QUpdate.SQL.Add('  ''' + Query_HC.FieldByName('lean_no').AsString + ''',');
              QUpdate.SQL.Add('  ''' + Query_HC.FieldByName('XieXing').AsString + ''',');
              QUpdate.SQL.Add('  ''' + Query_HC.FieldByName('SheHao').AsString + ''',');
              QUpdate.SQL.Add('  ' + Query_HC.FieldByName('Capacity').AsString + ',');
              QUpdate.SQL.Add('  ''' + main.Edit1.Text + ''',');
              QUpdate.SQL.Add('  GetDate(),');    
              QUpdate.SQL.Add('  ''1''');
              QUpdate.SQL.Add(');');
            end
            else begin
              QUpdate.SQL.Add('UPDATE ModelStandard SET Capacity = ' + Query_HC.FieldByName('Capacity').AsString + ', UserID = ''' + main.Edit1.Text + ''', UserDate = GetDate()');
              QUpdate.SQL.Add('WHERE Month = ''' + Query_HC.FieldByName('Month').AsString + '''');
              QUpdate.SQL.Add('AND Building = ''' + Query_HC.FieldByName('building_no').AsString + '''');
              QUpdate.SQL.Add('AND Lean = ''' + Query_HC.FieldByName('lean_no').AsString + '''');
              QUpdate.SQL.Add('AND XieXing = ''' + Query_HC.FieldByName('XieXing').AsString + '''');
              QUpdate.SQL.Add('AND SheHao = ''' + Query_HC.FieldByName('SheHao').AsString + ''';');
            end;

            {if (Query_HC.FieldByName('BZCL').AsInteger <> Query_HC.FieldByName('Standard').AsInteger) then
            begin
              QUpdate.SQL.Add('UPDATE SCXXCL SET BZCL = ' + Query_HC.FieldByName('BZCL').AsString);
              QUpdate.SQL.Add('WHERE BZLB = ''3''');
              QUpdate.SQL.Add('AND XieXing = ''' + Query_HC.FieldByName('XieXing').AsString + '''');
              QUpdate.SQL.Add('AND SheHao = ''' + Query_HC.FieldByName('SheHao').AsString + ''';');
            end;}
            QUpdate.ExecSQL;
          end;
        end;
      end;

      Query_HC.Next;
    end;

    Query_HC.Active := false;
    Query_HC.CachedUpdates := false;
    Query_HC.RequestLive := false;
    Query_HC.Active := true;
    BHC5.Enabled := false;
    BHC6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TScheduleUpload.BHC6Click(Sender: TObject);
begin
  with Query_HC do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BHC5.Enabled := false;
  BHC6.Enabled := false;
end;

procedure TScheduleUpload.BHC7Click(Sender: TObject);
begin
  Close;
end;

procedure TScheduleUpload.Query_HCCapacityChange(Sender: TField);
begin
  if (Query_HC.FieldByName('Capacity').AsInteger < 0) then
    Query_HC.FieldByName('Capacity').Value := 0;
end;

procedure TScheduleUpload.BS5Click(Sender: TObject);
const
  URL = 'http://192.168.23.12:80/api/ERP/sendTelegramMessage';
var
  i, j,k: integer;
  MinDate, MaxDate: TDate;
  Response, Building, Lean, TempLean, Month, Month2: string;
  LeanList: TStringList;
  JsonBody: TStringStream;
begin
  try
    k := 0;
    Query_S.First;
    MinDate := Query_S.FieldByName('schedule_date').AsDateTime;
    MaxDate := Query_S.FieldByName('schedule_date').AsDateTime;
    Building := Query_S.FieldByName('building_no').AsString;
    Month := FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime);
    Month2 := '';
    LeanList := TStringList.Create;
    Lean := '';
    for i := 1 to Query_S.RecordCount do
    begin
      if (Query_S.FieldByName('schedule_date').AsDateTime < MinDate) then
        MinDate := Query_S.FieldByName('schedule_date').AsDateTime;
      if (Query_S.FieldByName('schedule_date').AsDateTime > MaxDate) then
        MaxDate := Query_S.FieldByName('schedule_date').AsDateTime;

      Lean := Query_S.FieldByName('building_no').AsString + '-' + Query_S.FieldByName('lean_no').AsString;
      if (LeanList.IndexOf(Query_S.FieldByName('lean_no').AsString) < 0) then
        LeanList.Add(Query_S.FieldByName('lean_no').AsString);

      if (Query_S.FieldByName('building_no').AsString + '-' + Query_S.FieldByName('lean_no').AsString = Lean) and (i = 1) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM schedule_crawler');
          SQL.Add('WHERE building_no = ''' + Query_S.FieldByName('building_no').AsString + '''');
          SQL.Add('AND lean_no LIKE ''' + Query_S.FieldByName('lean_no').AsString + '%''');
          SQL.Add('AND SUBSTRING(CONVERT(VARCHAR, schedule_date, 111), 1, 7) = ''' + FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime) + '''');
          SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
          ExecSQL;
        end;
      end;

      if (FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime) <> Month) AND (LeanList.Count > 0) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM schedule_crawler');
          SQL.Add('WHERE building_no = ''' + Query_S.FieldByName('building_no').AsString + '''');
          SQL.Add('AND lean_no NOT IN (');
          for j := 0 to LeanList.Count-1 do
          begin
            if (j = 0) then
              SQL.Add('''' + LeanList[j] + '''')
            else
              SQL.Add(',''' + LeanList[j] + '''');
          end;
          SQL.Add(') AND SUBSTRING(CONVERT(VARCHAR, schedule_date, 111), 1, 7) = ''' + Month + '''');
          SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
//          showmessage(SQL.Text);
          ExecSQL;
        end;

        if (Query_S.FieldByName('building_no').AsString + '-' + Query_S.FieldByName('lean_no').AsString = Lean) then
        begin
          with QUpdate do
          begin
            SQL.Clear;
            SQL.Add('DELETE FROM schedule_crawler');
            SQL.Add('WHERE building_no = ''' + Query_S.FieldByName('building_no').AsString + '''');
            SQL.Add('AND lean_no LIKE ''' + Query_S.FieldByName('lean_no').AsString + '%''');
            SQL.Add('AND SUBSTRING(CONVERT(VARCHAR, schedule_date, 111), 1, 7) = ''' + FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime) + '''');
            SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
            ExecSQL;
          end;
        end;

        Month := FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime);
      end;

      if (Query_S.FieldByName('building_no').AsString + '-' + Query_S.FieldByName('lean_no').AsString <> Lean) then
      begin
        with QUpdate do
        begin
          SQL.Clear;
          SQL.Add('DELETE FROM schedule_crawler');
          SQL.Add('WHERE building_no = ''' + Query_S.FieldByName('building_no').AsString + '''');
          SQL.Add('AND lean_no LIKE ''' + Query_S.FieldByName('lean_no').AsString + '%''');
          SQL.Add('AND SUBSTRING(CONVERT(VARCHAR, schedule_date, 111), 1, 7) = ''' + FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime) + '''');
          SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
          ExecSQL;
        end;
      end;

      with QUpdate do
      begin
        SQL.Clear;
        SQL.Add('INSERT INTO schedule_crawler (building_no, schedule_date, lean_no, ry_index, ly, ry, vt, chat_lieu, last, buy, bts, cutting, sku, stitching, sl, assembly, csd, country, version, user_id, user_date, GSBH)');
        SQL.Add('VALUES (');
        SQL.Add('  ''' + Query_S.FieldByName('building_no').AsString + ''',');
        SQL.Add('  ''' + FormatDateTime('yyyy/MM/dd', Query_S.FieldByName('schedule_date').AsDateTime) + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('lean_no').AsString + ''',');
        SQL.Add('  ' + Query_S.FieldByName('ry_index').AsString + ',');
        SQL.Add('  ''' + Query_S.FieldByName('ly').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('ry').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('vt').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('chat_lieu').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('last').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('buy').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('bts').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('cutting').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('sku').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('stitching').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('sl').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('assembly').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('csd').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('country').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('version').AsString + ''',');
        SQL.Add('  ''' + main.Edit1.Text + ''',');
        SQL.Add('  GetDate(),');
        SQL.Add('  ''' + main.Edit2.Text + '''');
        SQL.Add(');');


        if (Month2 <> FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime)) then
        begin
          SQL.Add('DELETE FROM schedule_history');
          SQL.Add('WHERE building_no = ''' + Query_S.FieldByName('building_no').AsString + ''' AND version = ''' + Query_S.FieldByName('version').AsString + '''');
          SQL.Add('AND YEAR(schedule_date) = ' + FormatDateTime('yyyy', Query_S.FieldByName('schedule_date').AsDateTime));
          SQL.Add('AND MONTH(schedule_date) = ' + FormatDateTime('M', Query_S.FieldByName('schedule_date').AsDateTime));
          SQL.Add('AND GSBH = ''' + main.Edit2.Text + ''';');
          Month2 := FormatDateTime('yyyy/MM', Query_S.FieldByName('schedule_date').AsDateTime);
        end;

        SQL.Add('INSERT INTO schedule_history (version, building_no, schedule_date, lean_no, ry_index, ly, ry, vt, chat_lieu, last, buy, bts, cutting, sku, stitching, sl, assembly, csd, country, user_id, user_date, GSBH)');
        SQL.Add('VALUES (');
        SQL.Add('  ''' + Query_S.FieldByName('version').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('building_no').AsString + ''',');
        SQL.Add('  ''' + FormatDateTime('yyyy/MM/dd', Query_S.FieldByName('schedule_date').AsDateTime) + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('lean_no').AsString + ''',');
        SQL.Add('  ' + Query_S.FieldByName('ry_index').AsString + ',');
        SQL.Add('  ''' + Query_S.FieldByName('ly').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('ry').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('vt').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('chat_lieu').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('last').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('buy').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('bts').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('cutting').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('sku').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('stitching').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('sl').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('assembly').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('csd').AsString + ''',');
        SQL.Add('  ''' + Query_S.FieldByName('country').AsString + ''',');
        SQL.Add('  ''' + main.Edit1.Text + ''',');
        SQL.Add('  GetDate(),');
        SQL.Add('  ''' + main.Edit2.Text + '''');
        SQL.Add(');');
        ExecSQL;
      end;

      Query_S.Next;
    end;

{    if (LeanList.Count > 0) then
    begin
      with QUpdate do
      begin
        SQL.Clear;
        SQL.Add('DELETE FROM schedule_crawler');
        SQL.Add('WHERE building_no = ''' + Query_S.FieldByName('building_no').AsString + '''');
        SQL.Add('AND lean_no NOT IN (');
        for j := 0 to LeanList.Count-1 do
        begin
          if (j = 0) then
            SQL.Add('''' + LeanList[j] + '''')
          else
            SQL.Add(',''' + LeanList[j] + '''');
        end;
        SQL.Add(') AND SUBSTRING(CONVERT(VARCHAR, schedule_date, 111), 1, 7) = ''' + Month + '''');
        SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');

        ExecSQL;
      end;
    end;     }

    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO schedule_parameter (Building, Lean, Version, Type, Date, BUY, GAC, YN)');
      SQL.Add('SELECT SP.Building, SP.Lean, SH.toVer, SP.Type, SP.Date, SP.BUY, SP.GAC, SP.YN FROM (');
      SQL.Add('  SELECT SH.building_no, SH.lean_no, SP.Version AS fromVer, SH.Version AS toVer FROM (');
      SQL.Add('    SELECT DISTINCT building_no, lean_no, ''' + Query_S.FieldByName('version').AsString + ''' AS Version FROM schedule_history');
      SQL.Add('    WHERE building_no = ''' + Query_S.FieldByName('building_no').AsString + ''' AND version = ''' + Query_S.FieldByName('version').AsString + '''');
      SQL.Add('    AND GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('  ) AS SH');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT Building, Lean, MAX(Version) AS Version FROM schedule_parameter');
      SQL.Add('    WHERE Building = ''' + Query_S.FieldByName('building_no').AsString + '''');
      SQL.Add('    GROUP BY Building, Lean');
      SQL.Add('  ) AS SP ON SP.Building = SH.building_no AND SP.Lean = SH.lean_no');
      SQL.Add('  WHERE SH.Version > SP.Version');
      SQL.Add(') AS SH');
      SQL.Add('LEFT JOIN schedule_parameter AS SP ON SP.Building = SH.building_no AND SP.Lean = SH.lean_no AND SP.Version = SH.fromVer');
      ExecSQL;
    end;
    ProductionLineCheck(StartOfTheMonth(MinDate), Building);

    LeanList.Free;

    DTP_S1.Date := StartOfTheMonth(MinDate);
    DTP_S2.Date := EndOfTheMonth(MaxDate);
    for i := 0 to CB_Building_S.Items.Count - 1 do
    begin
      if (CB_Building_S.Items[i] = Building) then
      begin
        CB_Building_S.ItemIndex := i;
        Break;
      end;
    end;
    ReloadLean(CB_Lean_S, CB_Building_S, DTP_S1, DTP_S2, 'ALL');

    with Query_S do
    begin
      Active := false;
      CachedUpdates := false;
      RequestLive := false;
      SQL.Clear;
      SQL.Add('SELECT version, building_no, CONVERT(SmallDateTime, schedule_date, 111) AS schedule_date, lean_no, ry_index, ly, ry, vt, chat_lieu, last, buy,');
      SQL.Add('bts, cutting, sku, stitching, sl, assembly, csd, country, user_id, CONVERT(SmallDateTime, user_date, 111) AS user_date, ''1'' AS YN FROM schedule_crawler');
      SQL.Add('WHERE CONVERT(SmallDateTime, schedule_date, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP_S1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_S2.Date) + '''');
      SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
      if (CB_Building_S.ItemIndex > 0) then
        SQL.Add('AND building_no = ''' + CB_Building_S.Text + '''');
      if (CB_Lean_S.ItemIndex > 0) then
        SQL.Add('AND lean_no = ''' + CB_Lean_S.Text + '''');
      SQL.Add('ORDER BY building_no, lean_no, CONVERT(SmallDateTime, schedule_date, 111), ry_index');
      Active := true;
    end;

    BS5.Enabled := false;
    BS6.Enabled := false;

//    try
//      if (FormatDateTime('yyyy/MM', MinDate) = FormatDateTime('yyyy/MM', MaxDate)) then
//        JsonBody := TStringStream.Create('{"ChatID":"-4689485184","ParseMode":"HTML","Text":"<blockquote>Building: ' + Building + '\nMonth: ' + FormatDateTime('yyyy/MM', MinDate) + '\nPlan has been updated</blockquote>"}')
//      else
//        JsonBody := TStringStream.Create('{"ChatID":"-4689485184","ParseMode":"HTML","Text":"<blockquote>Building: ' + Building + '\nMonth: ' + FormatDateTime('yyyy/MM', MinDate) + ' ~ ' + FormatDateTime('yyyy/MM', MaxDate) + '\nPlan has been updated</blockquote>"}');
//      idHTTP2.Request.ContentType := 'application/json';
//      Response := idHTTP2.Post(URL, JsonBody);
//    except on E: Exception do
      //
//    end;

    ShowMessage('Completed');
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TScheduleUpload.BS6Click(Sender: TObject);
begin
  with Query_S do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BS5.Enabled := false;
  BS6.Enabled := false;
end;

procedure TScheduleUpload.BS7Click(Sender: TObject);
begin
  Close;
end;

procedure TScheduleUpload.BHC8Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Query_HC.Active) then
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
      for Col := 0 to DBGridEh_HC.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh_HC.Columns[Col].Title.Caption;
      end;

      Query_HC.First;
      Row := 2;
      while not Query_HC.Eof do
      begin
        for Col := 0 to DBGridEh_HC.Columns.Count - 1 do
        begin
          if (DBGridEh_HC.Columns[Col].FieldName = 'SheHao') then
            eclApp.Cells[Row, Col+1].NumberFormatLocal := '@';
          eclApp.Cells[Row, Col+1] := Query_HC.FieldByName(DBGridEh_HC.Columns[Col].FieldName).Value;
        end;
        Query_HC.Next;
        Inc(Row);
      end;

      eclapp.Columns.Autofit;
      ShowMessage('Successful');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TScheduleUpload.Button_Q3DClick(Sender: TObject);
begin
  with Query_3D do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanType, PP.PlanDate, PP.Seq, PP.RY, PP.SubRY, DDZL.ShipDate, PP.NT, CASE WHEN PP.RY LIKE ''C%'' THEN '''' ELSE SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' END AS BUYNO,');
    SQL.Add('CASE WHEN PP.RY LIKE ''C%'' THEN KFXXZL.DEVCODE ELSE DDZL.ARTICLE END AS ARTICLE, CASE WHEN PP.RY LIKE ''C%'' THEN REPLACE(KFXXZL.DAOMH, ''LY-'', '''') ELSE REPLACE(XXZL.DAOMH, ''LY-'', '''') END AS DAOMH,');
    SQL.Add('CASE WHEN PP.RY LIKE ''C%'' THEN PP.Pairs ELSE SC.RYPairs END AS RYPairs, PP.Pairs, PP.CycleStart, PP.CycleEnd, SMDD.MinCycle, SMDD.MaxCycle, PP.Remark, PP.UserID, PP.UserDate, PP.GSBH, PP.YN FROM ProductionPlan AS PP');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DEVCODE, DAOMH FROM (');
    SQL.Add('    SELECT KFXXZL.DEVCODE, KFXXZL.DAOMH, ROW_NUMBER() OVER(PARTITION BY KFXXZL.DEVCODE ORDER BY KFXXZL.USERDATE DESC) AS Seq FROM ProductionPlan AS PP');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.DEVCODE = PP.SubRY');
    SQL.Add('    WHERE PP.Building = ''' + CB_Building_3D.Text + ''' AND PP.Lean = ''' + CB_Lean_3D.Text + ''' AND PP.PlanType = ''' + TypeList3D[CB_Type_3D.ItemIndex] + ''' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP_3D.Date) + ''' AND PP.RY LIKE ''C%''');
    SQL.Add('  ) AS KFXXZL');
    SQL.Add('  WHERE Seq = 1');
    SQL.Add(') AS KFXXZL ON KFXXZL.DEVCODE = PP.SubRY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END AS RY,');
    SQL.Add('  MAX(CONVERT(VARCHAR, schedule_date, 111) + ''-'' + CAST(ry_index AS VARCHAR)) AS Date, SUM(CASE WHEN ISNUMERIC(sl) = 1 THEN CAST(sl AS INT) ELSE 0 END) AS RYPairs FROM schedule_crawler');
    SQL.Add('  WHERE building_no = ''' + CB_Building_3D.Text + ''' AND lean_no = ''' + CB_Lean_3D.Text + '''');
    SQL.Add('  GROUP BY building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END');
    SQL.Add(') AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND SC.RY = PP.RY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
    SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
    SQL.Add('  WHERE GXLB = ''A''');
    SQL.Add('  GROUP BY YSBH');
    SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
    SQL.Add('WHERE PP.Building = ''' + CB_Building_3D.Text + ''' AND PP.Lean = ''' + CB_Lean_3D.Text + ''' AND PP.PlanType = ''' + TypeList3D[CB_Type_3D.ItemIndex] + ''' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP_3D.Date) + '''');
    SQL.Add('AND PP.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY ISNULL(PP.Seq, 99), CONVERT(SmallDateTime, LEFT(SC.Date, 10)), CAST(SUBSTRING(SC.Date, CHARINDEX(''-'', SC.Date) + 1, LEN(SC.Date) - CHARINDEX(''-'', SC.Date)) AS INT)');
    Active := true;
  end;

  P3D_Date := DTP_3D.Date;
  P3D_Building := CB_Building_3D.Text;
  P3D_Lean := CB_Lean_3D.Text;
  P3D_RY := '';
end;

procedure TScheduleUpload.Query_3DAfterOpen(DataSet: TDataSet);
begin
  B3D2.Enabled := true;
  B3D3.Enabled := true;
  B3D4.Enabled := true;
  B3D5.Enabled := false;
  B3D6.Enabled := false;
  DBGridEh_3D.Columns[4].ButtonStyle := cbsNone; 
  DBGridEh_3D.Columns[14].ButtonStyle := cbsNone;
end;

procedure TScheduleUpload.B3D2Click(Sender: TObject);
begin
  with Query_3D do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh_3D.Columns[4].ButtonStyle := cbsEllipsis;
  DBGridEh_3D.Columns[14].ButtonStyle := cbsAuto;
  B3D5.Enabled := true;
  B3D6.Enabled := true;
end;

procedure TScheduleUpload.B3D3Click(Sender: TObject);
begin
  with Query_3D do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  B3D5.Enabled := true;
  B3D6.Enabled := true;
end;

procedure TScheduleUpload.B3D4Click(Sender: TObject);
begin
  with Query_3D do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh_3D.Columns[4].ButtonStyle := cbsEllipsis;
  DBGridEh_3D.Columns[14].ButtonStyle := cbsAuto;
  B3D5.Enabled := true;
  B3D6.Enabled := true;
end;

procedure TScheduleUpload.B3D5Click(Sender: TObject);
var
  i: integer;
  Lean: string;
begin
  try
    if (P3D_Mode = 'Normal') then
    begin
      Query_3D.First;
      for i := 1 to Query_3D.RecordCount do
      begin
        case Query_3D.UpdateStatus of
          usInserted:
          begin
            if (Query_3D.FieldByName('RY').IsNull) OR (Query_3D.FieldByName('CycleStart').IsNull) OR (Query_3D.FieldByName('CycleEnd').IsNull) then
            begin
              Query_3D.Delete;
            end
            else begin
              Query_3D.Edit;
              Query_3D.FieldByName('UserID').Value := main.Edit1.Text; 
              Query_3D.FieldByName('GSBH').Value := main.Edit2.Text;
              UpdateSQL_3D.Apply(ukInsert);
            end;
          end;

          usModified:
          begin
            if (Query_3D.FieldByName('YN').Value = 0) then
            begin
              UpdateSQL_3D.Apply(ukDelete);
            end
            else if (Query_3D.FieldByName('RY').IsNull = false) AND (Query_3D.FieldByName('CycleStart').IsNull = false) AND (Query_3D.FieldByName('CycleEnd').IsNull = false) then
            begin
              Query_3D.Edit;
              Query_3D.FieldByName('UserID').Value := main.Edit1.text;
              UpdateSQL_3D.Apply(ukModify);
            end;
          end;
        end;

        Query_3D.Next;
      end;
    end
    else if (P3D_Mode = 'Import') then
    begin
      Query_3D.First;
      Lean := '';
      for i := 1 to Query_3D.RecordCount do
      begin
        if (Query_3D.FieldByName('Building').AsString + '-' + Query_3D.FieldByName('Lean').AsString + '-' + FormatDateTime('yyyy/MM/dd', Query_3D.FieldByName('PlanDate').AsDateTime) <> Lean) then
        begin
          with QUpdate do
          begin
            SQL.Clear;
            SQL.Add('DELETE FROM ProductionPlan');
            SQL.Add('WHERE Building = ''' + Query_3D.FieldByName('Building').AsString + ''' AND Lean = ''' + Query_3D.FieldByName('Lean').AsString + ''' AND PlanDate = ''' + FormatDateTime('yyyy/MM/dd', Query_3D.FieldByName('PlanDate').AsDateTime) + ''' AND PlanType = ''' + Query_3D.FieldByName('PlanType').AsString + '''');
            SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
            ExecSQL;
          end;
          Lean := Query_3D.FieldByName('Building').AsString + '-' + Query_3D.FieldByName('Lean').AsString + '-' + FormatDateTime('yyyy/MM/dd', Query_3D.FieldByName('PlanDate').AsDateTime);
        end;

        case Query_3D.UpdateStatus of
          usInserted:
          begin
            if (Query_3D.FieldByName('RY').IsNull) OR (Query_3D.FieldByName('CycleStart').IsNull) OR (Query_3D.FieldByName('CycleEnd').IsNull) then
            begin
              Query_3D.Delete;
            end
            else begin
              Query_3D.Edit;
              Query_3D.FieldByName('UserID').Value := main.Edit1.Text; 
              Query_3D.FieldByName('GSBH').Value := main.Edit2.Text;
              UpdateSQL_3D.Apply(ukInsert);
            end;
          end;
        end;

        Query_3D.Next;
      end;
    end;

    DTP_3D.Date := P3D_Date;
    Query_3D.Active := false;
    Query_3D.CachedUpdates := false;
    Query_3D.RequestLive := false;
    Query_3D.Active := true;
    DBGridEh_3D.Columns[4].ButtonStyle := cbsNone;
    DBGridEh_3D.Columns[14].ButtonStyle := cbsNone;
    B3D5.Enabled := false;
    B3D6.Enabled := false;
    if (P3D_Mode = 'Import') then
    begin
      P3D_Mode := 'Normal';
      ShowMessage('Completed');
    end;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TScheduleUpload.B3D6Click(Sender: TObject);
begin
  with Query_3D do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh_3D.Columns[4].ButtonStyle := cbsNone;
  DBGridEh_3D.Columns[14].ButtonStyle := cbsNone;
  P3D_Mode := 'Normal';
  B3D5.Enabled := false;
  B3D6.Enabled := false;
end;

procedure TScheduleUpload.Query_3DNewRecord(DataSet: TDataSet);
begin
  Query_3D.FieldByName('Building').Value := P3D_Building;
  Query_3D.FieldByName('Lean').Value := P3D_Lean;
  Query_3D.FieldByName('PlanType').Value := TypeList3D[CB_Type_3D.ItemIndex];
  Query_3D.FieldByName('PlanDate').Value := P3D_Date;
end;

procedure TScheduleUpload.DBGridEh_3DGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query_3D.FieldByName('YN').AsString = '0') OR (Query_3D.FieldByName('YN').AsString = '2') then
    DBGridEh_3D.Canvas.Font.Color := clRed;
end;

procedure TScheduleUpload.DTP_GCDChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_GCD, DTP_GCD, DTP_GCD, 'NONE');
  ReloadLean(CB_Lean_GCD, CB_Building_GCD, DTP_GCD, DTP_GCD, 'NONE');
end;

procedure TScheduleUpload.DTP_3DChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_3D, DTP_3D, DTP_3D, 'NONE');
  ReloadLean(CB_Lean_3D, CB_Building_3D, DTP_3D, DTP_3D, 'NONE');
end;
      
procedure TScheduleUpload.CB_Building_GCDChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_GCD, CB_Building_GCD, DTP_GCD, DTP_GCD, 'NONE');
end;

procedure TScheduleUpload.CB_Building_3DChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_3D, CB_Building_3D, DTP_3D, DTP_3D, 'NONE');
end;

procedure TScheduleUpload.Query_3DCycleStartChange(Sender: TField);
begin
  with Query_3D do
  begin
    if (FieldByName('CycleStart').AsInteger < FieldByName('MinCycle').AsInteger) then
      FieldByName('CycleStart').Value := FieldByName('MinCycle').AsInteger
    else if (FieldByName('CycleEnd').AsInteger > 0) AND (FieldByName('CycleStart').AsInteger > FieldByName('CycleEnd').AsInteger) then
      FieldByName('CycleStart').Value := FieldByName('CycleEnd').AsInteger
    else if (FieldByName('CycleStart').AsInteger > FieldByName('MaxCycle').AsInteger) then
      FieldByName('CycleStart').Value := FieldByName('MaxCycle').AsInteger;
  end;

  if (Query_3D.FieldByName('CycleStart').AsInteger > 0) AND (Query_3D.FieldByName('CycleEnd').AsInteger > 0) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT SUM(Qty) AS Pairs FROM SMDD');
      SQL.Add('WHERE YSBH = ''' + Query_3D.FieldByName('RY').AsString + ''' AND GXLB = ''A''');
      SQL.Add('AND CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END BETWEEN ' + Query_3D.FieldByName('CycleStart').AsString + ' AND ' + Query_3D.FieldByName('CycleEnd').AsString);
      Active := true;

      Query_3D.FieldByName('Pairs').Value := FieldByName('Pairs').AsInteger;
    end;
  end;
end;

procedure TScheduleUpload.Query_3DCycleEndChange(Sender: TField);
begin
  with Query_3D do
  begin
    if (FieldByName('CycleEnd').AsInteger > FieldByName('MaxCycle').AsInteger) then
      FieldByName('CycleEnd').Value := FieldByName('MaxCycle').AsInteger
    else if (FieldByName('CycleStart').AsInteger > 0) AND (FieldByName('CycleEnd').AsInteger < FieldByName('CycleStart').AsInteger) then
      FieldByName('CycleEnd').Value := FieldByName('CycleStart').AsInteger
    else if (FieldByName('CycleEnd').AsInteger < FieldByName('MinCycle').AsInteger) then
      FieldByName('CycleEnd').Value := FieldByName('MinCycle').AsInteger;
  end;

  if (Query_3D.FieldByName('CycleStart').AsInteger > 0) AND (Query_3D.FieldByName('CycleEnd').AsInteger > 0) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT SUM(Qty) AS Pairs FROM SMDD');
      SQL.Add('WHERE YSBH = ''' + Query_3D.FieldByName('RY').AsString + ''' AND GXLB = ''A''');
      SQL.Add('AND CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END BETWEEN ' + Query_3D.FieldByName('CycleStart').AsString + ' AND ' + Query_3D.FieldByName('CycleEnd').AsString);
      Active := true;

      Query_3D.FieldByName('Pairs').Value := FieldByName('Pairs').AsInteger;
    end;
  end;
end;

procedure TScheduleUpload.BS9Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Query_S.Active) then
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
      for Col := 0 to DBGridEh_S.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh_S.Columns[Col].Title.Caption;
      end;

      Query_S.First;
      Row := 2;
      while not Query_S.Eof do
      begin
        for Col := 0 to DBGridEh_S.Columns.Count - 1 do
        begin
          eclApp.Cells[Row, Col+1] := Query_S.FieldByName(DBGridEh_S.Columns[Col].FieldName).Value;
        end;
        Query_S.Next;
        Inc(Row);
      end;

      eclapp.Columns.Autofit;  
      ShowMessage('Successful');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TScheduleUpload.Button_ESQClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Query_SQ.Active) then
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
      for Col := 0 to DBGridEh_SQ.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh_SQ.Columns[Col].Title.Caption;
      end;

      Query_SQ.First;
      Row := 2;
      while not Query_SQ.Eof do
      begin
        for Col := 0 to DBGridEh_SQ.Columns.Count - 1 do
        begin
          eclApp.Cells[Row, Col+1] := Query_SQ.FieldByName(DBGridEh_SQ.Columns[Col].FieldName).Value;
        end;
        Query_SQ.Next;
        Inc(Row);
      end;

      eclapp.Columns.Autofit;  
      ShowMessage('Successful');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TScheduleUpload.B3D9Click(Sender: TObject);
begin
  ExportDialog := TExportDialog.Create(Self);
  ExportDialog.SetExportMode('3DayPlan', '', DTP_3D.Date, CB_Building_3D.Text);
  ExportDialog.ShowModal;
end;

procedure TScheduleUpload.DBGridEh_3DColumns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  RYDialog := TRYDialog.Create(Self);
  RYDialog.Init(P3D_Building, P3D_Lean, 'Query_3D', '', Nil, Nil);
  RYDialog.ED_RY.Text := P3D_RY;
  RYDialog.Button1Click(Nil);
  RYDialog.ShowModal;
end;

procedure TScheduleUpload.DTP_1DChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_1D, DTP_1D, DTP_1D, 'NONE');
  ReloadLean(CB_Lean_1D, CB_Building_1D, DTP_1D, DTP_1D, 'NONE');
end;

procedure TScheduleUpload.CB_Building_1DChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_1D, CB_Building_1D, DTP_1D, DTP_1D, 'NONE');
end;

procedure TScheduleUpload.Button_Q1DClick(Sender: TObject);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 PP.RY FROM ProductionPlan AS PP');
    SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
    SQL.Add('WHERE PP.Building = ''' + CB_Building_1D.Text + ''' AND PP.Lean = ''' + CB_Lean_1D.Text + ''' AND PP.PlanType = ''' + TypeList1D[CB_Type_1D.ItemIndex] + ''' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP_1D.Date) + '''');
    SQL.Add('AND PP.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY PP.AssemblyTime DESC, CONVERT(VARCHAR, SC.schedule_date, 111) + ''-'' + CAST(SC.ry_index AS VARCHAR) DESC');
    Active := true;

    P1D_RY := FieldByName('RY').AsString;
  end;

  with Query_1D do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanType, PP.PlanDate, PP.Seq, PP.RY, PP.SubRY, DDZL.ShipDate, PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO,');
    SQL.Add('CASE WHEN PP.RY LIKE ''C%'' THEN KFXXZL.DEVCODE ELSE DDZL.ARTICLE END AS ARTICLE, CASE WHEN PP.RY LIKE ''C%'' THEN PP.Pairs ELSE SC.RYPairs END AS RYPairs,');
    SQL.Add('CASE WHEN PP.RY LIKE ''C%'' THEN REPLACE(KFXXZL.DAOMH, ''LY-'', '''') ELSE REPLACE(XXZL.DAOMH, ''LY-'', '''') END AS DAOMH, PP.Pairs, PP.CycleStart, PP.CycleEnd, SMDD.MinCycle, SMDD.MaxCycle,');
    SQL.Add('CASE WHEN PP.RY LIKE ''C%'' THEN REPLACE(KFXXZL.XTMH, ''TV-'', '''') ELSE REPLACE(XXZL.XTMH, ''TV-'', '''') END AS XTMH, PP.DeliveryTime, PP.AssemblyTime, PP.Remark, PP.Reason, PP.UserID, PP.UserDate, PP.GSBH, PP.YN FROM ProductionPlan AS PP');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DEVCODE, DAOMH, XTMH FROM (');
    SQL.Add('    SELECT KFXXZL.DEVCODE, KFXXZL.DAOMH, KFXXZL.XTMH, ROW_NUMBER() OVER(PARTITION BY KFXXZL.DEVCODE ORDER BY KFXXZL.USERDATE DESC) AS Seq FROM ProductionPlan AS PP');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.DEVCODE = PP.SubRY');
    SQL.Add('    WHERE PP.Building = ''' + CB_Building_1D.Text + ''' AND PP.Lean = ''' + CB_Lean_1D.Text + ''' AND PP.PlanType = ''' + TypeList1D[CB_Type_1D.ItemIndex] + ''' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP_1D.Date) + ''' AND PP.RY LIKE ''C%''');
    SQL.Add('  ) AS KFXXZL');
    SQL.Add('  WHERE Seq = 1');
    SQL.Add(') AS KFXXZL ON KFXXZL.DEVCODE = PP.SubRY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END AS RY,');
    SQL.Add('  MAX(CONVERT(VARCHAR, schedule_date, 111) + ''-'' + CAST(ry_index AS VARCHAR)) AS Date, SUM(CASE WHEN ISNUMERIC(sl) = 1 THEN CAST(sl AS INT) ELSE 0 END) AS RYPairs FROM schedule_crawler');
    SQL.Add('  WHERE building_no = ''' + CB_Building_1D.Text + ''' AND lean_no = ''' + CB_Lean_1D.Text + '''');
    SQL.Add('  GROUP BY building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END');
    SQL.Add(') AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND SC.RY = PP.RY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
    SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
    SQL.Add('  WHERE GXLB = ''A''');
    SQL.Add('  GROUP BY YSBH');
    SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
    SQL.Add('WHERE PP.Building = ''' + CB_Building_1D.Text + ''' AND PP.Lean = ''' + CB_Lean_1D.Text + ''' AND PP.PlanType = ''' + TypeList1D[CB_Type_1D.ItemIndex] + ''' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP_1D.Date) + '''');
    SQL.Add('AND PP.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY ISNULL(PP.Seq, 99), PP.AssemblyTime, CONVERT(SmallDateTime, LEFT(SC.Date, 10)), CAST(SUBSTRING(SC.Date, CHARINDEX(''-'', SC.Date) + 1, LEN(SC.Date) - CHARINDEX(''-'', SC.Date)) AS INT)');
    Active := true;
  end;

  P1D_Date := DTP_1D.Date;
  P1D_Building := CB_Building_1D.Text;
  P1D_Lean := CB_Lean_1D.Text;
end;

procedure TScheduleUpload.B1D2Click(Sender: TObject);
begin
  with Query_1D do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh_1D.Columns[5].ButtonStyle := cbsEllipsis;
  DBGridEh_1D.Columns[19].ButtonStyle := cbsAuto;
  DBGridEh_1D.Columns[20].ButtonStyle := cbsAuto;
  B1D5.Enabled := true;
  B1D6.Enabled := true;
end;

procedure TScheduleUpload.B1D3Click(Sender: TObject);
begin
  with Query_1D do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  B1D5.Enabled := true;
  B1D6.Enabled := true;
end;

procedure TScheduleUpload.B1D4Click(Sender: TObject);
begin
  with Query_1D do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh_1D.Columns[5].ButtonStyle := cbsEllipsis;
  DBGridEh_1D.Columns[19].ButtonStyle := cbsAuto;
  DBGridEh_1D.Columns[20].ButtonStyle := cbsAuto;
  B1D5.Enabled := true;
  B1D6.Enabled := true;
end;

procedure TScheduleUpload.B1D5Click(Sender: TObject);
var
  i: integer;
  Lean: string;
  CheckDate: TDate;
  CheckFlag: boolean;
begin
  try
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT MIN(CONVERT(SmallDateTime, CAST(SCYEAR AS VARCHAR) + ''/'' + CAST(SCMONTH AS VARCHAR) + ''/'' + CAST(SCDay AS VARCHAR))) AS Date FROM SCRL');
      SQL.Add('WHERE CONVERT(SmallDateTime, CAST(SCYEAR AS VARCHAR) + ''/'' + CAST(SCMONTH AS VARCHAR) + ''/'' + CAST(SCDay AS VARCHAR)) > ''' + FormatDateTime('yyyy/MM/dd', main.Today) + '''');
      SQL.Add('AND SCGS > 0 AND GSBH = ''' + main.Edit2.Text + '''');
      Active := true;

      CheckDate := FieldByName('Date').AsDateTime;
    end;

    CheckFlag := false;
    if (P1D_Mode = 'Normal') then
    begin
      Query_1D.First;
      for i := 1 to Query_1D.RecordCount do
      begin
        if (CheckFlag = false) AND (Query_1D.FieldByName('PlanDate').AsDateTime = CheckDate) then
          CheckFlag := true;

        case Query_1D.UpdateStatus of
          usInserted:
          begin
            if (Query_1D.FieldByName('RY').IsNull) OR (Query_1D.FieldByName('CycleStart').IsNull) OR (Query_1D.FieldByName('CycleEnd').IsNull) then
            begin
              Query_1D.Delete;
            end
            else begin
              Query_1D.Edit;
              if (Query_1D.FieldByName('Reason').AsString = 'X') then
                Query_1D.FieldByName('Reason').Value := Null;
              Query_1D.FieldByName('UserID').Value := main.Edit1.Text; 
              Query_1D.FieldByName('GSBH').Value := main.Edit2.Text;
              UpdateSQL_1D.Apply(ukInsert);
            end;
          end;

          usModified:
          begin
            if (Query_1D.FieldByName('YN').Value = 0) then
            begin
              UpdateSQL_1D.Apply(ukDelete);
            end
            else if (Query_1D.FieldByName('RY').IsNull = false) AND (Query_1D.FieldByName('CycleStart').IsNull = false) AND (Query_1D.FieldByName('CycleEnd').IsNull = false) then
            begin
              Query_1D.Edit;
              if (Query_1D.FieldByName('Reason').AsString = 'X') then
                Query_1D.FieldByName('Reason').Value := Null;
              Query_1D.FieldByName('UserID').Value := main.Edit1.text;
              UpdateSQL_1D.Apply(ukModify);
            end;
          end;
        end;

        Query_1D.Next;
      end;
    end
    else if (P1D_Mode = 'Import') then
    begin
      Query_1D.First;
      Lean := '';
      for i := 1 to Query_1D.RecordCount do
      begin
        if (CheckFlag = false) AND (Query_1D.FieldByName('PlanDate').AsDateTime = CheckDate) then
          CheckFlag := true;

        if (Query_1D.FieldByName('Building').AsString + '-' + Query_1D.FieldByName('Lean').AsString + '-' + FormatDateTime('yyyy/MM/dd', Query_1D.FieldByName('PlanDate').AsDateTime) <> Lean) then
        begin
          with QUpdate do
          begin
            SQL.Clear;
            SQL.Add('DELETE FROM ProductionPlan');
            SQL.Add('WHERE Building = ''' + Query_1D.FieldByName('Building').AsString + ''' AND Lean = ''' + Query_1D.FieldByName('Lean').AsString + ''' AND PlanDate = ''' + FormatDateTime('yyyy/MM/dd', Query_1D.FieldByName('PlanDate').AsDateTime) + ''' AND PlanType = ''' + Query_1D.FieldByName('PlanType').AsString + '''');
            SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
            ExecSQL;
          end;
          Lean := Query_1D.FieldByName('Building').AsString + '-' + Query_1D.FieldByName('Lean').AsString + '-' + FormatDateTime('yyyy/MM/dd', Query_1D.FieldByName('PlanDate').AsDateTime);
        end;

        case Query_1D.UpdateStatus of
          usInserted:
          begin
            if (Query_1D.FieldByName('RY').IsNull) OR (Query_1D.FieldByName('CycleStart').IsNull) OR (Query_1D.FieldByName('CycleEnd').IsNull) then
            begin
              Query_1D.Delete;
            end
            else begin
              Query_1D.Edit;
              Query_1D.FieldByName('UserID').Value := main.Edit1.Text;  
              Query_1D.FieldByName('GSBH').Value := main.Edit2.Text;
              UpdateSQL_1D.Apply(ukInsert);
            end;
          end;
        end;

        Query_1D.Next;
      end;
    end;

    DTP_1D.Date := P1D_Date;
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT TOP 1 PP.RY FROM ProductionPlan AS PP');
      SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
      SQL.Add('WHERE PP.Building = ''' + CB_Building_1D.Text + ''' AND PP.Lean = ''' + CB_Lean_1D.Text + ''' AND PP.PlanType = ''' + TypeList1D[CB_Type_1D.ItemIndex] + ''' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP_1D.Date) + '''');
      SQL.Add('AND PP.GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('ORDER BY PP.AssemblyTime DESC, CONVERT(VARCHAR, SC.schedule_date, 111) + ''-'' + CAST(SC.ry_index AS VARCHAR) DESC');
      Active := true;

      P1D_RY := FieldByName('RY').AsString;
    end;
    if (CheckFlag) then
      SeqCheck(Query_1D.FieldByName('Building').AsString, main.Today);

    Query_1D.Active := false;
    Query_1D.CachedUpdates := false;
    Query_1D.RequestLive := false;
    Query_1D.Active := true;
    DBGridEh_1D.Columns[5].ButtonStyle := cbsNone;
    DBGridEh_1D.Columns[19].ButtonStyle := cbsNone;
    DBGridEh_1D.Columns[20].ButtonStyle := cbsNone;
    B1D5.Enabled := false;
    B1D6.Enabled := false;
    if (P1D_Mode = 'Import') then
    begin
      P1D_Mode := 'Normal';
      ShowMessage('Completed');
    end;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TScheduleUpload.B1D6Click(Sender: TObject);
begin
  with Query_1D do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh_1D.Columns[5].ButtonStyle := cbsNone;
  DBGridEh_1D.Columns[19].ButtonStyle := cbsNone;
  DBGridEh_1D.Columns[20].ButtonStyle := cbsNone;
  P1D_Mode := 'Normal';
  B1D5.Enabled := false;
  B1D6.Enabled := false;
end;

procedure TScheduleUpload.DBGridEh_1DGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query_1D.FieldByName('YN').AsString = '0') OR (Query_1D.FieldByName('YN').AsString = '2') then
    DBGridEh_1D.Canvas.Font.Color := clRed;
end;

procedure TScheduleUpload.Query_1DAfterOpen(DataSet: TDataSet);
begin
  B1D2.Enabled := true;
  B1D3.Enabled := true;
  B1D4.Enabled := true;
  B1D5.Enabled := false;
  B1D6.Enabled := false;
  DBGridEh_1D.Columns[5].ButtonStyle := cbsNone;
  DBGridEh_1D.Columns[19].ButtonStyle := cbsNone;  
  DBGridEh_1D.Columns[20].ButtonStyle := cbsNone;
end;

procedure TScheduleUpload.Query_1DNewRecord(DataSet: TDataSet);
begin
  Query_1D.FieldByName('Building').Value := P1D_Building;
  Query_1D.FieldByName('Lean').Value := P1D_Lean;
  Query_1D.FieldByName('PlanType').Value := TypeList1D[CB_Type_1D.ItemIndex];
  Query_1D.FieldByName('PlanDate').Value := P1D_Date;
end;

procedure TScheduleUpload.DBGridEh_1DColumns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
var
  index: integer;
  RY_Time, Mode: string;
  BM: TBookmark;
begin
  RY_List.Clear;
  Cycle_List.Clear;

  with Query_1D do
  begin
    if (FieldByName('ARTICLE').IsNull) then
    begin
      Mode := 'Insert';
    end
    else begin
      Mode := 'Modify';
      BM := GetBookmark;
    end;

    DBGridEh_1D.DataSource := Nil;
    First;
    while not Eof do
    begin
      index := RY_List.IndexOf(FieldByName('RY').AsString);
      if (index < 0) then
      begin
        RY_List.Add(FieldByName('RY').AsString);
        Cycle_List.Add(FieldByName('CycleEnd').AsString);
      end
      else begin
        if (FieldByName('CycleEnd').AsInteger > StrToInt(Cycle_List[index])) then
          Cycle_List[index] := FieldByName('CycleEnd').AsString;
      end;

      if (FieldByName('AssemblyTime').AsString > RY_Time) then
        RY_Time := FieldByName('AssemblyTime').AsString;
      Next;
    end;
    DBGridEh_1D.DataSource := DS_1D;
    
    if (Mode = 'Insert') then
      B1D2Click(Nil)
    else if (Mode = 'Modify') then
      GotoBookmark(BM);
  end;

  RYDialog := TRYDialog.Create(Self);
  RYDialog.Init(P1D_Building, P1D_Lean, 'Query_1D', RY_Time, RY_List, Cycle_List);
  RYDialog.ED_RY.Text := P1D_RY;
  RYDialog.Button1Click(Nil);
  RYDialog.ShowModal;
end;

procedure TScheduleUpload.IntegerField11Change(Sender: TField);
begin
  with Query_1D do
  begin
    if (FieldByName('CycleStart').AsInteger < FieldByName('MinCycle').AsInteger) then
      FieldByName('CycleStart').Value := FieldByName('MinCycle').AsInteger
    else if (FieldByName('CycleEnd').AsInteger > 0) AND (FieldByName('CycleStart').AsInteger > FieldByName('CycleEnd').AsInteger) then
      FieldByName('CycleStart').Value := FieldByName('CycleEnd').AsInteger
    else if (FieldByName('CycleStart').AsInteger > FieldByName('MaxCycle').AsInteger) then
      FieldByName('CycleStart').Value := FieldByName('MaxCycle').AsInteger;
  end;

  if (Query_1D.FieldByName('CycleStart').AsInteger > 0) AND (Query_1D.FieldByName('CycleEnd').AsInteger > 0) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT SUM(Qty) AS Pairs FROM SMDD');
      SQL.Add('WHERE YSBH = ''' + Query_1D.FieldByName('RY').AsString + ''' AND GXLB = ''A''');
      SQL.Add('AND CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END BETWEEN ' + Query_1D.FieldByName('CycleStart').AsString + ' AND ' + Query_1D.FieldByName('CycleEnd').AsString);
      Active := true;

      Query_1D.FieldByName('Pairs').Value := FieldByName('Pairs').AsInteger;
    end;
  end;
end;

procedure TScheduleUpload.IntegerField12Change(Sender: TField);
begin
  with Query_1D do
  begin
    if (FieldByName('CycleEnd').AsInteger > FieldByName('MaxCycle').AsInteger) then
      FieldByName('CycleEnd').Value := FieldByName('MaxCycle').AsInteger
    else if (FieldByName('CycleStart').AsInteger > 0) AND (FieldByName('CycleEnd').AsInteger < FieldByName('CycleStart').AsInteger) then
      FieldByName('CycleEnd').Value := FieldByName('CycleStart').AsInteger
    else if (FieldByName('CycleEnd').AsInteger < FieldByName('MinCycle').AsInteger) then
      FieldByName('CycleEnd').Value := FieldByName('MinCycle').AsInteger;
  end;

  if (Query_1D.FieldByName('CycleStart').AsInteger > 0) AND (Query_1D.FieldByName('CycleEnd').AsInteger > 0) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT SUM(Qty) AS Pairs FROM SMDD');
      SQL.Add('WHERE YSBH = ''' + Query_1D.FieldByName('RY').AsString + ''' AND GXLB = ''A''');
      SQL.Add('AND CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END BETWEEN ' + Query_1D.FieldByName('CycleStart').AsString + ' AND ' + Query_1D.FieldByName('CycleEnd').AsString);
      Active := true;

      Query_1D.FieldByName('Pairs').Value := FieldByName('Pairs').AsInteger;
    end;
  end;
end;

procedure TScheduleUpload.B1D9Click(Sender: TObject);
begin
  ExportDialog := TExportDialog.Create(Self);
  ExportDialog.SetExportMode('1DayPlan', TypeList1D[CB_Type_1D.ItemIndex], DTP_1D.Date, CB_Building_1D.Text);
  ExportDialog.ShowModal;
end;

procedure TScheduleUpload.DBGridEh_3DKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = ';') then
    key := #0;
end;

procedure TScheduleUpload.DBGridEh_1DKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = ';') then
    key := #0;
end;

procedure TScheduleUpload.B3D7Click(Sender: TObject);
begin
  Close;
end;

procedure TScheduleUpload.B1D7Click(Sender: TObject);
begin
  Close;
end;

procedure TScheduleUpload.B3D8Click(Sender: TObject);
var
  Page, i, j, Row, Col, TRow, TCol, CRow, k: integer;
  Counter, CycleStart, CycleEnd: integer;
  eclApp, Sheet: OleVariant;
  SelectedFileName, Area, Building, Lean, TempStr, SubRY, NotExistRY, ttyyh: string;
  PlanBlock: array[0..2] of array[0..7] of integer;
  PlanDate: array[0..2] of TDate;
begin
  try
    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);

      with Query_3D do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanType, PP.PlanDate, PP.Seq, PP.RY, PP.SubRY, DDZL.ShipDate, PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO,');
        SQL.Add('DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH, CASE WHEN ISNUMERIC(SC.sl) = 1 THEN CAST(SC.sl AS INT) ELSE 0 END AS RYPairs,');
        SQL.Add('PP.Pairs, PP.CycleStart, PP.CycleEnd, SMDD.MinCycle, SMDD.MaxCycle, PP.Remark, PP.UserID, PP.UserDate, PP.GSBH, PP.YN FROM ProductionPlan AS PP');
        SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
        SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
        SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
        SQL.Add('LEFT JOIN (');
        SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
        SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
        SQL.Add('  WHERE GXLB = ''A''');
        SQL.Add('  GROUP BY YSBH');
        SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
        SQL.Add('WHERE 1 = 0');
        Active := true;

        RequestLive := true;
        CachedUpdates := true;
      end;

      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.workbooks.Open(OpenDialog1.FileName);

        SchedulePage := TSchedulePage.Create(Self);
        SchedulePage.PageBox.Clear;
        for i := 1 to eclApp.WorkSheets.Count do
        begin
          if (eclApp.WorkSheets[i].Visible) then
            SchedulePage.PageBox.Items.Add(eclApp.WorkSheets[i].Name);
        end;
        if (SchedulePage.ShowModal = mrOK) then
        begin
          SetCursor(Screen.Cursors[crHourGlass]);

          for Page := 0 to Length(UploadPage) - 1 do
          begin
            Sheet := eclApp.WorkSheets[UploadPage[Page]];
            eclapp.Columns.Autofit;

            //定位欄位座標
            TCol := 0;
            for Row := 1 to 10 do
            begin
              for Col := 1 to 10 do
              begin
                if (Sheet.Cells[Row, Col].Text = 'RY') then
                begin
                  TRow := Row;
                  TCol := Col;
                  Break;
                end;
              end;
              if (TCol > 0) then
                Break;
            end;

            for Col := TCol to TCol + 8 do
            begin
              if (Pos('RY', Sheet.Cells[TRow, Col].Text) > 0) then
              begin
                PlanBlock[0][0] := Col;
                PlanDate[0] := Sheet.Cells[TRow-1, Col].Value;
              end
              else if (Pos('XH', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][1] := Col
              else if (Pos('NT', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][2] := Col
              else if (Pos('MG', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][3] := Col
              else if (Pos('SKU', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][4] := Col
              else if (Pos('SL', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][5] := Col
              else if (Pos('LY', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][6] := Col
              else if (Pos('回轉數', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][7] := Col;
            end;

            for Col := PlanBlock[0][7] to PlanBlock[0][7] + 10 do
            begin
              if (Sheet.Cells[TRow, Col].Text = 'RY') then
              begin
                TCol := Col;
                Break;
              end;
            end;

            for Col := TCol to TCol + 8 do
            begin
              if (Pos('RY', Sheet.Cells[TRow, Col].Text) > 0) then
              begin
                PlanBlock[1][0] := Col;
                PlanDate[1] := Sheet.Cells[TRow-1, Col].Value;
              end
              else if (Pos('XH', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][1] := Col
              else if (Pos('NT', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][2] := Col
              else if (Pos('MG', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][3] := Col
              else if (Pos('SKU', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][4] := Col
              else if (Pos('SL', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][5] := Col
              else if (Pos('LY', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][6] := Col
              else if (Pos('回轉數', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][7] := Col;
            end;

            for Col := PlanBlock[1][7] to PlanBlock[1][7] + 10 do
            begin
              if (Sheet.Cells[TRow, Col].Text = 'RY') then
              begin
                TCol := Col;
                Break;
              end;
            end;

            for Col := TCol to TCol + 8 do
            begin
              if (Pos('RY', Sheet.Cells[TRow, Col].Text) > 0) then
              begin
                PlanBlock[2][0] := Col;
                PlanDate[2] := Sheet.Cells[TRow-1, Col].Value;
              end
              else if (Pos('XH', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][1] := Col
              else if (Pos('NT', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][2] := Col
              else if (Pos('MG', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][3] := Col
              else if (Pos('SKU', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][4] := Col
              else if (Pos('SL', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][5] := Col
              else if (Pos('LY', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][6] := Col
              else if (Pos('回轉數', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][7] := Col;
            end;

            for i := 0 to 2 do
            begin
              CRow := TRow;
              Counter := 0;
              while (Counter < 50) do
              begin
                if (Sheet.Cells[CRow, PlanBlock[i][0]].Text = 'RY') then
                begin
                  TempStr := UpperCase(StringReplace(Sheet.Cells[CRow, 1].Text, ' ', '', [rfReplaceAll]));
                  Area := Copy(TempStr, 1, 1);
                  if (Pos(#$A, TempStr) > 0) then
                    TempStr := Copy(TempStr, 1, Pos(#$A, TempStr)-1);
                  Building := Copy(TempStr, 2, Pos('L', TempStr)-2);
                  if (Length(Building) = 1) then
                    Building := '0' + Building;
                  Building := Area + Building;
                  Lean := 'Lean0' + Copy(TempStr, Pos('N', TempStr)+1, Length(TempStr)-Pos('N', TempStr));
                  Inc(CRow);
                  Counter := 0;
                end;

                if (Copy(Sheet.Cells[CRow, PlanBlock[i][0]].Text, 1, 1) = 'Y') OR (Copy(Sheet.Cells[CRow, PlanBlock[i][0]].Text, 1, 2) = 'SJ') then
                begin
                  if (PlanBlock[i][7] > 0) then
                  begin
                    TempStr := StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[i][7]].Text, 'T', '', [rfReplaceAll]), ' ', '', [rfReplaceAll]);

                    if Pos('-', TempStr) > 0 then
                    begin
                      CycleStart := StrToInt(Copy(TempStr, 1, Pos('-', TempStr)-1));
                      CycleEnd := StrToInt(Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr)));
                    end
                    else begin
                      CycleStart := StrToInt(TempStr);
                      CycleEnd := StrToInt(TempStr);
                    end;
                  end;

                  with QTemp do
                  begin
                    Active := false;
                    Fields.Clear;
                    SQL.Clear;
                    SQL.Add('DECLARE @RY VARCHAR(20) = ''' + Sheet.Cells[CRow, PlanBlock[i][0]].Text + ''';');
                    SQL.Add('SELECT DDZL.DDBH, DDZL.RYTYPE,');
                    SQL.Add('MIN(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MinCycle,');
                    SQL.Add('MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MaxCycle FROM DDZL');
                    SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = DDZL.DDBH');
                    SQL.Add('WHERE SMDD.GXLB = ''A'' AND DDZL.DDBH = CASE WHEN LEN(@RY) - LEN(REPLACE(@RY, ''-'', '''')) < 2 THEN @RY ELSE SUBSTRING(@RY, 1, LEN(@RY) - CHARINDEX(''-'', REVERSE(@RY))) END');
                    SQL.Add('GROUP BY DDZL.DDBH, DDZL.RYTYPE');
                    Active := true;

                    NotExistRY := '';
                    if (RecordCount = 0) then
                      NotExistRY := Sheet.Cells[CRow, PlanBlock[i][0]].Text;
                  end;

                  with Query_3D do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanDate').Value := PlanDate[i];
                    if (PlanBlock[i][0] > 0) then
                      FieldByName('RY').Value := QTemp.FieldByName('DDBH').AsString;
                    if (PlanBlock[i][1] > 0) then
                      FieldByName('ShipDate').Value := Sheet.Cells[CRow, PlanBlock[i][1]].Text;
                    if (PlanBlock[i][2] > 0) then
                      FieldByName('NT').Value := StringReplace(StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[i][2]].Text, ' ', '', [rfReplaceAll]), '(', ' (', [rfReplaceAll]), '亮', '', [rfReplaceAll]);
                    if (PlanBlock[i][3] > 0) then
                      FieldByName('BUYNO').Value := Sheet.Cells[CRow, PlanBlock[i][3]].Text;
                    if (PlanBlock[i][4] > 0) then
                      FieldByName('ARTICLE').Value := Sheet.Cells[CRow, PlanBlock[i][4]].Text;
                    if (PlanBlock[i][5] > 0) then
                      FieldByName('RYPairs').Value := Sheet.Cells[CRow, PlanBlock[i][5]].Text;
                    if (PlanBlock[i][6] > 0) then
                      FieldByName('DAOMH').Value := Sheet.Cells[CRow, PlanBlock[i][6]].Text;
                    if (QTemp.FieldByName('RYTYPE').AsString = 'SLT') then
                      FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
                    if (PlanBlock[i][7] > 0) then
                    begin
                      FieldByName('MinCycle').Value := QTemp.FieldByName('MinCycle').AsInteger;
                      FieldByName('MaxCycle').Value := QTemp.FieldByName('MaxCycle').AsInteger;
                      FieldByName('CycleStart').Value := CycleStart;
                      FieldByName('CycleEnd').Value := CycleEnd;
                    end;
                  end;

                  Counter := 0;
                  if (NotExistRY <> '') then
                  begin
                    Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + Query_3D.FieldByName('Building').AsString + #13#10 + '　Lean: ' + Query_3D.FieldByName('Lean').AsString + #13#10 + '　RY: ' + NotExistRY), 'WARNING', MB_OK + MB_ICONWARNING);
                    Query_3D.FieldByName('YN').Value := '2';
                  end;
                end
                else if (Copy(Sheet.Cells[CRow, PlanBlock[i][0]].Text, 1, 2) = 'C-') then
                begin
                  if (PlanBlock[i][7] > 0) then
                  begin
                    TempStr := StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[i][7]].Text, 'T', '', [rfReplaceAll]), ' ', '', [rfReplaceAll]);

                    if Pos('-', TempStr) > 0 then
                    begin
                      CycleStart := StrToInt(Copy(TempStr, 1, Pos('-', TempStr)-1));
                      CycleEnd := StrToInt(Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr)));
                    end
                    else begin
                      CycleStart := StrToInt(TempStr);
                      CycleEnd := StrToInt(TempStr);
                    end;
                  end;

                  for Col := PlanBlock[i][1] to PlanBlock[i][5] do
                  begin
                    if (Sheet.Cells[CRow, Col].Text <> '') then
                    begin
                      SubRY := Sheet.Cells[CRow, Col].Text;
                      Break;
                    end;
                  end;

                  with QTemp do
                  begin
                    Active := false;
                    Fields.Clear;
                    SQL.Clear;
                    SQL.Add('SELECT DEVCODE, REPLACE(DAOMH, ''LY-'', '''') AS DAOMH, REPLACE(XTMH, ''TV-'', '''') AS XTMH FROM KFXXZL');
                    SQL.Add('WHERE DEVCODE = ''' + SubRY + '''');
                    Active := true;

                    NotExistRY := '';
                    if (RecordCount = 0) then
                      NotExistRY := SubRY;
                  end;

                  with Query_3D do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanDate').Value := PlanDate[i];
                    if (PlanBlock[i][0] > 0) then
                    begin
                      FieldByName('RY').Value := Sheet.Cells[CRow, PlanBlock[i][0]].Text;
                      FieldByName('SubRY').Value := SubRY;
                    end;
                    if (PlanBlock[i][5] > 0) AND (Sheet.Cells[CRow, PlanBlock[i][5]].Text <> '') then
                      FieldByName('RYPairs').Value := Sheet.Cells[CRow, PlanBlock[i][5]].Text;
                    if (PlanBlock[i][6] > 0) then
                      FieldByName('DAOMH').Value := QTemp.FieldByName('DAOMH').AsString;
                    if (PlanBlock[i][7] > 0) then
                    begin
                      FieldByName('MinCycle').Value := CycleStart;
                      FieldByName('MaxCycle').Value := CycleEnd;
                      FieldByName('CycleStart').Value := CycleStart;
                      FieldByName('CycleEnd').Value := CycleEnd;
                    end;
                  end;

                  Counter := 0;
                  if (NotExistRY <> '') then
                  begin
                    Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + Query_3D.FieldByName('Building').AsString + #13#10 + '　Lean: ' + Query_3D.FieldByName('Lean').AsString + #13#10 + '　RY: ' + NotExistRY), 'WARNING', MB_OK + MB_ICONWARNING);
                    Query_3D.FieldByName('YN').Value := '2';
                  end;
                end
                else if (Copy(Sheet.Cells[CRow, PlanBlock[i][0]].Text, 1, 3) = 'SLT') then
                begin
                  with Query_3D do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanDate').Value := PlanDate[i];
                    if (PlanBlock[i][0] > 0) then
                      FieldByName('RY').Value := 'SLT';
                    FieldByName('MinCycle').Value := 0;
                    FieldByName('MaxCycle').Value := 0;
                    FieldByName('CycleStart').Value := 0;
                    FieldByName('CycleEnd').Value := 0;
                    FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
                  end;
                end;

                Inc(CRow);
                Inc(Counter);
              end;
            end;
          end;

          Self.Cursor := crDefault;
          P3D_Mode := 'Import';
          B3D5.Enabled := true;
          B3D6.Enabled := true;
          Query_3D.First;
          ShowMessage('Completed');
        end;

        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
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

procedure TScheduleUpload.B1D8Click(Sender: TObject);
var
  Page, i, j, Row, Col, TRow, TCol, CRow: integer;
  Counter, CycleStart, CycleEnd: integer;
  eclApp, Sheet: OleVariant;
  SelectedFileName, Area, Building, Lean, TempStr, NotExistRY: string;
  RY, SubRY, NT, BUYNO, SKU, DAOMH, XTMH, DeliveryTime, AssemblyTime, Remark: string;
  RYPairs, MinCycle, MaxCycle, TempPairs: integer;
  StartTime, EndTime: string;
  PlanBlock: array[0..11] of integer;
  PlanDate, ShipDate: TDate;
  TempDate: TDateTime;
begin
  try
    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName); 
      DBGridEh_1D.Columns[19].ButtonStyle := cbsAuto;
      DBGridEh_1D.Columns[20].ButtonStyle := cbsAuto;

      with Query_1D do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanType, PP.PlanDate, PP.Seq, PP.RY, PP.SubRY, DDZL.ShipDate, PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO,');
        SQL.Add('DDZL.ARTICLE, CASE WHEN ISNUMERIC(SC.sl) = 1 THEN CAST(SC.sl AS INT) ELSE 0 END AS RYPairs, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH,');
        SQL.Add('PP.Pairs, PP.CycleStart, PP.CycleEnd, SMDD.MinCycle, SMDD.MaxCycle, REPLACE(XXZL.XTMH, ''TV-'', '''') AS XTMH,');
        SQL.Add('PP.DeliveryTime, PP.AssemblyTime, PP.Remark, PP.Reason, PP.UserID, PP.UserDate, PP.GSBH, PP.YN FROM ProductionPlan AS PP');
        SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
        SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
        SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
        SQL.Add('LEFT JOIN (');
        SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
        SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
        SQL.Add('  WHERE GXLB = ''A''');
        SQL.Add('  GROUP BY YSBH');
        SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
        SQL.Add('WHERE 1 = 0');
        Active := true;

        RequestLive := true;
        CachedUpdates := true;
      end;

      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.workbooks.Open(OpenDialog1.FileName);

        SchedulePage := TSchedulePage.Create(Self);
        SchedulePage.PageBox.Clear;
        for i := 1 to eclApp.WorkSheets.Count do
        begin
          if (eclApp.WorkSheets[i].Visible) then
            SchedulePage.PageBox.Items.Add(eclApp.WorkSheets[i].Name);
        end;
        if (SchedulePage.ShowModal = mrOK) then
        begin
          SetCursor(Screen.Cursors[crHourGlass]);

          for Page := 0 to Length(UploadPage) - 1 do
          begin
            Sheet := eclApp.WorkSheets[UploadPage[Page]];
            eclapp.Columns.Autofit;

            //定位欄位座標
            TCol := 0;
            for Row := 1 to 10 do
            begin
              for Col := 1 to 10 do
              begin
                if (Pos('RY', Sheet.Cells[Row, Col].Text) > 0) then
                begin
                  TRow := Row;
                  TCol := Col;
                  Break;
                end;
              end;
              if (TCol > 0) then
                Break;
            end;

            PlanDate := Date;
            for Col := TCol + 20 downto 1 do
            begin
              if (TryStrToDate(Sheet.Cells[TRow-1, Col].Value, TempDate)) then
              begin
                PlanDate := Sheet.Cells[TRow-1, Col].Value;
                Break;
              end;
            end;

            for Col := TCol to TCol + 20 do
            begin
              if (Pos('RY', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[0] := Col
              else if (Pos('NXH', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[1] := Col
              else if (Pos('DTT', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[2] := Col
              else if (Pos('MG', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[3] := Col
              else if (Pos('SKU', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[4] := Col
              else if (Pos('DH', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[5] := Col
              else if (Pos('LY', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[6] := Col
              else if (Pos('KH', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[7] := Col
              else if (Pos('迴轉', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[8] := Col
              else if (Pos('FOM', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[9] := Col
              else if (Pos('送料', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[10] := Col
              else if (Pos('成型', Sheet.Cells[TRow, Col].Text) > 0) then
                PlanBlock[11] := Col;
            end;

            CRow := TRow;
            Counter := 0;
            while (Counter < 20) do
            begin
              if (Sheet.Cells[CRow, PlanBlock[0]].Text = 'RY') then
                Inc(CRow);

              if (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 1) = 'Y') OR (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 2) = 'SJ') OR (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 3) = 'SLT') OR (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 2) = 'C-') OR (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 2) = 'HT') then
              begin
                if (Sheet.Cells[CRow, 1].Text <> '') then
                begin
                  TempStr := UpperCase(StringReplace(Sheet.Cells[CRow, 1].Text, ' ', '', [rfReplaceAll]));
                  Area := Copy(TempStr, 1, 1);
                  if (Pos(#$A, TempStr) > 0) then
                    TempStr := Copy(TempStr, 1, Pos(#$A, TempStr)-1);
                  Building := Copy(TempStr, 2, Pos('L', TempStr)-2);
                  if (Length(Building) = 1) then
                    Building := '0' + Building;
                  Building := Area + Building;
                  Lean := Copy(TempStr, Pos('N', TempStr)+1, Length(TempStr)-Pos('N', TempStr));
                  if (Length(Lean) = 1) then
                    Lean := 'Lean0' + Lean;
                end;

                if (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 1) = 'Y') OR (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 2) = 'SJ') then
                begin
                  if(Sheet.Cells[CRow, PlanBlock[7]].Text <> '') then
                  begin
                    if (PlanBlock[8] > 0) then
                    begin
                      TempStr := StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[8]].Text, 'T', '', [rfReplaceAll]), ' ', '', [rfReplaceAll]);

                      if Pos('-', TempStr) > 0 then
                      begin
                        CycleStart := StrToInt(Copy(TempStr, 1, Pos('-', TempStr)-1));
                        CycleEnd := StrToInt(Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr)));
                      end
                      else begin
                        CycleStart := StrToInt(TempStr);
                        CycleEnd := StrToInt(TempStr);
                      end;
                    end;

                    with QTemp do
                    begin
                      Active := false;
                      Fields.Clear;
                      SQL.Clear;
                      SQL.Add('DECLARE @RY VARCHAR(20) = ''' + Sheet.Cells[CRow, PlanBlock[0]].Text + ''';');
                      SQL.Add('SELECT DDZL.DDBH, DDZL.RYTYPE,');
                      SQL.Add('MIN(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MinCycle,');
                      SQL.Add('MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MaxCycle FROM DDZL');
                      SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = DDZL.DDBH');
                      SQL.Add('WHERE SMDD.GXLB = ''A'' AND DDZL.DDBH = CASE WHEN LEN(@RY) - LEN(REPLACE(@RY, ''-'', '''')) < 2 THEN @RY ELSE SUBSTRING(@RY, 1, LEN(@RY) - CHARINDEX(''-'', REVERSE(@RY))) END');
                      SQL.Add('GROUP BY DDZL.DDBH, DDZL.RYTYPE');
                      Active := true;

                      NotExistRY := '';
                      if (RecordCount = 0) then
                        NotExistRY := Sheet.Cells[CRow, PlanBlock[0]].Text;
                    end;

                    with Query_1D do
                    begin
                      Append;
                      FieldByName('Building').Value := Building;
                      FieldByName('Lean').Value := Lean;
                      FieldByName('PlanDate').Value := PlanDate;
                      if (PlanBlock[0] > 0) then
                      begin
                        FieldByName('RY').Value := QTemp.FieldByName('DDBH').AsString;
                        RY := FieldByName('RY').AsString;
                      end;
                      if (PlanBlock[1] > 0) then
                      begin
                        FieldByName('ShipDate').Value := Sheet.Cells[CRow, PlanBlock[1]].Text;
                        ShipDate := FieldByName('ShipDate').AsDateTime;
                      end;
                      if (PlanBlock[2] > 0) then
                      begin
                        FieldByName('NT').Value := StringReplace(StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[2]].Text, ' ', '', [rfReplaceAll]), '(', ' (', [rfReplaceAll]), '亮', '', [rfReplaceAll]);
                        NT := FieldByName('NT').AsString;
                      end;
                      if (PlanBlock[3] > 0) then
                      begin
                        FieldByName('BUYNO').Value := Sheet.Cells[CRow, PlanBlock[3]].Text;
                        BUYNO := FieldByName('BUYNO').AsString;
                      end;
                      if (PlanBlock[4] > 0) then
                      begin
                        FieldByName('ARTICLE').Value := Sheet.Cells[CRow, PlanBlock[4]].Text;
                        SKU := FieldByName('ARTICLE').AsString;
                      end;
                      if (PlanBlock[5] > 0) then
                      begin
                        FieldByName('RYPairs').Value := Sheet.Cells[CRow, PlanBlock[5]].Text;
                        RYPairs := FieldByName('RYPairs').AsInteger;
                      end;
                      if (PlanBlock[6] > 0) then
                      begin
                        FieldByName('DAOMH').Value := Sheet.Cells[CRow, PlanBlock[6]].Text;
                        DAOMH := FieldByName('DAOMH').AsString;
                      end;
                      if (PlanBlock[9] > 0) then
                      begin
                        FieldByName('XTMH').Value := Sheet.Cells[CRow, PlanBlock[9]].Text;
                        XTMH := FieldByName('XTMH').AsString;
                      end;
                      if (PlanBlock[10] > 0) then
                      begin
                        TempStr := Sheet.Cells[CRow, PlanBlock[10]].Text;
                        if (TempStr <> '') then
                        begin
                          TempStr := StringReplace(Copy(TempStr, Pos(' ', TempStr), Length(TempStr)-Pos(' ', TempStr)+1), ' ', '', [rfReplaceAll]);
                          StartTime := Copy(TempStr, 1, Pos('-', TempStr)-1);
                          if (Pos(':', StartTime) = 2) then
                            StartTime := '0' + StartTime;
                          EndTime := Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr));
                          if (Pos(':', EndTime) = 2) then
                            EndTime := '0' + EndTime;
                          FieldByName('DeliveryTime').Value := StartTime + ' - ' + EndTime;
                          DeliveryTime := StartTime + ' - ' + EndTime;
                        end
                        else begin
                          FieldByName('DeliveryTime').Value := DeliveryTime;
                        end;
                      end;
                      if (PlanBlock[11] > 0) then
                      begin
                        TempStr := Sheet.Cells[CRow, PlanBlock[11]].Text;
                        if (TempStr <> '') then
                        begin
                          TempStr := StringReplace(TempStr, ' ', '', [rfReplaceAll]);
                          StartTime := Copy(TempStr, 1, Pos('-', TempStr)-1);
                          if (Pos(':', StartTime) = 2) then
                            StartTime := '0' + StartTime;
                          EndTime := Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr));
                          if (Pos(':', EndTime) = 2) then
                            EndTime := '0' + EndTime;
                          FieldByName('AssemblyTime').Value := StartTime + ' - ' + EndTime;
                          AssemblyTime := StartTime + ' - ' + EndTime;
                        end
                        else begin
                          FieldByName('AssemblyTime').Value := AssemblyTime;
                        end;
                      end;
                      if (QTemp.FieldByName('RYTYPE').AsString = 'SLT') then
                      begin
                        FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
                        Remark := FieldByName('Remark').AsString;
                      end
                      else begin
                        Remark := '';
                      end;
                      if (PlanBlock[8] > 0) then
                      begin
                        FieldByName('MinCycle').Value := QTemp.FieldByName('MinCycle').AsInteger;
                        FieldByName('MaxCycle').Value := QTemp.FieldByName('MaxCycle').AsInteger;
                        FieldByName('CycleStart').Value := CycleStart;
                        FieldByName('CycleEnd').Value := CycleEnd;
                        MinCycle := FieldByName('MinCycle').AsInteger;
                        MaxCycle := FieldByName('MaxCycle').AsInteger;
                      end;
                      if (PlanBlock[7] > 0) then
                        FieldByName('Pairs').Value := Sheet.Cells[CRow, PlanBlock[7]].Text;
                    end;

                    Counter := 0;
                    if (NotExistRY <> '') then
                    begin
                      Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + Query_1D.FieldByName('Building').AsString + #13#10 + '　Lean: ' + Query_1D.FieldByName('Lean').AsString + #13#10 + '　RY: ' + NotExistRY), 'WARNING', MB_OK + MB_ICONWARNING);
                      Query_1D.FieldByName('YN').Value := '2';
                    end;
                  end
                  else begin
                    with QTemp do
                    begin
                      Active := false;
                      Fields.Clear;
                      SQL.Clear;
                      SQL.Add('DECLARE @RY VARCHAR(20) = ''' + Sheet.Cells[CRow, PlanBlock[0]].Text + ''';');
                      SQL.Add('SELECT DDZL.DDBH, DDZL.RYTYPE,');
                      SQL.Add('MIN(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MinCycle,');
                      SQL.Add('MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MaxCycle FROM DDZL');
                      SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = DDZL.DDBH');
                      SQL.Add('WHERE SMDD.GXLB = ''A'' AND DDZL.DDBH = CASE WHEN LEN(@RY) - LEN(REPLACE(@RY, ''-'', '''')) < 2 THEN @RY ELSE SUBSTRING(@RY, 1, LEN(@RY) - CHARINDEX(''-'', REVERSE(@RY))) END');
                      SQL.Add('GROUP BY DDZL.DDBH, DDZL.RYTYPE');
                      Active := true;

                      NotExistRY := '';
                      if (RecordCount = 0) then
                        NotExistRY := Sheet.Cells[CRow, PlanBlock[0]].Text;
                    end;

                    RY := QTemp.FieldByName('DDBH').AsString;
                    ShipDate := Sheet.Cells[CRow, PlanBlock[1]];
                    NT := StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[2]].Text, ' ', '', [rfReplaceAll]), '(', ' (', [rfReplaceAll]);
                    BUYNO := Sheet.Cells[CRow, PlanBlock[3]].Text;
                    SKU := Sheet.Cells[CRow, PlanBlock[4]].Text;
                    RYPairs := Sheet.Cells[CRow, PlanBlock[5]].Text;
                    DAOMH := Sheet.Cells[CRow, PlanBlock[6]].Text;
                    XTMH := Sheet.Cells[CRow, PlanBlock[9]].Text;
                    MinCycle := QTemp.FieldByName('MinCycle').AsInteger;
                    MaxCycle := QTemp.FieldByName('MaxCycle').AsInteger;
                    Remark := '';
                  end;
                end
                else if (Copy(Sheet.Cells[CRow, PlanBlock[0]].Text, 1, 2) = 'C-') then
                begin
                  if(Sheet.Cells[CRow, PlanBlock[7]].Text <> '') then
                  begin
                    if (PlanBlock[8] > 0) then
                    begin
                      TempStr := StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[8]].Text, 'T', '', [rfReplaceAll]), ' ', '', [rfReplaceAll]);

                      if Pos('-', TempStr) > 0 then
                      begin
                        CycleStart := StrToInt(Copy(TempStr, 1, Pos('-', TempStr)-1));
                        CycleEnd := StrToInt(Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr)));
                      end
                      else begin
                        CycleStart := StrToInt(TempStr);
                        CycleEnd := StrToInt(TempStr);
                      end;
                    end;

                    for Col := PlanBlock[1] to PlanBlock[5] do
                    begin
                      if (Sheet.Cells[CRow, Col].Text <> '') then
                      begin
                        SubRY := Sheet.Cells[CRow, Col].Text;
                        Break;
                      end;
                    end;

                    with QTemp do
                    begin
                      Active := false;
                      Fields.Clear;
                      SQL.Clear;
                      SQL.Add('SELECT DEVCODE, REPLACE(DAOMH, ''LY-'', '''') AS DAOMH, REPLACE(XTMH, ''TV-'', '''') AS XTMH FROM KFXXZL');
                      SQL.Add('WHERE DEVCODE = ''' + SubRY + '''');
                      Active := true;

                      NotExistRY := '';
                      if (RecordCount = 0) then
                        NotExistRY := SubRY;
                    end;

                    with Query_1D do
                    begin
                      Append;
                      FieldByName('Building').Value := Building;
                      FieldByName('Lean').Value := Lean;
                      FieldByName('PlanDate').Value := PlanDate;
                      if (PlanBlock[0] > 0) then
                      begin
                        FieldByName('RY').Value := Sheet.Cells[CRow, PlanBlock[0]].Text;
                        FieldByName('SubRY').Value := SubRY;
                        RY := FieldByName('RY').AsString;
                      end;
                      if (PlanBlock[4] > 0) then
                      begin
                        FieldByName('ARTICLE').Value := QTemp.FieldByName('DEVCODE').AsString;
                        SKU := FieldByName('ARTICLE').AsString;
                      end;
                      if (PlanBlock[7] > 0) then
                      begin
                        FieldByName('RYPairs').Value := Sheet.Cells[CRow, PlanBlock[7]].Text;
                        RYPairs := FieldByName('RYPairs').AsInteger;
                      end;
                      if (PlanBlock[6] > 0) then
                      begin
                        FieldByName('DAOMH').Value := QTemp.FieldByName('DAOMH').AsString;
                        DAOMH := FieldByName('DAOMH').AsString;
                      end;
                      if (PlanBlock[9] > 0) then
                      begin
                        FieldByName('XTMH').Value := QTemp.FieldByName('XTMH').AsString;
                        XTMH := FieldByName('XTMH').AsString;
                      end;
                      if (PlanBlock[10] > 0) then
                      begin
                        TempStr := Sheet.Cells[CRow, PlanBlock[10]].Text;
                        if (TempStr <> '') then
                        begin
                          TempStr := StringReplace(Copy(TempStr, Pos(' ', TempStr), Length(TempStr)-Pos(' ', TempStr)+1), ' ', '', [rfReplaceAll]);
                          StartTime := Copy(TempStr, 1, Pos('-', TempStr)-1);
                          if (Pos(':', StartTime) = 2) then
                            StartTime := '0' + StartTime;
                          EndTime := Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr));
                          if (Pos(':', EndTime) = 2) then
                            EndTime := '0' + EndTime;
                          FieldByName('DeliveryTime').Value := StartTime + ' - ' + EndTime;
                          DeliveryTime := StartTime + ' - ' + EndTime;
                        end
                        else begin
                          FieldByName('DeliveryTime').Value := DeliveryTime;
                        end;
                      end;
                      if (PlanBlock[11] > 0) then
                      begin
                        TempStr := Sheet.Cells[CRow, PlanBlock[11]].Text;
                        if (TempStr <> '') then
                        begin
                          TempStr := StringReplace(TempStr, ' ', '', [rfReplaceAll]);
                          StartTime := Copy(TempStr, 1, Pos('-', TempStr)-1);
                          if (Pos(':', StartTime) = 2) then
                            StartTime := '0' + StartTime;
                          EndTime := Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr));
                          if (Pos(':', EndTime) = 2) then
                            EndTime := '0' + EndTime;
                          FieldByName('AssemblyTime').Value := StartTime + ' - ' + EndTime;
                          AssemblyTime := StartTime + ' - ' + EndTime;
                        end
                        else begin
                          FieldByName('AssemblyTime').Value := AssemblyTime;
                        end;
                      end;
                      if (PlanBlock[6] > 0) then
                      begin
                        FieldByName('Remark').Value := Sheet.Cells[CRow, PlanBlock[6]].Text;
                        Remark := FieldByName('Remark').AsString;
                      end;
                      if (PlanBlock[8] > 0) then
                      begin
                        FieldByName('MinCycle').Value := CycleStart;
                        FieldByName('MaxCycle').Value := CycleEnd;
                        FieldByName('CycleStart').Value := CycleStart;
                        FieldByName('CycleEnd').Value := CycleEnd;
                        MinCycle := FieldByName('MinCycle').AsInteger;
                        MaxCycle := FieldByName('MaxCycle').AsInteger;
                      end;
                      if (PlanBlock[7] > 0) then
                        FieldByName('Pairs').Value := Sheet.Cells[CRow, PlanBlock[7]].Text;
                    end;

                    Counter := 0;
                    if (NotExistRY <> '') then
                    begin
                      Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + Query_1D.FieldByName('Building').AsString + #13#10 + '　Lean: ' + Query_1D.FieldByName('Lean').AsString + #13#10 + '　RY: ' + NotExistRY), 'WARNING', MB_OK + MB_ICONWARNING);
                      Query_1D.FieldByName('YN').Value := '2';
                    end;
                  end;
                end
                else if (Sheet.Cells[CRow, PlanBlock[0]].Text = 'HT') then
                begin
                  with Query_1D do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanDate').Value := PlanDate;
                    FieldByName('RY').Value := 'HT';
                    FieldByName('MinCycle').Value := 0;
                    FieldByName('MaxCycle').Value := 0;
                    FieldByName('CycleStart').Value := 0;
                    FieldByName('CycleEnd').Value := 0;
                    FieldByName('Remark').Value := 'HANG TON (使用庫存)';
                  end;
                end
                else if (Sheet.Cells[CRow, PlanBlock[0]].Text = 'SLT') then
                begin
                  with Query_1D do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanDate').Value := PlanDate;
                    FieldByName('RY').Value := 'SLT';
                    FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
                  end;
                end;
              end
              else begin
                TempStr := StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[8]].Text, 'T', '', [rfReplaceAll]), ' ', '', [rfReplaceAll]);
                if (TryStrToInt(Sheet.Cells[CRow, PlanBlock[7]].Text, TempPairs)) AND (TempStr <> '') then
                begin
                  if Pos('-', TempStr) > 0 then
                  begin
                    CycleStart := StrToInt(Copy(TempStr, 1, Pos('-', TempStr)-1));
                    CycleEnd := StrToInt(Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr)));
                  end
                  else begin
                    CycleStart := StrToInt(TempStr);
                    CycleEnd := StrToInt(TempStr);
                  end;

                  with Query_1D do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanDate').Value := PlanDate;
                    FieldByName('RY').Value := RY;
                    FieldByName('ShipDate').Value := ShipDate;
                    FieldByName('NT').Value := NT;
                    FieldByName('BUYNO').Value := BUYNO;
                    FieldByName('ARTICLE').Value := SKU;
                    FieldByName('RYPairs').Value := RYPairs;
                    FieldByName('DAOMH').Value := DAOMH;
                    FieldByName('XTMH').Value := XTMH;
                    if (PlanBlock[10] > 0) then
                    begin
                      TempStr := Sheet.Cells[CRow, PlanBlock[10]].Text;
                      if (TempStr <> '') then
                      begin
                        TempStr := StringReplace(Copy(TempStr, Pos(' ', TempStr), Length(TempStr)-Pos(' ', TempStr)+1), ' ', '', [rfReplaceAll]);
                        StartTime := Copy(TempStr, 1, Pos('-', TempStr)-1);
                        if (Pos(':', StartTime) = 2) then
                          StartTime := '0' + StartTime;
                        EndTime := Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr));
                        if (Pos(':', EndTime) = 2) then
                          EndTime := '0' + EndTime;
                        FieldByName('DeliveryTime').Value := StartTime + ' - ' + EndTime;
                        DeliveryTime := StartTime + ' - ' + EndTime;
                      end
                      else begin
                        FieldByName('DeliveryTime').Value := DeliveryTime;
                      end;
                    end;
                    if (PlanBlock[11] > 0) then
                    begin
                      TempStr := Sheet.Cells[CRow, PlanBlock[11]].Text;
                      if (TempStr <> '') then
                      begin
                        TempStr := StringReplace(TempStr, ' ', '', [rfReplaceAll]);
                        StartTime := Copy(TempStr, 1, Pos('-', TempStr)-1);
                        if (Pos(':', StartTime) = 2) then
                          StartTime := '0' + StartTime;
                        EndTime := Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr));
                        if (Pos(':', EndTime) = 2) then
                          EndTime := '0' + EndTime;
                        FieldByName('AssemblyTime').Value := StartTime + ' - ' + EndTime;
                        AssemblyTime := StartTime + ' - ' + EndTime;
                      end
                      else begin
                        FieldByName('AssemblyTime').Value := AssemblyTime;
                      end;
                    end;
                    FieldByName('Remark').Value := Remark;
                    if (PlanBlock[8] > 0) then
                    begin
                      FieldByName('MinCycle').Value := MinCycle;
                      FieldByName('MaxCycle').Value := MaxCycle;
                      FieldByName('CycleStart').Value := CycleStart;
                      FieldByName('CycleEnd').Value := CycleEnd;
                    end;
                    if (PlanBlock[7] > 0) then
                      FieldByName('Pairs').Value := Sheet.Cells[CRow, PlanBlock[7]].Text;
                  end;

                  Counter := 0;
                  if (NotExistRY <> '') then
                  begin
                    Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + Query_1D.FieldByName('Building').AsString + #13#10 + '　Lean: ' + Query_1D.FieldByName('Lean').AsString + #13#10 + '　RY: ' + NotExistRY), 'WARNING', MB_OK + MB_ICONWARNING);
                    Query_1D.FieldByName('YN').Value := '2';
                  end;
                end;
              end;

              Inc(CRow);
              Inc(Counter);
            end;
          end;

          Self.Cursor := crDefault;
          P1D_Mode := 'Import';
          B1D5.Enabled := true;
          B1D6.Enabled := true;
          Query_1D.First;
          ShowMessage('Completed');
        end;

        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
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

procedure TScheduleUpload.DBGridEh_SGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query_S.FieldByName('YN').AsString = '0') AND (Column.Index >= 3) then
    DBGridEh_S.Canvas.Font.Color := clRed;
end;

procedure TScheduleUpload.BGCD2Click(Sender: TObject);
begin
  with Query_GCD do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh_GCD.Columns[4].ButtonStyle := cbsEllipsis;  
  DBGridEh_GCD.Columns[14].ButtonStyle := cbsAuto;
  BGCD5.Enabled := true;
  BGCD6.Enabled := true;
end;

procedure TScheduleUpload.BGCD3Click(Sender: TObject);
begin
  with Query_GCD do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BGCD5.Enabled := true;
  BGCD6.Enabled := true;
end;

procedure TScheduleUpload.BGCD4Click(Sender: TObject);
begin
  with Query_GCD do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh_GCD.Columns[4].ButtonStyle := cbsEllipsis;  
  DBGridEh_GCD.Columns[14].ButtonStyle := cbsAuto;
  BGCD5.Enabled := true;
  BGCD6.Enabled := true;
end;

procedure TScheduleUpload.BGCD5Click(Sender: TObject);
var
  i: integer;
  Lean: string;
begin
  try
    if (GCD_Mode = 'Normal') then
    begin
      Query_GCD.First;
      for i := 1 to Query_GCD.RecordCount do
      begin
        case Query_GCD.UpdateStatus of
          usInserted:
          begin
            if (Query_GCD.FieldByName('RY').IsNull) OR (Query_GCD.FieldByName('CycleStart').IsNull) OR (Query_GCD.FieldByName('CycleEnd').IsNull) then
            begin
              Query_GCD.Delete;
            end
            else begin
              Query_GCD.Edit;
              Query_GCD.FieldByName('UserID').Value := main.Edit1.Text;
              Query_GCD.FieldByName('GSBH').Value := main.Edit2.Text;
              UpdateSQL_GCD.Apply(ukInsert);
            end;
          end;

          usModified:
          begin
            if (Query_GCD.FieldByName('YN').Value = 0) then
            begin
              UpdateSQL_GCD.Apply(ukDelete);
            end
            else if (Query_GCD.FieldByName('RY').IsNull = false) AND (Query_GCD.FieldByName('CycleStart').IsNull = false) AND (Query_GCD.FieldByName('CycleEnd').IsNull = false) then
            begin
              Query_GCD.Edit;
              Query_GCD.FieldByName('UserID').Value := main.Edit1.text;
              UpdateSQL_GCD.Apply(ukModify);
            end;
          end;
        end;

        Query_GCD.Next;
      end;
    end
    else if (GCD_Mode = 'Import') then
    begin
      Query_GCD.First;
      Lean := '';
      for i := 1 to Query_GCD.RecordCount do
      begin
        if (Query_GCD.FieldByName('Building').AsString + '-' + Query_GCD.FieldByName('Lean').AsString + '-' + FormatDateTime('yyyy/MM/dd', Query_GCD.FieldByName('PlanDate').AsDateTime) <> Lean) then
        begin
          with QUpdate do
          begin
            SQL.Clear;
            SQL.Add('DELETE FROM ProductionPlan');
            SQL.Add('WHERE Building = ''' + Query_GCD.FieldByName('Building').AsString + ''' AND Lean = ''' + Query_GCD.FieldByName('Lean').AsString + ''' AND PlanDate = ''' + FormatDateTime('yyyy/MM/dd', Query_GCD.FieldByName('PlanDate').AsDateTime) + ''' AND PlanType = ''GCD''');
            SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
            ExecSQL;
          end;
          Lean := Query_GCD.FieldByName('Building').AsString + '-' + Query_GCD.FieldByName('Lean').AsString + '-' + FormatDateTime('yyyy/MM/dd', Query_GCD.FieldByName('PlanDate').AsDateTime);
        end;

        case Query_GCD.UpdateStatus of
          usInserted:
          begin
            if (Query_GCD.FieldByName('RY').IsNull) OR (Query_GCD.FieldByName('CycleStart').IsNull) OR (Query_GCD.FieldByName('CycleEnd').IsNull) then
            begin
              Query_GCD.Delete;
            end
            else begin
              Query_GCD.Edit;
              Query_GCD.FieldByName('UserID').Value := main.Edit1.Text; 
              Query_GCD.FieldByName('GSBH').Value := main.Edit2.Text;
              UpdateSQL_GCD.Apply(ukInsert);
            end;
          end;
        end;

        Query_GCD.Next;
      end;
    end;

    DTP_GCD.Date := GCD_Date;
    Query_GCD.Active := false;
    Query_GCD.CachedUpdates := false;
    Query_GCD.RequestLive := false;
    Query_GCD.Active := true;
    DBGridEh_GCD.Columns[4].ButtonStyle := cbsNone;
    DBGridEh_GCD.Columns[14].ButtonStyle := cbsNone;
    BGCD5.Enabled := false;
    BGCD6.Enabled := false;
    if (GCD_Mode = 'Import') then
    begin
      GCD_Mode := 'Normal';
      ShowMessage('Completed');
    end;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TScheduleUpload.BGCD6Click(Sender: TObject);
begin
  with Query_GCD do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh_GCD.Columns[4].ButtonStyle := cbsNone; 
  DBGridEh_GCD.Columns[14].ButtonStyle := cbsNone;
  GCD_Mode := 'Normal';
  BGCD5.Enabled := false;
  BGCD6.Enabled := false;
end;

procedure TScheduleUpload.BGCD7Click(Sender: TObject);
begin
  Close;
end;

procedure TScheduleUpload.BGCD8Click(Sender: TObject);
var
  Page, i, j, Row, Col, TRow, TCol, CRow: integer;
  Counter, CycleStart, CycleEnd: integer;
  eclApp, Sheet: OleVariant;
  SelectedFileName, Area, Building, Lean, TempStr, NotExistRY: string;
  PlanBlock: array[0..2] of array[0..7] of integer;
  PlanDate: array[0..2] of TDate;
begin
  try
    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);

      with Query_GCD do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanType, PP.PlanDate, PP.Seq, PP.RY, DDZL.ShipDate, PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO,');
        SQL.Add('DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH, CASE WHEN ISNUMERIC(SC.sl) = 1 THEN CAST(SC.sl AS INT) ELSE 0 END AS RYPairs,');
        SQL.Add('PP.Pairs, PP.CycleStart, PP.CycleEnd, SMDD.MinCycle, SMDD.MaxCycle, PP.Remark, PP.UserID, PP.UserDate, PP.GSBH, PP.YN FROM ProductionPlan AS PP');
        SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
        SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
        SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = PP.RY');
        SQL.Add('LEFT JOIN (');
        SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
        SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
        SQL.Add('  WHERE GXLB = ''A''');
        SQL.Add('  GROUP BY YSBH');
        SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
        SQL.Add('WHERE 1 = 0');
        Active := true;

        RequestLive := true;
        CachedUpdates := true;
      end;

      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.workbooks.Open(OpenDialog1.FileName);

        SchedulePage := TSchedulePage.Create(Self);
        SchedulePage.PageBox.Clear;
        for i := 1 to eclApp.WorkSheets.Count do
        begin
          if (eclApp.WorkSheets[i].Visible) then
            SchedulePage.PageBox.Items.Add(eclApp.WorkSheets[i].Name);
        end;
        if (SchedulePage.ShowModal = mrOK) then
        begin
          SetCursor(Screen.Cursors[crHourGlass]);

          for Page := 0 to Length(UploadPage) - 1 do
          begin
            Sheet := eclApp.WorkSheets[UploadPage[Page]];
            eclapp.Columns.Autofit;

            //定位欄位座標
            TCol := 0;
            for Row := 1 to 10 do
            begin
              for Col := 1 to 10 do
              begin
                if (Sheet.Cells[Row, Col].Text = 'RY') then
                begin
                  TRow := Row;
                  TCol := Col;
                  Break;
                end;
              end;
              if (TCol > 0) then
                Break;
            end;

            for Col := TCol to TCol + 8 do
            begin
              if (Pos('RY', Sheet.Cells[TRow, Col].Text) > 0) then
              begin
                PlanBlock[0][0] := Col;
                PlanDate[0] := Sheet.Cells[TRow-1, Col].Value;
              end
              else if (Pos('XH', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][1] := Col
              else if (Pos('NT', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][2] := Col
              else if (Pos('MG', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][3] := Col
              else if (Pos('SKU', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][4] := Col
              else if (Pos('SL', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][5] := Col
              else if (Pos('LY', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][6] := Col
              else if (Pos('回轉數', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[0][7] := Col;
            end;

            for Col := PlanBlock[0][7] to PlanBlock[0][7] + 10 do
            begin
              if (Sheet.Cells[TRow, Col].Text = 'RY') then
              begin
                TCol := Col;
                Break;
              end;
            end;

            for Col := TCol to TCol + 8 do
            begin
              if (Pos('RY', Sheet.Cells[TRow, Col].Text) > 0) then
              begin
                PlanBlock[1][0] := Col;
                PlanDate[1] := Sheet.Cells[TRow-1, Col].Value;
              end
              else if (Pos('XH', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][1] := Col
              else if (Pos('NT', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][2] := Col
              else if (Pos('MG', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][3] := Col
              else if (Pos('SKU', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][4] := Col
              else if (Pos('SL', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][5] := Col
              else if (Pos('LY', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][6] := Col
              else if (Pos('回轉數', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[1][7] := Col;
            end;

            for Col := PlanBlock[1][7] to PlanBlock[1][7] + 10 do
            begin
              if (Sheet.Cells[TRow, Col].Text = 'RY') then
              begin
                TCol := Col;
                Break;
              end;
            end;

            for Col := TCol to TCol + 8 do
            begin
              if (Pos('RY', Sheet.Cells[TRow, Col].Text) > 0) then
              begin
                PlanBlock[2][0] := Col;
                PlanDate[2] := Sheet.Cells[TRow-1, Col].Value;
              end
              else if (Pos('XH', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][1] := Col
              else if (Pos('NT', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][2] := Col
              else if (Pos('MG', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][3] := Col
              else if (Pos('SKU', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][4] := Col
              else if (Pos('SL', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][5] := Col
              else if (Pos('LY', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][6] := Col
              else if (Pos('回轉數', Sheet.Cells[TRow, Col]) > 0) then
                PlanBlock[2][7] := Col;
            end;

            for i := 0 to 2 do
            begin
              CRow := TRow;
              Counter := 0;
              while (Counter < 20) do
              begin
                if (Sheet.Cells[CRow, PlanBlock[i][0]].Text = 'RY') then
                begin
                  TempStr := UpperCase(StringReplace(Sheet.Cells[CRow, 1].Text, ' ', '', [rfReplaceAll]));
                  Area := Copy(TempStr, 1, 1);
                  if (Pos(#$A, TempStr) > 0) then
                    TempStr := Copy(TempStr, 1, Pos(#$A, TempStr)-1);
                  Building := Copy(TempStr, 2, Pos('L', TempStr)-2);
                  if (Length(Building) = 1) then
                    Building := '0' + Building;
                  Building := Area + Building;
                  Lean := 'Lean0' + Copy(TempStr, Pos('N', TempStr)+1, Length(TempStr)-Pos('N', TempStr));
                  Inc(CRow);
                  Counter := 0;
                end;

                if (Copy(Sheet.Cells[CRow, PlanBlock[i][0]].Text, 1, 1) = 'Y') OR (Copy(Sheet.Cells[CRow, PlanBlock[i][0]].Text, 1, 2) = 'SJ') then
                begin
                  if (PlanBlock[i][7] > 0) then
                  begin
                    TempStr := StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[i][7]].Text, 'T', '', [rfReplaceAll]), ' ', '', [rfReplaceAll]);

                    if Pos('-', TempStr) > 0 then
                    begin
                      CycleStart := StrToInt(Copy(TempStr, 1, Pos('-', TempStr)-1));
                      CycleEnd := StrToInt(Copy(TempStr, Pos('-', TempStr)+1, Length(TempStr)-Pos('-', TempStr)));
                    end
                    else begin
                      CycleStart := StrToInt(TempStr);
                      CycleEnd := StrToInt(TempStr);
                    end;
                  end;

                  with QTemp do
                  begin
                    Active := false;
                    Fields.Clear;
                    SQL.Clear;
                    SQL.Add('DECLARE @RY VARCHAR(20) = ''' + Sheet.Cells[CRow, PlanBlock[i][0]].Text + ''';');
                    SQL.Add('SELECT DDZL.DDBH, DDZL.RYTYPE,');
                    SQL.Add('MIN(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MinCycle,');
                    SQL.Add('MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(SUBSTRING(SMDD.DDBH, LEN(SMDD.DDBH)-2, 3) AS INT) END) AS MaxCycle FROM DDZL');
                    SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = DDZL.DDBH');
                    SQL.Add('WHERE SMDD.GXLB = ''A'' AND DDZL.DDBH = CASE WHEN LEN(@RY) - LEN(REPLACE(@RY, ''-'', '''')) < 2 THEN @RY ELSE SUBSTRING(@RY, 1, LEN(@RY) - CHARINDEX(''-'', REVERSE(@RY))) END');
                    SQL.Add('GROUP BY DDZL.DDBH, DDZL.RYTYPE');
                    Active := true;

                    NotExistRY := '';
                    if (RecordCount = 0) then
                      NotExistRY := Sheet.Cells[CRow, PlanBlock[i][0]].Text;
                  end;

                  with Query_GCD do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanType').Value := 'GCD';
                    FieldByName('PlanDate').Value := PlanDate[i];
                    if (PlanBlock[i][0] > 0) then
                      FieldByName('RY').Value := QTemp.FieldByName('DDBH').AsString;
                    if (PlanBlock[i][1] > 0) then
                      FieldByName('ShipDate').Value := Sheet.Cells[CRow, PlanBlock[i][1]].Text;
                    if (PlanBlock[i][2] > 0) then
                      FieldByName('NT').Value := StringReplace(StringReplace(StringReplace(Sheet.Cells[CRow, PlanBlock[i][2]].Text, ' ', '', [rfReplaceAll]), '(', ' (', [rfReplaceAll]), '亮', '', [rfReplaceAll]);
                    if (PlanBlock[i][3] > 0) then
                      FieldByName('BUYNO').Value := Sheet.Cells[CRow, PlanBlock[i][3]].Text;
                    if (PlanBlock[i][4] > 0) then
                      FieldByName('ARTICLE').Value := Sheet.Cells[CRow, PlanBlock[i][4]].Text;
                    if (PlanBlock[i][5] > 0) then
                      FieldByName('RYPairs').Value := Sheet.Cells[CRow, PlanBlock[i][5]].Text;
                    if (PlanBlock[i][6] > 0) then
                      FieldByName('DAOMH').Value := Sheet.Cells[CRow, PlanBlock[i][6]].Text;
                    if (QTemp.FieldByName('RYTYPE').AsString = 'SLT') then
                      FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
                    if (PlanBlock[i][7] > 0) then
                    begin
                      FieldByName('MinCycle').Value := QTemp.FieldByName('MinCycle').AsInteger;
                      FieldByName('MaxCycle').Value := QTemp.FieldByName('MaxCycle').AsInteger;
                      FieldByName('CycleStart').Value := CycleStart;
                      FieldByName('CycleEnd').Value := CycleEnd;
                    end;
                  end;

                  Counter := 0;
                  if (NotExistRY <> '') then
                  begin
                    Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + Query_GCD.FieldByName('Building').AsString + #13#10 + '　Lean: ' + Query_GCD.FieldByName('Lean').AsString + #13#10 + '　RY: ' + NotExistRY), 'WARNING', MB_OK + MB_ICONWARNING);
                    Query_GCD.FieldByName('YN').Value := '2';
                  end;
                end
                else if (Copy(Sheet.Cells[CRow, PlanBlock[i][0]].Text, 1, 3) = 'SLT') then
                begin
                  with Query_GCD do
                  begin
                    Append;
                    FieldByName('Building').Value := Building;
                    FieldByName('Lean').Value := Lean;
                    FieldByName('PlanType').Value := 'GCD';
                    FieldByName('PlanDate').Value := PlanDate[i];
                    FieldByName('MinCycle').Value := 0;
                    FieldByName('MaxCycle').Value := 0;
                    FieldByName('CycleStart').Value := 0;
                    FieldByName('CycleEnd').Value := 0;
                    if (PlanBlock[i][0] > 0) then
                      FieldByName('RY').Value := 'SLT';
                    FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
                  end;
                end;

                Inc(CRow);
                Inc(Counter);
              end;
            end;
          end;

          Self.Cursor := crDefault;
          GCD_Mode := 'Import';
          BGCD5.Enabled := true;
          BGCD6.Enabled := true;
          Query_GCD.First;
          ShowMessage('Completed');
        end;

        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
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

procedure TScheduleUpload.BGCD9Click(Sender: TObject);
var
  i: integer;
begin
  ExportDialog := TExportDialog.Create(Self);
  ExportDialog.SetExportMode('GCD', '', DTP_GCD.Date, CB_Building_GCD.Text);
  ExportDialog.ShowModal;
end;

procedure TScheduleUpload.DBGridEh_GCDGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query_GCD.FieldByName('YN').AsString = '0') OR (Query_GCD.FieldByName('YN').AsString = '2') then
    DBGridEh_GCD.Canvas.Font.Color := clRed;
end;

procedure TScheduleUpload.DBGridEh_GCDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = ';') then
    key := #0;
end;

procedure TScheduleUpload.Query_GCDAfterOpen(DataSet: TDataSet);
begin
  BGCD2.Enabled := true;
  BGCD3.Enabled := true;
  BGCD4.Enabled := true;
  BGCD5.Enabled := false;
  BGCD6.Enabled := false;
  DBGridEh_GCD.Columns[4].ButtonStyle := cbsNone;
  DBGridEh_GCD.Columns[14].ButtonStyle := cbsNone;
end;

procedure TScheduleUpload.Query_GCDNewRecord(DataSet: TDataSet);
begin
  Query_GCD.FieldByName('Building').Value := GCD_Building;
  Query_GCD.FieldByName('Lean').Value := GCD_Lean;
  Query_GCD.FieldByName('PlanType').Value := 'GCD';
  Query_GCD.FieldByName('PlanDate').Value := GCD_Date;
end;

procedure TScheduleUpload.Button_QGCDClick(Sender: TObject);
begin
  with Query_GCD do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    SQL.Clear;
    SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanType, PP.PlanDate, PP.Seq, PP.RY, DDZL.ShipDate, PP.NT, SUBSTRING(DDZL.BUYNO, 5, 2) + '' BUY'' AS BUYNO,');
    SQL.Add('DDZL.ARTICLE, REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH, SC.RYPairs,');
    SQL.Add('PP.Pairs, PP.CycleStart, PP.CycleEnd, SMDD.MinCycle, SMDD.MaxCycle, PP.Remark, PP.UserID, PP.UserDate, PP.GSBH, PP.YN FROM ProductionPlan AS PP');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END AS RY,');
    SQL.Add('  MAX(CONVERT(VARCHAR, schedule_date, 111) + ''-'' + CAST(ry_index AS VARCHAR)) AS Date, SUM(CASE WHEN ISNUMERIC(sl) = 1 THEN CAST(sl AS INT) ELSE 0 END) AS RYPairs FROM schedule_crawler');
    SQL.Add('  WHERE building_no = ''' + CB_Building_GCD.Text + ''' AND lean_no = ''' + CB_Lean_GCD.Text + '''');
    SQL.Add('  AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('  GROUP BY building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END');
    SQL.Add(') AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND SC.RY = PP.RY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
    SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
    SQL.Add('  WHERE GXLB = ''A''');
    SQL.Add('  GROUP BY YSBH');
    SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
    SQL.Add('WHERE PP.Building = ''' + CB_Building_GCD.Text + ''' AND PP.Lean = ''' + CB_Lean_GCD.Text + ''' AND PP.PlanType = ''GCD'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP_GCD.Date) + '''');
    SQL.Add('AND PP.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY ISNULL(PP.Seq, 99), CONVERT(SmallDateTime, LEFT(SC.Date, 10)), CAST(SUBSTRING(SC.Date, CHARINDEX(''-'', SC.Date) + 1, LEN(SC.Date) - CHARINDEX(''-'', SC.Date)) AS INT)');
    Active := true;
  end;

  GCD_Date := DTP_GCD.Date;
  GCD_Building := CB_Building_GCD.Text;
  GCD_Lean := CB_Lean_GCD.Text;
  GCD_RY := '';
end;

procedure TScheduleUpload.DBGridEh_GCDColumns3EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  RYDialog := TRYDialog.Create(Self);
  RYDialog.Init(GCD_Building, GCD_Lean, 'Query_GCD', '', Nil, Nil);
  RYDialog.ED_RY.Text := GCD_RY;
  RYDialog.Button1Click(Nil);
  RYDialog.ShowModal;
end;

procedure TScheduleUpload.DBGridEh_HCGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Column.FieldName = 'Capacity_His') AND (Query_HC.FieldByName('Capacity_His').AsString = 'NEW') then
  begin
    DBGridEh_HC.Canvas.Font.Color := clRed;
  end;
end;

procedure TScheduleUpload.CB_HC1Click(Sender: TObject);
begin
  if (CB_HC1.Checked) then
    CB_HC2.Checked := false;
end;

procedure TScheduleUpload.CB_HC2Click(Sender: TObject);
begin
  if (CB_HC2.Checked) then
    CB_HC1.Checked := false;
end;

procedure TScheduleUpload.Button1Click(Sender: TObject);
begin
  MCF_Mode := CB_Mode.Text;
  MCF_Labor := StrToInt(ED_Labor.Text);

  with QTemp do
  begin
    Active := false;
    SQL.Clear;

    if (CB_Section.Text = 'Assembly') then
    begin
      Chart_MCF.Title.Text.Clear;
      Chart_MCF.Title.Text.Add('Assembly');

      SQL.Add('IF OBJECT_ID(''tempdb..#Planned'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Planned END;');
                  
      SQL.Add('IF OBJECT_ID(''tempdb..#Actual'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Actual END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IE'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IE END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IEVer'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IEVer END;');
      ExecSQL;

      SQL.Add('SELECT XieXing, SheHao,');
      SQL.Add('MAX(CASE WHEN GXLB = ''C'' THEN BZRS + BZJS END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN GXLB = ''S'' THEN BZRS + BZJS END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN GXLB = ''A'' THEN BZRS + BZJS END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN GXLB = ''P'' THEN BZRS + BZJS END) AS Labor_P INTO #IE FROM SCXXCL');
      SQL.Add('WHERE BZLB = ''3''');
      SQL.Add('GROUP BY XieXing, SheHao');

      SQL.Add('SELECT LV.XieXing, LV.SheHao,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Cutting'' THEN IE.IE_DL + IE.IDL END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Stitching'' THEN IE.IE_DL + IE.IDL END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Assembly'' THEN IE.IE_DL + IE.IDL END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Packing'' THEN IE.IE_DL + IE.IDL END) AS Labor_P INTO #IEVer FROM (');
      SQL.Add('  SELECT XieXing, SheHao, Production_Category AS GXLB, MAX(VERSION) AS Version FROM IE_ARTICLEDATA');
      SQL.Add('  WHERE Production_Category IN (''Cutting'', ''Stitching'', ''Assembly'', ''Packing'') AND XieXing <> ''''');
      SQL.Add('  GROUP BY XieXing, SheHao, Production_Category');
      SQL.Add(') AS LV');
      SQL.Add('LEFT JOIN IE_ARTICLEDATA AS IE ON IE.XieXing = LV.XieXing AND IE.SheHao = LV.SheHao AND IE.Production_Category = LV.GXLB AND IE.VERSION = LV.Version');
      SQL.Add('GROUP BY LV.XieXing, LV.SheHao');

      SQL.Add('SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, Seq INTO #Planned FROM (');
      SQL.Add('  SELECT LEFT(CONVERT(VARCHAR, SC.schedule_date, 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('  ISNULL(ISNULL(IEVer.Labor_A, IE.Labor_A), 0) + ISNULL(ISNULL(IEVer.Labor_P, IE.Labor_P), 0) AS Labor,');
      SQL.Add('  ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date, SC.ry_index) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('  LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_MCF2.Date)) + ''' AND SC.schedule_date <= CONVERT(VARCHAR, GetDate(), 111) AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, 0 AS Seq FROM (');
      SQL.Add('    SELECT LEFT(CONVERT(VARCHAR, DATEADD(MM, 1, SC.schedule_date), 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('    ISNULL(ISNULL(IEVer.Labor_A, IE.Labor_A), 0) + ISNULL(ISNULL(IEVer.Labor_P, IE.Labor_P), 0) AS Labor,');
      SQL.Add('    ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date DESC, SC.ry_index DESC) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('    LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('    LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('    WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_MCF1.Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(IncMonth(DTP_MCF1.Date, -1))) + ''' AND SC.schedule_date <= CONVERT(VARCHAR, GetDate(), 111) AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('    AND SC.GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('  ) AS LastMonth');
      SQL.Add('  WHERE Seq = 1');
      SQL.Add(') AS Planned');

      SQL.Add('SELECT LEFT(CONVERT(VARCHAR, PP.PlanDate, 111), 7) AS Month, PP.Building, PP.Lean, PP.RY, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('ISNULL(ISNULL(IEVer.Labor_A, IE.Labor_A), 0) + ISNULL(ISNULL(IEVer.Labor_P, IE.Labor_P), 0) AS Labor,');
      SQL.Add('ROW_NUMBER() OVER(PARTITION BY LEFT(CONVERT(VARCHAR, PP.PlanDate, 111), 7), PP.Building, PP.Lean ORDER BY PP.PlanDate, PP.AssemblyTime, PP.Seq, SC.Date) AS Seq INTO #Actual FROM ProductionPlan AS PP');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SC.building_no, SC.lean_no, DDZL.DDBH, MIN(CONVERT(VARCHAR, SC.schedule_date, 111) + ''-'' + CAST(SC.ry_index AS VARCHAR)) AS Date FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  WHERE SC.schedule_date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_MCF1.Date, -1))) + '''');
      SQL.Add('  GROUP BY SC.building_no, SC.lean_no, DDZL.DDBH');
      SQL.Add(') AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND SC.DDBH = PP.RY');
      SQL.Add('WHERE PP.PlanType LIKE ''1-Day%'' AND PP.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_MCF2.Date)) + ''' AND PP.PlanDate <= CONVERT(VARCHAR, GetDate(), 111)');
      SQL.Add('AND PP.GSBH = ''' + main.Edit2.Text + '''');

      SQL.Add('SELECT Month, SUM(Planned) AS Planned, SUM(Actual) AS Actual, SUM(Actual) - SUM(Planned) AS Unplanned FROM (');
      SQL.Add('  SELECT SC.Month, SC.Building, SC.Lean, ISNULL(Planned.Planned, 0) AS Planned, ISNULL(Actual.Actual, 0) AS Actual,');
      SQL.Add('  CASE WHEN ISNULL(Actual.Actual, 0) > ISNULL(Planned.Planned, 0) THEN ISNULL(Actual.Actual, 0) - ISNULL(Planned.Planned, 0) ELSE 0 END AS Unplanned FROM (');
      SQL.Add('    SELECT DISTINCT LEFT(CONVERT(VARCHAR, schedule_date, 111), 7) AS Month, building_no AS Building, lean_no AS Lean FROM schedule_crawler');
      SQL.Add('    WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_MCF2.Date)) + ''' AND building_no <> ''PM'' AND building_no + lean_no <> ''A11Lean06''');
      SQL.Add('    AND GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('  ) AS SC');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT P1.Month, P1.Building, P1.Lean, COUNT(*) AS Planned FROM #Planned AS P1');
      SQL.Add('    LEFT JOIN #Planned AS P2 ON P2.Building = P1.Building AND P2.Lean = P1.Lean AND P1.Seq = P2.Seq + 1');
      SQL.Add('    WHERE P1.DAOMH IS NOT NULL AND P1.Date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + '''');
      if (CB_Mode.Text = 'Cutting Die') then
        SQL.Add('    AND P1.DAOMH <> ISNULL(P2.DAOMH, '''')')
      else if (CB_Mode.Text = 'Labor') then
        SQL.Add('    AND ABS(P1.Labor - ISNULL(P2.Labor, 0)) > ' + ED_Labor.Text);
      SQL.Add('    GROUP BY P1.Month, P1.Building, P1.Lean');
      SQL.Add('  ) AS Planned ON Planned.Month = SC.Month AND Planned.Building = SC.Building AND Planned.Lean = SC.Lean');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT A1.Month, A1.Building, A1.Lean, COUNT(*) AS Actual FROM #Actual AS A1');
      SQL.Add('    LEFT JOIN #Actual AS A2 ON A2.Month = A1.Month AND A2.Building = A1.Building AND A2.Lean = A1.Lean AND A1.Seq = A2.Seq + 1');
      SQL.Add('    WHERE A1.DAOMH IS NOT NULL AND A2.DAOMH IS NOT NULL');
      if (CB_Mode.Text = 'Cutting Die') then
        SQL.Add('    AND A1.DAOMH <> ISNULL(A2.DAOMH, '''')')
      else if (CB_Mode.Text = 'Labor') then
        SQL.Add('    AND ABS(A1.Labor - ISNULL(A2.Labor, 0)) > ' + ED_Labor.Text);
      SQL.Add('    GROUP BY A1.Month, A1.Building, A1.Lean');
      SQL.Add('  ) AS Actual ON Actual.Month = SC.Month AND Actual.Building = SC.Building AND Actual.Lean = SC.Lean');
      SQL.Add(') AS MCF');
      SQL.Add('GROUP BY Month');
      SQL.Add('ORDER BY Month');
    end
    else if (CB_Section.Text = 'Stitching') then
    begin
      Chart_MCF.Title.Text.Clear;
      Chart_MCF.Title.Text.Add('Stitching');

      SQL.Add('IF OBJECT_ID(''tempdb..#Planned'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Planned END;');
                  
      SQL.Add('IF OBJECT_ID(''tempdb..#Actual'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #Actual END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IE'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IE END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#IEVer'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #IEVer END;');

      SQL.Add('IF OBJECT_ID(''tempdb..#SCBB'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #SCBB END;');
      ExecSQL;

      SQL.Add('SELECT XieXing, SheHao,');
      SQL.Add('MAX(CASE WHEN GXLB = ''C'' THEN BZRS + BZJS END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN GXLB = ''S'' THEN BZRS + BZJS END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN GXLB = ''A'' THEN BZRS + BZJS END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN GXLB = ''P'' THEN BZRS + BZJS END) AS Labor_P INTO #IE FROM SCXXCL');
      SQL.Add('WHERE BZLB = ''3''');
      SQL.Add('GROUP BY XieXing, SheHao');

      SQL.Add('SELECT LV.XieXing, LV.SheHao,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Cutting'' THEN IE.IE_DL + IE.IDL END) AS Labor_C,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Stitching'' THEN IE.IE_DL + IE.IDL END) AS Labor_S,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Assembly'' THEN IE.IE_DL + IE.IDL END) AS Labor_A,');
      SQL.Add('MAX(CASE WHEN LV.GXLB = ''Packing'' THEN IE.IE_DL + IE.IDL END) AS Labor_P INTO #IEVer FROM (');
      SQL.Add('  SELECT XieXing, SheHao, Production_Category AS GXLB, MAX(VERSION) AS Version FROM IE_ARTICLEDATA');
      SQL.Add('  WHERE Production_Category IN (''Cutting'', ''Stitching'', ''Assembly'', ''Packing'') AND XieXing <> ''''');
      SQL.Add('  GROUP BY XieXing, SheHao, Production_Category');
      SQL.Add(') AS LV');
      SQL.Add('LEFT JOIN IE_ARTICLEDATA AS IE ON IE.XieXing = LV.XieXing AND IE.SheHao = LV.SheHao AND IE.Production_Category = LV.GXLB AND IE.VERSION = LV.Version');
      SQL.Add('GROUP BY LV.XieXing, LV.SheHao');

      SQL.Add('SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, Seq INTO #Planned FROM (');
      SQL.Add('  SELECT LEFT(CONVERT(VARCHAR, SC.schedule_date, 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('  ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0) AS Labor,');
      SQL.Add('  ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date, SC.ry_index) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('  LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_MCF2.Date)) + ''' AND SC.schedule_date <= CONVERT(VARCHAR, GetDate(), 111) AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT Month, Building, Lean, Date, DDBH, DAOMH, ARTICLE, Labor, 0 AS Seq FROM (');
      SQL.Add('    SELECT LEFT(CONVERT(VARCHAR, DATEADD(MM, 1, SC.schedule_date), 111), 7) AS Month, SC.building_no AS Building, SC.lean_no AS Lean, SC.schedule_date AS Date, DDZL.DDBH, XXZL.DAOMH, XXZL.ARTICLE,');
      SQL.Add('    ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0) AS Labor,');
      SQL.Add('    ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no ORDER BY SC.schedule_date DESC, SC.ry_index DESC) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('    LEFT JOIN #IE AS IE ON IE.XieXing = XXZL.XieXing AND IE.SheHao = XXZL.SheHao');
      SQL.Add('    LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = XXZL.XieXing AND IEVer.SheHao = XXZL.SheHao');
      SQL.Add('    WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_MCF1.Date, -1))) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(IncMonth(DTP_MCF1.Date, -1))) + ''' AND SC.schedule_date <= CONVERT(VARCHAR, GetDate(), 111) AND SC.building_no <> ''PM'' AND SC.building_no + SC.lean_no <> ''A11Lean06''');
      SQL.Add('    AND SC.GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('  ) AS LastMonth');
      SQL.Add('  WHERE Seq = 1');
      SQL.Add(') AS Planned');

      {SQL.Add('SELECT ROW_NUMBER() OVER(PARTITION BY Date, Building, Lean ORDER BY Pairs DESC) AS Seq,');
      SQL.Add('Date, Building, Lean, DAOMH, ARTICLE, XieXing, SheHao, Pairs INTO #SCBB FROM (');
      SQL.Add('  SELECT SCBB.SCDate AS Date, REPLACE(LEFT(BDepartment.DepName, 3), ''_'', '''') AS Building,');
      SQL.Add('  REPLACE(RIGHT(BDepartment.DepName, 8), ''_M'', '''') AS Lean, XXZL.DAOMH, XXZL.ARTICLE, XXZL.XieXing, XXZL.SheHao, SUM(SCBBS.Qty) AS Pairs FROM SCBB');
      SQL.Add('  LEFT JOIN SCBBS ON SCBBS.ProNo = SCBB.ProNo');
      SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SCBB.DepNo');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SCBBS.SCBH');
      SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('  WHERE SCBB.SCDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_MCF2.Date)) + ''' AND SCBBS.GXLB = ''S'' AND BDepartment.DepName NOT LIKE ''%PM%''');
      SQL.Add('  GROUP BY SCBB.SCDate, BDepartment.DepName, XXZL.DAOMH, XXZL.ARTICLE, XXZL.XieXing, XXZL.SheHao');
      SQL.Add(') AS SCBB');}

      SQL.Add('SELECT LEFT(CONVERT(VARCHAR, SCBB.SCDate, 111), 7) AS Month, REPLACE(LEFT(BDepartment.DepName, 3), ''_'', '''') AS Building, REPLACE(RIGHT(BDepartment.DepName, 8), ''_M'', '''') AS Lean,');
      SQL.Add('SCBB.SCDate AS Date, XXZL.DAOMH, XXZL.ARTICLE, XXZL.XieXing, XXZL.SheHao, SUM(SCBBS.Qty) AS Pairs INTO #SCBB FROM SCBB');
      SQL.Add('LEFT JOIN SCBBS ON SCBBS.ProNo = SCBB.ProNo');
      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SCBB.DepNo');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SCBBS.SCBH');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('WHERE SCBB.SCDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_MCF2.Date)) + ''' AND SCBBS.GXLB = ''S'' AND BDepartment.DepName NOT LIKE ''%PM%''');
      SQL.Add('GROUP BY BDepartment.DepName, SCBB.SCDate, XXZL.DAOMH, XXZL.ARTICLE, XXZL.XieXing, XXZL.SheHao');

      SQL.Add('SELECT SCBB.Month, ISNULL(SF.Building_TX, SCBB.Building) AS Building, ISNULL(SF.Lean_TX, SCBB.Lean) AS Lean, SCBB.Date, SCBB.DAOMH, SCBB.ARTICLE, SCBB.Labor,');
      SQL.Add('ROW_NUMBER() OVER(PARTITION BY SCBB.Month, ISNULL(SF.Building_TX, SCBB.Building), ISNULL(SF.Lean_TX, SCBB.Lean) ORDER BY SCBB.Date, SCBB.DAOMH) AS Seq,');
      SQL.Add('DENSE_RANK() OVER(PARTITION BY SCBB.Month, ISNULL(SF.Building_TX, SCBB.Building), ISNULL(SF.Lean_TX, SCBB.Lean) ORDER BY SCBB.Date) AS DateSeq INTO #Actual FROM (');

      {SQL.Add('  SELECT LEFT(CONVERT(VARCHAR, SCBB.Date, 111), 7) AS Month, SCBB.Building, SCBB.Lean, SCBB.Date,');
      SQL.Add('  SCBB.DAOMH, SCBB.ARTICLE, SCBB.Pairs, ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0) AS Labor FROM #SCBB AS SCBB');
      SQL.Add('  LEFT JOIN #IE AS IE ON IE.XieXing = SCBB.XieXing AND IE.SheHao = SCBB.SheHao');
      SQL.Add('  LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = SCBB.XieXing AND IEVer.SheHao = SCBB.SheHao');
      SQL.Add('  WHERE SCBB.Seq = 1');}

      SQL.Add('  SELECT SCBB.Month, SCBB.Building, SCBB.Lean, SCBB.Date, SCBB.DAOMH, SCBB.ARTICLE, SCBB.Pairs, ISNULL(ISNULL(IEVer.Labor_S, IE.Labor_S), 0) AS Labor FROM #SCBB AS SCBB');
      SQL.Add('  LEFT JOIN #IE AS IE ON IE.XieXing = SCBB.XieXing AND IE.SheHao = SCBB.SheHao');
      SQL.Add('  LEFT JOIN #IEVer AS IEVer ON IEVer.XieXing = SCBB.XieXing AND IEVer.SheHao = SCBB.SheHao');

      SQL.Add(') AS SCBB');
      SQL.Add('LEFT JOIN schedule_factorylink AS SF ON SF.Year + ''/'' + SF.Month = SCBB.Month AND SF.Building_VL = SCBB.Building AND SF.Lean_VL = SCBB.Lean');
      SQL.Add('WHERE SCBB.Pairs > 100');

      SQL.Add('SELECT Month, SUM(Planned) AS Planned, SUM(Actual) AS Actual, SUM(Actual) - SUM(Planned) AS Unplanned FROM (');
      SQL.Add('  SELECT SC.Month, SC.Building, SC.Lean, ISNULL(Planned.Planned, 0) AS Planned, ISNULL(Actual.Actual, 0) AS Actual,');
      SQL.Add('  CASE WHEN ISNULL(Actual.Actual, 0) > ISNULL(Planned.Planned, 0) THEN ISNULL(Actual.Actual, 0) - ISNULL(Planned.Planned, 0) ELSE 0 END AS Unplanned FROM (');
      SQL.Add('    SELECT DISTINCT LEFT(CONVERT(VARCHAR, schedule_date, 111), 7) AS Month, building_no AS Building, lean_no AS Lean FROM schedule_crawler');
      SQL.Add('    WHERE schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_MCF2.Date)) + ''' AND building_no <> ''PM'' AND building_no + lean_no <> ''A11Lean06''');
      SQL.Add('    AND GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('  ) AS SC');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT P1.Month, P1.Building, P1.Lean, COUNT(*) AS Planned FROM #Planned AS P1');
      SQL.Add('    LEFT JOIN #Planned AS P2 ON P2.Building = P1.Building AND P2.Lean = P1.Lean AND P1.Seq = P2.Seq + 1');
      SQL.Add('    WHERE P1.DAOMH IS NOT NULL AND P1.Date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_MCF1.Date)) + '''');
      if (CB_Mode.Text = 'Cutting Die') then
        SQL.Add('    AND P1.DAOMH <> ISNULL(P2.DAOMH, '''')')
      else if (CB_Mode.Text = 'Labor') then
        SQL.Add('    AND ABS(P1.Labor - ISNULL(P2.Labor, 0)) > ' + ED_Labor.Text);
      SQL.Add('    GROUP BY P1.Month, P1.Building, P1.Lean');
      SQL.Add('  ) AS Planned ON Planned.Month = SC.Month AND Planned.Building = SC.Building AND Planned.Lean = SC.Lean');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT Normal.Month, Normal.Building, Normal.Lean, Normal.Actual - ISNULL(Minus.Qty, 0) AS Actual FROM (');
      SQL.Add('      SELECT A1.Month, A1.Building, A1.Lean, COUNT(*) AS Actual FROM #Actual AS A1');
      SQL.Add('      LEFT JOIN #Actual AS A2 ON A2.Month = A1.Month AND A2.Building = A1.Building AND A2.Lean = A1.Lean AND A1.Seq = A2.Seq + 1');
      SQL.Add('      WHERE A1.DAOMH IS NOT NULL AND A2.DAOMH IS NOT NULL');
      if (CB_Mode.Text = 'Cutting Die') then
        SQL.Add('      AND A1.DAOMH <> ISNULL(A2.DAOMH, '''')')
      else if (CB_Mode.Text = 'Labor') then
        SQL.Add('      AND ABS(A1.Labor - ISNULL(A2.Labor, 0)) > ' + ED_Labor.Text);
      SQL.Add('      GROUP BY A1.Month, A1.Building, A1.Lean');
      SQL.Add('    ) AS Normal');
      SQL.Add('    LEFT JOIN (');
      SQL.Add('      SELECT Month, Building, Lean, SUM(Qty) AS Qty FROM (');
      SQL.Add('        SELECT A1.Month, A1.Building, A1.Lean, A1.Date, COUNT(DISTINCT A2.DAOMH)-1 AS Qty FROM #Actual AS A1');
      SQL.Add('        LEFT JOIN #Actual AS A2 ON A2.Month = A1.Month AND A2.Building = A1.Building AND A2.Lean = A1.Lean AND A2.DateSeq = A1.DateSeq - 1 AND A2.DAOMH = A1.DAOMH AND A2.Seq - 1 <> A1.Seq');
      SQL.Add('        WHERE A1.DAOMH IS NOT NULL');
      SQL.Add('        GROUP BY A1.Month, A1.Building, A1.Lean, A1.Date');
      SQL.Add('        HAVING COUNT(DISTINCT A2.DAOMH) > 1');
      SQL.Add('      ) AS Minus');
      SQL.Add('      GROUP BY Month, Building, Lean');
      SQL.Add('    ) AS Minus ON Minus.Month = Normal.Month AND Minus.Building = Normal.Building AND Minus.Lean = Normal.Lean');
      SQL.Add('  ) AS Actual ON Actual.Month = SC.Month AND Actual.Building = SC.Building AND Actual.Lean = SC.Lean');
      SQL.Add(') AS MCF');
      SQL.Add('GROUP BY Month');
      SQL.Add('ORDER BY Month');
    end;
    
    Active := true;

    Series_MCF_Planned.Clear;
    Series_MCF_Actual.Clear;
    Series_MCF_Unplanned.Clear;
    while not Eof do
    begin
      Series_MCF_Planned.Add(FieldByName('Planned').AsFloat, FieldByName('Month').AsString);
      Series_MCF_Actual.Add(FieldByName('Actual').AsFloat, FieldByName('Month').AsString);
      Series_MCF_Unplanned.Add(FieldByName('Unplanned').AsFloat, FieldByName('Month').AsString);
      Next;
    end;
  end;
end;

procedure TScheduleUpload.Series_MCF_ActualClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  Month: string;
  sDate: TDate;
begin
  if (Button = mbLeft) then
  begin
    Month := Series_MCF_Actual.XLabel[ValueIndex];
    sDate := EncodeDate(StrToInt(Copy(Month, 1, 4)), StrToInt(Copy(Month, 6, 2)), 1);

    LeanModelChanges := TLeanModelChanges.Create(Self);
    LeanModelChanges.LoadData(sDate, Chart_MCF.Title.Text[0], MCF_Mode, MCF_Labor);
    LeanModelChanges.ShowModal;
  end;
end;

procedure TScheduleUpload.Series_MCF_PlannedClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  Month: string;
  sDate: TDate;
begin
  if (Button = mbLeft) then
  begin
    Month := Series_MCF_Actual.XLabel[ValueIndex];
    sDate := EncodeDate(StrToInt(Copy(Month, 1, 4)), StrToInt(Copy(Month, 6, 2)), 1);

    LeanModelChanges := TLeanModelChanges.Create(Self);
    LeanModelChanges.LoadData(sDate, Chart_MCF.Title.Text[0], MCF_Mode, MCF_Labor);
    LeanModelChanges.ShowModal;
  end;
end;

procedure TScheduleUpload.Series_MCF_UnplannedClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  Month: string;
  sDate: TDate;
begin
  if (Button = mbLeft) then
  begin
    Month := Series_MCF_Actual.XLabel[ValueIndex];
    sDate := EncodeDate(StrToInt(Copy(Month, 1, 4)), StrToInt(Copy(Month, 6, 2)), 1);

    LeanModelChanges := TLeanModelChanges.Create(Self);
    LeanModelChanges.LoadData(sDate, Chart_MCF.Title.Text[0], MCF_Mode, MCF_Labor);
    LeanModelChanges.ShowModal;
  end;
end;

procedure TScheduleUpload.DTP_MCF1Change(Sender: TObject);
begin
  if (DTP_MCF1.Date > DTP_MCF2.Date) then
    DTP_MCF2.Date := DTP_MCF1.Date;
end;

procedure TScheduleUpload.DTP_MCF2Change(Sender: TObject);
begin
  if (DTP_MCF2.Date < DTP_MCF1.Date) then
    DTP_MCF1.Date := DTP_MCF2.Date;
end;

procedure TScheduleUpload.Excel1Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_MCF_Actual.XValues.Count > 0) then
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

      eclApp.Cells[1, 1] := 'Month';
      eclApp.Cells[1, 2] := 'Planned';
      eclApp.Cells[1, 3] := 'Actual';  
      eclApp.Cells[1, 4] := 'Unplanned';

      Row := 2;
      for i := 0 to Series_MCF_Actual.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_MCF_Actual.XLabel[i];
        eclApp.Cells[Row, 2] := Series_MCF_Planned.YValue[i];
        eclApp.Cells[Row, 3] := Series_MCF_Actual.YValue[i]; 
        eclApp.Cells[Row, 4] := Series_MCF_Unplanned.YValue[i];
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

procedure TScheduleUpload.CB_ModeChange(Sender: TObject);
begin
  Label27.Visible := (CB_Mode.Text = 'Labor');
  ED_Labor.Visible := (CB_Mode.Text = 'Labor');
end;

procedure TScheduleUpload.ED_LaborChange(Sender: TObject);
var
  i: integer;
begin
  if (TryStrToInt(ED_Labor.Text, i) = false) then
    ED_Labor.Text := '10';
end;

procedure TScheduleUpload.B1D10Click(Sender: TObject);
begin
  SequenceCheck := TSequenceCheck.Create(Self);
  SequenceCheck.ShowModal;
end;

procedure TScheduleUpload.TBUploadClick(Sender: TObject);
  function IsCycleFormat(Text: string): Boolean;
  var
    sText: string;
    sValue: integer;
  begin
    if (Pos('~', Text) > 0) OR ((Pos('-', Text) > 0) AND (Length(Text) >= 5) AND (TryStrToInt(Text, sValue) = false)) then
    begin
      sText := StringReplace(StringReplace(StringReplace(Text, '-', '', [rfReplaceAll]), '~', '', [rfReplaceAll]), 'T', '', [rfReplaceAll]);
      Result := TryStrToInt(sText, sValue);
    end
    else begin
      Result := false;
    end;
  end;
var
  i, j, Page, Col, Row, index: integer;
  eclApp, Sheet: OleVariant;
  AllowedFileNames: array[0..2] of string;
  PlanFormat, Building, Response, SelectedFileName, RowTitle, CellText, A_DATE, LEAN: string;
  IsValidFileName, KeepSearching: Boolean;
  Row_Date, Row_Seq, MinCol_Date, MaxCol_Date, Row_Lean, ry_index: integer;
  TempDate: TDateTime;
  ScheduleBlock: array of array[0..13] of integer;
begin
  try
    AllowedFileNames[0] := 'A07.xlsx';
    AllowedFileNames[1] := 'B01.xlsx';
    AllowedFileNames[2] := 'B02.xlsx';

    if (OpenDialog1.Execute) then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);
      Building := StringReplace(SelectedFileName, '.xlsx', '', [rfReplaceAll, rfIgnoreCase]);

      IsValidFileName := False;
      for i := 0 to Length(AllowedFileNames) - 1 do
      begin
        if SameText(SelectedFileName, AllowedFileNames[i]) then
        begin
          IsValidFileName := True;
          Break;
        end;
      end;

      if (IsValidFileName) then
      begin
        if (MessageDlg('Are you sure to upload the schedule?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        begin
          Version := '';
          ScheduleVersion := TScheduleVersion.Create(Self);
          ScheduleVersion.ShowModal;
          if (Version = '') then
            Exit;

          with Query_S do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT version, building_no, CONVERT(SmallDateTime, schedule_date, 111) AS schedule_date, lean_no, ry_index, ly, ry, vt, chat_lieu, last, buy,');
            SQL.Add('bts, cutting, sku, stitching, sl, assembly, csd, country, user_id, CONVERT(SmallDateTime, user_date, 111) AS user_date, ''1'' AS YN FROM schedule_crawler');
            SQL.Add('WHERE 1 = 0');
            Active := true;
          
            RequestLive := true;                                                                                   //
            CachedUpdates := true;
          end;

          try
            eclApp := CreateOleObject('Excel.Application');
            eclApp.workbooks.Open(OpenDialog1.FileName);

            SchedulePage := TSchedulePage.Create(Self);
            SchedulePage.PageBox.Clear;
            for i := 1 to eclApp.WorkSheets.Count do
            begin
              if (eclApp.WorkSheets[i].Visible) then
                SchedulePage.PageBox.Items.Add(eclApp.WorkSheets[i].Name);
            end;
            if (SchedulePage.ShowModal = mrOK) then
            begin
              SetCursor(Screen.Cursors[crHourGlass]);
            
              for Page := 0 to Length(UploadPage) - 1 do
              begin
                Sheet := eclApp.WorkSheets[UploadPage[Page]];
                eclapp.Columns.Autofit;

                //取得排程日期範圍
                Row_Date := 0;
                MinCol_Date := 2;
                MaxCol_Date := 2;
                PlanFormat := '';
                Lean := copy(Sheet.Cells[13, 5].Text,1,7);
                for Row := 1 to 15 do
                begin
                  if (Sheet.Cells[Row, 1].Text = '目標') then
                  begin
                    PlanFormat := 'Vertical';
                    Row_Date := Row;
                    Break;
                  end
                  else if (copy(Sheet.Cells[Row, 1].Text,1,3) = 'STT') then
                  begin
                    PlanFormat := 'Horizontal';
                    Row_Date := Row;
                    Break;
                  end;
                end;

                if (PlanFormat = 'Horizontal') then
                begin
                  Row := Row_Date;
                  SetLength(ScheduleBlock, 1);
                  for i := 1 to 39 do
                  begin
                    if UpperCase(copy(Sheet.Cells[Row, i].Text,1,4)) = 'LEAN' then
                      Row := Row+1;
                    RowTitle := Sheet.Cells[Row, i].Text;
                    if (Pos('印刷', RowTitle) = 1) or (Pos('鞋面', RowTitle) = 1) then
                      RowTitle := Sheet.Cells[Row+1, i].Text;
                    index := Pos('(', RowTitle);
                    if (index = 0) then
                      RowTitle := UpperCase(Copy(Sheet.Cells[Row, i].Text, 1, 2))
                    else
                      RowTitle := UpperCase(Copy(RowTitle, index, 3));

                    if (RowTitle = 'DA') then   //成型上線日
                      Row_Date := i
                    else if (RowTitle = 'SE') then     //每日順序
                      Row_Seq := i
                    else if (RowTitle = 'LY') then     //鞋型
                      ScheduleBlock[0][0] := i
                    else if (RowTitle = 'RY') then     //RY
                      ScheduleBlock[0][1] := i
//                    else if (RowTitle = '(VT') then    //不重要
//                      ScheduleBlock[0][2] := i
//                    else if (RowTitle = 'CH') then     //材料種類
//                      ScheduleBlock[0][3] := i
                    else if (RowTitle = 'LA') then     //楦頭
                      ScheduleBlock[0][4] := i
                    else if (RowTitle = 'BU') then     //BUY別
                      ScheduleBlock[0][5] := i
//                    else if (RowTitle = 'BT') then     //不重要
//                      ScheduleBlock[0][6] := i
                    else if (RowTitle = '(C)') then    //裁斷上線日
                      ScheduleBlock[0][7] := i
                    else if (RowTitle = 'SK') then     //SKU
                      ScheduleBlock[0][8] := i
                    else if (RowTitle = '(S)') then    //針車上線日
                      ScheduleBlock[0][9] := i
                    else if (RowTitle = '(SL') then    //數量
                      ScheduleBlock[0][10] := i
                    else if (RowTitle = '(A)') then    //手工成型備註
                      ScheduleBlock[0][11] := i
                    else if (RowTitle = 'CS') then     //出貨日
                      ScheduleBlock[0][12] := i
                    else if (RowTitle = '(N)') then    //國家
                      ScheduleBlock[0][13] := i;
                  end;

                  Row := Row + 1;
                  index := 0;
                  KeepSearching := true;
                  A_DATE := '';
                  ry_index := 1;
                  while (KeepSearching) do
                  begin
                    if (Sheet.Cells[Row, ScheduleBlock[0][5]].Text <> '') then
                    begin
                      with Query_S do
                      begin
                        Append;
                        FieldByName('Version').Value := Version;
                        FieldByName('building_no').Value := Building;
                        FieldByName('lean_no').Value := Lean;
                        FieldByName('schedule_date').Value := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, Row_Date].Value);
                        if A_DATE <> FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, Row_Date].Value) then begin
                          A_DATE := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, Row_Date].Value);
                          ry_index := 1;
                        end
                        else
                          ry_index := ry_index + 1;
                        FieldByName('ry_index').Value := ry_index;
                        if (ScheduleBlock[0][0] > 0) then
                          FieldByName('ly').Value := Sheet.Cells[Row, ScheduleBlock[0][0]].Text;
                        if (ScheduleBlock[0][1] > 0) then
                          FieldByName('ry').Value := Sheet.Cells[Row, ScheduleBlock[0][1]].Text;
                        if (ScheduleBlock[0][2] > 0) then
                          FieldByName('vt').Value := Sheet.Cells[Row, ScheduleBlock[0][2]].Text;
                        if (ScheduleBlock[0][3] > 0) then
                          FieldByName('chat_lieu').Value := Sheet.Cells[Row, ScheduleBlock[0][3]].Text;
                        if (ScheduleBlock[0][4] > 0) then
                          FieldByName('last').Value := Sheet.Cells[Row, ScheduleBlock[0][4]].Text;
                        if (ScheduleBlock[0][5] > 0) then
                          FieldByName('buy').Value := Sheet.Cells[Row, ScheduleBlock[0][5]].Text;
                        if (ScheduleBlock[0][6] > 0) then
                          FieldByName('bts').Value := Sheet.Cells[Row, ScheduleBlock[0][6]].Text;
                        if (ScheduleBlock[0][7] > 0) then
                          FieldByName('cutting').Value := Sheet.Cells[Row, ScheduleBlock[0][7]].Text;
                        if (ScheduleBlock[0][8] > 0) then
                          FieldByName('sku').Value := Sheet.Cells[Row, ScheduleBlock[0][8]].Text;
                        if (ScheduleBlock[0][9] > 0) then
                          FieldByName('stitching').Value := Sheet.Cells[Row, ScheduleBlock[0][9]].Text;
                        if (ScheduleBlock[0][10] > 0) then
                          FieldByName('sl').Value := Sheet.Cells[Row, ScheduleBlock[0][10]].Text;
                        if (ScheduleBlock[0][11] > 0) then
                          FieldByName('assembly').Value := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, ScheduleBlock[0][11]].Value);
                        if (ScheduleBlock[0][12] > 0) then
                          FieldByName('csd').Value := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, ScheduleBlock[0][12]].Value);
                        if (ScheduleBlock[0][13] > 0) then
                          FieldByName('country').Value := Sheet.Cells[Row, ScheduleBlock[0][13]].Text;
                        FieldByName('YN').Value := '1';

                        QTemp.Active := false;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add('DECLARE @RY VARCHAR(20) = ''' + FieldByName('ry').AsString + ''';');
                        QTemp.SQL.Add('SELECT Target.RY, DDBH.ExistInDDBH, SC.ExistInOtherLean FROM (');
                        QTemp.SQL.Add('  SELECT @RY AS RY');
                        QTemp.SQL.Add(') AS Target');
                        QTemp.SQL.Add('LEFT JOIN (');
                        QTemp.SQL.Add('  SELECT COUNT(DDBH) AS ExistInDDBH FROM DDZL');
                        QTemp.SQL.Add('  WHERE DDBH = CASE WHEN LEN(@RY) - LEN(REPLACE(@RY, ''-'', '''')) < 2 THEN @RY ELSE SUBSTRING(@RY, 1, LEN(@RY) - CHARINDEX(''-'', REVERSE(@RY))) END');
                        QTemp.SQL.Add(') AS DDBH ON 1 = 1');
                        QTemp.SQL.Add('LEFT JOIN (');
                        QTemp.SQL.Add('  SELECT COUNT(ry) AS ExistInOtherLean FROM schedule_crawler');
                        QTemp.SQL.Add('  WHERE ry = @RY AND building_no + lean_no NOT LIKE ''' + FieldByName('building_no').AsString + FieldByName('lean_no').AsString + '%''');
                        QTemp.SQL.Add(') AS SC ON 1 = 1');
                        QTemp.Active := true;
                        if (QTemp.FieldByName('ExistInDDBH').AsInteger = 0) then
                        begin
                          FieldByName('YN').Value := '0';
                          Application.MessageBox(PChar('The following RY does not exist in database:' + #13#10#13#10 + '　Building: ' + FieldByName('building_no').AsString + #13#10 + '　Lean: ' + FieldByName('lean_no').AsString + #13#10 + '　Date: ' + FormatDateTime('yyyy/MM/dd', FieldByName('schedule_date').AsDateTime) + #13#10 + '　RY: ' + FieldByName('ry').AsString), 'WARNING', MB_OK + MB_ICONWARNING);
                        end;
                      end;
                      index := 0;
                    end
                    else begin
                      Inc(index);
                      if (index >= 10) then
                        KeepSearching := false;
                    end;

                    Inc(Row);
                  end;
                end
                else begin
                  ShowMessage('Imported excel format error');
                end;
              end;

              eclApp.DisplayAlerts := false;
              eclApp.WorkBooks.Close;
              eclApp.Quit;
              Self.Cursor := crDefault;
              BS5.Enabled := true;
              BS6.Enabled := true;
              Query_S.First;
              ShowMessage('Completed');
            end
            else begin
              eclApp.DisplayAlerts := false;
              eclApp.WorkBooks.Close;
              eclApp.Quit;
            end;
          except on F:Exception do
            begin
              eclApp.DisplayAlerts := false;
              eclApp.WorkBooks.Close;
              eclApp.Quit;
              Application.MessageBox(PChar(F.Message), 'Excution Failed', MB_OK + MB_ICONERROR);
              Exit;
            end;
          end;
        end;
      end
      else begin
        ShowMessage('Only file names of [A07, B01, B02] are allowed to be uploaded');
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;
end;

end.


