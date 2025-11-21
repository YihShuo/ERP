unit checkplanP;

interface                  
                           
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, DBTables, GridsEh, DBGridEh,
  comobj,StdCtrls, ExtCtrls, DBCtrls, Buttons,
  DBClient, AppEvnts, Menus;


type
  Tcheckplan = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wbl: TQuery;
    ld: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    wblddbh: TStringField;
    wblshipdate: TStringField;
    wblCSP: TStringField;
    wblCSR: TStringField;
    wblCEP: TStringField;
    wblCER: TStringField;
    wblSSP: TStringField;
    wblSSR: TStringField;
    wblSEP: TStringField;
    wblSER: TStringField;
    wblASP: TStringField;
    wblASR: TStringField;
    wblAEP: TStringField;
    wblAER: TStringField;
    ldddbh: TStringField;
    ldshipdate: TStringField;
    ldCSP: TStringField;
    ldCSR: TStringField;
    ldCEP: TStringField;
    ldCER: TStringField;
    ldSSP: TStringField;
    ldSSR: TStringField;
    ldSEP: TStringField;
    ldSER: TStringField;
    ldASP: TStringField;
    ldASR: TStringField;
    ldAEP: TStringField;
    ldAER: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Button3: TButton;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Button4: TButton;
    Button5: TButton;
    DBGridEh3: TDBGridEh;
    so: TQuery;
    DataSource3: TDataSource;
    sdate: TDateTimePicker;
    edate: TDateTimePicker;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    Button6: TButton;
    Button7: TButton;
    ssdate: TDateTimePicker;
    sedate: TDateTimePicker;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    DBGridEh4: TDBGridEh;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    tempq: TQuery;
    sol: TQuery;
    DataSource4: TDataSource;
    scb: TComboBox;
    DataSource5: TDataSource;
    ccsi: TQuery;
    Panel5: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button8: TButton;
    Button9: TButton;
    csdsdate: TDateTimePicker;
    csdedate: TDateTimePicker;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Label13: TLabel;
    DBGridEh5: TDBGridEh;
    ccsiddbh: TStringField;
    ccsixiexing: TStringField;
    ccsishehao: TStringField;
    ccsiarticle: TStringField;
    ccsikhpo: TStringField;
    ccsipairs: TIntegerField;
    ccsishipdate: TDateTimeField;
    ccsiinsdate: TDateTimeField;
    ccsidatep: TIntegerField;
    solddbh: TStringField;
    solpairs: TIntegerField;
    solshipdate: TStringField;
    solCSP: TStringField;
    solCSR: TStringField;
    solCEP: TStringField;
    solCER: TStringField;
    solSSP: TStringField;
    solSSR: TStringField;
    solSEP: TStringField;
    solSER: TStringField;
    solASP: TStringField;
    solASR: TStringField;
    solAEP: TStringField;
    solAER: TStringField;
    Label14: TLabel;
    Label15: TLabel;
    soddbh: TStringField;
    sopairs: TIntegerField;
    soshipdate: TStringField;
    soCSP: TStringField;
    soCSR: TStringField;
    soCEP: TStringField;
    soCER: TStringField;
    soSSP: TStringField;
    soSSR: TStringField;
    soSEP: TStringField;
    soSER: TStringField;
    soASP: TStringField;
    soASR: TStringField;
    soAEP: TStringField;
    soAER: TStringField;
    wblPairs: TIntegerField;
    ldPairs: TIntegerField;
    CK1: TCheckBox;
    TabSheet6: TTabSheet;
    qy: TQuery;
    fy: TQuery;
    DataSource6: TDataSource;
    DBGridEh6: TDBGridEh;
    Panel6: TPanel;
    Label16: TLabel;
    fysdate: TDateTimePicker;
    fyedate: TDateTimePicker;
    Label17: TLabel;
    Button10: TButton;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit18: TEdit;
    DataSource7: TDataSource;
    qy1: TQuery;
    DBGridEh7: TDBGridEh;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Edit19: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    TabSheet7: TTabSheet;
    DBGridEh8: TDBGridEh;
    Panel7: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    OGACshow: TDataSource;
    DDZL_OD: TQuery;
    OpenDialog: TOpenDialog;
    Label35: TLabel;
    Label36: TLabel;
    CheckBox1: TCheckBox;
    BB1: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel8: TPanel;
    ogacsdate: TDateTimePicker;
    ogacedate: TDateTimePicker;
    Button11: TButton;
    BB4: TBitBtn;
    UDDDZL_OD: TUpdateSQL;
    bbt6: TBitBtn;
    Button12: TButton;
    Label33: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    editOrder: TEdit;
    Edit20: TEdit;
    Label38: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    wblBTS_ShipDate: TDateTimeField;
    wblBTS_AEP: TStringField;
    ldBTS_ShipDate: TDateTimeField;
    ldBTS_AEP: TStringField;
    CheckBox4: TCheckBox;
    soBTS_ShipDate: TDateTimeField;
    soBTS_AEP: TStringField;
    soRYType: TStringField;
    CancelCK: TCheckBox;
    ScoreFilterCB: TComboBox;
    solBTS_ShipDate: TDateTimeField;
    solBTS_AEP: TStringField;
    solRYType: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    ScoreFilterCB1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button9Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);

    procedure BB7Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);

  private
 //   ExcelDataSet:TDataSet;
  //  OrderListExcel:Variant;
    //function CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
  // Function AddDataToSet(AdsData:TDataSet;FieldValue:TStringlist): TDataSet;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  checkplan: Tcheckplan;
   Excel:Variant;  
implementation

uses editplanP, main1, RTOVWeeklyScheduler1, FunUnit;

{$R *.dfm}

procedure Tcheckplan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  wbl.Active:=false;
  ld.Active:=false;

  action:=cafree;
end;

procedure Tcheckplan.FormDestroy(Sender: TObject);
begin
  wbl.Active:=false;
  ld.Active:=false;

  checkplan:=nil;
end;

procedure Tcheckplan.FormCreate(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=0;
  panel7.Visible:=false;
  sdate.Date:=now;
  ssdate.Date:=now;
  edate.Date:=now+30;
  sedate.Date:=now+30;
  csdsdate.Date:=now+30;
  csdedate.Date:=now+60;
  //fyscore計算起始日期
  fysdate.date:=now-60;
  fyedate.date:=now-1;
  //ogac起始日期
  ogacsdate.date:=now;
  ogacedate.date:=now+60;
  with tempq do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select DepName from BDepartment');
    sql.add('where GSBH = '+''''+main.Edit2.Text+'''');
    sql.add('       and gxlb='+''''+'A'+'''');
    sql.add('       and proyn='+''''+'1'+'''');
    active:=true;
  end;
  tempq.First;
  scb.Clear;
  scb.items.Add('ALL');

  while not tempq.Eof do
  begin
    scb.Items.Add(tempq.fieldbyname('depname').Value);
    tempq.Next;
  end;
  scb.ItemIndex:=0;
  //
  TabSheet1.DoubleBuffered:=true;
  TabSheet2.DoubleBuffered:=true;
  TabSheet3.DoubleBuffered:=true;
  TabSheet4.DoubleBuffered:=true;
  Button1.Click;
end;

procedure Tcheckplan.DBGrid1DblClick(Sender: TObject);
begin
  if editplan<>nil then
  begin
    editplan.show;
    editplan.windowstate:=wsmaximized;
  end
  else
  begin
    editplan:=Teditplan.create(self);
    editplan.show;
  end;
  with editPlan.SMDD do
    begin
      active:=false;
      sql.Clear;
      sql.add('select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZL.ShipDate as CSD');
      sql.add(',KFZL.KFJC,ywdd.etd,f.fpd,f.fped ');
      sql.add('from SMDD');
      sql.add('left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  ');
      sql.add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo ');
      sql.add('left join DDZL on DDZl.ZLBH=SMDD.YSBH ');
      sql.add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
      sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
      sql.add('left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywdd on ywdd.ysbh=smdd.ysbh');
      sql.Add('left join (select ddbh,sccx,max(plandate) as fpd,min(planedate) as fped from smdd group by ddbh,sccx) ');
      sql.add(' as f on f.ddbh=smdd.ddbh and f.sccx=smdd.gxlb');
      sql.add('where smdd.ysbh='+''''+wbl.FieldByName('ddbh').Value+'''');
      active:=true;
    end;
  editPlan.DDdet.Active:=true;
  if main.sn391.Enabled then
  begin
    editplan.Panel3.Visible:=false;
    editPlan.bb4.enabled:=true;
    editPlan.bb5.enabled:=false;
    editPlan.bb6.enabled:=false;
    editPlan.bb7.enabled:=true;
    editPlan.bbt1.enabled:=true;
    editPlan.bbt2.enabled:=true;
    editPlan.bbt3.enabled:=true;
    editPlan.bbt4.enabled:=true;
    editPlan.bbt5.enabled:=true;
    editPlan.bbt6.enabled:=true;
  end
  else
  begin
    editplan.Panel3.Visible:=false;
    editPlan.bb4.enabled:=false;
    editPlan.bb5.enabled:=false;
    editPlan.bb6.enabled:=false;
    editPlan.bb7.enabled:=false;
    editPlan.bbt1.enabled:=false;
    editPlan.bbt2.enabled:=false;
    editPlan.bbt3.enabled:=false;
    editPlan.bbt4.enabled:=false;
    editPlan.bbt5.enabled:=false;
    editPlan.bbt6.enabled:=false;
  end;
end;

procedure Tcheckplan.Button1Click(Sender: TObject);
begin
  //will be lock
  with wbl do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ddzl.ddbh,ddzl.Pairs,CONVERT(char(10),ddzl.shipdate,111) as shipdate, ');
    sql.Add('CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111) as CSR, ');
    sql.Add('CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111) as CER, ');
    sql.Add('CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111) as SSR, ');
    sql.Add('CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111) as SER, ');
    sql.Add('CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111) as ASR, ');
    sql.Add('CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111) as AER, ');
    sql.Add('Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as BTS_AEP ');
    sql.Add('from ddzl ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'C'+ '''');
    sql.Add('      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'S'+ '''');
    sql.Add('      group by smdd.ysbh) as S on s.ysbh=ddzl.ddbh ');
        sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'A'+ '''');
    sql.Add('      group by smdd.ysbh) as A on A.ysbh=ddzl.ddbh ');
    //關連CTS 排程記錄檔
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add('select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE DESC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''N'' ');
    SQL.Add('   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN=''Y''  Group by DDBH) ');
    SQL.Add(') RTSSmdd_N ');
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add(') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH');
    SQL.Add('');
    SQL.Add(' union all   ');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')=''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add('  ');
    SQL.Add(') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH');
    //
    sql.Add('where ddzl.khbh='+''''+'036'+'''' );
    sql.Add('  and substring(ddzl.ddbh,1,2) <> '+''''+'ZS'+ '''');
    sql.Add(' and ddzl.shipdate < (getdate() + 45 + '+edit1.Text+') and ddzl.shipdate > getdate() + 45  and RTSSMDD.DDBH is null ');
    //20140929 取消下列判斷
    //sql.Add('	and ((abs(CONVERT(int,c.strt)-CONVERT(int,c.strtr)) > 5) or (abs(CONVERT(int,c.endd)-CONVERT(int,c.enddr)) > 5) ');
    //sql.Add('		 or (abs(CONVERT(int,s.strt)-CONVERT(int,s.strtr)) > 5) or (abs(CONVERT(int,s.endd)-CONVERT(int,s.enddr)) > 5) ');
    //sql.Add('		 or (abs(CONVERT(int,a.strt)-CONVERT(int,a.strtr)) > 5) or (abs(CONVERT(int,a.endd)-CONVERT(int,a.enddr)) > 5) ');
    //sql.Add('    or c.strtr is null or c.enddr is null or S.strtr is null or S.enddr is null or a.strtr is null or a.enddr is null)  ');
    if CK1.Checked then
      sql.Add('	and  (abs(CONVERT(int,a.endd)-CONVERT(int,a.enddr)) > 5)');
    if CancelCK.Checked=true then
      sql.Add(' and DDZL.DDZT<>''C'' ');
    sql.Add('group by ddzl.ddbh,ddzl.Pairs,ddzl.shipdate, ');
    sql.Add('		 c.strt,c.endd,c.strtr,c.enddr, ');
    sql.Add('		 s.strt,s.endd,s.strtr,s.enddr, ');
    sql.Add('		 a.strt,a.endd,a.strtr,a.enddr ');
    sql.Add('order by shipdate ');
    sql.Add(' ');
    active:=true;
  end;
  
  //lock
  with ld do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ddzl.ddbh,ddzl.Pairs,CONVERT(char(10),ddzl.shipdate,111) as shipdate, ');
    sql.Add('CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111) as CSR, ');
    sql.Add('CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111) as CER, ');
    sql.Add('CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111) as SSR, ');
    sql.Add('CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111) as SER, ');
    sql.Add('CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111) as ASR, ');
    sql.Add('CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111) as AER, ');
    sql.Add('Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as BTS_AEP ');
    sql.Add('from ddzl ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'C'+ '''');
    sql.Add('      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'S'+ '''');
    sql.Add('      group by smdd.ysbh) as S on s.ysbh=ddzl.ddbh ');
        sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'A'+ '''');
    sql.Add('      group by smdd.ysbh) as A on A.ysbh=ddzl.ddbh ');
    //關連CTS 排程記錄檔
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add('select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE DESC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''N'' ');
    SQL.Add('   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN=''Y''  Group by DDBH) ');
    SQL.Add(') RTSSmdd_N ');
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add(') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH');
    SQL.Add('');
    SQL.Add(' union all   ');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')=''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add('  ');
    SQL.Add(') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH');
    //
    sql.Add('where ddzl.khbh='+''''+'036'+'''' );
    sql.Add('  and substring(ddzl.ddbh,1,2) <> '+''''+'ZS'+ '''');
    //sql.Add('	and ddzl.shipdate <= (getdate() + 45 ) and ddzl.shipdate > getdate() ');
    sql.Add('and ( ( ddzl.shipdate <= (getdate() + 45 ) and ddzl.shipdate > getdate()  )  or ( RTSSMDD.DDBH is not null) ) ');

    //20140929 取消下列判斷
    //sql.Add('	and ((abs(CONVERT(int,c.strt)-CONVERT(int,c.strtr)) > 5) or (abs(CONVERT(int,c.endd)-CONVERT(int,c.enddr)) > 5) ');
    //sql.Add('		 or (abs(CONVERT(int,s.strt)-CONVERT(int,s.strtr)) > 5) or (abs(CONVERT(int,s.endd)-CONVERT(int,s.enddr)) > 5) ');
    //sql.Add('		 or (abs(CONVERT(int,a.strt)-CONVERT(int,a.strtr)) > 5) or (abs(CONVERT(int,a.endd)-CONVERT(int,a.enddr)) > 5) ');
    //sql.Add('    or c.strtr is null or c.enddr is null or S.strtr is null or S.enddr is null or a.strtr is null or a.enddr is null)  ');
    if CK1.Checked then
      sql.Add('	and  (abs(CONVERT(int,a.endd)-CONVERT(int,a.enddr)) > 5)');
    if CancelCK.Checked=true then
      sql.Add(' and DDZL.DDZT<>''C'' ');
    sql.Add('group by ddzl.ddbh,ddzl.Pairs,ddzl.shipdate, ');
    sql.Add('		 c.strt,c.endd,c.strtr,c.enddr, ');
    sql.Add('		 s.strt,s.endd,s.strtr,s.enddr, ');
    sql.Add('		 a.strt,a.endd,a.strtr,a.enddr ');
    sql.Add('order by shipdate ');
    sql.Add(' ');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

end;

procedure Tcheckplan.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if wbl.Active then
  begin
    if wbl.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   wbl.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=wbl.fields[i-1].FieldName;
    end;
  wbl.First;
  j:=2;
  while   not  wbl.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   wbl.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=wbl.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      wbl.Next;
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

procedure Tcheckplan.Button3Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if ld.Active then
  begin
    if ld.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   ld.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=wbl.fields[i-1].FieldName;
    end;
  ld.First;
  j:=2;
  while   not  ld.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   ld.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=ld.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      ld.Next;
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

procedure Tcheckplan.Button4Click(Sender: TObject);
var ontime,overtime :integer;
begin
  edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  with tempq do
  begin
    active:=false;
    sql.clear;
    sql.add('  if object_id('+''''+'tempdb..#BTSScore'+''''+') is not null  ');
    sql.add('begin   drop table #BTSScore end   ');
    sql.Add('select ddzl.ddbh,ddzl.pairs,CONVERT(char(10),ddzl.shipdate,111) as shipdate, ');
    sql.Add('CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111) as CSR, ');
    sql.Add('CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111) as CER, ');
    sql.Add('CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111) as SSR, ');
    sql.Add('CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111) as SER, ');
    sql.Add('CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111) as ASR, ');
    sql.Add('CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111) as AER, ');
    sql.Add('Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as BTS_AEP,Max(DDZL.RYType) as RYType ');
    sql.Add('into #BTSScore from ddzl ');
    sql.Add('left join');
    sql.Add('YWDD on YWDD.YSBH=DDZL.ddbh ');
    sql.Add('left join');
    sql.Add('YWCP on ywcp.ddbh=YWDD.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'C'+ '''');
    sql.Add('      group by smdd.ysbh) as c on c.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'S'+ '''');
    sql.Add('      group by smdd.ysbh) as S on s.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'A'+ '''');
    sql.Add('      group by smdd.ysbh) as A on A.ysbh=ddzl.ddbh ');
    //關連CTS 排程記錄檔
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add('select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE DESC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''N'' ');
    SQL.Add('   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN=''Y''  Group by DDBH) ');
    SQL.Add(') RTSSmdd_N ');
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add(') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH');
    SQL.Add('');
    SQL.Add(' union all   ');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')=''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add('  ');
    SQL.Add(') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH');
    //
    sql.Add('where ddzl.khbh='+''''+'036'+'''' );
    sql.Add('  and substring(ddzl.ddbh,1,2) <> '+''''+'ZS'+ '''');
    sql.Add('	and CONVERT(char(10),ddzl.shipdate,111) >= '+''''+datetostr(sdate.date)+'''');
    if checkbox2.Checked then
      sql.Add('	and CONVERT(char(10),ddzl.shipdate,111) <= '+''''+datetostr(edate.date)+'''');
    // query order
    if CancelCK.Checked=true then
      sql.Add(' and DDZL.DDZT<>''C'' ');
    sql.Add('and ddzl.ddbh like '''+editOrder.Text+'%''');
    //
    //20140926 濾除B品訂單 ,必須有成型計畫完成日
    sql.Add(' and a.strt is not null ');
    sql.Add('group by ddzl.ddbh,ddzl.pairs,ddzl.shipdate, ');
    sql.Add('		 c.strt,c.endd,c.strtr,c.enddr, ');
    sql.Add('		 s.strt,s.endd,s.strtr,s.enddr, ');
    sql.Add('		 a.strt,a.endd,a.strtr,a.enddr ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL();
    //>=6
    active:=false;
    sql.Clear;
    sql.add('select IsNull(sum(pairs),0) as error from  #BTSScore ');
    sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
    sql.add('        else');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
    sql.add('      end ) >=6 ');
    active:=true;
    overtime:=fieldbyname('error').Asinteger;
    edit3.Text:=fieldbyname('error').AsString;
    //<6
    //funcobj.WriteErrorLog(sql.Text);
    active:=false;
    sql.Clear;
    sql.add('select IsNull(sum(pairs),0) as error from  #BTSScore ');
    sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
    sql.add('        else');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
    sql.add('      end ) <6 ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
    ontime:=fieldbyname('error').Asinteger;
    edit2.Text:=fieldbyname('error').AsString;
 end;
 with so do
 begin
    //================================================
    active:=false;
    sql.Clear;
    sql.add('select * from  #BTSScore ');
    if  ScoreFilterCB.ItemIndex=1 then
    begin
      sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
      sql.add('        else');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
      sql.add('      end ) <6 ');
    end else if ScoreFilterCB.ItemIndex=2 then
    begin
      sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
      sql.add('        else');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
      sql.add('      end ) >=6 ');
    end;
    sql.add('order by shipdate ');
    active:=true;
  end;
  //
  
  if ontime=0  then
  begin
    if overtime<>0 then
      edit4.Text:='0%';
      edit5.Text:='100%';
    if overtime=0 then
      edit4.Text:='0%';
      edit5.Text:='0%';
  end;
  if ontime<>0 then
  begin
   edit4.Text:=FormatFloat('0.00',ontime/(ontime+overtime)*100)+'%';
   edit5.Text:=FormatFloat('0.00',overtime/(ontime+overtime)*100)+'%';
  end;

end;

procedure Tcheckplan.Button5Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
  ExportAllData:boolean;
begin
 //20140926匯出有問題資料(Y)或全部資料(N)
 if  Messagedlg(Pchar('Export  all data(Y) or only overtime data(N) ?'),mtInformation,[mbYES,mbNo],0)=mrYes then
   ExportAllData:=true
 else
   ExportAllData:=false;
   
if so.Active then
  begin
    if so.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   so.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=so.fields[i-1].FieldName;
    end;
  so.First;
  j:=2;
  while   not  so.Eof   do
    begin
        //匯出全部資料
        if ExportAllData=true then
        begin    
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   so.fieldcount   do
          begin
              eclApp.Cells(j,i+1):=so.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          if  (not so.fieldbyname('csp').IsNull and not so.fieldbyname('csr').IsNull) then
            if abs(so.fieldbyname('csr').AsDateTime-so.fieldbyname('csp').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;
          if  (not so.fieldbyname('cep').IsNull and not so.fieldbyname('cer').IsNull) then
            if abs(so.fieldbyname('cer').AsDateTime-so.fieldbyname('cep').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;

          if  (not so.fieldbyname('ssp').IsNull and not so.fieldbyname('ssr').IsNull) then
            if abs(so.fieldbyname('ssr').AsDateTime-so.fieldbyname('ssp').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;
          if  (not so.fieldbyname('sep').IsNull and not so.fieldbyname('ser').IsNull) then
            if abs(so.fieldbyname('ser').AsDateTime-so.fieldbyname('sep').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;

          if  (not so.fieldbyname('asp').IsNull and not so.fieldbyname('asr').IsNull) then
            if abs(so.fieldbyname('asr').AsDateTime-so.fieldbyname('asp').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;
          if (not so.fieldbyname('aep').IsNull and not so.fieldbyname('aer').IsNull) then
            if abs(so.fieldbyname('aer').AsDateTime-so.fieldbyname('aep').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;      
          inc(j);
        end else
        begin
          if  not so.fieldbyname('aep').IsNull then
            if abs(so.fieldbyname('aer').AsDateTime-so.fieldbyname('aep').AsDateTime) > 5 then
          begin
            //
            eclApp.Cells(j,1):=j-1;
            for   i:=1   to   so.fieldcount   do
            begin
                eclApp.Cells(j,i+1):=so.Fields[i-1].Value;
                eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
            eclApp.Rows[j].Font.Color := clRed;
            inc(j);
            //
          end;
        end;
        so.Next;
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;
end;
procedure Tcheckplan.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  {
  if  (not so.fieldbyname('csr').IsNull) and (not so.fieldbyname('csp').IsNull) then
    if abs(so.fieldbyname('csr').AsDateTime-so.fieldbyname('csp').AsDateTime) > 5 then
      DBGridEh3.canvas.font.color:=clred;
  if  (not so.fieldbyname('cer').IsNull) and (not so.fieldbyname('cep').IsNull) then
    if abs(so.fieldbyname('cer').AsDateTime-so.fieldbyname('cep').AsDateTime) > 5 then
      DBGridEh3.canvas.font.color:=clred;

  if  (not so.fieldbyname('ssr').IsNull) and (not so.fieldbyname('ssp').IsNull) then
    if abs(so.fieldbyname('ssr').AsDateTime-so.fieldbyname('ssp').AsDateTime) > 5 then
      DBGridEh3.canvas.font.color:=clred;
  if  (not so.fieldbyname('ser').IsNull) and (not so.fieldbyname('sep').IsNull) then
    if abs(so.fieldbyname('ser').AsDateTime-so.fieldbyname('sep').AsDateTime) > 5 then
      DBGridEh3.canvas.font.color:=clred;

  if  (not so.fieldbyname('asr').IsNull) and (not so.fieldbyname('asp').IsNull) then
    if abs(so.fieldbyname('asr').AsDateTime-so.fieldbyname('asp').AsDateTime) > 5 then
      DBGridEh3.canvas.font.color:=clred;
   }
  if  (not so.fieldbyname('aer').IsNull) and (not so.fieldbyname('aep').IsNull) then
    if abs(so.fieldbyname('aer').AsDateTime-so.fieldbyname('aep').AsDateTime) > 5 then
      DBGridEh3.canvas.font.color:=clred;


end;

procedure Tcheckplan.Button6Click(Sender: TObject);
var ontime,overtime :integer;
begin
  edit6.Text:='';
  edit7.Text:='';
  edit8.Text:='';
  edit9.Text:='';
  with tempq do
  begin
    active:=false;
    sql.clear;
    sql.add('  if object_id('+''''+'tempdb..#BTSScore'+''''+') is not null  ');
    sql.add('begin   drop table #BTSScore end   ');
    sql.Add('select ddzl.ddbh,ddzl.pairs,CONVERT(char(10),ddzl.shipdate,111) as shipdate, ');
    sql.Add('CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111) as CSR, ');
    sql.Add('CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111) as CER, ');
    sql.Add('CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111) as SSR, ');
    sql.Add('CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111) as SER, ');
    sql.Add('CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111) as ASR, ');
    sql.Add('CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111) as AER, ');
    sql.Add('Max(RTSSMDD.Shipdate) as BTS_ShipDate,Max(RTSSMDD.BTS_AseED) as BTS_AEP,Max(DDZL.RYType) as RYType ');
    sql.Add('into #BTSScore from ddzl ');
    sql.Add('left join');
    sql.Add('YWDD on YWDD.YSBH=DDZL.ddbh ');
    sql.Add('left join');
    sql.Add('YWCP on ywcp.ddbh=YWDD.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,smdd.depno,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'C'+ '''');
    sql.Add('      group by smdd.depno,smdd.ysbh) as c on c.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,smdd.depno,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'S'+ '''');
    sql.Add('      group by smdd.depno,smdd.ysbh) as S on s.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,smdd.depno,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'A'+ '''');
    sql.Add('      group by smdd.depno,smdd.ysbh) as A on A.ysbh=ddzl.ddbh ');
    sql.Add('left join BDepartment on BDepartment.id=a.depno ');
    //關連CTS 排程記錄檔
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add('select RTSSmdd_N.DDBH,RTSSmdd_N.AseED,RTSSMdd_L.ShipDate,RTSSmdd_N.BTS_AseED,RTSSmdd_N.UserDate,RTSSmdd_N.YN,RTSSmdd_N.rn from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,IsNull(AseED,Convert(varchar(10),RTSSmdd.ShipDate-7,111)) as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE DESC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''N'' ');
    SQL.Add('   and  RTSSmdd.DDBH in (select DDBH from RTSSmdd where YN=''Y''  Group by DDBH) ');
    SQL.Add(') RTSSmdd_N ');
    SQL.Add('left join (');
    SQL.Add('select * from (');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')<>''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add(') A where A.rn=1 ) RTSSMdd_L on RTSSmdd_N.DDBH=RTSSMdd_L.DDBH');
    SQL.Add('');
    SQL.Add(' union all   ');
    SQL.Add(' select RTSSmdd.DDBH,AseED,RTSSmdd.shipdate,AseED as BTS_AseED,RTSSmdd.USERDATE,RTSSmdd.YN,ROW_NUMBER() over (PARTITION BY RTSSmdd.DDBH ORDER BY RTSSmdd.USERDATE ASC)');
    SQL.Add('as  rn from RTSSmdd,DDZL where DDZL.DDBH=RTSSmdd.DDBH and DDZL.shipdate>GetDate()-180 and IsNull(DDZL.RYTYPE,'''')=''SLT'' and RTSSmdd.YN=''Y'' ');
    SQL.Add('  ');
    SQL.Add(') A where A.rn=1 ) as RTSSMDD on RTSSMDD.DDBH=ddzl.DDBH');
    //
    sql.Add('where ddzl.khbh='+''''+'036'+'''' );
    sql.Add('  and substring(ddzl.ddbh,1,2) <> '+''''+'ZS'+ '''');
    sql.Add('	and CONVERT(char(10),ddzl.shipdate,111) >= '+''''+datetostr(ssdate.date)+'''');
    if checkbox2.Checked then
      sql.Add('	and CONVERT(char(10),ddzl.shipdate,111) <= '+''''+datetostr(sedate.date)+'''');
    // query order
    if CancelCK.Checked=true then
      sql.Add(' and DDZL.DDZT<>''C'' ');
    sql.Add('and ddzl.ddbh like '''+editOrder.Text+'%''');
    //
    //20140926 濾除B品訂單 ,必須有成型計畫完成日
    sql.Add(' and a.strt is not null ');
    sql.Add('group by ddzl.ddbh,ddzl.pairs,ddzl.shipdate, ');
    sql.Add('		 c.strt,c.endd,c.strtr,c.enddr, ');
    sql.Add('		 s.strt,s.endd,s.strtr,s.enddr, ');
    sql.Add('		 a.strt,a.endd,a.strtr,a.enddr ');
    ExecSQL();
    //>=6
    active:=false;
    sql.Clear;
    sql.add('select IsNull(sum(pairs),0) as error from  #BTSScore ');
    sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
    sql.add('        else');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
    sql.add('      end ) >=6 ');
    active:=true;
    overtime:=fieldbyname('error').Asinteger;
    edit7.Text:=fieldbyname('error').AsString;
    //<6
    active:=false;
    sql.Clear;
    sql.add('select IsNull(sum(pairs),0) as error from  #BTSScore ');
    sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
    sql.add('        else');
    sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
    sql.add('      end ) <6 ');
    active:=true;
    ontime:=fieldbyname('error').Asinteger;
    edit6.Text:=fieldbyname('error').AsString;
 end;
 with sol do
 begin
    //================================================
    active:=false;
    sql.Clear;
    sql.add('select * from  #BTSScore ');
    if  ScoreFilterCB1.ItemIndex=1 then
    begin
      sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
      sql.add('        else');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
      sql.add('      end ) <6 ');
    end else if ScoreFilterCB1.ItemIndex=2 then
    begin
      sql.add('where (case when IsNull(RYType,'''')<>''SLT'' then ');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AEP),AER))) ');
      sql.add('        else');
      sql.add('    (abs(DateDiff(day,IsNull(BTS_AEP,AER-7),AER))) ');
      sql.add('      end ) >=6 ');
    end;
    sql.add('order by shipdate ');
    active:=true;
  end;
 
  if ontime=0  then
  begin
    if overtime<>0 then
      edit8.Text:='0%';
      edit9.Text:='100%';
    if overtime=0 then
      edit8.Text:='0%';
      edit9.Text:='0%';
  end;
  if ontime<>0 then
  begin
   edit8.Text:=FormatFloat('0.00',ontime/(ontime+overtime)*100)+'%';
   edit9.Text:=FormatFloat('0.00',overtime/(ontime+overtime)*100)+'%';
  end;

end;

procedure Tcheckplan.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
   {
  if  (not sol.fieldbyname('csp').IsNull) and (not sol.fieldbyname('csr').IsNull) then
    if abs(sol.fieldbyname('csr').AsDateTime-sol.fieldbyname('csp').AsDateTime) > 5 then
      DBGridEh4.canvas.font.color:=clred;
  if  (not sol.fieldbyname('cep').IsNull) and (not sol.fieldbyname('cer').IsNull) then
    if abs(sol.fieldbyname('cer').AsDateTime-sol.fieldbyname('cep').AsDateTime) > 5 then
      DBGridEh4.canvas.font.color:=clred;

  if  (not sol.fieldbyname('ssp').IsNull) and (not sol.fieldbyname('ssr').IsNull) then
    if abs(sol.fieldbyname('ssr').AsDateTime-sol.fieldbyname('ssp').AsDateTime) > 5 then
      DBGridEh4.canvas.font.color:=clred;
  if  (not sol.fieldbyname('sep').IsNull) and (not sol.fieldbyname('ser').IsNull) then
    if abs(sol.fieldbyname('ser').AsDateTime-sol.fieldbyname('sep').AsDateTime) > 5 then
      DBGridEh4.canvas.font.color:=clred;

  if  (not sol.fieldbyname('asp').IsNull) and (not sol.fieldbyname('asr').IsNull) then
    if abs(sol.fieldbyname('asr').AsDateTime-sol.fieldbyname('asp').AsDateTime) > 5 then
      DBGridEh4.canvas.font.color:=clred;
      }
  if  (not sol.fieldbyname('aep').IsNull) and (not sol.fieldbyname('aer').IsNull) then
    if abs(sol.fieldbyname('aer').AsDateTime-sol.fieldbyname('aep').AsDateTime) > 5 then
      DBGridEh4.canvas.font.color:=clred;

end;
//匯出資料
procedure Tcheckplan.Button7Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
  ExportAllData:boolean;
begin
 //20140926匯出有問題資料(Y)或全部資料(N)
 if  Messagedlg(Pchar('Export  all data(Y) or only overtime data(N) ?'),mtInformation,[mbYES,mbNo],0)=mrYes then
   ExportAllData:=true
 else
   ExportAllData:=false;
 if sol.Active then
  begin
    if sol.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
    for   i:=1   to   sol.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=sol.fields[i-1].FieldName;
      end;
    sol.First;
    j:=2;
    while   not  sol.Eof   do
      begin
        //匯出全部資料
        if ExportAllData=true then
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   sol.fieldcount   do
          begin
              eclApp.Cells(j,i+1):=sol.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          //20140926顏色顯示
          if  (not sol.fieldbyname('csp').IsNull) and (not sol.fieldbyname('csr').IsNull) then
            if abs(sol.fieldbyname('csr').AsDateTime-sol.fieldbyname('csp').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;
          if  (not sol.fieldbyname('cep').IsNull) and (not sol.fieldbyname('cer').IsNull) then
            if abs(sol.fieldbyname('cer').AsDateTime-sol.fieldbyname('cep').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;

          if  (not sol.fieldbyname('ssp').IsNull) and (not sol.fieldbyname('ssr').IsNull) then
            if abs(sol.fieldbyname('ssr').AsDateTime-sol.fieldbyname('ssp').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;
          if  (not sol.fieldbyname('sep').IsNull) and (not sol.fieldbyname('ser').IsNull) then
            if abs(sol.fieldbyname('ser').AsDateTime-sol.fieldbyname('sep').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;

          if  (not sol.fieldbyname('asp').IsNull) and (not sol.fieldbyname('asr').IsNull) then
            if abs(sol.fieldbyname('asr').AsDateTime-sol.fieldbyname('asp').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;
          if  (not sol.fieldbyname('aep').IsNull) and (not sol.fieldbyname('aer').IsNull) then
            if abs(sol.fieldbyname('aer').AsDateTime-sol.fieldbyname('aep').AsDateTime) > 5 then
              eclApp.Rows[j].Font.Color := clRed;

          inc(j);
        end else
        begin
          if  (not sol.fieldbyname('aep').IsNull) and (not sol.fieldbyname('aer').IsNull) then
            if abs(sol.fieldbyname('aer').AsDateTime-sol.fieldbyname('aep').AsDateTime) > 5 then
            begin
              eclApp.Cells(j,1):=j-1;
              for   i:=1   to   sol.fieldcount   do
              begin
                  eclApp.Cells(j,i+1):=sol.Fields[i-1].Value;
                  eclApp.Cells.Cells.item[j,i+1].font.size:='8';
              end;
              eclApp.Rows[j].Font.Color := clRed;
              inc(j);
            end;
        end;
        sol.Next;
      end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;
//
//
procedure Tcheckplan.Button8Click(Sender: TObject);
begin
  edit10.Text:='';
  edit11.Text:='';
  edit12.Text:='';
  edit13.Text:='';
  with ccsi do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ddzl.ddbh,ddzl.xiexing,ddzl.shehao,ddzl.article,ddzl.khpo,ddzl.pairs ');
    sql.Add('		,ddzl.shipdate,ywcp.insdate ');
    sql.Add('		,abs(convert(int,ddzl.shipdate)-convert(int,ywcp.insdate)) as datep ');
    sql.Add(' from ddzl  ');
    sql.Add('left join ywdd on ddzl.ddbh=ywdd.YSBH ');
    sql.Add('left join (select ddbh,max(lastindate) as insdate ');
    sql.Add('			from ywcp');
    sql.Add('			group by ddbh) as ywcp on ywcp.ddbh=ywdd.ddbh ');
    sql.Add('where ywdd.sb ='+''''+'ok'+''''+' and ddzl.khbh='+''''+'036'+'''');
    sql.Add('	and shipdate>='+''''+datetostr(csdsdate.date)+'''');
    sql.Add('	and shipdate<='+''''+datetostr(csdedate.date)+'''');
    sql.Add('group by ddzl.ddbh,ddzl.xiexing,ddzl.shehao,ddzl.article,ddzl.khpo,ddzl.pairs');
    sql.Add('		,ddzl.shipdate,ywcp.insdate');
    sql.Add(' ');
    sql.Add(' ');
    //memo1.Text:=sql.Text;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;

  end;
  with tempq do
  begin
    active:=false;
    sql.clear;
    sql.Add('select isnull(sum(ddzl.pairs),0) as error');
    sql.Add(' from ddzl  ');
    sql.Add('left join ywdd on ddzl.ddbh=ywdd.YSBH ');
    sql.Add('left join (select ddbh,max(lastindate) as insdate ');
    sql.Add('			from ywcp');
    sql.Add('			group by ddbh) as ywcp on ywcp.ddbh=ywdd.ddbh ');
    sql.Add('where ywdd.sb ='+''''+'ok'+''''+' and ddzl.khbh='+''''+'036'+'''');
    sql.Add('	and shipdate>='+''''+datetostr(csdsdate.date)+'''');
    sql.Add('	and shipdate<='+''''+datetostr(csdedate.date)+'''');
    sql.add(' and abs(convert(int,ddzl.shipdate)-convert(int,ywcp.insdate))>21');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  edit11.Text:=tempq.fieldbyname('error').AsString;
  with tempq do
  begin
    active:=false;
    sql.clear;
    sql.Add('select isnull(sum(ddzl.pairs),0) as error');
    sql.Add(' from ddzl  ');
    sql.Add('left join ywdd on ddzl.ddbh=ywdd.YSBH ');
    sql.Add('left join (select ddbh,max(lastindate) as insdate ');
    sql.Add('			from ywcp');
    sql.Add('			group by ddbh) as ywcp on ywcp.ddbh=ywdd.ddbh ');
    sql.Add('where ywdd.sb ='+''''+'ok'+''''+' and ddzl.khbh='+''''+'036'+'''');
    sql.Add('	and shipdate>='+''''+datetostr(csdsdate.date)+'''');
    sql.Add('	and shipdate<='+''''+datetostr(csdedate.date)+'''');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  if tempq.fieldbyname('error').AsInteger <> 0 then
  begin
    edit10.Text:=inttostr(tempq.fieldbyname('error').AsInteger-strtoint(edit11.Text));
    edit12.Text:=floattostr(round((strtoint(edit10.Text)/tempq.fieldbyname('error').AsInteger)*10000)/100)+'%';
    edit13.Text:=floattostr(round((strtoint(edit11.Text)/tempq.fieldbyname('error').AsInteger)*10000)/100)+'%';
  end;
end;

procedure Tcheckplan.DBGridEh5GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  not ccsi.fieldbyname('datep').IsNull then
    if ccsi.fieldbyname('datep').AsInteger > 21 then
      DBGridEh5.canvas.font.color:=clred;
end;

procedure Tcheckplan.Button9Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if ccsi.Active then
  begin
    if ccsi.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   ccsi.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=ccsi.fields[i-1].FieldName;
    end;
  ccsi.First;
  j:=2;
  while   not  ccsi.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   ccsi.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=ccsi.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      ccsi.Next;
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

procedure Tcheckplan.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  {
  if  ((not ld.fieldbyname('csr').IsNull)  and (not ld.fieldbyname('csp').IsNull)) then
    if abs(ld.fieldbyname('csr').AsDateTime-ld.fieldbyname('csp').AsDateTime) > 5 then
      DBGridEh2.canvas.font.color:=clred;
  if  ((not ld.fieldbyname('cer').IsNull)  and (not ld.fieldbyname('cer').IsNull)) then
    if abs(ld.fieldbyname('cer').AsDateTime-ld.fieldbyname('cep').AsDateTime) > 5 then
      DBGridEh2.canvas.font.color:=clred;

  if  ((not ld.fieldbyname('ssr').IsNull)  and (not ld.fieldbyname('ssp').IsNull)) then
    if abs(ld.fieldbyname('ssr').AsDateTime-ld.fieldbyname('ssp').AsDateTime) > 5 then
      DBGridEh2.canvas.font.color:=clred;
  if  ((not ld.fieldbyname('ser').IsNull)  and (not ld.fieldbyname('sep').IsNull)) then
    if abs(ld.fieldbyname('ser').AsDateTime-ld.fieldbyname('sep').AsDateTime) > 5 then
      DBGridEh2.canvas.font.color:=clred;

  if  ((not ld.fieldbyname('asr').IsNull)  and (not ld.fieldbyname('asp').IsNull)) then
    if abs(ld.fieldbyname('asr').AsDateTime-ld.fieldbyname('asp').AsDateTime) > 5 then
      DBGridEh2.canvas.font.color:=clred;
  }    
  if  ((not ld.fieldbyname('aer').IsNull)  and (not ld.fieldbyname('aep').IsNull)) then
    if abs(ld.fieldbyname('aer').AsDateTime-ld.fieldbyname('aep').AsDateTime) > 5 then
      DBGridEh2.canvas.font.color:=clred;

end;

procedure Tcheckplan.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  {
  if  ((not wbl.fieldbyname('csr').IsNull)  and (not wbl.fieldbyname('csp').IsNull)) then
    if abs(wbl.fieldbyname('csr').AsDateTime-wbl.fieldbyname('csp').AsDateTime) > 5 then
      DBGridEh1.canvas.font.color:=clred;
  if  ((not wbl.fieldbyname('cer').IsNull)  and (not wbl.fieldbyname('cer').IsNull)) then
    if abs(wbl.fieldbyname('cer').AsDateTime-wbl.fieldbyname('cep').AsDateTime) > 5 then
      DBGridEh1.canvas.font.color:=clred;

  if  ((not wbl.fieldbyname('ssr').IsNull)  and (not wbl.fieldbyname('ssp').IsNull)) then
    if abs(wbl.fieldbyname('ssr').AsDateTime-wbl.fieldbyname('ssp').AsDateTime) > 5 then
      DBGridEh1.canvas.font.color:=clred;
  if  ((not wbl.fieldbyname('ser').IsNull)  and (not wbl.fieldbyname('sep').IsNull)) then
    if abs(wbl.fieldbyname('ser').AsDateTime-wbl.fieldbyname('sep').AsDateTime) > 5 then
      DBGridEh1.canvas.font.color:=clred;

  if  ((not wbl.fieldbyname('asr').IsNull)  and (not wbl.fieldbyname('asp').IsNull)) then
    if abs(wbl.fieldbyname('asr').AsDateTime-wbl.fieldbyname('asp').AsDateTime) > 5 then
      DBGridEh1.canvas.font.color:=clred;
  }    
  if  ((not wbl.fieldbyname('aer').IsNull)  and (not wbl.fieldbyname('aep').IsNull)) then
    if abs(wbl.fieldbyname('aer').AsDateTime-wbl.fieldbyname('aep').AsDateTime) > 5 then
      DBGridEh1.canvas.font.color:=clred;
end;

procedure Tcheckplan.Button10Click(Sender: TObject);
var AvgQty:Double;
    QtyAll:integer;
    finalscore:Double;
    datescore:Double;
begin

  edit14.Text:='';                             
  edit15.Text:='';

  with qy do
  begin
    active:=false;
    sql.clear;
    sql.Add('select CONVERT(char(10),scbb.scdate,111) as date,sum(ISNULL(scbbss.qty,0))as qty from scbbss ');
    sql.Add('left join scbb with (nolock) on scbb.prono  =scbbss.prono   ');
    sql.Add('	where scbbss.SCBH like ''y%'' and scbbss.gxlb= ''A''     ');
    sql.Add('and CONVERT(char(10), scbb.scdate,111)>='''+datetostr(fysdate.date)+'''');
    sql.Add('and CONVERT(char(10), scbb.scdate,111)<='''+datetostr(fyedate.date)+'''');
    sql.Add('group by  CONVERT(char(10),scbb.scdate,111)');
    sql.Add('order by  CONVERT(char(10),scbb.scdate,111)');
    //秀出每天成型平均雙數資訊
    active:=true;
  end;

  with qy1 do
  begin
    active:=false;
    sql.clear;
     sql.Add('select ddzl_od.ddbh,ddzl_od.shipdate as 出貨日期,CONVERT(char(10),a.enddR,111) as 實際日期 ,CONVERT(char(10),ddzl_od.ogac,111) as 預計日期,');
     sql.Add('datediff(day,ddzl_od.ogac,a.enddR) as 相差天數,sum(case when datediff(day,ddzl_od.ogac,a.enddR) > 14 then 1 else 0 end)as 得分');
     sql.Add('from ddzl_od');
     sql.Add('left join');
     sql.Add(' (select smdd.ysbh,smdd.depno,');
     sql.Add('max(smdd.OKdate) as enddR');
     sql.Add('from smdd');
     sql.Add('where smdd.gxlb=''A''');
     sql.Add('group by smdd.ysbh,smdd.depno) as A on A.ysbh=ddzl_od.ddbh ');
     sql.Add('left join BDepartment on BDepartment.id=a.depno');
     sql.Add('where ddzl_od.ddbh like ''y%''');
     sql.Add('and CONVERT(DATETIME,ddzl_od.shipdate,111) >='''+datetostr(fysdate.date)+'''');
     sql.Add('and CONVERT(DATETIME,ddzl_od.shipdate,111) <='''+datetostr(fyedate.date)+'''');
     sql.Add('group by ddzl_od.ddbh,ddzl_od.shipdate,ddzl_od.ogac, a.enddr');
     sql.Add('order by ddzl_od.shipdate DESC');

    //秀出OGAC所有資訊
    active:=true;
  end;

  with fy do
  begin
    active:=false;
    sql.clear;
    sql.Add('select avg(qty)as avgqty from(select CONVERT(char(10),scbb.scdate,111) as date,sum(ISNULL(scbbss.qty,0))as qty from scbbss');
    sql.Add('left join scbb with (nolock) on scbb.prono  =scbbss.prono  ');
    sql.Add('where scbbss.SCBH like ''y%'' and scbbss.gxlb= ''A''     ');
    sql.Add('and CONVERT(char(10), scbb.scdate,111)>='''+datetostr(fysdate.date)+'''');
    sql.Add('and CONVERT(char(10), scbb.scdate,111)<='''+datetostr(fyedate.date)+'''');
    sql.Add('group by   CONVERT(char(10),scbb.scdate,111)) as temp');
    //成型雙數日期區間統計,當天資料若為0,則當天天數不納入平均天數
    active:=true;
    AvgQty:=fy.fieldbyname('avgqty').AsInteger;
  end;

  with fy do
  begin
      active:=false;
      sql.clear;

      sql.Add('select qty as QtyAll from   ywcp_kt  ');
      sql.Add('where CONVERT(char(10),Qdate,111)='''+datetostr(fyedate.date)+'''');
      active:=true;
      QtyAll:=fy.fieldbyname('QtyAll').AsInteger;
  end;
  if  (QtyALl/AvgQty)>14 then
      finalscore:=0
  else
  finalscore:=(QtyALl/AvgQty);
  Edit14.Text:= floattostr(finalscore);  //FGI總分
  Edit15.Text:= floattostr(QtyALl);    //日期區間的最後一天總庫存數
  Edit16.Text:= floattostr(AvgQty);     //日期區間的平均庫存數
  Edit17.Text:= floattostr(QtyALl/AvgQty);  //FY總分數

  with fy do
    begin
      active:=false;
      sql.clear;
      sql.Add('select sum(case when datediff(day,ddzl_od.ogac,a.enddR)  > 14 then 1 else 0 end)as datescore');
      sql.Add('from ddzl_od');
      sql.Add('left join');
      sql.Add('(select smdd.ysbh,smdd.depno,max(smdd.OKdate) as enddR');
      sql.Add('from smdd');
      sql.Add('where smdd.gxlb=''A''');
      sql.Add('group by smdd.ysbh,smdd.depno) as A on A.ysbh=ddzl_od.ddbh');
      sql.Add('left join BDepartment on BDepartment.id=a.depno');
      sql.Add('where ddzl_od.ddbh like ''y%''');
      sql.Add('and CONVERT(char(10),ddzl_od.ogac,111) >= '''+datetostr(fysdate.date)+'''');
      sql.Add('and CONVERT(char(10),ddzl_od.ogac,111) <= '''+datetostr(fyedate.date)+'''');
      active:=true;

    end;
     Edit18.Text:= floattostr(datescore/2);      //OGAC總分*50%
     Edit19.Text:= floattostr((finalscore/2)+(datescore/2)); //雙項分數總和評比(OGAC+)
end;

procedure Tcheckplan.Button11Click(Sender: TObject);

begin
  bb4.Enabled:=true;
  bbt6.Enabled:=true;
  with ddzl_OD do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ddbh as DDBH,shipdate as ShipDate,ogac from ddzl_od');
    sql.Add('	where CONVERT(DATETIME, shipdate,111)>='''+datetostr(ogacsdate.date)+'''');
    sql.Add('and CONVERT(DATETIME, shipdate,111)<='''+datetostr(ogacedate.date)+'''');
    if Checkbox1.Checked then
      sql.Add('and ogac= null');
    sql.Add('group by  DDBH,shipdate,ogac');
    sql.Add('order by  shipdate DESC');
    active:=true;
  end;
end;


procedure Tcheckplan.Button12Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if qy1.Active then
  begin
    if qy1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   qy1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=qy1.fields[i-1].FieldName;
    end;
  qy1.First;
  j:=2;
  while   not  qy1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   qy1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=qy1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      qy1.Next;
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

procedure Tcheckplan.BB7Click(Sender: TObject);
begin
close;
end;

procedure Tcheckplan.BB5Click(Sender: TObject);

var i:integer;
begin
try
    ddzl_OD.first;
    for i:=1 to ddzl_OD.RecordCount do
      begin
        case ddzl_OD.updatestatus of
          usmodified:
            if ddzl_OD.fieldbyname('DDBH').value='0'then
                begin
                  UDDDZL_OD.apply(ukdelete);
                end
                else
                  begin
                    //ddzl_OD.edit;
                    //ddzl_OD.FieldByName('DDBH').Value:=OGACDDBH.text;
                    UDDDZL_OD.apply(ukmodify);
                  end;
        end;
        ddzl_OD.next;
      end;

ddzl_OD.active:=false;
ddzl_OD.cachedupdates:=false;
ddzl_OD.requestlive:=false;
ddzl_OD.active:=true;
bb7.Enabled:=true;
bb5.Enabled:=false;
bb6.Enabled:=false;
except
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;
end;

procedure Tcheckplan.BB6Click(Sender: TObject);
begin

bb7.Enabled:=true;
bb5.Enabled:=false;
bb6.Enabled:=false;
end;

procedure Tcheckplan.BB1Click(Sender: TObject);
begin
panel7.Visible:=true;
end;

procedure Tcheckplan.BB4Click(Sender: TObject);
begin
with ddzl_OD do
  begin
    cachedupdates:=true;
    requestlive:=true;
    ddzl_OD.edit;
  end;
 bb5.Enabled:=true;
 bb6.Enabled:=true;
 bb4.Enabled:=true;
 bb7.Enabled:=false;
end;



procedure Tcheckplan.bbt6Click(Sender: TObject);
var i,j,n,eof:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  DDBH,OGAC:TStringlist;
  begin
    DDBH:=TStringList.Create;
    OGAC:=TStringList.Create;
    if opendialog.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=1;
    flag:=true;
    for i := 1 to 2 do
      while(flag=true)  do
       begin
         ddbh.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         OGAC.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];
         label35.caption:=inttostr(n);
         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof=0) then
         begin
           flag:=false;
         end;
       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

   with ddzl_OD do
     begin
     cachedupdates:=true;
     requestlive:=true;
     ddzl_OD.edit;
     ddzl_OD.first;
   end;

   for i:=0 to ddzl_OD.RecordCount-1 do
   begin
     for j:=0 to n-1 do
     begin
       //showmessage(ddzl_OD.FieldByName('DDBH').value+'='+DDBH[j]+'第'+inttostr(j)+'筆');
       if ddzl_OD.FieldByName('DDBH').value=DDBH[j] then
       begin
         ddzl_OD.edit;
         ddzl_OD.FieldByName('ogac').value:=ogac[j];
         ddzl_OD.Post;
         break;
       end;
     end;
     ddzl_OD.next;
   end;
 end;
end;

procedure Tcheckplan.CheckBox4Click(Sender: TObject);
begin

  if CheckBox4.Checked=true then
  begin
    DBGridEh1.Columns[3].Visible:=true;
    DBGridEh1.Columns[15].Visible:=true;
    DBGridEh2.Columns[3].Visible:=true;
    DBGridEh2.Columns[15].Visible:=true;
    DBGridEh3.Columns[3].Visible:=true;
    DBGridEh3.Columns[15].Visible:=true;
    DBGridEh3.Columns[17].Visible:=true;
    DBGridEh4.Columns[3].Visible:=true;
    DBGridEh4.Columns[15].Visible:=true;
    DBGridEh4.Columns[17].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[3].Visible:=false;
    DBGridEh1.Columns[15].Visible:=false;
    DBGridEh2.Columns[3].Visible:=false;
    DBGridEh2.Columns[15].Visible:=false;
    DBGridEh3.Columns[3].Visible:=false;
    DBGridEh3.Columns[15].Visible:=false;
    DBGridEh3.Columns[17].Visible:=false;
    DBGridEh4.Columns[3].Visible:=false;
    DBGridEh4.Columns[15].Visible:=false;
    DBGridEh4.Columns[17].Visible:=false;
  end;

end;

procedure Tcheckplan.DBGridEh3CellClick(Column: TColumnEh);
begin
 if so.Active=true then
   if  Column.FieldName='BTS_ShipDate' then
   begin
     RTOVWeeklyScheduler:=TRTOVWeeklyScheduler.Create(self);
     RTOVWeeklyScheduler.query1.ParamByName('DDBH').Value:=so.fieldByName('DDBH').Value;
     RTOVWeeklyScheduler.query1.Active:=true;
     RTOVWeeklyScheduler.ShowModal();
     RTOVWeeklyScheduler.Free;
   end;
end;

procedure Tcheckplan.DBGridEh4CellClick(Column: TColumnEh);
begin
 if sol.Active=true then
   if  Column.FieldName='BTS_ShipDate' then
   begin
     RTOVWeeklyScheduler:=TRTOVWeeklyScheduler.Create(self);
     RTOVWeeklyScheduler.query1.ParamByName('DDBH').Value:=sol.fieldByName('DDBH').Value;
     RTOVWeeklyScheduler.query1.Active:=true;
     RTOVWeeklyScheduler.ShowModal();
     RTOVWeeklyScheduler.Free;
   end;
end;

procedure Tcheckplan.DBGridEh2CellClick(Column: TColumnEh);
begin
 if ld.Active=true then
   if  Column.FieldName='BTS_ShipDate' then
   begin
     RTOVWeeklyScheduler:=TRTOVWeeklyScheduler.Create(self);
     RTOVWeeklyScheduler.query1.ParamByName('DDBH').Value:=ld.fieldByName('DDBH').Value;
     RTOVWeeklyScheduler.query1.Active:=true;
     RTOVWeeklyScheduler.ShowModal();
     RTOVWeeklyScheduler.Free;
   end;
end;

end.
