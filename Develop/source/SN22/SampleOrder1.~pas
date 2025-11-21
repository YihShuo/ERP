unit SampleOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp,
  ShellAPI, StrUtils, IniFiles;

const ReadOnly=false;
type
  TSampleOrder = class(TForm)
    MasPanel: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BDT6: TBitBtn;
    DetPanel: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    InfoPanel: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    YPDH_DB: TDBEdit;
    ARTNO_DB: TDBEdit;
    DBEdit1: TDBEdit;
    TS2: TTabSheet;
    upMas: TUpdateSQL;
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
    YPZL_DS: TDataSource;
    YPZLS: TQuery;
    UpDet: TUpdateSQL;
    YPZLGrid: TDBGridEh;
    Label2: TLabel;
    Rate_DB: TDBEdit;
    Label7: TLabel;
    USERDATE_DB: TDBEdit;
    Label8: TLabel;
    PFC_DB: TDBEdit;
    Label9: TLabel;
    JiJie_DB: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    YPCC_DB: TDBEdit;
    Label23: TLabel;
    YPCCO_DB: TDBEdit;
    Label24: TLabel;
    USERID_DB: TDBEdit;
    Label25: TLabel;
    YPCCL_DB: TDBEdit;
    Label26: TLabel;
    Quantity_DB: TDBEdit;
    Label27: TLabel;
    Label10: TLabel;
    XieXing_DB: TDBEdit;
    XieMing_DB: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    Currency_DB: TDBEdit;
    KFRQ_DB: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    FINDATE_DB: TDBEdit;
    KFLX2_DB: TDBEdit;
    Label19: TLabel;
    DevType_DB: TDBEdit;
    Label28: TLabel;
    Label22: TLabel;
    DBEdit2: TDBEdit;
    Label29: TLabel;
    DBEdit3: TDBEdit;
    Label30: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label31: TLabel;
    YPZLSGrid: TDBGridEh;
    Panel2: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    YPZLSYPDH: TStringField;
    YPZLSxh: TStringField;
    YPZLSBWBH: TStringField;
    YPZLSCLBH: TStringField;
    YPZLSBWLB: TStringField;
    YPZLSCSBH: TStringField;
    YPZLSloss: TFloatField;
    YPZLSCLSL: TFloatField;
    YPZLSCLDJ: TFloatField;
    YPZLSCurrency: TStringField;
    YPZLSRate: TFloatField;
    YPZLSBWMC: TStringField;
    YPZLSCLMC: TStringField;
    YPZLSdwbh: TStringField;
    YPZLSzsjc: TStringField;
    YPZLSclzmlb: TStringField;
    YPZLStyjh: TStringField;
    YPZLSJGZWSM: TStringField;
    YPZLSJGYWSM: TStringField;
    YPZLSzsywjc: TStringField;
    YPZLSywpm: TStringField;
    YPZLScqdh: TStringField;
    YPZLS_DS: TDataSource;
    DBEdit8: TDBEdit;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    YPDHEdit: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Label5: TLabel;
    ArticleEdit: TEdit;
    Label34: TLabel;
    XieXingEdit: TEdit;
    Label36: TLabel;
    SheHaoEdit: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    JiJieEdit: TEdit;
    Label39: TLabel;
    XieMingEdit: TEdit;
    TempQry: TQuery;
    YPZLYN: TStringField;
    XieXingQry: TSpeedButton;
    StageQry: TSpeedButton;
    CurrencyQry: TSpeedButton;
    YPZLSYN: TStringField;
    PopupMenu: TPopupMenu;
    CopySampleOrder2: TMenuItem;
    TS3: TTabSheet;
    RemarkPanel: TPanel;
    BE2: TBitBtn;
    BE3: TBitBtn;
    BE4: TBitBtn;
    BE5: TBitBtn;
    BE6: TBitBtn;
    YPZLS2Grid: TDBGridEh;
    YPZLS2: TQuery;
    UpMemo: TUpdateSQL;
    YPZLS2_DS: TDataSource;
    YPZLS2ypdh: TStringField;
    YPZLS2LineNum: TStringField;
    YPZLS2Remark: TStringField;
    YPZLS2YN: TStringField;
    DelCK: TCheckBox;
    Label17: TLabel;
    Label18: TLabel;
    BBT5: TBitBtn;
    YPZLSSamplePurchaser: TStringField;
    Label40: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    Label41: TLabel;
    DevCodeEdit: TEdit;
    rr: TStringField;
    BBT6: TBitBtn;
    TWQuery: TADOQuery;
    ERPQuery: TADOQuery;
    YPZLSROWID: TFloatField;
    YPZLSzwsm: TStringField;
    YPZLSywsm: TStringField;
    DateCK: TCheckBox;
    YPZLSUserID: TStringField;
    YPZLSUserDate: TDateTimeField;
    Label42: TLabel;
    Label43: TLabel;
    CopyAllSampleOrder1: TMenuItem;
    YPZLBWBH: TIntegerField;
    KFJDEdit: TComboBox;
    DevTypeEdit: TComboBox;
    Label44: TLabel;
    YPZLDROPPED: TBooleanField;
    DroppedCK: TComboBox;
    Label45: TLabel;
    YPZLSXH1: TIntegerField;
    SaveDialog1: TSaveDialog;
    BB8: TBitBtn;
    YPZLUserName: TStringField;
    YPZLMH: TStringField;
    YPZLLH: TStringField;
    YPZLBH: TStringField;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label51: TLabel;
    DBEdit15: TDBEdit;
    YPZLFD_CHECK: TBooleanField;
    TS4: TTabSheet;
    FD_CHECK_DS: TDataSource;
    FD_CHECK: TQuery;
    UpCheck: TUpdateSQL;
    checkPanel: TPanel;
    FD_CHECKypdh: TStringField;
    FD_CHECKfd_check: TBooleanField;
    BF4: TBitBtn;
    BF5: TBitBtn;
    BF6: TBitBtn;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    CHECKOK: TComboBox;
    Button2: TButton;
    BF1: TBitBtn;
    Label53: TLabel;
    Label54: TLabel;
    YPZLSubType: TStringField;
    DBEdit13: TDBEdit;
    subtypecbx: TComboBox;
    subtypechose: TComboBox;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    YPZLPUR_RECIEVE: TBooleanField;
    YPZLrecieveDate: TDateTimeField;
    YPZLDelDate: TDateTimeField;
    ReCheck: TCheckBox;
    Panel4: TPanel;
    UserIDEdit: TEdit;
    BitBtn2: TBitBtn;
    YPZLSRemark: TStringField;
    YPZLre_check: TBooleanField;
    YPZLrecheckdate: TDateTimeField;
    YPZLywsm_1: TStringField;
    YPZLlogo: TStringField;
    Label55: TLabel;
    DBEdit16: TDBEdit;
    YPZLtotalQuantity: TFloatField;
    Label56: TLabel;
    TotalQuantity_DB: TDBEdit;
    DBEdit17: TDBEdit;
    transferPanel: TPanel;
    transferBtn: TButton;
    Label57: TLabel;
    NewSize: TEdit;
    ComboBox1: TComboBox;
    YPZLProductionLocation: TStringField;
    Label58: TLabel;
    DBEdit18: TDBEdit;
    YPZLypccm: TStringField;
    YPCCM_DB: TDBEdit;
    Label59: TLabel;
    Show1: TMenuItem;
    btCopy: TBitBtn;
    ComboBox2: TComboBox;
    Label60: TLabel;
    DBEdit19: TDBEdit;
    YPZLEngName: TStringField;
    DBGridEh2: TDBGridEh;
    FD_Check_time_DS: TDataSource;
    FD_Check_time: TQuery;
    FD_Check_timeypdh: TStringField;
    FD_Check_timeID: TStringField;
    FD_Check_timeCheck_Time: TDateTimeField;
    FD_Check_timerecieveid: TStringField;
    FD_Check_timerecievedate: TDateTimeField;
    FD_Check_timeremark: TStringField;
    FD_Check_timerecheckID: TStringField;
    FD_Check_timerecheckDate: TDateTimeField;
    FD_Check_time_CK: TCheckBox;
    YPZLBuildDate: TDateTimeField;
    btTracking: TBitBtn;
    MemoMaterial1: TMenuItem;
    TS5: TTabSheet;
    DBGridEh3: TDBGridEh;
    YPZLS0_DS: TDataSource;
    YPZLS0: TQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField2: TFloatField;
    StringField8: TStringField;
    StringField10: TStringField;
    StringField17: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    YPZLSCosting_Proportion: TFloatField;
    YPZLSCosting_CLSL: TFloatField;
    Adjust: TRadioGroup;
    YPZLChemical: TStringField;
    YPZLSJHDH: TStringField;
    COPYUSAGEPART1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure YPZLGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure XieXingQryClick(Sender: TObject);
    procedure StageQryClick(Sender: TObject);
    procedure CurrencyQryClick(Sender: TObject);
    procedure YPZLGridEditButtonClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure YPZLSAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure YPZLSGridEditButtonClick(Sender: TObject);
    procedure YPZLSGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure YPZLSGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YPZLSCLBHSetText(Sender: TField; const Text: String);
    procedure YPZLSBWBHSetText(Sender: TField; const Text: String);
    procedure YPZLSCSBHSetText(Sender: TField; const Text: String);
    procedure CopySampleOrder2Click(Sender: TObject);
    procedure YPZLGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BB7Click(Sender: TObject);
    procedure BE2Click(Sender: TObject);
    procedure BE3Click(Sender: TObject);
    procedure BE4Click(Sender: TObject);
    procedure YPZLS2AfterOpen(DataSet: TDataSet);
    procedure BE5Click(Sender: TObject);
    procedure YPZLS2GridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BE6Click(Sender: TObject);
    procedure YPZLS2GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BDT6Click(Sender: TObject);
    procedure YPZLSAfterInsert(DataSet: TDataSet);
    procedure YPZLGridDblClick(Sender: TObject);
    procedure BBT5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure YPZLAfterInsert(DataSet: TDataSet);
    procedure YPZLS2AfterInsert(DataSet: TDataSet);
    procedure YPZLAfterOpen(DataSet: TDataSet);
    procedure BBT6Click(Sender: TObject);
    procedure YPZLSGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CopyAllSampleOrder1Click(Sender: TObject);
    procedure YPZLGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB8Click(Sender: TObject);
    procedure BF4Click(Sender: TObject);
    procedure BF5Click(Sender: TObject);
    procedure BF6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BF1Click(Sender: TObject);
    procedure subtypecbxChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Quantity_DBEnter(Sender: TObject);
    procedure Quantity_DBExit(Sender: TObject);
    procedure DevTypeEditChange(Sender: TObject);
    procedure transferBtnClick(Sender: TObject);
    procedure NewSizeChange(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure btCopyClick(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure btTrackingClick(Sender: TObject);
    procedure MemoMaterial1Click(Sender: TObject);
    procedure COPYUSAGEPART1Click(Sender: TObject);
  private

    DelList:TStringlist;
    NDate:TDate;
    IsAllowUserID:Boolean;
    UserIDInline,UserIDIncubate:string;
    { Private declarations }
    AppDir:String;

    procedure SampleOrderInitPickList();
    procedure ExportSampleOrder();
    procedure PageChange();
    procedure GetTWSampleBOMData();//同步更新 A2A
    procedure ListNoSetPurchaser();
    procedure ERPQueryGetConnection();
    procedure ReadIni();

  public
    //預設樣品單開頭編碼&廠區
    YPZL_YPDH:array of string;
    YPZL_PFC:string;
    //
    Copy_LKT_YPDHStr:string;
    sizetransfer:integer;
    procedure CopySampleOrder(OrgYPDH:string;KFJD:string;Pairs:string;UserID:string);
    { Public declarations }
  end;

var
  SampleOrder: TSampleOrder;

implementation
  uses main1,SampleOrder_Article1, SampleOrder_Stage1, SampleOrder_Curency1,
       SampleOrder_Mat1, SampleOrder_Part1, SampleOrder_Supplier1,SampleMaterial_CombinatedDev1
       ,TransferSRStage1,SampleException1, SampleCopyChoice1, FunUnit, GlueCopy1,
       BOMVN_copy1, TrackingUpdateList1, Memo_Material1, UsageCopy1;
{$R *.dfm}

procedure TSampleOrder.ReadIni();
var MyIni :Tinifile;
    AppDir: string;
    tmpUserIDEdit:TStringlist;
    index:integer;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDInline:=MyIni.ReadString('ERP','Develop_N22_UserIDInline','');
      if UserIDInline = '' then
        UserIDInline := '51180';
      UserIDIncubate:=MyIni.ReadString('ERP','Develop_N22_UserIDIncubate','');
      if UserIDIncubate = '' then
        UserIDIncubate := '51309';
    finally
      MyIni.Free;
    end;
  end;
end;



procedure TSampleOrder.ERPQueryGetConnection();
  var ini:TiniFile;
      DBIP,DBName,User,Pass,spassword,sline,tempstr,YPDHCodeList:string;
      i,j,ad:integer;
      tmpList:TStringlist;
begin
  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\ComName.ini');
    DBIP:=ini.ReadString('ERPServer','IP','192.168.23.9');                    
    DBName:=ini.ReadString('ERPServer','Database','LIY_ERP');
    User:=ini.ReadString('ERPServer','User','tyxuan');
    Pass:=ini.ReadString('ERPServer','Pass','3mdfn');
    //Dencrypt password
    sline:='';
    ad:=strtoint(copy(Pass,0,1)); //取得解密字元
    for i:=2 to (length(Pass)) do //解密迴圈
    begin
      tempstr:=copy(Pass,i,1);
      sline:=sline+chr(ord(tempstr[1])-ad);
    end;
    spassword:=sline;
    ERPQuery.ConnectionString:='Provider=SQLOLEDB.1;Password='+spassword+';Persist Security Info=True;User ID='+User+';Initial Catalog='+DBName+';Data Source='+DBIP;
    //
    YPDHCodeList:=ini.ReadString('ERP','DevelopN22_YPDH','LAI,BYI');
    tmpList:=funcObj.SplitString(YPDHCodeList,',');
    setlength(YPZL_YPDH,tmpList.Count*3);
    for i:=0 to tmpList.Count-1 do
    begin
      YPZL_YPDH[i*3]:=tmpList.Strings[i]+'V';
      YPZL_YPDH[i*3+1]:=tmpList.Strings[i]+'K';
      YPZL_YPDH[i*3+2]:=tmpList.Strings[i]+'T';
    end;
    tmpList.Free;
    YPZL_PFC:=ini.ReadString('ERP','DevelopN22_PFC','JNG');
    //
  Finally
    ini.Free;
  end;
end;
procedure TSampleOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DelList.Free;
  Action:=caFree;
end;

procedure TSampleOrder.FormDestroy(Sender: TObject);
begin
  SampleOrder:=nil;
end;

procedure TSampleOrder.Button1Click(Sender: TObject);
begin
  //
  if ((YPDHEdit.Text='') and (ArticleEdit.Text='') and (XieXingEdit.Text='') and (SheHaoEdit.Text='') and (KFJDEdit.Text='')
      and (JiJieEdit.Text='') and (DevCodeEdit.Text='') and (XieMingEdit.Text='') ) then
    DateCK.Checked:=true;
  with YPZL do
  begin
    Active:=false;
    SQL.Clear;
    //2021/08/09因速度太慢,先拿掉 BMODREC_DEV
    SQL.Add('Select ypzl.re_check,ypzl.recheckdate,ypzl.pur_recieve,ypzl.recieveDate,ypzl.fd_check,ypzl.DelDate,ypzl.YPDH,ypzl.XieXing,ypzl.SheHao,ypzl.Article,ypzl.KFJD,');
    SQL.Add('       ypzl.YPCC,ypzl.Rate,ypzl.Currency,ypzl.KFRQ,ypzl.SDRQ,ypzl.JHRQ,ypzl.Quantity,ypzl.PFC,ypzl.CFM,ypzl.FINDATE,ypzl.GSDH,ypzl.UserID,ypzl.UserDate,ypzl.UserID+''-''+BUsers.UserName as UserName ');
    SQL.Add('       ,ypzl.CGBH,ypzl.KFLX,ypzl.ypcco,ypzl.ypccm,ypzl.ypccl,ypzl.CGBH1');
    SQL.Add('       ,kfxxzl.XieMing ,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ,kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ');
    SQL.Add('       ,ypzl.FD,kfxxzl.DevType,kfxxzl.Category,YPZL.YN,(Select Count(XH) from YPZLS where YPZLS.YPDH=YPZL.YPDH) as BWBH,xxzlKF.DROPPED,ypzl.BH,ypzl.LH,ypzl.MH ');
    SQL.Add('       ,ypzl.ProductionLocation,ypzl.subtype,lbzls03.ywsm,ypzl.totalQuantity,kfxxzl.logo,BUsers.EngName,YPZL.BuildDate,  ');
    SQL.Add(' (case when  ypzl_w.ypdh is not null then ''Y'' ELSE ''N'' end) as chemical');
    SQL.Add(' FROM ypzl ypzl ');
    SQL.Add(' LEFT JOIN (SELECT distinct ypdh from YPZLS WHERE BWBH LIKE ''V%'' AND clbh LIKE ''W%'') ypzl_w ON ypzl_w.YPDH=YPZL.YPDH');
    SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
    SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
    SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
    SQL.Add('LEFT JOIN lbzls lbzls03 ON kfxxzl.xiegn = lbzls03.lbdh AND lbzls03.lb = ''03'' ');
    SQL.Add('LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao  ');
    SQL.Add('LEFT JOIN BUsers on BUsers.UserID=ypzl.UserID ');
    SQL.Add('where 1=1 ');
    if DateCK.Checked=true then
    begin
      sql.add('    and (YPZL.USERDATE>= '''+formatdatetime('yyyyMMdd',DTP1.Date)+''' and YPZL.USERDATE<= '''+formatdatetime('yyyyMMdd',DTP2.Date)+''' )');
    end;
    sql.Add('      and GSDH='''+main.Edit2.Text+'''  ');
    if YPDHEdit.Text<>'' then
      sql.Add('    and YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
      sql.Add('    and kfxxzl.Article like ''%'+ArticleEdit.Text+'%'' ');
    if XieXingEdit.Text<>'' then
      sql.Add('    and kfxxzl.XieXing like ''%'+XieXingEdit.Text+'%'' ');
    if SheHaoEdit.Text<>'' then
      sql.Add('    and kfxxzl.SheHao like ''%'+SheHaoEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
      sql.Add('    and YPZL.KFJD like ''%'+KFJDEdit.Text+'%'' ');
    if JiJieEdit.Text<>'' then
      sql.Add('    and kfxxzl.JiJie like ''%'+JiJieEdit.Text+'%'' ');
    if DevCodeEdit.Text<>'' then
      sql.Add('    and kfxxzl.DevCode like ''%'+DevCodeEdit.Text+'%'' ');
    if XieMingEdit.Text<>'' then
      sql.Add('    and kfxxzl.XieMing like ''%'+JiJieEdit.Text+'%'' ');
    if CHECKOK.Text<>'' then
      if CHECKOK.Text='OK' then
         sql.Add(' and YPZL.FD_CHECK = ''1'' ');
      if CHECKOK.Text='NO_OK' then
         sql.Add(' and (YPZL.FD_CHECK = ''0'' or YPZL.FD_CHECK is null )');
    if Check.Checked=true then
      sql.Add('    and YPZL.UserID='''+main.Edit1.Text+''' ');
    if DevTypeEdit.Text<>'' then
      sql.Add('    and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if subtypechose.Text<>'' then
      sql.Add('    and ypzl.subtype='''+subtypechose.Text+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('    and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('    and (xxzlKF.DROPPED=1) ');
    sql.Add('order by YPZL.USERDATE desc ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  YPZLS.Active:=true;
  YPZLS0.Active:=true;
  button2.click;
  YPZLS2.Active:=true;
  FD_CHECK.Active:=true;
  ToolPanel.Visible:=false;
  InfoPanel.Visible:=true;
  recheck.Checked:=true;
  //
  if ReadOnly=false then
  begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
  //
end;

procedure TSampleOrder.BB2Click(Sender: TObject);
begin
  with YPZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Last;
    Append;
    YPZL.FieldByName('YPDH').AsString:=YPZL_YPDH[0];
    YPZL.FieldByName('PFC').AsString:=YPZL_PFC;
    YPZL.FieldByName('Currency').AsString:='USD';
    YPZL.FieldByName('Rate').AsString:='1';
    YPZL.FieldByName('UserDate').AsString:=FormatDateTime('YYYYMMDD',NDate);
    YPZL.FieldByName('UserID').AsString:=main.Edit1.Text;
    YPDH_DB.Color:=clyellow;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  YPZLGrid.columns[3].ButtonStyle:=cbsEllipsis;
  YPZLGrid.columns[6].ButtonStyle:=cbsEllipsis;
  //
  XieXingQry.Visible:=true;
  StageQry.Visible:=true;
  CurrencyQry.Visible:=true;
  subtypecbx.Visible:=true;
  ComboBox2.Visible:=true;
  //
end;

procedure TSampleOrder.BB3Click(Sender: TObject);
begin
  if YPZLS2.RecordCount>0 then
  begin
    showmessage('Pls delete Memo first.');
    abort;
  end;
  if YPZLS.recordcount=0 then
  begin
    with YPZL do
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
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TSampleOrder.BB4Click(Sender: TObject);
begin
  //
  with YPZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  YPZLGrid.columns[3].ButtonStyle:=cbsEllipsis;
  YPZLGrid.columns[6].ButtonStyle:=cbsEllipsis;
  //
  XieXingQry.Visible:=true;
  StageQry.Visible:=true;
  CurrencyQry.Visible:=true;
  subtypecbx.Visible:=true;
  ComboBox2.Visible:=true;

end;

procedure TSampleOrder.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TSampleOrder.BB5Click(Sender: TObject);
  //20171129檢查複製LIAV 或 LAIK  編碼是否合法
  function Check_YPDH_Ruler(YPDH:string):boolean;
  var iRes:boolean;
  begin
    iRes:=true;
    if length(YPDH)<>4 then iRes:=false;
    if ((Copy(YPDH,4,1)<>'V') and (Copy(YPDH,4,1)<>'K') and (Copy(YPDH,4,1)<>'T')) then iRes:=false;
    result:=iRes;
  end;
var s1,s2,s3,s4,s5,s6,s7,s8,y,m,YPDH,OldShehao,OldXieXing,OldArticle,oldypcc,oldypcco,oldypccm,oldypccl,CopyYID:string;
    OldQty:real;
    i:integer;
begin
    //出貨鎖定，不得再開領料單
  if YPZL.FieldByName('YN').value='5' then
  begin
    showmessage('Already finished. Pls checked accont first.' );
    abort;
  end;
  //
  with TempQry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=Copy(fieldbyname('FY').asstring,3,2);
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    YPZLS.Active:=false;
    YPZL.first;
    for i:=1 to YPZL.RecordCount do
    begin
      case YPZL.updatestatus of
        usinserted:
        begin
          if ((YPZL.fieldbyname('YPDH').isnull) or (Check_YPDH_Ruler(YPZL.fieldbyname('YPDH').AsString)=false)) then
          begin
            YPZL.delete;
          end else
          begin
            with TempQry do    //計算領料單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('select YPDH from YPZL where YPDH like '''+YPDH_DB.Text+y+m+'%''');
              sql.add('order by YPDH');
              active:=true;
              if recordcount >0 then
              begin
                last;
                YPDH:=fieldbyname('YPDH').AsString;
                YPDH:=copy(YPDH,9,5);
                YPDH:=inttostr(strtoint(YPDH)+1);
                while length(YPDH)<5 do
                begin
                  YPDH:='0'+YPDH;
                end;
              end else
              begin
                YPDH:='00001';
              end;
              YPDH :=YPDH_DB.Text+y+m+YPDH;
              active:=false;
              sql.Clear;
            end;
            YPZL.edit;
            YPZL.fieldbyname('YPDH').Value:=YPDH;
            if length(main.Edit2.Text)<=3 then
              YPZL.FieldByName('GSDH').Value:=main.Edit2.Text
            else
              YPZL.FieldByName('GSDH').Value:='LAI';//VD3只能3碼長度
            YPZL.FieldByName('userID').Value:=main.edit1.text;
            YPZL.FieldByName('userdate').AsString:=FormatDateTime('YYYYMMDD',Ndate);
            YPZL.FieldByName('BuildDate').Value:=FormatDateTime('YYYY/MM/DD',Ndate);//202204 Kevin 加的
            YPZL.FieldByName('YN').Value:='1';
            upMas.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if YPZL.fieldbyname('YN').value='0'then
          begin
            //刪除紀錄
            with TempQry do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('+''''+'YPZL'+''''+','+''''+YPZL.fieldbyname('YPDH').Value+'''');
              sql.add(','+''''+YPZL.fieldbyname('ARTICLE').AsString+''''+','+''''+YPZL.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            upMas.apply(ukdelete);
          end else
          begin
            if  YPZL.FieldByName('userID').Value=main.Edit1.Text then
            begin
              YPZL.edit;
              if recheck.checked then
              begin
                YPZL.FieldByName('FD_check').Value:=0;
                YPZL.FieldByName('Pur_recieve').Value:=0;
                YPZL.FieldByName('RE_check').Value:=0;
              end;
              YPZL.FieldByName('userID').Value:=main.edit1.text;
              YPZL.FieldByName('userdate').AsString:=FormatDateTime('YYYYMMDD',Ndate);
              if  YPZL.FieldByName('Quantity').OldValue=NULL then OldQty:=0 else OldQty:=YPZL.FieldByName('Quantity').OldValue;
              if  YPZL.FieldByName('Shehao').OldValue=NULL then OldShehao:='' else OldShehao:=YPZL.FieldByName('Shehao').OldValue;
              if  YPZL.FieldByName('XieXing').OldValue=NULL then OldXieXing:='' else OldXieXing:=YPZL.FieldByName('XieXing').OldValue;
              if  YPZL.FieldByName('YPCC').OldValue=NULL then OldYPCC:='' else OldYPCC:=YPZL.FieldByName('YPCC').OldValue;
              if  YPZL.FieldByName('YPCCO').OldValue=NULL then OldYPCCO:='' else OldYPCCO:=YPZL.FieldByName('YPCCO').OldValue;
              if  YPZL.FieldByName('YPCCM').OldValue=NULL then OldYPCCM:='' else OldYPCCM:=YPZL.FieldByName('YPCCM').OldValue;
              if  YPZL.FieldByName('YPCCL').OldValue=NULL then OldYPCCL:='' else OldYPCCL:=YPZL.FieldByName('YPCCL').OldValue;
              if  YPZL.FieldByName('Article').OldValue=NULL  then  OldArticle:='' else  OldArticle:=YPZL.FieldByName('Article').OldValue;
              if ((YPZL.FieldByName('Article').AsString<>YPZL.FieldByName('Article').OldValue)or(YPZL.FieldByName('XieXing').AsString<>OldXieXing)or(YPZL.FieldByName('Shehao').AsString<>OldShehao)or(YPZL.FieldByName('Quantity').Value<>OldQty)
                  or(YPZL.FieldByName('YPCC').AsString<>OldYPCC)or(YPZL.FieldByName('YPCCO').AsString<>OldYPCCO)or(YPZL.FieldByName('YPCCM').AsString<>OldYPCCM)or(YPZL.FieldByName('YPCCL').AsString<>OldYPCCL))then
              begin
                with TempQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BModRec_Dev ');
                  sql.add('(TableName ,TNO,ARTICLE,XieXing,Shehao,Pairs,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'YPZL'+''''+','+''''+YPZL.fieldbyname('YPDH').value+'''');
                  sql.add(','+''''+OldArticle+'***'+YPZL.fieldbyname('ARTICLE').AsString+''''+','+''''+OldXieXing+'***'+YPZL.fieldbyname('XieXing').AsString+''''+',') ;
                  sql.Add(''''+OldShehao+'***'+YPZL.fieldbyname('Shehao').AsString+''''+','+''''+floattostr(OldQty)+'***'+formatfloat('#,##0.#',YPZL.fieldbyname('Quantity').AsFloat)+''''+',');
                  sql.add(''''+YPZL.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                s1 := StringReplace(OldYPCCO, '''', '''''', [rfReplaceAll]);
                s2 := StringReplace(YPZL.fieldbyname('YPCCO').AsString, '''', '''''', [rfReplaceAll]);
                s3 := StringReplace(OLDYPCC, '''', '''''', [rfReplaceAll]);
                s4 := StringReplace(YPZL.fieldbyname('YPCC').AsString, '''', '''''', [rfReplaceAll]);
                s5 := StringReplace(OLDYPCCL, '''', '''''', [rfReplaceAll]);
                s6 := StringReplace(YPZL.fieldbyname('YPCCL').AsString, '''', '''''', [rfReplaceAll]);
                s7 := StringReplace(OLDYPCCM, '''', '''''', [rfReplaceAll]);
                s8 := StringReplace(YPZL.fieldbyname('YPCCM').AsString, '''', '''''', [rfReplaceAll]);
                with TempQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('insert into YPZL_log');
                  sql.Add('(YPDH,oldQuantity,Quantity,OLDYPCC,YPCC,OLDYPCCO,YPCCO,OLDYPCCL,YPCCL,OldYPCCM,YPCCM,UserID,UserDate)');
                  sql.Add('values ('+''''+YPZL.fieldbyname('YPDH').value+''''+',');
                  sql.Add(''''+floattostr(OldQty)+''''+','+''''+YPZL.fieldbyname('Quantity').AsString+''''+',');
                  sql.Add(''''+S3+''''+','+''''+S4+''''+',');
                  sql.Add(''''+S1+''''+','+''''+S2+''''+',');
                  sql.Add(''''+S5+''''+','+''''+S6+''''+',');
                  sql.Add(''''+S7+''''+','+''''+S8+''''+',');
                  sql.Add(''''+main.Edit1.Text+''''+',getdate())');
                  funcObj.WriteErrorLog(sql.Text);
                  execsql;
                  active:=false;
                end;
              end;
              upMas.apply(ukmodify);
            end else
            begin
              showmessage('It is not yours, can not modify.');
            end;
          end;
        end;
      end;
      YPZL.next;
    end;//for
  YPZL.active:=false;
  YPZL.cachedupdates:=false;
  YPZL.requestlive:=false;
  YPZL.active:=true;
  YPZLS.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  button2.Click;

  //
  YPZLGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLGrid.columns[6].ButtonStyle:=cbsnone;  
  XieXingQry.Visible:=false;
  StageQry.Visible:=false;
  CurrencyQry.Visible:=false;
  subtypecbx.Visible:=false;
  ComboBox2.Visible:=false;
  YPDH_DB.Color:=clwindow;  
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TSampleOrder.YPZLGridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if ((YPZL.FieldByName('Article').AsString<>'') and (YPZL.FieldByName('XieXing').AsString='')) then
  begin
    YPZLGrid.canvas.font.color:=clBlue;
  end;
  
  if YPZL.FieldByName('YN').value='0' then
  begin
    YPZLGrid.canvas.font.color:=clred;
  end;
  if length(YPZL.FieldByName('YPDH').AsString)<11 then
  begin
    YPZLGrid.canvas.font.color:=clGreen;
  end;

end;

procedure TSampleOrder.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DelList:=TStringlist.Create;//
  ReadIni();
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
      Next;
    end;
    sql.Clear;
  end;
  //
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
    YPZLGrid.PopupMenu:=PopupMenu;
    YPZLSGrid.PopupMenu:=PopupMenu1;
  end;
  Button2.Click;
  ERPQueryGetConnection();//20200601
end;

procedure TSampleOrder.BB6Click(Sender: TObject);
begin
  YPZL.active:=false;
  YPZL.cachedupdates:=false;
  YPZL.requestlive:=false;
  YPZL.active:=true;
  YPZLS.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
  YPZLGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLGrid.columns[6].ButtonStyle:=cbsnone;
  XieXingQry.Visible:=false;
  StageQry.Visible:=false;
  CurrencyQry.Visible:=false;
  subtypecbx.Visible:=false;
  ComboBox2.Visible:=false;
  YPDH_DB.Color:=clwindow;
end;

procedure TSampleOrder.XieXingQryClick(Sender: TObject);
begin
  SampleOrder_Article:=TSampleOrder_Article.Create(self);
  SampleOrder_Article.ShowModal();
  SampleOrder_Article.Free;
end;

procedure TSampleOrder.StageQryClick(Sender: TObject);
begin
  SampleOrder_Stage:=TSampleOrder_Stage.Create(self);
  SampleOrder_Stage.ShowModal();
  SampleOrder_Stage.Free;
end;

procedure TSampleOrder.CurrencyQryClick(Sender: TObject);
begin
  SampleOrder_Curency:=TSampleOrder_Curency.Create(self);
  SampleOrder_Curency.ShowModal();
  SampleOrder_Curency.Free;
end;

procedure TSampleOrder.YPZLGridEditButtonClick(Sender: TObject);
begin
  with YPZLGrid do
  begin
    if Selectedfield.fieldname='XieXing' then XieXingQry.Click;
    if Selectedfield.fieldname='KFJD' then StageQry.Click;
  end;
end;

procedure TSampleOrder.PC1Change(Sender: TObject);
begin
  PageChange();
  Button2.Click;

end;

procedure TSampleOrder.YPZLSAfterOpen(DataSet: TDataSet);
begin
  DelList.Clear;
  if ReadOnly=false then
  begin
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
  end;

end;

procedure TSampleOrder.BD2Click(Sender: TObject);
begin
  if YPZL.fieldbyname('USERID').value=main.edit1.Text then
  begin
    with YPZLS do
    begin
      requestlive:=true;
      cachedupdates:=true;
      Last;
      Append;
      FieldByName('XH').Value:='000';
      FieldByName('Loss').Value:=0;
      FieldByName('CLSL').Value:=0;
      FieldByName('Rate').Value:=0;
      FieldByName('CLDJ').Value:=0;
    end;
    BD5.Enabled:=true;
    BD6.Enabled:=true;
    btCopy.Enabled:=true;
    YPZLSGrid.columns[3].ButtonStyle:=cbsEllipsis;
    YPZLSGrid.columns[5].ButtonStyle:=cbsEllipsis;
    YPZLSGrid.columns[12].ButtonStyle:=cbsEllipsis;
  end else
  begin
    showmessage('It is not yours,can not insert.');
  end;
end;

procedure TSampleOrder.BD3Click(Sender: TObject);
begin

  if YPZL.fieldbyname('USERID').value=main.edit1.Text then
  begin
    YPZLS.requestlive:=true;
    YPZLS.cachedupdates:=true;
    if DelCK.Checked=false then //刪除顯示保留原本操作
    begin
      DelList.Add(YPZLS.FieldByName('YPDH').AsString+';'+YPZLS.FieldByName('XH').AsString+';'+YPZLS.FieldByName('BWBH').AsString);
      if YPZLS.RecordCount>0 then
        YPZLS.delete;
    end else
    begin
      YPZLS.Edit;
      YPZLS.fieldbyname('YN').Value:='0';
    end;
    BD5.Enabled:=true;
    BD6.Enabled:=true;
  end else
  begin
    showmessage('It is not yours,can not delete.');
  end;
end;

procedure TSampleOrder.BD4Click(Sender: TObject);
begin

  //外幹Naty,越籍Jully組長帳號修改
  if ((YPZL.fieldbyname('USERID').AsString=main.edit1.Text) or (main.edit1.Text='40895') or (main.edit1.Text='51024') or (main.edit1.Text='41190')) then
  begin
    with YPZLS do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    with YPZL do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    BD5.Enabled:=true;
    BD6.Enabled:=true;
    btCopy.Enabled:=true;
    YPZLSGrid.columns[3].ButtonStyle:=cbsEllipsis;
    YPZLSGrid.columns[5].ButtonStyle:=cbsEllipsis;
    YPZLSGrid.columns[12].ButtonStyle:=cbsEllipsis;
  end else
  begin
     showmessage('It is not yours,can not modify.');
  end;

  transferpanel.visible:=true;
end;
//  11 4
procedure TSampleOrder.SampleOrderInitPickList();
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

procedure TSampleOrder.YPZLSGridEditButtonClick(Sender: TObject);
begin
  with YPZLSGrid do
  begin
    if Selectedfield.fieldname='BWBH' then
    begin
     if SampleOrder_Part=nil then
     begin
       SampleOrder_Part:=TSampleOrder_Part.Create(self);
       SampleOrder_Part.bwdhEdit.Text:=YPZLS.FieldByName('BWBH').AsString;
       SampleOrder_Part.Button1.Click;
       SampleOrder_Part.Show;
       SampleOrder_Part.bwdhEdit.Text:='';
     end else
     begin
       SampleOrder_Part.bwdhEdit.Text:=YPZLS.FieldByName('BWBH').AsString;
       SampleOrder_Part.Button1.Click;
       SampleOrder_Part.Show;
       SampleOrder_Part.bwdhEdit.Text:='';
     end;
    end;
    if Selectedfield.fieldname='CLBH' then
    begin
     if SampleOrder_Mat=nil then
     begin
       SampleOrder_Mat:=TSampleOrder_Mat.Create(self);
       SampleOrder_Mat.YWPMEdit.Text:=YPZLS.FieldByName('YWPM').AsString;
       SampleOrder_Mat.Show;
     end else
     begin
       SampleOrder_Mat.YWPMEdit.Text:=YPZLS.FieldByName('YWPM').AsString;
       SampleOrder_Mat.Show;
     end;
    end;
    if Selectedfield.fieldname='CSBH' then
    begin
     if SampleOrder_Supplier=nil then
     begin
       SampleOrder_Supplier:=TSampleOrder_Supplier.Create(self);
       SampleOrder_Supplier.zsdhEdit.Text:=YPZLS.FieldByName('CSBH').AsString;
       SampleOrder_Supplier.Button1.Click;
       SampleOrder_Supplier.Show;
       SampleOrder_Supplier.zsdhEdit.Text:='';
     end else
     begin
       SampleOrder_Supplier.zsdhEdit.Text:=YPZLS.FieldByName('CSBH').AsString;
       SampleOrder_Supplier.Button1.Click;     
       SampleOrder_Supplier.Show;
       SampleOrder_Supplier.zsdhEdit.Text:='';
     end;
    end;
  end;
   
end;

procedure TSampleOrder.YPZLSGridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if Copy(YPZLS.FieldByName('CLBH').AsString,1,3)='V90' then
  begin
    YPZLSGrid.canvas.font.color:=clBlue;
  end;

  if YPZLS.FieldByName('YN').value='0' then
  begin
    YPZLSGrid.canvas.font.color:=clred;
  end;
  if YPZLS.FieldByName('XH').AsString='000' then
  begin
    YPZLSGrid.canvas.font.color:=clGreen;
  end;
  if YPZLS.FieldByName('clzmlb').AsString='Y' then
  begin
    YPZLSGrid.canvas.Font.Style:=[fsBold];
  end;
end;

procedure TSampleOrder.BD5Click(Sender: TObject);
var i:integer;
    XH,OldCLBH,OldCSBH,oldBwbh:string;
    tmpList:TStringlist;
    OldCLSL:real;
begin
    //出貨鎖定，不得再開領料單
  if YPZL.FieldByName('YN').value='5' then
  begin
    showmessage('Already finished. Pls checked accont first.' );
    abort;
  end;
  //先刪除隱藏Delete
  for i:=0 to DelList.Count-1 do
  begin
    tmpList:=FuncObj.SplitString(DelList[i],';');
    if tmpList.Count=3 then
    begin
      //刪除紀錄
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.add('insert into BDelRec ');
        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
        sql.add('values ('+''''+'YPZLS'+''''+','+''''+YPZL.fieldbyname('YPDH').AsString+''''+',');
        sql.Add(''''+tmpList.Strings[2]+''''+',') ;
        sql.add(''''+YPZL.fieldbyname('USERID').Value+''''+',');
        sql.add(''''+main.Edit1.Text+''''+',getdate())');
        execsql;
        active:=false;
      end;
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.add('Delete YPZLS where ');
        sql.Add('YPDH='''+tmpList.Strings[0]+''' and XH='''+tmpList.Strings[1]+''' and BWBH='''+tmpList.Strings[2]+''' ');
        execsql;
        active:=false;
      end;
    end;
    tmpList.Free;
  end;
  //
  YPZLS.first;
  for i:=1 to YPZLS.RecordCount do
  begin
    if YPZLS.FieldByName('Costing_Proportion').Value <> NULL then begin
      YPZLS.Edit;
      YPZLS.FieldByName('Costing_CLSL').Value := (100 + YPZLS.FieldByName('Costing_Proportion').Value)/100 * YPZLS.FieldByName('CLSL').Value;
    end;
    case YPZLS.updatestatus of
      usinserted:
      begin
        if ( (trim(YPZLS.FieldByName('XH').AsString)='') or (trim(YPZLS.FieldByName('BWBH').AsString)='') ) then
        begin
          YPZLS.Delete;
        end else
        begin
         //使用者沒有輸入
          if YPZLS.FieldByName('XH').AsString='000' then
          begin
            with TempQry do    //計算領料單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('select Max(XH) as XH from YPZLS where YPDH='''+YPZL.FieldByName('YPDH').AsString+''' ');
              active:=true;
              if fieldbyname('XH').AsString <> '' then
              begin
                last;
                XH:=fieldbyname('XH').AsString;
                XH:=Format('%.3d',[strtoint(XH)+5]);
              end else
              begin
                XH:='005';
              end;
              active:=false;
            end;
          end else
          begin
            XH:=YPZLS.FieldByName('XH').AsString;
          end;
          //
          YPZLS.edit;
          YPZLS.fieldbyname('YPDH').Value:=YPZL.FieldByName('YPDH').AsString;
          YPZLS.fieldbyname('XH').Value:=XH;
          YPZLS.FieldByName('userID').Value:=main.edit1.text;
          YPZLS.FieldByName('userdate').Value:=Date();
          //檢查部位是否存在
          with TempQry do    //計算領料單流水號
          begin
            active:=false;
            sql.Clear;
            sql.Add('select YPDH from YPZLS where YPDH='''+YPZL.FieldByName('YPDH').AsString+'''  and BWBH='''+YPZLS.FieldByName('BWBH').AsString+''' ');
            //funcobj.WriteErrorLog(sql.Text);
            active:=true;
          end;
          if TempQry.RecordCount=0 then
          begin
            if recheck.checked then
            begin
              if sizetransfer<>1 then //用量級放不紀錄
              begin
                with TempQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('insert into YPZL_log');
                  sql.Add('(YPDH,oldbwbh,BWBH,OldCLBH,CLBH,oldclsl,CLSL,oldcsbh,csbh,UserID,UserDate)');
                  sql.Add('values ('+''''+YPZL.fieldbyname('YPDH').value+''''+',');
                  sql.Add('''NEW'','+''''+YPZLS.fieldbyname('bwbh').AsString+''''+',');
                  sql.Add('''NEW'','+''''+YPZLS.fieldbyname('CLBH').AsString+''''+',');
                  sql.Add('''0'','+''''+YPZLS.fieldbyname('CLSL').AsString+''''+',');
                  sql.Add('''NEW'','+''''+YPZLS.fieldbyname('csbh').AsString+''''+',');
                  sql.Add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
              end;
              with TempQry do
               begin
                 active:=false;
                 sql.Clear;
                 sql.add('update ypzl set fd_check=''0'',pur_recieve=''0'' ,re_check=''0''');
                 sql.add('where ypdh='''+YPZL.FieldByName('YPDH').AsString+''' ');
                 execsql;
                 active:=false;
               end;
            end;
            upDet.apply(ukinsert)
          end else
          begin
            Showmessage('Part is exists!');
            exit;
          end;
          //
          TempQry.Active:=false;
        end;
      end;
      usmodified:
      begin
        if YPZLS.fieldbyname('YN').value='0'then
        begin
          with TempQry do
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into BDelRec ');
            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
            sql.add('values ('+''''+'YPZLS'+''''+','+''''+YPZL.fieldbyname('YPDH').AsString+''''+',');
            sql.Add(''''+YPZLS.fieldbyname('CLBH').AsString+'***'+YPZLS.fieldbyname('BWBH').AsString+''''+',') ;
            sql.add(''''+YPZL.fieldbyname('USERID').Value+''''+',');
            sql.add(''''+main.Edit1.Text+''''+',getdate())');
            execsql;
            active:=false;
          end;
          upDet.apply(ukdelete);
        end else
        begin
          if  YPZL.FieldByName('userID').Value=main.Edit1.Text then
          begin
            with TempQry do    //計算領料單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('Update YPZL Set USERID='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYYMMDD',NDate)+''' where YPDH='''+YPZL.FieldByName('YPDH').AsString+'''  ');
              execsql;
              if YPZLS.fieldbyname('CSBH').OldValue=null then OldCSBH:='' else OldCSBH:=YPZLS.fieldbyname('CSBH').OldValue;
              if YPZLS.fieldbyname('CLBH').OldValue=null then OldCLBH:='' else OldCLBH:=YPZLS.fieldbyname('CLBH').OldValue;
              if YPZLS.fieldbyname('BWBH').OldValue=null then Oldbwbh:='' else Oldbwbh:=YPZLS.fieldbyname('BWBH').OldValue;
              if  YPZLS.FieldByName('CLSL').OldValue=NULL then OldCLSL:=0 else OldCLSL:=YPZLS.FieldByName('CLSL').OldValue;
              if ((YPZLS.fieldbyname('BWBH').AsString<>YPZLS.fieldbyname('BWBH').OldValue)or(YPZLS.fieldbyname('CLBH').AsString<>OldCLBH)or(YPZLS.fieldbyname('CSBH').AsString<>OldCSBH)or(YPZLS.fieldbyname('CLSL').Value<>OldCLSL))then
              begin
                if sizetransfer<>1 then     //用量級放不紀錄
                begin
                  with TempQry do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BModRec_Dev ');
                    sql.add('(TableName ,TNO,BWBH,CLBH,CLSL,CSBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'YPZLS'+''''+','+''''+YPZL.fieldbyname('YPDH').value+'''');
                    sql.add(','+''''+YPZLS.fieldbyname('BWBH').OldValue+'***'+YPZLS.fieldbyname('BWBH').AsString+''''+','+''''+OldCLBH+'***'+YPZLS.fieldbyname('CLBH').AsString+''''+',') ;
                    sql.Add(''''+floattostr(OldCLSL)+'***'+formatfloat('#,##0.####',YPZLS.fieldbyname('CLSL').AsFloat)+''''+','+''''+OldCSBH+'***'+YPZLS.fieldbyname('CSBH').AsString+''''+',');
                    sql.add(''''+YPZL.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                end;
              end;
              //if YPZLS.FieldByName('CLBH').AsString<>OldCLBH then
              begin
                if sizetransfer<>1 then  //用量級放不紀錄
                begin
                  with TempQry do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add('insert into YPZL_log');
                    sql.Add('(YPDH,oldbwbh,BWBH,OldCLBH,CLBH,oldCLSL,CLSL,oldcsbh,csbh,UserID,UserDate)');
                    sql.Add('values ('+''''+YPZL.fieldbyname('YPDH').value+''''+',');
                    sql.Add(''''+Oldbwbh+''''+','+''''+YPZLS.fieldbyname('bwbh').AsString+''''+',');
                    sql.Add(''''+OldCLBH+''''+','+''''+YPZLS.fieldbyname('CLBH').AsString+''''+',');
                    sql.Add(''''+floattostr(oldCLSL)+''''+','+''''+YPZLS.fieldbyname('CLSL').AsString+''''+',');
                    sql.Add(''''+Oldcsbh+''''+','+''''+YPZLS.fieldbyname('csbh').AsString+''''+',');
                    sql.Add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    // memo1.text:=sql.text;
                    active:=false;
                  end;
                end;
              end;
            end;
            //
            YPZLS.edit;
            YPZLS.FieldByName('userID').Value:=main.edit1.text;
            YPZLS.FieldByName('userdate').Value:=Date();
            //BOM改部位YPZLS 的話 YPZL的CHECK也會改
            upDet.apply(ukmodify);
            if recheck.checked then
            begin
              YPZL.FieldByName('FD_check').Value:=0;
              YPZL.FieldByName('re_check').Value:=0;
              YPZL.FieldByName('Pur_recieve').Value:=0;
            end;
            upmas.apply(ukmodify);
          end else
          begin
            showmessage('It is not yours, can not modify.');
          end;
        end;
        //
      end;
    end;
    YPZLS.Next;
  end;
  //
  YPZLS.active:=false;
  YPZLS.cachedupdates:=false;
  YPZLS.requestlive:=false;
  YPZLS.Active:=true;
  BD5.enabled:=false;
  BD6.enabled:=false;
  btCopy.Enabled:=false;
  button2.Click;
  //
  YPZLSGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[5].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[12].ButtonStyle:=cbsnone;
  newsize.text:='';
  transferpanel.visible:=false;
  transferBtn.enabled:=false;
  sizetransfer:=0;  //用量級放不紀錄
end;

procedure TSampleOrder.BD6Click(Sender: TObject);
begin
  YPZLS.active:=false;
  YPZLS.cachedupdates:=false;
  YPZLS.requestlive:=false;
  YPZLS.Active:=true;
  BD5.enabled:=false;
  BD6.enabled:=false;
  btCopy.Enabled:=false;
  //
  YPZLSGrid.columns[3].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[5].ButtonStyle:=cbsnone;
  YPZLSGrid.columns[12].ButtonStyle:=cbsnone;


  newsize.text:='';  
  transferpanel.visible:=false;
  transferBtn.enabled:=false;
  sizetransfer:=0;    //用量級放不紀錄
end;

procedure TSampleOrder.YPZLSGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PC1.ActivePageIndex=1 then
  begin
    //if Key=45 then BD2.Click; //Insert
    if Key=46 then BD3.Click; //Delete
  end;
end;
//

procedure TSampleOrder.YPZLSCLBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLZL.CLDH,CLZL.ywpm,CLZL.dwbh,CLZL.CQDH,CLZL.ZSDH,ZSZL.ZSYWJC from CLZL left join zszl on zszl.zsdh=clzl.zsdh where CLDH='''+Sender.AsString+''' and ((Substring(CLDH,1,3)=''V90'') or CLZL.YN=1 ) ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('ywpm').Value:=FieldByName('ywpm').Value;
      YPZLS.FieldByName('CQDH').Value:=FieldByName('CQDH').Value;
      YPZLS.FieldByName('dwbh').Value:=FieldByName('dwbh').Value;
      //20101017 直接替換成預設材料參考廠商
      if FieldByName('zsdh').AsString<>'' then
      begin
        YPZLS.FieldByName('CSBH').Value:=FieldByName('zsdh').Value;
        YPZLS.FieldByName('ZSYWJC').Value:=FieldByName('ZSYWJC').Value;
      end;
      YPZLS.Post;
    end;
    Active:=false;
  end;
end;

procedure TSampleOrder.YPZLSBWBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select bwdh,zwsm,ywsm,bwlb from bwzl where bwdh='''+Sender.AsString+'''  ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('BWMCNM').Value:=FieldByName('ywsm').AsString+'-'+FieldByName('zwsm').AsString;
      YPZLS.FieldByName('BWLB').Value:=FieldByName('BWLB').Value;
      YPZLS.Post;
    end;
    Active:=false;
  end;
end;

procedure TSampleOrder.YPZLSCSBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select zsdh,zsqm,ZSYWJC from ZSZL where zsdh<>'''' and ZSDH='''+Sender.AsString+''' and YN=1 ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('CSBH').Value:=FieldByName('zsdh').Value;
      YPZLS.FieldByName('ZSYWJC').Value:=FieldByName('ZSYWJC').Value;
      YPZLS.Post;
    end;
    TempQry.Active:=false;
  end;
end;

//複製樣品單
procedure TSampleOrder.CopySampleOrder(OrgYPDH:string;KFJD:string;Pairs:string;UserID:string);
var y,m,YPDH:string;
    KFJDValue,PairsValue,UserIDValue,CopyYID:string;
begin
   //
   with TempQry do          //取服務器的年月值
   begin
     active:=false;
     sql.Clear;
     sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
     active:=true;
     y:=Copy(fieldbyname('FY').asstring,3,2);
     m:=fieldbyname('FM').asstring;
     NDate:=fieldbyname('NDate').Value;
     active:=false;
   end;
   if length(m)<2 then m:='0'+m;
   //
   with TempQry do    //計算領料單流水號
   begin
     active:=false;
     sql.Clear;
     sql.Add('select YPDH from YPZL where YPDH like '''+OrgYPDH+y+m+'%''');
     sql.add('order by YPDH');
     active:=true;
     if recordcount >0 then
     begin
       last;
       YPDH:=fieldbyname('YPDH').AsString;
       YPDH:=copy(YPDH,9,5);
       YPDH:=inttostr(strtoint(YPDH)+1);
       while length(YPDH)<5 do
       begin
         YPDH:='0'+YPDH;
       end;
     end else
     begin
           YPDH:='00001';
     end;
     YPDH :=OrgYPDH+y+m+YPDH;
     active:=false;
     sql.Clear;
   end;
   //主檔
   if KFJD='' then KFJDValue:='KFJD' else KFJDValue:=''''+KFJD+''' as KFJD';
   if Pairs='' then PairsValue:='Quantity' else PairsValue:=''''+Pairs+''' as Quantity';
   if UserID='' then UserIDValue:='UserID' else UserIDValue:=''''+UserID+''' as UserID';
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Insert into YPZL (YPDH, XieXing, SheHao, ARTICLE, KFJD, YPCC, Rate, Currency, KFRQ, SDRQ, JHRQ, Quantity, PFC, CFM, FINDATE, GSDH, USERID, USERDATE, BuildDate, YN,');
     SQL.Add('                  CGBH, KFLX, YPCCO, YPCCL, CGBH1, MH, LH, BH, FD_CHECK, Subtype, PUR_RECIEVE, RE_CHECK, TotalQuantity, FD, ProductionLocation, YPCCM )');
     SQL.Add('Select '''+YPDH+''', XieXing, SheHao, ARTICLE ,'+KFJDValue+', YPCC, Rate, Currency, KFRQ, convert(varchar, getdate(), 112) , JHRQ, '+PairsValue+', PFC, CFM , FINDATE, '''+main.Edit2.Text+''', '+UserIDValue+', '''+FormatDateTime('YYYYMMDD',Date())+''',GetDate(), 1 , CGBH, KFLX, YPCCO ,YPCCL , CGBH1,MH,LH,BH,''0'' as FD_check,subtype,''0'' as pur_check,''0'' as re_check,totalQuantity,FD,ProductionLocation,YPCCM  from YPZL ');
     SQL.Add('where YPDH='''+YPZL.fieldByName('YPDH').AsString+''' ');
     ExecSQL;
   end;
   //明細
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Insert into YPZLS (YPDH, XH, BWBH, BWLB, CLBH, CSBH, LOSS, CLSL, CLDJ, Currency, Rate, Remark, JGZWSM, JGYWSM, UserID, UserDate, XH1, Costing_Proportion, Costing_CLSL)');
     SQL.Add('Select '''+YPDH+''', YPZLS.XH, YPZLS.BWBH, YPZLS.BWLB ,YPZLS.CLBH, YPZLS.CSBH, YPZLS.LOSS, YPZLS.CLSL, YPZLS.CLDJ, YPZLS.Currency, YPZLS.Rate, YPZLS.Remark, YPZLS.JGZWSM, YPZLS.JGYWSM,'+UserIDValue+', YPZLS.UserDate, YPZLS.XH1,');
     SQL.Add('case when CLZL.dwbh in (''PRS'',''SET'',''PCE'',''BOX'',''GRN'') then 0 else null end as Costing_Proportion,case when CLZL.dwbh in (''PRS'',''SET'',''PCE'',''BOX'',''GRN'') then YPZLS.CLSL else null end as Costing_CLSL from YPZLS ');
     SQL.Add('left join CLZL on YPZLS.CLBH = CLZL.cldh');
     SQL.Add('where YPZLS.YPDH='''+YPZL.fieldByName('YPDH').AsString+''' ');
     ExecSQL;
   end;
   //備忘
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Insert into YPZLS2 (ypdh, LineNum, Remark, NoteRQ, UserSign)');
     SQL.Add('Select '''+YPDH+''', LineNum, Remark, NoteRQ,UserSign from YPZLS2 ');
     SQL.Add('where YPDH='''+YPZL.fieldByName('YPDH').AsString+''' ');
     ExecSQL;
   end;
end;
//
procedure TSampleOrder.CopySampleOrder2Click(Sender: TObject);
begin
  //
  if YPZL.Active=true then
  begin
    SampleCopyChoice:=TSampleCopyChoice.Create(self);
    SampleCopyChoice.ShowModal();
    if Copy_LKT_YPDHStr<>'' then
    begin
      CopySampleOrder(SampleOrder.Copy_LKT_YPDHStr,'','',main.Edit1.Text);
      YPZL.Active:=false;
      YPZL.Active:=true;
      Showmessage('Successfully!');
    end;
  end;
  //
end;

procedure TSampleOrder.YPZLGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PC1.ActivePageIndex=0 then
  begin
    if Key=46 then BB3.Click; //Delete
  end;
end;

procedure TSampleOrder.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TSampleOrder.BE2Click(Sender: TObject);
begin
  with YPZLS2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Last;
    Append;
    FieldByName('LineNum').Value:='000';
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TSampleOrder.BE3Click(Sender: TObject);
begin
  //
  if YPZL.fieldbyname('USERID').value=main.edit1.Text then
  begin
    YPZLS2.requestlive:=true;
    YPZLS2.cachedupdates:=true;
    YPZLS2.Edit;
    YPZLS2.fieldbyname('YN').Value:='0';
  end else
  begin
    showmessage('It is not yours,can not delete.');
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TSampleOrder.BE4Click(Sender: TObject);
begin
  with YPZLS2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;  
end;

procedure TSampleOrder.YPZLS2AfterOpen(DataSet: TDataSet);
begin
  if ReadOnly=false then
  begin
    BE2.Enabled:=true;
    BE3.Enabled:=true;
    BE4.Enabled:=true;
  end;
end;

procedure TSampleOrder.BE5Click(Sender: TObject);
  var i:integer;
      LineNum:string;
begin
  //
  YPZLS2.First;
  for i:=1 to YPZLS2.RecordCount do
  begin
    case YPZLS2.updatestatus of
      usinserted:
      begin
         //使用者沒有輸入
        if YPZLS2.FieldByName('LineNum').AsString='000' then
        begin
          with TempQry do    //計算領料單流水號
          begin
            active:=false;
            sql.Clear;
            sql.Add('select Max(LineNum) as LineNum from YPZLS2 where YPDH='''+YPZL.FieldByName('YPDH').AsString+''' ');
            active:=true;
            if fieldbyname('LineNum').AsString <> '' then
            begin
              last;
              LineNum:=fieldbyname('LineNum').AsString;
              LineNum:=Format('%.3d',[strtoint(LineNum)+5]);
            end else
            begin
              LineNum:='005';
            end;
            active:=false;
          end;
        end else
        begin
          LineNum:=YPZLS2.FieldByName('LineNum').AsString;
        end;
          //
        YPZLS2.edit;
        YPZLS2.fieldbyname('YPDH').Value:=YPZL.FieldByName('YPDH').AsString;
        YPZLS2.fieldbyname('LineNum').Value:=LineNum;
          //檢查部位是否存在
        with TempQry do    //計算領料單流水號
        begin
          active:=false;
          sql.Clear;
          sql.Add('select YPDH from YPZLS2 where YPDH='''+YPZL.FieldByName('YPDH').AsString+''' and LineNum='''+YPZLS2.FieldByName('LineNum').AsString+''' ');
          active:=true;
        end;
         //
        if TempQry.RecordCount=0 then
        begin
          if YPZLS2.fieldbyname('Remark').AsString<>'' then
            upMemo.apply(ukinsert)
        end else
        begin
          Showmessage('XH is exists!');
          exit;
        end;
      end;
      usmodified:
      begin
        if YPZLS2.fieldbyname('YN').value='0' then
        begin
          with TempQry do
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into BDelRec ');
            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
            sql.add('values ('+''''+'YPZLS2'+''''+','+''''+YPZLS2.fieldbyname('YPDH').Value+'''');
            sql.add(','+''''+YPZLS2.fieldbyname('LineNum').AsString+'***'+YPZLS2.fieldbyname('Remark').AsString+''''+','+''''+YPZL.fieldbyname('USERID').Value+''''+',');
            sql.add(''''+main.Edit1.Text+''''+',getdate())');
            execsql;
            active:=false;
          end;
          upMemo.apply(ukdelete);
        end else
        begin
          if  YPZL.FieldByName('userID').Value=main.Edit1.Text then
          begin
            upMemo.apply(ukmodify);
          end else
          begin
            showmessage('It is not yours, can not modify.');
          end;
        end;
         //
      end;
    end;
    YPZLS2.Next;
  end;
  YPZLS2.active:=false;
  YPZLS2.cachedupdates:=false;
  YPZLS2.requestlive:=false;
  YPZLS2.Active:=true;
  BE5.enabled:=false;
  BE6.enabled:=false;
end;

procedure TSampleOrder.YPZLS2GridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if YPZLS2.FieldByName('YN').value='0' then
  begin
    YPZLS2Grid.canvas.font.color:=clred;
  end;
  if YPZLS2.FieldByName('LineNum').AsString='000' then
  begin
    YPZLS2Grid.canvas.font.color:=clBlue;
  end;
end;

procedure TSampleOrder.BE6Click(Sender: TObject);
begin
  //
  YPZLS2.active:=false;
  YPZLS2.cachedupdates:=false;
  YPZLS2.requestlive:=false;
  YPZLS2.Active:=true;
  BE5.enabled:=false;
  BE6.enabled:=false;
  //
end;

procedure TSampleOrder.YPZLS2GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PC1.ActivePageIndex=2 then
  begin
    if Key=45 then BE2.Click; //Delete
    if Key=46 then BE3.Click; //Delete
  end;
end;
//匯出 Excel
procedure TSampleOrder.ExportSampleOrder();
  var eclApp,WorkBook,picture,workRange,workSheet:olevariant;
      i,offset,sign:integer;
      SubPart:boolean;
      BeforeXH,FlowNum,signature:string;
      FlowID:integer;
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
        sign:=16;
        eclApp.ActiveSheet.Rows.Font.Size := 13;

        //內腰資訊
        //Select YPZL_S1.*  From YPZL_S1 YPZL_S1
        //WHERE YPDH = 'LAIS140700011'
        //抬頭資訊
        with TempQry do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('SELECT ypzl.* ,kfxxzl.XieMing ,ypzl.fd,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ');
          SQL.Add('      ,kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.zwsm ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ,kfxxzl.IMGName ,lbzls03.zwsm AS zwsm03 ,lbzls03.ywsm AS ywsm03 ,kfxxzl.DAOMH,BUsers.UserName,kfxxzl.logo,kfxxzl.MDMH ');
          SQL.Add('FROM ypzl  ');
          SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
          SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
          SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
          SQL.Add('LEFT JOIN lbzls lbzls03 ON kfxxzl.XieGN = lbzls03.lbdh AND lbzls03.lb = ''03'' ');
          SQL.Add('Left JOIN BUsers on BUsers.UserID=ypzl.UserID ');
          SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
          Active:=true;
        end;
          //抬頭
        eclApp.Cells(1,2):='SAMPLE ORDER';
        eclApp.Cells(2,1):=YPZL.FieldByName('YPDH').AsString+'('+YPZL.FieldByName('ProductionLocation').AsString+')';    //編號
        eclApp.Range['D2','E2'].Merge;
        eclApp.Range['D2','E2'].HorizontalAlignment := -4108; //水平置中
        eclApp.Cells(2,4):='SR:'+YPZL.FieldByName('DEVCODE').AsString; //
        eclApp.Range['F2','G2'].Merge;
        eclApp.Range['F2','G2'].HorizontalAlignment := -4108; //水平置中
        eclApp.Cells(2,6):='FD:'+YPZL.FieldByName('fd').AsString; //
        eclApp.Cells(2,17):='User:'+TempQry.FieldByName('UserName').AsString+'['+TempQry.FieldByName('UserID').AsString+']';
        eclApp.Cells(2,12):=FormatDateTime('YYYY/MM/DD',Date()); //日期
          //
        eclApp.Cells(4,4):=TempQry.FieldByName('KFJC').AsString;
        eclApp.Cells(4,7):=TempQry.FieldByName('JiJie').AsString+'('+TempQry.FieldByName('KFLX2').AsString+')';
        eclApp.Cells(4,9):=TempQry.FieldByName('MH').AsString;
        eclApp.Cells(5,4):=TempQry.FieldByName('Article').AsString;
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
        //  eclApp.Cells(10,7):=TempQry.FieldByName('FINDATE').AsString;
        eclApp.Cells(10,9):=TempQry.FieldByName('DAOMH').AsString;
          //
//          eclApp.Columns[2].ColumnWidth := 7;
//          eclApp.Columns[13].ColumnWidth := 9;
//          eclApp.Columns[14].ColumnWidth := 6;
//          eclApp.Columns[16].ColumnWidth := 10;
        TempQry.Active:=false;
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
            sign:=sign+RecordCount-1;
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
//                eclApp.ActiveSheet.Rows[Offset+i].RowHeight := 60;
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
            SQL.Add('      ,ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,clzl.tyjh ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ');
            SQL.Add('FROM ypzls ypzls ');
            SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
            SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
            SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            SQL.Add('ORDER BY YPZLS.YPDH , YPZLS.XH, YPZLS.XH1');
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
            sign:=sign+RecordCount-1;
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
//                eclApp.ActiveSheet.Rows[Offset+i].Font.Size := 16;
              eclApp.ActiveSheet.Rows[Offset+i].RowHeight := 32;
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
        if main.Edit1.Text='41190' then
        begin
          if ((copy(YPZL.FieldByName('YPDH').AsString,4,1)='K') or (copy(YPZL.FieldByName('YPDH').AsString,4,1)='V')) and ((DBEDIT15.text = 'INCUBATE') or (DBEDIT15.text = 'CTM')) then
          begin
            if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
              //CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\51180.bmp'),Pchar(AppDir+'Images\51180.bmp'),false);
              //CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\51309.bmp'),Pchar(AppDir+'Images\51309.bmp'),false);
               CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\' + UserIDIncubate + '.bmp'), Pchar(AppDir+'Images\' + UserIDIncubate + '.bmp'), false);
            {if FileExists(AppDir+'Images\51309.bmp') then
              signature:=AppDir+'Images\51309.bmp';}
              if FileExists(AppDir+'Images\' + UserIDIncubate + '.bmp') then
                signature:=AppDir+'Images\' + UserIDIncubate + '.bmp';

          end else if ((copy(YPZL.FieldByName('YPDH').AsString,4,1)='K') or (copy(YPZL.FieldByName('YPDH').AsString,4,1)='V')) and (DBEDIT15.text = 'INLINE') then
          begin
            if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
              CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\' + UserIDInline + '.bmp'), Pchar(AppDir+'Images\' + UserIDInline + '.bmp'), false);
            if FileExists(AppDir+'Images\' + UserIDInline + '.bmp') then
                signature:=AppDir+'Images\' + UserIDInline + '.bmp';

          end else if copy(YPZL.FieldByName('YPDH').AsString,4,1)='T' then
          begin
            if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
              CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\00123.bmp'),Pchar(AppDir+'Images\00123.bmp'),false);
            if FileExists(AppDir+'Images\00123.bmp') then
              signature:=AppDir+'Images\00123.bmp';
          end;
          if FileExists(signature)=true then
          begin
            workSheet := eclApp.WorkSheets[1];
            workRange :=eclApp.Range[eclApp.Cells.Item[sign,8],eclApp.Cells.item[sign, 8]]; //目?位置
            {picture := workSheet.pictures.Insert(signature);
            picture.left := workRange.left; //左
            picture.top := workRange.top +5; //高
            picture.width := workRange.width +20; //?度
            picture.height := workRange.height+15; //高度 }
            workSheet.Shapes.AddPicture(signature,false,true, workRange.left, workRange.top +5, workRange.width +20, workRange.height+15 );
            picture := Unassigned;
          end;
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('SELECT BUsers.UserName FROM BUsers ');
            SQL.Add('WHERE BUsers.UserID = '''+YPZL.FieldByName('USERID').AsString+''' ');
            Active:=true;
          end;
          eclApp.Cells(sign,11):='        '+YPZL.FieldByName('fd').AsString; //
          eclApp.Range[eclApp.Cells.Item[sign,16],eclApp.Cells.Item[sign,16]].HorizontalAlignment := -4131;
          eclApp.Cells(sign,16):=TempQry.FieldByName('UserName').AsString+'['+YPZL.FieldByName('USERID').AsString+']';
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
//
procedure TSampleOrder.BDT6Click(Sender: TObject);
begin
  ExportSampleOrder();
end;

procedure TSampleOrder.YPZLSAfterInsert(DataSet: TDataSet);
begin
  with YPZLS do
  begin
    FieldByName('XH').Value:='000';
    FieldByName('Loss').Value:=0;
    FieldByName('CLSL').Value:=0;
    FieldByName('Rate').Value:=0;
    FieldByName('CLDJ').Value:=0;
  end;
end;

procedure TSampleOrder.YPZLGridDblClick(Sender: TObject);
begin
  PC1.ActivePageIndex:=1;
  PageChange();
end;

procedure TSampleOrder.PageChange();
begin
  if PC1.ActivePageIndex=0 then
  begin
    MasPanel.Visible:=true;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=false;
    checkPanel.Visible:=false;
  end else if PC1.ActivePageIndex=1 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=true;
    RemarkPanel.Visible:=false;
    checkPanel.Visible:=false;
  end else if PC1.ActivePageIndex=2 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=true;
    checkPanel.Visible:=false;
  end else if PC1.ActivePageIndex=3 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=false;
    checkPanel.Visible:=true;
  end else if PC1.ActivePageIndex=4 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=false;
    checkPanel.Visible:=false;
  end;
  with FD_CHECK do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select ypdh,fd_check from YPzl where YPDH=:YPDH ');
    //memo2.text:=sql.text;
    active:=true;
  end;
end;
//20150321 功能很少使用
procedure TSampleOrder.ListNoSetPurchaser();
  var eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 500 YPZL.Article,YPZLS.CLBH,CLZL.YWPM, ZSZL.ZSDH,ZSZL.ZSYWJC from YPZLS ');
    SQL.Add('Left join YPZL on YPZL.YPDH=YPZLS.YPDH ');
    SQL.Add('Left join ZSZL on ZSZL.ZSDH=YPZLS.CSBH');
    SQL.Add('left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
    SQL.Add('where (ZSZL.SamplePurchaser is null or ZSZL.SamplePurchaser='''') ');
    if YPDHEdit.Text<>'' then
      sql.Add('    and YPZL.YPDH like ''%'+YPDHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
      sql.Add('    and YPZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    if Check.Checked=true then
      sql.Add('    and YPZL.UserID='''+main.Edit1.Text+''' ');
    sql.Add('group by YPZL.Article,YPZLS.CLBH,CLZL.YWPM, ZSZL.ZSDH,ZSZL.ZSYWJC ');
    Active:=true;
  end;
  if TempQry.RecordCount>0 then
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
      for   i:=0   to   TempQry.fieldcount-1   do
      begin
        eclApp.ActiveSheet.Columns[i+1].ColumnWidth := 20;
        eclApp.Cells(1,i+1):=TempQry.fields[i].FieldName;
      end;

      TempQry.First;
      j:=2;
      while   not   TempQry.Eof   do
      begin
        for   i:=0   to  TempQry.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=TempQry.Fields[i].Value;
        end;
        TempQry.Next;
        inc(j);
      end;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end else
  begin
    Showmessage('All material have purchaser');
  end;
  TempQry.Active:=false;
end;
//20150321 輸出SR list Excel
procedure TSampleOrder.BBT5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  YPZL.active  then
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
      eclapp.Cells.NumberFormatLocal:='@';
      for   i:=0   to   YPZL.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=YPZL.fields[i].FieldName;
      end;

      YPZL.First;
      j:=2;
      while   not   YPZL.Eof   do
      begin
        for   i:=0   to  YPZL.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=YPZL.Fields[i].Value;
        end;
        YPZL.Next;
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

procedure TSampleOrder.MenuItem1Click(Sender: TObject);
begin
  if YPZLS.FieldByName('clzmlb').AsString='Y' then
  begin
    SampleMaterial_CombinatedDev:=TSampleMaterial_CombinatedDev.Create(self);
    SampleMaterial_CombinatedDev.ShowModal();
    SampleMaterial_CombinatedDev.Free;
  end;
end;

procedure TSampleOrder.YPZLAfterInsert(DataSet: TDataSet);
begin
  with YPZL do
  begin
    FieldByName('YPDH').AsString:=YPZL_YPDH[0];
    FieldByName('PFC').AsString:=YPZL_PFC;
    FieldByName('Currency').AsString:='USD';
    FieldByName('Rate').AsString:='1';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYYMMDD',NDate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
  end;
end;

procedure TSampleOrder.YPZLS2AfterInsert(DataSet: TDataSet);
begin
  with YPZLS2 do
  begin
    FieldByName('LineNum').Value:='000';
  end;
end;

procedure TSampleOrder.YPZLAfterOpen(DataSet: TDataSet);
begin
  if ReadOnly=false then
  begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
end;
//材料同步台灣
procedure TSampleOrder.GetTWSampleBOMData();
  var i,j:integer;
      UpdateCount:integer;
      InsertCount:integer;
      IsUpdate:boolean;
begin
  //
  with TWQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from KFXXZL where UserDate>GetDate()-1 ');
    Active:=true;
  end;
  //
  TWQuery.First;
  InsertCount:=0;
  UpdateCount:=0;
  for i:=0 to TWQuery.RecordCount-1 do
  begin
    ERPQuery.Active:=false;
    ERPQuery.SQL.Clear;
    ERPQuery.SQL.Add('Select top 1 * from KFXXZL where XieXing='''+TWQuery.FieldByName('XieXing').AsString+''' and SheHao='''+TWQuery.FieldByName('SheHao').AsString+''' ');
    ERPQuery.Active:=true;
    if ERPQuery.RecordCount>0 then
    begin
      IsUpdate:=false;
      ERPQuery.Edit;
      For j:=2  to TWQuery.FieldCount-1 do
      begin
        if Trim(ERPQuery.Fields[j].AsString)<>Trim(TWQuery.Fields[j].AsString) then
        begin
          IsUpdate:=true;
        end;
          ERPQuery.Fields[j].Value:=TWQuery.Fields[j].Value
      end;
      if IsUpdate=true then
      begin
        funcObj.WriteErrorLog(datetimetostr(now)+' Update:'+ERPQuery.SQL.Text);
        ERPQuery.Post;
        Inc(UpdateCount);
      end;
    end else
    begin
      ERPQuery.Insert;
      For j:=0  to TWQuery.FieldCount-1 do
      begin
        ERPQuery.Fields[j].Value:=TWQuery.Fields[j].Value
      end;
      funcObj.WriteErrorLog(datetimetostr(now)+' Insert:'+ERPQuery.SQL.Text);
      ERPQuery.Post;
      Inc(InsertCount);
    end;
    ERPQuery.Active:=false;
    TWQuery.Next;
  end;
  //
  Showmessage('Update/Insert: '+inttostr(UpdateCount)+'/'+inttostr(InsertCount)+' count');
end;
procedure TSampleOrder.BBT6Click(Sender: TObject);
begin
  if MessageDlg('Synchronous TW Sample BOM?',mtCustom,[mbYes,mbNo], 0)=mrYes then   GetTWSampleBOMData();  
end;

procedure TSampleOrder.YPZLSGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if YPZLS.FieldByName('tyjh').AsString='Y' then
  begin
     YPZLSGrid.canvas.Brush.Color:=clBtnFace;
     YPZLSGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  //有人修改
  if ((YPZLS.FieldByName('UserID').AsString<>YPZL.FieldByName('UserID').AsString) and (YPZLS.FieldByName('UserID').AsString<>''))  then          //
  begin
    if DataCol=0 then
    begin
      YPZLSGrid.canvas.Brush.Color:=clAqua;
      YPZLSGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
  with Canvas do
  begin
    if (YPZLS.FieldByName('DWBH').AsString='SQF') and (Column.Field = YPZLSdwbh) then
    begin
      YPZLSGrid.canvas.Brush.Color:=clAqua;
      YPZLSGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
end;

procedure TSampleOrder.CopyAllSampleOrder1Click(Sender: TObject);
begin
   TransferSRStage:=TTransferSRStage.Create(self);
   TransferSRStage.ShowModal();
   TransferSRStage.Free;
end;

procedure TSampleOrder.YPZLGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if YPZL.FieldByName('DROPPED').AsBoolean=true then
  begin
    YPZLGrid.canvas.Brush.Color:=clBtnFace;
    YPZLGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if copy(YPZL.FieldByName('ypdh').AsString,4,1)='K' then
  begin
     YPZLGrid.canvas.Brush.Color:=cllime;
     YPZLGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if copy(YPZL.FieldByName('ypdh').AsString,4,1)='T' then
  begin
     YPZLGrid.canvas.Brush.Color:=claqua;
     YPZLGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TSampleOrder.BB8Click(Sender: TObject);
begin
   if SampleException=nil then
     SampleException:=TSampleException.Create(self);
   SampleException.Show();
end;

procedure TSampleOrder.BF4Click(Sender: TObject);
begin
  if ((YPZL.fieldbyname('USERID').AsString=main.edit1.Text) or (main.edit1.Text='40895') or (main.edit1.Text='51024') or (main.edit1.Text='41190')) then
  begin
    with FD_CHECK do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
  BF4.Enabled:=false;
  BF5.Enabled:=true;
  BF6.Enabled:=true;
  end else
  begin
     showmessage('It is not yours,can not modify.');
  end;
end;

procedure TSampleOrder.BF5Click(Sender: TObject);
  var i:integer;
begin
  try
    FD_CHECK.first;
    for i:=1 to FD_CHECK.RecordCount do
    begin
      case FD_CHECK.updatestatus of
        usmodified:
        begin
          if  YPZL.FieldByName('userID').Value=main.Edit1.Text then
          begin
            FD_CHECK.edit;
            upcheck.apply(ukmodify);
          end else
          begin
            showmessage('It is not yours, can not modify.');
          end;
        end;
      end;
      FD_CHECK.next;
    end;//for
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BModRec_Dev ');
      sql.add('(TableName ,article,TNO,delid,remark,DelDate)');
      sql.add('values ('+''''+'YPZL'+''' '+','+''''+'FD_CHECK'+''''+','+''''+YPZL.fieldbyname('YPDH').AsString+''''+',');
      sql.add(' '''+main.Edit1.Text+'''  '+','+' '''+UserIDEdit.text+'''  '+' ,getdate())');
      execsql;
      active:=false;
    end;
    FD_CHECK.active:=false;
    FD_CHECK.cachedupdates:=false;
    FD_CHECK.requestlive:=false;
    FD_CHECK.active:=true;
    BF4.Enabled:=true;
    BF5.enabled:=false;
    BF6.enabled:=false;
    button2.click;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TSampleOrder.BF6Click(Sender: TObject);
begin
  BF4.Enabled:=true;
  BF5.enabled:=false;
  BF6.enabled:=false;
end;

procedure TSampleOrder.Button2Click(Sender: TObject);
begin
  with tempqry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select count(*) as allcheck_no from ypzl where (FD_CHECK <>''1'' or FD_CHECK is null) and userid='''+main.edit1.Text+'''');
    sql.Add('   and (GSDH='''+main.Edit2.Text+''' or GSDH=''LAI'') ');
    Active:=true;
  end;
  Label50.Caption:=tempqry.fieldbyname('allcheck_no').AsString;
end;

procedure TSampleOrder.BF1Click(Sender: TObject);
begin
  with FD_CHECK do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select YPdh,FD_CHECK from ypzl where  ');
    SQL.Add('userid='''+main.edit1.Text+'''');
    sql.Add('   and (GSDH='''+main.Edit2.Text+''' or GSDH=''LAI'') ');
    //memo2.text:=sql.text;
    active:=true;
  end;
  if FD_Check_time_CK.Checked=true then
    FD_Check_time.Active:=true
  else
    FD_Check_time.Active:=false;
end;

procedure TSampleOrder.subtypecbxChange(Sender: TObject);
begin
  Dbedit13.text:=subtypecbx.text;
end;


procedure TSampleOrder.BitBtn2Click(Sender: TObject);
  var
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  with tempqry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ypzl.ypdh,ypzl.article,KFJD,ypzls.clbh,ypzls.bwbh,bwzl.ywsm,ypzls.remark,ypzl.fd,ypzl.userid+''-''+busers.username from YPZL');
    SQL.Add('left join ypzls on ypzls.ypdh=YPZL.ypdh');
    SQL.Add('left join bwzl on bwzl.bwdh=YPZLs.bwbh');
    SQL.Add('left join busers on busers.userid=YPZL.userid');
    SQL.Add(' where ypzls.remark is not null and ypzls.remark<>'''' ');
    if DateCK.Checked=true then
    begin
      sql.add('   and convert(smalldatetime,convert(varchar,YPZL.USERDATE,111)) between ');
      sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add('order by ypzl.ypdh');
    Active:=true;
  end;
  if  tempqry.active  then
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
      for   i:=0   to   tempqry.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=tempqry.fields[i].FieldName;
      end;

      tempqry.First;
      j:=2;
      while   not   tempqry.Eof   do
      begin
        for   i:=0   to  tempqry.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=tempqry.Fields[i].Value;
        end;
        tempqry.Next;
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

procedure TSampleOrder.Quantity_DBEnter(Sender: TObject);
begin
//   if TotalQuantity_DB.text='' then
 //     TotalQuantity_DB.text:=Quantity_DB.text;
end;

procedure TSampleOrder.Quantity_DBExit(Sender: TObject);
begin
  if TotalQuantity_DB.text='' then
    TotalQuantity_DB.text:=Quantity_DB.text;
end;

procedure TSampleOrder.DevTypeEditChange(Sender: TObject);
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

procedure TSampleOrder.transferBtnClick(Sender: TObject);
  var transfernumber:double;
begin
  if newsize.text='' then abort;
  if combobox1.text='' then abort;
  if (combobox1.text<>'+') and (combobox1.text<>'-') then  abort;

  if MessageDlg('Usage will '+combobox1.text+''+newsize.text+'%, sure?' ,mtCustom,[mbYes,mbNo], 0)=mrNO then
    abort
  else
  begin
    with  YPZLS do
    begin
      first;
      while not YPZLS.eof do
      begin
        edit;
        if newsize.text<>'' then
        begin
          if (YPZLS.fieldbyname('dwbh').value<>'PRS') and (YPZLS.fieldbyname('dwbh').value<>'SET') and (YPZLS.fieldbyname('dwbh').value<>'PCE') and (YPZLS.fieldbyname('dwbh').value<>'BOX')  and (YPZLS.fieldbyname('dwbh').value<>'GRN') then
          begin
            if Adjust.ItemIndex = 0 then begin
              if combobox1.text='+' then YPZLS.fieldbyname('CLSL').value:=YPZLS.fieldbyname('CLSL').value*(100+strtofloat(newsize.text))/100;
              if combobox1.text='-' then YPZLS.fieldbyname('CLSL').value:=YPZLS.fieldbyname('CLSL').value*(100-strtofloat(newsize.text))/100;
            end
            else begin
              if combobox1.text='+' then begin
                YPZLS.fieldbyname('Costing_Proportion').Value := strtofloat(newsize.text);
                YPZLS.fieldbyname('Costing_CLSL').value:=YPZLS.fieldbyname('CLSL').value*(100+strtofloat(newsize.text))/100;
              end;
              if combobox1.text='-' then begin
                YPZLS.fieldbyname('Costing_Proportion').Value := 0-strtofloat(newsize.text);
                YPZLS.fieldbyname('Costing_CLSL').value:=YPZLS.fieldbyname('CLSL').value*(100-strtofloat(newsize.text))/100;
              end;
            end;
          end
          else begin
            YPZLS.fieldbyname('Costing_Proportion').Value := 0;
            YPZLS.fieldbyname('Costing_CLSL').value:=YPZLS.fieldbyname('CLSL').value;
          end;
        end;
        post;
        next;
      end;
    end;
    transferbtn.Enabled:=false;
    sizetransfer:=1;  //用量級放不紀錄
  end;
end;

procedure TSampleOrder.NewSizeChange(Sender: TObject);
begin
   if newsize.text<>'' then transferBtn.enabled:=true;
end;

procedure TSampleOrder.Show1Click(Sender: TObject);
begin
  if YPZL.Active=false  then
  begin
    showmessage('Pls Query first thx~');
    abort;
  end;
  with TempQry DO
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ClBH from ypzlS');
    SQL.Add('where YPDH = '''+YPDH_DB.Text+''' ');
    SQL.Add('And CLBH like ''W%'' ');
    Active:=true;
    if TempQry.RecordCount>0 then
    begin
      showmessage('This Sample have Glue Data');
      Active:=false;
      abort;
    end;
    Active:=false;
    GlueCopy:=TGlueCopy.Create(self);
    GlueCopy.Show;
  end;
end;
procedure TSampleOrder.btCopyClick(Sender: TObject);
begin
  if YPZLS.RequestLive then
  begin
    BOMVN_copy:=TBOMVN_copy.create(self);
    BOMVN_copy.show;
  end;
end;

procedure TSampleOrder.ComboBox2Change(Sender: TObject);
begin
  DBEdit18.text:=ComboBox2.text;
end;

procedure TSampleOrder.btTrackingClick(Sender: TObject);
begin
  TrackingUpdateList:=TTrackingUpdateList.Create(self);
  TrackingUpdateList.Show;
end;

procedure TSampleOrder.MemoMaterial1Click(Sender: TObject);
begin
  if YPZLSGrid.SelectedField.FieldName='CLBH' then
  begin
    Memo_Material:=TMemo_Material.create(self);
    Memo_Material.ShowModal();
    Memo_Material.Free;
  end;
end;

procedure TSampleOrder.COPYUSAGEPART1Click(Sender: TObject);
begin
  UsageCopy:=TUsageCopy.Create(self);
  UsageCopy.Show;
end;

end.
