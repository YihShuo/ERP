unit CostingCBD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, GridsEh, DBGridEh,
  ComCtrls, DBTables, DB,Comobj, math;

type
  TCostingCBD = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    DBGridEh2: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label22: TLabel;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TButton;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    Panel3: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label15: TLabel;
    Label52: TLabel;
    EDC2: TEdit;
    EDC5: TEdit;
    BC1: TBitBtn;
    EDC1: TEdit;
    CheckBox3: TCheckBox;
    TabSheet4: TTabSheet;
    Memo1: TMemo;
    UploadlQuery: TQuery;
    DataSource1: TDataSource;
    opendialog: TOpenDialog;
    ExistCheck: TQuery;
    DBGridEh6: TDBGridEh;
    DataSource2: TDataSource;
    UpdateSQL1: TUpdateSQL;
    BitBtn8: TBitBtn;
    Label5: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    Edit10: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    BA8: TBitBtn;
    BA6: TBitBtn;
    BA1: TBitBtn;
    ED1: TEdit;
    ED2: TEdit;
    ED3: TEdit;
    QueryMTL: TQuery;
    DataSource3: TDataSource;
    UpdateSQL3: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    CheckBox6: TCheckBox;
    UploadDetailQuery: TQuery;
    UploadDetailQueryNo: TIntegerField;
    UploadDetailQueryPartName: TStringField;
    UploadDetailQueryComponent: TStringField;
    UploadDetailQueryFlexMaterialCode: TStringField;
    UploadDetailQueryMeasure: TStringField;
    UploadDetailQueryT1Freight: TFloatField;
    UploadDetailQueryMaterialComments: TStringField;
    UploadDetailQuerySupplier: TStringField;
    UploadDetailQuerySupplierCode: TStringField;
    UploadDetailQueryTooling: TStringField;
    UploadDetailQueryTnRP: TStringField;
    UploadDetailQueryColor: TStringField;
    UploadDetailQueryColorComments: TStringField;
    UploadDetailQueryPriceStatus: TStringField;
    UploadDetailQueryUserName: TStringField;
    UploadDetailQuerySecondLabor: TCurrencyField;
    UploadDetailQuerySecondOverhead: TCurrencyField;
    UploadDetailQueryRemark: TStringField;
    UploadDetailQuerySKU: TStringField;
    UploadDetailQueryCostingSeason: TStringField;
    UploadlQuerySKU: TStringField;
    UploadlQueryCostingSeason: TStringField;
    UploadlQuerySR: TStringField;
    UploadlQueryFactoryPriceSubmitStatus: TStringField;
    UploadlQueryFTYBOMStatus: TStringField;
    UploadlQueryProfitRate: TFloatField;
    UploadlQueryMoldCharge: TCurrencyField;
    UploadlQueryOtherAdjustment: TCurrencyField;
    UploadlQueryFlexSeason: TStringField;
    UploadlQueryDevelopmentSeason: TStringField;
    UploadlQueryDevelopmentCenter: TStringField;
    UploadlQueryFactory: TStringField;
    UploadlQuerySampleSize: TFloatField;
    UploadlQueryCostingSize: TFloatField;
    UploadlQueryGenderClass: TStringField;
    UploadlQueryCut: TStringField;
    UploadlQueryTechLevel: TStringField;
    UploadlQueryLast: TStringField;
    UploadlQueryProductionType: TStringField;
    UploadlQueryDistributionType: TStringField;
    UploadlQueryCategory: TStringField;
    UploadlQueryPlanningLevel2: TStringField;
    UploadlQueryProductLine: TStringField;
    UploadlQueryDirectToDC: TStringField;
    UploadlQueryFactoryDeveloper: TStringField;
    UploadlQueryFactoryDevManager: TStringField;
    UploadlQueryFactoryCosting: TStringField;
    UploadlQueryFactoryCostingManager: TStringField;
    UploadlQueryCLOCosting: TStringField;
    UploadlQueryCLOCostingManager: TStringField;
    UploadlQueryLastUpdatedColorwayStatus: TDateTimeField;
    UploadlQueryLastUpdatedSourceFlag: TDateTimeField;
    UploadlQueryLastUpdatedCLOConfirmationDate: TDateTimeField;
    UploadlQueryLastUpdatedByFTYBOMCost: TStringField;
    UploadlQueryLastUpdatedFactoryConfirmation: TDateTimeField;
    UploadlQueryLastUpdatedDevelopment: TDateTimeField;
    UploadlQueryLastUpdatedDateFTYBOMCost: TDateTimeField;
    UploadlQueryLastUpdatedFactoryPriceSubmit: TDateTimeField;
    UploadlQueryLastUpdatedFactoryPriceStatus: TDateTimeField;
    UploadlQueryInitialBuyMonth: TStringField;
    UploadlQueryUserName: TStringField;
    UploadlQueryUserUpdateTime: TDateTimeField;
    UploadDetailQueryMTL_No: TIntegerField;
    UploadDetailQueryColor_No: TIntegerField;
    UploadDetailQueryProcess_No: TIntegerField;
    UploadDetailQueryColorGroup: TStringField;
    UploadDetailQueryColorQty: TIntegerField;
    UploadDetailQueryGUMColor: TIntegerField;
    UploadDetailQuerySecondLF: TStringField;
    UploadDetailQuerySecondOF: TStringField;
    UploadDetailQueryTRPnGRPUpcharge: TFloatField;
    UploadDetailQuerySupplierFreightValue: TFloatField;
    UploadDetailQueryMaterialSeason: TStringField;
    UploadDetailQueryMaterial_Text: TMemoField;
    UploadDetailQueryMaterial: TStringField;
    UploadlQueryRefModel: TStringField;
    CB3: TCheckBox;
    CB2: TCheckBox;
    Label2: TLabel;
    Label7: TLabel;
    CB1: TCheckBox;
    Label12: TLabel;
    Label13: TLabel;
    ED5: TEdit;
    ED6: TEdit;
    Label17: TLabel;
    CB4: TCheckBox;
    CB6: TCheckBox;
    CB7: TCheckBox;
    CB5: TCheckBox;
    CB8: TCheckBox;
    ED4: TEdit;
    QueryMTLMaterialSeason: TStringField;
    QueryMTLPriceStatus: TStringField;
    QueryMTLFlexMaterialCode: TStringField;
    QueryMTLMaterialComments: TStringField;
    QueryMTLSupplier: TStringField;
    QueryMTLSupplierCode: TStringField;
    QueryMTLDeliveryTerm: TStringField;
    QueryMTLT1Freight: TFloatField;
    QueryMTLTnRP: TStringField;
    QueryMTLTooling: TStringField;
    QueryMTLMeasure: TStringField;
    QueryMTLMeasureOVR: TStringField;
    QueryMTLColor: TStringField;
    QueryMTLColorComments: TStringField;
    QueryMTLColorGroup: TStringField;
    QueryMTLSKU: TStringField;
    QueryMTLCostingSeason: TStringField;
    QueryMTLRemark: TStringField;
    QueryMTLUserName: TStringField;
    QueryMTLMTL_No: TIntegerField;
    QueryMTLColor_No: TIntegerField;
    QueryMTLProcess_No: TIntegerField;
    QueryMTLMaterial_text: TMemoField;
    QueryMTLMaterialComments2: TStringField;
    Label23: TLabel;
    ED7: TEdit;
    Label24: TLabel;
    ED8: TEdit;
    Label25: TLabel;
    ED9: TEdit;
    CheckBox2: TCheckBox;
    CheckBox5: TCheckBox;
    UploadDetailQuerymoldsPperson: TIntegerField;
    UploadDetailQuerypairPmold: TIntegerField;
    UploadDetailQueryPCsPPair: TIntegerField;
    UploadDetailQueryColorQty_Neon: TIntegerField;
    UploadDetailQueryTurnOverRate: TIntegerField;
    QueryProcess: TQuery;
    DataSource4: TDataSource;
    QueryProcessComponent: TStringField;
    QueryProcessProcess_No: TIntegerField;
    QueryProcessTooling: TStringField;
    QueryProcessMaterialComments: TStringField;
    QueryProcessColorQty: TIntegerField;
    QueryProcessColorQty_Neon: TIntegerField;
    QueryProcessGUMColor: TIntegerField;
    QueryProcessmoldsPperson: TIntegerField;
    QueryProcesspairPmold: TIntegerField;
    QueryProcessPCsPPair: TIntegerField;
    QueryProcessTurnOverRate: TIntegerField;
    QueryProcessSecondLF: TStringField;
    QueryProcessSecondOF: TStringField;
    QueryProcessSKU: TStringField;
    QueryProcessCostingSeason: TStringField;
    QueryProcessNo: TIntegerField;
    QueryProcessUserName: TStringField;
    QueryProcessUserUpdateTime: TDateTimeField;
    Label18: TLabel;
    EDC3: TEdit;
    BC2: TBitBtn;
    Label19: TLabel;
    EDC4: TEdit;
    QueryProcessSecondLabor: TFloatField;
    QueryProcessSecondOverhead: TFloatField;
    UpdateSQL4: TUpdateSQL;
    Label20: TLabel;
    BView1: TBitBtn;
    BView2: TBitBtn;
    BView3: TBitBtn;
    UploadlQueryForecastLevel: TStringField;
    QueryMTLComponent: TStringField;
    ED10: TEdit;
    Label10: TLabel;
    ED11: TEdit;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    UploadlQueryRemark2: TMemoField;
    UploadlQueryMaterial: TStringField;
    CheckBox4: TCheckBox;
    CheckBox7: TCheckBox;
    UploadDetailQueryFactory: TStringField;
    ComboBox2: TComboBox;
    Label21: TLabel;
    ComboBox3: TComboBox;
    UploadlQueryColorwayLongName: TStringField;
    UploadlQuerySourceFlag: TStringField;
    UploadDetailQueryCutLoss: TStringField;
    UploadDetailQueryPercentage: TStringField;
    UploadDetailQueryNetUsage: TStringField;
    UploadDetailQueryGrossUsage: TStringField;
    UploadDetailQueryUnitCost: TStringField;
    UploadDetailQueryMeasureOVR: TStringField;
    UploadDetailQueryPriceOVR: TStringField;
    UploadDetailQueryLandedCost: TStringField;
    UploadDetailQueryMaterialCost: TStringField;
    UploadDetailQueryBaseMaterialPrice: TStringField;
    TIMEQRY: TQuery;
    QueryMTLPriceOVR: TStringField;
    QueryMTLMaterialCost: TStringField;
    QueryMTLBaseMaterialPrice: TStringField;
    QueryMTLSupplierFreightValue: TFloatField;
    QueryMTLTRPnGRPUpcharge: TFloatField;
    QueryProcessFactory: TStringField;
    QueryProcessGrossUsage: TStringField;
    QueryProcessUnitCost: TStringField;
    Label26: TLabel;
    EDC6: TEdit;
    UploadDetailQueryUserUpdateTime: TDateTimeField;
    QueryMTLFlag: TBooleanField;
    BA7: TBitBtn;
    QueryMTLUserUpdateTime: TDateTimeField;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    PLQuery: TBitBtn;
    Edit3: TEdit;
    CheckBox8: TCheckBox;
    BitBtn5: TBitBtn;
    CB_PL_Factory: TComboBox;
    Label31: TLabel;
    Edit13: TEdit;
    Label32: TLabel;
    Edit6: TEdit;
    Edit4: TEdit;
    DBGridEh4: TDBGridEh;
    Label34: TLabel;
    Edit5: TEdit;
    UploadlQuerySegment2: TStringField;
    UploadlQueryUpperMaterial2: TStringField;
    UploadlQueryProductDescription2: TStringField;
    UploadlQueryModelDescription2: TStringField;
    DataSource5: TDataSource;
    Query_PriceList: TQuery;
    Query_PriceListCostingSeason: TStringField;
    Query_PriceListFactory: TStringField;
    Query_PriceListSKU: TStringField;
    Query_PriceListSR: TStringField;
    Query_PriceListFactoryPriceSubmitStatus: TStringField;
    Query_PriceListFTYBOMStatus: TStringField;
    Query_PriceListGenderClass: TStringField;
    Query_PriceListcut: TStringField;
    Query_PriceListTechLevel: TStringField;
    Query_PriceListlast: TStringField;
    Query_PriceListDAOMH: TStringField;
    Query_PriceListSegment: TStringField;
    Query_PriceListProductionType: TStringField;
    Query_PriceListCategory: TStringField;
    Query_PriceListPlanningLevel2: TStringField;
    Query_PriceListProductDescription: TStringField;
    Query_PriceListModelDescription: TStringField;
    Query_PriceListColorwayLongName: TStringField;
    Query_PriceListSourceFlag: TStringField;
    Query_PriceListProductLine: TStringField;
    Query_PriceListDirectToDC: TStringField;
    Query_PriceListUpperMaterial: TStringField;
    Query_PriceListFactoryDeveloper: TStringField;
    Query_PriceListFactoryCosting: TStringField;
    Query_PriceListCLOCosting: TStringField;
    Query_PriceListProfitRate: TFloatField;
    Query_PriceListMoldCharge: TCurrencyField;
    Query_PriceListLastUpdatedFactoryPriceStatus: TDateTimeField;
    Query_PriceListLastUpdatedCLOConfirmationDate: TDateTimeField;
    Query_PriceListpairs: TIntegerField;
    Query_PriceListSalary: TCurrencyField;
    Query_PriceListUserName: TStringField;
    Query_PriceListUserUpdateTime: TDateTimeField;
    Label33: TLabel;
    Edit7: TEdit;
    Label35: TLabel;
    ED_PMR: TEdit;
    Label36: TLabel;
    ED_PMRBuy: TEdit;
    BBPMRDay: TBitBtn;
    Label37: TLabel;
    Edit11: TEdit;
    BBToday: TBitBtn;
    UploadlQueryFactoryPriceStatus: TStringField;
    UploadlQueryFTYBOMCostDataStatus: TStringField;
    UploadlQuerySizeRange: TStringField;
    UploadlQueryEffectBuy: TStringField;
    CBGetOrderByPODate: TCheckBox;
    CB_FullSeason: TCheckBox;
    CheckBox9: TCheckBox;
    Query_PriceListFH17KeptLabor: TCurrencyField;
    Query_PriceListOutsoleAssembly: TCurrencyField;
    Query_PriceListSocklinerByPrs: TCurrencyField;
    Query_PriceListSpecialOffer: TCurrencyField;
    Query_PriceListStrobelPrintingRemoveal: TCurrencyField;
    Query_PriceListMMDeduction: TCurrencyField;
    Query_PriceListMMAutoCutLectraSaving: TCurrencyField;
    Query_PriceListHanyoungNetCut: TCurrencyField;
    Query_PriceListAutoBuffingSaving: TCurrencyField;
    Query_PriceListSupportFrictiontape: TCurrencyField;
    Query_PriceListVolumeEfficiencyGain: TCurrencyField;
    Query_PriceListRemovedNonBuffing: TCurrencyField;
    Query_PriceListVolumeEfficiencyGainOverhead: TCurrencyField;
    Query_PriceListRecyclingUn_Cured_25S: TCurrencyField;
    Query_PriceListRemoveSocklinerCement_25S: TCurrencyField;
    Query_PriceListRSHConstructionOptimizat_25S: TCurrencyField;
    Query_PriceListCBYWeightedCosting_25S: TCurrencyField;
    Query_PriceListSeasonalColor_25S: TCurrencyField;
    Query_PriceListOrtholiteSockliner_25S: TCurrencyField;
    Query_PriceListInnerBox_25S: TCurrencyField;
    Query_PriceListMOC_25S: TCurrencyField;
    Query_PriceListCkmesh_25S: TCurrencyField;
    Query_PriceListSealTapeOIA_LK_25U: TCurrencyField;
    Query_PriceListShoelaceLength_25U: TCurrencyField;
    Query_PriceListTissueOIA_LK_25U: TCurrencyField;
    TabSheet6: TTabSheet;
    Panel5: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label49: TLabel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Edit14: TEdit;
    Edit15: TEdit;
    ComboBox4: TComboBox;
    BitBtn7: TBitBtn;
    Label38: TLabel;
    Edit12: TEdit;
    Label42: TLabel;
    Edit16: TEdit;
    UploadDetailQuerySizeGrading: TStringField;
    Query_CLBH: TQuery;
    DataSource6: TDataSource;
    UpdateSQL5: TUpdateSQL;
    Query_CLBHSKU: TStringField;
    Query_CLBHCostingSeason: TStringField;
    Query_CLBHMaterialSeason: TStringField;
    Query_CLBHFactory: TStringField;
    Query_CLBHComponent: TStringField;
    Query_CLBHMTL_No: TIntegerField;
    Query_CLBHColor_No: TIntegerField;
    Query_CLBHFlexMaterialCode: TStringField;
    Query_CLBHSupplier: TStringField;
    Query_CLBHCLBH: TStringField;
    Query_CLBHXieXing: TStringField;
    Query_CLBHSheHao: TStringField;
    Query_CLBHMaterial: TStringField;
    Panel6: TPanel;
    XXZLS: TQuery;
    DataSource7: TDataSource;
    DBGridEh7: TDBGridEh;
    Panel7: TPanel;
    DBGridEh5: TDBGridEh;
    Panel8: TPanel;
    Panel9: TPanel;
    Queryclzl_flex: TQuery;
    DataSource8: TDataSource;
    DBGridEh8: TDBGridEh;
    DBGridEh9: TDBGridEh;
    Query_CLBHCostingSize: TFloatField;
    Query_CLBHMaterial_Text: TMemoField;
    XXZLSCLBH: TStringField;
    XXZLSYWPM: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSBOMDATE: TDateTimeField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSywsm: TStringField;
    Query_CLBHSR: TStringField;
    XXZLSYN: TIntegerField;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    CheckBox10: TCheckBox;
    Edit17: TEdit;
    Label43: TLabel;
    Edit18: TEdit;
    Query_CLBHColor: TStringField;
    UploadDetailQueryDeliveryTerm2: TStringField;
    TabSheet7: TTabSheet;
    Panel10: TPanel;
    Label46: TLabel;
    BitBtn14: TBitBtn;
    Edit21: TEdit;
    Edit19: TEdit;
    Label41: TLabel;
    Label44: TLabel;
    Edit20: TEdit;
    Edit22: TEdit;
    Label45: TLabel;
    CheckBox11: TCheckBox;
    Label47: TLabel;
    Edit23: TEdit;
    CheckBox12: TCheckBox;
    UploadlQueryRound: TStringField;
    UploadDetailQueryRound: TStringField;
    QueryMTLRound: TStringField;
    QueryProcessRound: TStringField;
    Query_PriceListRound: TStringField;
    QueryProcessNetUsage: TStringField;
    QueryProcessCutLoss: TStringField;
    QueryProcessSizeGrading: TStringField;
    QueryProcessPriceOVR: TStringField;
    QueryProcessMaterialCost: TStringField;
    QueryProcessT1Freight: TFloatField;
    UploadlQueryCostMitigation: TStringField;
    UploadlQueryCFM_C2B_PPH: TStringField;
    UploadlQueryCFM_R2B_PPH: TStringField;
    BBadmin_runall: TBitBtn;
    Label48: TLabel;
    CheckBox13: TCheckBox;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    CheckBox14: TCheckBox;
    UploadlQueryTargetSamplePrice: TStringField;
    UploadlQueryFOB: TStringField;
    UploadlQueryTotalMaterialCost: TStringField;
    UploadlQueryLabor: TStringField;
    UploadlQueryOverhead: TStringField;
    UploadlQueryC2BL: TStringField;
    UploadlQueryC2BO: TStringField;
    UploadlQuerySecondLabor: TStringField;
    UploadlQuerySecondOverhead: TStringField;
    UploadDetailQuerySecondLabor2: TStringField;
    UploadDetailQuerySecondOverhead2: TStringField;
    QueryProcessSecondLabor2: TStringField;
    QueryProcessSecondOverhead2: TStringField;
    LO_BB_CANCEL: TBitBtn;
    BitBtn9: TBitBtn;
    Query_PriceListCL98LaborPrecommit_25F: TCurrencyField;
    Query_PriceListFY25_CostMitigation: TCurrencyField;
    UploadlQueryC2B_PPH: TStringField;
    UploadlQueryR2B_PPH: TStringField;
    UploadlQueryTTFreight: TCurrencyField;
    Query_PriceListC2B_PPH: TStringField;
    Query_PriceListR2B_PPH: TStringField;
    Query_PriceListCFM_C2B_PPH: TStringField;
    Query_PriceListCFM_R2B_PPH: TStringField;
    Query_PriceListTargetSamplePrice: TStringField;
    Query_PriceListFOB: TStringField;
    Query_PriceListTotalMaterialCost: TStringField;
    Query_PriceListLabor: TStringField;
    Query_PriceListOverhead: TStringField;
    Query_PriceListC2BL: TStringField;
    Query_PriceListC2BO: TStringField;
    Query_PriceListSecondLabor: TStringField;
    Query_PriceListSecondOverhead: TStringField;
    Query_PriceListProfit: TStringField;
    Query_PriceListCostMitigation: TStringField;
    UploadlQueryProfit: TStringField;
    CheckBox15: TCheckBox;
    XXZLSCSBH: TStringField;
    Query_CLBHSupplierCode: TStringField;
    Query_CLBHCSBH: TStringField;
    Query_CLBHUSERID: TStringField;
    Query_CLBHZSYWJC: TStringField;
    Query_CLBHUSERDATE: TDateTimeField;
    Query_CLBHReplaced: TStringField;
    BitBtn12: TBitBtn;
    procedure BB1Click(Sender: TObject);  
    function TrimStr(i,j:integer;MsExcel:olevariant):String;
    function TrimStrNB(i,j:integer;MsExcel:olevariant):String;
    function TrimStrTime(i,j:integer;MsExcel:olevariant):String;
    function UploadQ(FieldByName,EditText:String):String;
    function UploadDeQ(FieldByName,EditText:String):String;
    function Countcolors():integer;
    procedure BB2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn8Click(Sender: TObject);
    procedure LO_BB_CANCELClick(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
//    procedure BA8Click(Sender: TObject);
    procedure UploadDetailQueryCalcFields(DataSet: TDataSet);
    procedure UploadlQueryCalcFields(DataSet: TDataSet);
    procedure QueryMTLCalcFields(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CheckBox5Click(Sender: TObject);
    procedure BC1Click(Sender: TObject);
    procedure QueryProcessCalcFields(DataSet: TDataSet);
    procedure BC2Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BView1Click(Sender: TObject);
    procedure BView2Click(Sender: TObject);
    procedure BView3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);    
    procedure ExportExcel(Query:TQuery);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure BA7Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure PLQueryClick(Sender: TObject);
    procedure BBPMRDayClick(Sender: TObject);
    procedure BBTodayClick(Sender: TObject);
    procedure Query_CLBHCalcFields(DataSet: TDataSet);
//    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BBadmin_runallClick(Sender: TObject);
    procedure DBGridEh6DblClick(Sender: TObject);
    procedure DataSource4DataChange(Sender: TObject; Field: TField);
    procedure CheckBox13Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BA8Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    Material,FlexMaterialCode,color,colorcomments,Molded:String;
    PriceOVR,T1Freight:Single;
    MaterialCost:Single;
    BaseMaterialPrice:Single;
    SupplierFreightValue:Single;
    TRPnGRPUpcharge:Single;
    { Private declarations }
  public
    { Public declarations }
  end;

var
    CostingCBD: TCostingCBD;

implementation

uses main1, CostingPriceList1 ,SupplierFLEXnERP1;

{$R *.dfm}

function TCostingCBD.Countcolors():integer;
var i,x,j,colors:integer;    //x=total MTL cost
    RBpart,RBMTLCode, RBpartNext,RBMTLCodeNext,ColorCode,ColorCodes,ColorCodeTemp,tooling,MTLComments:String;
begin
      //showmessage(EditText);
      colors:=0;
      i:=0;
      x:=0;
      ColorCodeTemp:='';
      ColorCodes:='/';
      tooling:='';
      MTLComments:='';
      RBpart:=UploadDetailQuery.fieldbyname('Component').AsString;
      RBMTLCode:=UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString;
      RBpartNext:=UploadDetailQuery.fieldbyname('Component').AsString;
      RBMTLCodeNext:=UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString;
      Molded:='';
      while (x=0) do
        begin
            //showmessage('get color item');
            //if(length(UploadDetailQuery.fieldbyname('tooling').AsString)>0) then        
            if (pos(UploadDetailQuery.fieldbyname('tooling').AsString,tooling)=0) then
              tooling:=tooling+UploadDetailQuery.fieldbyname('tooling').AsString;
            if (pos(UploadDetailQuery.fieldbyname('MaterialComments').AsString,MTLComments)=0) then
                MTLComments:=MTLComments+UploadDetailQuery.fieldbyname('MaterialComments').AsString;
            if(pos('Molded',UploadDetailQuery.fieldbyname('Material').Value)>0) then
               begin
                  Molded:='Molded';
                  //showmessage('Molded');
               end;
            ColorCodeTemp:= UploadDetailQuery.fieldbyname('Color').asstring;
            if (ColorCodeTemp<>'') then  //顏色欄位有值
              begin
                //j:=pos('/',ColorCodeTemp);
                while(Length(ColorCodeTemp)>1) do     //去除斜槓
                begin
                      j:=pos('/',ColorCodeTemp);
                      if j>0 then
                        begin
                          ColorCode:=copy(ColorCodeTemp,1,j-1);
                        end
                      else
                        begin   
                          ColorCode:=copy(ColorCodeTemp,1,9999);
                          j:=9999;
                        end;
                          if (pos(Trim(ColorCode),ColorCodes)=0) then
                            begin
                              colors:=colors+1;
                              ColorCodes:=ColorCodes+ColorCode;
                            end;
                          ColorCodeTemp:=copy(ColorCodeTemp,j+1,999);
                end;
                {if (pos(Trim(ColorCodeTemp),ColorCodes)=0) then
                        begin
                          colors:=colors+1;
                          ColorCodes:=ColorCodes+ColorCodeTemp;
                        end }
              end; //當前欄位處理結束

            i:=i+1;
            UploadDetailQuery.Next;
            if ((RBpart<>UploadDetailQuery.fieldbyname('Component').asstring)and(''<>UploadDetailQuery.fieldbyname('Component').asstring)
              and (pos(RBpart,UploadDetailQuery.fieldbyname('Component').asstring)=0)) then
              X:=1;
        end;
      while i>0 do     //返回原指標欄位
          begin
            UploadDetailQuery.Prior;
            i:=i-1;
          end;
      //showmessage(inttostr(colors));
      UploadDetailQuery.Edit;
      UploadDetailQuery.fieldbyname('tooling').Value:=tooling;
      //showmessage(MTLComments);
      UploadDetailQuery.fieldbyname('MaterialComments').Value:=MTLComments;
      result:=colors;
end;

function TCostingCBD.UploadQ(FieldByName,EditText:String):String;
begin
      //showmessage(EditText);
      try
        if (EditText<>'') then
          UploadlQuery.FieldByName(FieldByName).value:=EditText;
      except
          showmessage('Error,not saved'+FieldByName+'='+EditText);
      end;
end;

function TCostingCBD.UploadDeQ(FieldByName,EditText:String):String;
begin
      //showmessage(FieldByName+'='+EditText);
      try
        if EditText<>'' then
          UploadDetailQuery.FieldByName(FieldByName).value:=EditText;
      except
          showmessage('Error,not saved'+FieldByName+'='+EditText);
      end;
end;

Function TCostingCBD.TrimStr(i,j:integer;MsExcel:olevariant):String;
var EditText,specialChars: String;
begin
    //specialChars:='''''?!$?#';
    //specialChars:='''';
    EditText:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j];
    if (EditText='0') or (EditText=null) or (EditText='') then
      result:=''
    else
    begin
      //EditText:=StringReplace(EditText,specialChars,'', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''''','"', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'?','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'，','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'"','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'”','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'""','"', [rfReplaceAll]);
      //EditText:=StringReplace(EditText,'''''','''', [rfReplaceAll]);
      EditText:=TrimLeft(EditText);
      EditText:=TrimRight(EditText);
      //showmessage(EditText);
      result:=EditText;

    end;
end;

function TCostingCBD.TrimStrNB(i,j:integer;MsExcel:olevariant):String;
var EditText2,ReplaceStr: String;
    k :integer;
    L:integer;
begin
    EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j];

    if (EditText2='0') or (EditText2=null) or (EditText2='') then
      result:=''
    else
    begin
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].Text;
      msExcel.WorkBooks[1].WorkSheets[1].Cells(i,j):='=Round('+EditText2+',9)';
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].Text;
      L:=Length(EditText2);
      if L>=11 then
        L:=11;
      if Trim(EditText2)<>'' then
      begin
        for k := 0 to L do
        begin
          // 檢查字符是否為數字
          if EditText2[k] in ['.','-','0'..'9'] then
            ReplaceStr := ReplaceStr + EditText2[k];
        end;
        // 將單元格內容替換為只包含數字的值
        EditText2:= VarToStr(FormatFloat('0.00000000',Strtofloat(ReplaceStr)));
      end
      else
           EditText2:='0';
      //EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,strtoint(EditText)].value;

      result:=EditText2;
    end;
end;

function TCostingCBD.TrimStrTime(i,j:integer;MsExcel:olevariant):String;
var EditText2: String;
begin
    EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].Text;

    if (EditText2='0') or (EditText2=null)or (EditText2='') then
      result:=''
    else
    begin
      EditText2:=copy(EditText2,7,4)+'/'+copy(EditText2,1,2)+'/'+copy(EditText2,4,2)+copy(EditText2,11,9);
      msExcel.WorkBooks[1].WorkSheets[1].Cells(i,j):='=TEXT("'+EditText2+'"+TIME(8,0,0),"MM/DD/YYYY HH:MM AM/PM")';
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[i,j].value;

      result:=EditText2;
    end;
end;

procedure TCostingCBD.BB1Click(Sender: TObject);
var
  i,j,xh:integer;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Season,Text1,Text2,MaterialSeason: String;
  flag:boolean;
  PartNames:TStringlist; 
function RoundClassic(R: Single): Int64;
begin
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin
   BB2.Enabled:=true;
   BB3.Enabled:=true;
   CheckBox1.checked:=true;
   CheckBox13.Checked:=false;
   with UploadlQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From CostingPriceListNew where 1=2');
         active:=true;
      end;
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
   if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    with UploadlQuery do
     begin
     cachedupdates:=true;
     requestlive:=true;
     UploadlQuery.edit;
     UploadlQuery.first;
     insert;
     //round
     Season:=msExcel.WorkBooks[1].WorkSheets[1].Cells[1,13];
     Season:=copy(Season,1,pos(' ',Season));
     UploadQ('Round',Season);

     Season:=TrimStr(2,14,msExcel);
     UploadQ('FlexSeason',Season);
     i:=pos('202',Season)+2;
     if pos('Fall',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'F';
          MaterialSeason:='FH'+copy(Season,1,2)
        end
     else if  pos('Summer',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'U';
          MaterialSeason:='SS'+copy(Season,1,2)
        end
     else if  pos('Spring',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'S';
          MaterialSeason:='SS'+copy(Season,1,2)
        end
     else if  pos('Holiday',Season)>0 then
        begin
          Season:=copy(Season,i,2)+'H';
          MaterialSeason:='FH'+copy(Season,1,2)
        end;
     UploadQ('CostingSeason',Season);
     UploadQ('Cut',TrimStr(6,4,msExcel));
     UploadQ('SR',TrimStr(8,4,msExcel));
     UploadQ('SKU',TrimStr(9,4,msExcel));
     UploadQ('TechLevel',TrimStr(10,4,msExcel));
     UploadQ('Last',TrimStr(11,4,msExcel));
     UploadQ('Segment',TrimStr(2,6,msExcel));
     UploadQ('ProductionType',TrimStr(3,6,msExcel));
     UploadQ('DistributionType',TrimStr(4,6,msExcel));
     UploadQ('Category',TrimStr(5,6,msExcel));
     UploadQ('PlanningLevel2',TrimStr(6,6,msExcel));
     UploadQ('ProductLine',TrimStr(7,6,msExcel));
     UploadQ('DirectToDC',TrimStr(9,6,msExcel));
     UploadQ('UpperMaterial',TrimStr(11,6,msExcel));
     UploadQ('FactoryDeveloper',TrimStr(4,8,msExcel));
     UploadQ('FactoryDevManager',TrimStr(5,8,msExcel));
     UploadQ('FactoryCosting',TrimStr(8,8,msExcel));
     UploadQ('FactoryCostingManager',TrimStr(9,8,msExcel));
     UploadQ('CLOCosting',TrimStr(10,8,msExcel));
     UploadQ('CLOCostingManager',TrimStr(11,8,msExcel));
     //待添加  FactoryPriceStatus    FTYBOMCostDataStatus      Round
     UploadQ('FTYBOMStatus',TrimStr(5,10,msExcel));
     UploadQ('FTYBOMCostDataStatus',TrimStr(8,10,msExcel));
     UploadQ('FactoryPriceSubmitStatus',TrimStr(9,10,msExcel));
     UploadQ('FactoryPriceStatus',TrimStr(10,10,msExcel));
     UploadQ('LastUpdatedColorwayStatus',TrimStrTime(2,12,msExcel));
     UploadQ('LastUpdatedSourceFlag',TrimStrTime(3,12,msExcel));
     UploadQ('LastUpdatedCLOConfirmationDate',TrimStrTime(4,12,msExcel));
     UploadQ('LastUpdatedByFTYBOMCost',TrimStr(5,12,msExcel));
     UploadQ('LastUpdatedFactoryConfirmation',TrimStrTime(6,12,msExcel));
     UploadQ('LastUpdatedDevelopment',TrimStrTime(7,12,msExcel));
     UploadQ('LastUpdatedDateFTYBOMCost',TrimStrTime(8,12,msExcel));
     UploadQ('LastUpdatedFactoryPriceSubmit',TrimStrTime(9,12,msExcel));
     UploadQ('LastUpdatedFactoryPriceStatus',TrimStrTime(10,12,msExcel));
     UploadQ('InitialBuyMonth',TrimStr(11,12,msExcel));
     UploadQ('DevelopmentSeason',TrimStr(3,14,msExcel));
     UploadQ('DevelopmentCenter',TrimStr(4,14,msExcel));
     UploadQ('Factory',TrimStr(5,14,msExcel));
     UploadQ('SampleSize',TrimStrNB(6,14,msExcel));
     UploadQ('CostingSize',TrimStrNB(7,14,msExcel));
     UploadQ('SizeRange',TrimStr(8,14,msExcel));   
     UploadQ('GenderClass',TrimStr(9,14,msExcel));
     UploadQ('TargetSamplePrice',TrimStrNB(10,14,msExcel));
     UploadQ('Labor',TrimStrNB(2,21,msExcel));
     UploadQ('Overhead',TrimStrNB(2,24,msExcel));
     UploadQ('C2BL',TrimStrNB(3,21,msExcel));
     UploadQ('C2BO',TrimStrNB(3,24,msExcel));
     UploadQ('SecondLabor',TrimStrNB(4,21,msExcel));
     UploadQ('SecondOverhead',TrimStrNB(4,24,msExcel));
     UploadQ('Profit',TrimStrNB(2,27,msExcel));
     UploadQ('ProfitRate',TrimStrNB(3,27,msExcel));
     UploadQ('TotalMaterialCost',TrimStrNB(2,30,msExcel));
     //CostMitigation
     UploadQ('R2B_PPH',TrimStrNB(6,21,msExcel));
     UploadQ('CostMitigation',TrimStrNB(7,21,msExcel));
     UploadQ('MoldCharge',TrimStrNB(3,30,msExcel));
     UploadQ('FOB',TrimStrNB(5,30,msExcel));
     UploadQ('RefModel',TrimStr(2,31,msExcel));
     Text1:=TrimStr(3,31,msExcel)+'/'+TrimStr(4,31,msExcel)+'/'+TrimStr(5,31,msExcel)+'/'+TrimStr(6,31,msExcel)
        +'/'+TrimStr(7,31,msExcel)+'/'+TrimStr(8,31,msExcel)+'/'+TrimStr(9,31,msExcel)+'/'+TrimStr(10,31,msExcel)+'/'+TrimStr(11,31,msExcel);

     Text1:=StringReplace(Text1,'//','', [rfReplaceAll]);
     if (copy(Text1,length(Text1),1)='/') then
        Text1:=copy(Text1,1,length(Text1)-1);
     UploadQ('Remark',Text1);
     UploadQ('ProductDescription',TrimStr(2,4,msExcel));
     UploadQ('ModelDescription',TrimStr(4,4,msExcel));
     UploadQ('ColorwayLongName',TrimStr(7,4,msExcel));
     UploadQ('SourceFlag',TrimStr(3,10,msExcel));
     UploadQ('ForecastLevel',TrimStr(11,14,msExcel));

     UploadQ('UserName',main.Edit1.Text);
     //showmessage(FormatDateTime('yyyy/mm/dd hh:mm:ss', Now));
     UploadQ('UserUpdateTime',FormatDateTime('yyyy/mm/dd hh:mm', Now));

    end;
   with UploadDetailQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Component, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, ');
         sql.add('       CostingMatLibrary.FlexMaterialCode, ');
         sql.add('       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('       CostingPriceLibrary.PriceOVR,');
         sql.add('       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.SizeGrading, ');
         sql.add('       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,');
         sql.add('       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,');
         sql.add('       CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,     ');
         sql.add('       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling, CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPriceLibrary.ColorGroup, ');
         sql.add('       CostingPriceLibrary.ColorComments, CostingMatLibrary.DeliveryTerm, CostingPriceLibrary.MaterialCost,');
         sql.add('       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, CostingXXZLS.UserUpdateTime,');
         sql.add('       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('       CostingPriceListNew.SecondLabor,CostingPriceListNew.SecondOverhead,');
         sql.add('       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,MaterialSeason,CostingXXZLS.Factory,');
         sql.add('       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,');
         sql.add('       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_Neon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,CostingProcessCost.SecondOF,');
         sql.add('       CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,CostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate');
         sql.add('From CostingXXZLS  ');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.FactoryPriceSubmitStatus=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('       where 1=2 ');




         //showmessage(SQL.text);
         active:=true;
      end;
   PartNames:=TStringList.Create;
   PartNames.commatext:='Up,Li,Re,Co,Lo,Bo,Th,Gl,Pr,Pa';
   //SLAddStrings(PartNames,['Upper','Linings','Reinforcements','Components','Logos','Bottom','Threads','Glue','Process','Packings']);
   flag:=true;
   i:=13;
   xh:=0;
   while (flag=true) do
   begin
          Text2:=TrimStr(i,1,msExcel);
          //j:=Pos('(',Text2+'(');
          j:=PartNames.IndexOf(Copy(Text2,1,2));
          //showmessage(inttostr(j));
          //    break;
          if j>=0 then
            begin
              xh:=(j+1)*100;            //取得序號
              j:=Pos('(',Text2+'(');    //兩個部位無括號
              Text1:=Copy(Text2,1,j-1);
              i:=i+1;
            end;
          Text2:=TrimStr(i,4,msExcel);
          if ((Text2='') and(xh>1000) or (xh=0)) then       //材料名稱為空
            begin
              flag:=false;
              break;
            end;
          xh:=xh+1;
          with UploadDetailQuery do
                begin
                    cachedupdates:=true;
                    requestlive:=true;
                    UploadDetailQuery.edit;
                    insert;
                    UploadDeQ('MaterialSeason',MaterialSeason);
                    UploadDeQ('No',inttostr(xh));
                    UploadDeQ('PartName',Text1);
                    j:=Pos('(',TrimStr(i,2,msExcel));
                    if j>0 then
                      UploadDeQ('Component',Copy(TrimStr(i,2,msExcel),1,j-1))
                    else
                      UploadDeQ('Component',TrimStr(i,2,msExcel));
                    //UploadDeQ('Component',inttostr(Pos('(',TrimStr(i,2,msExcel))));
                    UploadDeQ('Percentage',TrimStr(i,3,msExcel));
                    text2:=TrimStr(i,4,msExcel);
                    UploadDeQ('Material_Text',text2);
                    //showmessage((UploadDetailQuery.FieldByName('Material_Text') as TBlobField).AsString);
                    //UploadDetailQuery.FieldByName('Material').Value := (UploadDetailQuery.FieldByName('Material_Text') as TBlobField).AsString;
                    UploadDeQ('FlexMaterialCode',TrimStr(i,5,msExcel));
                    UploadDeQ('MaterialComments',TrimStr(i,6,msExcel));
                    UploadDeQ('Supplier',TrimStr(i,7,msExcel));
                    UploadDeQ('SupplierCode',TrimStr(i,8,msExcel));
                    UploadDeQ('Tooling',TrimStr(i,9,msExcel));
                    UploadDeQ('TnRP',TrimStr(i,10,msExcel));
                    UploadDeQ('Color',TrimStr(i,11,msExcel));
                    UploadDeQ('ColorComments',TrimStr(i,12,msExcel));
                    UploadDeQ('Measure',TrimStr(i,13,msExcel));
                    //UploadDeQ('BaseMaterialPrice',TrimStrNB(i,14,msExcel));
                    UploadDeQ('BaseMaterialPrice',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,14].value);
                    UploadDeQ('TRPnGRPUpcharge',TrimStrNB(i,15,msExcel));
                    UploadDeQ('PriceStatus',TrimStr(i,16,msExcel));
                    UploadDeQ('SupplierFreightValue',TrimStrNB(i,18,msExcel));
                    UploadDeQ('DeliveryTerm',TrimStr(i,19,msExcel));
                    //UploadDeQ('MaterialCost',TrimStrNB(i,20,msExcel));
                    UploadDeQ('MaterialCost',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,20].value);
                    UploadDeQ('MeasureOVR',TrimStr(i,21,msExcel));
                    UploadDeQ('PriceOVR',TrimStrNB(i,22,msExcel));
                    UploadDeQ('T1Freight',TrimStrNB(i,23,msExcel));
                    UploadDeQ('LandedCost',TrimStrNB(i,24,msExcel));
                    UploadDeQ('NetUsage',TrimStrNB(i,25,msExcel));
                    text2:=TrimStrNB(i,26,msExcel);
                    if  text2<>'' then
                      UploadDeQ('CutLoss',floattostr(RoundClassic(strtofloat(text2)*100)/100))
                    else
                      UploadDeQ('CutLoss',text2);
                    UploadDeQ('SizeGrading',TrimStrNB(i,27,msExcel));
                    //UploadDeQ('GrossUsage',TrimStrNB(i,28,msExcel));
                    UploadDeQ('GrossUsage',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,28].value);
                    //UploadDeQ('UnitCost',TrimStrNB(i,29,msExcel));
                    UploadDeQ('UnitCost',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,29].value);
                    //UploadDeQ('SecondLabor',TrimStrNB(i,31,msExcel));
                    UploadDeQ('SecondLabor',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,31].value);
                    //UploadDeQ('SecondOverhead',TrimStrNB(i,32,msExcel));
                    UploadDeQ('SecondOverhead',msExcel.WorkBooks[1].WorkSheets[1].Cells[i,32].value);

                end;
              i:=i+1;
          //end;
          //showmessage('XH='+inttostr(xh)+';i='+inttostr(i));
   end;               
        UploadDetailQuery.cachedupdates:=true;
        UploadDetailQuery.requestlive:=true;
        UploadDetailQuery.First;
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
   end;
    edit8.Text:= UploadlQuery.fieldbyname('SKU').AsString;
    edit9.Text:= UploadlQuery.fieldbyname('CostingSeason').AsString;
    edit10.Text:= UploadlQuery.fieldbyname('Round').AsString;
   except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;
  end;

end;

procedure TCostingCBD.BB2Click(Sender: TObject);
var i,j,colors:Byte;
    MaxNo:Word;
    SumMTL,Sum2ndL,Sum2ndO,SumTTFreight,TempUnitCost,TempLandCost,TempUsage,Salary_previous:Single;
    LeastPart:String;
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
function RoundClassic(R: Single): Int64;
begin
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin
    if CheckBox13.Checked then
      begin
        showmessage('only show 2nd LO, can not save!');
        exit;
      end;
    if UploadDetailQuery.active=false then
      begin
        showmessage('Please import or query first!');
        exit;
      end;
    SumMTL:=0;
    Sum2ndL:=0;
    Sum2ndO:=0;
    SumTTFreight:=0;
    UploadlQuery.Edit;
    if (ED_PMR.text<>'') then
      begin
        i:=pos('CT',UploadlQuery.FieldByName('Round').asstring);
        if i>0  then
            UploadlQuery.FieldByName('Round').value:=copy(UploadlQuery.FieldByName('Round').asstring,1,i-1)+ED_PMR.text
        else
            UploadlQuery.FieldByName('Round').value:=UploadlQuery.FieldByName('Round').asstring+'-'+ED_PMR.text;
        if (ED_PMRBuy.text<>'') then
            UploadlQuery.FieldByName('EffectBuy').value:=ED_PMRBuy.Text
        else
          begin
            showmessage('fill EffectBuy,and save again');
            exit;
          end;
      end;

    UploadDetailQuery.cachedupdates:=true;
    UploadDetailQuery.requestlive:=true;
    UploadDetailQuery.last;
    UploadDetailQuery.First;
    UploadDetailQuery.Edit;
     
      //UploadDetailQuery.Edit;
    //showmessage(inttostr(UploadDetailQuery.RecordCount));
    //showmessage(formatdatetime('yyyy/MM/dd hh:mm',now()));
    for i:=1 to UploadDetailQuery.RecordCount do
    begin              //formatdatetime('yyyy/MM/dd',DTP2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)
      //UploadDetailQuery.fieldbyname('UserUpdateTime').value:=formatdatetime('yyyy/MM/dd hh:mm:ss',now());
      UploadDetailQuery.Edit;
      UploadDetailQuery.fieldbyname('CostingSeason').value:=UploadlQuery.fieldbyname('CostingSeason').AsString;
      UploadDetailQuery.fieldbyname('Round').value:=UploadlQuery.fieldbyname('Round').AsString;
      UploadDetailQuery.fieldbyname('SKU').value:=UploadlQuery.fieldbyname('SKU').AsString;
      UploadDetailQuery.fieldbyname('Factory').value:=UploadlQuery.fieldbyname('Factory').AsString;
      if UploadDetailQuery.fieldbyname('MaterialCost').value=null then
            UploadDetailQuery.fieldbyname('MaterialCost').value:=0
      else
          UploadDetailQuery.fieldbyname('MaterialCost').value:=RoundClassic(UploadDetailQuery.fieldbyname('MaterialCost').value*10000000)/10000000;
      if UploadDetailQuery.fieldbyname('PriceOVR').value=null then
          UploadDetailQuery.fieldbyname('PriceOVR').value:=0
      else
          UploadDetailQuery.fieldbyname('PriceOVR').value:=RoundClassic(UploadDetailQuery.fieldbyname('PriceOVR').value*10000)/10000;
          
      if UploadDetailQuery.fieldbyname('BaseMaterialPrice').value=null then
            UploadDetailQuery.fieldbyname('BaseMaterialPrice').value:=0
      else
          UploadDetailQuery.fieldbyname('BaseMaterialPrice').value:=RoundClassic(UploadDetailQuery.fieldbyname('BaseMaterialPrice').value*10000000)/10000000;
      if UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').value=null then
            UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').value:=0;
      if UploadDetailQuery.fieldbyname('SupplierFreightValue').value=null then
            UploadDetailQuery.fieldbyname('SupplierFreightValue').value:=0;
         if UploadDetailQuery.fieldbyname('T1Freight').Value=null then
            UploadDetailQuery.fieldbyname('T1Freight').Value:=0;
         if UploadDetailQuery.fieldbyname('CutLoss').Value=null then
            UploadDetailQuery.fieldbyname('CutLoss').Value:=0;
         if UploadDetailQuery.fieldbyname('SizeGrading').Value=null then
            UploadDetailQuery.fieldbyname('SizeGrading').Value:=0;
         if UploadDetailQuery.fieldbyname('SecondLabor').Value=null then
            UploadDetailQuery.fieldbyname('SecondLabor').Value:=0;
         if UploadDetailQuery.fieldbyname('SecondOverhead').Value=null then
            UploadDetailQuery.fieldbyname('SecondOverhead').Value:=0;
         if UploadDetailQuery.fieldbyname('NetUsage').Value=null then
            UploadDetailQuery.fieldbyname('NetUsage').Value:=0
         else
            UploadDetailQuery.fieldbyname('NetUsage').Value:=RoundClassic(UploadDetailQuery.fieldbyname('NetUsage').Value*10000)/10000;
      if (main.Edit1.Text='51295') or (main.Edit1.Text='51267') then
        begin
          if Edit24.text<>'' then
            UploadDetailQuery.fieldbyname('UserName').value:=Edit24.text
          else
            UploadDetailQuery.fieldbyname('UserName').value:=UploadlQuery.fieldbyname('UserName').AsString;
        end
      else
          UploadDetailQuery.fieldbyname('UserName').value:=main.Edit1.Text;
      //BOM序號檢查
      with ExistCheck do
          begin           
            ParamCheck := False;
            active:=false;
            sql.Clear;
            sql.Add(' select CostingSeason,Round,SKU,No from CostingXXZLS');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and No = '''+UploadDetailQuery.fieldbyname('No').AsString+'''');
            sql.Add('   and Factory = '''+UploadDetailQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if eof then
              begin
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingXXZLS(CostingSeason,Round,SKU,Factory,No)');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadlQuery.fieldbyname('CostingSeason').AsString+''', ');
                      sql.Add('   '''+UploadlQuery.fieldbyname('Round').AsString+''', ');
                      sql.Add('   '''+UploadlQuery.fieldbyname('SKU').AsString+''', ');
                      sql.Add('   '''+UploadlQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('No').AsString+''') ');
                      //showmessage(SQL.text);
                      execsql;
              end
          end; //BOM序號檢查
          //檢查MatLibrary
      with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Select MTL_No');
            sql.Add(' From CostingMatLibrary');
            sql.Add(' Where 1=1 ');
            if UploadDetailQuery.fieldbyname('FlexMaterialCode').Value<>null then
              sql.Add('    and FlexMaterialCode='''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+'''');
            if UploadDetailQuery.fieldbyname('Supplier').Value<>null then
              sql.Add('    and Supplier='''+UploadDetailQuery.fieldbyname('Supplier').AsString+''' ');
            //if UploadDetailQuery.fieldbyname('SupplierCode').Value<>null then
            //  sql.Add('    and SupplierCode='''+UploadDetailQuery.fieldbyname('SupplierCode').AsString+''' ');
            if UploadDetailQuery.fieldbyname('Material_Text').Value<>null then
              sql.Add('    and Material_Text like '''+UploadDetailQuery.fieldbyname('Material').AsString+''' ');
            if UploadDetailQuery.fieldbyname('MaterialComments').Value<>null then
              sql.Add('    and MaterialComments like '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+''' ');
            if UploadDetailQuery.fieldbyname('DeliveryTerm').Value<>null then
              sql.Add('    and DeliveryTerm like '''+UploadDetailQuery.fieldbyname('DeliveryTerm').AsString+''' ');
            if UploadDetailQuery.fieldbyname('T1Freight').Value<>null then
              sql.Add('    and T1Freight = CAST('+UploadDetailQuery.fieldbyname('T1Freight').AsString +' as DECIMAL(5,2)) ');
            if UploadDetailQuery.fieldbyname('Measure').Value<>null then
              sql.Add('    and Measure like '''+UploadDetailQuery.fieldbyname('Measure').AsString+''' ');
            if UploadDetailQuery.fieldbyname('MeasureOVR').Value<>null then
              sql.Add('    and MeasureOVR like '''+UploadDetailQuery.fieldbyname('MeasureOVR').AsString+''' ');
            if UploadDetailQuery.fieldbyname('Tooling').Value<>null then
              sql.Add('    and Tooling like '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''' ');
            sql.Add('    and Factory like '''+UploadDetailQuery.fieldbyname('Factory').AsString+''' ');

            //showmessage(SQL.text);
            active:=true;
            //showmessage('123');
            if eof then
              begin
                      active:= false;
                      sql.Clear;
                      sql.Add('Select case when Max(MTL_No) is null then 1 else Max(MTL_No)+1 end as MaxNo From CostingMatLibrary');
                      //sql.Add('    where Factory like '''+UploadDetailQuery.fieldbyname('Factory').AsString+''' ');
                      //sql.Add('    and FlexMaterialCode='''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+'''');
                      active:=true;

                      UploadDetailQuery.fieldbyname('MTL_No').AsString:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingMatLibrary');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MTL_No').AsString+''', ');        
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Supplier').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SupplierCode').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Material').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('DeliveryTerm').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('T1Freight').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Measure').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MeasureOVR').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');
                      sql.Add('   GETDATE()');
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
              end
            else
              begin
                   UploadDetailQuery.fieldbyname('MTL_No').AsString:= ExistCheck.fieldbyname('MTL_No').AsString;
              end;
          end; //檢查MatLibrary
          //檢查PriceLibrary
      with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Select  Color_No');
            sql.Add(' From CostingPriceLibrary');
            sql.Add(' Where 1=1 ');
            if UploadDetailQuery.fieldbyname('MTL_No').Value<>null then
              sql.Add('    and MTL_No='''+UploadDetailQuery.fieldbyname('MTL_No').AsString+'''');
            if UploadDetailQuery.fieldbyname('MaterialSeason').Value<>null then
              sql.Add('    and MaterialSeason='''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+''' ');
            if UploadDetailQuery.fieldbyname('Color').Value<>null then
              sql.Add('    and Color like '''+UploadDetailQuery.fieldbyname('Color').AsString+''' ');
            if UploadDetailQuery.fieldbyname('ColorComments').Value<>null then
              sql.Add('    and ColorComments = '''+UploadDetailQuery.fieldbyname('ColorComments').AsString+''' ');
            if UploadDetailQuery.fieldbyname('ColorGroup').Value<>null then
              sql.Add('    and ColorGroup = '''+UploadDetailQuery.fieldbyname('ColorGroup').AsString+''' ');
            if UploadDetailQuery.fieldbyname('PriceStatus').Value<>null then
              sql.Add('    and PriceStatus = '''+UploadDetailQuery.fieldbyname('PriceStatus').AsString+''' ');
            if UploadDetailQuery.fieldbyname('MaterialCost').Value<>null then
              sql.Add('    and MaterialCost = CAST('+UploadDetailQuery.fieldbyname('MaterialCost').AsString+' as DECIMAL(9,4)) ');
            if UploadDetailQuery.fieldbyname('PriceOVR').Value<>null then
              sql.Add('    and PriceOVR = CAST('+UploadDetailQuery.fieldbyname('PriceOVR').AsString+' as DECIMAL(9,4)) ');
            if UploadDetailQuery.fieldbyname('TnRP').Value<>null then
              sql.Add('    and TnRP = '''+UploadDetailQuery.fieldbyname('TnRP').AsString+''' ');
            if UploadDetailQuery.fieldbyname('BaseMaterialPrice').Value<>null then
              sql.Add('    and BaseMaterialPrice = '+UploadDetailQuery.fieldbyname('BaseMaterialPrice').AsString+'  ');
            if UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').Value<>null then
              sql.Add('    and TRPnGRPUpcharge = CAST('+UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').AsString+' as DECIMAL(9,4)) ');
            if UploadDetailQuery.fieldbyname('SupplierFreightValue').Value<>null then
              sql.Add('    and SupplierFreightValue = CAST('+UploadDetailQuery.fieldbyname('SupplierFreightValue').AsString+' as DECIMAL(9,4)) ');

            //showmessage(SQL.text);
            active:=true;
            if eof then
              begin
                      active:= false;
                      sql.Clear; 
                      sql.Add('Select case when Max(Color_No) is null then 1 else Max(Color_No)+1 end as MaxNo From CostingPriceLibrary');
                      sql.Add(' Where MTL_No='''+UploadDetailQuery.fieldbyname('MTL_No').AsString+'''');
                      active:=true;

                      UploadDetailQuery.fieldbyname('Color_No').AsString:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingPriceLibrary');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MTL_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Color_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('CostingSeason').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialSeason').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Color').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorComments').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorGroup').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PriceStatus').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialCost').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PriceOVR').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TnRP').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('BaseMaterialPrice').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TRPnGRPUpcharge').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SupplierFreightValue').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');     
                      sql.Add('   GETDATE()');
                      //sql.Add('   '+formatdatetime('yyyy/MM/dd hh:mm:ss',now())+'');
                      sql.Add('   ,0,'''')');
                      //showmessage(SQL.text);
                      execsql;
              end
            else
              begin
                   UploadDetailQuery.fieldbyname('Color_No').AsString:= ExistCheck.fieldbyname('Color_No').AsString;
              end;
          end; //檢查PriceLibrary

        if (checkbox6.Checked) and (UploadDetailQuery.fieldbyname('NetUsage').Value=null)  //倒算用量
            and Not(UploadDetailQuery.fieldbyname('MaterialCost').Value=null)and Not(UploadDetailQuery.fieldbyname('PriceOVR').Value=null) then
            begin
                TempUsage:= UploadDetailQuery.fieldbyname('PriceOVR').Value/UploadDetailQuery.fieldbyname('MaterialCost').Value/(1+(UploadDetailQuery.fieldbyname('T1Freight').Value/100));
                UploadDetailQuery.fieldbyname('NetUsage').Value:=
                RoundClassic(TempUsage*(1-(UploadDetailQuery.fieldbyname('CutLoss').Value/100))/(1+(UploadDetailQuery.fieldbyname('SizeGrading').Value/100))*10000)/10000;
                UploadDetailQuery.fieldbyname('PriceOVR').Value:=0;
            end
         else                                           ///Roundto(strtofloat(tempText),-4);
            begin
                TempUsage:=
                UploadDetailQuery.fieldbyname('NetUsage').Value/(1-(UploadDetailQuery.fieldbyname('CutLoss').Value/100))*(1+(UploadDetailQuery.fieldbyname('SizeGrading').Value/100));
            end;
         //計算 UnitCost
         if UploadDetailQuery.fieldbyname('PriceOVR').Value>0 then
            TempLandCost:= UploadDetailQuery.fieldbyname('PriceOVR').Value*(1+(UploadDetailQuery.fieldbyname('T1Freight').Value/100))
         else
            TempLandCost:= UploadDetailQuery.fieldbyname('MaterialCost').Value*(1+(UploadDetailQuery.fieldbyname('T1Freight').Value/100));
          TempUnitCost:=TempLandCost*TempUsage;
          UploadDetailQuery.fieldbyname('UnitCost').Value:=  RoundClassic(TempUnitCost*1000000)/1000000;
          UploadDetailQuery.fieldbyname('LandedCost').Value:=  RoundClassic(TempLandCost*1000000)/1000000;    //TempUsage
          UploadDetailQuery.fieldbyname('GrossUsage').Value:=  RoundClassic(TempUsage*1000000)/1000000;


         //計算 2nd LO 準備
      if (ComboBox1.ItemIndex=1) then        //LYI 只有Outsole Textile 含2nd LO
        begin
        if ((pos('FNW- 38421',UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString)>0) or (pos('COM- 40696',UploadDetailQuery.fieldbyname('FlexMaterialCode').AsString)>0))
                  and(UploadDetailQuery.fieldbyname('Tooling').AsString='') then
          begin
                 colors:=Countcolors();
                 UploadDetailQuery.Edit;
                 UploadDetailQuery.fieldbyname('ColorQty').Value:=colors;
                 if UploadDetailQuery.fieldbyname('ColorQty_Neon').Value=null then   //螢光色數量暫時無法判斷
                    UploadDetailQuery.fieldbyname('ColorQty_Neon').Value:=0;
          end
        end
      else
         if (UploadDetailQuery.fieldbyname('UnitCost').Value<>'0') and (UploadDetailQuery.fieldbyname('UnitCost').Value<>'') then
            begin
              if ((pos('Rubber',UploadDetailQuery.fieldbyname('material').Value)>0) and  (UploadDetailQuery.fieldbyname('NetUsage').Value>0)) then  //後面考慮增加in house判斷條件 (Rubber幾乎都是內製)
              if NOT(copy(UploadDetailQuery.fieldbyname('material').Value,1,8)='Adhesive') then  //排除貼合
              begin
                //showmessage(UploadDetailQuery.fieldbyname('material').Value);
                if (pos('Gum',UploadDetailQuery.fieldbyname('material').Value)>0) then
                    UploadDetailQuery.fieldbyname('GUMColor').Value:=1
                else
                    UploadDetailQuery.fieldbyname('GUMColor').Value:=0;

                 colors:=Countcolors();
                 UploadDetailQuery.Edit;
                 UploadDetailQuery.fieldbyname('ColorQty').Value:=colors;
                 if UploadDetailQuery.fieldbyname('ColorQty_Neon').Value=null then   //螢光色數量暫時無法判斷
                    UploadDetailQuery.fieldbyname('ColorQty_Neon').Value:=0;
              end;
            end;
      //2nd LO 資料庫
      if (UploadDetailQuery.fieldbyname('ColorQty').Value<>null)then
      if (UploadDetailQuery.fieldbyname('Process_No').Value=null) then
      with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Select  Process_No,SecondOF,SecondLF,moldsPperson,pairPmold,TurnOverRate,MaterialComments');
            sql.Add(' From CostingProcessCost');
            sql.Add(' Where 1=1 ');
            sql.Add('    and Component='''+UploadDetailQuery.fieldbyname('Component').AsString+''' ');
            if (pos('Logo',UploadDetailQuery.fieldbyname('Component').AsString)>0) then
              begin
                //if length(UploadDetailQuery.fieldbyname('Tooling').Value)>0 then
                sql.Add('    and Tooling like '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('ColorQty').Value<>null then
                sql.Add('    and ColorQty = '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('ColorQty_Neon').Value<>null then
                sql.Add('    and ColorQty_Neon = '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('GUMColor').Value<>null then
                sql.Add('    and GUMColor = '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''' ');
              end
            else if (pos('Outsole Textile',UploadDetailQuery.fieldbyname('Component').AsString)>0) and(UploadDetailQuery.fieldbyname('Tooling').AsString='') then
              begin
                sql.Add('    and Tooling = '''' ');
              end
            else
              begin
                //if UploadDetailQuery.fieldbyname('Tooling').Value<>null then
                sql.Add('    and Tooling like '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('MaterialComments').Value<>null then
                //  sql.Add('    and MaterialComments like ''%'+UploadDetailQuery.fieldbyname('MaterialComments').AsString+'%'' ');
                //if UploadDetailQuery.fieldbyname('ColorQty').Value<>null then
                  sql.Add('    and ColorQty = '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('ColorQty_Neon').Value<>null then
                  sql.Add('    and ColorQty_Neon = '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''' ');
                //if UploadDetailQuery.fieldbyname('GUMColor').Value<>null then
                  sql.Add('    and GUMColor = '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''' ');
              end;     
            sql.Add('    and Factory like '''+UploadDetailQuery.fieldbyname('Factory').AsString+''' ');

            //showmessage(SQL.text);
            active:=true;
            if eof then
              begin
                      active:= false;
                      sql.Clear; 
                      sql.Add('Select case when Max(Process_No) is null then 1 else Max(Process_No)+1 end as MaxNo From CostingProcessCost');
                      sql.Add(' Where Factory='''+UploadDetailQuery.fieldbyname('Factory').AsString+'''');
                      active:=true;

                      UploadDetailQuery.fieldbyname('Process_No').AsString:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingProcessCost');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Process_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Component').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''', ');                 //111
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('moldsPperson').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('pairPmold').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PCsPPair').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TurnOverRate').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondLF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondOF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Round').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SKU').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('CostingSeason').AsString+''', ');  
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('No').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');       
                      sql.Add('   GETDATE()');
                      //sql.Add('   '+formatdatetime('yyyy/MM/dd hh:mm:ss',now())+'');
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
              end                                                                              //,moldsPperson,pairPmold,TurnOverRate
            else
              begin
                  if (UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded<>'') then
                    begin
                           for j:=1 to ExistCheck.RecordCount do
                           begin
                               if ((pos(ExistCheck.fieldbyname('MaterialComments').AsString,UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded)>0)
                                    or (ExistCheck.fieldbyname('MaterialComments').AsString=UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded))then
                               begin 
                                  //showmessage(inttostr(pos(ExistCheck.fieldbyname('MaterialComments').AsString,UploadDetailQuery.fieldbyname('MaterialComments').AsString)));
                                  break;
                               end;
                               //showmessage(ExistCheck.fieldbyname('MaterialComments').AsString);
                               ExistCheck.next;
                           end;
                    end;
                  if ((pos(ExistCheck.fieldbyname('MaterialComments').AsString,UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded)>0)
                          or (ExistCheck.fieldbyname('MaterialComments').AsString=UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded))then
                    begin
                      UploadDetailQuery.fieldbyname('Process_No').AsString:= ExistCheck.fieldbyname('Process_No').AsString;
                      UploadDetailQuery.fieldbyname('moldsPperson').AsString:= ExistCheck.fieldbyname('moldsPperson').AsString;
                      UploadDetailQuery.fieldbyname('pairPmold').AsString:= ExistCheck.fieldbyname('pairPmold').AsString;
                      UploadDetailQuery.fieldbyname('TurnOverRate').AsString:= ExistCheck.fieldbyname('TurnOverRate').AsString;
                      UploadDetailQuery.fieldbyname('SecondLF').AsString:= ExistCheck.fieldbyname('SecondLF').AsString;
                      UploadDetailQuery.fieldbyname('SecondOF').AsString:= ExistCheck.fieldbyname('SecondOF').AsString
                    end
                  else
                    begin
                      active:= false;
                      sql.Clear; 
                      sql.Add('Select case when Max(Process_No) is null then 1 else Max(Process_No)+1 end as MaxNo From CostingProcessCost');
                      //sql.Add(' Where Process_No='''+UploadDetailQuery.fieldbyname('Process_No').AsString+'''');
                      active:=true;

                      UploadDetailQuery.fieldbyname('Process_No').AsString:= ExistCheck.fieldbyname('MaxNo').AsString;
                      active:= false;
                      sql.Clear;
                      sql.Add(' INSERT INTO CostingProcessCost');
                      sql.Add(' Values(');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Process_No').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Component').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Tooling').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('MaterialComments').AsString+Molded+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('ColorQty_Neon').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('GUMColor').AsString+''', ');                 //111
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('moldsPperson').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('pairPmold').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('PCsPPair').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('TurnOverRate').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondLF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SecondOF').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Round').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('SKU').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('CostingSeason').AsString+''', ');    
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('Factory').AsString+''', ');
                      sql.Add('   '''+UploadDetailQuery.fieldbyname('No').AsString+''', ');
                      sql.Add('   '''+main.Edit1.Text+''', ');   
                      sql.Add('   GETDATE()');
                      //sql.Add('   '+formatdatetime('yyyy/MM/dd hh:mm:ss',now())+'');
                      sql.Add('   )');
                      //showmessage(SQL.text);
                      execsql;
                    end;
              end;
          end //結束如果沒有Process code;
          else//查詢更新  SecondOF,SecondLF,moldsPperson,pairPmold,TurnOverRate,MaterialComments
          begin
            with ExistCheck do
            begin
              active:=false;
              sql.Clear;
              sql.Add(' Select  Process_No,SecondOF,SecondLF,moldsPperson,pairPmold,TurnOverRate,MaterialComments');
              sql.Add(' From CostingProcessCost');
              sql.Add(' Where Process_No ='+UploadDetailQuery.fieldbyname('Process_No').AsString+' ');   
              active:=true;
            end;
            UploadDetailQuery.fieldbyname('moldsPperson').AsString:= ExistCheck.fieldbyname('moldsPperson').AsString;
            UploadDetailQuery.fieldbyname('pairPmold').AsString:= ExistCheck.fieldbyname('pairPmold').AsString;
            UploadDetailQuery.fieldbyname('TurnOverRate').AsString:= ExistCheck.fieldbyname('TurnOverRate').AsString;
            UploadDetailQuery.fieldbyname('SecondLF').AsString:= ExistCheck.fieldbyname('SecondLF').AsString;
            UploadDetailQuery.fieldbyname('SecondOF').AsString:= ExistCheck.fieldbyname('SecondOF').AsString
          end;
          //end 2nd LO 資料庫

        //重新計算 2nd LO
        //if  (UploadDetailQuery.fieldbyname('NetUsage').Asstring<>'')and (UploadDetailQuery.fieldbyname('NetUsage').Asstring<>'0') then
        //檢查2nd LO相同
        if  (UploadDetailQuery.FieldByName('SecondLabor_auto').AsString<>'') then   //檢查 2nd LO正確性
            begin
              if NOT(
                RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor_auto').AsString)*10000)/10000
                  =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor').AsString)*10000)/10000
                  ) then
                begin
        //自動填入2LN計算結果
                   //UploadDetailQuery.FieldByName('SecondLabor').AsString:=UploadDetailQuery.FieldByName('SecondLabor_auto').AsString;
                   //UploadDetailQuery.FieldByName('SecondOverhead').AsString:=UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString;
                  showmessage('Second L result not match');
                  exit;
                end;
              if NOT(
                  RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString)*10000)/10000
                    =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead').AsString)*10000)/10000
                    )then
                begin     
        //自動填入2LN計算結果
                   //UploadDetailQuery.FieldByName('SecondLabor').AsString:=UploadDetailQuery.FieldByName('SecondLabor_auto').AsString;
                   //UploadDetailQuery.FieldByName('SecondOverhead').AsString:=UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString;
                  showmessage('Second O result not match');
                  exit;
                end;
            end;

          SumMTL:=SumMTL+TempUnitCost;
          Sum2ndL:=Sum2ndL+UploadDetailQuery.fieldbyname('SecondLabor').Value;
          Sum2ndO:=Sum2ndO+UploadDetailQuery.fieldbyname('SecondOverhead').Value;   
         if UploadDetailQuery.fieldbyname('PriceOVR').Value>0 then
            SumTTFreight:=SumTTFreight+UploadDetailQuery.fieldbyname('PriceOVR').Value*UploadDetailQuery.fieldbyname('T1Freight').Value/100*TempUsage
         else    
            SumTTFreight:=SumTTFreight+ UploadDetailQuery.fieldbyname('MaterialCost').Value*UploadDetailQuery.fieldbyname('T1Freight').Value/100*TempUsage;

      if (i=UploadDetailQuery.RecordCount) then
        MaxNo:=UploadDetailQuery.fieldbyname('No').value;
      if (LeastPart<>'') and (CheckBox1.Checked) then                //刪除上傳後超出部位最大NO
        if ((LeastPart<>UploadDetailQuery.fieldbyname('PartName').value) or (i=UploadDetailQuery.RecordCount)) then   //部位切換或最後一筆
           with ExistCheck do
            begin
              active:=false;
              sql.Clear;
              sql.Add('DELETE FROM  CostingXXZLS');
              sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
              sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
              sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
              sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
              sql.Add('   and No > '+inttostr(MaxNo));
              sql.Add('   and PartName= '''+LeastPart+'''');
              //showmessage(SQL.text);
              execsql;
            end;
      MaxNo:=UploadDetailQuery.fieldbyname('No').value;
      LeastPart:=UploadDetailQuery.fieldbyname('PartName').value;

      UpdateSQL1.apply(ukmodify);
      UploadDetailQuery.Next;
    end; //BOM & 價格更新結束
    UploadDetailQuery.First;
    //showmessage('next');
    ExistCheck.Active:=false;
    //if (UploadlQuery.fieldbyname('CostMitigation').AsString='') and(UploadlQuery.fieldbyname('C2BL').value<>null) then
       with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' select CostingSeason,FactoryPriceSubmitStatus,SKU from CostingPriceListNew');
            sql.Add('   where CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if eof then
               UpdateSQL2.apply(ukinsert);

            edit9.Text:= UploadlQuery.fieldbyname('CostingSeason').AsString;
            active:=false;
            sql.Clear;

            if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='F') or  (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='H')  then
                sql.add('Select CostingPriceListNew.*,CostingPriceList.FY'+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'_CostMitigation as CurrnetCostMitigation')
            else
                sql.add('Select CostingPriceListNew.*,CostingPriceList.FY'+inttoStr(StrToInt(Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2))-1)
                      +'_CostMitigation as CurrnetCostMitigation');
            //sql.add(',Costing_Salary.Salary,Costing_Salary_previous.Salary as Salary_previous');
            sql.add(',Costing_Salary.Salary');

            sql.add('From CostingPriceListNew');

            sql.add('left join CostingPriceList on CostingPriceList.PricingSeason=CostingPriceListNew.CostingSeason and CostingPriceList.SKU=CostingPriceListNew.SKU');
            if ComboBox1.ItemIndex=0 then
                sql.add('     and CostingPriceList.KFCQ=''JNG''')
            else if ComboBox1.ItemIndex=1 then
                sql.add('     and CostingPriceList.KFCQ=''YQA''');
            sql.add('left join Costing_Salary on Costing_Salary.PricingSeason=CostingPriceListNew.CostingSeason and Costing_Salary.Factory_CTS=CostingPriceListNew.Factory');
            {if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='F')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'U'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory')
            else if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='H')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'F'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory')
            else if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='S')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+inttoStr(StrToInt(Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2))-1)+'H'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory')
            else if (Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,3,1)='U')  then
                sql.add('left join Costing_Salary Costing_Salary_previous on Costing_Salary_previous.PricingSeason='''+Copy(UploadlQuery.fieldbyname('CostingSeason').AsString,1,2)+'S'' and Costing_Salary_previous.Factory_CTS=CostingPriceListNew.Factory');
            }
           // sql.Add(' select CostingSeason,FactoryPriceSubmitStatus,SKU from CostingPriceListNew');
            sql.Add('   where CostingPriceListNew.CostingSeason='''+UploadlQuery.fieldbyname('CostingSeason').AsString+''' ');
            sql.Add('   and CostingPriceListNew.Round='''+UploadlQuery.fieldbyname('Round').AsString+'''');
            sql.Add('   and CostingPriceListNew.SKU = '''+UploadlQuery.fieldbyname('SKU').AsString+'''');
            sql.Add('   and CostingPriceListNew.Factory = '''+UploadlQuery.fieldbyname('Factory').AsString+'''');
            //showmessage(SQL.text);
            active:=true;
            if (ExistCheck.fieldbyname('Salary').AsString='') or (ExistCheck.fieldbyname('Salary').AsString='0') then
            begin
                showmessage('Check Salary N384 for season:'+UploadlQuery.fieldbyname('CostingSeason').AsString);
                exit;
            end;
          end;
    UploadlQuery.edit;
    UploadlQuery.fieldbyname('TotalMaterialCost').Value:=SumMTL;
    UploadlQuery.fieldbyname('SecondLabor').Value:=Sum2ndL;
    UploadlQuery.fieldbyname('SecondOverhead').Value:=Sum2ndO;
    UploadlQuery.fieldbyname('TTFreight').Value:=SumTTFreight;

    if UploadlQuery.fieldbyname('CostMitigation').AsString='' then
        if (ExistCheck.fieldbyname('CurrnetCostMitigation').AsString='') or (ExistCheck.fieldbyname('CurrnetCostMitigation').AsString='0') then
            UploadlQuery.fieldbyname('CostMitigation').value:='0'
        else
            UploadlQuery.fieldbyname('CostMitigation').value:=ExistCheck.fieldbyname('CurrnetCostMitigation').value;
    //  鎖定2.51 ?
    //UploadlQuery.fieldbyname('Labor').value:=RoundClassic((ExistCheck.fieldbyname('Salary').value/ExistCheck.fieldbyname('Salary_previous').value

    if (UploadlQuery.fieldbyname('C2BL').AsString<>'') and (UploadlQuery.fieldbyname('C2BL').AsString<>'0') then
      begin
         //上一季人工換算
        if  UploadlQuery.fieldbyname('R2B_PPH').AsString<>'' then
          begin
            //showmessage('match pph with Salary_previous');
            Salary_previous:=RoundClassic(UploadlQuery.fieldbyname('R2B_PPH').Value*(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)*100)/100;
            UploadlQuery.fieldbyname('Labor').value:=RoundClassic((ExistCheck.fieldbyname('Salary').value/Salary_previous
                *(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)+UploadlQuery.fieldbyname('CostMitigation').value)*10000)/10000;
            UploadlQuery.fieldbyname('C2B_PPH').Value:=Salary_previous/UploadlQuery.fieldbyname('C2BL').value;
            UploadlQuery.fieldbyname('CFM_C2B_PPH').Value:=ExistCheck.fieldbyname('Salary').value
                /(ExistCheck.fieldbyname('Salary').value/Salary_previous*UploadlQuery.fieldbyname('C2BL').value+UploadlQuery.fieldbyname('CostMitigation').value);
            UploadlQuery.fieldbyname('R2B_PPH').Value:=Salary_previous/(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL);
          end
        {else
          begin
            showmessage(floattostr(Trunc(ExistCheck.fieldbyname('Salary_previous').value/(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)*10000)/10000));
            showmessage(floattostr(ExistCheck.fieldbyname('Salary_previous').value));
            showmessage(floattostr((UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)));
            UploadlQuery.fieldbyname('Labor').value:=RoundClassic((UploadlQuery.fieldbyname('C2BL').value+Sum2ndL+UploadlQuery.fieldbyname('CostMitigation').value)*10000)/10000;
          end   }
        else 
            UploadlQuery.fieldbyname('Labor').value:=RoundClassic((UploadlQuery.fieldbyname('C2BL').value+Sum2ndL+UploadlQuery.fieldbyname('CostMitigation').value)*10000)/10000;
      end;
    UploadlQuery.fieldbyname('CFM_R2B_PPH').Value:=ExistCheck.fieldbyname('Salary').value/UploadlQuery.fieldbyname('Labor').value;
    //待測試是否結果相同
    //UploadlQuery.fieldbyname('CFM_R2B_PPH').Value:=ExistCheck.fieldbyname('Salary').value/
    //            ((ExistCheck.fieldbyname('Salary').value/2.51*UploadlQuery.fieldbyname('C2BL').value+UploadlQuery.fieldbyname('CostMitigation').value)
    //            +(ExistCheck.fieldbyname('Salary').value/2.51*Sum2ndL));
    //     UploadlQuery.fieldbyname('Labor').value:=(UploadlQuery.fieldbyname('C2BL').value+Sum2ndL)/UploadlQuery.fieldbyname('C2BL').value+UploadlQuery.fieldbyname('CurrnetCostMitigation').value;
    if UploadlQuery.fieldbyname('C2BO').value<>null then
         UploadlQuery.fieldbyname('Overhead').value:=RoundClassic((Strtofloat(UploadlQuery.fieldbyname('C2BO').value)
                                +Strtofloat(UploadlQuery.fieldbyname('SecondOverhead').Value))*10000)/10000;
    //showmessage(UploadlQuery.fieldbyname('C2BO').value+UploadlQuery.fieldbyname('SecondOverhead').Value);
    UploadlQuery.fieldbyname('Profit').Value:=((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value)*UploadlQuery.fieldbyname('ProfitRate').Value/100);
    if UploadlQuery.fieldbyname('MoldCharge').asstring<>'' then
      UploadlQuery.fieldbyname('FOB').Value:=RoundClassic((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value
            +((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value)*UploadlQuery.fieldbyname('ProfitRate').Value/100)
            +UploadlQuery.fieldbyname('MoldCharge').Value
            )*100)/100
    else         
      UploadlQuery.fieldbyname('FOB').Value:=RoundClassic((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value
            +((SumMTL+UploadlQuery.fieldbyname('Labor').Value+UploadlQuery.fieldbyname('Overhead').Value)*UploadlQuery.fieldbyname('ProfitRate').Value/100)
            )*100)/100;
    UploadlQuery.fieldbyname('TTFreight').value:=SumTTFreight;
    UploadlQuery.fieldbyname('UserName').value:=UploadDetailQuery.fieldbyname('UserName').value;
    UploadlQuery.fieldbyname('UserUpdateTime').value:=formatdatetime('yyyy/MM/dd hh:mm:ss',now());
    UpdateSQL2.apply(ukmodify);
    //BitBtn8.Click;
end;

procedure TCostingCBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCostingCBD.FormDestroy(Sender: TObject);
begin
  CostingCBD:=nil;
end;

procedure TCostingCBD.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);   
function RoundClassic(R: Single): Int64;
begin
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin
if (UploadDetailQuery.FieldByName('PartName').value<>'Threads') then
  if (UploadDetailQuery.FieldByName('NetUsage').value>0)
  and ((UploadDetailQuery.fieldbyname('UnitCost').isnull)or(UploadDetailQuery.fieldbyname('UnitCost').asstring='0'))  then
  begin
    DBGridEh6.canvas.font.color:=clred;
  end;
if (UploadDetailQuery.FieldByName('Process_No').value<>0) and (UploadDetailQuery.FieldByName('Process_No').asstring<>'') then
  if (UploadDetailQuery.FieldByName('NetUsage').value>0)
  and ((UploadDetailQuery.fieldbyname('SecondLabor').asstring='') or(UploadDetailQuery.fieldbyname('SecondLF').asstring=''))  then
  begin
    DBGridEh6.canvas.font.color:=clred;
  end;
   // ?查是否是目?列 'YourFieldName'
if  (UploadDetailQuery.FieldByName('SecondLabor_auto').AsString<>'') then
              if NOT(
                RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor_auto').AsString)*10000)/10000
                  =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondLabor').AsString)*10000)/10000
                  ) or NOT(
                  RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead_auto').AsString)*10000)/10000
                    =RoundClassic(strtofloat(UploadDetailQuery.FieldByName('SecondOverhead').AsString)*10000)/10000
                    )then
  begin
    DBGridEh6.canvas.font.color:=clred;
  end;
end;

procedure TCostingCBD.BA3Click(Sender: TObject);
begin
  if Not(QueryMTL.active) then
    Exit;       
  QueryMTL.first;
  QueryMTL.cachedupdates:=true;
  QueryMTL.requestlive:=true;
  QueryMTL.edit;
  if  QueryMTL.FieldByName('FTYCode').value<>null then
    if (Copy(QueryMTL.FieldByName('FTYCode').value,1,6)='Delete') then
      QueryMTL.fieldbyname('FTYCode').Value:=Copy(QueryMTL.FieldByName('FTYCode').value,8,999)    //資料庫刪除恢復
    else
      QueryMTL.fieldbyname('FTYCode').Value:='Delete-'+QueryMTL.fieldbyname('FTYCode').Value   //刪除資料庫
  else
    QueryMTL.fieldbyname('FTYCode').Value:='FTYCode-';
end;

procedure TCostingCBD.BA5Click(Sender: TObject);
var
  i:integer;
begin
    QueryMTL.First;
    for i:=1 to QueryMTL.RecordCount do
    begin
    
      if  UploadDetailQuery.FieldByName('Remark').value<>null then
        if (Copy(QueryMTL.FieldByName('FTYCode').value,1,6)='Delete') then
        begin
          UpdateSQL3.apply(ukdelete)
        end
      else //修改
        begin
              QueryMTL.Edit;
              UpdateSQL3.apply(ukmodify)
        end;
          //end;

      QueryMTL.Next
    end;//for
end;

procedure TCostingCBD.ExportExcel(Query:TQuery);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  Query.active  then
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
        eclApp.Cells(1,1):='No';
        for   i:=0   to   Query.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=Query.fields[i].FieldName;
        end;

        Query.First;

        j:=2;
        while   not   Query.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  Query.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=Query.Fields[i].Value;
          end;
        Query.Next;
        inc(j);
        end;

       if PageControl1.ActivePageIndex=4 then
         if CBGetOrderByPODate.Checked=true then
            eclApp.Cells(1,42):='pairs_PODate'
         else
            eclApp.Cells(1,42):='pairs_BuyNo';

       eclapp.columns.autofit;
       //eclApp.ActiveSheet.Columns[4].ColumnWidth := 50;
       eclApp.ActiveSheet.Rows[1].Interior.ColorIndex := 6;
       //eclApp.ActiveSheet.Range['A1:L30'].VerticalAlignment:=-4108;
       //eclApp.ActiveSheet.Range['A1:L30'].HorizontalAlignment:=-4108;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

{procedure TCostingCBD.BA8Click(Sender: TObject);
//var  eclApp,WorkBook:olevariant;
//     i,j:integer;
begin
  if PageControl1.ActivePageIndex=1 then
      ExportExcel(QueryMTL)
  else if PageControl1.ActivePageIndex=2 then
      ExportExcel(QueryProcess)
  else
      ExportExcel(Query_PriceList)
end; }



procedure TCostingCBD.UploadDetailQueryCalcFields(DataSet: TDataSet); 
var tempText,COST,USAGE:string;
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
function RoundClassic(R: Single): Int64;
begin   
  if Frac(R) >= 0.5 then
    Result := Trunc(R) + 1
  else
    Result:= Trunc(R);
end;
begin

  UploadDetailQuery.FieldByName('Material').Value := (UploadDetailQuery.FieldByName('Material_Text') as TBlobField).AsString;
  ///
        if  (UploadDetailQuery.fieldbyname('SecondLF').Asstring<>'')and (UploadDetailQuery.fieldbyname('SecondLF').Asstring<>'0') then
          begin
          //UploadDetailQuery.edit;
          UploadDetailQuery.FieldByName('SecondLabor_auto').Value := RoundClassic( strtofloat(
              Eval(StringReplace(StringReplace(UploadDetailQuery.FieldByName('SecondLF').Value,'COST',UploadDetailQuery.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',UploadDetailQuery.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
          //UploadDetailQuery.FieldByName('SecondLabor_auto').Value := copy(
          //    Eval(StringReplace(StringReplace(UploadDetailQuery.FieldByName('SecondLF').Value,'COST',floattostr(TempLandCost),[rfReplaceAll]),'USAGE',floattostr(TempUsage),[rfReplaceAll])),1,8);
          if  (UploadDetailQuery.fieldbyname('SecondOF').Asstring<>'') then
              begin
              UploadDetailQuery.FieldByName('SecondOverhead_auto').Value := RoundClassic( strtofloat(
                Eval(StringReplace(StringReplace(UploadDetailQuery.FieldByName('SecondOF').Value,'COST',UploadDetailQuery.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',UploadDetailQuery.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
                          end;
          end;
end;

procedure TCostingCBD.UploadlQueryCalcFields(DataSet: TDataSet);
begin
         UploadlQuery.FieldByName('Remark_').Value := (UploadlQuery.FieldByName('Remark') as TBlobField).AsString;
end;

procedure TCostingCBD.QueryMTLCalcFields(DataSet: TDataSet);
begin
        QueryMTL.FieldByName('Material').Value := (QueryMTL.FieldByName('Material_Text') as TBlobField).AsString;
end;



procedure TCostingCBD.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var   CurrentValue, PreviousValue: string;
begin


if (ED8.text<>'') or (ED9.text<>'')  then
  begin

  // 假?我??? 'YourFieldName' 列的值
  if Column.FieldName = 'Material' then
    if Column.Field.Value <> Material then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'FlexMaterialCode' then
    if Column.Field.Value <> FlexMaterialCode then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'color' then
    if Column.Field.Value <> color then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'PriceOVR' then
    if Column.Field.Value <> PriceOVR then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'T1Freight' then
    if Column.Field.Value <> T1Freight then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'MaterialCost' then
    if Column.Field.Value <> MaterialCost then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'BaseMaterialPrice' then
    if Column.Field.Value <> BaseMaterialPrice then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'SupplierFreightValue' then
    if Column.Field.Value <> SupplierFreightValue then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'TRPnGRPUpcharge' then
    if Column.Field.Value <> TRPnGRPUpcharge then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  if Column.FieldName = 'ColorComments' then
    if Column.Field.Value <> colorcomments then
    begin
      DBGridEh2.Canvas.Brush.Color := clRed;   // ?置整行背景??色
      DBGridEh2.Canvas.FillRect(Rect);         // 填充?元格背景
      DBGridEh2.Canvas.Font.Color := clWhite;  // ?置字体?色?白色
    end;
  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

end;

procedure TCostingCBD.CheckBox5Click(Sender: TObject);
begin
         if (CheckBox5.Checked=false) then
         begin
            CB1.Checked:=false;
            CB2.Checked:=false;
            CB3.Checked:=false;
            CB4.Checked:=false;
            CB5.Checked:=false;
            CB6.Checked:=false;
            CB7.Checked:=false;
            CB8.Checked:=false;
         end
         else  
         begin
            CB1.Checked:=true;
            CB2.Checked:=true;
            CB3.Checked:=true;
            CB4.Checked:=false;
            CB5.Checked:=false;
            CB6.Checked:=true;
            CB7.Checked:=false;
            CB8.Checked:=false;
         end

end;

procedure TCostingCBD.QueryProcessCalcFields(DataSet: TDataSet);
var tempText,COST,USAGE:string;
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
function RoundClassic(R: Real): Int64;
begin
  Result:= Trunc(R);
  if Frac(R) >= 0.5 then
    Result := Result + 1;
end;
begin
    if  (QueryProcess.fieldbyname('NetUsage').Asstring<>'')and (QueryProcess.fieldbyname('NetUsage').Asstring<>'0') then
    if  (QueryProcess.fieldbyname('SecondLF').Asstring<>'')and (QueryProcess.fieldbyname('SecondLF').Asstring<>'0') then
      begin
          {USAGE:=(QueryProcess.fieldbyname('NetUsage').Value/(1-(QueryProcess.fieldbyname('CutLoss').Value/100))*(1+(QueryProcess.fieldbyname('SizeGrading').Value/100)));
          if (QueryProcess.fieldbyname('PriceOVR').Asstring<>'0') and (QueryProcess.fieldbyname('PriceOVR').Asstring<>'') then
            COST:= QueryProcess.fieldbyname('PriceOVR').Value*(1+(QueryProcess.fieldbyname('T1Freight').Value/100))*StrToFloat(USAGE)
          else
            COST:= QueryProcess.fieldbyname('MaterialCost').Value*(1+(QueryProcess.fieldbyname('T1Freight').Value/100))*StrToFloat(USAGE);
          tempText:= Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondLF').Value,'COST',COST,[rfReplaceAll]),'USAGE',USAGE,[rfReplaceAll]));
          if(tempText <> '') then
            QueryProcess.FieldByName('SecondLabor_auto').Value := RoundClassic(strtofloat(tempText)*10000)/10000;  //RoundTo 四舍六入五留雙
          tempText:= Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondOF').Value,'COST',COST,[rfReplaceAll]),'USAGE',USAGE,[rfReplaceAll]));
          if(tempText<>'') then
            QueryProcess.FieldByName('SecondOverhead_auto').Value := RoundClassic(strtofloat(tempText)*10000)/10000;    }


          QueryProcess.FieldByName('SecondLabor_auto').Value := RoundClassic( strtofloat(
              Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondLF').Value,'COST',QueryProcess.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',QueryProcess.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
          //UploadDetailQuery.FieldByName('SecondLabor_auto').Value := copy(
          //    Eval(StringReplace(StringReplace(UploadDetailQuery.FieldByName('SecondLF').Value,'COST',floattostr(TempLandCost),[rfReplaceAll]),'USAGE',floattostr(TempUsage),[rfReplaceAll])),1,8);
          if  (QueryProcess.fieldbyname('SecondOF').Asstring<>'') then
              begin
              QueryProcess.FieldByName('SecondOverhead_auto').Value := RoundClassic( strtofloat(
                Eval(StringReplace(StringReplace(QueryProcess.FieldByName('SecondOF').Value,'COST',QueryProcess.fieldbyname('UnitCost').Asstring,[rfReplaceAll]),'USAGE',QueryProcess.fieldbyname('GrossUsage').Asstring,[rfReplaceAll])))*1000000)/1000000;
                end;
      end;
end;

procedure TCostingCBD.BC2Click(Sender: TObject);
var i:integer;
begin
    QueryProcess.First;
    for i:=1 to QueryProcess.RecordCount do
    begin
           //if QueryProcess.FieldByName('SecondLabor_auto').AsString<>'' then
              UpdateSQL4.apply(ukmodify);
           QueryProcess.next;
    end;
    QueryProcess.active:=false;
    BC1.click;
end;

procedure TCostingCBD.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if  QueryProcess.active=true then
{if  QueryProcess.FieldByName('SecondLabor').Value>0 then
if NOT((QueryProcess.FieldByName('SecondLabor_auto').AsString=QueryProcess.FieldByName('SecondLabor').AsString)
  and (QueryProcess.FieldByName('SecondOverhead_auto').AsString=QueryProcess.FieldByName('SecondOverhead').AsString))then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;      }
if  (QueryProcess.FieldByName('SecondLabor_auto').AsString<>'') then
              if NOT(
                Trunc(strtofloat(QueryProcess.FieldByName('SecondLabor_auto').AsString)*10000)/10000
                  =Trunc(strtofloat(QueryProcess.FieldByName('SecondLabor').AsString)*10000)/10000
                  ) or NOT(
                  Trunc(strtofloat(QueryProcess.FieldByName('SecondOverhead_auto').AsString)*10000)/10000
                    =Trunc(strtofloat(QueryProcess.FieldByName('SecondOverhead').AsString)*10000)/10000
                    )then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TCostingCBD.FormCreate(Sender: TObject);
begin
       PageControl1.ActivePageIndex:=0;
       if (main.edit1.text='51267') or (main.edit1.text='51295') then
       begin
          BBadmin_runall.Visible:=True;    //全部重跑保存判斷
          Edit24.Visible:=True; 
       end;
end;

procedure TCostingCBD.BView1Click(Sender: TObject);
begin
      DBGridEh6.Columns[4].Width :=25;   //PartName
      DBGridEh6.Columns[6].Width :=20;   //Percentage
      DBGridEh6.Columns[7].Width :=130;   //Material
      DBGridEh6.Columns[8].Width :=110;   //MaterialComments
      DBGridEh6.Columns[9].Width :=65;   //FlexMaterialCode
      DBGridEh6.Columns[10].Width :=90;   //Supplier
      DBGridEh6.Columns[11].Width :=25;   //SupplierCode
      DBGridEh6.Columns[12].Width :=60;   //Color
      DBGridEh6.Columns[13].Width :=100;   //ColorComments
      DBGridEh6.Columns[14].Width :=50;   //ColorGroup
      DBGridEh6.Columns[15].Width :=25;   //Measure
      DBGridEh6.Columns[16].Width :=25;   //MeasureOVR
      DBGridEh6.Columns[17].Width :=25;   //Tooling
      DBGridEh6.Columns[18].Width :=25;   //TnRP
      DBGridEh6.Columns[19].Width :=40;   //BaseMaterialPrice
      DBGridEh6.Columns[20].Width :=30;   //TRPnGRPUpcharge
      DBGridEh6.Columns[21].Width :=30;   //SupplierFreightValue
      DBGridEh6.Columns[22].Width :=30;   //PriceStatus
      DBGridEh6.Columns[23].Width :=60;   //MaterialCost
      DBGridEh6.Columns[24].Width :=60;   //PriceOVR
      DBGridEh6.Columns[25].Width :=60;   //NetUsage
      DBGridEh6.Columns[26].Width :=30;   //CutLoss
      DBGridEh6.Columns[27].Width :=30;   //SizeGrading
      DBGridEh6.Columns[28].Width :=60;   //DeliveryTerm
      DBGridEh6.Columns[29].Width :=40;   //T1Freight
      DBGridEh6.Columns[30].Width :=40;   //LandedCost
      DBGridEh6.Columns[31].Width :=40;   //GrossUsage
      DBGridEh6.Columns[32].Width :=40;   //UnitCost
      DBGridEh6.Columns[33].Width :=50;   //SecondLabor
      DBGridEh6.Columns[34].Width :=50;   //SecondOverhead
      DBGridEh6.Columns[35].Width :=90;   //SecondLF
      DBGridEh6.Columns[36].Width :=80;   //SecondOF
      DBGridEh6.Columns[37].Width :=50;   //SecondLabor_auto
      DBGridEh6.Columns[38].Width :=50;   //SecondOverhead_auto
      DBGridEh6.Columns[39].Width :=120;   //Remark
      DBGridEh6.Columns[40].Width :=25;   //ColorQty
      DBGridEh6.Columns[41].Width :=25;   //ColorQty_Neon
      DBGridEh6.Columns[42].Width :=25;   //GUMColor
      DBGridEh6.Columns[43].Width :=25;   //moldsPperson
      DBGridEh6.Columns[44].Width :=25;   //pairPmold
      DBGridEh6.Columns[45].Width :=25;   //PCsPPair
      DBGridEh6.Columns[46].Width :=40;   //TurnOverRate
      DBGridEh6.Columns[47].Width :=55;   //UserName
      DBGridEh6.Columns[48].Width :=70;   //UserUpdateTime


end;

procedure TCostingCBD.BView2Click(Sender: TObject);
begin
      DBGridEh6.Columns[4].Width :=0;   //PartName
      DBGridEh6.Columns[6].Width :=0;   //Percentage
      DBGridEh6.Columns[7].Width :=130;   //Material
      DBGridEh6.Columns[8].Width :=110;   //MaterialComments
      DBGridEh6.Columns[9].Width :=65;   //FlexMaterialCode
      DBGridEh6.Columns[10].Width :=90;   //Supplier
      DBGridEh6.Columns[11].Width :=0;   //SupplierCode
      DBGridEh6.Columns[12].Width :=60;   //Color
      DBGridEh6.Columns[13].Width :=100;   //ColorComments
      DBGridEh6.Columns[14].Width :=50;   //ColorGroup
      DBGridEh6.Columns[15].Width :=25;   //Measure
      DBGridEh6.Columns[16].Width :=25;   //MeasureOVR
      DBGridEh6.Columns[17].Width :=25;   //Tooling
      DBGridEh6.Columns[18].Width :=25;   //TnRP
      DBGridEh6.Columns[19].Width :=40;   //BaseMaterialPrice
      DBGridEh6.Columns[20].Width :=30;   //TRPnGRPUpcharge
      DBGridEh6.Columns[21].Width :=30;   //SupplierFreightValue
      DBGridEh6.Columns[22].Width :=30;   //PriceStatus
      DBGridEh6.Columns[23].Width :=60;   //MaterialCost
      DBGridEh6.Columns[24].Width :=60;   //PriceOVR
      DBGridEh6.Columns[25].Width :=60;   //NetUsage
      DBGridEh6.Columns[26].Width :=30;   //CutLoss
      DBGridEh6.Columns[27].Width :=30;   //SizeGrading
      DBGridEh6.Columns[28].Width :=60;   //DeliveryTerm
      DBGridEh6.Columns[29].Width :=40;   //T1Freight
      DBGridEh6.Columns[30].Width :=40;   //LandedCost
      DBGridEh6.Columns[31].Width :=40;   //GrossUsage
      DBGridEh6.Columns[32].Width :=40;   //UnitCost
      DBGridEh6.Columns[33].Width :=50;   //SecondLabor
      DBGridEh6.Columns[34].Width :=50;   //SecondOverhead
      DBGridEh6.Columns[35].Width :=90;   //SecondLF
      DBGridEh6.Columns[36].Width :=80;   //SecondOF
      DBGridEh6.Columns[37].Width :=0;   //SecondLabor_auto
      DBGridEh6.Columns[38].Width :=0;   //SecondOverhead_auto
      DBGridEh6.Columns[39].Width :=120;   //Remark
      DBGridEh6.Columns[40].Width :=0;   //ColorQty
      DBGridEh6.Columns[41].Width :=0;   //ColorQty_Neon
      DBGridEh6.Columns[42].Width :=0;   //GUMColor
      DBGridEh6.Columns[43].Width :=0;   //moldsPperson
      DBGridEh6.Columns[44].Width :=0;   //pairPmold
      DBGridEh6.Columns[45].Width :=0;   //PCsPPair
      DBGridEh6.Columns[46].Width :=0;   //TurnOverRate
      DBGridEh6.Columns[47].Width :=55;   //UserName
      DBGridEh6.Columns[48].Width :=70;   //UserUpdateTime

end;

procedure TCostingCBD.BView3Click(Sender: TObject);
begin
      DBGridEh6.Columns[4].Width :=25;   //PartName
      DBGridEh6.Columns[6].Width :=0;   //Percentage
      DBGridEh6.Columns[7].Width :=130;   //Material
      DBGridEh6.Columns[8].Width :=110;   //MaterialComments
      DBGridEh6.Columns[9].Width :=0;   //FlexMaterialCode
      DBGridEh6.Columns[10].Width :=90;   //Supplier
      DBGridEh6.Columns[11].Width :=0;   //SupplierCode
      DBGridEh6.Columns[12].Width :=60;   //Color
      DBGridEh6.Columns[13].Width :=100;   //ColorComments
      DBGridEh6.Columns[14].Width :=0;   //ColorGroup
      DBGridEh6.Columns[15].Width :=25;   //Measure
      DBGridEh6.Columns[16].Width :=0;   //MeasureOVR
      DBGridEh6.Columns[17].Width :=25;   //Tooling
      DBGridEh6.Columns[18].Width :=0;   //TnRP
      DBGridEh6.Columns[19].Width :=0;   //BaseMaterialPrice
      DBGridEh6.Columns[20].Width :=0;   //TRPnGRPUpcharge
      DBGridEh6.Columns[21].Width :=0;   //SupplierFreightValue
      DBGridEh6.Columns[22].Width :=0;   //PriceStatus
      DBGridEh6.Columns[23].Width :=0;   //MaterialCost
      DBGridEh6.Columns[24].Width :=0;   //PriceOVR
      DBGridEh6.Columns[25].Width :=0;   //NetUsage
      DBGridEh6.Columns[26].Width :=0;   //CutLoss
      DBGridEh6.Columns[27].Width :=0;   //SizeGrading
      DBGridEh6.Columns[28].Width :=0;   //DeliveryTerm
      DBGridEh6.Columns[29].Width :=0;   //T1Freight
      DBGridEh6.Columns[30].Width :=0;   //LandedCost
      DBGridEh6.Columns[31].Width :=0;   //GrossUsage
      DBGridEh6.Columns[32].Width :=0;   //UnitCost
      DBGridEh6.Columns[33].Width :=50;   //SecondLabor
      DBGridEh6.Columns[34].Width :=50;   //SecondOverhead
      DBGridEh6.Columns[35].Width :=90;   //SecondLF
      DBGridEh6.Columns[36].Width :=80;   //SecondOF
      DBGridEh6.Columns[37].Width :=50;   //SecondLabor_auto
      DBGridEh6.Columns[38].Width :=50;   //SecondOverhead_auto
      DBGridEh6.Columns[39].Width :=120;   //Remark
      DBGridEh6.Columns[40].Width :=0;   //ColorQty
      DBGridEh6.Columns[41].Width :=0;   //ColorQty_Neon
      DBGridEh6.Columns[42].Width :=0;   //GUMColor
      DBGridEh6.Columns[43].Width :=0;   //moldsPperson
      DBGridEh6.Columns[44].Width :=0;   //pairPmold
      DBGridEh6.Columns[45].Width :=0;   //PCsPPair
      DBGridEh6.Columns[46].Width :=0;   //TurnOverRate
      DBGridEh6.Columns[47].Width :=55;   //UserName
      DBGridEh6.Columns[48].Width :=70;   //UserUpdateTime

end;

procedure TCostingCBD.BitBtn3Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j,SubJ,k:integer;
      PartName:string;
begin
  if  UploadDetailQuery.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;         //UploadlQuery.fieldbyname('PricingSeason').Value+

        eclApp.Cells(2,2):='Product Description';
        eclApp.Cells(3,2):='Product #';
        eclApp.Cells(4,2):='Model Description';
        eclApp.Cells(5,2):='Model';
        eclApp.Cells(6,2):='Cut';
        eclApp.Cells(7,2):='Colorway Long Name';
        eclApp.Cells(8,2):='Colorway ID';
        eclApp.Cells(9,2):='Material Number';
        eclApp.Cells(10,2):='Tech Level';
        eclApp.Cells(11,2):='Last #';
        eclApp.Cells(2,5):='Segment';
        eclApp.Cells(3,5):='Production Type';
        eclApp.Cells(4,5):='Distribution Type';
        eclApp.Cells(5,5):='Category';
        eclApp.Cells(6,5):='Planning Level 2';
        eclApp.Cells(7,5):='Product Line';
        eclApp.Cells(8,5):='Design Pack';
        eclApp.Cells(9,5):='Direct-To-DC';
        eclApp.Cells(10,5):='Shoe Weight/pc (gms)';
        eclApp.Cells(11,5):='Upper Material %';
        eclApp.Cells(2,7):='Designer';
        eclApp.Cells(3,7):='Product Developer';
        eclApp.Cells(4,7):='Factory Developer';
        eclApp.Cells(5,7):='Factory Manager';
        eclApp.Cells(6,7):='CLO Tech Developer';
        eclApp.Cells(7,7):='CLO Project Manager';
        eclApp.Cells(8,7):='Factory Costing';
        eclApp.Cells(9,7):='Factory Costing Manager';
        eclApp.Cells(10,7):='CLO Costing';
        eclApp.Cells(11,7):='CLO Costing Manager';
        eclApp.Cells(2,9):='Colorway Status';
        eclApp.Cells(3,9):='Source Flag';
        eclApp.Cells(4,9):='CLO Carryover Confirmation Status';
        eclApp.Cells(5,9):='FTY BOM Status';
        eclApp.Cells(6,9):='Factory Confirmation Status';
        eclApp.Cells(7,9):='CLO Confirmation Status';
        eclApp.Cells(8,9):='FTY BOM Cost Data Status';
        eclApp.Cells(9,9):='Factory Price Submit Status';
        eclApp.Cells(10,9):='Factory Price Status';
        eclApp.Cells(11,9):='Factory Price Submit Comments';
        eclApp.Cells(2,11):='Last Updated (Colorway Status)';
        eclApp.Cells(3,11):='Last Updated (Source Flag)';
        eclApp.Cells(4,11):='Last Updated (CLO C/O Confirmation Date)';
        eclApp.Cells(5,11):='Last Updated (FTY BOM Status)';
        eclApp.Cells(6,11):='Last Updated (Factory Confirmation Status)';
        eclApp.Cells(7,11):='Last Updated (CLO Development)';
        eclApp.Cells(8,11):='Last Updated (FTY BOM Cost Data Status)';
        eclApp.Cells(9,11):='Last Updated (Factory Price Submit Status)';
        eclApp.Cells(10,11):='Last Updated (Factory Price Status)';
        eclApp.Cells(11,11):='Initial Buy Month';
        eclApp.Cells(2,13):='Costing Season';
        eclApp.Cells(3,13):='Initial Development Season';
        eclApp.Cells(4,13):='Development Center';
        eclApp.Cells(5,13):='Factory';
        eclApp.Cells(6,13):='Sample Size';
        eclApp.Cells(7,13):='Costing Size';
        eclApp.Cells(8,13):='Size Range';
        eclApp.Cells(9,13):='Gender Class';
        eclApp.Cells(10,13):='Target Sample Price';
        eclApp.Cells(11,13):='Forecast Level';
        eclApp.Cells(2,15):='Exchange Rate Status';
        eclApp.Cells(3,15):='CNY';
        eclApp.Cells(4,15):='TWD';
        eclApp.Cells(5,15):='VND';
        eclApp.Cells(6,15):='INR';
        eclApp.Cells(7,15):='IDR';
        eclApp.Cells(8,15):='EUR';
        eclApp.Cells(9,15):='HKD';
        eclApp.Cells(2,17):='Composition of Base Factory Price';
        eclApp.Cells(3,17):='Total Material Cost %';
        eclApp.Cells(4,17):='Labor Cost %';
        eclApp.Cells(5,17):='Overhead Cost %';
        eclApp.Cells(6,17):='Profit %';
        eclApp.Cells(7,17):='Mold Charge %';
        eclApp.Cells(2,20):='Labor';
        eclApp.Cells(3,20):='C2B L';
        eclApp.Cells(4,20):='2nd L';
        eclApp.Cells(2,23):='Overhead';
        eclApp.Cells(3,23):='C2B O';
        eclApp.Cells(4,23):='2nd O';
        eclApp.Cells(2,26):='Profit $';
        eclApp.Cells(3,26):='Profit %';
        eclApp.Cells(2,28):='CBD Total Material Cost';
        eclApp.Cells(3,28):='Mold Charge';
        eclApp.Cells(4,28):='Base Factory Price (without Mold)';
        eclApp.Cells(5,28):='Base Factory Price';
        eclApp.Cells(12,1):='#';
        eclApp.Cells(12,2):='Component';
        eclApp.Cells(12,3):='%';
        eclApp.Cells(12,4):='Material';
        eclApp.Cells(12,5):='Material Id';
        eclApp.Cells(12,6):='Material Comments';
        eclApp.Cells(12,7):='Supplier';
        eclApp.Cells(12,8):='Supplier Code';
        eclApp.Cells(12,9):='Tooling';
        eclApp.Cells(12,10):='TRP & GRP';
        eclApp.Cells(12,11):='Color';
        eclApp.Cells(12,12):='Color Comments';
        eclApp.Cells(12,13):='Measure';
        eclApp.Cells(12,14):='Base Material Price';
        eclApp.Cells(12,15):='TRP & GRP Upcharge';
        eclApp.Cells(12,16):='Material Price Status';
        eclApp.Cells(12,17):='Total Material Price';
        eclApp.Cells(12,18):='Supplier Freight Value';
        eclApp.Cells(12,19):='Delivery Term';
        eclApp.Cells(12,20):='Material Cost';
        eclApp.Cells(12,21):='Measure OVR';
        eclApp.Cells(12,22):='Price OVR';
        eclApp.Cells(12,23):='T1 Freight %';
        eclApp.Cells(12,24):='Landed Cost';
        eclApp.Cells(12,25):='Net Usage';
        eclApp.Cells(12,26):='Cut Loss %';
        eclApp.Cells(12,27):='Size Grading %';
        eclApp.Cells(12,28):='Gross Usage';
        eclApp.Cells(12,29):='Unit Cost';
        eclApp.Cells(12,30):='Sub-total Material Cost';
        eclApp.Cells(12,31):='2nd process Labor';
        eclApp.Cells(12,32):='2nd process Overhead';

        eclApp.Cells(2,4):=UploadlQuery.fieldbyname('ProductDescription').Value;     //Product Description
//        eclApp.Cells(3,4):=UploadlQuery.fieldbyname('').Value;     //Product #
        eclApp.Cells(4,4):=UploadlQuery.fieldbyname('ModelDescription').Value;     //Model Description
//        eclApp.Cells(5,4):=UploadlQuery.fieldbyname('').Value;     //Model
        eclApp.Cells(6,4):=UploadlQuery.fieldbyname('Cut').Value;     //Cut
        eclApp.Cells(7,4):=UploadlQuery.fieldbyname('ColorwayLongName').Value;     //Colorway Long Name
        eclApp.Cells(8,4):=UploadlQuery.fieldbyname('SR').Value;     //Colorway ID
        eclApp.Cells(9,4):=UploadlQuery.fieldbyname('SKU').Value;     //Material Number
        eclApp.Cells(10,4):=UploadlQuery.fieldbyname('TechLevel').Value;     //Tech Level
        eclApp.Cells(11,4):=UploadlQuery.fieldbyname('Last').Value;     //Last #
        eclApp.Cells(2,6):=UploadlQuery.fieldbyname('Segment').Value;     //Segment
        eclApp.Cells(3,6):=UploadlQuery.fieldbyname('ProductionType').Value;     //Production Type
        eclApp.Cells(4,6):=UploadlQuery.fieldbyname('DistributionType').Value;     //Distribution Type
        eclApp.Cells(5,6):=UploadlQuery.fieldbyname('Category').Value;     //Category
        eclApp.Cells(6,6):=UploadlQuery.fieldbyname('PlanningLevel2').Value;     //Planning Level 2
        eclApp.Cells(7,6):=UploadlQuery.fieldbyname('ProductLine').Value;     //Product Line
//        eclApp.Cells(8,6):=UploadlQuery.fieldbyname('').Value;     //Design Pack
        eclApp.Cells(9,6):=UploadlQuery.fieldbyname('DirectToDC').Value;     //Direct-To-DC
//        eclApp.Cells(10,6):=UploadlQuery.fieldbyname('').Value;     //Shoe Weight/pc (gms)
        eclApp.Cells(11,6):=UploadlQuery.fieldbyname('UpperMaterial').Value;     //Upper Material %
//        eclApp.Cells(2,8):=UploadlQuery.fieldbyname('').Value;     //Designer
//        eclApp.Cells(3,8):=UploadlQuery.fieldbyname('').Value;     //Product Developer
        eclApp.Cells(4,8):=UploadlQuery.fieldbyname('FactoryDeveloper').Value;     //Factory Developer
        eclApp.Cells(5,8):=UploadlQuery.fieldbyname('FactoryDevManager').Value;     //Factory Manager
//        eclApp.Cells(6,8):=UploadlQuery.fieldbyname('').Value;     //CLO Tech Developer
//        eclApp.Cells(7,8):=UploadlQuery.fieldbyname('').Value;     //CLO Project Manager
        eclApp.Cells(8,8):=UploadlQuery.fieldbyname('FactoryCosting').Value;     //Factory Costing
        eclApp.Cells(9,8):=UploadlQuery.fieldbyname('FactoryCostingManager').Value;     //Factory Costing Manager
        eclApp.Cells(10,8):=UploadlQuery.fieldbyname('CLOCosting').Value;     //CLO Costing
        eclApp.Cells(11,8):=UploadlQuery.fieldbyname('CLOCostingManager').Value;     //CLO Costing Manager
//        eclApp.Cells(2,10):=UploadlQuery.fieldbyname('').Value;     //Colorway Status
        eclApp.Cells(3,10):=UploadlQuery.fieldbyname('SourceFlag').Value;     //Source Flag
//        eclApp.Cells(4,10):=UploadlQuery.fieldbyname('').Value;     //CLO Carryover Confirmation Status
        eclApp.Cells(5,10):=UploadlQuery.fieldbyname('FTYBOMStatus').Value;     //FTY BOM Status
//        eclApp.Cells(6,10):=UploadlQuery.fieldbyname('').Value;     //Factory Confirmation Status
//        eclApp.Cells(7,10):=UploadlQuery.fieldbyname('').Value;     //CLO Confirmation Status
        eclApp.Cells(8,10):=UploadlQuery.fieldbyname('FTYBOMCostDataStatus').Value;     //FTY BOM Cost Data Status
        eclApp.Cells(9,10):=UploadlQuery.fieldbyname('FactoryPriceSubmitStatus').Value;     //Factory Price Submit Status
        eclApp.Cells(10,10):=UploadlQuery.fieldbyname('FactoryPriceStatus').Value;     //Factory Price Status
//        eclApp.Cells(11,10):=UploadlQuery.fieldbyname('').Value;     //Factory Price Submit Comments
        eclApp.Cells(2,12):=UploadlQuery.fieldbyname('LastUpdatedColorwayStatus').Value;     //Last Updated (Colorway Status)
        eclApp.Cells(3,12):=UploadlQuery.fieldbyname('LastUpdatedSourceFlag').Value;     //Last Updated (Source Flag)
        eclApp.Cells(4,12):=UploadlQuery.fieldbyname('LastUpdatedCLOConfirmationDate').Value;     //Last Updated (CLO C/O Confirmation Date)
        eclApp.Cells(5,12):=UploadlQuery.fieldbyname('LastUpdatedByFTYBOMCost').Value;     //Last Updated (FTY BOM Status)
        eclApp.Cells(6,12):=UploadlQuery.fieldbyname('LastUpdatedFactoryConfirmation').Value;     //Last Updated (Factory Confirmation Status)
        eclApp.Cells(7,12):=UploadlQuery.fieldbyname('LastUpdatedDevelopment').Value;     //Last Updated (CLO Development)
        eclApp.Cells(8,12):=UploadlQuery.fieldbyname('LastUpdatedDateFTYBOMCost').Value;     //Last Updated (FTY BOM Cost Data Status)
        eclApp.Cells(9,12):=UploadlQuery.fieldbyname('LastUpdatedFactoryPriceSubmit').Value;     //Last Updated (Factory Price Submit Status)
        eclApp.Cells(10,12):=UploadlQuery.fieldbyname('LastUpdatedFactoryPriceStatus').Value;     //Last Updated (Factory Price Status)
        eclApp.Cells(11,12):=UploadlQuery.fieldbyname('InitialBuyMonth').Value;     //Initial Buy Month
        eclApp.Cells(2,14):=UploadlQuery.fieldbyname('FlexSeason').Value;     //Costing Season
        eclApp.Cells(3,14):=UploadlQuery.fieldbyname('DevelopmentSeason').Value;     //Initial Development Season
        eclApp.Cells(4,14):=UploadlQuery.fieldbyname('DevelopmentCenter').Value;     //Development Center
        eclApp.Cells(5,14):=UploadlQuery.fieldbyname('Factory').Value;     //Factory
        eclApp.Cells(6,14):=UploadlQuery.fieldbyname('SampleSize').Value;     //Sample Size
        eclApp.Cells(7,14):=UploadlQuery.fieldbyname('CostingSize').Value;     //Costing Size
        eclApp.Cells(8,14):=UploadlQuery.fieldbyname('SizeRange').Value;     //Size Range
        eclApp.Cells(9,14):=UploadlQuery.fieldbyname('GenderClass').Value;     //Gender Class
        eclApp.Cells(10,14):=UploadlQuery.fieldbyname('TargetSamplePrice').Value;     //Target Sample Price
        eclApp.Cells(11,14):=UploadlQuery.fieldbyname('ForecastLevel').Value;     //Forecast Level
//        eclApp.Cells(2,16):=UploadlQuery.fieldbyname('').Value;     //Exchange Rate Status
//        eclApp.Cells(3,16):=UploadlQuery.fieldbyname('').Value;     //CNY
//        eclApp.Cells(4,16):=UploadlQuery.fieldbyname('').Value;     //TWD
//        eclApp.Cells(5,16):=UploadlQuery.fieldbyname('').Value;     //VND
//        eclApp.Cells(6,16):=UploadlQuery.fieldbyname('').Value;     //INR
//        eclApp.Cells(7,16):=UploadlQuery.fieldbyname('').Value;     //IDR
//        eclApp.Cells(8,16):=UploadlQuery.fieldbyname('').Value;     //EUR
//        eclApp.Cells(9,16):=UploadlQuery.fieldbyname('').Value;     //HKD
//        eclApp.Cells(2,18):=UploadlQuery.fieldbyname('').Value;     //Composition of Base Factory Price
//        eclApp.Cells(3,18):=UploadlQuery.fieldbyname('').Value;     //Total Material Cost %
//        eclApp.Cells(4,18):=UploadlQuery.fieldbyname('').Value;     //Labor Cost %
//        eclApp.Cells(5,18):=UploadlQuery.fieldbyname('').Value;     //Overhead Cost %
//        eclApp.Cells(6,18):=UploadlQuery.fieldbyname('').Value;     //Profit %
//        eclApp.Cells(7,18):=UploadlQuery.fieldbyname('').Value;     //Mold Charge %
        eclApp.Cells(2,21):=UploadlQuery.fieldbyname('Labor').Value;     //Labor
        eclApp.Cells(3,21):=UploadlQuery.fieldbyname('C2BL').Value;     //C2B L
        eclApp.Cells(4,21):=UploadlQuery.fieldbyname('SecondLabor').Value;     //2nd L
        eclApp.Cells(2,24):=UploadlQuery.fieldbyname('Overhead').Value;     //Overhead
        eclApp.Cells(3,24):=UploadlQuery.fieldbyname('C2BO').Value;     //C2B O
        eclApp.Cells(4,24):=UploadlQuery.fieldbyname('SecondOverhead').Value;     //2nd O
        eclApp.Cells(2,27):=UploadlQuery.fieldbyname('Profit').Value;     //Profit $
        eclApp.Cells(3,27):=UploadlQuery.fieldbyname('ProfitRate').Value;     //Profit %
        eclApp.Cells(2,30):=UploadlQuery.fieldbyname('TotalMaterialCost').Value;     //CBD Total Material Cost
        eclApp.Cells(3,30):=UploadlQuery.fieldbyname('MoldCharge').Value;     //Mold Charge
        eclApp.Cells(4,30):='=AD2+U2+X2+AA2';     //Base Factory Price (without Mold)
        eclApp.Cells(5,30):=UploadlQuery.fieldbyname('FOB').Value;     //Base Factory Price
        eclApp.Cells(2,31):=UploadlQuery.fieldbyname('Remark').Value;     //
        eclApp.Cells(3,31):=UploadlQuery.fieldbyname('RefModel').Value;     //
        eclApp.Cells(1,13):=UploadlQuery.fieldbyname('Round').Value;     //

        UploadDetailQuery.requestlive:=True;
        UploadDetailQuery.cachedupdates:=True;
        UploadDetailQuery.edit;
        UploadDetailQuery.First;
        j:=13;                              //SubJ,SubJend
        SubJ:=0;
        PartName:='';
        k:=0;
        while   not   UploadDetailQuery.Eof   do
          begin
            if (PartName='') or (PartName<>UploadDetailQuery.fieldbyname('PartName').Value) then
                begin
                  PartName:=UploadDetailQuery.fieldbyname('PartName').Value;
                  eclApp.Cells(j,1):=PartName;
                  eclApp.ActiveSheet.Cells[j,1].Font.Bold := True;
                  if SubJ>0 then
                     eclApp.Cells(SubJ,30):='=SUM(AC'+inttostr(SubJ)+':AC'+inttostr(j-1)+')';
                  SubJ:=j;
                  inc(j);
                end;
            for   i:=1   to  30  do    //0~28 29&30 2nd LO
            begin
                if i=23 then                                                  //=IF(V14<>0,V14*(1+W14/100),T14*(1+W14/100))
                    eclApp.Cells(j,i+1):='=IF(V'+inttostr(j)+'<>0,V'+inttostr(j)+'*(1+W'+inttostr(j)+'/100),T'+inttostr(j)+'*(1+W'+inttostr(j)+'/100))'
                else  if i>28 then
                    eclApp.Cells(j,i+2):=UploadDetailQuery.Fields[i].Value
                else if i=28 then
                    eclApp.Cells(j,i+1):='=X'+inttostr(j)+'*AB'+inttostr(j)
                else if i=27 then
                    eclApp.Cells(j,i+1):='=Y'+inttostr(j) +'/(1-Z'+inttostr(j) +'/100)*(1+AA'+inttostr(j) +'/100)'
                else
                  eclApp.Cells(j,i+1):=UploadDetailQuery.Fields[i].Value;
            end;
          if (UploadDetailQuery.fieldbyname('PartName').Value<>'') then
            begin
              inc(k);
              eclApp.Cells(j,1):=inttostr(k);
            end;
          UploadDetailQuery.Next;
          inc(j);
          end; 
      eclApp.Cells(SubJ,30):='=SUM(AC'+inttostr(SubJ)+':AC'+inttostr(j)+')';
      //eclApp.Cells(3,39):='=SUBTOTAL(9,AM4:AM'+Inttostr(j-1)+')';

      eclapp.ActiveSheet.columns.Font.Name := 'Arial';
      eclapp.ActiveSheet.columns.Font.Size := 8;    
      //eclApp.ActiveSheet.Range['A:C'].FreezePanes := True;     凍結窗格 錯誤
      eclapp.ActiveSheet.Cells.EntireRow.RowHeight := 10.5;
      eclApp.ActiveSheet.Range['A12:AD12'].RowHeight := 31.5;
      eclApp.ActiveSheet.Range['A12:AD12'].WrapText:= True;
      eclApp.ActiveSheet.Range['A12:AD12'].Interior.ColorIndex := 35;
      eclApp.ActiveSheet.Range['A12:AD12'].Font.Bold := True; 
      eclApp.ActiveSheet.Range['B2:B11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['E2:E11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['G2:G11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['I2:I11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['K2:K11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['M2:M11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['O2:O11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['Q2:Q11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['T2:T11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['W2:W11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['Z2:Z11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['AB2:AB11'].Font.Bold := True;
      eclApp.ActiveSheet.Range['A12:AD12'].VerticalAlignment:= 1;
      eclApp.ActiveSheet.Columns[1].ColumnWidth := 2.71;
      eclApp.ActiveSheet.Columns[2].ColumnWidth :=18.71;
      eclApp.ActiveSheet.Columns[3].ColumnWidth :=3.43;
      eclApp.ActiveSheet.Columns[4].ColumnWidth :=63.43;
      eclApp.ActiveSheet.Columns[5].ColumnWidth :=9.14;
      eclApp.ActiveSheet.Columns[6].ColumnWidth :=24.43;
      eclApp.ActiveSheet.Columns[7].ColumnWidth :=11.14;
      eclApp.ActiveSheet.Columns[8].ColumnWidth :=6.14;
      eclApp.ActiveSheet.Columns[9].ColumnWidth :=8.43;
      eclApp.ActiveSheet.Columns[10].ColumnWidth :=7.14;
      eclApp.ActiveSheet.Columns[11].ColumnWidth :=21.86;
      eclApp.ActiveSheet.Columns[12].ColumnWidth :=19.71;
      eclApp.ActiveSheet.Columns[13].ColumnWidth :=8.71;
      eclApp.ActiveSheet.Columns[14].ColumnWidth :=7.71;
      eclApp.ActiveSheet.Columns[15].ColumnWidth :=5.29;
      eclApp.ActiveSheet.Columns[16].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[17].ColumnWidth :=13.14;
      eclApp.ActiveSheet.Columns[18].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[19].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[20].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[21].ColumnWidth :=7.14;
      eclApp.ActiveSheet.Columns[22].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[23].ColumnWidth :=7.71;
      eclApp.ActiveSheet.Columns[24].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[25].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[26].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[27].ColumnWidth :=6.43;
      eclApp.ActiveSheet.Columns[28].ColumnWidth :=8.43;
      eclApp.ActiveSheet.Columns[29].ColumnWidth :=7.71;
      eclApp.ActiveSheet.Columns[30].ColumnWidth :=9.71;
      //框線
      eclApp.ActiveSheet.Range['A2:AD11'].Borders[8].LineStyle := 1;       //上邊線
      eclApp.ActiveSheet.Range['A2:AD11'].Borders[9].LineStyle := 1;       //下邊線
      eclApp.ActiveSheet.Range['A2:AD11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['F2:F11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['H2:H11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['J2:J11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['L2:L11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['N2:N11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['P2:P11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['S2:S11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['V2:V11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['Y2:Y11'].Borders[10].LineStyle := 1;       //右邊線
      eclApp.ActiveSheet.Range['AA2:AA11'].Borders[10].LineStyle := 1;       //右邊線        
      eclApp.ActiveSheet.Rows [12].Borders[9].LineStyle := 1;


      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message+'item'+inttoStr(i));
      end;   //try
    end;    //if
end;

procedure TCostingCBD.BitBtn6Click(Sender: TObject);
begin
  BitBtn4.Enabled:=true;
  BitBtn7.Enabled:=true;
   with Query_CLBH do
      begin
         active:=false;
         sql.Clear;
         sql.add('select * from(');
         sql.add('select CostingPriceListNew .SR,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,MaterialSeason,CostingXXZLS.Factory,CostingXXZLS.Component ');
         sql.add(',CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingMatLibrary.FlexMaterialCode,CostingMatLibrary.Supplier,CostingMatLibrary.SupplierCode');
         sql.add(',Material_Text,CostingPriceLibrary.CLBH,XXZL.XieXing,XXZL.SheHao,CostingPriceListNew.CostingSize');
         sql.add(',ROW_NUMBER() OVER (PARTITION BY MaterialSeason,CostingXXZLS.MTL_No,CostingXXZLS.Color_No ORDER BY CostingPriceListNew.SR) AS RowNum,CostingPriceLibrary.Color');
         sql.add(',CSBH_FLEX.CSBH,ZSZL.ZSYWJC,CSBH_FLEX.USERID,CSBH_FLEX.USERDATE,CSBH_FLEX.Replaced');
         sql.add('From CostingXXZLS');
         sql.add('left join CostingMatLibrary on CostingXXZLS.MTL_No=CostingMatLibrary.MTL_No ');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingMatLibrary.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No');
         //sql.add('left join XXZL  on CostingXXZLS.SKU = left(XXZL.article,LEN(CostingXXZLS.SKU))');
         sql.add('left join xxzl on  CostingXXZLS.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
         sql.add('left join CostingPriceListNew on CostingXXZLS.SKU=CostingPriceListNew.SKU and CostingXXZLS.CostingSeason=CostingPriceListNew.CostingSeason ');
         sql.add('   and CostingPriceListNew.Round=CostingXXZLS.Round and CostingPriceListNew.Factory=CostingXXZLS.Factory ');          
         sql.add('left join CSBH_FLEX on CSBH_FLEX.SupplierCode=CostingMatLibrary.SupplierCode');
         sql.add('left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH');
         sql.add('where CostingMatLibrary.FlexMaterialCode <> ''''');
         if Edit15.text<>'' then
          sql.add('and CostingMatLibrary.FlexMaterialCode = '''+Edit15.text+'''');
         if Edit18.text<>'' then
          sql.add('and CostingPriceListNew.Round like '''+Edit18.text+'%''');
         if Edit16.text<>'' then
          sql.add('and CostingXXZLS.SKU like '''+Edit16.text+'%''');
         if Edit12.text<>'' then
          sql.add('and CostingPriceListNew.SR like '''+Edit12.text+'%''');
         if Edit14.text<>'' then
          sql.add('and CostingXXZLS.CostingSeason = '''+Edit14.text+'''');
         sql.add('and CostingMatLibrary.Supplier <> ''Factory In-House''');
         if ComboBox4.ItemIndex=0  then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if  ComboBox4.ItemIndex=1  then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if CheckBox10.Checked then
          sql.add('and ( CostingPriceLibrary.CLBH is null or CostingPriceLibrary.CLBH ='''')');
         sql.add('and CostingXXZLS.Component not like ''Threads%''');
         sql.add('and CostingXXZLS.Component not like ''Lace Tip''');
         sql.add('and Material_Text not like ''Adhesive-%''');
         if Checkbox14.Checked=true then
            sql.add('and CostingPriceListNew.UserName = '''+main.Edit1.Text+'''');
         sql.add(')A WHERE RowNum = 1;');
         //showmessage(SQL.text);
         active:=true;
      end;
      XXZLS.Active:=true;
      Queryclzl_flex.Active:=true;

end;

procedure TCostingCBD.CheckBox7Click(Sender: TObject);
begin
      if (CheckBox4.Checked=true) and(CheckBox7.Checked=true)   then
      begin
         CheckBox4.Checked:=false;
      end;
end;

procedure TCostingCBD.CheckBox4Click(Sender: TObject);
begin
      if (CheckBox7.Checked=true) and(CheckBox4.Checked=true)  then
      begin
         CheckBox7.Checked:=false;
      end;
end;


procedure TCostingCBD.BA7Click(Sender: TObject);
var i:integer;
begin
    QueryMTL.First;
    for i:=1 to QueryMTL.RecordCount do
    begin
           UpdateSQL3.apply(ukmodify);
           QueryMTL.next;
    end;
    QueryMTL.active:=false;
    BA1.click;

end;

procedure TCostingCBD.DBGridEh2CellClick(Column: TColumnEh);
begin
  if (DBGridEh2.SelectedField.FieldName = 'MTL_No')  then
    if (not QueryMTL.FieldByName('MTL_No').isnull) then
        ED8.Text:=QueryMTL.FieldByName('MTL_No').value;

  if (DBGridEh2.SelectedField.FieldName = 'Color_No')  then
    if (not QueryMTL.FieldByName('Color_No').isnull) then
        ED9.Text:=QueryMTL.FieldByName('Color_No').value;

  if (DBGridEh2.SelectedField.FieldName = 'Supplier')  then
    if (not QueryMTL.FieldByName('Supplier').isnull) then
        ED4.Text:=QueryMTL.FieldByName('Supplier').value;

  if (DBGridEh2.SelectedField.FieldName = 'FlexMaterialCode')  then
    if (not QueryMTL.FieldByName('FlexMaterialCode').isnull) then
        ED3.Text:=QueryMTL.FieldByName('FlexMaterialCode').value;

end;

procedure TCostingCBD.PLQueryClick(Sender: TObject);
begin
   with Query_PriceList do
    begin
         active:=false;
         sql.Clear;

         SQL.add('Select A.*');
         SQL.add(',case when DDZL_PreviousSeason.Pairs is null then DDZL.Pairs');
         SQL.add('when (PreviousSeasonCFM.SKU is null and DDZL.Pairs is null)then DDZL_PreviousSeason.Pairs  ');
         SQL.add('when PreviousSeasonCFM.SKU is null then DDZL.Pairs+DDZL_PreviousSeason.Pairs ');
         SQL.add('else DDZL.Pairs end as Pairs');        
         SQL.add('from (');

         sql.add('Select CostingPriceListNew.CostingSeason,CostingPriceListNew.Round,CostingPriceListNew.Factory,CostingPriceListNew.SKU');
         sql.add(',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitStatus,CostingPriceListNew.FTYBOMStatus');
         sql.add(',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,CostingPriceListNew.TechLevel,CostingPriceListNew.last');
         sql.add(',Max(XXZL.DAOMH) as DAOMH');
         sql.add(',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2');
         sql.add(',CostingPriceListNew.ProductDescription,CostingPriceListNew.ModelDescription,CostingPriceListNew.ColorwayLongName,CostingPriceListNew.SourceFlag');
         sql.add(',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDeveloper');
         sql.add(',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosting');
         sql.add(',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH');
         sql.add(',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH');
         sql.add(',CostingPriceListNew.TargetSamplePrice');
         sql.add(',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,CostingPriceListNew.Labor,CostingPriceListNew.Overhead');
         sql.add(',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceListNew.SecondLabor,CostingPriceListNew.SecondOverhead');
         sql.add(',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,CostingPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation');
         sql.add(',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceListNew.LastUpdatedCLOConfirmationDate');
         sql.add(',Costing_Salary.Salary');
         sql.add(',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime');
         //CSI
         sql.add(',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,');
         sql.add('MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
         sql.add('SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
         sql.add(',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
         sql.add(',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
         sql.add(',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U');
         sql.add(',CL98LaborPrecommit_25F,FY25_CostMitigation');
         SQL.add('      ,xxzl.XieXing,xxzl.SheHao');             //,CostingPriceList.KFCQ

         //sql.add(',Sum(DDZL.pairs) as pairs');

         sql.add('From CostingPriceListNew');
         sql.add('left join xxzl on  CostingPriceListNew.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
         {sql.add('');
         if CBGetOrderByPODate.Checked=true then
            begin
              SQL.add('left join (select DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,convert(char(6),KHDDBH2DATE,112) as BUYNO,season.PODateseason as PODateseason');
              SQL.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH');
              SQL.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)');
              SQL.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');
              SQL.add('	) DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and DDZL.PODateseason = CostingPriceListNew.CostingSeason');
            end
         else
            begin
              sql.add('left join DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and right(DDZL.BUYNO,3) = ''''+CostingPriceListNew.CostingSeason+'''' ');
              sql.add('   and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');
            end;}
         sql.add('left join Costing_Salary on CostingPriceListNew.CostingSeason=Costing_Salary.PricingSeason and  CostingPriceListNew.Factory=Costing_Salary.Factory_CTS');
         sql.add('left join CostingPriceList on CostingPriceList.SKU=CostingPriceListNew.SKU and CostingPriceList.PricingSeason=CostingPriceListNew.CostingSeason');

         sql.add('Where 1=1');
         if Edit7.text<>'' then
            sql.add('and CostingPriceListNew.ProductionType like '''+Edit7.text+'%''');
         if Edit6.text<>'' then
            sql.add('and DDZL.Buyno like '''+Edit6.text+'%''');
         if Edit13.text<>'' then
            sql.add('and CostingPriceListNew.TechLevel like '''+Edit13.text+'%''');
         if Edit5.text<>'' then
            sql.add('and CostingPriceListNew.Round like '''+Edit5.text+'%''');
         if Edit1.text<>'' then
            sql.add('and CostingPriceListNew.SKU like '''+Edit1.text+'%''');
         if Edit3.text<>'' then
            sql.add('and CostingPriceListNew.SR like '''+Edit3.text+'%''');
         if CB_PL_Factory.ItemIndex=0  then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if  CB_PL_Factory.ItemIndex=1  then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if Checkbox8.Checked=true then
            sql.add('and UserName = '''+main.Edit1.Text+'''');

         //if Edit2.text<>'' then
         //   sql.add('and CostingPriceListNew.CostingSeason = '''+Edit2.text+'''');
         if Edit2.text<>'' then
          if CB_FullSeason.Checked=true then
            begin
            sql.add('and (');
            if ((copy(Edit2.text,3,1)='S') or (copy(Edit2.text,3,1)='U'))   then
              begin
                sql.add('CostingPriceListNew.CostingSeason  = '''+copy(Edit2.text,1,2)+'S''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+copy(Edit2.text,1,2)+'U''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))-1)+'F''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))-1)+'H''');
              end
            else
              begin
                sql.add('CostingPriceListNew.CostingSeason  = '''+inttostr(strtoint(copy(Edit2.text,1,2))+1)+'S''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))+1)+'U''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+copy(Edit2.text,1,2)+'F''');
                sql.add('or CostingPriceListNew.CostingSeason = '''+copy(Edit2.text,1,2)+'H''');
              end;
            sql.add(')');
            end
          else
            begin
            sql.add('and (');
            sql.add('CostingPriceListNew.CostingSeason  = '''+Edit2.text+'''');    
            if Edit4.text<>'' then
                sql.add('or CostingPriceListNew.CostingSeason  = '''+Edit4.text+'''');
            if Edit25.text<>'' then
                sql.add('or CostingPriceListNew.CostingSeason  = '''+Edit25.text+'''');
            if Edit26.text<>'' then
                sql.add('or CostingPriceListNew.CostingSeason  = '''+Edit26.text+'''');
            sql.add(')');
            end;

         sql.add('group by CostingPriceListNew.CostingSeason,CostingPriceListNew.Round,CostingPriceListNew.Factory,CostingPriceListNew.SKU');
         sql.add(',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitStatus,CostingPriceListNew.FTYBOMStatus');
         sql.add(',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,CostingPriceListNew.TechLevel,CostingPriceListNew.last');
         sql.add(',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2');
         sql.add(',CostingPriceListNew.ProductDescription,CostingPriceListNew.ModelDescription,CostingPriceListNew.ColorwayLongName,CostingPriceListNew.SourceFlag');
         sql.add(',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDeveloper');
         sql.add(',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosting');
         sql.add(',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH');
         sql.add(',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH');
         sql.add(',CostingPriceListNew.TargetSamplePrice');
         sql.add(',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,CostingPriceListNew.Labor,CostingPriceListNew.Overhead');
         sql.add(',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceListNew.SecondLabor,CostingPriceListNew.SecondOverhead');
         sql.add(',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,CostingPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation');
         sql.add(',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceListNew.LastUpdatedCLOConfirmationDate');
         sql.add(',Costing_Salary.Salary');
         sql.add(',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime');    
         //CSI
         sql.add(',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,');
         sql.add('MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
         sql.add('SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
         sql.add(',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
         sql.add(',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
         sql.add(',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U');
         sql.add(',CL98LaborPrecommit_25F,FY25_CostMitigation');
         SQL.add('      ,xxzl.XieXing,xxzl.SheHao');             //
    if checkbox12.Checked then
    begin
         sql.add('UNION all');
         //old season
         sql.add('select CostingPriceList.PricingSeason as CostingSeason,''Final-''+CostingPriceList.ModelDescription as Round,CostingPriceList.Factory,CostingPriceList.SKU'); //,CostingPriceList.KFCQ as Factory
         sql.add(',Max(KFXXZL.DEVCODE)as SR,'''' as FactoryPriceSubmitStatus,'''' as FTYBOMStatus');
         sql.add(',KFXXZL.GENDER as GenderClass,Max(xxzlkf.cut) as cut,Max(xxzlkf.TechLevel_Flex) as TechLevel,Max(KFXXZL.XTMH) as last');
         sql.add(',Max(XXZL.DAOMH) as DAOMH');
         sql.add(',Max(xxzlkf.segment) as segment,Max(LBZLS.YWSM )as ProductionType,Max(xxzlkf.category) as Category,Max(xxzlkf.Planning_Level_2) as PlanningLevel2');
         sql.add(',Max(KFXXZL.XieMing) as ProductDescription,Max(KFXXZL.XieMing) as ModelDescription,Max(KFXXZL.YSSM) as ColorwayLongName,'''' as SourceFlag');
         sql.add(','''' as ProductLine,'''' as DirectToDC,CostingPriceList.UpperMatDetail as UpperMaterial,'''' as FactoryDeveloper');
         sql.add(','''' as FactoryCosting,'''' as CLOCosting');
         sql.add(',''0'' as C2B_PPH,''0'' as R2B_PPH');
         sql.add(',''0'' as CFM_C2B_PPH,''0'' as CFM_R2B_PPH');
         sql.add(',CAST(Max(xxzlkf.TSP)AS VARCHAR) as TargetSamplePrice');
         sql.add(',CAST(CostingPriceList.FOB AS VARCHAR)as FOB,CAST(CostingPriceList.Material AS VARCHAR) as TotalMaterialCost');
         sql.add(',CAST(CostingPriceList.Labor+CostingPriceList.SecondLabor AS VARCHAR) as Labor,CAST(CostingPriceList.OH+CostingPriceList.SecondOH AS VARCHAR) as Overhead ');
         sql.add(',CAST(CostingPriceList.Labor AS VARCHAR) as C2BL,CAST(CostingPriceList.OH AS VARCHAR) as C2BO');
         sql.add(',CAST(CostingPriceList.SecondLabor AS VARCHAR) as SecondLabor ,CAST(CostingPriceList.SecondOH AS VARCHAR) as SecondOverhead');
         sql.add(',CAST(CostingPriceList.Profit AS VARCHAR),CostingPriceList.ProfitRate,CostingPriceList.MoldCharge,'''' as CostMitigation');
         sql.add(','''' as LastUpdatedFactoryPriceStatus,'''' as LastUpdatedCLOConfirmationDate');
         //sql.add(',Sum(DDZL.pairs) as pairs,Max(Costing_Salary.Salary) as Salary');
         sql.add(',Max(Costing_Salary.Salary) as Salary');
         sql.add(',CostingPriceList.CheckID as UserName,CostingPriceList.CheckDate as UserUpdateTime');
         //CSI
         sql.add(',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,');
         sql.add('MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
         sql.add('SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
         sql.add(',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
         sql.add(',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
         sql.add(',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U');  
         sql.add(',CL98LaborPrecommit_25F,FY25_CostMitigation');
         SQL.add('      ,xxzl.XieXing,xxzl.SheHao');             //,CostingPriceList.KFCQ

         sql.add('From CostingPriceList');
         sql.add('left join xxzl on  CostingPriceList.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1) and xxzl.KFCQ=CostingPriceList.KFCQ');
         sql.add('left join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao=KFXXZL.SheHao');
         sql.add('left join xxzlkf on KFXXZL.XieXing=xxzlkf.XieXing and xxzlkf.SheHao=KFXXZL.SheHao');
         sql.add('Left join LBZLS on LBZLS.LBDH=KFXXZL.XieGN and LBZLS.LB=''03''');
         sql.add('left join Costing_Salary on CostingPriceList.PricingSeason=Costing_Salary.PricingSeason and  CostingPriceList.KFCQ=Costing_Salary.Factory');
         {if CBGetOrderByPODate.Checked=true then
            begin
              SQL.add('left join (select DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,convert(char(6),KHDDBH2DATE,112) as BUYNO,season.PODateseason as PODateseason');
              SQL.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH');
              SQL.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)');
              SQL.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');
              SQL.add('	) DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and DDZL.PODateseason = CostingPriceList.PricingSeason');
            end
         else
            begin
              sql.add('left join DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and right(DDZL.BUYNO,3) = ''''+CostingPriceList.PricingSeason+'''' ');
              sql.add('   and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');
            end;    }
         //sql.add('left join (select DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,convert(char(6),KHDDBH2DATE,112) as BUYNO,season.PODateseason as PODateseason');
         //sql.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH');
         //sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)');
         //sql.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');
         //sql.add(') DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and DDZL.PODateseason = CostingPriceList.PricingSeason');
         sql.add('where (CostingPriceList.ModelDescription Not like ''%CBY%'' or CostingPriceList.ModelDescription is null)'); //排除CBY訂單
         if Edit7.text<>'' then
            sql.add('and LBZLS.YWSM like '''+Edit7.text+'%''');
         if Edit6.text<>'' then
            sql.add('and DDZL.Buyno like '''+Edit6.text+'%''');
         if Edit13.text<>'' then
            sql.add('and xxzlkf.TechLevel_Flex like '''+Edit13.text+'%''');
         if Edit5.text<>'' then
            sql.add('and ''FNL''+CostingPriceList.ModelDescription like '''+Edit5.text+'%''');
         if Edit1.text<>'' then
            sql.add('and CostingPriceList.SKU like '''+Edit1.text+'%''');
         if Edit3.text<>'' then
            sql.add('and KFXXZL.DEVCODE like '''+Edit3.text+'%''');
         if CB_PL_Factory.ItemIndex=0  then
            sql.add('and CostingPriceList.KFCQ = ''JNG''')
         else if  CB_PL_Factory.ItemIndex=1  then
            sql.add('and CostingPriceList.KFCQ = ''YQA''');
         if Edit2.text<>'' then
          if CB_FullSeason.Checked=true then
            begin
            sql.add('and (');
            if ((copy(Edit2.text,3,1)='S') or (copy(Edit2.text,3,1)='U'))   then
              begin
                sql.add('CostingPriceList.PricingSeason  = '''+copy(Edit2.text,1,2)+'S''');
                sql.add('or CostingPriceList.PricingSeason = '''+copy(Edit2.text,1,2)+'U''');
                sql.add('or CostingPriceList.PricingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))-1)+'F''');
                sql.add('or CostingPriceList.PricingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))-1)+'H''');
              end
            else
              begin
                sql.add('CostingPriceList.PricingSeason  = '''+inttostr(strtoint(copy(Edit2.text,1,2))+1)+'S''');
                sql.add('or CostingPriceList.PricingSeason = '''+inttostr(strtoint(copy(Edit2.text,1,2))+1)+'U''');
                sql.add('or CostingPriceList.PricingSeason = '''+copy(Edit2.text,1,2)+'F''');
                sql.add('or CostingPriceList.PricingSeason = '''+copy(Edit2.text,1,2)+'H''');
              end;
            sql.add(')');
            end
          else
            begin
              sql.add('and (');
              sql.add('CostingPriceList.PricingSeason  = '''+Edit2.text+'''');
              if Edit4.text<>'' then
                sql.add('or CostingPriceList.PricingSeason  = '''+Edit4.text+'''');
            if Edit25.text<>'' then
                sql.add('or CostingPriceList.PricingSeason  = '''+Edit25.text+'''');
            if Edit26.text<>'' then
                sql.add('or CostingPriceList.PricingSeason  = '''+Edit26.text+'''');
              sql.add(')');
            end;
         if Checkbox8.Checked=true then
            sql.add('and CostingPriceList.CheckID = '''+main.Edit1.Text+'''');

         sql.add('Group by CostingPriceList.No, CostingPriceList.SKU,   ');
         sql.add('CostingPriceList.PricingSeason,FOB,    ');
         sql.add('Material,Labor,OH,SecondLabor,SecondOH,OtherAdject,ProfitRate,Profit,Freight,     ');
         sql.add('AvailableDate,AvailableBy,SendCTSDate,CostingPriceList.Remark     ');
         sql.add(',CostingPriceList.KFCQ,CostingPriceList.CheckID,CostingPriceList.CheckDate');
         sql.add(',CostingPriceList.ModelDescription,CostingPriceList.UpperMatDetail,CostingPriceList.MoldCharge');      
         //CSI
         sql.add(',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,');
         sql.add('MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
         sql.add('SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
         sql.add(',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
         sql.add(',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
         sql.add(',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U');       
         sql.add(',CL98LaborPrecommit_25F,FY25_CostMitigation');     
         SQL.add('      ,xxzl.XieXing,xxzl.SheHao,CostingPriceList.Factory,KFXXZL.GENDER');             //,CostingPriceList.KFCQ
   end;
         SQL.add(') A');        
         SQL.add('left join (select right(DDZL.buyno,3)as Currentseason,right(PreviousSeason.BUYNO,3) as PreviousSeason');
         SQL.add('	from DDZL');
         SQL.add('	left join (select DDZL.buyno from DDZL where KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like''%CBY%%''  group by DDZL.buyno   ');
         SQL.add('		) PreviousSeason on (case when CAST(SUBSTRING(DDZL.buyno,5,2)AS NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-91 end)=left(PreviousSeason.buyno,6)');
         SQL.add('where len(DDZL.buyno)=10 and DDZL.KHBH=''036'' and KHPO not like''%CBY%%'' ');
         SQL.add('group by right(DDZL.buyno,3),right(PreviousSeason.BUYNO,3)');
         SQL.add(')PreviousSeason on PreviousSeason.Currentseason=a.CostingSeason');
         if CBGetOrderByPODate.Checked=true then
          begin
          if CB_PL_Factory.ItemIndex=0  then      //LYN
              begin
                    //上一季度未確認  但有訂單則補入目前季度訂單雙數
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pairs,season.PODateseason          ');
                    sql.add('    From YWDD             ');
                    sql.add('    left join DDZL on DDZL.DDBH=YWDD.DDBH            ');        
                    sql.add('    left join (select         ');
                    sql.add('            left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason');
                    sql.add('            from DDZL ');
                    sql.add('            where len(DDZL.buyno)=10 and DDZL.KHBH=''036'' and KHPO not like''%CBY%%''  ');
                    sql.add('            group by DDZL.buyno');
                    sql.add('    )season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)            ');

                    sql.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''            ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason        ');
                    sql.add(')DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DDZL.PODateseason = A.CostingSeason            ');
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pairs,season.PODateseason as PODateseason    --上一季訂單狀態        ');
                    sql.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH            ');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL             ');
                    sql.add('    where len(DDZL.buyno)=10 and KHPO not like''%CBY''  group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)            ');
                    sql.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''            ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason           ');
                    sql.add(')DDZL_PreviousSeason on  A.XieXing=DDZL_PreviousSeason.XieXing and A.SheHao=DDZL_PreviousSeason.SheHao and DDZL_PreviousSeason.PODateseason = PreviousSeason.PreviousSeason            ');
                    {
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pairs,season.PODateseason as PODateseason,season.PreviousSeason            ');
                    sql.add('    From YWDD             ');
                    sql.add('    left join DDZL on DDZL.DDBH=YWDD.DDBH            ');
                    sql.add('    left join (select --(case when CAST(SUBSTRING(DDZL.buyno,5,2)AS NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-91 end) as Previousbuyno,            ');
                    sql.add('            left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason,right(PreviousSeason.BUYNO,3) as PreviousSeason--,Max(DDZL.DDBH) as DDBH');
                    sql.add('            from DDZL ');
                    sql.add('            left join (select DDZL.buyno from DDZL where KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like''%CBY%%''  group by DDZL.buyno');
                    sql.add('                ) PreviousSeason on (case when CAST(SUBSTRING(DDZL.buyno,5,2)AS NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-91 end)=left(PreviousSeason.buyno,6)');
                    sql.add('                and  len(PreviousSeason.buyno)=10  ');
                    sql.add('            where len(DDZL.buyno)=10 and DDZL.KHBH=''036'' and KHPO not like''%CBY%%''  ');
                    sql.add('            group by DDZL.buyno,PreviousSeason.BUYNO');
                    sql.add('    )season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)            ');
                    sql.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''            ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason,season.PreviousSeason            ');
                    sql.add(') DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DDZL.PODateseason = A.CostingSeason            ');
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pairs,season.PODateseason as PODateseason    --上一季訂單狀態        ');
                    sql.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH            ');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL             ');
                    sql.add('    where len(DDZL.buyno)=10 and KHBH not like''%CBY''  group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)            ');
                    sql.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''            ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason            ');
                    sql.add(')DDZL_PreviousSeason on  A.XieXing=DDZL_PreviousSeason.XieXing and A.SheHao=DDZL_PreviousSeason.SheHao and DDZL_PreviousSeason.PODateseason = DDZL.PreviousSeason            ');
                    }
              end
          else if  CB_PL_Factory.ItemIndex=1  then    //LYI
              begin 
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (');
                    sql.add('        select left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason');
                    sql.add('        From DDZL');
                    sql.add('        where len(DDZL.buyno)=10 and DDZL.KHPO not like''%CBY''  and  DDZL.KHBH=''036''');
                    sql.add('        group by DDZL.buyno');
                    sql.add('        )season on season.buyno2 = costing_LYItemporder.POCreateDate');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL on A.SKU=DDZL.SKU  and DDZL.PODateseason = A.CostingSeason');
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    sql.add('        where DDZL.KHBH=''036'' and len(DDZL.buyno)=10 and KHPO not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.POCreateDate');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL_PreviousSeason on A.SKU=DDZL_PreviousSeason.SKU  and DDZL_PreviousSeason.PODateseason = PreviousSeason.PreviousSeason');
                    {sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason,season.PreviousSeason  ');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (');
                    sql.add('        select left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason,right(PreviousSeason.BUYNO,3) as PreviousSeason');
                    sql.add('        From DDZL');
                    sql.add('        left join (select DDZL.buyno from DDZL where KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like''%CBY%%''   group by DDZL.buyno');
                    sql.add('            ) PreviousSeason on (case when CAST(SUBSTRING(DDZL.buyno,5,2)AS NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-91 end)=left(PreviousSeason.buyno,6)');
                    sql.add('                and  len(PreviousSeason.buyno)=10  ');
                    sql.add('        where len(DDZL.buyno)=10 and DDZL.KHBH not like''%CBY''  and  DDZL.KHBH=''036''');
                    sql.add('        group by DDZL.buyno,PreviousSeason.BUYNO');
                    sql.add('        ) season on season.buyno2 = costing_LYItemporder.POCreateDate');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason,PreviousSeason');
                    sql.add('    ) DDZL on A.SKU=DDZL.SKU  and DDZL.PODateseason = A.CostingSeason');
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    sql.add('        where len(DDZL.buyno)=10 and KHBH not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.POCreateDate');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL_PreviousSeason on A.SKU=DDZL_PreviousSeason.SKU  and DDZL_PreviousSeason.PODateseason = DDZL.PreviousSeason');  }
              end
           end
         else
          if CB_PL_Factory.ItemIndex=0  then      //LYN
              begin  
                    //上一季度未確認  但有訂單則補入目前季度訂單雙數
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3) as Season,sum(Pairs)  as Pairs');
                    sql.add('   from DDZL ');
                    sql.add('   where DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%'' and KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like ''%CBY%%''');
                    sql.add('   group by DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3)');
                    sql.add(')DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DDZL.Season= A.CostingSeason');

                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3) as Season,sum(Pairs)  as Pairs');
                    sql.add('    from DDZL ');
                    sql.add('    where DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%'' ');
                    sql.add('        and KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like ''%CBY%%'' ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3)');
                    sql.add('    )DDZL_PreviousSeason on  A.XieXing=DDZL_PreviousSeason.XieXing and A.SheHao=DDZL_PreviousSeason.SheHao and DDZL_PreviousSeason.season = PreviousSeason.PreviousSeason');

              end
          else if  CB_PL_Factory.ItemIndex=1  then    //LYI
              begin 
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason  ');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (select left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason');
                    sql.add('        from DDZL');
                    sql.add('        where len(DDZL.buyno)=10 and KHPO not like''%CBY''  and DDZL.KHBH=''036'' group by DDZL.buyno');
                    sql.add('        ) season on season.buyno2 = costing_LYItemporder.BuyNo');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL on A.SKU=DDZL.SKU  and DDZL.PODateseason = A.CostingSeason');
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    sql.add('    where  DDZL.KHBH=''036'' and len(DDZL.buyno)=10 and KHPO not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.BuyNo');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL_PreviousSeason on A.SKU=DDZL_PreviousSeason.SKU  and DDZL_PreviousSeason.PODateseason = PreviousSeason.PreviousSeason');
              end;

                sql.add('left join (select SKU,PricingSeason,Factory  From CostingPriceList group by SKU,PricingSeason,Factory');
                sql.add('     UNION all select SKU,CostingSeason as PricingSeason,Factory  From CostingPriceListnew group by SKU,Factory,CostingPriceListnew.CostingSeason');
                sql.add(')PreviousSeasonCFM on PreviousSeasonCFM.SKU=a.SKU and PreviousSeasonCFM.PricingSeason=PreviousSeason.PreviousSeason and PreviousSeasonCFM.factory=a.factory ');
                SQL.add('Order by A.CostingSeason  ');

          //showmessage(SQL.text);
          active:=true;
      end;
end;

procedure TCostingCBD.BBPMRDayClick(Sender: TObject);
begin
    if ED_PMR.text='' then
      begin
        showmessage('Please entry PMR No');
      end;
   with ExistCheck do
      begin
         active:=false;
         sql.Clear;
         sql.add('SELECT PMRNo,EffectBuyNo FROM PMRListSS ');
         sql.add('where PMRno like ''%'+ED_PMR.text+'%''');

         //sql.add('and SKU like '''+Edit8.text+'%''');
         //showmessage(SQL.text);
         active:=true;  
        if eof then
          begin
            showmessage('DEVELOP-NB4 not yet fill, please check with dev assis team or entry manual as 202504');
          end
        else
          begin
            ED_PMR.text:=ExistCheck.fieldbyname('PMRNo').AsString;
            ED_PMRBuy.Text:=ExistCheck.fieldbyname('EffectBuyNo').AsString;
          end;
      end;
    ExistCheck.active:=false;
end;

procedure TCostingCBD.BBTodayClick(Sender: TObject);
begin
        ED_PMRBuy.Text:=formatdatetime('yyyyMM',now());
end;

procedure TCostingCBD.Query_CLBHCalcFields(DataSet: TDataSet);
begin
        Query_CLBH.FieldByName('Material').Value := (Query_CLBH.FieldByName('Material_Text') as TBlobField).AsString;
end;


procedure TCostingCBD.BitBtn10Click(Sender: TObject);
begin
      Query_CLBH.edit;
      if XXZLS.active then
      begin
          Query_CLBH.fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').AsString;     
          Query_CLBH.fieldbyname('CSBH').value:=XXZLS.fieldbyname('CSBH').AsString;
          Query_CLBH.fieldbyname('ZSYWJC').value:=XXZLS.fieldbyname('ZSYWJC').AsString;
          Query_CLBH.fieldbyname('USERID').value:=main.Edit1.Text+'-Auto';
          Query_CLBH.fieldbyname('USERDATE').value:=Date();
      end;
end;

procedure TCostingCBD.BitBtn11Click(Sender: TObject);
begin         
      Query_CLBH.edit;
      if Queryclzl_flex.active then
          Query_CLBH.fieldbyname('CLBH').value:=Queryclzl_flex.fieldbyname('CLBH').AsString
end;

procedure TCostingCBD.BitBtn7Click(Sender: TObject);
var      Component:string;
         i:integer;
begin
  with Query_CLBH do
  begin
    first;
    cachedupdates:=true;
    requestlive:=true;
  end;
  while   not   Query_CLBH.Eof   do
      begin
          if  XXZLS.recordcount =1 then
            begin
              Query_CLBH.edit;
              Query_CLBH.fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').AsString;
              Query_CLBH.fieldbyname('CSBH').value:=XXZLS.fieldbyname('CSBH').AsString;
              Query_CLBH.fieldbyname('ZSYWJC').value:=XXZLS.fieldbyname('ZSYWJC').AsString;
              if Query_CLBH.fieldbyname('CSBH').AsString='JNG' then
                  Query_CLBH.fieldbyname('Replaced').value:='1'
              else
                  Query_CLBH.fieldbyname('Replaced').value:='0';
              Query_CLBH.fieldbyname('USERID').value:=main.Edit1.Text+'-Auto';
              Query_CLBH.fieldbyname('USERDATE').value:=Date();
              with ExistCheck do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('Select * From CSBH_FLEX where 1=1');
                  sql.add('  and CSBH='''+Query_CLBH.fieldbyname('CSBH').AsString+'''');
                  sql.add('  and SupplierCode='''+Query_CLBH.fieldbyname('SupplierCode').AsString+'''');
                  active:=true;
                end;
              if ExistCheck.Eof then
                    UpdateSQL5.Apply(ukinsert);

              UpdateSQL5.apply(ukmodify);
            end
          else
            begin                                                      //AnsiCompareText
              for i:=1 to XXZLS.RecordCount do
                  if (Query_CLBH.fieldbyname('Component').AsString=XXZLS.fieldbyname('ywsm').AsString) or (XXZLS.fieldbyname('YN').AsString='1') then
                  //if (AnsiCompareText(Query_CLBH.fieldbyname('Component').AsString,copy(XXZLS.fieldbyname('ywsm').AsString,1,Length(Query_CLBH.fieldbyname('Component').AsString)))=0) then
                  begin
                    Query_CLBH.edit;
                    Query_CLBH.fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').AsString;
                    UpdateSQL5.apply(ukmodify);
                    break;
                  end;
            end;
          Query_CLBH.Next;
      end;
     with ExistCheck do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('select CSBH_FLEX.*,ZSZL.ZSYWJC from CSBH_FLEX');
                  sql.add('left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH');
                  sql.add('where 1=1');
                  sql.add('and CSBH_FLEX.SupplierCode in (SELECT CSBH_FLEX.SupplierCode FROM CSBH_FLEX');
                  sql.add('  GROUP BY CSBH_FLEX.SupplierCode HAVING COUNT(*) > 1)');
                  active:=true;
                  if not Eof then
                    begin
                      SupplierFLEXnERP:=TSupplierFLEXnERP.Create(self);    
                      SupplierFLEXnERP.BC1.Click;
                      SupplierFLEXnERP.ShowModal();
                    end;
                end;
  ExistCheck.Active:=false;
  //BitBtn6.Click;
end;

procedure TCostingCBD.BitBtn4Click(Sender: TObject);
begin
  BitBtn4.Enabled:=false;
  BitBtn7.Enabled:=false;
  Query_CLBH.active:=false;
end;

procedure TCostingCBD.BitBtn14Click(Sender: TObject);
var    EditText:string;
begin
    EditText:=Edit21.text;
      EditText:=StringReplace(EditText,'''''','"', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'''','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'?','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'，','', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'"','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'”','""', [rfReplaceAll]);
      EditText:=StringReplace(EditText,'""','"', [rfReplaceAll]);
      //EditText:=StringReplace(EditText,'''''','''', [rfReplaceAll]);
      EditText:=TrimLeft(EditText);
      EditText:=TrimRight(EditText);
      Edit22.text:=EditText;
    with TIMEQRY do
      begin
         active:=false;
         sql.Clear;      
         sql.add('select '''+EditText+''' as AA');
         //showmessage(sql.text);
         Edit20.text:=sql.text;
         active:=true;
      end;
      Edit19.text:=TIMEQRY.fieldbyname('AA').asstring;
      //showmessage(TIMEQRY.fieldbyname('AA').asstring);
      TIMEQRY.active:=false;
end;

procedure TCostingCBD.BBadmin_runallClick(Sender: TObject);   
var  i:integer;
begin
    if UploadlQuery.Active= false then
        exit;
    UploadlQuery.First;
    for i:=1 to UploadlQuery.RecordCount do
    begin
        Label48.Caption:='item:'+inttostr(i);
        BB2.Click;
        UploadlQuery.Next;
        //UploadDetailQuery.Active:=false;
        //UploadDetailQuery.Active:=true;
    end;
end;

procedure TCostingCBD.DBGridEh6DblClick(Sender: TObject);
begin
  if (DBGridEh6.SelectedField.FieldName = 'Process_No') or (DBGridEh6.SelectedField.FieldName = 'FlexMaterialCode') then
  begin
    if (not UploadDetailQuery.FieldByName('MTL_No').isnull) then
        ED8.Text:=UploadDetailQuery.FieldByName('MTL_No').value;
    ED3.Text:=UploadDetailQuery.FieldByName('FlexMaterialCode').value;
    ComboBox3.ItemIndex:=ComboBox1.ItemIndex;
    PageControl1.ActivePageIndex:=1;
  end;
  if (DBGridEh6.SelectedField.FieldName = 'Process_No')  then
  begin
    if (not UploadDetailQuery.FieldByName('Process_No').isnull) then
        EDC4.Text:=UploadDetailQuery.FieldByName('Process_No').value;
    if (not UploadDetailQuery.FieldByName('Tooling').isnull) then
        EDC6.Text:=UploadDetailQuery.FieldByName('Tooling').value;
    EDC3.Text:=UploadDetailQuery.FieldByName('Component').value;
    ComboBox2.ItemIndex:=ComboBox1.ItemIndex;
    PageControl1.ActivePageIndex:=2;
    BC1.Click;
    QueryProcess.FieldByName('SKU').Value:=UploadlQuery.FieldByName('SKU').Value;
    QueryProcess.FieldByName('Round').Value:=UploadlQuery.FieldByName('Round').Value;
    QueryProcess.FieldByName('CostingSeason').Value:=UploadlQuery.FieldByName('CostingSeason').Value;
    QueryProcess.FieldByName('No').Value:=UploadDetailQuery.FieldByName('No').Value;
    ComboBox2.ItemIndex:=ComboBox1.ItemIndex;
    //BC2.Click;
  end;
end;

procedure TCostingCBD.DataSource4DataChange(Sender: TObject;
  Field: TField);
begin
      //if DBGridEh3.Field.FieldName= 'SecondLF' then
      if (QueryProcess.fieldbyname('SecondLF').AsString<>'') and (QueryProcess.fieldbyname('SecondLabor_auto').AsString<>'')
        and (QueryProcess.fieldbyname('SecondOF').AsString='')then
      begin
        QueryProcess.Edit;
        if (pos('*0.49',QueryProcess.fieldbyname('SecondLF').AsString)>0)  then
              QueryProcess.fieldbyname('SecondOF').value:=StringReplace(QueryProcess.fieldbyname('SecondLF').AsString,'*0.49','*0.51', [rfReplaceAll])
        else if(pos('0.2*USAGE',QueryProcess.fieldbyname('SecondLF').AsString)>0)  then
              QueryProcess.fieldbyname('SecondOF').value:='0.1*USAGE' 
        else if(pos('0.171',QueryProcess.fieldbyname('SecondLF').AsString)>0)  then
              QueryProcess.fieldbyname('SecondOF').value:='0.179';
      end;
end;



procedure TCostingCBD.CheckBox13Click(Sender: TObject);
begin
   with UploadDetailQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Component, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, ');
         sql.add('       CostingMatLibrary.FlexMaterialCode, ');
         sql.add('       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('       CostingPriceLibrary.PriceOVR,');
         sql.add('       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.SizeGrading, ');
         sql.add('       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,');
         sql.add('       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,');
         sql.add('       CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,     ');
         sql.add('       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling, CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPriceLibrary.ColorGroup, ');
         sql.add('       CostingPriceLibrary.ColorComments, CostingMatLibrary.DeliveryTerm, CostingPriceLibrary.MaterialCost,');
         sql.add('       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, CostingXXZLS.UserUpdateTime,');
         sql.add('       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('       CostingXXZLS.SecondLabor,CostingXXZLS.SecondOverhead,');
         sql.add('       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,CostingPriceLibrary.MaterialSeason,');
         sql.add('       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,CostingXXZLS.Factory,');
         sql.add('       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_Neon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,CostingProcessCost.SecondOF,');
         sql.add('       CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,CostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate,CostingProcessCost.TurnOverRate');
         sql.add('From CostingXXZLS  ');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('where CostingXXZLS.Round=:Round');
         sql.add('  and CostingXXZLS.SKU=:SKU');
         sql.add('  and CostingXXZLS.CostingSeason=:CostingSeason');
         sql.add('  and CostingXXZLS.Factory=:Factory');
         if CheckBox13.Checked then
            sql.add('  and  CostingXXZLS.Process_No is not null');
         sql.add('order by CostingXXZLS.No');

         //showmessage(SQL.text);
         active:=true;
      end;
      //UploadDetailQuery.First;
      UploadDetailQuery.cachedupdates:=true;
      UploadDetailQuery.requestlive:=true;
      UploadDetailQuery.Edit;
      UploadDetailQuery.last;
      UploadDetailQuery.First;
end;

procedure TCostingCBD.BitBtn9Click(Sender: TObject);
begin
with Query_PriceList do
  begin
    active:=false;
  end;
end;
 

procedure TCostingCBD.BA8Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=1 then
      ExportExcel(QueryMTL)
  else if PageControl1.ActivePageIndex=2 then
      ExportExcel(QueryProcess)
  else
      ExportExcel(Query_PriceList)
end;

procedure TCostingCBD.BA1Click(Sender: TObject);
begin
   with QueryMTL do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CONVERT(Bit,IsNull(CostingPriceLibrary.YN,0)) as Flag,CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Component,CostingPriceLibrary.MaterialSeason,CostingPriceLibrary.PriceStatus,');
         sql.add('   CostingMatLibrary.FlexMaterialCode,CML_Material.Material,CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,CostingMatLibrary.SupplierCode,');
         sql.add('   CostingMatLibrary.DeliveryTerm,CostingMatLibrary.T1Freight,');
         sql.add('   CostingPriceLibrary.TnRP, CostingMatLibrary.Tooling,CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('   CostingPriceLibrary.Color,CostingPriceLibrary.ColorComments,CostingPriceLibrary.ColorGroup,');
         sql.add('   CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCost,');
         sql.add('   CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('   CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,CostingXXZLS.Remark,');
         sql.add('   CostingXXZLS.Process_No,CostingMatLibrary.Material_Text,CostingPriceListNew.UserName,CostingPriceLibrary.UserUpdateTime');
         sql.add('From CostingXXZLS');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No  ');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No and CostingPriceLibrary.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('left join (select MTL_No,CAST(Material_Text AS VARCHAR(255)) AS Material from CostingMatLibrary) CML_Material on CML_Material.MTL_No=CostingMatLibrary.MTL_No');
         sql.add('where 1=1');
         if (CheckBox11.Checked) then
            sql.add('and (CAST(CostingPriceLibrary.MaterialCost as float)>0 or CAST (CostingPriceLibrary.PriceOVR as float)>0)');
         if ED3.text<>'' then
            sql.add('and CostingMatLibrary.FlexMaterialCode like '''+ED3.text+'%''');
         if ED1.text<>'' then
            sql.add('and CostingPriceLibrary.Color like '''+ED1.text+'%''');
         if ED2.text<>'' then
            sql.add('and CostingPriceLibrary.CostingSeason like '''+ED2.text+'%''');
         if ED4.text<>'' then
            sql.add('and CostingMatLibrary.Supplier like ''%'+ED4.text+'%''');
         if ED5.text<>'' then
            sql.add('and CostingPriceLibrary.ColorComments like ''%'+ED5.text+'%''');
         if ED6.text<>'' then
            sql.add('and CostingPriceLibrary.ColorGroup like ''%'+ED6.text+'%''');
         if ED7.text<>'' then
            sql.add('and CostingMatLibrary.Material_text like ''%'+ED7.text+'%''');
         if ED8.text<>'' then
            sql.add('and CostingXXZLS.MTL_No like '''+ED8.text+'''');
         if ED9.text<>'' then
            sql.add('and CostingXXZLS.Color_No like '''+ED9.text+'''');
         if Edit23.text<>'' then
            sql.add('and CostingXXZLS.Round like '''+Edit23.text+'%''');
         if ED10.text<>'' then
            sql.add('and CostingXXZLS.Component like '''+ED10.text+'%''');
         if ED9.text<>'' then
            sql.add('and CostingPriceLibrary.PriceStatus like '''+ED9.text+'''');
         if ComboBox3.ItemIndex=0 then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if ComboBox3.ItemIndex=1 then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');    
         if (CheckBox15.Checked) then
            sql.add('and CAST(CostingPriceLibrary.PriceOVR AS FLOAT)>0');
         if (CheckBox2.Checked) then
            begin
            sql.add('and CostingPriceLibrary.YN=0');
            sql.add('and CostingPriceLibrary.MTL_No in ');
            sql.add('(select CostingPriceLibrary.MTL_No from CostingPriceLibrary');
            sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingPriceLibrary.MTL_No');
            sql.add('where CostingPriceLibrary.Color_No in (select color_no from CostingXXZLS)--被使用中');
            sql.add('group by CostingPriceLibrary.MTL_No,CostingPriceLibrary.color,CostingPriceLibrary.colorgroup,');
            if (CB2.Checked) then
                    sql.add(' CostingMatLibrary.Supplier,');
            if (CB3.Checked) then
                    sql.add(' CostingMatLibrary.MaterialComments,');
            if (CB4.Checked) then
                    sql.add(' CostingMatLibrary.Tooling,');
            if (CB5.Checked) then
                    sql.add(' CostingPriceLibrary.TnRP,');
            if (CB6.Checked) then
                    sql.add(' CostingPriceLibrary.Color,');
            if (CB7.Checked) then
                    sql.add(' CostingPriceLibrary.ColorComments,');
            if (CB8.Checked) then
                    sql.add(' CostingPriceLibrary.ColorGroup,');   
            sql.text:=copy(sql.text,1,length(sql.text)-3);
            sql.add('having count(*)>1	)');
            end;
         if (CheckBox5.Checked) then
            begin                           
            sql.add('and CostingPriceLibrary.YN=0');
            sql.add('and CostingMatLibrary.FlexMaterialCode in ');
            sql.add('(select CostingMatLibrary.FlexMaterialCode from CostingPriceLibrary');
            sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingPriceLibrary.MTL_No');
            sql.add('left join (select MTL_No,CAST(Material_Text AS VARCHAR(255)) AS Material from CostingMatLibrary) CML_Material on CML_Material.MTL_No=CostingMatLibrary.MTL_No');
            sql.add('where CostingPriceLibrary.Color_No in (select color_no from CostingXXZLS)--被使用中');
            sql.add('group by CostingMatLibrary.FlexMaterialCode,');
            if (CB2.Checked) then
                    sql.add(' CostingMatLibrary.Supplier,');
            if (CB3.Checked) then
                    sql.add(' CostingMatLibrary.MaterialComments,');
            if (CB4.Checked) then
                    sql.add(' CostingMatLibrary.Tooling,');
            if (CB5.Checked) then
                    sql.add(' CostingPriceLibrary.TnRP,');
            if (CB6.Checked) then
                    sql.add(' CostingPriceLibrary.Color,');
            if (CB7.Checked) then
                    sql.add(' CostingPriceLibrary.ColorComments,');
            if (CB8.Checked) then
                    sql.add(' CostingPriceLibrary.ColorGroup,');
            sql.text:=copy(sql.text,1,length(sql.text)-3);
            sql.add('having count(*)>1	)');
            end;
         showmessage(SQL.text);
         active:=true;
      end;
      QueryMTL.last;
      QueryMTL.First;
      //差異反紅功能
      if (ED8.text<>'') or (ED9.text<>'')  then
        if(QueryMTL.RecordCount>0) then
        begin
        Material:=QueryMTL.FieldByName('Material').value;
        FlexMaterialCode:=QueryMTL.FieldByName('FlexMaterialCode').value;
        color:=QueryMTL.FieldByName('color').value;
        PriceOVR:=QueryMTL.FieldByName('PriceOVR').value;
        MaterialCost:=QueryMTL.FieldByName('MaterialCost').value;
        BaseMaterialPrice:=QueryMTL.FieldByName('BaseMaterialPrice').value;
        SupplierFreightValue:=QueryMTL.FieldByName('SupplierFreightValue').value;
        TRPnGRPUpcharge:=QueryMTL.FieldByName('TRPnGRPUpcharge').value;
        T1Freight:=QueryMTL.FieldByName('T1Freight').value;
        colorcomments:=QueryMTL.FieldByName('ColorComments').value;
        end;
      QueryMTL.cachedupdates:=true;
      QueryMTL.requestlive:=true;
      QueryMTL.Edit;
      BA6.Enabled:=true;
      BA7.Enabled:=true;
end;

procedure TCostingCBD.BC1Click(Sender: TObject);
begin
   BC2.Enabled:=true;
   with QueryProcess do
      begin
         active:=false;
         sql.Clear;

         sql.add('select CostingMatLibrary.Material_Text,CostingProcessCost.*,CostingXXZLS.GrossUsage,');
         sql.add('    CostingXXZLS.UnitCost,CostingXXZLS.SecondLabor,CostingXXZLS.SecondOverhead');
         sql.add('    ,CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.SizeGrading,CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCost,CostingMatLibrary.T1Freight');
         sql.add('From CostingProcessCost');
         sql.add('left join CostingXXZLS on CostingXXZLS.SKU=CostingProcessCost.SKU and CostingXXZLS.Round=CostingProcessCost.Round ');
         sql.add('    and CostingXXZLS.CostingSeason=CostingProcessCost.CostingSeason and CostingXXZLS.No=CostingProcessCost.No');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.SKU=CostingProcessCost.SKU and CostingPriceListNew.Round=CostingProcessCost.Round ');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No');
         sql.add('    and CostingPriceListNew.CostingSeason=CostingProcessCost.CostingSeason ');
         sql.add('Where 1=1');
         if (CheckBox4.Checked=true) then
              sql.add('and  CostingProcessCost.Process_No not in(select Process_No from CostingXXZLS where Process_No is not null)');
         if (CheckBox7.Checked=true) then
              sql.add('and CostingProcessCost.Process_No in(select Process_No from CostingXXZLS where Process_No is not null)');
         if EDC1.text<>'' then
            sql.add('and CostingPriceListNew.SR like '''+EDC1.text+'%''');
         if EDC2.text<>'' then
            sql.add('and CostingProcessCost.SKU like '''+EDC2.text+'%''');
         if EDC3.text<>'' then
            sql.add('and CostingXXZLS.Component like '''+EDC3.text+'%''');
         if EDC4.text<>'' then
            sql.add('and CostingProcessCost.Process_No = '''+EDC4.text+'''');
         if EDC5.text<>'' then
            sql.add('and CostingProcessCost.CostingSeason like ''%'+EDC5.text+'%''');
         if EDC6.text<>'' then
            sql.add('and CostingProcessCost.Tooling like ''%'+EDC6.text+'%''');
         //showmessage(SQL.text);
         active:=true;
      end;
      QueryProcess.last;
      QueryProcess.First;
      QueryProcess.cachedupdates:=true;
      QueryProcess.requestlive:=true;
      QueryProcess.Edit;
end;
        
procedure TCostingCBD.BitBtn8Click(Sender: TObject);
begin
   BB2.Enabled:=true;
   BB3.Enabled:=true;
   CheckBox1.checked:=false;

   if (Length(Edit9.text)<>3) and (Length(Edit9.text)<>0) then
      begin
        showmessage('Season need to be like "25F"');
        exit;
      end;

   with UploadlQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From CostingPriceListNew');
         sql.add('Where 1=1');
         if Edit10.text<>'' then
            sql.add('and CostingPriceListNew.Round like '''+Edit10.text+'%''');
         if Edit11.text<>'' then
            sql.add('and CostingPriceListNew.SR like '''+Edit11.text+'%''');
         if Edit8.text<>'' then
            sql.add('and CostingPriceListNew.SKU like '''+Edit8.text+'%''');
         sql.add('and CostingSeason like '''+Edit9.text+'%''');
         if ComboBox1.ItemIndex=0 then
            sql.add('and CostingPriceListNew.Factory = ''LYN-9Z''')
         else if ComboBox1.ItemIndex=1 then
            sql.add('and CostingPriceListNew.Factory = ''LYI-6L''');
         if ED_PMRBuy.text<>'' then
            sql.add('and CostingPriceListNew.Round like ''%'+ED_PMR.text+'%''');
         if Checkbox9.Checked=true then
            sql.add('and CostingPriceListNew.UserName = '''+main.Edit1.Text+'''');
         if CheckBox13.Checked then
            sql.add('  and SKU in (select CostingProcessCost.SKU from CostingXXZLS left join CostingProcessCost on  CostingProcessCost.Process_No=CostingXXZLS.Process_No where CostingProcessCost.SecondLF='''' and CostingProcessCost.round like ''FNL%'')');

         //showmessage(SQL.text);
         active:=true;
      end;
      UploadlQuery.last;
      UploadlQuery.First;
      UploadlQuery.cachedupdates:=true;
      UploadlQuery.requestlive:=true;
      UploadlQuery.Edit;
   with UploadDetailQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Component, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, ');
         sql.add('       CostingMatLibrary.FlexMaterialCode, ');
         sql.add('       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,');
         sql.add('       CostingPriceLibrary.PriceOVR,');
         sql.add('       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.SizeGrading, ');
         sql.add('       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,');
         sql.add('       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,');
         sql.add('       CostingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,     ');
         sql.add('       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling, CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPriceLibrary.ColorGroup, ');
         sql.add('       CostingPriceLibrary.ColorComments, CostingMatLibrary.DeliveryTerm, CostingPriceLibrary.MaterialCost,');
         sql.add('       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, CostingXXZLS.UserUpdateTime,');
         sql.add('       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,');
         sql.add('       CostingXXZLS.SecondLabor,CostingXXZLS.SecondOverhead,');
         sql.add('       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,CostingPriceLibrary.MaterialSeason,');
         sql.add('       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Process_No,CostingXXZLS.Factory,');
         sql.add('       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_Neon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,CostingProcessCost.SecondOF,');
         sql.add('       CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,CostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate,CostingProcessCost.TurnOverRate');
         sql.add('From CostingXXZLS  ');
         sql.add('left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No');
         sql.add('left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No ');
         sql.add('left join CostingProcessCost on CostingProcessCost.Process_No=CostingXXZLS.Process_No and CostingProcessCost.Factory=CostingXXZLS.Factory');
         sql.add('left join CostingPriceListNew on CostingPriceListNew.Round=CostingXXZLS.Round ');
         sql.add('       and CostingPriceListNew.SKU=CostingXXZLS.SKU ');
         sql.add('       and CostingPriceListNew.CostingSeason=CostingXXZLS.CostingSeason ');
         sql.add('where CostingXXZLS.Round=:Round');
         sql.add('  and CostingXXZLS.SKU=:SKU');
         sql.add('  and CostingXXZLS.CostingSeason=:CostingSeason');
         sql.add('  and CostingXXZLS.Factory=:Factory');
         if CheckBox13.Checked then
            sql.add('  and  CostingXXZLS.Process_No is not null');
         sql.add('order by CostingXXZLS.No');

         //showmessage(SQL.text);
         active:=true;
      end;
      //UploadDetailQuery.First;
      UploadDetailQuery.cachedupdates:=true;
      UploadDetailQuery.requestlive:=true;
      UploadDetailQuery.Edit;
      UploadDetailQuery.last;
      UploadDetailQuery.First;
end;
    
procedure TCostingCBD.LO_BB_CANCELClick(Sender: TObject);
begin
  QueryProcess.active:=false;
  BC2.Enabled:=false;
end;
       

procedure TCostingCBD.BA6Click(Sender: TObject);
begin
    QueryMTL.active:=false;
end;

procedure TCostingCBD.BB3Click(Sender: TObject);
begin
  UploadlQuery.active:=false;
  UploadDetailQuery.active:=false;
end;


procedure TCostingCBD.BitBtn12Click(Sender: TObject);
begin
    if DBGridEh1.Height=100 then
      DBGridEh1.Height :=600
    else  
      DBGridEh1.Height :=100;    
end;

end.
