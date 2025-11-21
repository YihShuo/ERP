unit ColorSwatchCardTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, GridsEh, DBGridEh, ComCtrls,comobj,
  DBCtrls,IniFiles,ShellApi,dateutils,fununit;

type
  TColorSwatchCardTracking = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1ZSYWJC: TStringField;
    Query1ywpm: TStringField;
    Query1SEASON: TStringField;                        
    Query1CGNO: TStringField;
    Query1PURPOSE: TStringField;
    Query1CLBH: TStringField;
    Query1Visually: TStringField;
    Query1Spectro: TStringField;
    Query1Spectro_file: TStringField;
    Query1Result: TStringField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    UpdQry1: TUpdateSQL;
    TIMEQRY: TQuery;
    Query1maincgno: TStringField;
    Query1fd: TStringField;
    Query1devcode: TStringField;
    Query1devtype: TStringField;
    checkclbh: TQuery;
    Query1remark: TStringField;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2NG_ETD: TDateTimeField;
    Query2NG_ETA: TDateTimeField;
    Query2Result: TStringField;
    Query2ng_date: TDateTimeField;
    Updqry2: TUpdateSQL;
    Query2CGNO: TStringField;
    Query2CLBH: TStringField;
    Query3: TQuery;
    DataSource3: TDataSource;
    Query3userdate: TStringField;
    Query3userid: TStringField;
    Query3Remark: TStringField;
    Query1ArriveDate: TDateTimeField;
    Query1NG_Reason: TStringField;
    Query1cgzl_color2clbh: TStringField;
    Query1A4Comfirm: TStringField;
    Query1TrackingA4Comfirm: TStringField;
    Query1DateA4Comfirm: TDateTimeField;
    Query1DateColorWindow: TDateTimeField;
    Query1PC_Confirm: TStringField;
    Query1MaterialID: TStringField;
    Query1VendorID: TStringField;
    Query1FormalCLBH: TStringField;
    Query1TempCLBH: TStringField;
    Query1ShippedDate: TDateTimeField;
    Query1SignedDate: TDateTimeField;
    Query1Signer: TStringField;
    Query1DCName: TStringField;
    Query1ExpireDate: TDateTimeField;
    Query1SharedDC: TStringField;
    Query1Updater: TStringField;
    Query1AWB: TStringField;
    Query1color2Remark: TStringField;
    Query1Article: TStringField;
    Query1PRO: TStringField;
    Query1Senter: TStringField;
    Query1Readable: TStringField;
    Query2Remark: TStringField;
    Query1BuyConsolidation: TDateTimeField;
    Query1ColorMatching: TStringField;
    Query1ColorRFT: TStringField;
    Query1ypdh: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    Button2: TButton;
    Button3: TButton;
    Button8: TButton;
    CheckBox9: TCheckBox;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    lbl1: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    cb8: TComboBox;
    DTP2: TDateTimePicker;
    DTP1: TDateTimePicker;
    datecheckbox: TCheckBox;
    Edit8: TEdit;
    CheckBox1: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Edit9: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Label11: TLabel;
    Label7: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    DBGridEh3: TDBGridEh;
    TabSheet2: TTabSheet;
    Query4: TQuery;
    DataSource4: TDataSource;
    Panel10: TPanel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Edit21: TEdit;
    Button11: TButton;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    DBGridEh4: TDBGridEh;
    Panel12: TPanel;
    Button9: TButton;
    Query4BUYNO: TStringField;
    Query4DDBh: TStringField;
    Query4DEVCODE: TStringField;
    Query4ARTICLE: TStringField;
    Query4CLBH: TStringField;
    Query4A4Comfirm: TStringField;
    Query4DateA4Comfirm: TDateTimeField;
    Query4XieXing: TStringField;
    Query4SheHao: TStringField;
    DBGridEh5: TDBGridEh;
    Button10: TButton;
    Query5: TQuery;
    DataSource5: TDataSource;
    Button12: TButton;
    QueryCostingSize: TQuery;
    UpdateSQL1: TUpdateSQL;
    Query4ywpm: TStringField;
    Query1SavingCLDH: TStringField;
    Button13: TButton;
    Query5xh: TStringField;
    Query5CLBH: TStringField;
    Query5ywsm: TStringField;
    Query5ywpm: TStringField;
    Query5ZSYWJC: TStringField;
    Query5CCQQ: TStringField;
    Query5CCQZ: TStringField;
    Query5A4Comfirm: TStringField;
    Query5DateA4Comfirm: TDateTimeField;
    Query5CLBH_CFM: TStringField;
    Query5CLBH_CFM_O: TStringField;
    Query5CSBH: TStringField;
    Query5BWLB: TStringField;
    Button14: TButton;
    CheckBox2: TCheckBox;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    Query4ZSYWJC: TStringField;
    Query1ReceivedDate: TDateTimeField;
    TabSheet3: TTabSheet;
    Panel9: TPanel;
    Label27: TLabel;
    Label35: TLabel;
    DTP5: TDateTimePicker;
    Label23: TLabel;
    DTP6: TDateTimePicker;
    CheckBox3: TCheckBox;
    Label21: TLabel;
    CheckBox4: TCheckBox;
    DTP7: TDateTimePicker;
    Label24: TLabel;
    DTP8: TDateTimePicker;
    DBGridEh6: TDBGridEh;
    DataSource6: TDataSource;
    Query6: TQuery;
    BitBtn1: TBitBtn;
    bbt6: TBitBtn;
    UpdateSQL2: TUpdateSQL;
    Label25: TLabel;
    Edit12: TEdit;
    Label26: TLabel;
    Edit13: TEdit;
    Label29: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Label32: TLabel;
    BitBtn2: TBitBtn;
    Label34: TLabel;
    Edit16: TEdit;
    Query6CLBH: TStringField;
    Query6A4Comfirm: TStringField;
    Query6SEASON: TStringField;
    Query6ZSYWJC: TStringField;
    Query6ywpm: TStringField;
    Query6Vendor: TStringField;
    Query6PRO_MTL_TEAM: TStringField;
    Query6PRO_QC_TEAM: TStringField;
    Query6SignedDate: TDateTimeField;
    Query6ReceivedDate: TDateTimeField;
    Query6Receiver: TStringField;
    Query6Remark: TStringField;
    TabSheet4: TTabSheet;
    Panel11: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox5: TCheckBox;
    BitBtn3: TBitBtn;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit20: TEdit;
    BitBtn5: TBitBtn;
    Edit22: TEdit;
    DBGridEh7: TDBGridEh;
    Query7: TQuery;
    DBGridEh8: TDBGridEh;
    DataSource7: TDataSource;
    Query8: TQuery;
    UpdateSQL3: TUpdateSQL;
    DataSource8: TDataSource;
    Query8CLDH: TStringField;
    Query8ywpm: TStringField;
    Query8A4Comfirm: TStringField;
    Query8TrackingA4Comfirm: TStringField;
    Query8DateA4Comfirm: TStringField;
    Query7ywpm4: TStringField;
    Query7ywpm: TStringField;
    Query7ZSYWJC: TStringField;
    Query7CLBH: TStringField;
    Query7A4Comfirm: TStringField;
    Query7TrackingA4Comfirm: TStringField;
    Query7DateA4Comfirm: TDateTimeField;
    Query7CLLB: TStringField;
    Label39: TLabel;
    Query8Signer: TStringField;
    BitBtn4: TBitBtn;
    Query8cgzl_color2clbh: TStringField;
    Button15: TButton;
    CheckBox6: TCheckBox;
    Query1ScanDate: TDateTimeField;
    DBMemo1: TDBMemo;
    CheckBox7: TCheckBox;
    DTP9: TDateTimePicker;
    Label18: TLabel;
    DTP10: TDateTimePicker;
    Button16: TButton;
    Query1MatRemark: TStringField;
    Query1Qty: TCurrencyField;
    Query1ColorWindow2: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1SignedDateChange(Sender: TField);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);


  private
    STFilePath: string;
    TotalSRs: string;
    { Private declarations }
    procedure ReadIni();
  public

    { Public declarations }
  end;

var
  ColorSwatchCardTracking: TColorSwatchCardTracking;

implementation

uses main1,
  AutoSaveA4CFM1;




function CheckExistStringList(const content: string; const stringList: TStringList): Boolean;
begin
  Result := stringList.IndexOf(content) <> -1;
end;



{$R *.dfm}
procedure TColorSwatchCardTracking.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  STFilePath := '\\192.168.123.111\Purchasing\Color Specialist\SPETRO REPORTS';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      STFilePath:=MyIni.ReadString('Spectro','Purchase_N735_STFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TColorSwatchCardTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TColorSwatchCardTracking.Button1Click(Sender: TObject);
begin

    DBGridEh1.columns[27].picklist.Clear;
    DBGridEh1.columns[30].picklist.Clear;
  dbgrideh1.FrozenCols:=strtoint(edit8.text);
  with Query1 do
  begin
     active:=false;
     sql.Clear;
{     sql.add('SELECT  color.devtype,color.fd,color.devcode,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.clbh,');
     sql.add('    color.maincgno,color.visually,color.spectro,color.spectro_file,color.result,color.userid,color.userdate,color.remark, ');
     sql.add('    color.NG_Reason,color.ColorMatching,color.ColorRFT,kcrks.userdate as ArriveDate,cgzl_color2.clbh as cgzl_color2clbh, ');
     sql.add('    cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,');
     sql.add('    cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cgzl_color2.ShippedDate,cgzl_color2.SignedDate,');
     sql.add('    cgzl_color2.Signer,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('    cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,color.BuyConsolidation,color.ypdh,');
     sql.add('    cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,');
     sql.add('    color.cldhflex as MaterialID,color.zsdhflex as VendorID,FormalCLBH,TempCLBH,Article ');
     sql.add('from (');
     sql.add('   SELECT kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLSs.CGNO,CGZL.PURPOSE,');
     sql.add('      CGZLsS.CLBH,cgzl_color.cgno as maincgno,cgzl_color.visually,cgzl_color.spectro,cgzl_color.spectro_file,');
     sql.add('      cgzl_color.remark,cgzl_color.ColorMatching,cgzl_color.ColorRFT,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,');
     sql.add('      ZSZL_FLEX.zsdhflex,cgzl_color.result,cgzl_color.userid,cgzl_color.userdate,FormalCLBH.JHDH FormalCLBH,TempCLBH.CLDH TempCLBH,');
     sql.add('      kfxxzl.Article,CGZL_Color.BuyConsolidation');
     sql.add('  FROM ypzl');       
     sql.add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
     sql.add('  left join (select cgzlss.CLBH,zlbh,CGNO from cgzlss');
     sql.add('  	          UNION ALL');
     sql.add('  	         select CLZL_LS.JHDH as CLBH,zlbh,CGNO  from cgzlss');
     sql.add('  	          INNER  join CLZL_LS on CLZL_LS.CLDH = cgzlss.CLBH '); 
     sql.add('  	          UNION ALL');
     sql.add('  	         select CLZL_LS.CLDH as CLBH,zlbh,CGNO  from cgzlss');
     sql.add('  	          INNER  join CLZL_LS on CLZL_LS.JHDH = cgzlss.CLBH ');       
     sql.add('              )cgzlss on ypzl.ypdh=CGZLSs.zlbh');
     sql.add('  left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX=''6'' ');
     SQL.add('              and CGZL.GSBH= '''+main.Edit2.Text+''' ');
     sql.add('  left join CLZL_LS FormalCLBH on FormalCLBH.CLDH=CGZLSS.CLBH ');
     sql.add('  left join CLZL_LS TempCLBH on TempCLBH.JHDH=CGZLSS.CLBH ');
     SQL.add('              and CGZL.GSBH= '''+main.Edit2.Text+''' ');
     //sql.add('  left join ypzl on ypzl.ypdh=CGZLSs.zlbh');
     sql.add('  left join CLZL  on CLZl.CLDH=CGZLSs.CLBH');
     sql.add('  left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH');
     sql.add('  left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH= '''+main.Edit2.Text+''' ');

     sql.add('  left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser');
     sql.add('  left join cgzl_color on cgzlss.cgno=cgzl_color.cgno and cgzlss.clbh=cgzl_color.clbh');
     sql.add('  left join materialNG on cgzlss.cgno=materialNG.cgno and cgzlss.clbh=materialNG.clbh');
     sql.add('  left join CLZL_FLEX on CLZL_FLEX.cldh = cgzlss.clbh');
     sql.add('  left join ZSZL_FLEX on ZSZL_FLEX.zsdh = cgzl.zsbh');
     //if Edit9.Text <>'' then
     //   sql.add(' left join DDZl on DDZl.xiexing=ypzl.xiexing and DDZl.shehao=ypzl.shehao'); }
     //SEAN 改連結臨時正式料號  20240223
     //sql.add('SELECT  color.devtype,color.fd,color.devcode,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,ColorCLDH as CLBH,');
     sql.add('      SELECT  color.devtype,color.fd,color.devcode,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,');
     sql.add('          color.CLBH,');
     sql.add('          cgzl_color_C.cgno as maincgno,cgzl_color.visually,cgzl_color.spectro,cgzl_color.spectro_file,cgzl_color.result,cgzl_color.userid,');
     sql.add('          cgzl_color.userdate,cgzl_color.remark, ');
     sql.add('          color.NG_Reason,cgzl_color.ColorMatching,cgzl_color.ColorRFT,Max(kcrks.userdate) as ArriveDate,cgzl_color2_C.clbh as cgzl_color2clbh, ');
     sql.add('          cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,');
     sql.add('          cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cgzl_color2.ShippedDate,cgzl_color2.SignedDate,');
     sql.add('          cgzl_color2.Signer,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('          cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,CGZL_Color.BuyConsolidation,color.ypdh,');
     sql.add('          cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,');
     sql.add('          color.cldhflex as MaterialID,color.zsdhflex as VendorID,FormalCLBH,TempCLBH,Article,Max(SavingCLDH) as SavingCLDH,cgzl_color2.ReceivedDate');
     sql.add('          ,Max(CGZLInvoiceS.ScanDate) as ScanDate,color.MatRemark,color.Qty');


     sql.add('  from (');
     sql.add('  SELECT kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLSs.CGNO,CGZL.PURPOSE,');
     sql.add('        CGZLSS.CLBH,');
     sql.add('     Max(case when (left(CLZL.cldh,1)<>''V'' and cgzl_color.CLBH  IS NOT NULL) THEN CLZL.cldh ');
     sql.add('         when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
     sql.add('         when (cgzl_color_TEMP.CLBH  IS NOT  NULL and cgzl_color_TEMP.CLBH<>'''') THEN CLZL_LS.JHDH');
     sql.add('         else CLZL.cldh  end) as ColorCLDH,');
     sql.add('     Max(case when (left(CLZL.cldh,1)<>''V'' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh ');
     sql.add('         when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
     sql.add('         when (cgzl_color2_TEMP.CLBH  IS NOT  NULL and cgzl_color2_TEMP.CLBH<>'''') THEN CLZL_LS.JHDH');
     sql.add('         else CLZL.cldh  end) as Color2CLDH,');

     sql.add('     Max(case when (left(CLZL.cldh,1)<>''V'') THEN CLZL.cldh ');
     sql.add('         when (left(CLZL_LS.JHDH,1)<>''V'' and CLZL_LS.JHDH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
     sql.add('         else CLZL.cldh  end) as SavingCLDH,');

     sql.add('        ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,');
     sql.add('        ZSZL_FLEX.zsdhflex,FormalCLBH.JHDH FormalCLBH,TempCLBH.CLDH TempCLBH,');
     sql.add('        kfxxzl.Article');
     sql.add('        ,clbzzl.bz as MatRemark,CGZLS.Qty');

     // cgzl_color2 F優先   20240223
     {sql.add('      kfxxzl.Article,CGZL_Color.BuyConsolidation,');
     sql.add('      Max(case ');
     sql.add('  when (left(CGZLSS.CLBH,1)<>''V'' and cgzl_color2.CLBH  IS NOT NULL) THEN CGZLSS.CLBH ');
     sql.add('  when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH');
     sql.add('  when (left(CLZL_LS.JHDH,1)<>''V'' ) THEN CLZL_LS.JHDH');
     sql.add('  else CGZLSS.CLBH  end  )ColorCLDH');       }

     sql.add('   FROM ypzl');
     sql.add('    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
     sql.add('    left join CGZLSS on ypzl.ypdh=CGZLSs.zlbh');
     sql.add('    left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX=''6'' ');
     sql.add('                 and CGZL.GSBH= '''+main.Edit2.Text+''' ');

     sql.add('    left join(select CLDH,JHDH from  CLZL_LS UNION ALL select JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=CGZLSS.CLBH');
     sql.add('    left join cgzl_color on cgzl_color.CLBH=CGZLSS.CLBH and CGZLSS.cgno=cgzl_color.CGNO');
     sql.add('    left join cgzl_color cgzl_color_TEMP on cgzl_color_TEMP.CLBH=CLZL_LS.JHDH and CGZLSS.cgno=cgzl_color_TEMP.CGNO');
     sql.add('    left join cgzl_color2 on cgzl_color2.CLBH=CGZLSS.CLBH');
     sql.add('    left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.CLBH=CLZL_LS.JHDH');

     sql.add('    left join CLZL_LS FormalCLBH on (FormalCLBH.CLDH=CGZLSS.CLBH or FormalCLBH.CLDH=CLZL_LS.JHDH) ');
     sql.add('    left join CLZL_LS TempCLBH on (TempCLBH.CLDH=CGZLSS.CLBH or TempCLBH.CLDH=CLZL_LS.JHDH) ');
     sql.add('    left join CLZL  on CLZl.CLDH=CGZLSS.CLBH');
     sql.add('    left join clbzzl on CGZLSS.CLBH=clbzzl.cldh and clbzzl.zybb=''E''');
     sql.add('    left join CGZLS  on CGZl.CGNO=CGZLS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
     sql.add('    left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH');
     sql.add('    left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH=''CDC''');
     sql.add('    left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser');
     sql.add('    left join materialNG on cgzlss.cgno=materialNG.cgno and CGZLSS.CLBH=materialNG.clbh');
     sql.add('    left join CLZL_FLEX on CGZLSS.CLBH=CLZL_FLEX.cldh ');
     sql.add('    left join ZSZL_FLEX on ZSZL_FLEX.zsdh = cgzl.zsbh');

     sql.add('  where 1=1 and CGZLSS.CLBH<>'''' ');
     if edit1.text<>'' then
        sql.add(' and CGZL.SEASON like '''+'%'+edit1.text+'%'+''' ');
     {if ComboBox14.Text <> '' then
        sql.Add(' and YPZL.YPDH like '''+ComboBox14.Text+'%'''); }
     if edit2.text<>'' then
        sql.add( '  and CGZL.PURPOSE like '''+'%'+edit2.text+'%'+''' ');
     if edit3.text<>'' then
        sql.add(' and ZSZL.ZSYWJC like '''+'%'+edit3.text+'%'+''' ');
     if edit4.text<>'' then
        sql.add(' and CLZL.YWPM like '''+'%'+edit4.text+'%'+''' ');
     if edit5.text<>'' then
        sql.add(' and CGZL.cgno like '''+'%'+edit5.text+'%'+''' ');
     if edit6.text<>'' then
        //sql.add(' and CGZLsS.CLBH like '''+'%'+edit6.text+'%'+''' ');
        sql.add(' and (CLZL_LS.JHDH like '''+'%'+edit6.text+'%'+'''  or CGZLSS.CLBH like '''+'%'+edit6.text+'%'+''' ) ');
     if edit7.text<>'' then
        sql.add(' and kfxxzl.devcode like '''+'%'+edit7.text+'%'+''' ');
     if cb8.text<>'' then
        sql.add(' and kfxxzl.devtype like '''+cb8.text+''' ');
     {sql.add('group by kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLsS.CGNO,CGZL.PURPOSE,CGZLsS.CLBH,cgzl_color.cgno,cgzl_color.visually,');
     sql.add('cgzl_color.spectro,cgzl_color.spectro_file,cgzl_color.result,cgzl_color.userid,cgzl_color.userdate,cgzl_color.remark,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,ZSZL_FLEX.zsdhflex,FormalCLBH.JHDH,TempCLBH.CLDH,kfxxzl.Article, ');
     sql.Add('CGZL_Color.BuyConsolidation,cgzl_color.ColorMatching,cgzl_color.ColorRFT)color');
     sql.add('left join kcrks on kcrks.clbh=color.clbh and kcrks.cgbh=color.ypdh and kcrks.docno=color.cgno');
     sql.add('left join cgzl_color2 on color.clbh=cgzl_color2.clbh'); }
     //ColorCLDH 臨時正式判斷完後代用
     sql.add('  group by kfxxzl.devtype,kfxxzl.fd,kfxxzl.devcode,ZSZL.ZSYWJC,CLZL.ywpm,CGZL.SEASON,CGZLsS.CGNO,CGZL.PURPOSE,');
     sql.add('      CGZLSS.CLBH,ypzl.ypdh,materialNG.NG_Reason,CLZL_FLEX.cldhflex,ZSZL_FLEX.zsdhflex,');
     sql.add('      FormalCLBH.JHDH,TempCLBH.CLDH,kfxxzl.Article,clbzzl.bz,CGZLS.Qty ');
     sql.add('  )color');

     sql.add('left join CGZLInvoiceS on (CGZLInvoiceS.CLBH=color.ColorCLDH or CGZLInvoiceS.CLBH=color.CLBH ) and CGZLInvoiceS.CGNO=color.CGNO');
     sql.add('left join kcrks on kcrks.clbh=color.CLBH and kcrks.cgbh=color.ypdh and kcrks.docno=color.cgno');
     sql.add('left join cgzl_color on color.cgno=cgzl_color.cgno and (cgzl_color.clbh=color.ColorCLDH ) ');
     sql.add('left join cgzl_color2 on (cgzl_color2.clbh=color.Color2CLDH )');
     sql.add('left join cgzl_color cgzl_color_C on color.cgno=cgzl_color_C.cgno and cgzl_color_C.clbh=color.SavingCLDH  ');
     sql.add('left join cgzl_color2 cgzl_color2_C on cgzl_color2_C.clbh=color.SavingCLDH ');

     sql.add('where 1=1');
     if Checkbox1.checked then
     begin
       sql.add('  and convert(smalldatetime,convert(varchar,cgzl_color2.SignedDate,111))  between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
     end;
     if datecheckbox.checked then
     begin
       sql.add('  and convert(smalldatetime,convert(varchar,cgzl_color.userdate,111))  between ');
       sql.add('    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
     end;
     if Checkbox7.checked then
     begin
       sql.add('  and convert(smalldatetime,convert(varchar,CGZLInvoiceS.ScanDate,111))  between ');
       sql.add('    '''+formatdatetime('yyyy/MM/dd',DTP9.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP10.Date) +'''');
     end;
     //sql.add('where cgzl_color2.clbh <>''''');
     sql.add('group by');
     {sql.add('color.devtype,color.fd,color.devcode,color.ypdh,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.clbh,color.maincgno,');
     sql.add('color.visually,color.spectro,color.spectro_file,color.result,color.userid,color.userdate,color.remark,color.ColorMatching,color.ColorRFT,color.NG_Reason,kcrks.userdate,');
     sql.add('cgzl_color2.clbh,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cldhflex,zsdhflex,FormalCLBH,TempCLBH,');
     sql.add('cgzl_color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2.Signer,');
     sql.add('cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,color.BuyConsolidation,');
     sql.add('cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,Article order by color.cgno');    }
     //20240223
     //sql.add('color.devtype,color.fd,color.devcode,color.ypdh,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.ColorCLDH,');
     sql.add('      color.devtype,color.fd,color.devcode,color.ypdh,color.zsywjc,color.ywpm,color.season,color.cgno,purpose,color.CLBH,FormalCLBH,TempCLBH,');
     sql.add('      cgzl_color.cgno,cgzl_color.visually,cgzl_color.spectro,cgzl_color.spectro_file,cgzl_color.result,cgzl_color.userid,cgzl_color.userdate,cgzl_color.remark,');
     sql.add('      cgzl_color.ColorMatching,cgzl_color.ColorRFT,color.NG_Reason,cgzl_color.clbh,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,');
     sql.add('      cgzl_color2.DateA4Comfirm,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cldhflex,zsdhflex,');
     sql.add('      cgzl_color2.ShippedDate,cgzl_color2.SignedDate,cgzl_color2.Signer,');
     sql.add('      cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,');
     sql.add('      cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,CGZL_Color.BuyConsolidation,');
     sql.add('      cgzl_color2.color2Remark,cgzl_color2.AWB,cgzl_color2.Readable,Article,cgzl_color2_C.clbh,cgzl_color_C.CGNO,cgzl_color2.ReceivedDate');
     sql.add('      ,color.MatRemark,color.Qty');
     sql.add('      Order by color.cgno,cgzl_color.CLBH,maincgno');


     //sql.add('Order by color.cgno,cgzl_color2.CLBH,maincgno');   //20240223
     if CheckBox9.Checked =true then
        showmessage(sql.text);
     active:=true;
     requestlive:=true;
     cachedupdates:=true;
     edit;
  end;

  bb2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=true;
  //bb5.Enabled:=false;
  //bb6.Enabled:=false;
  query2.Active:=true;
  query3.Active:=true;  
  button4.Enabled:=true;
  button7.Enabled:=true;
end;

procedure TColorSwatchCardTracking.BB4Click(Sender: TObject);
begin
{  if Query1.RequestLive then
     begin
        showmessage('Pls save Master data first.');
        abort;
     end;      }
  with Query1 do
     begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
     end;
     //Button1.Enabled:=false;
     bb2.Enabled:=false;
     bb3.Enabled:=false;
     bb4.Enabled:=false;
     bb5.Enabled:=true;
     bb6.Enabled:=true;
  DBGridEh1.Columns[18].ButtonStyle := cbsEllipsis;
  DBGrideh1.Columns[32].ButtonStyle:=cbsellipsis;
end;

procedure TColorSwatchCardTracking.BB5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  with TIMEQRY do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if query1.Active=true then
  try
    query1.cachedupdates:=true;
    query1.requestlive:=true;
    query1.first;

    for i:=1 to query1.RecordCount do
    begin

      case query1.updatestatus of
      usmodified:
      begin
            if 1=1 then
            begin
              if  query1.FieldByName('maincgno').isnull then
              begin
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color(CGNO,CLBH) values(');
                  sql.Add(' '''+query1.fieldbyname('CGNO').AsString+'''');
                  {if (query1.fieldbyname('FormalCLBH').isnull) or (query1.fieldbyname('FormalCLBH').AsString='') then
                    sql.Add(', '''+query1.fieldbyname('CLBH').AsString+'''')
                  else }
                  sql.Add(', '''+query1.fieldbyname('SavingCLDH').AsString+'''');
                  sql.Add(')');

                  //showmessage(SQL.text);
                  execsql;
                end;
              end;
              if  (query1.FieldByName('cgzl_color2clbh').isnull)  then
              begin
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color2 (CLBH) values(');
                  {if (query1.fieldbyname('FormalCLBH').isnull) or (query1.fieldbyname('FormalCLBH').AsString='') then
                    sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''')
                  else}
                  sql.Add(' '''+query1.fieldbyname('SavingCLDH').AsString+'''');
                  sql.Add(')');
                  //showmessage(SQL.text);
                 execsql;
                end;
              end;
                query1.edit;
                //showmessage('update with insert');

                if ((query1.fieldbyname('Visually').OldValue<>query1.fieldbyname('Visually').Value)  or
                   (query1.fieldbyname('spectro').OldValue<>query1.fieldbyname('spectro').Value)  or
                   (query1.fieldbyname('spectro_file').OldValue<>query1.fieldbyname('spectro_file').Value)  or
                   (query1.fieldbyname('result').OldValue<>query1.fieldbyname('result').Value)  or
                   (query1.fieldbyname('remark').OldValue<>query1.fieldbyname('remark').Value)  or
                   (query1.fieldbyname('ColorMatching').OldValue<>query1.fieldbyname('ColorMatching').Value)  or
                   //(query1.fieldbyname('ReceivedDate').OldValue<>query1.fieldbyname('ReceivedDate').Value)  or  remove 20240722
                   (query1.fieldbyname('ColorRFT').OldValue<>query1.fieldbyname('ColorRFT').Value))  then
                   begin
                      query1.FieldByName('userdate').Value:=Ndate;
                       query1.FieldByName('userID').Value:=main.edit1.text;
                   end;
                Updqry1.apply(ukmodify);
            end else
            begin
               query1.edit;
                //showmessage('update without insert');
               //query1.FieldByName('userID').Value:=main.edit1.text;
                if ((query1.fieldbyname('Visually').OldValue<>query1.fieldbyname('Visually').Value)  or
                   (query1.fieldbyname('spectro').OldValue<>query1.fieldbyname('spectro').Value)  or
                   (query1.fieldbyname('spectro_file').OldValue<>query1.fieldbyname('spectro_file').Value)  or
                   (query1.fieldbyname('result').OldValue<>query1.fieldbyname('result').Value)  or
                   (query1.fieldbyname('remark').OldValue<>query1.fieldbyname('remark').Value)  or
                   (query1.fieldbyname('ColorMatching').OldValue<>query1.fieldbyname('ColorMatching').Value) or
                   //(query1.fieldbyname('ReceivedDate').OldValue<>query1.fieldbyname('ReceivedDate').Value)  or
                   (query1.fieldbyname('ColorRFT').OldValue<>query1.fieldbyname('ColorRFT').Value))  then
                   begin
                      query1.FieldByName('userdate').Value:=Ndate;
                      query1.FieldByName('userID').Value:=main.edit1.text;           
                   end;
               Updqry1.apply(ukmodify);
            end;

          //20240716 自動存相同材料名稱 第5個字後相同
          if CheckBox6.checked then
          begin
          AutoSaveA4CFM:=TAutoSaveA4CFM.Create(self);
          AutoSaveA4CFM.Edit1.text:=query1.fieldbyname('CLBH').OldValue;
          AutoSaveA4CFM.bb1.Click;
          AutoSaveA4CFM.bb2.Click;
          AutoSaveA4CFM.bb1.Click;
          //AutoSaveA4CFM.bb3.Click;
          AutoSaveA4CFM.ShowModal();
          //AutoSaveA4CFM.Release();
          end;
        end;  //if 1=1
      end;   //usmodified

      query1.next;
    end;

    with query1 do
    begin
       active:=false;
       //requestlive:=false;
       //cachedupdates:=false;
       active:=true;
    end;
    Button1.Enabled:=true;
    bb2.Enabled:=true;
    bb3.Enabled:=true;
    bb4.Enabled:=true;
    //bb5.Enabled:=false;
    //bb6.Enabled:=false;
    DBGridEh1.Columns[18].ButtonStyle := cbsNone;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;



procedure TColorSwatchCardTracking.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    //requestlive:=false;
    //cachedupdates:=false;
    active:=true;
  end;
   DBGridEh1.Columns[18].ButtonStyle := cbsNone;
   Button1.Enabled:=true;
   bb2.Enabled:=true;
   bb3.Enabled:=true;
   bb4.Enabled:=true;
   //bb5.Enabled:=false;
   //bb6.Enabled:=false;
end;

procedure TColorSwatchCardTracking.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
          query1.Next;
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

{var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  Query1.active  then
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
        eclApp.Rows[1].WrapText  := True;//自動換列
        eclApp.Columns[1].ColumnWidth := 6; //設定欄寬
        eclApp.Columns[2].ColumnWidth := 7;
        eclApp.Columns[3].ColumnWidth := 35;
        eclApp.Columns[4].ColumnWidth := 10;
        eclApp.Columns[5].ColumnWidth := 7;
        eclApp.Columns[6].ColumnWidth := 26;
        eclApp.Columns[7].ColumnWidth := 5;
        eclApp.Columns[8].ColumnWidth := 12;
        eclApp.Columns[9].ColumnWidth := 29;
        eclApp.Columns[10].ColumnWidth := 14;
        eclApp.Columns[11].ColumnWidth := 6;
        eclApp.Columns[12].ColumnWidth := 7;
        eclApp.Columns[13].ColumnWidth := 12;
        eclApp.Columns[14].ColumnWidth := 12;
        eclApp.Columns[15].ColumnWidth := 17;
        eclApp.Columns[16].ColumnWidth := 12;
        eclApp.Columns[17].ColumnWidth := 12;
        eclApp.Columns[18].ColumnWidth := 16;
        eclApp.Columns[19].ColumnWidth := 40;        
        eclApp.Cells(1,1):='Factory';
        eclApp.Cells(1,2):='Supplier';
        eclApp.Cells(1,3):='Material Name';
        eclApp.Cells(1,4):='Material Number';
        eclApp.Cells(1,5):='Color Season';
        eclApp.Cells(1,6):='Color Name';
        eclApp.Cells(1,7):='Color Code';
        eclApp.Cells(1,8):='Category';
        eclApp.Cells(1,9):='SR#';
        eclApp.Cells(1,10):='Material PO#';
        eclApp.Cells(1,11):='Initial Dev Season';
        eclApp.Cells(1,12):='Initial Dev Stage';
        eclApp.Cells(1,13):='Visually Approved?';
        eclApp.Cells(1,14):='Spectro Approved?';
        eclApp.Cells(1,15):='Spectro Report#';
        eclApp.Cells(1,16):='Final Result';
        eclApp.Cells(1,17):='Date of Approval';
        eclApp.Cells(1,18):='Approved by?';
        eclApp.Cells(1,19):='Remark';

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
               eclApp.Cells(j,1):='LYN';
               eclApp.Cells(j,2):=query1.FieldByName('ZSYWJC').value;
               eclApp.Cells(j,3):=query1.FieldByName('ywpm').value;
               eclApp.Cells(j,4):='';
               eclApp.Cells(j,5):=query1.FieldByName('SEASON').value;
               eclApp.Cells(j,6):='';
               eclApp.Cells(j,7):='';
               eclApp.Cells(j,8):=query1.FieldByName('fd').value;
               eclApp.Cells(j,9):=query1.FieldByName('devcode').value;
               eclApp.Cells(j,10):=query1.FieldByName('cgno').value;
               eclApp.Cells(j,11):=query1.FieldByName('devtype').value;
               eclApp.Cells(j,12):=query1.FieldByName('PURPOSE').value;
               eclApp.Cells(j,13):=query1.FieldByName('visually').value;
               eclApp.Cells(j,14):=query1.FieldByName('spectro').value;
               eclApp.Cells(j,15):=query1.FieldByName('spectro_file').value;
               eclApp.Cells(j,16):=query1.FieldByName('result').value;
               eclApp.Cells(j,17):=query1.FieldByName('userdate').value;
               eclApp.Cells(j,18):=query1.FieldByName('userid').value;
               eclApp.Cells(j,19):=query1.FieldByName('remark').value;
            end;
          Query1.Next;
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
end;       }


procedure TColorSwatchCardTracking.Button3Click(Sender: TObject);
begin
  with checkclbh do
  begin
     active:=false;
     sql.Clear;
     sql.add('select cgzl_color.clbh as mainclbh,cgzl_color.cgno,clzl_ls.cldh as tempclbh,clzl_ls.JHDH as tempjhdh from cgzl_color');
     sql.add('left join clzl_ls on cgzl_color.clbh=clzl_ls.cldh');
     sql.add('left join CGZLS on CGZLS.CGNO=cgzl_color.CGNO and CGZLS.clbh=cgzl_color.clbh');
     sql.add('where (clzl_ls.cldh is not null and clzl_ls.JHDH is not null) and clzl_ls.JHDH<>'''' ');
     sql.add('and not exists (select * from cgzl_color where CLBH=clzl_ls.JHDH) ');
     sql.add('and cgzls.clbh is null  ');
     active:=true;
  end;
  checkclbh.first;
  while not checkclbh.eof do
  begin
     with timeqry do
     begin
        active:=false;
        sql.Clear;
        sql.Add(' update cgzl_color set clbh = '''+checkclbh.fieldbyname('tempjhdh').AsString+'''');
        sql.Add(' where clbh = '''+checkclbh.fieldbyname('mainclbh').AsString+''' and ');
        sql.Add(' cgno = '''+checkclbh.fieldbyname('cgno').AsString+'''  ');
        execsql;
     end;
  checkclbh.next;
 end;
end;

procedure TColorSwatchCardTracking.Button4Click(Sender: TObject);
begin
   with Query2 do
   begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
   end;
   Button4.Enabled:=false;
   Button7.Enabled:=false;
   Button5.Enabled:=true;
   Button6.Enabled:=true;
end;

procedure TColorSwatchCardTracking.Button5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  with TIMEQRY do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if query2.FieldByName('remark').AsString = '' then
  begin
    Showmessage('Xin Chon remark');
    abort;
  end;

  try
    query2.cachedupdates:=true;
    query2.requestlive:=true;
    query2.first;
    for i:=1 to query2.RecordCount do
    begin
      case query2.updatestatus of
        usinserted:
        begin
          with timeqry do
          begin
             active:=false;
             sql.Clear;
             sql.Add(' insert materialNG (CGNO,CLBH,NG_date,userid,userdate,remark) values(');
             sql.Add(' '''+query1.fieldbyname('CGNO').Value+'''');
             sql.Add(','''+query1.fieldbyname('CLBH').Value+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+main.edit1.text+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+query2.FieldByName('remark').AsString+'''');
             sql.Add(')');
             execsql;
          end;
          with timeqry do
          begin
             active:=false;
             sql.Clear;
             sql.Add(' insert cgzl_colors (CGNO,CLBH,userid,userdate,remark) values(');
             sql.Add(' '''+query1.fieldbyname('CGNO').Value+'''');
             sql.Add(','''+query1.fieldbyname('CLBH').Value+'''');
             sql.Add(','''+main.edit1.text+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+query2.FieldByName('remark').AsString+'''');
             sql.Add(')');
             execsql;
          end;
        end;
        usmodified:
        begin
          Updqry2.apply(ukmodify);
          with timeqry do
          begin
             active:=false;
             sql.Clear;
             sql.Add(' delete cgzl_colors where CGNO='''+query2.fieldbyname('CGNO').Value+''' and CLBH='''+query2.fieldbyname('CLBH').Value+''' and remark='''+query2.fieldbyname('remark').OldValue+''' ');
             sql.Add(' insert cgzl_colors (CGNO,CLBH,userid,userdate,remark) values(');
             sql.Add(' '''+query2.fieldbyname('CGNO').Value+'''');
             sql.Add(','''+query2.fieldbyname('CLBH').Value+'''');
             sql.Add(','''+main.edit1.text+'''');
             sql.Add(',getdate() ');
             sql.Add(','''+query2.FieldByName('remark').AsString+'''');
             sql.Add(')');
             execsql;
          end;
        end;
      end;
      query2.next;
    end;
  
    showmessage('Succeed.');
    with query2 do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;
    Button4.Enabled:=true;
    Button7.Enabled:=true;
    Button5.Enabled:=false;
    Button6.Enabled:=false;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TColorSwatchCardTracking.Button6Click(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Button4.Enabled:=true;
  Button7.Enabled:=true;
  Button5.Enabled:=false;
  Button6.Enabled:=false;
end;

procedure TColorSwatchCardTracking.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-60;
  DTP2.date:=date;
  DTP3.Date:=date-7;
  DTP4.date:=date;
  DTP5.Date:=date-7;
  DTP6.date:=date;
  DTP7.Date:=date-7;
  DTP8.date:=date;
  DTP9.Date:=date-2;
  DTP10.date:=date;
  DateTimePicker1.Date:=date-7;
  DateTimePicker2.date:=date;
  PageControl1.ActivePage:=TabSheet1;
  //TabSheet2.Visible:=False;  //Testing
   // PageControl1.Enabled:=False;
  if (main.edit1.text='51267') or (main.edit1.text='51295') then
  begin
    CheckBox9.Visible:= true;
    CheckBox9.Checked:=true;
    //PageControl1.Enabled:=true;
  end;
  ReadIni();
end;

procedure TColorSwatchCardTracking.Query1SignedDateChange(Sender: TField);
begin
   Query1.fieldbyname('ExpireDate').Value:=Query1.fieldbyname('SignedDate').Value+730;
end;

procedure TColorSwatchCardTracking.DBGridEh1CellClick(Column: TColumnEh);
var path:PChar;
    i,j:integer;
    SRList,PicklistSR,PicklistSKU:TStringlist;
    CLBH,SR,SKU:String;
begin

  if (DBGridEh1.SelectedField.FieldName = 'Spectro_file') and (not query1.FieldByName('Spectro_file').isnull) then
  begin
    path:= pchar( STFilePath + string(query1.FieldByName('Spectro_file').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
  end;

if ((DBGridEh1.SelectedField.FieldName = 'A4Comfirm') or (DBGridEh1.SelectedField.FieldName = 'ColorWindow')) then
//if (((query1.FieldByName('A4Comfirm').isnull) or (query1.FieldByName('A4Comfirm').AsString='')) OR
//     ((query1.FieldByName('ColorWindow').isnull) or (query1.FieldByName('ColorWindow').AsString=''))
if ((DBGridEh1.columns[27].picklist.count=0) and (Edit6.text<>'')) then
  begin
    //showmessage('make list');
    SRList := TStringList.Create;
    PicklistSR := TStringList.Create;
    PicklistSKU := TStringList.Create;
    BB4.Click;
    DBGridEh1.columns[27].picklist.Clear;
    DBGridEh1.columns[30].picklist.Clear;
    CLBH:=query1.FieldByName('CLBH').AsString;
    //SRList.add(Copy(query1.FieldByName('devcode').AsString,1,6));
    //PicklistSR.add(query1.FieldByName('devcode').AsString);
    //PicklistSKU.add(query1.FieldByName('Article').AsString);
    for i:=1 to  query1.RecordCount do
      begin
        if query1.Eof then
          query1.First;
        if CLBH=query1.FieldByName('CLBH').AsString  then
          begin
            j:=SRList.IndexOf(copy(query1.FieldByName('devcode').AsString,1,6));
            //showmessage(inttostr(j));
            if (j>=0) and (SRList.IndexOf(query1.FieldByName('devcode').AsString)<0)
                and (Pos(copy(query1.FieldByName('devcode').AsString,18,2),Copy(PicklistSR[j],18,MaxInt))=0) then  //有相同SR開頭   不同配色
              begin   
                SRList.add(Copy(query1.FieldByName('devcode').AsString,1,6));
                PicklistSR.add(query1.FieldByName('devcode').AsString);
                PicklistSKU.add(query1.FieldByName('Article').AsString);                          
                DBGridEh1.columns[27].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);
                DBGridEh1.columns[30].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);

                SR:=PicklistSR[j];
                SKU:=PicklistSKU[j];
                PicklistSR[j]:= SR+'&'+ copy(query1.FieldByName('devcode').AsString,18,2);
                PicklistSKU[j]:=SKU+'&'+ query1.FieldByName('Article').AsString;
                DBGridEh1.columns[27].picklist.add(PicklistSR[j]+'/'+PicklistSKU[j]);
                DBGridEh1.columns[30].picklist.add(PicklistSR[j]+'/'+PicklistSKU[j]);
              end
            else if j<0 then                                                        //新SR
              begin
                SRList.add(Copy(query1.FieldByName('devcode').AsString,1,6));
                PicklistSR.add(query1.FieldByName('devcode').AsString);
                PicklistSKU.add(query1.FieldByName('Article').AsString);
                //showmessage(inttostr(PicklistSR.count));
                                                                            
                DBGridEh1.columns[30].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);
                DBGridEh1.columns[27].picklist.add(PicklistSR[PicklistSR.count-1]+'/'+PicklistSKU[PicklistSR.count-1]);
              end;

            //DBGridEh1.columns[24].picklist.add(query1.FieldByName('devcode').AsString+'/'+query1.FieldByName('Article').AsString);
            //DBGridEh1.columns[27].picklist.add(query1.FieldByName('devcode').AsString+'/'+query1.FieldByName('Article').AsString);
          end;
          query1.Next;
      end;
  end;                  
end;

procedure TColorSwatchCardTracking.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('ShippedDate').value > query1.FieldByName('SignedDate').value +3 then
    DBGridEh1.canvas.font.color:=clred;
end;

function IsDate(str: string): Boolean;
var
  dt: TDateTime;
begin
  Result := True;
  try
    dt := StrToDate(str);
  except
    Result := False;
  end;
end;


procedure TColorSwatchCardTracking.DBGridEh1EditButtonClick(
  Sender: TObject);
var Style, Article: String;
    i:integer;
begin
  if (DBGridEh1.SelectedField.FieldName='BuyConsolidation')  then
  begin
    if DBGridEh1.SelectedField.FieldName='BuyConsolidation' then Style:=inputbox('Please Input PlanDate','BuyConsolidation:','');
    if Style<>'' then
    begin
      if not IsDate(Style) then
      begin
        showmessage ('Pls input datetime');
        abort;
      end;
      with Query1 do
      begin
        for i:=0 to Query1.RecordCount-1 do
        begin
          Edit;
          if Article='' then Article:=FieldByName('Article').AsString;
          if Article=FieldByName('Article').AsString then
          begin
            if DBGridEh1.SelectedField.FieldName='BuyConsolidation' then FieldByName('BuyConsolidation').Value:=Style;
          end;
          Query1.Next;
        end;
      end;
    end;
  end;
end;

procedure TColorSwatchCardTracking.Button7Click(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  Button4.Enabled:=false;
  Button7.Enabled:=false;
  Button5.Enabled:=true;
  Button6.Enabled:=true;
end;

procedure TColorSwatchCardTracking.Button8Click(Sender: TObject);
var a:string;
  eclApp, WorkBook: OleVariant;
  Sheets,Sheet: OleVariant;
  i, j: Integer;
  CGNOList: TStringList;
begin
   if Query1.Active then
  begin
    CGNOList := TStringList.Create;
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook := eclApp.workbooks.Add;
        Sheets := Workbook.Sheets;
        Sheet := Sheets.Add(EmptyParam, Sheets.Item[Sheets.Count], EmptyParam, EmptyParam);
        Sheet.Name := 'ALL';
        WorkBook.Worksheets.Item['Sheet1'].Delete;
        WorkBook.Worksheets.Item['Sheet2'].Delete;
        WorkBook.Worksheets.Item['Sheet3'].Delete;
      for   i:=0   to   query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

      j:=2;
      Query1.First;
      while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
             if query1.fields[i].FieldName = 'CGNO' then
             eclapp.columns[i+1].autofit;
          end;
          query1.Next;
          inc(j);
        end;

         j:=2;
      Query1.First;
      while not Query1.Eof do
      begin
        Query2.First;
        while not Query2.Eof do
        begin
        if Query2.FieldByName('remark').AsString <> '' then
         begin
          for i:=0 to Query2.FieldCount-1 do
          begin
           if not CheckExistStringList(Query2.FieldByName('CGNO').AsString,CGNOList) then
            begin
                j:=2;
                Sheet := Sheets.Add(EmptyParam, Sheets.Item[Sheets.Count], EmptyParam, EmptyParam);
                Sheet.Name := Query2.FieldByName('CGNO').AsString;
                eclApp.Cells(j, 1) := Query2.Fields[0].Value;
                 eclapp.columns[1].autofit;
                 CGNOList.Add(Query2.FieldByName('CGNO').AsString) ;
            end
            else
              begin
                eclApp.Cells(j, i+1) := Query2.Fields[i].Value;
                eclapp.columns[i+1].autofit;
              end;
            eclApp.Cells(1, i+1) := Query2.Fields[i].FieldName;
          end;
          inc(j);
        end;
        Query2.Next;
      end;
        Query1.Next;
    end;
      eclApp.Visible := True;
      ShowMessage('Succeed');
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;

  CGNOList.Free;
end;





procedure TColorSwatchCardTracking.Button9Click(Sender: TObject);
Var
  i, j: string;
begin
  if (Edit25.text='')  then
  begin
     showmessage('Please input BuyNO ');
   end else
   begin
      with TIMEQRY do
      begin
      if Checkbox2.checked then
        begin
         active:=false;
         sql.clear;
         sql.add('select count(distinct FC_import.ARTICLE) as sr from FC_import');
         sql.add('left join XXZL on FC_import.ARTICLE = left(XXZL.article,charindex(''/'',XXZL.article+''/'')-1)  and XXZL.KFCQ=''JNG''');
         sql.add('where  FC_import.Year= '''+Copy(edit25.text,1,4)+'''');
         if (Copy(edit25.text,5,1)='0') and (Length(edit25.text)>4) then
            sql.add('and FC_import.Month='''+Copy(edit25.text,6,1)+'''')
         else if (Length(edit25.text)>4)  then
            sql.add('and FC_import.Month='''+Copy(edit25.text,5,2)+'''');
        sql.add('and FC_import.ARTICLE not in (select DISTINCT ARTICLE from DDZl where DDZL.BUYNO like  '''+edit25.text+'%''  and DDZL.DDLB=''N'')');
        sql.add('and XXZL.XieXing is not null');
        //showmessage(SQL.Text);
         active:=true;
         i:=TIMEQRY.FieldValues['sr'];
        end
      else
        i:='0';
        Label15.Caption:='Forecase order total :'+i;
        active:=false;
        sql.clear;
        sql.add('select count(DISTINCT ARTICLE) as sr from DDZl where DDZL.BUYNO like '''+edit25.text+'%'' and DDZL.DDLB=''N'' ');
        active:=true;
        j:=TIMEQRY.FieldValues['sr'];
        Label16.Caption:='Order total :'+j;
        active:=false;
        TotalSRs:=inttoStr(strtoint(i)+strtoint(j));
      end;

      with Query4 do
      begin
         active:=false;
         sql.clear;
      if Checkbox2.checked then
      begin
         sql.add('select Max(BUYNO) as BUYNO,Max(DDBH) as DDBh,DEVCODE,ARTICLE,Max(CLBH) as CLBH,');
         sql.add('       Max(A4Comfirm) as A4Comfirm,Max(DateA4Comfirm) as DateA4Comfirm,XieXing,SheHao,'''' as ywpm,'''' as ZSYWJC');
         sql.add('from(');

         sql.add('select Max(FC_import.YEAR+FC_import.Month) as BUYNO,'''' as DDBh,KFXXZL.DEVCODE,FC_import.ARTICLE,Max(XXZLS.CLBH) as CLBH,');
         sql.add('       Max(cgzl_color2.A4Comfirm) as A4Comfirm,Max(cgzl_color2.DateA4Comfirm) as DateA4Comfirm,XXZLS.XieXing,XXZLS.SheHao,'''' as ywpm,'''' as ZSYWJC');
         sql.add('From FC_import');
         sql.add('left join XXZL on FC_import.ARTICLE = left(XXZL.article,charindex(''/'',XXZL.article+''/'')-1)   and XXZL.KFCQ=''JNG''');
         sql.add('left join XXZLS on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao');
         sql.add('left join KFXXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao ');
         sql.add('left join CLZL  on CLZl.CLDH=XXZLS.CLBH ');
         sql.add('left JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
         sql.add('left join cgzl_color2 on cgzl_color2.clbh=XXZLS.CLBH');
         sql.add('where  FC_import.Year= '''+Copy(edit25.text,1,4)+'''');
         if (Copy(edit25.text,5,1)='0') and (Length(edit25.text)>4) then
            sql.add('and FC_import.Month='''+Copy(edit25.text,6,1)+'''')
         else if (Length(edit25.text)>4)  then
            sql.add('and FC_import.Month='''+Copy(edit25.text,5,2)+'''');
         if edit10.Text<>'' then
            sql.add('   and DEVCODE like ''%'+edit10.text+'%''' );
         if edit11.Text<>'' then
            sql.add('   and FC_import.ARTICLE like ''%'+edit11.text+'%''' );
         if edit21.Text<>'' then
            sql.add('   and CLZL.ywpm like ''%'+edit21.text+'%''' );
         if edit23.Text<>'' then
            sql.add('   and ZSZL.ZSYWJC like ''%'+edit23.text+'%''' );
         if edit24.Text<>'' then
            sql.add('   and XXZLS.CLBH like ''%'+edit24.text+'%''' );
         sql.add(' and XXZL.XieXing is not null');
         sql.add('group by KFXXZL.DEVCODE,FC_import.ARTICLE,XXZLS.XieXing,XXZLS.SheHao');
         sql.add('UNION all');
      end;
         sql.add('select Max(DDZl.BUYNO) as BUYNO,Max(DDZl.DDBH) as DDBh,KFXXZL.DEVCODE,DDZl.ARTICLE,Max(XXZLS.CLBH) as CLBH,');
         sql.add('       Max(cgzl_color2.A4Comfirm) as A4Comfirm,Max(cgzl_color2.DateA4Comfirm) as DateA4Comfirm,XXZLS.XieXing,XXZLS.SheHao,'''' as ywpm,'''' as ZSYWJC');
         sql.add('From XXZLS');
         sql.add('left join DDZl on DDZl.XieXing=XXZLS.XieXing and DDZl.SheHao=XXZLS.SheHao and DDZL.DDLB=''N''');
         sql.add('left join KFXXZL on DDZl.XieXing=KFXXZL.XieXing and DDZl.SheHao=KFXXZL.SheHao ');
         sql.add('left join CLZL  on CLZl.CLDH=XXZLS.CLBH ');    
         sql.add('left JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
         sql.add('left join cgzl_color2 on  cgzl_color2.clbh=XXZLS.CLBH');
         sql.add('where  DDZL.BUYNO like '''+edit25.text+'%'' ');
         if edit10.Text<>'' then
            sql.add('   and KFXXZL.DEVCODE like ''%'+edit10.text+'%''' );
         if edit11.Text<>'' then
            sql.add('   and DDZl.ARTICLE like ''%'+edit11.text+'%''' );
         if edit21.Text<>'' then
            sql.add('   and CLZL.ywpm like ''%'+edit21.text+'%''' );
         if edit23.Text<>'' then
            sql.add('   and ZSZL.ZSYWJC like ''%'+edit23.text+'%''' );
         if edit24.Text<>'' then
            sql.add('   and XXZLS.CLBH like ''%'+edit24.text+'%''' );
         //sql.add('and cgzl_color2.A4Comfirm is not null');
         sql.add('group by DEVCODE,DDZl.ARTICLE,XXZLS.XieXing,XXZLS.SheHao');
         if Checkbox2.checked then
              sql.add(')aaa group by DEVCODE,ARTICLE,XieXing,SheHao');

      //end;
      if CheckBox9.Checked =true then
            showmessage(SQL.Text);
         active:=true;
      end;
      //Button2.Click;//XXZLS.Active:=true;
   end;
      Label17.Caption:='Total SRs='+TotalSRs;
      Query5.Active:=true;
      Query5.requestlive:=true;
      Query5.cachedupdates:=true;
      Query5.Edit;

end;

procedure TColorSwatchCardTracking.Button11Click(Sender: TObject);
begin
  if (Edit25.text='')  then
  begin
     showmessage('Please input BuyNO ');
   end else
   begin
      Label15.Caption:='';
      Label16.Caption:='';
      Label17.Caption:='';
      with Query4 do
      begin
         active:=false;
         sql.clear;
      if Checkbox2.checked then
      begin
         sql.add('select Max(FC_import.YEAR+FC_import.Month) as BUYNO,'''' as DDBh,DEVCODE,FC_import.ARTICLE,XXZLS.CLBH,');
         sql.add('       cgzl_color2.A4Comfirm ,cgzl_color2.DateA4Comfirm,XXZLS.XieXing,XXZLS.SheHao,CLZL.ywpm  ');
         sql.add('       ,ZSZL.ZSYWJC');
         sql.add('From FC_import');
         sql.add('left join XXZL on FC_import.ARTICLE = left(XXZL.article,charindex(''/'',XXZL.article+''/'')-1)  and XXZL.KFCQ=''JNG''');
         sql.add('left join XXZLS on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao');
         sql.add('left join CLZL  on CLZl.CLDH=XXZLS.CLBH ');
         sql.add('left join cgzl_color2 on cgzl_color2.clbh=XXZLS.CLBH');
         sql.add('left JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
         sql.add('where  FC_import.Year= '''+Copy(edit25.text,1,4)+'''');
         if (Copy(edit25.text,5,1)='0') and (Length(edit25.text)>4) then
            sql.add('and FC_import.Month='''+Copy(edit25.text,6,1)+'''')
         else if (Length(edit25.text)>4)  then
            sql.add('and FC_import.Month='''+Copy(edit25.text,5,2)+'''');
         if edit10.Text<>'' then
            sql.add('   and DEVCODE like ''%'+edit10.text+'%''' );
         if edit11.Text<>'' then
            sql.add('   and FC_import.ARTICLE like ''%'+edit11.text+'%''' );
         if edit21.Text<>'' then
            sql.add('   and CLZL.ywpm like ''%'+edit21.text+'%''' );
         if edit23.Text<>'' then
            sql.add('   and ZSZL.ZSYWJC like ''%'+edit23.text+'%''' );
         if edit24.Text<>'' then
            sql.add('   and XXZLS.CLBH like ''%'+edit24.text+'%''' );
         sql.add(' and XXZL.XieXing is not null');
         sql.add('group by FC_import.DEVCODE,FC_import.ARTICLE,XXZLS.CLBH,cgzl_color2.A4Comfirm ,cgzl_color2.DateA4Comfirm,');
         sql.add('    XXZLS.XieXing,XXZLS.SheHao,CLZL.ywpm,ZSZL.ZSYWJC');
      end
      else
      begin
         sql.add('select Max(DDZl.BUYNO) as BUYNO,Max(DDZl.DDBH) as DDBh,KFXXZL.DEVCODE,DDZl.ARTICLE,XXZLS.CLBH,');
         sql.add('       cgzl_color2.A4Comfirm ,cgzl_color2.DateA4Comfirm,XXZLS.XieXing,XXZLS.SheHao,CLZL.ywpm  ');
         sql.add('       ,ZSZL.ZSYWJC');
         sql.add('From DDZl');
         sql.add('left join XXZLS on DDZl.XieXing=XXZLS.XieXing and DDZl.SheHao=XXZLS.SheHao');
         sql.add('left join KFXXZL on DDZl.XieXing=KFXXZL.XieXing and DDZl.SheHao=KFXXZL.SheHao ');
         sql.add('left join CLZL  on CLZl.CLDH=XXZLS.CLBH ');
         sql.add('left join cgzl_color2 on cgzl_color2.clbh=XXZLS.CLBH');
         sql.add('left JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
         sql.add('where  DDZL.BUYNO like '''+edit25.text+'%'' and DDZL.DDLB=''N''');
         if edit10.Text<>'' then
            sql.add('   and KFXXZL.DEVCODE like ''%'+edit10.text+'%''' );
         if edit11.Text<>'' then
            sql.add('   and DDZl.ARTICLE like ''%'+edit11.text+'%''' );
         if edit21.Text<>'' then
            sql.add('   and CLZL.ywpm like ''%'+edit21.text+'%''' );
         if edit23.Text<>'' then
            sql.add('   and ZSZL.ZSYWJC like ''%'+edit23.text+'%''' );
         if edit24.Text<>'' then
            sql.add('   and XXZLS.CLBH like ''%'+edit24.text+'%''' );
         //sql.add('and cgzl_color2.A4Comfirm is not null');
         sql.add('group by DEVCODE,DDZl.ARTICLE,XXZLS.CLBH,cgzl_color2.A4Comfirm ,cgzl_color2.DateA4Comfirm,');
         sql.add('    XXZLS.XieXing,XXZLS.SheHao,CLZL.ywpm,ZSZL.ZSYWJC');
      end;
      if CheckBox9.Checked =true then
            showmessage(SQL.Text);
         active:=true;
      end;
      //Button2.Click;//XXZLS.Active:=true;
   end;

end;

procedure TColorSwatchCardTracking.Button10Click(Sender: TObject);
var  i:integer;
begin
if Query4.Active=true then
  begin
    Query4.First;
    showmessage(inttostr(Query5.RecordCount));
    for i:=1 to  Query4.RecordCount do
    begin
       Button12.Click;
       Button13.Click;
       //SaveBtn(XXZLS,Cancel1,Save1,true);
       Label17.Caption:=inttostr(i)+'/'+TotalSRs;
       Query4.next;
    end;
  end;
end;

procedure TColorSwatchCardTracking.Button12Click(Sender: TObject);
var DateA4Comfirm,A4Comfirm,CLBH_CFM,segment,QQ,Part_QQ,sr:string;
    i,j:integer;
    CostingSize:Double;
    Gender:char;
begin
    QQ:='';
    Part_QQ:='';
    DateA4Comfirm:='';
    A4Comfirm:='';
    CLBH_CFM:='';
    Query5.first;
    Query5.requestlive:=true;
    Query5.cachedupdates:=true;
    Query5.Edit;
    for i:=1 to Query5.RecordCount do
    begin
      if NOT((Query5.FieldByName('CCQQ').IsNull) or (Query5.FieldByName('CCQQ').AsString='')) then
      if((Part_QQ='') or (QQ=Query5.fieldbyname('CCQQ').Value)) then
      begin
        Part_QQ:=Query5.fieldbyname('YWSM').AsString;
        QQ:=Query5.fieldbyname('CCQQ').Value;
        CLBH_CFM:='';
        //showmessage('第一次找到'+Part_QQ+';CCQQ:'+QQ);
        for j:=0 to  Query5.RecordCount do
        begin
          //showmessage('第'+inttostr(j));
          //沒找到分段材料
          if (Query5.FieldByName('CCQQ').IsNull) or (Query5.FieldByName('CCQQ').AsString='')
              or  ((Part_QQ<>Query5.FieldByName('YWSM').AsString) and (QQ=Query5.fieldbyname('CCQQ').Value)) then//
              begin
              //無法找到
              //showmessage('Cant not find A4Confirm!');
              DateA4Comfirm:='';
              A4Comfirm:='';
              Query5.moveby(-j);  
              break;
              end
          else if NOT((Query5.FieldByName('A4Comfirm').IsNull) or (Query5.FieldByName('A4Comfirm').AsString='')) then
            begin 
              A4Comfirm:=Query5.fieldbyname('A4Comfirm').Value;
              if NOT((Query5.FieldByName('DateA4Comfirm').IsNull) or (Query5.FieldByName('DateA4Comfirm').AsString='')) then
                DateA4Comfirm:=Query5.fieldbyname('DateA4Comfirm').Value;
              if NOT((Query5.FieldByName('A4Comfirm').IsNull) or (Query5.FieldByName('A4Comfirm').AsString='')) then
                CLBH_CFM:=Query5.fieldbyname('CLBH_CFM').Value
              else
                CLBH_CFM:=Query5.fieldbyname('CLBH').Value;
            //showmessage('A4Comfirm CLBH'+Query5.fieldbyname('CLBH').Value+';CLBH_CFM:'+CLBH_CFM);
            Query5.moveby(-j);
            break;
            end
          else if NOT((Query5.FieldByName('CLBH_CFM').IsNull) or (Query5.FieldByName('CLBH_CFM').AsString='')) then
              CLBH_CFM:=Query5.fieldbyname('CLBH_CFM').Value;
          Query5.next;
        end;
      end;

      if NOT((Query5.FieldByName('CCQQ').IsNull) or (Query5.FieldByName('CCQQ').AsString='')) then
          if ((Query5.FieldByName('CLBH_CFM').IsNull) or (Query5.FieldByName('CLBH_CFM').AsString=''))
                  and (CLBH_CFM<>'') then
        begin
            Query5.Edit;
            if DateA4Comfirm<>'' then
              Query5.fieldbyname('DateA4Comfirm').Value:=DateA4Comfirm;
            if A4Comfirm<>'' then
              Query5.fieldbyname('A4Comfirm').Value:=A4Comfirm;
            Query5.fieldbyname('CLBH_CFM').Value:=CLBH_CFM;
            //showmessage('fill in CLBH_CFM'+CLBH_CFM);     

        end;
    Query5.next;
    end;    //for
    Button13.Enabled:=True;



end;

procedure TColorSwatchCardTracking.Button13Click(Sender: TObject);      
var
 i:integer;
begin
  Button14.Click;
  if query5.Active=true then
  try
    query5.cachedupdates:=true;   
    query5.requestlive:=true;
    query5.first;
    for i:=1 to query5.RecordCount do
    begin
            if (query5.fieldbyname('CLBH').AsString<>query5.fieldbyname('CLBH_CFM').AsString)
              and NOT((query5.fieldbyname('CLBH_CFM').AsString='') or (query5.fieldbyname('CLBH_CFM').isnull))then
            begin
              if  query5.FieldByName('CLBH_CFM_O').isnull then
              begin
                  with timeqry do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert cgzl_color2_grading(CLBH,CLBH_CFM) values(');
                    sql.Add(' '''+query5.fieldbyname('CLBH').AsString+'''');
                    sql.Add(', '''+query5.fieldbyname('CLBH_CFM').AsString+'''');
                    sql.Add(')');
                    //showmessage(SQL.TEXT);
                    execsql;
                  end;
                  Query5.Edit;
                  Query5.fieldbyname('CLBH_CFM_O').AsString:=query5.fieldbyname('CLBH_CFM').AsString;
              end;
              if  NOT((query5.fieldbyname('CLBH_CFM').AsString='') and (query5.fieldbyname('CLBH_CFM').isnull))
                and (query5.fieldbyname('CLBH_CFM_O').Value<>query5.fieldbyname('CLBH_CFM_O').OldValue) then
              begin
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('Update cgzl_color2_grading');
                  sql.Add('Set CLBH_CFM='''+query5.fieldbyname('CLBH_CFM').AsString+'''');
                  sql.Add('where CLBH='''+query5.fieldbyname('CLBH').AsString+'''');
                    //showmessage(SQL.TEXT);
                  execsql;
                end;
              end;    
          end;

      query5.next;
    end;
    Button13.Enabled:=false;
    //bb4.Enabled:=true;
    //bb5.Enabled:=false;
    //bb6.Enabled:=false;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TColorSwatchCardTracking.Button14Click(Sender: TObject);
var i:integer;
    Duplicate,dellist:string;
begin
Duplicate:='';
Query5.first;
for i:=1 to Query5.RecordCount do
begin
  if Pos(Query5.fieldbyname('CLBH').AsString,Duplicate)>0 then
  begin
    //showmessage('now CLBH:'+Query.fieldbyname('CLBH').AsString+'list'+Duplicate);
    Query5.Delete;
  end
  else
  begin
    Duplicate:=Duplicate+Query5.fieldbyname('CLBH').AsString+'/';
    Query5.next;
  end;
end;
end;

procedure TColorSwatchCardTracking.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
  var
  expiryDate : TDateTime;
begin
  if (Query5.FieldByName('CLBH').AsString<>Query5.FieldByName('CLBH_CFM').AsString)and not(Query5.FieldByName('CLBH_CFM').IsNull)  then
  begin
    DBGridEh5.canvas.font.color:=clFuchsia;
  end;
  if Not (Query5.FieldByName('DateA4Comfirm').IsNull) then
  begin
  expiryDate:=IncYear(StrToDate(Query5.FieldByName('DateA4Comfirm').AsString), 2);
  if expiryDate<Date  then
    DBGridEh5.canvas.font.color:=clred;
  end;
end;



procedure TColorSwatchCardTracking.BitBtn1Click(Sender: TObject);
begin
  if (edit15.text='') and  (edit14.text='') and (edit13.text='') and (edit12.text='') and (edit16.text='') and Not(Checkbox3.checked) and Not(Checkbox4.checked) then
    begin
        showmessage('Enter something');
        exit;
    end;
  bbt6.Enabled:=true;
  with Query6 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select a.CLBH,A4Comfirm,');
     sql.add('Max(case when MAX_PUR_SEASON is not null then MAX_PUR_SEASON ');
     sql.add('when CGZL.SEASON is not null then CGZL.SEASON ');
     sql.add('when DevSeason is not null then DevSeason ');
     sql.add('else A4Comfirm_Season end) as Season');
     sql.add(',YWPM,a.ZSYWJC,vendor,PRO_MTL_TEAM,PRO_QC_TEAM,Remark,SignedDate,ReceivedDate,Receiver from(');
     sql.add('select cgzl_color2.CLBH,A4Comfirm,');
     sql.add('Max(CGZL.SEASON) as MAX_PUR_SEASON,');
     sql.add('SUBSTRING(A4Comfirm,charindex(''-'',A4Comfirm)+charindex(''-'',SUBSTRING(A4Comfirm,charindex(''-'',A4Comfirm)+1,999 ))+1,3) as A4Comfirm_Season,');
     sql.add('Max(kfxxzl.jijie) as DevSeason');
     sql.add(',CLZL.ywpm,');

     sql.add('Max(case when ZSZL.ZSYWJC is null then ZSZL2.ZSYWJC else ZSZL.ZSYWJC end) as ZSYWJC,');
     sql.add('Max(case when cgzl_color2.Vendor is null then ''4 SETS'' else cgzl_color2.Vendor end) as Vendor,');
     sql.add('Max(case when cgzl_color2.PRO_MTL_TEAM is null then ''1 SET '' else cgzl_color2.PRO_MTL_TEAM end) as PRO_MTL_TEAM,');
     sql.add('Max(case when cgzl_color2.PRO_QC_TEAM is null then ''1 SET '' else cgzl_color2.PRO_QC_TEAM end) as PRO_QC_TEAM,');
     sql.add('Max(case when cgzl_color2.color2Remark is null then ''                            '' else cgzl_color2.color2Remark end) as Remark,');
     sql.add('SignedDate,ReceivedDate,');
     sql.add('Max(case when cgzl_color2.Receiver_SendingList is null then ''          '' else cgzl_color2.Receiver_SendingList end) as Receiver');

     sql.add('From CLZL');
     sql.add('    left join ZSZL  on CLZL.ZSDH=ZSZL.ZSDH');
     sql.add('    left join CGZLSS  on CLZL.cldh=CGZLSS.CLBH');
     sql.add('    left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX=''6'' and CGZL.GSBH= '''+main.Edit2.Text+'''');
     sql.add('    left join ZSZL ZSZL2  on CGZL.ZSBH=ZSZL2.ZSDH');
     sql.add('    left join ypzls on ypzls.clbh=CLZL.cldh ');
     sql.add('    left join ypzl on ypzls.ypdh=ypzl.ypdh');
     sql.add('    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh');
     sql.add('where 1=1');
     if edit15.text<>'' then
        sql.add(' and A4Comfirm like '''+'%'+edit15.text+'%'+''' ');
     if edit12.text<>'' then
        sql.add(' and CLZL.ywpm like '''+'%'+edit12.text+'%'+''' ');
     if edit13.text<>'' then
        sql.add(' and (ZSZL.ZSYWJC like '''+'%'+edit13.text+'%'+'''  or ZSZL2.ZSYWJC like '''+'%'+edit13.text+'%'+''')');
     if edit14.text<>'' then
        sql.add(' and kfxxzl.jijie like '''+'%'+edit14.text+'%'+''' ');
     if edit16.text<>'' then
        sql.add(' and cgzl_color2.CLBH like '''+'%'+edit16.text+'%'+''' ');
     if Checkbox3.checked then
     begin
       sql.add('  and convert(smalldatetime,convert(varchar,cgzl_color2.SignedDate,111))  between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DTP5.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP6.Date) +'''');
     end;
     if Checkbox4.checked then
     begin
       sql.add('  and convert(smalldatetime,convert(varchar,cgzl_color2.ReceivedDate,111))  between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DTP7.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date) +'''');
     end;
     sql.add('group by cgzl_color2.CLBH,A4Comfirm,A4Comfirm,CLZL.ywpm,SignedDate,ReceivedDate');
     sql.add(') a');
     sql.add('left join CLZL_LS on CLZL_LS.JHDH=a.CLBH');
     sql.add('left join CGZLSS  on CLZL_LS.CLDH=CGZLSS.CLBH');
     sql.add('left join CGZL  on CGZl.CGNO=CGZLSs.CGNO and CGZL.CGLX=''6'' and CGZL.GSBH= ''CDC''');
     sql.add('group by a.CLBH,a.A4Comfirm,a.A4Comfirm,a.ywpm,a.SignedDate,a.ReceivedDate,a.ZSYWJC,a.Vendor,a.PRO_MTL_TEAM,a.PRO_QC_TEAM,a.Remark,a.Receiver');
     sql.add('order by a.CLBH');

     if CheckBox9.Checked =true then
        showmessage(sql.text);
     active:=true;
     requestlive:=true;
     cachedupdates:=true;
     edit;
  end;
end;

procedure TColorSwatchCardTracking.bbt6Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
     x:String;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  Query6.active  then
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
        eclApp.Cells(1,1):='CFM SWATCH SENDING LIST TRACKING';
        eclApp.Cells(2,1):='ITEM';
        for   i:=0   to   Query6.fieldcount-1   do
        begin
            x:=Query6.fields[i].FieldName;
            if x = 'ZSYWJC' then
              eclApp.Cells(2,i+2):= 'Vendor'
            else if x = 'ywpm' then
              eclApp.Cells(2,i+2):= 'Material Name'
            else    
              eclApp.Cells(2,i+2):= x;
        end;

        Query6.First;

        j:=3;
        while   not   Query6.Eof   do
        begin
          eclApp.Cells(j,1):=j;
          eclApp.ActiveSheet.Rows [j].RowHeight := 50;
          for   i:=0   to  Query6.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=Query6.Fields[i].Value;
          end;
        Query6.Next;
        inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.ActiveSheet.Rows [1].Font.Size:=22;
       eclApp.ActiveSheet.Rows [1].RowHeight:=48;
       eclApp.ActiveSheet.Rows [1].Font.Bold := True;   
       eclApp.ActiveSheet.Rows [2].RowHeight := 30;
       eclApp.ActiveSheet.Rows [2].Font.Bold := True;
       eclApp.ActiveSheet.Columns[1].ColumnWidth := 6;
       eclApp.ActiveSheet.Columns[1].HorizontalAlignment:=-4108;    //置中
       eclApp.ActiveSheet.Rows[2].WrapText := True;                 //換行
       eclApp.ActiveSheet.Rows[2].HorizontalAlignment:=-4108;
       eclApp.ActiveSheet.Columns[4].HorizontalAlignment:=-4108;
       eclApp.ActiveSheet.Columns[7].HorizontalAlignment:=-4108;
       eclApp.ActiveSheet.Columns[8].HorizontalAlignment:=-4108; 
       eclApp.ActiveSheet.Columns[9].HorizontalAlignment:=-4108;
       eclApp.ActiveSheet.Columns[2].ColumnWidth := 11;
       eclApp.ActiveSheet.Columns[3].ColumnWidth := 29;
       eclApp.ActiveSheet.Columns[4].ColumnWidth := 10;
       eclApp.ActiveSheet.Columns[5].ColumnWidth := 25;
       eclApp.ActiveSheet.Columns[5].WrapText := True;
       eclApp.ActiveSheet.Columns[6].WrapText := True;
       eclApp.ActiveSheet.Columns[6].ColumnWidth := 70;
       eclApp.ActiveSheet.Columns[7].ColumnWidth := 10;
       eclApp.ActiveSheet.Columns[8].ColumnWidth := 10;
       eclApp.ActiveSheet.Columns[9].ColumnWidth := 10;
       eclApp.ActiveSheet.Columns[10].ColumnWidth := 10;
       eclApp.ActiveSheet.Columns[11].ColumnWidth := 20;
       eclApp.ActiveSheet.Columns[12].ColumnWidth := 13;
       eclApp.ActiveSheet.Columns[13].ColumnWidth := 13;
       eclApp.ActiveSheet.Columns[14].ColumnWidth := 13;
       eclApp.ActiveSheet.Rows[2].Interior.ColorIndex := 6;
       eclApp.ActiveSheet.Rows[2].Interior.ColorIndex := 6;
       eclApp.ActiveSheet.Rows[2].VerticalAlignment:=-4108;
       eclApp.ActiveSheet.Range['A1','M'+inttostr(j)].Borders.Linestyle := 1;
       //eclApp.ActiveSheet.Range['A1','L1'].Merge;
        eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[1, 12]].Merge;
        eclApp.ActiveSheet.PageSetup.Orientation := 2;
        //eclApp.ActiveSheet.PageSetup.PrintArea := '$A$1:$L$20';
        eclApp.ActiveSheet.PageSetup.Zoom := false;
        //eclApp.ActiveSheet.PageSetup.LeftMargin := 1/0.035;
        //eclApp.ActiveSheet.PageSetup.RightMargin := 1/0.035;
        eclApp.ActiveSheet.PageSetup.LeftMargin := false;
        eclApp.ActiveSheet.PageSetup.RightMargin := false;
        eclApp.ActiveSheet.PageSetup.TopMargin := false;
        eclApp.ActiveSheet.PageSetup.BottomMargin := false;
        eclApp.ActiveSheet.PageSetup.FitToPagesTall := false;
        eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1;
        //eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1;
       //eclApp.ActiveSheet.Range['A1:L30'].HorizontalAlignment:=-4108;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TColorSwatchCardTracking.BitBtn2Click(Sender: TObject);
var i:integer;
begin
    if Query6.Active=false then
      exit;

    Query6.First;
    for i:=1 to Query6.RecordCount do
    begin
      case Query6.updatestatus of
          usmodified:
          UpdateSQL2.apply(ukmodify);
        end;
      Query6.next;
    end;

end;


procedure TColorSwatchCardTracking.BitBtn3Click(Sender: TObject);
begin
  if (edit17.text='') and  (edit18.text='')  and (edit20.text='') and (edit22.text='') and Not(Checkbox5.checked) then
    begin
        showmessage('Enter something');
        exit;
    end;
  bbt6.Enabled:=true;
  with Query7 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select SUBSTRING(CLZL.ywpm,1,4)as ywpm4,SUBSTRING(CLZL.ywpm,5,200)as ywpm,ZSZL.ZSYWJC,CGZL_Color2.CLBH,');
     //sql.add('CGZL_Color2.A4Comfirm,TrackingA4Comfirm,DateA4Comfirm,CLLB from CGZL_Color2');
     sql.add('case when CGZL_Color2.A4Comfirm is not null then CGZL_Color2.A4Comfirm else '' '' end as A4Comfirm,');
     sql.add('case when CGZL_Color2.TrackingA4Comfirm is not null then CGZL_Color2.TrackingA4Comfirm else '' '' end as TrackingA4Comfirm,');
     sql.add('case when CGZL_Color2.DateA4Comfirm is not null then CGZL_Color2.DateA4Comfirm else '' '' end as DateA4Comfirm,CLLB from CGZL_Color2');
     sql.add('left join CLZL on cgzl_color2.CLBH=CLZL.cldh');
     sql.add('left join ZSZL  on CLZL.ZSDH=ZSZL.ZSDH');
     sql.add('where 1=1');
     if edit20.text<>'' then
        sql.add(' and A4Comfirm like '''+'%'+edit20.text+'%'+''' ');
     if edit17.text<>'' then
        sql.add(' and CLZL.ywpm like '''+'%'+edit17.text+'%'+''' ');
     if edit18.text<>'' then
        sql.add(' and ZSZL.ZSYWJC like '''+'%'+edit18.text+'%'+''' ');
     if edit22.text<>'' then
        sql.add(' and cgzl_color2.CLBH like '''+'%'+edit22.text+'%'+''' ');
     if Checkbox5.checked then
     begin
       sql.add('  and convert(smalldatetime,convert(varchar,cgzl_color2.SignedDate,111))  between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker2.Date) +'''');
     end;

     if CheckBox9.Checked =true then
        showmessage(sql.text);
     active:=true;
     //requestlive:=true;
     //cachedupdates:=true;
     //edit;
  end;
  if(Query7.RecordCount>0) then
    Query8.active:=true;
end;

procedure TColorSwatchCardTracking.BitBtn5Click(Sender: TObject);
var i,j:integer;
begin
    if Query8.Active=false then
      exit;
     Query8.requestlive:=true;
     Query8.cachedupdates:=true;
    //Query7.First;
    //for i:=1 to Query7.RecordCount do

    begin
      //case Query6.updatestatus of
      //usmodified:
      for j:=1 to Query8.RecordCount do
        begin
            if  (query8.FieldByName('cgzl_color2clbh').isnull)  then
              begin
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color2 (CLBH) values(');
                  sql.Add(' '''+query8.fieldbyname('CLDH').AsString+'''');
                  sql.Add(')');
                  //showmessage(SQL.text);
                  execsql;
                end;
              end;
          UpdateSQL3.apply(ukInsert);
          Query8.next;
        end;
      //else ;
      Query7.next;
    //end;
    end;
end;

procedure TColorSwatchCardTracking.BitBtn4Click(Sender: TObject);
var i,j:integer;
begin
    if Query8.Active=false then
      exit;
     Query8.requestlive:=true;
     Query8.cachedupdates:=true;
    //Query7.First;
    for i:=1 to Query7.RecordCount do    
    begin
      //case Query6.updatestatus of
      //usmodified:
      for j:=1 to Query8.RecordCount do
        begin                   
            if  (query8.FieldByName('cgzl_color2clbh').isnull)  then
              begin
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color2 (CLBH) values(');
                  sql.Add(' '''+query8.fieldbyname('CLDH').AsString+'''');
                  sql.Add(')');
                  //showmessage(SQL.text);
                  execsql;
                end;
              end;
          UpdateSQL3.apply(ukInsert);
          Query8.next;
        end;
      //else ;
      Query7.next;
    //end;
    end;

end;

procedure TColorSwatchCardTracking.Button15Click(Sender: TObject);
begin
  AutoSaveA4CFM:=TAutoSaveA4CFM.Create(self);
  AutoSaveA4CFM.Edit1.text:='V90I006357';
  //AutoSaveA4CFM.bb1.Click;
  //AutoSaveA4CFM.bb2.Click;
  //AutoSaveA4CFM.bb1.Click;

  AutoSaveA4CFM.ShowModal();
end;

procedure TColorSwatchCardTracking.Button16Click(Sender: TObject);
begin
        if query1.Active=false then
        begin
          showmessage('Do query first');
          exit;
        end;
      if query1.RecordCount=0 then
        begin
          showmessage('At least query one item');
          exit;
        end;
       if  query1.FieldByName('A4Comfirm').isnull then
        begin
          showmessage('A4Comfirm can not be null');
          exit;
        end;


          AutoSaveA4CFM:=TAutoSaveA4CFM.Create(self);
          AutoSaveA4CFM.Edit1.text:=query1.fieldbyname('CLBH').OldValue;
          AutoSaveA4CFM.bb1.Click;
          AutoSaveA4CFM.bb2.Click;
          AutoSaveA4CFM.bb1.Click;
          //AutoSaveA4CFM.bb3.Click;
          AutoSaveA4CFM.ShowModal();
end;

end.



