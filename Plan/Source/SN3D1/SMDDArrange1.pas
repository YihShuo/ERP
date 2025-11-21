unit SMDDArrange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, GridsEh, DBGridEh, DB,
  DBTables, ImgList, Grids, DateUtils, Comobj;

type
  TSMDDArrange = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    DDBHEdit: TEdit;
    Label1: TLabel;
    BDepNMEdit: TEdit;
    Label2: TLabel;
    BuyNoEdit: TEdit;
    Label3: TLabel;
    ArticleEdit: TEdit;
    Button1: TButton;
    DDZLQry: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    DDZLQryBUYNO: TStringField;
    DDZLQryXieXing: TStringField;
    DDZLQrySheHao: TStringField;
    DDZLQryArticle: TStringField;
    DDZLQryPairs: TIntegerField;
    DDZLQryQty: TIntegerField;
    DDZLQryIEQty: TIntegerField;
    DDZLQryTotalHours: TFloatField;
    DDZLQryOrderCount: TIntegerField;
    SMDDQry: TQuery;
    DS2: TDataSource;
    SMDDQryDepName: TStringField;
    SMDDQryPlanDate: TDateTimeField;
    SMDDQryDDBH: TStringField;
    SMDDQryShipDate: TDateTimeField;
    SMDDQryBUYNO: TStringField;
    SMDDQryStyle: TStringField;
    SMDDQryArticle: TStringField;
    SMDDQryPairs: TIntegerField;
    SMDDQryDAOMH: TStringField;
    SMDDQryCycle: TStringField;
    SMDDQryPlanQty: TIntegerField;
    SMDDQryXTMH: TStringField;
    SMDDQryOKDate: TStringField;
    SMDDQryDDGB: TStringField;
    SMDDQryXuong: TStringField;
    UpSMDD: TUpdateSQL;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel5: TPanel;
    Panel4: TPanel;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGridEh2: TDBGridEh;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Splitter3: TSplitter;
    Panel9: TPanel;
    DBGridEh3: TDBGridEh;
    TreeView: TTreeView;
    ImageList: TImageList;
    SMDDSQry: TQuery;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    DateTimeField2: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField2: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DS3: TDataSource;
    Label4: TLabel;
    BuyNo1Edit: TEdit;
    Label5: TLabel;
    DDBH1Edit: TEdit;
    Article1Edit: TEdit;
    Label6: TLabel;
    Button2: TButton;
    LeanLabel: TLabel;
    CheckBox1: TCheckBox;
    SMDDSQryROrder: TIntegerField;
    SMDDSQryDepNo: TStringField;
    SMDDSQryXH: TFloatField;
    CalPlanQry: TQuery;
    SCRLQry: TQuery;
    btnCal1: TBitBtn;
    CKFixedFisrtDate: TCheckBox;
    Panel10: TPanel;
    Splitter4: TSplitter;
    Panel11: TPanel;
    TreeView1: TTreeView;
    Panel12: TPanel;
    Panel13: TPanel;
    LeanLabel1: TLabel;
    DBGridEh4: TDBGridEh;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    ROrderQry: TQuery;
    StringField2: TStringField;
    StringField13: TStringField;
    DateTimeField3: TDateTimeField;
    StringField14: TStringField;
    DateTimeField4: TDateTimeField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField3: TIntegerField;
    StringField18: TStringField;
    StringField19: TStringField;
    IntegerField4: TIntegerField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    IntegerField5: TIntegerField;
    FloatField4: TFloatField;
    DS4: TDataSource;
    UpdROrder: TUpdateSQL;
    ROrderTQry: TQuery;
    StringField24: TStringField;
    StringField25: TStringField;
    DateTimeField5: TDateTimeField;
    StringField26: TStringField;
    DateTimeField6: TDateTimeField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    IntegerField6: TIntegerField;
    StringField30: TStringField;
    StringField31: TStringField;
    IntegerField7: TIntegerField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    IntegerField8: TIntegerField;
    FloatField7: TFloatField;
    UpdROrderT: TUpdateSQL;
    SMDDSQryPlanEDate: TDateTimeField;
    ROrderQryPlanEDate: TDateTimeField;
    ROrderTQryPlanEDate: TDateTimeField;
    TS3: TTabSheet;
    SMDDSQryProdQty: TIntegerField;
    SMDDSQryLackQty: TIntegerField;
    ROrderTQryProdQty: TIntegerField;
    ROrderTQryLackQty: TIntegerField;
    ROrderQryProdQty: TIntegerField;
    ROrderQryLackQty: TIntegerField;
    SMDDQryProdQty: TIntegerField;
    SMDDQryLackQty: TIntegerField;
    SMDDRptQry: TQuery;
    DS5: TDataSource;
    Panel14: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DDBHEdit2: TEdit;
    BDepNMEdit2: TEdit;
    ArticleEdit2: TEdit;
    Button3: TButton;
    DBGridEh5: TDBGridEh;
    SMDDRptQryDepName: TStringField;
    SMDDRptQryDepNO: TStringField;
    SMDDRptQryDDBH: TStringField;
    SMDDRptQryARTICLE: TStringField;
    SMDDRptQryPairs: TIntegerField;
    SMDDRptQryPlanDateA: TDateTimeField;
    SMDDRptQryPlanEDateA: TDateTimeField;
    SMDDRptQryPRDateA: TDateTimeField;
    SMDDRptQryOKDateA: TDateTimeField;
    SMDDRptQryPlanQtyA: TIntegerField;
    SMDDRptQryLackQtyA: TIntegerField;
    SMDDRptQryPlanDateS: TDateTimeField;
    SMDDRptQryPlanEDateS: TDateTimeField;
    SMDDRptQryPRDateS: TDateTimeField;
    SMDDRptQryOKDateS: TDateTimeField;
    SMDDRptQryPlanQtyS: TIntegerField;
    SMDDRptQryLackQtyS: TIntegerField;
    SMDDRptQryPlanDateC: TDateTimeField;
    SMDDRptQryPlanEDateC: TDateTimeField;
    SMDDRptQryPRDateC: TDateTimeField;
    SMDDRptQryOKDateC: TDateTimeField;
    SMDDRptQryPlanQtyC: TIntegerField;
    SMDDRptQryLackQtyC: TIntegerField;
    SMDDRptQryShipDate: TDateTimeField;
    SMDDRptQryDDGB: TStringField;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    Label14: TLabel;
    Button4: TButton;
    SMDDQryDepNo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SMDDQryAfterOpen(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DDZLQryBeforeScroll(DataSet: TDataSet);
    procedure TreeViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnCal1Click(Sender: TObject);
    procedure DBGridEh4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ROrderQryAfterOpen(DataSet: TDataSet);
    procedure BC4Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    MorningStr,NoonStr,AfternoonStr:String;
    TreeNode_DepName,TreeNode1_DepName:String;
    { Private declarations }
    procedure InitDepName();
    procedure ShowDepLean(DepName:string);
    procedure ShowROrderQry(DepName:string);
    //
    procedure CalcuatePlanDate(DepNo:string);
    function GetLastPlanDate(DepNo:String):TDate;
    function GetLastROrder(DepNo:String):integer;
    function CalPlanEDate(PlanDate:TDateTime;PlanHour:double):TDateTime;
    function CheckIsHoliday(PlanDate:TDateTime):TDatetime;
    procedure ExceUpdateSMDD(PlanDate:TDateTime;PlanEDate:TDateTime;YSBH:String);
  public
    { Public declarations }
  end;

var
  SMDDArrange: TSMDDArrange;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TSMDDArrange.ShowDepLean(DepName:string);
begin
  with  SMDDSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsNull(SMDD.PlanDate,Convert(datetime,''2050/12/31'')) asc) as XH from (');
    SQL.Add('select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.ShipDate, DDZL.BUYNO, SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH');
    SQL.Add('   ,Convert(Varchar,Min(SMDD.XH))+''-''+Convert(Varchar,Max(SMDD.XH)) as Cycle');
    SQL.Add('   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH ');
    SQL.Add('   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +''/''+CONVERT(varchar(2),DAY(SMDD.OKDate)) as OKDate');
    SQL.Add('   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as ProdQty    ');
    SQL.Add('   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0 else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty ');
    SQL.Add('   ,Max(SMDD.ROrder) as ROrder ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = ''A'' ');
    SQL.Add(' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.DepNo  ');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  ');
    //
    SQL.Add(' where 1=1 ');
    if BuyNo1Edit.Text<>'' then
    SQL.Add('  and DDZL.BUYNO like '''+BuyNo1Edit.Text+'%'' ');
    if DDBH1Edit.Text<>'' then
    SQL.Add('  and DDZL.DDBH like '''+DDBH1Edit.Text+'%'' ');
    if Article1Edit.Text<>'' then
    SQL.Add('  and DDZL.Article like '''+Article1Edit.Text+'%'' ');
    SQL.Add(' and  BDepartment.DepName='''+DepName+''' ');
    SQL.Add(' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate,DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,');
    SQL.Add('          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMDD.OKDate) SMDD ');
    SQL.Add('where LackQty<0 ) SMDD ');
    SQL.Add(' order by SMDD.XH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;
//
procedure TSMDDArrange.ShowROrderQry(DepName:string);
begin
  with  ROrderQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsNull(SMDD.PlanDate,Convert(datetime,''2050/12/31'')) asc) as XH from (');
    SQL.Add('select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.ShipDate, DDZL.BUYNO, SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH');
    SQL.Add('   ,Convert(Varchar,Min(SMDD.XH))+''-''+Convert(Varchar,Max(SMDD.XH)) as Cycle');
    SQL.Add('   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH ');
    SQL.Add('   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +''/''+CONVERT(varchar(2),DAY(SMDD.OKDate)) as OKDate');
    SQL.Add('   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as ProdQty    ');
    SQL.Add('   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0 else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty ');
    SQL.Add('   ,Max(SMDD.ROrder) as ROrder ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = ''A'' ');
    SQL.Add(' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.DepNo  ');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  ');
    //
    SQL.Add(' where 1=1 ');
    SQL.Add(' and  BDepartment.DepName='''+DepName+''' ');
    SQL.Add(' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate,DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,');
    SQL.Add('          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMDD.OKDate ) SMDD ');
    SQL.Add('where LackQty<0 ) SMDD ');
    SQL.Add(' order by SMDD.XH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //暫存
  with ROrderTQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsNull(SMDD.PlanDate,Convert(datetime,''2050/12/31'')) asc) as XH from (');
    SQL.Add('select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.ShipDate, DDZL.BUYNO, SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH');
    SQL.Add('   ,Convert(Varchar,Min(SMDD.XH))+''-''+Convert(Varchar,Max(SMDD.XH)) as Cycle');
    SQL.Add('   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH ');
    SQL.Add('   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +''/''+CONVERT(varchar(2),DAY(SMDD.OKDate)) as OKDate');
    SQL.Add('   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as ProdQty    ');
    SQL.Add('   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0 else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty ');
    SQL.Add('   ,Max(SMDD.ROrder) as ROrder ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = ''A'' ');
    SQL.Add(' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.DepNo  ');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  ');
    //
    SQL.Add(' where 1=2 ');
    SQL.Add(' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate,DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,');
    SQL.Add('          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMDD.OKDate ) SMDD ');
    SQL.Add('where LackQty<0 ) SMDD ');
    SQL.Add(' order by SMDD.XH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;
//
procedure TSMDDArrange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSMDDArrange.FormDestroy(Sender: TObject);
begin
  SMDDArrange:=nil;
end;

procedure TSMDDArrange.Button1Click(Sender: TObject);
begin
  with DDZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from ( ');
    SQL.Add('Select DDZL.BUYNO,DDZL.XieXing,DDZL.SheHao,DDZL.Article,Sum(Pairs) as Pairs,IsNull(Sum(SMDD.Qty),0) as Qty,Max(IsNull(SCXXCL.IEQty,1.0)) as IEQty');
    SQL.Add('       ,Round(Sum(Pairs)/Max(Convert(float,IsNull(SCXXCL.IEQty,1.0))),2)  as TotalHours,Count(DDZL.DDBH) as OrderCount ');
    SQL.Add('from DDZL');
    SQL.Add('left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    SQL.Add('            from SCXXCL where BZLB=''3'' group by xiexing,shehao) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao');
    SQL.Add('left join (Select SMDD.YSBH ,Sum(SMDD.Qty) as Qty,Max(RDepNO) as DepNO from SMDD ');
    SQL.Add('            left join DDZL on DDZL.DDBH=SMDD.YSBH   ');
    SQL.Add('            left join BDepartment on BDepartment.ID=SMDD.DepNO ');
    SQL.Add('            where SMDD.GXLB=''A'' ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('            and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if DDBHEdit.Text<>'' then
    SQL.Add('            and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
    SQL.Add('            and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    SQL.Add('            and BDepartment.ID is not null group by SMDD.YSBH) SMDD on SMDD.YSBH=DDZL.DDBH');
    SQL.Add('Left join BDepartment on BDepartment.ID=SMDD.DepNO  ');
    SQL.Add('where DDZL.DDZT=''Y'' ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('  and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if DDBHEdit.Text<>'' then
    SQL.Add('  and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
    SQL.Add('  and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    if  BDepNMEdit.Text<>'' then
    SQL.Add(' and BDepartment.DepName like '''+BDepNMEdit.Text+'%''');
    SQL.Add('Group by DDZL.BUYNO,DDZL.XieXing,DDZL.SheHao,DDZL.Article ) DDZL where 1=1 ');
    if CheckBox1.Checked=true then
    SQL.Add(' and Pairs>Qty ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  with  SMDDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as PlanDate,DDZL.DDBH,DDZL.ShipDate, DDZL.BUYNO, SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH');
    SQL.Add('   ,Convert(Varchar,Min(SMDD.XH))+''-''+Convert(Varchar,Max(SMDD.XH)) as Cycle');
    SQL.Add('   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH ');
    SQL.Add('   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +''/''+CONVERT(varchar(2),DAY(SMDD.OKDate)) as OKDate');
    SQL.Add('   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as ProdQty    ');
    SQL.Add('   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0 else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = ''A'' ');
    SQL.Add(' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.DepNo  ');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  ');
    SQL.Add(' where DDZL.Article=:Article ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('  and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if DDBHEdit.Text<>'' then
    SQL.Add('  and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
    SQL.Add('  and DDZL.Article like '''+ArticleEdit.Text+'%'' ');
    if  BDepNMEdit.Text<>'' then
    SQL.Add('  and BDepartment.DepName like '''+BDepNMEdit.Text+'%'' ');
    if CheckBox1.Checked=true then
    SQL.Add('  and BDepartment.ID is null ');
    SQL.Add(' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate,DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,');
    SQL.Add('          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMDD.OKDate ');
    SQL.Add(' order by DDZL.Article,BDepartment.DepName,SMDD.Plandate');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TSMDDArrange.InitDepName();
var ParentNode, ChildNode, ParentNode1, ChildNode1: TTreeNode;
    i:integer;
begin
  with  Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ID,DepName,DepMemo from BDepartment ');
    SQL.Add('where ProYN=1 and GXLB=''A'' and GSBH='''+main.Edit2.Text+''' ');
    Active:=true;
  end;
  TreeView.Items.Clear;
  TreeView1.Items.Clear;
  ParentNode := TreeView.Items.Add(nil, '成型-Assemplby');
  ParentNode1 := TreeView1.Items.Add(nil, '成型-Assemplby');
  ParentNode.ImageIndex:=0;
  for i:=0 to  Qtemp.RecordCount-1 do
  begin
    with TreeView.Items do
    begin
      ChildNode := AddChild(ParentNode, Qtemp.FieldByName('DepName').AsString);
      ChildNode.ImageIndex:=1;
      ChildNode.SelectedIndex:=1;
    end;
    with TreeView1.Items do
    begin
      ChildNode1 := AddChild(ParentNode1, Qtemp.FieldByName('DepName').AsString);
      ChildNode1.ImageIndex:=1;
      ChildNode1.SelectedIndex:=1;
    end;
    Qtemp.Next;
  end;
  Qtemp.Active:=false;
  TreeView.FullExpand;
  TreeView1.FullExpand;
end;
procedure TSMDDArrange.FormCreate(Sender: TObject);
begin
 InitDepName();
 MorningStr:=' 08:00:00';
 NoonStr:=' 12:00:00';
 AfternoonStr:=' 17:00:00';
 DTP1.Date:=Date();
 DTP2.Date:=Date()+14;
end;

procedure TSMDDArrange.SMDDQryAfterOpen(DataSet: TDataSet);
begin
  BB4.Enabled:=true;
end;

procedure TSMDDArrange.BB4Click(Sender: TObject);
var i:integer;
    DepNo:String;
begin
  with SMDDQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //預設給指定Lean線別
  if TreeNode_DepName<>'' then
  begin
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select  ID from BDepartment where DepName='''+TreeNode_DepName+''' ');
      Active:=true;
      if RecordCount>0 then
      DepNo:=FieldByName('ID').AsString;
      Active:=false;
    end;
    SMDDQry.First;
    for i:=0 to SMDDQry.RecordCount-1 do
    begin
      SMDDQry.Edit;
      SMDDQry.FieldByName('DepNo').Value:=DepNo;
      SMDDQry.FieldByName('DepName').Value:=TreeNode_DepName;
      SMDDQry.Post;
      SMDDQry.Next;
    end;
    SMDDQry.First;
  end;
end;

procedure TSMDDArrange.BB6Click(Sender: TObject);
begin
  with SMDDQry do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.Enabled:=false;
  DBGridEh2.Columns[7].ButtonStyle:=cbsnone;
end;

procedure TSMDDArrange.DDZLQryBeforeScroll(DataSet: TDataSet);
begin
  if SMDDQry.RequestLive=true then
  begin
    Showmessage('Please Save or Cancel Detial first ');
    abort;
  end;
end;

procedure TSMDDArrange.TreeViewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var MoveNode:TTreeNode;
begin
  MoveNode := TreeView.GetNodeAt(X, Y);
  if MoveNode.ImageIndex>0 then
  begin
    TreeNode_DepName:=MoveNode.Text;
    LeanLabel.Caption:=TreeNode_DepName;
    ShowDepLean(MoveNode.Text);
  end;
end;


procedure TSMDDArrange.Button2Click(Sender: TObject);
begin
  ShowDepLean(TreeNode_DepName);
end;

procedure TSMDDArrange.BB5Click(Sender: TObject);
var i:integer;
    DepNo_A,DepNO_S,DepNO_C:String;
    ROrder_A,ROrder_S,ROrder_C:integer;
begin
   if TreeNode_DepName='' then
   begin
     Showmessage('請選擇線別Please choice Lean');
     Abort();
   end;
   //
   with Qtemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select ID,GXLB,DepName from BDepartment where sumline in (');
     SQL.Add('Select sumline from BDepartment where DepName='''+TreeNode_DepName+''') and GXLB in (''C'',''S'',''A'')  ');
     Active:=true;
   end;
   for i:=0 to Qtemp.RecordCount-1 do
   begin
     if QTemp.FieldByName('GXLB').AsString='C' then DepNo_C:=QTemp.FieldByName('ID').AsString;
     if QTemp.FieldByName('GXLB').AsString='S' then DepNo_S:=QTemp.FieldByName('ID').AsString;
     if QTemp.FieldByName('GXLB').AsString='A' then DepNo_A:=QTemp.FieldByName('ID').AsString;
     Qtemp.Next;
   end;
   Qtemp.Active:=false;
   //取得目前SMDD.ROrder順序  SN38 也要修改
   with Qtemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select IsNull(Max(ROrder),0) as ROrder from SMDD where DepNO='''+DepNo_C+''' ');
     Active:=true;
     ROrder_C:=QTemp.FieldByName('ROrder').Value;
     //
     Active:=false;
     SQL.Clear;
     SQL.Add('select IsNull(Max(ROrder),0) as ROrder from SMDD where DepNO='''+DepNo_S+''' ');
     Active:=true;
     ROrder_S:=QTemp.FieldByName('ROrder').Value;
     //
     Active:=false;
     SQL.Clear;
     SQL.Add('select IsNull(Max(ROrder),0) as ROrder from SMDD where DepNO='''+DepNo_A+''' ');
     Active:=true;
     ROrder_A:=QTemp.FieldByName('ROrder').Value;
   end;
   //
   try
     SMDDQry.First;
     for i:=0 to SMDDQry.RecordCount-1 do
     begin
       if SMDDQry.FieldByName('ProdQty').Value=0 then
       begin
         Inc(ROrder_C);
         Inc(ROrder_S);
         Inc(ROrder_A);
         with Qtemp do
         begin
           Active:=false;
           SQL.Clear;
           SQL.Add('Update SMDD Set DepNO='''+DepNo_C+''',RDepNO='''+DepNo_C+''',ROrder='+Inttostr(ROrder_C)+',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where YSBH='''+SMDDQry.FieldByName('DDBH').AsString+''' and GXLB=''C'' ');
           SQL.Add('Update SMDD Set DepNO='''+DepNo_S+''',RDepNO='''+DepNo_S+''',ROrder='+Inttostr(ROrder_S)+',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where YSBH='''+SMDDQry.FieldByName('DDBH').AsString+''' and GXLB=''S'' ');
           SQL.Add('Update SMDD Set DepNO='''+DepNo_A+''',RDepNO='''+DepNo_A+''',ROrder='+Inttostr(ROrder_A)+',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where YSBH='''+SMDDQry.FieldByName('DDBH').AsString+''' and GXLB=''A'' ');
           ExecSQL();
         end;
       end else
       begin
         Showmessage('已經生產不能變更Already Produce,can''t chagne');
       end;
       SMDDQry.Next;
     end;
     SMDDQry.active:=false;
     SMDDQry.requestlive:=false;
     SMDDQry.cachedupdates:=false;
     SMDDQry.active:=true;
     BB5.Enabled:=false;
     BB6.Enabled:=false;
   except
     showmessage('Have wrong.');
   end;
end;

procedure TSMDDArrange.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DDZLQry.FieldByName('Pairs').value=DDZLQry.FieldByName('Qty').value then
  begin
    DBGridEh1.Canvas.font.color:=clBlue;
  end;
end;

procedure TSMDDArrange.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SMDDQry.FieldByName('ProdQty').value>0then
  begin
    DBGridEh2.Canvas.font.color:=clBlue;
  end;
end;
//最後一筆預計上線日
function TSMDDArrange.GetLastPlanDate(DepNo:String):TDate;
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 PlanEDate from (');
    SQL.Add('Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsNull(SMDD.PlanDate,Convert(datetime,''2050/12/31'')) asc) as XH from (');
    SQL.Add('select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.Pairs  ');
    SQL.Add('   ,sum(SMDD.Qty) PlanQty ');
    SQL.Add('   ,IsNull(Sum(SCBBS.Qty),0) as ProdQty    ');
    SQL.Add('   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0 else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty ');
    SQL.Add('   ,Max(SMDD.ROrder) as ROrder,SCXXCL.IEQty,Round(DDZL.Pairs/Convert(float,IsNull(SCXXCL.IEQty,240.0)),2) as PlanHours ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = ''A'' ');
    SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.RDepNo  ');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  ');
    SQL.Add('left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    SQL.Add('            from SCXXCL where BZLB=''3'' group by xiexing,shehao) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao ');
    SQL.Add(' where 1=1 and DDZL.ShipDate>GETDATE()-180');
    SQL.Add(' and  BDepartment.ID='''+DepNo+''' ');
    SQL.Add(' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.Pairs,');
    SQL.Add('          SMDD.OKDate,SCXXCL.IEQty ) SMDD ');
    SQL.Add('where 1=1 and LackQty=0 ');
    SQL.Add(') SMDD ');
    SQL.Add('Order by SMDD.XH  desc');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  if Qtemp.RecordCount>0 then
  begin
    result:=strtodatetime(Datetostr(Qtemp.FieldByName('PlanEDate').Value+1)+MorningStr);
  end else
  begin
    result:=strtodatetime(Datetostr(Date())+MorningStr);
  end;
  //
  Qtemp.Active:=true;
  //
end;
//最後一筆訂單順序
function TSMDDArrange.GetLastROrder(DepNo:String):integer;
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 ROrder from (');
    SQL.Add('Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsNull(SMDD.PlanDate,Convert(datetime,''2050/12/31'')) asc) as XH from (');
    SQL.Add('select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.Pairs  ');
    SQL.Add('   ,sum(SMDD.Qty) PlanQty ');
    SQL.Add('   ,IsNull(Sum(SCBBS.Qty),0) as ProdQty    ');
    SQL.Add('   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0 else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty ');
    SQL.Add('   ,Max(SMDD.ROrder) as ROrder,SCXXCL.IEQty,Round(DDZL.Pairs/Convert(float,IsNull(SCXXCL.IEQty,240.0)),2) as PlanHours ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = ''A'' ');
    SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.RDepNo  ');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  ');
    SQL.Add('left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    SQL.Add('            from SCXXCL where BZLB=''3'' group by xiexing,shehao) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao ');
    SQL.Add(' where 1=1 and DDZL.ShipDate>GETDATE()-180');
    SQL.Add(' and  BDepartment.ID='''+DepNo+''' ');
    SQL.Add(' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.Pairs,');
    SQL.Add('          SMDD.OKDate,SCXXCL.IEQty ) SMDD ');
    SQL.Add('where 1=1 and LackQty=0 ');
    SQL.Add(') SMDD ');
    SQL.Add('Order by SMDD.XH  desc');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  if Qtemp.RecordCount>0 then
  begin
    if not Qtemp.FieldByName('ROrder').IsNull then
      result:=Qtemp.FieldByName('ROrder').Value+1
    else
      result:=1;
  end else
  begin
    result:=1;
  end;
  //
  Qtemp.Active:=true;
  //
end;
//更新資料SMDD
procedure TSMDDArrange.ExceUpdateSMDD(PlanDate:TDateTime;PlanEDate:TDateTime;YSBH:String);
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update SMDD set PlanDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanDate)+''',PlanEDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanEDate)+''',');
    SQL.Add('      RPlanDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanDate)+''',RPlanEDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanEDate)+''',');
    SQL.Add('      UserID='''+main.Edit1.Text+''',UserDate=GetDate() ');
    SQL.Add('      where GXLB=''A'' and DDBH like '''+YSBH+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //更新裁斷、針車
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update SMDD set PlanDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanDate-1)+''',PlanEDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanEDate-1)+''',');
    SQL.Add('      RPlanDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanDate-1)+''',RPlanEDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanEDate-1)+''',');
    SQL.Add('      UserID='''+main.Edit1.Text+''',UserDate=GetDate() ');
    SQL.Add('      where GXLB=''S'' and DDBH like '''+YSBH+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update SMDD set PlanDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanDate-2)+''',PlanEDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanEDate-2)+''',');
    SQL.Add('      RPlanDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanDate-2)+''',RPlanEDate='''+FormatDatetime('YYYY/MM/DD HH:MM:SS',PlanEDate-2)+''',');
    SQL.Add('      UserID='''+main.Edit1.Text+''',UserDate=GetDate() ');
    SQL.Add('      where GXLB=''C'' and DDBH like '''+YSBH+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
end;
procedure TSMDDArrange.CalcuatePlanDate(DepNo:string);
var i:integer;
    PlanDate,PlanEDate:TDatetime;
    YSBH,DDBHSQL:String;
begin
  //計算到輪次或訂單
  DDBHSQL:='SMDD.DDBH';
  //DDBHSQL:='DDZL.DDBH';
  //
  with SCRLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay) as SCDT,DepNO,SCGS');
    SQl.Add('       ,Convert(varchar,Convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay),111) as DTStr ');
    SQL.Add('from SCRL ');
    SQL.Add('where DepNO='''+DepNo+''' and Convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay)>(GETDATE()-30)');
    SQL.Add('order by Convert(smalldatetime,SCRL.SCYEAR+''/''+SCRL.SCMONTH+''/''+SCRL.SCDay)');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with CalPlanQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsNull(SMDD.PlanDate,Convert(datetime,''2050/12/31'')) asc) as XH from (');
    SQL.Add('select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,'+DDBHSQL+' as YSBH,DDZL.Pairs  ');
    SQL.Add('   ,sum(SMDD.Qty) PlanQty ');
    SQL.Add('   ,IsNull(Sum(SCBBS.Qty),0) as ProdQty    ');
    SQL.Add('   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0 else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty ');
    SQL.Add('   ,Max(SMDD.ROrder) as ROrder,SCXXCL.IEQty,Round(sum(SMDD.Qty)/Convert(float,IsNull(SCXXCL.IEQty,240.0)),2) as PlanHours ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = ''A'' ');
    SQL.Add(' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheHao=DDZL.SheHao  ');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDD.RDepNo  ');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  ');
    SQL.Add('left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
    SQL.Add('            from SCXXCL where BZLB=''3'' group by xiexing,shehao) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao ');
    SQL.Add(' where 1=1 ');
    SQL.Add(' and  BDepartment.ID='''+DepNo+''' ');
    SQL.Add(' group by BDepartment.DepName,SMDD.DepNo,'+DDBHSQL+',DDZL.Pairs,');
    SQL.Add('          SMDD.OKDate,SCXXCL.IEQty ) SMDD ');
    SQL.Add('where 1=1 and LackQty<0 ');
    SQL.Add(') SMDD ');
    SQL.Add(' order by SMDD.ROrder,SMDD.YSBH,SMDD.XH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if CalPlanQry.RecordCount>0 then
  begin
    //尚未開始生產初始日期
    if CalPlanQry.FieldByName('PlanQty').Value=abs(CalPlanQry.FieldByName('LackQty').Value) then
    begin
      //是否使用第一筆訂單上線計畫日做為開始日
      if CKFixedFisrtDate.Checked=false then
         PlanDate:=GetLastPlanDate(DepNo)
      else
         PlanDate:=CalPlanQry.FieldByName('PlanDate').Value;
    end else
    begin
      PlanDate:=CalPlanQry.FieldByName('PlanDate').Value;
    end;
    //開始時間剛好是中午
    if FormatDateTime('YYYY/MM/DD HH:NN:SS',strtodatetime(datetostr(PlanDate)+NoonStr))=FormatDateTime('YYYY/MM/DD HH:NN:SS',PlanDate) then
    begin
      PlanDate:=IncMinute(PlanDate,60); // 變更中午休息13:00
    end;
    //第一筆
    PlanEDate:=CalPlanEDate(PlanDate,CalPlanQry.FieldByName('PlanHours').Value);
    YSBH:=CalPlanQry.FieldByName('YSBH').AsString;
    ExceUpdateSMDD(PlanDate,PlanEDate,YSBH);// 更新SMDD資料
    //下一筆開始日上一筆結束日
    PlanDate:=PlanEDate;
    //開始時間剛好是中午
    if FormatDateTime('YYYY/MM/DD HH:NN:SS',strtodatetime(datetostr(PlanDate)+NoonStr))=FormatDateTime('YYYY/MM/DD HH:NN:SS',PlanDate) then
    begin
      PlanDate:=IncMinute(PlanDate,60); // 變更中午休息13:00
    end;
    CalPlanQry.Next;
    while not CalPlanQry.Eof do
    begin
      PlanEDate:=CalPlanEDate(PlanDate,CalPlanQry.FieldByName('PlanHours').Value);
      YSBH:=CalPlanQry.FieldByName('YSBH').AsString;
      ExceUpdateSMDD(PlanDate,PlanEDate,YSBH);// 更新SMDD資料
      //下一筆開始日上一筆結束日
      PlanDate:=PlanEDate;
      //開始時間剛好是中午
      if FormatDateTime('YYYY/MM/DD HH:NN:SS',strtodatetime(datetostr(PlanDate)+NoonStr))=FormatDateTime('YYYY/MM/DD HH:NN:SS',PlanDate) then
      begin
        PlanDate:=IncMinute(PlanDate,60); // 變更中午休息13:00
      end;
      CalPlanQry.Next;
    end;
  end;
  //
  CalPlanQry.Active:=false;
  SCRLQry.Active:=false;
end;

//非上班日就跳過隔天
function TSMDDArrange.CheckIsHoliday(PlanDate:TDateTime):TDatetime;
var ResDT:TDatetime;
    IsFind,IsBreak:boolean;
begin
  IsFind:=false;
  SCRLQry.First;
  if strtodate(FormatDatetime('YYYY/MM/DD',PlanDate))<SCRLQry.FieldByName('SCDT').Value then //系統沒有生管行事曆
  begin
    ResDT:=strtodatetime(datetostr(IncDay(PlanDate,1))+MorningStr);
    if DayOfTheWeek(ResDT)=7 then //遇到星期天就跳到隔天
    ResDT:=strtodatetime(datetostr(IncDay(ResDT,1))+MorningStr);
    IsFind:=true;
  end;

  SCRLQry.Last;
  if strtodate(FormatDatetime('YYYY/MM/DD',PlanDate))>SCRLQry.FieldByName('SCDT').Value then //系統沒有生管行事曆
  begin
    ResDT:=strtodatetime(datetostr(IncDay(PlanDate,1))+MorningStr);
    if DayOfTheWeek(ResDT)=7 then //遇到星期天就跳到隔天
    ResDT:=strtodatetime(datetostr(IncDay(ResDT,1))+MorningStr);
    IsFind:=true;
  end;

  if IsFind=false then
  begin
    IsBreak:=false;
    ResDT:=strtodatetime(datetostr(IncDay(PlanDate,1))+MorningStr);
    repeat
      SCRLQry.First;
      if SCRLQry.Locate('DTStr',FormatDatetime('YYYY/MM/DD',ResDT),[]) then
      begin
        IsBreak:=true;
      end else
      begin
        ResDT:=strtodatetime(datetostr(IncDay(ResDT,1))+MorningStr);
      end;
      SCRLQry.Last;
      if strtodate(FormatDatetime('YYYY/MM/DD',ResDT))>SCRLQry.FieldByName('SCDT').Value then
      begin
        IsBreak:=true;
        if DayOfTheWeek(ResDT)=7 then //遇到星期天就跳到隔天
        ResDT:=strtodatetime(datetostr(IncDay(ResDT,1))+MorningStr);
      end;
    until IsBreak=true;
    //
  end;
  //
  result:=ResDT;
end;
//
function TSMDDArrange.CalPlanEDate(PlanDate:TDateTime;PlanHour:double):TDateTime;
var NoonDT,AfterNoonDT,resDT,tmpDT:TDateTime;
    TotalMinu:integer;
    NoonMinu,AfterNoonMinu:integer;
    IsBreak:boolean;
begin
  TotalMinu:=Round(60*PlanHour); //總分鐘數
  //到中午用餐的分鐘數
  NoonDT:=strtodatetime(datetostr(PlanDate)+NoonStr);
  NoonMinu:=Round(strtofloat(vartostr((NoonDT-PlanDate)*24*60)));
  if NoonMinu>0 then //計畫開始時間是早上
  begin
    if TotalMinu<=NoonMinu then //早上時間足夠生產完畢
    begin
      resDT:=IncMinute(PlanDate,TotalMinu);
    end else
    begin
      //到下班的時間分鐘數
      AfterNoonDT:=strtodatetime(datetostr(PlanDate)+AfternoonStr);
      AfterNoonMinu:=Round(strtofloat(vartostr((AfterNoonDT-PlanDate)*24*60)))-60; //扣掉中午休息60分鐘，到下班前可用的分鐘數
      if TotalMinu<=AfterNoonMinu then
      begin
        resDT:=IncMinute(PlanDate,TotalMinu+60);
      end else //當天時數不夠，需要數天
      begin
        IsBreak:=false;
        TotalMinu:=TotalMinu-AfterNoonMinu;
        PlanDate:=CheckIsHoliday(PlanDate);//strtodatetime(datetostr(IncDay(PlanDate,1))+MorningStr); //隔天早上
        repeat
          //到中午用餐的分鐘數
          NoonDT:=strtodatetime(datetostr(PlanDate)+NoonStr);
          NoonMinu:=Round(strtofloat(vartostr((NoonDT-PlanDate)*24*60)));
          if TotalMinu<=NoonMinu then //早上時間足夠生產完畢
          begin
            resDT:=IncMinute(PlanDate,TotalMinu);
            TotalMinu:=0;
          end else
          begin
            //到下班的時間分鐘數
            AfterNoonDT:=strtodatetime(datetostr(PlanDate)+AfternoonStr);
            AfterNoonMinu:=Round(strtofloat(vartostr((AfterNoonDT-PlanDate)*24*60)))-60; //扣掉中午休息60分鐘，到下班前可用的分鐘數
            if TotalMinu<=AfterNoonMinu then
            begin
              resDT:=IncMinute(PlanDate,TotalMinu+60);
              TotalMinu:=0;
            end else //當天時數不夠，需要數天
            begin
              TotalMinu:=TotalMinu-AfterNoonMinu;
              PlanDate:=CheckIsHoliday(PlanDate);//strtodatetime(datetostr(IncDay(PlanDate,1))+MorningStr); //隔天早上
            end;
          end;
          if TotalMinu<=0 then IsBreak:=true;
        until IsBreak=true;
      end;
      //
    end;
  end else //計畫開始時間是下午
  begin
    //到下班的時間分鐘數
    AfterNoonDT:=strtodatetime(datetostr(PlanDate)+AfternoonStr);
    AfterNoonMinu:=Round(strtofloat(vartostr((AfterNoonDT-PlanDate)*24*60))); //扣掉中午休息60分鐘，到下班前可用的分鐘數
    if TotalMinu<=AfterNoonMinu then
    begin
      resDT:=IncMinute(PlanDate,TotalMinu);
    end else //當天時數不夠，需要數天
    begin
      IsBreak:=false;
      TotalMinu:=TotalMinu-AfterNoonMinu;
      PlanDate:=CheckIsHoliday(PlanDate);//strtodatetime(datetostr(IncDay(PlanDate,1))+MorningStr); //隔天早上
      repeat
        //到中午用餐的分鐘數
        NoonDT:=strtodatetime(datetostr(PlanDate)+NoonStr);
        NoonMinu:=Round(strtofloat(vartostr((NoonDT-PlanDate)*24*60)));
        if TotalMinu<=NoonMinu then //早上時間足夠生產完畢
        begin
          resDT:=IncMinute(PlanDate,TotalMinu);
          TotalMinu:=0;
        end else
        begin
          //到下班的時間分鐘數
          AfterNoonDT:=strtodatetime(datetostr(PlanDate)+AfternoonStr);
          AfterNoonMinu:=Round(strtofloat(vartostr((AfterNoonDT-PlanDate)*24*60)))-60; //扣掉中午休息60分鐘，到下班前可用的分鐘數
          if TotalMinu<=AfterNoonMinu then
          begin
            resDT:=IncMinute(PlanDate,TotalMinu+60);
            TotalMinu:=0;
          end else //當天時數不夠，需要數天
          begin
            TotalMinu:=TotalMinu-AfterNoonMinu;
            PlanDate:=CheckIsHoliday(PlanDate);//strtodatetime(datetostr(IncDay(PlanDate,1))+MorningStr); //隔天早上
          end;
        end;
        if TotalMinu<=0 then IsBreak:=true;
      until IsBreak=true;
    end;
  end;
  result:=resDT;
  //showmessage(datetimetostr(resDT));
end;
//
procedure TSMDDArrange.btnCal1Click(Sender: TObject);
var DepNo:String;
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  ID from BDepartment where DepName='''+TreeNode_DepName+''' ');
    Active:=true;
    if RecordCount>0 then
    DepNo:=FieldByName('ID').AsString;
    Active:=false;
  end;
  if DepNo<>'' then
  begin
    CalcuatePlanDate(DepNo);// 預計排程上線日調整
    Showmessage('Finish完成');
  end else
  begin
    Showmessage('Please Choice Lean請選擇Lean線');
  end;
  //
end;

procedure TSMDDArrange.DBGridEh4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i:integer;
begin
  if ROrderQry.RequestLive=true then
  begin
    if ROrderTQry.RecordCount>0 then ROrderTQry.Delete;
    ROrderTQry.Insert;
    for i:=0 to ROrderQry.FieldCount-1 do
    begin
      ROrderTQry.Fields[i].Value:=ROrderQry.Fields[i].Value;
    end;
    ROrderTQry.FieldByName('XH').Value:=0;
    ROrderTQry.Post;
  end;
end;

procedure TSMDDArrange.DBGridEh4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i:integer;
    Bef_DDBH,Aft_DDBH:string;
begin
  if ROrderQry.RequestLive=true then
  begin
    Bef_DDBH:=ROrderTQry.FieldByName('DDBH').AsString;
    Aft_DDBH:=ROrderQry.FieldByName('DDBH').AsString;
    if Bef_DDBH<>Aft_DDBH then
    begin
      if ROrderQry.Locate('DDBH',Bef_DDBH,[]) then
      begin
        ROrderQry.Delete;
      end;
     // showmessage('ok1 '+Bef_DDBH);
      if ROrderQry.Locate('DDBH',Aft_DDBH,[]) then
      begin
        ROrderQry.Insert;
        for i:=0 to ROrderQry.FieldCount-1 do
        begin
          ROrderQry.Fields[i].Value:=ROrderTQry.Fields[i].Value;
        end;
        ROrderQry.Post;
        //showmessage('ok2 finish');
      end;
    end;
  end;
end;

procedure TSMDDArrange.ROrderQryAfterOpen(DataSet: TDataSet);
begin
  BC4.Enabled:=true;
end;

procedure TSMDDArrange.BC4Click(Sender: TObject);
begin
  with ROrderQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
  //
end;

procedure TSMDDArrange.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ROrderQry.FieldByName('XH').AsString='0' then
  begin
    DBGridEh4.Canvas.font.color:=clBlue;
  end;
end;

procedure TSMDDArrange.BC6Click(Sender: TObject);
begin
  with ROrderQry do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
  BC5.enabled:=false;
  BC6.Enabled:=false;
end;

procedure TSMDDArrange.BC5Click(Sender: TObject);
var i:integer;
    DepNo:String;
    ROrder:integer;
    IsSequence:Boolean;
begin
  if MessageDlg('Order by Sequence依序排序',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   IsSequence:=true
  else
   IsSequence:=false;
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ID from BDepartment where DepName='''+TreeNode1_DepName+''' ');
    Active:=true;
    if RecordCount>0 then
    DepNo:=FieldByName('ID').AsString;
    Active:=false;
  end;
  ROrder:=GetLastROrder(DepNO);
  //
  try
    ROrderQry.First;
    for i:=0 to ROrderQry.RecordCount-1 do
    begin
      with Qtemp do
      begin
        Active:=false;
        SQL.Clear;
        if IsSequence=false then
          SQL.Add('Update SMDD set ROrder='+ROrderQry.FieldByName('ROrder').AsString+' where DDBH like '''+ROrderQry.FieldByName('DDBH').AsString+'%'' ')
        else
          SQL.Add('Update SMDD set ROrder='+inttostr(ROrder)+' where DDBH like '''+ROrderQry.FieldByName('DDBH').AsString+'%'' ');
        ExecSQL();
      end;
      ROrder:=ROrder+1;
      ROrderQry.Next;
    end;
    //
    CalcuatePlanDate(DepNo);// 預計排程上線日調整
    //
    ROrderQry.active:=false;
    ROrderQry.requestlive:=false;
    ROrderQry.cachedupdates:=false;
    ROrderQry.active:=true;
    BC5.Enabled:=false;
    BC6.Enabled:=false;
    Showmessage('Success');
   except
     showmessage('Have wrong.');
   end;    
end;

procedure TSMDDArrange.TreeView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var MoveNode:TTreeNode;
begin
  if ROrderQry.RequestLive=true then
  begin
    Showmessage('Please Cancel first請先取消或儲存');
    Exit;
  end;
  MoveNode := TreeView1.GetNodeAt(X, Y);
  if MoveNode.ImageIndex>0 then
  begin
    TreeNode1_DepName:=MoveNode.Text;
    LeanLabel1.Caption:=TreeNode1_DepName;
    ShowROrderQry(MoveNode.Text);
  end;
end;

procedure TSMDDArrange.Button3Click(Sender: TObject);
begin
  with SMDDRptQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Select BDepartment.DepName, SMDDA.DepNO,SMDDA.DDBH,DDZL.ARTICLE,DDZL.Pairs');
    SQL.Add('       ,SMDDA.PlanDate as PlanDateA,SMDDA.PlanEDate as PlanEDateA, SMDDA.PRDate as PRDateA,SMDDA.OKDate as OKDateA,SMDDA.PlanQty as PlanQtyA,SMDDA.ProdQty-SMDDA.PlanQty as LackQtyA  ');
    SQL.Add('       ,SMDDS.PlanDate as PlanDateS,SMDDS.PlanEDate as PlanEDateS, SMDDS.PRDate as PRDateS,SMDDS.OKDate as OKDateS,SMDDS.PlanQty as PlanQtyS,SMDDS.ProdQty-SMDDS.PlanQty as LackQtyS   ');
    SQL.Add('       ,SMDDC.PlanDate as PlanDateC,SMDDC.PlanEDate as PlanEDateC, SMDDC.PRDate as PRDateC,SMDDC.OKDate as OKDateC,SMDDC.PlanQty as PlanQtyC,SMDDC.ProdQty-SMDDC.PlanQty as LackQtyC  ');
    SQL.Add('       ,DDZL.ShipDate,DDZL.DDGB       ');
    SQL.Add(' from (');
    SQL.Add(' select SMDD.DepNo,DDZL.DDBH,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,MIN(SMDD.PRdate) as PRDate,MAX(SMDD.OKdate) as OKDate');
    SQL.Add('       ,sum(SMDD.Qty) PlanQty,IsNull(Sum(SCBBS.Qty),0) as ProdQty,BDepartment.sumline ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD SMDD on SMDD.YSBH=DDZL.DDBH  and SMDD.GXLB = ''A'' ');
    SQL.Add(' Left join BDepartment BDepartment on BDepartment.ID=SMDD.DepNo');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''A'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH    ');
    SQL.Add(' where 1=1 ');
    SQL.add('        and convert(smalldatetime,convert(varchar,SMDD.PlanDate)) between ');
    SQL.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if DDBHEdit2.Text<>'' then
    SQL.Add('        and DDZL.DDBH like '''+DDBHEdit2.Text+'%'' ');
    if ArticleEdit2.Text<>'' then
    SQL.Add('        and DDZL.Article like '''+ArticleEdit2.Text+'%'' ');
    SQL.Add(' Group by SMDD.DepNo,DDZL.DDBH,BDepartment.sumline  ) SMDDA');
    SQL.Add(' Left join (');
    SQL.Add(' select SMDD.DepNo,DDZL.DDBH,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,MIN(SMDD.PRdate) as PRDate,MAX(SMDD.OKdate) as OKDate');
    SQL.Add('       ,sum(SMDD.Qty) PlanQty,IsNull(Sum(SCBBS.Qty),0) as ProdQty,BDepartment.sumline ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD SMDD on SMDD.YSBH=DDZL.DDBH  and SMDD.GXLB = ''S'' ');
    SQL.Add(' Left join BDepartment BDepartment on BDepartment.ID=SMDD.DepNo');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''S'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH    ');
    SQL.Add(' where 1=1 ');
    SQL.add('        and convert(smalldatetime,convert(varchar,SMDD.PlanDate)) between ');
    SQL.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if DDBHEdit2.Text<>'' then
    SQL.Add('        and DDZL.DDBH like '''+DDBHEdit2.Text+'%'' ');
    if ArticleEdit2.Text<>'' then
    SQL.Add('        and DDZL.Article like '''+ArticleEdit2.Text+'%'' ');
    SQL.Add(' Group by SMDD.DepNo,DDZL.DDBH,BDepartment.sumline ) SMDDS on SMDDA.sumline=SMDDS.sumline and SMDDA.DDBH=SMDDS.DDBH');
    SQL.Add(' Left join (');
    SQL.Add(' select SMDD.DepNo,DDZL.DDBH,Min(SMDD.Plandate) as PlanDate,MAX(SMDD.PlanEDate) as PlanEDate,MIN(SMDD.PRdate) as PRDate,MAX(SMDD.OKdate) as OKDate');
    SQL.Add('       ,sum(SMDD.Qty) PlanQty,IsNull(Sum(SCBBS.Qty),0) as ProdQty,BDepartment.sumline ');
    SQL.Add(' from DDZL   ');
    SQL.Add(' left join SMDD SMDD on SMDD.YSBH=DDZL.DDBH  and SMDD.GXLB = ''C'' ');
    SQL.Add(' Left join BDepartment BDepartment on BDepartment.ID=SMDD.DepNo');
    SQL.Add(' Left join (  ');
    SQL.Add('    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  ');
    SQL.Add('    where SMDDSS.GXLB = ''C'' ');
    SQL.Add('    Group by DDBH   ');
    SQL.Add(' ) SCBBS on SCBBS.DDBH=SMDD.DDBH    ');
    SQL.Add(' where 1=1 ');
    SQL.add('        and convert(smalldatetime,convert(varchar,SMDD.PlanDate)) between ');
    SQL.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if DDBHEdit2.Text<>'' then
    SQL.Add('        and DDZL.DDBH like '''+DDBHEdit2.Text+'%'' ');
    if ArticleEdit2.Text<>'' then
    SQL.Add('        and DDZL.Article like '''+ArticleEdit2.Text+'%'' ');
    SQL.Add(' Group by SMDD.DepNo,DDZL.DDBH,BDepartment.sumline ) SMDDC on SMDDA.sumline=SMDDC.sumline and SMDDA.DDBH=SMDDC.DDBH');
    SQL.Add(' Left join DDZL on DDZL.DDBH=SMDDA.DDBH');
    SQL.Add(' Left join BDepartment on BDepartment.ID=SMDDA.DepNO');
    SQL.Add('where 1=1 ');
    if  BDepNMEdit2.Text<>'' then
    SQL.Add(' and BDepartment.DepName like '''+BDepNMEdit2.Text+'%''');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TSMDDArrange.Button4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if SMDDRptQry.Active=false then Exit;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=1  to  SMDDRptQry.fieldcount   do
    begin
      eclApp.Cells(1,i):=SMDDRptQry.fields[i-1].FieldName;
    end;
    SMDDRptQry.First;
    j:=2;
    while  not  SMDDRptQry.Eof   do
    begin
      for   i:=1   to   SMDDRptQry.fieldcount   do
      begin
          eclApp.Cells(j,i):=SMDDRptQry.Fields[i-1].Value;
      end;
      SMDDRptQry.Next;
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

end.
