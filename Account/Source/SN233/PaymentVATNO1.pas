unit PaymentVATNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles, dateutils, Menus,StrUtils;

type
  TPaymentVATNO = class(TForm)
    Panel18: TPanel;
    Label60: TLabel;
    Btn_I: TBitBtn;
    Btn_D: TBitBtn;
    Btn_M: TBitBtn;
    Btn_S: TBitBtn;
    Btn_C: TBitBtn;
    Btn_E: TBitBtn;
    Btn_Q: TButton;
    PC2: TPageControl;
    TS21: TTabSheet;
    DBGridEh3: TDBGridEh;
    TS22: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel20: TPanel;
    BtnS_I: TBitBtn;
    BtnS_D: TBitBtn;
    BtnS_M: TBitBtn;
    BtnS_S: TBitBtn;
    BtnS_C: TBitBtn;
    BtnS_P: TBitBtn;
    BtnS_E: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BtnSS_I: TBitBtn;
    BtnSS_D: TBitBtn;
    BtnSS_M: TBitBtn;
    BtnSS_S: TBitBtn;
    BtnSS_C: TBitBtn;
    BtnSS_P: TBitBtn;
    BtnSS_E: TBitBtn;
    qry_CGPayment: TQuery;
    qry_CGPaymentHDNO: TStringField;
    qry_CGPaymentZSBH: TStringField;
    qry_CGPaymentzsywjc: TStringField;
    qry_CGPaymentDEPID: TStringField;
    qry_CGPaymentDepName: TStringField;
    qry_CGPaymentHD_LOAI: TStringField;
    qry_CGPaymentUSERID: TStringField;
    qry_CGPaymentUSERDATE: TDateTimeField;
    qry_CGPaymentYN: TStringField;
    qry_CGPaymentzsqm: TStringField;
    qry_CGPaymentDepMemo: TStringField;
    DS_CGPayment: TDataSource;
    Up_CGPay: TUpdateSQL;
    Up_CGPayS: TUpdateSQL;
    DS_CGPaymentS: TDataSource;
    qry_CGPaymentS: TQuery;
    qry_CGPaymentSSTT: TFloatField;
    qry_CGPaymentSFKBH: TStringField;
    qry_CGPaymentSSO_TOKHAI: TStringField;
    qry_CGPaymentSLOAIHINH: TStringField;
    qry_CGPaymentSNGAY_THUCLANH: TDateTimeField;
    qry_CGPaymentSUSACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentSCWHL: TCurrencyField;
    qry_CGPaymentSVNACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentSUSACC_NHATHAU: TCurrencyField;
    qry_CGPaymentSVNACC_NHATHAU: TCurrencyField;
    qry_CGPaymentSUSACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentSVNACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentSUSERID: TStringField;
    qry_CGPaymentSUSERDATE: TDateTimeField;
    qry_CGPaymentSYN: TStringField;
    qry_CGPaymentSPercent_TT: TIntegerField;
    qry_CGPaymentSS: TQuery;
    qry_CGPaymentSSSTT: TFloatField;
    qry_CGPaymentSSFKBH: TStringField;
    qry_CGPaymentSSZSBH_MST: TStringField;
    qry_CGPaymentSSKYHIEU_HOADON: TStringField;
    qry_CGPaymentSSSO_HOADON: TStringField;
    qry_CGPaymentSSVATDATE: TDateTimeField;
    qry_CGPaymentSSTONGTIEN_CHUATHUE: TCurrencyField;
    qry_CGPaymentSSTONGTIEN_THUE: TCurrencyField;
    qry_CGPaymentSSTONGTIEN_THANHTOAN: TCurrencyField;
    qry_CGPaymentSSUSERID: TStringField;
    qry_CGPaymentSSUSERDATE: TDateTimeField;
    qry_CGPaymentSSYN: TStringField;
    DS_CGPaymentSS: TDataSource;
    Up_CGPaySS: TUpdateSQL;
    BDelRec: TQuery;
    qry_temp: TQuery;
    qry_id: TQuery;
    qry_idUSERID: TStringField;
    qry_idUSERNAME: TStringField;
    DBGridEh2: TDBGridEh;
    qry_CGPaymentGSBH: TStringField;
    Check: TCheckBox;
    qry_CGPaymentSTT: TQuery;
    qry_CGPaymentSTTFKBH: TStringField;
    qry_CGPaymentSTTSO_TOKHAI: TStringField;
    qry_CGPaymentSTTUSACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentSTTCWHL: TCurrencyField;
    qry_CGPaymentSTTVNACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentSTTUSACC_NHATHAU: TCurrencyField;
    qry_CGPaymentSTTVNACC_NHATHAU: TCurrencyField;
    qry_CGPaymentSTTUSACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentSTTVNACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentSTTPercent_TT: TIntegerField;
    qry_CGPaymentSTTUSERID: TStringField;
    qry_CGPaymentSTTUSERDATE: TDateTimeField;
    qry_CGPaymentSTTYN: TStringField;
    BtnS_DA: TBitBtn;
    BtnSS_DA: TBitBtn;
    qry_CGPaymentFKBH: TStringField;
    Panel7: TPanel;
    DBGridEh5: TDBGridEh;
    DS_CGPaymentSTT: TDataSource;
    Up_CGPaySTT: TUpdateSQL;
    Panel2: TPanel;
    BtnSTT_I: TBitBtn;
    BtnSTT_D: TBitBtn;
    BtnSTT_M: TBitBtn;
    BtnSTT_S: TBitBtn;
    BtnSTT_C: TBitBtn;
    Panel3: TPanel;
    Label72: TLabel;
    qry_CGPaymentHD_NOIDUNG: TStringField;
    qry_CGPaymentHD_NOIDUNG_TW: TStringField;
    TS23: TTabSheet;
    DBGridEh6: TDBGridEh;
    Panel4: TPanel;
    BtnUNG_I: TBitBtn;
    BtnUNG_D: TBitBtn;
    BtnUNG_M: TBitBtn;
    BtnUNG_S: TBitBtn;
    BtnUNG_C: TBitBtn;
    Label1: TLabel;
    BtnUNG_P: TBitBtn;
    TS24: TTabSheet;
    DBGridEh8: TDBGridEh;
    Panel5: TPanel;
    Label3: TLabel;
    BtnUNGHD_I: TBitBtn;
    BtnUNGHD_D: TBitBtn;
    BtnUNGHD_M: TBitBtn;
    BtnUNGHD_S: TBitBtn;
    BtnUNGHD_C: TBitBtn;
    BtnUNGHD_P: TBitBtn;
    DBGridEh9: TDBGridEh;
    DS_CGPaymentUNGHD: TDataSource;
    qry_CGPaymentUNGHD: TQuery;
    qry_CGPaymentUNGHDSTT: TStringField;
    qry_CGPaymentUNGHDFKBH: TStringField;
    qry_CGPaymentUNGHDZSBH_MST: TStringField;
    qry_CGPaymentUNGHDVATNO: TStringField;
    qry_CGPaymentUNGHDVATDATE: TDateTimeField;
    qry_CGPaymentUNGHDTONGTIEN_CHUATHUE: TCurrencyField;
    qry_CGPaymentUNGHDTONGTIEN_THUE: TCurrencyField;
    qry_CGPaymentUNGHDTONGTIEN_THANHTOAN: TCurrencyField;
    qry_CGPaymentUNGHDUSERID: TStringField;
    qry_CGPaymentUNGHDUSERDATE: TDateTimeField;
    qry_CGPaymentUNGHDYN: TStringField;
    qry_CGPaymentUNGHDKYHIEU_HOADON: TStringField;
    Up_CGPayUNGHD: TUpdateSQL;
    DBGridEh7: TDBGridEh;
    qry_CGPaymentUNG: TQuery;
    qry_CGPaymentUNGFKBH: TStringField;
    qry_CGPaymentUNGDECLARATION: TStringField;
    qry_CGPaymentUNGUSACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentUNGCWHL: TCurrencyField;
    qry_CGPaymentUNGVNACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentUNGPercent_TT: TIntegerField;
    qry_CGPaymentUNGUSACC_NHATHAU: TCurrencyField;
    qry_CGPaymentUNGVNACC_NHATHAU: TCurrencyField;
    qry_CGPaymentUNGUSACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentUNGVNACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentUNGUSERID: TStringField;
    qry_CGPaymentUNGUSERDATE: TDateTimeField;
    qry_CGPaymentUNGYN: TStringField;
    DS_CGPaymentUNG: TDataSource;
    Up_CGPayUNG: TUpdateSQL;
    Panel6: TPanel;
    Panel8: TPanel;
    btn_I_TT: TBitBtn;
    Btn_D_TT: TBitBtn;
    Btn_M_TT: TBitBtn;
    btn_S_TT: TBitBtn;
    btn_C_TT: TBitBtn;
    DBGridEh10: TDBGridEh;
    Label4: TLabel;
    qry_TTTK: TQuery;
    DS_TTTK: TDataSource;
    Up_TTTK: TUpdateSQL;
    qry_TTTKFKBH: TStringField;
    qry_TTTKFKBH_TTT: TStringField;
    qry_TTTKUSERID: TStringField;
    qry_TTTKUSERDATE: TDateTimeField;
    qry_TTTKYN: TStringField;
    qry_TTTKHD_LOAI: TStringField;
    qry_TTTKHD_LOAITTT: TStringField;
    qry_TTTKTONGTRIGIA_HOADON: TCurrencyField;
    qry_TTTKPercent_TT: TIntegerField;
    qry_TTHD: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    Up_TTHD: TUpdateSQL;
    DS_TTHD: TDataSource;
    qry_TTHDSTT: TStringField;
    qry_TTHDZSBH_MST: TStringField;
    qry_TTHDVATNO: TStringField;
    qry_TTHDVATDATE: TDateTimeField;
    qry_TTHDKYHIEU_HOADON: TStringField;
    qry_TTHDTONGTIEN_CHUATHUE: TCurrencyField;
    qry_TTHDTONGTIEN_THUE: TCurrencyField;
    qry_TTHDTONGTIEN_THANHTOAN: TCurrencyField;
    Panel10: TPanel;
    Panel11: TPanel;
    BtnSTT2_I: TBitBtn;
    BtnSTT2_D: TBitBtn;
    BtnSTT2_M: TBitBtn;
    BtnSTT2_S: TBitBtn;
    BtnSTT2_C: TBitBtn;
    DBGridEh12: TDBGridEh;
    Panel9: TPanel;
    Label5: TLabel;
    btn_C_TTHD: TBitBtn;
    btn_S_TTHD: TBitBtn;
    btn_M_TTHD: TBitBtn;
    btn_D_TTHD: TBitBtn;
    btn_I_TTHD: TBitBtn;
    DBGridEh11: TDBGridEh;
    Panel12: TPanel;
    Label6: TLabel;
    qry_CGPaymentUNGMEMO: TStringField;
    qry_CGPaymentSTT2: TQuery;
    qry_CGPaymentSTT2FKBH: TStringField;
    qry_CGPaymentSTT2ZSBH_MST: TStringField;
    qry_CGPaymentSTT2VATNO: TStringField;
    qry_CGPaymentSTT2TONGTIEN_CHUATHUE: TCurrencyField;
    qry_CGPaymentSTT2TONGTIEN_THUE: TCurrencyField;
    qry_CGPaymentSTT2TONGTIEN_THANHTOAN: TCurrencyField;
    qry_CGPaymentSTT2USERID: TStringField;
    qry_CGPaymentSTT2USERDATE: TDateTimeField;
    qry_CGPaymentSTT2YN: TStringField;
    DS_CGPaymentSTT2: TDataSource;
    Up_CGPaySTT2: TUpdateSQL;
    qry_CGPaymentUNGDOCNO: TStringField;
    qry_CGPaymentUNGMALOAIHINH: TStringField;
    qry_CGPaymentUNGNGAY_THUCLANH: TDateTimeField;
    BtnUNGHD_P_TB: TBitBtn;
    BtnUNG_P_TB: TBitBtn;
    BtnSS_P_TB: TBitBtn;
    BtnS_P_TB: TBitBtn;
    qry_CGPaymentSDOCNO: TStringField;
    qry_CGPaymentSTTMEMO: TStringField;
    BtnS_P_TB_VN: TBitBtn;
    qry_CGPaymentSTIENTE: TStringField;
    TS25: TTabSheet;
    TS26: TTabSheet;
    DBGridEh13: TDBGridEh;
    Panel14: TPanel;
    Label11: TLabel;
    BtnTAM_I: TBitBtn;
    BtnTAM_D: TBitBtn;
    BtnTAM_M: TBitBtn;
    BtnTAM_S: TBitBtn;
    BtnTAM_C: TBitBtn;
    BtnTAM_P: TBitBtn;
    Panel16: TPanel;
    Panel19: TPanel;
    Panel21: TPanel;
    Label13: TLabel;
    btn_C_PTU: TBitBtn;
    btn_S_PTU: TBitBtn;
    btn_M_PTU: TBitBtn;
    btn_D_PTU: TBitBtn;
    btn_I_PTU: TBitBtn;
    DBGridEh18: TDBGridEh;
    DBGridEh15: TDBGridEh;
    Panel15: TPanel;
    Label12: TLabel;
    BtnTAMP_I: TBitBtn;
    BtnTAMP_D: TBitBtn;
    BtnTAMP_M: TBitBtn;
    BtnTAMP_S: TBitBtn;
    BtnTAMP_C: TBitBtn;
    BtnTAMP_P: TBitBtn;
    DBGridEh14: TDBGridEh;
    DBGridEh16: TDBGridEh;
    Up_CGPayTAM_P: TUpdateSQL;
    DS_CGPaymentTAM_P: TDataSource;
    qry_CGPaymentTAM_P: TQuery;
    qry_CGPaymentTAM_PFKBH: TStringField;
    qry_CGPaymentTAM_PSTT: TStringField;
    qry_CGPaymentTAM_PLYDO: TStringField;
    qry_CGPaymentTAM_PSOTIEN_TT: TCurrencyField;
    qry_CGPaymentTAM_PUSERID: TStringField;
    qry_CGPaymentTAM_PUSERDATE: TDateTimeField;
    qry_CGPaymentTAM_PYN: TStringField;
    Label58: TLabel;
    Label61: TLabel;
    DTP7: TDateTimePicker;
    edt_HDNO: TEdit;
    Label59: TLabel;
    edt_Supplier: TEdit;
    DTP8: TDateTimePicker;
    Label2: TLabel;
    Label7: TLabel;
    edt_FKBH: TEdit;
    edt_SupplierName: TEdit;
    Label10: TLabel;
    edt_DeptID: TEdit;
    Label9: TLabel;
    Label8: TLabel;
    edt_SupplierNameTW: TEdit;
    edt_DeptNameTW: TEdit;
    qry_CGPaymentReason: TStringField;
    qry_CGPaymentNGAY_DUTINH_TT: TDateTimeField;
    qry_CGPaymentNGAY_TAMUNG: TDateTimeField;
    qry_CGPaymentCFMID: TStringField;
    qry_CGPaymentCFMDate: TDateTimeField;
    qry_CGPaymentSSKYHIEU: TStringField;
    qry_CGPaymentDV_TAMUNG: TStringField;
    qry_CGPaymentUSERNAME_TAMUNG: TStringField;
    qry_CGPaymentUSERID_TAMUNG: TStringField;
    qry_CGPaymentSSTRU_CHIETKHAU: TBooleanField;
    Panel17: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Label14: TLabel;
    BtnTAMss_C: TBitBtn;
    BtnTAMss_S: TBitBtn;
    BtnTAMss_M: TBitBtn;
    BtnTAMss_D: TBitBtn;
    BtnTAMss_I: TBitBtn;
    DBGridEh17: TDBGridEh;
    qry_CGPaymentTAM: TQuery;
    qry_CGPaymentTAMFKBH: TStringField;
    qry_CGPaymentTAMSOTIEN_TAMUNG: TCurrencyField;
    qry_CGPaymentTAMNGAY_TAMUNG: TDateTimeField;
    qry_CGPaymentTAMLOAI_CHUNGTU: TStringField;
    qry_CGPaymentTAMSOPHIEU: TStringField;
    qry_CGPaymentTAMNGAY_HOADON: TDateTimeField;
    qry_CGPaymentTAMSOTIEN_CHUATHUE: TCurrencyField;
    qry_CGPaymentTAMSOTIEN_THUE: TCurrencyField;
    qry_CGPaymentTAMSOTIEN_TT: TCurrencyField;
    qry_CGPaymentTAMSOTIEN_HOANLAI: TCurrencyField;
    qry_CGPaymentTAMSOTIEN_CHITHEM: TCurrencyField;
    qry_CGPaymentTAMUSERID: TStringField;
    qry_CGPaymentTAMUSERDATE: TDateTimeField;
    qry_CGPaymentTAMYN: TStringField;
    qry_CGPaymentTAMDV_TAMUNG: TStringField;
    qry_CGPaymentTAMUSERNAME_TAMUNG: TStringField;
    qry_CGPaymentTAMUSERID_TAMUNG: TStringField;
    qry_CGPaymentTAMss: TQuery;
    FloatField1: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    DateTimeField4: TDateTimeField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField27: TStringField;
    DateTimeField5: TDateTimeField;
    StringField28: TStringField;
    DS_CGPaymentTAMss: TDataSource;
    DS_CGPaymentTAM: TDataSource;
    Up_CGPayTAM: TUpdateSQL;
    Up_CGPayTAMss: TUpdateSQL;
    qry_TTPTU: TQuery;
    qry_TTPTUfkbh: TStringField;
    qry_TTPTUfkbh_ttt: TStringField;
    qry_TTPTUuserid: TStringField;
    qry_TTPTUuserdate: TDateTimeField;
    qry_TTPTUyn: TStringField;
    qry_TTPTUTHANHTOAN: TCurrencyField;
    DS_TTPTU: TDataSource;
    Up_TTPTU: TUpdateSQL;
    qry_CGPaymentTAMssTRU_CHIETKHAU: TBooleanField;
    qry_CGPaymentTAMssKYHIEU: TStringField;
    qry_CGPaymentTAMssSOPHIEU: TStringField;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    qry_CGPaymentTAM_PTIENTE: TStringField;
    BtnTAMP_P_USD: TBitBtn;
    qry_CGPaymentSPLX: TIntegerField;
    qry_CGPaymentSSPLX: TIntegerField;
    qry_CGPaymentTAMTIENTE: TStringField;
    BtnTAM_P_USD: TBitBtn;
    qry_TTPTUUSERID_TAMUNG: TStringField;
    BtnTAMP_P_TB: TBitBtn;
    BtnTAM_P_TB: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Btn_QClick(Sender: TObject);
    procedure Btn_IClick(Sender: TObject);
    procedure Btn_DClick(Sender: TObject);
    procedure Btn_MClick(Sender: TObject);
    procedure Btn_SClick(Sender: TObject);
    procedure Btn_CClick(Sender: TObject);
    procedure BtnS_IClick(Sender: TObject);
    procedure BtnS_DClick(Sender: TObject);
    procedure BtnS_MClick(Sender: TObject);
    procedure BtnS_SClick(Sender: TObject);
    procedure BtnS_CClick(Sender: TObject);
    procedure BtnS_EClick(Sender: TObject);
    procedure BtnS_PClick(Sender: TObject);
    procedure Btn_EClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure BtnSS_SClick(Sender: TObject);
    procedure BtnSS_PClick(Sender: TObject);
    procedure BtnSS_EClick(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure BtnSS_IClick(Sender: TObject);
    procedure BtnSS_DClick(Sender: TObject);
    procedure BtnSS_MClick(Sender: TObject);
    procedure BtnSS_CClick(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh4EditButtonClick(Sender: TObject);
    procedure PC2Change(Sender: TObject);
    procedure BtnSS_DAClick(Sender: TObject);
    procedure BtnS_DAClick(Sender: TObject);
    procedure BtnSTT_IClick(Sender: TObject);
    procedure BtnSTT_DClick(Sender: TObject);
    procedure BtnSTT_MClick(Sender: TObject);
    procedure BtnSTT_SClick(Sender: TObject);
    procedure BtnSTT_CClick(Sender: TObject);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh6EditButtonClick(Sender: TObject);
    procedure BtnUNG_IClick(Sender: TObject);
    procedure BtnUNG_DClick(Sender: TObject);
    procedure BtnUNG_MClick(Sender: TObject);
    procedure BtnUNG_SClick(Sender: TObject);
    procedure BtnUNG_CClick(Sender: TObject);
    procedure BtnUNG_PClick(Sender: TObject);
    procedure BtnUNGHD_IClick(Sender: TObject);
    procedure BtnUNGHD_DClick(Sender: TObject);
    procedure BtnUNGHD_MClick(Sender: TObject);
    procedure BtnUNGHD_SClick(Sender: TObject);
    procedure BtnUNGHD_CClick(Sender: TObject);
    procedure DBGridEh8EditButtonClick(Sender: TObject);
    procedure DBGridEh9GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh7GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh8GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BtnUNGHD_PClick(Sender: TObject);
    procedure Btn_D_TTClick(Sender: TObject);
    procedure btn_C_TTClick(Sender: TObject);
    procedure btn_S_TTClick(Sender: TObject);
    procedure btn_I_TTClick(Sender: TObject);
    procedure btn_I_TTHDClick(Sender: TObject);
    procedure btn_D_TTHDClick(Sender: TObject);
    procedure btn_M_TTHDClick(Sender: TObject);
    procedure btn_C_TTHDClick(Sender: TObject);
    procedure Btn_M_TTClick(Sender: TObject);
    procedure btn_S_TTHDClick(Sender: TObject);
    procedure DBGridEh10EditButtonClick(Sender: TObject);
    procedure DBGridEh11EditButtonClick(Sender: TObject);
    procedure BtnSTT2_IClick(Sender: TObject);
    procedure BtnSTT2_DClick(Sender: TObject);
    procedure BtnSTT2_MClick(Sender: TObject);
    procedure BtnSTT2_CClick(Sender: TObject);
    procedure BtnSTT2_SClick(Sender: TObject);
    procedure DBGridEh12GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh11GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh10GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qry_CGPaymentAfterScroll(DataSet: TDataSet);
    procedure BtnUNGHD_P_TBClick(Sender: TObject);
    procedure BtnUNG_P_TBClick(Sender: TObject);
    procedure BtnSS_P_TBClick(Sender: TObject);
    procedure BtnS_P_TBClick(Sender: TObject);
    procedure BtnS_P_TB_VNClick(Sender: TObject);
    procedure BtnTAM_IClick(Sender: TObject);
    procedure BtnTAM_DClick(Sender: TObject);
    procedure BtnTAM_MClick(Sender: TObject);
    procedure BtnTAM_SClick(Sender: TObject);
    procedure BtnTAM_CClick(Sender: TObject);
    procedure BtnTAM_PClick(Sender: TObject);
    procedure btn_I_PTUClick(Sender: TObject);
    procedure btn_D_PTUClick(Sender: TObject);
    procedure btn_M_PTUClick(Sender: TObject);
    procedure btn_S_PTUClick(Sender: TObject);
    procedure btn_C_PTUClick(Sender: TObject);
    procedure BtnTAMP_IClick(Sender: TObject);
    procedure BtnTAMP_DClick(Sender: TObject);
    procedure BtnTAMP_MClick(Sender: TObject);
    procedure BtnTAMP_SClick(Sender: TObject);
    procedure BtnTAMP_CClick(Sender: TObject);
    procedure BtnTAMP_PClick(Sender: TObject);
    procedure DBGridEh13DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh13EditButtonClick(Sender: TObject);
    procedure DBGridEh13GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh18GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh14DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh14EditButtonClick(Sender: TObject);
    procedure DBGridEh14GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh16GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh18EditButtonClick(Sender: TObject);
    procedure DBGridEh15GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BtnTAMss_IClick(Sender: TObject);
    procedure BtnTAMss_DClick(Sender: TObject);
    procedure BtnTAMss_MClick(Sender: TObject);
    procedure BtnTAMss_SClick(Sender: TObject);
    procedure BtnTAMss_CClick(Sender: TObject);
    procedure DBGridEh17GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh17EditButtonClick(Sender: TObject);
    procedure qry_CGPaymentTAM_PAfterOpen(DataSet: TDataSet);
    procedure BtnTAMP_P_USDClick(Sender: TObject);
    procedure qry_CGPaymentTAMAfterOpen(DataSet: TDataSet);
    procedure qry_CGPaymentTAMAfterScroll(DataSet: TDataSet);
    procedure BtnTAM_P_USDClick(Sender: TObject);
    procedure BtnTAMP_P_TBClick(Sender: TObject);
    procedure BtnTAM_P_TBClick(Sender: TObject);
  private
    { Private declarations }
  public
    VNPrice_DiplayFormat,ComName,ComNameCH,AccountN233_ISO_HD,AccountN233_ISO_TK,AccountN233_ISO_TU,AccountN233_ISO_PTU:string;
    VNPrice_Decimal:Byte;
    AccountN233_CheckLinkServer, AcountN233_CheckBFactory, SQL_LinkServer, SQL_CheckBFactory : string;
    AccountN233_Check_Print,AccountN233_Check_Print_TB :string;
    { Public declarations }
    function GetChineseDate(myDate:TDateTime):string;
    procedure ReadIni();
  end;

var
  PaymentVATNO: TPaymentVATNO;
  NDate,date:Tdate;

implementation

uses PaymentVATNO_Print1, PaymentVATNO_Print_TB1, PaymentVATNO_HD1,
     PaymentVATNO_TK1, PaymentVATNO_PrintTT1, PaymentVATNO_PrintTT_TB1,
     PaymentVATNO_PrintHD1, PaymentVATNO_PrintHD_TB1,PaymentVATNO_DEP1,
     PaymentVATNO_ZS1, main1, fununit, PaymentUng1, PyamentUngHD1,
     PaymentVATNO_PrintTTHD1, PaymentVATNO_PrintTTHD_TB1,
     PaymentVATNO_Print_TB_VN1,PaymentVATNO_PrintTTTU1,PaymentVATNO_PrintPTU1,
  PaymentVATNO_PTU1, PaymentVATNO_PrintPTU_USD1,
  PaymentVATNO_PrintTTTU_USD1, PaymentVATNO_PrintPTU_TB1,
  PaymentVATNO_PrintTTTU_TB1;

{$R *.dfm}
procedure TPaymentVATNO.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  AccountN233_ISO_HD:='T-DCC-033E';
  AccountN233_ISO_TK:='T-DCC-086B';
  AccountN233_ISO_TU:='T-DCC-077C';
  AccountN233_ISO_PTU:='T-DCC-112C';
  AccountN233_CheckLinkServer:='Y';
  AcountN233_CheckBFactory:='Y';
  AccountN233_Check_Print:='Y';
  AccountN233_Check_Print_TB:='N';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  SQL_LinkServer:='';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      AccountN233_ISO_HD:=MyIni.ReadString('ERP','AccountN233_ISO_HD','');
      AccountN233_ISO_TK:=MyIni.ReadString('ERP','AccountN233_ISO_TK','');
      AccountN233_ISO_TU:=MyIni.ReadString('ERP','AccountN233_ISO_TU','');
      AccountN233_ISO_PTU:=MyIni.ReadString('ERP','AccountN233_ISO_PTU','');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
      AcountN233_CheckBFactory:=MyIni.ReadString('ERP','AcountN233_CheckBFactory','');
      AccountN233_Check_Print:=MyIni.ReadString('ERP','AccountN233_Check_Print','Y');
      AccountN233_Check_Print_TB:=MyIni.ReadString('ERP','AccountN233_Check_Print_TB','N');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(qry_CGPaymentS.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentS.FieldByName('VNACC_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentS.FieldByName('VNACC_NHATHAU')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentS.FieldByName('VNACC_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSS.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSS.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSS.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('USACC_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('VNACC_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('USACC_NHATHAU')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('VNACC_NHATHAU')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('USACC_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('VNACC_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT2.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT2.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT2.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;

  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;

  TCurrencyField(qry_TTTK.FieldByName('TONGTRIGIA_HOADON')).DisplayFormat:=VNPrice_DiplayFormat;

  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;

  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_TT')).DisplayFormat:=VNPrice_DiplayFormat;

  TCurrencyField(qry_CGPaymentTAMss.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentTAMss.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentTAMss.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;

  TCurrencyField(qry_TTPTU.FieldByName('THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;

  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;

end;

procedure TPaymentVATNO.FormDestroy(Sender: TObject);
begin
  PaymentVATNO:=nil;
  //CreateLT_DisConnect();
end;

procedure TPaymentVATNO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Btn_S.Enabled or BtnS_S.Enabled or BtnSS_S.Enabled or BtnUNG_S.Enabled
    or BtnUNGHD_S.Enabled or BtnSTT_S.Enabled or Btn_S_TT.Enabled or Btn_S_TTHD.Enabled
    or BtnTAM_S.Enabled or BtnTAMss_S.Enabled or btn_S_PTU.Enabled or BtnTAMP_S.Enabled then
  begin
    showmessage('Pls save the first.');
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure TPaymentVATNO.FormCreate(Sender: TObject);
  var MyIni :Tinifile;
      AppDir:string;
begin
  with qry_temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP7.Date:=NDate-15;
  DTP8.date:=NDate;
  date:=NDate;
  PC2.ActivePage:=TS21;

  //
  ReadIni();
  //CreateLT_Connect();
end;

procedure TPaymentVATNO.Btn_QClick(Sender: TObject);
begin
  if BtnS_S.Enabled or Btn_S.Enabled or BtnSTT_S.Enabled or Btn_S_TT.Enabled then
  begin
    messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
    abort;
  end;
  if Btn_S.Enabled or BtnSS_S.Enabled or BtnSTT2_S.Enabled or Btn_S_TTHD.Enabled then
  begin
    messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
    abort;
  end;
  if BtnUNG_S.Enabled or Btn_S.Enabled then
  begin
    messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
    abort;
  end;
  if BtnUNGHD_S.Enabled or Btn_S.Enabled then
  begin
    messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
    abort;
  end;
  if BtnTAM_S.Enabled or BtnTAMss_S.Enabled or btn_S_PTU.Enabled or Btn_S.Enabled then
  begin
    messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
    //PC2.ActivePage:=TS23;
    abort;
  end;
  if BtnTAMP_S.Enabled or Btn_S.Enabled then
  begin
    messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
    //PC2.ActivePage:=TS23;
    abort;
  end;
  if PC2.ActivePageIndex=0 then
  begin
    With qry_CGPayment do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SELECT FKBH,HDNO, ZSBH, ZSZL.zsqm, ZSZL.zsywjc, CGZL_Payment.GSBH, CGZL_Payment.DEPID, BDepartment.DepName, BDepartment.DepMemo, ');
      SQL.Add('       HD_NOIDUNG, HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Payment.USERDATE, CGZL_Payment.YN, CGZL_Payment.CFMID, CGZL_Payment.CFMDate,Reason,NGAY_DUTINH_TT,NGAY_TAMUNG, DV_TAMUNG, USERNAME_TAMUNG,USERID_TAMUNG ');
      SQL.Add('FROM CGZL_Payment ');
      SQL.Add('LEFT JOIN (SELECT zsdh, zsqm, zsywjc,yn FROM zszl UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc,yn FROM zszl_pay )ZSZL ON CGZL_Payment.ZSBH=ZSDH and ZSZL.yn=''2'' ');

      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ');
      SQL.Add('WHERE HD_LOAI=''1'' and CGZL_Payment.GSBH='''+main.Edit2.Text+''' ');
      if trim(edt_HDNO.Text) <>'' then
        SQL.Add('    and HDNO like ''%'+edt_HDNO.Text+'%'' ');
      if trim(edt_Supplier.Text) <>'' then
        SQL.Add('    and ZSBH like ''%'+edt_Supplier.Text+'%'' ');
      if trim(edt_FKBH.Text) <>'' then
        SQL.Add('    and FKBH like ''%'+edt_FKBH.Text+'%'' ');
      if trim(edt_SupplierName.Text) <>'' then
        SQL.Add('    and zsywjc like '''+edt_SupplierName.Text+'%'' ');
      if trim(edt_SupplierNameTW.Text) <>'' then
        SQL.Add('    and zsqm like '''+edt_SupplierNameTW.Text+'%'' ');
      if trim(edt_DeptID.Text) <>'' then
        SQL.Add('    and CGZL_Payment.DEPID like '''+edt_DeptID.Text+'%'' ');
      if trim(edt_DeptNameTW.Text) <>'' then
        SQL.Add('    and BDepartment.DepName like '''+edt_DeptNameTW.Text+'%'' ');
      if Check.Checked then
        SQL.Add('and CGZL_Payment.USERID='+''''+main.Edit1.Text+''' ');
      sql.add('      and convert(varchar,CGZL_Payment.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
      sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
      SQL.Add('order by  CGZL_Payment.USERDATE desc , HDNO asc ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with qry_CGPaymentS do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      Active := false;
      SQL.Clear;
      SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY a.DECLARATION ASC) AS STT, a.FKBH, a.DECLARATION, b.DOCNO, b.MALOAIHINH LOAIHINH, isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) NGAY_THUCLANH ');
      SQL.Add('       , case when a.TIENTE=''VND'' then 0.0 else b.TONGTRIGIA_HOADON end  USACC_CHUATHUE,case when a.TIENTE=''VND'' then 0.0 else a.CWHL end  CWHL  ');
      SQL.Add('	      , case when a.TIENTE=''VND'' then b.TONGTRIGIA_HOADON else round((a.CWHL*b.TONGTRIGIA_HOADON),0) end VNACC_CHUATHUE, a.Percent_TT  ');
      SQL.Add('	      , case when a.TIENTE=''VND'' then 0.0 else round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) end USACC_NHATHAU ');
      SQL.Add('	      , case when a.TIENTE=''VND'' then  ROUND((round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0) else round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0) end VNACC_NHATHAU ');
      SQL.Add(' 		  , case when a.TIENTE=''VND'' then 0.0 else round(((b.TONGTRIGIA_HOADON)-(round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) end USACC_THANHTOAN ');
      SQL.Add('       , case when a.TIENTE=''VND'' then round(b.TONGTRIGIA_HOADON -(round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0) ');
      SQL.Add('               else  round(((round((a.CWHL*b.TONGTRIGIA_HOADON),0))-(round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0))),0) end VNACC_THANHTOAN ');
      SQL.Add('	      , a.USERID, a.USERDATE, a.YN, a.TIENTE ');
      SQL.Add('       , case when (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX  ');
      SQL.Add(' FROM CGZL_PaymentS a ');
      SQL.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_Declaration] b ON a.DECLARATION=b.DECLARATION');
      SQL.Add(' LEFT JOIN CGZL_Payment on a.FKBH=CGZL_Payment.FKBH ');
      SQL.Add(' LEFT JOIN DOCNO_File on a.DOCNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH ');
      SQL.Add(' WHERE a.FKBH=:FKBH and a.DECLARATION<>''TRUTIEN''');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    Btn_I.Enabled := true;
    //Btn_D.Enabled := true;
    Btn_M.Enabled := true;
    qry_CGPaymentSTT.Active:=true;
    if qry_CGPaymentSTT.RecordCount=0 then
    begin
      BtnSTT_D.Enabled:=false;
      BtnSTT_M.Enabled:=false;
      BtnSTT_I.Enabled:=true;
    end else if qry_CGPaymentSTT.RecordCount>0 then
    begin
      //BtnSTT_D.Enabled:=true;
      BtnSTT_M.Enabled:=true;
      BtnSTT_I.Enabled:=false;
    end else BtnSTT_I.Enabled := false;
    if qry_CGPayment.RecordCount>0 then
      BtnS_I.Enabled := true;
    if qry_CGPaymentS.RecordCount>0 then
    begin
      //BtnS_D.Enabled := true;
      BtnS_DA.Enabled := true;
      BtnS_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnS_P.Enabled := true;
      end else
      begin
        BtnS_P.Enabled := false;
      end;
      if AccountN233_Check_Print_TB='Y'  then
      begin
        BtnS_P_TB.Enabled := true;
        BtnS_P_TB_VN.Enabled := true;
      end else
      begin
        BtnS_P_TB.Enabled := false;
        BtnS_P_TB_VN.Enabled := false;
      end;

      BtnS_E.Enabled := true;
    end;
    qry_TTTK.Active:=true;
    Btn_D_TT.Enabled:=true;
    Btn_I_TT.Enabled:=true;

  end;

  if PC2.ActivePageIndex=1 then
  begin
    With qry_CGPayment do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SELECT FKBH,HDNO, ZSBH, ZSZL.zsqm, ZSZL.zsywjc, CGZL_Payment.GSBH, CGZL_Payment.DEPID, BDepartment.DepName, BDepartment.DepMemo, ');
      SQL.Add('       HD_NOIDUNG, HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Payment.USERDATE, CGZL_Payment.YN, CGZL_Payment.CFMID, CGZL_Payment.CFMDate,Reason,NGAY_DUTINH_TT,NGAY_TAMUNG, DV_TAMUNG, USERNAME_TAMUNG,USERID_TAMUNG ');
      SQL.Add('FROM CGZL_Payment   ');
      SQL.Add('LEFT JOIN (SELECT zsdh, zsqm, zsywjc,yn FROM zszl UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc,yn FROM zszl_pay )ZSZL ON CGZL_Payment.ZSBH=ZSDH ');
      SQL.Add('and ZSZL.yn=''2''  ');
      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ');
      SQL.Add('WHERE HD_LOAI=''2'' and CGZL_Payment.GSBH='''+main.Edit2.Text+''' ');
      if trim(edt_HDNO.Text) <>'' then
        SQL.Add('    and HDNO like ''%'+edt_HDNO.Text+'%'' ');
      if trim(edt_Supplier.Text) <>'' then
        SQL.Add('    and ZSBH like ''%'+edt_Supplier.Text+'%'' ');
      if trim(edt_FKBH.Text) <>'' then
        SQL.Add('    and FKBH like ''%'+edt_FKBH.Text+'%'' ');
      if trim(edt_SupplierName.Text) <>'' then
        SQL.Add('    and zsywjc like '''+edt_SupplierName.Text+'%'' ');
      if trim(edt_SupplierNameTW.Text) <>'' then
        SQL.Add('    and zsqm like '''+edt_SupplierNameTW.Text+'%'' ');
      if trim(edt_DeptID.Text) <>'' then
        SQL.Add('    and CGZL_Payment.DEPID like '''+edt_DeptID.Text+'%'' ');
      if trim(edt_DeptNameTW.Text) <>'' then
        SQL.Add('    and BDepartment.DepName like '''+edt_DeptNameTW.Text+'%'' ');
      if Check.Checked then
        SQL.Add('and CGZL_Payment.USERID='+''''+main.Edit1.Text+''' ');
      sql.add('      and convert(varchar,CGZL_Payment.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
      sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
      SQL.Add('order by  CGZL_Payment.USERDATE desc , HDNO asc ');
      active:=true;
    end;

    with qry_CGPaymentSS do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      sql.Clear;
      sql.Add(' SELECT ROW_NUMBER() OVER(ORDER BY b.VATDATE ASC) AS STT, a.FKBH, a.ZSBH_MST, a.VATNO ');
      sql.Add('		    ,b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU,a.KYHIEU_HOADON,b.VATDATE,a.TRU_CHIETKHAU ');
      sql.Add('       ,CASE WHEN isnull(TRU_CHIETKHAU,0)=0 THEN b.TONGTIEN_CHUATHUE + isnull(b.TONGTIEN_PHI,0) ELSE ');
      sql.Add('       (b.TONGTIEN_CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0)) + isnull(b.TONGTIEN_PHI,0) end TONGTIEN_CHUATHUE ');
      sql.Add(' 	  	,isnull(b.TONGTIEN_THUE,0) TONGTIEN_THUE, isnull(b.TONGTIEN_THANHTOAN,0) TONGTIEN_THANHTOAN,a.USERID, a.USERDATE, a.YN ');
      SQL.Add('       ,case when (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX  ');
      sql.Add(' FROM CGZL_PaymentSS a ');
      sql.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZSBH_MST and a.KYHIEU_HOADON=b.KYHIEU_HOADON ');
      sql.Add(' LEFT JOIN  CGZL_Payment on a.FKBH=CGZL_Payment.FKBH ');
      sql.Add(' LEFT JOIN  DOCNO_File on a.VATNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH  ');
      sql.Add(' WHERE a.FKBH=:FKBH and a.ZSBH_MST<>''TRUTIEN'' ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    Btn_I.Enabled := true;
    //Btn_D.Enabled := true;
    Btn_M.Enabled := true;
    qry_CGPaymentSTT2.Active:=true;
    if qry_CGPaymentSTT2.RecordCount=0 then
    begin
      BtnSTT2_D.Enabled:=false;
      BtnSTT2_M.Enabled:=false;
      BtnSTT2_I.Enabled:=true;
    end else if qry_CGPaymentSTT2.RecordCount>0 then
    begin
      //BtnSTT2_D.Enabled:=true;
      BtnSTT2_M.Enabled:=true;
      BtnSTT2_I.Enabled:=false;
    end else BtnSTT2_I.Enabled := false;
    if qry_CGPayment.RecordCount>0 then
      BtnSS_I.Enabled := true;
    if qry_CGPaymentSS.RecordCount>0 then
    begin
      BtnSS_D.Enabled := true;
      BtnSS_DA.Enabled := true;
      BtnSS_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnSS_P.Enabled := true;
      end else
      begin
        BtnSS_P.Enabled := false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnSS_P_TB.Enabled := true;
      end else
      begin
        BtnSS_P_TB.Enabled := false;
      end;
      BtnSS_E.Enabled := true;
    end;
    qry_TTHD.Active:=true;
    Btn_D_TTHD.Enabled:=true;
    Btn_I_TTHD.Enabled:=true;
  end;
  if PC2.ActivePageIndex=2 then
  begin
    With qry_CGPayment do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SELECT FKBH,HDNO, ZSBH, ZSZL.zsqm, ZSZL.zsywjc, CGZL_Payment.GSBH, CGZL_Payment.DEPID, BDepartment.DepName, BDepartment.DepMemo, ');
      SQL.Add('       HD_NOIDUNG, HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Payment.USERDATE, CGZL_Payment.YN, CGZL_Payment.CFMID, CGZL_Payment.CFMDate,Reason,NGAY_DUTINH_TT,NGAY_TAMUNG, DV_TAMUNG, USERNAME_TAMUNG,USERID_TAMUNG ');
      SQL.Add('FROM CGZL_Payment ');
      SQL.Add('LEFT JOIN (SELECT zsdh, zsqm, zsywjc,yn FROM zszl UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc,yn FROM zszl_pay )ZSZL ON CGZL_Payment.ZSBH=ZSDH ');
      SQL.Add('and ZSZL.yn=''2''  ');
      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ');
      SQL.Add('WHERE HD_LOAI=''3'' and CGZL_Payment.GSBH='''+main.Edit2.Text+''' ');
      if trim(edt_HDNO.Text) <>'' then
        SQL.Add('    and HDNO like ''%'+edt_HDNO.Text+'%'' ');
      if trim(edt_Supplier.Text) <>'' then
        SQL.Add('    and ZSBH like ''%'+edt_Supplier.Text+'%'' ');
      if trim(edt_FKBH.Text) <>'' then
        SQL.Add('    and FKBH like ''%'+edt_FKBH.Text+'%'' ');
      if trim(edt_SupplierName.Text) <>'' then
        SQL.Add('    and zsywjc like '''+edt_SupplierName.Text+'%'' ');
      if trim(edt_SupplierNameTW.Text) <>'' then
        SQL.Add('    and zsqm like '''+edt_SupplierNameTW.Text+'%'' ');
      if trim(edt_DeptID.Text) <>'' then
        SQL.Add('    and CGZL_Payment.DEPID like '''+edt_DeptID.Text+'%'' ');
      if trim(edt_DeptNameTW.Text) <>'' then
        SQL.Add('    and BDepartment.DepName like '''+edt_DeptNameTW.Text+'%'' ');
      if Check.Checked then
        SQL.Add('and CGZL_Payment.USERID='+''''+main.Edit1.Text+''' ');
      sql.add('      and convert(varchar,CGZL_Payment.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
      sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
      SQL.Add('order by  CGZL_Payment.USERDATE desc , HDNO asc ');
      active:=true;
    end;
    Btn_I.Enabled := true;
    //Btn_D.Enabled := true;
    Btn_M.Enabled := true;
    qry_CGPaymentUNG.Active:=true;
    if qry_CGPayment.RecordCount>0 then
      BtnUNG_I.Enabled := true;
    if qry_CGPaymentUNG.RecordCount>0 then
    begin
      BtnUNG_D.Enabled:=true;
      BtnUNG_M.Enabled:=true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnUNG_P.Enabled:=true;
      end else
      begin
        BtnUNG_P.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnUNG_P_TB.Enabled:=true;
      end else
      begin
        BtnUNG_P_TB.Enabled:=false;
      end;
    end;
  end;
  if PC2.ActivePageIndex=3 then
  begin
    With qry_CGPayment do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SELECT FKBH,HDNO, ZSBH, ZSZL.zsqm, ZSZL.zsywjc, CGZL_Payment.GSBH, CGZL_Payment.DEPID, BDepartment.DepName, BDepartment.DepMemo, ');
      SQL.Add('       HD_NOIDUNG, HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Payment.USERDATE, CGZL_Payment.YN, CGZL_Payment.CFMID, CGZL_Payment.CFMDate,Reason,NGAY_DUTINH_TT,NGAY_TAMUNG, DV_TAMUNG, USERNAME_TAMUNG,USERID_TAMUNG ');
      SQL.Add('FROM CGZL_Payment ');
      SQL.Add('LEFT JOIN (SELECT zsdh, zsqm, zsywjc,yn FROM zszl UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc,yn FROM zszl_pay )ZSZL ON CGZL_Payment.ZSBH=ZSDH');
      SQL.Add('and ZSZL.yn=''2''  ');
      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ');
      SQL.Add('WHERE HD_LOAI=''4'' and CGZL_Payment.GSBH='''+main.Edit2.Text+''' ');
      if trim(edt_HDNO.Text) <>'' then
        SQL.Add('    and HDNO like ''%'+edt_HDNO.Text+'%'' ');
      if trim(edt_Supplier.Text) <>'' then
        SQL.Add('    and ZSBH like ''%'+edt_Supplier.Text+'%'' ');
      if trim(edt_FKBH.Text) <>'' then
        SQL.Add('    and FKBH like ''%'+edt_FKBH.Text+'%'' ');
      if trim(edt_SupplierName.Text) <>'' then
        SQL.Add('    and zsywjc like '''+edt_SupplierName.Text+'%'' ');
      if trim(edt_SupplierNameTW.Text) <>'' then
        SQL.Add('    and zsqm like '''+edt_SupplierNameTW.Text+'%'' ');
      if trim(edt_DeptID.Text) <>'' then
        SQL.Add('    and CGZL_Payment.DEPID like '''+edt_DeptID.Text+'%'' ');
      if trim(edt_DeptNameTW.Text) <>'' then
        SQL.Add('    and BDepartment.DepName like '''+edt_DeptNameTW.Text+'%'' ');
      if Check.Checked then
        SQL.Add('and CGZL_Payment.USERID='+''''+main.Edit1.Text+''' ');
      sql.add('      and convert(varchar,CGZL_Payment.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
      sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
      SQL.Add('order by  CGZL_Payment.USERDATE desc , HDNO asc ');
      active:=true;
    end;
    Btn_I.Enabled := true;
    //Btn_D.Enabled := true;
    Btn_M.Enabled := true;
    qry_CGPaymentUNGHD.Active:=true;
    if qry_CGPayment.RecordCount>0 then
      BtnUNGHD_I.Enabled := true;
    if qry_CGPaymentUNGHD.RecordCount>0 then
    begin
      BtnUNGHD_D.Enabled:=true;
      BtnUNGHD_M.Enabled:=true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnUNGHD_P.Enabled:=true;
      end else
      begin
        BtnUNGHD_P.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnUNGHD_P_TB.Enabled:=true;
      end else
      begin
        BtnUNGHD_P_TB.Enabled:=false;
      end;
    end;
  end;
  if PC2.ActivePageIndex=4 then
  begin
    With qry_CGPayment do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SELECT FKBH,HDNO, ZSBH, ZSZL.zsqm, ZSZL.zsywjc, CGZL_Payment.GSBH, CGZL_Payment.DEPID, BDepartment.DepName, BDepartment.DepMemo, ');
      SQL.Add('       HD_NOIDUNG, HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Payment.USERDATE, CGZL_Payment.YN , CGZL_Payment.CFMID, CGZL_Payment.CFMDate,Reason,NGAY_DUTINH_TT,NGAY_TAMUNG, DV_TAMUNG, USERNAME_TAMUNG,USERID_TAMUNG ');
      SQL.Add('FROM CGZL_Payment ');
      SQL.Add('LEFT JOIN (SELECT zsdh, zsqm, zsywjc,yn FROM zszl UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc,yn FROM zszl_pay )ZSZL ON CGZL_Payment.ZSBH=ZSDH');
      SQL.Add('and ZSZL.yn=''2''');
      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ');
      SQL.Add('WHERE  HD_LOAI=''5'' and CGZL_Payment.GSBH='''+main.Edit2.Text+''' ');
      if trim(edt_HDNO.Text) <>'' then
        SQL.Add('    and HDNO like ''%'+edt_HDNO.Text+'%'' ');
      if trim(edt_Supplier.Text) <>'' then
        SQL.Add('    and ZSBH like ''%'+edt_Supplier.Text+'%'' ');
      if trim(edt_SupplierName.Text) <>'' then
        SQL.Add('    and zsywjc like '''+edt_SupplierName.Text+'%'' ');
      if trim(edt_SupplierNameTW.Text) <>'' then
        SQL.Add('    and zsqm like '''+edt_SupplierNameTW.Text+'%'' ');
      if trim(edt_DeptID.Text) <>'' then
        SQL.Add('    and CGZL_Payment.DEPID like '''+edt_DeptID.Text+'%'' ');
      if trim(edt_DeptNameTW.Text) <>'' then
        SQL.Add('    and BDepartment.DepName like '''+edt_DeptNameTW.Text+'%'' ');
      if trim(edt_FKBH.Text) <>'' then
        SQL.Add('    and FKBH like ''%'+edt_FKBH.Text+'%'' ');
      if Check.Checked then
        SQL.Add('and CGZL_Payment.USERID='+''''+main.Edit1.Text+''' ');
      sql.add('      and convert(varchar,CGZL_Payment.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
      sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
      SQL.Add('order by  CGZL_Payment.USERDATE desc , HDNO asc ');
      active:=true;
    end;
    Btn_I.Enabled := true;
    Btn_D.Enabled := true;
    Btn_M.Enabled := true;

    with qry_CGPaymentTAMss do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      sql.Clear;
      sql.Add(' SELECT ROW_NUMBER() OVER(ORDER BY b.VATDATE ASC,b.VATNO ASC) AS STT, FKBH, a.ZSBH_MST, a.VATNO ');
      sql.Add('		    ,b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU, a.KYHIEU_HOADON, b.VATDATE, a.SOPHIEU ');
      sql.Add('       ,CASE WHEN isnull(TRU_CHIETKHAU,0)=1 THEN b.TONGTIEN_CHUATHUE+ isnull(b.TONGTIEN_PHI,0) ');
      sql.Add(' 	  	ELSE  (b.TONGTIEN_CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0))+ isnull(b.TONGTIEN_PHI,0) end TONGTIEN_CHUATHUE ');
      sql.Add(' 	  	,b.TONGTIEN_THUE, b.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, a.YN,isnull(TRU_CHIETKHAU,0) TRU_CHIETKHAU ');
      sql.Add(' FROM CGZL_PaymentS_Advance a ');
      sql.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZSBH_MST and a.KYHIEU_HOADON=b.KYHIEU_HOADON ');
      sql.Add(' WHERE FKBH=:FKBH and a.ZSBH_MST<>''TRUTIEN'' ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    if qry_CGPaymentTAMss.RecordCount=0 then
    begin
      BtnTAMss_D.Enabled:=false;
      BtnTAMss_M.Enabled:=false;
      BtnTAMss_I.Enabled:=true;
    end else if qry_CGPaymentTAMss.RecordCount>0 then
    begin
      BtnTAMss_D.Enabled:=true;
      BtnTAMss_M.Enabled:=true;
      BtnTAMss_I.Enabled:=true;
      //BtnTAM_P.Enabled:=true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnTAM_P.Enabled:=true;
      end else
      begin
        BtnTAM_P_TB.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnTAM_P_TB.Enabled:=true;
      end else
      begin
        BtnTAM_P.Enabled:=false;
      end;
    end else BtnTAMss_I.Enabled := false;

    with qry_CGPaymentTAM do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' SELECT a.FKBH, Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))SOTIEN_TAMUNG, Isnull(c.NGAY_TAMUNG, isnull(a.NGAY_TAMUNG,''1900/01/01''))NGAY_TAMUNG, ');
      sql.Add('		     CASE WHEN d.VATNO IS NOT NULL THEN ''HD'' ELSE a.LOAI_CHUNGTU END AS LOAI_CHUNGTU, CASE WHEN d.VATNO IS NOT NULL THEN d.VATNO ELSE Isnull( a.SOPHIEU,''-'') END AS SOPHIEU, ');
      sql.Add('        CASE WHEN d.VATNO IS NOT NULL THEN d.VATDATE ELSE a.NGAY_HOADON END AS NGAY_HOADON, CASE WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=1 ');
      sql.Add(' 	  	 THEN d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0) WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=0 ');
      sql.Add(' 	  	 THEN (d.TONGTIEN_CHUATHUE -isnull(d.TONGTIEN_CHIETKHAU,0))+ isnull(d.TONGTIEN_PHI,0) ELSE a.SOTIEN_CHUATHUE END AS SOTIEN_CHUATHUE, ');
      sql.Add(' 	  	 CASE WHEN d.VATNO IS NOT NULL THEN d.TONGTIEN_THUE ELSE a.SOTIEN_THUE END AS SOTIEN_THUE, CASE WHEN d.VATNO IS NOT NULL THEN d.TONGTIEN_THANHTOAN ELSE a.SOTIEN_TT END AS SOTIEN_TT, ');
      sql.Add('        CASE WHEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))-e.TT) >0 ');
      sql.Add('        THEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))-e.TT) else 0  end SOTIEN_HOANLAI, ');
      sql.Add('        CASE WHEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))-e.TT) <0 ');
      sql.Add('        THEN (e.TT -Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))) else 0 end SOTIEN_CHITHEM, ');
      sql.Add('        a.USERID, a.USERDATE, a.YN ,c.DV_TAMUNG, c.USERNAME_TAMUNG, c.USERID_TAMUNG, a.TIENTE ');
      sql.Add(' FROM   cgzl_payments_advance a ');
      sql.Add(' LEFT JOIN cgzl_payment_map b ON b.FKBH = a.FKBH ');
      sql.Add(' LEFT JOIN (SELECT cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, cgzl_payment.DV_TAMUNG, cgzl_payment.USERNAME_TAMUNG, cgzl_payment.USERID_TAMUNG, Sum(cgzl_advances.SOTIEN_TT) THANHTOAN ');
      sql.Add('            FROM cgzl_advances LEFT JOIN cgzl_payment ON cgzl_payment.FKBH = cgzl_advances.FKBH ');
      sql.Add('            GROUP  BY cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, cgzl_payment.DV_TAMUNG, cgzl_payment.USERNAME_TAMUNG, cgzl_payment.USERID_TAMUNG) c ON b.FKBH_TTT = c.FKBH ');
      sql.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON ');
      sql.Add(' LEFT JOIN (SELECT a.FKBH,sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN)) TT ');
      sql.Add('            FROM cgzl_payments_advance a ');
      sql.Add('            LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON ');
      sql.Add('            group by a.FKBH ) e ON e.FKBH = a.FKBH ');
      sql.Add(' WHERE a.FKBH=:FKBH ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    if qry_CGPaymentTAM.RecordCount=0 then
    begin
      BtnTAM_D.Enabled:=false;
      BtnTAM_M.Enabled:=false;
      BtnTAM_I.Enabled:=true;
    end else if qry_CGPaymentTAM.RecordCount>0 then
    begin
      BtnTAM_D.Enabled:=true;
      BtnTAM_M.Enabled:=true;
      BtnTAM_I.Enabled:=true;
      //BtnTAM_P.Enabled:=true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnTAM_P.Enabled:=true;
      end else
      begin
        BtnTAM_P_TB.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnTAM_P_TB.Enabled:=true;
      end else
      begin
        BtnTAM_P.Enabled:=false;
      end;
    end else BtnTAM_I.Enabled := false;
    qry_TTPTU.Active:=true;
    Btn_D_PTU.Enabled:=true;
    Btn_I_PTU.Enabled:=true;
  end;
  if PC2.ActivePageIndex=5 then
  begin
    With qry_CGPayment do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SELECT FKBH,HDNO, ZSBH, ZSZL.zsqm, ZSZL.zsywjc, CGZL_Payment.GSBH, CGZL_Payment.DEPID, BDepartment.DepName, BDepartment.DepMemo, ');
      SQL.Add('       HD_NOIDUNG, HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Payment.USERDATE, CGZL_Payment.YN , CGZL_Payment.CFMID, CGZL_Payment.CFMDate,Reason,NGAY_DUTINH_TT,NGAY_TAMUNG, DV_TAMUNG, USERNAME_TAMUNG,USERID_TAMUNG ');
      SQL.Add('FROM CGZL_Payment ');
      SQL.Add('LEFT JOIN (SELECT zsdh, zsqm, zsywjc,yn FROM zszl UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc,yn FROM zszl_pay )ZSZL ON CGZL_Payment.ZSBH=ZSDH');
      SQL.Add('and ZSZL.yn=''2''  ');
      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ');
      SQL.Add('WHERE  HD_LOAI=''6'' and CGZL_Payment.GSBH='''+main.Edit2.Text+''' ');
      if trim(edt_HDNO.Text) <>'' then
        SQL.Add('    and HDNO like ''%'+edt_HDNO.Text+'%'' ');
      if trim(edt_Supplier.Text) <>'' then
        SQL.Add('    and ZSBH like ''%'+edt_Supplier.Text+'%'' ');
      if trim(edt_SupplierName.Text) <>'' then
        SQL.Add('    and zsywjc like '''+edt_SupplierName.Text+'%'' ');
      if trim(edt_SupplierNameTW.Text) <>'' then
        SQL.Add('    and zsqm like '''+edt_SupplierNameTW.Text+'%'' ');
      if trim(edt_DeptID.Text) <>'' then
        SQL.Add('    and CGZL_Payment.DEPID like '''+edt_DeptID.Text+'%'' ');
      if trim(edt_DeptNameTW.Text) <>'' then
        SQL.Add('    and BDepartment.DepName like '''+edt_DeptNameTW.Text+'%'' ');
      if trim(edt_FKBH.Text) <>'' then
        SQL.Add('    and FKBH like ''%'+edt_FKBH.Text+'%'' ');
      if Check.Checked then
        SQL.Add('and CGZL_Payment.USERID='+''''+main.Edit1.Text+''' ');
      sql.add('      and convert(varchar,CGZL_Payment.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
      sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
      SQL.Add('order by  CGZL_Payment.USERDATE desc , HDNO asc ');
      active:=true;
    end;
    Btn_I.Enabled := true;
    Btn_D.Enabled := true;
    Btn_M.Enabled := true;
    qry_CGPaymentTAM_P.Active:=true;
    if qry_CGPaymentTAM_P.RecordCount=0 then
    begin
      BtnTAMP_D.Enabled:=false;
      BtnTAMP_M.Enabled:=false;
      BtnTAMP_I.Enabled:=true;
    end else if qry_CGPaymentTAM_P.RecordCount>0 then
    begin
      BtnTAMP_D.Enabled:=true;
      BtnTAMP_M.Enabled:=true;
      BtnTAMP_I.Enabled:=true;
      //BtnTAMP_P.Enabled:=true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnTAMP_P.Enabled:=true;
      end else
      begin
        BtnTAMP_P_TB.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnTAMP_P_TB.Enabled:=true;
      end else
      begin
        BtnTAMP_P.Enabled:=false;
      end;
    end else BtnTAMP_I.Enabled := false;

  end;
end;

procedure TPaymentVATNO.Btn_IClick(Sender: TObject);
begin
  with qry_CGPayment do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  if PC2.ActivePageIndex=0 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '1';
    DBGridEh1.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh1.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=1 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '2';
    DBGridEh2.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh2.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=2 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '3';
    DBGridEh6.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh6.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=3 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '4';
    DBGridEh8.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh8.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=4 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '5';
    //DBGridEh13.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh13.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;    
  if PC2.ActivePageIndex=5 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '6';
    //DBGridEh14.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh14.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
    DBGridEh14.FieldColumns['USERID_TAMUNG'].ButtonStyle := cbsEllipsis;
  end;
  Btn_S.Enabled:=true;
  Btn_C.Enabled:=true;
end;

procedure TPaymentVATNO.Btn_DClick(Sender: TObject);
begin
  if PC2.ActivePageIndex=0 then
  begin
    if qry_CGPaymentS.recordcount=0 then
    begin
      //qry_CGPaymentSTT.active := false;
      //qry_CGPaymentSTT.cachedupdates := false;
      //qry_CGPaymentSTT.requestlive := false;
      //qry_CGPaymentSTT.active := true;
      if qry_CGPaymentSTT.RecordCount>0 then
      begin
        showmessage('Pls delete PaymentTKTT data first.');
        abort;
      end;
      if qry_TTTK.RecordCount>0 then
      begin
        showmessage('Pls delete detail first.');
        abort;
      end;

      with qry_CGPayment do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
    end else
    begin
      showmessage('Pls delete the PaymentTK first.')
    end;
  end else if PC2.ActivePageIndex=1 then
  begin
    if qry_CGPaymentSS.recordcount=0 then
    begin
      if qry_CGPaymentSTT2.RecordCount>0 then
      begin
        showmessage('Pls delete PaymentTKTT data first.');
        abort;
      end;
      if qry_TTHD.RecordCount>0 then
      begin
        showmessage('Pls delete detail first.');
        abort;
      end;

      with qry_CGPayment do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
    end else
    begin
      showmessage('Pls delete the PaymentHD first.')
    end;
  end else if PC2.ActivePageIndex=2 then
  begin
    if qry_CGPaymentUNG.recordcount=0 then
    begin
      with qry_CGPayment do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
    end else
    begin
      showmessage('Pls delete detail first.')
    end;
  end else if PC2.ActivePageIndex=3 then
  begin
    if qry_CGPaymentUNGHD.recordcount=0 then
    begin
      with qry_CGPayment do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
    end else
    begin
      showmessage('Pls delete detail first.')
    end;
  end else if PC2.ActivePageIndex=4 then
  begin
    if qry_CGPaymentTAM.recordcount=0 then
    begin
      with qry_CGPayment do
      begin
        if qry_TTPTU.RecordCount>0 then
        begin
          showmessage('Pls delete detail first.');
          abort;
        end;
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
    end else
    begin
      showmessage('Pls delete detail first.')
    end;
  end else if PC2.ActivePageIndex=5 then
  begin
    if qry_CGPaymentTAM_P.recordcount=0 then
    begin
      with qry_CGPayment do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
      end;
    end else
    begin
      showmessage('Pls delete detail first.')
    end;
  end;

  Btn_S.Enabled:=true;
  Btn_C.Enabled:=true;
end;

procedure TPaymentVATNO.Btn_MClick(Sender: TObject);
begin
  with qry_CGPayment do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  if PC2.ActivePageIndex=0 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '1';
    DBGridEh1.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh1.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=1 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '2';
    DBGridEh2.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh2.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=2 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '3';
    DBGridEh6.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh6.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=3 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '4';
    DBGridEh8.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh8.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=4 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '5';
    //DBGridEh13.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh13.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
  end;
  if PC2.ActivePageIndex=5 then
  begin
    qry_CGPayment.FieldByName('HD_LOAI').Value := '6';
    //DBGridEh14.FieldColumns['ZSBH'].ButtonStyle := cbsEllipsis;
    DBGridEh14.FieldColumns['DEPID'].ButtonStyle := cbsEllipsis;
    DBGridEh14.FieldColumns['USERID_TAMUNG'].ButtonStyle := cbsEllipsis;
  end;
  Btn_S.Enabled:=true;
  Btn_C.Enabled:=true;
end;

procedure TPaymentVATNO.Btn_SClick(Sender: TObject);
  var y, m, a, User: string;
      i: integer;
begin
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=RightStr('0'+fieldbyname('FM').asstring,2);
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  try
    qry_CGPayment.first;
    for i := 1 to qry_CGPayment.RecordCount do
    begin
      case qry_CGPayment.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('HD_LOAI').IsNull then
            begin
              ShowMessage('HD_LOAI can not empty');
              abort;
            end;
            if qry_CGPayment.FieldByName('DEPID').IsNull then
            begin
              ShowMessage('DEPID can not empty');
              abort;
            end;
            if ((PC2.ActivePageIndex<>4) and (PC2.ActivePageIndex<>5)) then
            begin
              if qry_CGPayment.FieldByName('ZSBH').IsNull then
              begin
                ShowMessage('ZSBH can not empty');
                abort;
              end;
              if qry_CGPayment.FieldByName('HD_NOIDUNG').IsNull then
              begin
                ShowMessage('HD_NOIDUNG can not empty');
                abort;
              end;
            end;
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            with Qry_Temp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('SELECT TOP 1 FKBH FROM CGZL_Payment WHERE FKBH LIKE '''+y+m+'%'' ORDER BY FKBH DESC');
              active:=true;
              if recordcount >0 then
              begin
                last;
                a:=fieldbyname('FKBH').AsString;
                a:=copy(a,7,4);
                a:=inttostr(strtoint(a)+1);
                while length(a)<4 do
                begin
                  a:='0'+a;
                end;
              end else
              begin
                a:='0001';
              end;
              a :=y+m+a;
              active:=false;
            end;
            qry_CGPayment.edit;
            qry_CGPayment.fieldbyname('FKBH').Value:=a;
            qry_CGPayment.FieldByName('GSBH').Value := main.edit2.text;
            qry_CGPayment.FieldByName('USERID').Value := main.edit1.text;
            if (PC2.ActivePageIndex=4) then
            begin
               qry_CGPayment.FieldByName('ZSBH').Value := main.edit1.text;//'TTTU';
               if qry_CGPayment.FieldByName('HD_NOIDUNG').Value='' then
                  qry_CGPayment.FieldByName('HD_NOIDUNG').Value := 'THANH TOAN TAM UNG';
            end;
            if (PC2.ActivePageIndex=5) then
            begin
               qry_CGPayment.FieldByName('ZSBH').Value := qry_CGPayment.FieldByName('USERID_TAMUNG').Value;//'PTU';
               if qry_CGPayment.FieldByName('HD_NOIDUNG').Value='' then
                  qry_CGPayment.FieldByName('HD_NOIDUNG').Value := 'PHIEU TAM UNG';
            end;
            Up_CGPay.apply(ukinsert);
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPayment.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPayment.FieldByName('FKBH').IsNull then
              begin
                ShowMessage('FKBH can not empty');
                abort;
              end;
              if qry_CGPayment.FieldByName('HDNO').IsNull then
              begin
                ShowMessage('HDNO can not empty');
                abort;
              end;
              if qry_CGPayment.FieldByName('HD_LOAI').IsNull then
              begin
                ShowMessage('HD_LOAI can not empty');
                abort;
              end;
              if qry_CGPayment.FieldByName('DEPID').IsNull then
              begin
                ShowMessage('DEPID can not empty');
                abort;
              end;
              if ((PC2.ActivePageIndex<>4) and (PC2.ActivePageIndex<>5)) then
              begin
                if qry_CGPayment.FieldByName('ZSBH').IsNull then
                begin
                  ShowMessage('ZSBH can not empty');
                  abort;
                end;
                if qry_CGPayment.FieldByName('HD_NOIDUNG').IsNull then
                begin
                  ShowMessage('HD_NOIDUNG can not empty');
                  abort;
                end;
              end;
              if qry_CGPayment.FieldByName('YN').AsString='5' then
              begin
                ShowMessage('Already confirmed, can not edit');
                abort;
              end;
              if qry_CGPayment.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_Payment'','''+qry_CGPayment.fieldbyname('FKBH').Value+'''');
                  sql.add(','''+qry_CGPayment.fieldbyname('HD_LOAI').Value+''',');
                  sql.add(''''+qry_CGPayment.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');
                  //funcobj.WriteErrorLog(sql.Text);
                  execsql;
                  active:=false;
                end;
                Up_CGPay.apply(ukdelete);
              end else
              begin
                qry_CGPayment.edit;
                qry_CGPayment.FieldByName('GSBH').Value := main.edit2.text;
                qry_CGPayment.FieldByName('userID').Value := main.edit1.text;
                if (PC2.ActivePageIndex=4) then
                begin
                   qry_CGPayment.FieldByName('ZSBH').Value := main.edit1.text;//'TTTU';
                   if qry_CGPayment.FieldByName('HD_NOIDUNG').Value='' then
                      qry_CGPayment.FieldByName('HD_NOIDUNG').Value := 'THANH TOAN TAM UNG';
                end;
                if (PC2.ActivePageIndex=5) then
                begin
                   qry_CGPayment.FieldByName('ZSBH').Value := qry_CGPayment.FieldByName('USERID_TAMUNG').Value;//'PTU';
                   if qry_CGPayment.FieldByName('HD_NOIDUNG').Value='' then
                      qry_CGPayment.FieldByName('HD_NOIDUNG').Value := 'PHIEU TAM UNG';
                end;
                Up_CGPay.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPayment.next;
    end;
    Btn_CClick(nil);
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;

end;

procedure TPaymentVATNO.Btn_CClick(Sender: TObject);
begin
  with qry_CGPayment do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
  end;
  if PC2.ActivePageIndex=0 then
  begin
    DBGridEh1.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
    DBGridEh1.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  end;
  if PC2.ActivePageIndex=1 then
  begin
    DBGridEh2.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
    DBGridEh2.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  end;
  if PC2.ActivePageIndex=2 then
  begin
    DBGridEh6.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
    DBGridEh6.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  end;
  if PC2.ActivePageIndex=4 then
  begin
    //DBGridEh13.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
    DBGridEh13.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  end;
  if PC2.ActivePageIndex=5 then
  begin
    //DBGridEh14.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
    DBGridEh14.FieldColumns['DEPID'].ButtonStyle := cbsNone;
    DBGridEh14.FieldColumns['USERID_TAMUNG'].ButtonStyle := cbsNone;
  end;
  Btn_S.Enabled:=false;
  Btn_C.Enabled:=false;
  Btn_QClick(nil);
end;

procedure TPaymentVATNO.Btn_EClick(Sender: TObject);
begin
  Close;
end;

procedure TPaymentVATNO.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPayment.FieldByName('YN').value='0' then
    dbgrideh1.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DBGridEh1.Selectedfield.fieldname='DEPID' then
  begin
    PaymentVATNO_DEP:=TPaymentVATNO_DEP.create(self);
    PaymentVATNO_DEP.show;
  end;
  if DBGridEh1.Selectedfield.fieldname='ZSBH' then
  begin
    PaymentVATNO_ZS:=TPaymentVATNO_ZS.create(self);
    PaymentVATNO_ZS.show;
  end;
end;


procedure TPaymentVATNO.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPayment.FieldByName('YN').value='0' then
    dbgrideh2.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if DBGridEh2.Selectedfield.fieldname='DEPID' then
  begin
    PaymentVATNO_DEP:=TPaymentVATNO_DEP.create(self);
    PaymentVATNO_DEP.show;
  end;
  if DBGridEh2.Selectedfield.fieldname='ZSBH' then
  begin
    PaymentVATNO_ZS:=TPaymentVATNO_ZS.create(self);
    PaymentVATNO_ZS.show;
  end;
end;

procedure TPaymentVATNO.BtnS_IClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentS do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsEllipsis;
  BtnS_S.Enabled:=true;
  BtnS_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnS_DClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentS do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnS_S.Enabled:=true;
  BtnS_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnS_DAClick(Sender: TObject);
  var i:integer;
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    qry_CGPaymentS.First;
    for i:=1 to qry_CGPaymentS.RecordCount do
    begin
      edit;
      fieldbyname('YN').Value:='0';
      qry_CGPaymentS.next;
    end;
  end;
  BtnS_S.Enabled:=true;
  BtnS_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnS_MClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentS do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsEllipsis;
  BtnS_S.Enabled:=true;
  BtnS_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnS_SClick(Sender: TObject);
  var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentS.first;
    for i := 1 to qry_CGPaymentS.RecordCount do
    begin
      case qry_CGPaymentS.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentS.fieldbyname('DECLARATION').isnull then
            begin
              qry_CGPaymentS.delete;
            end else
            begin
              qry_CGPaymentS.edit;
              qry_CGPaymentS.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentS.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
              Up_CGPayS.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentS.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentS.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_PaymentS'','''+qry_CGPaymentS.fieldbyname('FKBH').Value+'''');
                  sql.add(','''+qry_CGPaymentS.fieldbyname('DECLARATION').Value+'*'+qry_CGPaymentS.fieldbyname('Percent_TT').AsString+''',');
                  sql.add(''''+qry_CGPaymentS.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPayS.apply(ukdelete);
              end else
              begin
                qry_CGPaymentS.edit;
                qry_CGPaymentS.FieldByName('userID').Value := main.edit1.text;
                qry_CGPaymentS.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
                Up_CGPayS.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentS.next;
    end;
    qry_CGPaymentS.active := false;
    qry_CGPaymentS.cachedupdates := false;
    qry_CGPaymentS.requestlive := false;
    qry_CGPaymentS.active := true;
    if qry_CGPaymentS.RecordCount>0 then
    begin
      BtnS_D.Enabled := true;
      BtnS_DA.Enabled := true;
      BtnS_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnS_P.Enabled := true;
      end else
      begin
        BtnS_P.Enabled := false;
      end;
      if AccountN233_Check_Print_TB='Y'  then
      begin
        BtnS_P_TB.Enabled := true;
        BtnS_P_TB_VN.Enabled := true;
      end else
      begin
        BtnS_P_TB.Enabled := false;
        BtnS_P_TB_VN.Enabled := false;
      end;
      BtnS_E.Enabled := true;
    end else
    begin
      BtnS_D.Enabled := false;
      BtnS_DA.Enabled := false;
      BtnS_M.Enabled := false;
      BtnS_P.Enabled := false;
      BtnS_P_TB.Enabled := false;
      BtnS_P_TB_VN.Enabled := false;
      BtnS_E.Enabled := false;
    end;
    DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsNone;
    BtnS_S.Enabled:=false;
    BtnS_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.BtnS_CClick(Sender: TObject);
begin
  with qry_CGPaymentS do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsNone;
  BtnS_S.Enabled:=false;
  BtnS_C.Enabled:=false;
end;

procedure TPaymentVATNO.BtnS_PClick(Sender: TObject);
  var pt_nt, pt_tt: string;
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentS.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  pt_tt:='('+qry_CGPaymentS.FieldByName('Percent_TT').AsString+')% ';
  pt_nt:='('+IntToStr(100-qry_CGPaymentS.FieldByName('Percent_TT').Value)+')% ';
  PaymentVATNO_Print:=TPaymentVATNO_Print.create(self);
  PaymentVATNO_Print.L11.Caption:=ComName;
  PaymentVATNO_Print.L12.Caption:=ComNameCH;
  PaymentVATNO_Print.L13.Caption:=AccountN233_ISO_TK;
  PaymentVATNO_Print.LNT_US.Caption:= pt_nt+'USD';
  PaymentVATNO_Print.LNT_VN.Caption:= pt_nt+'VND';
  PaymentVATNO_Print.LTT_US.Caption:= pt_tt+'USD';
  PaymentVATNO_Print.LTT_VN.Caption:= pt_tt+'VND';
  qry_CGPaymentSTT.active := false;
  qry_CGPaymentSTT.cachedupdates := false;
  qry_CGPaymentSTT.requestlive := false;
  qry_CGPaymentSTT.active := true;
  if qry_CGPaymentSTT.RecordCount>0 then
    PaymentVATNO_Print.QRSubDetail1.PrintIfEmpty:=true
  else
    PaymentVATNO_Print.QRSubDetail1.PrintIfEmpty:=false;
  PaymentVATNO_Print.quickrep1.prepare;
  PaymentVATNO_Print.page1.caption:=inttostr(PaymentVATNO_Print.quickrep1.qrprinter.pagecount);
  PaymentVATNO_Print.quickrep1.preview;
  PaymentVATNO_Print.free;
end;

procedure TPaymentVATNO.BtnS_EClick(Sender: TObject);
  var i,j,k:integer;
      eclApp,WorkBook:olevariant;
begin
  if qry_CGPaymentS.Active then
  begin
    if qry_CGPaymentS.recordcount=0 then
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
    for   i:=0   to   qry_CGPaymentS.fieldcount-2   do
    begin
      eclApp.Cells(1,i+1):=qry_CGPaymentS.fields[i].FieldName;
    end;
    qry_CGPaymentS.First;
    j:=2;
    while   not  qry_CGPaymentS.Eof   do
    begin
      for   i:=0   to   qry_CGPaymentS.fieldcount-2   do
      begin
        eclApp.Cells(j,i+1):=qry_CGPaymentS.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      qry_CGPaymentS.Next;
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

procedure TPaymentVATNO.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPaymentS.FieldByName('YN').value='0' then
    DBGridEh3.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh3EditButtonClick(Sender: TObject);
begin
  if DBGridEh3.Selectedfield.fieldname='DECLARATION' then
  begin
    PaymentVATNO_TK:=TPaymentVATNO_TK.create(self);
    PaymentVATNO_TK.DTP7.Date:=NDate-15;
    PaymentVATNO_TK.DTP8.Date:=NDate;
    PaymentVATNO_TK.show;
  end;
end;

procedure TPaymentVATNO.BtnSS_IClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentSS do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  DBGridEh4.FieldColumns['VATNO'].ButtonStyle := cbsEllipsis;
  BtnSS_S.Enabled:=true;
  BtnSS_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSS_DClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentSS do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnSS_S.Enabled:=true;
  BtnSS_C.Enabled:=true;
end;


procedure TPaymentVATNO.BtnSS_DAClick(Sender: TObject);
  var i:integer;
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    qry_CGPaymentSS.First;
     for i:=1 to qry_CGPaymentSS.RecordCount do
     begin
      edit;
      fieldbyname('YN').Value:='0';
      qry_CGPaymentSS.next;
     end;
  end;
  BtnSS_S.Enabled:=true;
  BtnSS_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSS_MClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentSS do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  DBGridEh4.FieldColumns['VATNO'].ButtonStyle := cbsEllipsis;
  BtnSS_S.Enabled:=true;
  BtnSS_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSS_SClick(Sender: TObject);
  var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentSS.first;
    for i := 1 to qry_CGPaymentSS.RecordCount do
    begin
      case qry_CGPaymentSS.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentSS.fieldbyname('VATNO').isnull then
            begin
              qry_CGPaymentSS.delete;
            end else
            begin
              qry_CGPaymentSS.edit;
              qry_CGPaymentSS.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentSS.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
              Up_CGPaySS.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentSS.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentSS.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_PaymentSS'','''+qry_CGPaymentSS.fieldbyname('FKBH').Value+'''');
                  sql.add(','''+qry_CGPaymentSS.fieldbyname('VATNO').Value+'*'+qry_CGPaymentSS.fieldbyname('ZSBH_MST').Value+''',');
                  sql.add(''''+qry_CGPaymentSS.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPaySS.apply(ukdelete);
              end else
              begin
                qry_CGPaymentSS.edit;
                qry_CGPaymentSS.FieldByName('userID').Value := main.edit1.text;
                qry_CGPaymentSS.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
                Up_CGPaySS.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentSS.next;
    end;
    qry_CGPaymentSS.active := false;
    qry_CGPaymentSS.cachedupdates := false;
    qry_CGPaymentSS.requestlive := false;
    qry_CGPaymentSS.active := true;
    if qry_CGPaymentSS.RecordCount>0 then
    begin
      BtnSS_D.Enabled := true;
      BtnSS_DA.Enabled := true;
      BtnSS_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnSS_P.Enabled := true;
      end else
      begin
        BtnSS_P.Enabled := false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnSS_P_TB.Enabled := true;
      end else
      begin
        BtnSS_P_TB.Enabled := false;
      end;
      BtnSS_E.Enabled := true;
    end else
    begin
      BtnSS_D.Enabled := false;
      BtnSS_DA.Enabled := false;
      BtnSS_M.Enabled := false;
      BtnSS_P.Enabled := false;
      BtnSS_P_TB.Enabled := false;
      BtnSS_E.Enabled := false;
    end;
    DBGridEh4.FieldColumns['VATNO'].ButtonStyle := cbsNone;
    BtnSS_S.Enabled:=false;
    BtnSS_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.BtnSS_CClick(Sender: TObject);
begin
  with qry_CGPaymentSS do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGridEh4.FieldColumns['VATNO'].ButtonStyle := cbsNone;
  BtnSS_S.Enabled:=false;
  BtnSS_C.Enabled:=false;
end;

procedure TPaymentVATNO.BtnSS_PClick(Sender: TObject);
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentSS.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  PaymentVATNO_PrintHD:=TPaymentVATNO_PrintHD.create(self);
  PaymentVATNO_PrintHD.L21.Caption:=ComName;
  PaymentVATNO_PrintHD.L22.Caption:=ComNameCH;
  PaymentVATNO_PrintHD.L23.Caption:=AccountN233_ISO_HD;
  {if qry_CGPaymentSS.FieldByName('TONGTIEN_CHUATHUE').Value =0 then
  begin
    PaymentVATNO_PrintHD.LPT.Caption:= '0 %'
  end else begin
    PaymentVATNO_PrintHD.LPT.Caption:=IntToStr(Round(qry_CGPaymentSS.FieldByName('TONGTIEN_THUE').Value*100/qry_CGPaymentSS.FieldByName('TONGTIEN_CHUATHUE').Value)) +' %';
  end;}            
  qry_CGPaymentSTT2.active := false;
  qry_CGPaymentSTT2.cachedupdates := false;
  qry_CGPaymentSTT2.requestlive := false;
  qry_CGPaymentSTT2.active := true;
  if qry_CGPaymentSTT2.RecordCount>0 then
    PaymentVATNO_PrintHD.QRSubDetail1.PrintIfEmpty:=true
  else
    PaymentVATNO_PrintHD.QRSubDetail1.PrintIfEmpty:=false;
  PaymentVATNO_PrintHD.quickrep2.prepare;
  PaymentVATNO_PrintHD.page2.caption:=inttostr(PaymentVATNO_PrintHD.quickrep2.qrprinter.pagecount);
  PaymentVATNO_PrintHD.quickrep2.preview;
  PaymentVATNO_PrintHD.free;
end;

procedure TPaymentVATNO.BtnSS_EClick(Sender: TObject);
  var i,j,k:integer;
      eclApp,WorkBook:olevariant;
begin
  if qry_CGPaymentSS.Active then
  begin
    if qry_CGPaymentSS.recordcount=0 then
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
    for   i:=0   to   qry_CGPaymentSS.fieldcount-2   do
    begin
      eclApp.Cells(1,i+1):=qry_CGPaymentSS.fields[i].FieldName;
    end;
    qry_CGPaymentSS.First;
    j:=2;
    while   not  qry_CGPaymentSS.Eof   do
    begin
      for   i:=0   to   qry_CGPaymentSS.fieldcount-2   do
      begin
        eclApp.Cells(j,i+1):=qry_CGPaymentSS.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      qry_CGPaymentSS.Next;
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

procedure TPaymentVATNO.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPaymentSS.FieldByName('YN').value='0' then
    DBGridEh4.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh4EditButtonClick(Sender: TObject);
begin
  if DBGridEh4.Selectedfield.fieldname='VATNO' then
  begin
    PaymentVATNO_HD:=TPaymentVATNO_HD.create(self);
    PaymentVATNO_HD.DTP7.Date:=NDate-15;
    PaymentVATNO_HD.DTP8.Date:=NDate;
    PaymentVATNO_HD1._type:='BT';
    PaymentVATNO_HD.show;
  end;
end;

function TPaymentVATNO.GetChineseDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='Ngay 日 '+Format('%.2d',[myDay])+' thang 月 '+Format('%.2d',[myMonth])+' nam 年 '+inttostr(myYear);
end;

procedure TPaymentVATNO.PC2Change(Sender: TObject);
begin
  if (PC2.ActivePageIndex=0)   then
  begin
    if Btn_S.Enabled or BtnSS_S.Enabled or BtnSTT2_S.Enabled or Btn_S_TTHD.Enabled or BtnUNGHD_S.Enabled or BtnUNG_S.Enabled
       or BtnTAM_S.Enabled or BtnTAMss_S.Enabled or btn_S_PTU.Enabled or BtnTAMP_S.Enabled then
    begin
      messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
      abort;
    end;
    with qry_CGPaymentS do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    with qry_CGPaymentSTT do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    with qry_TTTK do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    DBGridEh4.FieldColumns['VATNO'].ButtonStyle := cbsNone;
    BtnS_I.Enabled := false;
    BtnS_D.Enabled := false;
    BtnS_DA.Enabled := false;
    BtnS_M.Enabled := false;
    BtnS_P.Enabled := false;
    BtnS_P_TB.Enabled := false;
    BtnS_P_TB_VN.Enabled := false;
    BtnS_E.Enabled := false;
    BtnSTT_I.Enabled := false;
    BtnSTT_D.Enabled := false;
    BtnSTT_M.Enabled := false;
    Btn_I_TT.Enabled := false;
    Btn_D_TT.Enabled := false;
    Btn_M_TT.Enabled := false;
  end;
  if (PC2.ActivePageIndex=1)   then
  begin
    if Btn_S.Enabled or BtnS_S.Enabled or BtnSTT_S.Enabled or Btn_S_TT.Enabled or BtnUNGHD_S.Enabled or BtnUNG_S.Enabled
       or BtnTAM_S.Enabled or BtnTAMss_S.Enabled or btn_S_PTU.Enabled or BtnTAMP_S.Enabled then
    begin
      messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
      //PC2.ActivePage:=TS21;
      abort;
    end;
    with qry_CGPaymentSS do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    with qry_CGPaymentSTT2 do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    with qry_TTHD do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsNone;
    BtnSS_I.Enabled := false;
    BtnSS_D.Enabled := false;
    BtnSS_DA.Enabled := false;
    BtnSS_M.Enabled := false;
    BtnSS_P.Enabled := false;
    BtnSS_P_TB.Enabled := false;
    BtnSS_E.Enabled := false;
    BtnSTT2_I.Enabled := false;
    BtnSTT2_D.Enabled := false;
    BtnSTT2_M.Enabled := false;
    Btn_I_TTHD.Enabled := false;
    Btn_D_TTHD.Enabled := false;
    Btn_M_TTHD.Enabled := false;
  end;
  if (PC2.ActivePageIndex=2)   then
  begin
    if Btn_S.Enabled or BtnS_S.Enabled or BtnSTT_S.Enabled or Btn_S_TT.Enabled or BtnSS_S.Enabled or BtnSTT2_S.Enabled or Btn_S_TTHD.Enabled or BtnUNGHD_S.Enabled
       or BtnTAM_S.Enabled or BtnTAMss_S.Enabled or btn_S_PTU.Enabled or BtnTAMP_S.Enabled then
    begin
      messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
      abort;
    end;
    with qry_CGPaymentUNG do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    BtnUNG_I.Enabled := false;
    BtnUNG_D.Enabled := false;
    BtnUNG_M.Enabled := false;
  end;
  if (PC2.ActivePageIndex=3)   then
  begin
    if Btn_S.Enabled or BtnS_S.Enabled or BtnSTT_S.Enabled or Btn_S_TT.Enabled or BtnSS_S.Enabled or BtnSTT2_S.Enabled or Btn_S_TTHD.Enabled or BtnUNG_S.Enabled
       or BtnTAM_S.Enabled or BtnTAMss_S.Enabled or btn_S_PTU.Enabled or BtnTAMP_S.Enabled then
    begin
      messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
      abort;
    end;
    with qry_CGPaymentUNGHD do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    BtnUNGHD_I.Enabled := false;
    BtnUNGHD_D.Enabled := false;
    BtnUNGHD_M.Enabled := false;
  end;
  if (PC2.ActivePageIndex=4)   then
  begin
    if Btn_S.Enabled or BtnS_S.Enabled or BtnSTT_S.Enabled or Btn_S_TT.Enabled or BtnSS_S.Enabled or BtnSTT2_S.Enabled or Btn_S_TTHD.Enabled or BtnUNG_S.Enabled or BtnUNGHD_S.Enabled or BtnTAMP_S.Enabled then
    begin
      messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
      abort;
    end;
    with qry_CGPaymentTAM do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    with qry_CGPaymentTAMss do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    with qry_TTPTU do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    DBGridEh17.FieldColumns['VATNO'].ButtonStyle := cbsNone;
    BtnTAM_I.Enabled := false;
    BtnTAM_D.Enabled := false;
    BtnTAM_M.Enabled := false;
    BtnTAM_P.Enabled := false;
    BtnTAMss_I.Enabled := false;
    BtnTAMss_D.Enabled := false;
    BtnTAMss_M.Enabled := false;
    Btn_I_PTU.Enabled := false;
    Btn_D_PTU.Enabled := false;
    Btn_M_PTU.Enabled := false;
  end;
  if (PC2.ActivePageIndex=5)   then
  begin
    if Btn_S.Enabled or BtnS_S.Enabled or BtnSTT_S.Enabled or Btn_S_TT.Enabled or BtnSS_S.Enabled or BtnSTT2_S.Enabled or Btn_S_TTHD.Enabled or BtnUNG_S.Enabled or BtnUNGHD_S.Enabled
       or BtnTAM_S.Enabled or BtnTAMss_S.Enabled or btn_S_PTU.Enabled then
    begin
      messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
      abort;
    end;
    with qry_CGPaymentTAM_P do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
    end;
    BtnTAMP_I.Enabled := false;
    BtnTAMP_D.Enabled := false;
    BtnTAMP_M.Enabled := false;
    BtnTAMP_P.Enabled := false;
  end;
  with qry_CGPayment do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
  end;
  DBGridEh1.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  DBGridEh2.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
  DBGridEh2.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  DBGridEh6.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
  DBGridEh6.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  DBGridEh8.FieldColumns['ZSBH'].ButtonStyle := cbsNone;
  DBGridEh8.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  DBGridEh13.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  DBGridEh14.FieldColumns['DEPID'].ButtonStyle := cbsNone;
  DBGridEh14.FieldColumns['USERID_TAMUNG'].ButtonStyle := cbsNone;
  Btn_I.Enabled := false;
  Btn_D.Enabled := false;
  Btn_M.Enabled := false;
end;

procedure TPaymentVATNO.BtnSTT_IClick(Sender: TObject);
begin
  with qry_CGPaymentSTT do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
    fieldbyname('DECLARATION').Value:='TRUTIEN';
    fieldbyname('MEMO').Value:='Tru tien vat tu khong dat';
    fieldbyname('Percent_TT').Value:='100';
  end;
  BtnSTT_S.Enabled:=true;
  BtnSTT_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSTT_DClick(Sender: TObject);
begin
  with qry_CGPaymentSTT do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnSTT_S.Enabled:=true;
  BtnSTT_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSTT_MClick(Sender: TObject);
begin
  with qry_CGPaymentSTT do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('USACC_CHUATHUE')).DisplayFormat:='';
  TCurrencyField(qry_CGPaymentSTT.FieldByName('CWHL')).DisplayFormat:='';
  BtnSTT_S.Enabled:=true;
  BtnSTT_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSTT_SClick(Sender: TObject);
  var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentSTT.first;
    for i := 1 to qry_CGPaymentSTT.RecordCount do
    begin
      case qry_CGPaymentSTT.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentSTT.FieldByName('USACC_CHUATHUE').IsNull then
            begin
              ShowMessage('USACC_CHUATHUE can not empty');
              abort;
            end;
            if qry_CGPaymentSTT.FieldByName('CWHL').IsNull then
            begin
              ShowMessage('CWHL can not empty');
              abort;
            end;
            if qry_CGPaymentSTT.fieldbyname('DECLARATION').isnull then
            begin
              qry_CGPaymentSTT.delete;
            end else
            begin
              qry_CGPaymentSTT.edit;
              qry_CGPaymentSTT.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentSTT.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
              Up_CGPaySTT.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentSTT.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentSTT.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'CGZL_PaymentS'+''''+','+''''+qry_CGPaymentSTT.fieldbyname('FKBH').Value+''''+',');
                  sql.add(''''+qry_CGPaymentSTT.fieldbyname('DECLARATION').Value+'*'+qry_CGPaymentSTT.fieldbyname('Percent_TT').AsString);
                  sql.add('*'+qry_CGPaymentSTT.fieldbyname('USACC_CHUATHUE').AsString+''''+',');
                  sql.add(''''+qry_CGPaymentSTT.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPaySTT.apply(ukdelete);
              end else
              begin
                qry_CGPaymentSTT.edit;
                qry_CGPaymentSTT.FieldByName('USERID').Value := main.edit1.text;
                qry_CGPaymentSTT.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
                Up_CGPaySTT.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentSTT.next;
    end;
    qry_CGPaymentSTT.active := false;
    qry_CGPaymentSTT.cachedupdates := false;
    qry_CGPaymentSTT.requestlive := false;
    qry_CGPaymentSTT.active := true;
    if qry_CGPaymentSTT.RecordCount=0 then
      begin
        BtnSTT_D.Enabled:=false;
        BtnSTT_M.Enabled:=false;
        BtnSTT_I.Enabled:=true;
      end
    else if qry_CGPaymentSTT.RecordCount>0 then
      begin
        BtnSTT_D.Enabled:=true;
        BtnSTT_M.Enabled:=true;
        BtnSTT_I.Enabled:=false;
      end
    else BtnSTT_I.Enabled := false;
    TCurrencyField(qry_CGPaymentSTT.FieldByName('USACC_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_CGPaymentSTT.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
    BtnSTT_S.Enabled:=false;
    BtnSTT_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.BtnSTT_CClick(Sender: TObject);
begin
  with qry_CGPaymentSTT do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('USACC_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentSTT.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  BtnSTT_S.Enabled:=false;
  BtnSTT_C.Enabled:=false;
end;

procedure TPaymentVATNO.DBGridEh5GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPaymentSTT.FieldByName('YN').value='0' then
    DBGridEh5.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh6EditButtonClick(Sender: TObject);
begin
  if DBGridEh6.Selectedfield.fieldname='DEPID' then
  begin
    PaymentVATNO_DEP:=TPaymentVATNO_DEP.create(self);
    PaymentVATNO_DEP.show;
  end;
  if DBGridEh6.Selectedfield.fieldname='ZSBH' then
  begin
    PaymentVATNO_ZS:=TPaymentVATNO_ZS.create(self);
    PaymentVATNO_ZS.show;
  end;
end;

procedure TPaymentVATNO.BtnUNG_IClick(Sender: TObject);
begin
  with qry_CGPaymentUNG do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
    fieldbyname('DECLARATION').Value:='TRATRUOC';
    fieldbyname('DOCNO').Value:='...';
    fieldbyname('Percent_TT').Value:='100';
  end;
  BtnUNG_S.Enabled:=true;
  BtnUNG_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnUNG_DClick(Sender: TObject);
begin
  with qry_CGPaymentUNG do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnUNG_S.Enabled:=true;
  BtnUNG_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnUNG_MClick(Sender: TObject);
begin
  with qry_CGPaymentUNG do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  TCurrencyField(qry_CGPaymentUNG.FieldByName('USACC_CHUATHUE')).DisplayFormat:='';
  TCurrencyField(qry_CGPaymentUNG.FieldByName('CWHL')).DisplayFormat:='';
  BtnUNG_S.Enabled:=true;
  BtnUNG_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnUNG_SClick(Sender: TObject);
  var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentUNG.first;
    for i := 1 to qry_CGPaymentUNG.RecordCount do
    begin
      case qry_CGPaymentUNG.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if (qry_CGPaymentUNG.FieldByName('USACC_CHUATHUE').IsNull)  then
            begin
              ShowMessage('ACC_CHUATHUE can not empty');
              abort;
            end;
            if (qry_CGPaymentUNG.FieldByName('DOCNO').IsNull)  then
            begin
              ShowMessage('DOCNO can not empty');
              abort;
            end;
            if (qry_CGPaymentUNG.fieldbyname('DECLARATION').isnull) OR (qry_CGPaymentUNG.FieldByName('DOCNO').IsNull) then
            begin
              qry_CGPaymentUNG.delete;
            end else
            begin
              qry_CGPaymentUNG.edit;
              qry_CGPaymentUNG.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentUNG.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
              Up_CGPayUNG.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentUNG.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentUNG.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_PaymentS'','''+qry_CGPaymentUNG.fieldbyname('FKBH').Value+''',');
                  sql.add('''TRATRUOC'',');
                  sql.add(''''+qry_CGPaymentUNG.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');
                  //funcobj.WriteErrorLog(sql.Text);
                  execsql;
                  active:=false;
                end;
                Up_CGPayUNG.apply(ukdelete);
              end else
              begin
                qry_CGPaymentUNG.edit;
                qry_CGPaymentUNG.FieldByName('USERID').Value := main.edit1.text;
                qry_CGPaymentUNG.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
                Up_CGPayUNG.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentUNG.next;
    end;
    qry_CGPaymentUNG.active := false;
    qry_CGPaymentUNG.cachedupdates := false;
    qry_CGPaymentUNG.requestlive := false;
    qry_CGPaymentUNG.active := true;
    if qry_CGPaymentUNG.RecordCount>0 then
    begin
      BtnUNG_D.Enabled := true;
      BtnUNG_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnUNG_P.Enabled:=true;
      end else
      begin
        BtnUNG_P.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnUNG_P_TB.Enabled:=true;
      end else
      begin
        BtnUNG_P_TB.Enabled:=false;
      end;
    end else
    begin
      BtnUNG_D.Enabled := false;
      BtnUNG_M.Enabled := false;
      BtnUNG_P.Enabled := false;
      BtnUNG_P_TB.Enabled := false;
    end;
    TCurrencyField(qry_CGPaymentUNG.FieldByName('USACC_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_CGPaymentUNG.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
    BtnUNG_S.Enabled:=false;
    BtnUNG_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.BtnUNG_CClick(Sender: TObject);
begin
  with qry_CGPaymentUNG do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  TCurrencyField(qry_CGPaymentUNG.FieldByName('USACC_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentUNG.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  BtnUNG_S.Enabled:=false;
  BtnUNG_C.Enabled:=false;
end;

procedure TPaymentVATNO.BtnUNG_PClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentUNG.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  pt_tt:='('+qry_CGPaymentUNG.FieldByName('Percent_TT').AsString+')% ';
  pt_nt:='('+IntToStr(100-qry_CGPaymentUNG.FieldByName('Percent_TT').Value)+')% ';
  PaymentVATNO_PrintTT:=TPaymentVATNO_PrintTT.create(self);
  PaymentVATNO_PrintTT.L31.Caption:=ComName;
  PaymentVATNO_PrintTT.L32.Caption:=ComNameCH;
  PaymentVATNO_PrintTT.L33.Caption:=AccountN233_ISO_TK;
  PaymentVATNO_PrintTT.LNT_US2.Caption:= pt_nt+'USD';
  PaymentVATNO_PrintTT.LNT_VN2.Caption:= pt_nt+'VND';
  PaymentVATNO_PrintTT.LTT_US2.Caption:= pt_tt+'USD';
  PaymentVATNO_PrintTT.LTT_VN2.Caption:= pt_tt+'VND';
  PaymentVATNO_PrintTT.QuickRep3.prepare;
  PaymentVATNO_PrintTT.page3.caption:=inttostr(PaymentVATNO_PrintTT.QuickRep3.qrprinter.pagecount);
  PaymentVATNO_PrintTT.QuickRep3.preview;
  PaymentVATNO_PrintTT.free;
end;

procedure TPaymentVATNO.BtnUNGHD_IClick(Sender: TObject);
begin
  with qry_CGPaymentUNGHD do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
    fieldbyname('ZSBH_MST').Value:='TRATRUOC';
    fieldbyname('VATNO').Value:='...';
    fieldbyname('KYHIEU_HOADON').Value:='...';
    //fieldbyname('Percent_TT').Value:='100';
  end;
  BtnUNGHD_S.Enabled:=true;
  BtnUNGHD_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnUNGHD_DClick(Sender: TObject);
begin
  with qry_CGPaymentUNGHD do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnUNGHD_S.Enabled:=true;
  BtnUNGHD_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnUNGHD_MClick(Sender: TObject);
begin
  with qry_CGPaymentUNGHD do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:='';
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:='';
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:='';
  BtnUNGHD_S.Enabled:=true;
  BtnUNGHD_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnUNGHD_SClick(Sender: TObject);
var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentUNGHD.first;
    for i := 1 to qry_CGPaymentUNGHD.RecordCount do
    begin
      case qry_CGPaymentUNGHD.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if (qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE').IsNull) then
            begin
              ShowMessage('TONGTIEN_CHUATHUE can not empty');
              abort;
            end;
            if (qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE').IsNull)  then
            begin
              ShowMessage('TONGTIEN_THUE can not empty');
              abort;
            end;
            if (qry_CGPaymentUNGHD.FieldByName('VATNO').IsNull)  then
            begin
              ShowMessage('VATNO can not empty');
              abort;
            end;
            if qry_CGPaymentUNGHD.fieldbyname('VATNO').isnull then
            begin
              qry_CGPaymentUNGHD.delete;
            end else
            begin
              qry_CGPaymentUNGHD.edit;
              qry_CGPaymentUNGHD.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentUNGHD.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
              qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THANHTOAN').Value := qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE').Value+qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE').Value;
              Up_CGPayUNGHD.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentUNGHD.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentUNGHD.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_PaymentSS'','''+qry_CGPaymentUNGHD.fieldbyname('FKBH').Value+''',');
                  sql.add('''TRATRUOC'',');
                  sql.add(''''+qry_CGPaymentUNGHD.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPayUNGHD.apply(ukdelete);
              end else
              begin
                qry_CGPaymentUNGHD.edit;
                qry_CGPaymentUNGHD.FieldByName('USERID').Value := main.edit1.text;
                qry_CGPaymentUNGHD.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
                qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THANHTOAN').Value := qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE').Value+qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE').Value;
                Up_CGPayUNGHD.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentUNGHD.next;
    end;
    qry_CGPaymentUNGHD.active := false;
    qry_CGPaymentUNGHD.cachedupdates := false;
    qry_CGPaymentUNGHD.requestlive := false;
    qry_CGPaymentUNGHD.active := true;
    if qry_CGPaymentUNGHD.RecordCount>0 then
    begin
      BtnUNGHD_D.Enabled := true;
      BtnUNGHD_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnUNGHD_P.Enabled:=true;
      end else
      begin
        BtnUNGHD_P.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnUNGHD_P_TB.Enabled:=true;
      end else
      begin
        BtnUNGHD_P_TB.Enabled:=false;
      end;
    end else
    begin
      BtnUNGHD_D.Enabled := false;
      BtnUNGHD_M.Enabled := false;
      BtnUNGHD_P.Enabled := false;
      BtnUNGHD_P_TB.Enabled := false;
    end;
    TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
    BtnUNGHD_S.Enabled:=false;
    BtnUNGHD_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;

end;

procedure TPaymentVATNO.BtnUNGHD_CClick(Sender: TObject);
begin
  with qry_CGPaymentUNGHD do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;

  BtnUNGHD_S.Enabled:=false;
  BtnUNGHD_C.Enabled:=false;
end;

procedure TPaymentVATNO.DBGridEh8EditButtonClick(Sender: TObject);
begin
  if DBGridEh8.Selectedfield.fieldname='DEPID' then
  begin
    PaymentVATNO_DEP:=TPaymentVATNO_DEP.create(self);
    PaymentVATNO_DEP.show;
  end;
  if DBGridEh8.Selectedfield.fieldname='ZSBH' then
  begin
    PaymentVATNO_ZS:=TPaymentVATNO_ZS.create(self);
    PaymentVATNO_ZS.show;
  end;
end;

procedure TPaymentVATNO.DBGridEh9GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_CGPaymentUNGHD.FieldByName('YN').value='0' then
    DBGridEh9.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh7GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPaymentUNG.FieldByName('YN').value='0' then
    DBGridEh7.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh8GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPayment.FieldByName('YN').value='0' then
    DBGridEh8.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.BtnUNGHD_PClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentUNGHD.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;  
  PaymentVATNO_PrintTTHD:=TPaymentVATNO_PrintTTHD.create(self);
  PaymentVATNO_PrintTTHD.L41.Caption:=ComName;
  PaymentVATNO_PrintTTHD.L42.Caption:=ComNameCH;
  PaymentVATNO_PrintTTHD.L43.Caption:=AccountN233_ISO_HD;
  {if qry_CGPaymentSS.FieldByName('TONGTIEN_CHUATHUE').Value =0 then
  begin
    PaymentVATNO_PrintTTHD.LPTTT.Caption:= '0 %'
  end else begin
    PaymentVATNO_PrintTTHD.LPTTT.Caption:=IntToStr(Round(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE').Value*100/qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE').Value)) +' %';
  end;}
  PaymentVATNO_PrintTTHD.quickrep4.prepare;
  PaymentVATNO_PrintTTHD.page1.caption:=inttostr(PaymentVATNO_PrintTTHD.quickrep4.qrprinter.pagecount);
  PaymentVATNO_PrintTTHD.quickrep4.preview;
  PaymentVATNO_PrintTTHD.free;
end;

procedure TPaymentVATNO.Btn_D_TTClick(Sender: TObject);
begin
  with qry_TTTK do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  Btn_S_TT.Enabled:=true;
  Btn_C_TT.Enabled:=true;
end;

procedure TPaymentVATNO.btn_C_TTClick(Sender: TObject);
begin
  with qry_TTTK do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  TCurrencyField(qry_TTTK.FieldByName('TONGTRIGIA_HOADON')).DisplayFormat:=VNPrice_DiplayFormat;
  Btn_S_TT.Enabled:=false;
  Btn_C_TT.Enabled:=false;
end;

procedure TPaymentVATNO.btn_S_TTClick(Sender: TObject);
  var y, m, a, User: string;
      i: integer;
begin
  try
    qry_TTTK.first;
    for i := 1 to qry_TTTK.RecordCount do
    begin
      case qry_TTTK.updatestatus of
          usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_TTTK.FieldByName('FKBH_TTT').IsNull then
            begin
              ShowMessage('FKBH_TTT can not empty');
              abort;
            end;
            qry_TTTK.edit;
            qry_TTTK.FieldByName('userID').Value := main.edit1.text;
            qry_TTTK.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
            Up_TTTK.apply(ukinsert);
            with bdelrec do
            begin
              active:=false;
              SQL.Clear;
              SQL.Add('  update CGZL_Payment SET FKBH_S = ''Y''      ');
              SQL.Add('  WHERE HD_LOAI=''3'' AND FKBH='''+qry_TTTK.FieldByName('FKBH_TTT').asstring+'''   ');
              ExecSQL;
            end;
          end;
          usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_TTTK.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_TTTK.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_Payment_Map'','''+qry_TTTK.fieldbyname('FKBH').AsString+''',');
                  sql.add(''''+qry_TTTK.fieldbyname('FKBH_TTT').AsString+''',');
                  sql.add(''''+qry_TTTK.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');

                  SQL.Add('  update CGZL_Payment SET FKBH_S = ''N''      ');
                  SQL.Add('  WHERE HD_LOAI=''3'' AND FKBH='''+qry_TTTK.FieldByName('FKBH_TTT').asstring+'''   ');
                  execsql;
                  active:=false;
                end;

                Up_TTTK.apply(ukdelete);
              end;
            end;
          end;
      end;
      qry_TTTK.next;
    end;
    qry_TTTK.active := false;
    qry_TTTK.cachedupdates := false;
    qry_TTTK.requestlive := false;
    qry_TTTK.active := true;
    if qry_TTTK.RecordCount=0 then
    begin
      Btn_D_TT.Enabled:=false;
    end else
    begin
      Btn_D_TT.Enabled:=true;
    end;
    TCurrencyField(qry_TTTK.FieldByName('TONGTRIGIA_HOADON')).DisplayFormat:=VNPrice_DiplayFormat;
    Btn_S_TT.Enabled:=false;
    Btn_C_TT.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.btn_I_TTClick(Sender: TObject);
begin
  with qry_TTTK do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  DBGridEh10.FieldColumns['FKBH_TTT'].ButtonStyle := cbsEllipsis;
  Btn_S_TT.Enabled:=true;
  Btn_C_TT.Enabled:=true;
end;

procedure TPaymentVATNO.btn_I_TTHDClick(Sender: TObject);
begin
  with qry_TTHD do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  DBGridEh11.FieldColumns['FKBH_TTT'].ButtonStyle := cbsEllipsis;
  Btn_S_TTHD.Enabled:=true;
  Btn_C_TTHD.Enabled:=true;
end;

procedure TPaymentVATNO.btn_D_TTHDClick(Sender: TObject);
begin
  with qry_TTHD do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  Btn_S_TTHD.Enabled:=true;
  Btn_C_TTHD.Enabled:=true;
end;

procedure TPaymentVATNO.btn_M_TTHDClick(Sender: TObject);
begin
  with qry_TTHD do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:='';
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:='';
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:='';
  Btn_S_TTHD.Enabled:=true;
  Btn_C_TTHD.Enabled:=true;
end;

procedure TPaymentVATNO.btn_C_TTHDClick(Sender: TObject);
begin
  with qry_TTHD do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
  Btn_S_TTHD.Enabled:=false;
  Btn_C_TTHD.Enabled:=false;
end;

procedure TPaymentVATNO.Btn_M_TTClick(Sender: TObject);
begin
  with qry_TTTK do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  TCurrencyField(qry_TTTK.FieldByName('TONGTRIGIA_HOADON')).DisplayFormat:='';
  Btn_S_TT.Enabled:=true;
  Btn_C_TT.Enabled:=true;
end;

procedure TPaymentVATNO.btn_S_TTHDClick(Sender: TObject);
  var y, m, a, User: string;
      i: integer;
begin
  try
    qry_TTHD.first;
    for i := 1 to qry_TTHD.RecordCount do
    begin
      case qry_TTHD.updatestatus of
          usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_TTHD.FieldByName('FKBH_TTT').IsNull then
            begin
              ShowMessage('FKBH_TTT can not empty');
              abort;
            end;
            qry_TTHD.edit;
            qry_TTHD.FieldByName('userID').Value := main.edit1.text;
            qry_TTHD.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
            Up_TTHD.apply(ukinsert);
            with bdelrec do
            begin
              active:=false;
              SQL.Clear;
              SQL.Add('  update CGZL_Payment SET FKBH_S = ''Y''      ');
              SQL.Add('  WHERE HD_LOAI=''4'' AND FKBH='''+qry_TTHD.FieldByName('FKBH_TTT').asstring+'''   ');
              ExecSQL;
            end;
          end;
          usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_TTHD.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_TTHD.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_Payment_Map'','''+qry_TTHD.fieldbyname('FKBH').AsString+''',');
                  sql.add(''''+qry_TTHD.fieldbyname('FKBH_TTT').AsString+''',');
                  sql.add(''''+qry_TTHD.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');

                  SQL.Add('  update CGZL_Payment SET FKBH_S = ''N''      ');
                  SQL.Add('  WHERE HD_LOAI=''4'' AND FKBH='''+qry_TTHD.FieldByName('FKBH_TTT').asstring+'''   ');
                  execsql;
                  active:=false;
                end;
                Up_TTHD.apply(ukdelete);
              end;
            end;
          end;
      end;
      qry_TTHD.next;
    end;
    qry_TTHD.active := false;
    qry_TTHD.cachedupdates := false;
    qry_TTHD.requestlive := false;
    qry_TTHD.active := true;
    if qry_TTHD.RecordCount=0 then
    begin
      Btn_D_TTHD.Enabled:=false;
    end else
    begin
      Btn_D_TTHD.Enabled:=true;
    end;
    TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_TTHD.FieldByName('TONGTIEN_THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
    Btn_S_TTHD.Enabled:=false;
    Btn_C_TTHD.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.DBGridEh10EditButtonClick(Sender: TObject);
begin
  if DBGridEh10.Selectedfield.fieldname='FKBH_TTT' then
  begin
    PaymentUng:=TPaymentUng.create(self);
    PaymentUng.show;
  end;
end;

procedure TPaymentVATNO.DBGridEh11EditButtonClick(Sender: TObject);
begin
  if DBGridEh11.Selectedfield.fieldname='FKBH_TTT' then
  begin
    PaymentUngHD:=TPaymentUngHD.create(self);
    PaymentUngHD.show;
  end;
end;

procedure TPaymentVATNO.BtnSTT2_IClick(Sender: TObject);
begin
  with qry_CGPaymentSTT2 do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
    qry_CGPaymentSTT2.fieldbyname('ZSBH_MST').Value:='TRUTIEN';
    qry_CGPaymentSTT2.fieldbyname('VATNO').Value:='...';
  end;
  BtnSTT2_S.Enabled:=true;
  BtnSTT2_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSTT2_DClick(Sender: TObject);
begin
  with qry_CGPaymentSTT2 do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnSTT2_S.Enabled:=true;
  BtnSTT2_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSTT2_MClick(Sender: TObject);
begin
  with qry_CGPaymentSTT2 do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  BtnSTT2_S.Enabled:=true;
  BtnSTT2_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnSTT2_CClick(Sender: TObject);
begin
  with qry_CGPaymentSTT2 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BtnSTT2_S.Enabled:=false;
  BtnSTT2_C.Enabled:=false;
end;

procedure TPaymentVATNO.BtnSTT2_SClick(Sender: TObject);
var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentSTT2.first;
    for i := 1 to qry_CGPaymentSTT2.RecordCount do
    begin
      case qry_CGPaymentSTT2.updatestatus of
        usinserted:
          begin

            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentSTT2.FieldByName('TONGTIEN_CHUATHUE').IsNull then
            begin
              ShowMessage('TONGTIEN_CHUATHUE can not empty');
              abort;
            end;
            if qry_CGPaymentSTT2.FieldByName('TONGTIEN_THUE').IsNull then
            begin
              ShowMessage('TONGTIEN_THUE can not empty');
              abort;
            end;
            if qry_CGPaymentSTT2.fieldbyname('VATNO').isnull then
            begin
              qry_CGPaymentSTT2.delete;
            end else
            begin
              qry_CGPaymentSTT2.edit;
              qry_CGPaymentSTT2.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentSTT2.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
              qry_CGPaymentSTT2.FieldByName('TONGTIEN_THANHTOAN').Value := qry_CGPaymentSTT2.FieldByName('TONGTIEN_CHUATHUE').Value+qry_CGPaymentSTT2.FieldByName('TONGTIEN_THUE').Value;
              Up_CGPaySTT2.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentSTT2.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentSTT2.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'CGZL_PaymentSS'+''''+','+''''+qry_CGPaymentSTT2.fieldbyname('FKBH').Value+''''+',');
                  sql.add(''''+qry_CGPaymentSTT2.fieldbyname('VATNO').Value+'*'+qry_CGPaymentSTT2.fieldbyname('TONGTIEN_CHUATHUE').AsString);
                  sql.add('*'+qry_CGPaymentSTT2.fieldbyname('TONGTIEN_THANHTOAN').AsString+''''+',');
                  sql.add(''''+qry_CGPaymentSTT2.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPaySTT2.apply(ukdelete);
              end else
              begin
                qry_CGPaymentSTT2.edit;
                qry_CGPaymentSTT2.FieldByName('USERID').Value := main.edit1.text;
                qry_CGPaymentSTT2.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
                qry_CGPaymentSTT2.FieldByName('TONGTIEN_THANHTOAN').Value := qry_CGPaymentSTT2.FieldByName('TONGTIEN_CHUATHUE').Value+qry_CGPaymentSTT2.FieldByName('TONGTIEN_THUE').Value;
                Up_CGPaySTT2.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentSTT2.next;
    end;
    qry_CGPaymentSTT2.active := false;
    qry_CGPaymentSTT2.cachedupdates := false;
    qry_CGPaymentSTT2.requestlive := false;
    qry_CGPaymentSTT2.active := true;
    if qry_CGPaymentSTT2.RecordCount=0 then
      begin
        BtnSTT2_D.Enabled:=false;
        BtnSTT2_M.Enabled:=false;
        BtnSTT2_I.Enabled:=true;
      end
    else if qry_CGPaymentSTT2.RecordCount>0 then
      begin
        BtnSTT2_D.Enabled:=true;
        BtnSTT2_M.Enabled:=true;
        BtnSTT2_I.Enabled:=false;
      end
    else BtnSTT2_I.Enabled := false;
    BtnSTT2_S.Enabled:=false;
    BtnSTT2_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.DBGridEh12GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPaymentSTT2.FieldByName('YN').value='0' then
    DBGridEh12.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh11GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_TTHD.FieldByName('YN').value='0' then
    DBGridEh11.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh10GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_TTTK.FieldByName('YN').value='0' then
    DBGridEh10.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.qry_CGPaymentAfterScroll(DataSet: TDataSet);
begin
  if PC2.ActivePageIndex=0 then
  begin
    with qry_CGPaymentS do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      Active := false;
      SQL.Clear;
      SQL.Add(' SELECT ROW_NUMBER() OVER(ORDER BY a.DECLARATION ASC) AS STT, a.FKBH, a.DECLARATION, b.DOCNO, b.MALOAIHINH LOAIHINH, isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) NGAY_THUCLANH ');
      SQL.Add('       , case when a.TIENTE=''VND'' then 0.0 else b.TONGTRIGIA_HOADON end  USACC_CHUATHUE,case when a.TIENTE=''VND'' then 0.0 else a.CWHL end  CWHL  ');
      SQL.Add('	      , case when a.TIENTE=''VND'' then b.TONGTRIGIA_HOADON else round((a.CWHL*b.TONGTRIGIA_HOADON),0) end VNACC_CHUATHUE, a.Percent_TT  ');
      SQL.Add('	      , case when a.TIENTE=''VND'' then 0.0 else round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) end USACC_NHATHAU ');
      SQL.Add('	      , case when a.TIENTE=''VND'' then  ROUND((round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0) else round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0) end VNACC_NHATHAU ');
      SQL.Add(' 		  , case when a.TIENTE=''VND'' then 0.0 else round(((b.TONGTRIGIA_HOADON)-(round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) end USACC_THANHTOAN ');
      SQL.Add('       , case when a.TIENTE=''VND'' then round(b.TONGTRIGIA_HOADON -(round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0)  ');
      SQL.Add('              else  round(((round((a.CWHL*b.TONGTRIGIA_HOADON),0))-(round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0))),0) end VNACC_THANHTOAN ');
      SQL.Add('	      , a.USERID, a.USERDATE, a.YN, a.TIENTE ');
      SQL.Add('       , case when (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX  ');
      SQL.Add(' FROM CGZL_PaymentS a ');
      SQL.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_Declaration] b ON a.DECLARATION=b.DECLARATION');
      SQL.Add(' LEFT JOIN CGZL_Payment on a.FKBH=CGZL_Payment.FKBH ');
      SQL.Add(' LEFT JOIN DOCNO_File on a.DOCNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH ');
      SQL.Add(' WHERE a.FKBH=:FKBH and a.DECLARATION<>''TRUTIEN''');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    if qry_CGPayment.RecordCount>0 then
      BtnS_I.Enabled := true;
    if qry_CGPaymentS.RecordCount>0 then
    begin
      BtnS_D.Enabled := true;
      BtnS_DA.Enabled := true;
      BtnS_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnS_P.Enabled := true;
      end else
      begin
        BtnS_P.Enabled := false;
      end;
      if AccountN233_Check_Print_TB='Y'  then
      begin
        BtnS_P_TB.Enabled := true;
        BtnS_P_TB_VN.Enabled := true;
      end else
      begin
        BtnS_P_TB.Enabled := false;
        BtnS_P_TB_VN.Enabled := false;
      end;
      BtnS_E.Enabled := true;
    end else
    begin
      BtnS_D.Enabled := false;
      BtnS_DA.Enabled := false;
      BtnS_M.Enabled := false;
      BtnS_P.Enabled := false;
      BtnS_P_TB.Enabled := false;
      BtnS_P_TB_VN.Enabled := false;
      BtnS_E.Enabled := false;
    end;

    qry_CGPaymentSTT.Active:=true;
    if qry_CGPaymentSTT.RecordCount=0 then
    begin
      BtnSTT_D.Enabled:=false;
      BtnSTT_M.Enabled:=false;
      BtnSTT_I.Enabled:=true;
    end else if qry_CGPaymentSTT.RecordCount>0 then
    begin
      BtnSTT_D.Enabled:=true;
      BtnSTT_M.Enabled:=true;
      BtnSTT_I.Enabled:=false;
    end else BtnSTT_I.Enabled := false;

    qry_TTTK.Active:=true;
    Btn_D_TT.Enabled:=true;
    Btn_I_TT.Enabled:=true;
  end;
  if PC2.ActivePageIndex=1 then
  begin
    with qry_CGPaymentSS do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      sql.Clear;
      sql.Add(' SELECT ROW_NUMBER() OVER(ORDER BY b.VATDATE ASC) AS STT, a.FKBH, a.ZSBH_MST, a.VATNO ');
      sql.Add('		    ,b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU,a.KYHIEU_HOADON,b.VATDATE,a.TRU_CHIETKHAU ');
      sql.Add('       ,CASE WHEN isnull(TRU_CHIETKHAU,0)=0 THEN b.TONGTIEN_CHUATHUE + isnull(b.TONGTIEN_PHI,0) ELSE ');
      sql.Add('       (b.TONGTIEN_CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0)) + isnull(b.TONGTIEN_PHI,0) end TONGTIEN_CHUATHUE ');
      sql.Add(' 	  	,isnull(b.TONGTIEN_THUE,0) TONGTIEN_THUE, isnull(b.TONGTIEN_THANHTOAN,0) TONGTIEN_THANHTOAN,a.USERID, a.USERDATE, a.YN ');
      SQL.Add('       ,case when (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX  ');
      sql.Add(' FROM CGZL_PaymentSS a ');
      sql.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZSBH_MST and a.KYHIEU_HOADON=b.KYHIEU_HOADON');
      sql.Add(' LEFT JOIN  CGZL_Payment on a.FKBH=CGZL_Payment.FKBH ');
      sql.Add(' LEFT JOIN  DOCNO_File on a.VATNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH  ');
      sql.Add(' WHERE a.FKBH=:FKBH and a.ZSBH_MST<>''TRUTIEN'' ');
      active:=true;
    end;
    if qry_CGPayment.RecordCount>0 then
      BtnSS_I.Enabled := true;
    if qry_CGPaymentSS.RecordCount>0 then
    begin
      BtnSS_D.Enabled := true;
      BtnSS_DA.Enabled := true;
      BtnSS_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnSS_P.Enabled := true;
      end else
      begin
        BtnSS_P.Enabled := false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnSS_P_TB.Enabled := true;
      end else
      begin
        BtnSS_P_TB.Enabled := false;
      end;
      BtnSS_E.Enabled := true;
    end else
    begin
      BtnSS_D.Enabled := false;
      BtnSS_DA.Enabled := false;
      BtnSS_M.Enabled := false;
      BtnSS_P.Enabled := false;
      BtnSS_P_TB.Enabled := false;
      BtnSS_E.Enabled := false;
    end;

    qry_CGPaymentSTT2.Active:=true;
    if qry_CGPaymentSTT2.RecordCount=0 then
    begin
      BtnSTT2_D.Enabled:=false;
      BtnSTT2_M.Enabled:=false;
      BtnSTT2_I.Enabled:=true;
    end else if qry_CGPaymentSTT2.RecordCount>0 then
    begin
      BtnSTT2_D.Enabled:=true;
      BtnSTT2_M.Enabled:=true;
      BtnSTT2_I.Enabled:=false;
    end else BtnSTT2_I.Enabled := false;

    qry_TTHD.Active:=true;
    Btn_D_TTHD.Enabled:=true;
    Btn_I_TTHD.Enabled:=true;
  end;
  if PC2.ActivePageIndex=2 then
  begin
    qry_CGPaymentUNG.Active:=true;
    if qry_CGPayment.RecordCount>0 then
      BtnUNG_I.Enabled := true;
    if qry_CGPaymentUNG.RecordCount>0 then
    begin
      BtnUNG_D.Enabled := true;
      BtnUNG_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnUNG_P.Enabled:=true;
      end else
      begin
        BtnUNG_P.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnUNG_P_TB.Enabled:=true;
      end else
      begin
        BtnUNG_P_TB.Enabled:=false;
      end;
    end else
    begin
      BtnUNG_D.Enabled := false;
      BtnUNG_M.Enabled := false;
      BtnUNG_P.Enabled := false;
      BtnUNG_P_TB.Enabled := false;
    end;
  end;
  if PC2.ActivePageIndex=3 then
  begin
    qry_CGPaymentUNGHD.Active:=true;
    if qry_CGPayment.RecordCount>0 then
      BtnUNGHD_I.Enabled := true;
    if qry_CGPaymentUNGHD.RecordCount>0 then
    begin
      BtnUNGHD_D.Enabled := true;
      BtnUNGHD_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnUNGHD_P.Enabled:=true;
      end else
      begin
        BtnUNGHD_P.Enabled:=false;
      end;
      if AccountN233_Check_Print_TB='Y' then
      begin
        BtnUNGHD_P_TB.Enabled:=true;
      end else
      begin
        BtnUNGHD_P_TB.Enabled:=false;
      end;
    end else
    begin
      BtnUNGHD_D.Enabled := false;
      BtnUNGHD_M.Enabled := false;
      BtnUNGHD_P.Enabled := false;
      BtnUNGHD_P_TB.Enabled := false;
    end;
  end;
  if PC2.ActivePageIndex=4 then
  begin
    with qry_CGPaymentTAMss do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      sql.Clear;
      sql.Add(' SELECT ROW_NUMBER() OVER(ORDER BY b.VATDATE ASC,b.VATNO ASC) AS STT, FKBH, a.ZSBH_MST, a.VATNO ');
      sql.Add('		    ,b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU, a.KYHIEU_HOADON, b.VATDATE, a.SOPHIEU ');
      sql.Add('       ,CASE WHEN isnull(TRU_CHIETKHAU,0)=1 THEN b.TONGTIEN_CHUATHUE+ isnull(b.TONGTIEN_PHI,0) ');
      sql.Add(' 	  	ELSE  (b.TONGTIEN_CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0))+ isnull(b.TONGTIEN_PHI,0) end TONGTIEN_CHUATHUE ');
      sql.Add(' 	  	,b.TONGTIEN_THUE, b.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, a.YN,isnull(TRU_CHIETKHAU,0) TRU_CHIETKHAU ');
      sql.Add(' FROM CGZL_PaymentS_Advance a ');
      sql.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZSBH_MST and a.KYHIEU_HOADON=b.KYHIEU_HOADON ');
      sql.Add(' WHERE FKBH=:FKBH and a.ZSBH_MST<>''TRUTIEN'' ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    with qry_CGPaymentTAM do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' SELECT a.FKBH, Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))SOTIEN_TAMUNG, Isnull(c.NGAY_TAMUNG, isnull(a.NGAY_TAMUNG,''1900/01/01''))NGAY_TAMUNG, ');
      sql.Add('		     CASE WHEN d.VATNO IS NOT NULL THEN ''HD'' ELSE a.LOAI_CHUNGTU END AS LOAI_CHUNGTU, CASE WHEN d.VATNO IS NOT NULL THEN d.VATNO ELSE Isnull( a.SOPHIEU,''-'') END AS SOPHIEU, ');
      sql.Add('        CASE WHEN d.VATNO IS NOT NULL THEN d.VATDATE ELSE a.NGAY_HOADON END AS NGAY_HOADON, CASE WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=1 ');
      sql.Add(' 	  	 THEN d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0) WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=0 ');
      sql.Add(' 	  	 THEN (d.TONGTIEN_CHUATHUE -isnull(d.TONGTIEN_CHIETKHAU,0))+ isnull(d.TONGTIEN_PHI,0) ELSE a.SOTIEN_CHUATHUE END AS SOTIEN_CHUATHUE, ');
      sql.Add(' 	  	 CASE WHEN d.VATNO IS NOT NULL THEN d.TONGTIEN_THUE ELSE a.SOTIEN_THUE END AS SOTIEN_THUE, CASE WHEN d.VATNO IS NOT NULL THEN d.TONGTIEN_THANHTOAN ELSE a.SOTIEN_TT END AS SOTIEN_TT, ');
      sql.Add('        CASE WHEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))-e.TT) >0 ');
      sql.Add('        THEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))-e.TT) else 0  end SOTIEN_HOANLAI, ');
      sql.Add('        CASE WHEN (Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))-e.TT) <0 ');
      sql.Add('        THEN (e.TT -Isnull(c.THANHTOAN, isnull(a.SOTIEN_TAMUNG,0))) else 0 end SOTIEN_CHITHEM, ');
      sql.Add('        a.USERID, a.USERDATE, a.YN ,c.DV_TAMUNG, c.USERNAME_TAMUNG, c.USERID_TAMUNG, a.TIENTE ');
      sql.Add(' FROM   cgzl_payments_advance a ');
      sql.Add(' LEFT JOIN cgzl_payment_map b ON b.FKBH = a.FKBH ');
      sql.Add(' LEFT JOIN (SELECT cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, cgzl_payment.DV_TAMUNG, cgzl_payment.USERNAME_TAMUNG, cgzl_payment.USERID_TAMUNG, Sum(cgzl_advances.SOTIEN_TT) THANHTOAN ');
      sql.Add('            FROM cgzl_advances LEFT JOIN cgzl_payment ON cgzl_payment.FKBH = cgzl_advances.FKBH ');
      sql.Add('            GROUP  BY cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, cgzl_payment.DV_TAMUNG, cgzl_payment.USERNAME_TAMUNG, cgzl_payment.USERID_TAMUNG) c ON b.FKBH_TTT = c.FKBH ');
      sql.Add(' LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON ');
      sql.Add(' LEFT JOIN (SELECT a.FKBH,sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN)) TT ');
      sql.Add('            FROM cgzl_payments_advance a ');
      sql.Add('            LEFT JOIN '+SQL_LinkServer+'.[CGZL_VATNO] d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON ');
      sql.Add('            group by a.FKBH ) e ON e.FKBH = a.FKBH ');
      sql.Add(' WHERE a.FKBH=:FKBH ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    if qry_CGPayment.RecordCount>0 then
    begin
      BtnTAM_I.Enabled := true;
      BtnTAMss_I.Enabled := true;
      if qry_CGPaymentTAMss.RecordCount>0 then
      begin
        BtnTAMss_D.Enabled := true;
        BtnTAMss_M.Enabled := true;
      end;
    end;
    if qry_CGPaymentTAM.RecordCount>0 then
    begin
      BtnTAM_D.Enabled := true;
      BtnTAM_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnTAM_P.Enabled:=true;
      end else
      begin
        BtnTAM_P.Enabled:=false;
      end;
    end else
    begin
      BtnTAM_D.Enabled := false;
      BtnTAM_M.Enabled := false;
      BtnTAM_P.Enabled := false;
    end;

    qry_TTPTU.Active:=true;
    Btn_D_PTU.Enabled:=true;
    Btn_I_PTU.Enabled:=true;
  end;
  if PC2.ActivePageIndex=5 then
  begin
    qry_CGPaymentTAM_P.Active:=true;
    if qry_CGPayment.RecordCount>0 then
      BtnTAMP_I.Enabled := true;
    if qry_CGPaymentTAM_P.RecordCount>0 then
    begin
      BtnTAMP_D.Enabled := true;
      BtnTAMP_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnTAMP_P.Enabled:=true;
      end else
      begin
        BtnTAMP_P.Enabled:=false;
      end;
    end else
    begin
      BtnTAMP_D.Enabled := false;
      BtnTAMP_M.Enabled := false;
      BtnTAMP_P.Enabled := false;
    end;
  end;
end;

procedure TPaymentVATNO.BtnUNGHD_P_TBClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentUNGHD.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;  
  PaymentVATNO_PrintTTHD_TB:=TPaymentVATNO_PrintTTHD_TB.create(self);
  PaymentVATNO_PrintTTHD_TB.L41.Caption:=ComName;
  PaymentVATNO_PrintTTHD_TB.L42.Caption:=ComNameCH;
  PaymentVATNO_PrintTTHD_TB.L43.Caption:=AccountN233_ISO_HD;
  if qry_CGPaymentSS.FieldByName('TONGTIEN_CHUATHUE').Value =0 then
  begin
    PaymentVATNO_PrintTTHD_TB.LPTTT.Caption:= '0 %'
  end else begin
    PaymentVATNO_PrintTTHD_TB.LPTTT.Caption:=IntToStr(Round(qry_CGPaymentUNGHD.FieldByName('TONGTIEN_THUE').Value*100/qry_CGPaymentUNGHD.FieldByName('TONGTIEN_CHUATHUE').Value)) +' %';
  end;
  PaymentVATNO_PrintTTHD_TB.quickrep4.prepare;
  PaymentVATNO_PrintTTHD_TB.page1.caption:=inttostr(PaymentVATNO_PrintTTHD_TB.quickrep4.qrprinter.pagecount);
  PaymentVATNO_PrintTTHD_TB.quickrep4.preview;
  PaymentVATNO_PrintTTHD_TB.free;
end;

procedure TPaymentVATNO.BtnUNG_P_TBClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentUNG.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  pt_tt:='('+qry_CGPaymentUNG.FieldByName('Percent_TT').AsString+')% ';
  pt_nt:='('+IntToStr(100-qry_CGPaymentUNG.FieldByName('Percent_TT').Value)+')% ';
  PaymentVATNO_PrintTT_TB:=TPaymentVATNO_PrintTT_TB.create(self);
  PaymentVATNO_PrintTT_TB.L31.Caption:=ComName;
  PaymentVATNO_PrintTT_TB.L32.Caption:=ComNameCH;
  PaymentVATNO_PrintTT_TB.L33.Caption:=AccountN233_ISO_TK;
  PaymentVATNO_PrintTT_TB.LNT_US2.Caption:= pt_nt+'USD';
  PaymentVATNO_PrintTT_TB.LNT_VN2.Caption:= pt_nt+'VND';
  PaymentVATNO_PrintTT_TB.LTT_US2.Caption:= pt_tt+'USD';
  PaymentVATNO_PrintTT_TB.LTT_VN2.Caption:= pt_tt+'VND';
  PaymentVATNO_PrintTT_TB.QuickRep3.prepare;
  PaymentVATNO_PrintTT_TB.page3.caption:=inttostr(PaymentVATNO_PrintTT_TB.QuickRep3.qrprinter.pagecount);
  PaymentVATNO_PrintTT_TB.QuickRep3.preview;
  PaymentVATNO_PrintTT_TB.free;
end;

procedure TPaymentVATNO.BtnSS_P_TBClick(Sender: TObject);
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentSS.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  PaymentVATNO_PrintHD_TB:=TPaymentVATNO_PrintHD_TB.create(self);
  PaymentVATNO_PrintHD_TB.L21.Caption:=ComName;
  PaymentVATNO_PrintHD_TB.L22.Caption:=ComNameCH;
  PaymentVATNO_PrintHD_TB.L23.Caption:=AccountN233_ISO_HD;
  if qry_CGPaymentSS.FieldByName('TONGTIEN_CHUATHUE').Value =0 then
  begin
    PaymentVATNO_PrintHD_TB.LPT.Caption:= '0 %'
  end else begin
    PaymentVATNO_PrintHD_TB.LPT.Caption:=IntToStr(Round(qry_CGPaymentSS.FieldByName('TONGTIEN_THUE').Value*100/qry_CGPaymentSS.FieldByName('TONGTIEN_CHUATHUE').Value)) +' %';
  end;
  qry_CGPaymentSTT2.active := false;
  qry_CGPaymentSTT2.cachedupdates := false;
  qry_CGPaymentSTT2.requestlive := false;
  qry_CGPaymentSTT2.active := true;
  if qry_CGPaymentSTT2.RecordCount>0 then
    PaymentVATNO_PrintHD_TB.QRSubDetail1.PrintIfEmpty:=true
  else
    PaymentVATNO_PrintHD_TB.QRSubDetail1.PrintIfEmpty:=false;
  PaymentVATNO_PrintHD_TB.quickrep2.prepare;
  PaymentVATNO_PrintHD_TB.page2.caption:=inttostr(PaymentVATNO_PrintHD_TB.quickrep2.qrprinter.pagecount);
  PaymentVATNO_PrintHD_TB.quickrep2.preview;
  PaymentVATNO_PrintHD_TB.free;
end;

procedure TPaymentVATNO.BtnS_P_TBClick(Sender: TObject);
  var pt_nt, pt_tt: string;
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentS.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  pt_tt:='('+qry_CGPaymentS.FieldByName('Percent_TT').AsString+')% ';
  pt_nt:='('+IntToStr(100-qry_CGPaymentS.FieldByName('Percent_TT').Value)+')% ';
  PaymentVATNO_Print_TB:=TPaymentVATNO_Print_TB.create(self);
  PaymentVATNO_Print_TB.L11.Caption:=ComName;
  PaymentVATNO_Print_TB.L12.Caption:=ComNameCH;
  PaymentVATNO_Print_TB.L13.Caption:=AccountN233_ISO_TK;
  PaymentVATNO_Print_TB.LNT_US.Caption:= pt_nt+'USD';
  PaymentVATNO_Print_TB.LNT_VN.Caption:= pt_nt+'VND';
  PaymentVATNO_Print_TB.LTT_US.Caption:= pt_tt+'USD';
  PaymentVATNO_Print_TB.LTT_VN.Caption:= pt_tt+'VND';
  qry_CGPaymentSTT.active := false;
  qry_CGPaymentSTT.cachedupdates := false;
  qry_CGPaymentSTT.requestlive := false;
  qry_CGPaymentSTT.active := true;
  if qry_CGPaymentSTT.RecordCount>0 then
    PaymentVATNO_Print_TB.QRSubDetail1.PrintIfEmpty:=true
  else
    PaymentVATNO_Print_TB.QRSubDetail1.PrintIfEmpty:=false;
  PaymentVATNO_Print_TB.quickrep1.prepare;
  PaymentVATNO_Print_TB.page1.caption:=inttostr(PaymentVATNO_Print_TB.quickrep1.qrprinter.pagecount);
  PaymentVATNO_Print_TB.quickrep1.preview;
  PaymentVATNO_Print_TB.free;
end;

procedure TPaymentVATNO.BtnS_P_TB_VNClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  if ((qry_CGPaymentS.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  pt_tt:='('+qry_CGPaymentS.FieldByName('Percent_TT').AsString+')% ';
  pt_nt:='('+IntToStr(100-qry_CGPaymentS.FieldByName('Percent_TT').Value)+')% ';
  PaymentVATNO_Print_TB_VN:=TPaymentVATNO_Print_TB_VN.Create(self);
  PaymentVATNO_Print_TB_VN.L11.Caption:=ComName;
  PaymentVATNO_Print_TB_VN.L12.Caption:=ComNameCH;
  PaymentVATNO_Print_TB_VN.L13.Caption:=AccountN233_ISO_TK;
  PaymentVATNO_Print_TB_VN.LNT_US.Caption:= pt_nt+'USD';
  PaymentVATNO_Print_TB_VN.LNT_VN.Caption:= pt_nt+'VND';
  PaymentVATNO_Print_TB_VN.LTT_US.Caption:= pt_tt+'USD';
  PaymentVATNO_Print_TB_VN.LTT_VN.Caption:= pt_tt+'VND';
  qry_CGPaymentSTT.active := false;
  qry_CGPaymentSTT.cachedupdates := false;
  qry_CGPaymentSTT.requestlive := false;
  qry_CGPaymentSTT.active := true;
  if qry_CGPaymentSTT.RecordCount>0 then
    PaymentVATNO_Print_TB_VN.QRSubDetail1.PrintIfEmpty:=true
  else
    PaymentVATNO_Print_TB_VN.QRSubDetail1.PrintIfEmpty:=false;
  PaymentVATNO_Print_TB_VN.QuickRep1.prepare;
  PaymentVATNO_Print_TB_VN.page1.caption:=inttostr(PaymentVATNO_Print_TB_VN.QuickRep1.qrprinter.pagecount);
  PaymentVATNO_Print_TB_VN.QuickRep1.preview;
  PaymentVATNO_Print_TB_VN.free;
end;

procedure TPaymentVATNO.BtnTAM_IClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentTAM do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  //DBGridEh13.FieldColumns['DECLARATION'].ButtonStyle := cbsEllipsis;
  BtnTAM_S.Enabled:=true;
  BtnTAM_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAM_DClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentTAM do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnTAM_S.Enabled:=true;
  BtnTAM_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAM_MClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentTAM do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  //DBGridEh13.FieldColumns['DECLARATION'].ButtonStyle := cbsEllipsis;
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_CHUATHUE')).DisplayFormat:='';
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_THUE')).DisplayFormat:='';
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_TT')).DisplayFormat:='';
  BtnTAM_S.Enabled:=true;
  BtnTAM_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAM_SClick(Sender: TObject);
var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentTAM.first;
    for i := 1 to qry_CGPaymentTAM.RecordCount do
    begin
      case qry_CGPaymentTAM.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if ( (qry_CGPaymentTAM.fieldbyname('LOAI_CHUNGTU').isnull)) then
            begin
              qry_CGPaymentTAM.delete;
            end else
            begin
              qry_CGPaymentTAM.edit;
              qry_CGPaymentTAM.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentTAM.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
              qry_CGPaymentTAM.FieldByName('SOTIEN_TT').Value := qry_CGPaymentTAM.FieldByName('SOTIEN_CHUATHUE').Value+qry_CGPaymentTAM.FieldByName('SOTIEN_THUE').Value;
              Up_CGPayTAM.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentTAM.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentTAM.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'CGZL_Payment_Advance'+''''+','+''''+qry_CGPaymentTAM.fieldbyname('FKBH').Value+'''');
                  sql.add(','+''''+qry_CGPaymentTAM.fieldbyname('LOAI_CHUNGTU').Value+'*'+qry_CGPaymentTAM.fieldbyname('SOPHIEU').AsString+''''+',');
                  sql.add(''''+qry_CGPaymentTAM.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPayTAM.apply(ukdelete);
              end else
              begin
                qry_CGPaymentTAM.edit;
                qry_CGPaymentTAM.FieldByName('userID').Value := main.edit1.text;
                qry_CGPaymentTAM.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
                qry_CGPaymentTAM.FieldByName('SOTIEN_TT').Value := qry_CGPaymentTAM.FieldByName('SOTIEN_CHUATHUE').Value+qry_CGPaymentTAM.FieldByName('SOTIEN_THUE').Value;
                Up_CGPayTAM.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentTAM.next;
    end;
    qry_CGPaymentTAM.active := false;
    qry_CGPaymentTAM.cachedupdates := false;
    qry_CGPaymentTAM.requestlive := false;
    qry_CGPaymentTAM.active := true;
    if qry_CGPaymentTAM.RecordCount>0 then
    begin
      BtnTAM_D.Enabled := true;
      BtnTAM_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnTAM_P.Enabled:=true;
      end else
      begin
        BtnTAM_P.Enabled:=false;
      end;
    end else
    begin
      BtnTAM_D.Enabled := false;
      BtnTAM_M.Enabled := false;
      BtnTAM_P.Enabled := false;
    end;
    //DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsNone;
    TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
    TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_TT')).DisplayFormat:=VNPrice_DiplayFormat;
    BtnTAM_S.Enabled:=false;
    BtnTAM_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.BtnTAM_CClick(Sender: TObject);
begin
  with qry_CGPaymentTAM do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  //DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsNone;
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_CHUATHUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_THUE')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(qry_CGPaymentTAM.FieldByName('SOTIEN_TT')).DisplayFormat:=VNPrice_DiplayFormat;
  BtnTAM_S.Enabled:=false;
  BtnTAM_C.Enabled:=false;
end;

procedure TPaymentVATNO.BtnTAM_PClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  if ((qry_CGPaymentTAM.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  PaymentVATNO_PrintTTTU:=TPaymentVATNO_PrintTTTU.create(self);
  PaymentVATNO_PrintTTTU.L51.Caption:=ComName;
  PaymentVATNO_PrintTTTU.L52.Caption:=ComNameCH;
  PaymentVATNO_PrintTTTU.L53.Caption:=AccountN233_ISO_TU;
  if qry_CGPaymentTAM.FieldByName('SOTIEN_HOANLAI').value>0 then
  begin
    PaymentVATNO_PrintTTTU.QRLabel329.Caption:='x';
  end else
  begin
    PaymentVATNO_PrintTTTU.QRLabel329.Caption:='';
    PaymentVATNO_PrintTTTU.QRExpr24.Expression:='';
  end;
  if qry_CGPaymentTAM.FieldByName('SOTIEN_CHITHEM').value>0 then
  begin
    PaymentVATNO_PrintTTTU.QRLabel330.Caption:='x';
  end else
  begin
    PaymentVATNO_PrintTTTU.QRLabel330.Caption:='';
    PaymentVATNO_PrintTTTU.QRExpr25.Expression:='';
  end;
  PaymentVATNO_PrintTTTU.quickrep5.prepare;
  PaymentVATNO_PrintTTTU.page1.caption:=inttostr(PaymentVATNO_PrintTTTU.quickrep5.qrprinter.pagecount);
  PaymentVATNO_PrintTTTU.quickrep5.preview;
  PaymentVATNO_PrintTTTU.free;
end;

procedure TPaymentVATNO.btn_I_PTUClick(Sender: TObject);
begin
  with qry_TTPTU do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  Btn_S_PTU.Enabled:=true;
  Btn_C_PTU.Enabled:=true;
  DBGridEh18.FieldColumns['fkbh_ttt'].ButtonStyle := cbsEllipsis;
end;

procedure TPaymentVATNO.btn_D_PTUClick(Sender: TObject);
begin
  with qry_TTPTU do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  Btn_S_PTU.Enabled:=true;
  Btn_C_PTU.Enabled:=true;
end;

procedure TPaymentVATNO.btn_M_PTUClick(Sender: TObject);
begin
  with qry_TTPTU do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  TCurrencyField(qry_TTPTU.FieldByName('THANHTOAN')).DisplayFormat:='';
  DBGridEh18.FieldColumns['fkbh_ttt'].ButtonStyle := cbsEllipsis;
  Btn_S_PTU.Enabled:=true;
  Btn_C_PTU.Enabled:=true;
end;

procedure TPaymentVATNO.btn_S_PTUClick(Sender: TObject);
var y, m, a, User: string;
      i: integer;
begin
  try
    qry_TTPTU.first;
    for i := 1 to qry_TTPTU.RecordCount do
    begin
      case qry_TTPTU.updatestatus of
          usinserted:
          begin
            if qry_TTPTU.FieldByName('FKBH_TTT').IsNull then
            begin
              ShowMessage('FKBH_TTT can not empty');
              abort;
            end;
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            qry_TTPTU.edit;
            qry_TTPTU.FieldByName('userID').Value := main.edit1.text;
            qry_TTPTU.FieldByName('FKBH').Value := qry_CGPayment.FieldByName('FKBH').Value;
            Up_TTPTU.apply(ukinsert);
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('  update CGZL_Payment SET FKBH_S = ''Y''      ');
              SQL.Add('  WHERE  FKBH='''+qry_TTPTU.fieldbyname('FKBH_TTT').AsString+'''   ');
              execsql;
              active:=false;
              sql.Clear;
              SQL.Add('  update CGZL_Payment SET ZSBH = '''+qry_TTPTU.fieldbyname('USERID_TAMUNG').AsString+'''      ');
              SQL.Add('  WHERE  FKBH='''+qry_TTPTU.fieldbyname('FKBH').AsString+'''   ');
              execsql;
              active:=false;
            end;
          end;
          usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_TTPTU.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_TTPTU.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''CGZL_Payment_Map'','''+qry_TTPTU.fieldbyname('FKBH').AsString+''',');
                  sql.add(''''+qry_TTPTU.fieldbyname('FKBH_TTT').AsString+''',');
                  sql.add(''''+qry_TTPTU.fieldbyname('USERID').Value+''','''+main.Edit1.Text+''',getdate())');
                  execsql;
                  active:=false;
                end;
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  SQL.Add('  update CGZL_Payment SET FKBH_S = ''N''      ');
                  SQL.Add('  WHERE  FKBH='''+qry_TTPTU.fieldbyname('FKBH_TTT').AsString+'''   ');
                  execsql;
                  active:=false;
                  sql.Clear;
                  SQL.Add('  update CGZL_Payment SET ZSBH = '''+main.edit1.text+'''      ');
                  SQL.Add('  WHERE  FKBH='''+qry_TTPTU.fieldbyname('FKBH').AsString+'''   ');
                  execsql;
                  active:=false;
                end;
                Up_TTPTU.apply(ukdelete);
              end;
            end;
          end;
      end;
      qry_TTPTU.next;
    end;
    qry_TTPTU.active := false;
    qry_TTPTU.cachedupdates := false;
    qry_TTPTU.requestlive := false;
    qry_TTPTU.active := true;
    if qry_TTPTU.RecordCount=0 then
    begin
      Btn_D_PTU.Enabled:=false;
    end else
    begin
      Btn_D_PTU.Enabled:=true;
    end;
    TCurrencyField(qry_TTPTU.FieldByName('THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
    DBGridEh18.FieldColumns['fkbh_ttt'].ButtonStyle := cbsNone;
    Btn_S_PTU.Enabled:=false;
    Btn_C_PTU.Enabled:=false;
    qry_CGPayment.active := false;
    qry_CGPayment.cachedupdates := false;
    qry_CGPayment.requestlive := false;
    qry_CGPayment.active := true;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.btn_C_PTUClick(Sender: TObject);
begin
  with qry_TTPTU do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  TCurrencyField(qry_TTPTU.FieldByName('THANHTOAN')).DisplayFormat:=VNPrice_DiplayFormat;
  DBGridEh18.FieldColumns['fkbh_ttt'].ButtonStyle := cbsNone;
  Btn_S_PTU.Enabled:=false;
  Btn_C_PTU.Enabled:=false;
end;

procedure TPaymentVATNO.BtnTAMP_IClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentTAM_P do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  //DBGridEh13.FieldColumns['DECLARATION'].ButtonStyle := cbsEllipsis;
  BtnTAMP_S.Enabled:=true;
  BtnTAMP_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAMP_DClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;
  
  with qry_CGPaymentTAM_P do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnTAMP_S.Enabled:=true;
  BtnTAMP_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAMP_MClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentTAM_P do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  //DBGridEh13.FieldColumns['DECLARATION'].ButtonStyle := cbsEllipsis;
  BtnTAMP_S.Enabled:=true;
  BtnTAMP_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAMP_SClick(Sender: TObject);
var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentTAM_P.first;
    for i := 1 to qry_CGPaymentTAM_P.RecordCount do
    begin
      case qry_CGPaymentTAM_P.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if ((qry_CGPaymentTAM_P.fieldbyname('STT').isnull) or (qry_CGPaymentTAM_P.fieldbyname('LYDO').isnull)) then
            begin
              ShowMessage('STT and LYDO can not empty');
              qry_CGPaymentTAM_P.delete;
            end else
            begin
              qry_CGPaymentTAM_P.edit;
              qry_CGPaymentTAM_P.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentTAM_P.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
              Up_CGPayTAM_P.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentTAM_P.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentTAM_P.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'CGZL_AdvanceS'+''''+','+''''+qry_CGPaymentTAM_P.fieldbyname('FKBH').Value+'''');
                  sql.add(','+''''+qry_CGPaymentTAM_P.fieldbyname('STT').Value+'*'+qry_CGPaymentTAM_P.fieldbyname('LYDO').AsString+''''+',');
                  sql.add(''''+qry_CGPaymentTAM_P.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPayTAM_P.apply(ukdelete);
              end else
              begin
                qry_CGPaymentTAM_P.edit;
                qry_CGPaymentTAM_P.FieldByName('userID').Value := main.edit1.text;
                qry_CGPaymentTAM_P.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
                Up_CGPayTAM_P.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentTAM_P.next;
    end;
    qry_CGPaymentTAM_P.active := false;
    qry_CGPaymentTAM_P.cachedupdates := false;
    qry_CGPaymentTAM_P.requestlive := false;
    qry_CGPaymentTAM_P.active := true;
    if qry_CGPaymentTAM_P.RecordCount>0 then
    begin
      BtnTAMP_D.Enabled := true;
      BtnTAMP_M.Enabled := true;
      if AccountN233_Check_Print='Y' then
      begin
        BtnTAMP_P.Enabled:=true;
      end else
      begin
        BtnTAMP_P.Enabled:=false;
      end;
    end else
    begin
      BtnTAMP_D.Enabled := false;
      BtnTAMP_M.Enabled := false;
      BtnTAMP_P.Enabled := false;
    end;
    //DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsNone;
    BtnTAMP_S.Enabled:=false;
    BtnTAMP_C.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.BtnTAMP_CClick(Sender: TObject);
begin
  with qry_CGPaymentTAM_P do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  //DBGridEh3.FieldColumns['DECLARATION'].ButtonStyle := cbsNone;
  BtnTAMP_S.Enabled:=false;
  BtnTAMP_C.Enabled:=false;
end;

procedure TPaymentVATNO.BtnTAMP_PClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  if ((qry_CGPaymentTAM_P.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  PaymentVATNO_PrintPTU:=TPaymentVATNO_PrintPTU.create(self);
  PaymentVATNO_PrintPTU.L61.Caption:=ComName;
  PaymentVATNO_PrintPTU.L62.Caption:=ComNameCH;
  PaymentVATNO_PrintPTU.L63.Caption:=AccountN233_ISO_PTU;
  PaymentVATNO_PrintPTU.quickrep6.prepare;
  PaymentVATNO_PrintPTU.page1.caption:=inttostr(PaymentVATNO_PrintPTU.quickrep6.qrprinter.pagecount);
  PaymentVATNO_PrintPTU.quickrep6.preview;
  PaymentVATNO_PrintPTU.free;
end;

procedure TPaymentVATNO.DBGridEh13DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qry_CGPayment.FieldByName('YN').value = '5' then
  begin
    DBGridEh13.canvas.font.color := clblue;
    DBGridEh13.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;
end;

procedure TPaymentVATNO.DBGridEh13EditButtonClick(Sender: TObject);
begin
  if DBGridEh13.Selectedfield.fieldname='DEPID' then
  begin
    PaymentVATNO_DEP:=TPaymentVATNO_DEP.create(self);
    PaymentVATNO_DEP.show;
  end;  
end;

procedure TPaymentVATNO.DBGridEh13GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPayment.FieldByName('YN').value='0' then
    dbgrideh13.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh18GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_TTPTU.FieldByName('YN').value='0' then
    DBGridEh18.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh14DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qry_CGPayment.FieldByName('YN').value = '5' then
  begin
    DBGridEh14.canvas.font.color := clblue;
    DBGridEh14.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;
end;

procedure TPaymentVATNO.DBGridEh14EditButtonClick(Sender: TObject);
begin
  if DBGridEh14.Selectedfield.fieldname='DEPID' then
  begin
    PaymentVATNO_DEP:=TPaymentVATNO_DEP.create(self);
    PaymentVATNO_DEP.show;
  end;
  if DBGridEh14.Selectedfield.fieldname='USERID_TAMUNG' then
  begin
    PaymentVATNO_ZS:=TPaymentVATNO_ZS.create(self);
    PaymentVATNO_ZS.show;
  end;
end;

procedure TPaymentVATNO.DBGridEh14GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if Qry_CGPayment.FieldByName('YN').value='0' then
    dbgrideh14.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CGPayment.FieldByName('YN').value='0' then
    DBGridEh6.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh16GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_CGPaymentTAM_P.FieldByName('YN').value='0' then
    DBGridEh16.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh18EditButtonClick(Sender: TObject);
begin
  if DBGridEh18.Selectedfield.fieldname='fkbh_ttt' then
  begin
    PaymentVATNO_PTU:=TPaymentVATNO_PTU.create(self);
    PaymentVATNO_PTU.show;
  end;
end;

procedure TPaymentVATNO.DBGridEh15GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_CGPaymentTAM.FieldByName('YN').value='0' then
    DBGridEh15.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.BtnTAMss_IClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentTAMss do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  DBGridEh17.FieldColumns['VATNO'].ButtonStyle := cbsEllipsis;
  BtnTAMss_S.Enabled:=true;
  BtnTAMss_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAMss_DClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentTAMss do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BtnTAMss_S.Enabled:=true;
  BtnTAMss_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAMss_MClick(Sender: TObject);
begin
  if qry_CGPayment.RequestLive then
  begin
    showmessage('Pls save Payment data first.');
    abort;
  end;

  with qry_CGPaymentTAMss do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  DBGridEh17.FieldColumns['VATNO'].ButtonStyle := cbsEllipsis;
  BtnTAMss_S.Enabled:=true;
  BtnTAMss_C.Enabled:=true;
end;

procedure TPaymentVATNO.BtnTAMss_SClick(Sender: TObject);
var y, m, a, User: string;
      i: integer;
begin
  try
    qry_CGPaymentTAMss.first;
    for i := 1 to qry_CGPaymentTAMss.RecordCount do
    begin
      case qry_CGPaymentTAMss.updatestatus of
        usinserted:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentTAMss.fieldbyname('VATNO').isnull then
            begin
              qry_CGPaymentTAMss.delete;
            end else
            begin
              qry_CGPaymentTAMss.edit;
              qry_CGPaymentTAMss.FieldByName('userID').Value := main.edit1.text;
              qry_CGPaymentTAMss.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
              Up_CGPayTAMss.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if qry_CGPayment.FieldByName('YN').AsString='5' then
            begin
              ShowMessage('Already confirmed, can not edit');
              abort;
            end;
            if qry_CGPaymentTAMss.FieldByName('USERID').value<>main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end else
            begin
              if qry_CGPaymentTAMss.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'CGZL_Payment_Advance'+''''+','+''''+qry_CGPaymentTAMss.fieldbyname('FKBH').Value+'''');
                  sql.add(','+''''+qry_CGPaymentTAMss.fieldbyname('VATNO').Value+'*'+qry_CGPaymentTAMss.fieldbyname('ZSBH_MST').AsString+''''+',');
                  sql.add(''''+qry_CGPaymentTAMss.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                Up_CGPayTAMss.apply(ukdelete);
              end else
              begin
                qry_CGPaymentTAMss.edit;
                qry_CGPaymentTAMss.FieldByName('userID').Value := main.edit1.text;
                qry_CGPaymentTAMss.FieldByName('FKBH').Value :=qry_CGPayment.FieldByName('FKBH').Value;
                Up_CGPayTAMss.apply(ukmodify);
              end;
            end;
          end;
      end;
      qry_CGPaymentTAMss.next;
    end;
    qry_CGPaymentTAMss.active := false;
    qry_CGPaymentTAMss.cachedupdates := false;
    qry_CGPaymentTAMss.requestlive := false;
    qry_CGPaymentTAMss.active := true;
    if qry_CGPaymentTAMss.RecordCount=0 then
    begin
      BtnTAMss_D.Enabled:=false;
      BtnTAMss_M.Enabled:=false;
      BtnTAMss_I.Enabled:=true;
    end else if qry_CGPaymentTAMss.RecordCount>0 then
    begin
      BtnTAMss_D.Enabled:=true;
      BtnTAMss_M.Enabled:=true;
      BtnTAMss_I.Enabled:=true;
      BtnTAM_P.Enabled:=true;
    end else BtnTAMss_I.Enabled := false;
    DBGridEh17.FieldColumns['VATNO'].ButtonStyle := cbsNone;
    BtnTAMss_S.Enabled:=false;
    BtnTAMss_C.Enabled:=false;
    With qry_temp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('  UPDATE CGZL_PaymentS_Advance SET SOTIEN_CHUATHUE = (CASE WHEN  isnull(TRU_CHIETKHAU,0)=1  ');
      SQL.Add('          THEN d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0)   ');
      SQL.Add('          ELSE  (d.TONGTIEN_CHUATHUE -isnull(d.TONGTIEN_CHIETKHAU,0))+ isnull(d.TONGTIEN_PHI,0)           ');
      SQL.Add('         END),  ');
      SQL.Add('         SOTIEN_THUE = d.TONGTIEN_THUE,  ');
      SQL.Add('         SOTIEN_TT = d.TONGTIEN_THANHTOAN    ');
      SQL.Add('  FROM CGZL_PaymentS_Advance    ');
      SQL.Add('    LEFT JOIN CGZL_VATNO d  ON d.VATNO = CGZL_PaymentS_Advance.VATNO  ');
      SQL.Add('    AND d.ZSBH_MST = CGZL_PaymentS_Advance.ZSBH_MST  ');
      SQL.Add('    AND d.KYHIEU_HOADON = CGZL_PaymentS_Advance.KYHIEU_HOADON  ');
      SQL.Add('  WHERE CGZL_PaymentS_Advance.VATNO IS NOT NULL and CGZL_PaymentS_Advance.FKBH='''+qry_CGPayment.FieldByName('FKBH').Value+'''   ');
      ExecSQL;
    end;
    qry_CGPaymentTAM.active := false;
    qry_CGPaymentTAM.cachedupdates := false;
    qry_CGPaymentTAM.requestlive := false;
    qry_CGPaymentTAM.active := true;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TPaymentVATNO.BtnTAMss_CClick(Sender: TObject);
begin
  with qry_CGPaymentTAMss do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGridEh17.FieldColumns['VATNO'].ButtonStyle := cbsNone;
  BtnTAMss_S.Enabled:=false;
  BtnTAMss_C.Enabled:=false;
end;

procedure TPaymentVATNO.DBGridEh17GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry_CGPaymentTAMss.FieldByName('YN').value='0' then
    DBGridEh17.canvas.font.color:=clred;
end;

procedure TPaymentVATNO.DBGridEh17EditButtonClick(Sender: TObject);
begin
  if DBGridEh17.Selectedfield.fieldname='VATNO' then
  begin
    PaymentVATNO_HD:=TPaymentVATNO_HD.create(self);
    PaymentVATNO_HD.DTP7.Date:=NDate-15;
    PaymentVATNO_HD.DTP8.Date:=NDate;
    PaymentVATNO_HD1._type:='TTTU';
    PaymentVATNO_HD.show;
  end;
end;

procedure TPaymentVATNO.qry_CGPaymentTAM_PAfterOpen(DataSet: TDataSet);
begin
  if qry_CGPaymentTAM_P.FieldByName('TIENTE').AsString = 'USD' then
  begin
    BtnTAMP_P_USD.Enabled:=true;
  end else
  begin
    BtnTAMP_P_USD.Enabled:=false;
  end;
end;

procedure TPaymentVATNO.BtnTAMP_P_USDClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  if ((qry_CGPaymentTAM_P.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  PaymentVATNO_PrintPTU_USD:=TPaymentVATNO_PrintPTU_USD.create(self);
  PaymentVATNO_PrintPTU_USD.L61.Caption:=ComName;
  PaymentVATNO_PrintPTU_USD.L62.Caption:=ComNameCH;
  PaymentVATNO_PrintPTU_USD.L63.Caption:=AccountN233_ISO_PTU;
  PaymentVATNO_PrintPTU_USD.quickrep6.prepare;
  PaymentVATNO_PrintPTU_USD.page1.caption:=inttostr(PaymentVATNO_PrintPTU_USD.quickrep6.qrprinter.pagecount);
  PaymentVATNO_PrintPTU_USD.quickrep6.preview;
  PaymentVATNO_PrintPTU_USD.free;
end;

procedure TPaymentVATNO.qry_CGPaymentTAMAfterOpen(DataSet: TDataSet);
begin
  if qry_CGPaymentTAM.FieldByName('TIENTE').AsString='USD' then
  begin
    DBGridEh15.Columns[5].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[6].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[7].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[8].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[9].DisplayFormat:='##,#0.00';
    BtnTAM_P_USD.Enabled:=true;
  end else
  begin
    DBGridEh15.Columns[5].DisplayFormat:='#,##0';
    DBGridEh15.Columns[6].DisplayFormat:='#,##0';
    DBGridEh15.Columns[7].DisplayFormat:='#,##0';
    DBGridEh15.Columns[8].DisplayFormat:='#,##0';
    DBGridEh15.Columns[9].DisplayFormat:='#,##0';
    BtnTAM_P_USD.Enabled:=false;
  end;
end;

procedure TPaymentVATNO.qry_CGPaymentTAMAfterScroll(DataSet: TDataSet);
begin
  if qry_CGPaymentTAM.FieldByName('TIENTE').AsString='USD' then
  begin
    DBGridEh15.Columns[5].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[6].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[7].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[8].DisplayFormat:='##,#0.00';
    DBGridEh15.Columns[9].DisplayFormat:='##,#0.00';
    BtnTAM_P_USD.Enabled:=true;
  end else
  begin
    DBGridEh15.Columns[5].DisplayFormat:='#,##0';
    DBGridEh15.Columns[6].DisplayFormat:='#,##0';
    DBGridEh15.Columns[7].DisplayFormat:='#,##0';
    DBGridEh15.Columns[8].DisplayFormat:='#,##0';
    DBGridEh15.Columns[9].DisplayFormat:='#,##0';
    BtnTAM_P_USD.Enabled:=false;
  end;
end;

procedure TPaymentVATNO.BtnTAM_P_USDClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  if ((qry_CGPaymentTAM.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  PaymentVATNO_PrintTTTU_USD:=TPaymentVATNO_PrintTTTU_USD.create(self);
  PaymentVATNO_PrintTTTU_USD.L51.Caption:=ComName;
  PaymentVATNO_PrintTTTU_USD.L52.Caption:=ComNameCH;
  PaymentVATNO_PrintTTTU_USD.L53.Caption:=AccountN233_ISO_TU;
  if qry_CGPaymentTAM.FieldByName('SOTIEN_HOANLAI').value>0 then
  begin
    PaymentVATNO_PrintTTTU_USD.QRLabel329.Caption:='x';
  end else
  begin
    PaymentVATNO_PrintTTTU_USD.QRLabel329.Caption:='';
    PaymentVATNO_PrintTTTU_USD.QRExpr24.Expression:='';
  end;
  if qry_CGPaymentTAM.FieldByName('SOTIEN_CHITHEM').value>0 then
  begin
    PaymentVATNO_PrintTTTU_USD.QRLabel330.Caption:='x';
  end else
  begin
    PaymentVATNO_PrintTTTU_USD.QRLabel330.Caption:='';
    PaymentVATNO_PrintTTTU_USD.QRExpr25.Expression:='';
  end;
  PaymentVATNO_PrintTTTU_USD.quickrep5.prepare;
  PaymentVATNO_PrintTTTU_USD.page1.caption:=inttostr(PaymentVATNO_PrintTTTU_USD.quickrep5.qrprinter.pagecount);
  PaymentVATNO_PrintTTTU_USD.quickrep5.preview;
  PaymentVATNO_PrintTTTU_USD.free;
end;

procedure TPaymentVATNO.BtnTAMP_P_TBClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  if ((qry_CGPaymentTAM_P.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  PaymentVATNO_PrintPTU_TB:=TPaymentVATNO_PrintPTU_TB.create(self);
  PaymentVATNO_PrintPTU_TB.L61.Caption:=ComName;
  PaymentVATNO_PrintPTU_TB.L62.Caption:=ComNameCH;
  PaymentVATNO_PrintPTU_TB.L63.Caption:=AccountN233_ISO_PTU;
  PaymentVATNO_PrintPTU_TB.quickrep6.prepare;
  PaymentVATNO_PrintPTU_TB.page1.caption:=inttostr(PaymentVATNO_PrintPTU_TB.quickrep6.qrprinter.pagecount);
  PaymentVATNO_PrintPTU_TB.quickrep6.preview;
  PaymentVATNO_PrintPTU_TB.free;
end;

procedure TPaymentVATNO.BtnTAM_P_TBClick(Sender: TObject);
var pt_nt, pt_tt: string;
begin
  if ((qry_CGPaymentTAM.FieldByName('FKBH').AsString=''))  then
  begin
      showmessage('No data.');
      abort;
  end;
  with qry_id do
  begin
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from Busers where USERID='''+qry_CGPayment.FieldByName('USERID').AsString+''' ');
    active:=true;
  end;
  PaymentVATNO_PrintTTTU_TB:=TPaymentVATNO_PrintTTTU_TB.create(self);
  PaymentVATNO_PrintTTTU_TB.L51.Caption:=ComName;
  PaymentVATNO_PrintTTTU_TB.L52.Caption:=ComNameCH;
  PaymentVATNO_PrintTTTU_TB.L53.Caption:=AccountN233_ISO_TU;
  if qry_CGPaymentTAM.FieldByName('SOTIEN_HOANLAI').value>0 then
  begin
    PaymentVATNO_PrintTTTU_TB.QRLabel329.Caption:='x';
  end else
  begin
    PaymentVATNO_PrintTTTU_TB.QRLabel329.Caption:='';
    PaymentVATNO_PrintTTTU_TB.QRExpr24.Expression:='';
  end;
  if qry_CGPaymentTAM.FieldByName('SOTIEN_CHITHEM').value>0 then
  begin
    PaymentVATNO_PrintTTTU_TB.QRLabel330.Caption:='x';
  end else
  begin
    PaymentVATNO_PrintTTTU_TB.QRLabel330.Caption:='';
    PaymentVATNO_PrintTTTU_TB.QRExpr25.Expression:='';
  end;
  PaymentVATNO_PrintTTTU_TB.quickrep5.prepare;
  PaymentVATNO_PrintTTTU_TB.page1.caption:=inttostr(PaymentVATNO_PrintTTTU_TB.quickrep5.qrprinter.pagecount);
  PaymentVATNO_PrintTTTU_TB.quickrep5.preview;
  PaymentVATNO_PrintTTTU_TB.free;
end;

end.
