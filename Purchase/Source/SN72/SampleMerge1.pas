unit SampleMerge1;

interface
                                
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, ShellAPI, DBGridEhImpExp, Menus, comobj,
  DateUtils,math;

type
  TSampleMerge = class(TForm)
    Panel1: TPanel;
    PC1: TPageControl;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    YPZLZLS: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    YPZLZL: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    YPZLZLYPZLBH: TStringField;
    YPZLZLKFJD: TStringField;
    YPZLZLJiJie: TStringField;
    YPZLZLUSERID: TStringField;
    YPZLZLYN: TStringField;
    YPZLZLSYPZLBH: TStringField;
    YPZLZLSYPDH: TStringField;
    YPZLZLSUSERID: TStringField;
    YPZLZLSUSERDATE: TDateTimeField;
    YPZLZLSYN: TStringField;
    YPZLZLSKFJD: TStringField;
    YPZLZLINSDATE: TDateTimeField;
    YPZLZLSJiJie: TStringField;
    YPZLZLCALDATE: TDateTimeField;
    YPZLZLS1: TQuery;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    YPZLZLS11: TQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField19: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField20: TStringField;
    DS5: TDataSource;
    YPZLZLS11YPDH: TStringField;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    YPZLZLS2: TQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField9: TStringField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    StringField21: TStringField;
    DS6: TDataSource;
    YPZLZLSPAIRS: TFloatField;
    YPZLZLS2USAGE: TFloatField;
    YPZLZLS2MJBH: TStringField;
    YPZLZLS2CSBH: TStringField;
    YPZLZLUSERDATE: TDateTimeField;
    YPZLZLPD: TStringField;
    dlgSave1: TSaveDialog;
    btn1: TBitBtn;
    YPZLZLS2ARTICLE: TStringField;
    YPZLZLS11ARTICLE: TStringField;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Excel1: TMenuItem;
    Excel2: TMenuItem;
    TabSheet4: TTabSheet;
    DBGridEh4: TDBGridEh;
    Qry_Purchase: TQuery;
    StringField1: TStringField;
    StringField22: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField37: TStringField;
    FloatField6: TFloatField;
    StringField39: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField43: TStringField;
    CurrencyField1: TCurrencyField;
    DS_Purchase: TDataSource;
    Qry_PurchaseKFJD: TStringField;
    Qry_PurchasePAIRS: TFloatField;
    Pop_Purchase: TPopupMenu;
    MenuItem1: TMenuItem;
    Panel5: TPanel;
    Label9: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Panel7: TPanel;
    Label10: TLabel;
    Edit6: TEdit;
    Button3: TButton;
    Panel8: TPanel;
    Button4: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Qry_PurchaseUseStock: TCurrencyField;
    Panel9: TPanel;
    DBGrid3: TDBGridEh;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Button5: TButton;
    Radio_PurMat: TRadioButton;
    Radio_All: TRadioButton;
    DS_Summary: TDataSource;
    Qry_Summary: TQuery;
    StringField8: TStringField;
    StringField18: TStringField;
    StringField23: TStringField;
    StringField25: TStringField;
    FloatField1: TFloatField;
    StringField27: TStringField;
    IntegerField2: TIntegerField;
    StringField29: TStringField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    Pop_Summary: TPopupMenu;
    MenuItem2: TMenuItem;
    Panel6: TPanel;
    DBGridEh3: TDBGridEh;
    Qry_SummaryYPZLBH: TStringField;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    DS_Article: TDataSource;
    Qry_Article: TQuery;
    StringField24: TStringField;
    StringField28: TStringField;
    FloatField5: TFloatField;
    StringField32: TStringField;
    StringField36: TStringField;
    StringField40: TStringField;
    FloatField7: TFloatField;
    CurrencyField5: TCurrencyField;
    DS_Revise: TDataSource;
    Qry_Revise: TQuery;
    Qry_ReviseYPDH: TStringField;
    Qry_ReviseBWBH: TStringField;
    Qry_ReviseCSBH: TStringField;
    Qry_ReviseZSYWJC: TStringField;
    Qry_ReviseMJBH: TStringField;
    Qry_ReviseCLBH: TStringField;
    Qry_ReviseCLMC: TStringField;
    Qry_ReviseUSAGE: TFloatField;
    Qry_ReviseARTICLE: TStringField;
    Qry_ReviseKFJD: TStringField;
    Qry_ReviseBWMC: TStringField;
    PurchaseOrder1: TMenuItem;
    YPZLZLrevise: TStringField;
    DBGridEh6: TDBGridEh;
    Radio_Wait: TRadioButton;
    Qry_SummaryZSDH_VN: TStringField;
    Qry_ArticleYPCCO: TStringField;
    Qry_Article_PO: TQuery;
    StringField26: TStringField;
    FloatField8: TFloatField;
    StringField31: TStringField;
    StringField33: TStringField;
    StringField45: TStringField;
    CurrencyField7: TCurrencyField;
    StringField46: TStringField;
    Chk_Mine: TCheckBox;
    Edit_Supplier: TEdit;
    Label13: TLabel;
    Qry_ArticleFD: TStringField;
    YPZLZLSFD: TStringField;
    Qry_ReviseFD: TStringField;
    Label11: TLabel;
    Edit_MatNo: TEdit;
    TabSheet6: TTabSheet;
    Panel10: TPanel;
    Label12: TLabel;
    Edit7: TEdit;
    Button6: TButton;
    Panel11: TPanel;
    DS_MergeNOCheck: TDataSource;
    Qry_MergeNOCheck: TQuery;
    StringField30: TStringField;
    StringField44: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    FloatField9: TFloatField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    IntegerField4: TIntegerField;
    DateTimeField3: TDateTimeField;
    DateTimeField6: TDateTimeField;
    StringField53: TStringField;
    CurrencyField8: TCurrencyField;
    StringField54: TStringField;
    FloatField10: TFloatField;
    CurrencyField9: TCurrencyField;
    DBGridEh7: TDBGridEh;
    CheckBox1: TCheckBox;
    YPZLZLGSBH: TStringField;
    HideCK: TCheckBox;
    xlsBtn: TButton;
    Qry_SummaryUserName: TStringField;
    Panel12: TPanel;
    DBGridEh8: TDBGridEh;
    DS_Supplier: TDataSource;
    SupplierQry: TQuery;
    SupplierQryYPZLBH: TStringField;
    SupplierQryCLBH: TStringField;
    SupplierQryCLMC: TStringField;
    SupplierQryDWBH: TStringField;
    SupplierQryZSYWJC: TStringField;
    SupplierQryCLSL: TFloatField;
    SupplierQryCSBH: TStringField;
    SupplierQryUserName: TStringField;
    SupplierQrySafeStock: TStringField;
    Label16: TLabel;
    Edit8: TEdit;
    Label17: TLabel;
    Edit9: TEdit;
    Button7: TButton;
    YPZLZLS2FD: TStringField;
    Qry_ArticleCGQty: TCurrencyField;
    Qry_SummaryStockQty: TCurrencyField;
    UseStock1: TMenuItem;
    HideRightCK: TCheckBox;
    Qry_SummarySampleLeadTime: TIntegerField;
    Label18: TLabel;
    Edit10: TEdit;
    Qry_Summarystock_memo: TStringField;
    CGUseUpd: TUpdateSQL;
    CKCLSL: TCheckBox;
    Qry_ArticleBWBH: TStringField;
    YPZLZLmemo: TStringField;
    Qry_SummarySafeStock: TCurrencyField;
    Qry_SummaryNoBuy: TIntegerField;
    Qry_SummaryNoUse: TIntegerField;
    BitBtn1: TBitBtn;
    YPZLZLSSize: TStringField;
    TabSheet7: TTabSheet;
    Qry_Recrod: TQuery;
    DS_Record: TDataSource;
    DBGridEh9: TDBGridEh;
    Panel14: TPanel;
    Button8: TButton;
    Label20: TLabel;
    Edit_MatName: TEdit;
    TabSheet8: TTabSheet;
    BOMMEMO: TQuery;
    DBGridEh10: TDBGridEh;
    BOMMEMODS: TDataSource;
    Panel15: TPanel;
    Button9: TButton;
    Edit11: TEdit;
    Label21: TLabel;
    BOMMEMOypdh: TStringField;
    BOMMEMOID: TStringField;
    BOMMEMOCheck_Time: TDateTimeField;
    BOMMEMOrecieveid: TStringField;
    BOMMEMOrecievedate: TDateTimeField;
    BOMMEMOremark: TStringField;
    YPZLZLSdevcode: TStringField;
    YPZLZLSARTICLE: TStringField;
    Qry_Articledevcode: TStringField;
    Qry_Revisedevcode: TStringField;
    YPZLZLS11devcode: TStringField;
    YPZLZLS2devcode: TStringField;
    Qry_MergeNOCheckdevcode: TStringField;
    Qry_Purchasedevcode: TStringField;
    YPZLZLDevType: TStringField;
    Qry_ArticleProductionLocation: TStringField;
    Button10: TButton;
    YPZLZLSProductionLocation: TStringField;
    YPZLZLProductionLocation: TStringField;
    Qry_ArticleYSSM: TStringField;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label24: TLabel;
    Edit4: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB8: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    TBEdit: TEdit;
    YSSMEdit: TEdit;
    ComboBox14: TComboBox;
    Query2: TQuery;
    Panel13: TPanel;
    DBGrid4: TDBGridEh;
    Memo1: TMemo;
    Panel16: TPanel;
    Label15: TLabel;
    Splitter3: TSplitter;
    CheckBox2: TCheckBox;
    Qry_Summaryonthewayqty: TCurrencyField;
    Qry_SummaryMatRemark: TStringField;
    Qry_Summarycldhflex: TStringField;
    CheckStock1: TMenuItem;
    Qry_SummaryCLBH_NotUS: TStringField;
    Qry_SummaryCLBH_NotBuy: TStringField;
    Query3: TQuery;
    BitBtn2: TBitBtn;
    YPZLZLSDevType: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure YPZLZLSAfterOpen(DataSet: TDataSet);
    procedure YPZLZLAfterOpen(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btn1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure YPZLZLAfterScroll(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Radio_PurMatClick(Sender: TObject);
    procedure Radio_AllClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure YPZLZLCalcFields(DataSet: TDataSet);
    procedure Radio_WaitClick(Sender: TObject);
    procedure PurchaseOrder1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure HideCKClick(Sender: TObject);
    procedure xlsBtnClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UseStock1Click(Sender: TObject);
    procedure HideRightCKClick(Sender: TObject);
    procedure Qry_SummaryAfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGrid3CellMouseClick(Grid: TCustomGridEh; Cell: TGridCoord;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Label14DblClick(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckStock1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure InsertKCCLDay();
  public
    { Public declarations }
  end;

var
  SampleMerge: TSampleMerge;
  NDate:TDate;

implementation

uses main1 ,SampleMerge_CL1, PurSample1, FunUnit, RequestCheckStock1;

{$R *.dfm}
Function GetSeasonString(before:string):string;
begin
  if Pos('''''',before)<=0 then
    if Pos('''',before)>0 then
       result:=StringReplace(before, '''', '''''',[rfReplaceAll, rfIgnoreCase])
    else
       result:=before
  else
    result:=before;
end;
procedure TSampleMerge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS4;
    panel1.Visible:=true;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TSampleMerge.Button1Click(Sender: TObject);
begin
  YPZLZLS.Active:=false;
  YPZLZLS11.Active:=false;
  YPZLZLS2.Active:=false;
  Qry_Purchase.Active:=false;       
  Qry_Revise.Active:=FALSE;

  with YPZLZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZL.YPZLBH,YPZLZL.GSBH,YPZLZL.INSDATE,YPZLZL.KFJD,YPZLZL.JiJie,YPZLZL.DevType,YPZLZL.USERID,YPZLZL.USERDATE,YPZLZL.YN,YPZLZL.CALDATE,YPZLZL.PD,YPZLZL.memo,YPZLZL.ProductionLocation ');
    sql.add('  from YPZLZL');
 
    sql.add('left join YPZLZLS2 on YPZLZL.YPZLBH=YPZLZLS2.YPZLBH ');
    sql.add('left join shoetest on YPZLZLS2.YPDH=shoetest.YPDH ');
    sql.add('left join ypzl on YPZLZLS2.YPDH=ypzl.YPDH ');
    sql.add('left join KFXXZL on ypzl.XieXing=KFXXZL.XieXing and ypzl.SheHao=KFXXZL.SheHao ');

//    IF Edit13.TEXT<>'' THEN
//      sql.add('left join YPZLZLS2 on YPZLZL.YPZLBH=YPZLZLS2.YPZLBH ');
    sql.add('where PD=''P''  ');
    IF Edit1.TEXT<>'' THEN
       sql.add('   AND YPZLZL.YPZLBH LIKE '+''''+edit1.Text+'%'+'''');
    IF Edit2.TEXT<>'' THEN
       sql.add('   and YPZLZL.JiJie like '+''''+GetSeasonString(edit2.Text)+'%'+'''');
    IF Edit3.TEXT<>'' THEN
       sql.add('   and YPZLZL.KFJD like '+''''+'%'+edit3.Text+'%'+'''');
    if Trim(TBEdit.Text) <> '' then
       sql.add('   and shoetest.testno like '+''''+Trim(TBEdit.Text)+'%'+'''');
    if Trim(YSSMEdit.Text) <> '' then
       sql.add('   and kfxxzl.YSSM like '+''''+Trim(YSSMEdit.Text)+'%'+'''');

    IF (Edit4.TEXT<>'') or (Edit12.TEXT <>'') THEN
    begin
       sql.add('   and YPZLZL.YPZLBH in (select YPZLBH from YPZLZLs ');
       sql.add('left join ypzl on ypzl.YPDH=YPZLZLS.YPDH ');
       sql.add('left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
       sql.add('left join kfzl on kfxxzl.KHDH = kfzl.kfdh');
       sql.add('where 1=1');
       IF Edit4.TEXT<>'' THEN
         sql.add('and kfxxzl.devcode like '+''''+'%'+edit4.Text+'%'+'''');
       IF Edit12.TEXT<>'' THEN
         sql.add('and kfzl.kfjc like '+''''+'%'+Edit12.Text+'%'+'''');
       sql.add(')');
    end;
    IF Edit13.TEXT<>'' THEN
       sql.add('and YPZLZLS2.clbh like '+''''+'%'+Edit13.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,YPZLZL.INSDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if ComboBox14.Text <> '' then
    begin
      sql.add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
      sql.add('and YPZLZL.GSBH= ''SKX'' ');
    end else
      sql.add('and YPZLZL.GSBH= '''+main.Edit2.Text+''' ');
    sql.add('group by YPZLZL.YPZLBH,YPZLZL.GSBH,YPZLZL.INSDATE,YPZLZL.KFJD,YPZLZL.JiJie,YPZLZL.DevType,YPZLZL.USERID,YPZLZL.USERDATE,YPZLZL.YN,YPZLZL.CALDATE,YPZLZL.PD,YPZLZL.memo,YPZLZL.ProductionLocation');
    sql.add('order by YPZLZL.YPZLBH DESC');
   // memo2.text:=sql.text;
    //showmessage(SQL.Text);
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BB8.Enabled:=true;
  YPZLZLS.Active:=true;
  Qry_Revise.Active:=TRUE;
  SupplierQry.Active:=true;
  //YPZLZLS11.Active:=true;
  //YPZLZLS2.Active:=true;
  //Qry_Summary.Active:=true;
  //本日庫存
  InsertKCCLDay();
{  if Label2.Visible = true then
    DBGrid3.Fields[11].Visible := true;
  if Label5.Visible = true then
    DBGrid3.Fields[12].Visible := true;
}
end;
//檢查產生KCCLDay 每日庫存暫存檔
procedure TSampleMerge.InsertKCCLDay();
var
   year,month,day:word;
   ayear,amonth:string;
begin
  decodedate(NDate,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('Delete from KCCLDAY where CKBH='''+main.Edit2.Text+''' and KCDay<='''+FormatDateTime('YYYYMMDD',Date()-1)+''' or dateadd(hh,-4,getdate())>UserDate');
    SQL.add('Select top 1 * from KCCLDAY where CKBH='''+main.Edit2.Text+''' and KCDay='''+FormatDateTime('YYYYMMDD',Date())+''' ');
    active:=true;
  end;
  //

  if Query1.RecordCount=0 then
  begin
    with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
      sql.add('begin   drop table #CLZLKC end   ');

      sql.Add('select CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp');
      sql.add('into #CLZLKC from CLZL with (nolock) ');
                   //期初庫存
      sql.add('left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as LastRem ');
      sql.add('           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR='+''''+ayear+'''');
      sql.add('           and KCMONTH='+''''+amonth+'''');
      sql.Add('           and KCCLMONTH.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');
            //入庫數量
      sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS with (nolock) ');
      sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
      sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''''  );
      sql.add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',Date())+''''  );
      sql.Add('           and KCRK.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');
             //出庫數量
      sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS  with (nolock) ');
      sql.add('           left join KCLL  with (nolock) on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
      sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''''  );
      sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',Date())+''''  );
      sql.add('           and KCLL.CFMID<>'+''''+'NO'+'''');
      sql.Add('           and KCLL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');
             //加工入庫數量
      sql.add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS with (nolock) ');
      sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''''  );
      sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',Date())+''''  );
      sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
      sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('           and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');
              //加工出庫數量
      sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK from JGZLS with (nolock) ');
      sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
      sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
      sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''''  );
      sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('                      '''+formatdatetime('yyyy/MM/dd',Date())+''''  );
     // sql.add('                      and JGZL.CFMID1 <>'+''''+'NO'+'''');
      sql.add('                      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('                      and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
      sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''''  );
      sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('           '''+formatdatetime('yyyy/MM/dd',Date())+''''  );
      sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
      sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('           and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH');
         //加工單開還未回來數量
      sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK from JGZLS with (nolock) ');
      sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
      sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('                      where  JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('                      and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
      sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
      sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('           and JGZL.CKBH='+''''+main.Edit2.Text+'''');
      sql.add('           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH');

      sql.add('Insert into  KCCLDAY    ');
      sql.add('select '''+FormatDateTime('YYYYMMDD',Date())+''' as TDay,'''+main.Edit2.Text+''' as CKBH,#CLZLKC.CLDH, ');
      sql.add('       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.RKQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as Qty,'''+main.Edit1.Text+''',GetDate() '); //20141027 修改取到小數第二位
      sql.add('from #CLZLKC ');
      sql.add('left join CLZL on CLZL.CLDH=#CLZLKC.CLDH ');
      sql.add('left join (select * from KCZLS  with (nolock) where CKBH='+''''+main.Edit2.Text+'''');
      sql.add('                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH');
      sql.add('  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null ');
      sql.add('               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null and #CLZLKC.JGCKTemp is null)');
      sql.add('and KCZLS.CKBH like '+''''+main.Edit2.Text+'%'+'''');
      sql.add('order by #CLZLKC.CLDH  ');
      ExecSQL();
    end;
  end;
  
  Query1.Active:=false;
end;
//
procedure TSampleMerge.FormCreate(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS4;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  if main.Edit2.Text = 'SKX' then
  begin
    Label5.Visible := true;
    YSSMEdit.Visible := true;
    Label24.Visible := true;
    ComboBox14.Visible := true;
  end;

end;

procedure TSampleMerge.BB2Click(Sender: TObject);
begin
with YPZLZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
//BBTT1.Visible:=true;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BB5.Enabled:=true;
BB6.Enabled:=true;
BB8.Enabled:=false;
PC1.Enabled:=false;
Button1.Enabled:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BB3Click(Sender: TObject);
begin
if YPZLZLS.recordcount=0 then
  begin
    with YPZLZL do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BB5.Enabled:=true;
BB6.Enabled:=true;
BB8.Enabled:=false;
PC1.Enabled:=false;
Button1.Enabled:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BB4Click(Sender: TObject);
begin
with YPZLZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BB5.Enabled:=true;
BB6.Enabled:=true;
BB8.Enabled:=false;
PC1.Enabled:=false;
Button1.Enabled:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    Ndate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
  try
    YPZLZL.first;
    for i:=1 to YPZLZL.RecordCount do
      begin
        case YPZLZL.updatestatus of
          usinserted:
            begin
              if YPZLZL.fieldbyname('JiJie').isnull then
                begin
                  YPZLZL.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select YPZLBH from YPZLZL   where YPZLBH like '+''''+y+m+'%'+'''');
                         sql.add('order by YPZLBH');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('YPZLBH').AsString;
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
                     YPZLZL.edit;
                     YPZLZL.fieldbyname('YPZLBH').Value:=a;
                     YPZLZL.fieldbyname('GSBH').Value:=main.Edit2.text;
                     YPZLZL.FieldByName('userID').Value:=main.edit1.text;
                     YPZLZL.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     YPZLZL.FieldByName('INSdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     //YPZLZL.FieldByName('CFMID').Value:='NO';
                     YPZLZL.FieldByName('YN').Value:='1';
                     YPZLZL.FieldByName('PD').Value:='P';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if YPZLZL.fieldbyname('YN').value='0'then
                begin
                  YPZLZLS1.active:=false;
                  YPZLZLS1.sql.Clear;
                  YPZLZLS1.sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH ');
                  YPZLZLS1.execsql;
                  YPZLZLS1.sql.Clear;
                  YPZLZLS1.sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH ');
                  YPZLZLS1.execsql;
                  upMas.apply(ukdelete);
                end
                else
                  begin

                            YPZLZL.edit;
                            YPZLZL.FieldByName('userID').Value:=main.edit1.text;
                            YPZLZL.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                            upMas.apply(ukmodify);


                  end;
             end;
        end;
       YPZLZL.next;
      end;
YPZLZL.active:=false;
YPZLZL.cachedupdates:=false;
YPZLZL.requestlive:=false;
YPZLZL.active:=true;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BB8.Enabled:=true;
PC1.Enabled:=true;
Button1.Enabled:=true;
//BBTT1.Visible:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TSampleMerge.BB6Click(Sender: TObject);
begin
with YPZLZL do
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
BB8.Enabled:=true;
PC1.Enabled:=true;
Button1.Enabled:=true;
//BBTT1.Visible:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TSampleMerge.BD2Click(Sender: TObject);
begin
  if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    abort;
  end;

  with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD5.Enabled:=true;
BD6.Enabled:=true;
Panel1.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;

end;

procedure TSampleMerge.BD3Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    panel1.visible:=true;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBTT2.Visible:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD5.Enabled:=true;
BD6.Enabled:=true;
Panel1.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BD4Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS4;
    panel1.visible:=true;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD5.Enabled:=true;
BD6.Enabled:=true;
Panel1.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMerge.BD5Click(Sender: TObject);
var i:integer;
begin
with YPZLZLS do
  begin
    first;
    while not YPZLZLS.Eof do
      begin
        if YPZLZLS.FieldByName('PAIRS').IsNull  then
          begin
            showmessage('The Pairs can not be empty.');
            abort;
          end;  
        next;
      end;
  end;

try
    YPZLZLS.first;
    for i:=1 to YPZLZLS.RecordCount do
      begin
        case YPZLZLS.updatestatus of
          usinserted:
            begin
              if YPZLZLS.fieldbyname('YPDH').isnull then
                begin
                  YPZLZLS.delete;
                end
                 else
                   begin
                     YPZLZLS.edit;
                     YPZLZLS.fieldbyname('YPZLBH').Value:=YPZLZL.fieldbyname('YPZLBH').Value;
                     YPZLZLS.FieldByName('userID').Value:=main.edit1.text;
                     YPZLZLS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     //YPZLZLS.FieldByName('BJLX').Value:='1';
                     YPZLZLS.FieldByName('YN').Value:='1';
                     upDet.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if YPZLZLS.fieldbyname('YN').value='0'then
                begin
                   UpDet.apply(ukdelete);
                end
                else
                  begin
                    YPZLZLS.edit;
                    YPZLZLS.FieldByName('userID').Value:=main.edit1.text;
                    YPZLZLS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                    upDet.apply(ukmodify);
                  end;
              end;
        end;
        YPZLZLS.next;
      end;
YPZLZLS.active:=false;
SupplierQry.Active:=false;
YPZLZLS.cachedupdates:=false;
YPZLZLS.requestlive:=false;
YPZLZLS.active:=true;
SupplierQry.Active:=true;
bb6.enabled:=false;
BBTT2.Visible:=false;
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BD5.Enabled:=false;
BD6.Enabled:=false;
Panel1.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TSampleMerge.BB7Click(Sender: TObject);
begin
close;
end;

procedure TSampleMerge.BBT1Click(Sender: TObject);
begin
YPZLZL.First;
end;

procedure TSampleMerge.BBT2Click(Sender: TObject);
begin
YPZLZL.prior;
end;

procedure TSampleMerge.BBT3Click(Sender: TObject);
begin
YPZLZL.next;
end;

procedure TSampleMerge.BBT4Click(Sender: TObject);
begin
YPZLZL.last;
end;

procedure TSampleMerge.BDT1Click(Sender: TObject);
begin
YPZLZLS.First;
end;

procedure TSampleMerge.BDT2Click(Sender: TObject);
begin
YPZLZLS.prior;
end;

procedure TSampleMerge.BDT3Click(Sender: TObject);
begin
YPZLZLS.next;
end;

procedure TSampleMerge.BDT4Click(Sender: TObject);
begin
YPZLZLS.last;
end;

procedure TSampleMerge.BD6Click(Sender: TObject);
begin
with YPZLZLS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BD5.Enabled:=false;
BD6.Enabled:=false;
Panel1.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TSampleMerge.YPZLZLSAfterOpen(DataSet: TDataSet);
begin
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;

if (NDate-YPZLZL.FieldByName('USERDATE').value)>90  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TSampleMerge.YPZLZLAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TSampleMerge.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TSampleMerge.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TSampleMerge.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSampleMerge.FormDestroy(Sender: TObject);
begin
SampleMerge:=nil;
end;

procedure TSampleMerge.BBTT2Click(Sender: TObject);
begin
  SampleMerge_CL:=TSampleMerge_CL.create(self);
  SampleMerge_CL.show;
  SampleMerge_CL.YPZLBHLabel.Caption:=YPZLZL.fieldbyname('YPZLBH').AsString;
end;

procedure TSampleMerge.BB8Click(Sender: TObject);
var J:Variant;
begin

  try
    with YPZLZLS1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from YPZLZLS where YPZLBH=:YPZLBH ');
      active:=true;
      if YPZLZLS1.RecordCount=0 then
      begin
        showmessage('No any Sample Order . Pls select  sample order first.');
        abort;
      end;
      active:=false;
      sql.Clear;
      sql.add('select * from YPZLZLS1 where YPZLBH=:YPZLBH  ');
      active:=true;
      if recordcount>0 then
        begin
          if messagedlg('You want to recalucate  again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
          begin
            active:=false;
            sql.Clear;
            sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH ');
            execsql;
            sql.Clear;
            sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH ');
            execsql;
          end else
          begin
              abort;
          end;
        end;
      active:=false;
      sql.clear;
      sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH  ');
      sql.add('  insert YPZLZLS1 ');
      sql.add('select  :YPZLBH as YPZLBH,YPDH,xh,BWBH,BWLB,CLBH,CSBH,LOSS,CLSL,CLDJ,Currency,Rate,Remark,JGZWSM,JGYWSM');
      sql.add('from ypzls');
      sql.add('where exists (select *  from  YPZLZLS WHERE  ypzls.YPDH=YPZLZLS.YPDH AND YPZLZLS.YPZLBH=:YPZLBH   ) ');
      //新增母件
      sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH');
      sql.add('  insert YPZLZLS2 ');
      sql.add('select  YPZLZLS.YPZLBH,ypzls.YPDH,ypzls.BWBH,IsNull(ypzls.CSBH,'''') as CSBH,');
      sql.add( ''''+'ZZZZZZZZZZ'+''''+' as MJBH,ypzls.CLBH,CLZL.CLZMLB as ZMLB,');
      sql.add(''''+'ZZZZZZ'+''''+' as SIZE, round(YPZLZLS.Pairs*ypzls.CLSL+0.0499,1) as CLSL,ypzls.CLSL as  USAGE ,');
      sql.add(''''+main.edit1.text+''''+'  as USERID,');
      sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,');
      sql.add(''''+'2'+''''+' as YN ');
      sql.add(' from YPZLZLS ');
      sql.add(' left join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
      sql.add(' left join CLZL on CLZL.CLDH=ypzls.CLBH ');
      sql.add(' where YPZLZLS.YPZLBH=:YPZLBH   ');
      //新增子件
      sql.add('  insert YPZLZLS2 ');
      // 20160310 average usage with extra multi size
      sql.Add(' select YPZLBH,YPDH,BWBH,ZSDH,MJBH,CLBH,ZMLB,SIZE,Sum(CLSL)  as CLSL,avg(usage) as Usage,Max(USERID) as USERID,Max(UserDate) as UserDate,Max(YN) as YN');
      sql.Add('from(');
      sql.add('select  YPZLZLS.YPZLBH,ypzls.YPDH,ypzls.BWBH,');
      sql.add('case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh ');
      sql.add(',ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      sql.add(''''+'ZZZZZZ'+''''+' as SIZE, round(YPZLZLS.Pairs*ypzls.CLSL*CLZHZL.SYL+0.0499,1) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
      sql.add(''''+main.edit1.text+''''+'  as USERID,');
      sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,');
      sql.add(''''+'2'+''''+' as YN ');
      sql.add(' from YPZLZLS ');
      sql.add(' INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
      sql.add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
      sql.add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');//2015/1/3新增開發子材料廠商對照
      sql.add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      sql.add(' where CLZHZL.SYL>0 and YPZLZLS.YPZLBH=:YPZLBH )A  ');
      sql.Add(' Group by YPZLBH,YPDH,BWBH,CLBH,ZSDH,MJBH,ZMLB,SIZE');
      execsql;
      //二階加工
      SQL.Clear;
      sql.add(' insert YPZLZLS2 ');
      SQL.Add(' select CLZHZL2.YPZLBH,CLZHZL2.YPDH,CLZHZL2.BWBH,');
      SQL.Add('        case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,');
      SQL.Add('        CLZHZL2.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      SQL.Add('        ''ZZZZZZ'' as SIZE, round(CLZHZL2.CLSL*CLZHZL.SYL,1) as CLSL,CLZHZL2.USAGE* CLZHZL.SYL as  USAGE ,');
      SQL.Add('        '''+main.edit1.text+'''  as USERID,'''+formatdatetime('yyyy/MM/dd',date)+''' as USERDATE,''2'' as YN ');
      SQL.Add('  from (');
      SQL.Add('select  YPZLZLS.YPZLBH,ypzls.YPDH,ypzls.BWBH,');
      SQL.Add('case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,');
      SQL.Add('ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      SQL.Add('''ZZZZZZ'' as SIZE, round(YPZLZLS.Pairs*ypzls.CLSL*CLZHZL.SYL+0.0499,1) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
      SQL.Add(''''+main.edit1.text+'''  as USERID,'''+formatdatetime('yyyy/MM/dd',date)+''' as USERDATE,''2'' as YN ');
      SQL.Add('  from YPZLZLS ');
      SQL.Add(' INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
      SQL.Add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');
      SQL.Add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      SQL.Add(' where CLZHZL.SYL>0 and YPZLZLS.YPZLBH=:YPZLBH and CLZL.CLZMLB=''Y'' ');
      SQL.Add(' ) CLZHZL2');
      SQL.Add(' INNER  JOIN CLZHZL   ON CLZHZL2.CLBH = CLZHZL.cldh ');
      SQL.Add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');
      SQL.Add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      SQL.Add(' where CLZHZL.SYL>0 ');
      execsql;
    //
    end;
    with YPZLZLS1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('update  YPZLZL set CALDATE= '+''''+formatdatetime('yyyy/MM/dd',date)+'''' +'  where YPZLBH=:YPZLBH ');
      execsql;
    end;
    j:=YPZLZL.fieldbyname('YPZLBH').Value;
    YPZLZL.Active:= false;
    YPZLZL.Active:= true;

    If  J<>' ' THEN   YPZLZL.Locate('YPZLBH',J,[]) ;

    showmessage('Calculate finished.');
  except
     On E:Exception do
     begin
       showmessage('Have wrong:'+E.Message);
     end;
  end;

end;

procedure TSampleMerge.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if YPZLZLS.FieldByName('YN').value='0' then
  begin
    DBGridEh8.canvas.font.color:=clred;
    DBGridEh8.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if YPZLZL.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.btn1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
  if (DBGrid4 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGrid4,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
end;

procedure TSampleMerge.Excel1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
  if (DBGridEh1 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh1,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.Excel2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
  if (DBGridEh2 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh2,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.MenuItem1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
if (DBGridEh4 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh4,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.Button2Click(Sender: TObject);
begin

  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with YPZLZLS11 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH,BWZL.ywsm BWMC,YPZLZLS1.CLBH,CLZL.YWPM as CLMC,');
    sql.add('           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS1.LOSS,YPZLZLS1.CLSL,CLZL.CLZMLB,kfxxzl.devcode ,kfxxzl.ARTICLE');
    sql.add(' FROM YPZLZLS1');
    sql.add('LEFT JOIN BWZL  ON YPZLZLS1.BWBH = BWZL.bwdh');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS1.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS1.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS1.YPDH');
    sql.add('LEFT JOIN kfxxzl  ON ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
    sql.add('where YPZLZLS1.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    IF Edit5.TEXT<>'' THEN
       sql.add(' AND kfxxzl.devcode='+''''+Edit5.Text+'''');
    sql.add('order by YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  
end;

procedure TSampleMerge.Button3Click(Sender: TObject);
begin
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with YPZLZLS2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS2.YPDH,YPZLZLS2.BWBH,BWZL.ywsm BWMC,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,');
    sql.add('           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CLSL,CLZL.CLZMLB,YPZLZLS2.USAGE,');
    sql.add('            YPZLZLS2.MJBH,YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.ARTICLE,kfxxzl.FD');
    sql.add(' FROM YPZLZLS2');
    sql.add('LEFT JOIN BWZL  ON YPZLZLS2.BWBH = BWZL.bwdh');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.Add('Left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and  ypzl.shehao=kfxxzl.shehao');
    sql.add('where YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    IF Edit6.TEXT<>'' THEN
       sql.add(' AND kfxxzl.devcode='+''''+Edit6.Text+'''');
    IF Edit8.TEXT<>'' THEN
       sql.add(' AND YPZLZLS2.CLBH='''+Edit8.TEXT+''' ');
    IF Edit10.TEXT<>'' THEN
       sql.add(' AND YPZLZLS2.MJBH='''+Edit10.TEXT+''' ');
    IF Edit9.TEXT<>'' THEN
       sql.add(' AND YPZLZLS2.CSBH='''+Edit9.TEXT+''' ');
    sql.add('group by YPZLZLS2.YPDH,YPZLZLS2.BWBH,BWZL.ywsm,YPZLZLS2.CLBH,CLZL.YWPM,');
    sql.add('           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CLSL,CLZL.CLZMLB,YPZLZLS2.USAGE,');
    sql.add('            YPZLZLS2.MJBH,YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.ARTICLE,kfxxzl.FD');
    sql.add('order by YPZLZLS2.YPDH  ASC, YPZLZLS2.BWBH  ASC,YPZLZLS2.MJBH DESC');
    active:=true;
  end;
end;

procedure TSampleMerge.RadioButton1Click(Sender: TObject);
begin
  RadioButton2.Checked:=false;
end;

procedure TSampleMerge.RadioButton2Click(Sender: TObject);
begin
  RadioButton1.Checked:=false;
end;

procedure TSampleMerge.Button4Click(Sender: TObject);
begin
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with Qry_Purchase do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,');
    sql.add('           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CLSL,');
    sql.add('            YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.ARTICLE ,ypzl.KFJD');
    sql.add('            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty as UseStock');
    sql.add('FROM YPZLZLS2');
    sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH='''+YPZLZL.FieldByName('GSBH').AsString+''' ');
    sql.add('left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH');
    sql.add('left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('left join (select cs.clbh,cs.Stage,cs.zlbh,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty');
    sql.add('                 from cgzlss cs');
    sql.add('                 left join cgzl on cgzl.cgno=cs.cgno');
    sql.add('                 left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
    sql.add('                 where cgzl.CGLX=''6'' ');
    sql.add('                 group by cs.clbh,cs.Stage,cs.zlbh');
    sql.add('                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl.kfjd and cg.zlbh=YPZL.Article');
    sql.add('where CLZL.CLZMLB=''N'' ');
    sql.add('      and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    if RadioButton1.Checked then
       begin
         sql.add('and zszlfilter.zsdh is null ');
         sql.add('and clzlfilter.cldh is null ');
       end;
    sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CSBH,kfxxzl.devcode,kfxxzl.ARTICLE,ypzl.KFJD');
    sql.add('          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty');
    sql.add('order by YPZLZLS2.YPDH  ASC');
    active:=true;
  end;
end;

procedure TSampleMerge.YPZLZLAfterScroll(DataSet: TDataSet);
begin
  YPZLZLS11.Active:=false;
  YPZLZLS2.Active:=false;
  Qry_Purchase.Active:=false;
end;

procedure TSampleMerge.Button5Click(Sender: TObject);
begin
  //上個月結盤點庫存用
  DBGridEh3.Columns[12].Title.Caption:='Stock';
  //
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  Qry_Article.Active:=false;
  
  with Qry_Summary do
  begin
    active:=false;                                                    
    sql.Clear;
    sql.add('select YPZL_Mat.*,cg.recs,cg.cgno,IsNull(cg.PurQty,0) as PurQty,IsNull(kcuse.UseStock,0) as UseStock,kcuse.stock_memo,IsNull(kcuse_all.UseStock,0) as SafeStock, ');
    sql.add('zszlSample.ZSDH_TW as ZSDH_VN,IsNull(KCCLMONTH.Qty,0) as StockQty,IsNull(MaterialMOQ.SampleLeadTime,14) as  SampleLeadTime, ');
    sql.add('case when substring(YPZL_Mat.csbh,1,3) <> ''JNG'' and substring(YPZL_Mat.CLBH,1,1) <> ''W'' then ');
    sql.add('(select isnull(sum(isnull(xqqty,0))-sum(isnull(qty,0)),0)+isnull((select sum(qty) from cgzls left join CGZL on CGZL.CGNO = cgzls.CGNO  where clbh = YPZL_Mat.CLBH and CGZL.GSBH = ''CDC'' ');
    sql.add('and cgzls.cgno not in (select distinct cgno from CGZLInvoiceS where CLBH = YPZL_Mat.CLBH)),0) from CGZLInvoiceS');
    sql.add('where CLBH = YPZL_Mat.CLBH) else 0 end as onthewayqty,clzl_flex.cldhflex,CGNoNeedUseStock.CLBH as CLBH_NotUS,Isnull(CGNotYet.CLBH,''NotBuy'') as CLBH_NotBuy ');
    sql.add('from     (select YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,clbzzl.bz as MatRemark');
    //sql.add('              ,CLZL.DWBH,ZSZL.ZSYWJC,case when substring(YPZLZLS2.CLBH,1,1) <> ''M'' then SUM(YPZLZLS2.CLSL) else SUM(YPZLZLS2.USAGE) end AS CLSL,YPZLZLS2.CSBH,BUsers.UserName,IsNull(cg.NoBuy,0) as NoBuy,IsNull(cuse.NoUse,0) as NoUse');
    sql.add('              ,CLZL.DWBH,ZSZL.ZSYWJC, SUM(YPZLZLS2.CLSL) AS CLSL,YPZLZLS2.CSBH,BUsers.UserName,IsNull(cg.NoBuy,0) as NoBuy,IsNull(cuse.NoUse,0) as NoUse');     //20241130 all material calculate the same
    sql.add('          FROM YPZLZLS2');
    sql.add('          LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('          LEFT JOIN YPZL on YPZL.YPDH=YPZLZLS2.YPDH');
    sql.add('          LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.Add('          LEFT JOIN clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb=''E'' ');
    sql.add('          LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+YPZLZL.FieldByName('GSBH').AsString+''' ');
    sql.add('          LEFT JOIN BUsers on ZSZL_DEV.SamplePurchaser=BUsers.UserID');
    sql.add('          left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH');
    sql.add('          left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH');
    //
    sql.add('          left join (select YPZLZLS2.CLBH,count(Distinct(YPZLZLS2.YPDH)) as NoBuy from YPZLZLS2,ypzl where ypzl.YPDH=YPZLZLS2.YPDH and YPZLZLS2.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+'''  and not exists (select cs.zlbh from cgzlss cs where cs.clbh=YPZLZLS2.CLBH and cs.Stage=ypzl.kfjd and cs.zlbh=YPZL.YPDH and cs.Qty>0) group by YPZLZLS2.CLBH ) cg on YPZLZLS2.CLBH=cg.CLBH ');
    sql.add('          left join (select YPZLZLS2.CLBH,count(Distinct(YPZLZLS2.YPDH)) as NoUse from YPZLZLS2,ypzl where ypzl.YPDH=YPZLZLS2.YPDH and YPZLZLS2.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+'''  and not exists (select cuse.zlbh from cgkcuse cuse where cuse.clbh=YPZLZLS2.CLBH and  cuse.zlbh=YPZL.YPDH and cuse.Qty>0) group by YPZLZLS2.CLBH ) cuse on YPZLZLS2.CLBH=cuse.CLBH ');
    sql.add('          where CLZL.CLZMLB=''N'' and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    if Edit_MatNo.Text<>'' then
        sql.add('            and YPZLZLS2.CLBH like '''+Edit_MatNo.Text+'%'' ');
    if Edit_MatName.Text<>'' then
        sql.add('            and CLZL.ywpm like ''%'+Edit_MatName.Text+'%'' ');
    if (Radio_PurMat.Checked) or (Radio_Wait.Checked) then  //選擇未採購和採購件...都要過濾
       begin
         sql.add('           and zszlfilter.zsdh is null ');
         sql.add('           and clzlfilter.cldh is null ');
       end;
    if (Radio_Wait.Checked) then     //只顯示未採購未使用庫存的材料
       begin
         //sql.add('           and not exists (select clbh from cgzlss where qty>0 and cgzlss.zlbh=YPZL.YPDH and cgzlss.clbh=YPZLZLS2.clbh and cgzlss.Stage=ypzl.kfjd  ) ');
         //20150805修改
         sql.add('             and (IsNull(cg.NoBuy,0)>0 or IsNull(cuse.NoUse,0)>0) ');
       end;
    if Edit_Supplier.text<>'' then
         sql.add('           and ZSZL.ZSYWJC like ''%'+Edit_Supplier.text+'%''');
    sql.add('          group by  YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,cg.NoBuy,cuse.NoUse,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,YPZLZLS2.CSBH,BUsers.UserName,clzlfilter.cldh,clbzzl.bz');
    sql.add('          ) YPZL_Mat');
    sql.add('left join (select cs.clbh,count(cs.clbh) as recs, min(cs.cgno) as cgno,sum(CS.Qty) as PurQty');
    sql.add('            from cgzlss cs');
    sql.add('            where exists (select ypzl.YPDH from YPZLZLS2,ypzl ');
    sql.add('                          where ypzl.YPDH=YPZLZLS2.YPDH and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                                and cs.clbh=YPZLZLS2.CLBH and cs.Stage=ypzl.kfjd and cs.zlbh=YPZL.YPDH )  ');
    sql.add('            group by cs.clbh ');
    sql.add('           ) cg on cg.clbh=YPZL_Mat.CLBH ');
    sql.add('left join (select cgkcuse.clbh,sum(cgkcuse.qty) as UseStock,MAX(cgkcuse.memo) as stock_memo from cgkcuse ');
    sql.add('            where exists (select YPDH from YPZLZLS2 ');
    sql.add('                          where  YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                                 and cgkcuse.clbh=YPZLZLS2.CLBH and cgkcuse.zlbh=YPZLZLS2.ypdh  )  ');
    sql.add('                  and cgkcuse.GSBH='''+YPZLZL.FieldByName('GSBH').AsString+''' ');
    sql.add('            group by cgkcuse.clbh ');
    sql.add('           ) kcuse on kcuse.clbh=YPZL_Mat.CLBH ');
    //20150727 45天內使用的Cgkcuse
    sql.add('left join (select cgkcuse.clbh,sum(cgkcuse.qty) as UseStock from cgkcuse ');
    sql.add('            where cgkcuse.userdate>getdate()-45 ');
    sql.add('                  and cgkcuse.GSBH='''+YPZLZL.FieldByName('GSBH').AsString+''' ');
    sql.add('            group by cgkcuse.clbh ');
    sql.add('           ) kcuse_all on kcuse_all.clbh=YPZL_Mat.CLBH ');
    //
    sql.add('left join ZSZL_DEV zszlSample on zszlSample.ZSDH=YPZL_Mat.csbh');
    //20150930 add zszl_dev gsbh
    sql.Add('and zszlSample.GSBH='''+main.Edit2.Text+'''');
    //20150228 顯示上個月盤存庫存 - Season Stage 以使用的庫存
    sql.add('left join ( ');
    sql.add('  select KCCLDay.CLBH,KCCLDay.Qty from KCCLDay  ');
    sql.add('  where KCCLDay.KCDay='''+FormatDateTime('YYYYMMDD',Date())+''' and KCCLDay.CKBH='''+YPZLZL.FieldByName('GSBH').AsString+''' ');
    sql.add(') KCCLMONTH on KCCLMONTH.CLBH=YPZL_Mat.CLBH  ');
    //LeadTime  weston 20150421 修改
    sql.add('Left join (select CLBH,SampleLeadTime from ( select CLBH,SampleLeadTime,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from MaterialMOQ ');
    sql.add(') A where A.rn=1 ) MaterialMOQ on MaterialMOQ.CLBH=YPZL_Mat.CLBH ');
    sql.Add('left join clzl_flex on clzl_flex.CLDH=YPZL_Mat.CLBH');
    sql.Add('left join CGNoNeedUseStock on CGNoNeedUseStock.CLBH=YPZL_Mat.CLBH and CGNoNeedUseStock.GSBH='''+main.Edit2.Text+''' ');
    sql.Add('left join ( Select CLBH  ');
    sql.Add('			       From (select * From CGZLS Union All Select * From CGZLS_2014) CGZLS ');
    sql.Add('         	 Left join (select * From CGZL Union All SElect * From CGZL_2014) CGZL on CGZLS.cgno=CGZL.CGNO ');
    sql.Add('			       Where CGZL.GSBH='''+main.Edit2.Text+''' and CLBH in ( Select CLBH From YPZLZLS2 Where YPZLZLS2.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+''') ');
    sql.Add('         	 Group by CLBH ) CGNotYet on CGNotYet.CLBH=YPZL_Mat.CLBH ');
    //
    sql.add('where 1=1 ');
    //採購用量大於0
    if CKCLSL.Checked=true then
       sql.add(' and YPZL_Mat.CLSL>0 ');
    IF Chk_Mine.Checked then
       sql.add(' and zszlSample.SamplePurchaser='''+main.Edit1.Text+'''');
    //尚未採購
    if (Radio_Wait.Checked) then
    begin
       sql.add(' and ( (CLSL>IsNULL(PurQty,0)) or ((IsNULL(PurQty,0)>0) and (YPZL_Mat.NoBuy>0)) or ((IsNULL(kcuse.UseStock,0)>0) and (YPZL_Mat.NoUse>0)) )  ');
       sql.add(' and ( (CLSL>IsNULL(kcuse.UseStock,0)) or ((IsNULL(PurQty,0)>0) and (YPZL_Mat.NoBuy>0))  or ((IsNULL(kcuse.UseStock,0)>0) and (YPZL_Mat.NoUse>0)) ) ');
    end;
    sql.add('order by YPZL_Mat.ZSYWJC ');
    //funcobj.WriteErrorLog(sql.Text);
    //memo2.text:=sql.text;
    //showmessage(SQL.Text);
    active:=true;
  end;

  with Qry_Article do
  begin
    active:=false;
    sql.Clear;
    //sql.add('select YPZLZLS2.YPDH,Max(YPZLZLS2.BWBH) as BWBH,YPZLZLS2.CLBH,CLZL.DWBH,case when substring(YPZLZLS2.CLBH,1,1) <> ''M'' then SUM(YPZLZLS2.CLSL) else SUM(YPZLZLS2.USAGE) end AS CLSL,kfxxzl.devcode,kfxxzl.ARTICLE ,ypzl.KFJD ');
    sql.add('select YPZLZLS2.YPDH,Max(YPZLZLS2.BWBH) as BWBH,YPZLZLS2.CLBH,CLZL.DWBH,SUM(YPZLZLS2.CLSL) AS CLSL,kfxxzl.devcode,kfxxzl.ARTICLE ,ypzl.KFJD ');      //20241130 all material calculate the same
    sql.add('       ,YPZLZLS.PAIRS,IsNull(cgkcuse.qty,0) as UseStock,ypzl.YPCCO,kfxxzl.FD,IsNull(CGZLSS.Qty,0) as CGQty,ypzl.productionlocation,kfxxzl.YSSM  ');
    sql.add('FROM YPZLZLS2 ');
    sql.add('Inner JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH ');
    sql.add('Inner JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh ');
    sql.add('Inner JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH ');
    sql.add('Inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    //20150522修改
   // sql.Add (' left JOIN  (select ZLBH,Sum(Qty) as Qty from CGZLSS where  CGZLSS.CLBH=:CLBH and CGZLSS.Stage='''+YPZLZL.FieldByName('KFJD').AsString+'''  Group By ZLBH,CLBH) CGZLSS on CGZLSS.ZLBH=ypzl.YPDH');
    //20150930
    sql.Add (' left JOIN  (select ZLBH,Sum(Qty) as Qty, Stage from CGZLSS where  CGZLSS.CLBH=:CLBH  Group By ZLBH,CLBH,Stage) CGZLSS on CGZLSS.ZLBH=ypzl.YPDH and CGZLSS.Stage=ypzl.KFJD');
    sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH='''+YPZLZL.FieldByName('GSBH').AsString+''' ');
    sql.add('where  YPZLZLS2.CLBH=:CLBH ');
    sql.add('       and YPZLZLS2.YPZLBH=:YPZLBH ');
    sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,kfxxzl.devcode,kfxxzl.ARTICLE  ,ypzl.KFJD ');
    sql.add('         ,YPZLZLS.PAIRS ,cgkcuse.qty,ypzl.YPCCO,kfxxzl.FD,CGZLSS.Qty,ypzl.productionlocation,kfxxzl.YSSM    ');
    sql.add('order by kfxxzl.devcode  ASC  ');
    //showmessage(SQL.Text);
    active:=true;
  end;

end;

procedure TSampleMerge.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((Qry_Summary.FieldByName('UseStock').AsFloat+Qry_Summary.FieldByName('PurQty').AsFloat)<Qry_Summary.FieldByName('CLSL').AsFloat ) then
  begin
    DBGridEh3.canvas.font.color:=clred;
    DBGridEh3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
  if ((Qry_Summary.FieldByName('PurQty').AsFloat>0) and (Qry_Summary.FieldByName('NoBuy').AsInteger>0)) then          //
  begin
    if DataCol=7 then
    begin
      DBGridEh3.canvas.font.Color:=clred;
      DBGridEh3.canvas.Brush.Color:=clyellow;
      DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
  if ((Qry_Summary.FieldByName('UseStock').AsFloat>0) and (Qry_Summary.FieldByName('NoUse').AsInteger>0)) then          //
  begin
    if DataCol=8 then
    begin
      DBGridEh3.canvas.font.Color:=clred;
      DBGridEh3.canvas.Brush.Color:=clyellow;
      DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  if (Qry_Summary.FieldByName('CLBH_NotUS').Asstring <>'') and (Qry_Summary.FieldByName('UseStock').AsFloat=0)  then
  begin
    DBGridEh3.canvas.font.color:=clblue;
    DBGridEh3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.Radio_PurMatClick(Sender: TObject);
begin
  Radio_Wait.Checked:=false;
  Radio_All.Checked:=false;
end;

procedure TSampleMerge.Radio_AllClick(Sender: TObject);
begin
  Radio_Wait.Checked:=false;
  Radio_PurMat.Checked:=false;
end;

procedure TSampleMerge.MenuItem2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';
if (DBGridEh3 is TDBGridEh) then
  if dlgSave1.Execute then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
        dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh3,dlgSave1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(dlgSave1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;

end;

procedure TSampleMerge.YPZLZLCalcFields(DataSet: TDataSet);
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('     select ypzls.CLBH ');
      sql.add('     from YPZLZLS ');
      sql.add('     left join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
      sql.add('     left join CLZL on CLZL.CLDH=ypzls.CLBH ');
      sql.add('     where CLZL.CLZMLB=''N'' and YPZLZLS.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
      sql.add('           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 where YPZLZLS2.CLBH=ypzls.CLBH AND YPZLZLS2.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+''')');
      sql.add('     union all ');
      sql.add('     select CLZHZL.CLDH1 as CLBH ');
      sql.add('     from YPZLZLS ');
      sql.add('     INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
      sql.add('     INNER  JOIN CLZHZL ON ypzls.CLBH = CLZHZL.cldh ');
      sql.add('     left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      sql.add('     where CLZHZL.SYL>0 and CLZL.CLZMLB=''N'' and YPZLZLS.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
      sql.add('           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 where YPZLZLS2.CLBH=CLZHZL.CLDH1 AND YPZLZLS2.YPZLBH='''+YPZLZL.FieldByName('YPZLBH').AsString+''')');
      active:=true;
      if query1.RecordCount>0 then
         begin
           YPZLZL.FieldByName('revise').Value:='Waiting Re-Cal' ;
         end;
      active:=false;
    end;

end;

procedure TSampleMerge.Radio_WaitClick(Sender: TObject);
begin
  Radio_PurMat.Checked:=false;
  Radio_All.Checked:=false;
end;

procedure TSampleMerge.PurchaseOrder1Click(Sender: TObject);
var bm:Tbookmark;
    y,m,a,Supp_TW_ID,Article_All:string;
    i,j:integer;
    Qty:real;
    bookmarklist:tbookmarklistEH;
begin
  if not Qry_Summary.Active then
     abort;
  if (Qry_Summary.recordcount<1) then
     abort;
  if (YPZLZL.FieldByName('JiJie').AsString='') or (YPZLZL.FieldByName('KFJD').AsString='')  then
     begin
       showmessage('Pls keyin [Season]&[Stage] first!');
       abort;
     end;
  if PurSample<>nil then  //檢查採購單程式是否有被開啟
     begin
       if (PurSample.BB5.Enabled=true) or (PurSample.BD5.Enabled=true) or (PurSample.BO3.Enabled=true) then //是否在編輯狀態
          begin
            PurSample.show;
            PurSample.windowstate:=wsmaximized;
            showmessage('Pls save Purchase Order first ');
            abort;
          end;
     end;
  if messagedlg('Do you really want to generate Purchase Order?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
     abort;
  with query1 do          //取服務器的年月值 為產生採購單號用
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
  //開始產生採購單
  Supp_TW_ID:='';
  Qry_Summary.disablecontrols;
  bm:=Qry_Summary.getbookmark;
  bookmarklist:=DBGridEh3.selectedrows;
  if bookmarklist.count=0 then
     begin
       showmessage('Pls choose data first !');
       abort;
     end;
  if bookmarklist.count>0 then
     begin
       try
           Qry_Summary.gotobookmark(pointer(bookmarklist[0]));
           if Qry_Summary.FieldByName('CSBH').AsString='' then //201404 weston開發採購修改顯示以台灣廠商為主
              begin
                showmessage('Supplier ID is empty! please revsie Spec.');
                exit;
              end;
           Supp_TW_ID:=Qry_Summary.FieldByName('CSBH').AsString ; //記錄選取第一筆的VN廠商代號
         //計算採購單流水號
         with query1 do
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
         //新增採購單頭檔CGZL
         with query1 do
           begin
             active:=false;
             sql.Clear;
             sql.Add('insert CGZL ');
             sql.Add('(CGNO');
             sql.Add(',GSBH');
             sql.Add(',CGLX');
             sql.Add(',ZSBH');
             sql.Add(',SEASON');
             sql.Add(',PURPOSE');
             sql.add(',DevType');
             sql.Add(',USERID,USERDATE,CGDate,YN) values (');
             sql.Add(' '''+a+'''');
             sql.Add(','''+main.Edit2.text+'''');
             sql.Add(',''6'' ');
             sql.Add(','''+Supp_TW_ID+'''');  //廠商代號
             sql.Add(','''+GetSeasonString(YPZLZL.FieldByName('JiJie').AsString)+'''');  //SEASON
             sql.Add(','''+YPZLZL.FieldByName('KFJD').AsString+'''');  //PURPOSE
             sql.Add(','''+YPZLZL.FieldByName('DevType').AsString+'''');  //20150126 DevType
             sql.Add(','''+main.edit1.Text+'''');
             sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
             sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
             sql.Add(',''1'')');
             execsql;
             active:=false;
           end;

       //新增採購單身檔CGZLS
         for i:=0 to bookmarklist.count-1 do
         begin
           Qry_Summary.gotobookmark(pointer(bookmarklist[i]));
           if Supp_TW_ID<>Qry_Summary.FieldByName('CSBH').AsString then break;//20141204 修正材料不同廠商
           with Qry_Article_PO do
           begin
             active:=false;
             sql.Clear;
             //sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,case when substring(YPZLZLS2.CLBH,1,1) <> ''M'' then SUM(YPZLZLS2.CLSL) else SUM(YPZLZLS2.USAGE) end AS CLSL,'); //  SUM(YPZLZLS2.CLSL) AS CLSL 用量管控前寫法   //2019/05/30賴經理要求用量管控拿掉
            // sql.add(' case when left(YPZLZLS2.CLBH,1)=''F''  then SUM(YPZLZLS2.CLSL)*1.5 when (left(YPZLZLS2.CLBH,1)=''K'' or left(YPZLZLS2.CLBH,1)=''A'' or left(YPZLZLS2.CLBH,1)=''D'' ');
            // sql.add(' or left(YPZLZLS2.CLBH,1)=''E'') then SUM(YPZLZLS2.CLSL)*1.2 else SUM(YPZLZLS2.CLSL) end as CLSL,');
             //  用量管控後改為皮、布、PU、鞋帶與配件依照需求*1.2或1.5倍
             sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,SUM(YPZLZLS2.CLSL) AS CLSL,');
             sql.add(' ypzl.ARTICLE ,ypzl.KFJD ');
             sql.add('            ,cgkcuse.qty as UseStock,ypzl.YPCC ');
             sql.add('FROM YPZLZLS2 ');
             sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH ');
             sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH ');
             sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH='''+main.Edit2.Text+''' ');
             sql.add('where  YPZLZLS2.CLBH='''+Qry_Summary.FieldByName('CLBH').AsString+'''');
             sql.add('       and YPZLZLS2.YPZLBH='''+Qry_Summary.fieldbyname('YPZLBH').AsString+'''');
             if not CheckBox1.Checked then
               begin
                 sql.add('       and isnull(cgkcuse.qty,0)=0 ');
               end;
             sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,ypzl.ARTICLE ,ypzl.KFJD ');
             sql.add('          ,cgkcuse.qty,ypzl.YPCC ');
             active:=true;
           end;
           if  Qry_Article_PO.RecordCount>0 then
           begin
             with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('insert CGZLS ');
               sql.Add('(CGNO');
               sql.Add(',BJNO');
               sql.Add(',YQDate');
               sql.Add(',CLBH');
               sql.Add(',Qty');
               sql.Add(',USPrice');
               sql.Add(',JGNO');    //填Merge NO
               sql.Add(',USERID,USERDATE,YN,XqQty) values (');
               sql.Add(' '''+a+''' ');
               sql.Add(',''Sample'' ');  //固定填Sample
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate+Qry_Summary.fieldbyname('SampleLeadTime').AsInteger)+'''');  //需求日期固定加14天
               sql.Add(','''+Qry_Summary.fieldbyname('CLBH').AsString+'''');
               sql.Add(',0 '); //Qty填0
               sql.Add(',0 '); //USPrice填0
               sql.Add(','''+YPZLZL.fieldbyname('YPZLBH').AsString+'''');     //填Merge NO
               sql.Add(','''+main.edit1.Text+'''');
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
               sql.Add(',''1'','+Qry_Summary.fieldbyname('CLSL').AsString +')');
               execsql;
               active:=false;
             end;
             //新增採購單第三層CGZLSS
             Article_all:='';
             Qry_Article_PO.First;
             for j:=1 to Qry_Article_PO.RecordCount do
               begin
                 with Query2 do
                 begin
                   active:=false;
                   sql.Clear;
                   sql.add('select IsNull(KFXXZL.devcode,''ALL'') as Article,KFXXZL.FD,kfxxzl.yssm');
                   sql.add('from KFXXZL ');
                   sql.add('Left join YPZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing ');
                   sql.add('where  YPZL.YPDH='''+Qry_Article_PO.fieldbyname('YPDH').AsString+'''');
                   active:=true;
                 end;

                 with query1 do
                 begin
                 active:=false;
                 sql.Clear;
                 sql.Add('insert CGZLSS ');
                 sql.Add('(CGNO');
                 sql.Add(',ZLBH');   //Article
                 sql.Add(',XXCC');   //Size
                 sql.Add(',Stage');
                 sql.Add(',YQDate');
                 sql.Add(',CLBH');
                 sql.Add(',Qty');
                 sql.Add(',CLSL');
                 sql.Add(',USERID,USERDATE,YN) values (');
                 sql.Add(' '''+a+''' ');
                 sql.Add(','''+Qry_Article_PO.fieldbyname('YPDH').AsString+''''); //20150522 weston 修改儲存 Aritlce 改成 YPDH
                 if ((COPY(Qry_Summary.FieldByName('CLBH').AsString,1,3)='J03') or (COPY(Qry_Summary.FieldByName('CLBH').AsString,1,3)='J02')  or (Qry_Article.FieldByName('BWBH').AsString='D004') or (Qry_Article.FieldByName('BWBH').AsString='D009') ) then //只有大底/中底要填SIZE
                    sql.Add(','''+Qry_Article_PO.fieldbyname('YPCC').AsString+'''')
                 else
                    sql.Add(',''ZZZZZZ'' ');
                 sql.Add(','''+Qry_Article_PO.fieldbyname('KFJD').AsString+'''');
                 sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate+7)+'''');  //需求日期固定加7天
                 sql.Add(','''+Qry_Summary.fieldbyname('CLBH').AsString+'''');
                 sql.Add(','+Qry_Article_PO.fieldbyname('CLSL').AsString+' '); //Qty填0.1
                 sql.Add(','+Qry_Article_PO.fieldbyname('CLSL').AsString+'');
                 sql.Add(','''+main.edit1.Text+'''');
                 sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                 sql.Add(',''1'')');
                 execsql;
                 active:=false;
                 end;
                 if main.Edit2.Text = 'SKX' then
                   Article_all:=Article_all+Query2.fieldbyname('Article').AsString+' / ' + Query2.fieldbyname('YSSM').AsString +'('+Query2.fieldbyname('FD').AsString+'),'
                 else
                   Article_all:=Article_all+Query2.fieldbyname('Article').AsString+'('+Query2.fieldbyname('FD').AsString+'),' ;
                 Qry_Article_PO.next;
               end;
               //跑完CGZLSS的資料後，講ARTICLE_ALL回寫到CGZLS
               with query1 do
               begin
                 active:=false;
                 sql.Clear;
                 sql.add('UPDATE CGZLS set article_all='+''''+Article_all+'''' );
                 sql.add(' where CGZLS.CGNO='+''''+a+'''');
                 sql.add('       and CGZLS.CLBH='+''''+Qry_Summary.FieldByName('CLBH').AsString+'''');
                 execsql;
                 close;
               end;

           end;
         end;
       finally
         begin
           Qry_Summary.gotobookmark(bm);
           Qry_Summary.freebookmark(bm);
           Qry_Summary.enablecontrols;
         end;
       end;
     end;

  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('UPDATE CGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from CGZLSS WHERE CGZLSS.CGNO=CGZLS.CGNO AND CGZLSS.CLBH=CGZLS.CLBH  ');
      sql.add('  and CGZLSS.CGNO='+''''+A+'''' +' GROUP BY CGNO,CLBH),0) ');
      sql.add(' where CGZLS.CGNO='+''''+A+'''');
      execsql;
      close;
    end;

  Button5Click(NIL);
  showmessage('finish !');
  //自動開啟採購單畫面
  if PurSample<>nil then
  begin
    PurSample.show;
    PurSample.windowstate:=wsmaximized;
  end
  else
    begin
      PurSample:=TPurSample.create(self);
      PurSample.show;
    end;
  if (PurSample.BB5.Enabled=true) or (PurSample.BD5.Enabled=true) or (PurSample.BO3.Enabled=true) then
     begin
       showmessage('Pls save data first ');
       abort;
     end;

  PurSample.Edit1.Text:=a;
  PurSample.Check.Checked:=false;
//  PurSample.DTP1.Date:=date-360;
  PurSample.Button1Click(nil);
end;

procedure TSampleMerge.Button6Click(Sender: TObject);
begin
  IF NOT YPZLZL.Active THEN
     BEGIN
       ABORT;
     END;
  with Qry_MergeNOCheck do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC');
    sql.add('       ,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS CLSL');
    sql.add('       ,YPZLZLS2.CSBH,kfxxzl.devcode ,ypzl.article,ypzl.KFJD');
    sql.add('       ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty as UseStock');
    sql.add('FROM YPZLZLS2');
    sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH');
    sql.add('LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH');
    sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.add('left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH='''+YPZLZL.FieldByName('GSBH').AsString+''' ');
    sql.add('left join zszlfilter on zszlfilter.zsdh=YPZLZLS2.CSBH');
    sql.add('left join clzlfilter on clzlfilter.cldh=YPZLZLS2.CLBH');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('left join (select cs.clbh,cs.Stage,cs.zlbh,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty');
    sql.add('                 from cgzlss cs');
    sql.add('                 left join cgzl on cgzl.cgno=cs.cgno');
    sql.add('                 left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
    sql.add('                 where cgzl.CGLX=''6'' ');
    sql.add('                       and cgzlS.JGNO='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                 group by cs.clbh,cs.Stage,cs.zlbh');
    sql.add('                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl.kfjd and cg.zlbh=YPZL.Article');
    sql.add('where CLZL.CLZMLB=''N'' ');
    sql.add('      and YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    if RadioButton1.Checked then
       begin
         sql.add('and zszlfilter.zsdh is null ');
         sql.add('and clzlfilter.cldh is null ');
       end;
    if Edit7.text<>'' then
         sql.add('           and ZSZL.ZSYWJC like ''%'+Edit7.text+'%''');
    sql.add('group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CSBH,kfxxzl.devcode,ypzl.article,ypzl.KFJD');
    sql.add('          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PAIRS,cgkcuse.qty');

    sql.add('union all');      //要加上顯示該Mergo NO所產生的採購單...但已不存在Merge 中....

    sql.add('select '''' as YPDH,cgzlss.CLBH,CLZL.YWPM as CLMC');
    sql.add('       ,CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,0 AS CLSL');
    sql.add('       ,cgzl.ZSBH as CSBH,'''' as devcode,cgzlss.ZLBH as article ,cgzlss.stage as KFJD');
    sql.add('       ,1 as recs,cgzl.cgdate,cgzls.yqdate,cgzls.cgno,cgzlss.Qty as PurQty,0 as PAIRS,0 as UseStock');
    sql.add('FROM cgzlss');
    sql.add('left join cgzl on cgzl.cgno=cgzlss.cgno');
    sql.add('left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.clbh');
    sql.add('LEFT JOIN CLZL ON cgzls.CLBH=CLZL.cldh');
    sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=cgzl.ZSBH');
    sql.add('where cgzl.CGLX=''6'' ');
    sql.add('      and cgzlS.JGNO='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('      and not exists (select YPZLBH from YPZLZLS2 ');
    sql.add('                      LEFT JOIN ypzl ON ypzl.YPDH=YPZLZLS2.YPDH');
    sql.add('                      where YPZLZLS2.YPZLBH='+''''+YPZLZL.FieldByName('YPZLBH').AsString+'''');
    sql.add('                            and ypzl.Article=cgzlss.ZLBH and YPZLZLS2.CLBH=cgzlss.CLBH and ypzl.KFJD=cgzlss.stage )');
    if Edit7.text<>'' then
       sql.add('   and ZSZL.ZSYWJC like ''%'+Edit7.text+'%''');
    //sql.add('order by YPZLZLS2.YPDH  ASC');
    active:=true;
  end;

end;

procedure TSampleMerge.HideCKClick(Sender: TObject);
begin
  if  YPZLZL.Active then
  begin
    if  (YPZLZL.recordcount>0) then
      begin
        PC1.ActivePage:=TabSheet3;
        panel1.Visible:=Not HideCK.Checked;
      end;
  end;
end;

procedure TSampleMerge.xlsBtnClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
    if  Qry_Summary.active  then
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
          eclApp.Cells(1,1):='Material code';
          eclApp.Cells(1,2):='Material Description';
          eclApp.Cells(1,3):='SupplierID';
          eclApp.Cells(1,4):='SupplierName';
          eclApp.Cells(1,5):='Purchaser';
          eclApp.Cells(1,6):='Usage';
          eclApp.Cells(1,7):='PurQty';
          eclApp.Cells(1,8):='UseStock';
          eclApp.Cells(1,9):='UseStockMemo';
          eclApp.Cells(1,10):='SafeStock';
          eclApp.Cells(1,11):='StockQty';
          eclApp.Cells(1,12):='Unit';
          eclApp.Cells(1,13):='PurchaseNO';
          eclApp.Cells(1,14):='VNPayID';
          eclApp.Cells(1,15):='recs';
          eclApp.Cells(1,16):='SampleLeadTime';
          Qry_Summary.First;
          j:=2;
          while   not   Qry_Summary.Eof   do
            begin
               for   i:=1   to   Qry_Summary.fieldcount-1 do
                begin
                  while   not   Qry_Article.Eof   do
                  begin
                     for   k:=1   to   Qry_Article.fieldcount-1 do
                     begin
                        eclApp.Cells(j,1):=Qry_Summary.FieldByName('clbh').value;
                        eclApp.Cells(j,2):=Qry_Summary.FieldByName('CLMC').value;
                        eclApp.Cells(j,3):=Qry_Summary.FieldByName('csbh').value;
                        eclApp.Cells(j,4):=Qry_Summary.FieldByName('zsywjc').value;
                        eclApp.Cells(j,5):=Qry_Summary.FieldByName('username').value;
                        eclApp.Cells(j,6):=Qry_Summary.FieldByName('CLSL').value;
                        eclApp.Cells(j,7):=Qry_Summary.FieldByName('purQty').value;
                        eclApp.Cells(j,8):=Qry_Summary.FieldByName('usestock').value;
                        eclApp.Cells(j,9):=Qry_Summary.FieldByName('stock_memo').value;
                        eclApp.Cells(j,10):=Qry_Summary.FieldByName('safestock').value;
                        eclApp.Cells(j,11):=Qry_Summary.FieldByName('stockqty').value;
                        eclApp.Cells(j,12):=Qry_Summary.FieldByName('dwbh').value;
                        eclApp.Cells(j,13):=Qry_Summary.FieldByName('cgno').value;
                        eclApp.Cells(j,14):=Qry_Summary.FieldByName('zsdh_VN').value;
                        eclApp.Cells(j,15):=Qry_Summary.FieldByName('recs').value;
                        eclApp.Cells(j,16):=Qry_Summary.FieldByName('sampleleadtime').value;
                        eclApp.Cells(j,17):=Qry_Article.FieldByName('devcode').value;
                     end;
                     Qry_Article.Next;
                     inc(j);
                  end;
                end;
            Qry_Summary.Next;
            end;
         eclapp.columns.autofit;
         Qry_Article.Active:=false;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

procedure TSampleMerge.DBGrid4DblClick(Sender: TObject);
begin
  Edit8.Text:=SupplierQry.FieldByName('CLBH').AsString;
  Edit9.Text:=SupplierQry.FieldByName('CSBH').AsString;
  PC1.ActivePageIndex:=2;
  Button3.Click;
end;

procedure TSampleMerge.Button7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  YPZLZLS2.active  then
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
          for   i:=0   to   DBGridEh3.Columns.Count-1   do
            begin
                eclApp.Cells(1,i+1):=DBGridEh2.Columns[i].Title.Caption;
            end;

          YPZLZLS2.First;
          j:=2;
          while   not   YPZLZLS2.Eof   do
            begin
              for   i:=0   to  DBGridEh2.Columns.Count-1   do
              begin
                eclApp.Cells(j,i+1):=DBGridEh2.Columns[i].Field.Value;//Qry_Summary.Fields[i].Value;
              end;
            YPZLZLS2.Next;
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

procedure TSampleMerge.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((Qry_Article.FieldByName('UseStock').AsFloat+Qry_Article.FieldByName('CGQty').AsFloat)<Qry_Article.FieldByName('CLSL').AsFloat ) then
  begin
    DBGridEh5.canvas.font.color:=clred;
    DBGridEh5.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Qry_Purchase.FieldByName('PurQty').isnull) and (Qry_Purchase.FieldByName('UseStock').isnull) then
  begin
    DBGridEh4.canvas.font.color:=clred;
    DBGridEh4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge.DBGridEh3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Qry_Article.Active:=false;
end;

procedure TSampleMerge.DBGridEh3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if DBGridEh5.Visible=true then
    if Qry_Summary.Active=true then
       Qry_Article.Active:=true;
end;

procedure TSampleMerge.UseStock1Click(Sender: TObject);
var i,j,ZeroCLSL_SR:integer;
    LastUseStock,AvageUseStock,UseStock:double;
begin
  if not Qry_Summary.Active then
     abort;
  if (Qry_Summary.recordcount<1) then
     abort;
  if (YPZLZL.FieldByName('JiJie').AsString='') or (YPZLZL.FieldByName('KFJD').AsString='')  then
     begin
       showmessage('Pls keyin [Season]&[Stage] first!');
       abort;
     end;
  //
  Qry_Summary.First;
  for i:=0 to Qry_Summary.RecordCount-1 do
  begin
    //20150622檢查是否SR用量都為0
    Qry_Article.Active:=true;
    Qry_Article.First;
    ZeroCLSL_SR:=0;
    AvageUseStock:=0;
    LastUseStock:=Qry_Summary.FieldByName('UseStock').AsFloat;
    for j:=0 to Qry_Article.RecordCount-1 do
    begin
      if Qry_Article.FieldByName('CLSL').AsFloat<>0 then
        LastUseStock:=LastUseStock-Qry_Article.FieldByName('CLSL').AsFloat
      else
        ZeroCLSL_SR:=ZeroCLSL_SR+1;
      Qry_Article.Next;
    end;
    if ZeroCLSL_SR>0 then AvageUseStock:=RoundTo(LastUseStock/ZeroCLSL_SR,-2);
    if AvageUseStock<0 then AvageUseStock:=0;//20150811 fix AvageUseStock<0 
    //
    case Qry_Summary.updatestatus of
     usmodified:
     begin;
       Qry_Article.Active:=true;
       //刪除
       if ( (Qry_Summary.FieldByName('UseStock').AsFloat=0) and (trim(Qry_Summary.FieldByName('Stock_Memo').AsString)='')  ) then
       begin
          Qry_Article.First;
          for j:=0 to Qry_Article.RecordCount-1 do
          begin
            with Query1 do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from  cgkcuse where GSBH='''+main.Edit2.Text+''' and ZLBH='''+Qry_Article.FieldByName('YPDH').AsString+''' and CLBH='''+Qry_Summary.FieldByName('CLBH').AsString+'''');
              ExecSQL();
            end;
            Qry_Article.Next;
          end;
       end;
       //新增或修改
       if ( (Qry_Summary.FieldByName('UseStock').AsFloat>0) or (trim(Qry_Summary.FieldByName('Stock_Memo').AsString)<>'')  ) then
       begin
          LastUseStock:=Qry_Summary.FieldByName('UseStock').AsFloat;
          Qry_Article.First;
          for j:=0 to Qry_Article.RecordCount-1 do
          begin
            if LastUseStock>=Qry_Article.FieldByName('CLSL').AsFloat then
            begin
              if  Qry_Article.FieldByName('CLSL').AsFloat>0 then
                 UseStock:=Qry_Article.FieldByName('CLSL').AsFloat
              else
                 UseStock:=AvageUseStock; //20150622平均分配
              LastUseStock:=LastUseStock-UseStock;
            end else
            begin
              UseStock:=LastUseStock;
              LastUseStock:=LastUseStock-UseStock;
            end;
            with Query1 do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('IF NOT EXISTS (SELECT * from cgkcuse where GSBH='''+main.Edit2.Text+''' and ZLBH='''+Qry_Article.FieldByName('YPDH').AsString+''' and CLBH='''+Qry_Summary.FieldByName('CLBH').AsString+''') ' );
              SQL.Add('BEGIN ');
                  SQL.Add('Insert into cgkcuse (GSBH,ZLBH,CLBH,Qty,MEMO,UserID,UserDate,YN) Values('''+main.Edit2.Text+''','''+Qry_Article.FieldByName('YPDH').AsString+''','''+Qry_Summary.FieldByName('CLBH').AsString+''',');
                  SQL.Add(floattostr(UseStock)+','''+Qry_Summary.FieldByName('Stock_Memo').AsString+''','''+main.Edit1.Text+''',GetDate(),''1'') ');
              SQL.Add('END ELSE ');
              SQL.Add('Update cgkcuse Set Qty='+floattostr(UseStock)+',Memo='''+Qry_Summary.FieldByName('Stock_Memo').AsString+'''  where GSBH='''+main.Edit2.Text+''' and ZLBH='''+Qry_Article.FieldByName('YPDH').AsString+''' and CLBH='''+Qry_Summary.FieldByName('CLBH').AsString+''' ');
              ExecSQL();
            end;
            Qry_Article.Next;
          end;
       end;
     end;
    end; //case YPZLZL.updatestatus of
    Qry_Article.Active:=false; 
    Qry_Summary.Next;
  end;
  if DBGridEh5.Visible=true then  Qry_Article.Active:=true;  
  Showmessage('Use Stock Success');
  Button5Click(NIL);
  //
end;

procedure TSampleMerge.HideRightCKClick(Sender: TObject);
begin
  DBGridEh5.Visible:= HideRightCK.Checked xor true;
  if DBGridEh5.Visible=false then Qry_Article.Active:=false;
end;

procedure TSampleMerge.Qry_SummaryAfterOpen(DataSet: TDataSet);
begin
  with Qry_Summary do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure TSampleMerge.BitBtn1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if  YPZLZLS.active  then
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
        for   i:=0   to   YPZLZLS.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YPZLZLS.fields[i].FieldName;
          end;

        YPZLZLS.First;
        j:=2;
        while   not   YPZLZLS.Eof   do
          begin
            for   i:=0   to  YPZLZLS.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=YPZLZLS.Fields[i].Value;
            end;
          YPZLZLS.Next;
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

procedure TSampleMerge.Button8Click(Sender: TObject);
begin
  Qry_Recrod.Active:=TRUE;
end;

procedure TSampleMerge.DBGrid3CellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
        Qry_Recrod.Active:=false;
end;

procedure TSampleMerge.Button9Click(Sender: TObject);
begin
  with BOMMEMO do
  begin
    active:=false;
    sql.Clear;
    sql.add('select TNO as ypdh,delid as ID,deldate as Check_Time,recieveid,recievedate, remark from BModRec_Dev');
    sql.add('where TNO='''+edit11.text+''' and article=''FD_CHECK''');
    sql.add('order by deldate desc');
    active:=true;
  end;
end;

procedure TSampleMerge.Button10Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
    if  Qry_Summary.active  then
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
          eclApp.Cells(1,1):='Material code';
          eclApp.Cells(1,2):='Material Description';
          eclApp.Cells(1,3):='SR';
          eclApp.Cells(1,4):='Stage';
          eclApp.Cells(1,5):='Pairs';
          eclApp.Cells(1,6):='FD';
          eclApp.Cells(1,7):='EXT';
          eclApp.Cells(1,8):='Usage';
          Qry_Summary.First;
          j:=2;
          while   not   Qry_Summary.Eof   do
            begin
               for   i:=1   to   Qry_Summary.fieldcount-1 do
                begin
                  while   not   Qry_Article.Eof   do
                  begin
                     for   k:=1   to   Qry_Article.fieldcount-1 do
                     begin
                        eclApp.Cells(j,1):=Qry_Summary.FieldByName('clbh').value;
                        eclApp.Cells(j,2):=Qry_Summary.FieldByName('CLMC').value;
                        eclApp.Cells(j,3):=Qry_Article.FieldByName('devcode').value;
                        eclApp.Cells(j,4):=Qry_Article.FieldByName('kfjd').value;
                        eclApp.Cells(j,5):=Qry_Article.FieldByName('pairs').value;
                        eclApp.Cells(j,6):=Qry_Article.FieldByName('FD').value;
                        eclApp.Cells(j,8):=Qry_Summary.FieldByName('CLSL').value;
                     end;
                     Qry_Article.Next;
                     inc(j);
                  end;
                end;
            Qry_Summary.Next;
            end;
         eclapp.columns.autofit;
         Qry_Article.Active:=false;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

procedure TSampleMerge.Label14DblClick(Sender: TObject);
begin
  Label2.Visible := true;
  TBEdit.Visible := true;
end;

procedure TSampleMerge.Label25Click(Sender: TObject);
begin
if memo1.Visible= true then
    begin
      memo1.Visible:= false;
    end
 else
    begin
      memo1.Visible:= true;
    end;
end;

procedure TSampleMerge.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked=true then
  begin
    memo1.Visible := true;
  end else
  begin
    memo1.Visible := false;
  end;
end;

procedure TSampleMerge.CheckStock1Click(Sender: TObject);
var bm:Tbookmark;
    y,m,a,Supp_TW_ID,Article_All:string;
    i,j:integer;
    Qty:real;
    bookmarklist:tbookmarklistEH;
    label lRestart;
begin
  if not Qry_Summary.Active then
     abort;
  if (Qry_Summary.recordcount<1) then
     abort;
  if (YPZLZL.FieldByName('JiJie').AsString='') or (YPZLZL.FieldByName('KFJD').AsString='')  then
  begin
     showmessage('Pls keyin [Season]&[Stage] first!');
     abort;
  end;
  if messagedlg('Do you really want to request check stock?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
     abort;
  Qry_Summary.disablecontrols;
  bm:=Qry_Summary.getbookmark;
  bookmarklist:=DBGridEh3.selectedrows;
  if bookmarklist.count=0 then
  begin
   showmessage('Pls choose data first !');
   abort;
  end;
  if bookmarklist.count>0 then
  begin
    try
       Qry_Summary.gotobookmark(pointer(bookmarklist[0]));
       if Qry_Summary.FieldByName('CSBH').AsString='' then
       begin
          showmessage('Supplier ID is empty! please revsie Spec.');
          exit;
       end;
       if ((Qry_Summary.FieldByName('CLSL').Value=0) or (Qry_Summary.FieldByName('CLBH_NotBuy').Asstring='NotBuy') or  (Qry_Summary.FieldByName('PurQty').Value>=Qry_Summary.FieldByName('CLSL').Value)) then
       begin
          showmessage('Can not request check stock. Pls check again');
          exit;
       end;
       for i:=0 to bookmarklist.count-1 do
       begin
         Qry_Summary.gotobookmark(pointer(bookmarklist[i]));
         with Query2 do
         begin
           active:=false;
           sql.Clear;
           //sql.add('SELECT YPZLZLS2.YPDH,YPZLZLS2.CLBH,case when substring(YPZLZLS2.CLBH,1,1) <> ''M'' then SUM(YPZLZLS2.CLSL) else SUM(YPZLZLS2.USAGE) end AS CLSL ');
           sql.add('SELECT YPZLZLS2.YPDH,YPZLZLS2.CLBH,SUM(YPZLZLS2.CLSL) AS CLSL ');      //20241130
           sql.add('       ,ypzl.ARTICLE ,ypzl.KFJD,cgkcuse.qty as UseStock,ypzl.YPCC,ypzl.Quantity as Pairs,YPZLZLS2.CSBH as ZSBH,ISNULL(CGUseStock_Dev.YPDH,'''') AS YPDH_UseStock ');
           sql.add('FROM YPZLZLS2 ');
           sql.add('LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.YPDH=YPZLZLS2.YPDH ');
           sql.add('LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH ');
           sql.add('LEFT JOIN cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh=YPZLZLS2.clbh and cgkcuse.GSBH='''+main.Edit2.Text+''' ');
           sql.Add('LEFT JOIN CGUseStock_Dev ON YPZLZLS2.YPZLBH=CGUseStock_Dev.YPZLBH AND YPZLZLS2.YPDH=CGUseStock_Dev.YPDH AND YPZLZLS2.CLBH=CGUseStock_Dev.CLBH ');
           sql.add('WHERE  YPZLZLS2.CLBH='''+Qry_Summary.FieldByName('CLBH').AsString+'''');
           sql.add('       and YPZLZLS2.YPZLBH='''+Qry_Summary.fieldbyname('YPZLBH').AsString+'''');
           sql.add('GROUP BY  YPZLZLS2.YPDH,YPZLZLS2.CLBH,ypzl.ARTICLE ,ypzl.KFJD,cgkcuse.qty,ypzl.YPCC,ypzl.Quantity,YPZLZLS2.CSBH,CGUseStock_Dev.YPDH ');
           //funcobj.WriteErrorLog(sql.Text);
           active:=true;
         end;
         Query2.First;
         for j:=1 to Query2.RecordCount do
         begin
           if Query2.FieldByName('YPDH_UseStock').AsString<>'' then
           begin
             if messagedlg('This material already request check stock, Do you want to check stock again ?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
             begin
             end else
             begin
                with query1 do
                begin
                   active:=false;
                   sql.Clear;
                   sql.Add('Update CGUseStock_Dev ');
                   sql.Add('Set UserID = '''+main.edit1.Text+''', UserDate=GetDate()');
                   sql.Add('    ,Pairs='''+Query2.fieldbyname('Pairs').AsString+''',CLSL='+Query2.fieldbyname('CLSL').AsString+',ZSBH='''+Query2.fieldbyname('ZSBH').AsString+'''  ');
                   sql.Add('Where YPZLBH='''+YPZLZL.fieldbyname('YPZLBH').AsString+''' and YPDH='''+Query2.fieldbyname('YPDH').AsString+''' and CLBH='''+Qry_Summary.fieldbyname('CLBH').AsString+''' ');
                   //funcobj.WriteErrorLog(sql.Text);
                   execsql;
                   active:=false;
                end;
             end;   
           end else
           begin
             with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('insert CGUseStock_Dev (YPZLBH,YPDH,CLBH,Pairs,CLSL,ZSBH,UserID,UserDate,YN) values( ');
               sql.Add(' '''+YPZLZL.fieldbyname('YPZLBH').AsString+''' ');
               sql.Add(','''+Query2.fieldbyname('YPDH').AsString+''' ');
               sql.Add(','''+Qry_Summary.fieldbyname('CLBH').AsString+''' ');
               sql.Add(','+Query2.fieldbyname('Pairs').AsString+' ');
               sql.Add(','+Query2.fieldbyname('CLSL').AsString+' ');
               sql.Add(','''+Query2.fieldbyname('ZSBH').AsString+''' ');
               sql.Add(','''+main.edit1.Text+''' ');
               sql.Add(',Getdate() ');
               sql.Add(',''1'')');
               //funcobj.WriteErrorLog(sql.Text);
               execsql;
               active:=false;
             end;
           end;
           Query2.next;
         end;
       end;
    finally
       begin
         Qry_Summary.gotobookmark(bm);
         Qry_Summary.freebookmark(bm);
         Qry_Summary.enablecontrols;
       end;
    end;
  end;

  Button5Click(NIL);
  showmessage('finish !');
  //自動開啟採購單畫面
  if PurSample<>nil then
  begin
    RequestCheckStock.show;
    RequestCheckStock.windowstate:=wsmaximized;
  end else
  begin
    RequestCheckStock:=TRequestCheckStock.create(self);
    RequestCheckStock.show;
  end;
  RequestCheckStock.EdtPurID.Text:=main.edit1.Text;
  RequestCheckStock.EdtMergeNo.Text:=YPZLZL.fieldbyname('YPZLBH').AsString;
  RequestCheckStock.Button1Click(nil);
end;

procedure TSampleMerge.BitBtn2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  i, j, k, index: integer;
  List: TStringList;
begin
  List := TStringList.Create;
  try
    YPZLZL.First;
    while not YPZLZL.Eof do
    begin
      List.Add(YPZLZL.FieldByName('YPZLBH').AsString);
      YPZLZL.Next;
    end;
    k := List.Count;
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := eclApp.Workbooks.Add;
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      for i := 0 to Query3.FieldCount - 1 do
        eclApp.Cells(1, i + 1) := Query3.Fields[i].FieldName;
        eclApp.Cells(1,1) := 'YPZLBH';
        eclApp.Cells(1,2) := 'YPDH';
        eclApp.Cells(1,3) := 'USERID';
        eclApp.Cells(1,4) := 'USERDATE';
        eclApp.Cells(1,5) := 'YN';
        eclApp.Cells(1,6) := 'KFJD';
        eclApp.Cells(1,7) := 'JiJie';
        eclApp.Cells(1,8) := 'PAIRS';
        eclApp.Cells(1,9) := 'FD';
        eclApp.Cells(1,10) := 'Size';
        eclApp.Cells(1,11) := 'devcode';
        eclApp.Cells(1,12) := 'ARTICLE';
        eclApp.Cells(1,13) := 'ProductionLocation';
        eclApp.Cells(1,14) := 'DevType';
      j := 2;
      for index := 0 to List.Count - 1 do
      begin
        with Query3 do
        begin
          Active := False;
          SQL.Clear;
          SQL.Add('SELECT YPZLZLS.YPZLBH, YPZLZLS.YPDH, YPZLZLS.PAIRS, YPZLZLS.USERID, ');
          SQL.Add('       YPZLZLS.USERDATE, YPZLZLS.YN, kfxxzl.ARTICLE, ypzl.KFJD, kfxxzl.JiJie, ');
          SQL.Add('       kfxxzl.FD, ypzl.ypcc AS Size, kfxxzl.devcode, YPZL.ProductionLocation, YPZLZL.DevType ');
          SQL.Add('FROM YPZLZLS ');
          SQL.Add('LEFT JOIN YPZLZL ON YPZLZL.YPZLBH = YPZLZLS.YPZLBH ');
          SQL.Add('LEFT JOIN ypzl ON ypzl.YPDH = YPZLZLS.YPDH ');
          SQL.Add('LEFT JOIN kfxxzl ON kfxxzl.XIEXING = ypzl.XIEXING AND kfxxzl.SHEHAO = ypzl.SHEHAO ');
          SQL.Add('WHERE YPZLZLS.YPZLBH = ''' + List[index] + ''' ');
          SQL.Add('ORDER BY YPZLZL.YPZLBH DESC');
          //showmessage(sql.Text);
          Active := True;
        end;
        Query3.First;
        while not Query3.Eof do
        begin
          for i := 0 to Query3.FieldCount - 1 do
            eclApp.Cells(j, i + 1) := Query3.Fields[i].Value;
            eclApp.Cells(j,1) := Query3.FieldByName('YPZLBH').AsString;
            eclApp.Cells(j,2) := Query3.FieldByName('YPDH').AsString;
            eclApp.Cells(j,3) := Query3.FieldByName('USERID').AsString;
            eclApp.Cells(j,4) := Query3.FieldByName('USERDATE').AsString;
            eclApp.Cells(j,5) := '''' + Query3.FieldByName('YN').AsString;
            eclApp.Cells(j,6) := Query3.FieldByName('KFJD').AsString;
            eclApp.Cells(j,7) := Query3.FieldByName('JiJie').AsString;
            eclApp.Cells(j,8) := Query3.FieldByName('PAIRS').AsString;
            eclApp.Cells(j,9) := Query3.FieldByName('FD').AsString;
            eclApp.Cells(j,10) := Query3.FieldByName('Size').AsString;
            eclApp.Cells(j,11) := Query3.FieldByName('devcode').AsString;
            eclApp.Cells(j,12) := Query3.FieldByName('ARTICLE').AsString;
            eclApp.Cells(j,13) := Query3.FieldByName('ProductionLocation').AsString;
            eclApp.Cells(j,14) := Query3.FieldByName('DevType').AsString;
          Query3.Next;
          Inc(j);
        end;
      end;

      eclApp.Columns.AutoFit;
      eclApp.Visible := True;
      ShowMessage('Succeed!');

    except
      on F: Exception do
        ShowMessage(F.Message);
    end;

  finally
    List.Free;
  end;
end;

end.
