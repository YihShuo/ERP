unit DFC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,Menus, ComCtrls, DB, DBTables, Mask, DBCtrls,
  jpeg, GridsEh, DBGridEh, TeeProcs, TeEngine, Chart, DbChart, Series,
  GanttCh, Buttons, comobj;

type
  TDFC = class(TForm)                       
    Shape7: TShape;
    Shape11: TShape;
    Label2: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Memo2: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    mainPanel: TPanel;
    Shape13: TShape;
    SN68_Back: TShape;
    Shape12: TShape;
    SN65_Back: TShape;
    SN7A_Back: TShape;
    Shape1: TShape;
    Shape19: TShape;
    Shape2: TShape;
    SN22_Back: TShape;
    SN22_Link: TLabel;
    SN23_Back: TShape;
    SN23_Link: TLabel;
    SN26_Back: TShape;
    SN26_Link: TLabel;
    Label7: TLabel;
    SN71_Back: TShape;
    SN71_Link: TLabel;
    SN34_Back: TShape;
    SN34_Link: TLabel;
    SN16_Back: TShape;
    SN16_LINK: TLabel;
    SN741_Back: TShape;
    SN741_LINK: TLabel;
    SN75_Back: TShape;
    SN75_LINK: TLabel;
    SN35_Back: TShape;
    SN35_Link: TLabel;
    Label3: TLabel;
    SN27_Back: TShape;
    SN27_LINK: TLabel;
    SN76_Back: TShape;
    SN76_Link: TLabel;
    Label4: TLabel;
    Shape15: TShape;
    Label5: TLabel;
    SN28_Back: TShape;
    SN28_LINK: TLabel;
    SN44_Back: TShape;
    SN44_LINK: TLabel;
    SN29_Back: TShape;
    SN29_Link: TLabel;
    Label8: TLabel;
    SN72_Back: TShape;
    SN72_Link: TLabel;
    Label9: TLabel;
    Shape3: TShape;
    Label10: TLabel;
    SN82_Back: TShape;
    SN82_Link: TLabel;
    SN83_Back: TShape;
    SN83_Link: TLabel;
    SN73_Back: TShape;
    SN73_Link: TLabel;
    SN7A_Link: TLabel;
    SN77_Back: TShape;
    SN77_Link: TLabel;
    SN65_Link: TLabel;
    SN67_Back: TShape;
    SN67_Link: TLabel;
    SN78_Back: TShape;
    SN78_LINK: TLabel;
    SN68_Link: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Query1: TQuery;
    DS1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Query1FDTeam: TStringField;
    Query1busers: TStringField;
    Query1Teamleader: TStringField;
    Query1Teamleader2: TStringField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SN6A_Link: TLabel;
    SN6A_Back: TShape;
    TabSheet6: TTabSheet;
    SampleQry: TQuery;
    Panel4: TPanel;
    SampleDS: TDataSource;
    DBGridEh1: TDBGridEh;
    SampleQryGroups: TStringField;
    SampleQryReceiveSR: TIntegerField;
    SampleQryCutMaterialOK: TIntegerField;
    SampleQryCutMaterialGet: TIntegerField;
    SampleQryCutdate: TIntegerField;
    SampleQryStitchingMaterialOK: TIntegerField;
    SampleQryStitchingMaterialGet: TIntegerField;
    SampleQryStitchingDate: TIntegerField;
    SampleQryPackingMaterialOK: TIntegerField;
    SampleQryPackingMaterialGet: TIntegerField;
    SampleQryPackingDate: TIntegerField;
    Panel5: TPanel;
    SampleStatusQry: TQuery;
    SampleStatusDS: TDataSource;
    DBGridEh2: TDBGridEh;
    SampleStatusQryGroups: TStringField;
    SampleStatusQryywsm: TStringField;
    SampleStatusQrytotalQty: TFloatField;
    SampleStatusQryCutting: TFloatField;
    SampleStatusQryStitchinging: TFloatField;
    SampleStatusQryPackinging: TFloatField;
    SampleStatusQryPackingOK: TFloatField;
    SampleQryExcel: TQuery;
    SampleQryExcelArticle: TStringField;
    SampleQryExcelTestno: TStringField;
    SampleQryExcelTBStatus: TStringField;
    SampleQryExcelCutMaterialOK: TDateTimeField;
    SampleQryExcelCutMaterialGet: TDateTimeField;
    SampleQryExcelCuttingOK: TDateTimeField;
    SampleQryExcelStitchingMaterialOK: TDateTimeField;
    SampleQryExcelStitchingMaterialGet: TDateTimeField;
    SampleQryExcelstitchingOK: TDateTimeField;
    SampleQryExcelPackingMaterialOK: TDateTimeField;
    SampleQryExcelPackingMaterialGet: TDateTimeField;
    SampleQryExcelPackingOK: TDateTimeField;
    SampleQryExcelGroups: TStringField;
    Button1: TButton;
    Panel6: TPanel;
    CutQry: TQuery;
    PackingEH: TDBGridEh;
    CutQryywsm: TStringField;
    CutQryPlanningQty: TFloatField;
    CutQryywsm_1: TStringField;
    CutQrySampleRoomQty: TFloatField;
    CutDS: TDataSource;
    Panel7: TPanel;
    CutDbEh: TDBGridEh;
    StitchingDbEh: TDBGridEh;
    StitchingQry: TQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    StitchingDS: TDataSource;
    AssemblyQry: TQuery;
    StringField3: TStringField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    FloatField4: TFloatField;
    AssemblyDS: TDataSource;
    Query1yesterday: TStringField;
    Memo3: TMemo;
    Memo4: TMemo;
    DateTimePicker1: TDateTimePicker;
    DBGridEh3: TDBGridEh;
    PackingQry: TQuery;
    PackingDS: TDataSource;
    PackingQryywsm: TStringField;
    PackingQryPackingQry: TFloatField;
    SampleQryAssemblyMaterialOK: TIntegerField;
    SampleQryAssemblyMaterialGet: TIntegerField;
    SampleQryAssemblyDate: TIntegerField;
    SampleStatusQryAssemblying: TFloatField;
    OtherParts: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    dtp22: TDateTimePicker;
    dtp11: TDateTimePicker;
    Button2: TButton;
    Button3: TButton;
    Cutting_Daily_: TQuery;
    Stitching_Daily_: TQuery;
    Assembly_Daily_: TQuery;
    Packing_Daily_: TQuery;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Memo5: TMemo;
    Memo6: TMemo;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Button4: TButton;
    R1_R4_PC_: TQuery;
    R1_R4_PC_testno: TStringField;
    R1_R4_PC_SQTBOKTime: TDateTimeField;
    R1_R4_PC_R1_R4_PC: TFloatField;
    R1_R4_PC_ywsm: TStringField;
    Panel8: TPanel;
    R1_R4_PC_DS: TDataSource;
    Panel12: TPanel;
    Panel14: TPanel;
    R2_R3_ADD_WearFitTest_: TQuery;
    R2_R3_ADD_WearFitTest_DS: TDataSource;
    MST_EXT_FSR_: TQuery;
    SEE_Pullover_: TQuery;
    QUV_OtherTest_: TQuery;
    Shoe_: TQuery;
    half_: TQuery;
    MST_EXT_FSR_DS: TDataSource;
    R2_R3_ADD_WearFitTest_testno: TStringField;
    R2_R3_ADD_WearFitTest_SQTBOKTime: TDateTimeField;
    R2_R3_ADD_WearFitTest_R2_R3_ADD_WearFitTest: TFloatField;
    R2_R3_ADD_WearFitTest_ywsm: TStringField;
    MST_EXT_FSR_testno: TStringField;
    MST_EXT_FSR_SQTBOKTime: TDateTimeField;
    MST_EXT_FSR_MST_EXT_FSR: TFloatField;
    MST_EXT_FSR_ywsm: TStringField;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    DBGridEh7: TDBGridEh;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    DBGridEh8: TDBGridEh;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    DBGridEh9: TDBGridEh;
    SEE_Pullover_DS: TDataSource;
    SEE_Pullover_testno: TStringField;
    SEE_Pullover_SQTBOKTime: TDateTimeField;
    SEE_Pullover_SEE_Pullover: TFloatField;
    SEE_Pullover_ywsm: TStringField;
    QUV_OtherTest_DS: TDataSource;
    QUV_OtherTest_testno: TStringField;
    QUV_OtherTest_SQTBOKTime: TDateTimeField;
    QUV_OtherTest_QUV_OtherTest: TFloatField;
    QUV_OtherTest_ywsm: TStringField;
    Shoe_testno: TStringField;
    Shoe_SQTBOKTime: TDateTimeField;
    Shoe_Shoe: TFloatField;
    Shoe_ywsm: TStringField;
    Shoe_DS: TDataSource;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    DBGridEh10: TDBGridEh;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    DBGridEh11: TDBGridEh;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    DBGridEh12: TDBGridEh;
    half_DS: TDataSource;
    half_testno: TStringField;
    half_SQTBOKTime: TDateTimeField;
    half_Half: TFloatField;
    half_ywsm: TStringField;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBGridEh4: TDBGridEh;
    DateTimePicker7: TDateTimePicker;
    TabSheet4: TTabSheet;
    DBGridEh5: TDBGridEh;
    Panel13: TPanel;
    Label14: TLabel;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    CB1: TComboBox;
    DTP2: TDateTimePicker;
    Label16: TLabel;
    DS_HO: TDataSource;
    QHO: TQuery;
    QHODate: TStringField;
    QHOGXLB: TStringField;
    QHOBDEDesigner7h308h30: TFloatField;
    QHOBDEDesigner8h309h30: TFloatField;
    QHOBDEDesigner9h3010h30: TFloatField;
    QHOBDEDesigner10h3011h30: TFloatField;
    QHOBDEDesigner11h3012h30: TFloatField;
    QHOBDEDesigner12h3013h30: TFloatField;
    QHOBDEDesigner13h3014h30: TFloatField;
    QHOBDEDesigner14h3015h30: TFloatField;
    QHOBDEDesigner15h3016h30: TFloatField;
    QHOBDEDesigner16h3017h30: TFloatField;
    QHOBDEDesigner17h3018h30: TFloatField;
    QHOBDEDesigner18h3019h30: TFloatField;
    QHOBDEDesigner19h3020h30: TFloatField;
    B_Excel: TButton;
    QHOTotal: TFloatField;
    Label17: TLabel;
    CB2: TComboBox;
    QHOSeq: TFloatField;
    Button7: TButton;
    Button8: TButton;
    TabSheet5: TTabSheet;
    DBGridEh6: TDBGridEh;
    Splitter1: TSplitter;
    Panel16: TPanel;
    Button10: TButton;
    DS_3days: TDataSource;
    Q3days: TQuery;
    DS_Delay: TDataSource;
    QDelay: TQuery;
    Q3daysPart: TStringField;
    Q3daysserino: TStringField;
    Q3days_Plan: TStringField;
    Q3daysPlanQty: TFloatField;
    Q3daysOKQty: TFloatField;
    Q3daysComplete: TStringField;
    QDelayserino: TStringField;
    QDelayPart: TStringField;
    QDelayTestNo: TStringField;
    QDelayGroups: TStringField;
    QDelaySerino_1: TIntegerField;
    QDelayQty: TFloatField;
    QDelayPartE: TStringField;
    QDelayReasonE: TStringField;
    QDelayPlantime: TDateTimeField;
    QDelayOKtime: TDateTimeField;
    CheckBox1: TCheckBox;
    Panel17: TPanel;
    Panel38: TPanel;
    Panel15: TPanel;
    Button9: TButton;
    DBGridEh13: TDBGridEh;
    Panel39: TPanel;
    Panel40: TPanel;
    Button11: TButton;
    DBGridEh14: TDBGridEh;
    DTP111: TDateTimePicker;
    Rate: TQuery;
    DS_Rate: TDataSource;
    RateDate: TStringField;
    RateSample: TFloatField;
    RateCBY: TIntegerField;
    RateMassProduction: TIntegerField;
    RateTotal: TFloatField;
    RateComplete: TStringField;
    Rateserino: TStringField;
    RateProcess: TStringField;
    Edit1: TEdit;
    Qtmp: TQuery;
    QHOHourS: TIntegerField;
    Panel41: TPanel;
    Button12: TButton;
    Button13: TButton;
    Panel42: TPanel;
    DBGridEh15: TDBGridEh;
    CBY_Paking: TQuery;
    DataSource1: TDataSource;
    CBY_PakingDate: TStringField;
    CBY_PakingType: TStringField;
    CBY_PakingPairs: TIntegerField;
    CBY_PakingCancelPairs: TIntegerField;
    CBY_PakingTCutting: TIntegerField;
    CBY_PakingACutting: TIntegerField;
    CBY_PakingPCutting: TFloatField;
    CBY_PakingTStitching: TIntegerField;
    CBY_PakingAStitching: TIntegerField;
    CBY_PakingPStitching: TFloatField;
    CBY_PakingTAssembly: TIntegerField;
    CBY_PakingAAssembly: TIntegerField;
    CBY_PakingPAssembly: TFloatField;
    CBY_PakingAPacking: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure OtherPartsClick(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure B_ExcelClick(Sender: TObject);
    procedure CB2Change(Sender: TObject);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure QHOCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    AppDir:String;
    procedure Authority();
    procedure doSampleQry();
    procedure doSampleStatusQry();
    procedure Cutting_Qry();
    procedure Stitching_Qry();
    procedure Assembly_Qry();
    procedure Packing_Qry();
    procedure Cutting_Daily();
    procedure Stitching_Daily();
    procedure Assembly_Daily();
    procedure Packing_Daily();
    procedure R1_R4_PC();
    procedure R2_R3_ADD_WearFitTest();
    procedure MST_EXT_FSR();
    procedure SEE_Pullover();
    procedure QUV_OtherTest();
    procedure Shoe();
    procedure Half();
    procedure CBY();
    procedure HourlyOutput;
  public
    procedure LinkMouseLeave(Sender: TObject);
    procedure LinkMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure LinkClick(Sender: TObject);

    { Public declarations }
  end;

var
  DFC: TDFC;

implementation

uses
  MQ1, FunUnit, main1;

{$R *.dfm}

procedure TDFC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDFC.FormDestroy(Sender: TObject);
begin
  DFC := Nil;
end;

procedure TDFC.LinkMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  NameStr: string;
  tmpShape: TShape;
begin
  TLabel(Sender).Color:=clFuchsia;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clFuchsia;
end;

procedure TDFC.LinkClick(Sender: TObject);
var tmpMenu:TMenuItem;
    NameStr:string;
begin
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, '_Link', '',[rfReplaceAll, rfIgnoreCase]);
  tmpMenu:=TMenuItem(main.FindComponent(NameStr));
  if tmpMenu<>nil then  tmpMenu.Click;
end;

procedure TDFC.LinkMouseLeave(Sender: TObject);
var NameStr:string;
    tmpShape:TShape;
begin

  TLabel(Sender).Color:=clMoneyGreen;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clMoneyGreen;

end;


procedure TDFC.Authority();
var i,j:integer;
    MenuName:String;
    tmpLabel:TLabel;
    tmpShape:TShape;
begin
   for i:=0 to  main.ComponentCount-1 do
   begin
     if main.Components[i] is TMenuItem then
     begin
        MenuName:=TMenuItem(main.Components[i]).Name;
        if TMenuItem(main.Components[i]).Enabled=true then
        begin
           tmpLabel:=TLabel(FindComponent(MenuName+'_Link'));
           if tmpLabel<>nil then
           begin
             tmpLabel.Enabled:=true;
             tmpLabel.OnMouseMove:=LinkMouseMove;
             tmpLabel.OnMouseLeave:=LinkMouseLeave;
             tmpLabel.OnClick:=LinkClick;
           end;
        end;
     end;
   end;
   //
end;



procedure TDFC.FormShow(Sender: TObject);
begin
    Authority();
end;

procedure TDFC.doSampleQry();
begin
with SampleQry do
      begin
      active:=false;
      sql.Clear;
      sql.add('select Groups,');
      sql.add('isnull(SUM(ReceiveSR),0) ReceiveSR,isnull(SUM(CutMaterialOK),0) CutMaterialOK,isnull(SUM(CutMaterialGet),0) CutMaterialGet,isnull(SUM(cutdate),0) cutdate,');
      sql.add('isnull(SUM(StitchingMaterialOK),0) StitchingMaterialOK,isnull(sum(StitchingMaterialGet),0) StitchingMaterialGet,isnull(SUM(StitchingDate),0) StitchingDate,');
      sql.add('isnull(SUM(AssemblyMaterialOK),0) AssemblyMaterialOK,isnull(sum(AssemblyMaterialGet),0) AssemblyMaterialGet,isnull(SUM(AssemblyDate),0) AssemblyDate,');
      sql.add('isnull(SUM(PackingMaterialOK),0) PackingMaterialOK,isnull(SUM(PackingMaterialGet),0) PackingMaterialGet,isnull(SUM(PackingDate),0) PackingDate from(');
      sql.add('select shoetestplanshow.Groups,shoetestplanshow.type,COUNT(shoetestplan.ypdh) ReceiveSR,CutMaterialOK.CutMaterialOK,CutMaterialGet.CutMaterialGet,cutdate.Cutdate,');
      sql.add('StitchingMaterialOK.StitchingMaterialOK,StitchingMaterialGet.StitchingMaterialGet,stitchingDate.StitchingDate,');
      sql.add('AssemblyMaterialOK.AssemblyMaterialOK,AssemblyMaterialGet.AssemblyMaterialGet,AssemblyDate.AssemblyDate,');
      sql.add('PackingMaterialOK.PackingMaterialOK,PackingMaterialGet.PackingMaterialGet,PackingDate.PackingDate');
      sql.add(' from shoetestplanshow');
      sql.add('left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) CutMaterialOK from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where preparationDate is not null');
      sql.add('	group by shoetestplanshow.Groups,type) CutMaterialOK on CutMaterialOK.Groups=shoetestplanshow.Groups and shoetestplanshow.type=CutMaterialOK.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) CutMaterialGet from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where FirstMatOutDate is not null');
      sql.add('	group by shoetestplanshow.Groups,type) CutMaterialGet on CutMaterialGet.Groups=shoetestplanshow.Groups and shoetestplanshow.type=CutMaterialGet.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) cutdate from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where cutdate is not null');
      sql.add('	group by shoetestplanshow.Groups,type) cutdate on cutdate.Groups=shoetestplanshow.Groups and shoetestplanshow.type=cutdate.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) StitchingMaterialOK from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where S_material is not null');
      sql.add('	group by shoetestplanshow.Groups,type) StitchingMaterialOK on StitchingMaterialOK.Groups=shoetestplanshow.Groups and shoetestplanshow.type=StitchingMaterialOK.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) StitchingMaterialGet from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where StitchingPhuFinishDate is not null');
      sql.add('	group by shoetestplanshow.Groups,type) StitchingMaterialGet on StitchingMaterialGet.Groups=shoetestplanshow.Groups and shoetestplanshow.type=StitchingMaterialGet.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) stitchingDate from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where stitchingDate is not null');
      sql.add('	group by shoetestplanshow.Groups,type) stitchingDate on stitchingDate.Groups=shoetestplanshow.Groups and shoetestplanshow.type=stitchingDate.type');

      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) AssemblyMaterialOK from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where insole_send is not null');
      sql.add('	group by shoetestplanshow.Groups,type) AssemblyMaterialOK on AssemblyMaterialOK.Groups=shoetestplanshow.Groups and shoetestplanshow.type=AssemblyMaterialOK.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) AssemblyMaterialGet from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where insole_get is not null');
      sql.add('	group by shoetestplanshow.Groups,type) AssemblyMaterialGet on AssemblyMaterialGet.Groups=shoetestplanshow.Groups and shoetestplanshow.type=AssemblyMaterialGet.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) AssemblyDate from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where Assemblecomplete is not null');
      sql.add('	group by shoetestplanshow.Groups,type) AssemblyDate on AssemblyDate.Groups=shoetestplanshow.Groups and shoetestplanshow.type=AssemblyDate.type');

      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) PackingMaterialOK from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where lace_send is not null');
      sql.add('	group by shoetestplanshow.Groups,type) PackingMaterialOK on PackingMaterialOK.Groups=shoetestplanshow.Groups and shoetestplanshow.type=PackingMaterialOK.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) PackingMaterialGet from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where lace_get is not null');
      sql.add('	group by shoetestplanshow.groups,type) PackingMaterialGet on PackingMaterialGet.Groups=shoetestplanshow.Groups and shoetestplanshow.type=PackingMaterialGet.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) PackingDate from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	where  Complete is not null');
      sql.add('	group by shoetestplanshow.groups,type) PackingDate on PackingDate.Groups=shoetestplanshow.Groups and shoetestplanshow.type=PackingDate.type');
      sql.add('group by shoetestplanshow.groups,shoetestplanshow.type,CutMaterialOK,CutMaterialGet,cutdate,');
      sql.add('AssemblyMaterialOK.AssemblyMaterialOK,AssemblyMaterialGet.AssemblyMaterialGet,AssemblyDate.AssemblyDate,');
      sql.add('StitchingMaterialOK,StitchingMaterialGet,stitchingDate,PackingMaterialOK,PackingMaterialGet,PackingDate )main group by Groups');
      //showmessage(sql.text);
      active:=true;
      end;
end;
procedure TDFC.doSampleStatusQry();
begin
 with SampleStatusQry do
      begin
      active:=false;
      sql.Clear;
      sql.add('select GROUPS,ywsm,isnull(SUM(totalQty),0) totalQty,isnull(SUM(cutting),0) Cutting,isnull(SUM(Stitchinging),0) Stitchinging,isnull(SUM(Assemblying),0) Assemblying,isnull(SUM(Packinging),0) Packinging,isnull(SUM(PackingOK),0) PackingOK from(');
      sql.add('select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm,SUM(shoetest2.qty) totalQty,Cutting.Cutting,');
      sql.add('Stitchinging.Stitchinging,');
      sql.add('Assemblying.Assemblying,');
      sql.add('Packinging.Packinging,isnull(PackingOK.PackingOK,0) PackingOK');
      sql.add(' from shoetestplanshow');
      sql.add('left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('left join shoetest2 on shoetest2.testno=shoetestplan.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm,sum(shoetest2.qty) Cutting from  shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	left join shoetest2 on shoetest2.testno=shoetestplan.testno');
      sql.add('	left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('	where  cutdate is null');
      sql.add('	group by shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm) Cutting on Cutting.Groups=shoetestplan.Groups	and Cutting.ywsm=shoetestDetail.ywsm and shoetestplanshow.type=Cutting.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm,sum(shoetest2.qty) Stitchinging  from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	left join shoetest2 on shoetest2.testno=shoetestplan.testno');
      sql.add('	left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('	where  stitchingDate is null and cutdate is not null ');
      sql.add('	group by shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm) Stitchinging on Stitchinging.Groups=shoetestplan.Groups and Stitchinging.ywsm=shoetestDetail.ywsm and shoetestplanshow.type=Stitchinging.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm,sum(shoetest2.qty) Assemblying  from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	left join shoetest2 on shoetest2.testno=shoetestplan.testno');
      sql.add('	left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('	where  Assemblecomplete is null and cutdate is not null  and  stitchingDate is not null');
      sql.add('	group by shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm) Assemblying on Assemblying.Groups=shoetestplan.Groups and Assemblying.ywsm=shoetestDetail.ywsm and shoetestplanshow.type=Assemblying.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm,sum(shoetest2.qty) Packinging  from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	left join shoetest2 on shoetest2.testno=shoetestplan.testno');
      sql.add('	left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('	where  Complete is null and  Assemblecomplete is not null and cutdate is not null  and  stitchingDate is not null');
      sql.add('	group by shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm) Packinging on Packinging.Groups=shoetestplan.Groups and Packinging.ywsm=shoetestDetail.ywsm and shoetestplanshow.type=Packinging.type');
      sql.add('left join (');
      sql.add('	select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm,sum(shoetest2.qty) PackingOK  from shoetestplanshow');
      sql.add('	left join shoetestplan on shoetestplan.groups=shoetestplanshow.groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)');
      sql.add('	left join shoetest on shoetest.testno=shoetestplan.testno');
      sql.add('	left join shoetest2 on shoetest2.testno=shoetestplan.testno');
      sql.add('	left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('	 where  Complete is not null and Complete<>''''');
      sql.add('	group by shoetestplanshow.Groups,shoetestplanshow.type,shoetestDetail.ywsm) PackingOK on PackingOK.Groups=shoetestplan.Groups	 and PackingOK.ywsm=shoetestDetail.ywsm and shoetestplanshow.type=PackingOK.type');
      sql.add('group by shoetestplanshow.groups,shoetestplanshow.type,shoetestDetail.ywsm,Cutting.Cutting,Stitchinging.Stitchinging,Assemblying.Assemblying,Packinging.Packinging,PackingOK.PackingOK');
      sql.add(')main');
      if not OtherParts.checked then
         sql.add('where ywsm=''Finished Shoe''');
      sql.add('group by GROUPS,ywsm');
    //  showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  if (main.Edit2.Text <> 'CDC') and (main.Edit2.Text <> 'SKX') and (main.Edit2.Text <> 'TBDC') then begin
    //PageControl1.ActivePageIndex := 1;
    exit;
  end;
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.add('select convert(varchar, getdate()-1, 111) yesterday,FDgroup.FDTeam,busers.userid+''  ''+isnull(busers.Engname,''null'') as busers,');
	    sql.Add('TeamLeader+''  ''+isnull(teamleaderID.Engname,''null'') as Teamleader,');
	    sql.Add('TeamLeader2+''  ''+isnull(teamleader2ID.Engname,''null'') as   Teamleader2 from busers');
      sql.Add('left join FDgroups on busers.userid=FDgroups.FDID');
    	sql.Add('left join FDgroup on FDgroups.FDTeam=FDgroup.FDTeam');
    	sql.Add('left join busers teamleaderID on teamleaderID.userid=FDgroup.teamleader');
    	sql.Add('left join busers teamleader2ID on teamleader2ID.userid=FDgroup.teamleader2');
      sql.Add('where busers.userid ='''+main.edit1.text+'''');
      //showmessage(sql.text);
      active:=true;
  end;
  DateTimePicker1.Date:=query1.FieldByName('yesterday').asdatetime;
  DateTimePicker2.Date:=query1.FieldByName('yesterday').asdatetime;
  DateTimePicker3.Date:=query1.FieldByName('yesterday').asdatetime;
  DateTimePicker4.Date:=query1.FieldByName('yesterday').asdatetime;
  DTP1.Date := Date;
  DTP2.Date := Date;
  DTP111.Date := Date-1;
end;

procedure TDFC.Panel1DblClick(Sender: TObject);
begin
  main.Edit1.Visible := not main.Edit1.Visible;
  main.Edit2.Visible := not main.Edit2.Visible;
end;

procedure TDFC.PageControl1Change(Sender: TObject);
var i:integer;
    sheet:TTabSheet;
begin
  for i:=0 to PageControl1.PageCount-1   do
  begin
     sheet:=PageControl1.Pages[i];
     if sheet=PageControl1.ActivePage   then
        sheet.Highlighted:=true
     else
        sheet.Highlighted:=false;
  end;
  if PageControl1.ActivePageIndex = 0 then
  begin
    dosampleqry();
    
    Cutting_Qry();
    Stitching_Qry();
    Assembly_Qry();
    Packing_Qry();
  end
  else if PageControl1.ActivePageIndex = 4 then
  begin
//    HourlyOutput;
  end;
end;

procedure TDFC.Button1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  SampleQryExcel.active:=true;
  if  SampleQryExcel.active  then
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
        for   i:=0   to   SampleQryExcel.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=SampleQryExcel.fields[i].FieldName;
          end;

        SampleQryExcel.First;
        j:=2;
        while   not   SampleQryExcel.Eof   do
          begin
            for   i:=0   to  SampleQryExcel.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=SampleQryExcel.Fields[i].Value;
            end;
          SampleQryExcel.Next;
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

procedure TDFC.Cutting_Qry();
begin
    with CutQry do
      begin
      active:=false;
      sql.Clear;
      sql.add('select * from (select ywsm,SUM(Qty) PlanningQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,cutdate_first, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main');
      sql.add('group by ywsm)planning');
      sql.add('full outer join (');
      sql.add('select ywsm,SUM(Qty) SampleRoomQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,cutdate, 111)  between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main2');
      sql.add('group by ywsm)real on real.YWSM=planning.ywsm');
     // showmessage(sql.text) ;
      active:=true;
      end;
end;


procedure TDFC.Stitching_Qry();
begin
    with StitchingQry do
      begin
      active:=false;
      sql.Clear;
      sql.add('select * from (select ywsm,SUM(Qty) PlanningQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,StitchingDate_First, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main');
      sql.add('group by ywsm)planning');
      sql.add('full outer join (');
      sql.add('select ywsm,SUM(Qty) SampleRoomQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE )kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,StitchingDate, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main2');
      sql.add('group by ywsm)real on real.YWSM=planning.ywsm');
      //showmessage(sql.text) ;
      active:=true;
      end;
end;


procedure TDFC.Assembly_Qry();
begin
    with AssemblyQry do
      begin
      active:=false;
      sql.Clear;
      sql.add('select * from (select ywsm,SUM(Qty) PlanningQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,AssembiyDate_First, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main');
      sql.add('group by ywsm)planning');
      sql.add('full outer join (');
      sql.add('select ywsm,SUM(Qty) SampleRoomQty from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,Assemblecomplete, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main2');
      sql.add('group by ywsm)real on real.YWSM=planning.ywsm');
      active:=true;
      end;
end;

procedure TDFC.Packing_Qry();
begin
    with PackingQry do
      begin
      active:=false;
      sql.Clear;
      sql.add('select * from (select ywsm,SUM(Qty) PackingQry from (');
      sql.add('select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,');
      sql.add('case');
      sql.add('when kflx=''TN''  then ''TotalNew''');
      sql.add('when kflx=''TN+'' then ''TotalNew+''');
      sql.add('when kflx=''CU''  then ''NewColor''');
      sql.add('when kflx=''NU''  then ''NewUpper''');
      sql.add('when kflx=''NU+'' then ''NewUpper+''');
      sql.add('when kflx=''NU-'' then ''NewUpper-''');
      sql.add('when kflx=''NG''  then ''NewGraphic''');
      sql.add('when kflx=''MU''  then ''NewMaterial''');
      sql.add('when kflx=''MU+'' then ''NewMaterial+''');
      sql.add('when kflx=''NP''  then ''NewProcess''');
      sql.add('when kflx=''NT''  then ''NewBottomComponentTooling''');
      sql.add('when kflx=''ND''  then ''NewCuttingDies''');
      sql.add('else ''Error'' end Type,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add('shoetest2.Qty,');
      sql.add('shoetestDetail.ywsm,');
      sql.add('shoetest.SeeStage,shoetest.YPDH');
      sql.add('from shoetest');
      sql.add('left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo');
      sql.add('left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DEVCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article');
      sql.add('left join shoetest2 on shoetest2.testno=shoetest.testno');
      sql.add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
      sql.add('where convert(varchar,complete, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add('and YWSM in (''Finished Shoe'',''CFM sample'',''Upper And Bottom(CE)'')');
      sql.add(')main');
      sql.add('group by ywsm)real');
      //showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.DateTimePicker1Change(Sender: TObject);
begin

  if DateTimePicker2.Date<DateTimePicker1.Date then
     DateTimePicker2.Date:=DateTimePicker1.Date;
end;

procedure TDFC.OtherPartsClick(Sender: TObject);
begin
  doSampleStatusQry();
end;

procedure TDFC.DateTimePicker2Change(Sender: TObject);
begin

  if DateTimePicker1.Date>DateTimePicker2.Date then
     DateTimePicker1.Date:=DateTimePicker2.Date;
end;

procedure TDFC.Button2Click(Sender: TObject);
begin
  Cutting_Qry();
  Stitching_Qry();
  Assembly_Qry();
  Packing_Qry();
end;


procedure TDFC.Cutting_Daily();
begin
    with Cutting_Daily_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select ShoeTestPlan.Serino,ShoeTestPlan.Groups,ShoeTestPlan.Groups2,shoetest.Testno,shoetest.Article SR,kfxxzl.kflx Tech_Level,');
      sql.add('shoetest.Stage,shoetest.Purpose,shoetest.FD Developer,');
      sql.add('isnull(bw01.qty,0) FinishedShoe,');
      sql.add('isnull(bw02.qty,0) HalfStitchingUpper,');
      sql.add('isnull(bw03.qty,0) StitchingUpper,');
      sql.add('isnull(bw04.qty,0) LastedUpper,');
      sql.add('isnull(bw05.qty,0) UpperComponent,');
      sql.add('isnull(bw10.qty,0) CFMSample,');
      sql.add('isnull(bw11.qty,0) UpperAndBottomCE,');
      sql.add('shoetest.SeeStage,shoetest.ypdh SampleOrder,shoetest.CutDate');
      sql.add('from shoetest');
      sql.add('left join YPZL on YPZL.YPDH = shoetest.YPDH');
      sql.add('LEFT JOIN ShoeTestPlan on ShoeTestPlan.TestNo=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW01''');
      sql.add('	group by parts,testno)bw01 on bw01.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW02''');
      sql.add('	group by parts,testno)bw02 on bw02.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW03''');
      sql.add('	group by parts,testno)bw03 on bw03.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW04''');
      sql.add('	group by parts,testno)bw04 on bw04.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW05''');
      sql.add('	group by parts,testno)bw05 on bw05.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW06''');
      sql.add('	group by parts,testno)bw06 on bw06.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW07''');
      sql.add('	group by parts,testno)bw07 on bw07.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW08''');
      sql.add('	group by parts,testno)bw08 on bw08.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW09''');
      sql.add('	group by parts,testno)bw09 on bw09.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW10''');
      sql.add('	group by parts,testno)bw10 on bw10.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW11''');
      sql.add('	group by parts,testno)bw11 on bw11.testno=shoetest.testno');
      sql.add('	left join (select devcode,kflx from kfxxzl where xieming not like ''%NULLIFY%'' group by devcode,kflx)kfxxzl  on kfxxzl.devcode=shoetest.article');
      sql.add('WHERE 1=1 and  (TBcancel=''0'' or TBcancel is null)');
      sql.add('and convert(varchar,shoetest.cutdate, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add(' group by   ShoeTestPlan.Serino,ShoeTestPlan.groups,ShoeTestPlan.groups2,shoetest.Testno,shoetest.Article,kfxxzl.kflx,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add(' isnull(bw01.qty,0),isnull(bw02.qty,0),isnull(bw03.qty,0),');
      sql.add(' isnull(bw04.qty,0),isnull(bw05.qty,0),isnull(bw10.qty,0),isnull(bw11.qty,0),');
      sql.add('shoetest.SeeStage,shoetest.ypdh,shoetest.CutDate');
     // showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.Stitching_Daily();
begin
    with Stitching_Daily_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select ShoeTestPlan.Serino,ShoeTestPlan.Groups,ShoeTestPlan.Groups2,shoetest.Testno,shoetest.Article SR,kfxxzl.kflx Tech_Level,');
      sql.add('shoetest.Stage,shoetest.Purpose,shoetest.FD Developer,');
      sql.add('isnull(bw01.qty,0) FinishedShoe,');
      sql.add('isnull(bw02.qty,0) HalfStitchingUpper,');
      sql.add('isnull(bw03.qty,0) StitchingUpper,');
      sql.add('isnull(bw04.qty,0) LastedUpper,');
      sql.add('isnull(bw05.qty,0) UpperComponent,');
      sql.add('isnull(bw10.qty,0) CFMSample,');
      sql.add('isnull(bw11.qty,0) UpperAndBottomCE,');
      sql.add('shoetest.SeeStage,shoetest.ypdh SampleOrder,stitchingDate');
      sql.add('from shoetest');
      sql.add('left join YPZL on YPZL.YPDH = shoetest.YPDH');
      sql.add('LEFT JOIN ShoeTestPlan on ShoeTestPlan.TestNo=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW01''');
      sql.add('	group by parts,testno)bw01 on bw01.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW02''');
      sql.add('	group by parts,testno)bw02 on bw02.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW03''');
      sql.add('	group by parts,testno)bw03 on bw03.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW04''');
      sql.add('	group by parts,testno)bw04 on bw04.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW05''');
      sql.add('	group by parts,testno)bw05 on bw05.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW06''');
      sql.add('	group by parts,testno)bw06 on bw06.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW07''');
      sql.add('	group by parts,testno)bw07 on bw07.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW08''');
      sql.add('	group by parts,testno)bw08 on bw08.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW09''');
      sql.add('	group by parts,testno)bw09 on bw09.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW10''');
      sql.add('	group by parts,testno)bw10 on bw10.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW11''');
      sql.add('	group by parts,testno)bw11 on bw11.testno=shoetest.testno');
      sql.add('	left join (select devcode,kflx from kfxxzl where xieming not like ''%NULLIFY%'' group by devcode,kflx)kfxxzl  on kfxxzl.devcode=shoetest.article');
      sql.add('WHERE 1=1 and  (TBcancel=''0'' or TBcancel is null)');
      sql.add('and convert(varchar,shoetest.stitchingDate, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add(' group by   ShoeTestPlan.Serino,ShoeTestPlan.groups,ShoeTestPlan.groups2,shoetest.Testno,shoetest.Article,kfxxzl.kflx,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add(' isnull(bw01.qty,0),isnull(bw02.qty,0),isnull(bw03.qty,0),');
      sql.add(' isnull(bw04.qty,0),isnull(bw05.qty,0),isnull(bw10.qty,0),isnull(bw11.qty,0),');
      sql.add('shoetest.SeeStage,shoetest.ypdh,stitchingDate');
     // showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.Assembly_Daily();
begin
    with Assembly_Daily_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select ShoeTestPlan.Serino,ShoeTestPlan.Groups,ShoeTestPlan.Groups2,shoetest.Testno,shoetest.Article SR,kfxxzl.kflx Tech_Level,');
      sql.add('shoetest.Stage,shoetest.Purpose,shoetest.FD Developer,');
      sql.add('isnull(bw01.qty,0) FinishedShoe,');
      sql.add('isnull(bw04.qty,0) LastedUpper,');
      sql.add('isnull(bw10.qty,0) CFMSample,');
      sql.add('isnull(bw11.qty,0) UpperAndBottomCE,');
      sql.add('shoetest.SeeStage,shoetest.ypdh SampleOrder,Assemblecomplete');
      sql.add('from shoetest');
      sql.add('left join YPZL on YPZL.YPDH = shoetest.YPDH');
      sql.add('LEFT JOIN ShoeTestPlan on ShoeTestPlan.TestNo=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW01''');
      sql.add('	group by parts,testno)bw01 on bw01.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW02''');
      sql.add('	group by parts,testno)bw02 on bw02.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW03''');
      sql.add('	group by parts,testno)bw03 on bw03.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW04''');
      sql.add('	group by parts,testno)bw04 on bw04.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW05''');
      sql.add('	group by parts,testno)bw05 on bw05.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW06''');
      sql.add('	group by parts,testno)bw06 on bw06.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW07''');
      sql.add('	group by parts,testno)bw07 on bw07.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW08''');
      sql.add('	group by parts,testno)bw08 on bw08.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW09''');
      sql.add('	group by parts,testno)bw09 on bw09.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW10''');
      sql.add('	group by parts,testno)bw10 on bw10.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW11''');
      sql.add('	group by parts,testno)bw11 on bw11.testno=shoetest.testno');
      sql.add('	left join (select devcode,kflx from kfxxzl where xieming not like ''%NULLIFY%'' group by devcode,kflx)kfxxzl  on kfxxzl.devcode=shoetest.article');
      sql.add('WHERE 1=1 and  (TBcancel=''0'' or TBcancel is null)');
      sql.add('and convert(varchar,shoetest.Assemblecomplete, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add(' group by   ShoeTestPlan.Serino,ShoeTestPlan.groups,ShoeTestPlan.groups2,shoetest.Testno,shoetest.Article,kfxxzl.kflx,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add(' isnull(bw01.qty,0),isnull(bw04.qty,0),isnull(bw10.qty,0),isnull(bw11.qty,0),');
      sql.add('shoetest.SeeStage,shoetest.ypdh,Assemblecomplete');
     // showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.Packing_Daily();
begin
    with Packing_Daily_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select ShoeTestPlan.Serino,ShoeTestPlan.Groups,ShoeTestPlan.Groups2,shoetest.Testno,shoetest.Article SR,kfxxzl.kflx Tech_Level,');
      sql.add('shoetest.Stage,shoetest.Purpose,shoetest.FD Developer,');
      sql.add('isnull(bw01.qty,0) FinishedShoe,');

      sql.add('isnull(bw10.qty,0) CFMSample,');
      sql.add('isnull(bw11.qty,0) UpperAndBottomCE,');
      sql.add('shoetest.SeeStage,shoetest.ypdh SampleOrder,complete PackingOK');
      sql.add('from shoetest');
      sql.add('left join YPZL on YPZL.YPDH = shoetest.YPDH');
      sql.add('LEFT JOIN ShoeTestPlan on ShoeTestPlan.TestNo=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW01''');
      sql.add('	group by parts,testno)bw01 on bw01.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW02''');
      sql.add('	group by parts,testno)bw02 on bw02.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW03''');
      sql.add('	group by parts,testno)bw03 on bw03.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW04''');
      sql.add('	group by parts,testno)bw04 on bw04.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW05''');
      sql.add('	group by parts,testno)bw05 on bw05.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW06''');
      sql.add('	group by parts,testno)bw06 on bw06.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW07''');
      sql.add('	group by parts,testno)bw07 on bw07.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW08''');
      sql.add('	group by parts,testno)bw08 on bw08.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW09''');
      sql.add('	group by parts,testno)bw09 on bw09.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW10''');
      sql.add('	group by parts,testno)bw10 on bw10.testno=shoetest.testno');
      sql.add('left join (');
      sql.add('	select sum(qty) qty,parts,testno from shoetest2 where parts=''BW11''');
      sql.add('	group by parts,testno)bw11 on bw11.testno=shoetest.testno');
      sql.add('	left join (select devcode,kflx from kfxxzl where xieming not like ''%NULLIFY%'' group by devcode,kflx)kfxxzl  on kfxxzl.devcode=shoetest.article');
      sql.add('WHERE 1=1 and  (TBcancel=''0'' or TBcancel is null)');
      sql.add('and convert(varchar,shoetest.complete, 111) between');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker1.datetime)+' '+formatdatetime('hh:mm:ss',DTP11.datetime)+''') ');
      sql.add(' and  ');
      sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker2.datetime)+' '+formatdatetime('hh:mm:ss',DTP22.datetime)+''') ');
      sql.add(' group by   ShoeTestPlan.Serino,ShoeTestPlan.groups,ShoeTestPlan.groups2,shoetest.Testno,shoetest.Article,kfxxzl.kflx,');
      sql.add('shoetest.stage,shoetest.Purpose,shoetest.FD,');
      sql.add(' isnull(bw01.qty,0),isnull(bw10.qty,0),isnull(bw11.qty,0),');
      sql.add('shoetest.SeeStage,shoetest.ypdh,complete');
     // showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.Button3Click(Sender: TObject);
var
   eclApp, WorkBook, Picture: olevariant;
   i, j : integer;
   CPQty,CAQty,SPQty,SAQty,APQty,AAQty,PAQty :string;
   Img: TImage;
   workRange : OleVariant;
begin
   CPQty:=(cutDbeh.GetFooterValue(0,cutDbeh.Columns[1]));
   CAQty:=(cutDbeh.GetFooterValue(0,cutDbeh.Columns[3]));
   SPQty:=(StitchingDbEh.GetFooterValue(0,StitchingDbEh.Columns[1]));
   SAQty:=(StitchingDbEh.GetFooterValue(0,StitchingDbEh.Columns[3]));
   APQty:=(DBGridEh3.GetFooterValue(0,DBGridEh3.Columns[1]));
   AAQty:=(DBGridEh3.GetFooterValue(0,DBGridEh3.Columns[3]));
   PAQty:=(PackingEH.GetFooterValue(0,PackingEH.Columns[1]));
   Cutting_Daily();
   Stitching_Daily();
   Assembly_Daily();
   Packing_Daily();
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.23.9\liy_erp\Additional\daily.xls'),Pchar(AppDir+'Additional\daily.xls'),false);
   if FileExists(AppDir+'Additional\daily.xls') then
   begin
      if  Cutting_Daily_.active  then
      begin
      try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;



      try
        eclApp.WorkBooks.Open(AppDir+'Additional\daily.xls');

        eclApp.WorkSheets[2].Activate;
         for   i:=0   to   Cutting_Daily_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Cutting_Daily_.fields[i].FieldName;
          end;

        Cutting_Daily_.First;
        j:=2;
        while   not   Cutting_Daily_.Eof   do
          begin
            for   i:=0   to  Cutting_Daily_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Cutting_Daily_.Fields[i].Value;
            end;
          Cutting_Daily_.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
//Stitching_Daily_頁
        eclApp.WorkSheets[3].Activate;
         for   i:=0   to   Stitching_Daily_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Stitching_Daily_.fields[i].FieldName;
          end;

        Stitching_Daily_.First;
        j:=2;
        while   not   Stitching_Daily_.Eof   do
          begin
            for   i:=0   to  Stitching_Daily_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Stitching_Daily_.Fields[i].Value;
            end;
          Stitching_Daily_.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
//Assembly_Daily_頁
        eclApp.WorkSheets[4].Activate;
         for   i:=0   to   Assembly_Daily_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Assembly_Daily_.fields[i].FieldName;
          end;

        Assembly_Daily_.First;
        j:=2;
        while   not   Assembly_Daily_.Eof   do
          begin
            for   i:=0   to  Assembly_Daily_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Assembly_Daily_.Fields[i].Value;
            end;
          Assembly_Daily_.Next;
          inc(j);
          end;
       eclapp.columns.autofit;

//Packing_Daily_頁
        eclApp.WorkSheets[5].Activate;
         for   i:=0   to   Packing_Daily_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Packing_Daily_.fields[i].FieldName;
          end;

        Packing_Daily_.First;
        j:=2;
        while   not   Packing_Daily_.Eof   do
          begin
            for   i:=0   to  Packing_Daily_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Packing_Daily_.Fields[i].Value;
            end;
          Packing_Daily_.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
//Sum_Daily_頁
       eclApp.WorkSheets[1].Activate;
       eclApp.Cells(4,3):=CPQty;
       eclApp.Cells(4,4):=CAQty;
       eclApp.Cells(4,6):=SPQty;
       eclApp.Cells(4,7):=SAQty;
       eclApp.Cells(4,9):=APQty;
       eclApp.Cells(4,10):=AAQty;
       eclApp.Cells(4,12):=PAQty;
       if datetimepicker1.DateTime=datetimepicker2.DateTime then
          eclApp.Cells(4,1):=datetimepicker1.DateTime;

       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
       end;
    end;
  end;
end;


procedure TDFC.R1_R4_PC();
begin//生產樣品出貨雙數(XT GIAY):R1,R4,PC
    with R1_R4_PC_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) R1_R4_PC,parts.ywsm from shoetest');
      sql.add('left join shoetest2 on shoetest2.TestNo=shoetest.TestNo');
      sql.add('left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepName');
      sql.add('left join shoetestdetail parts on parts.YYBH=shoetest2.parts');
      sql.add('where convert(varchar,shoetest.SQTBOKTime,111) between ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker6.datetime)+''') ');
      sql.add('      and  ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker5.datetime)+''') ');
      sql.add('      and shoetestdetail.YYBH in (''MD01'',''MD06'',''MD08'') and left(shoetest.YPDH,4) in (''LAIK'',''BYIK'',''SKXK'',''CBYK'')');
      sql.add('group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm');
      sql.add('order by shoetest.SQTBOKTime');
     // showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.R2_R3_ADD_WearFitTest();
begin//生產樣品出貨雙數(XT GIAY):R2,R3,ADD,wear/fit test
    with R2_R3_ADD_WearFitTest_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) R2_R3_ADD_WearFitTest,parts.ywsm from shoetest');
      sql.add('left join shoetest2 on shoetest2.TestNo=shoetest.TestNo');
      sql.add('left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepName');
      sql.add('left join shoetestdetail parts on parts.YYBH=shoetest2.parts');
      sql.add('where convert(varchar,shoetest.SQTBOKTime,111) between ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker6.datetime)+''') ');
      sql.add('      and  ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker5.datetime)+''') ');
      sql.add('            and shoetestdetail.YYBH in (''MD01'',''MD03'',''MD04'') and left(shoetest.YPDH,4) in (''LAIV'',''BYIV'')');
      sql.add('group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm');
      sql.add('order by shoetest.SQTBOKTime');
     // showmessage(sql.text);
      active:=true;
      end;
end;


procedure TDFC.MST_EXT_FSR();
begin//技術試作鞋(GIAY PKT):MST, EXT, FSR
    with MST_EXT_FSR_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) MST_EXT_FSR,parts.ywsm from shoetest');
      sql.add('left join shoetest2 on shoetest2.TestNo=shoetest.TestNo');
      sql.add('left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepName');
      sql.add('left join shoetestdetail parts on parts.YYBH=shoetest2.parts');
      sql.add('where convert(varchar,shoetest.SQTBOKTime,111) between ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker6.datetime)+''') ');
      sql.add('      and  ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker5.datetime)+''') ');
      sql.add('            and shoetestdetail.YYBH in (''MD07'') and left(shoetest.YPDH,4) in (''LAIT'',''BYIT'')');
      sql.add('group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm');
      sql.add('order by shoetest.SQTBOKTime');
     // showmessage(sql.text);
      active:=true;
      end;
end;


procedure TDFC.SEE_Pullover();
begin//試版鞋Giay Lam Th? R?p: SEE-Pullover
    with SEE_Pullover_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) SEE_Pullover,parts.ywsm from shoetest');
      sql.add('left join shoetest2 on shoetest2.TestNo=shoetest.TestNo');
      sql.add('left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepName');
      sql.add('left join shoetestdetail parts on parts.YYBH=shoetest2.parts');
      sql.add('where convert(varchar,shoetest.SQTBOKTime,111) between ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker6.datetime)+''') ');
      sql.add('      and  ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker5.datetime)+''') ');
      sql.add('            and shoetestdetail.YYBH in (''MD15'') and left(shoetest.YPDH,4) in (''LAIK'',''BYIK'',''SKXK'',''CBYK'')');
      sql.add('group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm');
      sql.add('order by shoetest.SQTBOKTime');
     // showmessage(sql.text);
      active:=true;
      end;
end;


procedure TDFC.QUV_OtherTest();
begin//其他測試鞋(Another test) Cac lo?i giay th? : 彎曲/拉力/老化/QUV.. khac QUV,Aging,Giay th? keo + th? nh?p
    with QUV_OtherTest_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) QUV_OtherTest,parts.ywsm from shoetest');
      sql.add('left join shoetest2 on shoetest2.TestNo=shoetest.TestNo');
      sql.add('left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepName');
      sql.add('left join shoetestdetail parts on parts.YYBH=shoetest2.parts');
      sql.add('where convert(varchar,shoetest.SQTBOKTime,111) between ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker6.datetime)+''') ');
      sql.add('      and  ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker5.datetime)+''') ');
      sql.add('            and shoetestdetail.YYBH in (''MD02'',''MD13'',''MD14'') and left(shoetest.YPDH,4) in (''LAIK'',''BYIK'',''SKXK'',''CBYK'')');
      sql.add('group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm');
      sql.add('order by shoetest.SQTBOKTime');
     // showmessage(sql.text);
      active:=true;
      end;
end;



procedure TDFC.Shoe();
begin//生產樣品留底雙數(GIAY):R1;R2,R3,R4,PC
    with Shoe_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) Shoe,parts.ywsm from shoetest');
      sql.add('left join shoetest2 on shoetest2.TestNo=shoetest.TestNo');
      sql.add('left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepName');
      sql.add('left join shoetestdetail parts on parts.YYBH=shoetest2.parts');
      sql.add('where convert(varchar,shoetest.SQTBOKTime,111) between ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker6.datetime)+''') ');
      sql.add('      and  ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker5.datetime)+''') ');
      sql.add('            and shoetestdetail.YYBH in (''MD09'',''MD05'',''MD11'',''MD16'') and left(shoetest.YPDH,4)  in (''LAIK'',''BYIK'',''SKXK'',''CBYK'') and shoetest2.parts in (''BW01'',''BW10'')');
      sql.add('group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm');
      sql.add('order by shoetest.SQTBOKTime');
     // showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.half();
begin//生產樣品留底半成品鞋雙數:R1;R2,R3,R4,PC
    with half_ do
      begin
      active:=false;
      sql.Clear;
      sql.add('select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) half,parts.ywsm from shoetest');
      sql.add('left join shoetest2 on shoetest2.TestNo=shoetest.TestNo');
      sql.add('left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepName');
      sql.add('left join shoetestdetail parts on parts.YYBH=shoetest2.parts');
      sql.add('where convert(varchar,shoetest.SQTBOKTime,111) between ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker6.datetime)+''') ');
      sql.add('      and  ');
      sql.add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime)+' '+formatdatetime('hh:mm:ss',DateTimePicker5.datetime)+''') ');
      sql.add('            and shoetestdetail.YYBH in (''MD09'',''MD05'',''MD11'',''MD16'') and left(shoetest.YPDH,4)  in (''LAIK'',''BYIK'',''SKXK'',''CBYK'') and shoetest2.parts not in (''BW01'',''BW10'')');
      sql.add('group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm');
      sql.add('order by shoetest.SQTBOKTime');
     // showmessage(sql.text);
      active:=true;
      end;
end;

procedure TDFC.CBY();
begin//生產樣品留底半成品鞋雙數:R1;R2,R3,R4,PC
    with CBY_Paking do
    begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#Progress'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #Progress END');

    SQL.Add('DECLARE @StartDate DateTime');
    SQL.Add('DECLARE @EndDate DateTime');  
    SQL.Add('DECLARE @PreviousDate DateTime');
    SQL.Add('SET @StartDate = ''' + formatdatetime('yyyy/MM/dd',DateTimePicker3.datetime) + '''');
    SQL.Add('SET @EndDate = ''' +formatdatetime('yyyy/MM/dd',DateTimePicker4.datetime) + '''');
    SQL.Add('SET @PreviousDate = CASE WHEN DATEPART(DW, @StartDate - 1) <> 1 THEN');
    SQL.Add('                    CONVERT(VARCHAR, @StartDate - 1, 111) ELSE');
    SQL.Add('                    CONVERT(VARCHAR, @StartDate - 2, 111) END');

    SQL.Add('WITH TEMPTAB(DATE) AS (');
    SQL.Add('  SELECT @PreviousDate');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS DATE FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= @EndDate');
    SQL.Add(')');

    SQL.Add('SELECT DateRange.Date, ''CBY'' AS Type, ISNULL(APacking, 0) AS APacking,');
    SQL.Add('ISNULL(TCutting, 0) AS TCutting, ISNULL(ACutting, 0) AS ACutting,');
    SQL.Add('ISNULL(TStitching, 0) AS TStitching, ISNULL(AStitching, 0) AS AStitching,');
    SQL.Add('ISNULL(TAssembly, 0) AS TAssembly, ISNULL(AAssembly, 0) AS AAssembly INTO #Progress FROM (');
    SQL.Add('  SELECT CONVERT(VARCHAR, DATE, 111) AS Date FROM TEMPTAB');
    SQL.Add(') AS DateRange');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CONVERT(VARCHAR, DATE, 111) AS AcceptDate, ISNULL(ACutting, 0) AS ACutting, ISNULL(TCutting, 0) AS TCutting FROM TEMPTAB');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate ELSE ScanCP.ScanDate END AS AcceptDate, ISNULL(SUM(total), 0) AS TCutting FROM CBY_Orders');
    SQL.Add('    LEFT JOIN CBY_Orders_Scan AS ScanCP ON ScanCP.workOrderId = CBY_Orders.workOrderId AND ScanCP.GXLB = ''CP''');
    SQL.Add('    WHERE MasterOrder IS NOT NULL AND CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate ELSE ScanCP.ScanDate END BETWEEN @PreviousDate AND @EndDate');
    SQL.Add('    GROUP BY CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate ELSE ScanCP.ScanDate END');
    SQL.Add('  ) AS PlanData ON PlanData.AcceptDate = TEMPTAB.DATE');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(SUM(CBY_Orders.total), 0) AS ACutting FROM CBY_Orders_Scan');
    SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('    WHERE GXLB = ''C'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN @PreviousDate AND @EndDate');
    SQL.Add('    GROUP BY CONVERT(VARCHAR, ScanDate, 111)');
    SQL.Add('  ) AS ScanData ON ScanData.ScanDate = TEMPTAB.DATE');
    SQL.Add(') AS ActualC ON ActualC.AcceptDate = DateRange.Date');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CONVERT(VARCHAR, DATE, 111) AS AcceptDate, ISNULL(AStitching, 0) AS AStitching, ISNULL(TStitching, 0) AS TStitching FROM TEMPTAB');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate + 1 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(DW, factoryAcceptDate + 1) > 0 THEN 1 ELSE 0 END');
    SQL.Add('    ELSE ScanCP.ScanDate + 1 + CASE WHEN DATEPART(DW, ScanCP.ScanDate) - DATEPART(DW, ScanCP.ScanDate + 1) > 0 THEN 1 ELSE 0 END END AS AcceptDate, ISNULL(SUM(total), 0) AS TStitching FROM CBY_Orders');
    SQL.Add('    LEFT JOIN CBY_Orders_Scan AS ScanCP ON ScanCP.workOrderId = CBY_Orders.workOrderId AND ScanCP.GXLB = ''CP''');
    SQL.Add('    WHERE CBY_Orders.MasterOrder IS NOT NULL');
    SQL.Add('    AND CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate + 1 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(DW, factoryAcceptDate + 1) > 0 THEN 1 ELSE 0 END');
    SQL.Add('    ELSE ScanCP.ScanDate + 1 + CASE WHEN DATEPART(DW, ScanCP.ScanDate) - DATEPART(DW, ScanCP.ScanDate + 1) > 0 THEN 1 ELSE 0 END END BETWEEN @PreviousDate AND @EndDate');
    SQL.Add('    GROUP BY CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate + 1 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(DW, factoryAcceptDate + 1) > 0 THEN 1 ELSE 0 END');
    SQL.Add('    ELSE ScanCP.ScanDate + 1 + CASE WHEN DATEPART(DW, ScanCP.ScanDate) - DATEPART(DW, ScanCP.ScanDate + 1) > 0 THEN 1 ELSE 0 END END');
    SQL.Add('  ) AS PlanData ON PlanData.AcceptDate = TEMPTAB.DATE');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(SUM(CBY_Orders.total), 0) AS AStitching FROM CBY_Orders_Scan');
    SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('    WHERE GXLB = ''S'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN @PreviousDate AND @EndDate');
    SQL.Add('    GROUP BY CONVERT(VARCHAR, ScanDate, 111)');
    SQL.Add('  ) AS ScanData ON ScanData.ScanDate = TEMPTAB.DATE');
    SQL.Add(') AS ActualS ON ActualS.AcceptDate = DateRange.Date');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CONVERT(VARCHAR, DATE, 111) AS AcceptDate, ISNULL(AAssembly, 0) AS AAssembly, ISNULL(TAssembly, 0) AS TAssembly FROM TEMPTAB');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate + 2 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(DW, factoryAcceptDate + 2) > 0 THEN 1 ELSE 0 END');
    SQL.Add('    ELSE ScanCP.ScanDate + 2 + CASE WHEN DATEPART(DW, ScanCP.ScanDate) - DATEPART(DW, ScanCP.ScanDate + 2) > 0 THEN 1 ELSE 0 END END AS AcceptDate, ISNULL(SUM(total), 0) AS TAssembly FROM CBY_Orders');
    SQL.Add('    LEFT JOIN CBY_Orders_Scan AS ScanCP ON ScanCP.workOrderId = CBY_Orders.workOrderId AND ScanCP.GXLB = ''CP''');
    SQL.Add('    WHERE CBY_Orders.MasterOrder IS NOT NULL');
    SQL.Add('    AND CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate + 2 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(DW, factoryAcceptDate + 2) > 0 THEN 1 ELSE 0 END');
    SQL.Add('    ELSE ScanCP.ScanDate + 2 + CASE WHEN DATEPART(DW, ScanCP.ScanDate) - DATEPART(DW, ScanCP.ScanDate + 2) > 0 THEN 1 ELSE 0 END END BETWEEN @PreviousDate AND @EndDate');
    SQL.Add('    GROUP BY CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptDate + 2 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(DW, factoryAcceptDate + 2) > 0 THEN 1 ELSE 0 END');
    SQL.Add('    ELSE ScanCP.ScanDate + 2 + CASE WHEN DATEPART(DW, ScanCP.ScanDate) - DATEPART(DW, ScanCP.ScanDate + 2) > 0 THEN 1 ELSE 0 END END');
    SQL.Add('  ) AS PlanData ON PlanData.AcceptDate = TEMPTAB.DATE');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(SUM(CBY_Orders.total), 0) AS AAssembly FROM CBY_Orders_Scan');
    SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('    WHERE GXLB = ''A'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN @PreviousDate AND @EndDate');
    SQL.Add('    GROUP BY CONVERT(VARCHAR, ScanDate, 111)');
    SQL.Add('  ) AS ScanData ON ScanData.ScanDate = TEMPTAB.DATE');
    SQL.Add(') AS ActualA ON ActualA.AcceptDate = DateRange.Date');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(SUM(CBY_Orders.total), 0) AS APacking FROM CBY_Orders_Scan');
    SQL.Add('  LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('  WHERE GXLB = ''I'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN @PreviousDate AND @EndDate');
    SQL.Add('  GROUP BY CONVERT(VARCHAR, ScanDate, 111)');
    SQL.Add(') AS ActualI ON ActualI.ScanDate = DateRange.Date');

    SQL.Add('SELECT Date, Type, ISNULL(Pairs, 0) AS Pairs, ISNULL(CancelPairs, 0) AS CancelPairs,');
    SQL.Add('TCutting + ISNULL(C, 0) AS TCutting, ACutting, CASE WHEN ISNULL(TCutting + ISNULL(C, 0), 0) > 0 THEN ISNULL(ACutting, 0)*100.0/ISNULL(TCutting + ISNULL(C, 0), 0) ELSE 0 END AS PCutting,');
    SQL.Add('TStitching + ISNULL(S, 0) AS TStitching, AStitching, CASE WHEN ISNULL(TStitching + ISNULL(S, 0), 0) > 0 THEN ISNULL(AStitching, 0)*100.0/ISNULL(TStitching + ISNULL(S, 0), 0) ELSE 0 END AS PStitching,');
    SQL.Add('TAssembly + ISNULL(A, 0) AS TAssembly, AAssembly, CASE WHEN ISNULL(TAssembly + ISNULL(A, 0), 0) > 0 THEN ISNULL(AAssembly, 0)*100.0/ISNULL(TAssembly + ISNULL(A, 0), 0) ELSE 0 END AS PAssembly,');
    SQL.Add('APacking FROM #Progress');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CASE WHEN DATEPART(DW, CONVERT(SmallDateTime, Date, 111) + 1) <> 1 THEN');
    SQL.Add('  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 1, 111) ELSE');
    SQL.Add('  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 2, 111) END AS PreviousDate,');
    SQL.Add('  SUM(CASE WHEN TCutting - ACutting > 0 THEN TCutting - ACutting ELSE 0 END) AS C,');
    SQL.Add('  SUM(CASE WHEN TStitching - AStitching > 0 THEN TStitching - AStitching ELSE 0 END) AS S,');
    SQL.Add('  SUM(CASE WHEN TAssembly - AAssembly > 0 THEN TAssembly - AAssembly ELSE 0 END) AS A FROM #Progress');
    SQL.Add('  GROUP BY CASE WHEN DATEPART(DW, CONVERT(SmallDateTime, Date, 111) + 1) <> 1 THEN');
    SQL.Add('  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 1, 111) ELSE');
    SQL.Add('  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 2, 111) END');
    SQL.Add(') AS Previous ON Previous.PreviousDate = #Progress.Date');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT factoryAcceptDate, SUM(total) AS Pairs, SUM(CASE WHEN ISNULL(Cancel, 0) = 1 THEN total END) AS CancelPairs FROM CBY_Orders');
    SQL.Add('  WHERE factoryAcceptDate BETWEEN @StartDate AND @EndDate');
    SQL.Add('  GROUP BY factoryAcceptDate');
    SQL.Add(') AS CBY_Orders ON CONVERT(VARCHAR, CBY_Orders.factoryAcceptDate, 111) = #Progress.Date');
    SQL.Add('WHERE CONVERT(SmallDateTime, #Progress.Date) BETWEEN @StartDate AND @EndDate');
    SQL.Add('ORDER BY Date');
    funcobj.WriteErrorLog(sql.Text);
    Active := true;
    end;
end;


procedure TDFC.Button4Click(Sender: TObject);
begin
  R1_R4_PC();
  R2_R3_ADD_WearFitTest();
  MST_EXT_FSR();
  SEE_Pullover();
  QUV_OtherTest();
  Shoe();
  half();
  CBY();
end;

procedure TDFC.Button5Click(Sender: TObject);
var
   R1_R4_PC,R2_R3_ADD_WearFitTest,MST_EXT_FSR,SEE_Pullover,QUV_OtherTest,Shoe,Half,CBY_Paking :string;
   eclApp, WorkBook, Picture: olevariant;
   i, j : integer;
   Img: TImage;
   workRange : OleVariant;
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.23.9\liy_erp\Additional\DailyReport.xls'),Pchar(AppDir+'Additional\DailyReport.xls'),false);
   if FileExists(AppDir+'Additional\DailyReport.xls') then
   begin
      if  R1_R4_PC_.active  then
      begin
      try
         // showmessage('123');
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;
      try
       eclApp.WorkBooks.Open(AppDir+'Additional\DailyReport.xls');
       eclApp.WorkSheets[1].Activate;

       if  datetimepicker3.DateTime<>datetimepicker4.DateTime then
           datetimepicker7.DateTime:=datetimepicker4.DateTime;
       eclApp.Cells(1,1):=FormatDateTime('yyyy-mm',datetimepicker3.datetime)+'月份開發中心-開發樣品生產報表BAO BIEU SAN XUAT CUA TRUNG TAM KHAI THAC TRONG THANG '+FormatDateTime('yyyy-mm',datetimepicker3.datetime);
       eclApp.Cells(2,3):=FormatDateTime('yyyy-mm',datetimepicker3.datetime)+'月份總計'+#13#10+'TONG CONG'+FormatDateTime('yyyy-mm',datetimepicker3.datetime);
      // eclApp.Cells(4,3):=(datetimepicker7.DateTime-datetimepicker3.DateTime)*300;
      // eclApp.Cells(5,3):=(datetimepicker7.DateTime-datetimepicker3.DateTime)*800;       
       j:=5;
       while( datetimepicker3.DateTime<>datetimepicker7.DateTime+1) do
       begin
         datetimepicker4.DateTime:=datetimepicker3.DateTime;
         button4.click;
         R1_R4_PC:=(DBGridEh8.GetFooterValue(0,DBGridEh8.Columns[2]));
         R2_R3_ADD_WearFitTest:=(DBGridEh9.GetFooterValue(0,DBGridEh9.Columns[2]));
         MST_EXT_FSR:=(DBGridEh7.GetFooterValue(0,DBGridEh7.Columns[2]));
         SEE_Pullover:=(DBGridEh11.GetFooterValue(0,DBGridEh11.Columns[2]));
         QUV_OtherTest:=(DBGridEh12.GetFooterValue(0,DBGridEh12.Columns[2]));
         Shoe:=(DBGridEh10.GetFooterValue(0,DBGridEh10.Columns[2]));
         Half:=(DBGridEh4.GetFooterValue(0,DBGridEh4.Columns[2]));
         CBY_Paking:=(DBGridEh15.GetFooterValue(0,DBGridEh15.Columns[1]));
         eclApp.Cells(2,j):=datetimepicker3.DateTime;
         eclApp.Cells(8,j):=R1_R4_PC;
         eclApp.Cells(9,j):=R2_R3_ADD_WearFitTest;
         eclApp.Cells(10,j):=MST_EXT_FSR;
         eclApp.Cells(11,j):=SEE_Pullover;
         eclApp.Cells(12,j):=QUV_OtherTest;
         eclApp.Cells(13,j):=Shoe;
         eclApp.Cells(14,j):=Half;
         eclApp.Cells(16,j):=CBY_Paking;
         datetimepicker3.DateTime:=datetimepicker3.DateTime+1;
         inc(j);
       end;
     //  if datetimepicker1.DateTime=datetimepicker2.DateTime then
      //    eclApp.Cells(4,1):=datetimepicker1.DateTime;
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
       end;
    end;
  end;


end;

procedure TDFC.DateTimePicker3Change(Sender: TObject);
begin
  if DateTimePicker4.Date<DateTimePicker3.Date then
     DateTimePicker4.Date:=DateTimePicker3.Date;
end;

procedure TDFC.DateTimePicker4Change(Sender: TObject);
begin
  if DateTimePicker3.Date>DateTimePicker4.Date then
     DateTimePicker3.Date:=DateTimePicker4.Date;
end;

procedure TDFC.Button6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  R1_R4_PC_.active:=true;
  if  R1_R4_PC_.active  then
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
        for   i:=0   to   R1_R4_PC_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=R1_R4_PC_.fields[i].FieldName;
          end;

        R1_R4_PC_.First;
        j:=2;
        while   not   R1_R4_PC_.Eof   do
          begin
            for   i:=0   to  R1_R4_PC_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=R1_R4_PC_.Fields[i].Value;
            end;
          R1_R4_PC_.Next;
          inc(j);
         end;
///////////////////////////////////////////////////////////////////////////

        for   i:=0   to   R2_R3_ADD_WearFitTest_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+6):=R2_R3_ADD_WearFitTest_.fields[i].FieldName;
          end;

        R2_R3_ADD_WearFitTest_.First;
        j:=2;
        while   not   R2_R3_ADD_WearFitTest_.Eof   do
          begin
            for   i:=0   to  R2_R3_ADD_WearFitTest_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+6):=R2_R3_ADD_WearFitTest_.Fields[i].Value;
            end;
          R2_R3_ADD_WearFitTest_.Next;
          inc(j);
          end;

///////////////////////////////////////////////////////////////////////////

        for   i:=0   to   MST_EXT_FSR_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+11):=MST_EXT_FSR_.fields[i].FieldName;
          end;

        MST_EXT_FSR_.First;
        j:=2;
        while   not   MST_EXT_FSR_.Eof   do
          begin
            for   i:=0   to  MST_EXT_FSR_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+11):=MST_EXT_FSR_.Fields[i].Value;
            end;
          MST_EXT_FSR_.Next;
          inc(j);
          end;
///////////////////////////////////////////////////////////////////////////

        for   i:=0   to   SEE_Pullover_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+16):=SEE_Pullover_.fields[i].FieldName;
          end;

        SEE_Pullover_.First;
        j:=2;
        while   not   SEE_Pullover_.Eof   do
          begin
            for   i:=0   to  SEE_Pullover_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+16):=SEE_Pullover_.Fields[i].Value;
            end;
          SEE_Pullover_.Next;
          inc(j);
          end;
///////////////////////////////////////////////////////////////////////////

        for   i:=0   to   QUV_OtherTest_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+21):=QUV_OtherTest_.fields[i].FieldName;
          end;

        QUV_OtherTest_.First;
        j:=2;
        while   not   QUV_OtherTest_.Eof   do
          begin
            for   i:=0   to  QUV_OtherTest_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+21):=QUV_OtherTest_.Fields[i].Value;
            end;
          QUV_OtherTest_.Next;
          inc(j);
          end;

///////////////////////////////////////////////////////////////////////////

        for   i:=0   to   Shoe_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+26):=Shoe_.fields[i].FieldName;
          end;

        Shoe_.First;
        j:=2;
        while   not   Shoe_.Eof   do
          begin
            for   i:=0   to  Shoe_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+26):=Shoe_.Fields[i].Value;
            end;
          Shoe_.Next;
          inc(j);
          end;

///////////////////////////////////////////////////////////////////////////

        for   i:=0   to   half_.fieldcount-1   do
          begin
              eclApp.Cells(1,i+31):=half_.fields[i].FieldName;
          end;

        half_.First;
        j:=2;
        while   not   half_.Eof   do
          begin
            for   i:=0   to  half_.fieldcount-1  do
            begin
              eclApp.Cells(j,i+31):=half_.Fields[i].Value;
            end;
          half_.Next;
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

procedure TDFC.HourlyOutput;
var Edate: string;
begin
  Qtmp.Active := false;
  Qtmp.SQL.Text := 'Select top 1 Userdate from SMZL';
  Qtmp.Active := true;

  with QHO do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DENSE_RANK() OVER(ORDER BY Date) AS Seq, Date, GXLB');
    SQL.Add(', SUM(CASE WHEN Hour = 7 THEN Qty END) AS ''7h30-8h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 8 THEN Qty END) AS ''8h30-9h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 9 THEN Qty END) AS ''9h30-10h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 10 THEN Qty END) AS ''10h30-11h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 11 THEN Qty END) AS ''11h30-12h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 12 THEN Qty END) AS ''12h30-13h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 13 THEN Qty END) AS ''13h30-14h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 14 THEN Qty END) AS ''14h30-15h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 15 THEN Qty END) AS ''15h30-16h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 16 THEN Qty END) AS ''16h30-17h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 17 THEN Qty END) AS ''17h30-18h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 18 THEN Qty END) AS ''18h30-19h30''');
    SQL.Add(', SUM(CASE WHEN Hour = 19 THEN Qty END) AS ''19h30-20h30''');
    SQL.Add(', SUM(CASE WHEN Hour <= 19 THEN Qty else 0 END) AS Total');
    SQL.Add('FROM (');
    if (CB1.ItemIndex = 0) OR (CB1.ItemIndex = 1) OR (CB1.ItemIndex = 4) then
    begin
      SQL.Add('  SELECT Date, Hour, GXLB, Qty FROM (');
      SQL.Add('    SELECT CONVERT(VARCHAR, ShoeTest.CutDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ShoeTest.CutDate)) AS Hour, ''Cutting'' AS GXLB, shoetest2.Qty FROM ShoeTest');
      SQL.Add('    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo');
      SQL.Add('    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.CutDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('    AND YWSM IN (''Finished Shoe'', ''Half Stitching Upper'', ''Stitching Upper'', ''Lasted upper'', ''Upper Component'', ''CFM sample'', ''Upper And Bottom(CE)'')');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ShoeTest.StitchingDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ShoeTest.StitchingDate)) AS Hour, ''Stitching'' AS GXLB, shoetest2.Qty FROM ShoeTest');
      SQL.Add('    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo');
      SQL.Add('    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.StitchingDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('    AND YWSM IN (''Finished Shoe'', ''Half Stitching Upper'', ''Stitching Upper'', ''Lasted upper'', ''Upper Component'', ''CFM sample'', ''Upper And Bottom(CE)'')');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ShoeTest.Assemblecomplete, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ShoeTest.Assemblecomplete)) AS Hour, ''Assembly'' AS GXLB, shoetest2.Qty FROM ShoeTest');
      SQL.Add('    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo');
      SQL.Add('    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.Assemblecomplete, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('    AND YWSM IN (''Finished Shoe'', ''Lasted upper'', ''CFM sample'', ''Upper And Bottom(CE)'')');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ShoeTest.Complete, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ShoeTest.Complete)) AS Hour, ''Packing'' AS GXLB, shoetest2.Qty FROM ShoeTest');
      SQL.Add('    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo');
      SQL.Add('    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.Complete, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add('    AND YWSM IN (''Finished Shoe'', ''CFM sample'', ''Upper And Bottom(CE)'')');
      SQL.Add('  ) AS Sample');
    end;
    if (CB1.ItemIndex = 0) OR (CB1.ItemIndex = 4) then
      SQL.Add('  UNION ALL');
    if (CB1.ItemIndex = 0) OR (CB1.ItemIndex = 2) OR (CB1.ItemIndex = 4) then
    begin
      SQL.Add('  SELECT Date, Hour, GXLB, CAST(Qty AS FLOAT) AS Qty FROM (');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Cutting'' AS GXLB, CBY_Orders.total AS Qty FROM CBY_Orders_Scan');
      SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND GXLB = ''C''');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Stitching'' AS GXLB, CBY_Orders.total AS Qty FROM CBY_Orders_Scan');
      SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND GXLB = ''S''');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Assembly'' AS GXLB, CBY_Orders.total AS Qty FROM CBY_Orders_Scan');
      SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND GXLB = ''A''');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Packing'' AS GXLB, CBY_Orders.total AS Qty FROM CBY_Orders_Scan');
      SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND GXLB = ''I''');
      SQL.Add('  ) AS CBY');
    end;
    if (CB1.ItemIndex = 0) then
      SQL.Add('UNION ALL');
    if (CB1.ItemIndex = 0) OR (CB1.ItemIndex = 3) then
    begin
      SQL.Add('  SELECT Date, Hour, GXLB, CAST(Qty AS FLOAT) AS Qty FROM (');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Cutting'' AS GXLB, SMDDSS.Qty*SMZL.CTS AS Qty FROM SMZL');
      SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050101'' AND GXLB = ''C''');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Stitching'' AS GXLB, SMDDSS.Qty*SMZL.CTS AS Qty FROM SMZL');
      SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050201'' AND GXLB = ''S''');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Assembly'' AS GXLB, SMDDSS.Qty*SMZL.CTS AS Qty FROM SMZL');
      SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050301'' AND GXLB = ''A''');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Packing'' AS GXLB, SMDDSS.Qty*SMZL.CTS AS Qty FROM SMZL');
      SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
      SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050301'' AND GXLB = ''A''');
      if DTP1.Date < Qtmp.FieldByName('Userdate').Value then begin
        SQL.Add('    UNION ALL');
        SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Cutting'' AS GXLB, SMDDSS.Qty*SMZLold.CTS AS Qty FROM SMZLold');
        SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZLold.CODEBAR');
        SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050101'' AND GXLB = ''C''');
        SQL.Add('    UNION ALL');
        SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Stitching'' AS GXLB, SMDDSS.Qty*SMZLold.CTS AS Qty FROM SMZLold');
        SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZLold.CODEBAR');
        SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050201'' AND GXLB = ''S''');
        SQL.Add('    UNION ALL');
        SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Assembly'' AS GXLB, SMDDSS.Qty*SMZLold.CTS AS Qty FROM SMZLold');
        SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZLold.CODEBAR');
        SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050301'' AND GXLB = ''A''');
        SQL.Add('    UNION ALL');
        SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH, DATEADD(MI, -30, ScanDate)) AS Hour, ''Packing'' AS GXLB, SMDDSS.Qty*SMZLold.CTS AS Qty FROM SMZLold');
        SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZLold.CODEBAR');
        SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND DepNO = ''A12050301'' AND GXLB = ''A''');
      end;
      SQL.Add('  ) AS MassProduction');
    end;
    SQL.Add(') AS Output');
    SQL.Add('GROUP BY Date, GXLB');
    SQL.Add('ORDER BY Date DESC, CASE WHEN GXLB = ''Cutting'' THEN 1 ELSE CASE WHEN GXLB = ''Stitching'' THEN 2 ELSE CASE WHEN GXLB = ''Assembly'' THEN 3 ELSE CASE WHEN GXLB = ''Packing'' THEN 4 END END END END');
    Active := true;
  end;
end;

procedure TDFC.Button7Click(Sender: TObject);
begin
  HourlyOutput
end;

procedure TDFC.B_ExcelClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row, i: integer;
  QDate: String;
begin
  if (QHO.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for Col := 0 to DBGridEh5.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh5.Columns[Col].Title.Caption;
      end;

      QHO.First;
      Row := 2;
      QDate := '';
      i := 1;      //用i去計算該合併幾格
      while not QHO.Eof do
      begin
        if QDate <> QHO.FieldByName('Date').AsString then
        begin
          eclApp.Cells[Row, 1] := QHO.FieldByName('Date').AsString;
          QDate := QHO.FieldByName('Date').AsString;
          eclApp.Range[eclApp.Cells[Row-1, 1], eclApp.Cells[Row-i, 1]].Merge;
          i := 1;    //合併後重新計數
        end
        else
          Inc(i);

        for Col := 1 to DBGridEh5.Columns.Count - 1 do
        begin
          eclApp.Cells[Row, Col+1] := QHO.FieldByName(DBGridEh5.Columns[Col].FieldName).AsString;
        end;

        Inc(Row);
        QHO.Next;
      end;

{      while not QHO.Eof do
      begin
        if ((Row-2) MOD 4 = 0) then
        begin
          eclApp.Cells[Row, 1] := QHO.FieldByName('Date').AsString;
          if (Row >= 6) then
            eclApp.Range[eclApp.Cells[Row-1, 1], eclApp.Cells[Row-4, 1]].Merge;
        end;
        for Col := 1 to DBGridEh5.Columns.Count - 1 do
        begin
          eclApp.Cells[Row, Col+1] := QHO.FieldByName(DBGridEh5.Columns[Col].FieldName).AsString;
        end;

        Inc(Row);
        QHO.Next;
      end;
}
      eclApp.Range[eclApp.Cells[Row-1, 1], eclApp.Cells[Row-4, 1]].Merge;

      eclApp.Columns.Autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TDFC.CB2Change(Sender: TObject);
begin
  if (CB2.ItemIndex = 0) then
  begin
    DBGridEh5.Columns[12].Visible := false;
    DBGridEh5.Columns[13].Visible := false;
    DBGridEh5.Columns[14].Visible := false;
    DBGridEh5.Columns[15].Visible := false;
  end
  else if (CB2.ItemIndex = 1) then
  begin
    DBGridEh5.Columns[12].Visible := true;
    DBGridEh5.Columns[13].Visible := true;
    DBGridEh5.Columns[14].Visible := false;
    DBGridEh5.Columns[15].Visible := false;
  end
  else if (CB2.ItemIndex = 2) then
  begin
    DBGridEh5.Columns[12].Visible := true;
    DBGridEh5.Columns[13].Visible := true;
    DBGridEh5.Columns[14].Visible := true;
    DBGridEh5.Columns[15].Visible := true;
  end
end;

procedure TDFC.DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (QHO.FieldByName('Seq').AsInteger MOD 2 = 1) then
    Background := $00FFFFE6;
end;

procedure TDFC.Button8Click(Sender: TObject);
begin
  doSampleStatusQry();
end;

procedure TDFC.Button9Click(Sender: TObject);
begin
  with Q3days do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from (');
    SQL.Add('SELECT top 1 ''Cutting'' Part,''1'' serino,CONVERT(varchar, CuttingPlan,111) AS _Plan, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+''%'' Complete FROM (');
    SQL.Add('SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article, main.Warehouse, convert(varchar,main.CuttingPlan, 111) AS CuttingPlan, isnull(SQplan.Qty,0) AS SQplanQty, convert(varchar,main.CuttingOK, 111) AS CuttingOK,');
    SQL.Add('case when cuttingOK is null then  0 else isnull(SQplan.Qty,0) end OKQty from (');
    SQL.Add('select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,PreparationDate Warehouse,CutDate_first CuttingPlan,CutDate CuttingOK from ShoeTest');
    SQL.Add('left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
    SQL.Add('where  convert(varchar, CutDate_first, 111) between convert(varchar, getdate()-7, 111) and convert(varchar, getdate()-1, 111)');
    SQL.Add(') AS main');
    SQL.Add('left join (');
    SQL.Add('select shoetest2.testno,SUM(Qty) Qty from shoetest2 ');
    SQL.Add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts ');
    SQL.Add('where YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('group by shoetest2.testno');
    SQL.Add(') AS SQplan on SQplan.TestNo=main.testno');
    SQL.Add(') AS main2 ');
    SQL.Add('group by CuttingPlan order by CuttingPlan desc )cutting');
    SQL.Add('union');
    SQL.Add('select * from (');
    SQL.Add('SELECT top 1 ''Stitching'' Part,''2'' serino,CONVERT(varchar, StitchingPlan,111) AS _Plan, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+''%'' Complete FROM (');
    SQL.Add('SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article, main.CuttingOK, convert(varchar,main.StitchingPlan, 111) AS StitchingPlan, isnull(SQplan.Qty,0) AS SQplanQty, convert(varchar,main.StitchingOK, 111) AS StitchingOK,');
    SQL.Add('case when StitchingOK is null then  0 else isnull(SQplan.Qty,0) end OKQty from (');
    SQL.Add('select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,CutDate CuttingOK,StitchingDate_first StitchingPlan,StitchingDate StitchingOK from ShoeTest');
    SQL.Add('left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
    SQL.Add('where  convert(varchar, StitchingDate_first, 111) between convert(varchar, getdate()-7, 111) and convert(varchar, getdate()-1, 111)');
    SQL.Add(') AS main');
    SQL.Add('left join (');
    SQL.Add('select shoetest2.testno,SUM(Qty) Qty from shoetest2 ');
    SQL.Add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
    SQL.Add('WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('group by shoetest2.testno');
    SQL.Add(') AS SQplan on SQplan.TestNo=main.testno');
    SQL.Add(') AS main2');
    SQL.Add('group by StitchingPlan order by StitchingPlan desc  )stitching');
    SQL.Add('union');
    SQL.Add('select * from (');
    SQL.Add('SELECT top 1 ''Assemble'' Part,''3'' serino,CONVERT(varchar, AssemblePlan,111) AS _Plan, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+''%'' Complete FROM (');
    SQL.Add('SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article, main.StitchingOK, convert(varchar,main.AssemblePlan, 111) AS AssemblePlan, isnull(SQplan.Qty,0) AS SQplanQty, convert(varchar,main.AssembleOK, 111) AS AssembleOK,');
    SQL.Add('case when AssembleOK is null then  0 else isnull(SQplan.Qty,0) end OKQty from (');
    SQL.Add('select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,StitchingDate StitchingOK,AssembiyDate_first AssemblePlan,Assemblecomplete AssembleOK from ShoeTest');
    SQL.Add('left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
    SQL.Add('where  convert(varchar, AssembiyDate_first, 111) between convert(varchar, getdate()-7, 111) and convert(varchar, getdate()-1, 111)');
    SQL.Add(') AS main');
    SQL.Add('left join (');
    SQL.Add('select shoetest2.testno,SUM(Qty) Qty from shoetest2');
    SQL.Add('left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts ');
    SQL.Add('where  YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('group by shoetest2.testno');
    SQL.Add(') AS SQplan on SQplan.TestNo=main.testno');
    SQL.Add(') AS main2');
    SQL.Add('group by AssemblePlan order by AssemblePlan desc  )assemble');
    SQL.Add('order by _plan desc,serino ');
    Active := true;
  end;
end;

procedure TDFC.Button10Click(Sender: TObject);
begin
  with QDelay do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ''1'' serino,''Cutting'' Part,main.TestNo, main.Groups, main.Serino,SQplan.Qty  ,TBDelayReason.PartE ,TBDelayReason.ReasonE ,Plantime,OKtime FROM (');
    SQL.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeTest.CutDate_first AS Plantime, ShoeTest.CutDate AS OKtime FROM ShoeTest');
    SQL.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
    SQL.Add('WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-3, 111) AND CONVERT(VARCHAR, GetDate()-1, 111)');
    SQL.Add(') AS main');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 ');
    SQL.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts ');
    SQL.Add('WHERE YWSM IN (''Finished Shoe'', ''Half Stitching Upper'', ''Stitching Upper'', ''Lasted upper'', ''Upper Component'', ''CFM sample'', ''Upper And Bottom(CE)'')');
    SQL.Add('GROUP BY ShoeTest2.TestNo');
    SQL.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
    SQL.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP');
    SQL.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR');
    SQL.Add('where ShoetestDelay.GXLB=''C''');
    SQL.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
    SQL.Add('where PartE is not null');
    if checkbox1.checked then
       SQL.Add('and OKtime is null');    
    SQL.Add('union');
    SQL.Add('SELECT ''2'' serino,''Stitching'' Part,main.TestNo, main.Groups, main.Serino,SQplan.Qty  ,TBDelayReason.PartE ,TBDelayReason.ReasonE ,Plantime,OKtime FROM (');
    SQL.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.Cutdate AS CuttingOK,shoetest.S_material SMatOK,shoetest.StitchingPhuFinishDate SMatGet, ');
    SQL.Add('ShoeTest.StitchingDate_first AS Plantime, ShoeTest.StitchingDate AS OKtime FROM ShoeTest');
    SQL.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
    SQL.Add('WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-3, 111) AND CONVERT(VARCHAR, GetDate()-1, 111)');
    SQL.Add(') AS main');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 ');
    SQL.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
    SQL.Add('WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('GROUP BY ShoeTest2.TestNo');
    SQL.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
    SQL.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP');
    SQL.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR');
    SQL.Add('where ShoetestDelay.GXLB=''S''');
    SQL.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
    SQL.Add('where PartE is not null');
    if checkbox1.checked then
       SQL.Add('and OKtime is null');
    SQL.Add('union');
    SQL.Add('SELECT ''3'' serino,''Assembly'' Part,main.TestNo, main.Groups, main.Serino,SQplan.Qty ,TBDelayReason.PartE ,TBDelayReason.ReasonE ,Plantime,OKtime FROM (');
    SQL.Add('SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTest.Article AS SR, ShoeTest.StitchingDate AS StitchingOK,shoetest.insole_send AMatOk,shoetest.insole_get AMatGet,');
    SQL.Add('ShoeTest.AssembiyDate_first AS Plantime, ShoeTest.Assemblecomplete AS OKtime FROM ShoeTest');
    SQL.Add('LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestNo');
    SQL.Add('WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWEEN CONVERT(VARCHAR, GetDate()-3, 111) AND CONVERT(VARCHAR, GetDate()-1, 111)');
    SQL.Add(') AS main');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2');
    SQL.Add('LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Parts');
    SQL.Add('WHERE YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('GROUP BY ShoeTest2.TestNo');
    SQL.Add(') AS SQplan ON SQplan.TestNo = main.TestNo');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC,Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.YWSM ReasonE from ShoetestDelay');
    SQL.Add('LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP ');
    SQL.Add('LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay.DR ');
    SQL.Add('where ShoetestDelay.GXLB=''A''');
    SQL.Add(') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo');
    SQL.Add('where PartE is not null');
    if checkbox1.checked then
       SQL.Add('and OKtime is null');
    SQL.Add('order by OKtime ,serino');
    Active := true;
  end;
end;

procedure TDFC.Button11Click(Sender: TObject);
begin
  with Rate do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select ''1'' serino,Date,''Cutting'' Process,Sample,CBY,MassProduction,Total, convert(varchar,cast(ROUND(Total/'''+edit1.text+'''*100,2) as numeric(5,2)))+''%'' Complete from (');
    SQL.Add('select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduction) MassProduction,SUM(TOTal) Total from (');
    SQL.Add('select case when isnull(CONVERT(varchar,sample.date),'''') <>'''' then isnull(CONVERT(varchar,sample.Date),'''')');
    SQL.Add('when isnull(CONVERT(varchar,CBYQty.Date),'''')<>'''' then isnull(CONVERT(varchar,CBYQty.Date),'''')');
    SQL.Add('else isnull(CONVERT(varchar,MassProductionQty.Date),'''')  end Date,');
    SQL.Add('isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProductionQty,0) MassProduction,');
    SQL.Add('isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,0) Total   from (');
    SQL.Add('SELECT CONVERT(VARCHAR, CuttingOK ,111) AS date, SUM(sampleqty) AS SampleQty FROM (');
    SQL.Add('  SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article, main.Warehouse, convert(varchar,main.CuttingOK, 111) AS CuttingOK, isnull(sample.Qty,0) AS sampleQty');
    SQL.Add('   from (');
    SQL.Add('    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,PreparationDate Warehouse,CutDate CuttingOK from ShoeTest');
    SQL.Add('    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
    SQL.Add('    where  convert(varchar, CutDate, 111) between convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111)');
    SQL.Add('  ) AS main');
    SQL.Add('  left join (');
    SQL.Add('    select shoetest2.testno,SUM(Qty) Qty from shoetest2');
    SQL.Add('    left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
    SQL.Add('    where YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('    group by shoetest2.testno');
    SQL.Add('  ) AS sample on sample.TestNo=main.testno');
    SQL.Add(') AS main2');
    SQL.Add('group by CuttingOK)sample');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Orders.total) AS CBYQty FROM CBY_Orders_Scan');
    SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND GXLB = ''C''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.date=sample.date');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Qty*SMZL.CTS) AS MassProductionQty FROM SMZL');
    SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND DepNO = ''A12050101'' AND GXLB = ''C''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty on MassProductionQty.Date=sample.date');
    SQL.Add('    )main  group by Date order by date desc)Cutting');
    SQL.Add('    where date =''' + FormatDateTime('yyyy/MM/dd', DTP111.Date) + '''');
    SQL.Add('union');
    SQL.Add('select ''2'' Serino,Date,''Stitching'' Process,Sample,CBY,MassProduction,Total, convert(varchar,cast(ROUND(Total/'''+edit1.text+'''*100,2) as numeric(5,2)))+''%'' Complete from (');
    SQL.Add('select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduction) MassProduction,SUM(TOTal) Total from (');
    SQL.Add('select case when isnull(CONVERT(varchar,sample.date),'''') <>'''' then isnull(CONVERT(varchar,sample.Date),'''')');
    SQL.Add('when isnull(CONVERT(varchar,CBYQty.Date),'''')<>'''' then isnull(CONVERT(varchar,CBYQty.Date),'''')');
    SQL.Add('else isnull(CONVERT(varchar,MassProductionQty.Date),'''')  end Date,');
    SQL.Add('isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProductionQty,0) MassProduction,');
    SQL.Add('isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,0) Total   from (');
    SQL.Add('SELECT CONVERT(VARCHAR, StitchingOK ,111) AS date, SUM(sampleqty) AS SampleQty FROM (');
    SQL.Add('  SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article,  convert(varchar,main.StitchingOK, 111) AS StitchingOK, isnull(sample.Qty,0) AS sampleQty');
    SQL.Add('   from (');
    SQL.Add('    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,StitchingDate StitchingOK from ShoeTest');
    SQL.Add('    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
    SQL.Add('    where  convert(varchar, StitchingDate, 111) between convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111)');
    SQL.Add('  ) AS main');
    SQL.Add('  left join (');
    SQL.Add('    select shoetest2.testno,SUM(Qty) Qty from shoetest2');
    SQL.Add('    left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
    SQL.Add('    WHERE YWSM in (''Finished Shoe'',''Half Stitching Upper'',''Stitching Upper'',''Lasted upper'',''Upper Component'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('    group by shoetest2.testno');
    SQL.Add('  ) AS sample on sample.TestNo=main.testno');
    SQL.Add(') AS main2');
    SQL.Add('group by StitchingOK)sample');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Orders.total) AS CBYQty FROM CBY_Orders_Scan');
    SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND GXLB = ''S''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.date=sample.date');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Qty*SMZL.CTS) AS MassProductionQty FROM SMZL');
    SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND DepNO = ''A12050201'' AND GXLB = ''S''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty on MassProductionQty.Date=sample.date');
    SQL.Add('    )main  group by Date order by date desc)Stitching');
    SQL.Add('    where date =''' + FormatDateTime('yyyy/MM/dd', DTP111.Date) + '''');
    SQL.Add('union');
    SQL.Add('select ''3'' Serino,Date,''Assembling'' Process,Sample,CBY,MassProduction,Total, convert(varchar,cast(ROUND(Total/'''+edit1.text+'''*100,2) as numeric(5,2)))+''%'' Complete from (');
    SQL.Add('select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduction) MassProduction,SUM(TOTal) Total from (');
    SQL.Add('select case when isnull(CONVERT(varchar,sample.date),'''') <>'''' then isnull(CONVERT(varchar,sample.Date),'''')');
    SQL.Add('when isnull(CONVERT(varchar,CBYQty.Date),'''')<>'''' then isnull(CONVERT(varchar,CBYQty.Date),'''')');
    SQL.Add('else isnull(CONVERT(varchar,MassProductionQty.Date),'''')  end Date,');
    SQL.Add('isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProductionQty,0) MassProduction,');
    SQL.Add('isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,0) Total   from (');
    SQL.Add('SELECT CONVERT(VARCHAR, AssembleOK ,111) AS date, SUM(sampleqty) AS SampleQty FROM (');
    SQL.Add('  SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article,  convert(varchar,main.AssembleOK, 111) AS AssembleOK, isnull(sample.Qty,0) AS sampleQty');
    SQL.Add('   from (');
    SQL.Add('    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,Assemblecomplete AssembleOK from ShoeTest');
    SQL.Add('    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
    SQL.Add('    where  convert(varchar, Assemblecomplete, 111) between convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111)');
    SQL.Add('  ) AS main');
    SQL.Add('  left join (');
    SQL.Add('    select shoetest2.testno,SUM(Qty) Qty from shoetest2');
    SQL.Add('    left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
    SQL.Add('    where  YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('    group by shoetest2.testno');
    SQL.Add('  ) AS sample on sample.TestNo=main.testno');
    SQL.Add(') AS main2');
    SQL.Add('group by AssembleOK)sample');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Orders.total) AS CBYQty FROM CBY_Orders_Scan');
    SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND GXLB = ''A''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.date=sample.date');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Qty*SMZL.CTS) AS MassProductionQty FROM SMZL');
    SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND DepNO = ''A12050301'' AND GXLB = ''A''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty on MassProductionQty.Date=sample.date');
    SQL.Add('    )main  group by Date order by date desc)Assembling');
    SQL.Add('    where date =''' + FormatDateTime('yyyy/MM/dd', DTP111.Date) + '''');
    SQL.Add('union');

    SQL.Add('select ''4'' Serino,Date,''Packing'' Process,Sample,CBY,MassProduction,total, convert(varchar,cast(ROUND(Total/'''+edit1.text+'''*100,2) as numeric(5,2)))+''%'' Complete from (');
    SQL.Add('select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduction) MassProduction,SUM(TOTal) Total from (');
    SQL.Add('select case when isnull(CONVERT(varchar,sample.date),'''') <>'''' then isnull(CONVERT(varchar,sample.Date),'''')');
    SQL.Add('when isnull(CONVERT(varchar,CBYQty.Date),'''')<>'''' then isnull(CONVERT(varchar,CBYQty.Date),'''')');
    SQL.Add('else isnull(CONVERT(varchar,MassProductionQty.Date),'''')  end Date,');
    SQL.Add('isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProductionQty,0) MassProduction,');
    SQL.Add('isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,0) Total   from (');
    SQL.Add('SELECT CONVERT(VARCHAR, AssembleOK ,111) AS date, SUM(sampleqty) AS SampleQty FROM (');
    SQL.Add('  SELECT main.TestNo, main.groups, main.Serino, main.stage, main.Article,  convert(varchar,main.AssembleOK, 111) AS AssembleOK, isnull(sample.Qty,0) AS sampleQty');
    SQL.Add('   from (');
    SQL.Add('    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,Complete AssembleOK from ShoeTest');
    SQL.Add('    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestNo');
    SQL.Add('    where  convert(varchar, Complete, 111) between convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111)');
    SQL.Add('  ) AS main');
    SQL.Add('  left join (');
    SQL.Add('    select shoetest2.testno,SUM(Qty) Qty from shoetest2');
    SQL.Add('    left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts');
    SQL.Add('    where  YWSM in (''Finished Shoe'',''Lasted upper'',''CFM sample'',''Upper And Bottom(CE)'')');
    SQL.Add('    group by shoetest2.testno');
    SQL.Add('  ) AS sample on sample.TestNo=main.testno');
    SQL.Add(') AS main2');
    SQL.Add('group by AssembleOK)sample');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Orders.total) AS CBYQty FROM CBY_Orders_Scan');
    SQL.Add('    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Scan.workOrderId');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND GXLB = ''I''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.date=sample.date');
    SQL.Add('full outer join (');
    SQL.Add('    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Qty*SMZL.CTS) AS MassProductionQty FROM SMZL');
    SQL.Add('    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)) BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) AND DepNO = ''A12050301'' AND GXLB = ''A''');
    SQL.Add('    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty on MassProductionQty.Date=sample.date');
    SQL.Add('    )main  group by Date order by date desc)Packing');
    SQL.Add('    where date =''' + FormatDateTime('yyyy/MM/dd', DTP111.Date) + '''');
    SQL.Add('order by Date');
    //showmessage(sql.text);
    Active := true;
  end;
end;

procedure TDFC.QHOCalcFields(DataSet: TDataSet);
var i: integer;
begin
  i:=0;
  with QHO do
  begin
    if not FieldByName('7h30-8h30').IsNull then
      i:=i+1;
    if not FieldByName('8h30-9h30').IsNull then
      i:=i+1;
    if not FieldByName('9h30-10h30').IsNull then
      i:=i+1;
    if not FieldByName('10h30-11h30').IsNull then
      i:=i+1;
    {if not FieldByName('11h30-12h30').IsNull then
      i:=i+1;}
    if not FieldByName('12h30-13h30').IsNull then
      i:=i+1;
    if not FieldByName('13h30-14h30').IsNull then
      i:=i+1;
    if not FieldByName('14h30-15h30').IsNull then
      i:=i+1;
    if not FieldByName('15h30-16h30').IsNull then
      i:=i+1;
    if not FieldByName('16h30-17h30').IsNull then
      i:=i+1;
    if not FieldByName('17h30-18h30').IsNull then
      i:=i+1;
    if not FieldByName('18h30-19h30').IsNull then
      i:=i+1;
    if not FieldByName('19h30-20h30').IsNull then
      i:=i+1;
    FieldByName('HourS').value:=i;
  end;
end;

end.
