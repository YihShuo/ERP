unit SampleOrder1;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI;

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
    FD_DB: TDBEdit;
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
    Label5: TLabel;
    ArticleEdit: TEdit;
    Label34: TLabel;
    XieXingEdit: TEdit;
    Label36: TLabel;
    SheHaoEdit: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    XieMingEdit: TEdit;
    YPZLYN: TStringField;
    MatQry: TQuery;
    PartQry: TQuery;
    SupplierQry: TQuery;
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
    Label40: TLabel;
    Label41: TLabel;
    DevCodeEdit: TEdit;
    TWQuery: TADOQuery;
    ERPQuery: TADOQuery;
    DateCK: TCheckBox;
    Label42: TLabel;
    YPZLBWBH: TIntegerField;
    KFJDEdit: TComboBox;
    DevTypeEdit: TComboBox;
    Label44: TLabel;
    YPZLDROPPED: TBooleanField;
    DroppedCK: TComboBox;
    Label45: TLabel;
    SaveDialog1: TSaveDialog;
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
    Label52: TLabel;
    CHECKOK: TComboBox;
    Label53: TLabel;
    Label54: TLabel;
    YPZLSubType: TStringField;
    DBEdit13: TDBEdit;
    subtypecbx: TComboBox;
    subtypechose: TComboBox;
    YPZLPUR_RECIEVE: TBooleanField;
    YPZLrecieveDate: TDateTimeField;
    YPZLDelDate: TDateTimeField;
    BDT8: TBitBtn;
    YPZLre_check: TBooleanField;
    YPZLrecheckdate: TDateTimeField;
    YPZLywsm_1: TStringField;
    YPZLlogo: TStringField;
    Label55: TLabel;
    DBEdit16: TDBEdit;
    TempQry: TQuery;
    ypzlqry: TQuery;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label56: TLabel;
    Button3: TButton;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    JiJieEdit: TComboBox;
    Button2: TButton;
    YPZLtotalQuantity: TFloatField;
    YPZLSYPDH: TStringField;
    YPZLSCLBH: TStringField;
    YPZLSBWLB: TStringField;
    YPZLSCSBH: TStringField;
    YPZLSloss: TFloatField;
    YPZLSCLDJ: TFloatField;
    YPZLSCurrency: TStringField;
    YPZLSRate: TFloatField;
    YPZLSCQDH: TStringField;
    YPZLSRemark: TStringField;
    YPZLSBWMCNM: TStringField;
    YPZLSzwsm: TStringField;
    YPZLSywsm: TStringField;
    YPZLSCLMC: TStringField;
    YPZLSCLYWMC: TStringField;
    YPZLSdwbh: TStringField;
    YPZLSzsjc: TStringField;
    YPZLSclzmlb: TStringField;
    YPZLSJGZWSM: TStringField;
    YPZLSJGYWSM: TStringField;
    YPZLSzsywjc: TStringField;
    YPZLSinvoice: TStringField;
    YPZLSTypeHai: TStringField;
    YPZLStype: TStringField;
    YPZLSSamplePurchaser: TStringField;
    YPZLSmainclbh: TStringField;
    YPZLSxh: TStringField;
    YPZLSBWBH: TStringField;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    btn1: TButton;
    btn2: TButton;
    DataSource1: TDataSource;
    FC: TQuery;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    OpenDialog: TOpenDialog;
    upfcc: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    btn6: TBitBtn;
    FCuserid: TStringField;
    FCuserdate: TDateTimeField;
    Edit1: TEdit;
    Edit2: TEdit;
    Button4: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    ImportList: TCheckBox;
    YPZLSUserID: TStringField;
    typehaiCheck: TCheckBox;
    invoiceCheck: TCheckBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Label43: TLabel;
    Edit7: TEdit;
    Button5: TButton;
    BDT7: TBitBtn;
    YPZLSclsl: TFloatField;
    FCypdh: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);

    procedure YPZLGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);



    procedure PC1Change(Sender: TObject);
    procedure YPZLSAfterOpen(DataSet: TDataSet);
    procedure BD4Click(Sender: TObject);

    procedure BD6Click(Sender: TObject);
    procedure YPZLSGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YPZLSCLBHSetText(Sender: TField; const Text: String);
    procedure YPZLSBWBHSetText(Sender: TField; const Text: String);
    procedure YPZLSCSBHSetText(Sender: TField; const Text: String);
    procedure YPZLGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BB7Click(Sender: TObject);

    procedure YPZLS2GridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);

    procedure YPZLS2GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BDT6Click(Sender: TObject);
    procedure YPZLSAfterInsert(DataSet: TDataSet);
    procedure YPZLGridDblClick(Sender: TObject);
    procedure BBT5Click(Sender: TObject);

    procedure YPZLAfterInsert(DataSet: TDataSet);
    procedure YPZLS2AfterInsert(DataSet: TDataSet);

    procedure YPZLGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);



    procedure subtypecbxChange(Sender: TObject);
    procedure BDT8Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure YPZLSGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BDT7Click(Sender: TObject);

  private
    DelList:TStringlist;
    NDate:TDate;
    { Private declarations }
    AppDir:String;

    procedure SampleOrderInitPickList();
    procedure ExportSampleOrder();
    procedure PageChange();
    procedure copyYpzls();
    procedure ListNoSetPurchaser();
  public
    copynum:integer;
    { Public declarations }
  end;

var
  SampleOrder: TSampleOrder;

implementation
  uses main1, FunUnit;
{$R *.dfm}

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

  if ((YPDHEdit.Text='') and (ArticleEdit.Text='') and (XieXingEdit.Text='') and (SheHaoEdit.Text='') and (KFJDEdit.Text='')
      and (JiJieEdit.Text='') and (DevCodeEdit.Text='') and (XieMingEdit.Text='') ) then
    DateCK.Checked:=true;
  with YPZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ypzl.re_check,YPZL.recheckdate,ypzl.pur_recieve,YPZL.recieveDate,ypzl.fd_check,BModRec_Dev.DelDate,ypzl.YPDH,ypzl.XieXing,ypzl.SheHao,ypzl.Article,ypzl.KFJD,');
    SQL.Add('ypzl.YPCC,ypzl.Rate,ypzl.Currency,ypzl.KFRQ,ypzl.SDRQ,ypzl.JHRQ,ypzl.Quantity,ypzl.totalQuantity,ypzl.PFC,ypzl.CFM,ypzl.FINDATE,ypzl.GSDH,ypzl.UserID,ypzl.UserDate,ypzl.UserID+''-''+BUsers.UserName as UserName ');
    SQL.Add(',ypzl.CGBH,ypzl.KFLX,ypzl.ypcco,ypzl.ypccl,ypzl.CGBH1');
    SQL.Add(',kfxxzl.XieMing ,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ,kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ');
    SQL.Add(',kfxxzl.FD ,kfxxzl.DevType,kfxxzl.Category,''1'' as YN,(Select Count(XH) from YPZLShai where YPZLShai.YPDH=YPZL.YPDH) as BWBH,xxzlKF.DROPPED,ypzl.BH,ypzl.LH,ypzl.MH,ypzl.subtype,lbzls03.ywsm ,kfxxzl.logo  FROM ypzl ypzl ');
    SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
    SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
    SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
    SQL.Add('LEFT JOIN lbzls lbzls03 ON kfxxzl.xiegn = lbzls03.lbdh AND lbzls03.lb = ''03'' ');
    SQL.Add('LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao  ');
    SQL.Add('LEFT JOIN BUsers on BUsers.UserID=ypzl.UserID ');
    SQL.Add('left join (select a.TNO,a.DelDate,b.recieveDate,b.recheckdate from (select max(DelDate) as DelDate,TNO from BModRec_Dev where article=''FD_check'' group by TNO)a');
    SQL.Add('left join (select recheckdate,TNO,DelDate,recieveDate from BModRec_Dev where article=''FD_check'')b on b.TNO=a.TNO and a.DelDate=b.DelDate group by a.TNO,a.DelDate,b.recieveDate,b.recheckdate');
    SQL.Add(')BModRec_Dev on TNO=ypzl.YPDH');
    SQL.Add('where  ypzl.YPDH like  ''%'+YPDHEdit.Text+'%'' ');
    if DateCK.Checked=true then
    begin
      sql.add('   and convert(smalldatetime,convert(varchar,YPZL.USERDATE,111)) between ');
      sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.Add('   and (GSDH='''+main.Edit2.Text+''' or GSDH=''LAI'') ');
    if YPDHEdit.Text<>'' then
      sql.Add(' and YPZL.YPDH like ''%'+YPDHEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
      sql.Add(' and YPZL.Article like ''%'+ArticleEdit.Text+'%'' ');
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
    if CHECKOK.Text<>'' then
      if CHECKOK.Text='OK' then
         sql.Add(' and YPZL.FD_CHECK = ''1'' ');
      if CHECKOK.Text='NO_OK' then
         sql.Add(' and (YPZL.FD_CHECK = ''0'' or YPZL.FD_CHECK is null )');
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if subtypechose.Text<>'' then
      sql.Add(' and ypzl.subtype='''+subtypechose.Text+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    sql.Add('order by YPZL.YPDH desc ');
    Active:=true;
  end;
  YPZLS.Active:=true;

  ToolPanel.Visible:=false;
  InfoPanel.Visible:=true;
  BD4.Enabled:=true;
  if ypzl.RecordCount<>0 then
     copynum:=1;
  if ypzl.RecordCount=0 then
     copynum:=0;

end;

procedure TSampleOrder.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
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
  if YPZL.FieldByName('YPDH').AsString='Auto' then
  begin
    YPZLGrid.canvas.font.color:=clGreen;
  end;

end;

procedure TSampleOrder.FormCreate(Sender: TObject);
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
      Next;
    end;
    sql.Clear;
    sql.Add('select jijie from kfxxzl where  khdh=''036'' and len(jijie)=''3'' and left(jijie,2)>''16'' and left(userdate,4)>''2015'' group by jijie ');
    active:=true;
    jijieEdit.Items.Clear;
    jijieEdit.Items.Add('');
    while not eof do
    begin
      jijieEdit.Items.Add(FieldByName('jijie').AsString);
      Next;
    end;
  end;

  //
  DTP1.Date:=Date();
  DTP2.Date:=Date();
 // SampleOrderInitPickList();
  PC1.ActivePage:=TS1;

 // begin
  //  YPZLGrid.PopupMenu:=PopupMenu;

 // end;

end;

procedure TSampleOrder.PC1Change(Sender: TObject);
begin
  PageChange();

end;

procedure TSampleOrder.YPZLSAfterOpen(DataSet: TDataSet);
begin
  DelList.Clear;
end;

procedure TSampleOrder.BD4Click(Sender: TObject);
begin
     bd5.enabled:=true;
     bd6.enabled:=true;

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

    panel1.Visible:=true;

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




procedure TSampleOrder.BD6Click(Sender: TObject);
begin
  panel1.Visible:=false;
  YPZLS.active:=false;
  YPZLS.cachedupdates:=false;
  YPZLS.requestlive:=false;
  YPZLS.Active:=true;
  BD5.enabled:=false;
  BD6.enabled:=false;
  //


  combobox1.text:='';

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
  with MatQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLZL.CLDH,CLZL.ywpm,CLZL.dwbh,CLZL.CQDH,CLZL.ZSDH,ZSZL.ZSYWJC from CLZL left join zszl on zszl.zsdh=clzl.zsdh where CLDH='''+Sender.AsString+''' and ((Substring(CLDH,1,3)=''V90'') or CLZL.YN=1 ) ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('ywpm').Value:=MatQry.FieldByName('ywpm').Value;
      YPZLS.FieldByName('CQDH').Value:=MatQry.FieldByName('CQDH').Value;
      YPZLS.FieldByName('dwbh').Value:=MatQry.FieldByName('dwbh').Value;
      //20101017 直接替換成預設材料參考廠商
      if MatQry.FieldByName('zsdh').AsString<>'' then
      begin
        YPZLS.FieldByName('CSBH').Value:=MatQry.FieldByName('zsdh').Value;
        YPZLS.FieldByName('ZSYWJC').Value:=MatQry.FieldByName('ZSYWJC').Value;
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
  with PartQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select bwdh,zwsm,ywsm,bwlb from bwzl where bwdh='''+Sender.AsString+'''  ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('BWMCNM').Value:=PartQry.FieldByName('ywsm').AsString+'-'+PartQry.FieldByName('zwsm').AsString;
      YPZLS.FieldByName('BWLB').Value:=PartQry.FieldByName('BWLB').Value;
      YPZLS.Post;
    end;
  end;

end;

procedure TSampleOrder.YPZLSCSBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with SupplierQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select zsdh,zsqm,ZSYWJC from ZSZL where zsdh<>'''' and ZSDH='''+Sender.AsString+''' and YN=1 ');
    Active:=true;
    if RecordCount>0 then
    begin
      YPZLS.Edit;
      YPZLS.FieldByName('CSBH').Value:=SupplierQry.FieldByName('zsdh').Value;
      YPZLS.FieldByName('ZSYWJC').Value:=SupplierQry.FieldByName('ZSYWJC').Value;
      YPZLS.Post;
    end;
  end;

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
var eclApp,WorkBook:olevariant;
    i,offset:integer;
    SubPart:boolean;
    BeforeXH,FlowNum:string;
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
          eclApp.ActiveSheet.Rows.Font.Size := 13;

          //內腰資訊
          //Select YPZL_S1.*  From YPZL_S1 YPZL_S1
          //WHERE YPDH = 'LAIS140700011'
          //抬頭資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('SELECT ypzl.* ,kfxxzl.XieMing ,kfxxzl.fd,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ');
            SQL.Add(',kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.zwsm ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ,kfxxzl.IMGName ,lbzls03.zwsm AS zwsm03 ,lbzls03.ywsm AS ywsm03 ,kfxxzl.DAOMH,BUsers.UserName,kfxxzl.logo ');
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
          eclApp.Cells(1,2):=TempQry.FieldByName('KFJC').AsString+' PROTOTYPE SAMPLE';
          eclApp.Cells(2,1):=YPZL.FieldByName('YPDH').AsString;    //編號
          eclApp.Range['D2','E2'].Merge;
          eclApp.Range['D2','E2'].HorizontalAlignment := -4108; //水平置中
          eclApp.Cells(2,4):='SR:'+YPZL.FieldByName('Article').AsString; //
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
        //  eclApp.Cells(10,3):=TempQry.FieldByName('KFRQ').AsString;
        // MODIFY DELIVERY DATE IS ETA
          eclApp.Cells(10,4):=TempQry.FieldByName('JHRQ').AsString;
          //
          eclApp.Cells(10,7):=TempQry.FieldByName('FINDATE').AsString;
          eclApp.Cells(10,9):=TempQry.FieldByName('DAOMH').AsString;
          //
          TempQry.Active:=false;
          //備註資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select LineNum,Remark from ypzls2 ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            SQL.Add('order by LineNum ');
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
                eclApp.Cells(Offset+i,1):=TempQry.FieldByName('LineNum').AsString;
                eclApp.Cells(Offset+i,3):=trim(TempQry.FieldByName('Remark').AsString);
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
              SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,clzl.tyjh ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc , ');
              SQL.Add('CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN Customs.invoice ELSE ypzlshai.invoice END  invoice, ');
              SQL.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN Customs.Custom ELSE ypzlshai.TypeHai END  TypeHai ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
              SQL.Add('LEFT JOIN (select ypdh as ypdhhai,clbh,TypeHai,invoice,xh as xhhai from ypzlshai)ypzlshai  ON ypzlshai.ypdhhai = ypzls.ypdh and ypzlshai.clbh = ypzls.clbh and ypzlshai.xhhai = ypzls.xh');
              SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
              SQL.Add('ORDER BY YPZLS.YPDH , YPZLS.XH, YPZLS.XH1');

            end else
            begin
              SQL.Add('select YPDH,xh ,xh1 ,BWBH ,ypzls.CLBH ,BWLB ,CSBH ,loss ,CLSL ,CLDJ ,Currency ,Rate,CQDH ');
              SQL.Add(',Remark ,BWMCNM,zwsm ,ywsm  ,CLMC,CLYWMC,dwbh ,zsjc ,clzmlb ,JGZWSM ,JGYWSM ,zsywjc,');
              SQL.Add('CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN Customs.invoice ELSE ypzlshai.invoice END  invoice, ');
              SQL.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN Customs.Custom ELSE ypzlshai.TypeHai END  TypeHai ');
              SQL.Add(' from ( ');
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc');
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
              SQL.Add(')  YPZLS  ');
              SQL.Add('LEFT JOIN (select ypdh as ypdhhai,clbh,TypeHai,invoice,xh as xhhai from ypzlshai)ypzlshai  ON ypzlshai.ypdhhai = YPZLS.ypdh and ypzlshai.clbh = YPZLS.clbh and ypzlshai.xhhai = YPZLS.xh');
              SQL.Add('LEFT JOIN (  SELECT CGZLSS.ZLBH, CGZLSS.CLBH, CGZLInvoice.Invoice, CGZLInvoice.Custom FROM CGZLInvoice ');
              SQL.Add('  LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CINO = CGZLInvoice.CINO  ');
              SQL.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH ');
              SQL.Add('  WHERE CGZLSS.ZLBH = '''+YPZL.FieldByName('YPDH').AsString+'''');
              SQL.Add(') Customs ON Customs.ZLBH = ypzls.YPDH AND Customs.CLBH = ypzls.CLBH');
              SQL.Add('group by YPDH ,xh ,xh1 ,BWBH ,ypzls.CLBH ,BWLB ,CSBH ,loss ,CLSL ,CLDJ ,Currency ,Rate,CQDH');
              SQL.Add(',Remark ,BWMCNM,zwsm ,ywsm  ,CLMC,CLYWMC,dwbh ,zsjc ,clzmlb ,JGZWSM ,JGYWSM ,zsywjc,CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN Customs.invoice ELSE ypzlshai.invoice END  ,');
              SQL.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN Customs.Custom ELSE ypzlshai.TypeHai END   ');
              SQL.Add('order by   YPZLS.YPDH, YPZLS.XH , YPZLS.XH1 ,YPZLS.BWBH    ');
            end;
            //memo2.text:=sql.Text;
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
                eclApp.Cells(Offset+i,18):=TempQry.FieldByName('TypeHai').AsString;
                eclApp.Cells(Offset+i,19):=TempQry.FieldByName('Invoice').AsString;
                //eclApp.Cells(Offset+i,19):=TempQry.FieldByName('llno').AsString;                
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


  end else if PC1.ActivePageIndex=1 then
  begin

    MasPanel.Visible:=false;
    DetPanel.Visible:=true;
    RemarkPanel.Visible:=false;
  if copynum=1 then
     copyypzls();
  
  end else if PC1.ActivePageIndex=2 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=true;

  end else if PC1.ActivePageIndex=3 then
  begin
    MasPanel.Visible:=false;
    DetPanel.Visible:=false;
    RemarkPanel.Visible:=false;
  end;

end;
//20150321 功能很少使用
procedure TSampleOrder.ListNoSetPurchaser();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

end;
//20150321 輸出SR list Excel
procedure TSampleOrder.BBT5Click(Sender: TObject);
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


procedure TSampleOrder.YPZLAfterInsert(DataSet: TDataSet);
begin
  with YPZL do
  begin
      FieldByName('YPDH').AsString:='Auto';
      FieldByName('PFC').AsString:='JNG';
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






procedure TSampleOrder.YPZLGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if YPZL.FieldByName('DROPPED').AsBoolean=true then
  begin
    YPZLGrid.canvas.Brush.Color:=clBtnFace;
    YPZLGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;




procedure TSampleOrder.subtypecbxChange(Sender: TObject);
begin
 Dbedit13.text:=subtypecbx.text;
end;


procedure TSampleOrder.BDT8Click(Sender: TObject);
var
   eclApp,WorkBook:olevariant;
   i,j:integer;
begin
 with tempqry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ypzl.ypdh,ypzl.article,KFJD,ypzls.clbh,ypzls.bwbh,bwzl.ywsm,ypzls.remark from YPZL');
    SQL.Add('left join ypzls on ypzls.ypdh=YPZL.ypdh');
    SQL.Add('left join bwzl on bwzl.bwdh=YPZLs.bwbh');
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



procedure TSampleOrder.BD5Click(Sender: TObject);
var i:integer;
begin

  try
      ypzls.first;
      for i:=1 to ypzls.RecordCount do
      begin

         if  ((YPZLs.FieldByName('type').asstring='new')  and  (YPZLs.FieldByName('mainclbh').asstring<>'')) then
         begin
             case ypzls.updatestatus of
               usmodified:
               begin
                 updet.apply(ukmodify);
               end;
         end;

         end;

         if  ((YPZLs.FieldByName('type').asstring='new')   and  (YPZLs.FieldByName('mainclbh').asstring='')) then
         begin
           
            with TempQry do
            begin
               active:=false;
               sql.Clear;
               sql.add('insert into YPZLshai ');
               sql.add(' (YPDH, xh, bwbh, clbh ,cqdh , samplepurchaser, userid, typehai, clsl, invoice)');
               sql.add('values ('+''''+YPZLs.fieldbyname('YPDH').AsString+''''+','+''''+YPZLs.fieldbyname('xh').AsString+''''+',');
               sql.Add(''''+YPZLs.fieldbyname('bwbh').AsString+''''+',') ;
               sql.Add(''''+YPZLs.fieldbyname('clbh').AsString+''''+',') ;
               sql.Add(''''+YPZLs.fieldbyname('cqdh').AsString+''''+',') ;
               sql.Add(''''+YPZLs.fieldbyname('samplepurchaser').AsString+''''+',') ;
               sql.add(''''+main.Edit1.Text+''''+',');
               sql.Add(''''+YPZLs.fieldbyname('typehai').AsString+''''+',') ;
               sql.Add(''''+YPZLs.fieldbyname('clsl').AsString+''''+',') ;
               sql.Add(''''+YPZLs.fieldbyname('invoice').AsString+''')') ;
              // memo2.text:=sql.text;
               execsql;
               active:=false;
            end;
         end;
  ypzls.next;
  end;//for

  panel1.Visible:=false;
  ypzls.active:=false;
  ypzls.cachedupdates:=false;
  ypzls.requestlive:=false;
  ypzls.active:=true;

  BD4.Enabled:=true;
  BD5.enabled:=false;
  BD6.enabled:=false;
  combobox1.text:='';


  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TSampleOrder.Button3Click(Sender: TObject);
begin

   ypzls.RequestLive:=true;
   ypzls.CachedUpdates:=true;
   with  ypzls do
   begin
   first;
      while not ypzls.eof do
      begin
      edit;
      if combobox1.text<>'' then
         ypzls.fieldbyname('typehai').AsString:=combobox1.text;
      post;
      next;
      end;
   end;
end;

procedure TSampleOrder.Button2Click(Sender: TObject);
begin
{   ypzls.RequestLive:=true;
   ypzls.CachedUpdates:=true;

  with ypzlqry do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('insert into ypzlshai (ypdh,xh,bwbh,clbh,cqdh,dwbh,csbh,zsywjc,samplepurchaser,userid,clsl,loss) ');
      SQL.Add('select ypzls.ypdh,ypzls.xh,ypzls.bwbh,ypzls.clbh,ypzls.cqdh,ypzls.dwbh,ypzls.csbh,ypzls.zsywjc,zszl_dev.samplepurchaser,ypzls.userid,max(ypzls.clsl) as clsl,ypzls.loss from (');

      SQL.Add('SELECT ypzls.YPDH ,ypzls.xh  ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
      SQL.Add(',ypzls.Remark ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb,clzl.tyjh  ,zszl.zsywjc,ypzls.UserID');
      SQL.Add('FROM ypzls');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
      SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
      SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH ='''+ypzl.fieldbyname('ypdh').value+''' ');

      SQL.Add('union all');
      SQL.Add('SELECT ypzls.YPDH,ypzls.xh  ,ypzls.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
      SQL.Add(' ,ypzls.BWLB ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
      SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
      SQL.Add(',ypzls.Remark ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
      SQL.Add(',clzl.clzmlb  ,clzl.tyjh,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc  ,ypzls.userid');
      SQL.Add('FROM ypzls ypzls');
      SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
      SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
      SQL.Add('WHERE YPDH ='''+ypzl.fieldbyname('ypdh').value+'''    and CLZHZL.SYL>0');
      SQL.Add('union all');
      SQL.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
      SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH');
      SQL.Add(',clzhzl2.Remark  ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
      SQL.Add(',clzl.clzmlb  ,clzl.tyjh,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc,clzhzl2.userid');
      SQL.Add(' from (');
      SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
      SQL.Add(' ,ypzls.BWLB ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
      SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
      SQL.Add(',ypzls.Remark  ,clzl.dwbh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
      SQL.Add(',clzl.clzmlb  ,clzl.tyjh ,');
      SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ,ypzls.userid');
      SQL.Add('FROM ypzls ypzls');
      SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
      SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
      SQL.Add('WHERE YPDH ='''+ypzl.fieldbyname('ypdh').value+'''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
      SQL.Add(') clzhzl2');
      SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
      SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
      SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
      SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
      SQL.Add(')  ypzls');
      SQL.Add('LEFT JOIN zszl_dev ON zszl_dev.zsdh = ypzls.Csbh   and zszl_dev.GSBH=''CDC''');
      SQL.Add(' group by ypzls.ypdh,ypzls.xh,ypzls.bwbh,ypzls.clbh,ypzls.cqdh,ypzls.dwbh,ypzls.csbh,ypzls.zsywjc,zszl_dev.samplepurchaser,ypzls.userid,ypzls.loss');
      SQL.Add(' order by   ypzls.YPDH, ypzls.XH ,ypzls.BWBH ');
     execsql;
   end;;
   ypzls.Active:=false;
   ypzls.Active:=true;     }
end;

   
procedure TSampleOrder.copyYpzls();
begin
   if ypzl.RecordCount=0 then
   begin
      showmessage('Query');
      abort;
   end;

   with tempqry do
   begin
     Active:=false;
     SQL.Clear;
     Sql.Add('select docount.a,ypzls.ypdh,ypzl.Quantity,ypzl.totalQuantity from ypzls') ;
     Sql.Add('left join ypzlshai on ypzls.ypdh=ypzlshai.ypdh and ypzlshai.bwbh=ypzls.bwbh and ypzlshai.clbh=ypzls.clbh') ;
     Sql.Add('left join ypzl on ypzl.YPDH=ypzls.ypdh') ;
     Sql.Add('left join (') ;
     Sql.Add('select ypdh,') ;
     Sql.Add('(select count(ypdh) from ypzlshai where ypzlshai.YPDH=ypzl.ypdh) as a') ;
     Sql.Add('from ypzl') ;
     Sql.Add('where ypzl.ypdh='''+ypzl.FieldByName('ypdh').Value+''')docount on docount.ypdh=ypzls.ypdh') ;
     Sql.Add('where ypzls.ypdh='''+ypzl.FieldByName('ypdh').Value+'''') ;
     Active:=true;
   end;
   if tempqry.FieldByName('a').Value=0 then
      button2.enabled:=true
   else
      button2.enabled:=false;

end;




procedure TSampleOrder.YPZLSGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (YPZLs.FieldByName('type').AsString='new') then
  begin
       YPZLSGrid.canvas.Brush.Color:=clmoneygreen;
       YPZLSGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure TSampleOrder.btn2Click(Sender: TObject);
begin
    btn1.Enabled:=true;
    btn2.Enabled:=true;
    btn3.Enabled:=true;
    btn4.Enabled:=false;
    btn5.Enabled:=false;
  with FC do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ypdh,userid,userdate from YPZLShaiList where userid='''+main.edit1.text+'''');
    Active:=true;
  end;
end;

procedure TSampleOrder.btn1Click(Sender: TObject);
var
  i,j,n:integer;
  flag:boolean;
  eof:string;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Ypdh:TStringlist;
begin
  with FC do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('delete YPZLShaiList');
    execsql;
    active:=false;
  end;
  with FC do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ypdh,userid,userdate from YPZLShaiList ');
    Active:=true;
  end;
    Ypdh:=TStringList.Create;


    if opendialog.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=2;
    flag:=true;

      while(flag=true)  do
       begin
         Ypdh.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);

         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];


         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof='') then
            flag:=false;

       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

   with fc do
     begin
     cachedupdates:=true;
     requestlive:=true;
     fc.edit;

    end;

    for j:=0 to n-2 do
     begin
         fc.insert;
         fc.FieldByName('ypdh').value:=ypdh[j];
         FC.FieldByName('USERID').value:=main.Edit1.text;
         FC.FieldByName('USERdate').value:=NDate;
         fc.Post;
     end;
     fc.next;
 end;
  btn1.Enabled:=false;
  btn2.Enabled:=false;
  btn3.Enabled:=false;
  btn4.Enabled:=true;
  btn5.Enabled:=true;
end;



procedure TSampleOrder.btn3Click(Sender: TObject);
begin
  btn1.Enabled:=false;
  btn2.Enabled:=false;
  btn3.Enabled:=false;
  btn4.Enabled:=true;
  btn5.Enabled:=true;
  btn6.Enabled:=true;
  with FC do
  begin
    cachedupdates:=true;
    requestlive:=true;
    FC.edit;
  end;
end;

procedure TSampleOrder.btn4Click(Sender: TObject);
var
 i:integer;

begin

  btn1.Enabled:=false;
  btn2.Enabled:=true;
  btn3.Enabled:=true;
  btn4.Enabled:=false;
  btn5.Enabled:=false;
  btn6.Enabled:=false;
  try
    fC.cachedupdates:=true;
    fC.requestlive:=true;
    fC.first;
    for i:=1 to fC.RecordCount do
    begin
      case fC.updatestatus of
      usinserted:
           upfcc.apply(ukinsert);
      usmodified:
       begin
       ///
       end;
      end;
      fC.next;
    end;


    with fC do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;


    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

end;


procedure TSampleOrder.btn6Click(Sender: TObject);
begin
  with FC do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('delete YPZLShaiList');
    execsql;
    active:=false;
  end;
  btn1.Enabled:=false;
  btn2.Enabled:=true;
  btn3.Enabled:=true;
  btn4.Enabled:=false;
  btn5.Enabled:=false;
  btn6.Enabled:=false;
end;

procedure TSampleOrder.Button4Click(Sender: TObject);
begin

with ypzls do
     begin
     Active:=false;
     SQL.Clear;
     Sql.Add('select * from ( ');
     Sql.Add('select isnull(ypzlshai.clbh,'''') as mainclbh,CASE WHEN ISNULL(Customs.clbh, '''') <> '''' THEN ''old'' ELSE ''new'' END  type,');
     Sql.Add('YPDH,xh ,xh1 ,ypzls.BWBH ,ypzls.CLBH ,BWLB ,CSBH ,loss ,CLSL ,CLDJ ,Currency ,Rate,CQDH');
     Sql.Add(',Remark ,BWMCNM,zwsm ,ywsm  ,CLMC,CLYWMC,dwbh ,zsjc ,clzmlb ,JGZWSM ,JGYWSM ,zsywjc,');
     Sql.Add('CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN isnull(Customs.invoice,'''') ELSE isnull(ypzlshai.invoice,'''') END  invoice,');
     Sql.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN isnull(Customs.Custom,'''') ELSE isnull(ypzlshai.TypeHai,'''') END  TypeHai,zszl_dev.SamplePurchaser,ypzlshai.UserID');
     Sql.Add(' from (');
     Sql.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH,');
     Sql.Add('ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc');
     Sql.Add('FROM ypzls ypzls');
     Sql.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
     Sql.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
     Sql.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh');
     if not ImportList.Checked then
        Sql.Add('WHERE YPDH =:ypdh');
     if ImportList.Checked then
        Sql.Add('WHERE YPDH in (select ypdh from ypzlshailist ) ');
     Sql.Add('union all');
     Sql.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
     Sql.Add(' ,ypzls.BWLB ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
     Sql.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
     Sql.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
     Sql.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
     Sql.Add('FROM ypzls ypzls');
     Sql.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
     Sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
     Sql.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
     Sql.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
     Sql.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
     Sql.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
     Sql.Add('WHERE  CLZHZL.SYL>0');
     if not ImportList.Checked then
        Sql.Add('and YPDH =:ypdh');
     if ImportList.Checked then
        Sql.Add('and YPDH in (select ypdh from ypzlshailist) ');
     Sql.Add('union all');
     Sql.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
     Sql.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH');
     Sql.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
     Sql.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
     Sql.Add(' from (');
     Sql.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
     Sql.Add(' ,ypzls.BWLB ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
     Sql.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
     Sql.Add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
     Sql.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
     Sql.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
     Sql.Add('FROM ypzls ypzls');
     Sql.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
     Sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
     Sql.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
     Sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
     Sql.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
     Sql.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
     Sql.Add('WHERE  CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
     if not ImportList.Checked then
        Sql.Add('and YPDH =:ypdh');
     if ImportList.Checked then
        Sql.Add('and YPDH in (select ypdh from ypzlshailist) ');
     Sql.Add(') clzhzl2');
     Sql.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
     Sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
     Sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
     Sql.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
     Sql.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
     Sql.Add(')  YPZLS');
     Sql.Add('LEFT JOIN zszl_dev ON zszl_dev.zsdh = YPZLS.Csbh and zszl_dev.GSBH=''CDC'' ') ;
     Sql.Add('LEFT JOIN (select ypdh as ypdhhai,clbh,TypeHai,invoice,xh as xhhai,bwbh,userID from ypzlshai)ypzlshai  ON ypzlshai.ypdhhai = YPZLS.ypdh and ypzlshai.clbh = YPZLS.clbh and ypzlshai.bwbh=ypzls.bwbh');
     Sql.Add('LEFT JOIN (');
     Sql.Add('  SELECT CGZLSS.ZLBH, CGZLSS.CLBH, CGZLInvoice.Invoice, CGZLInvoice.Custom FROM CGZLInvoice');
     Sql.Add('  LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CINO = CGZLInvoice.CINO');
     Sql.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
     if ImportList.Checked then
        Sql.Add('WHERE CGZLSS.ZLBH  in (select ypdh from ypzlshailist) ');
     if not ImportList.Checked then
        Sql.Add('  WHERE CGZLSS.ZLBH = :ypdh');
     Sql.Add(') Customs ON Customs.ZLBH = ypzls.YPDH AND Customs.CLBH = ypzls.CLBH where 1=1');
     if edit1.text<>'' then
        SQL.Add('and zszl_dev.SamplePurchaser='''+edit1.text+'''');
     if edit4.text<>'' then
        SQL.Add('and CSBH='''+edit4.text+'''');
     Sql.Add('group by ypzlshai.clbh,YPDH ,xh ,xh1 ,ypzls.BWBH ,ypzls.CLBH ,BWLB ,CSBH ,loss ,CLSL ,CLDJ ,Currency ,Rate,CQDH');
     Sql.Add(',Remark ,BWMCNM,zwsm ,ywsm  ,CLMC,CLYWMC,dwbh ,zsjc ,clzmlb ,JGZWSM ,JGYWSM ,zsywjc,');
     Sql.Add(' CASE WHEN ISNULL(Customs.clbh, '''') <> '''' THEN ''old'' ELSE ''new'' END  ,');
     Sql.Add('CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN isnull(Customs.invoice,'''') ELSE isnull(ypzlshai.invoice,'''') END ,');
     Sql.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN isnull(Customs.Custom,'''') ELSE isnull(ypzlshai.TypeHai,'''') END ,zszl_dev.SamplePurchaser,ypzlshai.UserID)main where 1=1');
     if typehaicheck.checked then
        SQL.Add('and TypeHai='''' ');
     if invoicecheck.checked then
        SQL.Add('and invoice='''' ');
     if edit6.text<>'' then
        SQL.Add('and CLYWMC like '+''''+'%'+edit6.Text+'%'+'''');
     Sql.Add('order by YPDH, XH , XH1 ,BWBH');
 //    memo2.text:=sql.text;
     Active:=true;
  end;
end;

procedure TSampleOrder.Button5Click(Sender: TObject);
begin

   ypzls.RequestLive:=true;
   ypzls.CachedUpdates:=true;
   with  ypzls do
   begin
   first;
      while not ypzls.eof do
      begin
      edit;
      if edit7.text<>'' then
         ypzls.fieldbyname('invoice').AsString:=edit7.text;
      post;
      next;
      end;
   end;
end;

procedure TSampleOrder.BDT7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,offset:integer;
    SubPart:boolean;
    BeforeXH,FlowNum:string;
    FlowID:integer;
begin
   if MessageDlg('Print Sub Parts?',mtCustom,[mbYes,mbNo], 0)=mrYes then
      SubPart:=true
   else
      SubPart:=false;
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SampleOrder_tyBach.xls'),Pchar(AppDir+'Additional\SampleOrder_tyBach.xls'),false);
    if FileExists(AppDir+'Additional\SampleOrder_tyBach.xls') then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\SampleOrder_tyBach.xls');
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
            SQL.Add('SELECT ypzl.* ,kfxxzl.XieMing ,kfxxzl.fd,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ');
            SQL.Add(',kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.zwsm ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ,kfxxzl.IMGName ,lbzls03.zwsm AS zwsm03 ,lbzls03.ywsm AS ywsm03 ,kfxxzl.DAOMH,BUsers.UserName,kfxxzl.logo ');
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
          eclApp.Cells(1,2):=TempQry.FieldByName('KFJC').AsString+' PROTOTYPE SAMPLE';
          eclApp.Cells(2,1):=YPZL.FieldByName('YPDH').AsString;    //編號
          eclApp.Range['D2','E2'].Merge;
          eclApp.Range['D2','E2'].HorizontalAlignment := -4108; //水平置中
          eclApp.Cells(2,4):='SR:'+YPZL.FieldByName('Article').AsString; //
          eclApp.Range['F2','G2'].Merge;
          eclApp.Range['F2','G2'].HorizontalAlignment := -4108; //水平置中
          eclApp.Cells(2,6):='FD:'+YPZL.FieldByName('fd').AsString; //
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
        //  eclApp.Cells(10,3):=TempQry.FieldByName('KFRQ').AsString;
        // MODIFY DELIVERY DATE IS ETA
          eclApp.Cells(10,4):=TempQry.FieldByName('JHRQ').AsString;
          //
          eclApp.Cells(10,7):=TempQry.FieldByName('FINDATE').AsString;
          eclApp.Cells(10,9):=TempQry.FieldByName('DAOMH').AsString;
          //
          TempQry.Active:=false;
          //備註資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select LineNum,Remark from ypzls2 ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            SQL.Add('order by LineNum ');
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
                eclApp.Cells(Offset+i,1):=TempQry.FieldByName('LineNum').AsString;
                eclApp.Cells(Offset+i,3):=trim(TempQry.FieldByName('Remark').AsString);
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
              SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,clzl.tyjh ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc , ');
              SQL.Add('CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN Customs.invoice ELSE ypzlshai.invoice END  invoice, ');
              SQL.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN Customs.Custom ELSE ypzlshai.TypeHai END  TypeHai ');
              SQL.Add('FROM ypzls ypzls ');
              SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
              SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
              SQL.Add('LEFT JOIN (select ypdh as ypdhhai,clbh,TypeHai,invoice,xh as xhhai from ypzlshai)ypzlshai  ON ypzlshai.ypdhhai = ypzls.ypdh and ypzlshai.clbh = ypzls.clbh and ypzlshai.xhhai = ypzls.xh');
              SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
              SQL.Add('ORDER BY YPZLS.YPDH , YPZLS.XH, YPZLS.XH1');

            end else
            begin
              SQL.Add('select YPDH,xh ,xh1 ,BWBH ,ypzls.CLBH ,BWLB ,CSBH ,loss ,CLSL ,CLDJ ,Currency ,Rate,CQDH ');
              SQL.Add(',Remark ,BWMCNM,zwsm ,ywsm  ,CLMC,CLYWMC,dwbh ,zsjc ,clzmlb ,JGZWSM ,JGYWSM ,zsywjc,');
              SQL.Add('CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN Customs.invoice ELSE ypzlshai.invoice END  invoice, ');
              SQL.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN Customs.Custom ELSE ypzlshai.TypeHai END  TypeHai ');
              SQL.Add(' from ( ');
              SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH ');
              SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc');
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
              SQL.Add(')  YPZLS  ');
              SQL.Add('LEFT JOIN (select ypdh as ypdhhai,clbh,TypeHai,invoice,xh as xhhai from ypzlshai)ypzlshai  ON ypzlshai.ypdhhai = YPZLS.ypdh and ypzlshai.clbh = YPZLS.clbh and ypzlshai.xhhai = YPZLS.xh');
              SQL.Add('LEFT JOIN (  SELECT CGZLSS.ZLBH, CGZLSS.CLBH, CGZLInvoice.Invoice, CGZLInvoice.Custom FROM CGZLInvoice ');
              SQL.Add('  LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CINO = CGZLInvoice.CINO  ');
              SQL.Add('  LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH ');
              SQL.Add('  WHERE CGZLSS.ZLBH = '''+YPZL.FieldByName('YPDH').AsString+'''');
              SQL.Add(') Customs ON Customs.ZLBH = ypzls.YPDH AND Customs.CLBH = ypzls.CLBH');
              SQL.Add('group by YPDH ,xh ,xh1 ,BWBH ,ypzls.CLBH ,BWLB ,CSBH ,loss ,CLSL ,CLDJ ,Currency ,Rate,CQDH');
              SQL.Add(',Remark ,BWMCNM,zwsm ,ywsm  ,CLMC,CLYWMC,dwbh ,zsjc ,clzmlb ,JGZWSM ,JGYWSM ,zsywjc,CASE WHEN ISNULL(Customs.invoice, '''') <> '''' THEN Customs.invoice ELSE ypzlshai.invoice END  ,');
              SQL.Add('CASE WHEN ISNULL(Customs.Custom, '''') <> '''' THEN Customs.Custom ELSE ypzlshai.TypeHai END   ');
              SQL.Add('order by   YPZLS.YPDH, YPZLS.XH , YPZLS.XH1 ,YPZLS.BWBH    ');
            end;
            //memo2.text:=sql.Text;
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

end.
procedure TSampleOrder.btn6Click(Sender: TObject);
begin

end;


