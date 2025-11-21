unit MaterialTestFD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls,comobj,
  ComCtrls, GridsEh, DBGridEh, Menus, OleServer, ExcelXP,DBGridEhImpExp, ShellAPI, Zlib,
  Buttons, Mask, DBCtrls;

type
  TMaterialTestFD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Edit5: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    Edit6: TEdit;
    Button2: TButton;
    Label4: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    lbl1: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    lbl3: TLabel;
    Edit7: TEdit;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ZSYWJC: TStringField;
    Qry_Cal: TQuery;
    Query1start: TStringField;
    Query1stop: TStringField;
    Query1color_: TStringField;
    CheckBox1: TCheckBox;
    ds_article: TDataSource;
    qry_article: TQuery;
    strngfldqry4article: TStringField;
    strngfldqry4zsywjc: TStringField;
    qry_articleFD: TStringField;
    qry_articleDevType: TStringField;
    qry_articleCategory: TStringField;
    qry_articleDEVCODE: TStringField;
    qry_articleGENDER: TStringField;
    Query1srtype: TStringField;
    pgc1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGrid1: TDBGridEh;
    Query1UNDERTEST: TBooleanField;
    Query1PASS: TBooleanField;
    Query1FAIL: TBooleanField;
    Query1REMARK: TStringField;
    Query1PDMCODE: TStringField;
    RadioGroup1: TRadioGroup;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    UpSql1: TUpdateSQL;
    TS3: TTabSheet;
    dbgrdh1: TDBGridEh;
    spl1: TSplitter;
    qry1: TQuery;
    strngfldqry1jijie: TStringField;
    strngfldqry1article: TStringField;
    strngfldqry1xieming: TStringField;
    strngfldqry1stage: TStringField;
    qry1FD: TStringField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qry2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    StringField9: TStringField;
    StringField10: TStringField;
    DBGridEh1: TDBGridEh;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Splitter1: TSplitter;
    Query1FormCode: TStringField;
    Query1SentDate: TDateTimeField;
    Query1TestReportCode: TStringField;
    Query1TestReportDate: TDateTimeField;
    qry3: TQuery;
    S4: TMenuItem;
    ExcelApplication1: TExcelApplication;
    DBGridEh2: TDBGridEh;
    DS_ALL: TDataSource;
    Qry_ALL: TQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    BooleanField6: TBooleanField;
    StringField19: TStringField;
    StringField20: TStringField;
    DateTimeField1: TDateTimeField;
    StringField21: TStringField;
    StringField22: TStringField;
    DateTimeField2: TDateTimeField;
    StringField23: TStringField;
    DateTimeField3: TDateTimeField;
    qry_articleJiJie: TStringField;
    SaveDialog1: TSaveDialog;
    CKBSel: TCheckBox;
    qry4: TQuery;
    edt1: TEdit;
    dtmfldQuery1FDSentDate: TDateTimeField;
    Qry_TestReport: TQuery;
    DS_TestReport: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Qry_TestReportcldh: TStringField;
    Qry_TestReportResult: TStringField;
    Qry_TestReportSendDate: TDateTimeField;
    Qry_TestReportUSERDATE: TDateTimeField;
    Qry_TestReportUSERID: TStringField;
    Qry_TestReportFile_Name: TStringField;
    Qry_TestReportFile_Size: TFloatField;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    OpenDialog1: TOpenDialog;
    Query1Guarantee: TBooleanField;
    ts4: TTabSheet;
    ts5: TTabSheet;
    ts6: TTabSheet;
    mmo1: TMemo;
    mmo2: TMemo;
    mmo3: TMemo;
    pnl3: TPanel;
    lbl2: TLabel;
    pnl4: TPanel;
    lbl6: TLabel;
    pnl5: TPanel;
    lbl4: TLabel;
    Label7: TLabel;
    cbb2: TComboBox;
    Label8: TLabel;
    cbb1: TComboBox;
    Qry_ALLARTICLE: TStringField;
    Qry_ALLFD: TStringField;
    Qry_ALLjijie: TStringField;
    Qry_ALLGuarantee: TBooleanField;
    Query1time: TIntegerField;
    Panel2: TPanel;
    Splitter2: TSplitter;
    pnl1: TPanel;
    pnl2: TPanel;
    DBGridEh3: TDBGridEh;
    S5: TMenuItem;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGridEh4: TDBGridEh;
    Qry_Production: TQuery;
    Qry_ProductionARTICLE: TStringField;
    Qry_ProductionXIEXING: TStringField;
    Qry_ProductionSHEHAO: TStringField;
    Qry_ProductionCLBH: TStringField;
    Qry_ProductionBWBH: TStringField;
    Qry_ProductionUSERID: TStringField;
    Qry_ProductionUSERDATE: TDateTimeField;
    Qry_ProductionFD: TStringField;
    Qry_ProductionJiJie: TStringField;
    Qry_ProductionXieMing: TStringField;
    Qry_ProductionBWMC: TStringField;
    Qry_ProductionZSYWJC: TStringField;
    DS_Production: TDataSource;
    DBGridEh5: TDBGridEh;
    Cmb_Stage: TComboBox;
    Query1Prod: TBooleanField;
    Label9: TLabel;
    Label10: TLabel;
    qry_articleBWMC: TStringField;
    chk_TestReport: TCheckBox;
    Chk_Production: TCheckBox;
    BBTT2: TBitBtn;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    N1: TMenuItem;
    Panel6: TPanel;
    Button3: TButton;
    Panel7: TPanel;
    dbgrdh2: TDBGridEh;
    ds_CLZLTEST: TDataSource;
    Qry_CLZLTEST: TQuery;
    Qry_CLZLTESTcldh: TStringField;
    Qry_CLZLTESTFormCode: TStringField;
    Qry_CLZLTESTFDSentDate: TDateTimeField;
    Qry_CLZLTESTSentDate: TDateTimeField;
    Qry_CLZLTESTundertest: TBooleanField;
    Qry_CLZLTESTpass: TBooleanField;
    Qry_CLZLTESTfail: TBooleanField;
    Qry_CLZLTESTGuarantee: TBooleanField;
    Qry_CLZLTESTTestReportCode: TStringField;
    Qry_CLZLTESTTestReportDate: TDateTimeField;
    Qry_CLZLTESTSupplier: TStringField;
    Qry_CLZLTESTPDMCode: TStringField;
    Qry_CLZLTESTREMARK: TStringField;
    Qry_CLZLTESTUSERDATE: TDateTimeField;
    Qry_CLZLTESTUSERID: TStringField;
    Qry_CLZLTESTtime: TIntegerField;
    CheckBox2: TCheckBox;
    DPT1: TDateTimePicker;
    DPT2: TDateTimePicker;
    edtFD_remark: TEdit;
    DPT_userdate: TDateTimePicker;
    chk_FD_Remark: TCheckBox;
    chk_userdate: TCheckBox;
    Query1Limited: TBooleanField;
    Qry_CLZLTESTLimited: TBooleanField;
    Query1FDRemark: TStringField;
    btnexcel: TButton;
    Query2: TQuery;
    Query3: TQuery;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure Query1UNDERTESTChange(Sender: TField);
    procedure Query1PASSChange(Sender: TField);
    procedure Query1FAILChange(Sender: TField);
    procedure S4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure S5Click(Sender: TObject);
    procedure chk_TestReportClick(Sender: TObject);
    procedure chk_TestReportMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Chk_ProductionClick(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure btnexcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTestFD: TMaterialTestFD;
  dbg2 : boolean;
  NDate:TDate;
implementation

uses main1,MatlTestFD_Supplier1,MaterialTestFD_TestData1,
  MaterialTestFD_FD1;

{$R *.dfm}

procedure TMaterialTestFD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialTestFD.Button1Click(Sender: TObject);
begin
{
//第三頁 ALL DATA
with qry_ALL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZL.ARTICLE,YPZL.FD,jijie,CLZLTEST.CLDH AS CLBH,CLZL.YWPM,CLZL.DWBH,CLZLTEST.Supplier as ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop, ');
    sql.add('        CLZLTEST.Guarantee,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''1'' as srtype,CLZLTEST.USERDATE,CLZLTEST.USERID,FormCode,SentDate,TestReportCode,TestReportDate');
    sql.add('from CLZLTEST ');
    sql.Add('inner join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST GROUP BY CLZLTEST.cldh ) CLZLTEST_time on CLZLTEST.CLDH=CLZLTEST_time.cldh and CLZLTEST.time=CLZLTEST_time.time ');
    sql.add('left join CLZL  on CLZl.CLDH=CLZLTEST.CLDH ');
    sql.add('left join CLLBZLSVN  on LEFT(CLZLTEST.CLDH,1)=CLLBZLSVN.LB ');
    sql.add('left join ( ');
        sql.Add('       select * from ');
        sql.Add('            ( ');
        sql.Add('              select  ypzls.clbh,kfxxzl.jijie,ypzl.article,zszl.zsywjc,xxzlKF.FD,xxzlKF.DevType,xxzlKF.Category,DEVCODE,kfxxzl.GENDER,''1'' as srtype from ypzls');
        sql.Add('              left join ypzl on ypzl.ypdh=ypzls.ypdh');
        sql.Add('              left join zszl on zszl.zsdh=ypzls.csbh');
        sql.Add('              left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
        sql.Add('              left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
        sql.Add('                where xxzlkf.dropped=0 ');
        if length(edit1.Text) > 0 then
           sql.Add('                and kfxxzl.jijie='+''''+edit1.Text+'''');
        if length(edit2.Text) > 0 then
          sql.Add('                 and ypzl.kfjd='+''''+edit2.Text+'''');
        if  length(cbb1.Text) > 0 then
            sql.add(' and isnull(xxzlkf.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
        if  length(cbb2.Text) > 0 then
            sql.add(' and isnull(xxzlkf.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');

        sql.Add('              union all');
        sql.Add('              select CLZHZL.CLDH1 as clbh,kfxxzl.jijie,ypzl.article,zszl.zsywjc,xxzlKF.FD,xxzlKF.DevType,xxzlKF.Category,DEVCODE,kfxxzl.GENDER,''1'' as srtype from ypzls');
        sql.Add('              INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
        sql.Add('              left join ypzl on ypzl.ypdh=ypzls.ypdh');
        sql.Add('              left join zszl on zszl.zsdh=CLZHZL.ZSDH');
        sql.Add('              left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
        sql.Add('              left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
        sql.Add('              where xxzlkf.dropped=0 ');
        if  length(edit1.Text) > 0 then
            sql.Add('                and kfxxzl.jijie='+''''+edit1.Text+'''');
        if  length(edit2.Text) > 0 then
            sql.Add('                 and ypzl.kfjd='+''''+edit2.Text+'''');
        if  length(cbb1.Text) > 0 then
            sql.add(' and isnull(xxzlkf.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
        if  length(cbb2.Text) > 0 then
            sql.add(' and isnull(xxzlkf.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');

        sql.Add('             ) ca');
        sql.Add('                  group by clbh,jijie,article,zsywjc,srtype,FD,DevType,Category,DEVCODE,GENDER');
    sql.add('            ) YPZL on YPZL.clbh=CLZLTEST.CLDH ');
    sql.add('where ( CLZLTEST.UNDERTEST=1 or CLZLTEST.PASS=1 or CLZLTEST.FAIL=1 or FormCode is not null ) ');

    if   edit6.Text<>'' then
         sql.add(' and CLZLTEST.CLDH like '+''''+edit6.Text+'%'+'''');
    if   edit3.Text<>'' then
         sql.add(' and CLZLTEST.Supplier like '+'''%'+edit3.Text+'%'+'''');
    if   edit4.Text<>'' then
         sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
    if RadioGroup1.ItemIndex=1 then
         sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
    if RadioGroup1.ItemIndex=2 then
         sql.Add('    and CLZLTEST.PASS=1' );
    if RadioGroup1.ItemIndex=3 then
         sql.Add('    and CLZLTEST.FAIL=1' );

    sql.Add('    and ( exists (select ypzls.clbh ');  //過濾出在樣品單中母件的材料,show='1'
    sql.Add('                   from ypzls ');
    sql.Add('                   left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('                   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.Add('                   left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    sql.add('                   where ypzls.clbh=CLZLTEST.CLDH  ');
    if length(edit1.Text) > 0 then
       sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if length(edit2.Text) > 0 then
       sql.Add('                      and ypzl.kfjd='+''''+edit2.Text+'''');
    if length(cbb1.Text) > 0 then
       sql.add(' and isnull(xxzlkf.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
    if length(cbb2.Text) > 0 then
       sql.add(' and isnull(xxzlkf.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
    if length(edit7.Text) > 0 then
         sql.Add('    and XXZLKF.FD='+''''+edit7.Text+'''' );

    sql.add('                 )                      ');
    sql.Add('           or exists (select ypzls.clbh ');   //過濾出在樣品單中子件的材料,show='1'
    sql.Add('                      from ypzls ');
    sql.Add('                      INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    sql.Add('                      left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('                      left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.Add('                      left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    sql.add('                      where CLZHZL.CLDH1=CLZLTEST.CLDH  ');
    if length(edit1.Text) > 0 then
       sql.add('                     and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if length(edit2.Text) > 0 then
       sql.Add('                     and ypzl.kfjd='+''''+edit2.Text+'''');
    if length(cbb1.Text) > 0 then
       sql.add(' and isnull(xxzlkf.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
    if length(cbb2.Text) > 0 then
       sql.add(' and isnull(xxzlkf.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
    if length(edit7.Text) > 0 then
         sql.Add('    and XXZLKF.FD='+''''+edit7.Text+'''' );

    sql.add('                     )     ');
    sql.add('           )     ');
    active:=true;
  end;
}

//原本寫法為, 抓取CGZLSS中該ARTICLE 有買的材料,及樣品單中有送測的材料
//2010/1/6 改寫成 抓取YPZLS中且有存在CGZLS中的材料及不存在CGZLS中但有送測的材料

//第一頁
if  ((length(Edit1.Text)=0) and (length(Edit6.Text)=0) AND (RadioGroup1.ItemIndex=5) ) then
   begin
     showmessage('Pls keyin Season or material ID!');
     exit ;
   end;

qry_article.Active:=False;
Qry_Production.Active:=False;
Qry_TestReport.Active:=False;
with query1 do
  begin
    active:=false;
    sql.Clear;
    {
    sql.add('select CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop, ');
    sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''1'' as srtype,CLZLTEST.USERDATE,CLZLTEST.USERID,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time');
    sql.add('from CGZLSS ');
    sql.add('left join CLZL  on CLZl.CLDH=CGZLSS.CLBH ');
    sql.Add('left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST GROUP BY CLZLTEST.cldh ) CLZLTEST_time on CGZLSS.CLBH=CLZLTEST_time.cldh ');
    sql.add('left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
    sql.add('left join CGZL  on CGZl.CGNO=CGZLSS.CGNO ');
    sql.Add('left join zszl on zszl.zsdh=CGZl.ZSBH ');
    sql.add('left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
    sql.add('left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.Add('left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('where CGZL.CGLX=''6'' and CGZLSS.Qty>0  ');
    if   edit5.Text<>'' then
         sql.add('  and  CGZLSS.ZLBH='+''''+edit5.Text+'''');
    if   edit6.Text<>'' then
         sql.add(' and CGZLSS.CLBH='+''''+edit6.Text+'''');
    if   edit3.Text<>'' then
         sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
    if   edit4.Text<>'' then
         sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
    if   edit1.Text<>'' then
         sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if   edit2.Text<>'' then
         sql.add(' and CGZLSS.Stage='+''''+edit2.Text+'''');
    if length(edit7.Text) > 0 then
         sql.Add('    and XXZLKF.FD='+''''+edit7.Text+'''' );
    if RadioGroup1.ItemIndex=0 then
         sql.Add('    and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
    if RadioGroup1.ItemIndex=1 then
         sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
    if RadioGroup1.ItemIndex=2 then
         sql.Add('    and CLZLTEST.PASS=1' );
    if RadioGroup1.ItemIndex=3 then
         sql.Add('    and CLZLTEST.FAIL=1' );
    if length(cbb1.Text) > 0 then
         sql.add(' and isnull(xxzlkf.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
    if length(cbb2.Text) > 0 then
         sql.add(' and isnull(xxzlkf.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
    sql.Add('    and ( exists (select ypzls.clbh ');  //過濾出在樣品單中母件的材料,show='1'
    sql.Add('                   from ypzls ');
    sql.Add('                   left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('                   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.Add('                   left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                   where ypzls.clbh=CGZLSS.CLBH  ');
    if length(edit1.Text) > 0 then
       sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if length(edit2.Text) > 0 then
       sql.Add('                      and ypzl.kfjd='+''''+edit2.Text+'''');
    if length(edit7.Text) > 0 then
         sql.Add('                    and XXZLKF.FD='+''''+edit7.Text+'''' );
    if edit5.Text<>'' then
         sql.add('                    and  ypzl.ARTICLE='+''''+edit5.Text+'''');
    sql.add('                 )                      ');
    sql.Add('           or exists (select ypzls.clbh ');   //過濾出在樣品單中子件的材料,show='1'
    sql.Add('                      from ypzls ');
    sql.Add('                      INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    sql.Add('                      left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('                      left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.Add('                      left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('                      where CLZHZL.CLDH1=CGZLSS.CLBH  ');
    if length(edit1.Text) > 0 then
       sql.add('                     and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if length(edit2.Text) > 0 then
       sql.Add('                     and ypzl.kfjd='+''''+edit2.Text+'''');
    if length(edit7.Text) > 0 then
         sql.Add('                   and XXZLKF.FD='+''''+edit7.Text+'''' );

    sql.add('                     )     ');
    sql.add('           )     ');
    sql.add(' group by CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID');
    sql.Add(' ,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time');
    sql.add('union all                   ');
    }
    //原抓出不存在採購單中的樣品單母件 但有測試的材料,show='2'
    //2010/1/6 改成抓出樣品單中的母件,有存在CGZLS中,以及不存在CGZLS中但有送測的材料

    sql.add('select ypzls.clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
    sql.add('       CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Limited,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''2'' as srtype,');       //add CLZLTEST.Limited - Thoai May.20
    sql.add('       CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time,CLZLTEST.FDRemark');
    sql.add('       ,CASE WHEN (SELECT ISNULL(COUNT(*),0) from ZLZLS2 ');
    sql.add('                   WHERE LEFT(ZLZLS2.ZLBH,1)=''A'' AND ZLZLS2.CLBH=ypzls.CLBH ');
    sql.add('                  )>0 THEN CAST(1 as bit) ELSE CAST(0 as bit) END Prod      ');
    sql.add('               ');
    sql.add(' from ypzls ');
    sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
    sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add(' left join CLZL  on CLZl.CLDH=ypzls.CLBH ');
    sql.Add(' left join zszl on zszl.zsdh=ypzls.cSBH ');
    sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
    sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST GROUP BY CLZLTEST.cldh ) CLZLTEST_time on ypzls.CLBH=CLZLTEST_time.cldh ');
    sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');

    sql.add(' where ( (CLZLTEST.UNDERTEST=1)            or '); //過濾出已有測試資料之材料
    sql.add('         (CLZLTEST.PASS=1)                 or ');
    sql.add('         (CLZLTEST.FAIL=1)                 or ');
    sql.add('         (CLZLTEST.FDSentDate is not null) or ');
    sql.add('         (CLZL.YWPM LIKE ''%PRINT%'' )     or ');
    sql.Add('         exists (select cgzls.clbh from cgzls '); //過濾出在有採購單的材料
    sql.add('                 where CGZLS.CLBH=ypzls.clbh )');
    sql.add('        )  ');
    sql.add('       and left(ypzls.clbh,1)<>''H''   ');   //包裝材料不用送測
    sql.add('       and ypzl.KFJD<>''FES''   ');   //不包括FES材料
    sql.add('       and ypzl.KFJD<>''PDT''   ');   //不包括FES材料
    if edit5.Text<>'' then
         sql.add('  and kfxxzl.article='+''''+edit5.Text+'''');
    if edit6.Text<>'' then
         sql.add('  and ypzls.CLBH ='+''''+edit6.Text+'''');
    if edit3.Text<>'' then
         sql.add('  and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
         sql.add('  and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
         sql.add('  and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if Cmb_Stage.Text<>'' then
         sql.add('  and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
    if length(edit7.Text) > 0 then
         sql.Add('  and kfxxzl.FD='+''''+edit7.Text+'''' );
    if RadioGroup1.ItemIndex=0 then
         sql.Add('  and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
    if RadioGroup1.ItemIndex=1 then
         sql.Add('  and CLZLTEST.UNDERTEST=1 ' );
    if RadioGroup1.ItemIndex=2 then
         sql.Add('  and CLZLTEST.PASS=1' );
    if RadioGroup1.ItemIndex=3 then
         sql.Add('  and CLZLTEST.FAIL=1' );
    if RadioGroup1.ItemIndex=4 then
         sql.Add('  and CLZLTEST.Limited=1' );
    if length(cbb1.Text) > 0 then
         sql.add('  and kfxxzl.category='+''''+cbb1.Text+'''');
    if length(cbb2.Text) > 0 then
         sql.add('  and kfxxzl.DevType='+''''+cbb2.Text+'''');
    if CheckBox2.Checked then   // johnson   senddate filter
    begin
       sql.add('   and convert(datetime,convert(varchar,CLZLTEST.FDSentDate,111)) between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DPT1.Date) +'''');
       sql.add(' and  ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DPT2.Date) +'''');
    end;

    //-------------------------Thoai add more May.20.2013-----------------------
    if chk_userdate.Checked then
       sql.Add('    and CLZLTEST.USERDATE='''+formatdatetime('yyyy/MM/dd',DPT_userdate.Date)+''' ');
    if chk_FD_Remark.Checked then
       sql.Add('    and CLZLTEST.FDREMARK like ''%'+edtFD_remark.Text+'%'' ');

    sql.add(' group by ypzls.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Limited,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID');     //add CLZLTEST.Limited Thoai May.20.2013
    sql.Add(' ,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time,CLZLTEST.FDRemark');

    sql.add('union all                   '); //抓出樣品單子件已存在採購單中以及存在測試檔中的材料,show='3'
    sql.add('select CLZHZL.CLDH1 as clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
    sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Limited,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''3'' as srtype,');
    sql.add('        CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time,CLZLTEST.FDRemark');
    sql.add('       ,CASE WHEN (SELECT ISNULL(COUNT(*),0) from ZLZLS2 ');
    sql.add('                   WHERE LEFT(ZLZLS2.ZLBH,1)=''A'' AND ZLZLS2.CLBH=CLZHZL.CLDH1 ');
    sql.add('                  )>0 THEN CAST(1 as bit) ELSE CAST(0 as bit) END Prod      ');

    sql.add(' from ypzls ');
    sql.add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh ');
    sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
    sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add(' left join CLZL  on CLZl.CLDH=CLZHZL.CLDH1 ');
    sql.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH ');
    sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
    sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST GROUP BY CLZLTEST.cldh ) CLZLTEST_time on CLZHZL.CLDH1=CLZLTEST_time.cldh ');
    sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
    sql.add(' where ( (CLZLTEST.UNDERTEST=1)                or '); //過濾出已有測試資料之材料
    sql.add('         (CLZLTEST.PASS=1)                     or ');
    sql.add('         (CLZLTEST.FAIL=1)                     or ');
    sql.add('         (CLZLTEST.FDSentDate is not null)     or ');
    sql.Add('         exists (select cgzls.clbh from cgzls     '); //過濾出在有採購單的材料
    sql.add('                 where CGZLS.CLBH=CLZHZL.CLDH1)OR ');
    sql.add('         clzhzl.ZSDH=''V037''                  OR  '); // BOO YOUNG digital print  加工廠的加工件
    sql.add('         clzhzl.ZSDH=''V066''                  OR  '); // 寶合   加工廠的加工件
    sql.add('         clzhzl.ZSDH=''V070''                  OR  '); // 翩然   加工廠的加工件
    sql.add('         clzhzl.ZSDH=''M038''                      '); // 20120912　增加一廠商代號
    sql.add('       )                               ');
    sql.Add('        and not exists (select ypzls.clbh ');  //過濾掉已出現在樣品單中母件的材料,show='1'
    sql.Add('                        from ypzls ');
    sql.Add('                        left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.Add('                        left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('                        where ypzls.clbh=CLZHZL.CLDH1  ');
    if edit5.Text<>'' then
         sql.add('                         and kfxxzl.article='+''''+edit5.Text+'''');
    if length(edit1.Text) > 0 then
         sql.add('                         and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if length(Cmb_Stage.Text) > 0 then
         sql.Add('                         and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');
    if length(edit7.Text) > 0 then
         sql.Add('                         and kfxxzl.FD='+''''+edit7.Text+'''' );
    sql.add('                        )                      ');
    sql.add('       and ypzl.KFJD<>''FES''   ');   //不包括FES材料
    sql.add('       and ypzl.KFJD<>''PDT''   ');   //不包括FES材料
    if edit5.Text<>'' then
         sql.add('  and  kfxxzl.article='+''''+edit5.Text+'''');
    if edit6.Text<>'' then
         sql.add('  and CLZHZL.CLDH1='+''''+edit6.Text+'''');
    if edit3.Text<>'' then
         sql.add('  and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
         sql.add('  and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
         sql.add('  and KFXXZL.JiJie='+''''+edit1.Text+'''');
    if Cmb_Stage.Text<>'' then
         sql.add('  and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
    if length(edit7.Text) > 0 then
         sql.Add('  and kfxxzl.FD='+''''+edit7.Text+'''' );
    if RadioGroup1.ItemIndex=0 then
         sql.Add('  and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
    if RadioGroup1.ItemIndex=1 then
         sql.Add('  and CLZLTEST.UNDERTEST=1 ' );
    if RadioGroup1.ItemIndex=2 then
         sql.Add('  and CLZLTEST.PASS=1' );
    if RadioGroup1.ItemIndex=3 then
         sql.Add('  and CLZLTEST.FAIL=1' );
    if RadioGroup1.ItemIndex=4 then
         sql.Add('  and CLZLTEST.Limited=1' );
    if length(cbb1.Text) > 0 then
         sql.add('  and kfxxzl.category='+''''+cbb1.Text+'''');
    if length(cbb2.Text) > 0 then
         sql.add('  and kfxxzl.DevType='+''''+cbb2.Text+'''');
    if CheckBox2.Checked then   // johnson   senddate filter
    begin
       sql.add('   and convert(datetime,convert(varchar,CLZLTEST.FDSentDate,111)) between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DPT1.Date) +'''');
       sql.add(' and  ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DPT2.Date) +'''');
    end;

    //-------------------------Thoai add more May.20.2013-----------------------
    if chk_userdate.Checked then
       sql.Add('    and CLZLTEST.USERDATE='''+formatdatetime('yyyy/MM/dd',DPT_userdate.Date)+''' ');
    if chk_FD_Remark.Checked then
       sql.Add('    and CLZLTEST.FDREMARK like ''%'+edtFD_remark.Text+'%'' ');

    sql.add(' group by CLZHZL.CLDH1,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Limited,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID');
    sql.Add(' ,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time,CLZLTEST.FDRemark');
    if (RadioGroup1.ItemIndex=0) OR (RadioGroup1.ItemIndex=5) then   //當是選擇New 或 All 時才進行以下程式
    begin
      {
      sql.add('union all                   '); //抓出沒有測試過的三家加工廠的加工件,,show='5'
      sql.add('select CLZHZL.CLDH1 as clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
      sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''5'' as srtype,');
      sql.add('        CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time');
      sql.add(' from ypzls ');
      sql.add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh ');
      sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
      sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.add(' left join CLZL  on CLZl.CLDH=CLZHZL.CLDH1 ');
      sql.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH ');
      sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
      sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST GROUP BY CLZLTEST.cldh ) CLZLTEST_time on CLZHZL.CLDH1=CLZLTEST_time.cldh ');
      sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
      sql.Add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
      sql.add(' where CLZLTEST.UNDERTEST is null       '); //過濾出尚未有測試資料之材料
      sql.add('       and CLZLTEST.PASS is null        ');
      sql.add('       and CLZLTEST.FAIL is null        ');
      sql.add('       and CLZLTEST.FDSentDate is null  ');
      sql.add('       and CLZHZL.SYL=0  '); //中間件,用量=0
      sql.add('       AND (clzhzl.ZSDH=''V037'' OR  '); // BOO YOUNG digital print
      sql.add('            clzhzl.ZSDH=''V066'' OR  '); // 寶合
      sql.add('            clzhzl.ZSDH=''V070'') ');    // 翩然
      if edit5.Text<>'' then
           sql.add('  and kfxxzl.article='+''''+edit5.Text+'''');
      if edit6.Text<>'' then
           sql.add('  and CLZHZL.CLDH1='+''''+edit6.Text+'''');
      if edit3.Text<>'' then
           sql.add('  and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
      if edit4.Text<>'' then
           sql.add('  and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
      if edit1.Text<>'' then
           sql.add('  and KFXXZL.JiJie='+''''+edit1.Text+'''');
      if edit2.Text<>'' then
           sql.add('  and ypzl.KFJD='+''''+edit2.Text+'''');
      if length(edit7.Text) > 0 then
           sql.Add('  and XXZLKF.FD='+''''+edit7.Text+'''' );
      if length(cbb1.Text) > 0 then
           sql.add('  and xxzlkf.category='+''''+cbb1.Text+'''');
      if length(cbb2.Text) > 0 then
           sql.add('  and xxzlkf.DevType='+''''+cbb2.Text+'''');
      sql.Add('       and not exists (select ypzls.clbh ');  //不包括已存在樣品單中母件的材料
      sql.Add('                       from ypzls ');
      sql.Add('                       left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.Add('                       left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.add('                       where ypzls.clbh=CLZHZL.CLDH1  ');
      if edit5.Text<>'' then
           sql.add('                        and kfxxzl.article='+''''+edit5.Text+'''');
      if length(edit1.Text) > 0 then
           sql.add('                        and KFXXZL.JiJie='+''''+edit1.Text+'''');
      if length(edit2.Text) > 0 then
           sql.Add('                        and ypzl.kfjd='+''''+edit2.Text+'''');
      sql.add('                       )                      ');
      sql.Add('       and not exists (select cgzls.clbh  from cgzls  '); //不包括已存在採購單的材料
      sql.add('                       where CGZLS.CLBH=CLZHZL.CLDH1 )');
      sql.add(' group by CLZHZL.CLDH1,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID');
      sql.Add(' ,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time');
      }
      {
      sql.add('union all                   '); //抓出沒有測試過的樣品單母件印刷材料,show='7'
      sql.add('select ypzls.clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
      sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''7'' as srtype,');
      sql.add('        CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time');
      sql.add(' from ypzls ');
      sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
      sql.Add(' LEFT JOIN bwzl ON bwzl.Bwdh=YPZLS.BWBH');
      sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.add(' left join CLZL  on CLZl.CLDH=ypzls.CLBH ');
      sql.Add(' left join zszl on zszl.zsdh=ypzls.cSBH ');
      sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
      sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST GROUP BY CLZLTEST.cldh ) CLZLTEST_time on ypzls.CLBH=CLZLTEST_time.cldh ');
      sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
      sql.Add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
      sql.add(' where CLZLTEST.UNDERTEST is null       '); //過濾出尚未有測試資料之材料
      sql.add('       and CLZLTEST.PASS is null        ');
      sql.add('       and CLZLTEST.FAIL is null        ');
      sql.add('       and CLZLTEST.FDSentDate is null  ');
      sql.add('       and (bwzl.YWSM LIKE ''%LOGO%'' OR bwzl.YWSM LIKE ''%PRINT%'' ) ');
      sql.add('       AND (CLZL.YWPM LIKE ''%SILK%'' or CLZL.YWPM LIKE ''%sub%'' or CLZL.YWPM LIKE ''%digi%'' )');
      sql.Add('       and not exists (select cgzls.clbh from cgzls');           //不存在採購單的印刷材料
      sql.add('                       where CGZLS.CLBH=ypzls.clbh ) ');
      if   edit5.Text<>'' then
           sql.add('  and  kfxxzl.article='+''''+edit5.Text+'''');
      if   edit6.Text<>'' then
           sql.add('  and ypzls.CLBH ='+''''+edit6.Text+'''');
      if   edit3.Text<>'' then
           sql.add('  and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
      if   edit4.Text<>'' then
           sql.add('  and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
      if   edit1.Text<>'' then
           sql.add('  and KFXXZL.JiJie='+''''+edit1.Text+'''');
      if   edit2.Text<>'' then
           sql.add('  and ypzl.KFJD='+''''+edit2.Text+'''');
      if   length(edit7.Text) > 0 then
           sql.Add('  and XXZLKF.FD='+''''+edit7.Text+'''' );
      if   length(cbb1.Text) > 0 then
           sql.add('  and xxzlkf.category='+''''+cbb1.Text+'''');
      if   length(cbb2.Text) > 0 then
           sql.add('  and xxzlkf.DevType='+''''+cbb2.Text+'''');
      sql.add(' group by ypzls.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.Guarantee,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID');
      sql.Add(' ,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time');
      }
    end;
    active:=true;
    if  eof and (edit6.Text<>'') and (edit1.Text='') and (Cmb_Stage.Text='') and (edit3.Text='') and (edit4.Text='') and (edit5.Text='') and (edit7.Text='') then  //只輸入料號已測試紀錄者
    begin
      active:=false;
      sql.Clear;
      sql.add('select CLZL.CLDH as clbh,CLZL.YWPM,CLZL.DWBH,CLZLTEST.supplier as ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS, ');
      sql.add('       CLZLTEST.Guarantee,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''4'' as srtype,CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time');
      sql.add('       ,CLZLTEST.FDRemark,CASE WHEN (SELECT ISNULL(COUNT(*),0) from ZLZLS2 ');
      sql.add('                   WHERE LEFT(ZLZLS2.ZLBH,1)=''A'' AND ZLZLS2.CLBH=CLZL.CLDH ');
      sql.add('                  )>0 THEN CAST(1 as bit) ELSE CAST(0 as bit) END Prod      ');
      sql.add(' from CLZL ');
      sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
      sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST  GROUP BY CLZLTEST.cldh ) CLZLTEST_time on CLZL.CLDH=CLZLTEST_time.cldh ');
      sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
      sql.add(' where 1=1 and CLZLTEST.CLDH is not null ');
      sql.add(' and CLZL.CLDH='+''''+edit6.Text+'''');
      if RadioGroup1.ItemIndex=0 then
           sql.Add('    and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
      if RadioGroup1.ItemIndex=1 then
           sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
      if RadioGroup1.ItemIndex=2 then
           sql.Add('    and CLZLTEST.PASS=1' );
      if RadioGroup1.ItemIndex=3 then
           sql.Add('    and CLZLTEST.FAIL=1' );
      if RadioGroup1.ItemIndex=4 then
           sql.Add('    and CLZLTEST.Limited=1' );
      active:=true;
    end;
    if eof and (edit6.Text<>'') and (edit1.Text='') and (Cmb_Stage.Text='') and (edit3.Text='') and (edit4.Text='') and (edit5.Text='') and (edit7.Text='') then   //樣品單母件卻無採購紀錄者
    begin
      active:=false;
      sql.Clear;
      sql.add('select ypzls.clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,');
      sql.add('       CLZLTEST.Guarantee,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''2'' as srtype,CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time');
      sql.add('       ,CLZLTEST.FDRemark,CASE WHEN (SELECT ISNULL(COUNT(*),0) from ZLZLS2 ');
      sql.add('                   WHERE LEFT(ZLZLS2.ZLBH,1)=''A'' AND ZLZLS2.CLBH=ypzls.CLBH ');
      sql.add('                  )>0 THEN CAST(1 as bit) ELSE CAST(0 as bit) END Prod      ');
      sql.add(' from ypzls ');
      sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
      sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.add(' left join CLZL  on CLZl.CLDH=ypzls.CLBH ');
      sql.Add(' left join zszl on zszl.zsdh=ypzls.cSBH ');
      sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
      sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST  GROUP BY CLZLTEST.cldh ) CLZLTEST_time on ypzls.CLBH=CLZLTEST_time.cldh ');
      sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
      sql.add(' where 1=1  ');
      if   edit5.Text<>'' then
           sql.add('  and  kfxxzl.article='+''''+edit5.Text+'''');
      sql.add(' and ypzls.CLBH ='+''''+edit6.Text+'''');
      if   edit3.Text<>'' then
           sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
      if   edit4.Text<>'' then
           sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
      if   edit1.Text<>'' then
           sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
      if   Cmb_Stage.Text<>'' then
           sql.add(' and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
      if length(edit7.Text) > 0 then
           sql.Add('    and kfxxzl.FD='+''''+edit7.Text+'''' );
      if RadioGroup1.ItemIndex=0 then
           sql.Add('    and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
      if RadioGroup1.ItemIndex=1 then
           sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
      if RadioGroup1.ItemIndex=2 then
           sql.Add('    and CLZLTEST.PASS=1' );
      if RadioGroup1.ItemIndex=3 then
           sql.Add('    and CLZLTEST.FAIL=1' );
      if RadioGroup1.ItemIndex=4 then
           sql.Add('    and CLZLTEST.Limited=1' );
      if length(cbb1.Text) > 0 then
           sql.add(' and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
      if length(cbb2.Text) > 0 then
           sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');

      sql.add(' group by ypzls.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.Guarantee,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID');
      sql.Add(' ,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time,CLZLTEST.FDRemark');
      active:=true;
    end;
    if eof and (edit6.Text<>'') and (edit1.Text='') and (Cmb_Stage.Text='') and (edit3.Text='') and (edit4.Text='') and (edit5.Text='') and (edit7.Text='') then  //樣品單子件卻無採購紀錄者
    begin
      active:=false;
      sql.Clear;
      sql.add('select CLZHZL.CLDH1 as clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,');
      sql.add('       CLZLTEST.Guarantee,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''3'' as srtype,CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time');
      sql.add('       ,CLZLTEST.FDRemark,CASE WHEN (SELECT ISNULL(COUNT(*),0) from ZLZLS2 ');
      sql.add('                   WHERE LEFT(ZLZLS2.ZLBH,1)=''A'' AND ZLZLS2.CLBH=CLZHZL.CLDH1 ');
      sql.add('                  )>0 THEN CAST(1 as bit) ELSE CAST(0 as bit) END Prod      ');
      sql.add(' from ypzls ');
      sql.add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh ');
      sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
      sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.add(' left join CLZL  on CLZl.CLDH=CLZHZL.CLDH1 ');
      sql.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH ');
      sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
      sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST  GROUP BY CLZLTEST.cldh ) CLZLTEST_time on CLZHZL.CLDH1=CLZLTEST_time.cldh ');
      sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
      sql.add(' where 1=1  ');
      if   edit5.Text<>'' then
           sql.add('  and  kfxxzl.article='+''''+edit5.Text+'''');
      sql.add(' and CLZHZL.CLDH1='+''''+edit6.Text+'''');
      if   edit3.Text<>'' then
           sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
      if   edit4.Text<>'' then
           sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
      if   edit1.Text<>'' then
           sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
      if   Cmb_Stage.Text<>'' then
           sql.add(' and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
      if length(edit7.Text) > 0 then
           sql.Add('    and kfxxzl.FD='+''''+edit7.Text+'''' );
      if RadioGroup1.ItemIndex=0 then
           sql.Add('    and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
      if RadioGroup1.ItemIndex=1 then
           sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
      if RadioGroup1.ItemIndex=2 then
           sql.Add('    and CLZLTEST.PASS=1' );
      if RadioGroup1.ItemIndex=3 then
           sql.Add('    and CLZLTEST.FAIL=1' );
      if RadioGroup1.ItemIndex=4 then
           sql.Add('    and CLZLTEST.Limited=1' );
      if length(cbb1.Text) > 0 then
           sql.add(' and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
      if length(cbb2.Text) > 0 then
           sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');

      sql.add(' group by CLZHZL.CLDH1,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLZLTEST.Guarantee,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,CLZLTEST.USERDATE,CLZLTEST.USERID');
      sql.Add(' ,FDSentDate,FormCode,SentDate,TestReportCode,TestReportDate,CLZLTEST.time,CLZLTEST.FDRemark');
      active:=true;
    end;
    if eof and (edit6.Text<>'') and (edit1.Text='') and (Cmb_Stage.Text='') and (edit3.Text='') and (edit4.Text='') and (edit5.Text='') and (edit7.Text='') then  //無樣品單子也無採購紀錄者
    begin
      active:=false;
      sql.Clear;
      sql.add('select CLZL.CLDH as clbh,CLZL.YWPM,CLZL.DWBH,CLZLTEST.supplier as ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,');
      sql.add('       CLZLTEST.Guarantee,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''4'' as srtype,CLZLTEST.USERDATE,CLZLTEST.USERID,CLZLTEST.FDSentDate,CLZLTEST.FormCode,CLZLTEST.SentDate,CLZLTEST.TestReportCode,CLZLTEST.TestReportDate,CLZLTEST.time');
      sql.add('       ,CLZLTEST.FDRemark,CASE WHEN (SELECT ISNULL(COUNT(*),0) from ZLZLS2 ');
      sql.add('                   WHERE LEFT(ZLZLS2.ZLBH,1)=''A'' AND ZLZLS2.CLBH=CLZL.CLDH ');
      sql.add('                  )>0 THEN CAST(1 as bit) ELSE CAST(0 as bit) END Prod      ');
      sql.add(' from CLZL ');
      sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
      sql.Add(' left join (select CLZLTEST.cldh,MAX(CLZLTEST.time) AS time from CLZLTEST GROUP BY CLZLTEST.cldh ) CLZLTEST_time on CLZL.CLDH=CLZLTEST_time.cldh ');
      sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH and CLZLTEST.time=CLZLTEST_time.time ');
      sql.add(' where 1=1  ');
      sql.add(' and CLZL.CLDH='+''''+edit6.Text+'''');
      if RadioGroup1.ItemIndex=0 then
           sql.Add('    and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
      if RadioGroup1.ItemIndex=1 then
           sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
      if RadioGroup1.ItemIndex=2 then
           sql.Add('    and CLZLTEST.PASS=1' );
      if RadioGroup1.ItemIndex=3 then
           sql.Add('    and CLZLTEST.FAIL=1' );
      if RadioGroup1.ItemIndex=4 then
           sql.Add('    and CLZLTEST.Limited=1' );
      active:=true;
    end;
    if not query1.Eof then   //當有資料時,才可以去抓取相關的Article資料和Report資料
    begin

      with qry_article do
      begin
        sql.Clear;
        sql.Add('    select kfxxzl.jijie,ypzl.article,zszl.zsywjc,kfxxzl.FD,kfxxzl.DevType,kfxxzl.Category,DEVCODE,kfxxzl.GENDER,BWZL.ywsm BWMC from ypzls');
        sql.Add('    left join ypzl on ypzl.ypdh=ypzls.ypdh');
        sql.Add('    LEFT JOIN BWZL ON ypzls.BWBH=BWZL.bwdh  ');
        sql.Add('    left join zszl on zszl.zsdh=ypzls.csbh');
        sql.Add('    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
        sql.Add('    where ypzls.clbh=:clbh');
        if length(edit1.Text) > 0 then
           sql.Add('       and kfxxzl.jijie='+''''+edit1.Text+'''');
        if length(Cmb_Stage.Text) > 0 then
          sql.Add('        and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');
        sql.Add('    union all');
        sql.Add('    select kfxxzl.jijie,ypzl.article,zszl.zsywjc,kfxxzl.FD,kfxxzl.DevType,kfxxzl.Category,DEVCODE,kfxxzl.GENDER,BWZL.ywsm BWMC from ypzls');
        sql.Add('    INNER JOIN CLZHZL ON YPZLS.CLBH=CLZHZL.cldh');
        sql.Add('    left join ypzl on ypzl.ypdh=ypzls.ypdh');
        sql.Add('    LEFT JOIN BWZL ON ypzls.BWBH=BWZL.bwdh  ');
        sql.Add('    left join zszl on zszl.zsdh=CLZHZL.ZSDH');
        sql.Add('    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
        sql.Add('    where CLZHZL.CLDH1=:clbh');
        if length(edit1.Text) > 0 then
           sql.Add('       and kfxxzl.jijie='+''''+edit1.Text+'''');
        if length(Cmb_Stage.Text) > 0 then
          sql.Add('        and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');

      end;

      //---------------------All Article export to excel------------------------

      with query2 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('SELECT DISTINCT * FROM (');
          sql.Add('SELECT distinct ypzls.CLBH,ypzl.ARTICLE,KFxxzl.FD');
          sql.Add('FROM ypzls');
          sql.Add('		LEFT JOIN ypzl on ypzls.YPDH=ypzl.YPDH');
          sql.Add('		LEFT JOIN KFXXZL ON KFXXZL.xiexing=ypzl.xiexing and KFXXZL.shehao=ypzl.shehao');
          sql.Add('WHERE ypzls.clbh=:clbh ');
          if length(edit1.Text) > 0 then
             sql.Add('       and kfxxzl.jijie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('        and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');

          sql.Add('union ALL');
          sql.Add('SELECT distinct CLZHZL.CLDH1,ypzl.Article,kfxxzl.FD');
          sql.Add('from ypzls');
          sql.Add('		INNER JOIN CLZHZL ON YPZLS.CLBH=CLZHZL.cldh');
          sql.Add('		left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('		left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
          sql.Add('WHERE CLZHZL.CLDH1=:clbh ');
          if length(edit1.Text) > 0 then
             sql.Add('       and kfxxzl.jijie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('        and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');
          sql.Add(')a');
      end;

      //---------------------All FD Name export to excel------------------------

      with query3 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('SELECT DISTINCT * FROM (');
          sql.Add('SELECT distinct ypzls.CLBH,kfxxzl.FD');
          sql.Add('FROM ypzls');
          sql.Add('		LEFT JOIN ypzl on ypzls.YPDH=ypzl.YPDH');
          sql.Add('		LEFT JOIN KFXXZL ON KFXXZL.xiexing=ypzl.xiexing and KFXXZL.shehao=ypzl.shehao');
          sql.Add('WHERE ypzls.clbh=:clbh ');
          if length(edit1.Text) > 0 then
             sql.Add('       and kfxxzl.jijie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('        and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');

          sql.Add('union ALL');
          sql.Add('SELECT distinct CLZHZL.CLDH1,kfxxzl.FD');
          sql.Add('from ypzls');
          sql.Add('		INNER JOIN CLZHZL ON YPZLS.CLBH=CLZHZL.cldh');
          sql.Add('		left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('		left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
          sql.Add('WHERE CLZHZL.CLDH1=:clbh ');
          if length(edit1.Text) > 0 then
             sql.Add('       and kfxxzl.jijie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('        and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');
          sql.Add(')a');
      end;
      memo1.text:=sql.text;
      //------------------------------------------------------------------------
      query2.active:=true;
      query3.active:=true;
      Qry_CLZLTEST.Active:=true;
      qry_article.Active:=true;    //ALL ARTICLE
      if Chk_Production.Checked then
         Qry_Production.Active:=true;
      if chk_TestReport.Checked then
         Qry_TestReport.Active:=true;

    end;

  end;



end;


procedure TMaterialTestFD.FormCreate(Sender: TObject);
begin
// DTP2.Datetime:=Now();
// DTP1.Datetime:=Now()-30;
with qry4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
pgc1.ActivePageIndex:=0;

end;

procedure TMaterialTestFD.Query1CalcFields(DataSet: TDataSet);
begin

if CheckBox1.Checked=false then
  exit;

if  Query1.FieldByName('start').Value<>'' then
  begin
    with Qry_Cal do
      begin
       active:=false;
       sql.Clear;
       sql.add('select isnull(cllbzlss.nrywsm,'' '') as nrywsm from cllbzlss,CLZL ');
       sql.add('where CLZL.CLDH='+''''+Query1.FieldByName('CLBH').Value+'''');
       sql.add(' and cllbzlss.Nrdh=substring(CLZL.clbm,'+ Query1.FieldByName('start').Value +','+'4'+')');
       active:=true;
       if  Qry_Cal.RecordCount>0 then
         begin
           Query1.FieldByName('color_').Value:=Qry_Cal.FieldByName('nrywsm').Value ;
         end;
       active:=false;
      end;
  end;
// IF (XXZLS.FieldByName('RKusprice').value>0) and (XXZLS.FieldByName('CLSL').value>0) THEN
//    XXZLS.FieldByName('cost_').value:=trunc(XXZLS.FieldByName('CLSL').value*XXZLS.FieldByName('RKusprice').value*10000+0.5)/10000;
// IF (XXZLS.FieldByName('RKvnprice').value>0) and (XXZLS.FieldByName('CLSL').value>0)  THEN
//     XXZLS.FieldByName('cost_').value:=trunc(XXZLS.FieldByName('CLSL').value*XXZLS.FieldByName('RKvnprice').value/17000*10000+0.5)/10000;




end;

procedure TMaterialTestFD.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  if   Query1.Fieldbyname('srtype').AsString ='2'   then //代表沒買的母件
//       DBGrid1.canvas.font.color:=clblue;
//  if   Query1.Fieldbyname('srtype').AsString ='3'   then //代表沒買的子件
//       DBGrid1.canvas.font.color:=clFuchsia;
//  if   Query1.Fieldbyname('srtype').AsString ='4'   then //代表沒買的其他件
//       DBGrid1.canvas.font.color:=clAqua;
  if   Query1.Fieldbyname('fail').value = true   then //代表Fail
       DBGrid1.canvas.font.color:=clRed;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TMaterialTestFD.S1Click(Sender: TObject);
begin
if query1.Active then
  begin
    Query1.RequestLive:=true;
    Query1.CachedUpdates:=true;
    DBGrid1.Columns[3].ReadOnly:=false;
    DBGrid1.Columns[10].ReadOnly:=false;
    DBGrid1.Columns[15].ReadOnly:=false;
    DBGrid1.Columns[22].ReadOnly:=false;
    DBGrid1.columns[3].ButtonStyle:=cbsAuto;
    s1.Enabled:=false;
    S2.enabled:=true;
    S3.enabled:=true;
    qry_article.Active:=FALSE;
    Qry_Production.Active:=FALSE;
    Qry_TestReport.Active:=FALSE;
  end;
end;

procedure TMaterialTestFD.S2Click(Sender: TObject);
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
           // if (fieldbyname('FDSentDate').IsNull) then   --
           //   begin
           //     with qry4 do
           //     begin
           //       active:=false;
           //       sql.Clear;
           //       sql.Add(' update clzltest set ');
           //       sql.Add(' FDSentDate=null');
           //       sql.Add(' where cldh = '''+query1.fieldbyname('CLBH').AsString+'''');
           //       execsql;
           //     end;
            //  end
            //else  --
            //  begin  --
                with qry4 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select * from clzltest where cldh = '''+query1.fieldbyname('CLBH').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert clzltest (CLDH,FormCode,PDMCODE,Guarantee,time');
                    if not query1.fieldbyname('FDSentDate').IsNull then
                      sql.Add(',FDsentdate');
                    sql.Add(') values (');
                    sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('FormCode').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('PDMCODE').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('Guarantee').AsString+'''');
                    sql.Add(',''1'' ');
                    if not query1.fieldbyname('FDSentDate').IsNull then
                      sql.Add(','''+query1.fieldbyname('FDSentDate').AsString+'''');
                    sql.Add(')');
                    execsql;
                  end
                  else
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update clzltest set ');
                    if query1.fieldbyname('FDSentDate').IsNull then
                       sql.Add(' FDSentDate=null')
                       else
                       sql.Add(' FDSentDate='''+query1.fieldbyname('FDSentDate').AsString+'''');
                    sql.Add(' ,PDMCODE='''+query1.fieldbyname('PDMCODE').AsString+'''');
                    sql.Add(' ,Guarantee='''+query1.fieldbyname('Guarantee').AsString+''''); 
                    sql.Add(' ,FDRemark='''+query1.fieldbyname('FDRemark').AsString+''''); 
                    sql.Add(' where cldh = '''+query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add(' and  time = '''+query1.fieldbyname('time').AsString+'''');
                    execsql;
                  end;
                end;
              //end;  --
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  s1.Enabled:=true;
  S2.enabled:=false;
  S3.Enabled:=false;
  DBGrid1.Columns[3].ReadOnly:=true;
  DBGrid1.Columns[10].ReadOnly:=true;
  DBGrid1.Columns[15].ReadOnly:=true;
  DBGrid1.Columns[22].ReadOnly:=true;
  DBGrid1.columns[3].ButtonStyle:=cbsnone;
  qry_article.Active:=true;
  Qry_Production.Active:=true;
  Qry_TestReport.Active:=true;
end;

procedure TMaterialTestFD.S3Click(Sender: TObject);
begin
if query1.CachedUpdates then
  begin
    query1.Active:=false;
    query1.CachedUpdates:=false;
    query1.RequestLive:=false;
    s1.Enabled:=true;
    S2.Enabled:=false;
    S3.enabled:=false;
    DBGrid1.Columns[3].ReadOnly:=true;
    DBGrid1.Columns[9].ReadOnly:=true;
    DBGrid1.Columns[14].ReadOnly:=true;
    DBGrid1.columns[3].ButtonStyle:=cbsnone;    
    query1.Active:=true;
    qry_article.Active:=true;
    Qry_Production.Active:=true;
    Qry_TestReport.Active:=true;
  end;
end;

procedure TMaterialTestFD.Query1UNDERTESTChange(Sender: TField);
begin
  if  Query1.fieldbyname('UNDERTEST').Value=true then
     begin
       Query1.fieldbyname('PASS').Value:=false;
       Query1.fieldbyname('FAIL').Value:=false;
     end;

end;

procedure TMaterialTestFD.Query1PASSChange(Sender: TField);
begin
  if  Query1.fieldbyname('PASS').Value=true then
     begin
       Query1.fieldbyname('UNDERTEST').Value:=false;
       Query1.fieldbyname('FAIL').Value:=false;
     end;
end;

procedure TMaterialTestFD.Query1FAILChange(Sender: TField);
begin
  if  Query1.fieldbyname('FAIL').Value=true then
     begin
       Query1.fieldbyname('UNDERTEST').Value:=false;
       Query1.fieldbyname('PASS').Value:=false;
     end;

end;

procedure TMaterialTestFD.S4Click(Sender: TObject);
var
      aWorkBook   : _Workbook;
      aSheet      : Variant;
 //     xlsFileName:string;
      i,j,LCID:integer;
begin
  edt1.Text := '';
  if  Query1.FieldByName('ZSYWJC').AsString = '' then
  begin
    MatlTestFD_Supplier:=TMatlTestFD_Supplier.create(self);
    MatlTestFD_Supplier.ShowModal;
    if edt1.Text <> '' then
    with qry4 do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' select * from clzltest where cldh = '''+query1.fieldbyname('CLBH').AsString+'''');
      active:=true;
      if eof then
      begin
        active:=false;
        sql.Clear;
        sql.Add(' insert clzltest (CLDH,FormCode');
        if not query1.fieldbyname('SentDate').IsNull then
          sql.Add(',sentdate');
        sql.Add(',UNDERTEST,PASS,FAIL,TestReportCode');
        if not query1.fieldbyname('TestReportDate').IsNull then
          sql.Add(',TestReportDate');
        sql.Add(',REMARK,PDMCODE,Supplier,USERDATE,USERID) values (');
        sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
        sql.Add(','''+query1.fieldbyname('FormCode').AsString+'''');
        if not query1.fieldbyname('SentDate').IsNull then
          sql.Add(','''+query1.fieldbyname('SentDate').AsString+'''');
        sql.Add(','''+query1.fieldbyname('UNDERTEST').AsString+'''');
        sql.Add(','''+query1.fieldbyname('PASS').AsString+'''');
        sql.Add(','''+query1.fieldbyname('FAIL').AsString+'''');
        sql.Add(','''+query1.fieldbyname('TestReportCode').AsString+'''');
        if not query1.fieldbyname('TestReportDate').IsNull then
          sql.Add(','''+query1.fieldbyname('TestReportDate').AsString+'''');
        sql.Add(','''+query1.fieldbyname('REMARK').AsString+'''');
        sql.Add(','''+query1.fieldbyname('PDMCODE').AsString+'''');
        sql.Add(','''+edt1.Text+'''');
        sql.Add(','''+formatdatetime('yyyy/MM/dd',date)+'''');
        sql.Add(','''+main.edit1.Text+''')');
        execsql;
      end
      else
      begin
        active:=false;
        sql.Clear;
        sql.Add(' update clzltest set ');
        sql.Add(' FormCode='''+query1.fieldbyname('FormCode').AsString+'''');
        if query1.fieldbyname('SentDate').IsNull then
          sql.Add(' ,SentDate=null')
        else
          sql.Add(' ,SentDate='''+query1.fieldbyname('SentDate').AsString+'''');
        sql.Add(' ,UNDERTEST='''+query1.fieldbyname('UNDERTEST').AsString+'''');
        sql.Add(' ,PASS='''+query1.fieldbyname('PASS').AsString+'''');
        sql.Add(' ,FAIL='''+query1.fieldbyname('FAIL').AsString+'''');
        sql.Add(' ,TestReportCode='''+query1.fieldbyname('TestReportCode').AsString+'''');
        if query1.fieldbyname('TestReportDate').IsNull then
          sql.Add(' ,TestReportDate=null')
        else
          sql.Add(' ,TestReportDate='''+query1.fieldbyname('TestReportDate').AsString+'''');
        sql.Add(' ,REMARK='''+query1.fieldbyname('REMARK').AsString+'''');
        sql.Add(' ,PDMCODE='''+query1.fieldbyname('PDMCODE').AsString+'''');
        sql.Add(' ,Supplier='''+edt1.Text+'''');
        sql.Add(' ,USERDATE='''+formatdatetime('yyyy/MM/dd',date)+'''');
        sql.Add(' ,USERID='''+main.edit1.Text+'''');
        sql.Add(' where cldh = '''+query1.fieldbyname('CLBH').AsString+'''');
        execsql;
      end;
    end;
  end
  else
    edt1.Text := Query1.FieldByName('ZSYWJC').AsString;
  if edt1.Text <> '' then
  begin
     if query1.active  then
       begin
          try
            ExcelApplication1.Connect;
//            LCID := GetUserDefaultLCID();
            LCID := 1033; //en-us
            aWorkBook := ExcelApplication1.Workbooks.Add(EmptyParam,LCID);
            aSheet := aWorkBook.Sheets[1] as _WorkSheet;
            aSheet.PageSetUp.PaperSize:=xlPaperA4; //Paper type A4
            aSheet.PageSetUp.LeftMargin:=45; //0.675" Left Margin
            aSheet.PageSetUp.TopMargin:=18; //0.25"
            aSheet.PageSetUp.BottomMargin:=45; //0.675"
            aSheet.PageSetUp.Orientation:=1; //縱向打印（landscape）=2, portrait=1
            aSheet.Columns[1].ColumnWidth := 13;
            aSheet.Columns[2].ColumnWidth := 29;
            aSheet.Columns[3].ColumnWidth := 13;
            aSheet.Columns[4].ColumnWidth := 29;
            aSheet.Range['A1:D17'].RowHeight := 1/0.035; // 1厘米
            aSheet.Range['A1:D17'].font.name := 'Arial';
            aSheet.Range['A1:D17'].VerticalAlignment:= xlCenter;
            asheet.range['A1:D1'].merge;
            aSheet.Cells.Item[1,1].value:='Material Testing Application Form';
            aSheet.Cells.item[1,1].font.size:='14';
            aSheet.Cells.item[1,1].font.bold:=true;
            aSheet.Cells.item[1,1].HorizontalAlignment:= xlCenter;
            aSheet.Cells.Item[2,1].value:='Form code';
            aSheet.Cells.Item[2,2].Interior.Colorindex:=15;
            aSheet.Cells.Item[2,3].value:='LYV Material ID';
            aSheet.Cells.Item[2,3].font.size:='10';
            aSheet.Cells.Item[2,4].value:= Query1.FieldByName('CLBH').Value;
            aSheet.Cells.Item[3,1].value:='Test report'+chr(13)+chr(10)+'number';
            aSheet.Cells.Item[3,1].font.size:='10';
            aSheet.Cells.Item[3,2].Interior.Colorindex:=15;
            aSheet.Cells.Item[3,3].value:='PDM Material ID';
            aSheet.Cells.Item[3,3].font.size:='9';
            aSheet.Cells.Item[3,4].value:= Query1.FieldByName('PDMCODE').Value;
            aSheet.Cells.Item[3,4].HorizontalAlignment:= xlLeft;
            aSheet.Cells.Item[4,1].value:='Request section';
            aSheet.Cells.Item[4,1].font.size:='10';
            aSheet.Cells.Item[4,2].value:='Development';
            aSheet.Cells.Item[4,2].font.size:='12';
            aSheet.Cells.Item[4,3].value:='Application date';
            aSheet.Cells.Item[4,3].font.size:='10';
            aSheet.Cells.Item[4,4].value:= date;
            aSheet.Cells.Item[4,4].HorizontalAlignment:= xlLeft;
            aSheet.Cells.Item[5,1].value:='Material name';
            aSheet.Cells.Item[5,1].font.size:='10';
            asheet.range['B5:D5'].merge;
            aSheet.Rows[5].RowHeight := 2/0.035; // 2厘米
            aSheet.Cells.Item[5,2].WrapText := True;
            aSheet.Cells.Item[5,2].value:= Query1.FieldByName('YWPM').Value;
            aSheet.Cells.Item[6,1].value:='Material color';
            aSheet.Cells.Item[6,1].font.size:='10';
            if  Query1.FieldByName('start').Value<>'' then
            begin
              with Qry_Cal do
                begin
                 active:=false;
                 sql.Clear;
                 sql.add('select isnull(cllbzlss.nrywsm,'' '') as nrywsm from cllbzlss,CLZL ');
                 sql.add('where CLZL.CLDH='+''''+Query1.FieldByName('CLBH').Value+'''');
                 sql.add(' and cllbzlss.Nrdh=substring(CLZL.clbm,'+ Query1.FieldByName('start').Value +','+'4'+')');
                 active:=true;
                 if  Qry_Cal.RecordCount>0 then
                   begin
                     aSheet.Cells.Item[6,2].value:=Qry_Cal.FieldByName('nrywsm').Value ;
                   end;
                 active:=false;
                end;
            end;
            aSheet.Cells.Item[6,2].font.size:='10';
            aSheet.Cells.Item[6,3].value:='Material supplier';
            aSheet.Cells.Item[6,3].font.size:='10';
            aSheet.Cells.Item[6,4].value:= edt1.Text;
            aSheet.Rows[7].RowHeight := 6/0.035; // 6厘米
            aSheet.Cells.Item[7,1].value:='Model name';
            aSheet.Cells.Item[7,1].font.size:='12';
            aSheet.Cells.Item[7,2].WrapText := True;
            with Qry3 do
              begin
               active:=false;
               sql.Clear;
               sql.Add(' select * from (');
               sql.Add(' select kfxxzl.xieming from ypzls');
               sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
               sql.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
               sql.Add(' where ypzls.clbh='''+Query1.FieldByName('CLBH').AsString+'''');
               sql.Add(' and kfxxzl.jijie='''+edit1.Text+'''');
               if length(edit7.Text) > 0 then
                  sql.Add(' and kfxxzl.FD ='''+edit7.Text+'''');
               if length(Cmb_Stage.Text) > 0 then
                  sql.Add(' and ypzl.kfjd='''+Cmb_Stage.Text+'''');
                sql.Add(' union all');
                sql.Add(' select kfxxzl.xieming from ypzls');
                sql.Add(' INNER  JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.cldh');
                sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
                sql.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
               sql.Add(' where CLZHZL.cldh1='''+Query1.FieldByName('CLBH').AsString+'''');
               sql.Add(' and kfxxzl.jijie='''+edit1.Text+'''');
               if length(edit7.Text) > 0 then
                  sql.Add(' and kfxxzl.FD ='''+edit7.Text+'''');
               if length(Cmb_Stage.Text) > 0 then
                  sql.Add(' and ypzl.kfjd='''+Cmb_Stage.Text+'''');
               sql.Add('             ) ca');
               sql.Add(' group by xieming');
               active:=true;
               if not eof then
               begin
                 aSheet.Cells.Item[7,2].value:=FieldByName('xieming').AsString ;
                 next;
                 while not eof do
                   begin
                     aSheet.Cells.Item[7,2].value:=aSheet.Cells.Item[7,2].value+'/ '+FieldByName('xieming').AsString ;
                     next;
                   end;
               end;
               active:=false;
              end;
            aSheet.Cells.Item[7,3].value:='Article';
            aSheet.Cells.Item[7,3].font.size:='12';
            aSheet.Cells.Item[7,4].WrapText := True;
            with Qry3 do
              begin
               active:=false;
               sql.Clear;
               sql.Add(' select * from (');
               sql.Add(' select ypzl.article from ypzls');
               sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
               sql.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzlxxzlkf.shehao');
               sql.Add(' where ypzls.clbh='''+Query1.FieldByName('CLBH').AsString+'''');
               sql.Add(' and kfxxzl.jijie='''+edit1.Text+'''');
               if length(edit7.Text) > 0 then
                  sql.Add(' and kfxxzl.FD ='''+edit7.Text+'''');
               if length(Cmb_Stage.Text) > 0 then
                  sql.Add(' and ypzl.kfjd='''+Cmb_Stage.Text+'''');
                sql.Add(' union all');
                sql.Add(' select ypzl.article from ypzls');
                sql.Add(' INNER  JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.cldh');
                sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
                sql.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
               sql.Add(' where CLZHZL.cldh1='''+Query1.FieldByName('CLBH').AsString+'''');
               sql.Add(' and kfxxzl.jijie='''+edit1.Text+'''');
               if length(edit7.Text) > 0 then
                  sql.Add(' and kfxxzl.FD ='''+edit7.Text+'''');
               if length(Cmb_Stage.Text) > 0 then
                  sql.Add(' and ypzl.kfjd='''+Cmb_Stage.Text+'''');
               sql.Add('             ) ca');
               sql.Add(' group by article');
               active:=true;
               if not eof then
               begin
                 aSheet.Cells.Item[7,4].value:=FieldByName('article').AsString ;
                 next;
                 while not eof do
                   begin
                     aSheet.Cells.Item[7,4].value:=aSheet.Cells.Item[7,4].value+'/ '+FieldByName('article').AsString ;
                     next;
                   end;
               end;
               active:=false;
              end;
            aSheet.Cells.Item[8,1].value:='Season';
            aSheet.Cells.Item[8,1].font.size:='12';
            aSheet.Cells.Item[8,2].value:= edit1.Text+' '+Cmb_Stage.Text;
            aSheet.Cells.Item[8,3].value:='Quantity';
            aSheet.Cells.Item[8,3].font.size:='12';
            aSheet.Cells.Item[9,1].value:='Parts';
            aSheet.Cells.Item[9,1].font.size:='12';
            asheet.range['B9:D9'].merge;
            aSheet.Cells.Item[9,2].WrapText := True;
            with Qry3 do
              begin
               active:=false;
               sql.Clear;
               sql.Add(' select * from (');
               sql.Add(' select bwzlgroup.labgroup from ypzls');
               sql.Add(' left join bwzlgroup on bwzlgroup.bwdh=ypzls.bwbh');
               sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
               sql.Add(' left join kfxxzl on kfxxzl.xiexing=ypzls.xiexing and kfxxzl.shehao=ypzls.shehao');
               sql.Add(' where ypzls.clbh='''+Query1.FieldByName('CLBH').AsString+'''');
               sql.Add(' and kfxxzl.jijie='''+edit1.Text+'''');
               if length(edit7.Text) > 0 then
                  sql.Add(' and KFXXZL.FD ='''+edit7.Text+'''');
               if length(Cmb_Stage.Text) > 0 then
                  sql.Add(' and ypzl.kfjd='''+Cmb_Stage.Text+'''');
                sql.Add(' union all');
                sql.Add(' select bwzlgroup.labgroup from ypzls');
                sql.Add(' left join bwzlgroup on bwzlgroup.bwdh=ypzls.bwbh');
                sql.Add(' INNER  JOIN CLZHZL ON YPZLS.CLBH = CLZHZL.cldh');
                sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
                sql.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
               sql.Add(' where CLZHZL.cldh1='''+Query1.FieldByName('CLBH').AsString+'''');
               sql.Add(' and kfxxzl.jijie='''+edit1.Text+'''');
               if length(edit7.Text) > 0 then
                  sql.Add(' and kfxxzl.FD ='''+edit7.Text+'''');
               if length(Cmb_Stage.Text) > 0 then
                  sql.Add(' and ypzl.kfjd='''+Cmb_Stage.Text+'''');
               sql.Add('             ) ca');
               sql.Add(' group by labgroup');
               active:=true;
               if not eof then
               begin
                 aSheet.Cells.Item[9,2].value:=FieldByName('labgroup').AsString ;
                 next;
                 while not eof do
                   begin
                     aSheet.Cells.Item[9,2].value:=aSheet.Cells.Item[9,2].value+'/ '+FieldByName('labgroup').AsString ;
                     next;
                   end;
               end;
               active:=false;
              end;
            aSheet.Rows[9].RowHeight := 2/0.035; // 2厘米
            aSheet.Cells.Item[10,1].value:='Request for'+chr(13)+chr(10)+'testing';
            aSheet.Cells.Item[10,1].font.size:='9';
            asheet.range['B10:D10'].merge;
            aSheet.Cells.Item[10,2].value:= '@Full testing              _________________ ';
            aSheet.Cells.Item[11,1].value:='Remark';
            aSheet.Cells.Item[11,1].font.size:='12';
            asheet.range['B11:D11'].merge;
            aSheet.Rows[11].RowHeight := 2/0.035; // 2厘米
            asheet.range['A12:D12'].merge;
            aSheet.Range['A12:D12'].Borders[1].Weight := 1;
            aSheet.Range['A12:D12'].Borders[2].Weight := 1;
            aSheet.Cells.Item[12,1].value:='The blank as below will be filled in by LAB';
            aSheet.Cells.item[12,1].font.size:='14';
            aSheet.Cells.item[12,1].font.bold:=true;
            aSheet.Cells.item[12,1].HorizontalAlignment:= xlCenter;
            aSheet.Cells.Item[12,1].Interior.Colorindex:=15;
            aSheet.Cells.Item[13,1].value:='LYV Material ID';
            aSheet.Cells.Item[13,1].font.size:='10';
            aSheet.Cells.Item[13,2].value:= Query1.FieldByName('CLBH').Value;
            aSheet.Cells.Item[13,3].value:='Application date';
            aSheet.Cells.Item[13,3].font.size:='10';
            aSheet.Cells.Item[13,4].value:= date;
            aSheet.Cells.Item[13,4].HorizontalAlignment:= xlLeft;
            aSheet.Cells.Item[14,1].value:='Material name';
            aSheet.Cells.Item[14,1].font.size:='10';
            asheet.range['B14:D14'].merge;
            aSheet.Rows[14].RowHeight := 2/0.035; // 2厘米
            aSheet.Cells.Item[14,2].WrapText := True;
            aSheet.Cells.Item[14,2].value:= Query1.FieldByName('YWPM').Value;
            aSheet.Cells.Item[15,1].value:='Form code';
            aSheet.Cells.Item[15,1].font.size:='12';
            aSheet.Cells.Item[15,3].value:='Confirm by LAB';
            aSheet.Cells.Item[15,3].font.size:='10';
            aSheet.Cells.Item[16,1].value:='Test finish date';
            aSheet.Cells.Item[16,1].font.size:='10';
            asheet.range['B16:D16'].merge;
            aSheet.Cells.Item[17,1].value:='Remark';
            aSheet.Cells.Item[17,1].font.size:='12';
            asheet.range['B17:D17'].merge;
            aSheet.Rows[17].RowHeight := 2/0.035; // 2厘米
            for i:=1 to 3 do
               aSheet.Range['A1:D17'].Borders[i].Weight := 2;
            aSheet.Range['A17:D17'].Borders[4].Weight := 2;
            ExcelApplication1.Visible[LCID]:=True;
            ExcelApplication1.Disconnect;
            showmessage('Succeed');
          except
            on   F:Exception   do
              showmessage(F.Message);
          end;
       end;
  end;
end;

procedure TMaterialTestFD.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  target := 'ts1/ts2/ts3';
  case Trunc((Pos(pgc1.ActivePage.Name, target) + 3) / 3) of
    1 :   if dbg2 then
            tdbgh := DBGrid1
          else
            tdbgh := DBGrid1;
    2 : if dbg2 then
            tdbgh := DBGridEh1
          else
            tdbgh := dbgrdh1;
    3 :  tdbgh := DBGridEh2
  else
      tdbgh := DBGrid1;
  end;

  if pgc1.ActivePage.Name='TS1' THEN
     tdbgh := DBGrid1;
  if pgc1.ActivePage.Name='TS2' THEN
     tdbgh := DBGridEh1;
  if pgc1.ActivePage.Name='TS3' THEN
     tdbgh := DBGridEh2;


  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
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
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TMaterialTestFD.DBGridEh1CellClick(Column: TColumnEh);
begin
   dbg2 := true;
end;

procedure TMaterialTestFD.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if   Qry2.Fieldbyname('srtype').AsString ='2'   then //代表沒買的母件
       DBGridEh1.canvas.font.color:=clblue;
  if   Qry2.Fieldbyname('srtype').AsString ='3'   then //代表沒買的子件
       DBGridEh1.canvas.font.color:=clFuchsia;
  if   Qry2.Fieldbyname('srtype').AsString ='4'   then //代表沒買的其他件
       DBGridEh1.canvas.font.color:=clAqua;
  if   Qry2.Fieldbyname('fail').value = true   then //代表Fail
       DBGridEh1.canvas.font.color:=clRed;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);

// 參數是傳遞的流和壓縮方式

var

   SourceStream: TCompressionStream;

   DestStream: TMemoryStream;

   Count: int64; //注意，此處修改了,原來是int

begin

   //獲得流的原始尺寸

   Count := CompressedStream.Size;

   DestStream := TMemoryStream.Create;

   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);

   try

      //SourceStream中保存著原始的流

      CompressedStream.SaveToStream(SourceStream);

      //將原始流進行壓縮， DestStream中保存著壓縮後的流

      SourceStream.Free;

      CompressedStream.Clear;

      //寫入原始圖像的尺寸

      CompressedStream.WriteBuffer(Count, SizeOf(Count));

      //寫入經過壓縮的流

      CompressedStream.CopyFrom(DestStream, 0);

   finally

      DestStream.Free;

   end;

end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);

//參數 壓縮過的流，解壓後的流

var

   SourceStream: TDecompressionStream;

   DestStream: TMemoryStream;

   Buffer: PChar;

   Count: int64;

begin

   //從被壓縮的圖像流中讀出原始的尺寸

   CompressedStream.ReadBuffer(Count, SizeOf(Count));

   //根據尺寸大小為將要讀入的原始流分配內存塊

   GetMem(Buffer, Count);

   DestStream := TMemoryStream.Create;

   SourceStream := TDecompressionStream.Create(CompressedStream);

   try

      //將被壓縮的流解壓縮，然後存入 Buffer內存塊中

      SourceStream.ReadBuffer(Buffer^, Count);

      //將原始流保存至 DestStream流中

      DestStream.WriteBuffer(Buffer^, Count);

      DestStream.Position := 0; //復位流指針

//      DestStream.Position := length(VER_INFO);

      //從 DestStream流中載入圖像流

      UnCompressedStream.LoadFromStream(DestStream);

   finally

      FreeMem(Buffer);

      DestStream.Free;

   end;

end;


procedure TMaterialTestFD.MenuItem1Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry4 do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update CLZLTEST_REPORT set zipReport=:zipReport,file_name=:file_Name,file_Size=:file_Size,userid=:userid,userdate=:userdate ');//進行插入操作
              sql.Add(' where cldh='''+Qry_TestReport.FieldByName('cldh').AsString+''' and File_Name='''+Qry_TestReport.FieldByName('File_Name').AsString+'''');
              ParamByName('zipReport').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('file_name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('file_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('userID').Value:=main.edit1.text;
              ParamByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              //button1.OnClick(Sender);
              Qry_TestReport.active:=false;
              Qry_TestReport.active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;



procedure TMaterialTestFD.MenuItem2Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Qry_TestReport.FieldByName('File_Name').IsNull then
  begin
    savedialog1.FileName :=  Qry_TestReport.FieldByName('File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry4 do
          begin
           active:=false;
           sql.Clear;
           sql.add('select zipReport FROM CLZLTEST_REPORT ');
              sql.Add(' where cldh='''+Qry_TestReport.FieldByName('cldh').AsString+''' and Result='''+Qry_TestReport.FieldByName('Result').AsString+''' and SendDate='''+Qry_TestReport.FieldByName('SendDate').AsString+'''');
           active:=true;
          end;
         blob := TBlobStream.Create((qry4.FieldByName('zipReport') as TBlobField), bmRead);
         blob.Seek(0, soFromBeginning);
         SM := TMemoryStream.Create;
         SM.CopyFrom(blob,blob.Size);
         DM := TMemoryStream.Create;
         try
            SM.Position := 0;
            UnCompressit(sm, dm);
            dm.Position := 0;
            dm.SaveToFile(SaveDialog1.FileName);
         finally
            SM.Free;
            DM.Free;
         end;
         if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
  end;


end;

procedure TMaterialTestFD.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if   Qry_ALL.Fieldbyname('fail').value = true   then //代表Fail
       DBGridEh2.canvas.font.color:=clRed;
  DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TMaterialTestFD.S5Click(Sender: TObject);
begin
  if  Query1.fieldbyname('CLBH').AsString<>'' THEN
   begin
     if MaterialTestFD_TestData<>nil then
       begin
         MaterialTestFD_TestData.show;
       end
     else
     begin
       MaterialTestFD_TestData:=TMaterialTestFD_TestData.Create(self);
       MaterialTestFD_TestData.Show;
     end;
   end;
end;

procedure TMaterialTestFD.chk_TestReportClick(Sender: TObject);
begin
  if chk_TestReport.Checked then
     begin
       if not query1.Eof then   //當有資料時,才可以去抓取相關的Article資料和Report資料
          begin
            with Qry_TestReport do
              begin
                Active:=false;
                sql.Clear;
                sql.Add(' select cldh,Result,SendDate,USERDATE,USERID,File_Name,File_Size ');
                sql.Add(' from CLZLTEST_REPORT ');
                sql.Add(' where cldh=:clbh');
                Active:=true;
              end;
          end;
     end;
  if not chk_TestReport.Checked then
     begin
       Qry_TestReport.Active:=false;
     end;

end;

procedure TMaterialTestFD.chk_TestReportMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Save1.enabled=true then
     begin
       Messagedlg('Pls save data first !',mtwarning,[mbyes],0);
       abort;
     end;
end;

procedure TMaterialTestFD.Chk_ProductionClick(Sender: TObject);
begin
  if Chk_Production.Checked then
     begin
       Qry_Production.Active:=true;
     end;
  if not Chk_Production.Checked then
     begin
       Qry_Production.Active:=false;
     end;
end;

procedure TMaterialTestFD.BBTT2Click(Sender: TObject);
begin
  MaterialTestFD_FD:=TMaterialTestFD_FD.create(self);
  MaterialTestFD_FD.show;
end;

procedure TMaterialTestFD.Modify1Click(Sender: TObject);
begin
with Qry_TestReport do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Qry_TestReport.edit;
  end;
  DBGridEh3.columns[1].ButtonStyle:=cbsAuto;
  DBGridEh3.columns[2].ButtonStyle:=cbsAuto;
  Modify1.enabled:=false;
  Delete1.enabled:=false;
  Save1.enabled:=true;
  Cancel1.enabled:=true;
  Button1.Enabled:=false;  //不可查詢
  DBGrid1.Enabled:=false;
end;

procedure TMaterialTestFD.Button3Click(Sender: TObject);
begin
if  (length(Edit1.Text)=0)  then
   begin
     showmessage('Pls keyin Season !');
     exit ;
   end;

    //第二頁 BY ARTICLE
    qry1.active:=false;
    qry2.active:=false;
      with qry1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select kfxxzl.jijie,kfxxzl.article,kfxxzl.xieming,'''+Edit5.Text+''' as Stage,kfxxzl.FD  from kfxxzl ');
          if  length(Cmb_Stage.Text) > 0 then
            begin
              sql.Add(' left join (select  purpose as kfjd,cgzlss.zlbh as article,count(cgzlss.zlbh) as recs from cgzlss left join cgzl on cgzl.cgno=cgzlss.cgno ');
              sql.Add(' group by purpose,cgzlss.zlbh ) yl on yl.article=kfxxzl.article and yl.kfjd='''+Cmb_Stage.Text+'''');
            end;
          sql.add(' where 1=1 ');
          if  length(Edit7.Text) > 0 then
              sql.add(' and kfxxzl.FD = '''+Edit7.Text+'''');
          if  length(Edit5.Text) > 0 then
              sql.add(' and kfxxzl.article = '''+Edit5.Text+'''')
          else
            if  length(Edit1.Text) > 0 then
              sql.add(' and kfxxzl.Jijie = '''+Edit1.Text+'''');
          if  length(cbb1.Text) > 0 then
              sql.add(' and isnull(KFXXZL.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
          if  length(cbb2.Text) > 0 then
              sql.add(' and isnull(KFXXZL.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');

          //sql.add(' and KFXXZL.YN = ''N''');
          active:=true;
        end;
      if (not qry1.Eof) then
        begin
        with qry2 do
        begin
          sql.Clear;
          sql.add('select CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE, ''1'' as srtype ');
          sql.add('from CGZLSS ');
          sql.add('left join CLZL  on CLZl.CLDH=CGZLSS.CLBH ');
          sql.add('left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH ');
          sql.add('left join CGZL  on CGZl.CGNO=CGZLSS.CGNO ');
          sql.Add('left join zszl on zszl.zsdh=CGZl.ZSBH ');
          sql.add('left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
          sql.add('left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
          sql.add('where CGZL.CGLX=''6'' and CGZLSS.Qty>0  ');
          sql.add('  and  CGZLSS.ZLBH=:article ');
          if   edit6.Text<>'' then
               sql.add(' and CGZLSS.CLBH like '+''''+edit6.Text+'%'+'''');
          if   edit3.Text<>'' then
               sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
          if   edit4.Text<>'' then
               sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
          if   edit1.Text<>'' then
               sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if   Cmb_Stage.Text<>'' then
               sql.add(' and CGZLSS.Stage='+''''+Cmb_Stage.Text+'''');
          if length(edit7.Text) > 0 then
               sql.Add('    and kfxxzl.FD='+''''+edit7.Text+'''' );
          if RadioGroup1.ItemIndex=0 then
               sql.Add('    and (CLZLTEST.UNDERTEST is null OR CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS is null OR CLZLTEST.PASS=0) AND (CLZLTEST.FAIL is null OR CLZLTEST.FAIL=0)' );
          if RadioGroup1.ItemIndex=1 then
               sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
          if RadioGroup1.ItemIndex=2 then
               sql.Add('    and CLZLTEST.PASS=1' );
          if RadioGroup1.ItemIndex=3 then
               sql.Add('    and CLZLTEST.FAIL=1' );
          if RadioGroup1.ItemIndex=4 then
               sql.Add('    and CLZLTEST.Limited=1' );
          sql.Add('    and ( exists (select ypzls.clbh ');  //過濾出只有在樣品單中母件的材料,show='1'
          sql.Add('                   from ypzls ');
          sql.Add('                   left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add('                   where ypzls.clbh=CGZLSS.CLBH  ');
          if   edit1.Text<>'' then
            sql.add('                         and KFXXZL.JiJie='+''''+edit1.Text+'''');
          sql.add('                )     ');
          sql.Add('           or exists (select ypzls.clbh ');   //過濾出只有在樣品單中子件的材料,show='1'
          sql.Add('                   from ypzls ');
          sql.Add('                   INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add('                   left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add('                   where CLZHZL.CLDH1=CGZLSS.CLBH  ');
          if   edit1.Text<>'' then
          sql.add('                         and KFXXZL.JiJie='+''''+edit1.Text+'''');
          sql.add('                     )     ');
          sql.add('         )     ');
          sql.add(' group by CGZLSS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE ');
          sql.add('union all                   '); //抓出不存在採購單中的樣品單母件測試材料,show='2'
          sql.add('select ypzls.clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
          sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''2'' as srtype');
          sql.add(' from ypzls ');
          sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
          sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add(' left join CLZL  on CLZl.CLDH=ypzls.CLBH ');
          sql.Add(' left join zszl on zszl.zsdh=ypzls.cSBH ');
          sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
          sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH ');
          sql.add(' where 1=1 and clzltest.cldh is not null and ( (CLZLTEST.UNDERTEST=1) or (CLZLTEST.PASS=1) or (CLZLTEST.FAIL=1))');
          sql.add('  and  kfxxzl.article = :article');
          if   edit6.Text<>'' then
               sql.add(' and ypzls.CLBH ='+''''+edit6.Text+'''');
          if   edit3.Text<>'' then
               sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
          if   edit4.Text<>'' then
               sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
          if   edit1.Text<>'' then
               sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if   Cmb_Stage.Text<>'' then
               sql.add(' and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
          if length(edit7.Text) > 0 then
               sql.Add('    and kfxxzl.FD='+''''+edit7.Text+'''' );
          if RadioGroup1.ItemIndex=0 then
               sql.Add('    and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
          if RadioGroup1.ItemIndex=1 then
               sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
          if RadioGroup1.ItemIndex=2 then
               sql.Add('    and CLZLTEST.PASS=1' );
          if RadioGroup1.ItemIndex=3 then
               sql.Add('    and CLZLTEST.FAIL=1' );
          if RadioGroup1.ItemIndex=4 then
               sql.Add('    and CLZLTEST.Limited=1' );
          sql.Add('    and not exists (select cgzlss.clbh ');  //過濾出在有採購單的材料
          sql.Add('                   from cgzlss ');
          sql.Add('                   left join kfxxzl on kfxxzl.article=cgzlss.zlbh ');
          sql.add('                   where CGZLSS.CLBH=ypzls.clbh  ');
          if length(edit1.Text) > 0 then
             sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('                      and cgzlss.stage='+''''+Cmb_Stage.Text+'''');
          sql.add('                 )                      ');
          sql.add(' group by ypzls.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE');
          sql.add('union all                   '); //抓出不存在採購單中的樣品單子件測試材料,show='3'
          sql.add('select CLZHZL.CLDH1 as clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
          sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''3'' as srtype');
          sql.add(' from ypzls ');
          sql.add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh ');
          sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
          sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add(' left join CLZL  on CLZl.CLDH=CLZHZL.CLDH1 ');
          sql.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH ');
          sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
          sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH ');
          sql.add(' where 1=1 and clzltest.cldh is not null and ( (CLZLTEST.UNDERTEST=1) or (CLZLTEST.PASS=1) or (CLZLTEST.FAIL=1)) ');
          sql.add('  and  kfxxzl.article =:article');
          if   edit6.Text<>'' then
               sql.add(' and CLZHZL.CLDH1='+''''+edit6.Text+'''');
          if   edit3.Text<>'' then
               sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
          if   edit4.Text<>'' then
               sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
          if   edit1.Text<>'' then
               sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if   Cmb_Stage.Text<>'' then
               sql.add(' and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
          if length(edit7.Text) > 0 then
               sql.Add('    and kfxxzl.FD='+''''+edit7.Text+'''' );
          if RadioGroup1.ItemIndex=0 then
               sql.Add('    and (CLZLTEST.UNDERTEST=0) and (CLZLTEST.PASS=0) AND (CLZLTEST.FAIL=0)' );
          if RadioGroup1.ItemIndex=1 then
               sql.Add('    and CLZLTEST.UNDERTEST=1 ' );
          if RadioGroup1.ItemIndex=2 then
               sql.Add('    and CLZLTEST.PASS=1' );
          if RadioGroup1.ItemIndex=3 then
               sql.Add('    and CLZLTEST.FAIL=1' );
          if RadioGroup1.ItemIndex=4 then
               sql.Add('    and CLZLTEST.Limited=1' );
          sql.Add('    and not exists (select ypzls.clbh ');  //過濾出在樣品單中母件的材料,show='1'
          sql.Add('                   from ypzls ');
          sql.Add('                   left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add('                   where ypzls.clbh=CLZHZL.CLDH1  ');
          sql.add('  and  kfxxzl.article =:article');
          if length(edit1.Text) > 0 then
             sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('                      and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');

          sql.add('                 )                      ');
          sql.Add('    and not exists (select cgzlss.clbh ');  //過濾出在有採購單的材料
          sql.Add('                   from cgzlss ');
          sql.Add('                   left join kfxxzl on kfxxzl.article=cgzlss.zlbh ');
          sql.add('                   where CGZLSS.CLBH=CLZHZL.CLDH1  ');
          if length(edit1.Text) > 0 then
             sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('                      and cgzlss.stage='+''''+Cmb_Stage.Text+'''');
          sql.add('                 )                      ');
          sql.add(' group by CLZHZL.CLDH1,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE');
          sql.add('union all                   '); //抓出沒有測試過的中間件,show='5'
          sql.add('select CLZHZL.CLDH1 as clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
          sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''5'' as srtype');
          sql.add(' from ypzls ');
          sql.add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh ');
          sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
          sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add(' left join CLZL  on CLZl.CLDH=CLZHZL.CLDH1 ');
          sql.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH ');
          sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
          sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH ');
          sql.add(' where 1=1 and clzltest.cldh is null and  CLZHZL.SYL=0 AND  ( clzhzl.ZSDH=''V037'' OR clzhzl.ZSDH=''V066'' OR clzhzl.ZSDH=''V070'') ');
          sql.add('  and  kfxxzl.article =:article');
          if   edit6.Text<>'' then
               sql.add(' and CLZHZL.CLDH1='+''''+edit6.Text+'''');
          if   edit3.Text<>'' then
               sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
          if   edit4.Text<>'' then
               sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
          if   edit1.Text<>'' then
               sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if   Cmb_Stage.Text<>'' then
               sql.add(' and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
          if length(edit7.Text) > 0 then
               sql.Add('    and kfxxzl.FD='+''''+edit7.Text+'''' );
          sql.Add('    and not exists (select ypzls.clbh ');  //過濾出在樣品單中母件的材料,show='1'
          sql.Add('                   from ypzls ');
          sql.Add('                   left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('                   left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add('                   where ypzls.clbh=CLZHZL.CLDH1  ');
          sql.add('  and  kfxxzl.article =:article');
          if length(edit1.Text) > 0 then
             sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('                      and ypzl.kfjd='+''''+Cmb_Stage.Text+'''');

          sql.add('                 )                      ');
          sql.Add('    and not exists (select cgzlss.clbh ');  //過濾出在有採購單的材料
          sql.Add('                   from cgzlss ');
          sql.Add('                   left join kfxxzl on kfxxzl.article=cgzlss.zlbh ');
          sql.add('                   where CGZLSS.CLBH=CLZHZL.CLDH1  ');
          if length(edit1.Text) > 0 then
             sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('                      and cgzlss.stage='+''''+Cmb_Stage.Text+'''');
          sql.add('                 )                      ');
          sql.add(' group by CLZHZL.CLDH1,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE');
          sql.add('union all                   '); //抓出沒有測試過的樣品單母件印刷材料,show='7'
          sql.add('select ypzls.clbh,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,isnull(CLLBZLSVN.start,'''') as start,isnull(CLLBZLSVN.stop,'''') as stop,');
          sql.add('        CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE,''7'' as srtype');
          sql.add(' from ypzls ');
          sql.add(' left join ypzl on ypzls.ypdh=ypzl.ypdh ');
          sql.Add(' LEFT JOIN  bwzl ON bwzl.Bwdh=YPZLS.BWBH');
          sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
          sql.add(' left join CLZL  on CLZl.CLDH=ypzls.CLBH ');
          sql.Add(' left join zszl on zszl.zsdh=ypzls.cSBH ');
          sql.add(' left join CLLBZLSVN  on LEFT(CLZl.CLDH,1)=CLLBZLSVN.LB ');
          sql.add(' left join CLZLTEST  on CLZl.CLDH=CLZLTEST.CLDH ');
          sql.add(' where 1=1 and clzltest.cldh is null and (bwzl.YWSM LIKE ''%LOGO%'' OR bwzl.YWSM LIKE ''%PRINT%'' ) AND CLZL.YWPM LIKE ''%SILK%''');
          sql.add('  and  kfxxzl.article =:article');
          if   edit6.Text<>'' then
               sql.add(' and ypzls.CLBH ='+''''+edit6.Text+'''');
          if   edit3.Text<>'' then
               sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
          if   edit4.Text<>'' then
               sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
          if   edit1.Text<>'' then
               sql.add(' and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if   Cmb_Stage.Text<>'' then
               sql.add(' and ypzl.KFJD='+''''+Cmb_Stage.Text+'''');
          if length(edit7.Text) > 0 then
               sql.Add('    and kfxxzl.FD='+''''+edit7.Text+'''' );
          sql.Add('    and not exists (select cgzlss.clbh ');  //過濾出在有採購單的材料
          sql.Add('                   from cgzlss ');
          sql.Add('                   left join kfxxzl on kfxxzl.article=cgzlss.zlbh ');
          sql.add('                   where CGZLSS.CLBH=ypzls.clbh  ');
          if length(edit1.Text) > 0 then
             sql.add('                      and KFXXZL.JiJie='+''''+edit1.Text+'''');
          if length(Cmb_Stage.Text) > 0 then
             sql.Add('                      and cgzlss.stage='+''''+Cmb_Stage.Text+'''');
          sql.add('                 )                      ');
          sql.add(' group by ypzls.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,CLLBZLSVN.start,CLLBZLSVN.stop,CLZLTEST.UNDERTEST,CLZLTEST.PASS,CLZLTEST.FAIL,CLZLTEST.REMARK,CLZLTEST.PDMCODE');
        end;
        qry2.Active:=true;
       end;


end;

procedure TMaterialTestFD.Cancel1Click(Sender: TObject);
begin
with Qry_TestReport do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGridEh3.columns[1].ButtonStyle:=cbsnone;
  DBGridEh3.columns[2].ButtonStyle:=cbsnone;
  Modify1.enabled:=true;
  Delete1.enabled:=true;
  Save1.enabled:=false;
  Cancel1.enabled:=false;
  DBGrid1.Enabled:=true;
  Button1.Enabled:=TRUE;  //可查詢
end;

procedure TMaterialTestFD.Save1Click(Sender: TObject);
var i:integer;
begin
try
//if query1.requestlive then
  //begin
//    AdiColor.FormCreate(Sender);
    Qry_TestReport.first;
    for i:=1 to Qry_TestReport.RecordCount do
    begin
      case Qry_TestReport.updatestatus of
      usmodified:
        begin
         Qry_TestReport.edit;
         Qry_TestReport.fieldbyname('userid').Value:=main.edit1.text;
         Qry_TestReport.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
         UpdateSQL1.apply(ukmodify);
        end;
      usinserted:
        begin
         Qry_TestReport.edit;
         Qry_TestReport.fieldbyname('cldh').Value:=Query1.fieldbyname('CLBH').Value;
         Qry_TestReport.fieldbyname('File_Name').Value:='Wait Upload';
         Qry_TestReport.fieldbyname('userid').Value:=main.edit1.text;
         Qry_TestReport.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
         //Qry_TestReport.fieldbyname('Dropped').Value:=0;
         UpdateSQL1.apply(ukinsert);
        end;

      end;
      Qry_TestReport.next;
    end;

  DBGridEh3.columns[1].ButtonStyle:=cbsnone;
  DBGridEh3.columns[2].ButtonStyle:=cbsnone;
  Qry_TestReport.active:=false;
  Qry_TestReport.cachedupdates:=false;
  Qry_TestReport.requestlive:=false;
  Qry_TestReport.active:=true;

  Modify1.enabled:=true;
  Delete1.enabled:=true;
  Save1.enabled:=false;
  Cancel1.enabled:=false;
  DBGrid1.Enabled:=true;
  Button1.Enabled:=TRUE;  //可查詢
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TMaterialTestFD.btnexcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
      s,s1:string;
begin
  if query1.Active=false then
  begin
      abort;
  end;
    if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;

        eclApp.Cells(1,1):='All Article';
        eclApp.Cells(1,2):='All FD Name';

        for i:=0 to query1.fieldCount-1 do
          begin
              if query1.Fields[i].FieldName= 'clbh' then
                  eclApp.Cells(1,i+3):='Material ID'
              else if query1.Fields[i].FieldName= 'YWPM' then
                  eclApp.Cells(1,i+3):='Name'
              else if query1.Fields[i].FieldName= 'ZSYWJC' then
                  eclApp.Cells(1,i+3):='Supplier'
              else if query1.Fields[i].FieldName= 'FDSentDate' then
                  eclApp.Cells(1,i+3):='FD SentDate'
              else if query1.Fields[i].FieldName= 'FormCode' then
                  eclApp.Cells(1,i+3):='Form Code'
              else if query1.Fields[i].FieldName= 'SentDate' then
                  eclApp.Cells(1,i+3):='Lab GetDate'
              else if query1.Fields[i].FieldName= 'UNDERTEST' then
                  eclApp.Cells(1,i+3):='Under Test'
              else if query1.Fields[i].FieldName= 'Guarantee' then
                  eclApp.Cells(1,i+3):='Supplier Guarantee'
              else if query1.Fields[i].FieldName= 'Prod' then
                  eclApp.Cells(1,i+3):='Prod Used'
              else if query1.Fields[i].FieldName= 'TestReportCode' then
                  eclApp.Cells(1,i+3):='Test Rep.NO'
              else if query1.Fields[i].FieldName= 'TestReportDate' then
                  eclApp.Cells(1,i+3):='Test Rep.Date'
              else if query1.Fields[i].FieldName= 'REMARK' then
                  eclApp.Cells(1,i+3):='Fail Items'
              else if query1.Fields[i].FieldName= 'PDMCODE' then
                  eclApp.Cells(1,i+3):='PDM Material ID'
              else
                  eclApp.Cells(1,i+3):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        s:='';
        while   not   query1.Eof   do
        begin
                s:='';
                while not query2.Eof do
                begin
                    if query2.FieldByName('CLBH').Value = query1.FieldByName('CLBH').Value then
                    begin
                        s:=s + query2.FieldByName('Article').Value + ',';
                    end
                    else
                        s:=query2.FieldByName('Article').Value;

                    query2.Next;
                    inc(k);
                end;

                eclApp.Cells(j,1):=s;

                s1:='';
                while not query3.Eof do
                begin
                    if query3.FieldByName('CLBH').Value = query1.FieldByName('CLBH').Value then
                    begin
                        s1:=s1 + query3.FieldByName('FD').Value + ',';
                    end
                    else
                        s1:=query3.FieldByName('FD').Value;

                    query3.Next;
                    inc(k);
                end;

                eclApp.Cells(j,2):=s1;

                for  i:=0 to query1.FieldCount-1   do
                begin
                   eclApp.Cells(j,i+3):=query1.Fields[i].Value;
                end;

          query1.Next;
          inc(j);
        end;

     //eclapp.columns.autofit;
     eclapp.Rows.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

end.
