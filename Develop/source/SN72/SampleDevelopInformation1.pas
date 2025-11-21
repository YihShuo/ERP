//20210412  在panel2加上FDTEAM(隱藏)，對應fdgroups表格的fdname，用來區分廠別的單位，因為同一個廠可能有兩個開發員是相同的英文名
//          而在kfxxzl只有寫入FD的資料，並沒有USERID，目前預設值是DEVELOP，如果以後其他廠區有需要，在開放出來給其他廠區使用。  Kevin
unit SampleDevelopInformation1;

interface                       

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons,
  ComCtrls, DBCtrls, Mask, Menus, ExtDlgs,comobj,jpeg;


type
    TSampleDevelopInformation = class(TForm)
    qrykfxxzl: TQuery;
    showkfxxzl: TDataSource;
    Upxxzlkf: TUpdateSQL;
    tempQ: TQuery;
    updateshoe: TUpdateSQL;
    startbasic: TQuery;
    mainbar: TPageControl;
    Basic_Model_information: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    cbb1: TComboBox;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB2: TBitBtn;
    CFM_Statues: TTabSheet;
    gettime: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBGridEh1: TDBGridEh;
    QryCFM: TQuery;
    CFMreceive: TDataSource;
    cbx1: TComboBox;
    startcfm: TQuery;
    Label6: TLabel;
    BB7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    UDCFM: TUpdateSQL;
    Label7: TLabel;
    cfmarticle: TEdit;
    Panel6: TPanel;
    Label34: TLabel;
    DBEdit19: TDBEdit;
    Label35: TLabel;
    DBEdit20: TDBEdit;
    Label37: TLabel;
    DBEdit22: TDBEdit;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel7: TPanel;
    Label14: TLabel;
    Label17: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel9: TPanel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Panel3: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit25: TDBEdit;
    Panel4: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit8: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Panel10: TPanel;
    DBGridEh3: TDBGridEh;
    Panel5: TPanel;
    Label5: TLabel;
    Label33: TLabel;
    Label44: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit28: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    BB1: TBitBtn;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    SR: TEdit;
    ShoeImage: TImage;
    Sample_Image: TTabSheet;
    Panel11: TPanel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    ComboBox2: TComboBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    IMAGE: TDataSource;
    QryIMAGE: TQuery;
    DBGridEh2: TDBGridEh;
    QryIMAGEArticle: TStringField;
    QryIMAGEDEVCODE: TStringField;
    QryIMAGEFD: TStringField;
    QryIMAGEIMAGER1: TStringField;
    Shape1: TShape;
    sampleimg: TImage;
    UPBTN: TButton;
    SAVEBTN: TButton;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    SaveDialog: TSaveDialog;
    shoePicpopo: TPopupMenu;
    Saveas1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    CancelBtn: TButton;
    SaveSample: TSaveDialog;
    saveImage: TQuery;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    excel1: TButton;
    qrykfxxzlxiexing: TStringField;
    qrykfxxzlSheHao: TStringField;
    qrykfxxzluserid: TStringField;
    c: TDateTimeField;
    qrykfxxzldropped: TBooleanField;
    qrykfxxzltransfer: TBooleanField;
    qrykfxxzlkfcq: TStringField;
    qrykfxxzljijie: TStringField;
    qrykfxxzlXieMing: TStringField;
    qrykfxxzlYSSM: TStringField;
    qrykfxxzlkflx: TStringField;
    qrykfxxzlGENDER: TStringField;
    qrykfxxzlXTMH: TStringField;
    qrykfxxzlDDMH: TStringField;
    qrykfxxzlfd: TStringField;
    qrykfxxzlLOGO: TStringField;
    qrykfxxzlcut: TStringField;
    Label74: TLabel;
    Label75: TLabel;
    DBEdit58: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    DBEdit65: TDBEdit;
    Label82: TLabel;
    qrykfxxzlPFS: TStringField;
    qrykfxxzlSS: TStringField;
    qrykfxxzlSCC: TStringField;
    qrykfxxzlPCS: TStringField;
    qrykfxxzlNCD: TStringField;
    qrykfxxzlCDC: TStringField;
    qrykfxxzlCTS: TStringField;
    qrykfxxzlNA: TStringField;
    qrykfxxzlRemarks: TStringField;
    EXCEL2: TButton;
    DBEdit64: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    team: TComboBox;
    Label89: TLabel;
    Label90: TLabel;
    TabSheet1: TTabSheet;
    Panel14: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel15: TPanel;
    r2bbt1: TBitBtn;
    r2bbt2: TBitBtn;
    r2bbt3: TBitBtn;
    r2bbt4: TBitBtn;
    r2bbt5: TBitBtn;
    Panel16: TPanel;
    r3bbt1: TBitBtn;
    r3bbt2: TBitBtn;
    r3bbt3: TBitBtn;
    r3bbt4: TBitBtn;
    r3bbt5: TBitBtn;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    DBEdit49: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    Label121: TLabel;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    Label122: TLabel;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    yj: TDBGridEh;
    Label123: TLabel;
    DBEdit94: TDBEdit;
    Label124: TLabel;
    DBEdit95: TDBEdit;
    Label125: TLabel;
    DBEdit96: TDBEdit;
    Label126: TLabel;
    DBEdit97: TDBEdit;
    Label127: TLabel;
    Label128: TLabel;
    DBEdit99: TDBEdit;
    Label129: TLabel;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    Label130: TLabel;
    Label131: TLabel;
    DBEdit102: TDBEdit;
    Label133: TLabel;
    Label134: TLabel;
    DBEdit104: TDBEdit;
    Label135: TLabel;
    Label136: TLabel;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    Label152: TLabel;
    DBEdit120: TDBEdit;
    Label153: TLabel;
    DBEdit121: TDBEdit;
    Label154: TLabel;
    DBEdit122: TDBEdit;
    Label155: TLabel;
    DBEdit123: TDBEdit;
    Label156: TLabel;
    DBEdit124: TDBEdit;
    Label157: TLabel;
    DBEdit125: TDBEdit;
    Label158: TLabel;
    DBEdit126: TDBEdit;
    Label159: TLabel;
    Label160: TLabel;
    DBEdit128: TDBEdit;
    Label161: TLabel;
    DBEdit129: TDBEdit;
    DBEdit130: TDBEdit;
    Label162: TLabel;
    Label163: TLabel;
    DBEdit131: TDBEdit;
    Label165: TLabel;
    Label166: TLabel;
    DBEdit133: TDBEdit;
    Label167: TLabel;
    Label168: TLabel;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    DBEdit140: TDBEdit;
    DBEdit141: TDBEdit;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    DBEdit148: TDBEdit;
    Label184: TLabel;
    DBEdit149: TDBEdit;
    Label185: TLabel;
    DBEdit150: TDBEdit;
    Label186: TLabel;
    DBEdit151: TDBEdit;
    qryR1: TQuery;
    R1recieve: TDataSource;
    R1Article: TEdit;
    Label187: TLabel;
    R1Season: TComboBox;
    Label189: TLabel;
    R1FD: TComboBox;
    Label190: TLabel;
    saver1: TUpdateSQL;
    qryR2: TQuery;
    qryR3: TQuery;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    R2recieve: TDataSource;
    R3recieve: TDataSource;
    saver2: TUpdateSQL;
    saver3: TUpdateSQL;
    Label188: TLabel;
    r2season: TComboBox;
    r2article: TEdit;
    Label191: TLabel;
    Label192: TLabel;
    r2fd: TComboBox;
    qryR2FD: TStringField;
    qryR2YSSM: TStringField;
    qryR2kflx: TStringField;
    qryR2XTMH: TStringField;
    qryR2DDMH: TStringField;
    qryR2XieMing: TStringField;
    qryR2CTS: TStringField;
    qryR2NA: TStringField;
    qryR2GENDER: TStringField;
    qryR2XieXing: TStringField;
    qryR2SheHao: TStringField;
    qryR2USERID: TStringField;
    qryR2userdate: TDateTimeField;
    qryR2TPDATE: TStringField;
    qryR2status: TStringField;
    qryR2CTSI: TStringField;
    qryR2SETC: TStringField;
    qryR2total: TStringField;
    qryR2OQ: TStringField;
    qryR2testing: TStringField;
    qryR2MFRD: TStringField;
    qryR2DPS_NTSR: TStringField;
    qryR2PI: TStringField;
    qryR2PS: TStringField;
    qryR2remarks: TStringField;
    Label193: TLabel;
    R3SEASON: TComboBox;
    Label194: TLabel;
    R3ARTICLE: TEdit;
    Label195: TLabel;
    R3FD: TComboBox;
    BasicExcel: TQuery;
    excelout: TLabel;
    Exceloutlb: TLabel;
    Label18: TLabel;
    QryCFMFD: TStringField;
    QryCFMyssm: TStringField;
    QryCFMkflx: TStringField;
    QryCFMXTMH: TStringField;
    QryCFMDDMH: TStringField;
    QryCFMgender: TStringField;
    QryCFMNA: TStringField;
    QryCFMCTS: TStringField;
    QryCFMXieXing: TStringField;
    QryCFMSheHao: TStringField;
    QryCFMUSERID: TStringField;
    QryCFMuserdate: TDateTimeField;
    QryCFMPCDate: TStringField;
    QryCFMRLDate: TStringField;
    QryCFMOverride: TStringField;
    QryCFMIDD: TStringField;
    QryCFMIBM: TStringField;
    QryCFMCFMSFD: TStringField;
    QryCFMA4TW: TStringField;
    QryCFMA4CHINA: TStringField;
    QryCFMA4LYNDC: TStringField;
    QryCFMCSTW: TStringField;
    QryCFMCSLYNDC: TStringField;
    QryCFMBOOKTW: TStringField;
    QryCFMBOOKCHINA: TStringField;
    QryCFMBOOKLYNDC: TStringField;
    QryCFMCcolorFD: TStringField;
    QryCFMCspecSD: TStringField;
    QryCFMCcolorSD: TStringField;
    QryCFMCshoeSD: TStringField;
    QryCFMPCstatus: TStringField;
    QryCFMSS: TStringField;
    R1Excel: TButton;
    R2Excel: TButton;
    R3Excel: TButton;
    ExcelR1: TQuery;
    ExcelR2: TQuery;
    ExcelR3: TQuery;
    Label88: TLabel;
    TeamR1: TComboBox;
    TeamR2: TComboBox;
    Label196: TLabel;
    TeamR3: TComboBox;
    Label197: TLabel;
    Label198: TLabel;
    TeamCFM: TComboBox;
    ExcelCFM: TQuery;
    Label199: TLabel;
    Label200: TLabel;
    DBEdit152: TDBEdit;
    data: TComboBox;
    Label45: TLabel;
    DBCheckBox3: TDBCheckBox;
    qrykfxxzlyn: TBooleanField;
    qrykfxxzlMMD: TStringField;
    qrykfxxzlTEST: TStringField;
    qrykfxxzlDEVCODE: TStringField;
    qrykfxxzlArticle: TStringField;
    devtype: TComboBox;
    Label46: TLabel;
    Label201: TLabel;
    cfmtype: TComboBox;
    Label202: TLabel;
    r1type: TComboBox;
    r2type: TComboBox;
    Label203: TLabel;
    r3type: TComboBox;
    Label204: TLabel;
    QryCFMdevcode: TStringField;
    qryR2article: TStringField;
    qryR2devcode: TStringField;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    r1subtype: TComboBox;
    r2subtype: TComboBox;
    r3subtype: TComboBox;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    cfmsubtype: TComboBox;
    Label214: TLabel;
    Label216: TLabel;
    subtype: TComboBox;
    SRDet_MLR2: TQuery;
    R2ETA: TDataSource;
    checkR2: TCheckBox;
    memor2: TMemo;
    SRDet_FMLR2: TQuery;
    SRDet_MLR3: TQuery;
    SRDet_FMLR3: TQuery;
    R3ETA: TDataSource;
    checkR3: TCheckBox;
    memor3: TMemo;
    checkR1: TCheckBox;
    R1ETA: TDataSource;
    SRDet_MLR1: TQuery;
    SRDet_FMLR1: TQuery;
    memor1: TMemo;
    UpdateSQL1: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    UpdateSQL3: TUpdateSQL;
    UpdateSQL4: TUpdateSQL;
    qryR3FD: TStringField;
    qryR3article: TStringField;
    qryR3devcode: TStringField;
    qryR3YSSM: TStringField;
    qryR3kflx: TStringField;
    qryR3XTMH: TStringField;
    qryR3DDMH: TStringField;
    qryR3XieMing: TStringField;
    qryR3CTS: TStringField;
    qryR3NA: TStringField;
    qryR3GENDER: TStringField;
    qryR3XieXing: TStringField;
    qryR3SheHao: TStringField;
    qryR3USERID: TStringField;
    qryR3userdate: TDateTimeField;
    qryR3TPDATE: TStringField;
    qryR3status: TStringField;
    qryR3RSD: TStringField;
    qryR3CTSI: TStringField;
    qryR3SETC: TStringField;
    qryR3total: TStringField;
    qryR3OQ: TStringField;
    qryR3testing: TStringField;
    qryR3MFRD: TStringField;
    qryR3DPS_NTSR: TStringField;
    qryR3PI: TStringField;
    qryR3RRSRD: TStringField;
    qryR3PS: TStringField;
    qryR3remarks: TStringField;
    qryR2RSD: TStringField;
    qryR2RRSRD: TStringField;
    UpdateSQL5: TUpdateSQL;
    UpdateSQL6: TUpdateSQL;
    Label219: TLabel;
    Label220: TLabel;
    ShowSizer2: TCheckBox;
    ShowSizer3: TCheckBox;
    ShowSizer1: TCheckBox;
    TabSheet4: TTabSheet;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    Memo1: TMemo;
    DBComboBox32: TDBComboBox;
    DBComboBox75: TDBComboBox;
    DBComboBox103: TDBComboBox;
    DBComboBox132: TDBComboBox;
    DBComboBox153: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBComboBox154: TDBComboBox;
    DBComboBox155: TDBComboBox;
    DBComboBox156: TDBComboBox;
    DBComboBox157: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit32: TDBEdit;
    QryIMAGExiexing: TStringField;
    QryIMAGEshehao: TStringField;
    Edit3: TEdit;
    Label221: TLabel;
    TabSheet6: TTabSheet;
    Panel8: TPanel;
    Panel23: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    DBGridEh6: TDBGridEh;
    DSCheck: TDataSource;
    Qry_CheckML: TQuery;
    CHECKQRY: TButton;
    Qry_CheckMLNG_ETD: TStringField;
    Qry_CheckMLcgno: TStringField;
    Qry_CheckMLcgdate: TStringField;
    Qry_CheckMLUSERDATE: TStringField;
    Qry_CheckMLcidate: TStringField;
    Qry_CheckMLYPDH: TStringField;
    Qry_CheckMLFD: TStringField;
    Qry_CheckMLCLBH: TStringField;
    Qry_CheckMLYWPM: TStringField;
    Qry_CheckMLCSBH: TStringField;
    Qry_CheckMLCLSL: TFloatField;
    Qry_CheckMLQty: TCurrencyField;
    Qry_CheckMLETD: TStringField;
    Qry_CheckMLLocation: TStringField;
    Qry_CheckMLETA: TStringField;
    Qry_CheckMLCGNO_1: TStringField;
    Qry_CheckMLuseType: TStringField;
    Qry_CheckMLStock_memo: TStringField;
    Qry_CheckMLSupplier: TStringField;
    Qry_CheckMLUserName: TStringField;
    Qry_CheckMLng_reason: TStringField;
    ComboBox3: TComboBox;
    qryR2subtype: TStringField;
    qryR3subtype: TStringField;
    qrykfxxzlUpperMat: TStringField;
    qrykfxxzlLiningMat: TStringField;
    qrykfxxzlInsoleMat: TStringField;
    qrykfxxzlOutsoleMat: TStringField;
    Label229: TLabel;
    BSFD: TComboBox;
    Label233: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    DateTimePicker9: TDateTimePicker;
    DateTimePicker10: TDateTimePicker;
    DateTimePicker11: TDateTimePicker;
    DateTimePicker12: TDateTimePicker;
    DateTimePicker13: TDateTimePicker;
    DateTimePicker14: TDateTimePicker;
    DateTimePicker15: TDateTimePicker;
    DateTimePicker16: TDateTimePicker;
    DateTimePicker17: TDateTimePicker;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    QryCFMxieming: TStringField;
    notall: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    DBComboBox6: TDBComboBox;
    qrykfxxzlbucket: TStringField;
    Label235: TLabel;
    Label236: TLabel;
    qrykfxxzlextra: TStringField;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    extrab: TButton;
    qrykfxxzlextraday: TIntegerField;
    qrykfxxzlCT: TStringField;
    qrykfxxzlFTWT: TStringField;
    qrykfxxzlMiniC: TStringField;
    DBComboBox7: TDBComboBox;
    qrykfxxzlLooksee: TBooleanField;
    qrykfxxzltransferin: TBooleanField;
    qrykfxxzlToeCap: TStringField;
    qrykfxxzlToeBumper: TStringField;
    qrykfxxzlFoxing: TStringField;
    qrykfxxzlHeelLogo: TStringField;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Label32: TLabel;
    DBEdit11: TDBEdit;
    Label43: TLabel;
    DBEdit29: TDBEdit;
    Label62: TLabel;
    DBEdit30: TDBEdit;
    Label65: TLabel;
    DBEdit47: TDBEdit;
    Label70: TLabel;
    QryCFMHandOver: TStringField;
    Label71: TLabel;
    DBEdit53: TDBEdit;
    DateTimePicker18: TDateTimePicker;
    DBComboBox8: TDBComboBox;
    Label72: TLabel;
    DBComboBox9: TDBComboBox;
    qrykfxxzlproductionType: TStringField;
    Label73: TLabel;
    qrykfxxzlcolorwaystatus: TStringField;
    DBComboBox11: TDBComboBox;
    Label76: TLabel;
    DBComboBox12: TDBComboBox;
    DBEdit56: TDBComboBox;
    DBEdit57: TDBComboBox;
    qrykfxxzlcategory: TStringField;
    qrykfxxzlTier: TStringField;
    DBEdit38: TDBComboBox;
    DBEdit40: TDBComboBox;
    DBEdit37: TDBComboBox;
    qrykfxxzlUpperMatDetail: TStringField;
    qrykfxxzlLiningMatDetail: TStringField;
    qrykfxxzlInsoleMatDetail: TStringField;
    qrykfxxzlOutsoleMatDetail: TStringField;
    Panel24: TPanel;
    DBEdit42: TDBEdit;
    Label59: TLabel;
    Label227: TLabel;
    DBEdit154: TDBEdit;
    DBEdit31: TDBEdit;
    Label50: TLabel;
    Label225: TLabel;
    DBEdit132: TDBEdit;
    Label226: TLabel;
    DBEdit153: TDBEdit;
    DBEdit52: TDBEdit;
    Label77: TLabel;
    Label228: TLabel;
    DBEdit155: TDBEdit;
    Label78: TLabel;
    DBEdit54: TDBEdit;
    DateTimePicker19: TDateTimePicker;
    DateTimePicker20: TDateTimePicker;
    DateTimePicker21: TDateTimePicker;
    DateTimePicker22: TDateTimePicker;
    DateTimePicker23: TDateTimePicker;
    DateTimePicker25: TDateTimePicker;
    DateTimePicker26: TDateTimePicker;
    DateTimePicker27: TDateTimePicker;
    DateTimePicker28: TDateTimePicker;
    DateTimePicker29: TDateTimePicker;
    DateTimePicker24: TDateTimePicker;
    DateTimePicker30: TDateTimePicker;
    DateTimePicker31: TDateTimePicker;
    DateTimePicker32: TDateTimePicker;
    DateTimePicker33: TDateTimePicker;
    DateTimePicker34: TDateTimePicker;
    DateTimePicker35: TDateTimePicker;
    DateTimePicker36: TDateTimePicker;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    TabSheet7: TTabSheet;
    Panel25: TPanel;
    Label81: TLabel;
    Label83: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label234: TLabel;
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
    r4subtype: TComboBox;
    checkR4: TCheckBox;
    ShowSizer4: TCheckBox;
    Panel26: TPanel;
    Label237: TLabel;
    Label238: TLabel;
    Label239: TLabel;
    Label240: TLabel;
    Label241: TLabel;
    Label242: TLabel;
    Label243: TLabel;
    Label244: TLabel;
    Label245: TLabel;
    Label247: TLabel;
    Label248: TLabel;
    Label249: TLabel;
    Label250: TLabel;
    Label251: TLabel;
    Label252: TLabel;
    Label253: TLabel;
    Label254: TLabel;
    Label255: TLabel;
    Label256: TLabel;
    Label257: TLabel;
    Label258: TLabel;
    Label259: TLabel;
    Label260: TLabel;
    Label261: TLabel;
    Label262: TLabel;
    Label263: TLabel;
    Label264: TLabel;
    Label265: TLabel;
    Label266: TLabel;
    Label267: TLabel;
    Label268: TLabel;
    Label269: TLabel;
    Label270: TLabel;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit156: TDBEdit;
    DBEdit157: TDBEdit;
    DBEdit158: TDBEdit;
    DBEdit159: TDBEdit;
    DBEdit160: TDBEdit;
    DBEdit161: TDBEdit;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    DBEdit167: TDBEdit;
    DBEdit168: TDBEdit;
    DBEdit169: TDBEdit;
    DBEdit170: TDBEdit;
    DBEdit171: TDBEdit;
    DBEdit172: TDBEdit;
    DBEdit173: TDBEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    DBEdit176: TDBEdit;
    DBComboBox16: TDBComboBox;
    DBComboBox17: TDBComboBox;
    DBComboBox18: TDBComboBox;
    DateTimePicker37: TDateTimePicker;
    DateTimePicker38: TDateTimePicker;
    DateTimePicker39: TDateTimePicker;
    DateTimePicker40: TDateTimePicker;
    DateTimePicker41: TDateTimePicker;
    DateTimePicker42: TDateTimePicker;
    DBComboBox19: TDBComboBox;
    Panel27: TPanel;
    DBGridEh7: TDBGridEh;
    memor4: TMemo;
    UpdateSQL7: TUpdateSQL;
    UpdateSQL8: TUpdateSQL;
    SRDet_FMLR4: TQuery;
    SRDet_MLR4: TQuery;
    ExcelR4: TQuery;
    R4ETA: TDataSource;
    R4recieve: TDataSource;
    qryR4: TQuery;
    saver4: TUpdateSQL;
    ComboBox4: TComboBox;
    Label272: TLabel;
    QryIMAGEIMAGER2: TStringField;
    QryIMAGEIMAGER3: TStringField;
    ComboBox5: TComboBox;
    QryIMAGEIMAGECFM: TStringField;
    qrykfxxzlimgnamecfm: TStringField;
    Image1: TImage;
    QryCFMimgnamecfm: TStringField;
    ImageR1: TImage;
    ImageR2: TImage;
    ImageR3: TImage;
    qryR2imgnamer2: TStringField;
    qryR3imgnamer3: TStringField;
    Label66: TLabel;
    SKU: TEdit;
    Label277: TLabel;
    ComboBox6: TComboBox;
    DBEdit177: TDBEdit;
    Label278: TLabel;
    DBComboBox15: TDBComboBox;
    Label215: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label271: TLabel;
    r1subtpdb: TDBComboBox;
    r2subtpdb: TDBComboBox;
    r3subtpdb: TDBComboBox;
    r4subtpdb: TDBComboBox;
    Label279: TLabel;
    DBEdit69: TDBEdit;
    Label280: TLabel;
    DBEdit178: TDBEdit;
    Label281: TLabel;
    DBEdit179: TDBEdit;
    qryR2SQ: TStringField;
    qryR3SQ: TStringField;
    qryR2fit: TStringField;
    qryR2wear: TStringField;
    qryR3fit: TStringField;
    qryR3wear: TStringField;
    qryR2PullCFMDate: TStringField;
    qryR3PullCFMDate: TStringField;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Label36: TLabel;
    DBEdit24: TDBEdit;
    DateTimePicker43: TDateTimePicker;
    Label120: TLabel;
    DBEdit180: TDBEdit;
    DateTimePicker44: TDateTimePicker;
    Label132: TLabel;
    DBEdit181: TDBEdit;
    DateTimePicker45: TDateTimePicker;
    R1LAI: TComboBox;
    R2LAI: TComboBox;
    R3LAI: TComboBox;
    R4LAI: TComboBox;
    QryCFMarticle: TStringField;
    qrykfxxzlSegment: TStringField;
    ImageR4: TImage;
    Label273: TLabel;
    testimageR1: TImage;
    Label274: TLabel;
    testimageR2: TImage;
    Label275: TLabel;
    testimageR3: TImage;
    Label164: TLabel;
    testimageR4: TImage;
    testimageCFM: TImage;
    Label276: TLabel;
    qryR4FD: TStringField;
    qryR4ypdh: TStringField;
    qryR4YSSM: TStringField;
    qryR4kflx: TStringField;
    qryR4XTMH: TStringField;
    qryR4DDMH: TStringField;
    qryR4XieMing: TStringField;
    qryR4article: TStringField;
    qryR4devcode: TStringField;
    qryR4imgnameR4: TStringField;
    qryR4CTS: TStringField;
    qryR4NA: TStringField;
    qryR4GENDER: TStringField;
    qryR4subtype: TStringField;
    qryR4XieXing: TStringField;
    qryR4SheHao: TStringField;
    qryR4USERID: TStringField;
    qryR4userdate: TDateTimeField;
    qryR4TPDATE: TStringField;
    qryR4status: TStringField;
    qryR4RSD: TStringField;
    qryR4CTSI: TStringField;
    qryR4SETC: TStringField;
    qryR4total: TStringField;
    qryR4OQ: TStringField;
    qryR4testing: TStringField;
    qryR4MFRD: TStringField;
    qryR4DPS_NTSR: TStringField;
    qryR4PI: TStringField;
    qryR4RRSRD: TStringField;
    qryR4PS: TStringField;
    qryR4remarks: TStringField;
    qryR4fit: TStringField;
    qryR4wear: TStringField;
    qryR4SQ: TStringField;
    qryR4PullCFMDate: TStringField;
    QryIMAGEIMAGER4: TStringField;
    Label246: TLabel;
    DBEdit182: TDBEdit;
    qrykfxxzlMidsole: TStringField;
    Label282: TLabel;
    Label283: TLabel;
    Label284: TLabel;
    Label285: TLabel;
    qrykfxxzlProductionLocation: TStringField;
    Label286: TLabel;
    DBEdit183: TDBEdit;
    QryCFMProductionLocation: TStringField;
    DBEdit184: TDBEdit;
    Label287: TLabel;
    Label288: TLabel;
    DBEdit185: TDBEdit;
    qryR2ProductionLocation: TStringField;
    Label289: TLabel;
    DBEdit186: TDBEdit;
    Label290: TLabel;
    DBEdit187: TDBEdit;
    qryR3ProductionLocation: TStringField;
    Label291: TLabel;
    DBEdit188: TDBEdit;
    qryR4ProductionLocation: TStringField;
    qryR2Component_Qty: TStringField;
    qryR2Lasted_Upper_Qty: TStringField;
    qryR2Finished_shoe_Qty: TStringField;
    qryR2Half_Stitching_Qty: TStringField;
    qryR2Costing_Qty: TStringField;
    qryR2IE_Qty: TStringField;
    qryR3Component_Qty: TStringField;
    qryR3Lasted_Upper_Qty: TStringField;
    qryR3Finished_shoe_Qty: TStringField;
    qryR3Half_Stitching_Qty: TStringField;
    qryR3Costing_Qty: TStringField;
    qryR3IE_Qty: TStringField;
    qryR4Component_Qty: TStringField;
    qryR4Lasted_Upper_Qty: TStringField;
    qryR4Finished_shoe_Qty: TStringField;
    qryR4Half_Stitching_Qty: TStringField;
    qryR4Costing_Qty: TStringField;
    qryR4IE_Qty: TStringField;
    Label109: TLabel;
    DBEdit82: TDBEdit;
    Label292: TLabel;
    DBEdit189: TDBEdit;
    Label293: TLabel;
    DBEdit190: TDBEdit;
    DBEdit191: TDBEdit;
    Label294: TLabel;
    Label295: TLabel;
    DBEdit192: TDBEdit;
    Label144: TLabel;
    DBEdit107: TDBEdit;
    DBEdit136: TDBEdit;
    Label176: TLabel;
    Label296: TLabel;
    DBEdit193: TDBEdit;
    Label297: TLabel;
    DBEdit194: TDBEdit;
    Label298: TLabel;
    DBEdit195: TDBEdit;
    Label299: TLabel;
    DBEdit196: TDBEdit;
    DBEdit197: TDBEdit;
    Label300: TLabel;
    Label301: TLabel;
    DBEdit198: TDBEdit;
    Label302: TLabel;
    DBEdit199: TDBEdit;
    Label303: TLabel;
    DBEdit200: TDBEdit;
    Label304: TLabel;
    DBEdit201: TDBEdit;
    DBEdit202: TDBEdit;
    Label305: TLabel;
    Label306: TLabel;
    DBEdit203: TDBEdit;
    Label307: TLabel;
    DBEdit204: TDBEdit;
    Label308: TLabel;
    DBEdit205: TDBEdit;
    Label309: TLabel;
    DBEdit206: TDBEdit;
    qryR2ypdh: TStringField;
    qryR2Total_Qty: TFloatField;
    qryR3ypdh: TStringField;
    qryR3Total_Qty: TFloatField;
    qryR4Total_Qty: TFloatField;
    qryR1FD: TStringField;
    qryR1ypdh: TStringField;
    qryR1YSSM: TStringField;
    qryR1kflx: TStringField;
    qryR1XTMH: TStringField;
    qryR1DDMH: TStringField;
    qryR1XieMing: TStringField;
    qryR1article: TStringField;
    qryR1devcode: TStringField;
    qryR1imgnameR1: TStringField;
    qryR1CTS: TStringField;
    qryR1NA: TStringField;
    qryR1GENDER: TStringField;
    qryR1subtype: TStringField;
    qryR1ProductionLocation: TStringField;
    qryR1XieXing: TStringField;
    qryR1SheHao: TStringField;
    qryR1USERID: TStringField;
    qryR1userdate: TDateTimeField;
    qryR1TPDATE: TStringField;
    qryR1status: TStringField;
    qryR1RSD: TStringField;
    qryR1CTSI: TStringField;
    qryR1SETC: TStringField;
    qryR1OQ: TStringField;
    qryR1testing: TStringField;
    qryR1MFRD: TStringField;
    qryR1DPS_NTSR: TStringField;
    qryR1PI: TStringField;
    qryR1RRSRD: TStringField;
    qryR1PS: TStringField;
    qryR1remarks: TStringField;
    qryR1fit: TStringField;
    qryR1wear: TStringField;
    qryR1SQ: TStringField;
    qryR1PullCFMDate: TStringField;
    qryR1Component_Qty: TStringField;
    qryR1Lasted_Upper_Qty: TStringField;
    qryR1Finished_shoe_Qty: TStringField;
    qryR1Half_Stitching_Qty: TStringField;
    qryR1Costing_Qty: TStringField;
    qryR1IE_Qty: TStringField;
    qryR1total: TStringField;
    qryR1Total_Qty: TFloatField;
    MaterialMonitor: TQuery;
    MaterialMonitorDS: TDataSource;
    MaterialMonitorParts: TStringField;
    MaterialMonitorSeason: TStringField;
    MaterialMonitorStage: TStringField;
    MaterialMonitorUpdateDate: TStringField;
    Panel28: TPanel;
    DBGridEh8: TDBGridEh;
    Panel29: TPanel;
    DBGridEh9: TDBGridEh;
    Panel30: TPanel;
    DBGridEh10: TDBGridEh;
    Panel31: TPanel;
    DBGridEh11: TDBGridEh;
    DBComboBox20: TDBComboBox;
    DBComboBox21: TDBComboBox;
    Label310: TLabel;
    ComboBox7: TComboBox;
    Label311: TLabel;
    DBComboBox22: TDBComboBox;
    qrykfxxzlType: TStringField;
    QryCFMsubtype: TStringField;
    QryCFMseason: TStringField;
    Label312: TLabel;
    DBEdit63: TDBEdit;
    DateTimePicker46: TDateTimePicker;
    qrykfxxzlRFCDeadlineDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRY1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Clck(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbx1Change(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure qrykfxxzlAfterScroll(DataSet: TDataSet);
    procedure saveas1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure UPBTNClick(Sender: TObject);
    procedure SAVEBTNClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure QryIMAGEAfterScroll(DataSet: TDataSet);
    procedure excel1Click(Sender: TObject);
    procedure EXCEL2Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure r2bbt1Click(Sender: TObject);
    procedure r2bbt2Click(Sender: TObject);
    procedure r2bbt3Click(Sender: TObject);
    procedure r2bbt4Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure r2bbt5Click(Sender: TObject);
    procedure r3bbt1Click(Sender: TObject);
    procedure r3bbt2Click(Sender: TObject);
    procedure r3bbt3Click(Sender: TObject);
    procedure r3bbt4Click(Sender: TObject);
    procedure r3bbt5Click(Sender: TObject);
    procedure R1ExcelClick(Sender: TObject);
    procedure R2ExcelClick(Sender: TObject);
    procedure R3ExcelClick(Sender: TObject);
    procedure cfmtypeChange(Sender: TObject);
    procedure r1typeChange(Sender: TObject);
    procedure r2typeChange(Sender: TObject);
    procedure r3typeChange(Sender: TObject);
    procedure CHECKQRYClick(Sender: TObject);

    procedure modifydate();
    procedure R1modifydate();
    procedure R2modifydate();
    procedure R3modifydate();
    procedure R4modifydate();
    procedure Basemodifydate();
   // procedure R4modifydate();
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure DateTimePicker5Change(Sender: TObject);
    procedure DateTimePicker6Change(Sender: TObject);
    procedure DateTimePicker7Change(Sender: TObject);
    procedure DateTimePicker8Change(Sender: TObject);
    procedure DateTimePicker9Change(Sender: TObject);
    procedure DateTimePicker10Change(Sender: TObject);
    procedure DateTimePicker11Change(Sender: TObject);
    procedure DateTimePicker12Change(Sender: TObject);
    procedure DateTimePicker13Change(Sender: TObject);
    procedure DateTimePicker14Change(Sender: TObject);
    procedure DateTimePicker15Change(Sender: TObject);
    procedure DateTimePicker16Change(Sender: TObject);
    procedure DateTimePicker17Change(Sender: TObject);
    procedure extrabClick(Sender: TObject);
    procedure DateTimePicker18Change(Sender: TObject);
    procedure DateTimePicker19Change(Sender: TObject);
    procedure DateTimePicker20Change(Sender: TObject);
    procedure DateTimePicker21Change(Sender: TObject);
    procedure DateTimePicker22Change(Sender: TObject);
    procedure DateTimePicker23Change(Sender: TObject);
    procedure DateTimePicker24Change(Sender: TObject);
    procedure DateTimePicker25Change(Sender: TObject);
    procedure DateTimePicker26Change(Sender: TObject);
    procedure DateTimePicker27Change(Sender: TObject);
    procedure DateTimePicker28Change(Sender: TObject);
    procedure DateTimePicker29Change(Sender: TObject);
    procedure DateTimePicker30Change(Sender: TObject);
    procedure DateTimePicker31Change(Sender: TObject);
    procedure DateTimePicker32Change(Sender: TObject);
    procedure DateTimePicker33Change(Sender: TObject);
    procedure DateTimePicker34Change(Sender: TObject);
    procedure DateTimePicker35Change(Sender: TObject);
    procedure DateTimePicker36Change(Sender: TObject);
    procedure r4bbt1Click(Sender: TObject);
    procedure r4bbt2Click(Sender: TObject);
    procedure r4bbt3Click(Sender: TObject);
    procedure r4bbt4Click(Sender: TObject);
    procedure r4bbt5Click(Sender: TObject);
    procedure r4excelClick(Sender: TObject);
    procedure r4typeChange(Sender: TObject);
    procedure DateTimePicker37Change(Sender: TObject);
    procedure DateTimePicker38Change(Sender: TObject);
    procedure DateTimePicker39Change(Sender: TObject);
    procedure DateTimePicker40Change(Sender: TObject);
    procedure DateTimePicker41Change(Sender: TObject);
    procedure DateTimePicker42Change(Sender: TObject);
    procedure QryCFMAfterScroll(DataSet: TDataSet);
    procedure qryR1AfterScroll(DataSet: TDataSet);
    procedure qryR2AfterScroll(DataSet: TDataSet);
    procedure qryR3AfterScroll(DataSet: TDataSet);
    procedure ComboBox4Change(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh5CellClick(Column: TColumnEh);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure yjCellClick(Column: TColumnEh);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker43Change(Sender: TObject);
    procedure DateTimePicker44Change(Sender: TObject);
    procedure DateTimePicker45Change(Sender: TObject);
    procedure DBGridEh7CellClick(Column: TColumnEh);
    procedure DBEdit82KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit189KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit190KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit192KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit191KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit177KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit84KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit85KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit107KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit136KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit193KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit194KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit195KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit69KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit119KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit118KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit196KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit197KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit198KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit199KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit206KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit200KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit178KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit148KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit147KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit201KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit202KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit203KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit204KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit205KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit179KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit173KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit172KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox4Change(Sender: TObject);
    procedure DateTimePicker46Change(Sender: TObject);
  private
   procedure QuerySample(Ebn:Tbitbtn;Mbn:Tbitbtn;Cbn:Tbitbtn;TBname:String;checkETA:TcheckBox;
          Season:Tcombobox;article:Tedit;FD:TCombobox;Team:Tcombobox;Stype:Tcombobox;Subtype:Tcombobox;Qryname:TQuery;Stage:string;SubTPDB:TDBcombobox;showsize:TcheckBox;imgname:String;LAI:Tcombobox);
   procedure menuSaveSample(Ebn:Tbitbtn;Qbn:Tbitbtn;Mbn:Tbitbtn;Sbn:Tbitbtn;Cbn:Tbitbtn;saveqry:TupdateSQL;Qryname:TQuery);
   procedure menucancelSample(Ebn:Tbitbtn;Qbn:Tbitbtn;Mbn:Tbitbtn;Sbn:Tbitbtn;Cbn:Tbitbtn;qryname:Tquery);
   procedure menumodifySample(Mbn:Tbitbtn;Sbn:Tbitbtn;Cbn:Tbitbtn;Qbn:Tbitbtn);
   procedure Excelsample(Qryname:TQuery;imgname:String;TBname:String;season:Tcombobox;stage:string;Stype:Tcombobox;
          subtype:Tcombobox;FD:Tcombobox;Article:Tedit;team:Tcombobox;SRDet_ML:TQuery;SRDet_FML:TQuery;check:Tcheckbox;memo:Tmemo;showsize:TcheckBox;LAI:Tcombobox);
    { Private declarations }
  public
    { Public declarations }
    SQL1: String;
  end;

var
  SampleDevelopInformation: TSampleDevelopInformation;
  NDate:TDate;
  modifynum,picflag:integer;
implementation

uses ShoeTracking1, main1,FunUnit, ShowShoePic1, Extra1;

{$R *.dfm}

procedure TSampleDevelopInformation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TSampleDevelopInformation.FormDestroy(Sender: TObject);
begin
  SampleDevelopInformation:=nil;
end;

procedure TSampleDevelopInformation.QRY1Click(Sender: TObject);
var
 j:integer;
begin
  picflag:=0;
  exceloutlb.Visible:=false; //EXCEL匯出時讀取資料文字
  excelout.Visible:=false;
  with gettime do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('Ndate').value;
  end;
if modifynum=1 then
  with tempQ do
  begin
    active:=false;
    sql.Clear;
     sql.add('select TeamLeader,TeamLeader2 from FDGroups');
     sql.add('left join FDGroup on FDGroup.FDTeam=FDGroups.FDTeam');
     sql.add('left join busers on busers.userid=FDGroups.FDID');
     sql.add(' where FDGroups.FDID is not null');
     sql.add('  and busers.Engname='''+BSFD.text+'''');
     //showmessage(sql.text);
     Active:=true;
  end;
  with qrykfxxzl do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select XXZLKF.xiexing,XXZLKF.SheHao,');
    SQL.add('isnull(XXZLKF.imgnamecfm,'+''''+''''+') as imgnamecfm,');
    if main.Edit2.Text = 'SKX' then
      SQL.add('kfxxzl.DEVCODE +'+''' / '''+'+ kfxxzl.YSSM as DEVCODE,')
    else
      SQL.add('kfxxzl.DEVCODE,');
    SQL.add('kfxxzl.Article,');
    SQL.add('isnull(xxzlkf.userid,'+''''+''''+') as userid,');
    SQL.add('isnull(xxzlkf.userdate,'+''''+''''+') as userdate,');
    SQL.add('XXZLKF.dropped,');
    SQL.add('XXZLKF.transfer,');
    SQL.add('XXZLKF.Looksee,');
    SQL.add('XXZLKF.transferin,');
    SQL.add('XXZLKF.cut,');
    SQL.add('XXZLKF.PFS,');
    SQL.add('XXZLKF.CT,');
    SQL.add('XXZLKF.SS,');
    SQL.add('XXZLKF.SCC,');
    SQL.add('XXZLKF.MMD,');
    SQL.add('XXZLKF.miniC,');
    SQL.add('XXZLKF.FTWT,');
    SQL.add('XXZLKF.PCS,');
    SQL.add('XXZLKF.NCD,');
    SQL.add('XXZLKF.TEST,');

    SQL.add('XXZLKF.CDC,');
    SQL.add('XXZLKF.CTS,');
    SQL.add('XXZLKF.UpperMat,');
    SQL.add('XXZLKF.LiningMat,');
    SQL.add('XXZLKF.InsoleMat,');
    SQL.add('XXZLKF.OutsoleMat,');
    SQL.add('XXZLKF.UpperMatDetail,');
    SQL.add('XXZLKF.LiningMatDetail,');
    SQL.add('XXZLKF.InsoleMatDetail,');
    SQL.add('XXZLKF.OutsoleMatDetail,');
    SQL.add('XXZLKF.NA,');
    SQL.add('XXZLKF.Remarks,');
    SQL.add('kfxxzl.kfcq,');
    SQL.add('kfxxzl.jijie,');
    SQL.add('xxzlkf.category,');
    SQL.add('KFXXZL.XieMing,');
    SQL.add('KFXXZL.YSSM,');
    SQL.add('case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end  as kflx,');//kfxxzl.kflx  改FLEX TL: xxzlkf.TechLevel_Flex
    SQL.add('KFXXZL.GENDER,');
    SQL.add('kfxxzl.XTMH,');
    SQL.add('kfxxzl.DDMH,');
    SQL.add('KFXXZL.LOGO,');
    SQL.add('kfxxzl.fd,');
    SQL.add('xxzlkf.yn,');
    SQL.add('xxzlkf.bucket,');
    SQL.add('xxzlkf.extra,');
    SQL.add('xxzlkf.extraday,');
    SQL.add('xxzlkf.ToeCap,');
    SQL.add('xxzlkf.ToeBumper,');
    SQL.add('xxzlkf.Foxing,');
    SQL.add('xxzlkf.HeelLogo,');
    SQL.add('xxzlkf.Tier,');
    SQL.add('xxzlkf.colorwaystatus,');
    SQL.add('xxzlkf.Segment,');
    SQL.add('xxzlkf.Type,');
    SQL.add('xxzlkf.ProductionType,');
    SQL.add('xxzlkf.Midsole,');
    SQL.add('YPZL.ProductionLocation, ');
    SQL.add('xxzlkf.RFCDeadlineDate ');
    SQL.add('from XXZLKF');
    SQL.add('left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZLKF.XieXing');
    SQL.add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    //20190404 增加顯示ProductionLocation
    SQL.Add('left join (');
    SQL.Add('  select kfxxzl.XieXing,kfxxzl.SheHao,Max(YPZL.ProductionLocation) as ProductionLocation from YPZL,kfxxzl,kfzl_GS ');
    SQL.Add('  where ');
    SQL.Add('        kfzl_GS.KHBH=kfxxzl.KHDH');
    SQL.Add('        and kfxxzl.SheHao=YPZL.SheHao ');
    SQL.Add('        and kfxxzl.XieXing=YPZL.XieXing ');
    SQL.Add('        and kfxxzl.jijie  like '''+'%'+cbb1.Text+'%'+''' ');
//    SQL.Add('        and kfzl_GS.GSBH= ''CDC'' ');
    SQL.Add('        and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
    SQL.Add('  Group by kfxxzl.XieXing,kfxxzl.SheHao ) YPZL on kfxxzl.SheHao=YPZL.SheHao and kfxxzl.XieXing=YPZL.XieXing');
    //
    SQL.add('where KFXXZL.jijie like '''+'%'+cbb1.Text+'%'+''' ');
    SQL.add('and devcode in (select kfxxzl.devcode from kfxxzl');
    SQL.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
//    SQL.add('where kfxxzl.khdh=''036''  and kfjd<>''SEE''  and KFXXZL.jijie like '''+'%'+cbb1.Text+'%'+'''');
    SQL.add('where kfxxzl.khdh in '+SQL1+'  and kfjd<>''SEE''  and KFXXZL.jijie like '''+'%'+cbb1.Text+'%'+'''');
    SQL.add('group by kfxxzl.devcode)');

    if checkbox1.Checked then
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and kfxxzl.devcode <>''''');
    SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
    if devtype.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+devtype.Text+'%'+'''');
    if SR.Text <> '' then
      SQL.add('and kfxxzl.devcode like '''+'%'+SR.Text+'%'+'''');
    if SKU.Text <> '' then
      SQL.add('and kfxxzl.article like '''+'%'+SKU.Text+'%'+'''');
    if BSFD.Text <> '' then
      SQL.add('and kfxxzl.fd = '''+BSFD.Text+''' ');
    if team.Text <> '' then
      if team.Text = 'A'
      then SQL.add('and fdgroups.fdteam=''A'' ');
      if team.Text = 'B'
      then SQL.add('and fdgroups.fdteam=''B'' ');
      if team.Text = 'C'
      then SQL.add('and fdgroups.fdteam=''C'' ');
      if team.Text = 'SMU'
      then SQL.add('and fdgroups.fdteam=''SMU'' ');
    if modifynum=1 then
    if (main.edit1.text<>'61374')  AND (main.Edit1.text<>tempQ.fieldbyname('TeamLeader').asstring)
                  AND (main.Edit1.text<>tempQ.fieldbyname('TeamLeader2').asstring)then//設定助理改全部
       begin
         SQL.add('and KFXXZL.fd= '+''''+startbasic.fieldbyname('engname').value+''' ');
       end;
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
      //showmessage(SQL.text);
  //  memo2.text:=sql.text;
    Active:=true;
  end;
  BB2.Enabled:=true;
  BB4.Enabled:=true; 
  tempQ.Active:=false;
  picflag:=1;
end;

procedure TSampleDevelopInformation.BB4Click(Sender: TObject);
begin
  BB2.Enabled:=false;
  BB4.Enabled:=false;
  BB7.Enabled:=false;
  extrab.Enabled:=true;
  with qrykfxxzl do
  begin
    cachedupdates:=true;
    requestlive:=true;
    qrykfxxzl.edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  modifynum:=1;
  BB1.Click;
end;

procedure TSampleDevelopInformation.BB5Clck(Sender: TObject);
var
 i:integer;
begin
  try
    qrykfxxzl.cachedupdates:=true;
    qrykfxxzl.requestlive:=true;
    qrykfxxzl.first;
    for i:=1 to qrykfxxzl.RecordCount do
    begin
      case qrykfxxzl.updatestatus of
      usmodified:
        begin
         qrykfxxzl.edit;
         qrykfxxzl.FieldByName('userdate').Value:=Ndate;
         qrykfxxzl.FieldByName('userid').Value:=startbasic.fieldbyname('engname').value;
         updateshoe.apply(ukmodify);
        end;
    end;
      qrykfxxzl.next;
  end;
   BB2.Enabled:=true;
   BB4.Enabled:=true;
   BB7.Enabled:=true;
   BB5.Enabled:=false;
   BB6.Enabled:=false;
   extrab.Enabled:=false;
   qrykfxxzl.active:=false;
   qrykfxxzl.cachedupdates:=false;
   qrykfxxzl.requestlive:=false;
   qrykfxxzl.active:=true;
   except
      Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
   modifynum:=0;
end;

procedure TSampleDevelopInformation.FormCreate(Sender: TObject);
var
 i:integer;
begin
    bb2.Click;
   with startbasic do
      begin
         active:=false;        //抓取使用者資料
         SQL.Clear;
         SQL.add('select isnull(engname,'+''''+''''+') as engname from Busers');
         SQL.add('where userid= '+''''+main.Edit1.Text+''' ');
         Active:=true;
      end;
     // showname.Text:=main.Edit1.Text +'  '+ startbasic.fieldbyname('username').value ;

      with startcfm do  //抓取CFM的FD 15-19季
        begin
         active:=false;
         sql.Clear;
         sql.add('select FD from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         SQL.add('and right(left(jijie,2),2) between ''15'' and ''50'' ');
         sql.add('group by FD');
         active:=true;
         CBX1.items.clear;
         R1FD.items.clear;
         R2FD.items.clear;
         R3FD.items.clear;
         R4FD.items.clear;
         BSFD.items.clear;
         while not eof do
         begin
           CBX1.items.add(fieldbyname('FD').asstring );
           R1FD.items.add(fieldbyname('FD').asstring );
           R2FD.items.add(fieldbyname('FD').asstring );
           R3FD.items.add(fieldbyname('FD').asstring );
           R4FD.items.add(fieldbyname('FD').asstring );
           BSFD.items.add(fieldbyname('FD').asstring );
           next;
         end;
      end;
      CBX1.ItemIndex:=-1;
      R1FD.ItemIndex:=-1;
      R2FD.ItemIndex:=-1;
      R3FD.ItemIndex:=-1;
      R4FD.ItemIndex:=-1;
      BSFD.ItemIndex:=-1;


      with startcfm do  //抓取CFM的season 15-19季
      begin
         active:=false;
         sql.Clear;
         sql.add('select jijie from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
         SQL.Add('AND LEN(jijie) < 4 ');
         sql.add('group by jijie');
         sql.add('order by jijie desc');
         active:=true;
         cbb1.items.clear;
         combobox1.items.clear;
         combobox2.items.clear;         
         r1season.items.clear;
         r2season.items.clear;
         r3season.items.clear;
         r4season.items.clear;
         while not eof do
         begin
           cbb1.items.add(fieldbyname('jijie').asstring );
           combobox1.items.add(fieldbyname('jijie').asstring );
           combobox2.items.add(fieldbyname('jijie').asstring );
           r1season.items.add(fieldbyname('jijie').asstring );
           r2season.items.add(fieldbyname('jijie').asstring );
           r3season.items.add(fieldbyname('jijie').asstring );
           r4season.items.add(fieldbyname('jijie').asstring );
           next;
         end;
      end;
      cbb1.ItemIndex:=0;
      combobox1.ItemIndex:=0;
      combobox2.ItemIndex:=0;
      r1season.ItemIndex:=0;
      r2season.ItemIndex:=0;
      r3season.ItemIndex:=0;
      r4season.ItemIndex:=0;

     // showmessage('data insert');    //一開程式就新增CFM ,XXZLKF,R123Sample資料
      with tempQ do
      begin
        active:=false;
        SQL.Clear;
        SQL.add('select kfxxzl.* from kfxxzl');
        SQL.add('left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao');
        SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
        SQL.add('where (xxzlkf.xiexing is null and xxzlkf.shehao is null) ');
        SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
        Active:=true;
        tempQ.cachedupdates:=true;
        tempQ.requestlive:=true;
        tempQ.first;

        for i:=1 to tempQ.RecordCount do
        begin
          Upxxzlkf.apply(ukinsert);
          tempQ.Next;
        end;
          //showmessage(tempQ.fieldbyname('xiexing').value);
  end;
  //R1
   datetimepicker1.datetime:=now;
   datetimepicker19.datetime:=now;
   datetimepicker20.datetime:=now;
   datetimepicker21.datetime:=now;
   datetimepicker22.datetime:=now;
   datetimepicker23.datetime:=now;
   datetimepicker24.datetime:=now;
   //R2
   datetimepicker25.datetime:=now;
   datetimepicker26.datetime:=now;
   datetimepicker27.datetime:=now;
   datetimepicker28.datetime:=now;
   datetimepicker29.datetime:=now;
   datetimepicker30.datetime:=now;
   datetimepicker43.datetime:=now;

   //R3
   datetimepicker31.datetime:=now;
   datetimepicker32.datetime:=now;
   datetimepicker33.datetime:=now;
   datetimepicker34.datetime:=now;
   datetimepicker35.datetime:=now;
   datetimepicker36.datetime:=now;
   datetimepicker44.datetime:=now;
//R4
   datetimepicker37.datetime:=now;
   datetimepicker38.datetime:=now;
   datetimepicker39.datetime:=now;
   datetimepicker40.datetime:=now;
   datetimepicker41.datetime:=now;
   datetimepicker42.datetime:=now;
   datetimepicker45.datetime:=now;
//CFM
   datetimepicker18.datetime:=now;
   datetimepicker2.datetime:=now;
   datetimepicker3.datetime:=now;
   datetimepicker4.datetime:=now;
//Base_Model
   datetimepicker46.datetime:=now;

  if (main.Edit2.Text = 'SKX') or (main.Edit2.Text = 'SRL') then begin
    R1LAI.Clear;
    R1LAI.Items.Add(main.Edit2.Text+'V');
    R1LAI.Items.Add(main.Edit2.Text+'T');
    R1LAI.Items.Add(main.Edit2.Text+'K');

    R2LAI.Clear;
    R2LAI.Items.Add(main.Edit2.Text+'V');
    R2LAI.Items.Add(main.Edit2.Text+'T');
    R2LAI.Items.Add(main.Edit2.Text+'K');

    R3LAI.Clear;
    R3LAI.Items.Add(main.Edit2.Text+'V');
    R3LAI.Items.Add(main.Edit2.Text+'T');
    R3LAI.Items.Add(main.Edit2.Text+'K');

    R4LAI.Clear;
    R4LAI.Items.Add(main.Edit2.Text+'V');
    R4LAI.Items.Add(main.Edit2.Text+'T');
    R4LAI.Items.Add(main.Edit2.Text+'K');
  end;

  tempQ.Close;
  tempQ.SQL.Text := 'Select KHBH from kfzl_GS where GSBH = '''+main.Edit2.Text+'''';
  tempQ.Open;
  SQL1 := '';
  while not tempQ.Eof do begin
    if SQL1 = '' then
      SQL1 :=  '('''+TempQ.Fields[0].AsString+''''
    else
      SQL1 := SQL1 + ','''+TempQ.Fields[0].AsString+'''';
    tempQ.Next;
  end;
  SQL1 := SQL1 + ')';

end;

procedure TSampleDevelopInformation.BB2Click(Sender: TObject);
var
 i:integer;
begin
 {showmessage('data insert');
 with tempQ do
  begin
      active:=false;
      SQL.Clear;
      SQL.add('select kfxxzl.* from kfxxzl');
      SQL.add('left join  xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao');
      SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      SQL.add('where (xxzlkf.xiexing is null and xxzlkf.shehao is null) ');
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
      Active:=true;

      tempQ.cachedupdates:=true;
      tempQ.requestlive:=true;
      tempQ.first;

        for i:=1 to tempQ.RecordCount do
        begin
          Upxxzlkf.apply(ukinsert);
          tempQ.Next;
        end;
          //showmessage(tempQ.fieldbyname('xiexing').value);
  end;    }

end;


procedure TSampleDevelopInformation.Button1Click(Sender: TObject);
begin
  picflag:=0;
  with gettime do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('Ndate').value;
    active:=false;
  end;

with QryCFM do
  begin
    active:=false;
    sql.Clear;
    SQL.add('select ');
    SQL.add('kfxxzl.xieming,');
    SQL.add('isnull(XXZLKF.imgnamecfm,'+''''+''''+') as imgnamecfm,');
    SQL.add('isnull(KFXXZL.FD,'+''''+''''+') as FD,');
    SQL.add('isnull(KFXXZL.YSSM,'+''''+''''+') as YSSM,');
    SQL.add('isnull(case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end ,'+''''+''''+') as kflx,');
    SQL.add('isnull(kfxxzl.XTMH,'+''''+''''+') as XTMH,');
    SQL.add('isnull(kfxxzl.DDMH,'+''''+''''+') as DDMH,');
    SQL.add('isnull(kfxxzl.XieMing,'+''''+''''+') as XieMing,');
    SQL.add('isnull(xxzl.article,'+''''+''''+') as article,');
    SQL.add('isnull(kfxxzl.devcode,'+''''+''''+') as devcode,');
    SQL.add('isnull(xxzlkf.CTS,'+''''+''''+') as CTS,');
    SQL.add('isnull(xxzlkf.NA,'+''''+''''+') as NA,');
    SQL.add('isnull(KFXXZL.GENDER,'+''''+''''+') as GENDER,');
    SQL.add('isnull(xxzlkf.SS,'+''''+''''+') as SS,');
    SQL.add('isnull(ypzl.subtype,'+''''+''''+') as subtype,');
    SQL.add('isnull(ypzl.ProductionLocation,'''')  as ProductionLocation, ');
    SQL.add('isnull(kfxxzl.jijie,'''')  as season, ');
    sql.Add('CFM.* from CFM');
    sql.add('left join  kfxxzl on CFM.xiexing=kfxxzl.xiexing and CFM.shehao=kfxxzl.shehao');
    sql.add('left join  xxzl on CFM.xiexing=xxzl.xiexing and CFM.shehao=xxzl.shehao');
    sql.add('left join  (select xiexing,shehao,kfjd,subtype,ProductionLocation from ypzl group by xiexing,shehao,kfjd,subtype,ProductionLocation)ypzl on CFM.xiexing=ypzl.xiexing and CFM.shehao=ypzl.shehao');
    sql.add('left join  xxzlkf on CFM.xiexing=xxzlkf.xiexing and CFM.shehao=xxzlkf.shehao');
    SQL.add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD');
    SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
    SQL.add('where kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+'''');
    SQL.add('and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null)');
    SQL.add('and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null)');
    SQL.add('and kfxxzl.devcode <>''''');
    if notall.Checked then
       SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
       SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and ypzl.kfjd =''CFM'' ');
    if cfmtype.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+cfmtype.Text+'%'+'''');
    if cfmsubtype.text <> '' then
      SQL.add('and ypzl.subtype like '''+'%'+cfmsubtype.Text+'%'+'''');
    if cbx1.text <> '' then
      SQL.add('and KFXXZL.fd= '+''''+cbx1.text+''' ');
    if cfmarticle.Text <> '' then
      SQL.add('and KFXXZL.devcode like '''+'%'+cfmarticle.Text+'%'+'''');
    SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
    if teamcfm.Text <> '' then
      if teamcfm.Text = 'A'
      then SQL.add('and fdgroups.fdteam=''A'' ');
      if teamcfm.Text = 'B'
      then SQL.add('and fdgroups.fdteam=''B'' ');
      if teamcfm.Text = 'C'
      then SQL.add('and fdgroups.fdteam=''C'' ');
      if teamcfm.Text = 'SMU'
      then SQL.add('and fdgroups.fdteam=''SMU'' ');
      funcobj.WriteErrorLog(sql.Text);              
    //showmessage(SQL.text);
    active:=true;
    BitBtn2.Enabled:=true;
  end;
  picflag:=1;
end;

procedure TSampleDevelopInformation.cbx1Change(Sender: TObject);
begin
  //Button1Click(nil);
end;

procedure TSampleDevelopInformation.BB7Click(Sender: TObject);
begin
    close;
end;

procedure TSampleDevelopInformation.BB6Click(Sender: TObject);
begin
 with qrykfxxzl do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
   BB2.Enabled:=true;
   BB4.Enabled:=true;
   BB7.Enabled:=true;
   BB5.Enabled:=false;
   BB6.Enabled:=false;
   extrab.Enabled:=false;   
   modifynum:=0;   
end;

procedure TSampleDevelopInformation.BitBtn2Click(Sender: TObject);
begin
if cbx1.text <> '' then
  with tempQ do
  begin
    active:=false;
    sql.Clear;
     sql.add('select TeamLeader,TeamLeader2 from FDGroups');
     sql.add('left join FDGroup on FDGroup.FDTeam=FDGroups.FDTeam');
     sql.add('left join busers on busers.userid=FDGroups.FDID');
     sql.add(' where FDGroups.FDID is not null');
     sql.add('  and busers.Engname='''+cbx1.text+'''');
     //showmessage(sql.text);
     Active:=true;
  end;

  with QryCFM do
  begin
    active:=false;
    sql.Clear;
    SQL.add('select kfxxzl.xieming, ');
    SQL.add('isnull(XXZLKF.imgnamecfm,'+''''+''''+') as imgnamecfm,');
    SQL.add('isnull(KFXXZL.article,'+''''+''''+') as article,');
    SQL.add('isnull(KFXXZL.devcode,'+''''+''''+') as devcode,');
    SQL.add('isnull(KFXXZL.FD,'+''''+''''+') as FD,');
    SQL.add('isnull(KFXXZL.YSSM,'+''''+''''+') as YSSM,');
    SQL.add('isnull(case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end ,'+''''+''''+') as kflx,');
    SQL.add('isnull(kfxxzl.XTMH,'+''''+''''+') as XTMH,');
    SQL.add('isnull(kfxxzl.DDMH,'+''''+''''+') as DDMH,');
    SQL.add('isnull(xxzlkf.CTS,'+''''+''''+') as CTS,');
    SQL.add('isnull(xxzlkf.NA,'+''''+''''+') as NA,');
    SQL.add('isnull(xxzlkf.SS,'+''''+''''+') as SS,');
    SQL.add('isnull(KFXXZL.GENDER,'+''''+''''+') as GENDER,');
    SQL.add('isnull(ypzl.subtype,'+''''+''''+') as subtype,');
    SQL.add('isnull(ypzl.ProductionLocation,'''')  as ProductionLocation, ');
    SQL.add('isnull(kfxxzl.jijie,'''')  as season, ');
    sql.Add('CFM.* from CFM');
    sql.add('left join  kfxxzl on CFM.xiexing=kfxxzl.xiexing and CFM.shehao=kfxxzl.shehao');
    sql.add('left join  xxzlkf on CFM.xiexing=xxzlkf.xiexing and CFM.shehao=xxzlkf.shehao');
    sql.add('left join  ypzl on CFM.xiexing=ypzl.xiexing and CFM.shehao=ypzl.shehao');    
    SQL.add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD');
    SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
    SQL.add('where kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+'''');
    SQL.add('and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null)');
    SQL.add('and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null)');
    SQL.add('and kfxxzl.devcode <>''''');
    SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
    SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.add('and ypzl.kfjd =''CFM'' ');
    if cfmtype.text <> '' then
      SQL.add('and kfxxzl.devtype like '''+'%'+cfmtype.Text+'%'+'''');
    if cfmsubtype.text <> '' then
      SQL.add('and ypzl.subtype like '''+'%'+cfmsubtype.Text+'%'+''''); 
    if cfmarticle.Text <> '' then
      SQL.add('and kfxxzl.devcode like '''+'%'+cfmarticle.Text+'%'+'''');
    SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
    if teamCFM.Text <> '' then
      if team.Text = 'A'
      then SQL.add('and fdgroups.fdteam=''A'' ');
      if team.Text = 'B'
      then SQL.add('and fdgroups.fdteam=''B'' ');
      if team.Text = 'C'
      then SQL.add('and fdgroups.fdteam=''C'' ');
      if team.Text = 'SMU'
      then SQL.add('and fdgroups.fdteam=''SMU'' ');
    {if (main.Edit1.text<>'51022')   then//定義誰可改資料 其它只能查看
    begin
      SQL.add('and KFXXZL.fd= '+''''+startbasic.fieldbyname('engname').value+''' ');
    end;   }
    if cbx1.text <> '' then
    if (main.Edit1.text='51022') or (main.Edit1.text=tempQ.fieldbyname('TeamLeader').asstring)
                  or (main.Edit1.text=tempQ.fieldbyname('TeamLeader2').asstring) then//定義誰可改資料 其它只能查看
        SQL.add('and KFXXZL.fd= '+''''+cbx1.text+''' ')
      else
        SQL.add('and KFXXZL.fd= '+''''+startbasic.fieldbyname('engname').value+''' ')
    else if  main.Edit1.text<>'51022' then
        SQL.add('and KFXXZL.fd= '+''''+startbasic.fieldbyname('engname').value+''' ');

    showmessage(SQL.text);
    active:=true;
  end;
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=false;
  BitBtn5.Enabled:=false;
  with QryCFM do
  begin
    cachedupdates:=true;
    requestlive:=true;
    QryCFM.edit;
  end;
  BitBtn3.Enabled:=true;
  BitBtn4.Enabled:=true;
end;

procedure TSampleDevelopInformation.BitBtn3Click(Sender: TObject);
var
 i:integer;
begin
  try
    QryCFM.cachedupdates:=true;
    QryCFM.requestlive:=true;
    QryCFM.first;
    for i:=1 to QryCFM.RecordCount do
    begin
      case QryCFM.updatestatus of
      usmodified:
        begin
         QryCFM.edit;
         QryCFM.FieldByName('userdate').Value:=Ndate;
         QryCFM.FieldByName('userid').Value:=startbasic.fieldbyname('engname').value;
         UDCFM.apply(ukmodify);
         end;
         end;
      QryCFM.next;
    end;
   except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
 BitBtn1.Enabled:=true;
   BitBtn2.Enabled:=true;
   BitBtn5.Enabled:=true;
   BitBtn3.Enabled:=false;
   BitBtn4.Enabled:=false;
end;



procedure TSampleDevelopInformation.BitBtn5Click(Sender: TObject);
begin
    close;
end;

procedure TSampleDevelopInformation.BitBtn4Click(Sender: TObject);
begin
 with QryCFM do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
   BitBtn1.Enabled:=true;
   BitBtn2.Enabled:=true;
   BitBtn5.Enabled:=true;
   BitBtn3.Enabled:=false;
   BitBtn4.Enabled:=false;
end;

procedure TSampleDevelopInformation.qrykfxxzlAfterScroll(
  DataSet: TDataSet);
   // if cbb2.Text = 'R1' then       //R1~R3階段圖片
   //   shoePic:=qrykfxxzl.FieldByName('imgnameR1').Asstring;
   // if cbb2.Text = 'R1' then       //R1~R3階段圖片
   //   shoePic:=StringReplace(qrykfxxzl.FieldByName('imgnameR1').Asstring,'H:','\\192.168.23.11\bom', [rfReplaceAll, rfIgnoreCase]);
   // if cbb2.Text = 'R2' then
   //   shoePic:=StringReplace(qrykfxxzl.FieldByName('imgnameR2').Asstring,'H:','\\192.168.23.11\bom', [rfReplaceAll, rfIgnoreCase]);
   // if cbb2.Text = 'R3' then
   //   shoePic:=StringReplace(qrykfxxzl.FieldByName('imgnameR3').Asstring,'H:','\\192.168.23.11\bom', [rfReplaceAll, rfIgnoreCase]);
var ShoePic:string;
begin
   { ShoePic:=StringReplace(qrykfxxzl.FieldByName('imgnamecfm').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePic);
   if FileExists(ShoePic)=true then
      shoeimage.Picture.LoadFromFile(ShoePic);
    if FileExists(ShoePic)=false then
      shoeimage.Picture.Bitmap:=nil; }
end;

procedure TSampleDevelopInformation.saveas1Click(Sender: TObject);
begin
  if SaveDialog.Execute()=true then
  begin
    ShoeImage.Picture.SaveToFile(SaveDialog.FileName);
  end;

end;




procedure TSampleDevelopInformation.BitBtn10Click(Sender: TObject);
begin
   close;
end;

procedure TSampleDevelopInformation.BitBtn11Click(Sender: TObject);

begin
{  if main.Edit1.text='48862' then//定義誰可改資料 其它只能查看
  begin
    UPBTN.Enabled:=true;
  end;
  if main.Edit1.text='51022' then//定義誰可改資料 其它只能查看
  begin
    UPBTN.Enabled:=true;
  end;  }
   UPBTN.Enabled:=true;
  with gettime do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('Ndate').value;
    active:=false;
  end;
  with qryimage do
  begin
    active:=false;
    sql.Clear;
    SQL.add('select KFXXZL.Article,');
    SQL.add('KFXXZL.DEVCODE,');
    SQL.add('KFXXZL.FD,');
    SQL.add('XXZLKF.imgnamer1 as IMAGER1,');
    SQL.add('XXZLKF.imgnamer2 as IMAGER2,');
    SQL.add('XXZLKF.imgnamer3 as IMAGER3,');
    SQL.add('XXZLKF.imgnamer4 as IMAGER4,');
    SQL.add('XXZLKF.imgnameCFM as IMAGECFM,');
    SQL.add('KFXXZL.Xiexing,KFXXZL.Shehao');
    sql.Add(' from kfxxzl');
    SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
    sql.add('left join  xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao');
    sql.add('left join  ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
    SQL.add('where kfxxzl.jijie like '''+'%'+combobox2.Text+'%'+'''');
    SQL.add('and KFXXZL.DEVCODE <>''''');
    SQL.add('and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
    SQL.add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)and (xxzlkf.transfer<>''1'' or xxzlkf.transfer is null )');
    SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
    SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
    SQL.Add(' and len(kfxxzl.shehao) <3  ');
    if edit1.Text <> '' then
        SQL.add('and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
        SQL.add('and kfxxzl.Article like '''+'%'+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
        SQL.add('and kfxxzl.FD like '''+'%'+edit3.Text+'%'+'''');
    if combobox4.Text <> '' then
        SQL.add('and kfxxzl.devtype like '''+'%'+combobox4.Text+'%'+'''');
    if combobox6.Text <> '' then
        SQL.add('and ypzl.subtype like '''+'%'+combobox6.Text+'%'+'''');
    SQL.add('group by KFXXZL.Article,KFXXZL.DEVCODE,KFXXZL.FD,XXZLKF.imgnamer1,XXZLKF.imgnamer2,XXZLKF.imgnamer3,XXZLKF.imgnamer4,XXZLKF.imgnameCFM,KFXXZL.Xiexing,KFXXZL.Shehao');
    active:=true;

  end;
end;

procedure TSampleDevelopInformation.UPBTNClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
     sampleimg.Picture.LoadFromFile(OpenPictureDialog1.Filename);
     if sampleimg.picture.Graphic<>nil then
       begin
       SAVEBTN.enabled:=true;
       CancelBtn.enabled:=true;
       Shape1.Visible:=false;
       UPBTN.enabled:=false;
       end;
     if sampleimg.picture.Graphic=nil then
       begin
       Shape1.Visible:=true;
       UPBTN.enabled:=true;
       SAVEBTN.enabled:=false;
       CancelBtn.enabled:=false;
       end;
  combobox5.visible:=true;
end;
procedure TSampleDevelopInformation.SAVEBTNClick(Sender: TObject);
begin
  if  (combobox5.text='ChooseStage') then
  begin
    showmessage('ChooseStage');
  end else
//    if savesample.Execute()=true then
//    begin
//      sampleimg.Picture.SaveToFile(savesample.FileName);
      sampleimg.Picture.SaveToFile(OpenPictureDialog1.FileName);
      with saveimage do
      begin
        active:=false;
        sql.Clear;
        SQL.add('update xxzlkf set');
        if combobox5.text='R1' then
           SQL.add('imgnamer1 ');
        if combobox5.text='R2' then
           SQL.add('imgnamer2 ');
        if combobox5.text='R3' then
           SQL.add('imgnamer3 ');
        if combobox5.text='R4' then
           SQL.add('imgnamer4 ');
        if combobox5.text='CFM' then
           SQL.add('imgnameCFM ');
        SQL.add('= '''+OpenPictureDialog1.FileName+''' ');
        SQL.add('where xiexing = '''+DBEdit10.text+''' and shehao='''+DBEdit32.text+''' ');
        saveimage.ExecSQL();
      end;
      combobox5.visible:=false;
      combobox5.Text:='ChooseStage';
      sampleimg.Picture.Graphic:=nil;
      Shape1.Visible:=true;
      UPBTN.enabled:=true;
      SAVEBTN.enabled:=false;
      CancelBtn.enabled:=false;
      with qryimage do
      begin
        active:=false;
        sql.Clear;
        SQL.add('select KFXXZL.Article,');
        SQL.add('KFXXZL.DEVCODE,');
        SQL.add('KFXXZL.FD,');
        SQL.add('XXZLKF.imgnamer1 as IMAGER1,');
        SQL.add('XXZLKF.imgnamer2 as IMAGER2,');
        SQL.add('XXZLKF.imgnamer3 as IMAGER3,');
        SQL.add('XXZLKF.imgnamer4 as IMAGER4,');
        SQL.add('XXZLKF.imgnameCFM as IMAGECFM,');
        SQL.add('KFXXZL.Xiexing,KFXXZL.Shehao');
        sql.Add(' from kfxxzl');
        SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
        sql.add('left join  xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao');
        sql.add('left join  ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
        SQL.add('where kfxxzl.jijie like '''+'%'+combobox2.Text+'%'+'''');
        SQL.add('and (KFXXZL.Article <>'''' and KFXXZL.DEVCODE <>'''')');
        SQL.add('and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
        SQL.Add(' and len(kfxxzl.shehao) <3  ');
        SQL.add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)and (xxzlkf.transfer<>''1'' or xxzlkf.transfer is null )');
        if edit1.Text <> '' then
            SQL.add('and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+'''');
        if edit2.Text <> '' then
            SQL.add('and kfxxzl.Article like '''+'%'+edit2.Text+'%'+'''');
        if edit3.Text <> '' then
            SQL.add('and kfxxzl.FD like '''+'%'+edit3.Text+'%'+'''');
        if combobox4.Text <> '' then
            SQL.add('and kfxxzl.devtype like '''+'%'+combobox4.Text+'%'+'''');
        SQL.add('group by KFXXZL.Article,KFXXZL.DEVCODE,KFXXZL.FD,XXZLKF.imgnamer1,XXZLKF.imgnamer2,XXZLKF.imgnamer3,XXZLKF.imgnamer4,XXZLKF.imgnameCFM,KFXXZL.Xiexing,KFXXZL.Shehao');
        active:=true;
      end;
//    end;

    //UPBTN.Enabled:=false;
end;

procedure TSampleDevelopInformation.CancelBtnClick(Sender: TObject);
begin
  sampleimg.Picture.Graphic:=nil;
  Shape1.Visible:=true;
  UPBTN.enabled:=true;
  SAVEBTN.enabled:=false;
  CancelBtn.enabled:=false;
  //UPBTN.Enabled:=false;
  combobox5.visible:=false;
end;


procedure TSampleDevelopInformation.QryIMAGEAfterScroll(DataSet: TDataSet);
var ShoePicR1,ShoePicR2,ShoePicR3,ShoePicCFM:string;
begin
  {  shoePicR1:=StringReplace(qryimage.FieldByName('imager1').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicR1);
   if FileExists(shoePicR1)=true then
      testimageR1.Picture.LoadFromFile(shoePicR1);
    if FileExists(shoePicR1)=false then
      testimageR1.Picture.Bitmap:=nil;

    shoePicR2:=StringReplace(qryimage.FieldByName('imager2').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicR2);
   if FileExists(shoePicR2)=true then
      testimageR2.Picture.LoadFromFile(shoePicR2);
    if FileExists(shoePicR2)=false then
      testimageR2.Picture.Bitmap:=nil;

    shoePicR3:=StringReplace(qryimage.FieldByName('imager3').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicR3);
   if FileExists(shoePicR3)=true then
      testimageR3.Picture.LoadFromFile(shoePicR3);
    if FileExists(shoePicR3)=false then
      testimageR3.Picture.Bitmap:=nil;

    shoePicCFM:=StringReplace(qryimage.FieldByName('imageCFM').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicCFM);
   if FileExists(shoePicCFM)=true then
      testimageCFM.Picture.LoadFromFile(shoePicCFM);
    if FileExists(shoePicCFM)=false then
      testimageCFM.Picture.Bitmap:=nil;   }
end;

procedure TSampleDevelopInformation.excel1Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j:integer;
  picture : OleVariant;
  workRange : OleVariant;
  workSheet : OleVariant;
  checkshoePic : string;
begin
    exceloutlb.Visible:=true;
    excelout.Visible:=true;

  if  qrykfxxzl.active  then
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
   // eclApp.Columns[1].ColumnWidth := 6; //設定欄寬
 //   eclApp.Cells(1,1):='Type';
    for   i:=0   to   qrykfxxzl.fieldcount-1   do
    begin
       eclApp.Cells(1,i+1):=qrykfxxzl.fields[i].FieldName;
    end;


    qrykfxxzl.First;
    j:=2;
    while   not  qrykfxxzl.Eof   do
    begin
      for   i:=0   to   qrykfxxzl.fieldcount-1 do
      begin
       // eclApp.Cells(j,1):=j-1;
        eclApp.Cells(j,1+i):=qrykfxxzl.Fields[i].AsString;
        eclApp.Cells(j,3):='';
        excelout.caption:=inttostr(j-1);
      end;
      eclApp.Rows[j].RowHeight := 50;
      checkshoePic:=StringReplace(qrykfxxzl.FieldByName('imgnamecfm').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
      funcObj.WriteErrorLog(checkshoePic);
      if FileExists(checkshoePic)=true then
      begin
        workSheet := workBook.WorkSheets[1];
        eclApp.WorkSheets[1].Activate;//第一頁為主
        workSheet.Select;
        workRange :=workSheet.Range[workSheet.Cells.Item[j,3],workSheet.Cells.item[j,3]]; //目?位置
        picture := workSheet.pictures.Insert(qrykfxxzl.FieldByName('imgnamecfm').asstring);
        picture.left := workRange.left + 1; //左
        picture.top := workRange.top + 1; //高
        picture.width := workRange.width - 2; //?度
        picture.height := workRange.height - 2; //高度
        picture := Unassigned;
      end;
        qrykfxxzl.Next;
        inc(j);
      end;
      showmessage('Succeed.');
      eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
      eclApp.Visible:=True;
      except
      on   F:Exception   do
        showmessage(F.Message);
      end;
end;

procedure TSampleDevelopInformation.EXCEL2Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j,temp1,temp2:integer;
  picture : OleVariant;
  workRange : OleVariant;
  workSheet : OleVariant;
  checkshoePic : string;
  
begin

    with excelcfm do
    begin
      active:=false;
      sql.Clear;
      SQL.add('select xxzlkf.imgnameCFM,kfxxzl.XieMing,');
      SQL.add('kfxxzl.devcode,xxzl.article,kfxxzl.YSSM,');
      SQL.add('case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end  as kflx,kfxxzl.gender,xxzlkf.ss,');
      SQL.add('kfxxzl.xtmh,kfxxzl .ddmh,');
      SQL.add('cfm.pcdate,cfm.rldate,cfm.PCStatus,');
      SQL.add('cfm.Override,cfm.idd,cfm.IBM,');
      SQL.add('cfm.CFMSFD,cfm.CcolorFD,cfm.CspecSD, ');
      SQL.add('cfm.CcolorSD,cfm.CshoeSD,cfm.booktw,');
      SQL.add('cfm.bookchina,cfm.BOOKLYNDC,cfm.CSTW,');
      SQL.add('cfm.CSLYNDC,cfm.A4TW,cfm.A4CHINA,');
      SQL.add(' cfm.A4LYNDC,xxzlkf.NA,xxzlkf.CTS,KFXXZL.FD,YPZL.ProductionLocation ');
      sql.Add('from cfm');
      sql.add('left join  kfxxzl on cfm.xiexing=kfxxzl.xiexing and cfm.shehao=kfxxzl.shehao');
      sql.add('left join  xxzl on CFM.xiexing=xxzl.xiexing and CFM.shehao=xxzl.shehao');
      sql.add('left join  xxzlkf on cfm.xiexing=xxzlkf.xiexing and cfm.shehao=xxzlkf.shehao');
      sql.add('left join  (select xiexing,shehao,kfjd,subtype,ProductionLocation from ypzl group by xiexing,shehao,kfjd,subtype,ProductionLocation)ypzl on CFM.xiexing=ypzl.xiexing and CFM.shehao=ypzl.shehao');
      SQL.add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD');
      SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      SQL.add('where kfxxzl.jijie like '''+'%'+combobox1.Text+'%'+'''');
      SQL.add('and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null)');
      SQL.add('and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null)');
      SQL.add('and ypzl.kfjd =''CFM'' ');      
      if notall.Checked then
         SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
         SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
      SQL.add('and kfxxzl.devcode <>''''');
      if cfmtype.text <> '' then
         SQL.add('and kfxxzl.devtype like '''+'%'+cfmtype.Text+'%'+'''');
      if cfmsubtype.text <> '' then
         SQL.add('and ypzl.subtype like '''+'%'+cfmsubtype.Text+'%'+'''');
      if cbx1.text <> '' then
        SQL.add('and KFXXZL.fd= '+''''+cbx1.text+''' ');
      if cfmarticle.Text <> '' then
        SQL.add('and kfxxzl.devcode like '''+'%'+cfmarticle.Text+'%'+'''');
      SQL.add('and kfzl_GS.GSBH= '''+ main.Edit2.Text+''' ');
      if teamcfm.Text <> '' then
        if teamcfm.Text = 'A'
          then SQL.add('and fdgroups.fdteam=''A'' ');
        if teamcfm.Text = 'B'
          then SQL.add('and fdgroups.fdteam=''B'' ');
        if teamcfm.Text = 'C'
          then SQL.add('and fdgroups.fdteam=''C'' ');
        if teamcfm.Text = 'SMU'
          then SQL.add('and fdgroups.fdteam=''SMU'' ');
      Active:=true;
    end;
    if  excelcfm.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(2,1):='Type';
    eclApp.Cells(2,2):='Picture';
    eclApp.Cells(2,3):='Project Name';
    eclApp.Cells(2,4):='SR#';
    eclApp.Cells(2,5):='SKU#';
    eclApp.Cells(2,6):='Colorway';
    eclApp.Cells(2,7):='Tech Level';
    eclApp.Cells(2,8):='Gender';
    eclApp.Cells(2,9):='Size';
    eclApp.Cells(2,10):='Last#';
    eclApp.Cells(2,11):='Outsole#';
    eclApp.Cells(2,12):='PC Date';
    eclApp.Cells(2,13):='Release date';
    eclApp.Cells(2,14):='PC Status(Release/On Hold)';
    eclApp.Cells(2,15):='Override(Approval/No)';
    eclApp.Cells(2,16):='IDD#';
    eclApp.Cells(2,17):='Initial Buy Month';
    eclApp.Cells(2,18):='CFM shoe finished date';
    eclApp.Cells(2,19):='CFM color Swatch book finished date';
    eclApp.Cells(2,20):='CFM spec CTS sign date';
    eclApp.Cells(2,21):='CFM color Swatch book CTS sign date';
    eclApp.Cells(2,22):='CFM shoe CTS sign date';
    eclApp.Cells(2,23):='Date-TW(1set)';
    eclApp.Cells(2,24):='Date-China(1set)';
    eclApp.Cells(2,25):='Date-LYNDC PI(2 set)';
    eclApp.Cells(2,26):='Date-TW(0.5pair)';
    eclApp.Cells(2,27):='Date-LYNDC PI(3 pairs)';
    eclApp.Cells(2,28):='Date-TW(1 set)';
    eclApp.Cells(2,29):='Date-China(1 set)';
    eclApp.Cells(2,30):='Date-LYNDC PI(2 set)';
    eclApp.Cells(2,31):='N.A Developer';
    eclApp.Cells(2,32):='CTS Developer';
    eclApp.Cells(2,33):='Fcty Developer';
    eclApp.Cells(2,34):='Production Location';
    excelcfm.First;
    j:=3;
    while   not  excelcfm.Eof   do
    begin
      for   i:=1   to   excelcfm.fieldcount do
      begin
        eclApp.Cells(j,1):=j-2;
        eclApp.Cells(j,1+i):=excelcfm.Fields[i-1].AsString;
        eclApp.Rows[j].WrapText  := True;
        eclApp.Cells(j,2):='';
      end;
      eclApp.Rows[j].RowHeight := 50;
      checkshoePic:=StringReplace(excelcfm.FieldByName('imgnameCFM').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
      funcObj.WriteErrorLog(checkshoePic);
      if FileExists(checkshoePic)=true then
      begin
        workSheet := workBook.WorkSheets[1];
        eclApp.WorkSheets[1].Activate;//第一頁為主
        workSheet.Select;
        workRange :=workSheet.Range[workSheet.Cells.Item[j,2],workSheet.Cells.item[j,2]]; //目?位置
        picture := workSheet.pictures.Insert(StringReplace(excelcfm.FieldByName('imgnameCFM').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]));
        picture.left := workRange.left + 1; //左
        picture.top := workRange.top + 1; //高
        picture.width := workRange.width - 2; //?度
        picture.height := workRange.height - 2; //高度
        picture := Unassigned;
      end;
        excelcfm.Next;
        inc(j);
      end;
      showmessage('Succeed.');
      eclapp.columns.autofit;
      eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
      eclApp.Visible:=True;
      except
      on   F:Exception   do
        showmessage(F.Message);
      end;
end;
procedure TSampleDevelopInformation.BitBtn12Click(Sender: TObject);   //R1 Query
begin
   if copy(r1season.text,1,2)='16' then
      QuerySample(bitbtn16,bitbtn13,bitbtn15,'R1Sample',checkR1,R1Season,R1article,r1FD,teamr1,r1type,r1subtype,Qryr1,'pro',r1subtpdb,showsizer1,'imgnameR1',r1lai);
   if copy(r1season.text,1,2)<>'16' then
      if r1type.text<>'SMU' then
         QuerySample(bitbtn16,bitbtn13,bitbtn15,'R1Sample',checkR1,R1Season,R1article,r1FD,teamr1,r1type,r1subtype,Qryr1,'CR1',r1subtpdb,showsizer1,'imgnameR1',r1lai);
      if r1type.text='SMU' then
         QuerySample(bitbtn16,bitbtn13,bitbtn15,'R1Sample',checkR1,R1Season,R1article,r1FD,teamr1,r1type,r1subtype,Qryr1,'CR1'',''SU1',r1subtpdb,showsizer1,'imgnameR1',r1lai);

end;

procedure TSampleDevelopInformation.BitBtn13Click(Sender: TObject);   //R1 Modify
begin
   menumodifySample(bitbtn13,bitbtn14,bitbtn15,bitbtn12);
end;

procedure TSampleDevelopInformation.BitBtn15Click(Sender: TObject);   //R1 Cancel
begin
   menucancelSample(bitbtn16,bitbtn12,bitbtn13,bitbtn14,bitbtn15,Qryr1);
end;

procedure TSampleDevelopInformation.BitBtn14Click(Sender: TObject);   //R1 Save
begin
   menusaveSample(bitbtn16,bitbtn12,bitbtn13,bitbtn14,bitbtn15,saver1,Qryr1);
end;

procedure TSampleDevelopInformation.r2bbt1Click(Sender: TObject);  //R2 Query
begin
   if copy(r2season.text,1,2)='16' then
      QuerySample(r2bbt5,r2bbt2,r2bbt4,'R2Sample',checkR2,R2Season,R2article,r2FD,teamr2,r2type,r2subtype,Qryr2,'sm2',r2subtpdb,showsizer2,'imgnameR2',r2lai);
   if copy(r2season.text,1,2)<>'16' then
      if r2type.text<>'SMU' then
         QuerySample(r2bbt5,r2bbt2,r2bbt4,'R2Sample',checkR2,R2Season,R2article,r2FD,teamr2,r2type,r2subtype,Qryr2,'CR2',r2subtpdb,showsizer2,'imgnameR2',r2lai);
      if r2type.text='SMU' then
         QuerySample(r2bbt5,r2bbt2,r2bbt4,'R2Sample',checkR2,R2Season,R2article,r2FD,teamr2,r2type,r2subtype,Qryr2,'CR2'',''SU2',r2subtpdb,showsizer2,'imgnameR2',r2lai);


end;

procedure TSampleDevelopInformation.r2bbt2Click(Sender: TObject);   //R2 Modify
begin
   menumodifySample(r2bbt2,r2bbt3,r2bbt4,r2bbt1);
end;

procedure TSampleDevelopInformation.r2bbt3Click(Sender: TObject);   //R2 Save
begin
   menusaveSample(r2bbt5,r2bbt1,r2bbt2,r2bbt3,r2bbt4,saver2,Qryr2);
end;

procedure TSampleDevelopInformation.r2bbt4Click(Sender: TObject);     //R2 Cancel
begin
   menucancelSample(r2bbt5,r2bbt1,r2bbt2,r2bbt3,r2bbt4,Qryr2);
end;

procedure TSampleDevelopInformation.BitBtn16Click(Sender: TObject);
begin
    close;
end;

procedure TSampleDevelopInformation.r2bbt5Click(Sender: TObject);
begin
    close;
end;

procedure TSampleDevelopInformation.r3bbt1Click(Sender: TObject);    //R3 Query
begin
   if copy(r3season.text,1,2)='16' then
      QuerySample(r3bbt5,r3bbt2,r3bbt4,'R3Sample',checkR3,R3Season,R3article,r3FD,teamr3,r3type,r3subtype,Qryr3,'sm3',r3subtpdb,showsizer3,'imgnameR3',r3lai);
   if copy(r3season.text,1,2)<>'16' then
      if r3type.text<>'SMU' then
         QuerySample(r3bbt5,r3bbt2,r3bbt4,'R3Sample',checkR3,R3Season,R3article,r3FD,teamr3,r3type,r3subtype,Qryr3,'SMS'',''CR3',r3subtpdb,showsizer3,'imgnameR3',r3lai);
      if r3type.text='SMU' then
         QuerySample(r3bbt5,r3bbt2,r3bbt4,'R3Sample',checkR3,R3Season,R3article,r3FD,teamr3,r3type,r3subtype,Qryr3,'CR3'',''SU3'',''SMS',r3subtpdb,showsizer3,'imgnameR3',r3lai);
end;

procedure TSampleDevelopInformation.QuerySample(Ebn:Tbitbtn;Mbn:Tbitbtn;Cbn:Tbitbtn;TBname:String;checkETA:TcheckBox;
Season:Tcombobox;article:Tedit;FD:TCombobox;Team:Tcombobox;Stype:Tcombobox;Subtype:Tcombobox;Qryname:TQuery;Stage:string;subTPDB:TDBCombobox;showsize:TcheckBox;imgname:string;lai:Tcombobox);
begin

  with gettime do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('Ndate').value;
    active:=false;
  end;

  with MaterialMonitor do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ''Uppers'' as Parts,jijie Season,main.Stage,SRDet_ML.admindate UpdateDate from (select kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl');
    sql.Add('left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao');
    sql.Add('where  kfxxzl.jijie = '''+season.Text+'''  and ypzl.kfjd in ( '''+Stage+''' ) ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd)main');
    sql.Add('left join (select season,stage,admindate from SRDet_ML group by season,stage,admindate )SRDet_ML on SRDet_ML.season=main.jijie and SRDet_ML.stage=main.Stage');
    sql.Add('union');
    sql.Add('select ''Stitching'' as Parts ,jijie Season,main.Stage,SRDet_FML.admindate UpdateDate from (select kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl');
    sql.Add('left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao');
    sql.Add('where  kfxxzl.jijie = '''+season.Text+'''  and ypzl.kfjd in ( '''+Stage+''' ) ');
    sql.Add('group by kfxxzl.jijie,ypzl.kfjd)main');
    sql.Add('left join (select season,stage,admindate from SRDet_FML group by season,stage,admindate )SRDet_FML on SRDet_FML.season=main.jijie and SRDet_FML.stage=main.Stage');
    active:=true;
  end;
if modifynum=1 then
  with tempQ do
  begin
    active:=false;
    sql.Clear;
     sql.add('select TeamLeader,TeamLeader2 from FDGroups');
     sql.add('left join FDGroup on FDGroup.FDTeam=FDGroups.FDTeam');
     sql.add('left join busers on busers.userid=FDGroups.FDID');
     sql.add(' where FDGroups.FDID is not null');
     sql.add('  and busers.Engname='''+FD.text+'''');
     //showmessage(sql.text);
     Active:=true;
  end;
     with Qryname do
       begin
       active:=false;
       sql.Clear;
       SQL.add('select ');
       SQL.add('ypzl.FD as FD,ypzl.ypdh,');
       SQL.add('isnull(KFXXZL.YSSM,'+''''+''''+') as YSSM,');
       sql.Add('case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end  as kflx,');
       //sql.Add('xxzlkf.TechLevel_Flex as kflx,');
       SQL.add('isnull(kfxxzl.XTMH,'+''''+''''+') as XTMH,');
       SQL.add('isnull(kfxxzl.DDMH,'+''''+''''+') as DDMH,');
       SQL.add('isnull(kfxxzl.XieMing,'+''''+''''+') as XieMing,');
       SQL.add('isnull(kfxxzl.article,'+''''+''''+') as article,');

       if main.Edit2.Text = 'SKX' then
         SQL.add('isnull(kfxxzl.devcode,'+''''+''''+') +'+''' / '''+'+ kfxxzl.YSSM as devcode,')
       else
         SQL.add('isnull(kfxxzl.devcode,'+''''+''''+') as devcode,');

       SQL.add('isnull(xxzlkf.'+imgname+','''') as '+imgname+',');
       SQL.add('isnull(xxzlkf.CTS,'+''''+''''+') as CTS,');
       SQL.add('isnull(xxzlkf.NA,'+''''+''''+') as NA,');
       SQL.add('isnull(KFXXZL.GENDER,'+''''+''''+') as GENDER,');
       SQL.add('isnull(ypzl.subtype,'+''''+''''+') as subtype,');
       //2019-05-30 Alex 修改
       SQL.Add(''+TBname+'.xiexing,'+TBname+'.shehao,'+TBname+'.userid,'+TBname+'.userdate,'+TBname+'.tpdate,'+TBname+'.status,'+TBname+'.rsd,'+TBname+'.ctsi,');
       SQL.Add(''+TBname+'.setc,'+TBname+'.total,'+TBname+'.oq,'+TBname+'.testing,');
       SQL.Add(''+TBname+'.mfrd,'+TBname+'.dps_NTSR,'+TBname+'.pi,'+TBname+'.rrsrd,'+TBname+'.ps,'+TBname+'.remarks,'+TBname+'.fit,'+TBname+'.SQ,'+TBname+'.pullcfmdate,');
       SQL.Add(''+TBname+'.wear,ypzl.subtype,xxzlkf.'+imgname+',ypzl.ProductionLocation,'+TBname+'.Component_Qty,'+TBname+'.Lasted_Upper_Qty,'+TBname+'.Finished_shoe_Qty,');
       SQL.Add(''+TBname+'.Half_Stitching_Qty,'+TBname+'.Costing_Qty,'+TBname+'.IE_Qty,');
       //2019-05-30 Alex 新增
       SQL.Add('cast(ISNULL(Component_Qty, 0) as float )+cast(ISNULL(Lasted_Upper_Qty, 0) as float )+cast(ISNULL(Finished_shoe_Qty, 0) as float )+cast(ISNULL(Half_Stitching_Qty, 0) as float )+ cast(ISNULL(IE_Qty, 0) as float )+');
       SQL.Add('cast(ISNULL(Costing_Qty, 0) as float )+cast(ISNULL(SQ, 0) as float )+cast(ISNULL(testing, 0) as float )+cast(ISNULL(OQ, 0) as float ) as Total_Qty, ');
       //
       SQL.Add('isnull(ypzl.ProductionLocation,'''') as ProductionLocation ');
       sql.Add('from '+TBname);
       sql.Add('left join  kfxxzl on '+TBname+'.xiexing=kfxxzl.xiexing and '+TBname+'.shehao=kfxxzl.shehao');
       sql.Add('left join  xxzlkf on '+TBname+'.xiexing=xxzlkf.xiexing and '+TBname+'.shehao=xxzlkf.shehao');
       SQL.Add('left join Fdgroups on Fdgroups.fdname=kfxxzl.FD');
       SQL.Add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
       SQL.Add('left join ypzl on ypzl.xiexing='+TBname+'.xiexing and ypzl.shehao='+TBname+'.shehao');
       SQL.Add('where kfxxzl.jijie like '''+'%'+season.Text+'%'+'''');
       SQL.Add('and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null)');
       SQL.Add('and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null)');
       SQL.Add('and ypzl.kfjd in ( '''+Stage+''' ) ');
       if checkbox2.Checked then
          SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
          SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
       SQL.add('and kfxxzl.devcode <>''''');
       if Stype.text <> '' then
         SQL.add('and kfxxzl.devtype like '''+'%'+Stype.Text+'%'+'''');
       if Subtype.text <> '' then
         SQL.add('and ypzl.subtype like '''+'%'+Subtype.Text+'%'+'''');
       if FD.text <> '' then
         SQL.add('and ypzl.fd= '+''''+FD.text+''' ');
       if Article.Text <> '' then
         SQL.add('and kfxxzl.devcode like '''+'%'+Article.Text+'%'+'''');
       SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
       if Team.Text <> '' then
         if Team.Text = 'A'
         then SQL.add('and fdgroups.fdteam=''A'' ');
         if Team.Text = 'B'
         then SQL.add('and fdgroups.fdteam=''B'' ');
         if Team.Text = 'C'
         then SQL.add('and fdgroups.fdteam=''C'' ');
         if Team.Text = 'SMU'
         then SQL.add('and fdgroups.fdteam=''SMU'' ');
       if modifynum=1 then
          begin
             if (main.Edit1.text<>'48862') and (main.Edit1.text<>tempQ.fieldbyname('TeamLeader').asstring)  and (main.Edit1.text<>tempQ.fieldbyname('TeamLeader2').asstring) then//定義誰可改資料 其它只能查看
                begin
                   SQL.add('and ypzl.fd= '+''''+startbasic.fieldbyname('engname').value+''' ');
                end;
             if (main.Edit1.text='48862') or (main.Edit1.text<>tempQ.fieldbyname('TeamLeader').asstring)  or (main.Edit1.text<>tempQ.fieldbyname('TeamLeader2').asstring) then//定義誰可改資料 其它只能查看
                begin
                   if fd.text <> '' then
                      SQL.add('and ypzl.fd= '+''''+fd.text+''' ');
                end;
          end;
       if lai.text<>'' then SQL.add('and left(ypzl.ypdh,4)='''+lai.text+''' ');
       SQL.add('group by ypzl.ypdh,ypzl.FD,YSSM,kfxxzl.KFLX,XTMH,DDMH,kfxxzl.XieMing,kfxxzl.Article,devcode,CTS,NA,');
       SQL.add('gender,'+TBname+'.xiexing,'+TBname+'.shehao,');
       SQL.add(''+TBname+'.userid,'+TBname+'.userdate,'+TBname+'.tpdate,'+TBname+'.status,'+TBname+'.rsd,'+TBname+'.ctsi,');
       SQL.add(''+TBname+'.setc,'+TBname+'.total,'+TBname+'.oq,'+TBname+'.testing,');
       SQL.add(''+TBname+'.mfrd,'+TBname+'.dps_NTSR,'+TBname+'.pi,'+TBname+'.rrsrd,'+TBname+'.ps,'+TBname+'.remarks,'+TBname+'.fit,'+TBname+'.SQ,'+TBname+'.pullcfmdate,');
       SQL.add(''+TBname+'.wear,ypzl.subtype,xxzlkf.'+imgname+',ypzl.ProductionLocation,'+TBname+'.Component_Qty,'+TBname+'.Lasted_Upper_Qty,'+TBname+'.Finished_shoe_Qty,');
       SQL.add(''+TBname+'.Half_Stitching_Qty,'+TBname+'.Costing_Qty,'+TBname+'.IE_Qty');
       SQL.add('order by kfxxzl.devcode');
       //showmessage(sql.text);
       active:=true;
       Ebn.Enabled:=false;
       Mbn.Enabled:=true;
       Cbn.Enabled:=true;
       tempQ.Active:=false;
       if modifynum=1 then
       begin
          cachedupdates:=true;
          requestlive:=true;
          qryname.edit;
       end;
     end;
  if Stype.Text='' then
     begin
        subTPDB.Items.Add('');
        subTPDB.Items.Add('Inline');
        subTPDB.Items.Add('QuickStrike');
        subTPDB.Items.Add('Transfer');
        subTPDB.Items.Add('Offline');
        subTPDB.Items.Add('');
        subTPDB.Items.Add('SMU');
        subTPDB.Items.Add('Segment');
     end;

end;

procedure TSampleDevelopInformation.r3bbt2Click(Sender: TObject);  //R3 Modify
begin
   menumodifySample(r3bbt2,r3bbt3,r3bbt4,r3bbt1);
end;
procedure TSampleDevelopInformation.menumodifySample(Mbn:TBitBtn;Sbn:TBitBtn;Cbn:TBitBtn;Qbn:TBitBtn);
begin
  Mbn.Enabled:=false;
  Sbn.Enabled:=true;
  Cbn.Enabled:=true;
  modifynum:=1;
  Qbn.Click;

end;

procedure TSampleDevelopInformation.r3bbt3Click(Sender: TObject); //R3 Save
begin
   menusaveSample(r3bbt5,r3bbt1,r3bbt2,r3bbt3,r3bbt4,saver3,Qryr3);
end;

procedure TSampleDevelopInformation.menusaveSample(Ebn:Tbitbtn;Qbn:Tbitbtn;Mbn:Tbitbtn;Sbn:Tbitbtn;Cbn:Tbitbtn;saveqry:TupdateSQL;Qryname:TQuery);
var
 i:integer;
begin
  try
    Qryname.cachedupdates:=true;
    Qryname.requestlive:=true;
    Qryname.first;
    for i:=1 to Qryname.RecordCount do
    begin
      case Qryname.updatestatus of
      usmodified:
        begin
         Qryname.edit;
         Qryname.FieldByName('userdate').Value:=Ndate;
         Qryname.FieldByName('userid').Value:=startbasic.fieldbyname('engname').value;
         saveqry.apply(ukmodify);
         end;
         end;
      Qryname.next;
    end;
   except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
   Ebn.Enabled:=true;
   Qbn.Enabled:=true;
   Mbn.Enabled:=true;
   Sbn.Enabled:=false;
   Cbn.Enabled:=false;
   modifynum:=0;
end;

procedure TSampleDevelopInformation.r3bbt4Click(Sender: TObject);  //R3 Cancel
begin
   menucancelSample(r3bbt5,r3bbt1,r3bbt2,r3bbt3,r3bbt4,Qryr3);
end;

procedure TSampleDevelopInformation.menucancelSample(Ebn:Tbitbtn;Qbn:Tbitbtn;Mbn:Tbitbtn;Sbn:Tbitbtn;Cbn:Tbitbtn;qryname:Tquery);
begin
  with qryname do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Ebn.Enabled:=true;
  Qbn.Enabled:=true;
  Mbn.Enabled:=true;
  Sbn.Enabled:=false;
  Cbn.Enabled:=false;
  modifynum:=0;  
end;

procedure TSampleDevelopInformation.r3bbt5Click(Sender: TObject);
begin
    close;
end;

procedure TSampleDevelopInformation.R1ExcelClick(Sender: TObject);    //R1 Excel
begin
   if copy(r1season.text,1,2)='16' then
      ExcelSample(ExcelR1,'imgnameR1','R1Sample',R1Season,'pro',r1type,r1subtype,r1FD,r1article,teamr1,SRDet_MLR1,SRDet_FMLR1,checkr1,memor1,showsizer1,r1LAI);
   if copy(r1season.text,1,2)<>'16' then
      if r1type.text<>'SMU' then
         ExcelSample(ExcelR1,'imgnameR1','R1Sample',R1Season,'CR1',r1type,r1subtype,r1FD,r1article,teamr1,SRDet_MLR1,SRDet_FMLR1,checkr1,memor1,showsizer1,r1LAI);
      if r1type.text='SMU' then
         ExcelSample(ExcelR1,'imgnameR1','R1Sample',R1Season,'CR1'',''SU1',r1type,r1subtype,r1FD,r1article,teamr1,SRDet_MLR1,SRDet_FMLR1,checkr1,memor1,showsizer1,r1LAI);
end;

procedure TSampleDevelopInformation.R2ExcelClick(Sender: TObject);  //R2 Excel
begin
   if copy(r2season.text,1,2)='16' then
      ExcelSample(ExcelR2,'imgnameR2','R2Sample',R2Season,'sm2',r2type,r2subtype,r2FD,r2article,teamr2,SRDet_MLR2,SRDet_FMLR2,checkr2,memor2,showsizer2,r2LAI);
   if copy(r2season.text,1,2)<>'16' then
      if r2type.text<>'SMU' then
         ExcelSample(ExcelR2,'imgnameR2','R2Sample',R2Season,'CR2',r2type,r2subtype,r2FD,r2article,teamr2,SRDet_MLR2,SRDet_FMLR2,checkr2,memor2,showsizer2,r2LAI);
      if r2type.text='SMU' then
         ExcelSample(ExcelR2,'imgnameR2','R2Sample',R2Season,'CR2'',''SU2',r2type,r2subtype,r2FD,r2article,teamr2,SRDet_MLR2,SRDet_FMLR2,checkr2,memor2,showsizer2,r2LAI);
end;

procedure TSampleDevelopInformation.R3ExcelClick(Sender: TObject);    //R3 Excel
begin
   if copy(r3season.text,1,2)='16' then
      ExcelSample(ExcelR3,'imgnameR3','R3Sample',R3Season,'sm3',r3type,r3subtype,r3FD,r3article,teamr3,SRDet_MLR3,SRDet_FMLR3,checkr3,memor3,showsizer3,r3LAI);
   if copy(r3season.text,1,2)<>'16' then
      if r3type.text<>'SMU' then
         ExcelSample(ExcelR3,'imgnameR3','R3Sample',R3Season,'CR3'',''SMS',r3type,r3subtype,r3FD,r3article,teamr3,SRDet_MLR3,SRDet_FMLR3,checkr3,memor3,showsizer3,r3LAI);
      if r3type.text='SMU' then
         ExcelSample(ExcelR3,'imgnameR3','R3Sample',R3Season,'CR3'',''SU3'',''SMS',r3type,r3subtype,r3FD,r3article,teamr3,SRDet_MLR3,SRDet_FMLR3,checkr3,memor3,showsizer3,r3LAI);
end;
procedure TSampleDevelopInformation.Excelsample(Qryname:TQuery;imgname:String;TBname:String;season:Tcombobox;stage:string;Stype:Tcombobox;
          subtype:Tcombobox;FD:Tcombobox;Article:Tedit;team:Tcombobox;SRDet_ML:TQuery;SRDet_FML:TQuery;check:Tcheckbox;memo:Tmemo;showsize:TcheckBox;LAI:Tcombobox);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j,k,temp1,temp2:integer;
  picture : OleVariant;
  workRange : OleVariant;
  workSheet : OleVariant;
  checkshoePic,MLETD,FMLETD,MLETDNULL,FMLETDNULL,MLNEWETD,FMLNEWETD: string;   //MLNEWETD,FMLNEWETD判斷是否為NEWETD
BEGIN
    with Qryname do
    begin
      active:=false;
      sql.Clear;
      //1-5
      SQL.add('select DENSE_RANK() over (order by kfxxzl.devcode) as Type,');
      SQL.add('xxzlkf.'+imgname+' , ');
      SQL.add(''+TBname+'.tpdate,');
      SQL.add('kfxxzl.XieMing,');
      SQL.add('kfxxzl.devcode,');
      //6-10
      SQL.add('kfxxzl.YSSM,');
      //SQL.add(''+TBname+'.status,');
      //sql.Add('case when kfxxzl.kflx = ''MU'' then ''NM'' when  kfxxzl.kflx = ''CU'' then ''NC'' else kfxxzl.kflx end  as kflx,');
      sql.Add('case kfxxzl.KFLX when ''CU'' then ''NC'' when ''MU'' then ''NM'' when ''MU+'' then ''NM+'' else kfxxzl.KFLX end  as kflx,');
      SQL.add('kfxxzl.Gender,');
      SQL.add('ypzl.ypcc as Size,');
      SQL.add('kfxxzl.xtmh as Last,');
      //11-15
      SQL.add('kfxxzl.ddmh as Outsole,');
      SQL.add(''+TBname+'.ps as Pullover_Status,');
      SQL.add(''+TBname+'.rrsrd as Pullover_Finished_Date,');
      SQL.add(''+TBname+'.PullCFMDate,');
      SQL.add(''+TBname+'.pi as Pending_issue,');
      //16-20
      SQL.add(''+TBname+'.DPS_NTSR as  Notice_to_Sample_Room,');
      SQL.add(''+TBname+'.MFRD,');
      SQL.Add(''+TBname+'.Component_Qty,');
      SQL.Add(''+TBname+'.Lasted_Upper_Qty,');
      SQL.Add(''+TBname+'.Finished_shoe_Qty,');
      //21-25
      SQL.Add(''+TBname+'.Half_Stitching_Qty,');
      SQL.add(''+TBname+'.SQ as ShippingQty, ');
      SQL.add(''+TBname+'.fit, ');
      SQL.add(''+TBname+'.wear,  ');
      SQL.add(''+TBname+'.testing,  ');
      //26-30
      SQL.add(''+TBname+'.OQ,');
      SQL.add(''+TBname+'.IE_Qty,');
      SQL.Add('cast(ISNULL(Component_Qty, 0) as float )+cast(ISNULL(Lasted_Upper_Qty, 0) as float )+cast(ISNULL(Finished_shoe_Qty, 0) as float )+cast(ISNULL(Half_Stitching_Qty, 0) as float )+cast(ISNULL(IE_Qty, 0) as float )+ ');
      SQL.Add('cast(ISNULL(Costing_Qty, 0) as float )+cast(ISNULL(SQ, 0) as float )+cast(ISNULL(testing, 0) as float )+cast(ISNULL(OQ, 0) as float ) as Total_Qty, ');
      SQL.add('shoetest.cutdate,');
      SQL.add('shoetest.stitchingDate,');
      SQL.add('shoetest.complete, ');
      //31-35
      SQL.add(''+TBname+'.SETC, ');
      SQL.add(''+TBname+'.CTSI,');
      SQL.add(''+TBname+'.rsd,');
      SQL.add('xxzlkf.CTS,');
      SQL.add('xxzlkf.NA,');
      //36-40

      SQL.add('ypzl.FD,');
      SQL.add('xxzlkf.category,');
      SQL.add('YPZL.ProductionLocation,');
    //  SQL.Add(''+TBname+'.IE_Qty,');
      SQL.add(''+TBname+'.remarks+''  ''+shoetest.testno remarks ,');
      SQL.add('ypzl.ypdh,');
      //41-45
      SQL.add(''+TBname+'.status,');
      SQL.add('lbzls03.ywsm,');
      SQL.add('Fdgroup.Teamleader,');
      SQL.add('kfxxzl.article');


      sql.Add('from '+TBname+'');
//      sql.add('left join  (select * from kfxxzl where khdh=''036'')kfxxzl on '+TBname+'.xiexing=kfxxzl.xiexing and '+TBname+'.shehao=kfxxzl.shehao');
      sql.add('left join  (select * from kfxxzl where khdh in '+SQL1+')kfxxzl on '+TBname+'.xiexing=kfxxzl.xiexing and '+TBname+'.shehao=kfxxzl.shehao');
      sql.add('left join  xxzlkf on '+TBname+'.xiexing=xxzlkf.xiexing and '+TBname+'.shehao=xxzlkf.shehao');
      SQL.add('left join ypzl on ypzl.xiexing='+TBname+'.xiexing and ypzl.shehao='+TBname+'.shehao');
      SQL.add('LEFT JOIN lbzls lbzls03 ON kfxxzl.xiegn = lbzls03.lbdh AND lbzls03.lb = ''03''');
      SQL.add('left join busers on busers.engname=ypzl.FD');
      SQL.add('left join Fdgroups on Fdgroups.FDID=busers.userid and Fdgroups.fdname = '''+trim(ComboBox7.Items.Text)+''''); //備註在程式最前面 2021/04/12
      SQL.add('left join (select fdteam,busers.engname teamleader from Fdgroup left join busers on busers.userid=Fdgroup.teamleader)Fdgroup on Fdgroups.FDTeam=Fdgroup.FDTeam');

      SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      SQL.add('left join (SELECT testno,ypdh,cutdate,stitchingDate,complete FROM SHOETEST where (tbcancel is null or tbcancel =''0'') )SHOETEST on shoetest.ypdh=ypzl.ypdh');
      SQL.add('where  kfxxzl.jijie like '''+'%'+season.Text+'%'+'''');
      SQL.add('and (xxzlkf.dropped <>''1'' or xxzlkf.dropped is null)');
      SQL.add('and (xxzlkf.transfer <>''1'' or xxzlkf.transfer is null)');
      SQL.Add(' and kfxxzl.xieming not like ''%NULLIFY%'' ');
      SQL.Add(' and kfxxzl.xieming not like ''%NULIFY%'' ');
      SQL.add('and ypzl.kfjd in ( '''+Stage+''' ) ');
      SQL.add('and kfxxzl.devcode <>'''' ');
      if Stype.text <> '' then
        SQL.add('and kfxxzl.devtype like '''+'%'+Stype.Text+'%'+'''');
      if subtype.text <> '' then
        SQL.add('and ypzl.subtype like '''+'%'+subtype.Text+'%'+'''');
      if FD.text <> '' then
        SQL.add('and KFXXZL.fd= '+''''+FD.text+''' ');
      if article.Text <> '' then
        SQL.add('and kfxxzl.devcode like '''+'%'+article.Text+'%'+'''');
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
      if team.Text <> '' then
        if team.Text = 'A'
          then SQL.add('and fdgroups.fdteam=''A'' ');
        if team.Text = 'B'
          then SQL.add('and fdgroups.fdteam=''B'' ');
        if team.Text = 'C'
          then SQL.add('and fdgroups.fdteam=''C'' ');
        if team.Text = 'SMU'
          then SQL.add('and fdgroups.fdteam=''SMU'' ');
      if lai.text<>'' then SQL.add('and left(ypzl.ypdh,4)='''+lai.text+''' ');
      SQL.add('group by  xxzlkf.'+imgname+' ,'+TBname+'.tpdate,kfxxzl.XieMing,kfxxzl.devcode,');
      //SQL.add('kfxxzl.YSSM,case when kfxxzl.kflx = ''MU'' then ''NM'' when  kfxxzl.kflx = ''CU'' then ''NC'' else kfxxzl.kflx end  ,');
      SQL.add('kfxxzl.YSSM,kfxxzl.KFLX,');
      SQL.add('kfxxzl.Gender,ypzl.ypcc ,kfxxzl.xtmh ,kfxxzl.ddmh ,');
      SQL.add(''+TBname+'.ps ,'+TBname+'.rrsrd ,'+TBname+'.PullCFMDate,'+TBname+'.pi , ');
      SQL.add(''+TBname+'.DPS_NTSR ,'+TBname+'.MFRD,'+TBname+'.Component_Qty,'+TBname+'.Lasted_Upper_Qty, ');
      SQL.add(''+TBname+'.Finished_shoe_Qty,'+TBname+'.Half_Stitching_Qty,'+TBname+'.SQ ,'+TBname+'.fit,'+TBname+'.wear, ');
      SQL.add(''+TBname+'.testing,'+TBname+'.OQ, '+TBname+'.IE_Qty,');
      SQL.add('cast(ISNULL(Component_Qty, 0) as float )+cast(ISNULL(Lasted_Upper_Qty, 0) as float )+cast(ISNULL(Finished_shoe_Qty, 0) as float )+cast(ISNULL(Half_Stitching_Qty, 0) as float )+cast(ISNULL(IE_Qty, 0) as float )+');
      SQL.add('cast(ISNULL(Costing_Qty, 0) as float )+cast(ISNULL(SQ, 0) as float )+cast(ISNULL(testing, 0) as float )+cast(ISNULL(OQ, 0) as float ) ,');
      SQL.add('shoetest.cutdate,shoetest.stitchingDate,shoetest.complete,'+TBname+'.SETC,');
      SQL.add(''+TBname+'.CTSI,'+TBname+'.rsd,xxzlkf.CTS,xxzlkf.NA,ypzl.FD,xxzlkf.category,');
      SQL.add('YPZL.ProductionLocation,'+TBname+'.remarks+''  ''+shoetest.testno  ,');
      SQL.add('ypzl.ypdh,'+TBname+'.status,lbzls03.ywsm,Fdgroup.Teamleader,kfxxzl.article');
      SQL.add('order by kfxxzl.devcode');
//      showmessage(sql.text);
      Active:=true;
    end;
  if check.Checked then
     if lai.text='' then
        begin
          showmessage('choose LAIV,K,T?');
          abort;
        end;
  if check.Checked then
  begin
   with SRDet_ML do
   begin
    Active:=false;
    SQL.Clear;                                //CONVERT(char(10),CG.ETA,111) as ETA,
    SQL.Add('Select * from SRDet_ML');
    SQL.Add('where  left(ypdh,4)='''+lai.text+''' and SEASON='''+season.Text+'''  and stage  in ( '''+Stage+''' ) ');
   // memo2.text:=sql.text;
  end;

  with SRDet_FML do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from SRDet_FML');
    SQL.Add('where  left(ypdh,4)='''+lai.text+''' and SEASON='''+season.Text+'''  and stage  in ( '''+Stage+''' ) ');
  end;

    SRDet_ML.Active:=true;
    SRDet_FML.Active:=true;
    if SRDet_ML.recordcount=0 then
      showmessage('Material Tracking dont Calculate,Plz call Polly or IT');
    if SRDet_FML.recordcount=0 then
      showmessage('Material Tracking dont Calculate,Plz call Polly or IT');
  end;
    if  Qryname.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Rows[1].WrapText  := True;//自動換列
    eclApp.Columns[1].ColumnWidth := 5; //設定欄寬
    eclApp.Columns[2].ColumnWidth := 15;
    eclApp.Columns[3].ColumnWidth := 9;
    eclApp.Columns[4].ColumnWidth := 18;
    eclApp.Columns[5].ColumnWidth := 22;
    eclApp.Columns[6].ColumnWidth := 20;
    eclApp.Columns[7].ColumnWidth := 7;
    eclApp.Columns[8].ColumnWidth := 7;
    eclApp.Columns[9].ColumnWidth := 7;
    eclApp.Columns[10].ColumnWidth := 7;
    eclApp.Columns[11].ColumnWidth := 10;
    eclApp.Columns[12].ColumnWidth := 15;
    eclApp.Columns[13].ColumnWidth := 25;
    eclApp.Columns[14].ColumnWidth := 25;
    eclApp.Columns[15].ColumnWidth := 25;
    eclApp.Columns[16].ColumnWidth := 15;
    eclApp.Columns[17].ColumnWidth := 20;
    eclApp.Columns[18].ColumnWidth := 10;
    eclApp.Columns[19].ColumnWidth := 10;
    eclApp.Columns[20].ColumnWidth := 10;
    eclApp.Columns[21].ColumnWidth := 12;
    eclApp.Columns[22].ColumnWidth := 12;
    eclApp.Columns[23].ColumnWidth := 12;
    eclApp.Columns[24].ColumnWidth := 12;
    eclApp.Columns[25].ColumnWidth := 12;
    eclApp.Columns[26].ColumnWidth := 12;
    eclApp.Columns[27].ColumnWidth := 15;
    eclApp.Columns[28].ColumnWidth := 15;
    eclApp.Columns[29].ColumnWidth := 15;
    eclApp.Columns[30].ColumnWidth := 15;
    eclApp.Columns[31].ColumnWidth := 15;
    eclApp.Columns[32].ColumnWidth := 15;
    eclApp.Columns[33].ColumnWidth := 24;
    eclApp.Columns[34].ColumnWidth := 20;
    eclApp.Columns[35].ColumnWidth := 25;
    if check.Checked then
    begin
      eclApp.Columns[44].ColumnWidth := 50;
      eclApp.Columns[45].ColumnWidth := 50;
    end;
    eclApp.Cells(1,1):='Type';
    eclApp.Cells(1,2):='Picture';
    eclApp.Cells(1,3):='TP Date';
    eclApp.Cells(1,4):='Project Name';
    eclApp.Cells(1,5):='SR#';

    eclApp.Cells(1,6):='Colorway';
    eclApp.Cells(1,7):='Tech Level';
    eclApp.Cells(1,8):='Gender';
    eclApp.Cells(1,9):='Size';
    eclApp.Cells(1,10):='Last#';

    eclApp.Cells(1,11):='Outsole#';
    eclApp.Cells(1,12):='Pullover Status';
    eclApp.Cells(1,13):='Pullover Finished Date';
    eclApp.Cells(1,14):='Pullover CFM Date';
    eclApp.Cells(1,15):='Pending issue (clarification, pattern)';

    eclApp.Cells(1,16):='Date Pass Spec & Notice to Sample Room';
    eclApp.Cells(1,17):='Material Final Ready Date';
    eclApp.cells(1,18):='Component Qty';
    eclApp.cells(1,19):='Lasted Upper Qty';
    eclApp.cells(1,20):='Finished shoe to Tech team Qty';

    eclApp.Cells(1,21):='Half Stitching Qty';
    eclApp.Cells(1,22):='Shipping Qty';
    eclApp.Cells(1,23):='Fit test ';
    eclApp.Cells(1,24):='Wear test';
    eclApp.Cells(1,25):='Testing Qty';

    eclApp.Cells(1,26):='Keeping Qty';
    eclApp.Cells(1,27):='IE Qty';
    eclApp.Cells(1,28):='Total Qty';
    eclApp.Cells(1,29):='Cutting Date';
    eclApp.Cells(1,30):='Stitching Date';
    eclApp.Cells(1,31):='Complete Date';


    eclApp.Cells(1,32):='Sample ETC';
    eclApp.Cells(1,33):='CTS inspection';
    eclApp.Cells(1,34):='Shipping Date';
    eclApp.Cells(1,35):='CTS Developer';
    eclApp.Cells(1,36):='N.A Developer';

    eclApp.Cells(1,37):='Factory Developer';
    eclApp.Cells(1,38):='Category';
    eclApp.Cells(1,39):='ProductionLocation';
    eclApp.Cells(1,40):='Remark';
    eclApp.Cells(1,41):='YPDH';


    eclApp.Cells(1,42):='Status ';
    eclApp.Cells(1,43):='Production type';
    eclApp.Cells(1,44):='Supervisor''s name';
    eclApp.Cells(1,45):='SKU';
    if check.Checked then
       begin
          eclApp.Cells(1,46):='Uppers';
          eclApp.Cells(1,47):='Stitching Accessory';
          eclApp.Cells(1,48):='Remark';
          eclApp.Cells(1,49):='Upper materials Ready date';
          eclApp.Cells(1,50):='Stitching Materials Ready date';
       end;
    Qryname.First;
    j:=2;
    while   not  Qryname.Eof   do
       begin
          MLETD:=''; //20151005 清空ETD
          FMLETD:='';
          for i:=1 to Qryname.fieldcount do
             begin
                eclApp.Cells(j,i):=Qryname.Fields[i-1].AsString;
                eclApp.Rows[j].WrapText:=True;
                eclApp.Cells(j,2):='';
                //memo.Visible:=true;
             end;

          if check.Checked then
             begin
                SRDet_ML.First;
                memo.TEXT:='';
                k:=1;
                while not SRDet_ML.Eof do
                   begin
                      with SRDet_ML do  //開啟  SRDet_MLR3編輯進行下面判斷
                         begin
                            cachedupdates:=true;
                            requestlive:=true;
                            SRDet_ML.edit;
                         end;
                      if SRDet_ML.FieldByName('ypdh').AsString=Qryname.FieldByName('ypdh').AsString  then
                         begin
                            if SRDet_ML.FieldByName('ng_ETD').AsString<>'N/A' then    //判斷是否有新ETD,若有NG可能會有新ETD,必須採用新ETD,20160118
                               begin
                               MLNEWETD:='_NewETD;';
                               SRDet_ML.FieldByName('ETD').AsDateTime:=SRDet_ML.FieldByName('ng_ETD').AsDateTime;
                               end;
                            if SRDet_ML.FieldByName('ng_ETD').AsString='N/A' then    //判斷是否有新ETD,若有NG可能會有新ETD,必須採用新ETD,20160118
                               begin
                               MLNEWETD:='_ETD:';
                               end;
                            if SRDet_ML.FieldByName('ng_ETD').AsString<>'N/A' then         //如果新ETD以ETD優先
                               begin
                                  if SRDet_ML.FieldByName('Location').AsString = 'VN' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ng_ETD').AsDateTime+1;
                                  if SRDet_ML.FieldByName('Location').AsString = 'Taiwan' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ng_ETD').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'China' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ng_ETD').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'Korea' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ng_ETD').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'HongKong' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ng_ETD').AsDateTime+5;
                               end;
                            if (SRDet_ML.FieldByName('cidate').AsString<>'N/A') and (SRDet_ML.FieldByName('ng_ETD').AsString='N/A') then         //如果有廠商開發票日期就用開發日期+採區取代ETA
                               begin
                                  if SRDet_ML.FieldByName('Location').AsString = 'VN' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('cidate').AsDateTime+1;
                                  if SRDet_ML.FieldByName('Location').AsString = 'Taiwan' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('cidate').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'China' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('cidate').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'Korea' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('cidate').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'HongKong' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('cidate').AsDateTime+5;
                               end;
                            if (SRDet_ML.FieldByName('cidate').AsString='N/A') and (SRDet_ML.FieldByName('ETD').AsString<>'N/A') and (SRDet_ML.FieldByName('ng_ETD').AsString='N/A') then         //如果有廠商開發票日期就用開發日期+採區取代ETA
                               begin
                                  if SRDet_ML.FieldByName('Location').AsString = 'VN' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ETD').AsDateTime+1;
                                  if SRDet_ML.FieldByName('Location').AsString = 'Taiwan' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ETD').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'China' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ETD').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'Korea' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ETD').AsDateTime+5;
                                  if SRDet_ML.FieldByName('Location').AsString = 'HongKong' then
                                     SRDet_ML.FieldByName('ETA').AsDateTime:=SRDet_ML.FieldByName('ETD').AsDateTime+5;
                               end;
                            if SRDet_ML.FieldByName('ETA').asstring ='N/A' then //提醒是否還有材料沒有ETA的
                               begin
                                  MLETDNULL:='YES';
                               end;
                            if (SRDet_ML.FieldByName('ng_reason').asstring ='Color NG') and (SRDet_ML.FieldByName('ng_ETD').asstring ='N/A')  then //提醒是否還有材料沒有ETA的
                               begin
                                  MLETDNULL:='YES';
                               end;
                            if MLETD<SRDet_ML.FieldByName('ETA').asstring then   //用來算出整個樣品單最晚ETD日期的
                               begin
                                  MLETD:=SRDet_ML.FieldByName('ETA').asstring;
                               end;
                            if SRDet_ML.FieldByName('ng_ETD').AsString<>'N/A' then    //如果為新ETD 則NG欄不顯示
                               begin
                               SRDet_ML.FieldByName('ng_reason').AsString:='';
                               end;
                            memo.TEXT:=memo.TEXT+'('+inttostr(k)+')'+'Mat:'+SRDet_ML.FieldByName('ywpm').AsString+'_Supplier:'+SRDet_ML.FieldByName('Supplier').AsString+'_PODate:'+SRDet_ML.FieldByName('cgdate').AsString+string(MLNewETD)+SRDet_ML.FieldByName('ETD').AsString+'Ship Date:'+SRDet_ML.FieldByName('cidate').AsString+'_ETA:'+SRDet_ML.FieldByName('ETA').AsString+'_Status:'+SRDet_ML.FieldByName('ng_reason').AsString+''+Chr(10)+''+''+Chr(10)+'';
                            inc(k);
                         end;
                      SRDet_ML.Next;
                   end;
                eclApp.Cells(j,46):=memo.TEXT;
                if MLETDNULL<>'YES' then
                begin
                   if MLETD<>'' then
                   begin
                      MLETD:=datetimetostr(strtodatetime(MLETD)+1);//ETA最後配套日在加1天
                   end;
                   eclApp.Cells(j,49):=MLETD;
                end;
                if (MLETDNULL<>'YES') and (MLETD='') then
                  eclApp.Cells(j,49):='OK';
                MLETD:='';
                MLETDNULL:='';
             end;

          if check.Checked then
             begin
                SRDet_FML.First;
                memo.TEXT:=''; //20151005 如果All material use stock just show OK
                k:=1;
                while not SRDet_FML.Eof do
                   begin
                      with SRDet_FML do
                         begin
                            cachedupdates:=true;
                            requestlive:=true;
                            SRDet_FML.edit;
                         end;
                      if SRDet_FML.FieldByName('ypdh').AsString=Qryname.FieldByName('ypdh').AsString  then
                         begin
                            if SRDet_FML.FieldByName('ng_ETD').AsString<>'N/A' then    //判斷是否有新ETD,若有NG可能會有新ETD,必須採用新ETD,20160118
                               begin
                                  FMLNewETD:='_NewETD:';
                                  SRDet_FML.FieldByName('ETD').AsDateTime:=SRDet_FML.FieldByName('ng_ETD').AsDateTime;
                               end;
                            if SRDet_FML.FieldByName('ng_ETD').AsString='N/A' then    //判斷是否有新ETD,若有NG可能會有新ETD,必須採用新ETD,20160118
                               begin
                                  FMLNewETD:='_ETD:';
                               end;
                            if SRDet_FML.FieldByName('ng_ETD').AsString<>'N/A' then         //如果新ETD以ETD優先
                               begin
                                  if SRDet_FML.FieldByName('Location').AsString = 'VN' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ng_ETD').AsDateTime+1;
                                  if SRDet_FML.FieldByName('Location').AsString = 'Taiwan' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ng_ETD').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'China' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ng_ETD').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'Korea' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ng_ETD').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'HongKong' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ng_ETD').AsDateTime+5;
                               end;
                            if (SRDet_FML.FieldByName('cidate').AsString<>'N/A') and (SRDet_FML.FieldByName('ng_ETD').AsString='N/A') then         //如果有廠商開發票日期就用開發日期+採區取代ETA
                               begin
                                  if SRDet_FML.FieldByName('Location').AsString = 'VN' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('cidate').AsDateTime+1;
                                  if SRDet_FML.FieldByName('Location').AsString = 'Taiwan' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('cidate').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'China' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('cidate').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'Korea' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('cidate').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'HongKong' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('cidate').AsDateTime+5;
                               end;
                            if (SRDet_FML.FieldByName('cidate').AsString='N/A') and (SRDet_FML.FieldByName('ETD').AsString<>'N/A') and (SRDet_FML.FieldByName('ng_ETD').AsString='N/A') then         //如果有廠商開發票日期就用開發日期+採區取代ETA
                               begin
                                  if SRDet_FML.FieldByName('Location').AsString = 'VN' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ETD').AsDateTime+1;
                                  if SRDet_FML.FieldByName('Location').AsString = 'Taiwan' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ETD').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'China' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ETD').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'Korea' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ETD').AsDateTime+5;
                                  if SRDet_FML.FieldByName('Location').AsString = 'HongKong' then
                                     SRDet_FML.FieldByName('ETA').AsDateTime:=SRDet_FML.FieldByName('ETD').AsDateTime+5;
                               end;
                            if SRDet_FML.FieldByName('ETA').asstring ='N/A' then //提醒是否還有材料沒有ETA的
                               begin
                                  FMLETDNULL:='YES';
                               end;
                            if (SRDet_FML.FieldByName('ng_reason').asstring ='Color NG') and (SRDet_FML.FieldByName('ng_ETD').asstring ='N/A')  then //提醒是否還有材料沒有ETA的
                               begin
                                  FMLETDNULL:='YES';
                               end;
                            if FMLETD<SRDet_FML.FieldByName('ETA').asstring then   //用來算出整個樣品單最晚ETA日期的
                               begin
                                  FMLETD:=SRDet_FML.FieldByName('ETA').asstring;
                               end;
                            if SRDet_FML.FieldByName('ng_ETD').AsString<>'N/A' then    //如果為新ETD 則NG欄不顯示
                               begin
                               SRDet_FML.FieldByName('ng_reason').AsString:='';
                               end;
                            memo.TEXT:=memo.TEXT+'('+inttostr(k)+')'+'Mat:'+SRDet_FML.FieldByName('ywpm').AsString+'_Supplier:'+SRDet_FML.FieldByName('Supplier').AsString+'_PODate:'+SRDet_FML.FieldByName('cgdate').AsString+string(FMLNewETD)+SRDet_FML.FieldByName('ETD').AsString+'Ship Date:'+SRDet_FML.FieldByName('cidate').AsString+'_ETA:'+SRDet_FML.FieldByName('ETA').AsString+'_Status:'+SRDet_FML.FieldByName('ng_reason').AsString+''+Chr(10)+''+''+Chr(10)+'';
                            inc(k);
                         end;
                      SRDet_FML.Next;
                   end;
                eclApp.Cells(j,47):=memo.TEXT;
                if FMLETDNULL<>'YES' then
                begin
                   if FMLETD<>'' then   //ETA最後配套日在加1天
                   begin
                      FMLETD:=datetimetostr(strtodatetime(FMLETD)+1);
                   end;
                   eclApp.Cells(j,50):=FMLETD;
                end;
                if (FMLETDNULL<>'YES') and (FMLETD='') then
                  eclApp.Cells(j,50):='OK';
                FMLETD:='';
                FMLETDNULL:='';

          end;
          label220.Caption:=inttostr(j-1);
          //memo.Visible:=false;
          eclApp.Rows[j].RowHeight := 50;
          checkshoePic:=StringReplace(qryname.FieldByName(''+imgname+'').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
          funcObj.WriteErrorLog(checkshoePic);
          if FileExists(checkshoePic)=true then
             begin
                workSheet := workBook.WorkSheets[1];
                eclApp.WorkSheets[1].Activate;//第一頁為主
                workSheet.Select;
                workRange :=workSheet.Range[workSheet.Cells.Item[j,2],workSheet.Cells.item[j,2]]; //目前位置
                //picture := workSheet.pictures.Insert(StringReplace(Qryname.FieldByName(''+imgname+'').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]));
                picture := workSheet.Shapes.AddPicture(StringReplace(Qryname.FieldByName(''+imgname+'').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]), False, True, workRange.left+1, workRange.top+1, -1, -1);
                picture.LockAspectRatio := true;
                //picture.left := workRange.left + 1; //左
                //picture.top := workRange.top + 1; //高
                picture.width := workRange.width - 2; //?度
                picture.height := workRange.height - 2; //高度
                picture := Unassigned;
             end;
          Qryname.Next;
          inc(j);
       end; // while
       if check.Checked then
       begin
          j:=j+5;
          i:=i+5;
       end;
       begin
       for temp1:=1 to j-1 do
          begin
             for  temp2:=1 to i-1 do
                begin
                   if temp1=1 then
                      eclApp.Cells[temp1,temp2].Interior.ColorIndex := 36; //設定底色為淺黃色   20151005 後來新增加+3各欄位
                      eclApp.Cells[temp1,temp2].Borders[7].LineStyle := 1;
                      eclApp.Cells[temp1,temp2].Borders[8].LineStyle := 1;
                      eclApp.Cells[temp1,temp2].Borders[9].LineStyle := 1;
                      eclApp.Cells[temp1,temp2].Borders[10].LineStyle := 1;
                      eclApp.Cells[temp1,temp2].Borders[11].LineStyle := 1;
                      eclApp.Cells[temp1,temp2].Borders[12].LineStyle := 1;
                end;
             inc(temp2);
          end;
       end;


       if check.Checked then
       begin
          eclapp.ActiveSheet.range['AS:AW'].cut; //配套剪貼
          eclapp.Columns[16].insert;
       end;
       eclapp.Rows[1].Insert;
       eclapp.Range['A1:E1'].Merge;
       eclApp.Cells(1,1):='Sample Tracking List -'+season.text;
       eclapp.Rows[1].Font.Color := clred;

       label219.Caption:=inttostr(temp1-1);
       inc(temp1);

       showmessage('Succeed.');
       eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
       eclApp.Visible:=True;
       except
       on   F:Exception   do
          showmessage(F.Message);
       end;
   end;

procedure TSampleDevelopInformation.cfmtypeChange(Sender: TObject);
begin

  if cfmtype.text='Inline' then
  begin
     cfmsubtype.Items.Clear;
     cfmsubtype.Items.Add('');
     cfmsubtype.Items.Add('Inline');
  end;
  if cfmtype.text='Great@Good' then
  begin
     cfmsubtype.Items.Clear;
     cfmsubtype.Items.Add('');
     cfmsubtype.Items.Add('Great@Good');
  end;
  if cfmtype.text='QuickResponse' then
  begin
     cfmsubtype.Items.Clear;
     cfmsubtype.Items.Add('');
     cfmsubtype.Items.Add('QuickResponse');
  end;
  if cfmtype.text='Incubate' then
  begin
     cfmsubtype.Items.Clear;
     cfmsubtype.Items.Add('');
     cfmsubtype.Items.Add('Incubate');
  end;
  if cfmtype.text='SMU' then
  begin
     cfmsubtype.Items.Clear;
     cfmsubtype.Items.Add('');
     cfmsubtype.Items.Add('Smu');
     cfmsubtype.Items.Add('Segment');
  end;
end;

procedure TSampleDevelopInformation.r1typeChange(Sender: TObject);
begin

  if r1type.text='Inline' then
  begin
     r1subtype.Items.Clear;
     r1subtype.Items.Add('');
     r1subtype.Items.Add('Inline');
  end;
  if r1type.text='Great@Good' then
  begin
     r1subtype.Items.Clear;
     r1subtype.Items.Add('');
     r1subtype.Items.Add('Great@Good');
  end;
  if r1type.text='QuickResponse' then
  begin
     r1subtype.Items.Clear;
     r1subtype.Items.Add('');
     r1subtype.Items.Add('QuickResponse');
  end;
  if r1type.text='Incubate' then
  begin
     r1subtype.Items.Clear;
     r1subtype.Items.Add('');
     r1subtype.Items.Add('Incubate');
  end;
  if r1type.text='SMU' then
  begin
     r1subtype.Items.Clear;
     r1subtype.Items.Add('');
     r1subtype.Items.Add('Smu');
     r1subtype.Items.Add('Segment');
  end;
end;

procedure TSampleDevelopInformation.r2typeChange(Sender: TObject);
begin

  if r2type.text='Inline' then
  begin
     r2subtype.Items.Clear;
     r2subtype.Items.Add('');
     r2subtype.Items.Add('Inline');
  end;
  if r2type.text='Great@Good' then
  begin
     r2subtype.Items.Clear;
     r2subtype.Items.Add('');
     r2subtype.Items.Add('Great@Good');
  end;
  if r2type.text='QuickResponse' then
  begin
     r2subtype.Items.Clear;
     r2subtype.Items.Add('');
     r2subtype.Items.Add('QuickResponse');
  end;
  if r2type.text='Incubate' then
  begin
     r2subtype.Items.Clear;
     r2subtype.Items.Add('');
     r2subtype.Items.Add('Incubate');
  end;
  if r2type.text='SMU' then
  begin
     r2subtype.Items.Clear;
     r2subtype.Items.Add('');
     r2subtype.Items.Add('Smu');
     r2subtype.Items.Add('Segment');
  end;
end;

procedure TSampleDevelopInformation.r3typeChange(Sender: TObject);
begin

  if r3type.text='Inline' then
  begin
     r3subtype.Items.Clear;
     r3subtype.Items.Add('');
     r3subtype.Items.Add('Inline');
  end;
  if r3type.text='Great@Good' then
  begin
     r3subtype.Items.Clear;
     r3subtype.Items.Add('');
     r3subtype.Items.Add('Great@Good');
  end;
  if r3type.text='QuickResponse' then
  begin
     r3subtype.Items.Clear;
     r3subtype.Items.Add('');
     r3subtype.Items.Add('QuickResponse');
  end;
  if r3type.text='Incubate' then
  begin
     r3subtype.Items.Clear;
     r3subtype.Items.Add('');
     r3subtype.Items.Add('Incubate');
  end;
  if r3type.text='SMU' then
  begin
     r3subtype.Items.Clear;
     r3subtype.Items.Add('');
     r3subtype.Items.Add('Smu');
     r3subtype.Items.Add('Segment');
  end;
end;

procedure TSampleDevelopInformation.CHECKQRYClick(Sender: TObject);
begin
  with gettime do
  begin
     active:=false;
     SQL.Clear;
     sql.Add('select kfxxzl.jijie,ypzl.kfjd from ypzl');
     sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.Add('where ypdh='''+edit6.text+''' ');
     active:=true;
  end;
  edit4.text:=gettime.fieldbyname('jijie').asstring;
  edit5.text:=gettime.fieldbyname('kfjd').asstring;
  if combobox3.text='Uppers'  then
     begin
      with QRy_checkML do
      begin
        Active:=false;
        SQL.Clear;                                //CONVERT(char(10),CG.ETA,111) as ETA,
        SQL.Add('Select isnull(CONVERT(char(10),MaterialNG.ng_ETD,111),''N/A'') as NG_ETD,cg.cgno,isnull(CONVERT(char(10),cg.cgdate,111),''N/A'') as cgdate,isnull(CONVERT(char(10),KCRKS.USERDATE,111),''N/A'') as USERDATE,');
        SQL.Add('isnull(CONVERT(char(10),CGZLInvoice.cidate,111),''N/A'') as cidate,YPZL.*,CG.Qty,isnull(CONVERT(char(10),CG.ETD,111),''N/A'') as ETD,');
        SQL.Add('CG.Location,isnull(CONVERT(char(10),CG.ETA,111),''N/A'') as ETA,CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName,isnull(MaterialNG.ng_reason,''N/A'') as ng_reason from (');
        SQL.Add('select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
        SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
        SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
        SQL.Add('FROM ypzls ypzls ');
        SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
        SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
        SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
        SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
        SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD='''+edit5.text+''' and KFXXZL.JiJie='''+edit4.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''  and YPZL.ypdh='''+edit6.Text+'''');
        SQL.Add('union all ');
        SQL.Add('SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
        SQL.Add('FROM ypzls ypzls ');
        SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
        SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
        SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
        SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
        SQL.Add('WHERE  clzl.clzmlb = ''N'' and  YPZL.KFJD='''+edit5.text+''' and KFXXZL.JiJie='''+edit4.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0  and YPZL.ypdh='''+edit6.Text+'''');
        SQL.Add('union all ');
        SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
        SQL.Add(' from (');
        SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
        SQL.Add('FROM ypzls ypzls ');
        SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
        SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
        SQL.Add('WHERE YPZL.KFJD='''+edit5.text+''' and KFXXZL.JiJie='''+edit4.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and YPZL.ypdh='''+edit6.Text+''' ');
        SQL.Add(') clzhzl2');
        SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
        SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
        SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  ');
        SQL.Add(')  YPZLS ');
        SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
        SQL.Add(') Temp_YPZL');
        SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
        SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
        SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''  ');
        SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''  ');
        SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or ');
        SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A02'',''A08'',''A13'',''A48'') and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''1'') or (LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH=''M027'') )');
        SQL.Add(' and zszlfilter.zsdh is null  and clzlfilter.cldh is null  ');
        SQL.Add(')  YPZL ');
        //======================================
        SQL.Add('Left Join (');
        SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
        SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
        SQL.Add('from CGZLSS');
        SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
        SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
        SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
        SQL.Add('left join (select season,CLBH,Location from MaterialMOQ where season='''+edit4.Text+''' Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
      //  SQL.Add('where  CGZL.SEASON='''+edit4.Text+'''  and CGZL.PURPOSE='''+edit5.text+'''  ');
         //樣品單合併
        SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate');
        SQL.Add(') CG');
        SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
        //20150901增加廠商
        SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
        SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+main.Edit2.Text+''' ');
        SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
        SQL.Add('left join (select CINO,CGNO,CLBH from CGZLInvoiceS)CGZLInvoiceS on CG.CGNO=CGZLInvoiceS.CGNO and CGZLInvoiceS.CLBH=cg.clbh');
        SQL.Add('left join (select CINO,CIDATE from CGZLInvoice)CGZLInvoice on CGZLInvoice.CINO=CGZLInvoiceS.CINO');
        SQL.Add('LEFT join (select KCRKS.DOCNO,CLBH,KCRK.USERDATE,RKSB from KCRKS ,KCRK where KCRK.RKNO=KCRKS.RKNO and KCRK.GSBH='''+main.Edit2.Text+''')KCRKS on  CG.CGNO=KCRKS.DOCNO and CG.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'''')<>''NG''');
        SQL.Add('LEFT join (select CGNO,CLBH,NG_REAsON,NG_ETD from MaterialNG)MaterialNG  on CG.CLBH=MaterialNG.CLBH and CG.CGNO=MaterialNG.CGNO ');
     //  SQL.Add('WHERE (MaterialNG.ng_reason<>''OK'' AND MaterialNG.ng_reason<>''OK with improve'' AND KCRKS.USERDATE IS not null) OR KCRKS.USERDATE IS null ');
     //   SQL.Add('and CG.useType <>''stock''');
        SQL.Add('group by MaterialNG.ng_ETD,cg.cgno,cg.cgdate,KCRKS.USERDATE,CGZLInvoice.cidate,ypzl.ypdh,ypzl.fd,ypzl.clbh,ypzl.ywpm,');
        SQL.Add('ypzl.csbh,ypzl.clsl,CG.Qty,CG.ETD,CG.Location,CONVERT(char(10),CG.ETA,111),CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc,Busers.UserName,MaterialNG.ng_reason');
        SQL.Add('order by ypzl.ypdh');
        //memo2.text:=sql.text;
        Active:=true;
      end;
     end;
  if combobox3.text='Stitching' then
    begin
     with QRy_checkML do
       begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Select isnull(CONVERT(char(10),MaterialNG.ng_ETD,111),''N/A'') as NG_ETD,cg.cgno,isnull(CONVERT(char(10),cg.cgdate,111),''N/A'') as cgdate,isnull(CONVERT(char(10),KCRKS.USERDATE,111),''N/A'') as USERDATE,');
          SQL.Add('isnull(CONVERT(char(10),CGZLInvoice.cidate,111),''N/A'') as cidate,YPZL.*,CG.Qty,isnull(CONVERT(char(10),CG.ETD,111),''N/A'') as ETD, ');
          SQL.Add('CG.Location,isnull(CONVERT(char(10),CG.ETA,111),''N/A'') as ETA,CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName,isnull(MaterialNG.ng_reason,''N/A'') as ng_reason from (');
          SQL.Add('select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
          SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
          SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
          SQL.Add('FROM ypzls ypzls ');
          SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
          SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
          SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
          SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
          SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD='''+edit5.text+''' and KFXXZL.JiJie='''+edit4.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''  and YPZL.ypdh='''+edit6.Text+'''');
          SQL.Add('union all ');
          SQL.Add('SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
          SQL.Add('FROM ypzls ypzls ');
          SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
          SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
          SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
          SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
          SQL.Add('WHERE  clzl.clzmlb = ''N'' and  YPZL.KFJD='''+edit5.text+''' and KFXXZL.JiJie='''+edit4.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0  and YPZL.ypdh='''+edit6.Text+''' ');
          SQL.Add('union all ');
          SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
          SQL.Add(' from (');
          SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
          SQL.Add('FROM ypzls ypzls ');
          SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
          SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
          SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
          SQL.Add('WHERE YPZL.KFJD='''+edit5.text+''' and KFXXZL.JiJie='''+edit4.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y'' and YPZL.ypdh='''+edit6.Text+''' ');
          SQL.Add(') clzhzl2');
          SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
          SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
          SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
          SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  ');
          SQL.Add(')  YPZLS ');
          SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
          SQL.Add(') Temp_YPZL');
          SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
          SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
          SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''  ');
          SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''  ');
          SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu May'')) or ');
          SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''B'',''D'',''E'',''L'',''M'',''N'')  and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''2'') or (LEFT(Temp_YPZL.CLBH,3)  in (''D03'',''D11'',''J05'')) )');
          SQL.Add(' and zszlfilter.zsdh is null  and clzlfilter.cldh is null  ');
          SQL.Add(')  YPZL ');
          //======================================
          SQL.Add('Left Join (');
          SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
          SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
          SQL.Add('from CGZLSS');
          SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
          SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
          SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
          SQL.Add('left join (select season,CLBH,Location from MaterialMOQ where season='''+edit4.Text+''' Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
         // SQL.Add('where  CGZL.SEASON='''+edit4.Text+'''  and CGZL.PURPOSE='''+edit5.text+'''  ');
            //樣品單合併
          SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate');
          SQL.Add(') CG');
          SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
          //20150901增加廠商
          SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
          SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+main.Edit2.Text+''' ');
          SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
          SQL.Add('left join (select CINO,CGNO,CLBH from CGZLInvoiceS)CGZLInvoiceS on CG.CGNO=CGZLInvoiceS.CGNO and CGZLInvoiceS.CLBH=cg.clbh');
          SQL.Add('left join (select CINO,CIDATE from CGZLInvoice)CGZLInvoice on CGZLInvoice.CINO=CGZLInvoiceS.CINO');
          SQL.Add('LEFT join (select KCRKS.DOCNO,CLBH,KCRK.USERDATE,RKSB from KCRKS ,KCRK where KCRK.RKNO=KCRKS.RKNO and KCRK.GSBH='''+main.Edit2.Text+''')KCRKS on  CG.CGNO=KCRKS.DOCNO and CG.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'''')<>''NG''');
          SQL.Add('LEFT join (select CGNO,CLBH,NG_REAsON,NG_ETD from MaterialNG)MaterialNG  on CG.CLBH=MaterialNG.CLBH and CG.CGNO=MaterialNG.CGNO ');
       //   SQL.Add('WHERE (MaterialNG.ng_reason<>''OK'' AND MaterialNG.ng_reason<>''OK with improve'' AND KCRKS.USERDATE IS not null) OR KCRKS.USERDATE IS null ');
        //  SQL.Add('and CG.useType <>''stock''');
          SQL.Add('group by MaterialNG.ng_ETD,cg.cgno,cg.cgdate,KCRKS.USERDATE,CGZLInvoice.cidate,ypzl.ypdh,ypzl.fd,ypzl.clbh,ypzl.ywpm,ypzl.csbh,');
          SQL.Add('ypzl.clsl,CG.Qty,CG.ETD,CG.Location,CONVERT(char(10),CG.ETA,111),CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc,Busers.UserName,MaterialNG.ng_reason');
          SQL.Add('order by ypzl.ypdh');
         // memo2.text:=sql.text;
          Active:=true;
        end;
    end;

end;





procedure TSampleDevelopInformation.modifydate();
begin
    with QryCFM do
    begin
       cachedupdates:=true;
       requestlive:=true;
       QryCFM.edit;
    end;
end;

procedure TSampleDevelopInformation.R1modifydate();
begin
    with Qryr1 do
    begin
       cachedupdates:=true;
       requestlive:=true;
       Qryr1.edit;
    end;
end;

procedure TSampleDevelopInformation.R2modifydate();
begin
    with Qryr2 do
    begin
       cachedupdates:=true;
       requestlive:=true;
       Qryr2.edit;
    end;
end;

procedure TSampleDevelopInformation.R3modifydate();
begin
    with Qryr3 do
    begin
       cachedupdates:=true;
       requestlive:=true;
       Qryr3.edit;
    end;
end;

procedure TSampleDevelopInformation.R4modifydate();
begin
    with Qryr4 do
    begin
       cachedupdates:=true;
       requestlive:=true;
       Qryr4.edit;
    end;
end;   
procedure TSampleDevelopInformation.DateTimePicker2Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('PCDATE').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker2.datetime);
    DBEdit1.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker2.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker3Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('RLDATE').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker3.datetime);
    DBEdit5.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker3.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker4Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('IDD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker4.datetime);
    DBEdit9.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker4.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker5Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('BOOKTW').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker5.datetime);
    DBEdit15.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker5.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker6Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('BOOKchina').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker6.datetime);
    DBEdit16.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker6.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker7Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('BOOKLYNDC').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker7.datetime);
    DBEdit17.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker7.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker8Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('CFMSFD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker8.datetime);
    DBEdit3.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker8.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker9Change(Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('CcolorFD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker9.datetime);
    DBEdit7.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker9.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker10Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('CspecSD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker10.datetime);
    DBEdit14.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker10.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker11Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('CcolorSD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker11.datetime);
    DBEdit6.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker11.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker12Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('CshoeSD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker12.datetime);
    DBEdit152.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker12.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker13Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('CSTW').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker13.datetime);
    DBEdit18.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker13.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker14Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('CSLYNDC').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker14.datetime);
    DBEdit25.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker14.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker15Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('A4TW').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker15.datetime);
    DBEdit8.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker15.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker16Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('A4CHINA').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker16.datetime);
    DBEdit26.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker16.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker17Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('A4LYNDC').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker17.datetime);
    DBEdit27.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker17.datetime);
end;



procedure TSampleDevelopInformation.extrabClick(Sender: TObject);
begin
   extra:=Textra.Create(self);
   extra.showModal();
   extra.free;
end;

procedure TSampleDevelopInformation.DateTimePicker18Change(
  Sender: TObject);
begin
    modifydate();
    QryCFM.FieldByName('HandOver').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker18.datetime);
    DBEdit53.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker18.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker19Change(
  Sender: TObject);
begin
    r1modifydate();
    Qryr1.FieldByName('TPDATE').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker19.datetime);
    DBEdit49.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker19.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker20Change(
  Sender: TObject);
begin
    r1modifydate();
    Qryr1.FieldByName('RRSRD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker20.datetime);
    DBEdit76.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker20.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker21Change(
  Sender: TObject);
begin
    r1modifydate();
    Qryr1.FieldByName('DPS_NTSR').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker21.datetime);
    DBEdit78.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker21.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker22Change(
  Sender: TObject);
begin
    r1modifydate();
    Qryr1.FieldByName('SETC').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker22.datetime);
    DBEdit87.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker22.datetime);;
end;


procedure TSampleDevelopInformation.DateTimePicker23Change(
  Sender: TObject);
begin
    r1modifydate();
    Qryr1.FieldByName('CTSI').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker23.datetime);
    DBEdit88.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker23.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker24Change(
  Sender: TObject);
begin
    r1modifydate();
    Qryr1.FieldByName('RSD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker24.datetime);
    DBEdit89.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker24.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker25Change(
  Sender: TObject);
begin
    r2modifydate();
    Qryr2.FieldByName('TPDATE').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker25.datetime);
    DBEdit94.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker25.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker26Change(
  Sender: TObject);
begin
    r2modifydate();
    Qryr2.FieldByName('RRSRD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker26.datetime);
    DBEdit102.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker26.datetime);
end;


procedure TSampleDevelopInformation.DateTimePicker27Change(
  Sender: TObject);
begin
    r2modifydate();
    Qryr2.FieldByName('DPS_NTSR').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker27.datetime);
    DBEdit112.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker27.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker28Change(
  Sender: TObject);
begin
    r2modifydate();
    Qryr2.FieldByName('SETC').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker28.datetime);
    DBEdit116.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker28.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker29Change(
  Sender: TObject);
begin
    r2modifydate();
    Qryr2.FieldByName('CTSI').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker29.datetime);
    DBEdit115.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker29.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker30Change(
  Sender: TObject);
begin
    r2modifydate();
    Qryr2.FieldByName('RSD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker30.datetime);
    DBEdit114.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker30.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker31Change(
  Sender: TObject);
begin
    r3modifydate();
    Qryr3.FieldByName('TPDATE').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker31.datetime);
    DBEdit123.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker31.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker32Change(
  Sender: TObject);
begin
    r3modifydate();
    Qryr3.FieldByName('RRSRD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker32.datetime);
    DBEdit131.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker32.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker33Change(
  Sender: TObject);
begin
    r3modifydate();
    Qryr3.FieldByName('DPS_NTSR').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker33.datetime);
    DBEdit141.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker33.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker34Change(
  Sender: TObject);
begin
    r3modifydate();
    Qryr3.FieldByName('SETC').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker34.datetime);
    DBEdit145.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker34.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker35Change(
  Sender: TObject);
begin
    r3modifydate();
    Qryr3.FieldByName('CTSI').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker35.datetime);
    DBEdit144.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker35.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker36Change(
  Sender: TObject);
begin
    r3modifydate();
    Qryr3.FieldByName('RSD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker36.datetime);
    DBEdit143.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker36.datetime);
end;

procedure TSampleDevelopInformation.r4bbt1Click(Sender: TObject);
begin
   if copy(r4season.text,1,2)='16' then
      QuerySample(r4bbt5,r4bbt2,r4bbt4,'R4Sample',checkR4,R4Season,R4article,r4FD,teamr4,r4type,r4subtype,Qryr4,'sm4',r4subtpdb,showsizer4,'imgnameR4',r4lai);
   if copy(r4season.text,1,2)<>'16' then
      if r4type.text<>'SMU' then
         QuerySample(r4bbt5,r4bbt2,r4bbt4,'R4Sample',checkR4,R4Season,R4article,r4FD,teamr4,r4type,r4subtype,Qryr4,'CR4',r4subtpdb,showsizer4,'imgnameR4',r4lai);
      if r4type.text='SMU' then
         QuerySample(r4bbt5,r4bbt2,r4bbt4,'R4Sample',checkR4,R4Season,R4article,r4FD,teamr4,r4type,r4subtype,Qryr4,'CR4'',''SU4',r4subtpdb,showsizer4,'imgnameR4',r4lai);
end;

procedure TSampleDevelopInformation.r4bbt2Click(Sender: TObject);   //r4modify
begin
   menumodifySample(r4bbt2,r4bbt3,r4bbt4,r4bbt1);
end;

procedure TSampleDevelopInformation.r4bbt3Click(Sender: TObject);   //r4save
begin
   menusaveSample(r4bbt5,r4bbt1,r4bbt2,r4bbt3,r4bbt4,saver4,Qryr4);
end;

procedure TSampleDevelopInformation.r4bbt4Click(Sender: TObject);      //r4cancel
begin
   menucancelSample(r4bbt5,r4bbt1,r4bbt2,r4bbt3,r4bbt4,Qryr4);
end;

procedure TSampleDevelopInformation.r4bbt5Click(Sender: TObject);
begin
  close;
end;

procedure TSampleDevelopInformation.r4excelClick(Sender: TObject);
begin
   if copy(r4season.text,1,2)='16' then
      ExcelSample(ExcelR4,'imgnameR3','R4Sample',R4Season,'sm4',r4type,r4subtype,r4FD,r4article,teamr4,SRDet_MLR4,SRDet_FMLR4,checkr4,memor4,showsizer4,r4LAI);
   if copy(r4season.text,1,2)<>'16' then
      if r4type.text<>'SMU' then
         ExcelSample(ExcelR4,'imgnameR3','R4Sample',R4Season,'CR4',r4type,r4subtype,r4FD,r4article,teamr4,SRDet_MLR4,SRDet_FMLR4,checkr4,memor4,showsizer4,r4LAI);
      if r4type.text='SMU' then
         ExcelSample(ExcelR4,'imgnameR3','R4Sample',R4Season,'CR4'',''SU4',r4type,r4subtype,r4FD,r4article,teamr4,SRDet_MLR4,SRDet_FMLR4,checkr4,memor4,showsizer4,r4LAI);
end;

procedure TSampleDevelopInformation.r4typeChange(Sender: TObject);
begin

  if r4type.text='Inline' then
  begin
     r4subtype.Items.Clear;
     r4subtype.Items.Add('');
     r4subtype.Items.Add('Inline');
  end;
  if r4type.text='Great@Good' then
  begin
     r4subtype.Items.Clear;
     r4subtype.Items.Add('');
     r4subtype.Items.Add('Great@Good');
  end;
  if r4type.text='QuickResponse' then
  begin
     r4subtype.Items.Clear;
     r4subtype.Items.Add('');
     r4subtype.Items.Add('QuickResponse');
  end;
  if r4type.text='Incubate' then
  begin
     r4subtype.Items.Clear;
     r4subtype.Items.Add('');
     r4subtype.Items.Add('Incubate');
  end;
  if r4type.text='SMU' then
  begin
     r4subtype.Items.Clear;
     r4subtype.Items.Add('');
     r4subtype.Items.Add('Smu');
     r4subtype.Items.Add('Segment');
  end;
end;

procedure TSampleDevelopInformation.DateTimePicker37Change(
  Sender: TObject);
begin
    r4modifydate();
    Qryr4.FieldByName('TPDATE').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker37.datetime);
    DBEdit59.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker37.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker38Change(
  Sender: TObject);
begin
    r4modifydate();
    Qryr4.FieldByName('RRSRD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker38.datetime);
    DBEdit157.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker38.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker39Change(
  Sender: TObject);
begin
    r4modifydate();
    Qryr4.FieldByName('DPS_NTSR').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker39.datetime);
    DBEdit166.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker39.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker40Change(
  Sender: TObject);
begin
    r4modifydate();
    Qryr4.FieldByName('SETC').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker40.datetime);
    DBEdit170.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker40.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker41Change(
  Sender: TObject);
begin
    r4modifydate();
    Qryr4.FieldByName('CTSI').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker41.datetime);
    DBEdit169.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker41.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker42Change(
  Sender: TObject);
begin
    r4modifydate();
    Qryr4.FieldByName('RSD').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker42.datetime);
    DBEdit168.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker42.datetime);
end;

procedure TSampleDevelopInformation.QryCFMAfterScroll(DataSet: TDataSet);
var ShoePiccfm:string;
begin
  {  ShoePiccfm:=StringReplace(QRYCFM.FieldByName('imgnamecfm').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePiccfm);
   if FileExists(ShoePiccfm)=true then
      IMAGE1.Picture.LoadFromFile(ShoePiccfm);
    if FileExists(ShoePiccfm)=false then
      IMAGE1.Picture.Bitmap:=nil; }
end;

procedure TSampleDevelopInformation.qryR1AfterScroll(DataSet: TDataSet);
var ShoePicR1:string;
begin
 {   ShoePicR1:=StringReplace(qryr1.FieldByName('imgnamer1').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePicr1);
   if FileExists(ShoePicr1)=true then
      IMAGEr1.Picture.LoadFromFile(ShoePicr1);
    if FileExists(ShoePicr1)=false then
      IMAGEr1.Picture.Bitmap:=nil;    }
end;


procedure TSampleDevelopInformation.qryR2AfterScroll(DataSet: TDataSet);
var ShoePicR2:string;
begin
  {  ShoePicR2:=StringReplace(qryr2.FieldByName('imgnamer2').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePicr2);
   if FileExists(ShoePicr2)=true then
      IMAGEr2.Picture.LoadFromFile(ShoePicr2);
    if FileExists(ShoePicr2)=false then
      IMAGEr2.Picture.Bitmap:=nil; }
end;

procedure TSampleDevelopInformation.qryR3AfterScroll(DataSet: TDataSet);
var ShoePicR3:string;
begin
  {  ShoePicR3:=StringReplace(qryr3.FieldByName('imgnamer3').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePicr3);
   if FileExists(ShoePicr3)=true then
      IMAGEr3.Picture.LoadFromFile(ShoePicr3);
    if FileExists(ShoePicr3)=false then
      IMAGEr3.Picture.Bitmap:=nil;   }
end;

procedure TSampleDevelopInformation.ComboBox4Change(Sender: TObject);
begin

  if combobox4.text='Inline' then
  begin
     r2subtype.Items.Clear;
     r2subtype.Items.Add('');
     r2subtype.Items.Add('Inline');
  end;
  if combobox4.text='Great@Good' then
  begin
     combobox6.Items.Clear;
     combobox6.Items.Add('');
     combobox6.Items.Add('Great@Good');
  end;
  if combobox4.text='QuickResponse' then
  begin
     combobox6.Items.Clear;
     combobox6.Items.Add('');
     combobox6.Items.Add('QuickResponse');
  end;
  if combobox4.text='Incubate' then
  begin
     combobox6.Items.Clear;
     combobox6.Items.Add('');
     combobox6.Items.Add('Incubate');
  end;
  if combobox4.text='SMU' then
  begin
     combobox6.Items.Clear;
     combobox6.Items.Add('');
     combobox6.Items.Add('Smu');
     combobox6.Items.Add('Segment');
  end;
end;
procedure TSampleDevelopInformation.DBGridEh2CellClick(Column: TColumnEh);
var ShoePicR1,ShoePicR2,ShoePicR3,ShoePicR4,ShoePicCFM:string;
begin
//    shoePicR1:=StringReplace(qryimage.FieldByName('imager1').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    shoePicR1:=StringReplace(qryimage.FieldByName('imager1').Asstring,'A:\CDC\Develop\Develop Team\ERP Images','\\192.168.123.111\Develop Team\ERP Images', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicR1);
   if FileExists(shoePicR1)=true then
      testimageR1.Picture.LoadFromFile(shoePicR1);
    if FileExists(shoePicR1)=false then
      testimageR1.Picture.Bitmap:=nil;

//    shoePicR2:=StringReplace(qryimage.FieldByName('imager2').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    shoePicR2:=StringReplace(qryimage.FieldByName('imager2').Asstring,'A:\CDC\Develop\Develop Team\ERP Images','\\192.168.123.111\Develop Team\ERP Images', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicR2);
   if FileExists(shoePicR2)=true then
      testimageR2.Picture.LoadFromFile(shoePicR2);
    if FileExists(shoePicR2)=false then
      testimageR2.Picture.Bitmap:=nil;

//    shoePicR3:=StringReplace(qryimage.FieldByName('imager3').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    shoePicR3:=StringReplace(qryimage.FieldByName('imager3').Asstring,'A:\CDC\Develop\Develop Team\ERP Images','\\192.168.123.111\Develop Team\ERP Images', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicR3);
   if FileExists(shoePicR3)=true then
      testimageR3.Picture.LoadFromFile(shoePicR3);
    if FileExists(shoePicR3)=false then
      testimageR3.Picture.Bitmap:=nil;

//    shoePicR4:=StringReplace(qryimage.FieldByName('imager4').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    shoePicR4:=StringReplace(qryimage.FieldByName('imager4').Asstring,'A:\CDC\Develop\Develop Team\ERP Images','\\192.168.123.111\Develop Team\ERP Images', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicR4);
   if FileExists(shoePicR4)=true then
      testimageR4.Picture.LoadFromFile(shoePicR4);
    if FileExists(shoePicR4)=false then
      testimageR4.Picture.Bitmap:=nil;

//    shoePicCFM:=StringReplace(qryimage.FieldByName('imageCFM').Asstring,'A:','\\192.168.23.11\A_DataCenter', [rfReplaceAll, rfIgnoreCase]);
    shoePicCFM:=StringReplace(qryimage.FieldByName('imageCFM').Asstring,'A:\CDC\Develop\Develop Team\ERP Images','\\192.168.123.111\Develop Team\ERP Images', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(shoePicCFM);
   if FileExists(shoePicCFM)=true then
      testimageCFM.Picture.LoadFromFile(shoePicCFM);
    if FileExists(shoePicCFM)=false then
      testimageCFM.Picture.Bitmap:=nil;
end;

procedure TSampleDevelopInformation.DBGridEh5CellClick(Column: TColumnEh);
var ShoePicR3:string;
begin
    ShoePicR3:=StringReplace(qryr3.FieldByName('imgnamer3').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePicr3);
   if FileExists(ShoePicr3)=true then
      IMAGEr3.Picture.LoadFromFile(ShoePicr3);
    if FileExists(ShoePicr3)=false then
      IMAGEr3.Picture.Bitmap:=nil;
end;

procedure TSampleDevelopInformation.DBGridEh4CellClick(Column: TColumnEh);
var ShoePicR2:string;
begin
    ShoePicR2:=StringReplace(qryr2.FieldByName('imgnamer2').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePicr2);
   if FileExists(ShoePicr2)=true then
      IMAGEr2.Picture.LoadFromFile(ShoePicr2);
    if FileExists(ShoePicr2)=false then
      IMAGEr2.Picture.Bitmap:=nil;
end;

procedure TSampleDevelopInformation.yjCellClick(Column: TColumnEh);
var ShoePicR1:string;
begin
    ShoePicR1:=StringReplace(qryr1.FieldByName('imgnamer1').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePicr1);
   if FileExists(ShoePicr1)=true then
      IMAGEr1.Picture.LoadFromFile(ShoePicr1);
    if FileExists(ShoePicr1)=false then
      IMAGEr1.Picture.Bitmap:=nil;
end;

procedure TSampleDevelopInformation.DBGridEh1CellClick(Column: TColumnEh);
var ShoePiccfm:string;
begin
    ShoePiccfm:=StringReplace(QRYCFM.FieldByName('imgnamecfm').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePiccfm);
   if FileExists(ShoePiccfm)=true then
      IMAGE1.Picture.LoadFromFile(ShoePiccfm);
    if FileExists(ShoePiccfm)=false then
      IMAGE1.Picture.Bitmap:=nil;
end;

procedure TSampleDevelopInformation.DBGridEh3CellClick(Column: TColumnEh);
var ShoePic:string;
begin
    ShoePic:=StringReplace(qrykfxxzl.FieldByName('imgnamecfm').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePic);
   if FileExists(ShoePic)=true then
      shoeimage.Picture.LoadFromFile(ShoePic);
    if FileExists(ShoePic)=false then
      shoeimage.Picture.Bitmap:=nil;
end;
procedure TSampleDevelopInformation.DateTimePicker1Change(Sender: TObject);
begin
    r1modifydate();
    Qryr1.FieldByName('pullCFMDate').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker1.datetime);
    DBEdit21.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker1.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker43Change(
  Sender: TObject);
begin
    r2modifydate();
    Qryr2.FieldByName('pullCFMDate').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker43.datetime);
    DBEdit24.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker43.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker44Change(
  Sender: TObject);
begin
    r3modifydate();
    Qryr3.FieldByName('pullCFMDate').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker44.datetime);
    DBEdit180.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker44.datetime);
end;

procedure TSampleDevelopInformation.DateTimePicker45Change(
  Sender: TObject);
begin
    r4modifydate();
    Qryr4.FieldByName('pullCFMDate').AsString:=FormatDateTime('MM/dd/yyyy',DateTimePicker45.datetime);
    DBEdit181.text:=FormatDateTime('MM/dd/yyyy',DateTimePicker45.datetime);
end;

procedure TSampleDevelopInformation.DBGridEh7CellClick(Column: TColumnEh);
var ShoePicR4:string;
begin
    ShoePicR4:=StringReplace(qryr4.FieldByName('imgnamer4').Asstring,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
    funcObj.WriteErrorLog(ShoePicr4);
   if FileExists(ShoePicr4)=true then
      IMAGEr4.Picture.LoadFromFile(ShoePicr4);
    if FileExists(ShoePicr4)=false then
      IMAGEr4.Picture.Bitmap:=nil;
end;
procedure TSampleDevelopInformation.DBEdit82KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit189KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit190KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit192KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit191KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit177KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit84KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit85KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit107KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit136KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit193KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit194KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit195KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit69KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit119KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit118KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit196KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit197KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit198KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit199KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit206KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit200KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit178KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit148KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit147KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit201KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit202KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit203KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;
procedure TSampleDevelopInformation.DBEdit204KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit205KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit179KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit173KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBEdit172KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (Key in ['0'..'9','.',#8]) then Key := #0;
 end;

procedure TSampleDevelopInformation.DBComboBox4Change(Sender: TObject);
begin
  if QryCFM.State in [DsEdit] then begin
    tempQ.Active := false;
    tempQ.SQL.Clear;
    tempQ.SQL.Add('Select * from GamePlan where Season = '''+QryCFM.fieldbyname('season').AsString+'''');
    tempQ.Active := true;
    if QryCFM.FieldByName('subtype').Value = 'INLINE' then begin
      if (DBComboBox4.Text = 'Jan') or (DBComboBox4.Text = 'Apr') or (DBComboBox4.Text = 'Jul') or (DBComboBox4.Text = 'Oct') then
        QryCFM.FieldByName('PCDate').Value := tempQ.fieldbyname('RFC_of_first_buy').Value
      else if (DBComboBox4.Text = 'Feb') or (DBComboBox4.Text = 'May') or (DBComboBox4.Text = 'Aug') or (DBComboBox4.Text = 'Nov') then
        QryCFM.FieldByName('PCDate').Value := tempQ.fieldbyname('RFC_of_2nd_buy').Value
      else if (DBComboBox4.Text = 'Mar') or (DBComboBox4.Text = 'Jun') or (DBComboBox4.Text = 'Sep') or (DBComboBox4.Text = 'Dec') then
        QryCFM.FieldByName('PCDate').Value := tempQ.fieldbyname('RFC_of_3rd_buy').Value;
    end;
  end;
end;

procedure TSampleDevelopInformation.Basemodifydate();
begin
  with qrykfxxzl do
  begin
    cachedupdates:=true;
    requestlive:=true;
    qrykfxxzl.edit;
  end;
end;

procedure TSampleDevelopInformation.DateTimePicker46Change(
  Sender: TObject);
begin
  Basemodifydate();
  qrykfxxzl.FieldByName('RFCDeadlineDate').AsString:=FormatDateTime('yyyy/MM/dd',DateTimePicker46.datetime);
  DBEdit63.text:=FormatDateTime('yyyy/MM/dd',DateTimePicker46.datetime);
end;

end.




