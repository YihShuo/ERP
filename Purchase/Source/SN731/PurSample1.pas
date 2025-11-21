unit PurSample1;

interface                             

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, GridsEh, DBGridEh,
  Buttons, ExtCtrls, Menus,comobj,ADODB, DBGridEhImpExp, ShellAPI, IniFiles, math;

type
  TPurSample = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    CGMas: TQuery;
    CGMasZSBH: TStringField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    CGDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    CGMasCGNO: TStringField;
    CGMasCGDate: TDateTimeField;
    CGDetCGNO: TStringField;                                                      
    CGDetCLBH: TStringField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetVNPrice: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetBJNO: TStringField;
    CGS: TQuery;
    UpOrdMat: TUpdateSQL;
    DS5: TDataSource;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSQty: TCurrencyField;
    CGSCLSL: TCurrencyField;
    CGSUSERDate: TDateTimeField;
    CGSUSERID: TStringField;
    CGSYN: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetACCUS: TFloatField;
    CGDetACCVN: TFloatField;
    CGDetXqQty: TCurrencyField;
    CGSXXCC: TStringField;
    CGMasCGLX: TStringField;
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    CGMasCZ: TStringField;
    Pop1: TPopupMenu;
    CGMasGSBH: TStringField;
    CGMasDH: TStringField;
    BDelRec: TQuery;
    CGMasSEASON: TStringField;
    CGMasPURPOSE: TStringField;
    CGMasMEMO: TStringField;
    CGDetREMARK: TStringField;
    CGDetMEMO1: TStringField;
    CGDetJGNO: TStringField;
    N2: TMenuItem;
    strngfldCGSXIEMING: TStringField;
    strngfldCGSStage: TStringField;
    qry1: TQuery;
    CGDetArticle_All: TStringField;
    Qry_Check: TQuery;
    DS_Check: TDataSource;
    Qry_CheckCGNO: TStringField;
    Qry_CheckZLBH: TStringField;
    Qry_CheckStage: TStringField;
    Qry_CheckUSERID: TStringField;
    CGDetlycc: TStringField;
    Timer1: TTimer;
    excel1: TMenuItem;
    DBGrid3: TDBGridEh;
    Panel6: TPanel;
    Lbl_Warnning: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Edit1: TEdit;
    Edit3: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Check: TCheckBox;
    BBTT1: TBitBtn;
    Pop_Master: TPopupMenu;
    Excel2: TMenuItem;
    BDT6: TBitBtn;
    CheckBox1: TCheckBox;
    Pop_CGS: TPopupMenu;
    Excel3: TMenuItem;
    CGMasZSYWJC: TStringField;
    Label6: TLabel;
    BDT7: TBitBtn;
    CGSFD: TStringField;
    CGMasUSERNAME: TStringField;
    BWQY: TQuery;
    BWQYywsm: TStringField;
    CGMasfzr: TStringField;
    CGSArticle: TStringField;
    CGSS: TQuery;
    CGSSBWBH: TStringField;
    Label11: TLabel;
    ArticleEdit: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    MatNoEdit: TEdit;
    btbCopy: TMenuItem;
    btbPaste: TMenuItem;
    Query2: TQuery;
    CGSywsm: TStringField;
    CGSypcc: TStringField;
    CGSXTMH: TStringField;
    CGSdaomh: TStringField;
    CGMasDevType: TStringField;
    CGSproductionLocation: TStringField;
    CGMaszsdhflex: TStringField;
    CGDetcldhflex: TStringField;
    CGSMDMH: TStringField;
    CGMasProductionLocation: TStringField;
    BDT8: TBitBtn;
    CGDetA4Comfirm: TStringField;
    CGMasCGNO1: TStringField;
    CGDetColorWindow: TStringField;
    CGSDDMH: TStringField;
    CGSypcco: TStringField;
    Label14: TLabel;
    BrandCombo: TComboBox;
    CGSyssm: TStringField;
    CGSMemo: TStringField;
    Label17: TLabel;
    ColorwayEdit: TEdit;
    Print_A: TBitBtn;
    AcceptanceNote1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    AccepttanceOK1: TMenuItem;
    CGMasacceptno: TStringField;
    CGMasACCEPTUSERID: TStringField;
    CGMasACCEPTUSERDATE: TDateTimeField;
    CGMasACCEPTMEMO: TStringField;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    Memo2: TMemo;
    Label18: TLabel;
    EditHGLB1: TMenuItem;
    N4: TMenuItem;
    Panel4: TPanel;
    Label19: TLabel;
    ComboBox1: TComboBox;
    Button5: TButton;
    Button6: TButton;
    BDT9: TButton;
    QCBY: TQuery;
    CGScategory: TStringField;
    Button8: TButton;
    CGMasPrinttime: TIntegerField;
    CGMasManagerID: TStringField;
    CGMasManagerDate: TDateTimeField;
    CGMasPrintTW: TIntegerField;
    CGMasPrintS: TIntegerField;
    Button9: TButton;
    CGMasBrand: TStringField;
    //Label20: TLabel;
    //ComboBox14: TComboBox;
    Label30: TLabel;
    Edit5: TEdit;
    CGMasReturnDate: TDateTimeField;
    Label3: TLabel;
    CGDetCTS: TBooleanField;
    CGMaszsywjctw: TStringField;
    Splitter1: TSplitter;
    PC1: TPageControl;
    TS4: TTabSheet;
    Panel3: TPanel;
    BBTT2: TBitBtn;
    Panel5: TPanel;
    Label7: TLabel;
    btn2: TButton;
    btn1: TButton;
    BO5: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO2: TBitBtn;
    BO7: TBitBtn;
    BBTT3: TBitBtn;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BBTT4: TBitBtn;
    Button7: TButton;
    BBTT5: TBitBtn;
    Button10: TButton;
    pnl1: TPanel;
    spl1: TSplitter;
    DBGrid4: TDBGridEh;
    DBGrid1: TDBGridEh;
    TabSheet1: TTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Label25: TLabel;
    DBGrid2: TDBGridEh;
    Panel9: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label22: TLabel;
    Shape7: TShape;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Shape8: TShape;
    Label29: TLabel;
    Panel10: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    CGDetDateA4Comfirmexpired: TDateTimeField;
    CGDetDateColorWindowexpired: TDateTimeField;
    CGDetonthewayqty: TCurrencyField;
    XXCC: TQuery;
    CGDetMatRemark: TStringField;
    TmpQuery: TQuery;
    CGMasPosition: TStringField;
    ScrollBar1: TScrollBar;
    CGDetMaterial_ETA: TDateTimeField;
    CGMasReason: TStringField;
    BDT10: TBitBtn;
    CGMasHGLB: TStringField;
    CGDetQuotFile: TStringField;
    CGMasFlowflag_TK: TStringField;
    CGMasTimeRevise: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure CGMasAfterOpen(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BBTT3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Qry_CheckAfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1Columns3NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid3Columns5NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure CGSNewRecord(DataSet: TDataSet);
    procedure BDT6Click(Sender: TObject);
    procedure excel1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure DBGrid3Columns4NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BBTT4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure CGSArticleSetText(Sender: TField; const Text: String);
    procedure btbCopyClick(Sender: TObject);
    procedure btbPasteClick(Sender: TObject);
    procedure BDT8Click(Sender: TObject);
    procedure CGSMemoChange(Sender: TField);
    procedure CGMasAfterScroll(DataSet: TDataSet);
    procedure Print_AClick(Sender: TObject);
    procedure AcceptanceNote1Click(Sender: TObject);
    procedure AccepttanceOK1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditHGLB1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BDT9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure BBTT5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure CGDetNewRecord(DataSet: TDataSet);
    procedure BDT10Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
  private
    AppDir:String;    
    CGZLSS_CGNO:String;
    CGZLSS_CLBH:String;
    IsHide_Warehouse_XT:string;
    IsAllowUserID,IsAllowUserID_Print:Boolean;
    UserIDList,UserIDList_Print:string;
    PurchaseN731_CheckPrint,Print:string;
    DCTFilePath: string;
    { Private declarations }
    procedure ReadIni();
    procedure CheckSeason();
    procedure CheckPrint();
    Function GetConverse_ColorMemo(var Memo:String;YWPM:String):boolean;
  public
    { Public declarations }
    Function ConvertStage(str:string):string;
  end;                                                                         

var
  PurSample: TPurSample;
  NDate:TDate;

implementation

uses
  main1, PurSample_ZS1, PurSample_BJ1, QuotationS1, PurNoSize_Ord1, PurSample_CL1,
  PurSample_IM1, PurSample_Ord1, Pursample_BW1, Articlecheck1, PurSample_Print_S1,
  PurSample_SP1, FunUnit, PurSample_Print_Tw1, RP_Acceptance, PurRevise1, PurSample_CBY1,
  RP_AcceptanceSize1, PurSample_Ord_New1, PurSample_Print_Tw_Approve1,
  PurSample_Print_Tw_Normal1, PurSample_Print_Tw_NoSize1,
  PurSample_Print_Tw_NoSize_Normal1;

{$R *.dfm}
procedure TPurSample.ReadIni();
var MyIni :Tinifile;

begin
  //
  IsHide_Warehouse_XT:='N';
  UserIDList:='87797,102558';
  UserIDList_Print:='87428,108558,85329,47352,104065,57740,98836,35376';
  PurchaseN731_CheckPrint:='TX';
  DCTFilePath := '\\192.168.123.112\DevPur_Quotation\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      UserIDList:=MyIni.ReadString('ERP','Purchase_N731_CheckUserID','87797,102558');
      UserIDList_Print:=MyIni.ReadString('ERP','Purchase_N731_CheckUserID_Print','87428,108558,85329,47352,104065,57740,98836,35376');
      PurchaseN731_CheckPrint:=MyIni.ReadString('ERP','PurchaseN731_CheckPrint','TX');
      DCTFilePath:=MyIni.ReadString('DCT','Purchase_N7E_DCTFilePath','\\192.168.123.112\DevPur_Quotation\');
    finally
      MyIni.Free;
    end;
  end;
  
end;
//

procedure TPurSample.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS4;
    action:=canone;
  end else
  begin
    if BD5.enabled then
    begin
        messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
        PC1.ActivePage:=TS4;
        action:=canone;
    end else
    begin
        action:=Cafree;
    end;
  end;
end;
//
Function TPurSample.GetConverse_ColorMemo(var Memo:String;YWPM:String):boolean;
const Color_Name:array [0..16,0..2] of String=(
                 ('Converse Yellow','0100421','035-66-39'),
                 ('Vintage White','1200317','028-89-01'),
                 ('Converse Green','0906890','069-42-27'),
                 ('Light Field Surplus','0902773','047-53-05'),
                 ('Converse Utility','CONV-0067','049-38-07'),
                 ('Nomad Khaki','0701202','031-57-10'),
                 ('Pale Putty','1102437','014-77-01'),
                 ('Converse Navy','CONV-0033','121-26-10'),
                 ('Obsidian','45B','124-21-06'),
                 ('Converse Blue','0501109','121-27-30'),
                 ('Rapid Teal','4MS','095-51-27'),
                 ('Saddle','0401720','010-43-09'),
                 ('Deep Bordeaux','0306439','003-22-17'),
                 ('Converse Red','CONV-0034','009-39-35'),
                 ('Converse Orange','CONV-0066','020-53-38'),
                 ('Black','117-15-00','Black'),
                 ('White','129-96-00','White')
                );
var   i:integer;
      ColorStr:string;
begin
  for i:=0 to High(Color_Name) do
  begin
   if Pos(Uppercase(Color_Name[i][2]),UpperCase(YWPM))<>0 then
   begin
     ColorStr:='('+Color_Name[i][2]+'='+Color_Name[i][1]+')';
     if Pos(ColorStr,Memo)=0 then
     Memo:=Memo+ColorStr+#13#10;
   end;
  end;
  Result:=true;
end;

procedure TPurSample.Button1Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    active:=false;
    sql.Clear;
    sql.add('select ypzlzl.ProductionLocation,cgzl.CGNO,cgzl.cgno+'' ''+cgzl.hglb as CGNO1,cgzl.GSBH,cgzl.ZSBH,cgzl.CGDATE,cgzl.USERDATE,cgzl.USERID,cgzl.CGLX,cgzl.YN,');
    SQL.Add('       cgzl.SEASON,cgzl.PURPOSE,cgzl.DEVTYPE,cgzl.MEMO,');
    sql.Add('       ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ,busers.USERNAME,ZSZL.fzr,');
    //
    if IsHide_Warehouse_XT='N' then
      sql.Add('       case when CGZL.HGLB=''XT'' then '' '' else CGZL.HGLB end HGLB')
    else
      sql.Add('       CGZL.HGLB ');
    sql.Add('       ,zszl_flex.zsdhflex,CGZL_ACCEPT.acceptno,CGZL_ACCEPT.USERID as ACCEPTUSERID,CGZL_ACCEPT.USERDATE as ACCEPTUSERDATE,CGZL_ACCEPT.MEMO as ACCEPTMEMO,');
    sql.Add('       CGZL.Printtime,CGZL.ManagerID,CGZL.ManagerDate,CGZL.PrintTW,CGZL.PrintS,CGZL.Brand,CGZLS.ReturnDate,IsNull(ZSZLTW.zsywjc,ZSZL.zsywjc) as zsywjctw,CGZL_Permission.Position,CGZL.Reason ');
    sql.Add('       ,Flowflag_TK,CGZL.TimeRevise');
    sql.add('from CGZL');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('Left join ZSZL ZSZLTW on ZSZLTW.zsdh=ZSZL_DEV.Zsdh_TW ');
    sql.add('left join busers on CGZL.USERID = busers.USERID');
    // 20150807 add filter Article and material
    sql.Add('left join cgzlss on cgzl.cgno=cgzlss.cgno');
    sql.Add('left join ypzl on cgzlss.zlbh=ypzl.ypdh');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('left join zszl_flex on zszl_flex.ZSdH=cgzl.ZSBH');
    sql.Add('left join cgzls on cgzls.cgno=cgzl.cgno');
    sql.Add('left join ypzlzl on ypzlzl.ypzlbh=CGZLs.bjno');
    sql.Add('left join shoetest on ypzl.ypdh=shoetest.ypdh');
    sql.Add('left join CGZL_ACCEPT on CGZL.CGNO = CGZL_ACCEPT.CGNO');
    sql.Add('left join CGZL_Permission on CGZL_Permission.USERID =CGZL.ManagerID and CGZL_Permission.GSBH=CGZL.GSBH ');
    //20240808 add flowflag trinh ky
    sql.Add('left join ( Select CGNO,LNO,flowflag as Flowflag_TK ');
    sql.Add('			       From (	Select CGNO,LNO,flowflag,ROW_NUMBER() over (PARTITION BY CGNO ORDER BY LNO desc) as Sort ');
    sql.Add('         					From [UOFWEB].[UOF].[dbo].[LYN_PurchaseList_Dev] ) Dev Where Sort=1) Purchase_Dev on Purchase_Dev.CGNO=cgzl.CGNO COLLATE Chinese_Taiwan_Stroke_CI_AS ');
    //
    sql.add('where ISNULL(flowflag,'''')<>''X'' and CGZL.CGNO like '''+Edit1.Text+'%'' ');

    sql.add('  and ZSZL.ZSYWJC like ''%'+Edit3.Text+'%'' ');
    {if ComboBox14.Text <> '' then       SKX結束 關閉相關功能
    begin
      SQL.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
<<<<<<< HEAD
    end;                                                         }

   // end; }

    //20150807
    if Edit5.Text <> '' then
      SQL.Add('and cgzlss.memo like '''+Edit5.Text+'%''');
    if ArticleEdit.Text<>'' then
      sql.Add('and kfxxzl.devcode like ''%'+ArticleEdit.Text+'%''');
    if ColorwayEdit.Text <> '' then
      sql.Add('and kfxxzl.YSSM like '''+'%'+ColorwayEdit.Text+'%'+'''');
    if MatNoEdit.Text<>'' then
      sql.Add('and cgzlss.clbh like '''+'%'+MatNoEdit.Text+'%'+'''');
    //
    sql.add(' and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111))  between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX=''6''');
    sql.add('and CGZL.GSBH='''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
     sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    end;
    //20201026 增加多品牌查詢      加上品牌查詢會出現重複筆數  先拿掉
    if BrandCombo.Text<>'' then
    begin
      SQL.Add('and  exists (');
      SQL.Add('   select CGZLSS.CGNO from CGZLSS,YPZL,KFXXZL ');

      SQL.Add('   where ISNULL(flowflag,'''')<>''X'' and CGZL.CGNO=CGZLSS.CGNO and YPZL.YPDH=CGZLSS.ZLBH ');

      SQL.Add('         and  YPZL.XieXing=KFXXZL.XieXing ');
      SQL.Add('         and YPZL.SheHao=KFXXZL.SheHao ');
      SQL.Add('         and KFXXZL.KHDH='''+Copy(BrandCombo.Text,Pos('-',BrandCombo.Text)+1,length(BrandCombo.Text))+'''    ');
      SQL.Add('   Group by CGZLSS.CGNO)');
    end;
    sql.add('Group by ypzlzl.ProductionLocation,cgzl.CGNO,cgzl.GSBH,cgzl.ZSBH,cgzl.CGDATE,cgzl.USERDATE,cgzl.USERID,cgzl.CGLX,cgzl.YN,');
    sql.add('         cgzl.SEASON,cgzl.PURPOSE,cgzl.DEVTYPE,cgzl.MEMO,');
    sql.add('         ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ,busers.USERNAME,ZSZL.fzr,CGZL.hglb,zszl_flex.zsdhflex, ');
    sql.add('         CGZL_ACCEPT.acceptno,CGZL_ACCEPT.USERID,CGZL_ACCEPT.USERDATE,CGZL_ACCEPT.MEMO,CGZL.Printtime,CGZL.ManagerID,CGZL.ManagerDate,');
    sql.add('         CGZL.PrintTW,CGZL.PrintS,CGZL.Brand,CGZLS.ReturnDate,ZSZLTW.zsywjc,CGZL_Permission.Position,CGZL.Reason,Flowflag_TK,CGZL.TimeRevise ');
    sql.add('order by cgzl.CGNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BDT8.Enabled:=true;
  BDT10.Enabled:=true;
  check.Color:=clBtnFace;

  //check.Checked:=true;
  CGDet.Active:=true;
  Qry_Check.Active:=false;
end;


procedure TPurSample.BB2Click(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  Button1.Enabled:=false;
  DBGrid3.columns[1].ButtonStyle:=cbsEllipsis;
  DBGrid3.columns[4].ButtonStyle:=cbsAuto;
  DBGrid3.columns[5].ButtonStyle:=cbsAuto;
  DBGrid3.columns[8].ButtonStyle:=cbsAuto;
end;

procedure TPurSample.FormCreate(Sender: TObject);
begin
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  Qry_Check.ParamByName('GSDH').AsString:=main.Edit2.Text;
  Qry_Check.Active:=TRUE;
  if Qry_Check.RecordCount>0 then
     Lbl_Warnning.Visible:=true;
  PC1.ActivePage:=TS4;
  DTP1.Date:=date;
  DTP2.date:=date;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KFZL.KFDH,KFZL.KFJC ');
    sql.add('from KFZL_GS ');
    sql.add('Left join KFZL on KFZL_GS.KHBH=KFZL.KFDH ');
    sql.add('where KFZL_GS.GSBH='''+main.Edit2.Text+''' ');
    active:=true;
    BrandCombo.Clear;
    BrandCombo.Items.Add('');
    while not Eof do
    begin
      BrandCombo.Items.Add(FieldByName('KFJC').AsString+'-'+FieldByName('KFDH').AsString);
      Next;
    end;
    active:=false;
    sql.Clear;
    sql.Add('Select Position from CGZL_Permission where USERID = '''+main.Edit1.Text+''' and GSBH = '''+main.Edit2.Text+'''');
    active := true;
    if recordcount > 0 then
      Button8.Enabled := true;
    active:=false;
  end;
  {if main.Edit2.Text = 'SKX' then
  begin
    Label20.Visible := true;
    ComboBox14.Visible := true;
  end; }
  //
  IsAllowUserID:=false;
  IsAllowUserID_Print:=false;
  ReadIni();
end;

procedure TPurSample.BB3Click(Sender: TObject);
begin
  {if (CGMas.FieldByName('Flowflag_TK').AsString<>'X') and (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end;  }
  if CGDet.recordcount=0 then
  begin
    with CGMas do
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
    showmessage('Pls delete the Deliver Detail first.');
    Abort;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  Button1.Enabled:=false;

end;

procedure TPurSample.BB4Click(Sender: TObject);
begin
 { if (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end;  }
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  Button1.Enabled:=false;
  DBGrid3.Columns[1].ButtonStyle:=cbsEllipsis;
  DBGrid3.columns[4].ButtonStyle:=cbsAuto;
  DBGrid3.columns[5].ButtonStyle:=cbsAuto;
end;


procedure TPurSample.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    CGMas.first;
    for i:=1 to CGMas.RecordCount do
    begin
        case CGMas.updatestatus of
          usinserted:
          begin
              if CGMas.fieldbyname('ZSBH').isnull then
                begin
                  CGMas.delete;
                end
                else
                  if (CGMas.fieldbyname('SEASON').AsString=''  ) or (CGMas.fieldbyname('PURPOSE').AsString='' ) then
                     begin
                       showmessage('Season , Purpose can not empty.');
                       exit;
                     end;
                   begin
                     with query1 do    //計算採購單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select CGNO from CGZL where CGNO like '+''''+y+m+'%'+'''');
                         sql.add('order by CGNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('CGNO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     CGMas.edit;
                     CGMas.fieldbyname('CGNO').Value:=a;
                     CGMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     CGMas.fieldbyname('CGLX').Value:='6';
                     CGMas.FieldByName('userID').Value:=main.edit1.text;
                     CGMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     CGMas.FieldByName('CGDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     CGMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
          end;
          usmodified:
          begin
//            if CGMas.FieldByName('YN').AsString<>'5' then
//            begin
              if CGMas.fieldbyname('YN').value='0'then
              begin
                if CGMas.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    with BDelRec do
                      begin
                        active:=false;
                        sql.Clear;
                        {sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'CGZL'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
                        sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');}
                        SQL.Add('UPDATE CGZL SET flowflag = ''X'' WHERE CGNO = ''' + CGMas.fieldbyname('CGNO').AsString+''' ');
                        execsql;
                        active:=false;
                      end;
                  //upMas.apply(ukdelete);
                end else
                begin
                  showmessage('It is not yours.can not  delete');
                end;
              end else
              begin
                if CGMas.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                  if main.Edit2.Text <> 'TBDC' then begin
                    if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
                    begin
                        if (CGMas.fieldbyname('SEASON').AsString=''  ) or (CGMas.fieldbyname('PURPOSE').AsString='' ) then
                        begin
                             showmessage('Season , Purpose can not empty.');
                             exit;
                        end;
                        CGMas.edit;
                        CGMas.FieldByName('userID').Value:=main.edit1.text;
                        CGMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                        upMas.apply(ukmodify);
                    end else
                    begin
                          showmessage('Date>7, can not modify.');
                    end;
                  end
                  else begin
                    if (NDate-CGMas.FieldByName('USERDATE').value)<45  then
                    begin
                        if (CGMas.fieldbyname('SEASON').AsString=''  ) or (CGMas.fieldbyname('PURPOSE').AsString='' ) then
                        begin
                             showmessage('Season , Purpose can not empty.');
                             exit;
                        end;
                        CGMas.edit;
                        CGMas.FieldByName('userID').Value:=main.edit1.text;
                        CGMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                        upMas.apply(ukmodify);
                    end else
                    begin
                          showmessage('Date>45, can not modify.');
                    end;
                  end;
                end else
                begin
                  showmessage('It is not yours.can not delete');
                end;
              end;
//            end else
//            begin
//              showmessage('Already in warehouse,can not modify');
//            end;
          end;
        end;
      CGMas.next;
    end;
    CGMas.active:=false;
    CGMas.cachedupdates:=false;
    CGMas.requestlive:=false;
    CGMas.active:=true;
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    BBTT1.Visible:=false;
    Button1.Enabled:=true;
    dbgrid3.columns[1].ButtonStyle:=cbsnone;
    dbgrid3.columns[4].ButtonStyle:=cbsnone;
    dbgrid3.columns[5].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TPurSample.BB6Click(Sender: TObject);
begin

  with CGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  Button1.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
  dbgrid3.columns[4].ButtonStyle:=cbsnone;
  dbgrid3.columns[5].ButtonStyle:=cbsnone;
  
end;

procedure TPurSample.BD2Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    abort;
  end;
  {if (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end; }

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BBTT3.Visible:=true;
  BBTT4.Visible:=true;
  BBTT5.Visible:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  Panel5.Enabled:=false;
end;

procedure TPurSample.BD3Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    abort;
  end;
  {if (CGMas.FieldByName('Flowflag_TK').AsString<>'X') and (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end;}
  if CGS.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
    abort;
  end;
  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;

  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  Panel1.Enabled:=false;
  Panel5.Enabled:=false;

end;

procedure TPurSample.BD4Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    abort;
  end;
  
  {if (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end; }

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;

  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  Panel1.Enabled:=false;
  Panel5.Enabled:=false;
  dbgrid4.columns[1].ReadOnly:=true;
end;

procedure TPurSample.BD5Click(Sender: TObject);
var i:integer;
    J:Variant;
begin
  CGS.Active:=false;
  J:=' ';
  with CGDet do
    begin
      first;
      while not CGDet.Eof do
        begin
          if CGDet.FieldByName('Qty').IsNull  then
            begin
              edit;
              CGDet.FieldByName('Qty').value:=0;
            end;
          {
          if (CGDet.FieldByName('USPrice').IsNull and CGDet.FieldByName('VNPrice').IsNull) then
            begin
              showmessage('The Price can not be empty.');
              abort;
            end;
          }
          if (not CGDet.FieldByName('USPrice').IsNull) and (not CGDet.FieldByName('VNPrice').IsNull) then
            begin
              showmessage('Can not have two price.');
              abort;
            end;
          if CGDet.FieldByName('YQDate').IsNull  then
            begin
              showmessage('YQDate can not be null.');
              abort;
            end;
          next;
        end;
    end;

  try
    CGDet.first;
      for i:=1 to CGDet.RecordCount do
      begin
          case CGDet.updatestatus of
            usinserted:
            begin
              if CGDet.fieldbyname('CLBH').isnull then
              begin
                CGDet.delete;
              end
              else begin
                CGDet.edit;
                CGDet.fieldbyname('CGNO').Value:=CGMas.fieldbyname('CGNO').Value;
                if (CGDet.fieldbyname('BJNO').isnull) then
                  CGDet.fieldbyname('BJNO').Value:='SAMPLE';
                CGDet.FieldByName('userID').Value:=main.edit1.text;
                CGDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                CGDet.FieldByName('YN').Value:='1';
                with Query1 do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('SELECT CLBH FROM CBY_MaterialCTS WHERE CLBH = ''' + CGDet.FieldByName('CLBH').AsString + '''');
                  Active := true;

                  if (CGDet.FieldByName('CTS').AsBoolean) AND (RecordCount = 0) then
                  begin
                    Active := false;
                    SQL.Clear;
                    SQL.Add('INSERT INTO CBY_MaterialCTS (CLBH, UserID, UserDate)');
                    SQL.Add('VALUES (''' + CGDet.FieldByName('CLBH').AsString + ''', ''' + main.Edit1.Text + ''', GETDATE())');
                    ExecSQL;
                  end
                  else if (CGDet.FieldByName('CTS').AsBoolean = false) AND (RecordCount = 1) then
                  begin
                    Active := false;
                    SQL.Clear;
                    SQL.Add('DELETE FROM CBY_MaterialCTS WHERE CLBH = ''' + CGDet.FieldByName('CLBH').AsString + '''');
                    ExecSQL;
                  end;

                  Active := false;
                  SQL.Clear;
                end;
                upDet.apply(ukinsert);
              end;
            end;
            usmodified:
            begin
              j:=CGDet.fieldbyname('CLBH').Value;
              if CGDet.fieldbyname('YN').value='0'then
              begin
                if CGDet.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'CGZLS'+''''+','+''''+CGDet.fieldbyname('CGNO').Value+'''');
                    sql.add(','+''''+CGDet.fieldbyname('CLBH').Value+''''+','+''''+CGDet.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  UpDet.apply(ukdelete);
                end
                else begin
                  showmessage('It is not yours.can not delete');
                end;
              end
              else begin
                if CGDet.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                  if (NDate-CGMas.FieldByName('USERDATE').value)<7  then
                  begin
                    with query1 do
                    begin
                      active:=false;
                      sql.Clear;
                      sql.add('update CGZLSS set YQDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('YQDate').Value)+'''');
                      //sql.add(',CFMDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('YQDate').Value)+'''');
                      sql.add(',USERDate='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                      sql.add(',USERID='+''''+CGDet.FieldByName('USERID').Value+'''');
                      sql.add('where CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
                      sql.add('and CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
                      execsql;
                      close;
                    end;
                    CGDet.edit;
                    CGDet.FieldByName('userID').Value:=main.edit1.text;
                    CGDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                    with Query1 do
                    begin
                      Active := false;
                      SQL.Clear;
                      SQL.Add('SELECT CLBH FROM CBY_MaterialCTS WHERE CLBH = ''' + CGDet.FieldByName('CLBH').AsString + '''');
                      Active := true;

                      if (CGDet.FieldByName('CTS').AsBoolean) AND (RecordCount = 0) then
                      begin
                        Active := false;
                        SQL.Clear;
                        SQL.Add('INSERT INTO CBY_MaterialCTS (CLBH, UserID, UserDate)');
                        SQL.Add('VALUES (''' + CGDet.FieldByName('CLBH').AsString + ''', ''' + main.Edit1.Text + ''', GETDATE())');
                        ExecSQL;
                      end
                      else if (CGDet.FieldByName('CTS').AsBoolean = false) AND (RecordCount = 1) then
                      begin
                        Active := false;
                        SQL.Clear;
                        SQL.Add('DELETE FROM CBY_MaterialCTS WHERE CLBH = ''' + CGDet.FieldByName('CLBH').AsString + '''');
                        ExecSQL;
                      end;

                      Active := false;
                      SQL.Clear;
                    end;
                    upDet.apply(ukmodify);
                  end else
                  begin
                    showmessage('Date>7, can not modify.');
                  end;
                end else
                begin
                  showmessage('It is not yours.can not delete');
                end;
              end;
            end;

          end;
          CGDet.next;
      end;

  with query1 do       //防止有人按Ctrl+Delete 去刪除身檔,而忘記去刪SS檔
  begin
      active:=false;
      sql.Clear;
      sql.add('DELETE CGZLSS   ');
      sql.add(' where CGZLSS.CGNO='+''''+CGMas.fieldbyname('CGNO').Value+'''');
      sql.add('       and NOT EXISTS (SELECT CGZLS.CLBH FROM CGZLS WHERE CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH ) ');
      execsql;
      close;
  end;

  CGDet.active:=false;
  CGDet.cachedupdates:=false;
  CGDet.requestlive:=false;
  CGDet.active:=true;
  CGS.Active:=true;
  BBTT2.Visible:=false;
  BBTT3.Visible:=false;
  BBTT4.Visible:=false; 
  BBTT5.Visible:=false;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  Panel1.Enabled:=true;
  Panel5.Enabled:=true;
  dbgrid4.columns[0].ReadOnly:=false;

  except
    on E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
      CGS.Active:=true;
    end;
  end;

  IF  J<>' ' THEN   CGDet.Locate('CLBH',J,[]) ;


end;

procedure TPurSample.BD6Click(Sender: TObject);
begin
  with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BBTT3.Visible:=false;
  BBTT4.Visible:=false; 
  BBTT5.Visible:=false;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  Panel1.Enabled:=true;
  Panel5.Enabled:=true;
  dbgrid4.columns[0].ReadOnly:=false;

end;

procedure TPurSample.BBT1Click(Sender: TObject);
begin
  CGMas.First;
end;

procedure TPurSample.BBT2Click(Sender: TObject);
begin
  CGMas.prior;
end;

procedure TPurSample.BBT3Click(Sender: TObject);
begin
  CGMas.next;
end;

procedure TPurSample.BBT4Click(Sender: TObject);
begin
  CGMas.last;
end;

procedure TPurSample.BDT1Click(Sender: TObject);
begin
  CGDet.first;
end;

procedure TPurSample.BDT2Click(Sender: TObject);
begin
  CGDet.prior;
end;

procedure TPurSample.BDT3Click(Sender: TObject);
begin
  CGDet.next;
end;

procedure TPurSample.BDT4Click(Sender: TObject);
begin
  CGDet.last;
end;

procedure TPurSample.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TPurSample.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TPurSample.CGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  BDT9.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  btn1.Enabled := true;
  btn2.Enabled := true;

  CGS.Active:=true;
  if CGDet.recordcount>0 then
  begin
    BO2.Enabled:=true;
    BO5.Enabled:=true;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
    BO7.Enabled:=true;
  end
  else
    begin
      BO2.Enabled:=false;
      BO5.Enabled:=false;
      BO3.Enabled:=false;
      BO4.Enabled:=false;
      BO7.Enabled:=false;
    end ;
  if (((NDate-CGMas.FieldByName('USERDATE').value)>10) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')) then // or (CGMas.FieldByName('YN').value='5') then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if CGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    BO7.Enabled:=false;
  end;

  if CGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;                                 
    BO7.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  //dbgrid4.columns[0].ButtonStyle:=cbsNone;
  //dbgrid4.columns[6].ButtonStyle:=cbsNone;
  //dbgrid4.columns[5].ButtonStyle:=cbsNone;
  CGS.Active:=true;
  if (CGMas.FieldByName('PrintTw').Value <> 0) or (CGMas.FieldByName('PrintS').Value <> 0) then begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
    BO7.Enabled:=false;

    btn2.Enabled := false;    
  end;
  if (copy(CGMas.FieldByName('ZSBH').AsString,1,3) <> 'JNG') then
    DBGrid4.Columns[16].Visible := true
  else
    DBGrid4.Columns[16].Visible := false;
end;

procedure TPurSample.DBGrid3DblClick(Sender: TObject);
begin
  if  CGMas.Active then
  begin
    if  (CGMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
      end;
  end;
end;


procedure TPurSample.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TPurSample.DBGrid4EditButtonClick(Sender: TObject);
begin
  if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if (DBGrid4.Selectedfield.fieldname='USPrice') or (DBGrid4.Selectedfield.fieldname='VNPrice') then
  begin
    if not CGDet.FieldByName('CLBH').IsNull then
    begin
        PurSample_BJ:=TPurSample_BJ.create(self);
        PurSample_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
        PurSample_BJ.button1click(nil);
        PurSample_BJ.show;
    end;
  end;

end;



procedure TPurSample.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TPurSample.BBTT1Click(Sender: TObject);
begin
  PurSample_ZS:=TPurSample_ZS.create(self);
  PurSample_ZS.show;
end;

procedure TPurSample.BBTT2Click(Sender: TObject);
begin
  if PurSample_CL=nil then
  begin
    PurSample_CL:=TPurSample_CL.create(self);
    PurSample_CL.Show;
  end else
  begin
    PurSample_CL.Show;
  end;

end;

procedure TPurSample.CGMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  CGMas.RequestLive:=false;
  CGMas.CachedUpdates:=false;
  if (CGMas.FieldByName('PURPOSE').AsString = 'CBY') then
    DBGrid4.Columns[0].Visible := true
  else
    DBGrid4.Columns[0].Visible := false;
end;

procedure TPurSample.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TPurSample.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TPurSample.CGDetCalcFields(DataSet: TDataSet);
begin
  with CGDet do
  begin
    if FieldByName('USPrice').value<>0 then
      begin
        FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
      end;
    if FieldByName('VNPrice').value<>0 then
      begin
        FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
      end;
  end;
end;

procedure TPurSample.DBGrid1EditButtonClick(Sender: TObject);
begin
  if CGdet.RequestLive then
  begin
    showmessage('Can not edit.');
    abort;
  end else
  begin
   if  Messagedlg(Pchar('Theo Don Mua Hang?'),mtInformation,[mbNo,mbYes],0)=mrYes then
   begin
      PurSample_Ord:=TPurSample_Ord.create(self);
      PurSample_Ord.ShowModal();
      PurSample_Ord.Free;
   end else
   begin
      PurSample_Ord_New:=TPurSample_Ord_New.create(self);
      PurSample_Ord_New.ShowModal();
      PurSample_Ord_New.Free;
   end;
  end;
end;

procedure TPurSample.BO2Click(Sender: TObject);
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  
  {if (CGMas.FieldByName('Flowflag_TK').AsString<>'X') and (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end; }


  if (((NDate-CGMas.FieldByName('USERDATE').value)>10) and ( formatdatetime('yyyy/MM/dd',NDate)>'2008/12/01'))  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;


  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT6.Enabled:=false;
  BDT7.Enabled:=false;
  Panel1.Enabled:=false;
  DBGrid4.Enabled:=false;
  //dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurSample.BO3Click(Sender: TObject);
var i:integer;
    J:Variant;
    Qty:real;
    Article_all:String;
begin
  CGS.First;
  CGSS.Active:=true;
  for i:=1 to CGS.RecordCount do
  begin
    if (not CGS.FieldByName('ZLBH').IsNull)  then
    BEGIN
         with qry1 do
         begin
           active:=false;
           sql.Clear;
           sql.add('select YPDH,YPCC from ypzl');
           sql.add(' where YPDH='+''''+CGS.FieldByName('ZLBH').AsString+''' and KFJD ='+''''+CGS.FieldByName('Stage').AsString+''' ');
           active:=true;
         end;
         IF ( qry1.FieldByName('YPCC').AsString<>'') and ((COPY(CGS.FieldByName('CLBH').AsString,1,3)='J03') or (COPY(CGS.FieldByName('CLBH').AsString,1,3)='J02') or (CGSS.FieldByName('BWBH').AsString='D004') or (CGSS.FieldByName('BWBH').AsString='D009') ) THEN  //只有大底/中底要填SIZE
         BEGIN
           CGs.edit;
           CGs.FieldByName('XXCC').Value:=qry1.FieldByName('YPCC').AsString;
         END;
    end;
    CGS.next;
   end;
   try
      CGs.first;
      for i:=1 to CGs.RecordCount do
      begin
        case CGs.updatestatus of
          usinserted:
            begin
              if CGs.fieldbyname('ZLBH').isnull then
                begin
                  CGs.delete;
                end
                 else
                   begin
                     CGs.edit;
                     CGs.fieldbyname('CGNO').Value:=CGDet.fieldbyname('CGNO').value;
                     CGs.fieldbyname('CLBH').Value:=CGDet.fieldbyname('CLBH').value;
                     CGs.FieldByName('YQDate').Value:=CGDet.fieldbyname('YQDate').value;
                     if not CGDet.FieldByName('CFMDate').isnull then
                        CGs.FieldByName('CFMDate').Value:=CGDet.fieldbyname('CFMDate').value;
                     CGs.FieldByName('userID').Value:=main.edit1.text;
                     CGs.FieldByName('userdate').Value:=date;
                     CGs.FieldByName('YN').Value:='1';
                     if CGs.fieldbyname('CLSL').isnull then  //當材料用量空白時,主動填0
                        CGs.FieldByName('CLSL').Value:='0';
                     if CGs.fieldbyname('XXCC').isnull then  //當Size空白時,主動填N
                        CGs.FieldByName('XXCC').Value:='N';
                     UpOrdMat.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if CGs.fieldbyname('YN').value='0'then
                begin
                  if CGs.FieldByName('UserID').AsString=main.Edit1.Text then
                  begin
                    UpOrdMat.apply(ukdelete);
                  end else
                  begin
                    showmessage('It is not yours.can not  delete');
                  end;
                end
                else
                  begin
                    if CGs.FieldByName('UserID').AsString=main.Edit1.Text then
                    begin
                      if (NDate-CGMas.FieldByName('USERDATE').value)<60  then
                      begin
                        CGs.edit;
                        CGs.FieldByName('userID').Value:=main.edit1.text;
                        CGs.FieldByName('userdate').Value:=date;
                        uPOrdMat.apply(ukmodify);
                      end else
                      begin
                          showmessage('Date>60, can not modify.');
                      end;
                    end else
                    begin
                      showmessage('It is not yours.can not  delete');
                    end;
                  end;
             end;
        end;
        CGs.next;
      end;
    CGSS.Active:=false;
    CGs.active:=false;
    CGs.cachedupdates:=false;
    CGs.requestlive:=false;
    CGs.active:=true;
    CGs.first;
    Article_all:='';
    for i:=1 to CGs.RecordCount do
    BEGIN
      if main.Edit2.Text = 'SKX' then
        Article_all:=Article_all+CGs.fieldbyname('Article').AsString+' / ' + CGs.fieldbyname('YSSM').AsString +'('+CGs.fieldbyname('FD').AsString+'),'
      else
        Article_all:=Article_all+CGs.fieldbyname('Article').AsString+'('+CGs.fieldbyname('FD').AsString+'),' ;
      CGs.next;
    END;
    if length(Article_all)>0 then
    Article_all:=Copy(Article_all,1,length(Article_all)-1);
    CGS.First;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('UPDATE CGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from CGZLSS WHERE CGZLSS.CGNO=CGZLS.CGNO AND CGZLSS.CLBH=CGZLS.CLBH  ');
    sql.add('  and CGZLSS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''' +' GROUP BY CGNO,CLBH),0) ');
    sql.add(' where CGZLS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
    execsql;
    sql.Clear;
    sql.add('UPDATE CGZLS set article_all='+''''+Article_all+'''' );
    sql.add(' where CGZLS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
    sql.add('       and CGZLS.CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
    execsql;
    close;
  end;
  //檢查是否有更新
  with query1 do
  begin                       
    Active:=false;
    SQL.Clear;
    SQL.Add('Select article_all from CGZLS where CGZLS.CGNO='''+CGDet.FieldByName('CGNO').Value+''' ');
    Active:=true;
    if FieldByName('article_all').AsString='' then Showmessage('article_all is empty!');
    Active:=false;
  end;
  {Qty:=0;
  while not CGS.eof do
  begin
    Qty:=Qty+CGS.fieldbyname('Qty').Value;
    CGS.next;
  end;   }

  with CGDet do
  begin
    j:=CGDet.fieldbyname('CLBH').Value;
    active:=false;
    active:=true;
  end;
  BO3.enabled:=false;
  BO4.enabled:=false;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD7.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  Panel1.Enabled:=true;
  DBGrid4.Enabled:=true;
  DBGrid1.columns[1].ButtonStyle:=cbsnone;
  DBGrid1.columns[4].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  IF  J<>' ' THEN   CGDet.Locate('CLBH',J,[]) ;

end;

procedure TPurSample.BO4Click(Sender: TObject);
begin
  with CGs do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO3.enabled:=false;
  BO4.enabled:=false;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  BO7.Enabled:=true;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BD7.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  Panel1.Enabled:=true;
  DBGrid4.Enabled:=true;
  DBGrid1.columns[1].ButtonStyle:=cbsnone;
  DBGrid1.columns[4].ButtonStyle:=cbsnone;
end;

procedure TPurSample.BO5Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

 { if (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end; }

  if not ((main.edit1.text='04233') or  (main.edit1.text='ERIC') OR (main.edit1.text='GLENN')) then
  begin
    if (((NDate-CGMas.FieldByName('USERDATE').value)>60) and ( formatdatetime('yyyy/MM/dd',NDate)>'2008/12/01'))  then
    begin
      showmessage('more than 10 days, can not modify.');
      abort;
    end;
  end;

  with CGs do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BO2.Enabled:=false;
  BO5.Enabled:=false;
  BO7.Enabled:=false;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT6.Enabled:=false;
  BDT7.Enabled:=false;
  Panel1.Enabled:=false;
  DBGrid4.Enabled:=false;
  DBGrid1.Columns[1].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[5].ButtonStyle:=cbsAuto;
end;



procedure TPurSample.FormDestroy(Sender: TObject);
begin
  PurSample:=nil;
end;

procedure TPurSample.BBTT3Click(Sender: TObject);
begin
  if PurSample_IM=nil then
  begin
    PurSample_IM:=TPurSample_IM.create(self);
    PurSample_IM.Show;
  end else
  begin
    PurSample_IM.Show;
  end;
end;

procedure TPurSample.N2Click(Sender: TObject);
begin
  if not (CGDet.FieldByName('CLBH').IsNull or CGMas.fieldbyname('SEASON').IsNull or CGMas.fieldbyname('PURPOSE').IsNull) then
  begin
    PurSample_BW:=TPurSample_BW.create(self);
    PurSample_BW.show;
  end
  else
  begin
    showmessage('Something is null!');
  end;
end;

procedure TPurSample.BO7Click(Sender: TObject);
var i:integer;
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  
 { if (CGMas.FieldByName('Flowflag_TK').AsString<>'X') and (trim(CGMas.FieldByName('Flowflag_TK').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky. Khong the sua !');
    exit;
  end; }

  if (((NDate-CGMas.FieldByName('USERDATE').value)>10) and ( formatdatetime('yyyy/MM/dd',NDate)>'2008/12/01'))  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;

  with CGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    CGS.First;
    for i:=1 to CGS.RecordCount do
    begin
      edit;
      fieldbyname('YN').Value:='0';
      CGS.next;
    end;
  end;

  BO3.Enabled:=true;
  BO4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD7.Enabled:=false;
  BDT6.Enabled:=false;
  BDT7.Enabled:=false;
  Panel1.Enabled:=false;
  DBGrid4.Enabled:=false;
  //dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;

end;

procedure TPurSample.btn1Click(Sender: TObject);
begin
  Articlecheck:=TArticlecheck.create(self);
  Articlecheck.show;
end;

procedure TPurSample.Qry_CheckAfterScroll(DataSet: TDataSet);
begin
  if Qry_Check.fieldbyname('ZLBH').AsString<>'' then
  begin
       Edit2.Text:= Qry_Check.fieldbyname('ZLBH').AsString;
  end;

  if Qry_Check.RecordCount>0 then
      Timer1.Enabled:=true
  else
      Timer1.Enabled:=false;

end;

procedure TPurSample.Button2Click(Sender: TObject);
begin
  //20150522 暫時取消功能
  {
      if (Edit2.text='') then
         begin
           showmessage('please choose problem Article# first');
           abort;
         end;
      if (Edit4.text='')   then
         begin
           showmessage('please keyin new Article#');
           abort;
         end;
      with qry1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('update cgzlss SET ZLBH='+''''+Edit4.text+''''   );
          sql.add(' where CGZLSS.ZLBH is not null AND CGZLSS.ZLBH='+''''+Edit2.text+'''');
          sql.add('       and EXISTS(SELECT * FROM CGZL WHERE CGZL.CGDATE>''2010/12/01'' AND CGZL.CGLX=''6'' AND CGZLSS.CGNO=CGZL.CGNO )');
          sql.add('       and NOT EXISTS( select * from kfxxzl  where ARTICLE=CGZLSS.ZLBH ) ');
          execsql;
          close;
          showmessage('Update finished ');
        end;
  Edit4.Text:='';
  Edit2.Text:='';
  Qry_Check.Active:=false;
  Qry_Check.Active:=TRUE;
     }

end;

procedure TPurSample.DBGrid1Columns3NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
      // showmessage('Pls select Size from list ,can not alter by manually.');
     //  abort;
end;

procedure TPurSample.Timer1Timer(Sender: TObject);
begin
   if Lbl_Warnning.Visible=true then
      Lbl_Warnning.Visible:=false
   else
      Lbl_Warnning.Visible:=true ;
end;

procedure TPurSample.DBGrid3Columns5NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select Stage from list .');
       abort;
end;

procedure TPurSample.CGSNewRecord(DataSet: TDataSet);
begin
   CGS.fieldbyname('Stage').Value := cgmas.fieldbyname('PURPOSE').Value;
end;

procedure TPurSample.BDT6Click(Sender: TObject);
var CGNO: String;
begin
  //
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
    if (CGMas.FieldByName('Brand').Value = Null) and (main.Edit2.Text = 'SKX') then begin   //SKX登入需輸入品牌
      showmessage('The Po has been print yet!');
      abort;
    end;
    if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG') then
    else begin
      if CGMas.FieldByName('ManagerID').Value = null then begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select * from CGZLS  ');
          sql.add('where (QTY - isnull(XqQty,0) > 1) and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
          active:=true;
          if recordcount >0 then
          begin
            showmessage('QTY > Req. Qty ，Need Manager Check First!');
            abort;
          end;
        end;
      end;
    end;   
  with query1 do    //檢核SS和S的數量不合...不可列印
  begin
   active:=false;
   sql.Clear;
   sql.Add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.QTY,CGZLSS.QTY1 from CGZLS left outer  JOIN ');
   sql.Add('(select CGNO,CLBH,ISNULL(SUM(QTY),0)as QTY1 from CGZLSS AS CGZLSS1 group by CGNO,CLBH)as CGZLSS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
   sql.add('where CGZLS.QTY<>CGZLSS.QTY1 and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
   active:=true;
   if recordcount >0 then
   begin
     showmessage('Pls Check data Qty and Sum(Qty) first. MatNO:'+FieldByName('CLBH').AsString);
     abort;
    end;
  end;
  CGNO := CGMas.FieldByName('CGNO').AsString;
  PurSample_Print_S:=TPurSample_Print_S.Create(nil);
  PurSample_Print_S.quickrep1.prepare;
  PurSample_Print_S.Qpage1.caption:=inttostr(PurSample_Print_S.quickrep1.QRPrinter.pagecount);
  PurSample_Print_S.quickrep1.preview;
  PurSample_Print_S.Free;
  //
  with query1 do    //更新列印次數
  begin
    active:=false;
    sql.Clear;
    sql.Add('Update CGZL set PrintS = 1 ');
    sql.add('where CGNO='''+CGNO+'''');
    ExecSQL;
  end;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loPartialKey])
end;

procedure TPurSample.excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  CGDet.active  then
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
        for   i:=0   to   CGDet.fieldcount-1   do
        begin
              eclApp.Cells(1,i+1):=CGDet.fields[i].FieldName;
        end;
        CGDet.First;
        j:=2;
        while   not   CGDet.Eof   do
        begin
            for   i:=0   to  CGDet.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGDet.Fields[i].Value;
            end;
          CGDet.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPurSample.Excel2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  CGMas.active  then
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
        for   i:=0   to   CGMas.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CGMas.fields[i].FieldName;
          end;

        CGMas.First;
        j:=2;
        while   not   CGMas.Eof   do
          begin
            for   i:=0   to  CGMas.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGMas.Fields[i].Value;
            end;
          CGMas.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPurSample.Excel3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  CGS.active  then
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
        for   i:=0   to   CGS.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CGS.fields[i].FieldName;
          end;

        CGS.First;
        j:=2;
        while   not   CGS.Eof   do
          begin
            for   i:=0   to  CGS.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGS.Fields[i].Value;
            end;
          CGS.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPurSample.DBGrid3Columns4NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
  // showmessage('Pls select SEASON from list .');
  // abort;
end;

procedure TPurSample.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGS.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if CGS.FieldByName('CGNO').isnull then
  begin
    DBGrid1.canvas.font.color:=clLime;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSample.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    DBGrid3.canvas.font.color:=clred;
    DBGrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSample.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if CGDet.FieldByName('YN').value='0' then
  begin
    DBGrid4.canvas.font.color:=clred;
    DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if CGDet.FieldByName('CGNO').isnull then
  begin
    DBGrid4.canvas.font.color:=clLime;
    DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSample.BBTT4Click(Sender: TObject);
begin                                        
  if PurSample_SP=nil then
  begin
    PurSample_SP:=TPurSample_SP.create(self);
    PurSample_SP.Show;
  end else
  begin
    PurSample_SP.Show;
  end;
end;
//PO開發階段對照
Function TPurSample.ConvertStage(str:string):string;
var Res:string;
begin
  Res:=str;
  if str='PRO' then Res:='R1';
  if str='SM2' then Res:='R2';
  if str='SM3' then Res:='R3';
  if str='SMU' then Res:='SMU';
  Result:=Res;
end;
//
procedure TPurSample.BitBtn1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    //20151012 Converse 特定顏色指定
    Converse_Memo:String;
    Category_new,PartALl,ArticleALl,FD_ALL,BOM_RemarkALL,query2_all,CGNO:string;
begin
    //query2 列出子材料的母材料
    if PurchaseN731_CheckPrint='TX' then
    begin
      CheckSeason();
    end;
    //20151012 Converse 特定顏色指定
    Converse_Memo:='';
    //
    if  CGMas.RecordCount=0 then
    begin
        showmessage('Pls save data first.');
        abort;
    end;

    AppDir:=ExtractFilePath(Application.ExeName);
    if CGDet.RequestLive then
    begin
        showmessage('Pls save data first.');
        abort;
    end;
    if CGMas.RequestLive then
    begin
        showmessage('Pls save data first.');
        abort;
    end;
    if CGS.RequestLive then
    begin
        showmessage('Pls save data first.');
        abort;
    end;

    if (CGMas.FieldByName('Brand').Value = Null) and ((main.Edit2.Text = 'SKX') or (main.Edit2.Text = 'VC1')) then begin   //SKX登入需輸入品牌
      showmessage('Please Keyin Brand First!');
      abort;
    end;

    if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG') then
    else begin
      if CGMas.FieldByName('ManagerID').Value = null then begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select * from CGZLS  ');
          sql.add('where (QTY - isnull(XqQty,0) > 1) and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
          active:=true;
          if recordcount >0 then
          begin
            showmessage('QTY > Req. Qty ，Need Manager Check First!');
            abort;
          end;
        end;
      end;
    end;
    with query1 do    //檢核SS和S的數量不合...不可列印
    begin
       active:=false;
       sql.Clear;
       sql.Add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.QTY,CGZLSS.QTY1 from CGZLS left outer  JOIN ');
       sql.Add('(select CGNO,CLBH,ISNULL(SUM(QTY),0)as QTY1 from CGZLSS AS CGZLSS1 group by CGNO,CLBH)as CGZLSS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
       sql.add('where CGZLS.QTY<>CGZLSS.QTY1 and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
       active:=true;
       if recordcount >0 then
       begin
        showmessage('Pls Check data Qty and Sum(Qty) first. MatNO:'+FieldByName('CLBH').AsString);
        abort;
       end;
    end;
    CGNO := CGMas.FieldByName('CGNO').AsString;
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\pursample20151014.xls'),Pchar(AppDir+'Additional\pursample20151014.xls'),false);
    if FileExists(AppDir+'Additional\pursample20151014.xls') then
    begin
      if  query1.active  then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\pursample20151014.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          eclApp.ActiveSheet.Columns[1].ColumnWidth:=11;
          eclApp.ActiveSheet.Columns[2].ColumnWidth:=45;
          eclApp.ActiveSheet.Columns[3].ColumnWidth:=15;
          eclApp.ActiveSheet.Columns[4].ColumnWidth:=5;
          eclApp.ActiveSheet.Columns[5].ColumnWidth:=11;
          eclApp.ActiveSheet.Columns[6].ColumnWidth:=45;
          eclApp.ActiveSheet.Columns[7].ColumnWidth:=21;
          eclApp.ActiveSheet.Columns[8].ColumnWidth:=6;
          eclApp.ActiveSheet.Columns[9].ColumnWidth:=6;
          eclApp.ActiveSheet.Columns[10].ColumnWidth:=25;
          eclApp.ActiveSheet.Columns[11].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[12].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[13].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[14].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[15].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[16].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[17].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[18].ColumnWidth:=20;
          eclApp.ActiveSheet.Columns[19].ColumnWidth:=20;

          //WorkBook:=eclApp.workbooks.Add;
         {if main.Edit2.Text = 'SKX' then
            eclApp.Cells(3,1):='BRAND: SKECHERS'
          else if main.Edit2.Text = 'SRL' then
            eclApp.Cells(3,1):='BRAND: SOREL'
          else
            eclApp.Cells(3,1):='BRAND: CONVERSE'; }
          if CGMas.FieldByName('Brand').Value = NULL then begin
            if main.Edit2.Text = 'SKX' then
              eclApp.Cells(3,1):='BRAND: SKECHERS'
            else if main.Edit2.Text = 'SRL' then
              eclApp.Cells(3,1):='BRAND: SOREL'
            else if main.Edit2.Text = 'VC1' then
              eclApp.Cells(3,1):='BRAND: CARIUMA' ;
          end
          else begin
            if CGMas.FieldByName('Brand').Value = 'UQC' then
              eclApp.Cells(3,1):='BRAND: UNIQLO' 
            else if CGMas.FieldByName('Brand').Value = 'CAR' then
              eclApp.Cells(3,1):='BRAND: CARIUMA' ;
          end;

          eclApp.Cells(9,2):='ORDER_NO: '+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
          eclApp.Cells(9,3):='ATTN: '+CGMas.FieldByName('username').AsString;
          eclApp.Range[eclApp.Cells[9,3],eclApp.Cells[9,4]].merge;
          eclApp.Cells(9,5):='Date: '+CGMas.FieldByName('CGDATE').AsString;
          eclApp.Cells(10,2):='Develop Type: '+CGMas.FieldByName('DevType').AsString;
          eclApp.Cells(11,2):='SUPPLIER NAME: '+CGMas.FieldByName('ZSBH').AsString+'/'+CGMas.FieldByName('ZSYWJC').AsString+'('+CGMas.FieldByName('zsdhflex').AsString+')';
          eclApp.Cells(12,2):='TEL: ';
          eclApp.Cells(11,3):='ATTN: '+CGMas.FieldByName('fzr').AsString;
          eclApp.Cells(12,3):='EMAIL:';
          eclApp.Cells(11,5):='ETC:';
          eclApp.Cells(13,1):='NO';
          eclApp.Cells(13,2):='DESCRIPTION';
          eclApp.Cells(13,3):='UNIT';
          eclApp.Cells(13,4):='Qty';
          eclApp.Cells(13,5):='CATEGORY';
          eclApp.Cells(13,6):='SR/YSSM/SampleNo/ProductionLocation/Pairs/Size/Last/Cutting/Midsole/OS/OSSIZE/Category';
          eclApp.Cells(13,7):='SHOE NAME /TESTNO';
          eclApp.Cells(13,8):='Season';
          //20150831 add stage
          eclApp.Cells(13,9):='Stage';
          eclApp.Cells(13,10):='USAGE';
          eclApp.Cells(13,11):='Category';
          eclApp.Cells(13,12):='A4Comfirm';
          eclApp.Cells(13,13):='Color Window';
          eclApp.Cells(13,14):='LATEST ETA';
          eclApp.Cells(13,15):='REMARK';
          eclApp.Cells(13,16):='Mat REMARK';
          eclApp.Cells(13,17):='Memo';
          eclApp.Cells(13,18):='DateA4Comfirm expired';
          eclApp.Cells(13,19):='DateColorWindow expired';

          //20150312 顯示部位
          BWQY.Active:=true;
          btn1.Click;
         // articlecheck.ypzl.active:=true;
        //  articlecheck.ypzls.active:=false;
          j:=14;
          CGDet.First;

          while   not  CGDet.Eof   do
          begin
             //部位資訊                                      
             BWQY.First;
             PartALl:='';
             for i:=0 to BWQY.RecordCount-1 do
             begin
               PartALl:=PartALl+BWQY.FieldByName('ywsm').AsString+',';
               BWQY.Next;
             end;
             if length(PartALl)>0 then PartALl:=Copy(PartALl,1,length(PartALl)-1);
             //SR 資訊
             CGS.First;
             FD_ALL:='';
             ArticleALl:='';
             Category_new:='';
             for i:=0 to CGS.RecordCount-1 do
             begin
             // add size
                  if ((CGS.FieldByName('XXCC').AsString<>'ZZZZZZ') and  (CGS.FieldByName('XXCC').AsString<>'')) then
                  begin
                     ArticleALl:=ArticleALl+CGS.FieldByName('Article').AsString+'/'+CGS.FieldByName('yssm').AsString+'/'+CGS.FieldByName('zlbh').AsString+'/'+CGS.FieldByName('productionLocation').AsString+'/Qty:'+CGS.FieldByName('Qty').AsString+'/'+CGS.FieldByName('ypcc').AsString+'/'+'('+articlecheck.ypzl.FieldByName('YPCCL').AsString+')'+CGS.FieldByName('XTMH').AsString+'/'+CGS.FieldByName('daomh').AsString+'/ '+'('+articlecheck.ypzl.FieldByName('YPCCM').AsString+')'+CGS.FieldByName('MDMH').AsString+'/ '+'('+CGS.FieldByName('YPCCO').AsString+')'+CGS.FieldByName('DDMH').AsString+'/ '+CGS.FieldByName('XXCC').AsString+'/ '+CGS.FieldByName('category').AsString+#13#10;
                     Category_new:=Category_new + CGS.FieldByName('Article').AsString +': '+ CGS.FieldByName('category').AsString+#13#10;
                  end else
                  begin
                     ArticleALl:=ArticleALl+CGS.FieldByName('Article').AsString+'/'+CGS.FieldByName('yssm').AsString+'/'+CGS.FieldByName('zlbh').AsString+'/'+CGS.FieldByName('productionLocation').AsString+'/Qty:'+CGS.FieldByName('Qty').AsString+'/'+CGS.FieldByName('ypcc').AsString+'/ '+'('+articlecheck.ypzl.FieldByName('YPCCL').AsString+')'+CGS.FieldByName('XTMH').AsString+'/'+CGS.FieldByName('daomh').AsString+'/ '+'('+articlecheck.ypzl.FieldByName('YPCCM').AsString+')'+CGS.FieldByName('MDMH').AsString+'/ '+'('+CGS.FieldByName('YPCCO').AsString+')'+CGS.FieldByName('DDMH').AsString+'/ '+CGS.FieldByName('XXCC').AsString+'/ '+CGS.FieldByName('category').AsString+#13#10;
                     Category_new:=Category_new + CGS.FieldByName('Article').AsString +': '+ CGS.FieldByName('category').AsString+#13#10;
                  end;

                FD_ALL:=FD_ALL+CGS.FieldByName('FD').AsString+'('+CGS.FieldByName('ywsm').AsString+')'+','+#13#10;

                CGS.Next;
             end;
             //材料備註
             with BDelRec do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('select  zybb,bz from clbzzl where CLDH='''+CGDet.FieldByName('CLBH').asstring+''' and ZYBB=''E'' order by zybb,xh');
               Active:=true;
               //
               BOM_RemarkALL:='';
               for i:=0 to BDelRec.RecordCount-1 do
               begin
                BOM_RemarkALL:=BOM_RemarkALL+BDelRec.FieldByName('bz').AsString+',';
               end;
               Active:=false;
             end;
             FD_ALL:=trim(FD_ALL);
             ArticleALl:=trim(ArticleALl);
             BOM_RemarkALL:=trim(BOM_RemarkALL);
             //明細
             eclApp.Cells(j,1):=CGDet.FieldByName('CLBH').asstring+'('+CGDet.FieldByName('cldhflex').asstring+')';
             eclApp.Cells(j,2):=CGDet.FieldByName('YWPM').asstring;
             eclApp.Cells(j,3):=CGDet.FieldByName('DWBH').asstring;
             eclApp.Cells(j,4):=CGDet.FieldByName('QTY').asstring;
             eclApp.Cells(j,5):=FD_ALL;//CGS.FieldByName('FD').asstring;
             eclApp.Cells(j,6):=ArticleALl;//顯示Article
             eclApp.Cells(j,7):=CGS.FieldByName('XieMing').asstring+'/ '+CGS.FieldByName('memo').AsString;
             eclApp.Cells(j,8):=CGMas.FieldByName('season').asstring;
             //20150831 add stage
             eclApp.Cells(j,9):=CGMas.FieldByName('Purpose').asstring;
             eclApp.Cells(j,10):=PartALl;//顯示部位
             eclApp.Cells(j,11):=Category_new;
             eclApp.Cells(j,12):='follow C/S:'+ CGDet.FieldByName('A4Comfirm').asstring; 
             eclApp.Cells(j,13):=CGDet.FieldByName('ColorWindow').asstring; //材料備註
             eclApp.Cells(j,14):= CGDet.FieldByName('Material_ETA').asstring;
             eclApp.Cells(j,15):= CGDet.FieldByName('MEMO').asstring;
             eclApp.Cells(j,16):=BOM_RemarkALL;
             eclApp.Cells(j,18):=CGDet.FieldByName('DateA4Comfirmexpired').asstring;
             eclApp.Cells(j,19):=CGDet.FieldByName('DateColorWindowexpired').asstring;

             query2.Active:=true;
             CGS.First;
             while  not cgs.Eof do
             begin
                Query2.First;
                while  not Query2.Eof do
                begin
                   query2_all:=query2_all+query2.FieldByName('ypdh').AsString+'_'+query2.FieldByName('Relation').AsString+':'+query2.FieldByName('ywsm').AsString+':'+query2.FieldByName('YWPM').AsString+''+Chr(10)+'';
                   query2.Next;
                end;
                CGS.next;
             end;
             eclApp.Cells(j,17):=query2_all;
             inc(j);
             query2_all:='';
             //Converse判斷材料有沒有WHITE字
             GetConverse_ColorMemo(Converse_Memo,CGDet.FieldByName('YWPM').asstring);
             //
             CGDet.Next;
             for k:=1 to 4 do
             begin
               eclApp.range[eclApp.cells[13,1],eclApp.cells[j-1,19]].borders[k].linestyle:=1;
             end;
          end;
          //Converse 顏色備忘
          if ((main.Edit2.text='VA12') or (main.Edit2.text='CDC')) then
            if Converse_Memo<>'' then
             eclApp.Cells(13,2):='MatName'+trim(Converse_Memo); //有白色材料則欄位加上註解

          eclApp.Cells(j+3,2):='BY AIR';
          eclApp.Cells(j+4,2):='BY SEA';
          eclApp.Cells(j+3,11):='BY EXPRESS:';
          eclApp.Cells(j+4,11):='OTHERS:';
          eclApp.Cells(j+7,11):='A-TTKT-WI007-01A';
        //  eclapp.columns.autofit;
          BWQY.Active:=false;
          //showmessage('Succeed.');
        //  eclApp.ActiveSheet.PageSetup.FitToPagesTall:= 1;
         // eclApp.ActiveSheet.PageSetup.FitToPagesWide:= 1;
          eclApp.ActiveSheet.PageSetup.Zoom := False;
          eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2

          eclApp.Visible:=True;
          articlecheck.Close;

{          with query1 do    //更新列印次數
          begin
            active:=false;
            sql.Clear;
            sql.Add('Update CGZL set Printtime = 1 ');
            sql.add('where CGNO='''+CGNO+'''');
            ExecSQL;
          end;
          Button1.Click;
          CGMas.Locate('CGNO',CGNO,[loPartialKey]) }
          except
          on   F:Exception   do
               showmessage(F.Message);
          end;
     end;
   end;
end;

procedure TPurSample.btn2Click(Sender: TObject);
var Article_all:string;
    i:integer;
begin
    CGs.first;
    Article_all:='';
    for i:=1 to CGs.RecordCount do
    BEGIN
      if main.Edit2.Text = 'SKX' then
        Article_all:=Article_all+CGs.fieldbyname('Article').AsString+' / ' + CGs.fieldbyname('YSSM').AsString +'('+CGs.fieldbyname('FD').AsString+'),'
      else
        Article_all:=Article_all+CGs.fieldbyname('Article').AsString+'('+CGs.fieldbyname('FD').AsString+'),' ;
//      Article_all:=Article_all+CGs.fieldbyname('Article').AsString+'('+CGs.fieldbyname('FD').AsString+'),' ;
      CGs.next;
    END;
    if length(Article_all)>0 then
    Article_all:=Copy(Article_all,1,length(Article_all)-1);

  with query1 do
    begin
      active:=false;                                                  
      sql.Clear;
      sql.add('UPDATE CGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from CGZLSS WHERE CGZLSS.CGNO=CGZLS.CGNO AND CGZLSS.CLBH=CGZLS.CLBH  ');
      sql.add('  and CGZLSS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''' +' GROUP BY CGNO,CLBH),0) ');
      sql.add(' where CGZLS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
      execsql;
      sql.add('UPDATE CGZLS set article_all='+''''+Article_all+'''' );
      sql.add(' where CGZLS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
      sql.add('       and CGZLS.CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
      execsql;
      close;
    end;
end;

procedure TPurSample.CGSArticleSetText(Sender: TField; const Text: String);
begin

  Sender.Value:=Text;
  if CGS.FieldByName('Article').AsString='ALL' then
  begin
    CGS.Edit;
    CGS.FieldByName('ZLBH').Value:=CGS.FieldByName('Article').Value;
    CGS.Post;
  end else
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Max(YPDH) as YPDH from YPZL,KFXXZL ');
      SQL.Add('where YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and KFXXZL.JiJie='''+CGMas.FieldByName('Season').AsString+''' ');
      SQL.Add('and YPZL.KFJD='''+CGMas.FieldByName('PURPOSE').AsString+''' and KFXXZL.DEVCODE='''+CGS.FieldByName('Article').AsString+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        CGS.Edit;
        CGS.FieldByName('ZLBH').Value:=Query1.FieldByName('YPDH').Value;
        CGS.Post;
      end;
      Active:=false;
    end;
  end;

end;

procedure TPurSample.btbCopyClick(Sender: TObject);
begin
  CGZLSS_CGNO:=CGS.fieldbyname('CGNO').AsString;
  CGZLSS_CLBH:=CGS.fieldbyname('CLBH').AsString;
end;

procedure TPurSample.btbPasteClick(Sender: TObject);
var i:integer;
begin
if (BO3.Enabled=false) then
  begin
    showmessage('Pls click Modify first!');
    abort;
  end;
  with  query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select CGZLSS.ZLBH,CGZLSS.Stage,CGZLSS.Qty,CGZLSS.XXCC,IsNull(KFXXZL.Article,''ALL'') as Article,');
    sql.add('(SELECT memo  FROM CGZLS WHERE CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH) AS memo  from CGZLSS');
    sql.add('Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH');
    sql.add('Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing');
    sql.add('where CGZLSS.CGNO='''+CGZLSS_CGNO+''' and CGZLSS.CLBH='''+CGZLSS_CLBH+'''');
    sql.add('order by CGZLSS.ZLBH,CGZLSS.XXCC');
    active:=true;
  end;
  for i:=0 to query1.RecordCount-1 do
  begin
    CGS.Insert;
    CGS.fieldbyname('Article').value :=query1.fieldbyname('Article').AsString;
    CGS.fieldbyname('ZLBH').value :=query1.fieldbyname('ZLBH').AsString;
    CGS.fieldbyname('Stage').value :=query1.fieldbyname('Stage').AsString;
    CGS.fieldbyname('XXCC').value :=query1.fieldbyname('XXCC').AsString;
    CGS.fieldbyname('Qty').value :=query1.fieldbyname('Qty').AsString;
    CGS.Post;
    query1.next;
  end;
  query1.Active:=false;

end;
procedure TPurSample.CheckSeason();
var  tmpUserIDList:TStringlist;
      index:integer;
begin
   //20231213 check EndDate Seaon
  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(PurSample.CGMas.fieldbyname('UserID').Value);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select EndDate From CGZL_Season Where Season='''+PurSample.CGMas.fieldbyname('SEASON').AsString+''' and Stage='''+PurSample.CGMas.fieldbyname('PURPOSE').AsString+''' and DevType='''+PurSample.CGMas.fieldbyname('DevType').AsString+''' ');
    active:=true;
  end;
  if IsAllowUserID=false then
  begin
    if ((TmpQuery.RecordCount>0) and (TmpQuery.FieldByName('EndDate').Value < Formatdatetime('yyyy/MM/dd',now))) then
    begin
      if CGMas.FieldByName('Position').AsString <> 'Manager' then
      begin
        showmessage('Can not print. Because EndDate for '+CGMas.FieldByName('SEASON').Asstring+' / '+CGMas.FieldByName('PURPOSE').Asstring+' / '+CGMas.FieldByName('DevType').Asstring+'  is '+TmpQuery.FieldByName('EndDate').Asstring+' ');
        abort;
      end;
    end;
  end;
  //
end;

procedure TPurSample.CheckPrint();
var  tmpUserIDList:TStringlist;
      index:integer;
begin
   
  if  UserIDList_Print <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList_Print,',');
    index:=tmpUserIDList.IndexOf(PurSample.CGMas.fieldbyname('UserID').Value);
    if index>=0 then
    begin
      IsAllowUserID_Print:=true;
      Print:='N';
    end else
    begin
      IsAllowUserID_Print:=false;
      Print:='Y';
    end;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID_Print:=false;
    Print:='Y';
  end;
  with TmpQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    Active := false;
    SQL.Clear;
    //SQL.Add(' Select CFMID2,CFMDate2 from [UOFWEB].UOF.dbo.LYN_PurchaseList_Dev Where CGNO= '''+CGMas.FieldByName('CGNO').Asstring+''' ');
    //SQL.Add(' Select CFMID2,CFMDate2 from [UOF].UOF.dbo.LYN_PurchaseList_Dev Where CGNO= '''+CGMas.FieldByName('CGNO').Asstring+''' ');    // data test
    SQL.Add(' Select ManagerID as CFMID2,ManagerDate as CFMDate2 from cgzl where CGNO= '''+CGMas.FieldByName('CGNO').Asstring+''' ');
    Active:=true;
  end;
  if IsAllowUserID_Print=false then
  begin
    if  (Formatdatetime('yyyy/MM/dd',CGMas.FieldByName('CGDate').Value)>= '2024/05/01' ) then
    begin
      if TmpQuery.RecordCount>0 then
      begin
        //if ((TmpQuery.FieldByName('CFMID2').AsString='NO') and (TmpQuery.FieldByName('CFMDate2').IsNull)) then
        if (TmpQuery.FieldByName('CFMDate2').IsNull) then
        begin
          showmessage('Can not print. Because Puppy not yet approve.');
          abort;
        end;
      end else
      begin
        showmessage('Can not print. Because Puppy not yet approve.');
        abort;
      end;
    end;
  end;


  //
end;

procedure TPurSample.BDT8Click(Sender: TObject);
var CGNO: String;

begin
  if PurchaseN731_CheckPrint='TX' then
  begin
    CheckSeason();
    CheckPrint();
  end;

  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGMas.RequestLive then
  begin
  showmessage('Pls save data first.');
    abort;
  end;
  if CGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

    if (CGMas.FieldByName('Brand').Value = Null) and (main.Edit2.Text = 'SKX') then begin   //SKX登入需輸入品牌
      showmessage('The Po has been print yet!');
      abort;
    end;
    if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG')
       or (CGMas.FieldByName('ZSBH').Value = 'VJ40') or (CGMas.FieldByName('ZSBH').Value = 'VJ30') or (CGMas.FieldByName('ZSBH').Value = 'VW02')
       or (CGMas.FieldByName('ZSBH').Value = 'VC115') or (CGMas.FieldByName('ZSBH').Value = 'VV35') or (CGMas.FieldByName('ZSBH').Value = 'VV47')
       or (CGMas.FieldByName('ZSBH').Value = 'VL44') or (CGMas.FieldByName('ZSBH').Value = 'VH25') or (CGMas.FieldByName('ZSBH').Value = 'VJ03')
       or (CGMas.FieldByName('ZSBH').Value = 'VP190') or (CGMas.FieldByName('ZSBH').Value = 'VH52') or (CGMas.FieldByName('ZSBH').Value = 'VT180')
        or (CGMas.FieldByName('ZSBH').Value = 'VN67') or (CGMas.FieldByName('ZSBH').Value = 'V052') or (CGMas.FieldByName('ZSBH').Value = 'TU66') then
    else begin
      if CGMas.FieldByName('ManagerID').Value = null then begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select * from CGZLS  ');
          sql.add('where (QTY - isnull(XqQty,0) > 1) and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
          active:=true;
          if recordcount >0 then
          begin
            showmessage('QTY > Req. Qty ，Need Manager Check First!');
            abort;
          end;
        end;
      end;
    end;
  with query1 do    //檢核SS和S的數量不合...不可列印
  begin
   active:=false;
   sql.Clear;
   sql.Add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.QTY,CGZLSS.QTY1 from CGZLS left outer  JOIN ');
   sql.Add('(select CGNO,CLBH,ISNULL(SUM(QTY),0)as QTY1 from CGZLSS AS CGZLSS1 group by CGNO,CLBH)as CGZLSS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
   sql.add('where CGZLS.QTY<>CGZLSS.QTY1 and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
   active:=true;
   if recordcount >0 then
   begin
       showmessage('Pls Check data Qty and Sum(Qty) first. MatNO:'+FieldByName('CLBH').AsString);
       abort;
   end;
  end;
      if ((PurchaseN731_CheckPrint='TX') and (Formatdatetime('yyyy/MM/dd',CGMas.FieldByName('CGDate').Value)>= '2024/05/01' )) then
      begin
        if (Print='Y') then
        begin
          CGNO := CGMas.FieldByName('CGNO').AsString;
          PurSample_Print_Tw_Approve:=TPurSample_Print_Tw_Approve.Create(nil);
          //31-12-2024
          if (main.Edit2.Text = 'VC1') then
          begin
            PurSample_Print_Tw_Approve.QRLabel6.Caption := 'BRAND: CARIUMA';
          end;
          //====
          if  CGMas.FieldByName('PURPOSE').AsString ='CBY' then
          begin
            PurSample_Print_Tw_Approve.L7.Caption:='ORDER_NO: CBY'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString+'   '+CGMas.FieldByName('TimeRevise').AsString;
          end else if CGMas.FieldByName('PURPOSE').AsString ='PDT' then
          begin
            PurSample_Print_Tw_Approve.L7.Caption:='ORDER_NO: PDT'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString+'   '+CGMas.FieldByName('TimeRevise').AsString;
          end else
          begin
            PurSample_Print_Tw_Approve.L7.Caption:='ORDER_NO: '+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString+'   '+CGMas.FieldByName('TimeRevise').AsString;
          end;
          PurSample_Print_Tw_Approve.L19.Caption:='SUPPLIER NAME: '+CGMas.FieldByName('ZSBH').AsString+'/'+CGMas.FieldByName('ZSYWJC').AsString+'('+CGMas.FieldByName('zsdhflex').AsString+')';
          PurSample_Print_Tw_Approve.QRLabel5.Caption:='ATTN: '+CGMas.FieldByName('fzr').AsString;
          PurSample_Print_Tw_Approve.quickrep1.prepare;
          PurSample_Print_Tw_Approve.Qpage1.caption:=inttostr(PurSample_Print_Tw_Approve.quickrep1.QRPrinter.pagecount);
          PurSample_Print_Tw_Approve.quickrep1.preview;
          PurSample_Print_Tw_Approve.Free;
        end else
        begin
          CGNO := CGMas.FieldByName('CGNO').AsString;
          PurSample_Print_Tw_Normal:=TPurSample_Print_Tw_Normal.Create(nil);
          if  CGMas.FieldByName('PURPOSE').AsString ='CBY' then
          begin
            PurSample_Print_Tw_Normal.L7.Caption:='ORDER_NO: CBY'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
          end else if CGMas.FieldByName('PURPOSE').AsString ='PDT' then
          begin
            PurSample_Print_Tw_Normal.L7.Caption:='ORDER_NO: PDT'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
          end else
          begin
            PurSample_Print_Tw_Normal.L7.Caption:='ORDER_NO: '+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
          end;
          PurSample_Print_Tw_Normal.L19.Caption:='SUPPLIER NAME: '+CGMas.FieldByName('ZSBH').AsString+'/'+CGMas.FieldByName('ZSYWJC').AsString+'('+CGMas.FieldByName('zsdhflex').AsString+')';
          PurSample_Print_Tw_Normal.QRLabel5.Caption:='ATTN: '+CGMas.FieldByName('fzr').AsString;
          PurSample_Print_Tw_Normal.quickrep1.prepare;
          PurSample_Print_Tw_Normal.Qpage1.caption:=inttostr(PurSample_Print_Tw_Normal.quickrep1.QRPrinter.pagecount);
          PurSample_Print_Tw_Normal.quickrep1.preview;
          PurSample_Print_Tw_Normal.Free;
        end;
      end else
      begin
        CGNO := CGMas.FieldByName('CGNO').AsString;
        PurSample_Print_Tw:=TPurSample_Print_Tw.Create(nil);
        PurSample_Print_Tw.quickrep1.prepare;
        PurSample_Print_Tw.Qpage1.caption:=inttostr(PurSample_Print_Tw.quickrep1.QRPrinter.pagecount);
        PurSample_Print_Tw.quickrep1.preview;
        PurSample_Print_Tw.Free;
     end;
  with query1 do    //更新列印次數
  begin
    active:=false;
    sql.Clear;
    sql.Add('Update CGZL set PrintTw = 1 ');
    sql.add('where CGNO='''+CGNO+'''');
    ExecSQL;
  end;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loPartialKey])
end;

procedure TPurSample.CGSMemoChange(Sender: TField);
begin
  if CGS.State in [dsEdit, dsInsert] then begin
    qry1.Close;
    qry1.SQL.Text := 'select *  from ('+
                     'Select shoetest.YPDH,kfxxzl.devcode as ARTICLE,YPZL.KFJD,CEILING(isnull(shoetest2.qty,0) * isnull(Sum(ypzls.CLSL),0)*100)/100 as qty from shoetest ' +
                     //'Select shoetest.YPDH,kfxxzl.devcode as ARTICLE,YPZL.KFJD,isnull(shoetest2.qty,0) * isnull(Sum(ypzls.CLSL),0) as qty from shoetest ' +
                     'left join YPZL on YPZL.YPDH = shoetest.YPDH '+
                     'left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHao = kfxxzl.SheHao '+
                     'left join (select TestNo,isnull(sum(qty),0) as qty from shoetest2 group by TestNo)  shoetest2  on shoetest2.testno = shoetest.testno '+
                     'left join YPZLS on YPZL.YPDH = YPZLS.YPDH and CLBH = '''+CGDet.fieldbyname('CLBH').AsString+''' '+
                     'where shoetest.testno = '''+CGS.fieldbyname('Memo').AsString+''' ' +
                     'group by shoetest.YPDH,kfxxzl.devcode,YPZL.KFJD,shoetest2.qty '+
                     'Union all '+
                     'Select shoetest.YPDH,kfxxzl.devcode as ARTICLE,YPZL.KFJD,CEILING(isnull(shoetest2.qty,0) * isnull(Sum(ypzls.CLSL),0)*100)/100 as qty '+
                     //'Select shoetest.YPDH,kfxxzl.devcode as ARTICLE,YPZL.KFJD,isnull(shoetest2.qty,0) * isnull(Sum(ypzls.CLSL),0) as qty '+
                     'from shoetest left join YPZL on YPZL.YPDH = shoetest.YPDH '+
                     'left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHao = kfxxzl.SheHao '+
                     'left join (select TestNo,isnull(sum(qty),0) as qty from shoetest2 group by TestNo)  shoetest2  on shoetest2.testno = shoetest.testno '+
                     'left join YPZLS on YPZL.YPDH = YPZLS.YPDH '+
                     'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '+
                     'inner JOIN clzl clzl ON clzhzl.CLDH1 = clzl.cldh and clzhzl.CLDH1  = '''+CGDet.fieldbyname('CLBH').AsString+''' '+
                     'where shoetest.testno =  '''+CGS.fieldbyname('Memo').AsString+''' ' +
                     'group by shoetest.YPDH,kfxxzl.devcode,YPZL.KFJD,shoetest2.qty '+
                     ') ypzls where qty>0';
    qry1.Open;
    if qry1.RecordCount > 0 then begin
      CGS.fieldbyname('ZLBH').value:=qry1.fieldbyname('YPDH').value;
      CGS.fieldbyname('ARTICLE').value:=qry1.fieldbyname('ARTICLE').value;
      CGS.fieldbyname('XXCC').value:='ZZZZZZ';
      CGS.fieldbyname('Stage').Value:=qry1.fieldbyname('KFJD').value;
      CGS.fieldbyname('Qty').value:=qry1.fieldbyname('qty').value;
      CGS.fieldbyname('CLSL').value:=qry1.fieldbyname('qty').value;
    end;
  end;
end;

procedure TPurSample.CGMasAfterScroll(DataSet: TDataSet);
begin
  //已經入庫 Already In Warehouse
  {if CGMas.FieldByName('YN').AsString='5' then
  begin
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end else
  begin
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;}
  
  if (CGMas.FieldByName('PURPOSE').AsString = 'CBY') then
    DBGrid4.Columns[0].Visible := true
  else
    DBGrid4.Columns[0].Visible := false;
end;

procedure TPurSample.Print_AClick(Sender: TObject);
begin
  With XXCC do
  begin 
    active:=false;
    sql.Clear;
    SQL.Add('select XXCC  ');
    SQL.Add('from cgzlss left join cgzl on cgzlss.cgno = cgzl.cgno and cgzl.gsbh ='''+main.Edit2.Text+''' ');
    SQL.Add('where cgzl.CGNO=:CGNO');
    active:=true; 
    //ExecSQL; 
  end; 

  if CGMas.IsEmpty then exit;
  Query1.Active := false;
  Query1.SQL.Text := 'Select USERNAME from BUSERS where USERID = '''+CGMas.fieldbyname('USERID').AsString+'''';
  Query1.Open;
  if (XXCC.FieldByName('XXCC').AsString ='ZZZZZZ') or (XXCC.FieldByName('XXCC').AsString ='') then
  begin
    RP_Acceptance1:=TRP_Acceptance.Create(nil);
    RP_Acceptance1.quickrep1.prepare;
    RP_Acceptance1.QRLabel18.Caption := Query1.Fields[0].AsString;
    RP_Acceptance1.Qpage1.caption:=inttostr(RP_Acceptance1.quickrep1.QRPrinter.pagecount);
    RP_Acceptance1.quickrep1.preview;
    RP_Acceptance1.Free;
  end else
  begin
    RP_AcceptanceSize:=TRP_AcceptanceSize.Create(nil);
    RP_AcceptanceSize.quickrep1.prepare;
    RP_AcceptanceSize.QRLabel18.Caption := Query1.Fields[0].AsString;
    RP_AcceptanceSize.Qpage1.caption:=inttostr(RP_AcceptanceSize.quickrep1.QRPrinter.pagecount);
    RP_AcceptanceSize.quickrep1.preview;
    RP_AcceptanceSize.Free;
  end;
end;

procedure TPurSample.AcceptanceNote1Click(Sender: TObject);
begin
  Print_A.Click;
end;

procedure TPurSample.AccepttanceOK1Click(Sender: TObject);
begin
  if CGMas.FieldByName('acceptno').Value <> NULL THEN begin
    showmessage('Accept Already!');
    EXIT;
  end;
  Panel2.Visible := true;
  Memo2.Text := '';
end;

procedure TPurSample.Button4Click(Sender: TObject);
begin
  Panel2.Visible := false;
end;

procedure TPurSample.Button3Click(Sender: TObject);
var y,m,a,CGNO: String;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  with query1 do    //計算驗收單流水號
  begin
    active:=false;
    sql.Clear;
    sql.Add('select acceptno from CGZL_ACCEPT where acceptno like '+''''+y+m+'%'+'''');
    sql.add('order by acceptno');
    active:=true;
    if recordcount >0 then
    begin
      last;
      a:=fieldbyname('acceptno').AsString;
      a:=copy(a,7,5);
      a:=inttostr(strtoint(a)+1);
      while length(a)<5 do
      begin
        a:='0'+a;
      end;
    end
    else
    begin
      a:='00001';
    end;
    a :=y+m+a;
    active:=false;
  end;
  CGNO := CGMas.fieldbyname('CGNO').AsString;

  Query1.Active := false;
  Query1.SQL.Clear;
  Query1.SQL.Add('Insert into CGZL_ACCEPT (CGNO,acceptno,USERDate,USERID,Memo) Values ('''+CGMas.fieldbyname('CGNO').AsString+''','''+a+''','''+formatdatetime('yyyy/MM/dd',Ndate)+''','''+main.Edit1.Text+''','''+memo2.Text+''')');
  Query1.ExecSQL;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loCaseInsensitive]);
  Panel2.Visible := false;
end;

procedure TPurSample.EditHGLB1Click(Sender: TObject);
begin
  Panel4.Visible := not Panel4.Visible;
end;

procedure TPurSample.Button6Click(Sender: TObject);
begin
  Panel4.Visible := not Panel4.Visible;
end;

procedure TPurSample.Button5Click(Sender: TObject);
var CGNO: String;
begin
  CGNO := CGMas.fieldbyname('CGNO').AsString;
  Query1.Active := false;
  Query1.SQL.Clear;
  Query1.SQL.Add('Update CGZL set HGLB = '''+ComboBox1.Text+''' where CGNO = '''+CGMas.fieldbyname('CGNO').AsString+''' ');
  Query1.ExecSQL;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loCaseInsensitive]);
  Panel4.Visible := not Panel4.Visible;
end;

procedure TPurSample.BDT9Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,k:integer;
  //20151012 Converse 特定顏色指定
  Converse_Memo:String;
  PartALl,ArticleALl,FD_ALL,BOM_RemarkALL,query2_all:string;
begin
  CheckSeason();                                     //query2 列出子材料的母材料
  //20151012 Converse 特定顏色指定
  Converse_Memo:='';
  //
  if  CGMas.RecordCount=0 then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  AppDir:=ExtractFilePath(Application.ExeName);
  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  with query1 do    //檢核SS和S的數量不合...不可列印
  begin
   active:=false;
   sql.Clear;
   sql.Add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.QTY,CGZLSS.QTY1 from CGZLS left outer  JOIN ');
   sql.Add('(select CGNO,CLBH,ISNULL(SUM(QTY),0)as QTY1 from CGZLSS AS CGZLSS1 group by CGNO,CLBH)as CGZLSS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
   sql.add('where CGZLS.QTY<>CGZLSS.QTY1 and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
   active:=true;
   if recordcount >0 then
   begin
    showmessage('Pls Check data Qty and Sum(Qty) first. MatNO:'+FieldByName('CLBH').AsString);
    abort;
   end;
  end;

  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\pursample20151014.xls'),Pchar(AppDir+'Additional\pursample20151014.xls'),false);
  if FileExists(AppDir+'Additional\pursample20151014.xls') then
  begin
    if query1.active then
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
        eclApp.WorkBooks.Open(AppDir+'Additional\pursample20151014.xls');
        eclApp.WorkSheets[1].Activate;//第一頁為主
        eclApp.ActiveSheet.Columns[1].ColumnWidth:=11;
        eclApp.ActiveSheet.Columns[2].ColumnWidth:=45;
        eclApp.ActiveSheet.Columns[3].ColumnWidth:=15;
        eclApp.ActiveSheet.Columns[4].ColumnWidth:=5;
        eclApp.ActiveSheet.Columns[5].ColumnWidth:=11;
        eclApp.ActiveSheet.Columns[6].ColumnWidth:=45;
        eclApp.ActiveSheet.Columns[7].ColumnWidth:=21;
        eclApp.ActiveSheet.Columns[8].ColumnWidth:=6;
        eclApp.ActiveSheet.Columns[9].ColumnWidth:=6;
        eclApp.ActiveSheet.Columns[10].ColumnWidth:=25;
        eclApp.ActiveSheet.Columns[11].ColumnWidth:=20;
        eclApp.ActiveSheet.Columns[12].ColumnWidth:=20;
        eclApp.ActiveSheet.Columns[13].ColumnWidth:=20;

        if main.Edit2.Text = 'SKX' then
          eclApp.Cells(3,1):='BRAND: SKECHERS'
        else
          eclApp.Cells(3,1):='BRAND: CONVERSE';

        eclApp.Cells(9,2):='ORDER_NO: '+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
        eclApp.Cells(9,3):='ATTN: '+CGMas.FieldByName('username').AsString;
        eclApp.Range[eclApp.Cells[9,3],eclApp.Cells[9,4]].merge;
        eclApp.Cells(9,5):='Date: '+CGMas.FieldByName('CGDATE').AsString;
        eclApp.Cells(10,2):='Develop Type: '+CGMas.FieldByName('DevType').AsString;

        eclApp.Cells(11,2):='SUPPLIER NAME: '+CGMas.FieldByName('ZSYWJC').AsString+'('+CGMas.FieldByName('zsdhflex').AsString+')';
        eclApp.Cells(12,2):='TEL: ';
        eclApp.Cells(11,3):='ATTN: '+CGMas.FieldByName('fzr').AsString;
        eclApp.Cells(12,3):='EMAIL:';
        eclApp.Cells(11,5):='ETC:';
        eclApp.Cells(13,1):='NO';
        eclApp.Cells(13,2):='DESCRIPTION';
      //  eclApp.Cells(13,3):='COLOR NO.';
        eclApp.Cells(13,3):='UNIT';
        eclApp.Cells(13,4):='Qty';
        eclApp.Cells(13,5):='CATEGORY';
        eclApp.Cells(13,6):='OrderNo/Cutting/Midsole/OS/SIZE/PartName';
        eclApp.Cells(13,7):='SHOE NAME /TESTNO';
        eclApp.Cells(13,8):='Season';
        //20150831 add stage
        eclApp.Cells(13,9):='Stage';
        eclApp.Cells(13,10):='USAGE';
        eclApp.Cells(13,11):='REMARK';
        eclApp.Cells(13,12):='Mat REMARK';
        eclApp.Cells(13,13):='Memo';
        eclApp.Cells(13,14):='A4Comfirm';
        eclApp.Cells(13,15):='ColorWindow';
        //20150312 顯示部位
        BWQY.Active:=true;
        btn1.Click;
       // articlecheck.ypzl.active:=true;
       // articlecheck.ypzls.active:=false;
        j:=14;
        CGDet.First;

        while not CGDet.Eof do
        begin
           //部位資訊
          BWQY.First;
          PartALl:='';
          for i:=0 to BWQY.RecordCount-1 do
          begin
            PartALl:=PartALl+BWQY.FieldByName('ywsm').AsString+',';
            BWQY.Next;
          end;
          if length(PartALl)>0 then PartALl:=Copy(PartALl,1,length(PartALl)-1);

          //SR 資訊
          with QCBY do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT CGZLSS.*, KFXXZL.XieMing, KFXXZL.FD, kfxxzl.XTMH, kfxxzl.daomh, lbzls.ywsm, kfxxzl.DDMH FROM CGZLSS');
            SQL.Add('LEFT JOIN (');
            SQL.Add('  SELECT MasterOrder, style, Season FROM CBY_Orders');
            SQL.Add('  GROUP BY MasterOrder, style, Season');
            SQL.Add(') AS CBY_Orders ON CBY_Orders.MasterOrder = CGZLSS.ZLBH');
            SQL.Add('LEFT JOIN KFXXZL ON KFXXZL.ARTICLE = CBY_Orders.style AND KFXXZL.JiJie = CBY_Orders.Season');
            SQL.Add('LEFT JOIN lbzls ON lbzls.lbdh = kfxxzl.xiegn AND lbzls.lb = ''03''');
            SQL.Add('WHERE CGZLSS.CGNO = :CGNO');
            SQL.Add('AND CGZLSS.CLBH = :CLBH');
            SQL.Add('ORDER BY CGZLSS.ZLBH, CGZLSS.XXCC');
            Active := true;
          end;

          QCBY.First;
          FD_ALL:='';
          ArticleALl:='';
          for i:=0 to QCBY.RecordCount-1 do
          begin
            if ((QCBY.FieldByName('XXCC').AsString<>'ZZZZ') and  (QCBY.FieldByName('XXCC').AsString<>'')) then
            begin
              ArticleALl := ArticleALl + QCBY.FieldByName('zlbh').AsString + '/' + QCBY.FieldByName('XTMH').AsString + '/' + QCBY.FieldByName('daomh').AsString + '/' + QCBY.FieldByName('DDMH').AsString + '/' + QCBY.FieldByName('XXCC').AsString + #13#10;
            end else
            begin
              ArticleALl := ArticleALl + QCBY.FieldByName('zlbh').AsString + '/' + QCBY.FieldByName('XTMH').AsString + '/' + QCBY.FieldByName('daomh').AsString + '/' + QCBY.FieldByName('DDMH').AsString + '/' + QCBY.FieldByName('XXCC').AsString + #13#10;
            end;

            FD_ALL:=FD_ALL + QCBY.FieldByName('FD').AsString + '(' + QCBY.FieldByName('ywsm').AsString + ')' + ',' + #13#10;

            QCBY.Next;
          end;
           //材料備註
          with BDelRec do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select  zybb,bz from clbzzl where CLDH='''+CGDet.FieldByName('CLBH').asstring+''' and ZYBB=''E'' order by zybb,xh');
            Active:=true;
             //
            BOM_RemarkALL:='';
            for i:=0 to BDelRec.RecordCount-1 do
            begin
              BOM_RemarkALL:=BOM_RemarkALL+BDelRec.FieldByName('bz').AsString+',';
            end;
            Active:=false;
          end;
          FD_ALL:=trim(FD_ALL);
          ArticleALl:=trim(ArticleALl);
          BOM_RemarkALL:=trim(BOM_RemarkALL);
          //明細
          eclApp.Cells(j,1):=CGDet.FieldByName('CLBH').asstring+'('+CGDet.FieldByName('cldhflex').asstring+')';
          eclApp.Cells(j,2):=CGDet.FieldByName('YWPM').asstring;
          eclApp.Cells(j,3):=CGDet.FieldByName('DWBH').asstring;
          eclApp.Cells(j,4):=CGDet.FieldByName('QTY').asstring;
          eclApp.Cells(j,5):=FD_ALL;//CGS.FieldByName('FD').asstring;
          eclApp.Cells(j,6):=ArticleALl;//顯示Article
          eclApp.Cells(j,7):=QCBY.FieldByName('XieMing').asstring + '/' + QCBY.FieldByName('memo').AsString;
          eclApp.Cells(j,8):=CGMas.FieldByName('season').asstring;
          //20150831 add stage
          eclApp.Cells(j,9):=CGMas.FieldByName('Purpose').asstring;
          eclApp.Cells(j,10):=PartALl;//顯示部位
          eclApp.Cells(j,11):=CGDet.FieldByName('MEMO').asstring;
          eclApp.Cells(j,12):=BOM_RemarkALL; //材料備註
          eclApp.Cells(j,14):=CGDet.FieldByName('A4Comfirm').asstring;
          eclApp.Cells(j,15):=CGDet.FieldByName('ColorWindow').asstring;
          query2.Active:=true;
          CGS.First;
          while  not cgs.Eof do
          begin
            Query2.First;
            while  not Query2.Eof do
            begin
              query2_all:=query2_all+query2.FieldByName('ypdh').AsString+'_'+query2.FieldByName('Relation').AsString+':'+query2.FieldByName('ywsm').AsString+':'+query2.FieldByName('YWPM').AsString+''+Chr(10)+'';
              query2.Next;
            end;
            CGS.next;
          end;
          eclApp.Cells(j,13):=query2_all;
          inc(j);
          query2_all:='';
          //Converse判斷材料有沒有WHITE字
          GetConverse_ColorMemo(Converse_Memo,CGDet.FieldByName('YWPM').asstring);
          //
          CGDet.Next;
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[13,1],eclApp.cells[j-1,15]].borders[k].linestyle:=1;
          end;
        end;
        //Converse 顏色備忘
        if ((main.Edit2.text='VA12') or (main.Edit2.text='CDC')) then
          if Converse_Memo<>'' then
           eclApp.Cells(13,2):='MatName'+trim(Converse_Memo); //有白色材料則欄位加上註解
        //
        eclApp.Cells(j+3,2):='BY AIR';
        eclApp.Cells(j+4,2):='BY SEA';
        eclApp.Cells(j+3,11):='BY EXPRESS:';
        eclApp.Cells(j+4,11):='OTHERS:';
        eclApp.Cells(j+7,11):='A-TTKT-WI007-01A';
        //eclapp.columns.autofit;
        BWQY.Active:=false;
        //showmessage('Succeed.');
        //eclApp.ActiveSheet.PageSetup.FitToPagesTall:= 1;
        //eclApp.ActiveSheet.PageSetup.FitToPagesWide:= 1;
        eclApp.ActiveSheet.PageSetup.Zoom := False;
        eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2

        eclApp.Visible:=True;
        articlecheck.Close;
      except on F:Exception do
        showmessage(F.Message);
      end;
    end;
  end;
end;

procedure TPurSample.Button7Click(Sender: TObject);
var Article_all:String;
    i: Integer;
begin
  if CGDet.Active = false then
    exit;
  try
    CGDet.First;
    while not CGDet.Eof do begin
      CGS.First;
      Article_all:='';
      for i:=1 to CGs.RecordCount do
      BEGIN
        if main.Edit2.Text = 'SKX' then
          Article_all:=Article_all+CGs.fieldbyname('Article').AsString+' / ' + CGs.fieldbyname('YSSM').AsString +'('+CGs.fieldbyname('FD').AsString+'),'
        else
          Article_all:=Article_all+CGs.fieldbyname('Article').AsString+'('+CGs.fieldbyname('FD').AsString+'),' ;
        CGs.next;
      END;
      if length(Article_all)>0 then
      Article_all:=Copy(Article_all,1,length(Article_all)-1);

      with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('UPDATE CGZLS set article_all='+''''+Article_all+'''' );
        sql.add(' where CGZLS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
        sql.add('       and CGZLS.CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
        execsql;
        close;
      end;
      CGDet.Next;
    end;
    showmessage('Finished !');
  except
    showmessage('Failed !');
  end;
end;

procedure TPurSample.Button8Click(Sender: TObject);
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;                                                                                  
  try
    with CGMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      FieldByName('ManagerID').Value := main.Edit1.Text;
      FieldByName('ManagerDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
      FieldByName('Printtime').Value:=0;
      FieldByName('PrintTw').Value:=0;
      FieldByName('PrintS').Value:=0;
      upMas.apply(ukmodify);
    end;
    CGMas.active:=false;
    CGMas.cachedupdates:=false;
    CGMas.requestlive:=false;
    CGMas.active:=true;
    showmessage('Check OK!');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TPurSample.Button9Click(Sender: TObject);
begin
  if PurRevise=nil then
  begin
    PurRevise:=TPurRevise.create(self);
    PurRevise.Show;
  end else
  begin
    PurRevise.Show;
  end;
end;

procedure TPurSample.BBTT5Click(Sender: TObject);
begin
  if PurSample_CBY = nil then
  begin
    PurSample_CBY := TPurSample_CBY.create(self);
    PurSample_CBY.Show;
  end else
  begin
    PurSample_CBY.Show;
  end;
end;

procedure TPurSample.Button10Click(Sender: TObject);
var Article_all: String;
    i: integer;
begin
  CGMas.First;
  while not CGMas.Eof do begin
    CGDet.First;
    while not CGDet.Eof do begin
      if CGDet.FieldByName('Article_All').Value = NULL then begin
        CGS.First;
        Article_all:='';
        for i:=1 to CGs.RecordCount do
        BEGIN
          if main.Edit2.Text = 'SKX' then
            Article_all:=Article_all+CGs.fieldbyname('Article').AsString+' / ' + CGs.fieldbyname('YSSM').AsString +'('+CGs.fieldbyname('FD').AsString+'),'
          else
            Article_all:=Article_all+CGs.fieldbyname('Article').AsString+'('+CGs.fieldbyname('FD').AsString+'),' ;
          CGs.next;
        END;
        if length(Article_all)>0 then
        Article_all:=Copy(Article_all,1,length(Article_all)-1);

        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('UPDATE CGZLS set article_all='+''''+Article_all+'''' );
          sql.add(' where CGZLS.CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
          sql.add('       and CGZLS.CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
          execsql;
          close;
        end;
      end;
      CGDet.Next;
    end;
    CGMas.Next;
  end;
end;

procedure TPurSample.CGDetNewRecord(DataSet: TDataSet);
begin
  CGDet.FieldByName('CTS').Value := false;
end;

procedure TPurSample.BDT10Click(Sender: TObject);
var CGNO: String;
begin
  if PurchaseN731_CheckPrint='TX' then
  begin
    CheckSeason();
    CheckPrint();
  end;

  if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if CGMas.RequestLive then
  begin
  showmessage('Pls save data first.');
    abort;
  end;
  if CGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

    if (CGMas.FieldByName('Brand').Value = Null) and (main.Edit2.Text = 'SKX') then begin   //SKX登入需輸入品牌
      showmessage('The Po has been print yet!');
      abort;
    end;
    if (CGMas.FieldByName('ZSBH').Value = 'JNGR2') or (CGMas.FieldByName('ZSBH').Value = 'JNGR3') or (CGMas.FieldByName('ZSBH').Value = 'JNG')
       or (CGMas.FieldByName('ZSBH').Value = 'VJ40') or (CGMas.FieldByName('ZSBH').Value = 'VJ30') or (CGMas.FieldByName('ZSBH').Value = 'VW02')
       or (CGMas.FieldByName('ZSBH').Value = 'VC115') or (CGMas.FieldByName('ZSBH').Value = 'VV35') or (CGMas.FieldByName('ZSBH').Value = 'VV47')
       or (CGMas.FieldByName('ZSBH').Value = 'VL44') or (CGMas.FieldByName('ZSBH').Value = 'VH25') or (CGMas.FieldByName('ZSBH').Value = 'VJ03')
       or (CGMas.FieldByName('ZSBH').Value = 'VP190') or (CGMas.FieldByName('ZSBH').Value = 'VH52') or (CGMas.FieldByName('ZSBH').Value = 'VT180')
        or (CGMas.FieldByName('ZSBH').Value = 'VN67') or (CGMas.FieldByName('ZSBH').Value = 'V052') or (CGMas.FieldByName('ZSBH').Value = 'TU66') then
    else begin
      if CGMas.FieldByName('ManagerID').Value = null then begin   //檢查採購數量與需求量如果不相同需主管簽核才能列印
        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select * from CGZLS  ');
          sql.add('where (QTY - isnull(XqQty,0) > 1) and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
          active:=true;
          if recordcount >0 then
          begin
            showmessage('QTY > Req. Qty ，Need Manager Check First!');
            abort;
          end;
        end;
      end;
    end;
  with query1 do    //檢核SS和S的數量不合...不可列印
  begin
   active:=false;
   sql.Clear;
   sql.Add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.QTY,CGZLSS.QTY1 from CGZLS left outer  JOIN ');
   sql.Add('(select CGNO,CLBH,ISNULL(SUM(QTY),0)as QTY1 from CGZLSS AS CGZLSS1 group by CGNO,CLBH)as CGZLSS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
   sql.add('where CGZLS.QTY<>CGZLSS.QTY1 and CGZLS.CGNO='+''''+CGMas.FieldByName('CGNO').Value+'''');
   active:=true;
   if recordcount >0 then
   begin
       showmessage('Pls Check data Qty and Sum(Qty) first. MatNO:'+FieldByName('CLBH').AsString);
       abort;
   end;
  end;
      if ((PurchaseN731_CheckPrint='TX') and (Formatdatetime('yyyy/MM/dd',CGMas.FieldByName('CGDate').Value)>= '2024/05/01' )) then
      begin
        if (Print='Y') then
        begin
          CGNO := CGMas.FieldByName('CGNO').AsString;
          PurSample_Print_Tw_NoSize:=TPurSample_Print_Tw_NoSize.Create(nil);

          //17-12-2024
          if (main.Edit2.Text = 'VC1') then
          begin    
            if CGMas.FieldByName('Brand').Value = 'UQC' then    
              PurSample_Print_Tw_NoSize.QRLabel6.Caption := 'BRAND: UNIQLO'
            else if CGMas.FieldByName('Brand').Value = 'CAR' then
              PurSample_Print_Tw_NoSize.QRLabel6.Caption := 'BRAND: CARIUMA';
          end;


          if  CGMas.FieldByName('PURPOSE').AsString ='CBY' then
          begin
            PurSample_Print_Tw_NoSize.L7.Caption:='ORDER_NO: CBY'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString+'   '+CGMas.FieldByName('TimeRevise').AsString;
          end else if  CGMas.FieldByName('PURPOSE').AsString ='PDT' then
          begin
            PurSample_Print_Tw_NoSize.L7.Caption:='ORDER_NO: PDT'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString+'   '+CGMas.FieldByName('TimeRevise').AsString;
          end else
          begin
            PurSample_Print_Tw_NoSize.L7.Caption:='ORDER_NO: '+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString+'   '+CGMas.FieldByName('TimeRevise').AsString;
          end;
          PurSample_Print_Tw_NoSize.L19.Caption:='SUPPLIER NAME: '+CGMas.FieldByName('ZSBH').AsString+'/'+CGMas.FieldByName('ZSYWJC').AsString+'('+CGMas.FieldByName('zsdhflex').AsString+')';
          PurSample_Print_Tw_NoSize.QRLabel5.Caption:='ATTN: '+CGMas.FieldByName('fzr').AsString;
          PurSample_Print_Tw_NoSize.quickrep1.prepare;
          PurSample_Print_Tw_NoSize.Qpage1.caption:=inttostr(PurSample_Print_Tw_NoSize.quickrep1.QRPrinter.pagecount);
          PurSample_Print_Tw_NoSize.quickrep1.preview;
          PurSample_Print_Tw_NoSize.Free;
        end else
        begin
          CGNO := CGMas.FieldByName('CGNO').AsString;
          PurSample_Print_Tw_NoSize_Normal:=TPurSample_Print_Tw_NoSize_Normal.Create(nil);
          if  CGMas.FieldByName('PURPOSE').AsString ='CBY' then
          begin
            PurSample_Print_Tw_NoSize_Normal.L7.Caption:='ORDER_NO: CBY'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
          end else if  CGMas.FieldByName('PURPOSE').AsString ='PDT' then
          begin
            PurSample_Print_Tw_NoSize_Normal.L7.Caption:='ORDER_NO: PDT'+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
          end else
          begin
            PurSample_Print_Tw_NoSize_Normal.L7.Caption:='ORDER_NO: '+CGMas.FieldByName('CGNO').AsString+' '+CGMas.FieldByName('HGLB').AsString;
          end;
          PurSample_Print_Tw_NoSize_Normal.L19.Caption:='SUPPLIER NAME: '+CGMas.FieldByName('ZSBH').AsString+'/'+CGMas.FieldByName('ZSYWJC').AsString+'('+CGMas.FieldByName('zsdhflex').AsString+')';
          PurSample_Print_Tw_NoSize_Normal.QRLabel5.Caption:='ATTN: '+CGMas.FieldByName('fzr').AsString;
          PurSample_Print_Tw_NoSize_Normal.quickrep1.prepare;
          PurSample_Print_Tw_NoSize_Normal.Qpage1.caption:=inttostr(PurSample_Print_Tw_NoSize_Normal.quickrep1.QRPrinter.pagecount);
          PurSample_Print_Tw_NoSize_Normal.quickrep1.preview;
          PurSample_Print_Tw_NoSize_Normal.Free;
        end;
      end else
      begin
        CGNO := CGMas.FieldByName('CGNO').AsString;
        PurSample_Print_Tw:=TPurSample_Print_Tw.Create(nil);
        PurSample_Print_Tw.quickrep1.prepare;
        PurSample_Print_Tw.Qpage1.caption:=inttostr(PurSample_Print_Tw.quickrep1.QRPrinter.pagecount);
        PurSample_Print_Tw.quickrep1.preview;
        PurSample_Print_Tw.Free;
     end;
  with query1 do    //更新列印次數
  begin
    active:=false;
    sql.Clear;
    sql.Add('Update CGZL set PrintTw = 1 ');
    sql.add('where CGNO='''+CGNO+'''');
    ExecSQL;
  end;
  Button1.Click;
  CGMas.Locate('CGNO',CGNO,[loPartialKey])
end;

procedure TPurSample.DBGrid4DblClick(Sender: TObject);
begin
  if (DBGrid4.SelectedField.FieldName = 'QuotFile') and (CGDet.FieldByName('QuotFile').AsString <> '') then
    ShellExecute(0, 'open', PChar(DCTFilePath + CGDet.FieldByName('QuotFile').AsString), nil, nil, SW_Normal);
end;

end.
