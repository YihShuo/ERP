                 unit FDExcelData1;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp,
  ShellAPI, ExcelXP;
const ReadOnly=false;
type
  TFDExcelData = class(TForm)
    Panel1: TPanel;
    YProom: TQuery;
    DataSource1: TDataSource;
    gettime: TQuery;
    YProomdevcode: TStringField;
    YProomarticle: TStringField;
    YProomxieming: TStringField;
    YProomjijie: TStringField;
    YProomfd: TStringField;
    YProomcutting: TStringField;
    YProomyssm: TStringField;
    YProomYPCC: TStringField;
    YProomXTMH: TStringField;
    YProomDDMH: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    YProomkfjd: TStringField;
    Detail: TQuery;
    outsole: TQuery;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button3: TButton;
    Edit5: TEdit;
    Button4: TButton;
    MatList: TQuery;
    DataSource2: TDataSource;
    DBGridEh2: TDBGridEh;
    MatListKFJD: TStringField;
    MatListjijie: TStringField;
    MatListFD: TStringField;
    MatDetail: TQuery;
    Memo1: TMemo;
    Panel5: TPanel;
    Panel6: TPanel;
    BB1: TBitBtn;
    BitBtn1: TBitBtn;
    BB7: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    InfoPanel: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    XieXingQry: TSpeedButton;
    StageQry: TSpeedButton;
    CurrencyQry: TSpeedButton;
    YPDH_DB: TDBEdit;
    ARTNO_DB: TDBEdit;
    DBEdit1: TDBEdit;
    Rate_DB: TDBEdit;
    USERDATE_DB: TDBEdit;
    PFC_DB: TDBEdit;
    JiJie_DB: TDBEdit;
    DBEdit14: TDBEdit;
    YPCC_DB: TDBEdit;
    YPCCO_DB: TDBEdit;
    USERID_DB: TDBEdit;
    YPCCL_DB: TDBEdit;
    Quantity_DB: TDBEdit;
    FD_DB: TDBEdit;
    XieXing_DB: TDBEdit;
    XieMing_DB: TDBEdit;
    Currency_DB: TDBEdit;
    KFRQ_DB: TDBEdit;
    FINDATE_DB: TDBEdit;
    KFLX2_DB: TDBEdit;
    DevType_DB: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    YPZLGrid: TDBGridEh;
    ToolPanel: TPanel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    YPDHEdit: TEdit;
    Button5: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    ArticleEdit: TEdit;
    XieXingEdit: TEdit;
    SheHaoEdit: TEdit;
    JiJieEdit: TEdit;
    XieMingEdit: TEdit;
    DevCodeEdit: TEdit;
    DateCK: TCheckBox;
    KFJDEdit: TComboBox;
    DevTypeEdit: TComboBox;
    DroppedCK: TComboBox;
    TS2: TTabSheet;
    YPZLSGrid: TDBGridEh;
    Panel7: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DelCK: TCheckBox;
    TS3: TTabSheet;
    YPZLS2Grid: TDBGridEh;
    part: TQuery;
    DataSource3: TDataSource;
    carddetail: TQuery;
    YPZL_DS: TDataSource;
    YPZL: TQuery;
    YPZLYPDH: TStringField;
    YPZLXieXing: TStringField;
    YPZLSheHao: TStringField;
    YPZLARTICLE: TStringField;
    YPZLKFJD: TStringField;
    YPZLYPCC: TStringField;
    YPZLRate: TFloatField;
    YPZLCurrency: TStringField;
    YPZLKFRQ: TStringField;
    YPZLSDRQ: TStringField;
    YPZLJHRQ: TStringField;
    YPZLQuantity: TFloatField;
    YPZLPFC: TStringField;
    YPZLCFM: TStringField;
    YPZLFINDATE: TStringField;
    YPZLGSDH: TStringField;
    YPZLUSERID: TStringField;
    YPZLUSERDATE: TStringField;
    YPZLCGBH: TStringField;
    YPZLKFLX: TStringField;
    YPZLYPCCO: TStringField;
    YPZLYPCCL: TStringField;
    YPZLCGBH1: TStringField;
    YPZLXieMing: TStringField;
    YPZLARTNO: TStringField;
    YPZLYSSM: TStringField;
    YPZLJiJie: TStringField;
    YPZLXTMH: TStringField;
    YPZLDDMH: TStringField;
    YPZLKFLX2: TStringField;
    YPZLDEVCODE: TStringField;
    YPZLkfjc: TStringField;
    YPZLywsm: TStringField;
    YPZLkfdh: TStringField;
    YPZLCCGB: TStringField;
    YPZLFD: TStringField;
    YPZLDevType: TStringField;
    YPZLCategory: TStringField;
    YPZLYN: TStringField;
    YPZLBWBH: TIntegerField;
    YPZLDROPPED: TBooleanField;
    YPZLUserName: TStringField;
    YPZLS: TQuery;
    YPZLS2_DS: TDataSource;
    YPZLS_DS: TDataSource;
    UpMemo: TUpdateSQL;
    UpDet: TUpdateSQL;
    upMas: TUpdateSQL;
    YPZLS2: TQuery;
    YPZLS2ypdh: TStringField;
    YPZLS2LineNum: TStringField;
    YPZLS2Remark: TStringField;
    YPZLS2YN: TStringField;
    TempQry: TQuery;
    MatQry: TQuery;
    PartQry: TQuery;
    SupplierQry: TQuery;
    TabSheet4: TTabSheet;
    BitBtn2: TBitBtn;
    Sticker: TQuery;
    BDT6: TBitBtn;
    Label52: TLabel;
    DBEdit10: TDBEdit;
    Label53: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label54: TLabel;
    YPZLMH: TStringField;
    YPZLLH: TStringField;
    YPZLBH: TStringField;
    brand: TComboBox;
    Label55: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBEdit15: TDBEdit;
    Label57: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Label60: TLabel;
    DBEdit16: TDBEdit;
    YPZLSKU: TStringField;
    YPZLfd_check: TBooleanField;
    allnook: TCheckBox;
    MatListypdh: TStringField;
    Label56: TLabel;
    subtypechose: TComboBox;
    Label58: TLabel;
    DBEdit13: TDBEdit;
    YPZLsubtype: TStringField;
    TabSheet5: TTabSheet;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Button6: TButton;
    DataSource4: TDataSource;
    DBGridEh3: TDBGridEh;
    compositions: TQuery;
    Edit2: TEdit;
    Label61: TLabel;
    Label62: TLabel;
    Edit3: TEdit;
    compositionsbuyno: TStringField;
    compositionsarticle: TStringField;
    compositionsdevcode: TStringField;
    compositionsUPPERmat: TStringField;
    compositionsLININgmat: TStringField;
    compositionsInsolemat: TStringField;
    compositionsOutsolemat: TStringField;
    compositionscfmdate: TStringField;
    Button7: TButton;
    TabSheet6: TTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    DBGridEh4: TDBGridEh;
    DataSource5: TDataSource;
    CheckBox2: TCheckBox;
    TabSheet7: TTabSheet;
    Panel14: TPanel;
    Panel15: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    Edit8: TEdit;
    Button10: TButton;
    DBGridEh5: TDBGridEh;
    DataSource6: TDataSource;
    MLTQuery: TQuery;
    Button11: TButton;
    TabSheet8: TTabSheet;
    Panel17: TPanel;
    Label67: TLabel;
    Button12: TButton;
    DBGridEh6: TDBGridEh;
    MLT_DevQuery: TQuery;
    DataSource7: TDataSource;
    Edit10: TEdit;
    Label68: TLabel;
    ComboBox7: TComboBox;
    MLTDEVTYPE: TComboBox;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    MLTsubtype: TComboBox;
    Button13: TButton;
    MLTQueryInitial_Product_Line: TStringField;
    MLTQueryProduct_Line: TStringField;
    MLTQueryInitial_Development_Season: TStringField;
    MLTQueryNew_Carryover: TStringField;
    MLTQueryProduct_Bucket: TStringField;
    MLTQueryProductNumber: TStringField;
    MLTQueryProduct_Name: TStringField;
    MLTQueryProduct_Description: TStringField;
    MLTQuerycut: TStringField;
    MLTQueryColorwayID: TStringField;
    MLTQueryBase_Material_ID: TStringField;
    MLTQueryMaterial_Number: TStringField;
    MLTQuerySegment: TStringField;
    MLTQueryCategory: TStringField;
    MLTQueryDesign_Pack: TStringField;
    MLTQueryTechLevel: TStringField;
    MLTQueryInitial_In_Store_Date: TStringField;
    MLTQueryDevelopment_Center: TStringField;
    MLTQueryFctory: TStringField;
    MLTQueryColorway_Status: TStringField;
    MLTQuerycldh: TStringField;
    MLTQueryMaterial_Description: TStringField;
    MLTQuerySupplier: TStringField;
    MLTQueryPO_collaboration: TStringField;
    MLTQueryMaterial_Prod_LT: TIntegerField;
    MLTQueryMaterial_Trans_LT: TIntegerField;
    MLTQueryShoes_production_LT: TStringField;
    MLTQueryGood_Insurance: TStringField;
    MLTQueryExtraMethod: TStringField;
    MLTQueryExtraday: TIntegerField;
    MLTQueryRemarks: TStringField;
    MLTQueryRemarks2: TStringField;
    MLTQueryRemarks3: TStringField;
    MLTQueryMLT: TIntegerField;
    MLTQueryRN: TFloatField;
    MLT_DevQueryInitial_Product_Line: TStringField;
    MLT_DevQueryProduct_Line: TStringField;
    MLT_DevQueryInitial_Development_Season: TStringField;
    MLT_DevQueryNew_Carryover: TStringField;
    MLT_DevQueryProduct_Bucket: TStringField;
    MLT_DevQueryProductNumber: TStringField;
    MLT_DevQueryProduct_Name: TStringField;
    MLT_DevQueryProduct_Description: TStringField;
    MLT_DevQuerycut: TStringField;
    MLT_DevQueryColorwayID: TStringField;
    MLT_DevQueryBase_Material_ID: TStringField;
    MLT_DevQueryMaterial_Number: TStringField;
    MLT_DevQuerySegment: TStringField;
    MLT_DevQueryCategory: TStringField;
    MLT_DevQueryDesign_Pack: TStringField;
    MLT_DevQueryTechLevel: TStringField;
    MLT_DevQueryInitial_In_Store_Date: TStringField;
    MLT_DevQueryDevelopment_Center: TStringField;
    MLT_DevQueryFctory: TStringField;
    MLT_DevQueryColorway_Status: TStringField;
    MLT_DevQueryMaterial_Description: TStringField;
    MLT_DevQuerySupplier: TStringField;
    MLT_DevQueryPO_collaboration: TStringField;
    MLT_DevQueryMaterial_Prod_LT: TIntegerField;
    MLT_DevQueryMaterial_Trans_LT: TIntegerField;
    MLT_DevQueryGood_Insurance: TStringField;
    MLT_DevQueryMLT: TIntegerField;
    compositionsUPPERmatDetail: TStringField;
    compositionsLININgmatDetail: TStringField;
    compositionsInsolematDetail: TStringField;
    compositionsOutsolematDetail: TStringField;
    FD: TEdit;
    Label72: TLabel;
    YPZLpur_recieve: TBooleanField;
    YPZLrecieveDate: TDateTimeField;
    YPZLDelDate: TDateTimeField;
    TabSheet9: TTabSheet;
    Panel16: TPanel;
    DBGridEh7: TDBGridEh;
    FD_Check_time: TQuery;
    FD_Check_time_DS: TDataSource;
    FD_Check_timeypdh: TStringField;
    FD_Check_timeID: TStringField;
    FD_Check_timeCheck_Time: TDateTimeField;
    FD_Check_timerecieveid: TStringField;
    FD_Check_timerecievedate: TDateTimeField;
    FD_Check_timeremark: TStringField;
    YPZLre_check: TBooleanField;
    YPZLrecheckdate: TDateTimeField;
    FD_Check_timerecheckID: TStringField;
    FD_Check_timerecheckDate: TDateTimeField;
    Panel18: TPanel;
    DBGridEh8: TDBGridEh;
    RE_CHECK_DS: TDataSource;
    RE_Check: TQuery;
    RE_Checkypdh: TStringField;
    RE_CheckRE_check: TBooleanField;
    UP_REChECK: TUpdateSQL;
    Panel19: TPanel;
    BitBtn3: TBitBtn;
    BF4: TBitBtn;
    BF5: TBitBtn;
    BF6: TBitBtn;
    Tempqry1: TQuery;
    YPZLimgnameR1: TStringField;
    YPZLimgnameR2: TStringField;
    YPZLimgnameR3: TStringField;
    YPZLimgnameCFM: TStringField;
    Imageshoe: TImage;
    edit7: TComboBox;
    edit9: TComboBox;
    TabSheet10: TTabSheet;
    Panel20: TPanel;
    Panel21: TPanel;
    DBGridEh9: TDBGridEh;
    Label73: TLabel;
    edit11: TComboBox;
    Label74: TLabel;
    ComboBox8: TComboBox;
    Button14: TButton;
    Shipping: TQuery;
    DataSource8: TDataSource;
    ShippingSeason: TStringField;
    ShippingStage: TStringField;
    ShippingSTT: TFloatField;
    ShippingSKU: TStringField;
    ShippingMainMaterial: TStringField;
    ShippingCut: TStringField;
    ShippingSampleSize: TStringField;
    ShippingGrandTotalPairs: TFloatField;
    ShippingSampleNO: TStringField;
    ShippingDEV: TStringField;
    Button15: TButton;
    ShippingSR: TStringField;
    YPZLywsm_1: TStringField;
    Label75: TLabel;
    DBEdit17: TDBEdit;
    YPZLtotalQuantity: TFloatField;
    Label76: TLabel;
    DBEdit18: TDBEdit;
    MLT_DevQueryShoes_production_LT: TIntegerField;
    MLT_DevQueryFactory_Remarks: TStringField;
    CheckBox3: TCheckBox;
    TabSheet11: TTabSheet;
    Memo2: TMemo;
    BitBtn4: TBitBtn;
    bookcover: TQuery;
    BitBtn5: TBitBtn;
    YPZLproductionlocation: TStringField;
    Label59: TLabel;
    DBEdit19: TDBEdit;
    MatListdevcode: TStringField;
    TearDown: TQuery;
    TearDownType: TStringField;
    TearDownpicture: TStringField;
    TearDownCategory: TStringField;
    TearDownStyle_Name: TStringField;
    s: TStringField;
    TearDownColorway: TStringField;
    TearDownSR: TStringField;
    TearDownRubber_SKU: TStringField;
    TearDownQty: TStringField;
    TearDownTECH_LEVEL: TStringField;
    TearDownNeed_Commercialization_trial: TStringField;
    TearDownGender: TStringField;
    TearDownSample_Size: TStringField;
    TearDownLast: TStringField;
    TearDownLast_cost_per_pair_Only_for_Ne: TStringField;
    TearDownConverse_Authorize_Molds: TStringField;
    TearDownSize_Conversion_Chart: TStringField;
    TearDownMain_Material_Description: TStringField;
    TearDownMaterial_Mini: TStringField;
    TearDownLong_Leadtime_Material: TStringField;
    TearDownLong_Leadtime_Material_Estimat: TStringField;
    TearDownSample_Size_Fitting: TStringField;
    TearDownPC_status: TStringField;
    TearDownCutting_Die_Code: TStringField;
    TearDownNew_Cutting_Die: TStringField;
    TearDownTest: TStringField;
    TearDownQP: TStringField;
    TearDownremarks: TStringField;
    TearDownfd: TStringField;
    TearDowncTS: TStringField;
    TearDownNA: TStringField;
    TearDownypdh: TStringField;
    TearDownPic: TQuery;
    MOQ: TQuery;
    Query1: TQuery;
    Query2: TQuery;
    MOQleadDay: TQuery;
    MOQLeadTime: TQuery;
    MOQMax: TQuery;
    TearDownUpperMatDetail1: TStringField;
    TearDownUPPER: TStringField;
    TearDownLiningMatDetail1: TStringField;
    TearDownLINNING: TStringField;
    TearDownInsoleMatDetail1: TStringField;
    TearDownInsole: TStringField;
    TearDownOutsole: TStringField;
    LAI: TComboBox;
    Label77: TLabel;
    TabSheet12: TTabSheet;
    Panel25: TPanel;
    Label81: TLabel;
    Label83: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label78: TLabel;
    Label80: TLabel;
    r4bbt1: TBitBtn;
    r4bbt2: TBitBtn;
    r4bbt3: TBitBtn;
    r4bbt4: TBitBtn;
    r4bbt5: TBitBtn;
    R4SEASON: TComboBox;
    R4ARTICLE: TEdit;
    R4FD: TComboBox;
    r4excel: TButton;
    TeamR4: TComboBox;
    r4type: TComboBox;
    R4Devcode: TEdit;
    data: TComboBox;
    CheckBox4: TCheckBox;
    Panel26: TPanel;
    Label238: TLabel;
    Label239: TLabel;
    Label240: TLabel;
    Label266: TLabel;
    Label267: TLabel;
    Label268: TLabel;
    DBEdit60: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    DBEdit176: TDBEdit;
    GroupBox1: TGroupBox;
    Label79: TLabel;
    Label82: TLabel;
    Label84: TLabel;
    R4SR: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Button16: TButton;
    DBGridEh10: TDBGridEh;
    DataSource9: TDataSource;
    BlueFile: TQuery;
    BlueFileFD: TStringField;
    BlueFileYSSM: TStringField;
    BlueFilekflx: TStringField;
    BlueFileXTMH: TStringField;
    BlueFileDDMH: TStringField;
    BlueFileXieMing: TStringField;
    BlueFilearticle: TStringField;
    BlueFiledevcode: TStringField;
    BlueFileCTS: TStringField;
    BlueFileNA: TStringField;
    BlueFileGENDER: TStringField;
    BlueFilesubtype: TStringField;
    BlueFileSS: TStringField;
    SR: TQuery;
    BlueExcel: TQuery;
    BlueIM: TQuery;
    Label63: TLabel;
    Edit4: TEdit;
    Label64: TLabel;
    Edit6: TEdit;
    Label85: TLabel;
    ComboBox11: TComboBox;
    Label86: TLabel;
    ComboBox12: TComboBox;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    BBT5: TBitBtn;
    SaveDialog1: TSaveDialog;
    YPZLypccM: TStringField;
    Label87: TLabel;
    YPCCM_DB: TDBEdit;
    GroupBox2: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    temp: TQuery;
    MLTQuerycldhflex: TStringField;
    MLTQueryuserdate: TDateTimeField;
    MLTQuerycountry: TStringField;
    MLTQuerycldhflexdes: TStringField;
    BitBtn6: TBitBtn;
    Sticker2: TQuery;
    TabSheet13: TTabSheet;
    Panel22: TPanel;
    Label88: TLabel;
    Button17: TButton;
    Button18: TButton;
    ComboBox13: TComboBox;
    DBGridEh11: TDBGridEh;
    MOQDataDS: TDataSource;
    MOQData: TQuery;
    Edit12: TEdit;
    Label89: TLabel;
    MLT_DevQueryMaterialCategory: TStringField;
    MLT_DevQueryMaterialPartName: TStringField;
    MLT_DevQuerycldhflex: TStringField;
    Label90: TLabel;
    Edit13: TEdit;
    Label91: TLabel;
    MOQDataMaterialNO: TStringField;
    MOQDataSeason: TStringField;
    MOQDataSR: TStringField;
    MOQDataArticle: TStringField;
    MOQDataUnit: TStringField;
    MOQDataMaterialDes: TStringField;
    MOQDatacsbh: TStringField;
    MOQDatazsywjc: TStringField;
    MOQDataSampleMOQ: TCurrencyField;
    MOQDataProdMOQ: TCurrencyField;
    MOQDataExtraPrice: TCurrencyField;
    MOQDataSurcharge: TCurrencyField;
    MOQDataDyingfee: TCurrencyField;
    Edit14: TEdit;
    Label92: TLabel;
    CheckBox10: TCheckBox;
    MLT_DevQuerycldh: TStringField;
    MOQDatauserdate: TDateTimeField;
    ImportList: TCheckBox;
    MOQDatacldhflex: TStringField;
    MLTQueryMaterialCategory: TStringField;
    MLTQueryMaterialPartName: TStringField;
    MOQDataYWSM: TStringField;
    YPZLENGNAME: TStringField;
    DBEdit20: TDBEdit;
    Label93: TLabel;
    CheckBox11: TCheckBox;
    FD_Check_time_CK: TCheckBox;
    MatListyssm: TStringField;
    Label94: TLabel;
    DBEdit21: TDBEdit;
    Label95: TLabel;
    ComboBox14: TComboBox;
    CheckBox12: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CheckBox14: TCheckBox;
    ComboBox15: TComboBox;
    YPZLBuildDate: TDateTimeField;
    Label39: TLabel;
    ComboBox16: TComboBox;
    Label96: TLabel;
    ComboBox17: TComboBox;
    YPZLSROWID: TFloatField;
    YPZLSYPDH: TStringField;
    YPZLSBWBH: TStringField;
    YPZLSxh: TStringField;
    YPZLSCLBH: TStringField;
    YPZLSBWLB: TStringField;
    YPZLSCSBH: TStringField;
    YPZLSloss: TFloatField;
    YPZLSCLSL: TFloatField;
    YPZLSCLDJ: TFloatField;
    YPZLSCurrency: TStringField;
    YPZLSRate: TFloatField;
    YPZLSRemark: TStringField;
    YPZLSBWMCNM: TStringField;
    YPZLSzwsm: TStringField;
    YPZLSywsm: TStringField;
    YPZLSCLMC: TStringField;
    YPZLSdwbh: TStringField;
    YPZLSzsjc: TStringField;
    YPZLSclzmlb: TStringField;
    YPZLSzsywjc: TStringField;
    YPZLSywpm: TStringField;
    YPZLSSamplePurchaser: TStringField;
    YPZLSMatUser: TStringField;
    YPZLSUserID: TStringField;
    YPZLSUserDate: TDateTimeField;
    YPZLSCQDH: TStringField;
    PopupMenu1: TPopupMenu;
    MemoMaterial1: TMenuItem;
    TabSheet14: TTabSheet;
    Panel23: TPanel;
    BB: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Panel24: TPanel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    DTP5: TDateTimePicker;
    CB1: TComboBox;
    B_Query: TButton;
    B_Excel: TButton;
    ED_MatNo: TEdit;
    ED_SR: TEdit;
    ED_Stage: TEdit;
    ED_FD: TEdit;
    DBGridEh12: TDBGridEh;
    DS2: TDataSource;
    QReport: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    QReportScanDate: TDateTimeField;
    QReportForThisStage: TBooleanField;
    QReportCheckDate: TDateTimeField;
    UP_Report: TUpdateSQL;
    QUpdate: TQuery;
    Label103: TLabel;
    DTP6: TDateTimePicker;
    QReportCheckID: TStringField;
    Qry_SR: TQuery;
    Qry_Mat: TQuery;
    OpenDialog: TOpenDialog;
    Button19: TButton;
    MOQDataRemark: TStringField;
    QReportRemark: TStringField;
    QReportNG_Remark: TStringField;
    Label104: TLabel;
    ED_Supplier: TEdit;
    ptVN: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    qtyVN: TLabel;
    BDelRec: TQuery;
    PopupMenu2: TPopupMenu;
    Detail1: TMenuItem;
    Qtemp: TQuery;
    KFLX3_DB: TDBEdit;
    YPZLKFLX3: TStringField;
    procedure Buttn1Click(Sender: TObject);

      procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure YPZLGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PC1Change(Sender: TObject);
    procedure YPZLGridDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);

    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure MLTDEVTYPEChange(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure BF4Click(Sender: TObject);
    procedure BF5Click(Sender: TObject);
    procedure YPZLAfterScroll(DataSet: TDataSet);
    procedure edit11Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure DevTypeEditChange(Sender: TObject);
    procedure eX(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Excelsample(TearDownPic:TQuery;imgname:String);
    procedure Button16Click(Sender: TObject);
    procedure r4bbt1Click(Sender: TObject);
    procedure r4excelClick(Sender: TObject);
    procedure BBT5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure MemoMaterial1Click(Sender: TObject);
    procedure B_QueryClick(Sender: TObject);
    procedure B_ExcelClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure DBGridEh12Columns12UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh12Columns13UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh12Columns14UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure YPZLSAfterOpen(DataSet: TDataSet);
    procedure Detail1Click(Sender: TObject);
    procedure BF6Click(Sender: TObject);
  private
      DelList:TStringlist;
      NDate:TDate;
      AppDir:String;
      engname:String;
      procedure SampleOrderInitPickList();
      procedure PageChange();
      procedure ExportSampleOrder();
      procedure ExportDefaultExcel(Query:TQuery);
      procedure ExportFormatExcel(Query:TQuery);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDExcelData: TFDExcelData;

implementation

uses main1,FunUnit, FDExcelData_Detai1, UpdateDetail1;

{$R *.dfm}

procedure TFDExcelData.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DelList:=TStringlist.Create;//
  with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.Add('select lbdh from lbzls where  lbzls.lb = ''04'' and bz1=''Tyxuan'' order by lbdh ');
    active:=true;
    KFJDEdit.Items.Clear;
    KFJDEdit.Items.Add('');
    while not eof do
    begin
      KFJDEdit.Items.Add(FieldByName('lbdh').AsString);
      combobox1.Items.Add(FieldByName('lbdh').AsString);
      combobox2.Items.Add(FieldByName('lbdh').AsString);
      Next;
    end;
    sql.Clear;
  end;
  //
  PageControl1.ActivePage := TabSheet3;
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  SampleOrderInitPickList();
  PC1.ActivePage:=TS1;
  //唯讀
  if ReadOnly=true then
  begin
    Check.Checked:=false;
  end else
  begin
  //  YPZLGrid.PopupMenu:=PopupMenu;
   // YPZLSGrid.PopupMenu:=PopupMenu1;
  end;

  with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select khdh,kfzl.kfjc as kfjc from kfxxzl');
    Sql.add('left join kfzl on kfzl.kfdh=kfxxzl.khdh');
    Sql.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.khdh ');
    Sql.add('where kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    Sql.add('group by khdh,kfzl.kfjc');
    active:=true;
    brand.items.clear;
    while not eof do
    begin
       brand.items.add(fieldbyname('kfjc').asstring );
       next;
    end;
    brand.ItemIndex:=-1;
    active:=false;
  end;
  if main.Edit2.Text = 'SKX' then begin
    brand.items.clear;
    brand.items.add('Skechers');
    brand.items.add('SOREL');
    Label95.Visible := true;
    ComboBox14.Visible := true;
  end;

  with TempQry do  //抓取FD 15-19季
  begin
     active:=false;
     sql.Clear;
     sql.add('select FD from kfxxzl');
     SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
     sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
     SQL.add('and right(left(jijie,2),2) between ''15'' and ''19'' ');
     sql.add('group by FD');
     sql.add('order by FD');
     active:=true;
     combobox4.items.clear;
     combobox3.items.clear;
     combobox12.items.clear;
     R4FD.Items.clear;
     while not eof do
     begin
       R4FD.items.add(fieldbyname('FD').asstring );
       combobox3.items.add(fieldbyname('FD').asstring );
       combobox4.items.add(fieldbyname('FD').asstring );
       combobox12.items.add(fieldbyname('FD').asstring );
       next;
     end;
  end;
  R4FD.ItemIndex:=0;
  combobox3.ItemIndex:=0;
  combobox4.ItemIndex:=0;
  with TempQry do  //抓取season 15-19季
  begin
     active:=false;
     sql.Clear;
     sql.add('select jijie from kfxxzl');
     SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
     sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
     SQL.add('and right(left(jijie,2),2) between ''16'' and ''99'' and len(jijie)=''3''');
     sql.add('group by jijie');
     sql.add('order by jijie desc');
     active:=true;
     combobox5.items.clear;
     combobox6.items.clear;
     R4SEASON.Items.Clear;
     while not eof do
     begin
       R4SEASON.items.add(fieldbyname('jijie').asstring );
       combobox5.items.add(fieldbyname('jijie').asstring );
       combobox6.items.add(fieldbyname('jijie').asstring );
       edit7.items.add(fieldbyname('jijie').asstring );
       edit9.items.add(fieldbyname('jijie').asstring );
       edit11.items.add(fieldbyname('jijie').asstring );
       next;
     end;
  end;
  R4SEASON.ItemIndex:=0;
  combobox5.ItemIndex:=0;
  combobox6.ItemIndex:=0;
  edit7.ItemIndex:=0;
  edit9.ItemIndex:=0;
  with TempQry do
  begin
     active:=false;        //抓取使用者資料
     SQL.Clear;
     SQL.add('select isnull(engname,'+''''+''''+') as engname from Busers');
     SQL.add('where userid= '+''''+main.Edit1.Text+''' ');
     Active:=true;
     engname := fields[0].AsString;
  end;
  R4SEASON.Text := '';
  DTP5.Date := Date;
  DTP6.Date := Date;
end;

procedure TFDExcelData.SampleOrderInitPickList();
begin
  YPZLSGrid.Columns[12].PickList.Clear;
  YPZLSGrid.Columns[12].PickList.Add('USD');
  YPZLSGrid.Columns[12].PickList.Add('VND');
  YPZLSGrid.Columns[12].PickList.Add('NTD');
  YPZLSGrid.Columns[12].PickList.Add('EUR');
  YPZLSGrid.Columns[12].PickList.Add('GBP');
  YPZLSGrid.Columns[12].PickList.Add('HKD');
  YPZLSGrid.Columns[12].PickList.Add('JPD');
  YPZLSGrid.Columns[12].PickList.Add('RMB');
end;



procedure TFDExcelData.Buttn1Click(Sender: TObject);
var
 eclApp,WorkBook:olevariant;
   i,j,k,l:integer;
begin
    if  detail.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
      eclApp.ActiveSheet.PageSetup.TopMargin := 1/0.035;                           //頂邊距1cm
      eclApp.ActiveSheet.PageSetup.BottomMargin := 1/0.035;                        //底邊距1cm
      eclApp.ActiveSheet.PageSetup.LeftMargin := 0;                          //左邊距2cm
      eclApp.ActiveSheet.PageSetup.RightMargin := 0;                         //右邊距2cm
      eclApp.ActiveSheet.PageSetup.HeaderMargin := 0;                        //頁首1cm
      eclApp.ActiveSheet.PageSetup.FooterMargin := 0;                        //頁尾1cm
      eclApp.Range['A1','W1'].Merge;
      eclApp.Cells(1,1):='LYNDC Sample Commercialization Sheet';
      eclApp.ActiveSheet.Rows[1].Font.Size:= 24;
      eclApp.Cells(2,1):='DATE';
      eclApp.Cells(2,2):=gettime.fieldbyname('Ndate').value;
      eclApp.ActiveSheet.Rows[2].Font.Size:= 14;
      eclApp.Columns[1].ColumnWidth := 7; //設定欄寬
      eclApp.Range['A3','Z3'].Borders[7].LineStyle := 1;  //畫線
      eclApp.Range['A3','Z3'].Borders[8].LineStyle := 1;  //畫線
      eclApp.Range['A3','Z3'].Borders[9].LineStyle := 1;  //畫線
      eclApp.Range['A3','Z3'].Borders[10].LineStyle := 1;  //畫線
      eclApp.Range['A3','Z3'].Borders[11].LineStyle := 1;  //畫線
      eclApp.Range['A3','Z3'].Borders[12].LineStyle := 1;  //畫線
      eclApp.ActiveSheet.Rows[1].Font.Bold := True;//粗體字
      eclApp.ActiveSheet.Rows[2].Font.Bold := True;
      eclApp.ActiveSheet.Rows[3].Font.Bold := True;
      eclApp.Cells(3,1):='Type';
      eclApp.Columns[2].ColumnWidth := 8;
      eclApp.Rows[3].WrapText  := True;//自動換列
      eclApp.Cells(3,2):='Sheet No.';
      eclApp.Columns[3].ColumnWidth := 14;
      eclApp.Cells(3,3):='Shoe Name';
      eclApp.Columns[4].ColumnWidth := 18;
      eclApp.Cells(3,4):='SR#';
      eclApp.Columns[4].WrapText  := True;//自動換列
      eclApp.Columns[5].ColumnWidth := 11;
      eclApp.Cells(3,5):='SKU';
      //eclApp.Columns[6].ColumnWidth := 13;
      //eclApp.Cells(3,6):='Cutting Die';
      eclApp.Columns[6].ColumnWidth := 18;
      eclApp.Cells(3,6):='Colorways';
      eclApp.Columns[7].ColumnWidth := 8;
      eclApp.Cells(3,7):='Season';
      eclApp.Columns[8].ColumnWidth := 11;
      eclApp.Cells(3,8):='Developer';
      eclApp.Columns[9].ColumnWidth := 5;
      eclApp.Cells(3,9):='SIZE';
      eclApp.Columns[10].ColumnWidth := 13;
      eclApp.Cells(3,10):='Last';
      eclApp.Columns[11].ColumnWidth := 13;
      eclApp.Cells(3,11):='Outsole';
      eclApp.Columns[12].ColumnWidth := 6;
      eclApp.Cells(3,12):='1RD/PRS';
      eclApp.Columns[13].ColumnWidth := 6;
      eclApp.Cells(3,13):='2RD/ PRS';
      eclApp.Columns[14].ColumnWidth := 6;
      eclApp.Cells(3,14):='3RD/PRS';
      eclApp.Columns[15].ColumnWidth := 6;
      eclApp.Cells(3,15):='CFM/ PRS';
      eclApp.Columns[16].ColumnWidth := 6;
      eclApp.Cells(3,16):='Additional/PRS';
      eclApp.Columns[17].ColumnWidth := 6;
      eclApp.Cells(3,17):='Fit/ Wear /PR';
      eclApp.Columns[18].ColumnWidth := 6;
      eclApp.Cells(3,18):='Test/PRS';
      eclApp.Columns[19].ColumnWidth := 6;
      eclApp.Cells(3,19):='Component/PRS';
      eclApp.Columns[20].ColumnWidth := 6;
      eclApp.Cells(3,20):='Half stitch upper/PRS';
      eclApp.Columns[21].ColumnWidth := 6;
      eclApp.Cells(3,21):='Last Upper';
      eclApp.Columns[22].ColumnWidth := 6;
      eclApp.Cells(3,22):='Keeping/PRS';
      eclApp.Columns[23].ColumnWidth := 6;
      eclApp.Cells(3,23):='Quantity/PRS';
      eclApp.Range['W3','X3'].Merge;
      eclApp.Columns[24].ColumnWidth := 4;
      eclApp.Cells(3,25):='ETD';
      eclApp.Columns[25].ColumnWidth := 5;
      eclApp.Columns[25].ColumnWidth := 3;
      eclApp.Columns[26].ColumnWidth := 9;
      eclApp.Range['Y3','Z3'].Merge;
      detail.First;
      j:=4;
      while   not  detail.Eof   do
      begin
        for   i:=1   to   detail.fieldcount-1 do
        begin
          eclApp.Cells(j,3):=detail.FieldByName('xieming').value;
          eclApp.Cells(j,4):=detail.FieldByName('devcode').value;
        //eclApp.Cells(j,5):=detail.FieldByName('article').value;
        //eclApp.Cells(j,6):=detail.FieldByName('cutting').value;
          eclApp.Cells(j,6):=detail.FieldByName('yssm').value;
          eclApp.Cells(j,7):=detail.FieldByName('jijie').value;
          eclApp.Cells(j,8):=detail.FieldByName('fd').value;
          eclApp.Cells(j,9):=detail.FieldByName('ypcc').value;
          eclApp.Cells(j,10):=detail.FieldByName('xtmh').value;
          eclApp.Cells(j,11):=outsole.FieldByName('ywpm').value;
          eclApp.Cells(j,24):='PRS';
          eclApp.ActiveSheet.rows[j].ColumnWidth := 30;
     //   eclApp.Range[eclApp.cell[j,24],eclApp.cell[j,25]].Merge;
          for   k:=1   to   24 do
          begin
            eclApp.Cells[j,k].Borders[7].LineStyle := 1;  //畫線
            eclApp.Cells[j,k].Borders[8].LineStyle := 1;  //畫線
            eclApp.Cells[j,k].Borders[9].LineStyle := 1;  //畫線
            eclApp.Cells[j,k].Borders[10].LineStyle := 1;  //畫線
          end;
          eclApp.Cells[j,24].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[j,24].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[j,24].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[j,25].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[j,25].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[j,25].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[j,26].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[j,26].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[j,26].Borders[10].LineStyle := 1;  //畫線
          eclApp.ActiveSheet.Rows[j].Font.Bold := True;//粗體字
          end;
          detail.Next;
          inc(j);
        end;
        eclApp.Range['Y4','Z4'].Merge;
        eclApp.Cells(j+1,1):='Paxar Label:';
        eclApp.Cells(j+2,2):='Supervisor:';
        eclApp.Cells(j+2,7):='Team Leader:';
        eclApp.Cells(j+2,17):='Developer:';
        eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
        eclApp.Rows[1].HorizontalAlignment := -4108; //水平置中
        eclApp.Rows[1].VerticalAlignment := -4108;  //垂直置中
        eclApp.Rows[2].HorizontalAlignment := -4108; //水平置中
        eclApp.Rows[2].VerticalAlignment := -4108;  //垂直置中
        eclApp.Rows[3].HorizontalAlignment := -4108; //水平置中
        eclApp.Rows[3].VerticalAlignment := -4108;  //垂直置中
        eclApp.ActiveSheet.PageSetup.Zoom := false; //使用頁次縮放功能
        eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1;  //縮放成一頁寬(需配合Zoom = True)
        eclApp.ActiveSheet.PageSetup.FitToPagesTall := 1;  //縮放成一頁高(需配合Zoom = True)
        eclApp.Visible:=True;
        except
        on   F:Exception   do
          showmessage(F.Message);
        end;
    end;
procedure TFDExcelData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TFDExcelData.FormDestroy(Sender: TObject);
begin
  FDExceldata:=nil;
end;

procedure TFDExcelData.Button2Click(Sender: TObject);
begin
with gettime do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
   // NDate:=fieldbyname('Ndate').value;
  end;

    with yproom do
    begin
      active:=false;
      sql.Clear;
      sql.add('select kfxxzl.devcode,ypzl.article,left(kfxxzl.devcode,13) as cutting,kfxxzl.xieming,kfxxzl.yssm,');
      sql.add('kfxxzl.jijie,kfxxzl.fd,ypzl.YPCC,ypzl.kfjd,kfxxzl.XTMH,');
      sql.add('kfxxzl.DDMH from kfxxzl');
      sql.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
      sql.add('where  kfxxzl.devcode is not null');
      if edit1.text<>'' then
        sql.add('and  kfxxzl.devcode like '''+'%'+edit1.text+'%'+'''');
      if combobox5.text<>'' then
        sql.add('and  kfxxzl.jijie='''+combobox5.text+''' ');
      if combobox1.text<>'' then
        sql.add('and  ypzl.kfjd='''+combobox1.text+''' ');
      if combobox3.text<>'' then
        sql.add('and  kfxxzl.fd='''+combobox3.text+''' ');
      active:=true;
    end;
end;

procedure TFDExcelData.DBGridEh1DblClick(Sender: TObject);
begin
   detail.active:=true;
   outsole.active:=true;
   showmessage(detail.FieldByName('devcode').value);
end;

procedure TFDExcelData.Button4Click(Sender: TObject);
begin
  matdetail.Active:=false;
  with gettime do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
  end;
  with Matlist do
  begin
    active:=false;
    sql.Clear;
   sql.Add('select kfxxzl.devcode,ypzl.KFJD,kfxxzl.jijie,kfxxzl.FD,ypzl.ypdh,kfxxzl.yssm from ypzl');
   sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
   sql.add('where  kfxxzl.devcode is not null');
   if edit5.text<>'' then
     sql.add('and  kfxxzl.devcode like '''+'%'+edit5.text+'%'+'''');
   if combobox6.text<>'' then
     sql.add('and  kfxxzl.jijie='''+combobox6.text+''' ');
   if combobox2.text<>'' then
     sql.add('and  ypzl.kfjd='''+combobox2.text+''' ');
   if combobox4.text<>'' then
     sql.add('and  kfxxzl.fd='''+combobox4.text+''' ');
   if LAI.Text <> '' then
     sql.add('and  ypzl.ypdh like '''+LAI.text+'%'+'''');
   sql.add('group by kfxxzl.devcode,kfxxzl.jijie,kfxxzl.FD,ypzl.KFJD,ypzl.ypdh,kfxxzl.yssm');
//   showmessage(SQL.Text);
   active:=true;
   matdetail.Active:=true;
   end;
end;

procedure TFDExcelData.Button3Click(Sender: TObject);
var
 eclApp,WorkBook:olevariant;
   i,j,k,l:integer;
   PartALl:string;
begin
  if  matlist.active  then
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
    eclApp.ActiveSheet.PageSetup.TopMargin := 1/0.035;                           //頂邊距1cm
    eclApp.ActiveSheet.PageSetup.BottomMargin := 1/0.035;                        //底邊距1cm
    eclApp.ActiveSheet.PageSetup.LeftMargin := 0;                          //左邊距2cm
    eclApp.ActiveSheet.PageSetup.RightMargin := 0;                         //右邊距2cm
    eclApp.ActiveSheet.PageSetup.HeaderMargin := 0;                        //頁首1cm
    eclApp.ActiveSheet.PageSetup.FooterMargin := 0;                        //頁尾1cm
    eclApp.Columns[1].ColumnWidth := 20;//設定欄寬
    eclApp.Columns[2].ColumnWidth := 140;//設定欄寬
    eclApp.Cells(1,1):='SR#';
    eclApp.Cells(1,2):='Material';
    matlist.First;
    j:=2;
    while   not  matlist.Eof   do
    begin
        eclApp.Cells(j,1):=matlist.FieldByName('devcode').value + '/' + matlist.FieldByName('yssm').value;
        matdetail.First;
        MEMO1.TEXT:='';
        k:=1;
        while not  matdetail.Eof   do
        begin
          if matdetail.FieldByName('Country').AsString ='VN' then
          begin
            MEMO1.TEXT:=MEMO1.TEXT+'('+inttostr(k)+')'+matdetail.FieldByName('ywpm').AsString+matdetail.FieldByName('yqdate').AsString+' +2days for shipping'+ ''+Chr(10)+'';
          end else
            MEMO1.TEXT:=MEMO1.TEXT+'('+inttostr(k)+')'+matdetail.FieldByName('ywpm').AsString+matdetail.FieldByName('yqdate').AsString+' +7days for shipping'+ ''+Chr(10)+'';
          matdetail.Next;
          inc(k);
        end;
        eclApp.Cells(j,2):=MEMO1.TEXT;
    matlist.Next;
    inc(j);
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
    eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
end;

procedure TFDExcelData.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TFDExcelData.Button5Click(Sender: TObject);
begin
  //
  if ((YPDHEdit.Text='') and (ArticleEdit.Text='') and (XieXingEdit.Text='') and (SheHaoEdit.Text='') and (KFJDEdit.Text='')
      and (JiJieEdit.Text='') and (DevCodeEdit.Text='') and (XieMingEdit.Text='')  and (Check.Checked=false)) then
      dateck.Checked;
  with YPZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ypzl.re_check,ypzl.recheckdate,ypzl.pur_recieve,ypzl.recieveDate,ypzl.fd_check,ypzl.DelDate,ypzl.YPDH,ypzl.XieXing,ypzl.SheHao,ypzl.Article,ypzl.KFJD,ypzl.YPCC,');
    SQL.Add('       ypzl.Rate,ypzl.Currency,ypzl.KFRQ,ypzl.SDRQ,ypzl.JHRQ,ypzl.Quantity,ypzl.PFC,ypzl.CFM,ypzl.FINDATE,ypzl.GSDH,ypzl.UserID,ypzl.UserDate,ypzl.UserID+''-''+BUsers.UserName as UserName ');
    SQL.Add('       ,ypzl.CGBH,ypzl.KFLX,ypzl.ypcco,ypzl.ypccl,ypzl.ypccm,ypzl.CGBH1,xxzl.Article as SKU');
    SQL.Add('       ,kfxxzl.XieMing ,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH, ');
    SQL.Add('       case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end  AS KFLX2,xxzlkf.TechLevel_Flex AS KFLX3 ,kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ');
    SQL.Add('        ,ypzl.FD ,kfxxzl.DevType ,kfxxzl.Category,''1'' as YN,(Select Count(XH) from YPZLS where YPZLS.YPDH=YPZL.YPDH) as BWBH,xxzlKF.DROPPED,ypzl.BH,ypzl.LH,ypzl.MH,ypzl.subtype,ypzl.totalQuantity,ypzl.productionlocation');
    SQL.Add('        ,xxzlkf.imgnameR1,xxzlkf.imgnameR2,xxzlkf.imgnameR3,xxzlkf.imgnameCFM,lbzls03.ywsm,BUSERS.ENGNAME  ');
    SQL.Add('        ,YPZL.BuildDate');
    SQL.Add('FROM ypzl ypzl ');
    SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
    SQL.Add('Left JOIN XXZL on XXZL.XieXing = kfxxzl.XieXing AND XXZL.SheHao = kfxxzl.SheHao ');
    SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
    SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
    SQL.Add('LEFT JOIN lbzls lbzls03 ON kfxxzl.xiegn = lbzls03.lbdh AND lbzls03.lb = ''03'' ');
    SQL.Add('LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao  ');
    SQL.Add('LEFT JOIN BUsers on BUsers.UserID=ypzl.UserID ');
    SQL.Add('where  ypzl.YPDH like  '''+YPDHEdit.Text+'%'' and ypzl.GSDH = '''+main.Edit2.Text+''' ');
    if DateCK.Checked then
    begin
      if ComboBox15.ItemIndex = 0 then
        sql.add('   and (YPZL.BuildDate>= '''+formatdatetime('yyyyMMdd',DTP1.Date)+''' and YPZL.BuildDate<= '''+formatdatetime('yyyyMMdd',DTP2.Date)+''' )')
      else
        sql.add('   and (YPZL.DelDate>= '''+formatdatetime('yyyyMMdd',DTP1.Date)+''' and YPZL.DelDate<= '''+formatdatetime('yyyyMMdd',DTP2.Date)+''' )')
    end;
    if Brand.Text<>'' then
      sql.Add(' and kfzl.kfjc = '''+Brand.Text+''' ');
    if YPDHEdit.Text<>'' then
      sql.Add(' and YPZL.YPDH like ''%'+YPDHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
      sql.Add(' and kfxxzl.article like ''%'+ArticleEdit.Text+'%'' ');
    if XieXingEdit.Text<>'' then
      sql.Add(' and kfxxzl.XieXing like ''%'+XieXingEdit.Text+'%'' ');
    if SheHaoEdit.Text<>'' then
      sql.Add(' and kfxxzl.SheHao like ''%'+SheHaoEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
      sql.Add(' and YPZL.KFJD like ''%'+KFJDEdit.Text+'%'' ');
    if JiJieEdit.Text<>'' then
      sql.Add(' and kfxxzl.JiJie like ''%'+JiJieEdit.Text+'%'' ');
    if DevCodeEdit.Text<>'' then
      sql.Add(' and kfxxzl.DevCode like ''%'+DevCodeEdit.Text+'%'' ');
    if XieMingEdit.Text<>'' then
       sql.Add(' and kfxxzl.XieMing like ''%'+JiJieEdit.Text+'%'' ');
    if FD.Text<>'' then
       sql.Add(' and ypzl.FD like ''%'+FD.Text+'%'' ');
    if Check.Checked=true then
       SQL.add('and ypzl.fd= '+''''+engname+''' ');
    if allnook.Checked=true then
      sql.Add(' and (YPZL.re_check<>''1'' or YPZL.re_check is null) ');
    if subtypechose.Text<>'' then
      sql.Add(' and ypzl.subtype='''+subtypechose.Text+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    sql.Add('order by YPZL.YPDH desc ');
    //funcobj.WriteErrorLog(sql.Text);
    //ShowMessage(SQL.Text);
    Active:=true;
  end;
  if CheckBox14.Checked = true then
  begin
      With YPZLS do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select case when BWBH like ''%Child%'' then NULL else ROWID end as ROWID,YPDH');
        SQL.Add(',case when BWBH like ''%Child%'' then '''' else BWBH end as BWBH,case when BWBH like ''%Child%'' then '''' else xh end as xh');
        SQL.Add(',CLBH,BWLB,CSBH,loss,CLSL,CLDJ,Currency,Rate,Remark,BWMCNM,zwsm,ywsm,CLMC,dwbh,zsjc,clzmlb,zsywjc,ywpm ,SamplePurchaser,MatUser,UserID,UserDate,CQDH');
        SQL.Add('from ( ');
        SQL.Add('select DENSE_RANK() OVER(ORDER BY YPZLS.XH) AS ROWID,BWBH  ');
        SQL.Add(',YPDH,xh,xh1,CQDH,CLBH,BWLB,CSBH,loss,CLSL,CLDJ,Currency,Rate,Remark,BWMCNM,zwsm,ywsm,CLMC,dwbh,zsjc,clzmlb,zsywjc,ywpm ,SamplePurchaser,MatUser,UserID,UserDate');
        SQL.Add('from ( ');
        SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
        SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
        SQL.Add(' ,clzl.ywpm ,zszl_dev.SamplePurchaser,CLZL.UserID as MatUser,ypzls.UserID,ypzls.UserDate ');
        SQL.Add('FROM ypzls ypzls ');
        SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
        SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
        SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
        SQL.Add('LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh and zszl_dev.GSBH=:GSDH');
        SQL.Add('WHERE YPDH=:YPDH ');
        SQL.Add('union all ');
        SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
        SQL.Add(' ,ypzls.BWLB , ');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
        SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
        SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
        SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
        SQL.Add(' ,clzl.ywpm , zszl_devV.SamplePurchaser,CLZL.UserID as MatUser,ypzls.UserID,ypzls.UserDate');
        SQL.Add('FROM ypzls ypzls ');
        SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
        SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
        SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
        SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
        SQL.Add('LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH=:GSDH');
        SQL.Add('WHERE YPDH =:YPDH  and CLZHZL.SYL>0  ');

        SQL.Add('union all ');
        SQL.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
        SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH ');
        SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
        SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   ');
        SQL.Add(',clzhzl2.ywpm ,clzhzl2.SamplePurchaser,clzhzl2.MatUser,clzhzl2.UserID,clzhzl2.UserDate');
        SQL.Add(' from (');
        SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
        SQL.Add(' ,ypzls.BWLB , ');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
        SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
        SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
        SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
        SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
        SQL.Add(',clzl.ywpm , zszl_devV.SamplePurchaser,CLZL.UserID as MatUser,ypzls.UserID,ypzls.UserDate');
        SQL.Add('FROM ypzls ypzls ');
        SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
        SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
        SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
        SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
        SQL.Add('LEFT JOIN zszl_dev zszl_devV ON zszl_devV.zsdh = zszl.zsdh and zszl_devV.GSBH=:GSDH');
        SQL.Add('WHERE YPDH =:YPDH  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');

        SQL.Add(') clzhzl2');
        SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
        SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
        SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
        SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
        //
        SQL.Add(')  YPZLS');
        SQL.Add('group by CQDH,XH,YPDH,xh1,BWBH,CLBH,BWLB,CSBH,loss,CLSL,CLDJ,Currency,Rate,Remark,BWMCNM,zwsm,ywsm,CLMC,dwbh,zsjc,clzmlb,zsywjc,ywpm ,SamplePurchaser,MatUser,UserID,UserDate');

        SQL.Add(')  YPZLS');
        //funcobj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
  end else
  begin
      With YPZLS do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('  SELECT DENSE_RANK() OVER(ORDER BY YPZLS.XH) AS ROWID,ypzls.YPDH ,ypzls.xh ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss');
        SQL.Add(',ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate ,ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,  ');
        SQL.Add('         bwzl.zwsm,bwzl.ywsm,clzl.zwpm AS CLMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb  ,zszl.zsywjc');
        SQL.Add(',clzl.ywpm ,clzl.cqdh,zszl_dev.SamplePurchaser,CLZL.UserID as MatUser,ypzls.UserID,ypzls.UserDate  FROM ypzls   ');
        SQL.Add('  LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh   ');
        SQL.Add('  LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh   ');
        SQL.Add('  LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh  ');
        SQL.Add('  LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh   and zszl_dev.GSBH=:GSDH  ');
        SQL.Add('  WHERE YPDH =:YPDH   ');
        SQL.Add('  ORDER BY YPZLS.YPDH , YPZLS.XH, YPZLS.XH1  ');
        //funcobj.WriteErrorLog(sql.Text);
        Active:=true;
        //ExecSQL;
      end;
  end;
  YPZLS.Active:=true;
  YPZLS2.Active:=true;
  ToolPanel.Visible:=false;
  InfoPanel.Visible:=true;
end;

procedure TFDExcelData.Panel1DblClick(Sender: TObject);
begin
 PC1.ActivePageIndex:=1;
 PageChange();
end;

procedure TFDExcelData.YPZLGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if YPZL.FieldByName('DROPPED').AsBoolean=true then
  begin
    YPZLGrid.canvas.Brush.Color:=clBtnFace;
    YPZLGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if copy(YPZL.FieldByName('YPDH').AsString,4,1)='K' then
  begin
     YPZLGrid.canvas.Brush.Color:=cllime;
     YPZLGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if copy(YPZL.FieldByName('YPDH').AsString,4,1)='T' then
  begin
     YPZLGrid.canvas.Brush.Color:=claqua;
     YPZLGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TFDExcelData.PC1Change(Sender: TObject);
begin
  re_check.active:=true;
  PageChange();
  with RE_Check do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;         
      BF4.Enabled:=true;
      BF5.enabled:=false;
      BF6.enabled:=false;
end;

procedure TFDExcelData.YPZLGridDblClick(Sender: TObject);
begin
 PC1.ActivePageIndex:=1;
end;

procedure TFDExcelData.BitBtn1Click(Sender: TObject);
var
 eclApp,WorkBook:olevariant;
   excelcount,excelsheet,i,j,k,l:integer;       
   PartALl:string;
begin
    AppDir:=ExtractFilePath(Application.ExeName);
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\colorswatch.xls'),Pchar(AppDir+'Additional\colorswatch.xls'),false);
    carddetail.Active:=true;
    part.Active:=true;
    if  carddetail.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      excelsheet:=1;
      excelcount:=1;
      eclApp.WorkBooks.Open(AppDir+'Additional\colorswatch.xls');
      eclApp.WorkSheets[excelsheet].Activate;
      eclApp.WorkSheets[excelsheet].Name:=inttostr(excelsheet)+' - '+copy(carddetail.FieldByName('devcode').AsString,0,6);
      eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
      carddetail.First;
      j:=0;
      while   ((not  carddetail.Eof) ) do
      begin
          for   k:=0   to  5 do
            if (k mod 2) = 0 then
            begin
              eclApp.Cells(j+1,2+k):=carddetail.FieldByName('devcode').value+'('+carddetail.FieldByName('ARTICLE').value+')';
              eclApp.Cells(j+2,2+k):=carddetail.FieldByName('ywpm').value;
              part.First;
              PartALl:='';
              for i:=0 to part.RecordCount-1 do
              begin
               PartALl:=PartALl+part.FieldByName('ywsm').AsString+',';
               part.Next;
              end;

              eclApp.Cells(j+3,2+k):=copy(PartALl,0,(Length(PartALl)-1));
              eclApp.Cells(j+4,2+k):=carddetail.FieldByName('zsywjc').value;
              carddetail.Next;

              if carddetail.Eof then  break;

            //  showmessage(inttostr(excelcount));
             end;
          inc(j,5);
          if ((j-1) mod 29 = 0) then
          begin
             inc(excelsheet,1);
             eclApp.WorkSheets[excelsheet].Activate;
             eclApp.WorkSheets[excelsheet].Name:=inttostr(excelsheet)+' - '+copy(carddetail.FieldByName('devcode').AsString,0,6);
             j:=0;
          end;
          eclApp.WorkSheets[excelsheet+1].Name:=inttostr(excelsheet+1)+' - '+copy(carddetail.FieldByName('devcode').AsString,0,6);
        end;

        showmessage('Succeed.');
        eclApp.Visible:=True;
        //
        carddetail.Active:=false;
        part.Active:=false;
        except
        on   F:Exception   do
          showmessage(F.Message);
        end;
    end;


procedure TFDExcelData.BitBtn2Click(Sender: TObject);
var
 eclApp,WorkBook:olevariant;
  i,j,k,l,stop:integer;
  PartALl:string;
begin
   if MessageDlg('before Vulcanization?',mtCustom,[mbYes,mbNo], 0)=mrYes then
      l:=1
   else
      l:=2;
    sticker.Active:=true;
    //articleall.Active:=true;
    if  sticker.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
      eclApp.ActiveSheet.PageSetup.TopMargin := 1/0.035;                           //頂邊距1cm
      eclApp.ActiveSheet.PageSetup.BottomMargin := 1/0.035;                        //底邊距1cm
      eclApp.ActiveSheet.PageSetup.LeftMargin := 0;                          //左邊距2cm
      eclApp.ActiveSheet.PageSetup.RightMargin := 0;                         //右邊距2cm
      eclApp.ActiveSheet.PageSetup.HeaderMargin := 0;                        //頁首1cm
      eclApp.ActiveSheet.PageSetup.FooterMargin := 0;                        //頁尾1cm
      eclApp.Columns[1].ColumnWidth := 9; //設定欄寬
      eclApp.Columns[2].ColumnWidth := 34;//設定欄寬
      eclApp.Columns[3].ColumnWidth := 9;//設定欄寬
      eclApp.Columns[4].ColumnWidth := 34;//設定欄寬
      eclApp.Columns[5].ColumnWidth := 9;//設定欄寬
      eclApp.Columns[6].ColumnWidth := 34;//設定欄寬
      eclApp.Columns[1].Font.Size := 10;        //設定字體大小
      eclApp.Columns[1].Font.Bold := True;     //設定粗體字
      eclApp.Columns[3].Font.Size := 10;        //設定字體大小
      eclApp.Columns[3].Font.Bold := True;     //設定粗體字
      eclApp.Columns[5].Font.Size := 10;        //設定字體大小
      eclApp.Columns[5].Font.Bold := True;     //設定粗體字
      eclApp.Columns[1].WrapText  := True;//自動換列
      eclApp.Columns[2].WrapText  := True;//自動換列
      eclApp.Columns[3].WrapText  := True;//自動換列
      eclApp.Columns[4].WrapText  := True;//自動換列
      eclApp.Columns[5].WrapText  := True;//自動換列
      eclApp.Columns[6].WrapText  := True;//自動換列
      sticker.First;
     { articleall.First;
      PartALl:='';
      for i:=0 to articleall.RecordCount-1 do
      begin
        PartALl:=PartALl+articleall.FieldByName('article').AsString+',';
        articleall.Next;
      end;
      showmessage(PartALl);  }
      stop:=sticker.FieldByName('row').value;
      j:=1;
      while   not  sticker.Eof   do
      begin
          for   k:=0   to  5 do
            if (k mod 2) = 0 then
            begin

              eclApp.Cells(j,  1+k):='Project Name:';
              eclApp.Cells(j+1,1+k):='SR#/SKU #:';
              eclApp.Cells(j+2,1+k):='DEV. Factory:';
              eclApp.Cells(j+3,1+k):='Vendor:';
              eclApp.Cells(j+4,1+k):='Material & Color:';
              if l=1 then
                eclApp.Cells(j,2+k):=sticker.FieldByName('xieming').value+'(before Vulcanization)';
              if l=2 then
                eclApp.Cells(j,2+k):=sticker.FieldByName('xieming').value+'(After Vulcanization)';
              if stop>0 then
              begin
                 eclApp.Cells(j+1,2+k):=sticker.FieldByName('devcode').value;//+'('+articleall.FieldByName('article').value+')';
                 eclApp.Cells(j+2,2+k):='LYN';
                 eclApp.Cells(j+3,2+k):=sticker.FieldByName('zsywjc').value;
                 eclApp.Cells(j+4,2+k):=sticker.FieldByName('ywpm').value;
              end;
              stop:=stop-1;
              sticker.Next;
            end;
          inc(j,5);
        end;

        for   l:=1   to  j-1 do
        begin
          eclApp.Cells[l,1].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[12].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[12].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[12].LineStyle := 1;  //畫線
          eclApp.Cells[l,4].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,4].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,4].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,4].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,4].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,4].Borders[12].LineStyle := 1;  //畫線
          eclApp.Cells[l,5].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,5].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,5].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,5].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,5].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,5].Borders[12].LineStyle := 1;  //畫線
          eclApp.Cells[l,6].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,6].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,6].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,6].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,6].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,6].Borders[12].LineStyle := 1;  //畫線
        end;
        inc(l);
        showmessage('Succeed.');
        eclApp.ActiveSheet.PageSetup.Orientation := 1; //列印直=1,橫式=2
        eclApp.ActiveSheet.PageSetup.Zoom := false; //使用頁次縮放功能
        eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1;  //縮放成一頁寬(需配合Zoom = True)
        eclApp.ActiveSheet.PageSetup.FitToPagesTall := 1;  //縮放成一頁高(需配合Zoom = True)
        eclApp.Visible:=True;
        //
        sticker.Active:=false;
       // part.Active:=false;
        except
        on   F:Exception   do
          showmessage(F.Message);
        end;
end;

procedure TFDExcelData.ExportSampleOrder();
var eclApp,WorkBook:olevariant;
    i,offset,j:integer;
    SubPart:boolean;
    BeforeXH, FlowNum, LastType:string;
    FlowID:integer;
    checkshoepic:string;
    picture:olevariant;
    workRange : OleVariant;
    workSheet : OleVariant;
begin
   if MessageDlg('Print Sub Parts?',mtCustom,[mbYes,mbNo], 0)=mrYes then
      SubPart:=true
   else
      SubPart:=false;

   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SampleOrder20150328.xls'),Pchar(AppDir+'Additional\SampleOrder20150328.xls'),false);
    if FileExists(AppDir+'Additional\SampleOrder20150328.xls') then
    begin
      if  YPZL.active  then
      begin
      try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;
        //
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\SampleOrder20150328.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          eclApp.ActiveSheet.Rows.Font.Size := 13;

          //內腰資訊
          //Select YPZL_S1.*  From YPZL_S1 YPZL_S1
          //WHERE YPDH = 'LAIS140700011'
          //抬頭資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('SELECT xxzlkf.imgnamer1,xxzlkf.imgnamer2,xxzlkf.imgnamer3,xxzlkf.imgnamecfm,ypzl.* ,kfxxzl.XieMing ,ypzl.fd,kfxxzl.ARTICLE AS ARTNO ,');
            SQL.Add('kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end  AS KFLX2,xxzlkf.TechLevel_Flex AS KFLX3');
            SQL.Add(',kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.zwsm ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ,kfxxzl.IMGName ,lbzls03.zwsm AS zwsm03 ,lbzls03.ywsm as ywsm03,kfxxzl.DAOMH,BUsers.UserName,kfxxzl.logo,kfxxzl.MDMH ');
            SQL.Add('FROM ypzl  ');
            SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
            SQL.Add('LEFT JOIN xxzlkf xxzlkf ON ypzl.XieXing = xxzlkf.XieXing AND ypzl.SheHao = xxzlkf.SheHao ');
            SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
            SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
            SQL.Add('LEFT JOIN lbzls lbzls03 ON kfxxzl.xiegn = lbzls03.lbdh AND lbzls03.lb = ''03'' ');
            SQL.Add('Left JOIN BUsers on BUsers.UserID=ypzl.UserID ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
           // memo2.text:=sql.text;
            Active:=true;
          end;
          //抬頭

          eclApp.Cells(1,2):='SAMPLE ORDER';
          eclApp.Cells(2,1):=YPZL.FieldByName('YPDH').AsString+'('+YPZL.FieldByName('ProductionLocation').AsString+')';     //編號
          eclApp.Range['D2','E2'].Merge;
          eclApp.Range['D2','E2'].HorizontalAlignment := -4108; //水平置中
          eclApp.Cells(2,4):='SR:'+YPZL.FieldByName('devcode').AsString; //
          eclApp.Range['F2','G2'].Merge;
          eclApp.Range['F2','G2'].HorizontalAlignment := -4108; //水平置中
          eclApp.Cells(2,6):='FD:'+YPZL.FieldByName('fd').AsString; //
          eclApp.Cells(2,17):='User:'+TempQry.FieldByName('UserName').AsString+'['+TempQry.FieldByName('UserID').AsString+']';
          eclApp.Cells(2,12):=FormatDateTime('YYYY/MM/DD',Date()); //日期
          //
          eclApp.Cells(4,4):=TempQry.FieldByName('KFJC').AsString;
          eclApp.Cells(4,7):=TempQry.FieldByName('JiJie').AsString+'('+TempQry.FieldByName('KFLX2').AsString+')';
          eclApp.Cells(4,9):=TempQry.FieldByName('MH').AsString;
          eclApp.Cells(5,4):=TempQry.FieldByName('article').AsString;
          eclApp.Cells(5,7):=TempQry.FieldByName('YWSM').AsString;
          eclApp.Cells(5,9):=TempQry.FieldByName('LH').AsString;
          eclApp.Cells(6,4):=TempQry.FieldByName('XieMing').AsString;

          eclApp.Cells(6,7):=TempQry.FieldByName('Quantity').AsString;
          eclApp.Cells(6,9):=TempQry.FieldByName('BH').AsString;
          eclApp.Cells(7,4):=TempQry.FieldByName('YPCC').AsString+'('+TempQry.FieldByName('logo').AsString+')';
          eclApp.Cells(7,7):=TempQry.FieldByName('XieXing').AsString;
          eclApp.Cells(8,4):=TempQry.FieldByName('YSSM').AsString;
          eclApp.Cells(8,7):=TempQry.FieldByName('SheHao').AsString+'('+TempQry.FieldByName('ywsm03').AsString+')';
          eclApp.Cells(9,4):='['+TempQry.FieldByName('YPCCO').AsString+']'+TempQry.FieldByName('DDMH').AsString;
          eclApp.Cells(9,7):='['+TempQry.FieldByName('YPCCL').AsString+']'+TempQry.FieldByName('XTMH').AsString;
          eclApp.Cells(10,7):='['+TempQry.FieldByName('YPCCM').AsString+']'+TempQry.FieldByName('MDMH').AsString;
        //  eclApp.Cells(10,3):=TempQry.FieldByName('KFRQ').AsString;
        // MODIFY DELIVERY DATE IS ETA
          eclApp.Cells(10,4):=TempQry.FieldByName('JHRQ').AsString;
          //
   //       eclApp.Cells(10,7):=TempQry.FieldByName('FINDATE').AsString;
          eclApp.Cells(10,9):=TempQry.FieldByName('DAOMH').AsString;
          eclApp.Rows[1].RowHeight := 50;
          if tempqry.FieldByName('kfjd').asstring='CR1' then
             checkshoePic:=StringReplace(tempqry.FieldByName('imgnamer1').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
          if tempqry.FieldByName('kfjd').asstring='CR2' then
             checkshoePic:=StringReplace(tempqry.FieldByName('imgnamer2').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
          if tempqry.FieldByName('kfjd').asstring='CR3' then
             checkshoePic:=StringReplace(tempqry.FieldByName('imgnamer3').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
          if tempqry.FieldByName('kfjd').asstring='CFM' then
             checkshoePic:=StringReplace(tempqry.FieldByName('imgnameCFM').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
          //funcObj.WriteErrorLog(checkshoePic);
          if FileExists(checkshoePic)=true then
          begin
            workSheet := eclApp.WorkSheets[1];
            workRange :=eclApp.Range[eclApp.Cells.Item[4,10],eclApp.Cells.item[10, 14]]; //目?位置
            picture := workSheet.pictures.Insert(checkshoePic);
            picture.left := workRange.left + 8; //左
            picture.top := workRange.top + 8; //高
            picture.width := workRange.width - 16; //?度
            picture.height := workRange.height - 8; //高度
            picture := Unassigned;
          end;

          eclApp.Columns[2].ColumnWidth := 7;
          eclApp.Columns[13].ColumnWidth := 9;
          eclApp.Columns[14].ColumnWidth := 6;
          eclApp.Columns[16].ColumnWidth := 10;

          //備料清單
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('SELECT CASE WHEN Type = ''GiaCong'' THEN Type ELSE ''Normal'' END AS Type, MJBH, CLBH, CQDH, YWPM, DWBH, CSBH, LOSS, ZSYWJC, SUM(CLSL) AS CLSL, Level FROM (');
            SQL.Add('  SELECT YPZLS.CLBH AS MJBH, YPZLS.CLBH, YPZLS.CSBH, YPZLS.CLSL, CLZL.YWPM, CLZL.DWBH, CLZL.CQDH, CLZL.CLZMLB, YPZLS.LOSS, ZSZL.ZSYWJC, 1 AS Level, CLZHZL.Type, YPZLS.CSBH AS SuppSeq FROM YPZLS');
            SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = YPZLS.CLBH');
            SQL.Add('  LEFT JOIN ZSZL ON ZSZL.zsdh = YPZLS.CSBH');
            SQL.Add('  LEFT JOIN (');
            SQL.Add('    SELECT DISTINCT CLDH, ''GiaCong'' AS Type FROM CLZHZL');
            SQL.Add('  ) AS CLZHZL ON YPZLS.CLBH = CLZHZL.CLDH');
            SQL.Add('  WHERE YPDH = ''' + YPZL.FieldByName('YPDH').AsString + '''');
            SQL.Add('  UNION ALL');
            SQL.Add('  SELECT YPZLS.CLBH AS MJBH, CLZHZL.CLDH1 AS CLBH,');
            SQL.Add('  CASE WHEN ((CLZHZL_DEV.ZSDH IS NOT NULL) AND (CLZHZL_DEV.ZSDH <> '''')) THEN CLZHZL_DEV.ZSDH ELSE CLZHZL.ZSDH END AS CSBH,');
            SQL.Add('  YPZLS.CLSL*CLZHZL.SYL AS CLSL, CLZL.YWPM, CLZL.DWBH, CLZL.CQDH, CLZL.CLZMLB, YPZLS.LOSS,');
            SQL.Add('  CASE WHEN ((CLZHZL_DEV.ZSDH IS NOT NULL) AND (CLZHZL_DEV.ZSDH <> '''')) THEN ZSZL_DEV.ZSYWJC ELSE ZSZL.ZSYWJC END AS ZSYWJC, 2 AS Level, ''GiaCong'' AS Type, YPZLS.CSBH AS SuppSeq FROM YPZLS');
            SQL.Add('  LEFT JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.CLDH');
            SQL.Add('  LEFT JOIN CLZHZL_DEV ON CLZHZL.CLDH = CLZHZL_DEV.CLDH AND CLZHZL.CLDH1 = CLZHZL_DEV.CLDH1');
            SQL.Add('  LEFT JOIN BWZL ON YPZLS.BWBH = BWZL.BWDH');
            SQL.Add('  LEFT JOIN CLZL ON CLZHZL.CLDH1 = CLZL.CLDH');
            SQL.Add('  LEFT JOIN ZSZL ON CLZHZL.ZSDH = ZSZL.ZSDH');
            SQL.Add('  LEFT JOIN ZSZL AS ZSZL_DEV ON CLZHZL_DEV.ZSDH = ZSZL_DEV.ZSDH');
            SQL.Add('  WHERE YPDH = ''' + YPZL.FieldByName('YPDH').AsString + ''' AND CLZHZL.SYL > 0');
            SQL.Add('  UNION ALL');
            SQL.Add('  SELECT CLZHZL2.MJBH, CLZHZL.CLDH1 AS CLBH,');
            SQL.Add('  CASE WHEN ((CLZHZL_DEV.ZSDH IS NOT NULL) AND (CLZHZL_DEV.ZSDH <> '''')) THEN CLZHZL_DEV.ZSDH ELSE CLZHZL.ZSDH END AS CSBH,');
            SQL.Add('  CLZHZL2.CLSL*CLZHZL.SYL AS CLSL, CLZL.YWPM, CLZL.DWBH, CLZL.CQDH, CLZL.CLZMLB, CLZHZL2.LOSS,');
            SQL.Add('  CASE WHEN ((CLZHZL_DEV.ZSDH IS NOT NULL) AND (CLZHZL_DEV.ZSDH <> '''')) THEN ZSZL_DEV.ZSYWJC ELSE ZSZL.ZSYWJC END AS ZSYWJC, 3 AS Level, ''GiaCong'' AS Type, SuppSeq FROM (');
            SQL.Add('    SELECT YPZLS.CLBH AS MJBH, CLZHZL.CLDH1 AS CLBH,');
            SQL.Add('    CASE WHEN ((CLZHZL_DEV.ZSDH IS NOT NULL) AND (CLZHZL_DEV.ZSDH <> '''')) THEN CLZHZL_DEV.ZSDH ELSE CLZHZL.ZSDH END AS CSBH,');
            SQL.Add('    YPZLS.CLSL*CLZHZL.SYL AS CLSL, CLZL.YWPM, CLZL.DWBH, CLZL.CLZMLB, YPZLS.LOSS,');
            SQL.Add('    CASE WHEN ((CLZHZL_DEV.ZSDH IS NOT NULL) AND (CLZHZL_DEV.ZSDH <> '''')) THEN ZSZL_DEV.ZSYWJC ELSE ZSZL.ZSYWJC END AS ZSYWJC, YPZLS.CSBH AS SuppSeq FROM YPZLS');
            SQL.Add('    INNER JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.CLDH');
            SQL.Add('    LEFT JOIN CLZHZL_DEV ON CLZHZL.CLDH = CLZHZL_DEV.CLDH AND CLZHZL.CLDH1 = CLZHZL_DEV.CLDH1');
            SQL.Add('    LEFT JOIN BWZL ON YPZLS.BWBH = BWZL.BWDH');
            SQL.Add('    LEFT JOIN CLZL ON CLZHZL.CLDH1 = CLZL.CLDH');
            SQL.Add('    LEFT JOIN ZSZL ON CLZHZL.ZSDH = ZSZL.ZSDH');
            SQL.Add('    LEFT JOIN ZSZL AS ZSZL_DEV ON CLZHZL_DEV.ZSDH = ZSZL_DEV.ZSDH');
            SQL.Add('    WHERE YPDH = ''' + YPZL.FieldByName('YPDH').AsString + ''' AND CLZHZL.SYL > 0 AND CLZL.CLZMLB = ''Y''');
            SQL.Add('  ) AS CLZHZL2');
            SQL.Add('  INNER JOIN CLZHZL ON CLZHZL2.CLBH = CLZHZL.CLDH');
            SQL.Add('  LEFT JOIN CLZHZL_DEV ON CLZHZL.CLDH = CLZHZL_DEV.CLDH AND CLZHZL.CLDH1 = CLZHZL_DEV.CLDH1');
            SQL.Add('  LEFT JOIN CLZL ON CLZHZL.CLDH1 = CLZL.CLDH');
            SQL.Add('  LEFT JOIN ZSZL ON CLZHZL.ZSDH = ZSZL.ZSDH');
            SQL.Add('  LEFT JOIN ZSZL AS ZSZL_DEV ON CLZHZL_DEV.ZSDH = ZSZL_DEV.ZSDH');
            SQL.Add(') AS YPZLS');
            SQL.Add('WHERE CLBH NOT LIKE ''W%''');
            SQL.Add('GROUP BY MJBH, CLBH, YWPM, DWBH, CQDH, CSBH, LOSS, ZSYWJC, Level, Type, SuppSeq');
            SQL.Add('ORDER BY CASE WHEN Type = ''GiaCong'' THEN Type ELSE ''Normal'' END DESC, CASE WHEN SuppSeq = '''' THEN ''ZZZ'' ELSE SuppSeq END, MJBH, Level, CLBH');
            Active := true;
            if (TempQry.RecordCount > 0) then
            begin
              Offset:=14;
              First;
              for i:=0 to TempQry.RecordCount-1  do
              begin
                eclApp.ActiveSheet.Rows[13].Copy;
                eclApp.ActiveSheet.Rows[14].Insert(-4121);
                eclApp.Range[eclApp.Cells[14, 1], eclApp.Cells[14, 17]].UnMerge;
                eclApp.Range[eclApp.Cells[14, 1], eclApp.Cells[14, 2]].Merge;
                eclApp.Range[eclApp.Cells[14, 4], eclApp.Cells[14, 11]].Merge;
                eclApp.Range[eclApp.Cells[14, 1], eclApp.Cells[14, 17]].Borders.LineStyle := xlContinuous;
              end;
              First;
              BeforeXH := '';
              LastType := '';
              FlowID := 0;
              FlowNum := '';
              for i:=0 to TempQry.RecordCount-1  do
              begin
                if (TempQry.FieldByName('Type').AsString <> LastType) then
                begin
                  eclApp.ActiveSheet.Rows[Offset+i+1].Insert;
                  eclApp.Range[eclApp.Cells[Offset+i, 1], eclApp.Cells[Offset+i, 17]].Merge;
                  eclApp.Range[eclApp.Cells[Offset+i, 1], eclApp.Cells[Offset+i, 17]].Borders.LineStyle := xlNone;
                  eclApp.ActiveSheet.Rows[Offset+i+1].Insert;
                  eclApp.Range[eclApp.Cells[Offset+i+1, 1], eclApp.Cells[Offset+i+1, 17]].Merge;
                  eclApp.Cells[Offset+i+1, 1] := TempQry.FieldByName('Type').AsString;
                  eclApp.Cells[Offset+i+1, 1].Font.Size := 16;
                  eclApp.Range[eclApp.Cells[Offset+i+1, 1], eclApp.Cells[Offset+i+1, 17]].Borders.LineStyle := xlContinuous;

                  Inc(Offset, 2);
                  eclApp.Range[eclApp.Cells[Offset+i, 1], eclApp.Cells[Offset+i, 2]].Merge;
                  eclApp.Range[eclApp.Cells[Offset+i, 4], eclApp.Cells[Offset+i, 11]].Merge;
                  LastType := TempQry.FieldByName('Type').AsString;
                  FlowID := 0;
                end;

                //流水號
                eclApp.ActiveSheet.Rows[Offset+i].Font.Size := 16;
                eclApp.ActiveSheet.Rows[Offset+i].RowHeight := 30;
                if (TempQry.FieldByName('MJBH').AsString <> BeforeXH) then
                begin
                  Inc(FlowID);
                  FlowNum := Format('%.2d', [FlowID]);
                end else
                begin
                  FlowNum := '';
                end;
                BeforeXH := TempQry.FieldByName('MJBH').AsString;
                //
                eclApp.Cells[Offset+i, 1] := FlowNum;
                eclApp.Cells[Offset+i, 3] := TempQry.FieldByName('CLBH').AsString + '(' + TempQry.FieldByName('CQDH').AsString + ')';
                eclApp.Cells[Offset+i, 4] := TempQry.FieldByName('YWPM').AsString;
                eclApp.Cells[Offset+i, 12] := TempQry.FieldByName('DWBH').AsString;
                eclApp.Cells[Offset+i, 13] := TempQry.FieldByName('CLSL').AsString;  
                eclApp.Cells[Offset+i, 14] := YPZL.FieldByName('Quantity').AsString;
                eclApp.Cells[Offset+i, 15] := TempQry.FieldByName('LOSS').AsString;
                if (YPZL.FieldByName('Quantity').AsString <> '') then
                  eclApp.Cells[Offset+i, 16] := YPZL.FieldByName('Quantity').Value * TempQry.FieldByName('CLSL').Value;
                eclApp.Cells[Offset+i, 17] := TempQry.FieldByName('ZSYWJC').AsString;
                TempQry.Next;
              end;
            end;
          end;

          //備註資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select LineNum,Remark,'''' as Remark2,'''' as Remark3,'''' as Remark4 from ypzls2 ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            sql.Add('union all');
            sql.Add('select distinct ypzls.CLBH, substring((clzl.ywpm  + '' ''  + cast((select a.bz + '' ''');
            sql.Add('                                                   from clbzzl a where a.cldh=b.cldh and a.zybb=''E'' ');
            sql.Add('                                                   order by a.cldh');
            sql.Add('                                       						FOR XML PATH('''')) as Varchar(1000))),1,250)  as MatBZ');
            sql.Add(', substring((clzl.ywpm  + '' ''  + cast((select a.bz + '' ''');
            sql.Add('                                                   from clbzzl a where a.cldh=b.cldh and a.zybb=''E'' ');
            sql.Add('                                                   order by a.cldh');
            sql.Add('                                       						FOR XML PATH('''')) as Varchar(1000))),251,500)  as MatBZ1');
            sql.Add(', substring((clzl.ywpm  + '' ''  + cast((select a.bz + '' ''');
            sql.Add('                                                   from clbzzl a where a.cldh=b.cldh and a.zybb=''E'' ');
            sql.Add('                                                   order by a.cldh');
            sql.Add('                                       						FOR XML PATH('''')) as Varchar(1000))),501,750)  as MatBZ2');
            sql.Add(', substring((clzl.ywpm  + '' ''  + cast((select a.bz + '' ''');
            sql.Add('                                                   from clbzzl a where a.cldh=b.cldh and a.zybb=''E'' ');
            sql.Add('                                                   order by a.cldh');
            sql.Add('                                       						FOR XML PATH('''')) as Varchar(1000))),751,1000)  as MatBZ3');
            sql.Add('from ypzls inner join clbzzl b');
            sql.Add('on ypzls.CLBH=b.cldh and b.zybb=''E''');
            sql.Add('inner join clzl on ypzls.CLBH=clzl.cldh');
            sql.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+'''');
            sql.Add('and left(ypzls.clbh,1) not in (''H'',''A'')');
            SQL.Add('order by LineNum ');
            //funcobj.WriteErrorLog(sql.Text);
            Active:=true;
            if RecordCount>0 then
            begin
              Offset:=13;
              First;
              for i:=0 to RecordCount-1  do
              begin
                if i<>RecordCount-1 then
                begin
                  eclApp.ActiveSheet.Rows[13].Copy;
                  eclApp.ActiveSheet.Rows[13].Insert(-4121);

                end;
              end;
              First;
              for i:=0 to RecordCount-1  do
              begin
                //  eclApp.ActiveSheet.Rows.Font.Size := 15;
                eclApp.ActiveSheet.Rows[Offset+i].RowHeight := 60;
                eclApp.Cells(Offset+i,1):=TempQry.FieldByName('LineNum').AsString;
                eclApp.Cells(Offset+i,3):=trim(TempQry.FieldByName('Remark').Value+TempQry.FieldByName('Remark2').Value+TempQry.FieldByName('Remark3').Value+TempQry.FieldByName('Remark4').Value);
                Next;
              end;
            end else
            begin
              eclApp.ActiveSheet.Rows[13].Delete;
            end;
          end;
          //材料

          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            if SubPart=false then
            begin
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,clzl.tyjh ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
              SQL.Add('ORDER BY YPZLS.YPDH , YPZLS.XH, YPZLS.XH1');
              //funcobj.WriteErrorLog(sql.Text);
            end else
            begin
              SQL.Add('select * from ( ');
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
              SQL.Add('union all ');
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
              SQL.Add(' ,ypzls.BWLB , ');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
              SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
              SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
              SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
              SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
              SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+'''  and CLZHZL.SYL>0  ');
              //二階材料
              SQL.Add('union all ');
              SQL.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
              SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH ');
              SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
              SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   ');
              SQL.Add(' from (');
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
              SQL.Add(' ,ypzls.BWLB , ');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
              SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
              SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
              SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
              SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
              SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
              SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+'''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
              SQL.Add(') clzhzl2');
              SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
              SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
              SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
              SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
              SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
              //
              SQL.Add(')  YPZLS order by   YPZLS.YPDH, YPZLS.XH , YPZLS.XH1 ,YPZLS.BWBH    ');
            end;
            Active:=true;
            if TempQry.RecordCount>0 then
            begin
              Offset:=12;
              First;
              for i:=0 to TempQry.RecordCount-1  do
              begin
                if i<>RecordCount-1 then
                begin
                  eclApp.ActiveSheet.Rows[12].Copy;
                  eclApp.ActiveSheet.Rows[12].Insert(-4121);
                end;
              end;
              First;
              BeforeXH:='';
              FlowID:=0;
              FlowNum:='';
              for i:=0 to TempQry.RecordCount-1  do
              begin
                //流水號
                eclApp.ActiveSheet.Rows[Offset+i].Font.Size := 16;
                eclApp.ActiveSheet.Rows[Offset+i].RowHeight := 60;
                if TempQry.FieldByName('XH').AsString<>BeforeXH then
                begin
                  Inc(FlowID);
                  FlowNum:=Format('%.2d',[FlowID]);
                end else
                begin
                  FlowNum:='';
                end;
                BeforeXH:=TempQry.FieldByName('XH').AsString;
                //
                eclApp.Cells(Offset+i,1):=FlowNum;
                if Pos('-Child',TempQry.FieldByName('BWBH').AsString)>0 then
                  eclApp.Cells(Offset+i,2):=''
                else
                  eclApp.Cells(Offset+i,2):=TempQry.FieldByName('BWBH').AsString;
                eclApp.Cells(Offset+i,3):=TempQry.FieldByName('ywsm').AsString;
                if TempQry.FieldByName('CLBH').AsString<>'' then
                eclApp.Cells(Offset+i,4):=TempQry.FieldByName('CLBH').AsString+'('+TempQry.FieldByName('CQDH').AsString+')';
                eclApp.Cells(Offset+i,5):=TempQry.FieldByName('CLYWMC').AsString;
                eclApp.Cells(Offset+i,12):=TempQry.FieldByName('DWBH').AsString;
                eclApp.Cells(Offset+i,13):=TempQry.FieldByName('CLSL').AsString;
                eclApp.Cells(Offset+i,14):=YPZL.FieldByName('Quantity').AsString;
                eclApp.Cells(Offset+i,15):=TempQry.FieldByName('loss').AsString;
                if YPZL.FieldByName('Quantity').AsString<>'' then
                eclApp.Cells(Offset+i,16):=YPZL.FieldByName('Quantity').Value * TempQry.FieldByName('CLSL').Value ;
                eclApp.Cells(Offset+i,17):=TempQry.FieldByName('zsywjc').AsString;
                TempQry.Next;
              end;
            end else
            begin
              eclApp.ActiveSheet.Rows[12].Delete;
            end;
          end;
          eclApp.CutCopyMode := False;//取消最後Copy
          //
          eclApp.ActiveSheet.PageSetup.PrintTitleRows := '$1:$11';   //列印標題列
          eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
          showmessage('Succeed');
          eclApp.Visible:=True;
         except
            on F:Exception do
              showmessage(F.Message);
         end;
      end;
   end;
end;
procedure TFDExcelData.BDT6Click(Sender: TObject);
begin
    ExportSampleOrder();
end;

procedure TFDExcelData.Button6Click(Sender: TObject);
begin
  with compositions do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ddzl.BUYNO,kfxxzl.article,kfxxzl.devcode,UPPERmat,LININgmat,Insolemat,Outsolemat,UPPERmatDetail,LININgmatDetail,InsolematDetail,OutsolematDetail,cfmdate from xxzlkf');
	  sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
   	sql.Add('left join ddzl on ddzl.xiexing=xxzlkf.xiexing and ddzl.shehao=xxzlkf.shehao');
	  sql.Add('where kfxxzl.khdh=''036'' ');
    if edit2.text<>'' then
       sql.add('and  ddzl.buyno like '''+'%'+edit2.text+'%'+'''');
    if edit3.text<>'' then
       sql.add('and  kfxxzl.devcode like '''+'%'+edit3.text+'%'+'''');
    if checkbox2.Checked then
    begin
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    end;
	  sql.Add('group by ddzl.buyno,kfxxzl.article,kfxxzl.devcode,UPPERmat,LININgmat,Insolemat,Outsolemat,UPPERmatDetail,LININgmatDetail,InsolematDetail,OutsolematDetail,cfmdate');
    active:=true;
  end;
end;

procedure TFDExcelData.Button7Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  compositions.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Cells(1,1):='Buy';
        eclApp.Cells(1,2):='Style';
        eclApp.Cells(1,3):='SR#';
        eclApp.Cells(1,4):='Upper Main Material';
        eclApp.Cells(1,5):='Upper Material Composition';
        eclApp.Cells(1,6):='Linning Main Material';
        eclApp.Cells(1,7):='Linning Material Composition';
        eclApp.Cells(1,8):='Insole Main Material';
        eclApp.Cells(1,9):='Insole Material Composition';
        eclApp.Cells(1,10):='Outsole Main Material';
        eclApp.Cells(1,11):='Outsole Material Composition';
        eclApp.Cells(1,12):='Cfm date';
        eclApp.Cells(1,13):='Remark';
        compositions.First;
        j:=2;
        while   not   compositions.Eof   do
          begin
            for   i:=0   to  compositions.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=compositions.Fields[i].Value;
            end;
          compositions.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDExcelData.Button8Click(Sender: TObject);
begin
  if edit4.Text = '' then
  begin
     showmessage('You need to enter the season.');
     abort;
  end;
  with TearDown do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ypzl.productionlocation as Type,');
    sql.Add('xxzl.imgname as picture,');
    sql.Add('xxzlkf.Category,');
    sql.Add('kfxxzl.XieMing as Style_Name,');
    sql.Add('xxzlkf.Cut,');
    sql.Add('kfxxzl.YSSM as Colorway,');
    sql.Add('kfxxzl.devcode as SR,');
    sql.Add('xxzl.article as Rubber_SKU,');
    sql.Add('''''as Qty,');
    sql.Add('case when kfxxzl.kflx =''MU'' then ''NM'' when kfxxzl.kflx =''CU'' then ''NC'' else kfxxzl.kflx  end  as TECH_LEVEL,');
    sql.Add('xxzlkf.CT as Need_Commercialization_trial,');
    sql.Add('kfxxzl.Gender,');
    sql.Add('xxzlkf.ss as Sample_Size,');
    sql.Add('kfxxzl.xtmh as Last,');
    sql.Add('xxzlkf.lcpR as Last_cost_per_pair_Only_for_NewLast,');
    sql.Add('kfxxzl.DDMH as Converse_Authorize_Molds,');
    sql.Add('xxzlkf.scc as Size_Conversion_Chart,');
    sql.Add('xxzlkf.MMD as Main_Material_Description,');
    sql.Add(''''' as Material_Mini,');
    sql.Add(''''' as Long_Leadtime_Material,');
    sql.Add(''''' as Long_Leadtime_Material_Estimate,');
    sql.Add(''''' as Sample_Size_Fitting,');
    sql.Add('xxzlkf.PCs as PC_status,');
    sql.Add('XXZLKF.CDC as Cutting_Die_Code,');
    sql.Add('xxzlkf.NCd as New_Cutting_Die,');
    sql.Add('xxzlkf.Test,');
    sql.Add('xxzlkf.QP,');
    sql.Add('xxzlkf.remarks,');
    sql.Add('ypzl.fd,');
    sql.Add('xxzlkf.NA,');
    sql.Add('xxzlkf.cTS,');
    sql.Add(''''' as UpperMatDetail1,');
    sql.Add('XXZLKF.UpperMatDetail as UPPER,');
    sql.Add(''''' as LiningMatDetail1,');
    sql.Add('XXZLKF.LiningMatDetail as LINNING,');
    sql.Add(''''' as InsoleMatDetail1,');
    sql.Add('XXZLKF.InsoleMatDetail as Insole,');
    sql.Add('XXZLKF.OutsoleMatDetail as Outsole,');
    sql.Add('ypzl.ypdh');
    sql.Add('from xxzlkf');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    sql.Add('left join ypzl on ypzl.xiexing=xxzlkf.xiexing and ypzl.shehao=xxzlkf.shehao');
    sql.Add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('where kfxxzl.khdh=''036'' ');
    if edit4.text<>'' then
       sql.add('and  kfxxzl.jijie like '''+'%'+edit4.text+'%'+'''');
    if edit6.text<>'' then
       sql.add('and  kfxxzl.devcode like '''+'%'+edit6.text+'%'+'''');
    SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
    SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add(' and ypzl.subtype in (''Inline'',''Great@Good'') ');
    if ComboBox11.Text<>'' then
      SQL.Add(' and YPZL.KFJD like ''%'+ComboBox11.Text+'%'' ');
    if ComboBox12.Text <> '' then
      SQL.add('and ypzl.fd = '''+ComboBox12.Text+''' ');
    SQL.Add(' and left(YPZL.ypdh,4) = ''LAIV'' ');
    SQL.Add('order by ypzl.ypdh');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' if object_id('+''''+'tempdb..#MaterialMOQ'+''''+') is not null  ');
    sql.add('begin   drop table #MaterialMOQ end   ');
    SQL.Add('select *');
    SQL.Add('into #MaterialMOQ ');
    SQL.Add('from ( ');
    SQL.Add('select MaterialMOQ.REMARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,ypzls.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,');
    SQL.Add('MaterialMOQ.ProdLeadTime,zszl_dev.country as Location,MaterialMOQ.sampleprice,MaterialMOQ.forecast_leadtime,');
    SQL.Add('MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice,YPZLs.ypdh');
    SQL.Add('from ( ');
    SQL.Add('select kfxxzl.jijie,kfxxzl.devcode,a.* from (');
    SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
    SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE 1=1 and clzl.clzmlb=''N'' ');
    SQL.Add('union all ');
    SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
    SQL.Add(' ,ypzls.BWLB , ');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('WHERE 1=1  and CLZHZL.SYL>0 and clzl.clzmlb=''N'' ');
    SQL.Add('union all ');
    SQL.Add('Select clzl.cltd,clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
    SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH ');
    SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
    SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   ');
    SQL.Add(' from (');
    SQL.Add('SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
    SQL.Add(' ,ypzls.BWLB , ');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc ');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add('WHERE 1=1  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
    SQL.Add(')  a ');
    SQL.Add('left join ypzl on a.ypdh=ypzl.ypdh');
    SQL.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    SQL.Add(')  YPZLS ');
    SQL.Add('left join (');
    SQL.Add('  select season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK  from (');
    SQL.Add('   select season,CLBH,SampleLeadTime,Prodleadtime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,ExtraPrice,REMARK,zsbh,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY ');
    SQL.Add('Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from MaterialMOQ');
    SQL.Add('  ) MOQ  ');
    SQL.Add(') MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH and MaterialMOQ.season=YPZLS.jijie');

    SQL.Add('left join (select * from zszl_dev where gsbh=''CDC'') zszl_dev on zszl_dev.zsdh=YPZLS.csbh');
    SQL.Add(' where YPZLS.ypdh in (');
    sql.Add('                       select ypzl.ypdh');
    sql.Add('                       from xxzlkf');
	  sql.Add('                       left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    sql.Add('                       left join ypzl on ypzl.xiexing=xxzlkf.xiexing and ypzl.shehao=xxzlkf.shehao');
    sql.Add('                       left join xxzl on xxzl.xiexing=kfxxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
	  sql.Add('                       where kfxxzl.khdh=''036'' ');
    if edit4.text<>'' then
       sql.add('                    and  kfxxzl.jijie like '''+'%'+edit4.text+'%'+'''');
    if edit6.text<>'' then
       sql.add('                    and  kfxxzl.devcode like '''+'%'+edit6.text+'%'+'''');
    SQL.Add('                       and kfxxzl.xieming not like ''%NULLIFY%'' ');
    SQL.Add('                       and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add('                       and left(YPZL.ypdh,4) = ''LAIV'' ');
    if ComboBox11.Text<>'' then
      SQL.Add('                     and YPZL.KFJD like ''%'+ComboBox11.Text+'%'' ');
    if ComboBox12.Text <> '' then
      SQL.add('                     and ypzl.fd = '''+ComboBox12.Text+''' ');
    SQL.Add('                       and ypzl.subtype=''Inline'' )');
    SQL.Add('group by MaterialMOQ.REMARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,ypzls.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,');
    SQL.Add('MaterialMOQ.ProdLeadTime,MaterialMOQ.sampleprice,MaterialMOQ.forecast_leadtime,');
    SQL.Add('MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice,YPZLs.ypdh,zszl_dev.country  ) MaterialMOQ where MaterialMOQ.season is not null ');
    SQL.Add('order by MaterialMOQ.ypdh ');
    //funcobj.WriteErrorLog(sql.Text);
    execsql;
  end;


  with MOQMax do
  begin
     active:=false;
     sql.Clear;
     sql.add('  if object_id('+''''+'tempdb..#MOQMax'+''''+') is not null  ');
     sql.add('begin   drop table #MOQMax end   ');
     SQL.Add('select   max (TotalMax) as TotalMax,ypdh,Location,max (ShipMax) as ShipMax');
     SQL.Add('into #MOQMax ');
     SQL.Add('from(select ');
     SQL.Add('case when max(Ship1) is null then '''' else max(Ship1) end as ShipMax ');
     SQL.Add(',case when max(Ship1) is null then '''' else max(Ship1)+16 end as TotalMax,ypdh,Location');
     SQL.Add('from( select  ');
     SQL.Add('case when Location in (''Korea'') then  max(forecast_leadtime) end as ''Ship1'',ypdh,Location  ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ group by ypdh,Location');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship2) is null then '''' else max(Ship2) end as ShipMax ');
     SQL.Add(',case when max(Ship2) is null then '''' else max(Ship2)+15 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''Brazil'') then  max(forecast_leadtime)end as ''Ship2'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ  group by ypdh,Location ');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship3) is null then '''' else max(Ship3) end as ShipMax ');
     SQL.Add(',case when max(Ship3) is null then '''' else max(Ship3)+14 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''Taiwan'',''China'',''HongKong'',''Thailand'') then max(forecast_leadtime)end as ''Ship3'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ  group by ypdh,Location ');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship4) is null then '''' else max(Ship4) end as ShipMax ');
     SQL.Add(',case when max(Ship4) is null then '''' else max(Ship4)+10 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''Italy'',''USA'') then  max(forecast_leadtime) end as ''Ship4'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ  group by ypdh,Location ');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship5) is null then '''' else max(Ship5) end as ShipMax ');
     SQL.Add(',case when max(Ship5) is null then '''' else max(Ship5)+2 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''VN'') then  max(forecast_leadtime) end as ''Ship5'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ  group by ypdh,Location ');
     SQL.Add(') MaxMOQ where Location<>''''');
     SQL.Add('group by ypdh,Location ');
     SQL.Add('order by  ypdh  ');
     //funcobj.WriteErrorLog(sql.Text);
     execsql;
  end;

   with MOQLeadtime do
   begin
     active:=false;
     sql.Clear;
     sql.add('  if object_id('+''''+'tempdb..#MOQleadTime'+''''+') is not null  ');
     sql.add('begin   drop table #MOQleadTime end   ');
     SQL.Add('select  MaxMOQ.ypdh,MaxMOQ.location,ShipMax');
     SQL.Add('into #MOQleadTime  ');
     SQL.Add('from (');
     SQL.Add('select max(#MOQMax.TotalMax) as TotalMax,#MOQMax.ypdh,#MOQMax.location ,max(#MOQMax.ShipMax) as ShipMax');
     SQL.Add('from #MOQMax ');
     SQL.Add('inner join ( ');
     SQL.Add('select  max (TotalMax) as TotalMax,ypdh');
     SQL.Add('from( select ');
     SQL.Add('case when max(Ship1) is null then '''' else max(Ship1) end as ShipMax ');
     SQL.Add(',case when max(Ship1) is null then '''' else max(Ship1)+16 end as TotalMax,ypdh,Location');
     SQL.Add('from( select  ');
     SQL.Add('case when Location in (''Korea'') then  max(forecast_leadtime) end as ''Ship1'',ypdh,Location  ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ group by ypdh,Location');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship2) is null then '''' else max(Ship2) end as ShipMax ');
     SQL.Add(',case when max(Ship2) is null then '''' else max(Ship2)+15 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''Brazil'') then  max(forecast_leadtime)end as ''Ship2'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ  group by ypdh,Location ');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship3) is null then '''' else max(Ship3) end as ShipMax ');
     SQL.Add(',case when max(Ship3) is null then '''' else max(Ship3)+14 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''Taiwan'',''China'',''HongKong'',''Thailand'') then max(forecast_leadtime)end as ''Ship3'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ  group by ypdh,Location ');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship4) is null then '''' else max(Ship4) end as ShipMax ');
     SQL.Add(',case when max(Ship4) is null then '''' else max(Ship4)+10 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''Italy'',''USA'') then  max(forecast_leadtime) end as ''Ship4'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh) #MaterialMOQ  group by ypdh,Location ');
     SQL.Add('union all ');
     SQL.Add('select case when max(Ship5) is null then '''' else max(Ship5) end as ShipMax ');
     SQL.Add(',case when max(Ship5) is null then '''' else max(Ship5)+2 end as TotalMax,ypdh,Location');
     SQL.Add('from( select case when Location in (''VN'') then  max(forecast_leadtime) end as ''Ship5'',ypdh,Location ');
     SQL.Add('from #MaterialMOQ where 1=1 and #MaterialMOQ.CLBH not in (''A010009132'',''A010009133'')');
     SQL.Add('group by Location,ypdh ) #MaterialMOQ  group by ypdh,Location ) MaxMOQ  ');
     SQL.Add('where MaxMOQ.Location<>'''' ');
     SQL.Add('group by ypdh  ');
     SQL.Add(') MaxMOQ on MaxMOQ.TotalMax=#MOQMax.TotalMax and #MOQMax.ypdh=MaxMOQ.ypdh  ');
     SQL.Add('group by #MOQMax.ypdh,#MOQMax.location ');
     SQL.Add(') MaxMOQ order by MaxMOQ.ypdh ');
     //funcobj.WriteErrorLog(sql.Text);
     execsql;
  end;
end;

procedure TFDExcelData.Button9Click(Sender: TObject);
begin
   ExcelSample(TearDownPic,'imgname');
end;

procedure TFDExcelData.Excelsample(TearDownPic:TQuery;imgname:String);
function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,numerical,f,t,number,Countmat:integer;
      CLBH : OleVariant;
      picture : OleVariant;
      workRange : OleVariant;
      workSheet : OleVariant;
      CLBHTT: string;
      CLBHMax: string;
      CLBHDay: string;
      checkshoePic,MLETD,FMLETD,MLETDNULL,FMLETDNULL,MLNEWETD,FMLNEWETD: string;
begin
    if TearDown.Active then
    begin
      if TearDown.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;

    with TearDownPic do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select ypzl.productionlocation as Type,');
      sql.Add('xxzl.'+imgname+',');
      sql.Add('xxzlkf.Category,');
      sql.Add('kfxxzl.XieMing as Style_Name,');
      sql.Add('xxzlkf.Cut,');
      sql.Add('kfxxzl.YSSM as Colorway,');
      sql.Add('kfxxzl.devcode as SR,');
      sql.Add('xxzl.article as Rubber_SKU,');
      sql.Add('''''as Qty,');
      sql.Add('case when kfxxzl.kflx =''MU'' then ''NM'' when kfxxzl.kflx =''CU'' then ''NC'' else kfxxzl.kflx  end  as TECH_LEVEL,');
      sql.Add('xxzlkf.CT as Need_Commercialization_trial,');
      sql.Add('kfxxzl.Gender,');
      sql.Add('xxzlkf.ss as Sample_Size,');
      sql.Add('kfxxzl.xtmh as Last,');
      sql.Add('xxzlkf.lcpR as Last_cost_per_pair_Only_for_NewLast,');
      sql.Add('kfxxzl.DDMH as Converse_Authorize_Molds,');
      sql.Add('xxzlkf.scc as Size_Conversion_Chart,');
      sql.Add('xxzlkf.MMD as Main_Material_Description');
      sql.Add('from xxzlkf');
      sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      sql.Add('left join ypzl on ypzl.xiexing=xxzlkf.xiexing and ypzl.shehao=xxzlkf.shehao');
      sql.Add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
      sql.Add('where kfxxzl.khdh=''036'' ');
      if edit4.text<>'' then
         sql.add('and  kfxxzl.jijie like '''+'%'+edit4.text+'%'+'''');
      if edit6.text<>'' then
         sql.add('and  kfxxzl.devcode like '''+'%'+edit6.text+'%'+'''');
      SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
      SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
      SQL.Add(' and ypzl.subtype in (''Inline'',''Great@Good'') ');
      if ComboBox11.Text<>'' then
      SQL.Add(' and YPZL.KFJD like ''%'+ComboBox11.Text+'%'' ');
      if ComboBox12.Text <> '' then
      SQL.add('and ypzl.fd = '''+ComboBox12.Text+''' ');
      SQL.Add(' and left(YPZL.ypdh,4) = ''LAIV'' ');      
      SQL.Add('order by ypzl.ypdh');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with MOQ do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select ypdh,CLYWMC+''/''+zsywjc+''/MOQ''+'':''+convert(varchar,prodmoq,112)+''Y''+''/ ''+REMARK as CLYWMC');
      SQL.Add('from  #MaterialMOQ');
      SQL.Add('where prodmoq>0 and clbh not in (''V90M000404'')order by ypdh');
      active:=true;
    end;

    with Query1 do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select ypdh from  #MaterialMOQ group by ypdh order by ypdh');
      active:=true;
    end;

    with MOQleadTime do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select #MaterialMOQ.ypdh,#MaterialMOQ.CLYWMC+''/''+#MaterialMOQ.zsywjc+''/''+#MaterialMOQ.location as CLYWMC');
      SQL.Add('from  #MOQleadTime');
      SQL.Add('inner join #MaterialMOQ on  #MaterialMOQ.ypdh=#MOQleadTime.ypdh and #MOQleadTime.Shipmax= #MaterialMOQ.forecast_leadtime');
      SQL.Add('and #MOQleadTime.location=#MaterialMOQ.location');
      //SQL.Add('group by #MaterialMOQ.ypdh,#MaterialMOQ.CLYWMC,#MaterialMOQ.zsywjc,#MaterialMOQ.location');
      SQL.Add('order by #MaterialMOQ.ypdh');
      active:=true;
    end;

    with MOQleadDay do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select #MaterialMOQ.ypdh,#MaterialMOQ.CLYWMC as CLBH,#MaterialMOQ.location,convert(varchar,#MaterialMOQ.forecast_leadtime,112)+''Days'' as CLYWMC');
      SQL.Add('from  #MOQleadTime');
      SQL.Add('left join #MaterialMOQ on  #MOQleadTime.ypdh=#MaterialMOQ.ypdh and #MOQleadTime.Shipmax= #MaterialMOQ.forecast_leadtime');
      SQL.Add('and #MOQleadTime.location=#MaterialMOQ.location');
      //SQL.Add('group by #MaterialMOQ.ypdh,#MaterialMOQ.location,#MaterialMOQ.forecast_leadtime');
      SQL.Add('order by #MaterialMOQ.ypdh');
      active:=true;
    end;

    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_SN74.xls'),Pchar(AppDir+'Additional\Develop_SN74.xls'),false);
    if FileExists(AppDir+'Additional\Develop_SN74.xls') then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Develop_SN74.xls');
        WorkBook:=eclApp.WorkBooks.Open(AppDir+'Additional\Develop_SN74.xls');
        eclApp.Cells(1,1):='S'+Edit4.Text+' Inlne New Project reviewing List';
        TearDownPic.First;
        j:=5;
        numerical:=1;
        f:=0;
        number:=1;
        Countmat:=5;
        CLBHTT:='';
        CLBHMax:='';
        CLBHDay:='';
        while   not   TearDown.Eof   do
        begin
            for   i:=22   to  TearDown.fieldcount-2  do
            begin
                eclApp.Cells(j,i+2):=TearDown.Fields[i].Value;
            end;
            TearDown.Next;
            inc(j);
        end;
        j:=5;
        while   not   TearDownPic.Eof   do
        begin
            for   i:=0   to  TearDownPic.fieldcount-1  do
            begin
                eclApp.Cells(j,i+2):=TearDownPic.Fields[i].Value;
                eclApp.Cells(j,1):=numerical;
            end;
            eclApp.Rows[j].RowHeight := 77;
            checkshoePic:=StringReplace(TearDownPic.FieldByName(''+imgname+'').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
            //funcObj.WriteErrorLog(checkshoePic);
            if FileExists(checkshoePic)=true then
            begin
                workSheet := workBook.WorkSheets[1];
                eclApp.WorkSheets[1].Activate;
                workSheet.Select;
                workSheet.Cells.Item[j,3]:='';
                workRange :=workSheet.Range[workSheet.Cells.Item[j,3],workSheet.Cells.item[j,3]];
                picture := workSheet.pictures.Insert(StringReplace(TearDownPic.FieldByName(''+imgname+'').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]));
                picture.left := workRange.left + 1;
                picture.top := workRange.top + 1;
                picture.width := workRange.width - 2;
                picture.height := workRange.height - 2;
                picture := Unassigned;
            end;
            TearDownPic.Next;
            inc(j);
            inc(numerical);
        end;
        
        //Material Mini
        Query1.First;
        while   not   MOQ.Eof   do
        begin
           if (Query1.Fields[f].Value  = MOQ.FieldByName('ypdh').AsString)  then
           begin
             CLBHTT:= CLBHTT+inttostr(number)+'/ '+MOQ.FieldByName('CLYWMC').AsString+''#13#10;
             MOQ.Next;
           end else
           begin
             eclApp.Cells(Countmat,20):=CLBHTT;
             CLBHTT:='';
             number:=0;
             inc(Countmat);
             Query1.Next;
           end;
           inc(number);
        end;
        eclApp.Cells(Countmat,20):=CLBHTT;

        //Long lead time material
        Query1.First;
        number:=1;
        Countmat:=5;
        while   not   MOQleadTime.Eof   do
        begin
           if (Query1.Fields[f].Value  = MOQleadTime.FieldByName('ypdh').AsString)  then
           begin
             CLBHMax:= CLBHMax+inttostr(number)+'/ '+MOQleadTime.FieldByName('CLYWMC').AsString+''#13#10;
             MOQleadTime.Next;
           end else
           begin
             eclApp.Cells(Countmat,21):=CLBHMax;
             CLBHMax:='';
             number:=0;
             inc(Countmat);
             Query1.Next;
           end;
           inc(number);
        end;
        eclApp.Cells(Countmat,21):=CLBHMax;

        //Long lead time material Day
        Query1.First;
        number:=1;
        Countmat:=5;
        while   not   MOQleadDay.Eof   do
        begin
           if (Query1.Fields[f].Value  = MOQleadDay.FieldByName('ypdh').AsString)  then
           begin
             if (MOQleadDay.FieldByName('location').AsString ='Korea')  then
             begin
                CLBHDay:= CLBHDay+inttostr(number)+'/ '+MOQleadDay.FieldByName('CLYWMC').AsString+'+'+'16Days'+''#13#10;
             end;
             if (MOQleadDay.FieldByName('location').AsString ='Brazil')  then
             begin
                CLBHDay:= CLBHDay+inttostr(number)+'/ '+MOQleadDay.FieldByName('CLYWMC').AsString+'+'+'15Days'+''#13#10;
             end;
             if (MOQleadDay.FieldByName('location').AsString ='Taiwan') or (MOQleadDay.FieldByName('location').AsString ='China')
             or (MOQleadDay.FieldByName('location').AsString ='HongKong') or (MOQleadDay.FieldByName('location').AsString ='Thailand') then
             begin
                CLBHDay:= CLBHDay+inttostr(number)+'/ '+MOQleadDay.FieldByName('CLYWMC').AsString+'+'+'14Days'+''#13#10;
             end;
             if (MOQleadDay.FieldByName('location').AsString ='USA') or (MOQleadDay.FieldByName('location').AsString ='Italy') then
             begin
                CLBHDay:= CLBHDay+inttostr(number)+'/ '+MOQleadDay.FieldByName('CLYWMC').AsString+'+'+'10Days'+''#13#10;
             end;
             if (MOQleadDay.FieldByName('location').AsString ='VN')  then
             begin
                CLBHDay:= CLBHDay+inttostr(number)+'/ '+MOQleadDay.FieldByName('CLYWMC').AsString+'+'+'2Days'+''#13#10;
             end;
             MOQleadDay.Next;
           end else
           begin
             eclApp.Cells(Countmat,22):=CLBHDay;
             CLBHDay:='';
             number:=0;
             inc(Countmat);
             Query1.Next;
           end;
           inc(number);
        end;

        eclApp.Cells(Countmat,22):=CLBHDay;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
        except
        on   F:Exception   do
          showmessage(F.Message);
        end;
    end;
end;

procedure TFDExcelData.Button10Click(Sender: TObject);
begin
{  if edit7.text='' then
  begin
    showmessage('type Season plz');
    abort;
  end; }
  with MLTQUERY do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select *, case when left(cldh,1) in (''A'',''C'') then ''Textile'' when left(cldh,1) =''K'' then ''Synthetic Leather''   when left(cldh,1) =''F'' then ''Leather'' else ''Others'' end MaterialCategory,');
    sql.Add('case when (left(cldh,1) in (''P'',''G'') and left (Supplier,5)<>''COSMO'') then ''Bottom'' when cltd=''VT De'' then ''Bottom''   else ''Upper'' end MaterialPartName from (');
    sql.Add('select * from (');                                                                                                         //原本為rank() 161028改為隨機只抓一筆最大值
    sql.Add('select *,PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance as MLT,row_number() over (partition by sub.ColorwayID+Material_Number');
    sql.Add('order by PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance+isnull(extraday,0) desc)RN from(');
    sql.Add('select CASE WHEN kfxxzl.devtype<>''SMU'' THEN ''Global'' when kfxxzl.devtype=''SMU'' then ''SMU'' else null END as Initial_Product_Line,');
    sql.Add(''' '' as Product_Line,');
    sql.Add('kfxxzl.jijie as Initial_Development_Season,');
    sql.Add(''' '' as New_Carryover,');
    sql.Add('xxzlkf.bucket as Product_Bucket,');
    sql.Add('left(kfxxzl.devcode,13) as ProductNumber,');
    sql.Add('left(kfxxzl.devcode,13)+''-''+xxzl.Xieming as Product_Name,');
    sql.Add('xxzl.xieming as Product_Description,');
    sql.Add('xxzlkf.cut,');
    sql.Add('kfxxzl.devcode as ColorwayID,');
    sql.Add('left(xxzl.article,6) as Base_Material_ID,');
    sql.Add('xxzl.article as Material_Number,');
    sql.Add('xxzlkf.Segment as Segment,');
    sql.Add('xxzlkf.category as Category,');
    sql.Add(''' '' as Design_Pack,');
    sql.Add('kfxxzl.kflx as TechLevel,');
    sql.Add('CFM.IDD as Initial_In_Store_Date,');
    sql.Add('''LYN'' as Development_Center,');
    sql.Add('''LYN'' as Fctory,');
    sql.Add('xxzlkf.colorwaystatus as Colorway_Status,');
    sql.Add('clzl.cldh,');
    sql.Add('clzl_flex.cldhflex,');
    sql.Add('clzl_flexs.cldhflexdes,');
    sql.Add('clzl.ywpm as Material_Description,');
    sql.Add('clzl.cltd,');
    sql.Add('zszl.zsywjc as Supplier,');
    sql.Add('''7'' as PO_collaboration,');
    sql.Add('main.prodleadtime as Material_Prod_LT,');
    sql.Add('main.totaltime as Material_Trans_LT,');
    sql.Add('''28'' as Shoes_production_LT,');
    sql.Add('''7'' as Good_Insurance,');
    sql.Add('xxzlkf.extra as ExtraMethod,');
    sql.Add('xxzlkf.Extraday,');
    sql.Add(''''' as Remarks,');
    sql.Add(''''' as Remarks2,');
    sql.Add(''''' as Remarks3,main.userdate,country');
    sql.Add('from (');
    sql.Add('select a.xiexing,a.shehao,a.jijie,a.clbh');
    sql.Add(',a.csbh,a.khdh,ZSZL_Dev.prodleadtime,ZSZL_Dev.country,ZSZL_Dev.shippingleadtimesea,ZSZL_Dev.customclearanceday,');
  //  sql.Add(',(isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0)) as totaltime');
    sql.Add('case when isnull(ZSZL_Dev.shippingleadtimesea,0)=0 then (isnull(ZSZL_Dev.shippingleadtimeair,0)+isnull(ZSZL_Dev.customclearanceday,0))');
    sql.Add('else  isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0) end as totaltime,ZSZL_Dev.userdate');
    sql.Add('from (');
    sql.Add('select xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh from xxzls');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
    if ComboBox16.Text = 'SKX' then
      sql.Add('where xxzl.khdh=''0075''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else if ComboBox16.Text = 'SRL' then
      sql.Add('where xxzl.khdh=''0077''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else
      sql.Add('where xxzl.khdh=''036''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''');

    sql.Add('union');
    sql.Add('select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh from xxzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
    if ComboBox16.Text = 'SKX' then
      sql.Add('where xxzl.khdh=''0075''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else if ComboBox16.Text = 'SRL' then
      sql.Add('where xxzl.khdh=''0077''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else
      sql.Add('where xxzl.khdh=''036''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''');

    sql.Add('union');
    sql.Add('select jijie,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,khdh from (');
    sql.Add('select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh,xxzl.khdh from xxzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
    if ComboBox16.Text = 'SKX' then
      sql.Add('where xxzl.khdh=''0075''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+''')clzhzl2')
    else if ComboBox16.Text = 'SRL' then
      sql.Add('where xxzl.khdh=''0077''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+''')clzhzl2')
    else
      sql.Add('where xxzl.khdh=''036''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+''')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.clbh');
    sql.Add('left join clzl on clzl.cldh=clzhzl.cldh1');
    sql.Add(')A');
    sql.Add('left join (');

    sql.Add('select * from (');
    sql.Add('select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,country,shippingleadtimeair,shippingleadtimesea,customclearanceday,userdate,row_number() over');
    sql.Add('(partition by zsbh+clbh order by userdate desc)RN from (');
    sql.Add('select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,ZSZL_DEV.COUNTRY as country,');
    sql.Add('country.shippingleadtimeair,country.shippingleadtimesea,country.customclearanceday,materialmoq.userdate,RANK() OVER ');
    sql.Add('(partition by zsbh+clbh order by left(season,2) desc)RN from MaterialMOQ');
    sql.Add('LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH='''+ComboBox16.Text+''')ZSZL_DEV ON ZSZL_DEV.ZSDH=MaterialMOQ.ZSBH');
    sql.Add('left join country on country.country=ZSZL_DEV.COUNTRY');
    sql.Add(')ZSZL_Dev where rn=1 )ZSZL_Dev where rn=1');
    sql.Add(')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh ');
    sql.Add('where a.Xiexing not like ''%Q%''  or  a.Xiexing not like ''%A%''  ');
    sql.Add(')main');

    sql.Add('left join kfxxzl on kfxxzl.xiexing=main.xiexing and kfxxzl.shehao=main.shehao');
    sql.Add('left join xxzlkf on main.xiexing=xxzlkf.xiexing and main.shehao=xxzlkf.shehao');
    sql.Add('left join xxzl on main.xiexing=xxzl.xiexing and main.shehao=xxzl.shehao');
    sql.Add('left join cfm on main.xiexing=cfm.xiexing and main.shehao=cfm.shehao');
    sql.Add('left join clzl on main.clbh=clzl.cldh');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('left join clzl_flex on main.clbh=clzl_flex.cldh');
    sql.Add('left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex');
    sql.Add(')sub)final where rn=1 and colorwayID like '''+'%'+edit8.text+'%'+'''');
    if CheckBox12.Checked then
      sql.Add('and Userdate between '''+formatdatetime('YYYY/MM/DD',DTP3.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP4.Date)+''' ');
    sql.Add('union'); //FC跟非FC分隔線     ------------------------------------------
    sql.Add('select * from (');                                                                                                         //原本為rank() 161028改為隨機只抓一筆最大值
    sql.Add('select *,PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance as MLT,row_number() over (partition by sub.ColorwayID+Material_Number');
    sql.Add('order by PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance+isnull(extraday,0) desc)RN from(');
    sql.Add('select CASE WHEN kfxxzl.devtype<>''SMU'' THEN ''Global_FC'' when kfxxzl.devtype=''SMU'' then ''SMU_FC'' else null END as Initial_Product_Line,');
    sql.Add(''' '' as Product_Line,');
    sql.Add('kfxxzl.jijie as Initial_Development_Season,');
    sql.Add(''' '' as New_Carryover,');
    sql.Add('xxzlkf.bucket as Product_Bucket,');
    sql.Add('left(kfxxzl.devcode,13) as ProductNumber,');
    sql.Add('left(kfxxzl.devcode,13)+''-''+xxzl.Xieming as Product_Name,');
    sql.Add('xxzl.xieming as Product_Description,');
    sql.Add('xxzlkf.cut,');
    sql.Add('kfxxzl.devcode as ColorwayID,');
    sql.Add('left(xxzl.article,6) as Base_Material_ID,');
    sql.Add('xxzl.article as Material_Number,');
    sql.Add('xxzlkf.Segment as Segment,');
    sql.Add('xxzlkf.category as Category,');
    sql.Add(''' '' as Design_Pack,');
    sql.Add('kfxxzl.kflx as TechLevel,');
    sql.Add('CFM.IDD as Initial_In_Store_Date,');
    sql.Add('''LYN'' as Development_Center,');
    sql.Add('''LYN'' as Fctory,');
    sql.Add('xxzlkf.colorwaystatus as Colorway_Status,');
    sql.Add('clzl.cldh,');
    sql.Add('clzl_flex.cldhflex,');
    sql.Add('clzl_flexs.cldhflexdes,');
    sql.Add('clzl.ywpm as Material_Description,'); 
    sql.Add('clzl.cltd,');
    sql.Add('zszl.zsywjc as Supplier,');
    sql.Add('''7'' as PO_collaboration,');
    sql.Add('main.prodleadtime as Material_Prod_LT,');
    sql.Add('main.totaltime as Material_Trans_LT,');
    sql.Add('''28'' as Shoes_production_LT,');
    sql.Add('''7'' as Good_Insurance,');
    sql.Add('xxzlkf.extra as ExtraMethod,');
    sql.Add('xxzlkf.Extraday,');
    sql.Add(''''' as Remarks,');
    sql.Add(''''' as Remarks2,');
    sql.Add(''''' as Remarks3,main.userdate,country');
    sql.Add('from (');
    sql.Add('select a.xiexing,a.shehao,a.jijie,a.clbh');
    sql.Add(',a.csbh,a.khdh,ZSZL_Dev.Forecast_Leadtime as prodleadtime,ZSZL_Dev.country,ZSZL_Dev.shippingleadtimesea,ZSZL_Dev.customclearanceday,');
  //  sql.Add(',(isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0)) as totaltime');
    sql.Add('case when isnull(ZSZL_Dev.shippingleadtimesea,0)=0 then (isnull(ZSZL_Dev.shippingleadtimeair,0)+isnull(ZSZL_Dev.customclearanceday,0))');
    sql.Add('else  isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0) end as totaltime,ZSZL_Dev.userdate');
    sql.Add('from (');
    sql.Add('select xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh from xxzls');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
    if ComboBox16.Text = 'SKX' then
      sql.Add('where xxzl.khdh=''0075''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else if ComboBox16.Text = 'SRL' then
      sql.Add('where xxzl.khdh=''0077''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else
      sql.Add('where xxzl.khdh=''036''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''');

    sql.Add('union');
    sql.Add('select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh from xxzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
    if ComboBox16.Text = 'SKX' then
      sql.Add('where xxzl.khdh=''0075''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else if ComboBox16.Text = 'SRL' then
      sql.Add('where xxzl.khdh=''0077''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''')
    else
      sql.Add('where xxzl.khdh=''036''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+'''');

    sql.Add('union');
    sql.Add('select jijie,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,khdh from (');
    sql.Add('select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh,xxzl.khdh from xxzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
    if ComboBox16.Text = 'SKX' then
      sql.Add('where xxzl.khdh=''0075''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+''')clzhzl2')
    else if ComboBox16.Text = 'SRL' then
      sql.Add('where xxzl.khdh=''0077''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+''')clzhzl2')
    else
      sql.Add('where xxzl.khdh=''036''  and len(xxzl.jijie)=''3'' and xxzl.jijie like '''+edit7.text+'%'+''')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.clbh');
    sql.Add('left join clzl on clzl.cldh=clzhzl.cldh1');
    sql.Add(')A');
    sql.Add('left join (');
    sql.Add('select * from (');
    sql.Add('select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,country,shippingleadtimeair,shippingleadtimesea,customclearanceday,userdate,row_number()');
    sql.Add(' over(partition by zsbh+clbh order by userdate desc)RN from (');
    sql.Add('select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,ZSZL_DEV.COUNTRY as country,');
    sql.Add('country.shippingleadtimeair,country.shippingleadtimesea,country.customclearanceday,materialmoq.userdate,RANK() OVER ');
    sql.Add('(partition by zsbh+clbh order by left(season,2) desc)RN from MaterialMOQ');
    sql.Add('LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH='''+ComboBox16.Text+''')ZSZL_DEV ON ZSZL_DEV.ZSDH=MaterialMOQ.ZSBH');
    sql.Add('left join country on country.country=ZSZL_DEV.COUNTRY');
    sql.Add(')ZSZL_Dev where rn=1 )ZSZL_Dev where rn=1');
    sql.Add(')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh ');

    sql.Add('where a.Xiexing not like ''%Q%''  or  a.Xiexing not like ''%A%''  ');
    sql.Add(')main');

    sql.Add('left join kfxxzl on kfxxzl.xiexing=main.xiexing and kfxxzl.shehao=main.shehao');
    sql.Add('left join xxzlkf on main.xiexing=xxzlkf.xiexing and main.shehao=xxzlkf.shehao');
    sql.Add('left join xxzl on main.xiexing=xxzl.xiexing and main.shehao=xxzl.shehao');
    sql.Add('left join cfm on main.xiexing=cfm.xiexing and main.shehao=cfm.shehao');
    sql.Add('left join clzl on main.clbh=clzl.cldh');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('left join clzl_flex on main.clbh=clzl_flex.cldh');
    sql.Add('left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex');
    sql.Add(')sub)final where rn=1 and colorwayID like '''+'%'+edit8.text+'%'+'''');
    if CheckBox12.Checked then
      sql.Add('and Userdate between '''+formatdatetime('YYYY/MM/DD',DTP3.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP4.Date)+''' ');
    sql.Add(')fctotal order by colorwayID');
    //showmessage(sql.Text);
    active:=true;
  end;
end;

procedure TFDExcelData.Button11Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  MLTQuery.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   MLTQuery.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=MLTQuery.fields[i].FieldName;
          end;

        MLTQuery.First;
        j:=2;
        while   not   MLTQuery.Eof   do
          begin
            for   i:=0   to  MLTQuery.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MLTQuery.Fields[i].Value;
            end;
          MLTQuery.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDExcelData.Button12Click(Sender: TObject);
begin
  with MLT_DevQuery do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select *,case when left(cldh,1) in (''A'',''C'') then ''Textile'' when left(cldh,1) =''K'' then ''Synthetic Leather''   when left(cldh,1) =''F'' then ''Leather'' else ''Others'' end MaterialCategory , ');
    sql.Add('case when (left(cldh,1) in (''P'',''G'') and left (Supplier,5)<>''COSMO'') then ''Bottom'' when cltd=''VT De'' then ''Bottom''   else ''Upper'' end MaterialPartName from (');
    sql.Add('select * from (');                                                                                                         //原本為rank() 161028改為隨機只抓一筆最大值
    sql.Add('select *,PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance as MLT,row_number() over (partition by sub.ColorwayID');
    sql.Add('order by PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance+isnull(extraday,0) desc)RN from(');
    sql.Add('select CASE WHEN kfxxzl.devtype<>''SMU'' THEN ''Global_FC'' when kfxxzl.devtype=''SMU'' then ''SMU_FC'' else null END as Initial_Product_Line,');
    sql.Add(''' '' as Product_Line,');
    sql.Add('kfxxzl.jijie as Initial_Development_Season,');
    sql.Add('''New'' as New_Carryover,');
    sql.Add('xxzlkf.bucket as Product_Bucket,');
    sql.Add('left(kfxxzl.devcode,13) as ProductNumber,');
    sql.Add('left(kfxxzl.devcode,13)+''-''+kfxxzl.Xieming as Product_Name,');
    sql.Add('kfxxzl.xieming as Product_Description,');
    sql.Add('xxzlkf.cut,');
    sql.Add('kfxxzl.devcode as ColorwayID,');
    sql.Add('left(kfxxzl.article,6) as Base_Material_ID,');
    sql.Add('kfxxzl.article as Material_Number,');
    sql.Add('xxzlkf.Segment,');
    sql.Add('xxzlkf.category as Category,');
    sql.Add(''' '' as Design_Pack,');
    sql.Add('case when kfxxzl.kflx = ''MU'' then ''NM'' when  kfxxzl.kflx = ''CU'' then ''NC'' else kfxxzl.kflx end  as TechLevel,');
    sql.Add('CFM.IDD as Initial_In_Store_Date,');
    sql.Add('''LYN(DC)'' as Development_Center,');
    sql.Add('''LYN(DC)'' as Fctory,');
    sql.Add('xxzlkf.colorwaystatus as Colorway_Status,');
    sql.Add('clzl.cldh,');
    sql.Add('clzl.ywpm as Material_Description,');
    sql.Add('zszl.zsywjc+''(''+main.country+'')'' as Supplier,');
   // sql.Add('clzl.cqdh as Location,');
    sql.Add('''7'' as PO_collaboration,');
    sql.Add('main.prodleadtime as Material_Prod_LT,');
    sql.Add('main.totaltime as Material_Trans_LT,');
    sql.Add('isnull(xxzlkf.Extraday,0)+28 as Shoes_production_LT,');
    sql.Add('''7'' as Good_Insurance,');
    sql.Add('case when xxzlkf.extra is null then ''No special process'' else xxzlkf.extra end as Factory_Remarks,');
    sql.Add('xxzlkf.Extraday,clzl_flex.cldhflex,clzl.cltd');
    sql.Add('from (');
    sql.Add('select a.xiexing,a.shehao,a.jijie,a.clbh');
    sql.Add(',a.csbh,a.khdh,ZSZL_Dev.prodleadtime,ZSZL_Dev.country,ZSZL_Dev.shippingleadtimesea,ZSZL_Dev.customclearanceday,');
   // sql.Add('(isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0)) as totaltime');
    sql.Add('case when isnull(ZSZL_Dev.shippingleadtimesea,0)=0 then (isnull(ZSZL_Dev.shippingleadtimeair,0)+isnull(ZSZL_Dev.customclearanceday,0))');
    sql.Add('else  isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0) end as totaltime');
    sql.Add('from (');
    sql.Add('select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,ypzls.clbh,ypzls.csbh,kfxxzl.khdh,ypzl.subtype from ypzls');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
    if ComboBox17.Text = 'SKX' then
      sql.Add('where kfxxzl.khdh=''0075'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else if ComboBox17.Text = 'SRL' then
      sql.Add('where kfxxzl.khdh=''0077'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else
      sql.Add('where kfxxzl.khdh=''036'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''');
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
    sql.Add('and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null) ');
    if combobox7.text<>'' then
       sql.Add('and ypzl.kfjd='''+combobox7.text+'''');
    if MLTsubtype.text<>'' then
       sql.Add('and ypzl.subtype='''+MLTsubtype.text+'''  ');
    if mltdevtype.text<>'' then
       sql.Add('and kfxxzl.devtype='''+mltdevtype.text+'''  ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,ypzls.clbh,ypzls.csbh,kfxxzl.khdh,ypzl.subtype');

    sql.Add('union');
    sql.Add('select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,kfxxzl.khdh,ypzl.subtype from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
    if ComboBox17.Text = 'SKX' then
      sql.Add('where kfxxzl.khdh=''0075'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else if ComboBox17.Text = 'SRL' then
      sql.Add('where kfxxzl.khdh=''0077'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else
      sql.Add('where kfxxzl.khdh=''036'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''');
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
    sql.Add('and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null) ');
    if combobox7.text<>'' then
       sql.Add('and ypzl.kfjd='''+combobox7.text+'''');
    if MLTsubtype.text<>'' then
       sql.Add('and ypzl.subtype='''+MLTsubtype.text+'''  ');
    if mltdevtype.text<>'' then
       sql.Add('and kfxxzl.devtype='''+mltdevtype.text+'''  ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1,clzhzl.zsdh,kfxxzl.khdh,ypzl.subtype');

    sql.Add('union');
    sql.Add('select jijie,kfjd,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,khdh,subtype from (');
    sql.Add('select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,kfxxzl.khdh,ypzl.subtype from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
    if ComboBox17.Text = 'SKX' then
      sql.Add('where kfxxzl.khdh=''0075'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else if ComboBox17.Text = 'SRL' then
      sql.Add('where kfxxzl.khdh=''0077'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else
      sql.Add('where kfxxzl.khdh=''036'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''');
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
    sql.Add('and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null) ');
    if combobox7.text<>'' then
       sql.Add('and ypzl.kfjd='''+combobox7.text+'''');
    if MLTsubtype.text<>'' then
       sql.Add('and ypzl.subtype='''+MLTsubtype.text+'''  ');
    if mltdevtype.text<>'' then
       sql.Add('and kfxxzl.devtype='''+mltdevtype.text+'''  ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1,clzhzl.zsdh,kfxxzl.khdh,ypzl.subtype');

    sql.Add(')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.clbh');
    sql.Add('left join clzl on clzl.cldh=clzhzl.cldh1');
    sql.Add(')A');
    sql.Add('left join (');
    sql.Add('select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,MaterialMOQ.location as country,');
    sql.Add('country.shippingleadtimeair,country.shippingleadtimesea,country.customclearanceday from MaterialMOQ');
    sql.Add('LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH='''+ComboBox17.Text+''')ZSZL_DEV ON ZSZL_DEV.ZSDH=MaterialMOQ.ZSBH ');
    sql.Add('left join Country on Country.Country=ZSZL_DEV.country');
    sql.Add(')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh and ZSZL_Dev.season=a.jijie');
    sql.Add('where a.Xiexing not like ''%Q%''  or  a.Xiexing not like ''%A%''');
    sql.Add(')main');

    sql.Add('left join kfxxzl on kfxxzl.xiexing=main.xiexing and kfxxzl.shehao=main.shehao');
    sql.Add('left join xxzlkf on main.xiexing=xxzlkf.xiexing and main.shehao=xxzlkf.shehao');
    sql.Add('left join cfm on main.xiexing=cfm.xiexing and main.shehao=cfm.shehao');
    sql.Add('left join clzl on main.clbh=clzl.cldh');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('left join clzl_flex on clzl_flex.cldh=main.clbh');
    sql.Add('where clzl.cldh not in (''A010009132'',''A010009133'',''A010009234'',''A010009233'',''A010009398'',''A010006825'',''A010006805'',''A010009400'',''A010006824'',''A010011250''');
    sql.Add(',''A010011110'',''A010013207'',''A010010749'',''A010009409'',''A010009401'',''A010009166'',''A010009165'',''A010009232'',''A010011248'',''A010012331'',''A010013215'',''A010009539'',''A010012039'')');  //2017/11/13量產&開發採購會同時跟供應商作業, 縮短此款鞋身縫合補強交期. 目前提報MLT時將不考慮此款尼龍鞋身縫合補強.
    sql.Add(')sub)final where 1=1');
    if not checkbox10.checked then
       sql.Add('and rn=1');
    if edit10.text<>'' then
       sql.Add('and colorwayID like '''+'%'+edit10.text+'%'+'''');

    sql.Add('union');
    sql.Add('select * from (');                                                                                                         //原本為rank() 161028改為隨機只抓一筆最大值
    sql.Add('select *,PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance as MLT,row_number() over (partition by sub.ColorwayID');
    sql.Add('order by PO_collaboration+isnull(Material_Prod_LT,0)+isnull(Material_Trans_LT,0)+Shoes_production_LT+Good_Insurance+isnull(extraday,0) desc)RN from(');
    sql.Add('select CASE WHEN kfxxzl.devtype<>''SMU'' THEN ''Global'' when kfxxzl.devtype=''SMU'' then ''SMU'' else null END as Initial_Product_Line,');
    sql.Add(''' '' as Product_Line,');
    sql.Add('kfxxzl.jijie as Initial_Development_Season,');
    sql.Add('''New'' as New_Carryover,');
    sql.Add('xxzlkf.bucket as Product_Bucket,');
    sql.Add('left(kfxxzl.devcode,13) as ProductNumber,');
    sql.Add('left(kfxxzl.devcode,13)+''-''+kfxxzl.Xieming as Product_Name,');
    sql.Add('kfxxzl.xieming as Product_Description,');
    sql.Add('xxzlkf.cut,');
    sql.Add('kfxxzl.devcode as ColorwayID,');
    sql.Add('left(kfxxzl.article,6) as Base_Material_ID,');
    sql.Add('kfxxzl.article as Material_Number,');
    sql.Add('xxzlkf.Segment,');
    sql.Add('xxzlkf.category as Category,');
    sql.Add(''' '' as Design_Pack,');
    sql.Add('case when kfxxzl.kflx = ''MU'' then ''NM'' when  kfxxzl.kflx = ''CU'' then ''NC'' else kfxxzl.kflx end  as TechLevel,');
    sql.Add('CFM.IDD as Initial_In_Store_Date,');
    sql.Add('''LYN(DC)'' as Development_Center,');
    sql.Add('''LYN(DC)'' as Fctory,');
    sql.Add('xxzlkf.colorwaystatus as Colorway_Status,');
    sql.Add('clzl.cldh,');
    sql.Add('clzl.ywpm as Material_Description,');
    sql.Add('zszl.zsywjc+''(''+main.country+'')'' as Supplier,');
   // sql.Add('clzl.cqdh as Location,');
    sql.Add('''7'' as PO_collaboration,');
    sql.Add('main.prodleadtime as Material_Prod_LT,');
    sql.Add('main.totaltime as Material_Trans_LT,');
    sql.Add('isnull(xxzlkf.Extraday,0)+28 as Shoes_production_LT,');
    sql.Add('''7'' as Good_Insurance,');
    sql.Add('case when xxzlkf.extra is null then ''No special process'' else xxzlkf.extra end as Factory_Remarks,');
    sql.Add('xxzlkf.Extraday,clzl_flex.cldhflex,clzl.cltd');
    sql.Add('from (');
    sql.Add('select a.xiexing,a.shehao,a.jijie,a.clbh');
    sql.Add(',a.csbh,a.khdh,ZSZL_Dev.Forecast_Leadtime as prodleadtime,ZSZL_Dev.country,ZSZL_Dev.shippingleadtimesea,ZSZL_Dev.customclearanceday,');
   // sql.Add('(isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0)) as totaltime');
    sql.Add('case when isnull(ZSZL_Dev.shippingleadtimesea,0)=0 then (isnull(ZSZL_Dev.shippingleadtimeair,0)+isnull(ZSZL_Dev.customclearanceday,0))');
    sql.Add('else  isnull(ZSZL_Dev.shippingleadtimesea,0)+isnull(ZSZL_Dev.customclearanceday,0) end as totaltime');
    sql.Add('from (');
    sql.Add('select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,ypzls.clbh,ypzls.csbh,kfxxzl.khdh,ypzl.subtype from ypzls');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
    if ComboBox17.Text = 'SKX' then
      sql.Add('where kfxxzl.khdh=''0075'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else if ComboBox17.Text = 'SRL' then
      sql.Add('where kfxxzl.khdh=''0077'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else
      sql.Add('where kfxxzl.khdh=''036'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''');
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
    sql.Add('and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null) ');
    if combobox7.text<>'' then
       sql.Add('and ypzl.kfjd='''+combobox7.text+'''');
    if MLTsubtype.text<>'' then
       sql.Add('and ypzl.subtype='''+MLTsubtype.text+'''  ');
    if mltdevtype.text<>'' then
       sql.Add('and kfxxzl.devtype='''+mltdevtype.text+'''  ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,ypzls.clbh,ypzls.csbh,kfxxzl.khdh,ypzl.subtype');

    sql.Add('union');
    sql.Add('select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,kfxxzl.khdh,ypzl.subtype from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
    if ComboBox17.Text = 'SKX' then
      sql.Add('where kfxxzl.khdh=''0075'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else if ComboBox17.Text = 'SRL' then
      sql.Add('where kfxxzl.khdh=''0077'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else
      sql.Add('where kfxxzl.khdh=''036'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''');
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
    sql.Add('and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null) ');
    if combobox7.text<>'' then
       sql.Add('and ypzl.kfjd='''+combobox7.text+'''');
    if MLTsubtype.text<>'' then
       sql.Add('and ypzl.subtype='''+MLTsubtype.text+'''  ');
    if mltdevtype.text<>'' then
       sql.Add('and kfxxzl.devtype='''+mltdevtype.text+'''  ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1,clzhzl.zsdh,kfxxzl.khdh,ypzl.subtype');

    sql.Add('union');
    sql.Add('select jijie,kfjd,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,khdh,subtype from (');
    sql.Add('select kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,kfxxzl.khdh,ypzl.subtype from ypzls');
    sql.Add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
    sql.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
    if ComboBox17.Text = 'SKX' then
      sql.Add('where kfxxzl.khdh=''0075'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else if ComboBox17.Text = 'SRL' then
      sql.Add('where kfxxzl.khdh=''0077'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''')
    else
      sql.Add('where kfxxzl.khdh=''036'' and kfxxzl.jijie like '''+'%'+edit9.text+'%'+'''');
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
    sql.Add('and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null) ');
    if combobox7.text<>'' then
       sql.Add('and ypzl.kfjd='''+combobox7.text+'''');
    if MLTsubtype.text<>'' then
       sql.Add('and ypzl.subtype='''+MLTsubtype.text+'''  ');
    if mltdevtype.text<>'' then
       sql.Add('and kfxxzl.devtype='''+mltdevtype.text+'''  ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd,ypzl.xiexing,ypzl.shehao,clzhzl.cldh1,clzhzl.zsdh,kfxxzl.khdh,ypzl.subtype');

    sql.Add(')clzhzl2');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.clbh');
    sql.Add('left join clzl on clzl.cldh=clzhzl.cldh1');
    sql.Add(')A');
    sql.Add('left join (');
    sql.Add('select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,MaterialMOQ.location as country,');
    sql.Add('country.shippingleadtimeair,country.shippingleadtimesea,country.customclearanceday from MaterialMOQ');
    sql.Add('LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH='''+ComboBox17.Text+''')ZSZL_DEV ON ZSZL_DEV.ZSDH=MaterialMOQ.ZSBH ');
    sql.Add('left join Country on Country.Country=ZSZL_DEV.country');
    sql.Add(')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh and ZSZL_Dev.season=a.jijie');
    sql.Add('where a.Xiexing not like ''%Q%''  or  a.Xiexing not like ''%A%''');
    sql.Add(')main');

    sql.Add('left join kfxxzl on kfxxzl.xiexing=main.xiexing and kfxxzl.shehao=main.shehao');
    sql.Add('left join xxzlkf on main.xiexing=xxzlkf.xiexing and main.shehao=xxzlkf.shehao');
    sql.Add('left join cfm on main.xiexing=cfm.xiexing and main.shehao=cfm.shehao');
    sql.Add('left join clzl on main.clbh=clzl.cldh');
    sql.Add('left join zszl on zszl.zsdh=main.csbh');
    sql.Add('left join clzl_flex on clzl_flex.cldh=main.clbh');
    sql.Add('where clzl.cldh not in (''A010009132'',''A010009133'',''A010009234'',''A010009233'',''A010009398'',''A010006825'',''A010006805'',''A010009400'',''A010006824'',''A010011250''');
    sql.Add(',''A010011110'',''A010013207'',''A010010749'',''A010009409'',''A010009401'',''A010009166'',''A010009165'',''A010009232'',''A010011248'',''A010012331'',''A010013215'',''A010009539'',''A010012039'')');  //2017/11/13量產&開發採購會同時跟供應商作業, 縮短此款鞋身縫合補強交期. 目前提報MLT時將不考慮此款尼龍鞋身縫合補強.
    sql.Add(')sub)final where 1=1');
    if not checkbox10.checked then
       sql.Add('and rn=1');
    if edit10.text<>'' then
       sql.Add('and colorwayID like '''+'%'+edit10.text+'%'+'''');
    sql.Add(')fctotal order by colorwayID');
   // showmessage(sql.text);
    active:=true;
  end;
end;

procedure TFDExcelData.Edit9Change(Sender: TObject);
begin
 with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select kfjd  from ypzl');
    Sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    Sql.add('where kfxxzl.jijie='''+edit9.text+''' and kfxxzl.devtype='''+MLTDEVTYPE.text+'''');
    Sql.add('group by kfjd');
    active:=true;
    combobox7.Items.Clear;
    combobox7.Items.Add('');
    while not eof do
    begin
      combobox7.Items.Add(FieldByName('kfjd').AsString);
      Next;
    end;
    sql.Clear;
  end;
end;

procedure TFDExcelData.MLTDEVTYPEChange(Sender: TObject);
begin
 with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select kfjd  from ypzl');
    Sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    Sql.add('where kfxxzl.jijie='''+edit9.text+''' and kfxxzl.devtype='''+MLTDEVTYPE.text+'''');
    Sql.add('group by kfjd');
    active:=true;
    combobox7.Items.Clear;
    combobox7.Items.Add('');
    while not eof do
    begin
      combobox7.Items.Add(FieldByName('kfjd').AsString);
      Next;
    end;
    sql.Clear;
  end;


  if MLTDevType.text='Inline' then
  begin
     MLTsubType.Items.Clear;
     MLTsubType.Items.Add('');
     MLTsubType.Items.Add('Inline');
  end;
  if MLTDevType.text='Great@Good' then
  begin
     MLTsubType.Items.Clear;
     MLTsubType.Items.Add('');
     MLTsubType.Items.Add('Great@Good');
  end;
  if MLTDevType.text='QuickResponse' then
  begin
     MLTsubType.Items.Clear;
     MLTsubType.Items.Add('');
     MLTsubType.Items.Add('QuickResponse');
  end;
  if MLTDevType.text='Incubate' then
  begin
     MLTsubType.Items.Clear;
     MLTsubType.Items.Add('');
     MLTsubType.Items.Add('Incubate');
  end;
  if MLTDevType.text='SMU' then
  begin
     MLTsubType.Items.Clear;
     MLTsubType.Items.Add('');
     MLTsubType.Items.Add('Smu');
     MLTsubType.Items.Add('Segment');
  end;
end;

procedure TFDExcelData.Button13Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  MLT_DevQuery.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   MLT_DevQuery.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=MLT_DevQuery.fields[i].FieldName;
          end;

        MLT_DevQuery.First;
        j:=2;
        while   not   MLT_DevQuery.Eof   do
          begin
            for   i:=0   to  MLT_DevQuery.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MLT_DevQuery.Fields[i].Value;
            end;
          MLT_DevQuery.Next;
          inc(j);
          end;
          eclapp.ActiveSheet.range['AD:AE'].cut; //配套剪貼
          eclapp.Columns[22].insert;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDExcelData.BF4Click(Sender: TObject);
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear;
     sql.add('select FDID,TeamLeaderEng.Engname as TeamLeaderEngname,TeamLeader2Eng.Engname as TeamLeaderEngname2 from FDGroups');
     sql.add('left join FDGroup on FDGroup.FDTeam=FDGroups.FDTeam');
     sql.add('left join busers on FDGroups.FDID=busers.userid');
     sql.add('left join busers TeamLeaderEng on TeamLeaderEng.userid=FDGroup.TeamLeader');
     sql.add('left join busers TeamLeader2Eng on TeamLeader2Eng.userid=FDGroup.TeamLeader2 where FDID is not null');
     sql.add('  and busers.Engname='''+YPZL.fieldbyname('FD').asstring+'''');
   //showmessage(SQL.TEXT);
      Active:=true;
  end;

  if (uppercase(YPZL.fieldbyname('FD').asstring)=uppercase(engname)) or (main.edit1.text='55614') or (main.edit1.text='51265')
      or (uppercase(TempQry.fieldbyname('TeamLeaderEngname').asstring)=uppercase(engname)) or (uppercase(TempQry.fieldbyname('TeamLeaderEngname2').asstring)=uppercase(engname)) then
  begin
    //showmessage(engname+'/'+main.Edit1.Text);
    with RE_CHECK do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
  BF4.Enabled:=false;
  BF5.Enabled:=true;
  BF6.Enabled:=true;
  TempQry.active:=false;
  end else
  begin
     showmessage('It is not yours,can not modify.');
  end;
end;

procedure TFDExcelData.BF5Click(Sender: TObject);
var i:integer;
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear;
     sql.add('select busers.USERNAME,FDGroups.FDID,TeamLeader,TeamLeader2 from FDGroups');
     sql.add('left join FDGroup on FDGroup.FDTeam=FDGroups.FDTeam');
     sql.add('left join busers on busers.userid=FDGroups.FDID');
     sql.add(' where FDGroups.FDID is not null');

     sql.add('  and busers.USERNAME='''+main.Edit1.Text+'''');

      Active:=true;
  end;

  try
      RE_CHECK.first;
      for i:=1 to RE_CHECK.RecordCount do
      begin
          case RE_CHECK.updatestatus of
            usmodified:
            begin
                if (uppercase(YPZL.fieldbyname('FD').asstring)=uppercase(engname)) or (main.edit1.text='55614') 
                      or (uppercase(TempQry.fieldbyname('TeamLeaderEngname').asstring)=uppercase(engname))
                      or (uppercase(TempQry.fieldbyname('TeamLeaderEngname2').asstring)=uppercase(engname)) then
                begin
                  RE_CHECK.edit;
                  up_REcheck.apply(ukmodify);
                end else
                begin
                    showmessage('It is not yours, can not modify.');
                end;
            end;
         end;
         RE_CHECK.next;
      end;//for
      with TempQry1 do
      begin
          active:=false;
          sql.Clear;
          sql.add('update BModRec_Dev set recheckID='''+main.Edit1.Text+''',recheckdate=getdate() ');
          sql.add('where article=''FD_check'' and TNO='''+re_check.fieldbyname('ypdh').AsString+''' and recheckdate is null ');
          execsql;
          active:=false;
      end;
      
      RE_CHECK.active:=false;
      RE_CHECK.cachedupdates:=false;
      RE_CHECK.requestlive:=false;
      RE_CHECK.active:=true;
      BF4.Enabled:=true;
      BF5.enabled:=false;
      BF6.enabled:=false;
      TempQry.active:=false;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TFDExcelData.YPZLAfterScroll(DataSet: TDataSet);
var ShoePicR1:string;
begin
    if ypzl.FieldByName('kfjd').AsString='CR1' then
       ShoePicR1:=StringReplace(ypzl.FieldByName('imgnamer1').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    if ypzl.FieldByName('kfjd').AsString='CR2' then
       ShoePicR1:=StringReplace(ypzl.FieldByName('imgnamer2').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    if ypzl.FieldByName('kfjd').AsString='SMS' then
       ShoePicR1:=StringReplace(ypzl.FieldByName('imgnamer3').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    if ypzl.FieldByName('kfjd').AsString='CFM' then
       ShoePicR1:=StringReplace(ypzl.FieldByName('imgnameCFM').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    //funcObj.WriteErrorLog(ShoePicr1);
   if FileExists(ShoePicr1)=true then
      IMAGEshoe.Picture.LoadFromFile(ShoePicr1);
   if FileExists(ShoePicr1)=false then
      IMAGEshoe.Picture.Bitmap:=nil;
end;

procedure TFDExcelData.edit11Change(Sender: TObject);
begin
 with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select kfjd  from ypzl');
    Sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    Sql.add('where kfxxzl.jijie='''+edit11.text+''' ');
    Sql.add('group by kfjd');
    active:=true;
    combobox8.Items.Clear;
    combobox8.Items.Add('');
    while not eof do
    begin
      combobox8.Items.Add(FieldByName('kfjd').AsString);
      Next;
    end;
    sql.Clear;
  end;
end;


procedure TFDExcelData.Button14Click(Sender: TObject);
begin
    with shipping do
    begin
       active:=false;
       sql.Clear;
       sql.Add('select');
       sql.Add('kfxxzl.jijie as Season,');
       sql.Add('ypzl.kfjd as Stage,');
       sql.Add('ROW_NUMBER() OVER (order by devcode) as STT,');
       sql.Add('kfxxzl.devcode as SR,');
       sql.Add('xxzl.article as SKU,');
       sql.Add('xxzlkf.MMD as MainMaterial,');
       sql.Add('xxzlkf.Cut,');
       sql.Add('Ypzl.YPCC as SampleSize,');
       sql.Add('ypzl.Quantity as GrandTotalPairs,');
       sql.Add('ypzl.FD as DEV,');
       sql.Add('Ypzl.ypdh as SampleNO');
       sql.Add('from ypzl');
       sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
       sql.Add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
       sql.Add('left join xxzl on xxzl.xiexing=ypzl.xiexing and xxzl.shehao=ypzl.shehao');
       sql.Add('where kfxxzl.jijie='''+edit11.text+''' ');
       if combobox8.text<>'' then
          sql.Add('and ypzl.kfjd='''+combobox8.text+''' ');
        //memo3.text:=sql.text;
       active:=true;
    end;
end;
procedure TFDExcelData.Button15Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  shipping.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   shipping.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=shipping.fields[i].FieldName;
          end;

        shipping.First;
        j:=2;
        while   not   shipping.Eof   do
          begin
            for   i:=0   to  shipping.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=shipping.Fields[i].Value;
            end;
          shipping.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TFDExcelData.DevTypeEditChange(Sender: TObject);
begin

  if devtypeedit.text='Inline' then
  begin
     subtypechose.Items.Clear;
     subtypechose.Items.Add('');
     subtypechose.Items.Add('Inline');
  end;
  if devtypeedit.text='Great@Good' then
  begin
     subtypechose.Items.Clear;
     subtypechose.Items.Add('');
     subtypechose.Items.Add('Great@Good');
  end;
  if devtypeedit.text='QuickResponse' then
  begin
     subtypechose.Items.Clear;
     subtypechose.Items.Add('');
     subtypechose.Items.Add('QuickResponse');
  end;
  if devtypeedit.text='Incubate' then
  begin
     subtypechose.Items.Clear;
     subtypechose.Items.Add('');
     subtypechose.Items.Add('Incubate');
  end;
  if devtypeedit.text='SMU' then
  begin
     subtypechose.Items.Clear;
     subtypechose.Items.Add('');
     subtypechose.Items.Add('Smu');
     subtypechose.Items.Add('Segment');
  end;
end;

procedure TFDExcelData.eX(Sender: TObject);
begin
    with YPZLS do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('SELECT DENSE_RANK() OVER(ORDER BY YPZLS.XH) AS ROWID,ypzls.YPDH ,ypzls.xh ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate ,ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,');
      SQL.Add('bwzl.zwsm,bwzl.ywsm,clzl.zwpm AS CLMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb  ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ,clzl.ywpm ,clzl.cqdh,zszl_dev.SamplePurchaser,''1'' as YN,CLZL.UserID as MatUser,ypzls.UserID,ypzls.UserDate,XH1  FROM ypzls ypzls');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
      SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
      SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh');
      SQL.Add('LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh   and zszl_dev.GSBH=''CDC''');
      SQL.Add('WHERE YPDH ='''+ypzl.fieldbyname('ypdh').value+''' ');
      if checkbox3.Checked then
         SQL.Add('and clzl.clzmlb=''Y''');
      SQL.Add('ORDER BY YPZLS.YPDH , YPZLS.XH, YPZLS.XH1');

      Active:=true;
    end;

end;
procedure TFDExcelData.BitBtn4Click(Sender: TObject);
var
 eclApp,WorkBook:olevariant;
  i,j,k,l,stop:integer;
  PartALl:string;
begin
    i:=1;
    sticker.Active:=true;
    if  sticker.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
      eclApp.ActiveSheet.PageSetup.TopMargin := 1/0.035;                           //頂邊距1cm
      eclApp.ActiveSheet.PageSetup.BottomMargin := 1/0.035;                        //底邊距1cm
      eclApp.ActiveSheet.PageSetup.LeftMargin := 0;                          //左邊距2cm
      eclApp.ActiveSheet.PageSetup.RightMargin := 0;                         //右邊距2cm
      eclApp.ActiveSheet.PageSetup.HeaderMargin := 0;                        //頁首1cm
      eclApp.ActiveSheet.PageSetup.FooterMargin := 0;                        //頁尾1cm



      eclApp.Cells(1,1):='Material List';
      eclApp.ActiveSheet.Rows[1].Font.Size:= 20;
      eclApp.ActiveSheet.Range['A1:C2'].Merge;
      eclApp.ActiveSheet.Range['A1','C2'].HorizontalAlignment := $FFFFEFF4;
      eclApp.Cells(3,1):='SR#:'+sticker.FieldByName('devcode').value+'('+sticker.FieldByName('article').value+')';
      eclApp.ActiveSheet.Range['A3:C3'].Merge;
      eclApp.Cells(4,1):='NO.';
      eclApp.Cells(4,2):='Material Name';
      eclApp.Cells(4,3):='Supplier';
      sticker.First;
      while   not  sticker.Eof   do
      begin
         eclApp.Cells(4+i,1):=i;
         eclApp.Cells(4+i,2):=sticker.FieldByName('ywpm').value;
         eclApp.Cells(4+i,3):=sticker.FieldByName('zsywjc').value;
         i:=i+1;
         sticker.Next;
      end;
      //eclApp.Cells(1,1).Columns.Autofit;
      eclApp.Columns[1].Columns.Autofit;
      eclApp.Columns[2].Columns.Autofit;
      eclApp.Columns[3].Columns.Autofit;
        for   l:=1   to  i+3 do
        begin
          eclApp.Cells[l,1].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,1].Borders[12].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,2].Borders[12].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[7].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[8].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[9].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[10].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[11].LineStyle := 1;  //畫線
          eclApp.Cells[l,3].Borders[12].LineStyle := 1;  //畫線
        end;
        inc(l);
        showmessage('Succeed.');
        eclApp.ActiveSheet.PageSetup.Orientation := 1; //列印直=1,橫式=2
        eclApp.ActiveSheet.PageSetup.Zoom := false; //使用頁次縮放功能
        eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1;  //縮放成一頁寬(需配合Zoom = True)
        eclApp.ActiveSheet.PageSetup.FitToPagesTall := 1;  //縮放成一頁高(需配合Zoom = True)
        eclApp.Visible:=True;
        sticker.Active:=false;

        except
        on   F:Exception   do
          showmessage(F.Message);
        end;
end;

procedure TFDExcelData.BitBtn5Click(Sender: TObject);
var
 eclApp,WorkBook:olevariant;
  i,j:integer;
begin
    bookcover.Active:=true;
    if  bookcover.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
      eclApp.ActiveSheet.PageSetup.TopMargin := 1/0.035;                           //頂邊距1cm
      eclApp.ActiveSheet.PageSetup.BottomMargin := 1/0.035;                        //底邊距1cm
      eclApp.ActiveSheet.PageSetup.LeftMargin := 2;                          //左邊距2cm
      eclApp.ActiveSheet.PageSetup.RightMargin := 0;                         //右邊距2cm
      eclApp.ActiveSheet.PageSetup.HeaderMargin := 0;                        //頁首1cm
      eclApp.ActiveSheet.PageSetup.FooterMargin := 0;                        //頁尾1cm

      eclApp.Cells(1,1):='Confirmation Color Swatch';
      eclApp.ActiveSheet.Rows[1].Font.Size:= 16;
      eclApp.ActiveSheet.Range['A1:B1'].Merge;
      eclApp.Cells(2,1):='SR#:';
      eclApp.Cells(3,1):='SKU:';
      eclApp.Cells(4,1):='Name:';
      eclApp.Cells(5,1):='Color:';
      eclApp.Columns[1].ColumnWidth := 11.5; //設定欄寬
      eclApp.Columns[2].ColumnWidth := 72.25;//設定欄寬
      eclApp.Cells(2,2):=bookcover.FieldByName('devcode').value;
      eclApp.Cells(3,2):=bookcover.FieldByName('article').value;
      eclApp.Cells(4,2):=bookcover.FieldByName('xieming').value;
      eclApp.Cells(5,2):=bookcover.FieldByName('yssm').value;
      for i:=7 to 12 do
      begin
         eclApp.ActiveSheet.Range['A1:B5'].Borders[i].LineStyle := 1;  //畫線
      end;

      eclApp.ActiveSheet.Range[ 'A1:B5' ].Copy;
      eclApp.ActiveSheet.Range['A6'].PasteSpecial;
      eclApp.ActiveSheet.Range['A11'].PasteSpecial;
      eclApp.ActiveSheet.Range['A16'].PasteSpecial;
      eclApp.ActiveSheet.Range['A21'].PasteSpecial;
      J:=0;
      for i:=1 to 5 do
      begin
      eclApp.ActiveSheet.Rows[1+j].RowHeight:= 24.75;
      eclApp.ActiveSheet.Rows[2+j].RowHeight:= 30; //設定欄寬
      eclApp.ActiveSheet.Rows[3+j].RowHeight:= 37.5;
      eclApp.ActiveSheet.Rows[4+j].RowHeight:= 24.75;
      eclApp.ActiveSheet.Rows[5+J].RowHeight:= 27.75;
      j:=j+5;
      end;
      eclApp.ActiveSheet.Range['A1:B1'].HorizontalAlignment := $FFFFEFF4;
      eclApp.ActiveSheet.Range['A6:B6'].HorizontalAlignment := $FFFFEFF4;
      eclApp.ActiveSheet.Range['A11:B11'].HorizontalAlignment := $FFFFEFF4;
      eclApp.ActiveSheet.Range['A16:B16'].HorizontalAlignment := $FFFFEFF4;
      eclApp.ActiveSheet.Range['A21:B21'].HorizontalAlignment := $FFFFEFF4;
      showmessage('Succeed.');
      eclApp.ActiveSheet.PageSetup.Orientation := 1; //列印直=1,橫式=2
      eclApp.ActiveSheet.PageSetup.CenterHorizontally := 2/0.035;
      eclApp.ActiveSheet.PageSetup.CenterVertically := 2/0.035;

      eclApp.Visible:=True;
      bookcover.Active:=false;
      except
      on   F:Exception   do
         showmessage(F.Message);
      end;
end;

procedure TFDExcelData.Button16Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,Imin,Tmax:integer;
    numerical,f,t,number,Countmat:integer;
    picture,picture1,picture2,picture3 : OleVariant;
    workRange : OleVariant;
    workSheet : OleVariant;
    shoePic,shoePic1,shoePic2,shoePic3,shoePic4: string;
    SRname: string;
    SKUname: string;
    LOGO: string;
    Colorwayname: string;
begin
  if R4SR.Text = '' then
  begin
      showmessage('Choose SR#.');
      abort;
  end;
  if (ComboBox14.Text = '') and (main.Edit2.Text = 'SKX') then
  begin
      showmessage('Choose Brand.');
     abort;
  end;

  if BlueFile.Active then
  begin
    if BlueFile.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  with BlueExcel do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select ');
    SQL.add('ypzl.FD as FD,');
    SQL.Add('case when kfxxzl.kflx = ''MU'' then ''NM'' when  kfxxzl.kflx = ''CU'' then ''NC'' else kfxxzl.kflx end  as kflx,');
    SQL.add('isnull(kfxxzl.XTMH,'+''''+''''+') as XTMH,');
    SQL.add('isnull(kfxxzl.DDMH,'+''''+''''+') as DDMH,');
    SQL.add('isnull(kfxxzl.XieMing,'+''''+''''+') as XieMing,');
    SQL.add('isnull(xxzlkf.CTS,'+''''+''''+') as CTS,');
    SQL.add('isnull(xxzlkf.NA,'+''''+''''+') as NA,');
    SQL.add('isnull(kfxxzl.jijie,'+''''+''''+') as jijie,');
    SQL.add('isnull(KFXXZL.GENDER,'+''''+''''+') as GENDER,');
    SQL.add('isnull(ypzl.subtype,'+''''+''''+') as subtype,');
    SQL.add('isnull(xxzlkf.SS,'+''''+''''+') as SS,ypzl.MH,ypzl.LH,ypzl.BH,kfxxzl.LOGO');
    SQL.add('from XXZLKF');
    SQL.add('left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    SQL.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
    SQL.add('where KFXXZL.jijie like '''+'%'+R4SEASON.Text+'%'+'''');
    if CheckBox4.Checked then
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and kfxxzl.devcode <>''''');
    if main.Edit2.Text = 'SKX' then
      SQL.add('and kfzl_GS.GSBH= '''+ComboBox14.Text+''' ')
    else
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
   // SQL.add('and ((kfxxzl.article like '''+'%'+'C'+'%'+''') or (kfxxzl.article like '''+'%'+''+'%'+'''))');
    SQL.add('and ypzl.kfjd in (''CR1'',''CR2'',''CR3'',''SMS'',''CFM'')');
    if r4type.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+r4type.Text+'%'+'''');
    if R4SR.Text <> '' then
      SQL.add('and kfxxzl.devcode like '''+'%'+R4SR.Text+'%'+'''');
    if R4ARTICLE.Text <> '' then
      SQL.add('and kfxxzl.article like '''+'%'+R4ARTICLE.Text+'%'+'''');
    if R4FD.Text <> '' then
      SQL.add('and ypzl.fd = '''+R4FD.Text+''' ');
    if TeamR4.Text <> '' then
    if TeamR4.Text = 'A'
    then SQL.add('and fdgroups.fdteam=''A'' ');
    if TeamR4.Text = 'B'
    then SQL.add('and fdgroups.fdteam=''B'' ');
    if TeamR4.Text = 'C'
    then SQL.add('and fdgroups.fdteam=''C'' ');
    if TeamR4.Text = 'SMU'
    then SQL.add('and fdgroups.fdteam=''SMU'' ');
    if data.Text <> '' then
      if data.Text = 'new'
      then SQL.add('and xxzlkf.userid is null ');
      if data.Text = 'Dropped'
      then SQL.add('and xxzlkf.dropped =''1'' ');
      if data.Text = 'NoDropped'
      then SQL.add('and (xxzlkf.dropped =''0'' or xxzlkf.dropped is null)');
      if data.Text = 'Transfer'
      then SQL.add('and xxzlkf.Transfer =''1'' ');
      if data.Text = 'NoTransfer'
      then SQL.add('and (xxzlkf.Transfer =''0'' or xxzlkf.Transfer is null)');
      if data.Text = 'no_ok'
      then SQL.add('and (xxzlkf.yn is null or xxzlkf.yn=''0'' ) ');
      if data.Text = 'ok'
      then SQL.add('and xxzlkf.yn=''1'' ');
    SQL.add('group by ypzl.FD,KFXXZL.XTMH,KFXXZL.DDMH,kfxxzl.kflx,kfxxzl.XieMing,CTS,NA,kfxxzl.jijie');
    SQL.add(',KFXXZL.GENDER,ypzl.subtype,xxzlkf.SS,ypzl.MH,ypzl.LH,ypzl.BH,kfxxzl.LOGO');
    //memo3.Text:=sql.Text;
    Active:=true;
  end;

  with BlueIM do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select ');
    SQL.add('isnull(KFXXZL.devcode,'+''''+''''+') as devcode,');
    SQL.add('isnull(kfxxzl.article,'+''''+''''+') as article,');
    SQL.add('isnull(kfxxzl.YSSM,'+''''+''''+') as YSSM');
    if CheckBox5.Checked then
    SQL.add(',XXZLKF.imgnamer1 ');
    if CheckBox6.Checked then
    SQL.add(',XXZLKF.imgnamer2 ');
    if CheckBox7.Checked then
    SQL.add(',XXZLKF.imgnamer3 ');
    if CheckBox8.Checked then
    SQL.add(',XXZLKF.imgnamer4 ');
    if CheckBox9.Checked then
    SQL.add(',XXZLKF.imgnameCFM');
    SQL.add('from XXZLKF');
    SQL.add('left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    SQL.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
    SQL.add('where KFXXZL.jijie like '''+'%'+R4SEASON.Text+'%'+'''');
    if CheckBox4.Checked then
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and kfxxzl.devcode <>''''');
    if main.Edit2.Text = 'SKX' then
      SQL.add('and kfzl_GS.GSBH= '''+ComboBox14.Text+''' ')
    else
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
  //  SQL.add('and ((kfxxzl.article like '''+'%'+'C'+'%'+''') or (kfxxzl.article like '''+'%'+''+'%'+'''))');
    SQL.add('and ypzl.kfjd in (''CR1'',''CR2'',''CR3'',''SMS'',''CFM'')');
    if r4type.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+r4type.Text+'%'+'''');
    if R4SR.Text <> '' then
      SQL.add('and kfxxzl.devcode like '''+'%'+R4SR.Text+'%'+'''');
    if R4ARTICLE.Text <> '' then
      SQL.add('and kfxxzl.article like '''+'%'+R4ARTICLE.Text+'%'+'''');
    if R4FD.Text <> '' then
      SQL.add('and ypzl.fd = '''+R4FD.Text+''' ');
    if TeamR4.Text <> '' then
    if TeamR4.Text = 'A'
    then SQL.add('and fdgroups.fdteam=''A'' ');
    if TeamR4.Text = 'B'
    then SQL.add('and fdgroups.fdteam=''B'' ');
    if TeamR4.Text = 'C'
    then SQL.add('and fdgroups.fdteam=''C'' ');
    if TeamR4.Text = 'SMU'
    then SQL.add('and fdgroups.fdteam=''SMU'' ');
    if data.Text <> '' then
      if data.Text = 'new'
      then SQL.add('and xxzlkf.userid is null ');
      if data.Text = 'Dropped'
      then SQL.add('and xxzlkf.dropped =''1'' ');
      if data.Text = 'NoDropped'
      then SQL.add('and (xxzlkf.dropped =''0'' or xxzlkf.dropped is null)');
      if data.Text = 'Transfer'
      then SQL.add('and xxzlkf.Transfer =''1'' ');
      if data.Text = 'NoTransfer'
      then SQL.add('and (xxzlkf.Transfer =''0'' or xxzlkf.Transfer is null)');
      if data.Text = 'no_ok'
      then SQL.add('and (xxzlkf.yn is null or xxzlkf.yn=''0'' ) ');
      if data.Text = 'ok'
      then SQL.add('and xxzlkf.yn=''1'' ');
    SQL.add('group by kfxxzl.YSSM,kfxxzl.Article,kfxxzl.devcode');
    if CheckBox5.Checked then
    SQL.add(',XXZLKF.imgnamer1 ');
    if CheckBox6.Checked then
    SQL.add(',XXZLKF.imgnamer2 ');
    if CheckBox7.Checked then
    SQL.add(',XXZLKF.imgnamer3 ');
    if CheckBox8.Checked then
    SQL.add(',XXZLKF.imgnamer4 ');
    if CheckBox9.Checked then
    SQL.add(',XXZLKF.imgnameCFM ');
    SQL.add('order by kfxxzl.devcode');
    //memo3.Text:=sql.Text;
    Active:=true;
  end;
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.23.9\liy_erp\Additional\Develop_N71Bluefile.xls'),Pchar(AppDir+'Additional\Develop_N71Bluefile.xls'),false);
   if FileExists(AppDir+'Additional\Develop_N71Bluefile.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Develop_N71Bluefile.xls');
        WorkBook:=eclApp.WorkBooks.Open(AppDir+'Additional\Develop_N71Bluefile.xls');
        BlueExcel.First;
        j:=6;
        k:=0;
        Imin:=0;
        LOGO:= '['+BlueExcel.FieldByName('LOGO').AsString+']';
        eclApp.Cells(1,2):= BlueExcel.FieldByName('xieming').Value;
        eclApp.Cells(1,5):= BlueExcel.FieldByName('xtmh').Value;
        eclApp.Cells(1,8):= BlueExcel.FieldByName('subtype').Value;
        eclApp.Cells(2,2):= BlueExcel.FieldByName('jijie').Value;
        eclApp.Cells(2,5):= BlueExcel.FieldByName('ddmh').Value;
        eclApp.Cells(3,2):= BlueExcel.FieldByName('kflx').Value;
        if  ComboBox10.Text = '' then
          eclApp.Cells(3,5):= 'LYN' else eclApp.Cells(3,5):= ComboBox10.Text;
        eclApp.Cells(3,8):= BlueExcel.FieldByName('NA').Value;
        eclApp.Cells(4,2):= BlueExcel.FieldByName('SS').Value;
        eclApp.Cells(4,5):= 'Brian, Chen';
        eclApp.Cells(4,8):= ComboBox9.Text;
        eclApp.Cells(5,2):= LOGO;
        eclApp.Cells(5,5):= BlueExcel.FieldByName('fd').Value;
        eclApp.Cells(5,8):= BlueExcel.FieldByName('cts').Value;
        eclApp.Cells(12,3):= BlueExcel.FieldByName('MH').Value;
        eclApp.Cells(13,3):= BlueExcel.FieldByName('LH').Value;
        eclApp.Cells(14,3):= BlueExcel.FieldByName('BH').Value;
        BlueFile.First;
        BlueIM.First;
        while  not  BlueIM.Eof   do
        begin
           if (BlueIM.Fields[k].Value  = BlueFile.FieldByName('devcode').AsString)  then
           begin
             SRname:=SRname+BlueIM.FieldByName('devcode').AsString+''#13#10;
             SKUname:=SKUname+BlueIM.FieldByName('article').AsString+''#13#10;
             Colorwayname:=Colorwayname+BlueIM.FieldByName('yssm').AsString+''#13#10;
             if CheckBox5.Checked then
                shoePic:= StringReplace(BlueIM.FieldByName('imgnamer1').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
             if CheckBox6.Checked then
                shoePic1:= StringReplace(BlueIM.FieldByName('imgnamer2').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
             if CheckBox7.Checked then
                shoePic2:= StringReplace(BlueIM.FieldByName('imgnamer3').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
             if CheckBox8.Checked then
                shoePic3:= StringReplace(BlueIM.FieldByName('imgnamer4').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
             if CheckBox9.Checked then
                shoePic4:= StringReplace(BlueIM.FieldByName('imgnameCFM').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
             BlueIM.Next;
             if Imin = 0 then
             begin
                Imin:=20;
             end else
             begin
                Imin:=Imin+100;
             end;
           end else
           begin
              eclApp.Cells(6,2):=SRname;
              eclApp.Cells(7,2):=SKUname;
              eclApp.Cells(8,2):=Colorwayname;
              workSheet := workBook.WorkSheets[1];
              eclApp.WorkSheets[1].Activate;
              workSheet.Select;
              workSheet.Cells.Item[j+3,1]:='';
              workRange :=workSheet.Range[workSheet.Cells.Item[j+3,1],workSheet.Cells.item[j+3,1]];
              if FileExists(shoePic)=true then
              begin
                picture := workSheet.pictures.Insert(shoePic);
                picture.left := workRange.left + 8;
                picture.top := workRange.top + 8;
                picture.width := workRange.width - 16;
                picture.height := workRange.height - 8;
                picture.height := 70;
                picture.left := Imin;
                picture := Unassigned;
              end;
              if FileExists(shoePic1)=true then
              begin
                picture := workSheet.pictures.Insert(shoePic1);
                picture.left := workRange.left + 8;
                picture.top := workRange.top + 8;
                picture.width := workRange.width - 16;
                picture.height := workRange.height - 8;
                picture.height := 70;
                if ((FileExists(shoePic1)=true) and (FileExists(shoePic)=false)) then
                begin
                  picture.left := Imin;
                end else
                  picture.left := Imin+100;
                picture := Unassigned;
              end;
              if FileExists(shoePic2)=true then
              begin
                picture := workSheet.pictures.Insert(shoePic2);
                picture.left := workRange.left + 8;
                picture.top := workRange.top + 8;
                picture.width := workRange.width - 16;
                picture.height := workRange.height - 8;
                picture.height := 70;
                if ((FileExists(shoePic2)=true) and (FileExists(shoePic1)=false)) then
                begin
                  picture.left := Imin;
                end else
                  picture.left := Imin+200;
                picture := Unassigned;
              end;
              if FileExists(shoePic3)=true then
              begin
                picture := workSheet.pictures.Insert(shoePic3);
                picture.left := workRange.left + 8;
                picture.top := workRange.top + 8;
                picture.width := workRange.width - 16;
                picture.height := workRange.height - 8;
                picture.height := 70;
                if ((FileExists(shoePic3)=true) and (FileExists(shoePic2)=false)) then
                begin
                  picture.left := Imin;
                end else
                  picture.left := Imin+300;
                picture := Unassigned;
              end;
              if FileExists(shoePic4)=true then
              begin
                picture := workSheet.pictures.Insert(shoePic4);
                picture.left := workRange.left + 8;
                picture.top := workRange.top + 8;
                picture.width := workRange.width - 16;
                picture.height := workRange.height - 8;
                picture.height := 70;
                if ((FileExists(shoePic4)=true) and (FileExists(shoePic3)=false)) then
                begin
                  picture.left := Imin;
                end else
                  picture.left := Imin+400;
                picture := Unassigned;
              end;
              BlueFile.Next;
           end;
        end;
        eclApp.Cells(6,2):=SRname;
        eclApp.Cells(7,2):=SKUname;
        eclApp.Cells(8,2):=Colorwayname;
        workSheet := workBook.WorkSheets[1];
        eclApp.WorkSheets[1].Activate;
        workSheet.Select;
        workSheet.Cells.Item[j+3,1]:='';
        workRange :=workSheet.Range[workSheet.Cells.Item[j+3,1],workSheet.Cells.item[j+3,1]];
        if FileExists(shoePic)=true then
        begin
          picture := workSheet.pictures.Insert(shoePic);
          picture.left := workRange.left + 8;
          picture.top := workRange.top + 8;
          picture.width := workRange.width - 16;
          picture.height := workRange.height - 8;
          picture.height := 70;
          if ((FileExists(shoePic1)=true) and (FileExists(shoePic)=false)) then
          begin
            picture.left := Imin;
          end else
            picture.left := Imin;
          picture := Unassigned;
        end;
        if FileExists(shoePic1)=true then
        begin
          picture := workSheet.pictures.Insert(shoePic1);
          picture.left := workRange.left + 8;
          picture.top := workRange.top + 8;
          picture.width := workRange.width - 16;
          picture.height := workRange.height - 8;
          picture.height := 70;
          if ((FileExists(shoePic1)=true) and (FileExists(shoePic)=false)) then
          begin
            picture.left := Imin;
          end else
            picture.left := Imin+100;
          picture := Unassigned;
        end;
        if FileExists(shoePic2)=true then
        begin
          picture := workSheet.pictures.Insert(shoePic2);
          picture.left := workRange.left + 8;
          picture.top := workRange.top + 8;
          picture.width := workRange.width - 16;
          picture.height := workRange.height - 8;
          picture.height := 70;
          if ((FileExists(shoePic2)=true) and (FileExists(shoePic1)=false)) then
          begin
            picture.left := Imin;
          end else
            picture.left := Imin+200;
          picture := Unassigned;
        end;
        if FileExists(shoePic3)=true then
        begin
          picture := workSheet.pictures.Insert(shoePic3);
          picture.left := workRange.left + 8;
          picture.top := workRange.top + 8;
          picture.width := workRange.width - 16;
          picture.height := workRange.height - 8;
          picture.height := 70;
          if ((FileExists(shoePic3)=true) and (FileExists(shoePic2)=false)) then
          begin
            picture.left := Imin;
          end else
            picture.left := Imin+300;
          picture := Unassigned;
        end;
        if FileExists(shoePic4)=true then
        begin
          picture := workSheet.pictures.Insert(shoePic4);
          picture.left := workRange.left + 8;
          picture.top := workRange.top + 8;
          picture.width := workRange.width - 16;
          picture.height := workRange.height - 8;
          picture.height := 70;
          if ((FileExists(shoePic4)=true) and (FileExists(shoePic3)=false)) then
          begin
            picture.left := Imin;
          end else
            picture.left := Imin+400;
          picture := Unassigned;
        end;
        BlueIM.Next;
        inc(j);
        //eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TFDExcelData.r4bbt1Click(Sender: TObject);
begin
  if R4SEASON.Text = '' then
  begin
     showmessage('You need to enter the season.');
     abort;
  end;
  if (ComboBox14.Text = '') and (main.Edit2.Text = 'SKX') then begin
     showmessage('You need to Keyin the Brand.');
     abort;
  end;
  with BlueFile do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select ');
    SQL.add('ypzl.FD as FD,');
    SQL.add('isnull(KFXXZL.YSSM,'+''''+''''+') as YSSM,');
    SQL.Add('case when kfxxzl.kflx = ''MU'' then ''NM'' when  kfxxzl.kflx = ''CU'' then ''NC'' else kfxxzl.kflx end  as kflx,');
    SQL.add('isnull(kfxxzl.XTMH,'+''''+''''+') as XTMH,');
    SQL.add('isnull(kfxxzl.DDMH,'+''''+''''+') as DDMH,');
    SQL.add('isnull(kfxxzl.XieMing,'+''''+''''+') as XieMing,');
    SQL.add('isnull(kfxxzl.article,'+''''+''''+') as article,');
    SQL.add('isnull(kfxxzl.devcode,'+''''+''''+') as devcode,');
    SQL.add('isnull(xxzlkf.CTS,'+''''+''''+') as CTS,');
    SQL.add('isnull(xxzlkf.NA,'+''''+''''+') as NA,');
    SQL.add('isnull(KFXXZL.GENDER,'+''''+''''+') as GENDER,');
    SQL.add('isnull(ypzl.subtype,'+''''+''''+') as subtype,');
    SQL.add('isnull(xxzlkf.SS,'+''''+''''+') as SS');
    SQL.add('from XXZLKF');
    SQL.add('left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    SQL.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
    SQL.add('where KFXXZL.jijie like '''+'%'+R4SEASON.Text+'%'+'''');
    if CheckBox4.Checked then
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and kfxxzl.devcode <>''''');
    if main.Edit2.Text = 'SKX' then
      SQL.add('and kfzl_GS.GSBH= '''+ComboBox14.Text+''' ')
    else
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
    SQL.add('and ypzl.kfjd in (''CR1'',''CR2'',''CR3'',''SMS'',''CFM'')');
    if r4type.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+r4type.Text+'%'+'''');
    if R4Devcode.Text <> '' then
      SQL.add('and kfxxzl.devcode like '''+'%'+R4Devcode.Text+'%'+'''');
    if R4ARTICLE.Text <> '' then
      SQL.add('and kfxxzl.article like '''+'%'+R4ARTICLE.Text+'%'+'''');
    if R4FD.Text <> '' then
      SQL.add('and ypzl.fd = '''+R4FD.Text+''' ');
    if TeamR4.Text <> '' then
    if TeamR4.Text = 'A'
    then SQL.add('and fdgroups.fdteam=''A'' ');
    if TeamR4.Text = 'B'
    then SQL.add('and fdgroups.fdteam=''B'' ');
    if TeamR4.Text = 'C'
    then SQL.add('and fdgroups.fdteam=''C'' ');
    if TeamR4.Text = 'SMU'
    then SQL.add('and fdgroups.fdteam=''SMU'' ');
    if data.Text <> '' then
      if data.Text = 'new'
      then SQL.add('and xxzlkf.userid is null ');
      if data.Text = 'Dropped'
      then SQL.add('and xxzlkf.dropped =''1'' ');
      if data.Text = 'NoDropped'
      then SQL.add('and (xxzlkf.dropped =''0'' or xxzlkf.dropped is null)');
      if data.Text = 'Transfer'
      then SQL.add('and xxzlkf.Transfer =''1'' ');
      if data.Text = 'NoTransfer'
      then SQL.add('and (xxzlkf.Transfer =''0'' or xxzlkf.Transfer is null)');
      if data.Text = 'no_ok'
      then SQL.add('and (xxzlkf.yn is null or xxzlkf.yn=''0'' ) ');
      if data.Text = 'ok'
      then SQL.add('and xxzlkf.yn=''1'' ');
    SQL.add('group by ypzl.FD,KFXXZL.YSSM,KFXXZL.XTMH,KFXXZL.DDMH,kfxxzl.kflx,kfxxzl.XieMing,kfxxzl.Article,devcode,CTS,NA');
    SQL.add(',KFXXZL.GENDER,ypzl.subtype,xxzlkf.SS');
    SQL.add('order by kfxxzl.devcode ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  with SR do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select devcode from (');
    SQL.add('select isnull(left(kfxxzl.devcode,6),'''') as devcode');
    SQL.add('from XXZLKF');
    SQL.add('left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    SQL.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
    SQL.add('where KFXXZL.jijie like '''+'%'+R4SEASON.Text+'%'+'''');
    if CheckBox4.Checked then
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and kfxxzl.devcode <>''''');
    if main.Edit2.Text = 'SKX' then
      SQL.add('and kfzl_GS.GSBH= '''+ComboBox14.Text+''' ')
    else
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
   // SQL.add('and ((kfxxzl.article like '''+'%'+'C'+'%'+''') or (kfxxzl.article like '''+'%'+''+'%'+'''))');
    SQL.add('and ypzl.kfjd in (''CR1'',''CR2'',''CR3'',''SMS'',''CFM'')');
    if r4type.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+r4type.Text+'%'+'''');
    if R4Devcode.Text <> '' then
      SQL.add('and kfxxzl.devcode like '''+'%'+R4Devcode.Text+'%'+'''');
    if R4ARTICLE.Text <> '' then
      SQL.add('and kfxxzl.article like '''+'%'+R4ARTICLE.Text+'%'+'''');
    if R4FD.Text <> '' then
      SQL.add('and ypzl.fd = '''+R4FD.Text+''' ');
    if TeamR4.Text <> '' then
    if TeamR4.Text = 'A'
    then SQL.add('and fdgroups.fdteam=''A'' ');
    if TeamR4.Text = 'B'
    then SQL.add('and fdgroups.fdteam=''B'' ');
    if TeamR4.Text = 'C'
    then SQL.add('and fdgroups.fdteam=''C'' ');
    if TeamR4.Text = 'SMU'
    then SQL.add('and fdgroups.fdteam=''SMU'' ');
    if data.Text <> '' then
      if data.Text = 'new'
      then SQL.add('and xxzlkf.userid is null ');
      if data.Text = 'Dropped'
      then SQL.add('and xxzlkf.dropped =''1'' ');
      if data.Text = 'NoDropped'
      then SQL.add('and (xxzlkf.dropped =''0'' or xxzlkf.dropped is null)');
      if data.Text = 'Transfer'
      then SQL.add('and xxzlkf.Transfer =''1'' ');
      if data.Text = 'NoTransfer'
      then SQL.add('and (xxzlkf.Transfer =''0'' or xxzlkf.Transfer is null)');
      if data.Text = 'no_ok'
      then SQL.add('and (xxzlkf.yn is null or xxzlkf.yn=''0'' ) ');
      if data.Text = 'ok'
      then SQL.add('and xxzlkf.yn=''1'' ');
    SQL.add('group by kfxxzl.devcode ) KFXXZL group by devcode');
    SQL.add('order by devcode ');
    Active:=true;
    R4SR.Items.clear;
    while not eof do
    begin
       R4SR.items.add(fieldbyname('devcode').asstring );
       next;
    end;
    R4SR.Text:='';
  end;
end;

procedure TFDExcelData.r4excelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if BlueFile.Active then
  begin
    if BlueFile.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   BlueFile.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=BlueFile.fields[i-1].FieldName;
    end;
    BlueFile.First;
    j:=2;
    while   not  BlueFile.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   BlueFile.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=BlueFile.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        BlueFile.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TFDExcelData.BBT5Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if YPZL.Active=true then
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
        SaveDialog1.FileName := SaveDialog1.FileName + '.xls';
      SaveDBGridEhToExportFile(ExpClass,YPZLGrid,SaveDialog1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
end;

procedure TFDExcelData.BB7Click(Sender: TObject);
begin
close;
end;

procedure TFDExcelData.Edit8Change(Sender: TObject);
begin
  if edit7.Text<>'' then
  begin
    with temp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select jijie,devcode from kfxxzl where devcode ='''+edit8.text+''' ');
      active:=true;
    end;
    edit7.Text:=temp.FieldByName('jijie').AsString;
  end;
end;

procedure TFDExcelData.BitBtn6Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,RowPos:integer;
  PartALl:string;
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_N74_Sticker2.xls'),Pchar(AppDir+'Additional\Develop_N74_Sticker2.xls'),false);
  if FileExists(AppDir+'Additional\Develop_N74_Sticker2.xls')=true then
  begin
    sticker2.Active:=true;
    if  sticker2.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Develop_N74_Sticker2.xls');
        eclApp.WorkSheets[1].Activate;
        //複製套表版面
        for i:=1 to sticker2.RecordCount-1 do
        begin
           eclApp.Range['A1:D7'].Copy;
           RowPos:=1+i*8;
           eclApp.Cells[RowPos,1].Select;
           eclApp.ActiveSheet.Paste;
           eclApp.Rows[(i*8)].RowHeight:=6;
        end;
        //填入資料
        for i:=0 to sticker2.RecordCount-1 do
        begin
          RowPos:=1+i*8;
          eclApp.Cells(RowPos,2):=sticker2.FieldByName('ywpm').value;
          eclApp.Cells(RowPos,4):=sticker2.FieldByName('jijie').value;
          eclApp.Cells(RowPos+1,2):=sticker2.FieldByName('FlexCode').value;
          eclApp.Cells(RowPos+1,4):=sticker2.FieldByName('kfjd').value;
          //eclApp.Cells(RowPos+3,2):=FormatDatetime('YYYY/MM/DD',Date());
          eclApp.Cells(RowPos+4,2):=sticker2.FieldByName('article').value+'/'+sticker2.FieldByName('devcode').value;
          eclApp.Cells(RowPos+5,2):=sticker2.FieldByName('zsywjc').value;
          eclApp.Cells(RowPos+6,2):='X';
          sticker2.Next;
        end;
        eclApp.WorkSheets[2].Activate;
        //複製套表版面
        sticker2.First;
        for i:=1 to sticker2.RecordCount-1 do
        begin
           eclApp.Range['A1:D7'].Copy;
           RowPos:=1+i*8;
           eclApp.Cells[RowPos,1].Select;
           eclApp.ActiveSheet.Paste;
           eclApp.Rows[(i*8)].RowHeight:=6;
        end;
        //填入資料
        for i:=0 to sticker2.RecordCount-1 do
        begin
          RowPos:=1+i*8;
          eclApp.Cells(RowPos,2):=sticker2.FieldByName('ywpm').value;
          eclApp.Cells(RowPos,4):=sticker2.FieldByName('jijie').value;
          eclApp.Cells(RowPos+1,2):=sticker2.FieldByName('FlexCode').value;
          eclApp.Cells(RowPos+1,4):=sticker2.FieldByName('kfjd').value;
          //eclApp.Cells(RowPos+3,2):=FormatDatetime('YYYY/MM/DD',Date());
          eclApp.Cells(RowPos+4,2):=sticker2.FieldByName('article').value+'/'+sticker2.FieldByName('devcode').value;
          eclApp.Cells(RowPos+5,2):=sticker2.FieldByName('zsywjc').value;
          eclApp.Cells(RowPos+6,4):='X';
          sticker2.Next;
        end;
        showmessage('Succeed.');
        eclApp.Visible:=True;
        sticker2.Active:=false;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end else
  begin
    showmessage('File Sticker2 not exists');
  end;

end;

procedure TFDExcelData.Button17Click(Sender: TObject);
begin
  with MOQData do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select a.jijie Season,a.devcode SR,Article,a.clbh MaterialNO,clzl.dwbh Unit,clzl.ywpm MaterialDes,a.csbh,zszl.zsywjc,A.YWSM,');
    sql.Add('case when ZSZL_Dev.SampleMOQ=0 then  null else ZSZL_Dev.SampleMOQ end SampleMOQ,');
    sql.Add('case when ZSZL_Dev.ProdMOQ=0 then null else ZSZL_Dev.ProdMOQ end ProdMOQ,');
    sql.Add('case when ZSZL_Dev.ExtraPrice=0 then null else ZSZL_Dev.ExtraPrice end ExtraPrice,');
    sql.Add('case when ZSZL_Dev.Surcharge=0 then null else ZSZL_Dev.Surcharge end Surcharge,');
    sql.Add('case when ZSZL_Dev.Dyingfee=0 then null else ZSZL_Dev.Dyingfee end Dyingfee,');
    sql.Add('case when (ZSZL_Dev.SampleMOQ=0 or ZSZL_Dev.SampleMOQ is null ) and (ZSZL_Dev.ProdMOQ=0 or ZSZL_Dev.ProdMOQ is null) and (ZSZL_Dev.ExtraPrice=0 or ZSZL_Dev.ExtraPrice is null) and ');
    sql.Add('(ZSZL_Dev.Dyingfee=0 or ZSZL_Dev.Dyingfee is null )and (ZSZL_Dev.Surcharge=0 or ZSZL_Dev.Surcharge is null) then  null else zszl_dev.userdate end userdate,clzl_flex.cldhflex,ZSZL_Dev.Remark');
    sql.Add('from   (select xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
    sql.Add('		left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
    sql.Add('		left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('		left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
    sql.Add('		left join bwzl on xxzls.BWBH = bwzl.BWDH');
    sql.Add('		where xxzl.khdh=''036'' ');
    if  combobox13.text<>'' then
        sql.Add('and xxzl.jijie='''+combobox13.text+'''');
    if ImportList.Checked then
        Sql.Add('and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
    sql.Add('   and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
    sql.Add('   and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null)  ');
    //2021/5/28 增加條件and xxzls.BWLB=1
    if checkbox11.Checked then
      sql.Add('   and xxzls.BWLB=1 ');
    sql.Add('   group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
    sql.Add('   union  ');
    sql.Add('   select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
    sql.Add('   left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
    sql.Add('   inner join clzhzl on clzhzl.cldh=xxzls.clbh');
    sql.Add('   left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
    sql.Add('   left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
    sql.Add('   left join bwzl on xxzls.BWBH = bwzl.BWDH');
    sql.Add('   where xxzl.khdh=''036''  ');
    if  combobox13.text<>'' then
        sql.Add('and xxzl.jijie='''+combobox13.text+'''');
    if ImportList.Checked then
        Sql.Add('and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)  ');
    sql.Add('and (xxzlkf.transfer<>''1'' or xxzlkf.dropped is null)  ');
    //2021/5/28 增加條件and xxzls.BWLB=1
    if checkbox11.Checked then
      sql.Add('   and xxzls.BWLB=1 ');
    sql.Add('group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1,clzhzl.zsdh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
    sql.Add('union ');
    sql.Add('select jijie,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,khdh,devcode,Article,YWSM from (');
    sql.Add('select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
    sql.Add('left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao ');
    sql.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh ');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao ');
    sql.Add('left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
    sql.Add('left join bwzl on xxzls.BWBH = bwzl.BWDH');
    sql.Add('where xxzl.khdh=''036''  ');
    if  combobox13.text<>'' then
        sql.Add('and xxzl.jijie='''+combobox13.text+'''');
    if ImportList.Checked then
        Sql.Add('and kfxxzl.devcode in (select ypdh from ypzlshailist) ');        
    sql.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)');
    sql.Add('and (xxzlkf.transfer<>''1''or xxzlkf.dropped is null)');
    //2021/5/28 增加條件and xxzls.BWLB=1
    if checkbox11.Checked then
      sql.Add('   and xxzls.BWLB=1 ');
    sql.Add('group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1,clzhzl.zsdh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
    sql.Add(')clzhzl2 ');
    sql.Add('inner join clzhzl on clzhzl.cldh=clzhzl2.clbh ');
    sql.Add(')A');
    sql.Add('left join (');
    sql.Add('select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,MaterialMOQ.location as country,');
    sql.Add('country.shippingleadtimeair,country.shippingleadtimesea,country.customclearanceday,MaterialMOQ.SampleMOQ,');
    sql.Add('MaterialMOQ.ProdMOQ,MaterialMOQ.ExtraPrice,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee,MaterialMOQ.userdate,MaterialMOQ.Remark from MaterialMOQ');
    sql.Add('LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH=''cdc'')ZSZL_DEV ON ZSZL_DEV.ZSDH=MaterialMOQ.ZSBH');
    sql.Add('left join Country on Country.Country=ZSZL_DEV.country');
    sql.Add(')ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh and ZSZL_Dev.season=a.jijie ');
    sql.Add('left join clzl on a.clbh=clzl.cldh');
    sql.Add('left join zszl on zszl.zsdh=a.csbh');
    sql.Add('left join clzl_flex on clzl_flex.cldh=a.clbh');
    sql.Add('where 1=1');
    if  edit12.text<>''  then
        sql.Add('and a.clbh='''+edit12.text+'''');
    if  edit13.text<>''  then
        sql.Add('and a.devcode='''+edit13.text+'''');
    if ImportList.Checked then
        Sql.Add('and a.devcode in (select ypdh from ypzlshailist) ');
    if  edit14.text<>''  then
        sql.Add('and a.article='''+edit14.text+'''');
    sql.Add('group by a.jijie ,a.devcode,Article,a.clbh,clzl.dwbh,clzl.ywpm,ZSZL_Dev.SampleMOQ,ZSZL_Dev.ProdMOQ,ZSZL_Dev.ExtraPrice,ZSZL_Dev.Surcharge,ZSZL_Dev.Dyingfee,a.csbh,zszl.zsywjc,zszl_dev.userdate,clzl_flex.cldhflex,A.YWSM,ZSZL_Dev.Remark');
    //showmessage(sql.text);
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TFDExcelData.Button18Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(MOQData);
  end else
  begin
    ExportDefaultExcel(MOQData);
  end;
end;

procedure TFDExcelData.ExportDefaultExcel(Query:TQuery);
var a:string;
    eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  MOQData.active  then
  begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=0   to   MOQData.fieldcount-1   do
      begin
          eclApp.Cells(1,i+1):=MOQData.fields[i].FieldName;
      end;

    MOQData.First;
    j:=2;
    while   not   MOQData.Eof   do
      begin
        for   i:=0   to  MOQData.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=MOQData.Fields[i].Value;
        end;
      MOQData.Next;
      inc(j);
      end;
    eclapp.columns.autofit;
    showmessage('Succeed');
    eclApp.Visible:=True;
  except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TFDExcelData.ExportFormatExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j,k,l:integer;
    ArticleALl,MatAll,Remark:string;
begin
  if  MOQData.active  then
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Columns[1].ColumnWidth := 30;
    eclApp.Columns[2].ColumnWidth := 20;
    eclApp.Columns[3].ColumnWidth := 140;
    eclApp.Cells(1,1):='Colorway ID#';
    eclApp.Cells(1,2):='Base Material ID';
    eclApp.Cells(1,3):='Material';
    eclApp.Range['A1:C1'].Interior.Color:=$32CD9A;
    //
    with Qry_SR do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select a.devcode SR ');
      sql.Add('from (select xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
      sql.Add('		left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.Add('		left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
      sql.Add('		left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
      sql.Add('		left join bwzl on xxzls.BWBH = bwzl.BWDH');
      sql.Add('		where xxzl.khdh=''036'' ');
      if combobox13.text<>'' then
        sql.Add(' and xxzl.jijie='''+combobox13.text+'''');
      if ImportList.Checked then
        sql.Add(' and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
      sql.Add('   and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
      sql.Add('   and (xxzlkf.transfer<>''1'' or xxzlkf.dropped is null) ');
      if checkbox11.Checked then
        sql.Add(' and xxzls.BWLB=1 ');
      sql.Add('   group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
      sql.Add('   union  ');
      sql.Add('   select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
      sql.Add('   left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.Add('   inner join clzhzl on clzhzl.cldh=xxzls.clbh');
      sql.Add('   left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
      sql.Add('   left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
      sql.Add('   left join bwzl on xxzls.BWBH = bwzl.BWDH');
      sql.Add('   where xxzl.khdh=''036''  ');
      if combobox13.text<>'' then
        sql.Add(' and xxzl.jijie='''+combobox13.text+'''');
      if ImportList.Checked then
        sql.Add(' and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
      sql.Add('   and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)  ');
      sql.Add('   and (xxzlkf.transfer<>''1'' or xxzlkf.dropped is null) ');
      if checkbox11.Checked then
        sql.Add(' and xxzls.BWLB=1 ');
      sql.Add('   group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1,clzhzl.zsdh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
      sql.Add('   union ');
      sql.Add('   select jijie,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,khdh,devcode,Article,YWSM from (');
      sql.Add('   select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
      sql.Add('   left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao ');
      sql.Add('   inner join clzhzl on clzhzl.cldh=xxzls.clbh ');
      sql.Add('   left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao ');
      sql.Add('   left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
      sql.Add('   left join bwzl on xxzls.BWBH = bwzl.BWDH');
      sql.Add('   where xxzl.khdh=''036''  ');
      if combobox13.text<>'' then
        sql.Add(' and xxzl.jijie='''+combobox13.text+'''');
      if ImportList.Checked then
        sql.Add(' and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
      sql.Add('   and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
      sql.Add('   and (xxzlkf.transfer<>''1'' or xxzlkf.dropped is null) ');
      if checkbox11.Checked then
        sql.Add(' and xxzls.BWLB=1 ');
      sql.Add('   group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1,clzhzl.zsdh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
      sql.Add(' )clzhzl2 ');
      sql.Add(' inner join clzhzl on clzhzl.cldh=clzhzl2.clbh ');
      sql.Add(')A');
      sql.Add('left join (');
      sql.Add(' select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,MaterialMOQ.location as country,');
      sql.Add(' country.shippingleadtimeair,country.shippingleadtimesea,country.customclearanceday,MaterialMOQ.SampleMOQ,');
      sql.Add(' MaterialMOQ.ProdMOQ,MaterialMOQ.ExtraPrice,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee,MaterialMOQ.userdate,MaterialMOQ.Remark from MaterialMOQ');
      sql.Add(' LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH=''cdc'')ZSZL_DEV ON ZSZL_DEV.ZSDH=MaterialMOQ.ZSBH');
      sql.Add(' left join Country on Country.Country=ZSZL_DEV.country');
      sql.Add(' )ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh and ZSZL_Dev.season=a.jijie ');
      sql.Add(' left join clzl on a.clbh=clzl.cldh');
      sql.Add(' left join zszl on zszl.zsdh=a.csbh');
      sql.Add(' left join clzl_flex on clzl_flex.cldh=a.clbh');
      sql.Add(' where 1=1');
      if  edit12.text<>''  then
        sql.Add(' and a.clbh='''+edit12.text+'''');
      if  edit13.text<>''  then
        sql.Add(' and a.devcode='''+edit13.text+'''');
      if ImportList.Checked then
        sql.Add(' and a.devcode in (select ypdh from ypzlshailist) ');
      if  edit14.text<>''  then
        sql.Add(' and a.article='''+edit14.text+'''');
      sql.Add(' group by a.devcode ');
      sql.Add(' order by a.devcode ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    //
    with Qry_Mat do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' select a.jijie Season,a.devcode SR,a.clbh MaterialNO,clzl.dwbh Unit,clzl.ywpm MaterialDes,a.csbh,zszl.zsywjc,');
      sql.Add(' case when ZSZL_Dev.SampleMOQ=0 then  null else ZSZL_Dev.SampleMOQ end SampleMOQ,');
      sql.Add(' case when ZSZL_Dev.ProdMOQ=0 then null else ZSZL_Dev.ProdMOQ end ProdMOQ,');
      sql.Add(' case when ZSZL_Dev.ExtraPrice=0 then null else ZSZL_Dev.ExtraPrice end ExtraPrice,');
      sql.Add(' case when ZSZL_Dev.Surcharge=0 then null else ZSZL_Dev.Surcharge end Surcharge,');
      sql.Add(' case when ZSZL_Dev.Dyingfee=0 then null else ZSZL_Dev.Dyingfee end Dyingfee,');
      sql.Add(' case when (ZSZL_Dev.SampleMOQ=0 or ZSZL_Dev.SampleMOQ is null ) and (ZSZL_Dev.ProdMOQ=0 or ZSZL_Dev.ProdMOQ is null) and (ZSZL_Dev.ExtraPrice=0 or ZSZL_Dev.ExtraPrice is null) and ');
      sql.Add(' (ZSZL_Dev.Dyingfee=0 or ZSZL_Dev.Dyingfee is null )and (ZSZL_Dev.Surcharge=0 or ZSZL_Dev.Surcharge is null) then  null else zszl_dev.userdate end userdate,clzl_flex.cldhflex,ZSZL_Dev.Remark');
      sql.Add(' from (select xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
      sql.Add('		left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.Add('		left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
      sql.Add('		left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
      sql.Add('		left join bwzl on xxzls.BWBH = bwzl.BWDH');
      sql.Add('		where xxzl.khdh=''036'' ');
      if  combobox13.text<>'' then
        sql.Add(' and xxzl.jijie='''+combobox13.text+'''');
      if ImportList.Checked then
        sql.Add(' and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
      sql.Add('   and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
      sql.Add('   and (xxzlkf.transfer<>''1'' or xxzlkf.dropped is null) ');
      if checkbox11.Checked then
        sql.Add(' and xxzls.BWLB=1 ');
      sql.Add('   group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,xxzls.clbh,xxzls.csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
      sql.Add('   union  ');
      sql.Add('   select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
      sql.Add('   left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.Add('   inner join clzhzl on clzhzl.cldh=xxzls.clbh');
      sql.Add('   left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao');
      sql.Add('   left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
      sql.Add('   left join bwzl on xxzls.BWBH = bwzl.BWDH');
      sql.Add('   where xxzl.khdh=''036''  ');
      if  combobox13.text<>'' then
        sql.Add(' and xxzl.jijie='''+combobox13.text+'''');
      if ImportList.Checked then
        sql.Add(' and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
      sql.Add('   and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
      sql.Add('   and (xxzlkf.transfer<>''1'' or xxzlkf.dropped is null) ');
      if checkbox11.Checked then
        sql.Add(' and xxzls.BWLB=1 ');
      sql.Add('   group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1,clzhzl.zsdh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
      sql.Add('   union ');
      sql.Add('   select jijie,xiexing,shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,khdh,devcode,Article,YWSM from (');
      sql.Add('   select xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1 as clbh,clzhzl.zsdh as csbh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM from xxzl');
      sql.Add('   left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao ');
      sql.Add('   inner join clzhzl on clzhzl.cldh=xxzls.clbh ');
      sql.Add('   left join kfxxzl on kfxxzl.xiexing=xxzl.xiexing and kfxxzl.shehao=xxzl.shehao ');
      sql.Add('   left join xxzlkf on xxzlkf.xiexing=xxzl.xiexing and xxzlkf.shehao=xxzl.shehao');
      sql.Add('   left join bwzl on xxzls.BWBH = bwzl.BWDH');
      sql.Add('   where xxzl.khdh=''036''  ');
      if  combobox13.text<>'' then
        sql.Add(' and xxzl.jijie='''+combobox13.text+'''');
      if ImportList.Checked then
        sql.Add(' and kfxxzl.devcode in (select ypdh from ypzlshailist) ');
      sql.Add('   and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null) ');
      sql.Add('   and (xxzlkf.transfer<>''1'' or xxzlkf.dropped is null) ');
      if checkbox11.Checked then
        sql.Add(' and xxzls.BWLB=1 ');
      sql.Add('   group by xxzl.jijie,xxzl.xiexing,xxzl.shehao,clzhzl.cldh1,clzhzl.zsdh,xxzl.khdh,kfxxzl.devcode,xxzl.Article,bwzl.YWSM');
      sql.Add(' )clzhzl2 ');
      sql.Add(' inner join clzhzl on clzhzl.cldh=clzhzl2.clbh ');
      sql.Add(')A');
      sql.Add(' left join (');
      sql.Add(' select zsbh,clbh,season,sampleleadtime,prodleadtime,forecast_leadtime,MaterialMOQ.location as country,');
      sql.Add(' country.shippingleadtimeair,country.shippingleadtimesea,country.customclearanceday,MaterialMOQ.SampleMOQ,');
      sql.Add(' MaterialMOQ.ProdMOQ,MaterialMOQ.ExtraPrice,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee,MaterialMOQ.userdate,MaterialMOQ.Remark from MaterialMOQ');
      sql.Add(' LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH=''cdc'')ZSZL_DEV ON ZSZL_DEV.ZSDH=MaterialMOQ.ZSBH');
      sql.Add(' left join Country on Country.Country=ZSZL_DEV.country');
      sql.Add(' )ZSZL_Dev on ZSZL_Dev.zsbh=a.csbh and ZSZL_Dev.clbh=a.clbh and ZSZL_Dev.season=a.jijie ');
      sql.Add(' left join clzl on a.clbh=clzl.cldh');
      sql.Add(' left join zszl on zszl.zsdh=a.csbh');
      sql.Add(' left join clzl_flex on clzl_flex.cldh=a.clbh');
      sql.Add(' where 1=1');
      if  edit12.text<>''  then
        sql.Add(' and a.clbh='''+edit12.text+'''');
      if  edit13.text<>''  then
        sql.Add(' and a.devcode='''+edit13.text+'''');
      if ImportList.Checked then
        sql.Add(' and a.devcode in (select ypdh from ypzlshailist) ');
      if  edit14.text<>''  then
        sql.Add(' and a.article='''+edit14.text+'''');
      sql.Add(' and (ProdMOQ<>0 or ExtraPrice<>0 or Surcharge<>0 or Dyingfee<>0)');
      sql.Add(' group by a.jijie ,a.devcode,a.clbh,clzl.dwbh,clzl.ywpm,ZSZL_Dev.SampleMOQ,ZSZL_Dev.ProdMOQ,ZSZL_Dev.ExtraPrice,ZSZL_Dev.Surcharge,ZSZL_Dev.Dyingfee,a.csbh,zszl.zsywjc,zszl_dev.userdate,clzl_flex.cldhflex,ZSZL_Dev.Remark');
      sql.Add(' order by a.devcode ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    //
    Qry_SR.First;
    j:=2;
    while   not  Qry_SR.Eof   do
    begin
      eclApp.Cells(j,1):=Qry_SR.FieldByName('SR').value;
      //Base Material ID
      MOQData.First;
      ArticleALl:='';
      while  not  MOQData.Eof   do
      begin
        if (Qry_SR.FieldByName('SR').Value = MOQData.FieldByName('SR').Value) then
        begin
          if (Pos(MOQData.FieldByName('Article').Value, ArticleALl)>0) then
            ArticleALl:=ArticleALl
          else
            ArticleALl:=ArticleALl+'/'+MOQData.FieldByName('Article').Value;
        end;
        MOQData.Next;
      end;
      eclApp.Cells(j,2):=Copy(ArticleALl,2,length(ArticleALl));
      //Material
      Qry_Mat.First;
      MEMO1.TEXT:='';
      k:=1;
      while  not  Qry_Mat.Eof   do
      begin
        if (Qry_SR.FieldByName('SR').Value = Qry_Mat.FieldByName('SR').Value) then
        begin
          MatAll:='';
          Remark:='';
          if (Qry_Mat.FieldByName('ProdMOQ').Value<>null) then
            MatAll:=MatAll+'/ProdMOQ: '+Qry_Mat.FieldByName('ProdMOQ').AsString+Qry_Mat.FieldByName('Unit').AsString;
          if (Qry_Mat.FieldByName('ExtraPrice').Value<>null) then
            MatAll:=MatAll+'/ExtraPrice: '+Qry_Mat.FieldByName('ExtraPrice').AsString+Qry_Mat.FieldByName('Unit').AsString;
          if (Qry_Mat.FieldByName('Surcharge').Value<>null) then
            MatAll:=MatAll+'/Surcharge: '+Qry_Mat.FieldByName('Surcharge').AsString+Qry_Mat.FieldByName('Unit').AsString;
          if (Qry_Mat.FieldByName('Dyingfee').Value<>null) then
            MatAll:=MatAll+'/Dyingfee: '+Qry_Mat.FieldByName('Dyingfee').AsString+Qry_Mat.FieldByName('Unit').AsString;
          if (Qry_Mat.FieldByName('Remark').Value<>'') then
            Remark:=Remark+'/Remark: '+Qry_Mat.FieldByName('Remark').AsString;
          //
          MEMO1.TEXT:=MEMO1.TEXT+inttostr(k)+'/ '+Qry_Mat.FieldByName('MaterialDes').AsString+'/'+Qry_Mat.FieldByName('zsywjc').AsString+MatAll+Remark+Chr(10)+'';
          inc(k);
        end;
        Qry_Mat.Next;
      end;
      eclApp.Cells(j,3):=MEMO1.TEXT;
      Qry_SR.Next;
      inc(j);
      //
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,3]].borders[k].linestyle:=1;
      end;
    end;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
end;

procedure TFDExcelData.BitBtn3Click(Sender: TObject);
begin

  with RE_Check do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select ypdh,RE_check from YPzl ');
    SQL.Add('where YPDH=:YPDH ');
    //memo2.text:=sql.text;
    active:=true;      
    requestlive:=false;
    cachedupdates:=false;
  end;
  if FD_Check_time_CK.Checked=true then
    FD_Check_time.Active:=true
  else
    FD_Check_time.Active:=false;

end;

procedure TFDExcelData.CheckBox13Click(Sender: TObject);
begin
  Button5.Click;
end;

procedure TFDExcelData.CheckBox14Click(Sender: TObject);
begin
  Button5.Click;
end;

procedure TFDExcelData.MemoMaterial1Click(Sender: TObject);
begin
  if YPZLSGrid.SelectedField.FieldName='CLBH' then
  begin
    FDExcelData_Detai:=TFDExcelData_Detai.create(self);
    FDExcelData_Detai.ShowModal();
    FDExcelData_Detai.Free;
  end;
end;

procedure TFDExcelData.B_QueryClick(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZLInvoiceS.CINO, CGZLInvoiceS.ScanDate, CGZLInvoiceS.CGNO, CGZLInvoiceS.CLBH, CLZL.YWPM, CLZL.DWBH,');
    SQL.Add('CGZLInvoiceS.Qty, CAST(YPZL.DEVCODE AS VARCHAR(250)) AS DEVCODE, CGZL.PURPOSE, CAST(YPZL.FD AS VARCHAR(100)) AS FD,');
    SQL.Add('CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''OK'' THEN 1 ELSE 0 END AS BIT) AS OK,');
    SQL.Add('CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''NG'' THEN 1 ELSE 0 END AS BIT) AS NG,');
    SQL.Add('CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''ForThisStage'' THEN 1 ELSE 0 END AS BIT) AS ForThisStage,');
    SQL.Add('CGZLInvoiceS.MEMO1 AS Noted, CGZLInvoiceS.CheckID, CGZLInvoiceS.CheckDate,CGZL_Color.Remark,MaterialNG.Remark AS NG_Remark FROM CGZLInvoiceS');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLInvoiceS.CLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLInvoiceS.CGNO');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DISTINCT InvoiceS.CINO, InvoiceS.CGNO, InvoiceS.CLBH, STUFF((');
    SQL.Add('    SELECT '','' + KFXXZL.DEVCODE FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.XieXing = YPZL.XieXing AND KFXXZL.SheHao = YPZL.SheHao');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''');
    SQL.Add('    AND CGZLInvoiceS.CINO = InvoiceS.CINO AND CGZLInvoiceS.CGNO = InvoiceS.CGNO AND CGZLInvoiceS.CLBH = InvoiceS.CLBH');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 1, '''') AS DEVCODE, STUFF((');
    SQL.Add('    SELECT '','' + YPZL.FD FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''');
    SQL.Add('    AND CGZLInvoiceS.CINO = InvoiceS.CINO AND CGZLInvoiceS.CGNO = InvoiceS.CGNO AND CGZLInvoiceS.CLBH = InvoiceS.CLBH');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 1, '''') AS FD FROM (');
    SQL.Add('    SELECT CGZLInvoiceS.CINO, CGZLInvoiceS.CGNO, CGZLInvoiceS.CLBH FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''');
    SQL.Add('  ) AS InvoiceS');
    SQL.Add(') AS YPZL ON YPZL.CINO = CGZLInvoiceS.CINO AND YPZL.CGNO = CGZLInvoiceS.CGNO AND YPZL.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('LEFT JOIN CGZL_color on CGZL_color.CGNO=CGZLInvoiceS.CGNO and CGZL_color.CLBH=CGZLInvoiceS.CLBH ');
    SQL.Add('LEFT JOIN (SELECT CGNO,CLBH,Remark from MaterialNG ');
    SQL.Add('           GROUP BY CGNO,CLBH,Remark )MaterialNG on MaterialNG.CGNO=CGZLInvoiceS.CGNO and MaterialNG.CLBH=CGZLInvoiceS.CLBH ');
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH = CGZL.ZSBH ');
    SQL.Add('WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''');
    if (ED_MatNo.Text <> '') then
      SQL.Add('AND CGZLInvoiceS.CLBH LIKE ''' + ED_MatNo.Text + '%''');
    if (ED_SR.Text <> '') then
      SQL.Add('AND CAST(YPZL.DEVCODE AS VARCHAR(250)) LIKE ''%' + ED_SR.Text + '%''');
    if (ED_Stage.Text <> '') then
      SQL.Add('AND CGZL.PURPOSE LIKE ''' + ED_Stage.Text + '%''');
    if (ED_FD.Text <> '') then
      SQL.Add('AND CAST(YPZL.FD AS VARCHAR(100)) LIKE ''%' + ED_FD.Text + '%''');
    if (ED_Supplier.Text <> '') then
      SQL.Add('AND ZSZL.ZSYWJC LIKE ''%' + ED_Supplier.Text + '%''');
    if (CB1.ItemIndex = 1) then
      SQL.Add('AND CGZLInvoiceS.CheckResult = ''OK''')
    else if (CB1.ItemIndex = 2) then
      SQL.Add('AND CGZLInvoiceS.CheckResult = ''NG''')
    else if (CB1.ItemIndex = 3) then
      SQL.Add('AND CGZLInvoiceS.CheckResult = ''ForThisStage''')
    else if (CB1.ItemIndex = 4) then
      SQL.Add('AND CGZLInvoiceS.CheckResult IS NULL');
    SQL.Add('ORDER BY CGZLInvoiceS.ScanDate');
    Active := true;
  end;

  if (QReport.RecordCount > 0) then
    BB4.Enabled := true
  else
    BB4.Enabled := false;
end;

procedure TFDExcelData.B_ExcelClick(Sender: TObject);
var
  eclApp, WorkBook, GSheet: OleVariant;
  Col, Row: Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := eclApp.workbooks.Add;
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[1, DBGridEh12.Columns.Count]].Merge;
    eclApp.Cells[1, 1] := 'MAU KIEM MAU 色卡確認表 Material color swatch check list';
    eclApp.Cells[1, 1].HorizontalAlignment := xlHAlignCenter;
    eclApp.Cells[1, 1].Font.Size := 18;
    eclApp.Cells[1, 1].Font.Color := clRed;
    eclApp.Cells[1, 1].Font.Bold := true;

    for Col := 1 to DBGridEh12.Columns.Count do
    begin
      eclApp.Cells[2, Col] := DBGridEh12.Columns[Col-1].Title.Caption;
    end;

    QReport.First;
    Row := 3;
    while not QReport.Eof do
    begin
      for Col := 1 to DBGridEh12.Columns.Count do
      begin
        if (DBGridEh12.Columns[Col-1].FieldName <> 'Qty') then
          eclApp.Cells[Row, Col].NumberFormatLocal := '@';
        if (DBGridEh12.Columns[Col-1].FieldName = 'OK') OR (DBGridEh12.Columns[Col-1].FieldName = 'NG') OR (DBGridEh12.Columns[Col-1].FieldName = 'ForThisStage') then
        begin
          if (QReport.FieldByName(DBGridEh12.Columns[Col-1].FieldName).AsBoolean) then
            eclApp.Cells[Row, Col] := 'V';
        end
        else begin
          eclApp.Cells[Row, Col] := QReport.FieldByName(DBGridEh12.Columns[Col-1].FieldName).Value;
        end;
      end;

      Inc(Row);
      QReport.Next;
    end;
                             
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[QReport.RecordCount+2, DBGridEh12.Columns.Count]].Font.Name := 'Calibri';
    eclApp.Range[eclApp.Cells[2, 1], eclApp.Cells[2, DBGridEh12.Columns.Count-4]].Interior.Color := $0050D092;
    eclApp.Range[eclApp.Cells[2, DBGridEh12.Columns.Count-3], eclApp.Cells[2, DBGridEh12.Columns.Count]].Interior.Color := $00B4D5FC;
    eclApp.Range[eclApp.Cells[2, 1], eclApp.Cells[QReport.RecordCount+2, DBGridEh12.Columns.Count]].Borders.LineStyle := xlContinuous;
    eclApp.Columns.AutoFit;
    eclApp.Columns[5].ColumnWidth := 50;

    ShowMessage('Succeed');
    eclApp.Visible := True;
  except on F:Exception do
    ShowMessage(F.Message);
  end;
end;

procedure TFDExcelData.BB4Click(Sender: TObject);
begin
  with QReport do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TFDExcelData.BB5Click(Sender: TObject);
var
  i: integer;
  Status: string;
begin
  try
    QReport.First;
    for i := 1 to QReport.RecordCount do
    begin
      case QReport.UpdateStatus of
        usModified:
        begin
          if (QReport.FieldByName('OK').AsBoolean) then
            Status := '''OK'''
          else if (QReport.FieldByName('NG').AsBoolean) then
            Status := '''NG'''
          else if (QReport.FieldByName('ForThisStage').AsBoolean) then
            Status := '''ForThisStage'''
          else
            Status := 'NULL';
          //
          with BDelRec do
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into BDelRec ');
            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
            sql.add('values ('+''''+'CGZLInvoiceS_Check'+''''+','+''''+QReport.fieldbyname('CINO').Value+'''');
            sql.add(','+''''+QReport.fieldbyname('CGNO').Value+'***'+QReport.fieldbyname('CLBH').Value+'***'+StringReplace(Status,'''','',[rfReplaceAll])+'''');
            sql.add(','+''''+QReport.fieldbyname('CheckID').AsString+''''+','+''''+main.Edit1.Text+''''+',getdate())');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
            active:=false;
          end;
          //
          with QUpdate do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('UPDATE CGZLInvoiceS SET CheckResult = ' + Status + ', CheckID = ''' + QReport.FieldByName('CheckID').AsString + ''', CheckDate = ''' + FormatDateTime('yyyy/MM/dd hh:mm:ss', QReport.FieldByName('CheckDate').AsDateTime) + ''', MEMO1 = ''' + QReport.FieldByName('Noted').AsString + '''');
            SQL.Add('WHERE CINO = ''' + QReport.FieldByName('CINO').AsString + ''' AND CGNO = ''' + QReport.FieldByName('CGNO').AsString + ''' AND CLBH = ''' + QReport.FieldByName('CLBH').AsString + '''');
            ExecSQL;
          end;
        end;
      end;

      QReport.Next;
    end;

    QReport.Active := false;
    QReport.CachedUpdates := false;
    QReport.RequestLive := false;
    QReport.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TFDExcelData.BB6Click(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TFDExcelData.DBGridEh12Columns12UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  QReport.FieldByName('NG').Value := false;
  QReport.FieldByName('ForThisStage').Value := false;
  QReport.FieldByName('CheckID').Value := main.Edit1.Text;
  QReport.FieldByName('CheckDate').Value := Now;
end;

procedure TFDExcelData.DBGridEh12Columns13UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  QReport.FieldByName('OK').Value := false;
  QReport.FieldByName('ForThisStage').Value := false;
  QReport.FieldByName('CheckID').Value := main.Edit1.Text;
  QReport.FieldByName('CheckDate').Value := Now;
end;

procedure TFDExcelData.DBGridEh12Columns14UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  QReport.FieldByName('OK').Value := false;
  QReport.FieldByName('NG').Value := false;
  QReport.FieldByName('CheckID').Value := main.Edit1.Text;
  QReport.FieldByName('CheckDate').Value := Now;
end;

procedure TFDExcelData.Button19Click(Sender: TObject);
var
  i,j,n:integer;
  flag:boolean;
  eof:string;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Ypdh:TStringlist;
begin
  with temp do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('delete YPZLShaiList');
    ExecSQL;
    active:=false;
  end;
  Ypdh:=TStringList.Create;
  //
  if opendialog.Execute then
  begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=2;
    flag:=true;
    //
    while(flag=true)  do
    begin
      Ypdh.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
      eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
      n:=n+1;
      j:=j+1;
      if (eof='') then
        flag:=false;
    end;
    MsExcelWorkBook.Close;
    MsExcel.Quit;
    //
    for j:=0 to n-2 do
    begin
      with temp do
      begin
        active:=false;
        SQL.Clear;
        SQL.Add('insert into YPZLShaiList (YPDH,USERID,USERDATE)');
        SQL.Add('values ('''+ypdh[j]+''','''+main.Edit1.text+''',GETDATE())');
        ExecSQL;
        active:=false;
      end;
    end;
    Showmessage('Success.');
  end;
  
end;

procedure TFDExcelData.YPZLSAfterOpen(DataSet: TDataSet);
  var s :integer;
begin
  s:=0;
  YPZLS.First;
  while not YPZLS.Eof do
  begin
    if (YPZLS.FieldByName('CQDH').AsString='VN') then
      inc(s);
    YPZLS.Next;
  end;
  if CurrToStr(YPZLSGrid.Columns[1].Footers[0].SumValue) <> '0' then
    qtyVN.Caption:=IntToStr(s)+'/'+ CurrToStr(YPZLSGrid.Columns[1].Footers[0].SumValue)
  else qtyVN.Caption:='N/A';
  if CurrToStr(YPZLSGrid.Columns[1].Footers[0].SumValue) <> '0' then
    ptVN.Caption:=FormatFloat('##.00', s*100/StrToInt(CurrToStr(YPZLSGrid.Columns[1].Footers[0].SumValue)))+' %'
  else ptVN.Caption:='N/A';
  YPZLS.First;
end;

procedure TFDExcelData.Detail1Click(Sender: TObject);
begin
  UpdateDetail:=TUpdateDetail.create(self);
  UpdateDetail.ShowModal();
end;

procedure TFDExcelData.PageChange();
begin
 
end;

procedure TFDExcelData.BF6Click(Sender: TObject);
begin
  with RE_Check do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
      BF4.Enabled:=true;
      BF5.enabled:=false;
      BF6.enabled:=false;
end;

end.

