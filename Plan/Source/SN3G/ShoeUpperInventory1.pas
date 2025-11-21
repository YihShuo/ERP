unit ShoeUpperInventory1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, DateUtils, ImgList, ComObj, ExcelXP, Menus, TeEngine, Series,
  TeeProcs, Chart, Types, Grids, jpeg, IniFiles, Clipbrd;

type
  TShoeUpperInventory = class(TForm)
    Q_UI: TQuery;
    DS_UI: TDataSource;
    QTemp: TQuery;
    Q_UIBuilding: TStringField;
    Q_UILean: TStringField;
    Q_UIDAOMH: TStringField;
    Q_UIRY: TStringField;
    Q_UIShipDate: TDateTimeField;
    Q_UIUserID: TStringField;
    Q_UIUserDate: TDateTimeField;
    Q_UIYN: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DTP_U: TDateTimePicker;
    CB_Building_U: TComboBox;
    CB_Lean_U: TComboBox;
    Button1: TButton;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DTP_C: TDateTimePicker;
    CB_Building_C: TComboBox;
    CB_Lean_C: TComboBox;
    Button2: TButton;
    DS_C: TDataSource;
    Q_C: TQuery;
    Q_CListNo: TStringField;
    Q_CBuilding: TStringField;
    Q_CLean: TStringField;
    Q_CDate: TDateTimeField;
    Q_CPairs: TIntegerField;
    Q_CRemark: TStringField;
    Q_CConfirmID: TStringField;
    Q_CConfirmDate: TDateTimeField;
    Q_CUserID: TStringField;
    Q_CUserDate: TDateTimeField;
    Q_CCycle: TStringField;
    DS_C2: TDataSource;
    Q_C2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField2: TDateTimeField;
    StringField6: TStringField;
    DateTimeField3: TDateTimeField;
    StringField7: TStringField;
    Q_CCheckStatus: TBooleanField;
    U_C: TUpdateSQL;
    ImageList1: TImageList;
    Q_CZLBH: TStringField;
    Q_C2ZLBH: TStringField;
    PC2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    Splitter1: TSplitter;
    DS_C1: TDataSource;
    Q_C1: TQuery;
    Q_C1PrintNo: TStringField;
    Q_C1ListNo: TStringField;
    Panel5: TPanel;
    Button3: TButton;
    Panel6: TPanel;
    Button4: TButton;
    Button5: TButton;
    Q_C2CheckStatus: TBooleanField;
    U_C2: TUpdateSQL;
    Q_CBUYNO: TStringField;
    Q_CARTICLE: TStringField;
    Q_C2BUYNO: TStringField;
    Q_C2ARTICLE: TStringField;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Q_CType: TStringField;
    Q_C2Type: TStringField;
    CB_Time_C: TComboBox;
    Label7: TLabel;
    Q_C1Date: TStringField;
    Q_CTotalCycles: TIntegerField;
    Q_CCompletedCycles: TIntegerField;
    Q_Cschedule_date: TDateTimeField;
    Q_C2schedule_date: TDateTimeField;
    Q_C2TotalCycles: TIntegerField;
    Q_C2CompletedCycles: TIntegerField;
    PC3: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    U_UI: TUpdateSQL;
    Q_UIRKNO: TStringField;
    Q_UIPlanDate: TDateTimeField;
    Q_UIArticle: TStringField;
    Q_UIcountry: TStringField;
    Panel7: TPanel;
    Panel1: TPanel;
    BUI1: TBitBtn;
    BUI2: TBitBtn;
    BUI3: TBitBtn;
    BUI4: TBitBtn;
    BUI5: TBitBtn;
    BUI6: TBitBtn;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    Panel3: TPanel;
    DBGridEh5: TDBGridEh;
    Q_UIDate: TDateTimeField;
    BUIC1: TBitBtn;
    DS_UIC: TDataSource;
    Q_UIC: TQuery;
    Q_UICDDBH: TStringField;
    Q_UICCycle: TStringField;
    Q_UICPairs: TIntegerField;
    Q_UICRKNO: TStringField;
    DS_UO: TDataSource;
    Q_UO: TQuery;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField4: TDateTimeField;
    StringField13: TStringField;
    DateTimeField5: TDateTimeField;
    StringField14: TStringField;
    StringField15: TStringField;
    DateTimeField6: TDateTimeField;
    StringField16: TStringField;
    DateTimeField7: TDateTimeField;
    U_UO: TUpdateSQL;
    DS_UOC: TDataSource;
    Q_UOC: TQuery;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField2: TIntegerField;
    StringField21: TStringField;
    Panel9: TPanel;
    Panel8: TPanel;
    BUO1: TBitBtn;
    BUO2: TBitBtn;
    BUO3: TBitBtn;
    BUO4: TBitBtn;
    BUO5: TBitBtn;
    BUO6: TBitBtn;
    DBGridEh6: TDBGridEh;
    Splitter3: TSplitter;
    Panel10: TPanel;
    Panel11: TPanel;
    BUOC1: TBitBtn;
    DBGridEh7: TDBGridEh;
    DBGridEh8: TDBGridEh;
    DS_I: TDataSource;
    Q_I: TQuery;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    Panel12: TPanel;
    BI1: TBitBtn;
    Q_IPairs: TIntegerField;
    Q_ITodayInPairs: TIntegerField;
    Q_ITotalInPairs: TIntegerField;
    DBGridEh9: TDBGridEh;
    Splitter4: TSplitter;
    DS_IC: TDataSource;
    Q_IC: TQuery;
    StringField29: TStringField;
    IntegerField3: TIntegerField;
    StringField32: TStringField;
    TabSheet8: TTabSheet;
    Q_PC: TQuery;
    DS_PC: TDataSource;
    Q_PCBuilding: TStringField;
    Q_PCLean: TStringField;
    Q_PCPlanDate: TDateTimeField;
    Q_PCDAOMH: TStringField;
    Q_PCRY: TStringField;
    Q_PCARTICLE: TStringField;
    Q_PCCycle: TStringField;
    Q_PCPairs: TIntegerField;
    Q_PCStatus: TStringField;
    Q_UIPairs: TIntegerField;
    Q_UOPairs: TIntegerField;
    Q_PCRequiredPairs: TIntegerField;
    Q_IDate: TStringField;
    Q_ILackPairs: TIntegerField;
    Q_IShipDate: TStringField;
    Q_ICompletedDate: TStringField;
    Q_IStockPairs: TIntegerField;
    TabSheet9: TTabSheet;
    Panel14: TPanel;
    Panel15: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DTP_W: TDateTimePicker;
    CB_Building_W: TComboBox;
    CB_Lean_W: TComboBox;
    Button7: TButton;
    DBGridEh11: TDBGridEh;
    ScrollBox2: TScrollBox;
    BarChart_W: TChart;
    Series_W: TBarSeries;
    Label17: TLabel;
    DS_W: TDataSource;
    Q_W: TQuery;
    StringField19: TStringField;
    StringField20: TStringField;
    DateTimeField8: TDateTimeField;
    StringField22: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField33: TStringField;
    IntegerField5: TIntegerField;
    Q_WRYPairs: TIntegerField;
    TabSheet10: TTabSheet;
    Panel16: TPanel;
    Label18: TLabel;
    Label21: TLabel;
    DTP_IT1: TDateTimePicker;
    Button8: TButton;
    DTP_IT2: TDateTimePicker;
    Q_C1Ready: TIntegerField;
    Q_C1Others: TIntegerField;
    Label20: TLabel;
    ED_RY_U: TEdit;
    CB_U: TCheckBox;
    PC4: TPageControl;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    LineChart_IT1: TChart;
    Series_IT1_CompIn: TBarSeries;
    Series_IT1_UpperOut: TBarSeries;
    Series_IT1_WIP: TLineSeries;
    LineChart_IT2: TChart;
    Series_IT2_StockIn: TBarSeries;
    Series_IT2_StockOut: TBarSeries;
    Series_IT2_Inventory: TLineSeries;
    ToolTip: TPanel;
    TT_StockOut: TLabel;
    TT_Date: TLabel;
    Timer1: TTimer;
    TT_StockIn: TLabel;
    TT_Inventory: TLabel;
    LineChart_IT3: TChart;
    Series_IT3_LT: TLineSeries;
    Splitter5: TSplitter;
    Q_PCOSPairs: TIntegerField;
    BI2: TButton;
    Button9: TButton;
    Series_IT3_Blank: TBarSeries;
    Q_PCAssemblyTime: TStringField;
    PC5: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    Label16: TLabel;
    ScrollBox1: TScrollBox;
    BarChart_PC: TChart;
    Series_PC: TBarSeries;
    DBGridEh10: TDBGridEh;
    Panel17: TPanel;
    CB_OS_Unmatched: TCheckBox;
    Panel13: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DTP_PC1: TDateTimePicker;
    CB_Building_PC: TComboBox;
    CB_Lean_PC: TComboBox;
    Button6: TButton;
    DTP_PC2: TDateTimePicker;
    CB_Plan_PC: TComboBox;
    CB_OS_PC: TCheckBox;
    Panel18: TPanel;
    Label19: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DTP_PC3: TDateTimePicker;
    CB_Building_PC2: TComboBox;
    CB_Lean_PC2: TComboBox;
    Button10: TButton;
    CB_OS_PC2: TCheckBox;
    StringGrid1: TStringGrid;
    LB_PC2_Building: TLabel;
    LB_PC2_Lean: TLabel;
    LB_PC2_Month: TLabel;
    Panel19: TPanel;
    Label24: TLabel;
    Q_UILackPairs: TIntegerField;
    IMG_HG: TImage;
    Button11: TButton;
    IMG_Tips: TImage;
    RG_I: TRadioGroup;
    PopupMenu2: TPopupMenu;
    Excel_W: TMenuItem;
    PopupMenu3: TPopupMenu;
    Excel_PC: TMenuItem;
    PopupMenu4: TPopupMenu;
    Excel_WT: TMenuItem;
    PopupMenu5: TPopupMenu;
    Excel_LT: TMenuItem;
    PopupMenu6: TPopupMenu;
    Excel_IT: TMenuItem;
    IMG_CHECK: TImage;
    IMG_LACK: TImage;
    LineChart_IT4: TChart;
    Series_IT4_Blank: TBarSeries;
    Series_IT4_LT: TLineSeries;
    Panel20: TPanel;
    Label25: TLabel;
    Splitter6: TSplitter;
    PopupMenu7: TPopupMenu;
    Excel_LT2: TMenuItem;
    IMG_WARNING: TImage;
    TabSheet15: TTabSheet;
    Panel21: TPanel;
    Label26: TLabel;
    CB_Building_PC3: TComboBox;
    Label27: TLabel;
    CB_Lean_PC3: TComboBox;
    Button12: TButton;
    DBGridEh12: TDBGridEh;
    DS_PC3: TDataSource;
    Q_PC3: TQuery;
    DTP_PC4: TDateTimePicker;
    Label28: TLabel;
    Q_PC3building_no: TStringField;
    Q_PC3lean_no: TStringField;
    Q_PC3DDBH: TStringField;
    Q_PC3schedule_date: TDateTimeField;
    Q_PC3DAOMH: TStringField;
    Q_PC3ARTICLE: TStringField;
    Q_PC3TotalPairs: TIntegerField;
    Q_PC3Shortage: TIntegerField;
    Q_PC3ShipDate: TDateTimeField;
    Q_PC3CompletedPairs: TIntegerField;
    Button13: TButton;
    ImageBox: TPanel;
    ShoeImage: TImage;
    LB_Left: TLabel;
    LB_Right: TLabel;
    PopupMenu8: TPopupMenu;
    BOM1: TMenuItem;
    PopupMenu9: TPopupMenu;
    Copy1: TMenuItem;
    Q_PC3PlanEndDate: TDateTimeField;
    Q_PC3DelayDays: TIntegerField;
    CB_ITP_PC3: TCheckBox;
    Label29: TLabel;
    CB_Mode_PC3: TComboBox;
    Q_IZLBH: TStringField;
    Label30: TLabel;
    ED_Days_PC3: TEdit;
    Q_IMinCycle: TIntegerField;
    Q_IMaxCycle: TIntegerField;
    CB_I: TCheckBox;
    DBGridEh13: TDBGridEh;
    Splitter7: TSplitter;
    DS_ITI: TDataSource;
    Q_ITI: TQuery;
    StringField34: TStringField;
    StringField35: TStringField;
    IntegerField4: TIntegerField;
    TabSheet16: TTabSheet;
    Panel22: TPanel;
    Label31: TLabel;
    DTP_IS: TDateTimePicker;
    Button14: TButton;
    DS_ISTD1: TDataSource;
    Q_ISTD1: TQuery;
    DateTimeField9: TDateTimeField;
    IntegerField8: TIntegerField;
    Q_ISTD1Cycles: TIntegerField;
    Panel23: TPanel;
    DBGridEh14: TDBGridEh;
    Label32: TLabel;
    DS_ISTD2: TDataSource;
    Q_ISTD2: TQuery;
    StringField36: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    DBGridEh15: TDBGridEh;
    Q_ISTD1Status: TStringField;
    Splitter8: TSplitter;
    Splitter9: TSplitter;
    Panel24: TPanel;
    Label33: TLabel;
    DBGridEh16: TDBGridEh;
    DS_ISTD3: TDataSource;
    Q_ISTD3: TQuery;
    StringField37: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    Splitter10: TSplitter;
    DBGridEh17: TDBGridEh;
    DS_ISTD4: TDataSource;
    Q_ISTD4: TQuery;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField44: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    Panel25: TPanel;
    Splitter11: TSplitter;
    Label34: TLabel;
    DBGridEh18: TDBGridEh;
    DBGridEh19: TDBGridEh;
    Splitter12: TSplitter;
    DS_ISTD5: TDataSource;
    Q_ISTD5: TQuery;
    StringField45: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    DS_ISTD6: TDataSource;
    Q_ISTD6: TQuery;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTP_CChange(Sender: TObject);
    procedure CB_Building_CChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure Q_CAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Q_C1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh3TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure Q_C2AfterOpen(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure Q_C1AfterScroll(DataSet: TDataSet);
    procedure Delete1Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DTP_UChange(Sender: TObject);
    procedure CB_Building_UChange(Sender: TObject);
    procedure BUI1Click(Sender: TObject);
    procedure BUI2Click(Sender: TObject);
    procedure BUI3Click(Sender: TObject);
    procedure BUI4Click(Sender: TObject);
    procedure BUI5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Q_UIAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BUIC1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BUI6Click(Sender: TObject);
    procedure BUO1Click(Sender: TObject);
    procedure BUO2Click(Sender: TObject);
    procedure BUO3Click(Sender: TObject);
    procedure BUO4Click(Sender: TObject);
    procedure BUO5Click(Sender: TObject);
    procedure BUO6Click(Sender: TObject);
    procedure DBGridEh6Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Q_UOAfterOpen(DataSet: TDataSet);
    procedure BUOC1Click(Sender: TObject);
    procedure BI1Click(Sender: TObject);
    procedure CB_Building_PCChange(Sender: TObject);
    procedure DTP_PC1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Q_PCCalcFields(DataSet: TDataSet);
    procedure DBGridEh10GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DTP_WChange(Sender: TObject);
    procedure CB_Building_WChange(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure PC3Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure Button8Click(Sender: TObject);
    procedure Series_IT1_WIPGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure Series_IT1_CompInGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure Series_IT1_UpperOutGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure BarChart_WClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BarChart_WClickBackground(Sender: TCustomChart;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CB_UClick(Sender: TObject);
    procedure ED_RY_UChange(Sender: TObject);
    procedure LineChart_IT2AfterDraw(Sender: TObject);
    procedure Series_IT2_StockInClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Series_IT2_StockOutClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Series_IT1_CompInClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Series_IT1_UpperOutClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Series_IT1_WIPClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Series_IT2_InventoryClick(Sender: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure PC4Changing(Sender: TObject; var AllowChange: Boolean);
    procedure DBGridEh2Columns0UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure CB_OS_UnmatchedClick(Sender: TObject);
    procedure Q_PCFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Series_IT3_LTGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure BI2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Series_IT3_LTClick(Sender: TChartSeries; ValueIndex: Integer;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Series_IT3_BlankGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    function Series_IT3_LTGetPointerStyle(Sender: TChartSeries;
      ValueIndex: Integer): TSeriesPointerStyle;
    procedure BarChart_PCClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DTP_PC3Change(Sender: TObject);
    procedure CB_Building_PC2Change(Sender: TObject);
    procedure CB_OS_PC2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1Exit(Sender: TObject);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure IMG_TipsClick(Sender: TObject);
    procedure RG_IClick(Sender: TObject);
    procedure Excel_WClick(Sender: TObject);
    procedure Excel_PCClick(Sender: TObject);
    procedure Excel_WTClick(Sender: TObject);
    procedure Excel_LTClick(Sender: TObject);
    procedure Excel_ITClick(Sender: TObject);
    procedure Series_IT4_BlankGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    procedure Series_IT4_LTGetMarkText(Sender: TChartSeries;
      ValueIndex: Integer; var MarkText: String);
    function Series_IT4_LTGetPointerStyle(Sender: TChartSeries;
      ValueIndex: Integer): TSeriesPointerStyle;
    procedure Excel_LT2Click(Sender: TObject);
    procedure CB_Building_PC3Change(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure DTP_PC4Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure LB_LeftClick(Sender: TObject);
    procedure LB_RightClick(Sender: TObject);
    procedure ShoeImageClick(Sender: TObject);
    procedure BOM1Click(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Copy1Click(Sender: TObject);
    procedure ED_Days_PC3KeyPress(Sender: TObject; var Key: Char);
    procedure CB_IClick(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
    sKeyword, ShoePicPath, ImageAlign, ShoePicSKU: string;
    SelectAll1, SelectAll2, EditMode: boolean;
    SearchDate_U: TDate;
    ReturnRate: Array of double;
    LTDate: Array of TDate;
    HolidayList: Array of boolean;
    procedure ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    procedure ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
    procedure CheckComponentClosingInventory(TargetDate: TDate);
    procedure CheckUpperClosingInventory(TargetDate: TDate);
    function IsStringInArray(const AStr: string; const AArray: array of string): Boolean;
  public
    { Public declarations }
    procedure SearchByKeyword(Keyword: string);
  end;

var
  ShoeUpperInventory: TShoeUpperInventory;

const
  ModifiableUsers: array[0..1] of string = ('51151', '46277');

implementation

uses
  main1, UpperRYDialog1, UpperCycleDialog1, ClosingInventory1, ClosingWIP1,
  OutsourcingLeadTime1, LeanInventory1, RYTracking1, RYSearchDlg1, Tips1,
  LeanSelection1, RY_BOM1;

{$R *.dfm}

function TShoeUpperInventory.IsStringInArray(const AStr: string; const AArray: array of string): Boolean;
var
  i: integer;
begin
  Result := False;
  for i := Low(AArray) to High(AArray) do
  begin
    if (AArray[i] = AStr) then
    begin
      Result := true;
      Exit;
    end;
  end;
end;

procedure TShoeUpperInventory.CheckComponentClosingInventory(TargetDate: TDate);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ISNULL(SUM(Pairs), 0) AS Pairs FROM KCCLMONTH_Component');
    SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', TargetDate) + '''');
    Active := true;

    if (FieldByName('Pairs').AsInteger = 0) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('IF OBJECT_ID(''tempdb..#CompIn'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #CompIn END;');

      SQL.Add('SELECT Building, Lean, ZLBH, DDBH, Qty INTO #CompIn FROM (');
      SQL.Add('  SELECT DISTINCT CDL.Building, CDL.Lean, CD.ZLBH, CD.DDBH, SMDD.Qty FROM CycleDispatchList AS CDL');
      SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo AND CD.GXLB = ''C''');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
      SQL.Add('  WHERE CDL.Type = ''Ready'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, CDL.Date, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(TargetDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(TargetDate)) + '''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT Building, Lean, ZLBH, DDBH, Pairs FROM KCCLMONTH_Component');
      SQL.Add('  WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(TargetDate, -1)) + '''');
      SQL.Add(') AS CompIn');

      SQL.Add('IF OBJECT_ID(''tempdb..#UpperOut'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #UpperOut END;');

      SQL.Add('SELECT KCRK_Upper.RY, KCRKS_Upper.DDBH, SUM(KCRKS_Upper.Pairs) AS Pairs INTO #UpperOut FROM KCRK_Upper');
      SQL.Add('LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
      SQL.Add('WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(TargetDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(TargetDate)) + ''' AND ISNULL(KCRKS_Upper.Pairs, 0) > 0');
      SQL.Add('GROUP BY KCRK_Upper.RY, KCRKS_Upper.DDBH');

      SQL.Add('DELETE FROM KCCLMONTH_Component');
      SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', TargetDate) + ''';');

      SQL.Add('INSERT INTO KCCLMONTH_Component (KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH, Pairs, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + FormatDateTime('yyyy', TargetDate) + ''' AS KCYEAR, ''' + FormatDateTime('MM', TargetDate) + ''' AS KCMONTH, CompIn.Building, CompIn.Lean, CompIn.ZLBH, CompIn.DDBH, CompIn.Qty - ISNULL(UpperOut.Pairs, 0) AS Pairs, ''' + main.Edit1.Text + ''' AS UserID, GETDATE() AS UserDate, ''1'' AS YN FROM #CompIn AS CompIn');
      SQL.Add('LEFT JOIN #UpperOut AS UpperOut ON UpperOut.RY = CompIn.ZLBH AND UpperOut.DDBH = CompIn.DDBH');
      SQL.Add('WHERE CompIn.Qty > ISNULL(UpperOut.Pairs, 0);');
      ExecSQL;
    end;
  end;
end;

procedure TShoeUpperInventory.CheckUpperClosingInventory(TargetDate: TDate);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ISNULL(SUM(Pairs), 0) AS Pairs FROM KCCLMONTH_Upper');
    SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', TargetDate) + '''');
    Active := true;

    if (FieldByName('Pairs').AsInteger = 0) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM KCCLMONTH_Upper');
      SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', TargetDate) + ''';');

      SQL.Add('INSERT INTO KCCLMONTH_Upper (KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH, Pairs, Date, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + FormatDateTime('yyyy', TargetDate) + ''' AS KCYEAR, ''' + FormatDateTime('MM', TargetDate) + ''' AS KCMonth, KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, ISNULL(SUM(KCRK.InPairs), 0) - ISNULL(SUM(KCLL.OutPairs), 0) AS StockPairs, MAX(KCRK.Date) AS Date, ''' + main.Edit1.Text + ''' AS UserID, GETDATE() AS UserDate, ''1'' AS YN FROM (');
      SQL.Add('  SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, KCRK.InPairs, KCRK.Date, SUM(CAST(SC.sl AS INT)) AS RYPairs FROM (');
      SQL.Add('    SELECT Building, Lean, RY, DDBH, SUM(Pairs) AS InPairs, MAX(Date) AS Date FROM (');
      SQL.Add('      SELECT KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH, KCRKS_Upper.Pairs, KCRK_Upper.Date FROM KCRK_Upper');
      SQL.Add('      LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
      SQL.Add('      WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(TargetDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(TargetDate)) + '''');
      SQL.Add('      UNION ALL');
      SQL.Add('      SELECT Building, Lean, ZLBH, DDBH, Pairs, Date FROM KCCLMONTH_Upper');
      SQL.Add('      WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(TargetDate, -1)) + '''');
      SQL.Add('    ) AS KCRK');
      SQL.Add('    GROUP BY Building, Lean, RY, DDBH');
      SQL.Add('  ) AS KCRK');
      SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = KCRK.Building AND SC.lean_no = KCRK.Lean AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = KCRK.RY');
      SQL.Add('  GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, KCRK.InPairs, KCRK.Date');
      SQL.Add(') AS KCRK');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT KCLL_Upper.RY, KCLLS_Upper.DDBH, SUM(KCLLS_Upper.Pairs) AS OutPairs FROM KCLL_Upper');
      SQL.Add('  LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO');
      SQL.Add('  WHERE KCLL_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(TargetDate)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(TargetDate)) + '''');
      SQL.Add('  GROUP BY KCLL_Upper.RY, KCLLS_Upper.DDBH');
      SQL.Add(') AS KCLL ON KCLL.RY = KCRK.RY AND KCLL.DDBH = KCRK.DDBH');
      SQL.Add('WHERE KCRK.DDBH IS NOT NULL');
      SQL.Add('GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, KCRK.RYPairs');
      SQL.Add('HAVING ISNULL(SUM(KCRK.InPairs), 0) > ISNULL(SUM(KCLL.OutPairs), 0) OR ISNULL(SUM(KCRK.InPairs), 0) < ISNULL(KCRK.RYPairs, 0);');
      ExecSQL;
    end;
  end;
end;

procedure TShoeUpperInventory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TShoeUpperInventory.FormDestroy(Sender: TObject);
begin
  ShoeUpperInventory := Nil;
end;

procedure TShoeUpperInventory.ReloadBuilding(ComboBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
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
      SQL.Add('  WHERE DATEDIFF(MONTH, CONVERT(SmallDateTime, Year + ''/'' + Month + ''/01''), CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_Start.Date)) + ''')) BETWEEN 0 AND 6');
      SQL.Add(')');
      SQL.Add('ORDER BY Building_TX');
    end
    else begin
      SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
      SQL.Add('WHERE schedule_date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_Start.Date, -1))) + '''');
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

procedure TShoeUpperInventory.ReloadLean(ComboBox, SourceBox: TComboBox; DTP_Start, DTP_End: TDateTimePicker; Mode: String);
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
      SQL.Add('  WHERE DATEDIFF(MONTH, CONVERT(SmallDateTime, Year + ''/'' + Month + ''/01''), CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_Start.Date)) + ''')) BETWEEN 0 AND 6');
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
      SQL.Add('WHERE schedule_date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(DTP_Start.Date, -1))) + '''');
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

procedure TShoeUpperInventory.FormCreate(Sender: TObject);
var
  MyIni: TIniFile;
  AppDir: string;
begin
  EditMode := false;
  ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  AppDir := ExtractFilePath(Application.ExeName);
  if (FileExists(AppDir + '\ComName.ini')) then
  begin
    try
      MyIni := TIniFile.Create(AppDir + '\ComName.ini');
      ShoePicPath := MyIni.ReadString('ShoePic', 'Bom_N31_shoePic', '');
    finally
      MyIni.Free;
    end;
  end;
  
  DTP_C.Date := Date;
  DTP_W.Date := Date;
  DTP_U.Date := Date;
  DTP_PC1.Date := Date;
  DTP_PC2.Date := Date + 2;
  DTP_PC3.Date := Date; 
  DTP_PC4.Date := Date;
  DTP_IT1.Date := StartOfTheMonth(Date); 
  DTP_IT2.Date := Date;
  DTP_IS.Date := Date;
  SelectAll1 := true;
  SelectAll2 := true;
  StringGrid1.Cells[0, 0] := 'Date'; 
  StringGrid1.Cells[0, 1] := 'Date';
  StringGrid1.Cells[0, 2] := 'WH'; 
  StringGrid1.Cells[0, 3] := '1';
  StringGrid1.ColWidths[0] := 45;
  StringGrid1.RowHeights[0] := 20;
  StringGrid1.RowHeights[1] := 20;
  StringGrid1.RowHeights[2] := 20;
  StringGrid1.DoubleBuffered := true;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY building_no');
    Active := true;

    CB_Building_C.Clear;
    CB_Building_U.Clear;
    CB_Building_PC3.Clear;

    CB_Building_C.Items.Add('ALL');
    CB_Building_U.Items.Add('ALL');
    CB_Building_PC3.Items.Add('ALL');

    while not Eof do
    begin
      CB_Building_C.Items.Add(FieldByName('building_no').AsString);
      CB_Building_U.Items.Add(FieldByName('building_no').AsString);
      CB_Building_PC3.Items.Add(FieldByName('building_no').AsString);
      Next;
    end;

    CB_Building_C.ItemIndex := 0;
    CB_Building_U.ItemIndex := 0;
    CB_Building_PC3.ItemIndex := 0;

    CB_Building_C.DropDownCount := RecordCount + 1;
    CB_Building_U.DropDownCount := RecordCount + 1;
    CB_Building_PC3.DropDownCount := RecordCount + 1;
  end;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SUBSTRING(lean_no, 1, 6) AS lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date >= ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(IncMonth(Date, -1))) + '''');
    SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY lean_no');
    Active := true;

    CB_Lean_C.Clear;
    CB_Lean_U.Clear;
    CB_Lean_PC3.Clear;

    CB_Lean_C.Items.Add('ALL');
    CB_Lean_U.Items.Add('ALL'); 
    CB_Lean_PC3.Items.Add('ALL');

    while not Eof do
    begin
      CB_Lean_C.Items.Add(FieldByName('lean_no').AsString);
      CB_Lean_U.Items.Add(FieldByName('lean_no').AsString); 
      CB_Lean_PC3.Items.Add(FieldByName('lean_no').AsString);
      Next;
    end;

    CB_Lean_C.ItemIndex := 0;
    CB_Lean_U.ItemIndex := 0; 
    CB_Lean_PC3.ItemIndex := 0;

    CB_Lean_C.DropDownCount := RecordCount + 1;
    CB_Lean_U.DropDownCount := RecordCount + 1;
    CB_Lean_PC3.DropDownCount := RecordCount + 1;
  end;


  ReloadBuilding(CB_Building_W, DTP_W, DTP_W, 'OS');
  ReloadLean(CB_Lean_W, CB_Building_W, DTP_W, DTP_W, 'OS');
  if (CB_OS_PC.Checked) then
  begin
    ReloadBuilding(CB_Building_PC, DTP_PC1, DTP_PC2, 'OS');
    ReloadLean(CB_Lean_PC, CB_Building_PC, DTP_PC1, DTP_PC2, 'OS');
  end
  else begin
    ReloadBuilding(CB_Building_PC, DTP_PC1, DTP_PC2, 'ALL');
    ReloadLean(CB_Lean_PC, CB_Building_PC, DTP_PC1, DTP_PC2, 'ALL');
  end;
  if (CB_OS_PC2.Checked) then
  begin
    ReloadBuilding(CB_Building_PC2, DTP_PC3, DTP_PC3, 'OS_Only');
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, 'OS_Only');
  end
  else begin
    ReloadBuilding(CB_Building_PC2, DTP_PC3, DTP_PC3, '');
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, '');
  end;

  ImageAlign := 'BottomRight';
  PC1.ActivePageIndex := 0;
  PC2.ActivePageIndex := 0;
  PC3.ActivePageIndex := 0;
  PC4.ActivePageIndex := 0;
  PC5.ActivePageIndex := 1;
end;

procedure TShoeUpperInventory.DTP_CChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_C, DTP_C, DTP_C, 'ALL');
  ReloadLean(CB_Lean_C, CB_Building_C, DTP_C, DTP_C, 'ALL');
end;

procedure TShoeUpperInventory.CB_Building_CChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_C, CB_Building_C, DTP_C, DTP_C, 'ALL');
end;

procedure TShoeUpperInventory.Button2Click(Sender: TObject);
begin
  CheckComponentClosingInventory(IncMonth(DTP_C.Date, -1));

  with Q_C do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#RYList'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #RYList END;');

    SQL.Add('SELECT DISTINCT ISNULL(CD.ZLBH, CDO.ZLBH) AS ZLBH INTO #RYList FROM CycleDispatchList AS CDL');
    SQL.Add('LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('LEFT JOIN CycleDispatchOthers AS CDO ON CDO.ListNo = CDL.ListNo');
    SQL.Add('WHERE CDL.ConfirmDate IS NULL AND CONVERT(VARCHAR, CDL.Date, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP_C.Date) + '''');

    SQL.Add('SELECT CAST(0 AS BIT) AS CheckStatus, CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, CDL.BUYNO, CDL.ARTICLE, CDL.ZLBH, CDL.Type, CDL.Pairs, CDL.schedule_date, CDL.Remark, CDL.ConfirmID, CDL.ConfirmDate, CDL.UserID, CDL.UserDate,');
    SQL.Add('CASE WHEN CDL.MinCycle = CDL.MaxCycle THEN CASE WHEN CDL.MinCycle = ''T0'' THEN '''' ELSE CDL.MinCycle END ELSE CDL.MinCycle + '' - '' + CDL.MaxCycle END AS Cycle,');
    SQL.Add('ISNULL(LeanRYCycles.TotalCycles, RYStatus.TotalCycles) AS TotalCycles, ISNULL(LeanRYStatus.CompletedCycles, RYStatus.CompletedCycles) AS CompletedCycles FROM (');
    SQL.Add('  SELECT CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUYNO, DDZL.ARTICLE, ISNULL(CD.ZLBH, CDO.ZLBH) AS ZLBH, CDL.Type, CDL.Pairs,');
    SQL.Add('  SC.schedule_date, CAST([dbo].fSignsToNoSigns(CDL.Remark) AS VARCHAR(150)) AS Remark, CDL.ConfirmID, CDL.ConfirmDate, CDL.UserID, CDL.UserDate,');
    SQL.Add('  ''T'' + CAST(MIN(ISNULL(CASE WHEN CD.ZLBH = CD.DDBH THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END, CASE WHEN CDO.ZLBH = CDO.DDBH THEN 1 ELSE CAST(RIGHT(CDO.DDBH, 3) AS INT) END)) AS VARCHAR) AS MinCycle,');
    SQL.Add('  ''T'' + CAST(MAX(ISNULL(CASE WHEN CD.ZLBH = CD.DDBH THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END, CASE WHEN CDO.ZLBH = CDO.DDBH THEN 1 ELSE CAST(RIGHT(CDO.DDBH, 3) AS INT) END)) AS VARCHAR) AS MaxCycle FROM CycleDispatchList AS CDL');
    SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('  LEFT JOIN CycleDispatchOthers AS CDO ON CDO.ListNo = CDL.ListNo');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = ISNULL(CD.ZLBH, CDO.ZLBH)');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, #RYList.ZLBH, MAX(SC.schedule_date) AS schedule_date FROM #RYList');
    SQL.Add('    LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = #RYList.ZLBH');
    SQL.Add('    GROUP BY SC.building_no, SC.lean_no, #RYList.ZLBH');
    SQL.Add('  ) AS SC ON SC.ZLBH = DDZL.DDBH AND SC.building_no = CDL.Building AND SC.lean_no = CDL.Lean');
    SQL.Add('  WHERE CDL.ConfirmDate IS NULL AND CONVERT(VARCHAR, CDL.Date, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP_C.Date) + '''');
    if (CB_Building_C.ItemIndex > 0) then
      SQL.Add('  AND CDL.Building LIKE ''' + CB_Building_C.Text + '%''');
    if (CB_Lean_C.ItemIndex > 0) then
      SQL.Add('  AND CDL.Lean LIKE ''' + CB_Lean_C.Text + '%''');
    if (CB_Time_C.ItemIndex > 0) then
      SQL.Add('  AND SUBSTRING(CONVERT(VARCHAR, CDL.Date, 120), 12, 5) = ''' + CB_Time_C.Text + '''');
    SQL.Add('  GROUP BY CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, DDZL.BUYNO, DDZL.ARTICLE, ISNULL(CD.ZLBH, CDO.ZLBH), CDL.Type, CDL.Pairs, SC.schedule_date, CDL.Remark, CDL.ConfirmID, CDL.ConfirmDate, CDL.UserID, CDL.UserDate');
    SQL.Add(') AS CDL');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT RYList.ZLBH, COUNT(SMDD.DDBH) AS TotalCycles, COUNT(CD.DDBH) AS CompletedCycles FROM #RYList AS RYList');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = RYList.ZLBH');
    SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.DDBH = SMDD.DDBH AND CD.GXLB = SMDD.GXLB');
    SQL.Add('  WHERE SMDD.GXLB = ''C''');
    SQL.Add('  GROUP BY RYList.ZLBH');
    SQL.Add(') AS RYStatus ON RYStatus.ZLBH = CDL.ZLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT Building, Lean, ZLBH, CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10) AS INT) - CAST(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1) AS INT) + 1 ELSE NULL END AS TotalCycles FROM (');
    SQL.Add('    SELECT Building, Lean, ZLBH, TotalCycles FROM (');
    SQL.Add('      SELECT SC.building_no AS Building, SC.lean_no AS Lean, RYList.ZLBH, CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS TotalCycles,');
    SQL.Add('      ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no, RYList.ZLBH ORDER BY SC.schedule_date DESC) AS Seq FROM #RYList AS RYList');
    SQL.Add('      LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = RYList.ZLBH');
    SQL.Add('    ) AS LeanRYCycles');
    SQL.Add('    WHERE Seq = 1');
    SQL.Add('  ) AS LeanRYCycles');
    SQL.Add(') AS LeanRYCycles ON LeanRYCycles.Building = CDL.Building AND LeanRYCycles.Lean = CDL.Lean AND LeanRYCycles.ZLBH = CDL.ZLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CDL.Building, CDL.Lean, CD.ZLBH, COUNT(CD.DDBH) AS CompletedCycles FROM #RYList AS RYList');
    SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.ZLBH = RYList.ZLBH');
    SQL.Add('  LEFT JOIN CycleDispatchList AS CDL ON CDL.ListNo = CD.ListNo');
    SQL.Add('  WHERE CDL.Type = ''Ready''');
    SQL.Add('  GROUP BY CDL.Building, CDL.Lean, CD.ZLBH');
    SQL.Add(') AS LeanRYStatus ON LeanRYStatus.Building = CDL.Building AND LeanRYStatus.Lean = CDL.Lean AND LeanRYStatus.ZLBH = CDL.ZLBH');
    SQL.Add('ORDER BY CDL.Date, CDL.UserDate');
    Active := true;

    if (RecordCount > 0) then
    begin
      DBGridEh2.ReadOnly := false;
      CachedUpdates := true;
      RequestLive := true;
    end
    else begin        
      CachedUpdates := false;
      RequestLive := false;
      DBGridEh2.ReadOnly := true;
    end;
  end;

  with Q_C1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT ISNULL(PrintNo, ''Not Printed'') AS ListNo, ISNULL(PrintNo, '''') AS PrintNo, CONVERT(VARCHAR, MIN(ConfirmDate), 111) AS Date,');
    SQL.Add('ISNULL(SUM(CASE WHEN ISNULL(Type, '''') = ''Ready'' THEN Pairs END), 0) AS Ready, ISNULL(SUM(CASE WHEN ISNULL(Type, '''') <> ''Ready'' THEN Pairs END), 0) AS Others FROM CycleDispatchList');
    SQL.Add('WHERE ConfirmDate IS NOT NULL AND CONVERT(VARCHAR, Date, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP_C.Date) + '''');
    if (CB_Building_C.ItemIndex > 0) then
      SQL.Add('AND Building LIKE ''' + CB_Building_C.Text + '%''');
    if (CB_Lean_C.ItemIndex > 0) then
      SQL.Add('AND Lean LIKE ''' + CB_Lean_C.Text + '%''');
    SQL.Add('GROUP BY ISNULL(PrintNo, ''Not Printed''), ISNULL(PrintNo, '''')');
    SQL.Add('ORDER BY ISNULL(PrintNo, '''')');
    Active := true;
  end;

  with Q_C2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#RYList'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #RYList END;');

    SQL.Add('SELECT DISTINCT ISNULL(CD.ZLBH, CDO.ZLBH) AS ZLBH INTO #RYList FROM CycleDispatchList AS CDL');
    SQL.Add('LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('LEFT JOIN CycleDispatchOthers AS CDO ON CDO.ListNo = CDL.ListNo');
    SQL.Add('WHERE CDL.ConfirmDate IS NOT NULL AND CONVERT(VARCHAR, CDL.Date, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP_C.Date) + ''' AND ISNULL(CDL.PrintNo, '''') = :PrintNo');

    SQL.Add('SELECT CAST(0 AS BIT) AS CheckStatus, CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, CDL.BUYNO, CDL.ARTICLE, CDL.ZLBH, CDL.Type, CDL.Pairs, CDL.schedule_date, CDL.Remark, CDL.ConfirmID, CDL.ConfirmDate, CDL.UserID, CDL.UserDate,');
    SQL.Add('CASE WHEN CDL.MinCycle = CDL.MaxCycle THEN CASE WHEN CDL.MinCycle = ''T0'' THEN '''' ELSE CDL.MinCycle END ELSE CDL.MinCycle + '' - '' + CDL.MaxCycle END AS Cycle,');
    SQL.Add('ISNULL(LeanRYCycles.TotalCycles, RYStatus.TotalCycles) AS TotalCycles, ISNULL(LeanRYStatus.CompletedCycles, RYStatus.CompletedCycles) AS CompletedCycles FROM (');
    SQL.Add('  SELECT CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BUYNO, DDZL.ARTICLE, ISNULL(CD.ZLBH, CDO.ZLBH) AS ZLBH, CDL.Type, CDL.Pairs,');
    SQL.Add('  SC.schedule_date, CAST([dbo].fSignsToNoSigns(CDL.Remark) AS VARCHAR(150)) AS Remark, CDL.ConfirmID, CDL.ConfirmDate, CDL.UserID, CDL.UserDate,');
    SQL.Add('  ''T'' + CAST(MIN(ISNULL(CASE WHEN CD.ZLBH = CD.DDBH THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END, CASE WHEN CDO.ZLBH = CDO.DDBH THEN 1 ELSE CAST(RIGHT(CDO.DDBH, 3) AS INT) END)) AS VARCHAR) AS MinCycle,');
    SQL.Add('  ''T'' + CAST(MAX(ISNULL(CASE WHEN CD.ZLBH = CD.DDBH THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END, CASE WHEN CDO.ZLBH = CDO.DDBH THEN 1 ELSE CAST(RIGHT(CDO.DDBH, 3) AS INT) END)) AS VARCHAR) AS MaxCycle FROM CycleDispatchList AS CDL');
    SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('  LEFT JOIN CycleDispatchOthers AS CDO ON CDO.ListNo = CDL.ListNo');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = ISNULL(CD.ZLBH, CDO.ZLBH)');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, #RYList.ZLBH, MAX(SC.schedule_date) AS schedule_date FROM #RYList');
    SQL.Add('    LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = #RYList.ZLBH');
    SQL.Add('    GROUP BY SC.building_no, SC.lean_no, #RYList.ZLBH');
    SQL.Add('  ) AS SC ON SC.ZLBH = DDZL.DDBH AND SC.building_no = CDL.Building AND SC.lean_no = CDL.Lean');
    SQL.Add('  WHERE CDL.ConfirmDate IS NOT NULL AND CONVERT(VARCHAR, CDL.Date, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP_C.Date) + ''' AND ISNULL(CDL.PrintNo, '''') = :PrintNo');
    if (CB_Building_C.ItemIndex > 0) then
      SQL.Add('  AND CDL.Building LIKE ''' + CB_Building_C.Text + '%''');
    if (CB_Lean_C.ItemIndex > 0) then
      SQL.Add('  AND CDL.Lean LIKE ''' + CB_Lean_C.Text + '%''');
    SQL.Add('  GROUP BY CDL.ListNo, CDL.Building, CDL.Lean, CDL.Date, DDZL.BUYNO, DDZL.ARTICLE, ISNULL(CD.ZLBH, CDO.ZLBH), CDL.Type, CDL.Pairs, SC.schedule_date, CDL.Remark, CDL.ConfirmID, CDL.ConfirmDate, CDL.UserID, CDL.UserDate');
    SQL.Add(') AS CDL');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT RYList.ZLBH, COUNT(SMDD.DDBH) AS TotalCycles, COUNT(CD.DDBH) AS CompletedCycles FROM #RYList AS RYList');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = RYList.ZLBH');
    SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.DDBH = SMDD.DDBH AND CD.GXLB = SMDD.GXLB');
    SQL.Add('  WHERE SMDD.GXLB = ''C''');
    SQL.Add('  GROUP BY RYList.ZLBH');
    SQL.Add(') AS RYStatus ON RYStatus.ZLBH = CDL.ZLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT Building, Lean, ZLBH, CASE WHEN ISNUMERIC(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(TotalCycles, CHARINDEX(''-'', TotalCycles)+1, 10) AS INT) - CAST(SUBSTRING(TotalCycles, 1, CHARINDEX(''-'', TotalCycles)-1) AS INT) + 1 ELSE NULL END AS TotalCycles FROM (');
    SQL.Add('    SELECT Building, Lean, ZLBH, TotalCycles FROM (');
    SQL.Add('      SELECT SC.building_no AS Building, SC.lean_no AS Lean, RYList.ZLBH, CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS TotalCycles,');
    SQL.Add('      ROW_NUMBER() OVER(PARTITION BY SC.building_no, SC.lean_no, RYList.ZLBH ORDER BY SC.schedule_date DESC) AS Seq FROM #RYList AS RYList');
    SQL.Add('      LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = RYList.ZLBH');
    SQL.Add('    ) AS LeanRYCycles');
    SQL.Add('    WHERE Seq = 1');
    SQL.Add('  ) AS LeanRYCycles');
    SQL.Add(') AS LeanRYCycles ON LeanRYCycles.Building = CDL.Building AND LeanRYCycles.Lean = CDL.Lean AND LeanRYCycles.ZLBH = CDL.ZLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CDL.Building, CDL.Lean, CD.ZLBH, COUNT(CD.DDBH) AS CompletedCycles FROM #RYList AS RYList');
    SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.ZLBH = RYList.ZLBH');
    SQL.Add('  LEFT JOIN CycleDispatchList AS CDL ON CDL.ListNo = CD.ListNo');
    SQL.Add('  WHERE CDL.Type = ''Ready''');
    SQL.Add('  GROUP BY CDL.Building, CDL.Lean, CD.ZLBH');
    SQL.Add(') AS LeanRYStatus ON LeanRYStatus.Building = CDL.Building AND LeanRYStatus.Lean = CDL.Lean AND LeanRYStatus.ZLBH = CDL.ZLBH');
    SQL.Add('ORDER BY CDL.Building, CDL.Lean, CDL.Date, CDL.UserDate');
    Active := true;
  end;
end;

procedure TShoeUpperInventory.Button3Click(Sender: TObject);
var
  flag: boolean;
begin
  flag := false;
  with Q_C do
  begin
    First;
    DisableControls;
    while not Eof do
    begin
      if (FieldByName('CheckStatus').AsBoolean) then
      begin
        flag := true;
        Break;
      end;
      Next;
    end;
    First;
    EnableControls;
  end;

  if (flag = false) then
  begin
    ShowMessage('Please select a item .');
    Exit;
  end;

  if (MessageDlg('Are you sure you want to confirm ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with Q_C do
    begin
      First;
      while not Eof do
      begin
        if (FieldByName('CheckStatus').AsBoolean) then
        begin
          QTemp.Active := false;
          QTemp.SQL.Clear;
          QTemp.SQL.Add('UPDATE CycleDispatchList SET ConfirmID = ''' + main.Edit1.Text + ''', ConfirmDate = GetDate()');
          QTemp.SQL.Add('WHERE ListNo = ''' + FieldByName('ListNo').AsString + '''');
          QTemp.ExecSQL;
        end;
        Next;
      end;
    end;
    Q_C.Active := false; 
    Q_C.Active := true;
    Q_C1.Active := false;
    Q_C1.Active := true;
    ShowMessage('Completed');
  end;
end;

procedure TShoeUpperInventory.DBGridEh2TitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  if (ACol = 0) then
  begin
    Q_C.First;
    Q_C.DisableControls;
    while not Q_C.Eof do
    begin
      Q_C.Edit;
      Q_C.FieldByName('CheckStatus').Value := SelectAll1;
      if (Q_C.FieldByName('ZLBH').AsString = '') then
        Q_C.FieldByName('CheckStatus').Value := false;
      Q_C.Next;
    end;
    Q_C.First;
    Q_C.EnableControls;
    SelectAll1 := not SelectAll1;
    if (SelectAll1) then
      DBGridEh2.Columns[0].Title.ImageIndex := 0
    else
      DBGridEh2.Columns[0].Title.ImageIndex := 1;
  end;
end;
       
procedure TShoeUpperInventory.DBGridEh2Columns0UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Q_C.FieldByName('ZLBH').AsString = '') then
  begin
    ShowMessage('There is no selected RY, cannot be confirmed');
    Value := false;
  end;
end;

procedure TShoeUpperInventory.Q_CAfterOpen(DataSet: TDataSet);
begin
  Button3.Enabled := true;
  SelectAll1 := true;
  DBGridEh2.Columns[0].Title.ImageIndex := 0;
end;

procedure TShoeUpperInventory.FormResize(Sender: TObject);
begin
  DBGridEh2.Height := (Self.Height - Panel4.Height - 80) DIV 2;

  if (ImageAlign = 'BottomRight') then
  begin
    ImageBox.Left := Self.Width - ImageBox.Width - 80;
    ImageBox.Top := Self.Height - ImageBox.Height - 145;
    LB_Right.Visible := false;
    LB_Left.Visible := true;
  end
  else if (ImageAlign = 'BottomLeft') then
  begin
    ImageBox.Left := 80;
    ImageBox.Top := Self.Height - ImageBox.Height - 145;
    LB_Right.Visible := true;
    LB_Left.Visible := false;
  end;

  Panel23.Height := (TabSheet16.Height - Panel22.Height - 6) DIV 3;
  Panel24.Height := Panel23.Height;
end;

procedure TShoeUpperInventory.Button4Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Row: integer;
begin
  if (Q_C2.Active) then
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

      eclApp.Cells[1, 1] := '　CONG TY TNHH TY XUAN';
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[1, 3]].Merge;
      eclApp.Cells[1, 1].Select;
      eclApp.Selection.HorizontalAlignment := xlHAlignLeft;
      eclApp.Cells[2, 1] := '　　　億春責任有限公司';
      eclApp.Range[eclApp.Cells[2, 1], eclApp.Cells[2, 3]].Merge;
      eclApp.Cells[2, 1].Select;
      eclApp.Selection.HorizontalAlignment := xlHAlignLeft;
      eclApp.Cells[1, 10] := '單號 : ' + Q_C1.FieldByName('ListNo').AsString + '　';
      eclApp.Range[eclApp.Cells[1, 10], eclApp.Cells[2, 11]].Merge;
      eclApp.Cells[1, 10].Select;
      eclApp.Selection.HorizontalAlignment := xlHAlignRight;

      eclApp.Cells[3, 1] := 'PHIEU XUAT VAT TU PHOI DOI';
      eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[3, 11]].Merge;
      eclApp.Cells[4, 1] := '出材料單配雙';
      eclApp.Range[eclApp.Cells[4, 1], eclApp.Cells[4, 11]].Merge;
      eclApp.Range[eclApp.Cells[3, 1], eclApp.Cells[4, 11]].Font.Size := 14;

      eclapp.Rows[5].RowHeight := 10;

      eclApp.Cells[6, 1] := 'DON VI PHAT' + #10 + '發料單位';
      eclApp.Range[eclApp.Cells[6, 1], eclApp.Cells[6, 2]].Merge;
      eclApp.Cells[6, 3] := 'TY XUAN';
      eclApp.Range[eclApp.Cells[6, 3], eclApp.Cells[6, 4]].Merge;
      eclApp.Cells[6, 3].Select;
      eclApp.Selection.HorizontalAlignment := xlHAlignLeft;
      eclApp.Cells[6, 6] := 'DON VI LANH' + #10 + '領料單位';
      eclApp.Range[eclApp.Cells[6, 6], eclApp.Cells[6, 7]].Merge;
      eclApp.Cells[6, 8] := 'TY DAT';
      eclApp.Cells[6, 8].Select;
      eclApp.Selection.HorizontalAlignment := xlHAlignLeft;
      eclApp.Cells[6, 10] := 'NGAY' + #10 + '日期';
      eclApp.Cells[6, 11].NumberFormatLocal := 'yyyy/mm/dd';
      eclApp.Cells[6, 11] := Q_C1.FieldByName('Date').AsString;
      eclApp.Cells[6, 11].Select;
      eclApp.Selection.HorizontalAlignment := xlHAlignLeft;
      eclapp.Rows[6].Autofit;

      eclApp.Cells[7, 1] := 'SO TT' + #10 + '字號';
      eclApp.Cells[7, 2] := 'DON VI' + #10 + '單位';
      eclApp.Cells[7, 3] := 'BUY';
      eclApp.Cells[7, 4] := 'SKU';
      eclApp.Cells[7, 5] := 'MA HANG' + #10 + '材料名稱';
      eclApp.Range[eclApp.Cells[7, 5], eclApp.Cells[7, 7]].Merge;
      eclApp.Cells[7, 8] := 'SO LUONG' + #10 + '數量';
      eclApp.Cells[7, 9] := 'GHI GHU' + #10 + '備註';
      eclApp.Range[eclApp.Cells[7, 9], eclApp.Cells[7, 11]].Merge;

      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[7, 11]].Borders[1].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[7, 11]].Borders[2].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[7, 11]].Borders[3].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[7, 1], eclApp.Cells[7, 11]].Borders[4].LineStyle := xlContinuous;

      Q_C2.First;
      Row := 8;
      while not Q_C2.Eof do
      begin
        eclApp.Cells[Row, 1] := Row - 7;
        eclApp.Cells[Row, 2] := Q_C2.FieldByName('Building').AsString + ' ' + Q_C2.FieldByName('Lean').AsString;
        eclApp.Cells[Row, 3] := Q_C2.FieldByName('BUYNO').AsString;
        eclApp.Cells[Row, 4] := Q_C2.FieldByName('ARTICLE').AsString;
        if (Q_C2.FieldByName('Cycle').AsString <> '') then
          eclApp.Cells[Row, 5] := Q_C2.FieldByName('ZLBH').AsString + ' [TC ' + Q_C2.FieldByName('TotalCycles').AsString + 'T] (' + Q_C2.FieldByName('Cycle').AsString + ')'
        else
          eclApp.Cells[Row, 5] := Q_C2.FieldByName('ZLBH').AsString;
        eclApp.Range[eclApp.Cells[Row, 5], eclApp.Cells[Row, 7]].Merge;
        eclApp.Cells[Row, 8] := Q_C2.FieldByName('Pairs').Value;
        eclApp.Cells[Row, 9] := Q_C2.FieldByName('Remark').AsString;
        eclApp.Range[eclApp.Cells[Row, 9], eclApp.Cells[Row, 11]].Merge;

        eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 11]].Borders[1].LineStyle := xlContinuous;
        eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 11]].Borders[2].LineStyle := xlContinuous;
        eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 11]].Borders[3].LineStyle := xlContinuous;
        eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 11]].Borders[4].LineStyle := xlContinuous;

        Q_C2.Next;
        Inc(Row);
      end;

      eclapp.Rows[Row].RowHeight := 10;
      Inc(Row);

      eclApp.Cells[Row, 1] := 'CHU QUAN';
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 4]].Merge;
      eclApp.Cells[Row + 1, 1] := '主管';
      eclApp.Range[eclApp.Cells[Row + 1, 1], eclApp.Cells[Row + 1, 4]].Merge;

      eclApp.Cells[Row, 6] := 'THU KHO';
      eclApp.Cells[Row + 1, 6] := '倉管員';
      
      eclApp.Cells[Row, 8] := 'BAO VE';
      eclApp.Cells[Row + 1, 8] := '保衛';
      
      eclApp.Cells[Row, 10] := 'NGUOI NHAN';
      eclApp.Range[eclApp.Cells[Row, 10], eclApp.Cells[Row, 11]].Merge;
      eclApp.Cells[Row + 1, 10] := '收料員';
      eclApp.Range[eclApp.Cells[Row + 1, 10], eclApp.Cells[Row + 1, 11]].Merge;

      eclapp.Columns[1].Autofit;
      eclapp.Columns[2].Autofit; 
      eclapp.Columns[3].Autofit;
      eclapp.Columns[4].Autofit;
      eclapp.Columns[5].ColumnWidth := 8.43;
      eclapp.Columns[6].ColumnWidth := 8.43;
      eclapp.Columns[7].ColumnWidth := 8.43;
      eclapp.Columns[8].ColumnWidth := 10;
      eclapp.Columns[8].Autofit;;
      eclapp.Columns[9].ColumnWidth := 8.43;
      eclapp.Columns[10].ColumnWidth := 8.43;
      eclapp.Columns[11].ColumnWidth := 10;
      eclapp.Columns[11].Autofit;
                                                         
      eclapp.ActiveSheet.PageSetup.Zoom := False;
      eclapp.ActiveSheet.PageSetup.FitToPagesWide := 1;   
      eclapp.ActiveSheet.PageSetup.FitToPagesTall := False;
      eclapp.ActiveSheet.PageSetup.PrintTitleRows := '$1:$6';
      eclapp.ActiveSheet.PageSetup.CenterFooter := '第 &P 頁，共 &N 頁'; 
      eclapp.ActiveSheet.PageSetup.RightFooter := 'T-DCC-127A';
      eclapp.ActiveSheet.PageSetup.TopMargin := 0.6/0.035;
      eclapp.ActiveSheet.PageSetup.BottomMargin := 1/0.035;
      eclapp.ActiveSheet.PageSetup.LeftMargin := 0.6/0.035;
      eclapp.ActiveSheet.PageSetup.RightMargin := 0.6/0.035;
      eclapp.ActiveSheet.PageSetup.FooterMargin := 0;

      ShowMessage('Successful');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TShoeUpperInventory.Q_C1AfterOpen(DataSet: TDataSet);
begin
  if (Q_C1.FieldByName('PrintNo').AsString = '') then
  begin
    Button5.Enabled := true;
    Button4.Enabled := false;
  end
  else begin
    Button5.Enabled := false;
    Button4.Enabled := true;
  end;
end;
   
procedure TShoeUpperInventory.Q_C1AfterScroll(DataSet: TDataSet);
begin
  if (Q_C1.FieldByName('PrintNo').AsString = '') then
  begin
    Button5.Enabled := true;
    Button4.Enabled := false;
  end
  else begin
    Button5.Enabled := false;
    Button4.Enabled := true;
  end;
end;

procedure TShoeUpperInventory.DBGridEh3TitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  if (ACol = 0) then
  begin
    Q_C2.First;
    Q_C2.DisableControls;
    while not Q_C2.Eof do
    begin
      Q_C2.Edit;
      Q_C2.FieldByName('CheckStatus').Value := SelectAll2;
      Q_C2.Next;
    end;
    Q_C2.First;
    Q_C2.EnableControls;
    SelectAll2 := not SelectAll2;
    if (SelectAll2) then
      DBGridEh3.Columns[0].Title.ImageIndex := 0
    else
      DBGridEh3.Columns[0].Title.ImageIndex := 1;
  end;
end;

procedure TShoeUpperInventory.Q_C2AfterOpen(DataSet: TDataSet);
begin
  if (Q_C1.FieldByName('PrintNo').AsString = '') AND (Q_C2.RecordCount > 0) then
  begin
    SelectAll2 := true;
    DBGridEh3.Columns[0].Title.ImageIndex := 0;
    DBGridEh3.Columns[0].Visible := true;
    Q_C2.CachedUpdates := true;
    Q_C2.RequestLive := true;
    Q_C2.Edit;
  end
  else begin
    Q_C2.CachedUpdates := false;
    Q_C2.RequestLive := false;
    DBGridEh3.Columns[0].Visible := false;
  end;

  if (Q_C2.RecordCount > 0) then
    Delete1.Visible := true
  else
    Delete1.Visible := false;
end;

procedure TShoeUpperInventory.Button5Click(Sender: TObject);
var
  flag: boolean;
begin
  flag := false;
  with Q_C2 do
  begin
    First;
    DisableControls;
    while not Eof do
    begin
      if (FieldByName('CheckStatus').AsBoolean) then
      begin
        flag := true;
        Break;
      end;
      Next;
    end;
    First;
    EnableControls;
  end;

  if (flag = false) then
  begin
    ShowMessage('Please select a item .');
    Exit;
  end;

  if (MessageDlg('Are you sure you want to generate a list no. ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DECLARE @Seq AS Int = (');
      SQL.Add('  SELECT ISNULL(MAX(CAST(SUBSTRING(PrintNo, 7, 5) AS INT)), 0) AS ListNo FROM CycleDispatchList');
      SQL.Add('  WHERE PrintNo LIKE SUBSTRING(CONVERT(VARCHAR, GETDATE(), 112), 1, 6) + ''%''');
      SQL.Add(');');

      SQL.Add('DECLARE @ListNo AS VARCHAR(11) = (SELECT SUBSTRING(CONVERT(VARCHAR, GETDATE(), 112), 1, 6) + RIGHT(''0000'' + CAST(@Seq + 1 AS VARCHAR), 5));');

      SQL.Add('UPDATE CycleDispatchList SET PrintNo = @ListNo');
      SQL.Add('WHERE ListNo IN (');
      Q_C2.First;
      Q_C2.DisableControls;
      while not Q_C2.Eof do
      begin
        if (Q_C2.FieldByName('CheckStatus').AsBoolean) then
          SQL.Add('''' + Q_C2.FieldByName('ListNo').AsString + ''', ');
        Q_C2.Next;
      end;
      SQL.Add('''X''');
      SQL.Add(')');
      ExecSQL;
      Q_C2.First;
      Q_C2.EnableControls;
    end;

    Q_C1.Active := false;
    Q_C1.Active := true;
    ShowMessage('Completed');
  end;
end;

procedure TShoeUpperInventory.Delete1Click(Sender: TObject);
begin
  if (MessageDlg('Are you sure you want to delete it ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM CycleDispatchList WHERE ListNo = ''' + Q_C2.FieldByName('ListNo').AsString + ''';');
      SQL.Add('DELETE FROM CycleDispatch WHERE ListNo = ''' + Q_C2.FieldByName('ListNo').AsString + ''' AND GXLB = ''C'';');
      SQL.Add('DELETE FROM CycleDispatchOthers WHERE ListNo = ''' + Q_C2.FieldByName('ListNo').AsString + ''';');
      ExecSQL;
    end;

    Q_C2.Active := false;
    Q_C2.Active := true;

    if (Q_C2.RecordCount = 0) then
    begin
      Q_C1.Active := false;
      Q_C1.Active := true;
    end;

    ShowMessage('Completed');
  end;
end;

procedure TShoeUpperInventory.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Q_C.FieldByName('TotalCycles').AsInteger = Q_C.FieldByName('CompletedCycles').AsInteger) then
  begin
    DBGridEh2.Canvas.Brush.Color := clLime;
    DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, GridsEh.TGridDrawState(State));
  end;
end;

procedure TShoeUpperInventory.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Q_C2.FieldByName('TotalCycles').AsInteger = Q_C2.FieldByName('CompletedCycles').AsInteger) then
  begin
    DBGridEh3.Canvas.Brush.Color := clLime;
    DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, GridsEh.TGridDrawState(State));
  end;
end;

procedure TShoeUpperInventory.DTP_UChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_U, DTP_U, DTP_U, 'ALL');
  ReloadLean(CB_Lean_U, CB_Building_U, DTP_U, DTP_U, 'ALL');
end;

procedure TShoeUpperInventory.CB_Building_UChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_U, CB_Building_U, DTP_U, DTP_U, 'ALL');
end;

procedure TShoeUpperInventory.BUI1Click(Sender: TObject);
begin
  with Q_UI do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh1.Columns[4].ButtonStyle := cbsEllipsis;
  BUI4.Enabled := true;
  BUI5.Enabled := true;
  EditMode := true;
end;

procedure TShoeUpperInventory.BUI2Click(Sender: TObject);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCRK.RY, KCRK.DDBH, KCRK.InPairs, ISNULL(SUM(KCLLS.Pairs), 0) AS OutPairs FROM (');
    SQL.Add('  SELECT KCRK.RY, KCRKS.DDBH, ISNULL(SUM(CASE WHEN KCRK.RKNO <> ''' + Q_UI.FieldByName('RKNO').AsString + ''' THEN KCRKS.Pairs END), 0) AS InPairs FROM KCRK_Upper AS KCRK');
    SQL.Add('  LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('  WHERE ISNULL(KCRKS.Pairs, 0) > 0 AND KCRK.RY = ''' + Q_UI.FieldByName('RY').AsString  + '''');
    SQL.Add('  GROUP BY KCRK.RY, KCRKS.DDBH');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN KCLL_Upper AS KCLL ON KCLL.RY = KCRK.RY');
    SQL.Add('LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.LLNO = KCLL.LLNO AND KCLLS.DDBH = KCRK.DDBH');
    SQL.Add('GROUP BY KCRK.RY, KCRK.DDBH, KCRK.InPairs');
    SQL.Add('HAVING KCRK.InPairs < ISNULL(SUM(KCLLS.Pairs), 0)');
    Active := true;
  end;

  if (QTemp.RecordCount = 0) then
  begin
    with Q_UI do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := 0;
    end;

    BUI4.Enabled := true;
    BUI5.Enabled := true;
    EditMode := true;
  end
  else begin
    ShowMessage('Some cycles of this RY have already been shipped out, execution denied.');
  end;
end;

procedure TShoeUpperInventory.BUI3Click(Sender: TObject);
begin
  with Q_UI do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh1.Columns[4].ButtonStyle := cbsEllipsis;
  BUI4.Enabled := true;
  BUI5.Enabled := true;
  EditMode := true;
end;

procedure TShoeUpperInventory.BUI4Click(Sender: TObject);
var
  i: integer;
begin
  try
    Q_UI.First;
    for i := 1 to Q_UI.RecordCount do
    begin
      case Q_UI.UpdateStatus of
        usInserted:
        begin
          if (Q_UI.FieldByName('RY').IsNull) then
          begin
            Q_UI.Delete;
          end
          else begin
            with QTemp do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT ISNULL(LEFT(MAX(RKNO), 6), LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6)) + RIGHT(''00000'' + CAST(ISNULL(CAST(RIGHT(MAX(RKNO), 5) AS INT), 0) + 1 AS VARCHAR), 5) AS RKNO,');
              SQL.Add('CONVERT(SmallDateTime, CONVERT(VARCHAR, GETDATE(), 111)) AS Date FROM KCRK_Upper');
              SQL.Add('WHERE RKNO LIKE LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6) + ''%''');
              Active := true;
            end;

            Q_UI.Edit;
            Q_UI.FieldByName('RKNO').Value := QTemp.FieldByName('RKNO').AsString;
            Q_UI.FieldByName('Date').Value := QTemp.FieldByName('Date').AsDateTime;
            Q_UI.FieldByName('UserID').Value := main.Edit1.Text;
            U_UI.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_UI.FieldByName('YN').Value = 0) then
          begin
            with QTemp do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('DELETE FROM KCRKS_Upper WHERE RKNO = ''' + Q_UI.FieldByName('RKNO').AsString + '''');
              ExecSQL;
            end;

            U_UI.Apply(ukDelete);
          end
          else if (Q_UI.FieldByName('RY').IsNull = false) then
          begin
            if (Q_UI.FieldByName('RY').Value <> Q_UI.FieldByName('RY').OldValue) then
            begin
              with QTemp do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('DELETE FROM KCRKS_Upper WHERE RKNO = ''' + Q_UI.FieldByName('RKNO').AsString + '''');
                ExecSQL;
              end;
            end;

            Q_UI.Edit;
            Q_UI.FieldByName('UserID').Value := main.Edit1.text;
            U_UI.Apply(ukModify);
          end;
        end;
      end;

      Q_UI.Next;
    end;

    Q_UI.Active := false;
    Q_UI.CachedUpdates := false;
    Q_UI.RequestLive := false;
    Q_UI.Active := true;
    DBGridEh1.Columns[4].ButtonStyle := cbsNone;
    BUI4.Enabled := false;
    BUI5.Enabled := false;
    EditMode := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TShoeUpperInventory.BUI5Click(Sender: TObject);
begin
  with Q_UI do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh1.Columns[4].ButtonStyle := cbsNone;
  BUI4.Enabled := false;
  BUI5.Enabled := false;
  EditMode := false;
end;

procedure TShoeUpperInventory.Button1Click(Sender: TObject);
begin
  SearchDate_U := DTP_U.Date;
  CheckUpperClosingInventory(IncMonth(DTP_U.Date, -1));

  with Q_UI do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCRK.RKNO, KCRK.Building, KCRK.Lean, KCRK.DAOMH, KCRK.RY, KCRK.PlanDate, KCRK.Article, KCRK.ShipDate, KCRK.country,');
    SQL.Add('KCRK.Pairs, KCRK.RYPairs - SUM(KCRKS_Upper.Pairs) AS LackPairs, KCRK.UserID, KCRK.UserDate, KCRK.YN, KCRK.Date FROM (');
    SQL.Add('  SELECT KCRK.RKNO, SC.building_no AS Building, SC.lean_no AS Lean, XXZL.DAOMH, KCRK.RY, CASE WHEN SUM(CAST(SC.sl AS INT)) <= DDZL.Pairs THEN SUM(CAST(SC.sl AS INT)) ELSE DDZL.Pairs END AS RYPairs,');
    SQL.Add('  MIN(SC.schedule_date) AS PlanDate, DDZL.Article, DDZL.ShipDate, LBZLS.YWSM AS country, KCRK.Pairs, KCRK.UserID, KCRK.UserDate, KCRK.YN, KCRK.Date FROM (');
    SQL.Add('    SELECT KCRK_Upper.RKNO, KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRK_Upper.UserID, KCRK_Upper.UserDate, KCRK_Upper.YN, KCRK_Upper.Date, ISNULL(SUM(KCRKS_Upper.Pairs), 0) AS Pairs FROM KCRK_Upper');
    SQL.Add('    LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('    WHERE 1 = 1');
    if (CB_U.Checked = false) then
      SQL.Add('    AND KCRK_Upper.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + '''');
    if (CB_Building_U.ItemIndex > 0) then
      SQL.Add('    AND KCRK_Upper.Building = ''' + CB_Building_U.Text + '''');
    if (CB_Lean_U.ItemIndex > 0) then
      SQL.Add('    AND KCRK_Upper.Lean = ''' + CB_Lean_U.Text + '''');
    if (ED_RY_U.Text <> '') then
      SQL.Add('    AND KCRK_Upper.RY LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add('    GROUP BY KCRK_Upper.RKNO, KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRK_Upper.UserID, KCRK_Upper.UserDate, KCRK_Upper.YN, KCRK_Upper.Date');
    SQL.Add('  ) AS KCRK');
    SQL.Add('  LEFT JOIN schedule_crawler AS SC ON SC.building_no = KCRK.Building AND SUBSTRING(SC.lean_no, 1, 6) = KCRK.Lean');
    SQL.Add('  AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = KCRK.RY');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
    SQL.Add('  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('  LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
    SQL.Add('  GROUP BY KCRK.RKNO, KCRK.RY, DDZL.Pairs, SC.building_no, SC.lean_no, DDZL.Article, DDZL.ShipDate, LBZLS.YWSM, XXZL.DAOMH, KCRK.Pairs, KCRK.UserID, KCRK.UserDate, KCRK.YN, KCRK.Date');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN KCRK_Upper ON KCRK_Upper.Building = KCRK.Building AND KCRK_Upper.Lean = KCRK.Lean AND KCRK_Upper.RY = KCRK.RY AND KCRK_Upper.Date <= KCRK.Date');
    SQL.Add('LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('GROUP BY KCRK.RKNO, KCRK.Building, KCRK.Lean, KCRK.DAOMH, KCRK.RY, KCRK.PlanDate, KCRK.Article, KCRK.ShipDate, KCRK.country, KCRK.Pairs, KCRK.RYPairs, KCRK.UserID, KCRK.UserDate, KCRK.YN, KCRK.Date');
    SQL.Add('ORDER BY KCRK.RKNO DESC');
    Active := true;
  end;
  Q_UIC.Active := true;

  with Q_UO do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCLL.LLNO, SC.building_no AS Building, SC.lean_no AS Lean, XXZL.DAOMH, KCLL.RY, MIN(SC.schedule_date) AS PlanDate,');
    SQL.Add('DDZL.Article, DDZL.ShipDate, LBZLS.YWSM AS country, KCLL.Pairs, KCLL.UserID, KCLL.UserDate, KCLL.YN, KCLL.Date FROM (');
    SQL.Add('  SELECT KCLL_Upper.LLNO, KCLL_Upper.Building, KCLL_Upper.Lean, KCLL_Upper.RY, KCLL_Upper.UserID, KCLL_Upper.UserDate, KCLL_Upper.YN, KCLL_Upper.Date, ISNULL(SUM(KCLLS_Upper.Pairs), 0) AS Pairs FROM KCLL_Upper');
    SQL.Add('  LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO');
    SQL.Add('  WHERE 1 = 1');
    if (CB_U.Checked = false) then
      SQL.Add('  AND KCLL_Upper.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + '''');
    if (CB_Building_U.ItemIndex > 0) then
      SQL.Add('  AND KCLL_Upper.Building = ''' + CB_Building_U.Text + '''');
    if (CB_Lean_U.ItemIndex > 0) then
      SQL.Add('  AND KCLL_Upper.Lean = ''' + CB_Lean_U.Text + '''');
    if (ED_RY_U.Text <> '') then
      SQL.Add('  AND KCLL_Upper.RY LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add('  GROUP BY KCLL_Upper.LLNO, KCLL_Upper.Building, KCLL_Upper.Lean, KCLL_Upper.RY, KCLL_Upper.UserID, KCLL_Upper.UserDate, KCLL_Upper.YN, KCLL_Upper.Date');
    SQL.Add(') AS KCLL');
    SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = KCLL.Building AND SUBSTRING(SC.lean_no, 1, 6) = KCLL.Lean');
    SQL.Add('AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = KCLL.RY');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCLL.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
    SQL.Add('GROUP BY KCLL.LLNO, SC.building_no, SC.lean_no, XXZL.DAOMH, KCLL.RY, DDZL.Article, DDZL.ShipDate, LBZLS.YWSM, KCLL.Pairs, KCLL.UserID, KCLL.UserDate, KCLL.YN, KCLL.Date');
    SQL.Add('ORDER BY KCLL.LLNO DESC');
    Active := true;
  end;
  Q_UOC.Active := true;

  with Q_I do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#KCRK'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #KCRK END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#Inventory'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Inventory END;');

    SQL.Add('SET ARITHABORT ON;');
    SQL.Add('SET ANSI_NULLS ON;');
    SQL.Add('SET QUOTED_IDENTIFIER ON;');
    SQL.Add('SET CONCAT_NULL_YIELDS_NULL ON;');
    SQL.Add('SET ANSI_WARNINGS ON;');
    SQL.Add('SET ANSI_PADDING ON;');
    ExecSQL;

    SQL.Add('SELECT ISNULL(SC.Building, KCRK.Building) AS Building, ISNULL(SC.Lean, KCRK.Lean) AS Lean, KCRK.RY, SC.SubSeq, SC.MinCycle, SC.MaxCycle, SC.Pairs, SC.schedule_date, KCRK.DDBH,');
    SQL.Add('SUM(CASE WHEN KCRK.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + ''' THEN KCRK.Pairs END) AS TodayInPairs, MIN(KCRK.Date) AS FirstDate, MAX(KCRK.Date) AS LastDate INTO #KCRK FROM (');
    SQL.Add('  SELECT KCRK_Upper.Date, KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH, KCRKS_Upper.Pairs FROM KCRK_Upper');
    SQL.Add('  LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('  WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_U.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + ''' AND ISNULL(KCRKS_Upper.Pairs, 0) > 0');
    if (ED_RY_U.Text <> '') then
      SQL.Add('  AND KCRK_Upper.RY LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT Date, Building, Lean, ZLBH, DDBH, Pairs FROM KCCLMONTH_Upper');
    SQL.Add('  WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_U.Date, -1)) + ''' AND ISNULL(KCCLMONTH_Upper.Pairs, 0) > 0');
    if (ED_RY_U.Text <> '') then
      SQL.Add('  AND ZLBH LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SC.Building, SC.Lean, SC.RY, SC.SubSeq, SC.Pairs, SC.schedule_date,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle FROM (');
    SQL.Add('    SELECT Building, Lean, RY, Pairs, schedule_date, SubSeq, x.value(''.'', ''NVARCHAR(50)'') AS Cycles FROM (');
    SQL.Add('      SELECT Building, Lean, RY, Pairs, schedule_date, SubSeq, CAST(''<x>'' + REPLACE(Cycles, ''+'', ''</x><x>'') + ''</x>'' AS XML) AS XmlData FROM (');
    SQL.Add('        SELECT KCRK.Building, KCRK.Lean, KCRK.RY, CASE WHEN SUM(CAST(SC.sl AS INT)) <= DDZL.Pairs THEN SUM(CAST(SC.sl AS INT)) ELSE DDZL.Pairs END AS Pairs, MIN(SC.schedule_date) AS schedule_date,');
    SQL.Add('        CASE WHEN RIGHT(SC.ry, 3) LIKE ''%-%'' THEN SUBSTRING(RIGHT(SC.ry, 3), CHARINDEX(''-'', RIGHT(SC.ry, 3)) + 1, LEN(RIGHT(SC.ry, 3)) - CHARINDEX(''-'', RIGHT(SC.ry, 3))) END AS SubSeq,');
    SQL.Add('        CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM (');
    SQL.Add('          SELECT DISTINCT Building, Lean, RY FROM KCRK_Upper');
    SQL.Add('          WHERE KCRK_Upper.Date <= ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + '''');
    if (ED_RY_U.Text <> '') then
      SQL.Add('          AND RY LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add('        ) AS KCRK');
    SQL.Add('        LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
    SQL.Add('        LEFT JOIN schedule_crawler AS SC ON SC.building_no = KCRK.Building AND SC.lean_no = KCRK.Lean');
    SQL.Add('        AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = DDZL.DDBH');
    SQL.Add('        GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, DDZL.Pairs, SC.RY, SC.stitching');
    SQL.Add('      ) AS SC');
    SQL.Add('    ) AS SC');
    SQL.Add('    OUTER APPLY XmlData.nodes(''/x'') AS B(x)');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY SC.Building, SC.Lean, SC.RY, SC.SubSeq, SC.Pairs, SC.schedule_date, SC.Cycles');
    SQL.Add(') AS SC ON SC.RY = KCRK.RY AND CASE WHEN KCRK.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(KCRK.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('GROUP BY ISNULL(SC.Building, KCRK.Building), ISNULL(SC.Lean, KCRK.Lean), KCRK.RY, SC.SubSeq, SC.MinCycle, SC.MaxCycle, SC.Pairs, SC.schedule_date, KCRK.DDBH;');

    SQL.Add('SELECT KCRK.Building, KCRK.Lean, XXZL.DAOMH, KCRK.RY AS ZLBH, KCRK.RY + CASE WHEN KCRK.SubSeq IS NULL THEN '''' ELSE ''-'' + CAST(KCRK.SubSeq AS VARCHAR) END AS RY,');
    SQL.Add('KCRK.MinCycle, KCRK.MaxCycle, SUBSTRING(CONVERT(VARCHAR, KCRK.schedule_date, 111), 6, 5) AS Date, XXZL.ARTICLE, KCRK.Pairs,');
    SQL.Add('ISNULL(KCRK.TotalInPairs, 0) AS TotalInPairs, ISNULL(SUM(KCRK.TodayInPairs), 0) AS TodayInPairs, KCRK.Pairs - ISNULL(KCRK.TotalInPairs, 0) AS LackPairs,');
    SQL.Add('CASE WHEN ISNULL(KCRK.TotalInPairs, 0) = KCRK.Pairs THEN SUBSTRING(CONVERT(VARCHAR, MAX(LastDate), 111), 6, 5) END AS CompletedDate, ISNULL(KCRK.TotalInPairs, 0) - ISNULL(KCRK.TotalOutPairs, 0) AS StockPairs,');
    SQL.Add('SUBSTRING(CONVERT(VARCHAR, DDZL.ShipDate, 111), 6, 5) AS ShipDate, LBZLS.YWSM AS country INTO #Inventory FROM (');
    SQL.Add('  SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs,');
    SQL.Add('  MIN(FirstDate) AS FirstDate, MAX(LastDate) AS LastDate, KCRK.TotalInPairs, KCLL_Upper.TotalOutPairs FROM (');
    SQL.Add('    SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs,');
    SQL.Add('    MIN(KCRK.FirstDate) AS FirstDate, MAX(KCRK.LastDate) AS LastDate, KCRK_Upper.TotalInPairs FROM #KCRK AS KCRK');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, MIN(KCRK.MinCycle) AS MinCycle, MAX(KCRK.MaxCycle) AS MaxCycle, SUM(KCRKS_Upper.Pairs) AS TotalInPairs FROM (');
    SQL.Add('        SELECT DISTINCT Building, Lean, RY, SubSeq, MinCycle, MaxCycle FROM #KCRK');
    SQL.Add('      ) AS KCRK');
    SQL.Add('      LEFT JOIN KCRK_Upper ON KCRK_Upper.RY = KCRK.RY');
    SQL.Add('      LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO AND CASE WHEN KCRKS_Upper.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(KCRKS_Upper.DDBH, 3) AS INT) END BETWEEN KCRK.MinCycle AND KCRK.MaxCycle');
    SQL.Add('      GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq');
    SQL.Add('    ) AS KCRK_Upper ON KCRK_Upper.Building = KCRK.Building AND KCRK_Upper.Lean = KCRK.Lean AND KCRK_Upper.RY = KCRK.RY AND ISNULL(KCRK_Upper.SubSeq, 0) = ISNULL(KCRK.SubSeq, 0)');
    SQL.Add('    GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs, KCRK_Upper.TotalInPairs');
    SQL.Add('  ) AS KCRK');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, SUM(KCLLS_Upper.Pairs) AS TotalOutPairs FROM (');
    SQL.Add('      SELECT DISTINCT Building, Lean, RY, SubSeq, MinCycle, MaxCycle FROM #KCRK');
    SQL.Add('    ) AS KCRK');
    SQL.Add('    LEFT JOIN KCLL_Upper ON KCLL_Upper.RY = KCRK.RY');
    SQL.Add('    LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO AND CASE WHEN KCLLS_Upper.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(KCLLS_Upper.DDBH, 3) AS INT) END BETWEEN KCRK.MinCycle AND KCRK.MaxCycle');
    SQL.Add('    GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq');
    SQL.Add('  ) AS KCLL_Upper ON KCLL_Upper.Building = KCRK.Building AND KCLL_Upper.Lean = KCRK.Lean AND KCLL_Upper.RY = KCRK.RY AND ISNULL(KCLL_Upper.SubSeq, 0) = ISNULL(KCRK.SubSeq, 0)');
    SQL.Add('  GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs, KCRK.TotalInPairs, KCLL_Upper.TotalOutPairs');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
    SQL.Add('WHERE 1 = 1');
    if (CB_Building_U.ItemIndex > 0) then
      SQL.Add('AND KCRK.Building LIKE ''' + CB_Building_U.Text + '%''');
    if (CB_Lean_U.ItemIndex > 0) then
      SQL.Add('AND KCRK.Lean LIKE ''' + CB_Lean_U.Text + '%''');
    SQL.Add('GROUP BY KCRK.Building, KCRK.Lean, XXZL.DAOMH, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.schedule_date, XXZL.ARTICLE, KCRK.Pairs, DDZL.ShipDate, LBZLS.YWSM, KCRK.TotalInPairs, KCRK.TotalOutPairs');
    SQL.Add('HAVING (ISNULL(KCRK.TotalInPairs, 0) > ISNULL(KCRK.TotalOutPairs, 0) OR ISNULL(SUM(KCRK.TodayInPairs), 0) > 0) OR KCRK.Pairs > ISNULL(KCRK.TotalInPairs, 0)');
    if (RG_I.ItemIndex = 0) then
      SQL.Add('ORDER BY KCRK.Building, KCRK.Lean, KCRK.schedule_date')
    else
      SQL.Add('ORDER BY KCRK.Building, KCRK.Lean, MIN(KCRK.FirstDate)');

    SQL.Add('SELECT * FROM #Inventory');
    Active := true;
  end;

  with Q_IC do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCRK.DDBH, CASE WHEN KCRK.RY = KCRK.DDBH THEN ''T1'' ELSE ''T'' + CAST(CAST(RIGHT(KCRK.DDBH, 3) AS INT) AS VARCHAR) END AS Cycle, ISNULL(KCRK.Pairs, 0) - ISNULL(KCLL.Pairs, 0) AS Pairs FROM (');
    SQL.Add('  SELECT RY, DDBH, SUM(Pairs) AS Pairs FROM (');
    SQL.Add('    SELECT KCRK_Upper.RY, KCRKS_Upper.DDBH, KCRKS_Upper.Pairs FROM KCRK_Upper');
    SQL.Add('    LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('    WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_U.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + ''' AND KCRK_Upper.Building = :Building AND KCRK_Upper.Lean = :Lean AND KCRK_Upper.RY = :ZLBH');
    SQL.Add('    AND CASE WHEN KCRKS_Upper.DDBH = KCRK_Upper.RY THEN 1 ELSE CAST(RIGHT(KCRKS_Upper.DDBH, 3) AS INT) END BETWEEN :MinCycle AND :MaxCycle');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT ZLBH, DDBH, Pairs FROM KCCLMONTH_Upper');
    SQL.Add('    WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_U.Date, -1)) + ''' AND Building = :Building AND Lean = :Lean AND ZLBH = :ZLBH');
    SQL.Add('    AND CASE WHEN DDBH = ZLBH THEN 1 ELSE CAST(RIGHT(DDBH, 3) AS INT) END BETWEEN :MinCycle AND :MaxCycle');
    SQL.Add('  ) AS KCRK');
    SQL.Add('  GROUP BY RY, DDBH');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT KCLL_Upper.RY, KCLLS_Upper.DDBH, SUM(KCLLS_Upper.Pairs) AS Pairs FROM KCLL_Upper');
    SQL.Add('  LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO');
    SQL.Add('  WHERE KCLL_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_U.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + ''' AND KCLL_Upper.RY = :ZLBH');
    SQL.Add('  AND CASE WHEN KCLLS_Upper.DDBH = KCLL_Upper.RY THEN 1 ELSE CAST(RIGHT(KCLLS_Upper.DDBH, 3) AS INT) END BETWEEN :MinCycle AND :MaxCycle');
    SQL.Add('  GROUP BY KCLL_Upper.RY, KCLLS_Upper.DDBH');
    SQL.Add(') AS KCLL ON KCLL.RY = KCRK.RY AND KCLL.DDBH = KCRK.DDBH');
    SQL.Add('WHERE ISNULL(KCRK.Pairs, 0) - ISNULL(KCLL.Pairs, 0) > 0');
    SQL.Add('ORDER BY KCRK.DDBH');
    Active := true;
  end;
end;

procedure TShoeUpperInventory.Q_UIAfterOpen(DataSet: TDataSet);
begin
  if (SearchDate_U = Date) AND (IsStringInArray(main.Edit1.Text, ModifiableUsers)) AND (CB_U.Checked = false) then
  begin
    BUI1.Enabled := true;
    BUI2.Enabled := true;
    BUI3.Enabled := true;
    BUI4.Enabled := false;
    BUI5.Enabled := false;
    BUI6.Enabled := true;
    BUIC1.Enabled := true;
  end
  else begin
    BUI1.Enabled := false;
    BUI2.Enabled := false;
    BUI3.Enabled := false;
    BUI4.Enabled := false;
    BUI5.Enabled := false;
    BUI6.Enabled := true;
    BUIC1.Enabled := false;
  end;
end;

procedure TShoeUpperInventory.DBGridEh1Columns4EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  UpperRYDialog := TUpperRYDialog.Create(Self);
  UpperRYDialog.Source := 'Stock-In';
  UpperRYDialog.ShowModal;
end;

procedure TShoeUpperInventory.BUIC1Click(Sender: TObject);
begin
  if (Q_UI.FieldByName('RY').AsString <> '') AND (Q_UI.CachedUpdates = false) then
  begin
    UpperCycleDialog := TUpperCycleDialog.Create(Self);
    UpperCycleDialog.LoadData('Stock-In', Q_UI.FieldByName('RKNO').AsString, Q_UI.FieldByName('Building').AsString, Q_UI.FieldByName('Lean').AsString, Q_UI.FieldByName('RY').AsString);
    UpperCycleDialog.ShowModal;
  end;
end;

procedure TShoeUpperInventory.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_UI.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TShoeUpperInventory.BUI6Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Q_UI.Active) then
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
      for Col := 0 to DBGridEh1.Columns.Count - 3 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh1.Columns[Col].Title.Caption;
      end;

      Q_UI.First;
      Row := 2;
      while not Q_UI.Eof do
      begin
        for Col := 0 to DBGridEh1.Columns.Count - 3 do
        begin
          eclApp.Cells[Row, Col+1] := Q_UI.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
        end;
        Q_UI.Next;
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

procedure TShoeUpperInventory.BUO1Click(Sender: TObject);
begin
  with Q_UO do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh6.Columns[4].ButtonStyle := cbsEllipsis;
  BUO4.Enabled := true;
  BUO5.Enabled := true; 
  EditMode := true;
end;

procedure TShoeUpperInventory.BUO2Click(Sender: TObject);
begin
  with Q_UO do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BUO4.Enabled := true;
  BUO5.Enabled := true;  
  EditMode := true;
end;

procedure TShoeUpperInventory.BUO3Click(Sender: TObject);
begin
  with Q_UO do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh6.Columns[4].ButtonStyle := cbsEllipsis;
  BUO4.Enabled := true;
  BUO5.Enabled := true; 
  EditMode := true;
end;

procedure TShoeUpperInventory.BUO4Click(Sender: TObject);
var
  i: integer;
begin
  try
    Q_UO.First;
    for i := 1 to Q_UO.RecordCount do
    begin
      case Q_UO.UpdateStatus of
        usInserted:
        begin
          if (Q_UO.FieldByName('RY').IsNull) then
          begin
            Q_UO.Delete;
          end
          else begin
            with QTemp do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT ISNULL(LEFT(MAX(LLNO), 6), LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6)) + RIGHT(''00000'' + CAST(ISNULL(CAST(RIGHT(MAX(LLNO), 5) AS INT), 0) + 1 AS VARCHAR), 5) AS LLNO,');
              SQL.Add('CONVERT(SmallDateTime, CONVERT(VARCHAR, GETDATE(), 111)) AS Date FROM KCLL_Upper');
              SQL.Add('WHERE LLNO LIKE LEFT(CONVERT(VARCHAR, GETDATE(), 112), 6) + ''%''');
              Active := true;
            end;

            Q_UO.Edit;
            Q_UO.FieldByName('LLNO').Value := QTemp.FieldByName('LLNO').AsString;
            Q_UO.FieldByName('Date').Value := QTemp.FieldByName('Date').AsDateTime;
            Q_UO.FieldByName('UserID').Value := main.Edit1.Text;
            U_UO.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_UO.FieldByName('YN').Value = 0) then
          begin
            with QTemp do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('DELETE FROM KCLLS_Upper WHERE LLNO = ''' + Q_UO.FieldByName('LLNO').AsString + '''');
              ExecSQL;
            end;

            U_UO.Apply(ukDelete);
          end
          else if (Q_UO.FieldByName('RY').IsNull = false) then
          begin
            if (Q_UO.FieldByName('RY').Value <> Q_UO.FieldByName('RY').OldValue) then
            begin
              with QTemp do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('DELETE FROM KCLLS_Upper WHERE LLNO = ''' + Q_UO.FieldByName('LLNO').AsString + '''');
                ExecSQL;
              end;
            end;

            Q_UO.Edit;
            Q_UO.FieldByName('UserID').Value := main.Edit1.text;
            U_UO.Apply(ukModify);
          end;
        end;
      end;

      Q_UO.Next;
    end;

    Q_UO.Active := false;
    Q_UO.CachedUpdates := false;
    Q_UO.RequestLive := false;
    Q_UO.Active := true;
    DBGridEh6.Columns[4].ButtonStyle := cbsNone;
    BUO4.Enabled := false;
    BUO5.Enabled := false; 
    EditMode := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TShoeUpperInventory.BUO5Click(Sender: TObject);
begin
  with Q_UO do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh6.Columns[4].ButtonStyle := cbsNone;
  BUO4.Enabled := false;
  BUO5.Enabled := false;
  EditMode := false;
end;

procedure TShoeUpperInventory.BUO6Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Q_UO.Active) then
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
      for Col := 0 to DBGridEh6.Columns.Count - 3 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh6.Columns[Col].Title.Caption;
      end;

      Q_UO.First;
      Row := 2;
      while not Q_UO.Eof do
      begin
        for Col := 0 to DBGridEh6.Columns.Count - 3 do
        begin
          eclApp.Cells[Row, Col+1] := Q_UO.FieldByName(DBGridEh6.Columns[Col].FieldName).Value;
        end;
        Q_UO.Next;
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

procedure TShoeUpperInventory.DBGridEh6Columns4EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  UpperRYDialog := TUpperRYDialog.Create(Self);
  UpperRYDialog.Source := 'Stock-Out';
  UpperRYDialog.ShowModal;
end;

procedure TShoeUpperInventory.Q_UOAfterOpen(DataSet: TDataSet);
begin
  CB_I.Enabled := true;

  if (SearchDate_U = Date) AND (IsStringInArray(main.Edit1.Text, ModifiableUsers)) AND (CB_U.Checked = false) then
  begin
    BUO1.Enabled := true;
    BUO2.Enabled := true;
    BUO3.Enabled := true;
    BUO4.Enabled := false;
    BUO5.Enabled := false;
    BUO6.Enabled := true;
    BUOC1.Enabled := true;
  end
  else begin
    BUO1.Enabled := false;
    BUO2.Enabled := false;
    BUO3.Enabled := false;
    BUO4.Enabled := false;
    BUO5.Enabled := false;
    BUO6.Enabled := true;
    BUOC1.Enabled := false;
  end;
end;

procedure TShoeUpperInventory.BUOC1Click(Sender: TObject);
begin
  if (Q_UO.FieldByName('RY').AsString <> '') AND (Q_UO.CachedUpdates = false) then
  begin
    UpperCycleDialog := TUpperCycleDialog.Create(Self);
    UpperCycleDialog.LoadData('Stock-Out', Q_UO.FieldByName('LLNO').AsString, '', '', Q_UO.FieldByName('RY').AsString);
    UpperCycleDialog.ShowModal;
  end;
end;

procedure TShoeUpperInventory.BI1Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Row, SRow, SumTodayPairs, SumStockPairs, TotalTodayPairs, TotalStockPairs: integer;
  LastLean: string;
begin
  if (Q_I.Active) then
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

      eclApp.Cells[1, 1] := 'HANG TON VUNG LIEM 永廉鞋面庫存';
      eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[1, 13]].Merge;
      eclApp.Cells[1, 1].Font.Size := 16;

      eclApp.Cells[2, 13] := 'NGAY 日期: ' + FormatDateTime('yyyy/MM/dd', DTP_U.Date);
      eclApp.Cells[2, 13].HorizontalAlignment := xlHAlignRight;

      Row := 3;
      eclApp.Cells[Row, 1] := 'LEAN' + #13#10 + '線別';
      eclApp.Cells[Row, 2] := 'LY' + #13#10 + '斬刀';       
      eclApp.Cells[Row, 3] := 'RY' + #13#10 + '訂單編號';
      eclApp.Cells[Row, 4] := 'NLC' + #13#10 + '成型上線日';
      eclApp.Cells[Row, 5] := 'SKU#';
      eclApp.Cells[Row, 6] := 'SL' + #13#10 + '訂單數量';
      eclApp.Cells[Row, 7] := 'MU GIAY VE OK' + #13#10 + '總共入庫';
      eclApp.Cells[Row, 8] := 'HANG VE TY XUAN' + #13#10 + '今日入庫';
      eclApp.Cells[Row, 9] := 'SO THIEU' + #13#10 + '欠數';
      eclApp.Cells[Row, 10] := 'NGAY OK' + #13#10 + '完成日';
      eclApp.Cells[Row, 11] := 'HANG TON' + #13#10 + '剩餘庫存';
      eclApp.Cells[Row, 12] := 'GAC' + #13#10 + '出貨日期';
      eclApp.Cells[Row, 13] := 'NUOC XUAT' + #13#10 + '出貨國家';
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 13]].Borders[1].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 13]].Borders[2].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 13]].Borders[3].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row, 13]].Borders[4].LineStyle := xlContinuous;

      Q_IC.Active := false;
      Q_I.First;
      Row := 4;
      SRow := 4;
      LastLean := StringReplace(Q_I.FieldByName('Building').AsString, '0', '', [rfReplaceAll]) + StringReplace(UpperCase(Q_I.FieldByName('Lean').AsString), 'LEAN', 'L', [rfReplaceAll]);
      SumTodayPairs := 0;
      SumStockPairs := 0;
      TotalTodayPairs := 0;
      TotalStockPairs := 0;
      while not Q_I.Eof do
      begin
        if (StringReplace(Q_I.FieldByName('Building').AsString, '0', '', [rfReplaceAll]) + StringReplace(UpperCase(Q_I.FieldByName('Lean').AsString), 'LEAN', 'L', [rfReplaceAll]) <> LastLean) then
        begin
          eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[1].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[2].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[3].LineStyle := xlContinuous;
          eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[4].LineStyle := xlContinuous;

          eclApp.Rows[Row].Font.Size := 12;
          eclApp.Cells[Row, 7] := 'TC :';
          eclApp.Cells[Row, 8] := SumTodayPairs;
          eclApp.Cells[Row, 10] := 'TC :';
          eclApp.Cells[Row, 11] := SumStockPairs;

          LastLean := StringReplace(Q_I.FieldByName('Building').AsString, '0', '', [rfReplaceAll]) + StringReplace(UpperCase(Q_I.FieldByName('Lean').AsString), 'LEAN', 'L', [rfReplaceAll]);
          SumTodayPairs := 0;
          SumStockPairs := 0;
          
          Inc(Row);
          SRow := Row;
        end;

        eclApp.Cells[Row, 1] := LastLean;
        eclApp.Cells[Row, 2] := Q_I.FieldByName('DAOMH').AsString;
        eclApp.Cells[Row, 3] := Q_I.FieldByName('RY').AsString;
        eclApp.Cells[Row, 4] := '''' + Q_I.FieldByName('Date').AsString;
        eclApp.Cells[Row, 5] := Q_I.FieldByName('ARTICLE').AsString;
        eclApp.Cells[Row, 6] := Q_I.FieldByName('Pairs').AsString;
        eclApp.Cells[Row, 7] := Q_I.FieldByName('TotalInPairs').AsString;
        eclApp.Cells[Row, 8] := Q_I.FieldByName('TodayInPairs').AsString;
        eclApp.Cells[Row, 9] := Q_I.FieldByName('LackPairs').AsString;
        eclApp.Cells[Row, 10] := '''' + Q_I.FieldByName('CompletedDate').AsString;
        eclApp.Cells[Row, 11] := Q_I.FieldByName('StockPairs').AsString;
        eclApp.Cells[Row, 12] := '''' + Q_I.FieldByName('ShipDate').AsString;
        eclApp.Cells[Row, 13] := Q_I.FieldByName('country').AsString;

        Inc(SumTodayPairs, Q_I.FieldByName('TodayInPairs').AsInteger);
        Inc(SumStockPairs, Q_I.FieldByName('StockPairs').AsInteger);
        Inc(TotalTodayPairs, Q_I.FieldByName('TodayInPairs').AsInteger);
        Inc(TotalStockPairs, Q_I.FieldByName('StockPairs').AsInteger);

        Q_I.Next;
        Inc(Row);
      end;

      eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[1].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[2].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[3].LineStyle := xlContinuous;
      eclApp.Range[eclApp.Cells[SRow, 1], eclApp.Cells[Row - 1, 13]].Borders[4].LineStyle := xlContinuous;

      eclApp.Rows[Row].Font.Size := 12;
      eclApp.Cells[Row, 7] := 'TC :';
      eclApp.Cells[Row, 8] := SumTodayPairs;
      eclApp.Cells[Row, 10] := 'TC :';
      eclApp.Cells[Row, 11] := SumStockPairs;

      eclApp.Rows[Row + 1].Font.Size := 16;
      eclApp.Cells[Row + 1, 1] := 'TONG CONG';
      eclApp.Range[eclApp.Cells[Row + 1, 1], eclApp.Cells[Row + 1, 7]].Merge;
      eclApp.Cells[Row + 1, 8] := TotalTodayPairs;
      eclApp.Cells[Row + 1, 11] := TotalStockPairs;

      eclapp.Columns.Autofit;
      ShowMessage('Successful');
      Q_I.First;
      Q_IC.Active := true;
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;
      
procedure TShoeUpperInventory.DTP_PC1Change(Sender: TObject);
begin
  if (CB_OS_PC.Checked) then
  begin
    ReloadBuilding(CB_Building_PC, DTP_PC1, DTP_PC2, 'OS');
    ReloadLean(CB_Lean_PC, CB_Building_PC, DTP_PC1, DTP_PC2, 'OS');
  end
  else begin
    ReloadBuilding(CB_Building_PC, DTP_PC1, DTP_PC2, 'ALL');
    ReloadLean(CB_Lean_PC, CB_Building_PC, DTP_PC1, DTP_PC2, 'ALL');
  end;
end;

procedure TShoeUpperInventory.CB_Building_PCChange(Sender: TObject);
begin
  if (CB_OS_PC.Checked) then
    ReloadLean(CB_Lean_PC, CB_Building_PC, DTP_PC1, DTP_PC2, 'OS')
  else
    ReloadLean(CB_Lean_PC, CB_Building_PC, DTP_PC1, DTP_PC2, 'ALL')
end;

procedure TShoeUpperInventory.Button6Click(Sender: TObject);
var
  Total: integer;
begin
  CheckUpperClosingInventory(IncMonth(DTP_PC1.Date, -1));

  with Q_PC do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT PP.Building, PP.Lean, PP.PlanDate, XXZL.DAOMH, PP.RY, XXZL.ARTICLE, PP.Cycle, PP.AssemblyTime, PP.RequiredPairs, PP.OSPairs, ISNULL(SUM(KCRKS_Upper.Pairs), 0) AS Pairs FROM (');
    SQL.Add('  SELECT PP.Building, PP.Lean, PP.PlanDate, PP.RY, PP.CycleStart, PP.CycleEnd, PP.AssemblyTime, PP.RequiredPairs, PP.Cycle, ISNULL(SUM(SMDD.Qty), 0) AS OSPairs FROM (');
    SQL.Add('    SELECT PP.Building, PP.Lean, PP.PlanDate, PP.RY, PP.CycleStart, PP.CycleEnd, PP.AssemblyTime, SUM(SMDD.Qty) AS RequiredPairs,');
    SQL.Add('    CASE WHEN PP.CycleStart = PP.CycleEnd THEN ''T'' + CAST(PP.CycleStart AS VARCHAR)');
    SQL.Add('    ELSE ''T'' + CAST(PP.CycleStart AS VARCHAR) + '' - T'' + CAST(PP.CycleEnd AS VARCHAR) END AS Cycle FROM ProductionPlan AS PP');
    SQL.Add('    LEFT JOIN SMDD ON SMDD.YSBH = PP.RY AND CASE WHEN SMDD.YSBH = SMDD.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END BETWEEN PP.CycleStart AND PP.CycleEnd AND SMDD.GXLB = ''A''');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT Building_TX AS Building, Lean_TX AS Lean, Year + ''/'' + Month AS Month FROM schedule_factorylink');
    SQL.Add('      WHERE Year + ''/'' + Month BETWEEN ''' + FormatDateTime('yyyy/MM', DTP_PC1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM', DTP_PC2.Date) + '''');
    SQL.Add('    ) AS SF ON SF.Building = PP.Building AND SF.Lean = PP.Lean AND SF.Month = SUBSTRING(CONVERT(VARCHAR, PP.PlanDate, 111), 1, 7)');
    SQL.Add('    WHERE PP.PlanType LIKE ''' + CB_Plan_PC.Text + '%'' AND PP.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP_PC1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_PC2.Date) + '''');
    if (CB_Building_PC.ItemIndex > 0) then
      SQL.Add('    AND PP.Building = ''' + CB_Building_PC.Text + '''');
    if (CB_Lean_PC.ItemIndex > 0) then
      SQL.Add('    AND PP.Lean = ''' + CB_Lean_PC.Text + '''');
    if (CB_OS_PC.Checked) then
      SQL.Add('    AND SF.Lean IS NOT NULL');
    SQL.Add('    AND PP.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('    GROUP BY PP.Building, PP.Lean, PP.PlanDate, PP.RY, PP.CycleEnd, PP.CycleStart, PP.AssemblyTime');
    SQL.Add('  ) AS PP');
    SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.ZLBH = PP.RY AND CASE WHEN CD.DDBH = PP.RY THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END BETWEEN PP.CycleStart AND PP.CycleEnd AND CD.GXLB = ''C''');
    SQL.Add('  LEFT JOIN CycleDispatchList AS CDL ON CDL.ListNo = CD.ListNo AND CDL.Type = ''Ready'' AND CDL.ConfirmDate IS NOT NULL');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY PP.Building, PP.Lean, PP.PlanDate, PP.RY, PP.CycleStart, PP.CycleEnd, PP.AssemblyTime, PP.RequiredPairs, PP.Cycle');
    SQL.Add(') AS PP');
    SQL.Add('LEFT JOIN KCRK_Upper ON KCRK_Upper.RY = PP.RY');
    SQL.Add('LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO AND CASE WHEN PP.RY = KCRKS_Upper.DDBH THEN 1 ELSE CAST(RIGHT(KCRKS_Upper.DDBH, 3) AS INT) END BETWEEN PP.CycleStart AND PP.CycleEnd');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('GROUP BY PP.Building, PP.Lean, PP.PlanDate, XXZL.DAOMH, PP.RY, XXZL.ARTICLE, PP.Cycle, PP.AssemblyTime, PP.RequiredPairs, PP.OSPairs');
    SQL.Add('ORDER BY PP.Building, PP.Lean, PP.PlanDate, PP.AssemblyTime');
    Active := true;

    DBGridEh10.Columns[11].Footer.Value := FormatFloat('###,###,##0', StrToInt(StringReplace(DBGridEh10.GetFooterValue(0, DBGridEh10.Columns[10]), ',', '', [rfReplaceAll])) - StrToInt(StringReplace(DBGridEh10.GetFooterValue(0, DBGridEh10.Columns[8]), ',', '', [rfReplaceAll])));
  end;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('DECLARE @ClosingMonth VARCHAR(7) = (SELECT MAX(KCYEAR + ''/'' + KCMONTH) AS Month FROM KCCLMONTH_Upper);');

    SQL.Add('SELECT REPLACE(Building, ''0'', '''') + REPLACE(Lean, ''LEAN'', ''L'') AS Lean, SUM(StockPairs) AS StockPairs FROM (');
    SQL.Add('  SELECT KCRK.Building, KCRK.Lean, SUM(KCRK.Pairs) - SUM(KCLL.Pairs) AS StockPairs FROM (');
    SQL.Add('    SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH, SUM(KCRK.Pairs) AS Pairs FROM (');
    SQL.Add('      SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRKS.DDBH, KCRKS.Pairs FROM KCRK_Upper AS KCRK');
    SQL.Add('      LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('      WHERE KCRK.Date >= DATEADD(MM, 1, CONVERT(SmallDateTime, @ClosingMonth + ''/01'')) AND ISNULL(KCRKS.Pairs, 0) > 0');
    if (CB_Building_PC.ItemIndex > 0) then
      SQL.Add('      AND KCRK.Building = ''' + CB_Building_PC.Text + '''');
    if (CB_Lean_PC.ItemIndex > 0) then
      SQL.Add('      AND KCRK.Lean = ''' + CB_Lean_PC.Text + '''');
    SQL.Add('      UNION ALL');
    SQL.Add('      SELECT Building, Lean, ZLBH, DDBH, Pairs FROM KCCLMONTH_Upper');
    SQL.Add('      WHERE KCYEAR + ''/'' + KCMONTH = @ClosingMonth');
    if (CB_Building_PC.ItemIndex > 0) then
      SQL.Add('      AND Building = ''' + CB_Building_PC.Text + '''');
    if (CB_Lean_PC.ItemIndex > 0) then
      SQL.Add('      AND Lean = ''' + CB_Lean_PC.Text + '''');
    SQL.Add('    ) AS KCRK');
    SQL.Add('    GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.DDBH');
    SQL.Add('  ) AS KCRK');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT KCLL.RY, KCLLS.DDBH, SUM(KCLLS.Pairs) AS Pairs FROM KCLL_Upper AS KCLL');
    SQL.Add('    LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.LLNO = KCLL.LLNO');
    SQL.Add('    WHERE KCLL.Date >= DATEADD(MM, 1, CONVERT(SmallDateTime, @ClosingMonth + ''/01'')) AND ISNULL(KCLLS.Pairs, 0) > 0');
    SQL.Add('    GROUP BY KCLL.RY, KCLLS.DDBH');
    SQL.Add('  ) AS KCLL ON KCLL.RY = KCRK.RY AND KCLL.DDBH = KCRK.DDBH');
    SQL.Add('  GROUP BY KCRK.Building, KCRK.Lean');
    SQL.Add(') AS KCRK');
    SQL.Add('GROUP BY Building, Lean');
    SQL.Add('ORDER BY Building, Lean');
    Active := true;

    BarChart_PC.Align := alLeft;
    if (RecordCount * 60 + 35 + (RecordCount * 60 + 35) DIV 49 > Self.Width - 32) then
      BarChart_PC.Width := RecordCount * 60 + 35 + (RecordCount * 60 + 35) DIV 49
    else
      BarChart_PC.Width := Self.Width - 32;
    Series_PC.Clear;

    Total := 0;
    while not Eof do
    begin
      Series_PC.Add(FieldByName('StockPairs').AsFloat, FieldByName('Lean').AsString);
      Inc(Total, FieldByName('StockPairs').AsInteger);
      Next;
    end;

    Label16.Caption := 'Available Pairs Of Remaining Inventory (Total: ' +  FormatFloat('###,###,##0', Total) + ' Pairs)';
  end;
end;

procedure TShoeUpperInventory.Q_PCCalcFields(DataSet: TDataSet);
begin
  if (Q_PC.FieldByName('RequiredPairs').AsInteger > Q_PC.FieldByName('Pairs').AsInteger) then
    Q_PC.FieldByName('Status').Value := FormatFloat('###,###,##0', Q_PC.FieldByName('Pairs').AsInteger - Q_PC.FieldByName('RequiredPairs').AsInteger)
  else
    Q_PC.FieldByName('Status').Value := 'OK';
end;
       
procedure TShoeUpperInventory.Q_PCFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := DataSet.FieldByName('RequiredPairs').AsInteger > DataSet.FieldByName('Pairs').AsInteger;
end;

procedure TShoeUpperInventory.CB_OS_UnmatchedClick(Sender: TObject);
begin
  Q_PC.Filtered := CB_OS_Unmatched.Checked;
end;

procedure TShoeUpperInventory.DBGridEh10GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_PC.FieldByName('Status').AsString <> 'OK') AND (Column.Index > 2) then
  begin
    if (Q_PC.FieldByName('OSPairs').AsInteger < Q_PC.FieldByName('RequiredPairs').AsInteger) then
      DBGridEh10.Canvas.Font.Color := clFuchsia
    else
      DBGridEh10.Canvas.Font.Color := clRed;
  end;
end;

procedure TShoeUpperInventory.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_UO.FieldByName('YN').AsString = '0') then
    DBGridEh6.Canvas.Font.Color := clRed;
end;

procedure TShoeUpperInventory.DTP_WChange(Sender: TObject);
begin
  ReloadBuilding(CB_Building_W, DTP_W, DTP_W, 'OS');
  ReloadLean(CB_Lean_W, CB_Building_W, DTP_W, DTP_W, 'OS');
end;

procedure TShoeUpperInventory.CB_Building_WChange(Sender: TObject);
begin
  ReloadLean(CB_Lean_W, CB_Building_W, DTP_W, DTP_W, 'OS');
end;

procedure TShoeUpperInventory.Button7Click(Sender: TObject);
var
  Total: integer;
begin
  CheckComponentClosingInventory(IncMonth(DTP_W.Date, -1));

  with Q_W do
  begin
    Active := false;
    filter := '';
    filtered := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#CompIn'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #CompIn END;');
                       
    SQL.Add('IF OBJECT_ID(''tempdb..#UpperOut'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #UpperOut END;');
    ExecSQL;

    SQL.Add('SELECT Building, Lean, RY, RYPairs, DDBH, Pairs, PlanDate, Cycle INTO #CompIn FROM (');
    SQL.Add('  SELECT CD.Building, CD.Lean, CD.RY, CD.DDBH, CD.Qty AS Pairs, SC.schedule_date AS PlanDate, CAST(SC.sl AS INT) AS RYPairs,');
    SQL.Add('  CASE WHEN CD.DDBH = CD.RY THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END AS Cycle,');
    SQL.Add('  ROW_NUMBER() OVER(PARTITION BY CD.Building, CD.Lean, CD.RY, CD.DDBH ORDER BY SC.schedule_date DESC, SC.ry_index DESC) AS Seq FROM (');
    SQL.Add('    SELECT CDL.Building, CDL.Lean, CD.ZLBH AS RY, CD.DDBH, SMDD.Qty FROM CycleDispatchList AS CDL');
    SQL.Add('    LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('    LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('    WHERE CDL.Type = ''Ready'' AND CDL.ConfirmDate IS NOT NULL AND CONVERT(VARCHAR, CDL.Date, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_W.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_W.Date) + ''' AND CD.GXLB = ''C''');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT Building, Lean, ZLBH, DDBH, Pairs FROM KCCLMONTH_Component');
    SQL.Add('    WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_W.Date, -1)) + '''');
    SQL.Add('  ) AS CD');
    SQL.Add('  LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = CD.RY AND SC.building_no = CD.Building AND SC.lean_no = CD.Lean');
    SQL.Add('  WHERE 1 = 1');
    if (CB_Building_W.ItemIndex > 0) then
      SQL.Add('  AND CD.Building = ''' + CB_Building_W.Text + '''');
    if (CB_Lean_W.ItemIndex > 0) then
      SQL.Add('  AND CD.Lean = ''' + CB_Lean_W.Text + '''');
    SQL.Add(') AS CD');
    SQL.Add('WHERE Seq = 1');

    SQL.Add('SELECT KCRK_Upper.RY, KCRKS_Upper.DDBH, SUM(KCRKS_Upper.Pairs) AS Pairs INTO #UpperOut FROM KCRK_Upper');
    SQL.Add('LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_W.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_W.Date) + ''' AND ISNULL(KCRKS_Upper.Pairs, 0) > 0');
    SQL.Add('GROUP BY KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH');

    SQL.Add('IF OBJECT_ID(''tempdb..#WIP'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #WIP END;');

    SQL.Add('SELECT CompIn.Building, CompIn.Lean, XXZL.DAOMH, CompIn.RY, XXZL.ARTICLE, ISNULL(CompIn.RYPairs, 0) AS RYPairs, SUM(ISNULL(CompIn.Pairs, 0) - ISNULL(UpperOut.Pairs, 0)) AS Pairs, CompIn.PlanDate,');
    SQL.Add('CASE WHEN MIN(CompIn.Cycle) = MAX(CompIn.Cycle) THEN ''T'' + CAST(MIN(CompIn.Cycle) AS VARCHAR) ELSE ''T'' + CAST(MIN(CompIn.Cycle) AS VARCHAR) + '' - T'' + CAST(MAX(CompIn.Cycle) AS VARCHAR) END AS Cycle INTO #WIP FROM #CompIn AS CompIn');
    SQL.Add('LEFT JOIN #UpperOut AS UpperOut ON UpperOut.RY = CompIn.RY AND UpperOut.DDBH = CompIn.DDBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CompIn.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE ISNULL(CompIn.Pairs, 0) > ISNULL(UpperOut.Pairs, 0)');
    SQL.Add('GROUP BY CompIn.Building, CompIn.Lean, XXZL.DAOMH, CompIn.RY, XXZL.ARTICLE, CompIn.PlanDate, CompIn.RYPairs');

    SQL.Add('SELECT * FROM #WIP');
    SQL.Add('ORDER BY Building, Lean, PlanDate');
    Active := true;
  end;
  
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT REPLACE(WIP.Building, ''0'', '''') + REPLACE(WIP.Lean, ''Lean'', ''L'') AS Lean,');
    SQL.Add('SF.Building_VL + '' '' + REPLACE(SF.Lean_VL, ''Lean'', ''L'') AS Lean_VL, SUM(WIP.Pairs) AS WIPPairs FROM #WIP AS WIP');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT Building_VL, Lean_VL, Building_TX, Lean_TX FROM schedule_factorylink');
    SQL.Add('  WHERE Year + ''/'' + Month = ''' + FormatDateTime('yyyy/MM', DTP_W.Date) + '''');
    SQL.Add(') AS SF ON SF.Building_TX = WIP.Building AND SF.Lean_TX = WIP.Lean');
    SQL.Add('GROUP BY Building, Lean, SF.Building_VL, SF.Lean_VL');
    SQL.Add('ORDER BY SF.Building_VL, SF.Lean_VL');
    Active := true;

    BarChart_W.Align := alLeft;
    if (RecordCount * 60 + 35 + (RecordCount * 60 + 35) DIV 49 > Self.Width - 24) then
      BarChart_W.Width := RecordCount * 60 + 35 + (RecordCount * 60 + 35) DIV 49
    else
      BarChart_W.Width := Self.Width - 24;
    Series_W.Clear;
    Total := 0;
    while not Eof do
    begin
      Series_W.Add(FieldByName('WIPPairs').AsFloat, FieldByName('Lean_VL').AsString + #13#10 + '(' + FieldByName('Lean').AsString + ')');
      Inc(Total, FieldByName('WIPPairs').AsInteger);
      Next;
    end;
    Label17.Caption := 'WIP Pairs For Each Production Line (Total: ' + FormatFloat('###,###,##0', Total) + ' Pairs)';
  end;
end;
      
procedure TShoeUpperInventory.PC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (EditMode) then
  begin
    AllowChange := false;
    ShowMessage('Please save the data before you change the page');
  end;
end;

procedure TShoeUpperInventory.PC3Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (EditMode) then
  begin
    AllowChange := false;
    ShowMessage('Please save the data before you change the page');
  end;
end;

procedure TShoeUpperInventory.Button8Click(Sender: TObject);
var
  i, SumQty: integer;
  MaxValue, SumValue: double;
begin
  CheckComponentClosingInventory(IncMonth(DTP_IT1.Date, -1));
  CheckUpperClosingInventory(IncMonth(DTP_IT1.Date, -1));

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#Trend'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Trend END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#InStock'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #InStock END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#OutStock'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #OutStock END;');
    ExecSQL;

    SQL.Add('SELECT Date, Pairs INTO #InStock FROM (');
    SQL.Add('  SELECT Date, SUM(Qty) AS Pairs FROM (');
    SQL.Add('    SELECT DISTINCT CONVERT(SmallDateTime, CONVERT(VARCHAR, CDL.Date, 111)) AS Date, CDL.Building, CDL.Lean, CD.ZLBH, CD.DDBH, SMDD.Qty FROM CycleDispatchList AS CDL');
    SQL.Add('    LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('    LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('    WHERE CDL.Type = ''Ready'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, CDL.Date, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + ''' AND CDL.ConfirmDate IS NOT NULL');
    SQL.Add('  ) AS CDL');
    SQL.Add('  GROUP BY Date');
    SQL.Add(') AS InStock');

    SQL.Add('SELECT Date, Pairs INTO #OutStock FROM (');
    SQL.Add('  SELECT KCRK.Date, SUM(KCRKS.Pairs) AS Pairs FROM KCRK_Upper AS KCRK');
    SQL.Add('  LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('  WHERE KCRK.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + '''');
    SQL.Add('  GROUP BY KCRK.Date');
    SQL.Add(') AS OutStock');

    SQL.Add('WITH TEMPTAB(Date) AS (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''')');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS Date FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + ''')');
    SQL.Add(')');

    SQL.Add('SELECT TEMPTAB.Date, ISNULL(InStock.Pairs, 0) AS InPairs, ISNULL(OutStock.Pairs, 0) AS OutPairs INTO #Trend FROM TEMPTAB');
    SQL.Add('LEFT JOIN #InStock AS InStock ON InStock.Date = TEMPTAB.Date');
    SQL.Add('LEFT JOIN #OutStock AS OutStock ON OutStock.Date = TEMPTAB.Date');
    SQL.Add('OPTION (MAXRECURSION 0)');

    SQL.Add('SELECT Date, InPairs, OutPairs, WIPPairs + ISNULL((SELECT SUM(Pairs) AS Pairs FROM KCCLMONTH_Component WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_IT1.Date, -1)) + '''), 0) AS WIPPairs FROM (');
    SQL.Add('  SELECT T1.Date, T1.InPairs, T1.OutPairs, SUM(T2.InPairs) - SUM(T2.OutPairs) AS WIPPairs FROM #Trend AS T1');
    SQL.Add('  LEFT JOIN #Trend AS T2 ON T2.Date <= T1.Date');
    SQL.Add('  GROUP BY T1.Date, T1.InPairs, T1.OutPairs');
    SQL.Add(') AS Trend');
    SQL.Add('WHERE Date >= ''' + FormatDateTime('yyyy/MM/dd', DTP_IT1.Date) + '''');
    SQL.Add('ORDER BY Date');
    Active := true;

    Series_IT1_CompIn.Clear;
    Series_IT1_UpperOut.Clear; 
    Series_IT1_WIP.Clear;
    while not Eof do
    begin
      Series_IT1_CompIn.Add(FieldByName('InPairs').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Series_IT1_UpperOut.Add(FieldByName('OutPairs').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Series_IT1_WIP.Add(FieldByName('WIPPairs').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Next;
    end;

    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#RY'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #RY END;');
    ExecSQL;

    SQL.Add('SELECT DISTINCT CONVERT(SmallDateTime, CONVERT(VARCHAR, CDL.Date, 111)) AS Date, CD.ZLBH, CD.DDBH, SMDD.Qty INTO #RY FROM CycleDispatchList AS CDL');
    SQL.Add('LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('WHERE CDL.Type = ''Ready'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, CDL.Date, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + ''' AND CDL.ConfirmDate IS NOT NULL');

    SQL.Add('WITH TEMPTAB(Date) AS (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_IT1.Date) + ''')');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS Date FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + ''')');
    SQL.Add(')');

    SQL.Add('SELECT TEMPTAB.Date, ROUND(CDL.LeadTime, 1) AS LeadTime, ISNULL(CDL.Ratio, -1) AS Ratio FROM TEMPTAB');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT Date, (SUM(ReturnPairs * LeadTime) + SUM((Pairs - ReturnPairs) * (DATEDIFF(DAY, Date, CONVERT(VARCHAR, GETDATE(), 111)) + 1');
    SQL.Add('  - (DATEDIFF(DAY, Date, CONVERT(VARCHAR, GETDATE(), 111)) + 1 + 7 - DATEPART(WEEKDAY, Date + @@DateFirst - 1)) / 7))) / Pairs AS LeadTime, ISNULL(Ratio, 0) AS Ratio FROM (');
    SQL.Add('    SELECT Date, SUM(Pairs) AS Pairs, SUM(ReturnPairs) AS ReturnPairs, SUM(ReturnPairs * LeadTime) / SUM(ReturnPairs) AS LeadTime, CAST(SUM(ReturnPairs) * 100.0 / SUM(Pairs) AS NUMERIC(4, 1)) AS Ratio FROM (');
    SQL.Add('      SELECT CDL.Date, CDL.ZLBH, RY.Pairs, SUM(KCRK.ReturnPairs) AS ReturnPairs,');
    SQL.Add('      SUM(ISNULL(KCRK.ReturnPairs, 0) * (DATEDIFF(DAY, CDL.Date, ISNULL(KCRK.ReturnDate, CONVERT(VARCHAR, GETDATE(), 111))) + 1');
    SQL.Add('      - (DATEDIFF(DAY, CDL.Date, ISNULL(KCRK.ReturnDate, CONVERT(VARCHAR, GETDATE(), 111))) + 1 + 7 - DATEPART(WEEKDAY, CDL.Date + @@DateFirst - 1)) / 7)) * 1.0 / SUM(KCRK.ReturnPairs) AS LeadTime FROM #RY AS CDL');
    SQL.Add('      LEFT JOIN (');
    SQL.Add('        SELECT KCRK.Date AS ReturnDate, KCRK.RY, KCRKS.DDBH, SUM(KCRKS.Pairs) AS ReturnPairs FROM KCRK_Upper AS KCRK');
    SQL.Add('        LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('        WHERE KCRK.RY IN (SELECT ZLBH FROM #RY)');
    SQL.Add('        GROUP BY KCRK.Date, KCRK.RY, KCRKS.DDBH');
    SQL.Add('      ) AS KCRK ON KCRK.RY = CDL.ZLBH AND KCRK.DDBH = CDL.DDBH');
    SQL.Add('      LEFT JOIN (');
    SQL.Add('        SELECT Date, ZLBH, SUM(Qty) AS Pairs FROM #RY');
    SQL.Add('        GROUP BY Date, ZLBH');
    SQL.Add('      ) AS RY ON RY.Date = CDL.Date AND RY.ZLBH = CDL.ZLBH');
    SQL.Add('      GROUP BY CDL.Date, CDL.ZLBH, RY.Pairs');
    SQL.Add('    ) AS CDL');
    SQL.Add('    GROUP BY Date');
    SQL.Add('  ) AS CDL');
    SQL.Add('  GROUP BY Date, Pairs, Ratio');
    SQL.Add(') AS CDL ON CDL.Date = TEMPTAB.Date');
    SQL.Add('OPTION (MAXRECURSION 0)');
    Active := true;

    SetLength(LTDate, RecordCount);
    SetLength(ReturnRate, RecordCount);
    Series_IT3_LT.Clear;
    Series_IT3_Blank.Clear;
    SumQty := 0;
    SumValue := 0;
    MaxValue := 0;
    i := 0;
    while not Eof do
    begin
      Series_IT3_LT.Add(FieldByName('LeadTime').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Series_IT3_Blank.Add(0.1, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      LTDate[i] := FieldByName('Date').AsDateTime;
      ReturnRate[i] := FieldByName('Ratio').AsFloat;
      if (FieldByName('LeadTime').AsFloat > MaxValue) then
        MaxValue := FieldByName('LeadTime').AsFloat;
      if (FieldByName('LeadTime').AsFloat > 0) then
      begin
        SumValue := SumValue + FieldByName('LeadTime').AsFloat;
        Inc(SumQty);
      end;
      Inc(i);
      Next;
    end;
    
    if (MaxValue > 0) then
    begin
      LineChart_IT3.LeftAxis.Automatic := false;         
      LineChart_IT3.LeftAxis.Minimum := 0;
      LineChart_IT3.LeftAxis.Maximum := MaxValue + 2;
    end;

    if (SumQty > 0) then
      Label24.Caption := 'Average Outsourced Lead Time (' + FormatFloat('##0.0 Days', SumValue / SumQty) + ')'
    else
      Label24.Caption := 'Average Outsourced Lead Time (0 Days)';

    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#Trend'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Trend END;');
    ExecSQL;

    SQL.Add('WITH TEMPTAB(Date) AS (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''')');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS Date FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + ''')');
    SQL.Add(')');

    SQL.Add('SELECT TEMPTAB.Date, ISNULL(InStock.Pairs, 0) AS InPairs, ISNULL(OutStock.Pairs, 0) AS OutPairs INTO #Trend FROM TEMPTAB');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT KCRK.Date, SUM(KCRKS.Pairs) AS Pairs FROM KCRK_Upper AS KCRK');
    SQL.Add('  LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('  WHERE KCRK.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + '''');
    SQL.Add('  GROUP BY KCRK.Date');
    SQL.Add(') AS InStock ON InStock.Date = TEMPTAB.Date');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT KCLL.Date, SUM(KCLLS.Pairs) AS Pairs FROM KCLL_Upper AS KCLL');
    SQL.Add('  LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.LLNO = KCLL.LLNO');
    SQL.Add('  WHERE KCLL.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + '''');
    SQL.Add('  GROUP BY KCLL.Date');
    SQL.Add(') AS OutStock ON OutStock.Date = TEMPTAB.Date');
    SQL.Add('OPTION (MAXRECURSION 0)');

    SQL.Add('SELECT Date, InPairs, OutPairs, Inventory + (SELECT ISNULL(SUM(Pairs), 0) AS Pairs FROM KCCLMONTH_Upper WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_IT1.Date, -1)) + ''') AS Inventory FROM (');
    SQL.Add('  SELECT T1.Date, T1.InPairs, T1.OutPairs, SUM(T2.InPairs) - SUM(T2.OutPairs) AS Inventory FROM #Trend AS T1');
    SQL.Add('  LEFT JOIN #Trend AS T2 ON T2.Date <= T1.Date');
    SQL.Add('  GROUP BY T1.Date, T1.InPairs, T1.OutPairs');
    SQL.Add(') AS Trend');
    SQL.Add('WHERE Date >= ''' + FormatDateTime('yyyy/MM/dd', DTP_IT1.Date) + '''');
    SQL.Add('ORDER BY Date');
    Active := true;

    Series_IT2_Inventory.Clear;
    Series_IT2_StockIn.Clear;
    Series_IT2_StockOut.Clear;
    while not Eof do
    begin
      Series_IT2_Inventory.Add(FieldByName('Inventory').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Series_IT2_StockIn.Add(FieldByName('InPairs').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Series_IT2_StockOut.Add(FieldByName('OutPairs').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Next;
    end;

    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#RY'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #RY END;');
    ExecSQL;

    SQL.Add('SELECT InDate, RY, DDBH, InPairs INTO #RY FROM (');
    SQL.Add('  SELECT KCRK.Date AS InDate, KCRK.RY, KCRKS.DDBH, SUM(KCRKS.Pairs) AS InPairs FROM KCRK_Upper AS KCRK');
    SQL.Add('  LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
    SQL.Add('  WHERE KCRK.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IT1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + ''' AND ISNULL(KCRKS.Pairs, 0) > 0');
    SQL.Add('  GROUP BY KCRK.Date, KCRK.RY, KCRKS.DDBH');
    SQL.Add(') AS KCRK');

    SQL.Add('WITH TEMPTAB(Date) AS (');
    SQL.Add('  SELECT CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_IT1.Date) + ''')');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS Date FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= CONVERT(SmallDateTime, ''' + FormatDateTime('yyyy/MM/dd', DTP_IT2.Date) + ''')');
    SQL.Add(')');

    SQL.Add('SELECT TEMPTAB.Date, ROUND(SUM(KCRK.InPairs * KCRK.LeadTime) * 1.0 / SUM(KCRK.InPairs), 1) AS LeadTime FROM TEMPTAB');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT KCRK.InDate, KCRK.RY, KCRK.DDBH, KCRK.InPairs, DATEDIFF(DAY, KCRK.InDate, ISNULL(MIN(KCLL.Date), CONVERT(VARCHAR, GETDATE(), 111))) + 1');
    SQL.Add('  - (DATEDIFF(DAY, KCRK.InDate, ISNULL(MIN(KCLL.Date), CONVERT(VARCHAR, GETDATE(), 111))) + 1 + 7 - DATEPART(WEEKDAY, KCRK.InDate + @@DateFirst - 1)) / 7 AS LeadTime FROM #RY AS KCRK');
    SQL.Add('  LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.DDBH = KCRK.DDBH');
    SQL.Add('  LEFT JOIN KCLL_Upper AS KCLL ON KCLL.LLNO = KCLLS.LLNO AND KCLL.Date >= KCRK.InDate');
    SQL.Add('  GROUP BY KCRK.InDate, KCRK.RY, KCRK.DDBH, KCRK.InPairs');
    SQL.Add(') AS KCRK ON KCRK.InDate = TEMPTAB.Date');
    SQL.Add('GROUP BY TEMPTAB.Date');
    SQL.Add('ORDER BY TEMPTAB.Date');
    Active := true;

    Series_IT4_LT.Clear;
    Series_IT4_Blank.Clear;
    SumQty := 0;
    SumValue := 0;
    MaxValue := 0;
    while not Eof do
    begin
      Series_IT4_LT.Add(FieldByName('LeadTime').AsFloat, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      Series_IT4_Blank.Add(0.1, FormatDateTime('M/d', FieldByName('Date').AsDateTime));
      if (FieldByName('LeadTime').AsFloat > MaxValue) then
        MaxValue := FieldByName('LeadTime').AsFloat;
      if (FieldByName('LeadTime').AsFloat > 0) then
      begin
        SumValue := SumValue + FieldByName('LeadTime').AsFloat;
        Inc(SumQty);
      end;
      Next;
    end;
    
    if (MaxValue > 0) then
    begin
      LineChart_IT4.LeftAxis.Automatic := false;
      LineChart_IT4.LeftAxis.Minimum := 0;
      LineChart_IT4.LeftAxis.Maximum := MaxValue + 2;
    end;

    if (SumQty > 0) then
      Label25.Caption := 'Average Stock Lead Time (' + FormatFloat('##0.0 Days', SumValue / SumQty) + ')'
    else
      Label25.Caption := 'Average Stock Lead Time (0 Days)';
  end;
end;

procedure TShoeUpperInventory.Series_IT1_WIPGetMarkText(Sender: TChartSeries;
  ValueIndex: Integer; var MarkText: String);
begin
  if (MarkText = '0') then
    MarkText := '';
end;

procedure TShoeUpperInventory.Series_IT1_CompInGetMarkText(Sender: TChartSeries;
  ValueIndex: Integer; var MarkText: String);
begin
  if (MarkText = '0') then
    MarkText := '';
end;

procedure TShoeUpperInventory.Series_IT1_UpperOutGetMarkText(Sender: TChartSeries;
  ValueIndex: Integer; var MarkText: String);
begin
  if (MarkText = '0') then
    MarkText := '';
end;

procedure TShoeUpperInventory.BarChart_WClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i: integer;
  Building, Lean: string;
begin
  for i := 0 to Series.Count - 1 do
  begin
    if (i <> ValueIndex) then
      Series.ValueColor[i] := clSilver
    else
      Series.ValueColor[i] := $006A5444;
  end;

  Lean := Series.XLabel[ValueIndex];
  Lean := StringReplace(StringReplace(Copy(Lean, Pos(#13#10, Lean) + 2, Length(Lean) - Pos(#13#10, Lean) - 1), '(', '', [rfReplaceAll]), ')', '', [rfReplaceAll]);
  Building := 'A' + FormatFloat('00', StrToInt(Copy(Lean, 2, Pos('L', Lean)-2)));
  Lean := StringReplace(Copy(Lean, Pos('L', Lean), Length(Lean) - Pos('L', Lean) + 1), 'L', 'LEAN', [rfReplaceAll]);

  Q_W.Filter := 'Building = ''' + Building + ''' AND Lean = ''' + Lean + '''';
  Q_W.Filtered := true;
end;

procedure TShoeUpperInventory.BarChart_WClickBackground(
  Sender: TCustomChart; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  i: integer;
begin
  for i := 0 to Series_W.Count - 1 do
  begin
    Series_W.ValueColor[i] := $006A5444;
  end;
  Q_W.Filtered := false;
end;

procedure TShoeUpperInventory.CB_UClick(Sender: TObject);
begin
  DTP_U.Enabled := not CB_U.Checked;
end;

procedure TShoeUpperInventory.ED_RY_UChange(Sender: TObject);
begin
  if (Length(ED_RY_U.Text) >= 10) then
    CB_U.Enabled := true
  else begin
    CB_U.Enabled := false;
    CB_U.Checked := false;
  end;
end;

procedure TShoeUpperInventory.LineChart_IT2AfterDraw(Sender: TObject);
{var
  i, x, y: Integer;
  MarkText: String;
  LogFont: TLogFont;
  OldFont, NewFont: HFONT;}
begin
  {GetObject(LineChart_IT2.Canvas.Font.Handle, SizeOf(LogFont), Addr(LogFont));
  LogFont.lfEscapement := 90 * 10;
  LogFont.lfOrientation := 90 * 10;
  LogFont.lfHeight := -11;
  LogFont.lfWeight := FW_BOLD;
  NewFont := CreateFontIndirect(LogFont);
  OldFont := SelectObject(LineChart_IT2.Canvas.Handle, NewFont);

  for i := 0 to Series_IT2_StockIn.Count - 1 do
  begin
    if (Series_IT2_StockIn.YValues[i] > 0) then
    begin
      MarkText := FormatFloat('###,###,##0', Series_IT2_StockIn.YValues[i]);

      x := Series_IT2_StockIn.Marks.Positions[i].LeftTop.X + Series_IT2_StockIn.Marks.Positions[i].Width DIV 2 - 8;
      y := Series_IT2_StockIn.Marks.Positions[i].LeftTop.Y + 11;

      LineChart_IT2.Canvas.Brush.Style := bsClear;
      LineChart_IT2.Canvas.TextOut(x, y, MarkText);
    end;
  end;

  SelectObject(LineChart_IT2.Canvas.Handle, OldFont);
  DeleteObject(NewFont);}
end;
      
procedure TShoeUpperInventory.Timer1Timer(Sender: TObject);
begin
  ToolTip.Visible := false;
  Timer1.Enabled := false;
end;

procedure TShoeUpperInventory.Series_IT2_StockInClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TT_Date.Caption := ' Date: ' + Series_IT2_StockIn.XLabel[ValueIndex];
    TT_StockIn.Caption := ' Stock-In: ' + FormatFloat('###,###,##0', Series_IT2_StockIn.YValues[ValueIndex]);
    TT_StockOut.Caption := ' Stock-Out: ' + FormatFloat('###,###,##0', Series_IT2_StockOut.YValues[ValueIndex]);
    TT_Inventory.Caption := ' Inventory: ' + FormatFloat('###,###,##0', Series_IT2_Inventory.YValues[ValueIndex]);
    if (X + 10 + ToolTip.Width <= TabSheet10.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet10.Width - 5 - ToolTip.Width;
    ToolTip.Top := Y - 30;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;

procedure TShoeUpperInventory.Series_IT2_StockOutClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TT_Date.Caption := ' Date: ' + Series_IT2_StockIn.XLabel[ValueIndex];
    TT_StockIn.Caption := ' Stock-In: ' + FormatFloat('###,###,##0', Series_IT2_StockIn.YValues[ValueIndex]);
    TT_StockOut.Caption := ' Stock-Out: ' + FormatFloat('###,###,##0', Series_IT2_StockOut.YValues[ValueIndex]);
    TT_Inventory.Caption := ' Inventory: ' + FormatFloat('###,###,##0', Series_IT2_Inventory.YValues[ValueIndex]);
    if (X + 10 + ToolTip.Width <= TabSheet10.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet10.Width - 5 - ToolTip.Width;
    ToolTip.Top := Y - 30;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;
         
procedure TShoeUpperInventory.Series_IT2_InventoryClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TT_Date.Caption := ' Date: ' + Series_IT2_StockIn.XLabel[ValueIndex];
    TT_StockIn.Caption := ' Stock-In: ' + FormatFloat('###,###,##0', Series_IT2_StockIn.YValues[ValueIndex]);
    TT_StockOut.Caption := ' Stock-Out: ' + FormatFloat('###,###,##0', Series_IT2_StockOut.YValues[ValueIndex]);
    TT_Inventory.Caption := ' Inventory: ' + FormatFloat('###,###,##0', Series_IT2_Inventory.YValues[ValueIndex]);
    if (X + 10 + ToolTip.Width <= TabSheet10.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet10.Width - 5 - ToolTip.Width;
    ToolTip.Top := Y - 30;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;

procedure TShoeUpperInventory.Series_IT1_CompInClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TT_Date.Caption := ' Date: ' + Series_IT1_CompIn.XLabel[ValueIndex];
    TT_StockIn.Caption := ' Comp. In: ' + FormatFloat('###,###,##0', Series_IT1_CompIn.YValues[ValueIndex]);
    TT_StockOut.Caption := ' Upper Out: ' + FormatFloat('###,###,##0', Series_IT1_UpperOut.YValues[ValueIndex]);
    TT_Inventory.Caption := ' WIP: ' + FormatFloat('###,###,##0', Series_IT1_WIP.YValues[ValueIndex]);
    if (X + 10 + ToolTip.Width <= TabSheet10.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet10.Width - 5 - ToolTip.Width;
    ToolTip.Top := Y - 30;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;

procedure TShoeUpperInventory.Series_IT1_UpperOutClick(
  Sender: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
    begin
    TT_Date.Caption := ' Date: ' + Series_IT1_CompIn.XLabel[ValueIndex];
    TT_StockIn.Caption := ' Comp. In: ' + FormatFloat('###,###,##0', Series_IT1_CompIn.YValues[ValueIndex]);
    TT_StockOut.Caption := ' Upper Out: ' + FormatFloat('###,###,##0', Series_IT1_UpperOut.YValues[ValueIndex]);
    TT_Inventory.Caption := ' WIP: ' + FormatFloat('###,###,##0', Series_IT1_WIP.YValues[ValueIndex]);
    if (X + 10 + ToolTip.Width <= TabSheet10.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet10.Width - 5 - ToolTip.Width;
    ToolTip.Top := Y - 30;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;

procedure TShoeUpperInventory.Series_IT1_WIPClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if (Button = mbLeft) then
  begin
    TT_Date.Caption := ' Date: ' + Series_IT1_CompIn.XLabel[ValueIndex];
    TT_StockIn.Caption := ' Comp. In: ' + FormatFloat('###,###,##0', Series_IT1_CompIn.YValues[ValueIndex]);
    TT_StockOut.Caption := ' Upper Out: ' + FormatFloat('###,###,##0', Series_IT1_UpperOut.YValues[ValueIndex]);
    TT_Inventory.Caption := ' WIP: ' + FormatFloat('###,###,##0', Series_IT1_WIP.YValues[ValueIndex]);
    if (X + 10 + ToolTip.Width <= TabSheet10.Width - 5) then
      ToolTip.Left := X + 10
    else
      ToolTip.Left := TabSheet10.Width - 5 - ToolTip.Width;
    ToolTip.Top := Y - 30;
    ToolTip.Visible := true;
    Timer1.Enabled := false;
    Timer1.Enabled := true;
  end;
end;

procedure TShoeUpperInventory.PC4Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  Timer1Timer(Nil);
end;

procedure TShoeUpperInventory.Series_IT3_LTGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  if (ReturnRate[ValueIndex] = -1) then
    MarkText := ''
  else if (MarkText = '0') then
    MarkText := '(0%)'
  else
    MarkText := FloatToStr(Series_IT3_LT.YValues[ValueIndex]) + ' Days' + #13#10 + '(' + FloatToStr(ReturnRate[ValueIndex]) + '%)';
end;

procedure TShoeUpperInventory.BI2Click(Sender: TObject);
begin
  ClosingInventory := TClosingInventory.Create(Self);
  ClosingInventory.ShowModal;
end;

procedure TShoeUpperInventory.Button9Click(Sender: TObject);
begin
  ClosingWIP := TClosingWIP.Create(Self);
  ClosingWIP.ShowModal;
end;

procedure TShoeUpperInventory.Series_IT3_LTClick(Sender: TChartSeries;
  ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if (ReturnRate[ValueIndex] > -1) then
  begin
    OutsourcingLeadTime := TOutsourcingLeadTime.Create(Self);
    OutsourcingLeadTime.LoadData(LTDate[ValueIndex]);
    OutsourcingLeadTime.ShowModal;
  end;
end;

procedure TShoeUpperInventory.Series_IT3_BlankGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  MarkText := '';
end;

function TShoeUpperInventory.Series_IT3_LTGetPointerStyle(
  Sender: TChartSeries; ValueIndex: Integer): TSeriesPointerStyle;
begin
  if (ReturnRate[ValueIndex] = -1) then
    Result := psSmallDot
  else
    Result := psRectangle;
end;

procedure TShoeUpperInventory.BarChart_PCClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Building, Lean: String;
begin
  Lean := Series.XLabel[ValueIndex];
  Building := 'A' + FormatFloat('00', StrToInt(Copy(Lean, 2, Pos('L', Lean)-2)));
  Lean := StringReplace(Copy(Lean, Pos('L', Lean), Length(Lean) - Pos('L', Lean) + 1), 'L', 'LEAN', [rfReplaceAll]);

  LeanInventory := TLeanInventory.Create(Self);
  LeanInventory.LoadData(Building, Lean);
  LeanInventory.ShowModal;
end;

procedure TShoeUpperInventory.DTP_PC3Change(Sender: TObject);
begin
  if (CB_OS_PC2.Checked) then
  begin
    ReloadBuilding(CB_Building_PC2, DTP_PC3, DTP_PC3, 'OS_Only');
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, 'OS_Only');
  end
  else begin
    ReloadBuilding(CB_Building_PC2, DTP_PC3, DTP_PC3, '');
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, '');
  end;
end;

procedure TShoeUpperInventory.CB_Building_PC2Change(Sender: TObject);
begin
  if (CB_OS_PC2.Checked) then
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, 'OS_Only')
  else
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, 'NONE');
end;

procedure TShoeUpperInventory.CB_OS_PC2Click(Sender: TObject);
begin
  if (CB_OS_PC2.Checked) then
  begin
    ReloadBuilding(CB_Building_PC2, DTP_PC3, DTP_PC3, 'OS_Only');
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, 'OS_Only');
  end
  else begin
    ReloadBuilding(CB_Building_PC2, DTP_PC3, DTP_PC3, '');
    ReloadLean(CB_Lean_PC2, CB_Building_PC2, DTP_PC3, DTP_PC3, '');
  end;
end;

procedure TShoeUpperInventory.Button10Click(Sender: TObject);
var
  SDate: TDate;
  SubSeq, OSCompelteDate, OS, Stitching, Assembly, Warehouse, WeekDay, WorkingHours: string;
  i, WD: integer;
  CanSelect: Boolean;
begin
  LB_PC2_Month.Caption := FormatDateTime('yyyy/MM', DTP_PC3.Date);
  LB_PC2_Building.Caption := CB_Building_PC2.Text;
  LB_PC2_Lean.Caption := CB_Lean_PC2.Text;
  ImageBox.Visible := false;

  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    StringGrid1.Rows[i].Clear;
  end;
  SetLength(HolidayList, 0);

  StringGrid1.RowCount := 4;
  StringGrid1.ColCount := 2;
  StringGrid1.Cells[1, 0] := '';  
  StringGrid1.Cells[0, 0] := 'Date';
  StringGrid1.Cells[0, 1] := 'Date';
  StringGrid1.Cells[0, 2] := 'WH';
  StringGrid1.Cells[0, 3] := '1';
  StringGrid1.ColWidths[1] := StringGrid1.DefaultColWidth;
  StringGrid1.Repaint;
  StringGrid1.ColCount := DaysBetween(StartOfTheMonth(DTP_PC3.Date), EndOfTheMonth(DTP_PC3.Date)) + 2;
  StringGrid1.TopRow := 3;
  StringGrid1.LeftCol := 1;

  SetLength(HolidayList, DaysBetween(StartOfTheMonth(DTP_PC3.Date), EndOfTheMonth(DTP_PC3.Date)) + 1);
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CONVERT(VARCHAR, CONVERT(SmallDateTime, SCRL.SCYEAR + ''/'' + SCRL.SCMONTH + ''/'' + SCRL.SCDay), 111) AS Date, SCRL.SCGS AS WorkingHours FROM SCRL');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SCRL.DepNO');
    SQL.Add('WHERE SCRL.SCYEAR = ''' + FormatDateTime('yyyy', DTP_PC3.Date) + ''' AND SCRL.SCMONTH = ''' + FormatDateTime('M', DTP_PC3.Date) + ''' AND BDepartment.DepName LIKE ''' + CB_Building_PC2.Text + '%' + CB_Lean_PC2.Text +'%_G' + '''');
    SQL.Add('ORDER BY CONVERT(SmallDateTime, SCRL.SCYEAR + ''/'' + SCRL.SCMONTH + ''/'' + SCRL.SCDay)');
    Active := true;
  end;

  SDate := StartOfTheMonth(DTP_PC3.Date);
  for i := 1 to DaysBetween(StartOfTheMonth(DTP_PC3.Date), EndOfTheMonth(DTP_PC3.Date)) + 1 do
  begin
    WD := DayOfTheWeek(SDate);
    if (WD = 1) then
      WeekDay := '一'
    else if (WD = 2) then
      WeekDay := '二'
    else if (WD = 3) then
      WeekDay := '三'
    else if (WD = 4) then
      WeekDay := '四'
    else if (WD = 5) then
      WeekDay := '五'
    else if (WD = 6) then
      WeekDay := '六'
    else if (WD = 7) then
      WeekDay := '日';

    if (QTemp.Locate('Date', FormatDateTime('yyyy/MM/dd', SDate), [])) then
      WorkingHours := FloatToStr(QTemp.FieldByName('WorkingHours').AsFloat)
    else if (QTemp.RecordCount = 0) AND (WD <> 7) then
      WorkingHours := '8'
    else begin
      StringGrid1.ColWidths[i] := 60;
      WorkingHours := '';
      HolidayList[i-1] := true;
    end;

    StringGrid1.Cells[i, 0] := FormatDateTime('MM/dd', SDate);
    StringGrid1.Cells[i, 1] := WeekDay;
    StringGrid1.Cells[i, 2] := WorkingHours;
    SDate := IncDay(SDate);
  end;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#TempSC'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #TempSC END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#SC'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SC END;');
    ExecSQL;

    SQL.Add('SELECT SC.building_no, SC.lean_no, SC.schedule_date, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.ry_index, SC.Pairs,');
    SQL.Add('ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle INTO #TempSC FROM (');
    SQL.Add('  SELECT SC.building_no, SC.lean_no, SC.schedule_date, DDZL.DDBH, DDZL.Pairs AS RYPairs, SC.ry_index, CAST(SC.sl AS INT) AS Pairs,');
    SQL.Add('  CASE WHEN RIGHT(SC.ry, 3) LIKE ''%-%'' THEN SUBSTRING(RIGHT(SC.ry, 3), CHARINDEX(''-'', RIGHT(SC.ry, 3)) + 1, LEN(RIGHT(SC.ry, 3)) - CHARINDEX(''-'', RIGHT(SC.ry, 3))) END AS SubSeq,');
    SQL.Add('  CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM schedule_crawler AS SC');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('  WHERE SC.building_no = ''' + CB_Building_PC2.Text + ''' AND SC.lean_no = ''' + CB_Lean_PC2.Text + ''' AND SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_PC3.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_PC3.Date)) + '''');
    SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('GROUP BY SC.building_no, SC.lean_no, SC.schedule_date, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.ry_index, SC.Pairs, SC.Cycles');

    SQL.Add('SELECT SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs,');
    SQL.Add('SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs, SC.StockInPairs, SUM(ZLPairs) AS ZLPairs, SUM(OutputPairs) AS OutputPairs INTO #SC FROM (');
    SQL.Add('  SELECT SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs,');
    SQL.Add('  SC.StockInPairs, MSP.Part, MSP.Process, CASE WHEN MSP.Part IS NOT NULL THEN SC.RYPairs END AS ZLPairs, CASE WHEN MSP.Part IS NOT NULL THEN ISNULL(SUM(SPO.Pairs), 0) END AS OutputPairs FROM (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country,');
    SQL.Add('    SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs, ISNULL(SUM(CASE WHEN YWCP.INDATE IS NOT NULL THEN YWCP.Qty END), 0) AS StockInPairs FROM (');
    SQL.Add('      SELECT SC.building_no, SC.lean_no, SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs,');
    SQL.Add('      SC.OSPairs, SC.OSCompleteDate, CASE WHEN ISNULL(SC.OSPairs, 0) > 0 THEN ISNULL(SC.RPairs, 0) ELSE ISNULL(SC.SCPairs_S, 0) END AS RPairs, ISNULL(SC.SCPairs_A, 0) AS APairs FROM (');
    SQL.Add('        SELECT SC.building_no, SC.lean_no, SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs,');
    SQL.Add('        SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SUM(SMZL.SCPairs_S) AS SCPairs_S, SUM(SMZL.SCPairs_A) AS SCPairs_A FROM (');
    SQL.Add('          SELECT SC.building_no, SC.lean_no, SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs,');
    SQL.Add('          CASE WHEN SC.OSPairs = SC.Pairs THEN SC.OSCompleteDate END AS OSCompleteDate, ISNULL(SUM(KCRKS.Pairs), 0) AS RPairs, SC.MinCycle, SC.MaxCycle FROM (');
    SQL.Add('            SELECT SC.building_no, SC.lean_no, SC.schedule_date, DATEDIFF(DAY, ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_PC3.Date)) + ''', SC.schedule_date) AS Seq, SC.ry_index, DDZL.DDBH, SC.RYPairs, SC.SubSeq, DDZL.XieXing, DDZL.SheHao, XXZL.DAOMH, XXZL.ARTICLE,');
    SQL.Add('            CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS BUY, SUBSTRING(CONVERT(VARCHAR, DDZL.ShipDate, 111), 6, 5) AS ShipDate, LBZLS.YWSM AS Country,');
    SQL.Add('            SC.Pairs, ISNULL(SUM(CASE WHEN CDL.ConfirmDate IS NOT NULL THEN SMDD.Qty END), 0) AS OSPairs, MAX(CDL.Date) AS OSCompleteDate, SC.MinCycle, SC.MaxCycle FROM (');
    SQL.Add('              SELECT SC.building_no, SC.lean_no, SC.schedule_date, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.ry_index, SC.Pairs + ISNULL(SC2.Pairs, 0) AS Pairs,');
    SQL.Add('              CASE WHEN SC2.MinCycle IS NOT NULL AND SC2.MinCycle < SC.MinCycle THEN SC2.MinCycle ELSE SC.MinCycle END AS MinCycle,');
    SQL.Add('              CASE WHEN SC2.MaxCycle IS NOT NULL AND SC2.MaxCycle > SC.MaxCycle THEN SC2.MaxCycle ELSE SC.MaxCycle END AS MaxCycle FROM #TempSC AS SC');
    SQL.Add('              LEFT JOIN (');
    SQL.Add('                SELECT building_no, lean_no, DDBH, CASE WHEN SUM(Pairs) <= RYPairs THEN SUM(Pairs) ELSE RYPairs END AS Pairs, MIN(MinCycle) AS MinCycle, MAX(MaxCycle) AS MaxCycle FROM (');
    SQL.Add('                  SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs, SC.Pairs,');
    SQL.Add('                  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('                  CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('                  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('                  CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle FROM (');
    SQL.Add('                    SELECT SC.building_no, SC.lean_no, DDZL.DDBH, DDZL.Pairs AS RYPairs, CAST(SC.sl AS INT) AS Pairs,');
    SQL.Add('                    CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM schedule_crawler AS SC');
    SQL.Add('                    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('                    WHERE SC.building_no = ''' + CB_Building_PC2.Text + ''' AND SC.lean_no = ''' + CB_Lean_PC2.Text + ''' AND SC.schedule_date < ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_PC3.Date)) + ''' AND DDZL.DDBH IN (SELECT DDBH FROM #TempSC)');
    SQL.Add('                    AND SC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('                  ) AS SC');
    SQL.Add('                  LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('                  GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.RYPairs, SC.Pairs, SC.Cycles');
    SQL.Add('                ) AS SC');
    SQL.Add('                GROUP BY building_no, lean_no, DDBH, RYPairs');
    SQL.Add('              ) AS SC2 ON SC2.building_no = SC.building_no AND SC2.lean_no = SC.lean_no AND SC2.DDBH = SC.DDBH');
    SQL.Add('            ) AS SC');
    SQL.Add('            LEFT JOIN DDZL ON DDZL.DDBH = SC.DDBH');
    SQL.Add('            LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('            LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
    SQL.Add('            LEFT JOIN CycleDispatch AS CD ON CD.ZLBH = DDZL.DDBH AND CASE WHEN CD.DDBH = CD.ZLBH THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle AND CD.GXLB = ''C'''); //AND CD.DepID = SC.building_no + ''_'' + SC.lean_no');
    SQL.Add('            LEFT JOIN CycleDispatchList AS CDL ON CDL.ListNo = CD.ListNo');
    SQL.Add('            LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('            WHERE SC.building_no = ''' + CB_Building_PC2.Text + ''' AND SC.lean_no = ''' + CB_Lean_PC2.Text + ''' AND SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_PC3.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP_PC3.Date)) + '''');
    SQL.Add('            GROUP BY SC.building_no, SC.lean_no, SC.schedule_date, SC.ry_index, DDZL.DDBH, SC.RYPairs, SC.SubSeq, DDZL.XieXing, DDZL.SheHao, XXZL.DAOMH, XXZL.ARTICLE, DDZL.BUYNO, DDZL.ShipDate, LBZLS.YWSM, SC.Pairs, SC.MinCycle, SC.MaxCycle');
    SQL.Add('          ) AS SC');
    SQL.Add('          LEFT JOIN KCRK_Upper AS KCRK ON KCRK.RY = SC.DDBH'); //AND KCRK.Building = SC.building_no AND KCRK.Lean = SC.lean_no');
    SQL.Add('          LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO AND CASE WHEN KCRKS.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(KCRKS.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('          GROUP BY SC.building_no, SC.lean_no, SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao,');
    SQL.Add('          SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.MinCycle, SC.MaxCycle');
    SQL.Add('        ) AS SC');
    SQL.Add('        LEFT JOIN (');
    SQL.Add('          SELECT SMDD.YSBH, CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END AS Cycle,');
    SQL.Add('          SUM(CASE WHEN SMDD.GXLB = ''S'' THEN SMDDSS.Qty * SMDDSS.okCTS END) AS SCPairs_S,');
    SQL.Add('          SUM(CASE WHEN SMDD.GXLB = ''A'' THEN SMDDSS.Qty * SMDDSS.okCTS END) AS SCPairs_A FROM SMDD');
    SQL.Add('          LEFT JOIN SMDDSS ON SMDDSS.DDBH = SMDD.DDBH AND SMDDSS.GXLB = SMDD.GXLB');
    SQL.Add('          WHERE SMDD.YSBH IN (SELECT DDBH FROM #TempSC) AND SMDD.GXLB IN (''S'', ''A'')');
    SQL.Add('          GROUP BY SMDD.YSBH, SMDD.DDBH');
    SQL.Add('        ) AS SMZL ON SMZL.YSBH = SC.DDBH AND SMZL.Cycle BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('        GROUP BY SC.building_no, SC.lean_no, SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao,');
    SQL.Add('        SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs');
    SQL.Add('      ) AS SC');
    SQL.Add('    ) AS SC');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT CARTONBAR, DDBH, INDATE, Qty FROM YWCP');
    SQL.Add('      WHERE DDBH IN (SELECT DDBH FROM #TempSC)');
    SQL.Add('      UNION');
    SQL.Add('      SELECT CARTONBAR, DDBH, INDATE, Qty FROM YWCPOld');
    SQL.Add('      WHERE DDBH IN (SELECT DDBH FROM #TempSC)');
    SQL.Add('    ) AS YWCP ON YWCP.DDBH = SC.DDBH');
    SQL.Add('    GROUP BY SC.building_no, SC.lean_no, SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = SC.XieXing AND MSP.SheHao = SC.SheHao AND MSP.Part <> ''NO PROCESSING''');
    SQL.Add('  LEFT JOIN SecondProcessOutput AS SPO ON SPO.Building = SC.building_no AND SPO.Lean = SC.lean_no AND SPO.RY = SC.DDBH AND SPO.Part = MSP.Part AND SPO.Process = MSP.Process');
    SQL.Add('  GROUP BY SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY,');
    SQL.Add('  SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs, SC.StockInPairs, MSP.Part, MSP.Process');
    SQL.Add(') AS SC');
    SQL.Add('GROUP BY SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs, SC.StockInPairs');

    SQL.Add('SELECT SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY,');
    SQL.Add('SC.ShipDate, SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs, ISNULL(RYMat.ETA, ''OK'') AS MatStatus,');
    SQL.Add('CASE WHEN SC.ZLPairs IS NOT NULL THEN CAST(CAST(SC.OutputPairs * 100.0 / SC.ZLPairs AS NUMERIC(4, 1)) AS VARCHAR) + ''%'' ELSE ''Not Required'' END AS SPRate, SC.StockInPairs, ISNULL(SF.OS, ''TX'') AS OS,');
    SQL.Add('CASE WHEN SC.StockInPairs = SC.Pairs THEN 3 ELSE CASE WHEN MAX(PP.PlanDate) = CONVERT(VARCHAR, GETDATE(), 111) THEN 1 ELSE CASE WHEN ISNULL(SUM(PP.Pairs), 0) = SC.Pairs THEN 2 ELSE 0 END END END AS TPlan FROM #SC AS SC');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT RYMat.DDBH, ISNULL(''ETA - '' + SUBSTRING(CONVERT(VARCHAR, MAX(RYMat.ETA), 111), 6, 5), ''NO ETA'') AS ETA FROM (');
    SQL.Add('    SELECT RYMat.DDBH, RYMat.CLBH, RYMat.ZLQty, RYMat.KCQty, RYMat.CGQty, RYMat.ETA, SUM(KCRKS.Qty) AS RKQty FROM (');
    SQL.Add('      SELECT RYMat.DDBH, RYMat.CLBH, RYMat.ZLQty, SUM(CGKCUSE.Qty) AS KCQty, SUM(CGZLSS.Qty) AS CGQty, MAX(CGZLSS.CFMDate) AS ETA FROM (');
    SQL.Add('        SELECT SC.DDBH, ZLZLS2.CLBH, SUM(ZLZLS2.CLSL) AS ZLQty FROM #SC AS SC');
    SQL.Add('        LEFT JOIN ZLZLS2 ON ZLZLS2.ZLBH = SC.DDBH');
    SQL.Add('        LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('        WHERE ZLZLS2.ZMLB = ''N'' AND ZLZLS2.CSBH NOT LIKE ''JNG%'' AND ISNULL(ZLZLS2.CLSL, 0) > 0');
    SQL.Add('        AND LEFT(ZLZLS2.CLBH, 1) IN (''A'', ''B'', ''C'', ''D'', ''E'', ''F'', ''G'', ''J'', ''K'', ''O'', ''P'', ''V'')');
    SQL.Add('        AND CLZL.DWBH IN (''YRD'', ''SQM'', ''SQF'', ''SHT'', ''PCE'', ''PC'', ''M'') AND CLZL.YWPM NOT LIKE ''%QC%LABEL%''');
    SQL.Add('        GROUP BY SC.DDBH, ZLZLS2.CLBH');
    SQL.Add('      ) AS RYMat');
    SQL.Add('      LEFT JOIN CGKCUSE ON CGKCUSE.ZLBH = RYMat.DDBH AND CGKCUSE.CLBH = RYMat.CLBH');
    SQL.Add('      LEFT JOIN CGZLSS ON CGZLSS.ZLBH = RYMat.DDBH AND CGZLSS.CLBH = RYMat.CLBH');
    SQL.Add('      GROUP BY RYMat.DDBH, RYMat.CLBH, RYMat.ZLQty');
    SQL.Add('    ) AS RYMat');
    SQL.Add('    LEFT JOIN KCRKS ON KCRKS.CGBH = RYMat.DDBH AND KCRKS.CLBH = RYMat.CLBH');
    SQL.Add('    LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO AND KCRK.CFMDATE IS NOT NULL');
    SQL.Add('    GROUP BY RYMat.DDBH, RYMat.CLBH, RYMat.ZLQty, RYMat.KCQty, RYMat.CGQty, RYMat.ETA');
    SQL.Add('  ) AS RYMat');
    SQL.Add('  WHERE ISNULL(RKQty, 0) + ISNULL(KCQty, 0) < RYMat.ZLQty');
    SQL.Add('  GROUP BY RYMat.DDBH');
    SQL.Add(') AS RYMat ON RYMat.DDBH = SC.DDBH');
    SQL.Add('LEFT JOIN ProductionPlan AS PP ON PP.RY = SC.DDBH AND PP.PlanType LIKE ''1-Day%'' AND PP.PlanDate <= CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT Building_VL AS OS FROM schedule_factorylink');
    SQL.Add('  WHERE Building_TX = ''' + CB_Building_PC2.Text + ''' AND Lean_TX = ''' + CB_Lean_PC2.Text + ''' AND Year + ''/'' + Month = ''' + FormatDateTime('yyyy/MM', DTP_PC3.Date) + '''');
    SQL.Add(') AS SF ON 1 = 1');
    SQL.Add('GROUP BY SC.schedule_date, SC.Seq, SC.ry_index, SC.DDBH, SC.RYPairs, SC.SubSeq, SC.XieXing, SC.SheHao, SC.DAOMH, SC.ARTICLE, SC.BUY, SC.ShipDate,');
    SQL.Add('SC.Country, SC.Pairs, SC.OSPairs, SC.OSCompleteDate, SC.RPairs, SC.APairs, RYMat.ETA, SC.OutputPairs, SC.ZLPairs, SC.StockInPairs, SF.OS');
    SQL.Add('ORDER BY SC.schedule_date, SC.ry_index');
    Active := true;
                         
    while not Eof do
    begin
      if (StringGrid1.RowCount < FieldByName('ry_index').AsInteger + 3) then
      begin
        StringGrid1.RowCount := FieldByName('ry_index').AsInteger + 3;
        StringGrid1.Cells[0, StringGrid1.RowCount - 1] := IntToStr(StringGrid1.RowCount - 3);
      end;

      if (FieldByName('SubSeq').IsNull = false) then
        SubSeq := '-' + FieldByName('SubSeq').AsString
      else
        SubSeq := '';

      if (FieldByName('RPairs').AsInteger = FieldByName('Pairs').AsInteger) then
        Stitching := '100.0%'
      else
        Stitching := FormatFloat('###,##0', FieldByName('RPairs').AsInteger - FieldByName('Pairs').AsInteger) + ' [' + FormatFloat('##0.0%', FieldByName('RPairs').AsInteger * 100 / FieldByName('Pairs').AsInteger) + ']';

      if (FieldByName('APairs').AsInteger = FieldByName('Pairs').AsInteger) then
        Assembly := '100.0%'
      else
        Assembly := FormatFloat('###,##0', FieldByName('APairs').AsInteger - FieldByName('Pairs').AsInteger) + ' [' + FormatFloat('##0.0%', FieldByName('APairs').AsInteger * 100 / FieldByName('Pairs').AsInteger) + ']';

      if (FieldByName('StockInPairs').AsInteger = FieldByName('RYPairs').AsInteger) then
        Warehouse := '100.0%'
      else
        Warehouse := FormatFloat('###,##0', FieldByName('StockInPairs').AsInteger - FieldByName('RYPairs').AsInteger) + ' [' + FormatFloat('##0.0%', FieldByName('StockInPairs').AsInteger * 100 / FieldByName('RYPairs').AsInteger) + ']';

      if (FieldByName('OS').AsString = 'TD') OR (FieldByName('OSPairs').AsInteger > 0) then
      begin
        OSCompelteDate := '';
        if (FieldByName('OSCompleteDate').IsNull = false) then
          OSCompelteDate := ' [' + FormatDateTime('MM/dd hh:mm', FieldByName('OSCompleteDate').AsDateTime) + ']';

        if (FieldByName('OSPairs').AsInteger = FieldByName('Pairs').AsInteger) then
          OS := '100.0%'
        else
          OS := FormatFloat('###,##0', FieldByName('OSPairs').AsInteger - FieldByName('Pairs').AsInteger) + ' [' + FormatFloat('##0.0%', FieldByName('OSPairs').AsInteger * 100 / FieldByName('Pairs').AsInteger) + ']';

        StringGrid1.Cells[FieldByName('Seq').AsInteger + 1, FieldByName('ry_index').AsInteger + 2] := (
          'RY: ' + FieldByName('DDBH').AsString + SubSeq + ' [' + FieldByName('BUY').AsString + ' BUY]' + #13#10 +
          'Model: ' + FieldByName('DAOMH').AsString + #13#10 +
          'SKU: ' + FieldByName('ARTICLE').AsString + #13#10 +
          'Country: ' + FieldByName('Country').AsString + #13#10 +
          'GAC: ' + FieldByName('ShipDate').AsString + #13#10 +
          'Materials: ' + FieldByName('MatStatus').AsString + #13#10 +
          'Pairs: ' + FormatFloat('###,##0', FieldByName('Pairs').AsInteger) + #13#10 +
          'Processing: ' + FieldByName('SPRate').AsString + #13#10 +
          'O/S: ' + OS + OSCompelteDate + #13#10 +
          'Stitching: ' + Stitching + #13#10 +
          'Assembly: ' + Assembly + #13#10 +
          'Warehouse: ' + Warehouse
        );
        StringGrid1.ColWidths[FieldByName('Seq').AsInteger + 1] := StringGrid1.DefaultColWidth;
      end
      else begin
        StringGrid1.Cells[FieldByName('Seq').AsInteger + 1, FieldByName('ry_index').AsInteger + 2] := (
          'RY: ' + FieldByName('DDBH').AsString + SubSeq + ' [' + FieldByName('BUY').AsString + ' BUY]' + #13#10 +
          'Model: ' + FieldByName('DAOMH').AsString + #13#10 +
          'SKU: ' + FieldByName('ARTICLE').AsString + #13#10 +
          'Country: ' + FieldByName('Country').AsString + #13#10 +
          'GAC: ' + FieldByName('ShipDate').AsString + #13#10 +
          'Materials: ' + FieldByName('MatStatus').AsString + #13#10 +
          'Pairs: ' + FormatFloat('###,##0', FieldByName('Pairs').AsInteger) + #13#10 +
          'Processing: ' + FieldByName('SPRate').AsString + #13#10 +
          'Stitching: ' + Stitching + #13#10 +
          'Assembly: ' + Assembly + #13#10 +
          'Warehouse: ' + Warehouse
        );
        StringGrid1.ColWidths[FieldByName('Seq').AsInteger + 1] := StringGrid1.DefaultColWidth;
      end;

      for i := 1 to FieldByName('TPlan').AsInteger do
      begin
        StringGrid1.Cells[FieldByName('Seq').AsInteger + 1, FieldByName('ry_index').AsInteger + 2] := StringGrid1.Cells[FieldByName('Seq').AsInteger + 1, FieldByName('ry_index').AsInteger + 2] + ' ';
      end;
      Next;
    end;
  end;
  ShoePicSKU := '';
  FormResize(Nil);
  CanSelect := true;
  StringGrid1SelectCell(Nil, 1, 3, CanSelect);
  ImageBox.Visible := (StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row] <> '');
  StringGrid1.SetFocus;
end;

procedure TShoeUpperInventory.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  TempStr, MatStatus, CellText: string;
  Pairs, OS, Stitching, StatusCode: integer;
  sRect: TRect;
begin
  with StringGrid1 do
  begin
    Canvas.Font := Font;
    CellText := Cells[ACol, ARow];
    StatusCode := -1;

    if (ACol = 0) OR (ARow <= 2) then
    begin
      Canvas.Font.Size := 12;
      Canvas.Brush.Color := clWhite;
      
      if (ACol = 0) AND (ARow = 0) then
        Rect.Bottom := CellRect(0, 1).Bottom
      else if (ACol = 0) AND (ARow = 1) then
        Rect.Top := CellRect(0, 0).Top;

      Canvas.FillRect(Rect);
      DrawText(Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
    end
    else if (CellText <> '') then
    begin
      MatStatus := Copy(CellText, Pos('Materials: ', CellText) + 11, Pos('Pairs: ', CellText) - Pos('Materials: ', CellText) - 13);
      Pairs := StrToInt(StringReplace(Copy(CellText, Pos('Pairs: ', CellText) + 7, Pos('Processing: ', CellText) - Pos('Pairs: ', CellText) - 9), ',', '', [rfReplaceAll]));
      if (Pos('O/S: ', CellText) > 0) AND (Pos('O/S: 100.0%', CellText) = 0) then
      begin
        TempStr := Copy(CellText, Pos('O/S: ', CellText) + 5, Pos('Stitching: ', CellText) - Pos('O/S: ', CellText) - 7);
        OS := StrToInt(StringReplace(Copy(TempStr, 1, Pos(' [', TempStr) - 1), ',', '', [rfReplaceAll]));
      end
      else begin
        OS := 0;
      end;
      if (Pos('Stitching: ', CellText) > 0) AND (Pos('Stitching: 100.0%', CellText) = 0) then
      begin
        TempStr := Copy(CellText, Pos('Stitching: ', CellText) + 11, Length(CellText) - Pos('Stitching: ', CellText) - 10);
        Stitching := StrToInt(StringReplace(Copy(TempStr, 1, Pos(' [', TempStr) - 1), ',', '', [rfReplaceAll]));
      end
      else begin
        Stitching := 0;
      end;
      StatusCode := Length(CellText) - Length(TrimRight(CellText));

      if (Stitching = 0) then
        Canvas.Brush.Color := $008DFCC8
      else if (OS = 0) then
      begin
        if (Pos('O/S: ', CellText) > 0) then
          Canvas.Brush.Color := $00FFC175
        else begin
          if (Pos('ETA', MatStatus) > 0) then
            Canvas.Brush.Color := $00C8C8FF
          else
            Canvas.Brush.Color := clWhite;
        end;
      end
      else if (OS < 0) AND (-OS < Pairs) then
        Canvas.Brush.Color := $008CFFFA
      else if (Pos('ETA', MatStatus) > 0) then
        Canvas.Brush.Color := $00C8C8FF
      else
        Canvas.Brush.Color := clWhite;

      if (StatusCode = 1) then
        Canvas.Font.Color := clBlue
      else if (StatusCode >= 2) then
        Canvas.Font.Color := clGreen;

      Canvas.FillRect(Rect);
    end
    else begin
      Canvas.Pen.Width := 1;
      Canvas.Pen.Color := clBtnFace;
      Canvas.Brush.Color := clBtnFace;
      Canvas.FillRect(Rect);
               
      Canvas.MoveTo(Rect.Left, Rect.Bottom);
      Canvas.LineTo(Rect.Right, Rect.Bottom);

      if (Cells[ACol - 1, ARow] = '') then
      begin
        Canvas.MoveTo(Rect.Left, Rect.Top);
        Canvas.LineTo(Rect.Left, Rect.Bottom);
      end;

      if (Cells[ACol + 1, ARow] = '') then
      begin
        Canvas.MoveTo(Rect.Right, Rect.Top);
        Canvas.LineTo(Rect.Right, Rect.Bottom);
      end;
    end;

    if (ACol > 0) AND (ARow <= 2) AND (Length(HolidayList) > 0) AND (HolidayList[ACol - 1]) then
    begin
      Canvas.Brush.Color := clYellow;
      Canvas.FillRect(Rect);
      DrawText(Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
    end;

    if (Pos(#13#10, CellText) > 0) then
    begin
      Canvas.FillRect(Rect);
      sRect := Rect;
      Inc(sRect.Left, 4); 
      Inc(sRect.Right, -4);
      Inc(sRect.Top, 4);
      Inc(sRect.Bottom, -4);
      if (ARow > 0) then
        DrawText(Canvas.Handle, PChar(CellText), -1, sRect, DT_NOPREFIX or DT_WORDBREAK)
      else
        DrawText(Canvas.Handle, PChar(CellText), -1, Rect, DT_CENTER or DT_WORDBREAK);
    end;

    if (gdSelected in State) OR (StatusCode IN [1, 2]) then
    begin
      if (gdSelected in State) then
        Canvas.Pen.Color := $00467321
      else if (StatusCode = 1) then
        Canvas.Pen.Color := $00C80000
      else if (StatusCode = 2) then
        Canvas.Pen.Color := $004141FF;
      Canvas.Pen.Width := 1;

      Canvas.MoveTo(Rect.Left, Rect.Top);
      Canvas.LineTo(Rect.Right-1, Rect.Top);
      Canvas.LineTo(Rect.Right-1, Rect.Bottom-1);
      Canvas.LineTo(Rect.Left, Rect.Bottom-1);
      Canvas.LineTo(Rect.Left, Rect.Top);

      Canvas.MoveTo(Rect.Left+1, Rect.Top+1);
      Canvas.LineTo(Rect.Right-2, Rect.Top+1);
      Canvas.LineTo(Rect.Right-2, Rect.Bottom-2);
      Canvas.LineTo(Rect.Left+1, Rect.Bottom-2);
      Canvas.LineTo(Rect.Left+1, Rect.Top+1);

      Canvas.MoveTo(Rect.Left+2, Rect.Top+2);
      Canvas.LineTo(Rect.Right-3, Rect.Top+2);
      Canvas.LineTo(Rect.Right-3, Rect.Bottom-3);
      Canvas.LineTo(Rect.Left+2, Rect.Bottom-3);
      Canvas.LineTo(Rect.Left+2, Rect.Top+2);
    end;

    if (StatusCode = 1) then
      Canvas.Draw(Rect.Right - IMG_HG.Width - 1, Rect.Bottom - IMG_HG.Height - 5, IMG_HG.Picture.Graphic)
    else if (StatusCode = 2) then
      Canvas.Draw(Rect.Right - IMG_LACK.Width - 5, Rect.Bottom - IMG_LACK.Height - 5, IMG_LACK.Picture.Graphic)
    else if (StatusCode = 3) then
      Canvas.Draw(Rect.Right - IMG_CHECK.Width - 5, Rect.Bottom - IMG_CHECK.Height - 5, IMG_CHECK.Picture.Graphic)
    else if (Pos('ETA', MatStatus) > 0) then
      Canvas.Draw(Rect.Right - IMG_WARNING.Width - 5, Rect.Bottom - IMG_WARNING.Height - 5, IMG_WARNING.Picture.Graphic)
  end;
end;

procedure TShoeUpperInventory.StringGrid1Exit(Sender: TObject);
begin
  StringGrid1.Cursor := crDefault;
end;
        
procedure TShoeUpperInventory.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
begin
  if (Button = mbRight) then
  begin
    StringGrid1.MouseToCell(X, Y, Col, Row);

    if (Col > 0) AND (Row > 2) then
    begin
      StringGrid1.Col := Col;
      StringGrid1.Row := Row;

      if (Pos(#13#10, StringGrid1.Cells[Col, Row]) > 0) then
        BOM1.Visible := true
      else
        BOM1.Visible := false;
    end;
  end;
end;

procedure TShoeUpperInventory.StringGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: integer;
begin
  StringGrid1.MouseToCell(X, Y, Col, Row);

  if (Col > 0) AND (Row > 2) AND (Pos(#13#10, StringGrid1.Cells[Col, Row]) > 0) then
    StringGrid1.Cursor := crHandPoint
  else
    StringGrid1.Cursor := crDefault;
end;
  
procedure TShoeUpperInventory.StringGrid1DblClick(Sender: TObject);
var
  Col, Row: Integer;
  GridPos: TPoint;
  RY, StitchingType: string;
begin
  GridPos := StringGrid1.ScreenToClient(Mouse.CursorPos);
  StringGrid1.MouseToCell(GridPos.X, GridPos.Y, Col, Row);

  if (Col > 0) AND (Row > 2) AND (Pos(#13#10, StringGrid1.Cells[Col, Row]) > 0) then
  begin
    RY := Copy(StringGrid1.Cells[Col, Row], Pos('RY: ', StringGrid1.Cells[Col, Row]) + 4, Pos(' [', StringGrid1.Cells[Col, Row]) - 5);
    if (Pos('-', Copy(RY, Length(RY)-2, 3)) > 0) then
      RY := Copy(RY, 1, LastDelimiter('-', RY) - 1);
      
    if (Pos('O/S:', StringGrid1.Cells[Col, Row]) > 0) then
      StitchingType := 'OS'
    else
      StitchingType := 'InHouse';

    RYTracking := TRYTracking.Create(Self);
    RYTracking.LoadData(LB_PC2_Month.Caption, LB_PC2_Building.Caption, LB_PC2_Lean.Caption, StitchingType, RY);
    RYTracking.ShowModal;
  end;
end;

procedure TShoeUpperInventory.StringGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Ord('F')) and (ssCtrl in Shift) then
  begin
    RYSearchDlg := TRYSearchDlg.Create(Self);
    RYSearchDlg.ED_RY.Text := sKeyword;
    RYSearchDlg.ShowModal;
  end;
end;

procedure TShoeUpperInventory.SearchByKeyword(Keyword: string);
var
  Col, Row, i: integer;
  CanSelect: boolean;
begin
  sKeyword := Keyword;

  for Col := 1 to StringGrid1.ColCount - 1 do
  begin
    for Row := 1 to StringGrid1.RowCount - 1 do
    begin
      if (StringGrid1.Cells[Col, Row] <> '') AND (Pos('RY: ' + Keyword, StringGrid1.Cells[Col, Row]) > 0) then
      begin
        StringGrid1.Selection := TGridRect(Rect(Col, Row, Col, Row));
        if (Col < StringGrid1.LeftCol) then
          StringGrid1.LeftCol := Col
        else if (Col > StringGrid1.LeftCol + StringGrid1.VisibleColCount - 1) then
          StringGrid1.LeftCol := StringGrid1.LeftCol + (Col - StringGrid1.LeftCol - StringGrid1.VisibleColCount) + 2;

        if (Row < StringGrid1.TopRow) then
          StringGrid1.TopRow := Row
        else if (Row > StringGrid1.TopRow + StringGrid1.VisibleRowCount - 1) then
          StringGrid1.TopRow := StringGrid1.TopRow + (Row - StringGrid1.TopRow - StringGrid1.VisibleRowCount) + 1;

        RYSearchDlg.Close;
        CanSelect := true;
        StringGrid1SelectCell(Nil, Col, Row, CanSelect);
        Exit;
      end;
    end;
  end;

  LeanSelection := TLeanSelection.Create(Self);
  with LeanSelection.Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SC.building_no, UPPER(SC.lean_no) AS lean_no, SUBSTRING(CONVERT(VARCHAR, MAX(SC.schedule_date), 111), 1, 7) AS Month, MAX(SC.schedule_date) AS Date, DDZL.DDBH FROM schedule_crawler AS SC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('WHERE DDZL.DDBH LIKE ''' + Keyword + '%''');
    SQL.Add('GROUP BY SC.building_no, SC.lean_no, DDZL.DDBH');
    SQL.Add('ORDER BY SC.building_no, SC.lean_no, MAX(SC.schedule_date) DESC');
    Active := true;

    if (RecordCount = 1) then
    begin
      DTP_PC3.Date := FieldByName('Date').AsDateTime;
      if (CB_Building_PC2.Items.IndexOf(FieldByName('building_no').AsString) < 0) then
        CB_OS_PC2.Checked := false;
      for i := 0 to CB_Building_PC2.Items.Count - 1 do
      begin
        if (CB_Building_PC2.Items[i] = FieldByName('building_no').AsString) then
        begin
          CB_Building_PC2.ItemIndex := i;
          Break;
        end;
      end;

      if (CB_Lean_PC2.Items.IndexOf(FieldByName('lean_no').AsString) < 0) then
        CB_OS_PC2.Checked := false;
      for i := 0 to CB_Lean_PC2.Items.Count - 1 do
      begin
        if (CB_Lean_PC2.Items[i] = FieldByName('lean_no').AsString) then
        begin
          CB_Lean_PC2.ItemIndex := i;
          Break;
        end;
      end;
      Button10Click(Nil);
      LeanSelection.Close;
      SearchByKeyword(Keyword);
    end
    else if (RecordCount > 1) then
    begin
      if (LeanSelection.ShowModal = mrOk) then
      begin
        Button10Click(Nil);
        SearchByKeyword(Keyword);
      end;
    end
    else begin
      LeanSelection.Close;
      ShowMessage('The RY [' + Keyword + '] does not exist in schedule.');
    end;
  end;
end;

procedure TShoeUpperInventory.Button11Click(Sender: TObject);
var
  i: integer;
begin
  ImageBox.Visible := false;
  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    StringGrid1.Rows[i].Clear;
  end;
  SetLength(HolidayList, 0);

  StringGrid1.RowCount := 4;
  StringGrid1.ColCount := 2;
  StringGrid1.Cells[0, 0] := 'Date';
  StringGrid1.Cells[0, 1] := 'Date'; 
  StringGrid1.Cells[0, 2] := 'WH';  
  StringGrid1.Cells[0, 3] := '1';
  StringGrid1.Cols[1].Clear;
  StringGrid1.ColWidths[1] := StringGrid1.DefaultColWidth;
end;

procedure TShoeUpperInventory.IMG_TipsClick(Sender: TObject);
begin
  Tips := TTips.Create(Self);
  Tips.ShowModal;
end;

procedure TShoeUpperInventory.RG_IClick(Sender: TObject);
begin
  with Q_I do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#KCRK'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #KCRK END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#Inventory'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Inventory END;');
    ExecSQL;

    SQL.Add('SELECT KCRK.Building, KCRK.Lean, KCRK.RY, SC.SubSeq, SC.MinCycle, SC.MaxCycle, SC.Pairs, SC.schedule_date, KCRK.DDBH,');
    SQL.Add('SUM(CASE WHEN KCRK.Date = ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + ''' THEN KCRK.Pairs END) AS TodayInPairs, MIN(KCRK.Date) AS FirstDate, MAX(KCRK.Date) AS LastDate INTO #KCRK FROM (');
    SQL.Add('  SELECT KCRK_Upper.Date, KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH, KCRKS_Upper.Pairs FROM KCRK_Upper');
    SQL.Add('  LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('  WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_U.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + ''' AND ISNULL(KCRKS_Upper.Pairs, 0) > 0');
    if (ED_RY_U.Text <> '') then
      SQL.Add('  AND KCRK_Upper.RY LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT Date, Building, Lean, ZLBH, DDBH, Pairs FROM KCCLMONTH_Upper');
    SQL.Add('  WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_U.Date, -1)) + ''' AND ISNULL(KCCLMONTH_Upper.Pairs, 0) > 0');
    if (ED_RY_U.Text <> '') then
      SQL.Add('  AND ZLBH LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SC.Building, SC.Lean, SC.RY, SC.SubSeq, SC.Pairs, SC.schedule_date,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle FROM (');
    SQL.Add('    SELECT KCRK.Building, KCRK.Lean, KCRK.RY, CASE WHEN SUM(CAST(SC.sl AS INT)) <= DDZL.Pairs THEN SUM(CAST(SC.sl AS INT)) ELSE DDZL.Pairs END AS Pairs, MIN(SC.schedule_date) AS schedule_date,');
    SQL.Add('    CASE WHEN RIGHT(SC.ry, 3) LIKE ''%-%'' THEN SUBSTRING(RIGHT(SC.ry, 3), CHARINDEX(''-'', RIGHT(SC.ry, 3)) + 1, LEN(RIGHT(SC.ry, 3)) - CHARINDEX(''-'', RIGHT(SC.ry, 3))) END AS SubSeq,');
    SQL.Add('    CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM (');
    SQL.Add('      SELECT DISTINCT Building, Lean, RY FROM KCRK_Upper');
    SQL.Add('      WHERE KCRK_Upper.Date <= ''' + FormatDateTime('yyyy/MM/dd', DTP_U.Date) + '''');
    SQL.Add('    ) AS KCRK');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
    SQL.Add('    LEFT JOIN schedule_crawler AS SC ON SC.building_no = KCRK.Building AND SC.lean_no = KCRK.Lean');
    SQL.Add('    AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = DDZL.DDBH');
    if (ED_RY_U.Text <> '') then
      SQL.Add('    WHERE DDZL.DDBH LIKE ''' + ED_RY_U.Text + '%''');
    SQL.Add('    GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, DDZL.Pairs, SC.RY, SC.stitching');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.RY AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY SC.Building, SC.Lean, SC.RY, SC.SubSeq, SC.Pairs, SC.schedule_date, SC.Cycles');
    SQL.Add(') AS SC ON SC.Building = KCRK.Building AND SC.Lean = KCRK.Lean AND SC.RY = KCRK.RY');
    SQL.Add('AND CASE WHEN KCRK.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(KCRK.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, SC.SubSeq, SC.MinCycle, SC.MaxCycle, SC.Pairs, SC.schedule_date, KCRK.DDBH;');

    SQL.Add('SELECT KCRK.Building, KCRK.Lean, XXZL.DAOMH, KCRK.RY AS ZLBH, KCRK.RY + CASE WHEN KCRK.SubSeq IS NULL THEN '''' ELSE ''-'' + CAST(KCRK.SubSeq AS VARCHAR) END AS RY,');
    SQL.Add('KCRK.MinCycle, KCRK.MaxCycle, SUBSTRING(CONVERT(VARCHAR, KCRK.schedule_date, 111), 6, 5) AS Date, XXZL.ARTICLE, KCRK.Pairs,');
    SQL.Add('ISNULL(KCRK.TotalInPairs, 0) AS TotalInPairs, ISNULL(SUM(KCRK.TodayInPairs), 0) AS TodayInPairs, KCRK.Pairs - ISNULL(KCRK.TotalInPairs, 0) AS LackPairs,');
    SQL.Add('CASE WHEN ISNULL(KCRK.TotalInPairs, 0) = KCRK.Pairs THEN SUBSTRING(CONVERT(VARCHAR, MAX(LastDate), 111), 6, 5) END AS CompletedDate, ISNULL(KCRK.TotalInPairs, 0) - ISNULL(KCRK.TotalOutPairs, 0) AS StockPairs,');
    SQL.Add('SUBSTRING(CONVERT(VARCHAR, DDZL.ShipDate, 111), 6, 5) AS ShipDate, LBZLS.YWSM AS country INTO #Inventory FROM (');
    SQL.Add('  SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs,');
    SQL.Add('  MIN(FirstDate) AS FirstDate, MAX(LastDate) AS LastDate, KCRK.TotalInPairs, KCLL_Upper.TotalOutPairs FROM (');
    SQL.Add('    SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs,');
    SQL.Add('    MIN(KCRK.FirstDate) AS FirstDate, MAX(KCRK.LastDate) AS LastDate, KCRK_Upper.TotalInPairs FROM #KCRK AS KCRK');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, SUM(KCRKS_Upper.Pairs) AS TotalInPairs FROM (');
    SQL.Add('        SELECT DISTINCT Building, Lean, RY, SubSeq, MinCycle, MaxCycle FROM #KCRK');
    SQL.Add('      ) AS KCRK');
    SQL.Add('      LEFT JOIN KCRK_Upper ON KCRK_Upper.RY = KCRK.RY AND KCRK_Upper.Building = KCRK.Building AND KCRK_Upper.Lean = KCRK.Lean');
    SQL.Add('      LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO AND CASE WHEN KCRKS_Upper.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(KCRKS_Upper.DDBH, 3) AS INT) END BETWEEN KCRK.MinCycle AND KCRK.MaxCycle');
    SQL.Add('      GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle');
    SQL.Add('    ) AS KCRK_Upper ON KCRK_Upper.Building = KCRK.Building AND KCRK_Upper.Lean = KCRK.Lean AND KCRK_Upper.RY = KCRK.RY AND ISNULL(KCRK_Upper.SubSeq, 0) = ISNULL(KCRK.SubSeq, 0)');
    SQL.Add('    GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs, KCRK_Upper.TotalInPairs');
    SQL.Add('  ) AS KCRK');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, SUM(KCLLS_Upper.Pairs) AS TotalOutPairs FROM (');
    SQL.Add('      SELECT DISTINCT Building, Lean, RY, SubSeq, MinCycle, MaxCycle FROM #KCRK');
    SQL.Add('    ) AS KCRK');
    SQL.Add('    LEFT JOIN KCLL_Upper ON KCLL_Upper.RY = KCRK.RY AND KCLL_Upper.Building = KCRK.Building AND KCLL_Upper.Lean = KCRK.Lean');
    SQL.Add('    LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO AND CASE WHEN KCLLS_Upper.DDBH = KCRK.RY THEN 1 ELSE CAST(RIGHT(KCLLS_Upper.DDBH, 3) AS INT) END BETWEEN KCRK.MinCycle AND KCRK.MaxCycle');
    SQL.Add('    GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq');
    SQL.Add('  ) AS KCLL_Upper ON KCLL_Upper.Building = KCRK.Building AND KCLL_Upper.Lean = KCRK.Lean AND KCLL_Upper.RY = KCRK.RY AND ISNULL(KCLL_Upper.SubSeq, 0) = ISNULL(KCRK.SubSeq, 0)');
    SQL.Add('  GROUP BY KCRK.Building, KCRK.Lean, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.Pairs, KCRK.schedule_date, KCRK.DDBH, KCRK.TodayInPairs, KCRK.TotalInPairs, KCLL_Upper.TotalOutPairs');
    SQL.Add(') AS KCRK');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
    SQL.Add('WHERE 1 = 1');
    if (CB_Building_U.ItemIndex > 0) then
      SQL.Add('AND KCRK.Building LIKE ''' + CB_Building_U.Text + '%''');
    if (CB_Lean_U.ItemIndex > 0) then
      SQL.Add('AND KCRK.Lean LIKE ''' + CB_Lean_U.Text + '%''');
    SQL.Add('GROUP BY KCRK.Building, KCRK.Lean, XXZL.DAOMH, KCRK.RY, KCRK.SubSeq, KCRK.MinCycle, KCRK.MaxCycle, KCRK.schedule_date, XXZL.ARTICLE, KCRK.Pairs, DDZL.ShipDate, LBZLS.YWSM, KCRK.TotalInPairs, KCRK.TotalOutPairs');
    SQL.Add('HAVING (ISNULL(KCRK.TotalInPairs, 0) > ISNULL(KCRK.TotalOutPairs, 0) OR ISNULL(SUM(KCRK.TodayInPairs), 0) > 0) OR KCRK.Pairs > ISNULL(KCRK.TotalInPairs, 0)');
    if (RG_I.ItemIndex = 0) then
      SQL.Add('ORDER BY KCRK.Building, KCRK.Lean, KCRK.schedule_date')
    else
      SQL.Add('ORDER BY KCRK.Building, KCRK.Lean, MIN(KCRK.FirstDate)');

    SQL.Add('SELECT * FROM #Inventory');
    Active := true;
  end;
end;

procedure TShoeUpperInventory.Excel_WClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_W.XValues.Count > 0) then
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

      eclApp.Cells[1, 1] := 'LEAN';
      eclApp.Cells[1, 2] := 'WIP';

      Row := 2;
      for i := 0 to Series_W.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_W.XLabel[i];
        eclApp.Cells[Row, 2] := Series_W.YValue[i];
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

procedure TShoeUpperInventory.Excel_PCClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_PC.XValues.Count > 0) then
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

      eclApp.Cells[1, 1] := 'LEAN';
      eclApp.Cells[1, 2] := 'Inventory';

      Row := 2;
      for i := 0 to Series_PC.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_PC.XLabel[i];
        eclApp.Cells[Row, 2] := Series_PC.YValue[i];
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

procedure TShoeUpperInventory.Excel_WTClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_IT1_WIP.XValues.Count > 0) then
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
      eclApp.Cells[1, 2] := 'O/S Components';
      eclApp.Cells[1, 3] := 'Returned Uppers';
      eclApp.Cells[1, 4] := 'WIP';

      Row := 2;
      for i := 0 to Series_IT1_WIP.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_IT1_WIP.XLabel[i];
        eclApp.Cells[Row, 2] := Series_IT1_CompIn.YValue[i];
        eclApp.Cells[Row, 3] := Series_IT1_UpperOut.YValue[i];
        eclApp.Cells[Row, 4] := Series_IT1_WIP.YValue[i];
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

procedure TShoeUpperInventory.Excel_LTClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_IT3_LT.XValues.Count > 0) then
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
      eclApp.Cells[1, 2] := 'Lead Time (Days)';
      eclApp.Cells[1, 3] := 'Completion Rate';

      Row := 2;
      for i := 0 to Series_IT3_LT.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_IT3_LT.XLabel[i];
        if (ReturnRate[i] > -1) then
        begin
          eclApp.Cells[Row, 2] := Series_IT3_LT.YValue[i];
          eclApp.Cells[Row, 3] := FloatToStr(ReturnRate[i]) + '%';
        end;
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

procedure TShoeUpperInventory.Excel_ITClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_IT2_Inventory.XValues.Count > 0) then
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
      eclApp.Cells[1, 2] := 'Stock-In';
      eclApp.Cells[1, 3] := 'Stock-Out'; 
      eclApp.Cells[1, 4] := 'Inventory';

      Row := 2;
      for i := 0 to Series_IT2_Inventory.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_IT2_Inventory.XLabel[i];
        eclApp.Cells[Row, 2] := Series_IT2_StockIn.YValue[i];
        eclApp.Cells[Row, 3] := Series_IT2_StockOut.YValue[i]; 
        eclApp.Cells[Row, 4] := Series_IT2_Inventory.YValue[i];
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

procedure TShoeUpperInventory.Series_IT4_BlankGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  MarkText := '';
end;

procedure TShoeUpperInventory.Series_IT4_LTGetMarkText(
  Sender: TChartSeries; ValueIndex: Integer; var MarkText: String);
begin
  if (MarkText = '0') then
    MarkText := ''
  else
    MarkText := FloatToStr(Series_IT4_LT.YValues[ValueIndex]) + ' Days';
end;

function TShoeUpperInventory.Series_IT4_LTGetPointerStyle(
  Sender: TChartSeries; ValueIndex: Integer): TSeriesPointerStyle;
begin
  if (Series_IT4_LT.YValues[ValueIndex] = 0) then
    Result := psSmallDot
  else
    Result := psRectangle;
end;

procedure TShoeUpperInventory.Excel_LT2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, Row: integer;
begin
  if (Series_IT4_LT.XValues.Count > 0) then
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
      eclApp.Cells[1, 2] := 'Lead Time (Days)';

      Row := 2;
      for i := 0 to Series_IT4_LT.XValues.Count - 1 do
      begin
        eclApp.Cells[Row, 1] := Series_IT4_LT.XLabel[i];
        eclApp.Cells[Row, 2] := Series_IT4_LT.YValue[i];
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
           
procedure TShoeUpperInventory.DTP_PC4Change(Sender: TObject);
begin
  ReloadBuilding(CB_Building_PC3, DTP_PC4, DTP_PC4, 'ALL');
  ReloadLean(CB_Lean_PC3, CB_Building_PC3, DTP_PC4, DTP_PC4, 'ALL');
end;

procedure TShoeUpperInventory.CB_Building_PC3Change(Sender: TObject);
begin
  ReloadLean(CB_Lean_PC3, CB_Building_PC3, DTP_PC4, DTP_PC4, 'ALL');
end;

procedure TShoeUpperInventory.Button12Click(Sender: TObject);
begin
  if (ED_Days_PC3.Text = '') then
    ED_Days_PC3.Text := '0';

  with Q_PC3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#RYList'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #RYList END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#SC'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SC END;');
    ExecSQL;

    SQL.Add('SELECT SC.DDBH INTO #RYList FROM (');
    SQL.Add('  SELECT DISTINCT DDZL.DDBH, DDZL.Pairs FROM schedule_crawler AS SC');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('  WHERE SC.schedule_date >= LEFT(CONVERT(VARCHAR, DATEADD(MONTH, -6, GETDATE()), 111), 8) + ''01''');
    SQL.Add('  AND SC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add(') AS SC');
    SQL.Add('LEFT JOIN SCBBS ON SCBBS.SCBH = SC.DDBH AND SCBBS.GXLB = ''A''');
    SQL.Add('GROUP BY SC.DDBH, SC.Pairs');
    SQL.Add('HAVING SC.Pairs > ISNULL(SUM(SCBBS.Qty), 0)');

    SQL.Add('SELECT building_no, lean_no, DDBH, schedule_date, DAOMH, ARTICLE, RYPairs, SC.ShipDate, TotalPairs, MinCycle, MaxCycle, MaxCycle - MinCycle + 1 AS TotalCycles INTO #SC FROM (');
    SQL.Add('  SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.schedule_date, SC.DAOMH, SC.ARTICLE, SC.RYPairs, SC.ShipDate, SC.TotalPairs,');
    SQL.Add('  ISNULL(CASE WHEN CHARINDEX(''-'', SC.Cycles) > 0 AND ISNUMERIC(SUBSTRING(SC.Cycles, CHARINDEX(''-'', SC.Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(SC.Cycles, 1, CHARINDEX(''-'', SC.Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(SC.Cycles, 1, CHARINDEX(''-'', SC.Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('  ISNULL(CASE WHEN CHARINDEX(''-'', SC.Cycles) > 0 AND ISNUMERIC(SUBSTRING(SC.Cycles, CHARINDEX(''-'', SC.Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(SC.Cycles, 1, CHARINDEX(''-'', SC.Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(SC.Cycles, CHARINDEX(''-'', SC.Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SC.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle FROM (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, DDZL.DDBH, SC.schedule_date, XXZL.DAOMH, XXZL.ARTICLE, DDZL.Pairs AS RYPairs, DDZL.ShipDate, CAST(SC.sl AS INT) AS TotalPairs,');
    SQL.Add('    CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('    WHERE SC.schedule_date >= LEFT(CONVERT(VARCHAR, DATEADD(MONTH, -6, GETDATE()), 111), 8) + ''01''');
    SQL.Add('    AND DDZL.DDBH IN (SELECT DDBH FROM #RYList)');
    if (CB_Building_PC3.Text <> 'ALL') then
      SQL.Add('    AND SC.building_no LIKE ''' + CB_Building_PC3.Text + '%''');
    if (CB_Lean_PC3.Text <> 'ALL') then
      SQL.Add('    AND SC.lean_no LIKE ''' + CB_Building_PC3.Text + '%''');
    SQL.Add('    AND SC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.schedule_date, SC.DAOMH, SC.ARTICLE, SC.RYPairs, SC.ShipDate, SC.TotalPairs, SC.Cycles');
    SQL.Add(') AS SC');

    SQL.Add('SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.schedule_date, SC.DAOMH, SC.ARTICLE, SC.ShipDate, SC.TotalPairs, SC.okPairs AS CompletedPairs,');
    SQL.Add('SC.okPairs - SC.TotalPairs AS Shortage, SC.PlanEndDate, DATEDIFF(DAY, SC.PlanEndDate, CONVERT(VARCHAR, GETDATE(), 111)) - ' + ED_Days_PC3.Text + ' AS DelayDays FROM (');
    SQL.Add('  SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.schedule_date, SC.DAOMH, SC.ARTICLE, SC.RYPairs, SC.ShipDate, SC.TotalPairs,');
    SQL.Add('  SC.TotalCycles, COUNT(DISTINCT SMDD.DDBH) AS AssignedCycles, SC.AssignedPairs, MAX(PP.PlanDate) AS PlanEndDate, SUM(SMDDSS.okCTS) AS okPairs FROM (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, SC.DDBH, SC.schedule_date, SC.DAOMH, SC.ARTICLE, SC.RYPairs, SC.ShipDate, SC.TotalPairs, SC.MinCycle, SC.MaxCycle, SC.TotalCycles, ISNULL(SUM(PP.Pairs), 0) AS AssignedPairs FROM #SC AS SC');
    if (CB_ITP_PC3.Checked) then
      SQL.Add('    LEFT JOIN ProductionPlan AS PP ON PP.PlanType LIKE ''1-Day%'' AND PP.PlanDate <= ''' + FormatDateTime('yyyy/MM/dd', DTP_PC4.Date) + ''' AND PP.RY = SC.DDBH')
    else
      SQL.Add('    LEFT JOIN ProductionPlan AS PP ON PP.PlanType LIKE ''1-Day%'' AND PP.PlanDate < ''' + FormatDateTime('yyyy/MM/dd', DTP_PC4.Date) + ''' AND PP.RY = SC.DDBH');
    SQL.Add('    AND PP.CycleStart BETWEEN SC.MinCycle AND SC.MaxCycle AND PP.CycleEnd BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('    GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.schedule_date, SC.DAOMH, SC.ARTICLE, SC.RYPairs, SC.ShipDate, SC.TotalPairs, SC.MinCycle, SC.MaxCycle, SC.TotalCycles');
    SQL.Add('  ) AS SC');
    if (CB_ITP_PC3.Checked) then
      SQL.Add('  LEFT JOIN ProductionPlan AS PP ON PP.PlanType LIKE ''1-Day%'' AND PP.PlanDate <= DATEADD(DAY, -' + ED_Days_PC3.Text + ', ''' + FormatDateTime('yyyy/MM/dd', DTP_PC4.Date) + ''') AND PP.RY = SC.DDBH')
    else
      SQL.Add('  LEFT JOIN ProductionPlan AS PP ON PP.PlanType LIKE ''1-Day%'' AND PP.PlanDate < DATEADD(DAY, -' + ED_Days_PC3.Text + ', ''' + FormatDateTime('yyyy/MM/dd', DTP_PC4.Date) + ''') AND PP.RY = SC.DDBH');
    SQL.Add('  AND PP.CycleStart BETWEEN SC.MinCycle AND SC.MaxCycle AND PP.CycleEnd BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A'' AND CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END BETWEEN PP.CycleStart AND PP.CycleEnd');
    SQL.Add('  LEFT JOIN SMDDSS ON SMDDSS.DDBH = SMDD.DDBH AND SMDDSS.GXLB = SMDD.GXLB');
    SQL.Add('  GROUP BY SC.building_no, SC.lean_no, SC.DDBH, SC.schedule_date, SC.DAOMH, SC.ARTICLE, SC.RYPairs, SC.ShipDate, SC.TotalPairs, SC.AssignedPairs, SC.TotalCycles');
    SQL.Add(') AS SC');
    if (CB_Mode_PC3.Text = 'Assigned Cycles') then
      SQL.Add('WHERE SC.TotalCycles = SC.AssignedCycles AND SC.TotalPairs > SC.okPairs')
    else if (CB_Mode_PC3.Text = 'Assigned Pairs') then
      SQL.Add('WHERE SC.TotalPairs = SC.AssignedPairs AND SC.TotalPairs > SC.okPairs');
    SQL.Add('ORDER BY SC.building_no, SC.lean_no, SC.schedule_date, SC.DDBH');
    Active := true;
  end;
end;

procedure TShoeUpperInventory.Button13Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Q_PC3.Active) then
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
      for Col := 0 to DBGridEh12.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh12.Columns[Col].Title.Caption;
      end;

      Q_PC3.First;
      Row := 2;
      while not Q_PC3.Eof do
      begin
        for Col := 0 to DBGridEh12.Columns.Count - 1 do
        begin
          eclApp.Cells[Row, Col+1] := Q_PC3.FieldByName(DBGridEh12.Columns[Col].FieldName).Value;
        end;
        Q_PC3.Next;
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

procedure TShoeUpperInventory.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  RY, SKU, Image: string;
begin
  if (ACol > 0) AND (ARow > 2) AND (Pos(#13#10, StringGrid1.Cells[ACol, ARow]) > 0) then
  begin
    SKU := Copy(StringGrid1.Cells[ACol, ARow], Pos('SKU: ', StringGrid1.Cells[ACol, ARow]) + 5, Pos('Country: ', StringGrid1.Cells[ACol, ARow]) - Pos('SKU: ', StringGrid1.Cells[ACol, ARow]) - 7);
    RY := Copy(StringGrid1.Cells[ACol, ARow], Pos('RY: ', StringGrid1.Cells[ACol, ARow]) + 4, Pos(' [', StringGrid1.Cells[ACol, ARow]) - 5);
    if (Pos('-', Copy(RY, Length(RY)-2, 3)) > 0) then
      RY := Copy(RY, 1, LastDelimiter('-', RY) - 1);

    if (SKU <> ShoePicSKU) then
    begin
      with QTemp do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT XXZL.IMGName FROM DDZL');
        SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
        SQL.Add('WHERE DDZL.DDBH = ''' + RY + '''');
        Active := true;

        if (RecordCount > 0) then
        begin
          Image := StringReplace(FieldByName('IMGName').Asstring, 'H:', ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
          if (FileExists(Image)) then
          begin
            ShoeImage.Picture.LoadFromFile(Image);
            if (ShoeImage.Picture.Height > 0) then
            begin
              ImageBox.Width := (ShoeImage.Picture.Width * ImageBox.Height) DIV ShoeImage.Picture.Height + 20;
              FormResize(Nil);
              ImageBox.Visible := true;
            end;
          end
          else begin
            ShoeImage.Picture.Bitmap := Nil; 
            ImageBox.Visible := false;
          end;
        end
        else begin
          ShoeImage.Picture.Bitmap := Nil;
          ImageBox.Visible := false;
        end;
      end;
      ShoePicSKU := SKU;
    end;
  end
  else begin
    ShoeImage.Picture.Bitmap := Nil;
    ImageBox.Visible := false;
    ShoePicSKU := '';
  end;
end;

procedure TShoeUpperInventory.LB_LeftClick(Sender: TObject);
begin
  ImageAlign := 'BottomLeft';
  FormResize(Nil);
end;

procedure TShoeUpperInventory.LB_RightClick(Sender: TObject);
begin
  ImageAlign := 'BottomRight';
  FormResize(Nil);
end;

procedure TShoeUpperInventory.ShoeImageClick(Sender: TObject);
begin
  if (ImageBox.Height = 120) then
  begin
    ImageBox.Height := ImageBox.Height * 3;
    ImageBox.Width := (ImageBox.Width - 20) * 3 + 20;
    if (ImageAlign = 'BottomRight') then
    begin
      ImageBox.Left := Self.Width - ImageBox.Width - 80;
      ImageBox.Top := Self.Height - ImageBox.Height - 145;
    end
    else if (ImageAlign = 'BottomLeft') then
    begin
      ImageBox.Left := 80;
      ImageBox.Top := Self.Height - ImageBox.Height - 145;
    end;
  end
  else begin
    ImageBox.Height := 120;
    ImageBox.Width := (ShoeImage.Picture.Width * ImageBox.Height) DIV ShoeImage.Picture.Height + 20;
    if (ImageAlign = 'BottomRight') then
    begin
      ImageBox.Left := Self.Width - ImageBox.Width - 80;
      ImageBox.Top := Self.Height - ImageBox.Height - 145;
    end
    else if (ImageAlign = 'BottomLeft') then
    begin
      ImageBox.Left := 80;
      ImageBox.Top := Self.Height - ImageBox.Height - 145;
    end;
  end;
end;

procedure TShoeUpperInventory.BOM1Click(Sender: TObject);
var
  RY: string;
begin
  RY := Copy(StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row], Pos('RY: ', StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row]) + 4, Pos(' [', StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row]) - 5);
  RY_BOM := TRY_BOM.Create(Self);
  RY_BOM.LoadData(RY);
  RY_BOM.ShowModal;
end;

procedure TShoeUpperInventory.Copy1Click(Sender: TObject);
begin
  if not (ShoeImage.Picture.Graphic.Empty) then
    Clipboard.Assign(ShoeImage.Picture.Graphic);
end;

procedure TShoeUpperInventory.ED_Days_PC3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TShoeUpperInventory.CB_IClick(Sender: TObject);
begin
  if (CB_I.Checked) then
  begin
    with Q_ITI do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT Building, Lean, SUM(StockPairs) AS Pairs FROM #Inventory');
      SQL.Add('WHERE StockPairs > 0');
      SQL.Add('GROUP BY Building, Lean');
      SQL.Add('ORDER BY Building, Lean');
      Active := true;
    end;

    DBGridEh13.Visible := true;
    Splitter7.Visible := true;
  end
  else begin
    DBGridEh13.Visible := false;
    Splitter7.Visible := false;
  end;
end;

procedure TShoeUpperInventory.Button14Click(Sender: TObject);
begin
  with Q_ISTD1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#RYList'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #RYList END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#ToTD'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #ToTD END;');
    ExecSQL;

    SQL.Add('SELECT CD.ZLBH, CD.DDBH, SMDD.Qty, CDL.Date, CASE WHEN CDL.ConfirmDate IS NULL THEN ''Pending'' ELSE ''Shipped'' END AS Status INTO #RYList FROM CycleDispatchList AS CDL');
    SQL.Add('LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('WHERE CONVERT(VARCHAR, Date, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP_IS.Date) + ''' AND CD.ZLBH IS NOT NULL');

    SQL.Add('SELECT RY.Date, RY.Status, SC.building_no + '' '' + REPLACE(SC.lean_no, ''Lean'', ''L'') AS Lean, SC.DAOMH, SC.ARTICLE,');
    SQL.Add('RY.ZLBH + CASE WHEN SC.SubSeq IS NULL THEN '''' ELSE ''-'' + CAST(SC.SubSeq AS VARCHAR) END AS ZLBH, COUNT(RY.DDBH) AS Cycles, SUM(RY.Qty) AS Pairs INTO #ToTD FROM #RYList AS RY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SC.building_no, SC.lean_no, SC.DAOMH, SC.ARTICLE, SC.DDBH, SC.SubSeq,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle FROM (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, XXZL.DAOMH, XXZL.ARTICLE, DDZL.DDBH,');
    SQL.Add('    CASE WHEN RIGHT(SC.ry, 3) LIKE ''%-%'' THEN SUBSTRING(RIGHT(SC.ry, 3), CHARINDEX(''-'', RIGHT(SC.ry, 3)) + 1, LEN(RIGHT(SC.ry, 3)) - CHARINDEX(''-'', RIGHT(SC.ry, 3))) END AS SubSeq,');
    SQL.Add('    CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('    WHERE DDZL.DDBH IN (SELECT ZLBH FROM #RYList)');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY SC.building_no, SC.lean_no, SC.DAOMH, SC.ARTICLE, SC.DDBH, SC.SubSeq, SC.Cycles');
    SQL.Add(') AS SC ON SC.DDBH = RY.ZLBH AND CASE WHEN RY.DDBH = RY.ZLBH THEN 1 ELSE CAST(RIGHT(RY.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('GROUP BY RY.Date, RY.Status, SC.building_no, SC.lean_no, SC.DAOMH, SC.ARTICLE, RY.ZLBH, SC.SubSeq');

    SQL.Add('SELECT Date, Status, SUM(Cycles) AS Cycles, SUM(Pairs) AS Pairs FROM #ToTD');
    SQL.Add('GROUP BY Date, Status');
    SQL.Add('ORDER BY Date, Status DESC');
    Active := true;
  end;

  with Q_ISTD2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Lean, DAOMH, ARTICLE, ZLBH, Cycles, Pairs FROM #ToTD');
    SQL.Add('WHERE Date = :Date AND Status = :Status');
    SQL.Add('ORDER BY Lean, DAOMH, ARTICLE, ZLBH');
    Active := true;
  end;

  Label32.Caption := '  [ SHIPPED TO TY DAT TODAY ] : ' + DBGridEh15.GetFooterValue(0, DBGridEh15.Columns[3]) + ' Pairs';

  with Q_ISTD3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#CI'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #CI END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#UO'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #UO END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#WIP1'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #WIP1 END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#WIP'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #WIP END;');

    SQL.Add('SELECT Building, Lean, RY, RYPairs, DDBH, Pairs, PlanDate, Cycle INTO #CI FROM (');
    SQL.Add('  SELECT CD.Building, CD.Lean, CD.RY, CD.DDBH, CD.Qty AS Pairs, SC.schedule_date AS PlanDate, CAST(SC.sl AS INT) AS RYPairs,');
    SQL.Add('  CASE WHEN CD.DDBH = CD.RY THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END AS Cycle,');
    SQL.Add('  ROW_NUMBER() OVER(PARTITION BY CD.Building, CD.Lean, CD.RY, CD.DDBH ORDER BY SC.schedule_date DESC, SC.ry_index DESC) AS Seq FROM (');
    SQL.Add('    SELECT CDL.Building, CDL.Lean, CD.ZLBH AS RY, CD.DDBH, SMDD.Qty FROM CycleDispatchList AS CDL');
    SQL.Add('    LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('    LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('    WHERE CDL.Type = ''Ready'' AND CDL.ConfirmDate IS NOT NULL AND CONVERT(VARCHAR, CDL.Date, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IS.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IS.Date) + ''' AND CD.GXLB = ''C''');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT Building, Lean, ZLBH, DDBH, Pairs FROM KCCLMONTH_Component');
    SQL.Add('    WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_IS.Date, -1)) + '''');
    SQL.Add('  ) AS CD');
    SQL.Add('  LEFT JOIN schedule_crawler AS SC ON CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = CD.RY AND SC.building_no = CD.Building AND SC.lean_no = CD.Lean');
    SQL.Add(') AS CD');
    SQL.Add('WHERE Seq = 1');

    SQL.Add('SELECT KCRK_Upper.RY, KCRKS_Upper.DDBH, SUM(KCRKS_Upper.Pairs) AS Pairs INTO #UO FROM KCRK_Upper');
    SQL.Add('LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IS.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IS.Date) + ''' AND ISNULL(KCRKS_Upper.Pairs, 0) > 0');
    SQL.Add('GROUP BY KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH');

    SQL.Add('SELECT CompIn.Building, CompIn.Lean, XXZL.DAOMH, CompIn.RY, XXZL.ARTICLE, ISNULL(CompIn.RYPairs, 0) AS RYPairs,');
    SQL.Add('SUM(ISNULL(CompIn.Pairs, 0) - ISNULL(UpperOut.Pairs, 0)) AS Pairs, CompIn.PlanDate, CompIn.Cycle INTO #WIP1 FROM #CI AS CompIn');
    SQL.Add('LEFT JOIN #UO AS UpperOut ON UpperOut.RY = CompIn.RY AND UpperOut.DDBH = CompIn.DDBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CompIn.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE ISNULL(CompIn.Pairs, 0) > ISNULL(UpperOut.Pairs, 0)');
    SQL.Add('GROUP BY CompIn.Building, CompIn.Lean, XXZL.DAOMH, CompIn.RY, XXZL.ARTICLE, CompIn.PlanDate, CompIn.RYPairs, CompIn.Cycle');

    SQL.Add('SELECT SC.building_no + '' '' + REPLACE(SC.lean_no, ''LEAN'', ''L'') AS Lean, SC.DAOMH, SC.ARTICLE,');
    SQL.Add('WIP.RY + CASE WHEN SC.SubSeq IS NULL THEN '''' ELSE ''-'' + CAST(SC.SubSeq AS VARCHAR) END AS ZLBH, COUNT(WIP.Cycle) AS Cycles, SUM(WIP.Pairs) AS Pairs INTO #WIP FROM #WIP1 AS WIP');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SC.building_no, SC.lean_no, SC.DAOMH, SC.ARTICLE, SC.DDBH, SC.SubSeq,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle FROM (');
    SQL.Add('    SELECT SC.building_no, SC.lean_no, XXZL.DAOMH, XXZL.ARTICLE, DDZL.DDBH,');
    SQL.Add('    CASE WHEN RIGHT(SC.ry, 3) LIKE ''%-%'' THEN SUBSTRING(RIGHT(SC.ry, 3), CHARINDEX(''-'', RIGHT(SC.ry, 3)) + 1, LEN(RIGHT(SC.ry, 3)) - CHARINDEX(''-'', RIGHT(SC.ry, 3))) END AS SubSeq,');
    SQL.Add('    CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('    WHERE DDZL.DDBH IN (SELECT RY FROM #WIP1)');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY SC.building_no, SC.lean_no, SC.DAOMH, SC.ARTICLE, SC.DDBH, SC.SubSeq, SC.Cycles');
    SQL.Add(') AS SC ON SC.DDBH = WIP.RY AND WIP.Cycle BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('GROUP BY SC.building_no, SC.lean_no, SC.DAOMH, SC.ARTICLE, WIP.RY, SC.SubSeq');

    SQL.Add('SELECT Lean, SUM(Cycles) AS Cycles, SUM(Pairs) AS Pairs FROM #WIP');
    SQL.Add('GROUP BY Lean');
    Active := true;
  end;

  with Q_ISTD4 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Lean, DAOMH, ARTICLE, ZLBH, Cycles, Pairs FROM #WIP');
    SQL.Add('WHERE Lean = :Lean');
    SQL.Add('ORDER BY Lean, DAOMH, ARTICLE, ZLBH');
    Active := true;
  end;

  Label33.Caption := '  [ WIP IN TY DAT ] : ' + DBGridEh16.GetFooterValue(0, DBGridEh16.Columns[2]) + ' Pairs';

  with Q_ISTD5 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#KCRK_RY'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #KCRK_RY END;');

    SQL.Add('IF OBJECT_ID(''tempdb..#Inventory'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Inventory END;');
    ExecSQL;

    SQL.Add('SELECT RY, DDBH, CASE WHEN DDBH = RY THEN 1 ELSE CAST(RIGHT(DDBH, 3) AS INT) END AS Cycle, SUM(Pairs) AS Pairs INTO #KCRK_RY FROM (');
    SQL.Add('  SELECT KCRK_Upper.RY, KCRKS_Upper.DDBH, KCRKS_Upper.Pairs FROM KCRK_Upper');
    SQL.Add('  LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
    SQL.Add('  WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP_IS.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP_IS.Date) + ''' AND ISNULL(KCRKS_Upper.Pairs, 0) > 0');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT ZLBH, DDBH, Pairs FROM KCCLMONTH_Upper');
    SQL.Add('  WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP_IS.Date, -1)) + ''' AND ISNULL(KCCLMONTH_Upper.Pairs, 0) > 0');
    SQL.Add(') AS KCRK');
    SQL.Add('GROUP BY RY, DDBH');

    SQL.Add('SELECT SC.Building + '' '' + REPLACE(SC.Lean, ''Lean'', ''L'') AS Lean, XXZL.DAOMH, XXZL.ARTICLE, KCRK.RY, KCRK.DDBH, KCRK.Pairs - ISNULL(KCLL.Pairs, 0) AS Pairs INTO #Inventory FROM #KCRK_RY AS KCRK');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT KCLL_Upper.RY, KCLLS_Upper.DDBH, SUM(KCLLS_Upper.Pairs) AS Pairs FROM KCLL_Upper');
    SQL.Add('  LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO');
    SQL.Add('  WHERE KCLL_Upper.RY IN (SELECT RY FROM #KCRK_RY)');
    SQL.Add('  GROUP BY KCLL_Upper.RY, KCLLS_Upper.DDBH');
    SQL.Add(') AS KCLL ON KCLL.RY = KCRK.RY AND KCLL.DDBH = KCRK.DDBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT SC.Building, SC.Lean, SC.DDBH,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1) AS INT) END, 1) AS MinCycle,');
    SQL.Add('  ISNULL(CASE WHEN ISNUMERIC(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10)) = 1 AND ISNUMERIC(SUBSTRING(Cycles, 1, CHARINDEX(''-'', Cycles)-1)) = 1 THEN');
    SQL.Add('  CAST(SUBSTRING(Cycles, CHARINDEX(''-'', Cycles)+1, 10) AS INT) END, MAX(CASE WHEN SMDD.DDBH = SMDD.YSBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END)) AS MaxCycle FROM (');
    SQL.Add('    SELECT SC.building_no AS Building, SC.lean_no AS Lean, DDZL.DDBH,');
    SQL.Add('    CASE WHEN RIGHT(SC.ry, 3) LIKE ''%-%'' THEN SUBSTRING(RIGHT(SC.ry, 3), CHARINDEX(''-'', RIGHT(SC.ry, 3)) + 1, LEN(RIGHT(SC.ry, 3)) - CHARINDEX(''-'', RIGHT(SC.ry, 3))) END AS SubSeq,');
    SQL.Add('    CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS Cycles FROM schedule_crawler AS SC');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('    WHERE DDZL.DDBH IN (SELECT RY FROM #KCRK_RY)');
    SQL.Add('  ) AS SC');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('  GROUP BY SC.Building, SC.Lean, SC.DDBH, SC.Cycles');
    SQL.Add(') AS SC ON SC.DDBH = KCRK.RY AND KCRK.Cycle BETWEEN SC.MinCycle AND SC.MaxCycle');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE KCRK.Pairs - ISNULL(KCLL.Pairs, 0) > 0');

    SQL.Add('SELECT Lean, COUNT(DDBH) AS Cycles, SUM(Pairs) AS Pairs FROM #Inventory');
    SQL.Add('GROUP BY Lean');
    Active := true;
  end;

  with Q_ISTD6 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Lean, DAOMH, ARTICLE, RY AS ZLBH, COUNT(DDBH) AS Cycles, SUM(Pairs) AS Pairs FROM #Inventory');
    SQL.Add('WHERE Lean = :Lean');
    SQL.Add('GROUP BY Lean, DAOMH, ARTICLE, RY');
    SQL.Add('ORDER BY Lean, DAOMH, ARTICLE, RY');
    Active := true;
  end;

  Label34.Caption := '  [ UPPER INVENTORY IN TY XUAN ] : ' + DBGridEh19.GetFooterValue(0, DBGridEh16.Columns[2]) + ' Pairs';
end;

end.
