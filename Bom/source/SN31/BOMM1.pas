unit BOMM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, OleServer,comobj ,
  ExtCtrls, DBCtrls, GridsEh, DBGridEh, Menus, IniFiles;

type
  TBOMM = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    XXZL: TQuery;
    DS1: TDataSource;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLARTICLE: TStringField;
    XXZLBZCC: TStringField;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBGrid2: TDBGridEh;
    XXZLS: TQuery;
    DS2: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid3: TDBGridEh;
    DBGrid4: TDBGridEh;
    xtbwyl1: TQuery;
    DS3: TDataSource;
    xtbwyl: TQuery;
    DS4: TDataSource;
    XXCC: TQuery;
    Excel: TButton;
    Print: TButton;
    Print2: TButton;
    Excel2: TButton;
    XXZLKFJC: TStringField;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    XXZLIMGName: TStringField;
    ShoeImage: TImage;
    shoePicpopo: TPopupMenu;
    Saveas1: TMenuItem;
    SaveDialog: TSaveDialog;
    Label18: TLabel;
    SeasonEdit: TEdit;
    XXZLJiJie: TStringField;
    ChildMatCK: TCheckBox;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSDType: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSLYCC: TStringField;
    XXZLSBZ: TStringField;
    XXZLSBWLB: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSLOSS: TFloatField;
    XXZLSCLSL: TFloatField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSCLZMLB: TStringField;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit6: TEdit;
    XXZLDAOMH: TStringField;
    XXZLSuserdate: TDateTimeField;
    XXZLSCLBH_Log: TStringField;
    XXZLSCLSL_Log: TStringField;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    DEdit: TEdit;
    Label22: TLabel;
    BuyNoEdit: TEdit;
    XXZLDEVCODE: TStringField;
    XXZLXTMH: TStringField;
    XXZLDDMH: TStringField;
    XXZLMDMH: TStringField;
    XXZLLOGO: TStringField;
    XXZLDevType: TStringField;
    XXZLCYWSM: TStringField;
    XXZLCZWSM: TStringField;
    XXZLLYWSM: TStringField;
    XXZLLZWSM: TStringField;
    XXZLGender: TStringField;
    Label23: TLabel;
    SREdit: TEdit;
    BitBtn1: TBitBtn;
    part: TQuery;
    XXZLS_1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField1: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    DS5: TDataSource;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    Label29: TLabel;
    Button2: TButton;
    Edit12: TEdit;
    DBGridEh1: TDBGridEh;
    Bom_Season: TQuery;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    DateTimeField2: TDateTimeField;
    DS6: TDataSource;
    cb1: TComboBox;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    XXZL_CHECK: TQuery;
    UpdateSQL1: TUpdateSQL;
    XXZL_CHECKXieXing: TStringField;
    XXZL_CHECKSheHao: TStringField;
    XXZL_CHECKARTICLE: TStringField;
    XXZL_CHECKBOM_Check: TBooleanField;
    XXZL_CHECKBOMDATE: TDateTimeField;
    XXZL_CHECKBOM_USERID: TStringField;
    XXZL_CHECKDEVELOP_Check: TBooleanField;
    XXZL_CHECKDEVELOPDATE: TDateTimeField;
    XXZL_CHECKDEVELOP_USERID: TStringField;
    XXZL_CHECKTECH_Check: TBooleanField;
    XXZL_CHECKTECHDATE: TDateTimeField;
    XXZL_CHECKTECH_USERID: TStringField;
    XXZL_CHECKFD: TStringField;
    XXZL_CHECKYN: TStringField;
    Panel7: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    XXZLFD: TStringField;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    XXZLBOMDATE: TDateTimeField;
    XXZLDEVELOPDATE: TDateTimeField;
    XXZLTECHDATE: TDateTimeField;
    XXZLBOM_Check: TBooleanField;
    XXZLDEVELOP_Check: TBooleanField;
    XXZLTECH_Check: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XXCCAfterOpen(DataSet: TDataSet);
    procedure XXZLSAfterOpen(DataSet: TDataSet);
    procedure ExcelClick(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXZLAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Saveas1Click(Sender: TObject);
    procedure ChildMatCKClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure XXZLAfterOpen(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    IsExport:boolean;
    IsAllowUserID:Boolean;
    AppDir:String;
   { Private declarations }
    procedure DetectMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  public
    ShoePicPath:String;
    BOM_N31_KFCQ:String;
    { Public declarations }
    procedure ReadIni();
  end;

var
  BOMM: TBOMM;
  NDate:TDate;

implementation
  uses main1,ShowShoePic1, BOMM_Print1, FunUnit;
{$R *.dfm}

procedure TBOMM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBOMM.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
    UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  UserIDList:='33101,53282';
  ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ShoePicPath:=MyIni.ReadString('ShoePic','Bom_N31_shoePic','');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
      UserIDList:=MyIni.ReadString('ERP','BOM_N31_CheckUserID','33101,53282');
    finally
      MyIni.Free;
    end;
  end;
  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
end;

procedure TBOMM.Button1Click(Sender: TObject);
begin
   if (SeasonEdit.text='') and (edit3.text='')and (Edit4.Text='') and (Edit1.Text='') and (BuyNoEdit.Text='') and (SREdit.Text='') then
   begin
     showmessage('Please input season or Article or Customer keypoint ');
   end else
   begin
     XXZLS.Active:=false;
     with XXZL do
     begin
       active:=false;
       sql.clear;
       sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XTMH,XXZL.DDMH,XXZL.MDMH,XXZL.LOGO,KFXXZL.DevType,CLLBZL.YWSM as CYWSM,CLLBZL.ZWSM as CZWSM,LBZLS.YWSM as LYWSM,LBZLS.ZWSM as LZWSM,');
       sql.add('XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.Shehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.DAOMH,KFXXZL.DEVCODE,XXZL.Gender,KFXXZL.FD, ');
       sql.add('BOM_Check,BOMDATE,DEVELOP_Check,DEVELOPDATE,TECH_Check,TECHDATE from XXZL ');
       sql.add('left join xxzl_Check on xxzl_Check.SheHao=XXZL.SheHao and  xxzl_Check.XieXing=XXZL.XieXing and xxzl_Check.Article=xxzl.Article');
       sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
       sql.add('Left join LBZLS on LBZLS.LBDH=XXZL.XieGN and LBZLS.LB=''03''');
       sql.add('Left join CLLBZL on CLLBZL.CLLB=XXZL.CLID');
       sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
       sql.Add('left join (select xiexing,shehao from xtbwyl1  group by xiexing,shehao) as xt');
       sql.add('  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao ' );
       sql.add('where XXZL.XieXing like '''+edit1.Text+'%''');
       sql.add(' and XXZL.SheHao like '''+edit2.Text+'%''');
       sql.add(' and XXZL.ARTICLE like '''+edit3.Text+'%''');
       sql.add(' and KFZL.KFJC like '''+edit4.Text+'%''');
       sql.add(' and XXZL.XieMing like '''+edit5.Text+'%''');
       if IsAllowUserID=true then
       begin
         sql.add(' and XXZL.KFCQ='''+cb1.Text+''' ');
       end else
       begin
        if BOM_N31_KFCQ<>'' then
          sql.add(' and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''' )');
       end;
       if SREdit.Text<>'' then
       sql.add('and KFXXZL.DevCode like '''+SREdit.Text+'%'' ');
       if BuyNoEdit.Text<>'' then
       sql.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
       if Edit6.Text<>'' then
         sql.add('  and XXZL.DAOMH like ''%'+Edit6.Text+'%'' ');
       if SeasonEdit.Text<>'' then
         sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
       if CK1.Checked then
       begin
         sql.add(' and XXZL.YN='''+'1''');
       end;
       if CK2.Checked then
       begin
         sql.add(' and exists ( select XieXing,SheHao from XTBWYL1_Log where XTBWYL1_Log.XieXing=XXZL.XieXing and XTBWYL1_Log.SheHao=XXZL.SheHao   and Log_DateTime>=GetDate()-'+DEdit.Text+'  Group by XieXing,SheHao ) ');
       end;
       sql.add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');
       //funcObj.WriteErrorLog(sql.Text);
//       showmessage(SQL.Text);
       active:=true;
     end;
     //
     with XXZLS do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,''Assembly'' as DType,');
       SQL.Add('       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
       SQL.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,');
       SQL.Add('       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate');
       SQL.Add('       ,(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log''');
       SQL.Add('       ,(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log''');
       SQL.Add('FROM XXZLS');
       SQL.Add('LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log');
       SQL.Add('            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheHao=:SheHao and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
       SQL.Add('           Group by XieXing,SheHao,BWBH');
       SQL.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH');
       SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
       SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
       SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
       SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
       SQL.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao');
       SQL.Add('ORDER BY XXZLS.XH');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     BBT5.Enabled:=true;
     BBT6.Enabled:=true;
     panel2.Visible:=false;
   end;
end;

procedure TBOMM.BB7Click(Sender: TObject);
begin
close;
end;

procedure TBOMM.BB1Click(Sender: TObject);
begin
PC1.ActivePage:=TS1;
panel2.Visible:=true;
edit1.SetFocus;
end;

procedure TBOMM.DBGrid1DblClick(Sender: TObject);
begin
if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TBOMM.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TBOMM.XXZLSAfterOpen(DataSet: TDataSet);
begin

  if XXZLS.RecordCount <> 0 then
  begin
    with XXCC do
    begin
      Active:=false;
      sql.Clear;
      sql.add('select distinct XTCC from XTBWYL  ');
      sql.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').AsString+'''');
      sql.add('and SheHao='+''''+XXZL.fieldbyname('SheHao').AsString+''''+'  order by XTCC ');
      active:=true;
    end;
  end;
end;


procedure TBOMM.XXCCAfterOpen(DataSet: TDataSet);
var i:integer;
begin

  if XXCC.RecordCount <> 0 then   // 沒有電腦用量
  begin

    //實際用量
    XXCC.First;
    with  XTBWYL1 do
    begin
      active:=false;
      sql.clear;
      sql.add('select XTBWYL1.BWBH,BWZL.YWSM');
      while not XXCC.eof do
      begin
          sql.add(',max(case when XTBWYL1.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+''' ');
          sql.add(' then XTBWYL1.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+''' ');
          //日修改顏色提示
          //sql.add(',max(case when XTBWYL1.CLSL<>XTBWYL1_Log.CLSL then XTBWYL1_Log.Log_DateTime end) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          sql.add(',max(IsNull(XTBWYL1_Log.Log_DateTime,XXZLS_Log.Log_DateTime)) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          //
          XXCC.Next;
      end;
      sql.add('from XTBWYL1 ');
      sql.add('left join XTBWYL1_Log on XTBWYL1.XieXing=XTBWYL1_Log.XieXing and XTBWYL1.SheHao=XTBWYL1_Log.SheHao and XTBWYL1.BWBH=XTBWYL1_Log.BWBH and XTBWYL1.XTCC=XTBWYL1_Log.XTCC and XTBWYL1_Log.Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.add('left join xxzls_log on xxzls_log.XieXing=XTBWYL1.XieXing and xxzls_log.SheHao=XTBWYL1.SheHao and xxzls_log.BWBH=XTBWYL1.BWBH  and xxzls_log.Log_DateTime>=GetDate()-'+DEdit.Text+'  ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL1.BWBH  ');
      sql.add('where XTBWYL1.XieXing=:XieXing and XTBWYL1.SheHao=:SheHao');
      sql.add('group by XTBWYL1.BWBH,XTBWYL1.BWBH,BWZL.YWSM');
      sql.add('order by XTBWYL1.BWBH');
      active:=true;
    end;

    DBGrid3.columns[0].width:=40;
    DBGrid3.columns[1].width:=140;
    for i:=2 to XTBWYL1.FieldCount-1 do
    begin
      DBGrid3.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL1.FieldCount-1 do
    begin
      if (i mod 2) = 0 then
         TFLOATField(XTBWYL1.Fields[i]).DisplayFormat:='#,##0.0000'
      else
         DBGrid3.columns[i].Visible:=false;
    end;

    //電腦用量
    XXCC.First;
    with  XTBWYL do
    begin
      active:=false;
      sql.clear;
      sql.add('select XTBWYL.BWBH,BWZL.YWSM');
      while not XXCC.eof do
      begin
          sql.add(',max(case when XTBWYL.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          sql.add(' then XTBWYL.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          //日修改顏色提示
          //sql.add(',max(case when XTBWYL.CLSL<>XTBWYL_Log.CLSL then XTBWYL_Log.Log_DateTime end) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          sql.add(',max(IsNull(XTBWYL_Log.Log_DateTime,XXZLS_Log.Log_DateTime)) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          //
          XXCC.Next;
      end;
      sql.add('from XTBWYL ');
      sql.add('left join XTBWYL_Log on XTBWYL.XieXing=XTBWYL_Log.XieXing and XTBWYL.SheHao=XTBWYL_Log.SheHao and XTBWYL.BWBH=XTBWYL_Log.BWBH and XTBWYL.XTCC=XTBWYL_Log.XTCC and XTBWYL_Log.Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.add('left join xxzls_log on xxzls_log.XieXing=XTBWYL.XieXing and xxzls_log.SheHao=XTBWYL.SheHao and xxzls_log.BWBH=XTBWYL.BWBH  and xxzls_log.Log_DateTime>=GetDate()-'+DEdit.Text+'  ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL.BWBH  ');
      sql.add('where XTBWYL.XieXing=:XieXing and XTBWYL.SheHao=:SheHao');
      sql.add('group by XTBWYL.BWBH,XTBWYL.BWBH,BWZL.YWSM');
      sql.add('order by XTBWYL.BWBH');
      active:=true;
    end;

    DBGrid4.columns[0].width:=40;
    DBGrid4.columns[1].width:=140;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      DBGrid4.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      if (i mod 2) = 0 then
         TFLOATField(XTBWYL.Fields[i]).DisplayFormat:='#,##0.0000'
      else
         DBGrid4.columns[i].Visible:=false;
    end;

  end;    //  end of if XXCC.RecordCount <> 0
end;


procedure TBOMM.ExcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,index:integer;
 begin
  if XTBWYL1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        index:=0;
        for   i:=0   to   XTBWYL1.fieldCount-1   do
        begin
          if i<2 then
          begin
           eclApp.Cells(1,index+1):=XTBWYL1.fields[i].FieldName;
           index:=index+1;
          end else if i>=2 then
             if (i mod 2) =0  then
             begin
                eclApp.Cells(1,index+1):=XTBWYL1.fields[i].FieldName;
                index:=index+1;
             end;
        end;

        XTBWYL1.First;
        j:=2;
        while   not   XTBWYL1.Eof   do
        begin
          index:=0;
          for   i:=0   to   XTBWYL1.FieldCount-1   do
          begin
            //
            if i<2 then
            begin
              eclApp.Cells(j,index+1):=XTBWYL1.Fields[i].Value;
              eclApp.Cells.Cells.item[j,index+1].font.size:='8';
              index:=index+1;
            end else if i>=2 then
               if (i mod 2) =0  then
               begin
                 eclApp.Cells(j,index+1):=XTBWYL1.Fields[i].Value;
                 eclApp.Cells.Cells.item[j,index+1].font.size:='8';
                 index:=index+1;
               end;
            //
          end;
          XTBWYL1.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TBOMM.Excel2Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j,index:integer;
begin

  if XTBWYL.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        index:=0;
        for  i:=0   to   XTBWYL.fieldCount-1   do
        begin
          if i<2 then
          begin
           eclApp.Cells(1,index+1):=XTBWYL.fields[i].FieldName;
           index:=index+1;
          end else if i>=2 then
             if (i mod 2) =0  then
             begin
                eclApp.Cells(1,index+1):=XTBWYL.fields[i].FieldName;
                index:=index+1;
             end;
        end;
        XTBWYL.First;
        j:=2;
        while   not   XTBWYL.Eof   do
        begin
           index:=0;
           for   i:=0   to   XTBWYL.FieldCount-1   do
           begin
            //
            if i<2 then
            begin
              eclApp.Cells(j,index+1):=XTBWYL.Fields[i].Value;
              eclApp.Cells.Cells.item[j,index+1].font.size:='8';
              index:=index+1;
            end else if i>=2 then
               if (i mod 2) =0  then
               begin
                 eclApp.Cells(j,index+1):=XTBWYL.Fields[i].Value;
                 eclApp.Cells.Cells.item[j,index+1].font.size:='8';
                 index:=index+1;
               end;
            //
           end;
           XTBWYL.Next;
           inc(j);
        end;
     eclapp.columns.autofit;
     eclApp.Visible:=True;
     except
        on   F:Exception   do
          showmessage(F.Message);
     end;
  end;

end;

procedure TBOMM.bbt6Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
 begin
    if PC1.ActivePageIndex=0 then
    begin
       IsExport:=true;
       XXZLS.Active:=false;
       XTBWYL.Active:=false;
       XTBWYL1.Active:=false;
       if XXZL.active  then
       begin
          try
            eclApp:=CreateOleObject('Excel.Application');
            WorkBook:=CreateOleObject('Excel.Sheet');
          except
            Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
            Exit;
          end;
          try
            WorkBook:=eclApp.workbooks.Add;
            for   i:=0   to   DBGrid1.fieldCount-1   do
            begin
                eclApp.Cells(1,i+1):=DBGrid1.fields[i].FieldName;
            end;
            XXZL.First;
            j:=2;
            while   not   XXZL.Eof   do
            begin
              for   i:=0   to   DBGrid1.FieldCount-1   do
              begin
                eclApp.Cells[j,i+1].NumberFormatLocal :='@';
                eclApp.Cells(j,i+1):=DBGrid1.Fields[i].Value;
                eclApp.Cells.Cells.item[j,i+1].font.size:='8';
              end;
              XXZL.Next;
              inc(j);
            end;
            eclapp.columns.autofit;
            eclApp.Visible:=True;
            except
              on   F:Exception   do
                showmessage(F.Message);
            end;
            IsExport:=false;
            XXZLS.Active:=true;
            XTBWYL.Active:=true;
            XTBWYL1.Active:=true;
       end;
    end;
  //
  if PC1.ActivePageIndex=1 then
  begin
   if XXZLS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XXZLS.fieldCount-1   do
        begin
            eclApp.Cells(1,i+1):=XXZLS.fields[i].FieldName;
        end;
        XXZLS.First;
        j:=2;
        while   not   XXZLS.Eof   do
        begin
          for   i:=0   to   XXZLS.FieldCount-1   do
          begin
            if ((XXZLS.Fields[i].FieldName = 'XH') or (XXZLS.Fields[i].FieldName = 'CCQQ') or (XXZLS.Fields[i].FieldName = 'CCQZ')) then
              eclApp.Cells(j,i+1):= #39 + XXZLS.Fields[i].Value
            else
              eclApp.Cells(j,i+1):=XXZLS.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        XXZLS.Next;
        inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
   end;
end;

procedure TBOMM.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  PC1.ActivePage:=TS1;
  IsAllowUserID:=false;
  ReadIni();
  if IsAllowUserID=True then
  begin
    cb1.Visible:=true;
  end;
end;

procedure TBOMM.FormDestroy(Sender: TObject);
begin
  if ShowShoePic<>nil then ShowShoePic.Free;
  BOMM:=nil;

end;

procedure TBOMM.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if XXZl.FieldByName('SS').IsNull or XXZl.FieldByName('XX').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
  end;
end;
//顯示圖片
procedure TBOMM.XXZLAfterScroll(DataSet: TDataSet);
var ShoePic:string;
begin
  //
  if IsExport=false then
  begin
    shoePic:=StringReplace(XXZL.FieldByName('IMGName').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
    if FileExists(shoePic)=true then
    begin
       ShoeImage.Picture.LoadFromFile(shoePic);
       if ShowShoePic=nil then ShowShoePic:=TShowShoePic.Create(self);
       ShowShoePic.ShoeImage.Picture.LoadFromFile(shoePic);
    end else
    begin
       ShoeImage.Picture.Bitmap:=nil;
       if ShowShoePic<>nil then
         ShowShoePic.ShoeImage.Picture.Bitmap:=nil;
    end;
   end;
end;

procedure TBOMM.DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var MouseP:TPoint;
begin

    if ShowShoePic<>nil then
    begin
      if ShoeImage.Picture.Graphic<>nil then
      begin
        GetCursorPos(MouseP);
        if  ( (MouseP.X>=(ShoeImage.Left+main.Left))  and (MouseP.Y>=(ShoeImage.Top+main.Top+50))
            and (MouseP.X<=(ShoeImage.Left+main.Left+ShoeImage.Width)) and (MouseP.Y<=(ShoeImage.Top+main.Top+50+ShoeImage.Height)) ) then
        begin
           ShowShoePic.Left:=ShoeImage.Left+main.Left+ShoeImage.Width;
           ShowShoePic.Top:=ShoeImage.Top+main.Top+50+ShoeImage.Height;
           ShowShoePic.Show;
        end else
        begin
           ShowShoePic.Hide;
        end;
      end;
    end;

end;
procedure TBOMM.FormShow(Sender: TObject);
begin
  ShoeImage.OnMouseMove:=DetectMouseMove;
  Panel1.OnMouseMove:=DetectMouseMove;
  Panel2.OnMouseMove:=DetectMouseMove;
  Panel3.OnMouseMove:=DetectMouseMove;
  Panel4.OnMouseMove:=DetectMouseMove;
  Panel5.OnMouseMove:=DetectMouseMove;
end;

procedure TBOMM.Saveas1Click(Sender: TObject);
begin
  if SaveDialog.Execute()=true then
  begin
    ShoeImage.Picture.SaveToFile(SaveDialog.FileName);
  end;
end;

procedure TBOMM.ChildMatCKClick(Sender: TObject);
begin
  if ChildMatCK.Checked=true then
  begin
    with XXZLS do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select XXZLS.*');                              //修正子材料關聯廠商 2016/04/02 Johny
      sql.Add('FROM (select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH, ''Assembly''AS DType,CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
      sql.Add('             CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,xxzls.UserDate');
      sql.Add(',(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log'' ');
      sql.Add(',(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log'' ');
      sql.Add('      FROM XXZLS');
      //20161110 修改異動日期顏色提示
      sql.Add('left join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log ');
      sql.Add('            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheHao=:SheHao and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.Add('           Group by XieXing,SheHao,BWBH ');
      sql.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH  ');
      //
      sql.Add('      LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
      sql.Add('      LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      sql.Add('      LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
      sql.Add('      LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
      sql.Add('      where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao');
      //
      sql.Add('      union all');
      sql.Add('      select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,clzhzl.cldh1,''Extra''AS DType,CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
      sql.add('             CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,(clzhzl.syl*XXZLS.CLSL)as CLSL ');
       //20240729 show size for child mat from clzhzl table
      sql.Add('      ,case when isnull(clzhzl.ccq,'''')<>'''' then clzhzl.ccq else XXZLS.CCQQ end as CCQQ');
      sql.Add('      ,case when isnull(clzhzl.ccq1,'''')<>'''' then clzhzl.ccq1 else XXZLS.CCQZ end as CCQZ');
      sql.add('      ,CLZL.CLZMLB,xxzls.userdate,null as  ''CLBH_Log'',null as  ''CLSL_Log'' ');
      sql.add('      FROM XXZLS inner join clzhzl on clzhzl.cldh=xxzls.clbh');
      sql.add('      LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh ');
      sql.add('      LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ') ;
      sql.Add('      LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
      sql.Add('      LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
      sql.Add('      where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao');
      //
      sql.Add('      union all ');
      sql.Add('      select Clzhzl2.XH, Clzhzl2.BWBH,Clzhzl2.BWMC,clzhzl.CLDH1,''Extra1'' AS DType,CLZL.YWPM as CLMC,CLZL.ZWPM as CLZW ,Clzhzl2.BWZW, ');
      sql.Add('      clzl.DWBH,Clzhzl2.LYCC,Clzhzl2.BZ,Clzhzl2.BWLB,ZSZL.ZSYWJC,Clzhzl2.LOSS,clzhzl2.CLSL*clzhzl.syl as CLSL ');
      //20240729 show size for child mat from clzhzl table
      sql.Add('      ,case when isnull(clzhzl.ccq,'''')<>'''' then clzhzl.ccq else Clzhzl2.CCQQ end as CCQQ');
      sql.Add('      ,case when isnull(clzhzl.ccq1,'''')<>'''' then clzhzl.ccq1 else Clzhzl2.CCQZ end as CCQZ');
      sql.Add('      ,clzl.CLZMLB,Clzhzl2.userdate,null as ''CLBH_Log'',null as ''CLSL_Log'' ');
      sql.Add('      from( ');
      sql.Add('      select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,clzhzl.cldh1 as CLBH,''Extra''AS DType,CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm as BWZW, ');
      sql.Add('      CLZL.DWBH ,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,(clzhzl.syl*XXZLS.CLSL)as CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,xxzls.userdate ');
      sql.Add('      ,null as ''CLBH_Log'',null as ''CLSL_Log'' ');
      sql.Add('      FROM XXZLS inner join clzhzl on clzhzl.cldh=xxzls.clbh ');
      sql.Add('      LEFT JOIN BWZL ON XXZLS.BWBH = BWZL.bwdh ');
      sql.Add('      LEFT JOIN CLZL ON clzhzl.cldh1 = CLZL.cldh ');
      sql.Add('      LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05'' ');
      sql.Add('      LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh ');
      sql.Add('      where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao ) Clzhzl2 ');
      sql.Add('      inner join clzhzl ON clzhzl2.CLBH = CLZHZL.cldh ');
      sql.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      sql.Add('      LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
      sql.Add('      )XXZLS ');
      sql.Add('ORDER BY XXZLS.XH, XXZLS.DType');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end
  else
  begin
    with XXZLS do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,''Assembly''AS DType, CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,xxzls.userdate ');
      sql.Add(',(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log'' ');
      sql.Add(',(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log'' ');
      sql.Add('FROM XXZLS ');
      //20161110 修改異動日期顏色提示
      sql.Add('left join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log ');
      sql.Add('            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheHao=:SheHao and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.Add('           Group by XieXing,SheHao,BWBH ');
      sql.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH  ');
      //
      sql.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
      sql.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      sql.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''') ;
      sql.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH') ;
      sql.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao') ;
      sql.Add(' ORDER BY XXZLS.XH');
      active:=true;
    end;
  end;
  DBGrid2.Columns[3].Visible:=ChildMatCK.Checked xor false;
end;

procedure TBOMM.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
 if ((XXZLS.FieldByName('DType').AsString='Extra'))  then
  begin
    DBGrid2.canvas.Brush.Color:=clBtnface;
    DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if XXZLS.FieldByName('CLBH_Log').AsString<>'' then
  begin
   if DataCol = 4 then
   begin
     DBGrid2.canvas.Brush.Color:=clyellow;
     DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  end;
  if XXZLS.FieldByName('CLSL_Log').AsString<>'' then
  begin
   if DataCol = 8 then
   begin
     DBGrid2.canvas.Brush.Color:=clyellow;
     DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  end;
  
end;

procedure TBOMM.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if  DataCol>=2 then
  begin
     if (DataCol mod 2) =0 then
     begin
       if xtbwyl1.Fields[DataCol+1].AsString<>'' then
       begin
         DBGrid3.canvas.Brush.Color:=clyellow;
         DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;
     end;
  end;
end;

procedure TBOMM.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if  DataCol>=2 then
  begin
     if (DataCol mod 2) =0 then
     begin
       if xtbwyl.Fields[DataCol+1].AsString<>'' then
       begin
         DBGrid4.canvas.Brush.Color:=clyellow;
         DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;
     end;
  end;
end;

procedure TBOMM.bbt5Click(Sender: TObject);
var i:integer;
    shoePic:string;
begin
  BOMM_Print:=TBOMM_Print.create(nil);
  BOMM_Print.MemoTemp.DataSource:=DS1;
  BOMM_Print.Titlememo.DataSource:=DS1;
  BOMM_Print.QMatList.DataSource:=DS1;
  BOMM_Print.MemoOth.DataSource:=DS1;
  //
  BOMM_Print.MemoOth.DataSource:=DS1;
  BOMM_Print.TitleMemo.Active:=true;
  //
  BOMM_Print.QRCompositeReport1.prepare;
  i:=BOMM_Print.QuickRep3.QRPrinter.pagecount ;
  BOMM_Print.PageN2.Caption:='/  '+inttostr(i);
  BOMM_Print.PageN3.Caption:='/  '+inttostr(i);
  //
  try
    // 圖片加載不論是否成功都要打印
    shoePic:=BOMM_Print.TitleMemo.fieldbyname('IMGName').AsString  ;
    if FileExists(shoePic)=true then
    begin
      BOMM_Print.QRImage2.Picture.LoadFromFile(shoePic);
      BOMM_Print.QRImage3.Picture.LoadFromFile(shoePic);
    end else
    begin
      shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
      if FileExists(shoePic)=true then
      begin
        BOMM_Print.QRImage2.Picture.LoadFromFile(shoePic);
        BOMM_Print.QRImage3.Picture.LoadFromFile(shoePic);
      end;
    end;
    //
    BOMM_Print.QRCompositeReport1.Preview;
    BOMM_Print.Close;
  except
    showmessage('No picture of article.');
    BOMM_Print.QRCompositeReport1.Preview;
  end ;
end;

procedure TBOMM.BitBtn1Click(Sender: TObject);
var
 eclApp,WorkBook:olevariant;
   excelcount,excelsheet,i,j,k,l:integer;
   PartALl:string;
begin
    AppDir:=ExtractFilePath(Application.ExeName);
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\colorswatch.xls'),Pchar(AppDir+'Additional\colorswatch.xls'),false);

     with XXZLS_1 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,''Assembly'' as DType,');
       SQL.Add('       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
       SQL.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,');
       SQL.Add('       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate');
       SQL.Add('       ,(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log''');
       SQL.Add('       ,(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log'',XXZLS.XieXing,XXZLS.SheHao,CLZL.ywpm,BWZL.ywsm');
       SQL.Add('FROM XXZLS');
       SQL.Add('LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log');
       SQL.Add('            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheHao=:SheHao and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
       SQL.Add('           Group by XieXing,SheHao,BWBH');
       SQL.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH');
       SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
       SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
       SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
       SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
       SQL.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao and XXZLS.CLBH not like ''L%'' and XXZLS.CLBH not like ''H%''');
       SQL.Add('ORDER BY XXZLS.XH');
       Active:=true;
     end;

    part.Active:=true;
    if  XXZLS_1.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      excelsheet:=1;
      excelcount:=1;
      eclApp.WorkBooks.Open(AppDir+'Additional\colorswatch.xls');
      eclApp.WorkSheets[excelsheet].Activate;
      eclApp.WorkSheets[excelsheet].Name:=inttostr(excelsheet)+' - '+(XXZLS_1.FieldByName('XieXing').AsString)+' - '+(XXZLS_1.FieldByName('SheHao').AsString);
      eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
      XXZLS_1.First;
      j:=0;
      while   ((not  XXZLS_1.Eof) ) do
      begin
          for   k:=0   to  5 do
            if (k mod 2) = 0 then
            begin
              eclApp.Cells(j+1,2+k):=XXZL.FieldByName('ARTICLE').value;
              eclApp.Cells(j+2,2+k):=XXZLS_1.FieldByName('CLBH').value + '-' + XXZLS_1.FieldByName('ywpm').value;
              part.First;
              PartALl:='';
              for i:=0 to part.RecordCount-1 do
              begin
               PartALl:=PartALl+part.FieldByName('ywsm').AsString+',';
               part.Next;
              end;

              eclApp.Cells(j+3,2+k):=copy(PartALl,0,(Length(PartALl)-1));
              eclApp.Cells(j+4,2+k):=XXZLS_1.FieldByName('zsywjc').value;
              XXZLS_1.Next;

              if XXZLS_1.Eof then  break;

            //  showmessage(inttostr(excelcount));
            end;
          inc(j,5);
          if ((j-1) mod 29 = 0) then
          begin
             inc(excelsheet,1);
             eclApp.WorkSheets[excelsheet].Activate;
             eclApp.WorkSheets[excelsheet].Name:=inttostr(excelsheet)+' - '+(XXZLS_1.FieldByName('XieXing').AsString)+' - '+(XXZLS_1.FieldByName('SheHao').AsString);
             j:=0;
          end;
//          eclApp.WorkSheets[excelsheet+1].Name:=inttostr(excelsheet+1)+' - '+(XXZLS_1.FieldByName('XieXing').AsString)+' - '+(XXZLS_1.FieldByName('SheHao').AsString);
      end;

        showmessage('Succeed.');
        eclApp.Visible:=True;
        //
        XXZLS_1.Active:=false;
        part.Active:=false;
    except
      on   F:Exception   do
      showmessage(F.Message);
    end;
end;

procedure TBOMM.Button2Click(Sender: TObject);
begin
  if trim(Edit12.Text) = '' then exit;

   with Bom_Season do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,''Assembly'' as DType,');
     SQL.Add('       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
     SQL.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,');
     SQL.Add('       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate');
     SQL.Add('FROM XXZLS');
     SQL.Add('LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log');
     SQL.Add('            where XXZLS_Log.XieXing+XXZLS_Log.SheHao in (select XieXing+SheHao from kfxxzl where JiJie = '''+Edit12.Text+''') and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
     SQL.Add('           Group by XieXing,SheHao,BWBH');
     SQL.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH');
     SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
     SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
     SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
     SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
     SQL.Add('group by XXZLS.XH, XXZLS.BWBH,BWZL.ywsm ,XXZLS.CLBH,');
     SQL.Add('       CLZL.YWPM , CLZL.ZWPM ,BWZL.zwsm ,');
     SQL.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,');
     SQL.Add('       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate');
     SQL.Add('ORDER BY XXZLS.CLBH');
     Active:=true;
   end;
end;

procedure TBOMM.BitBtn2Click(Sender: TObject);
begin
  if xxzl.IsEmpty then exit;
  with XXZL_CHECK do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
    FieldByName('XieXing').Value := xxzl.fieldbyname('XieXing').AsString;
    FieldByName('SheHao').Value := xxzl.fieldbyname('SheHao').AsString;
    FieldByName('Article').Value := xxzl.fieldbyname('Article').AsString;
    FieldByName('FD').Value := xxzl.fieldbyname('FD').AsString;
  end;
  BitBtn5.Enabled := true;
  BitBtn6.Enabled := true;
end;

procedure TBOMM.BitBtn4Click(Sender: TObject);
begin
  with XXZL_CHECK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BitBtn5.Enabled := true;
  BitBtn6.Enabled := true;
end;

procedure TBOMM.XXZLAfterOpen(DataSet: TDataSet);
begin
  XXZL_CHECK.Active:=true;
end;

procedure TBOMM.BitBtn5Click(Sender: TObject);
var
  i: integer;
  a: string;
begin
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

  try
    XXZL_CHECK.first;
    for i := 1 to XXZL_CHECK.RecordCount do
    begin
      case XXZL_CHECK.updatestatus of
        usinserted:
          begin
            XXZL_CHECK.Edit;
            XXZL_CHECK.FieldByName('XieXing').Value := xxzl.fieldbyname('XieXing').AsString;
            XXZL_CHECK.FieldByName('SheHao').Value := xxzl.fieldbyname('SheHao').AsString;
            XXZL_CHECK.FieldByName('Article').Value := xxzl.fieldbyname('Article').AsString;
            XXZL_CHECK.FieldByName('FD').Value := xxzl.fieldbyname('FD').AsString;
            XXZL_CHECK.FieldByName('Bom_Check').Value := XXZL_CHECK.FieldByName('Bom_Check').Value;
            if XXZL_CHECK.FieldByName('Bom_Check').Value = 'True' then
            begin
              XXZL_CHECK.FieldByName('BomDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
              XXZL_CHECK.FieldByName('Bom_UserID').Value := main.Edit1.Text;
            end;
            if XXZL_CHECK.FieldByName('Develop_Check').Value = 'True' then
            begin
              XXZL_CHECK.FieldByName('DevelopDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
              XXZL_CHECK.FieldByName('Develop_UserID').Value := main.Edit1.Text;
            end;
            if XXZL_CHECK.FieldByName('Tech_Check').Value = 'True' then
            begin
              XXZL_CHECK.FieldByName('TechDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
              XXZL_CHECK.FieldByName('Tech_UserID').Value := main.Edit1.Text;
            end;
            XXZL_CHECK.FieldByName('YN').Value := '1';
            UpdateSQL1.apply(ukinsert);
          end;
        usmodified:
          begin
            if XXZL_CHECK.fieldbyname('YN').value='0'then
            begin
              UpdateSQL1.apply(ukdelete);
            end else
            begin
              if  ((XXZL_CHECK.FieldByName('Tech_UserID').Value=main.Edit1.Text) or (XXZL_CHECK.FieldByName('Develop_UserID').Value=main.Edit1.Text)
              or (XXZL_CHECK.FieldByName('Bom_UserID').Value=main.Edit1.Text)) then
              begin
                XXZL_CHECK.Edit;
                if XXZL_CHECK.FieldByName('Bom_Check').Value <> XXZL_CHECK.FieldByName('Bom_Check').OldValue then
                begin
                  XXZL_CHECK.FieldByName('BomDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
                  XXZL_CHECK.FieldByName('Bom_UserID').Value := main.Edit1.Text;
                end;
                if XXZL_CHECK.FieldByName('Develop_Check').Value <> XXZL_CHECK.FieldByName('Develop_Check').OldValue then
                begin
                  XXZL_CHECK.FieldByName('DevelopDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
                  XXZL_CHECK.FieldByName('Develop_UserID').Value := main.Edit1.Text;
                end;
                if XXZL_CHECK.FieldByName('Tech_Check').Value <> XXZL_CHECK.FieldByName('Tech_Check').OldValue then
                begin
                  XXZL_CHECK.FieldByName('TechDATE').Value := formatdatetime('yyyy/MM/dd', NDate);
                  XXZL_CHECK.FieldByName('Tech_UserID').Value := main.Edit1.Text;
                end;
                UpdateSQL1.apply(ukmodify);
              end else
              begin
                showmessage('It is not yours, can not modify.');
              end;
            end;
          end;
      end;
      XXZL_CHECK.Next;
    end;
    XXZL_CHECK.active := false;
    XXZL_CHECK.cachedupdates := false;
    XXZL_CHECK.requestlive := false;
    XXZL_CHECK.active := true;
    BitBtn5.Enabled := false;
    BitBtn6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;

end;

procedure TBOMM.BitBtn6Click(Sender: TObject);
begin
  with XXZL_CHECK do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
end;

end.
