unit ScanIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Buttons,
  Menus, OleCtrls, MSCommLib_TLB,StrUtils, Grids, DBGrids, IniFiles;

const ERP_VersionRel=true;//20140321 還未Relase 解鎖功能
type
  TScanIn = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CBX1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CBX2: TComboBox;
    Label5: TLabel;
    Edit3: TEdit;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    YWCP: TQuery;
    DS1: TDataSource;
    YWBZPOS: TQuery;
    Edit4: TEdit;
    DS2: TDataSource;
    Qtemp: TQuery;
    YWCP2: TQuery;
    Edit5: TEdit;
    YWCPCARTONBAR: TStringField;
    YWCPDDBH: TStringField;
    YWCPCARTONNO: TIntegerField;
    YWCPXH: TStringField;
    YWCPQty: TIntegerField;
    YWCPSB: TStringField;
    YWCPINCS: TSmallintField;
    YWCPDepNo: TStringField;
    YWCPKCBH: TStringField;
    YWCPINDATE: TDateTimeField;
    YWCPOUTCS: TSmallintField;
    YWCPOUTDATE: TDateTimeField;
    YWCPINSPECTCS: TIntegerField;
    YWCPINSPECTDATE: TDateTimeField;
    YWCPEXEDATE: TDateTimeField;
    YWCPMEMO: TStringField;
    YWCPUSERID: TStringField;
    YWCPUSERDATE: TDateTimeField;
    YWCPYN: TStringField;
    YWCPArticle: TStringField;
    YWCPXieMing: TStringField;
    YWCPDepName: TStringField;
    UpYWBZPOS: TUpdateSQL;
    UpYWCP: TUpdateSQL;
    YWBZPOSDDBH: TStringField;
    YWBZPOSDDCC: TStringField;
    YWBZPOSQty: TIntegerField;
    YWBZPOSXXCC: TStringField;
    YWBZPOSIn_Qty: TIntegerField;
    YWBZPOSInboxBar: TStringField;
    BitBtn1: TBitBtn;
    YWCP2CARTONBAR: TStringField;
    YWCP2DDBH: TStringField;
    YWCP2CARTONNO: TIntegerField;
    YWCP2XH: TStringField;
    YWCP2Qty: TIntegerField;
    YWCP2SB: TStringField;
    YWCP2CKBH: TStringField;
    YWCP2DepNo: TStringField;
    YWCP2KCBH: TStringField;
    YWCP2INCS: TSmallintField;
    YWCP2INDATE: TDateTimeField;
    YWCP2OUTCS: TSmallintField;
    YWCP2OUTDATE: TDateTimeField;
    YWCP2INSPECTCS: TIntegerField;
    YWCP2INSPECTDATE: TDateTimeField;
    YWCP2EXEDATE: TDateTimeField;
    YWCP2MEMO: TStringField;
    YWCP2USERID: TStringField;
    YWCP2USERDATE: TDateTimeField;
    YWCP2YN: TStringField;
    YWCP2Article: TStringField;
    YWCP2XieMing: TStringField;
    YWCP2YWQty: TIntegerField;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    CheckBox1: TCheckBox;
    Import1: TMenuItem;
    YWCP2DepName: TStringField;
    YWCPLastInDate: TDateTimeField;
    YWCPCON_NO: TStringField;
    YWCPDDGB: TStringField;
    YWCP2LastInDate: TDateTimeField;
    YWCP2CON_NO: TStringField;
    YWCP2DDGB: TStringField;
    GBBH: TQuery;
    YWCPXieXing: TStringField;
    YWCPSheHao: TStringField;
    YWCP2XieXing: TStringField;
    YWCP2SheHao: TStringField;
    YWCPCKBH: TStringField;
    RYEdit: TEdit;
    ScanCheck: TQuery;
    ScanCheckddbh: TStringField;
    ScanCheckXH: TStringField;
    ScanCheckPagQty: TIntegerField;
    ScanCheckxxcc: TStringField;
    ScanCheckcts: TIntegerField;
    ScanCheckokcts: TIntegerField;
    ScanCheckAqty: TIntegerField;
    ScanCheckINqty: TIntegerField;
    ScanCheckScanFG: TIntegerField;
    Button4: TButton;
    MSComm1: TMSComm;
    rwin: TMemo;
    GetGram: TQuery;
    YWCP2sgw: TFloatField;
    YWCP2rgw: TFloatField;
    YWCPsgw: TFloatField;
    YWCPrgw: TFloatField;
    Label6: TLabel;
    Label7: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    FirstInCheck: TQuery;
    YWCPINUSER: TStringField;
    YWCPExe: TQuery;
    ScanCheckFlag: TStringField;
    KVBHEdit: TEdit;
    Label8: TLabel;
    YWCPKVBH: TStringField;
    YWCPLPNBarCode: TStringField;
    YWCP2LPNBarCode: TStringField;
    YWCPYSBH: TStringField;
    YWCP2YSBH: TStringField;
    YPCPMat: TQuery;
    UpYWCPMat: TUpdateSQL;
    YPCPMatDDBH: TStringField;
    YPCPMatPairs: TIntegerField;
    YPCPMatQty: TIntegerField;
    YPCPMatMatFlag: TStringField;
    DS3: TDataSource;
    Splitter1: TSplitter;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    DBGridEhKCLL: TDBGridEh;
    YPCPMatFlag: TStringField;
    YPCPMatCartonOK: TIntegerField;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    YWCPCountry: TStringField;
    YWCP2Country: TStringField;
    Qtemp1: TQuery;
    Qtemp2: TQuery;
    Edit6: TEdit;
    YWCPKHPO: TStringField;
    CheckBox2: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure YWBZPOSNewRecord(DataSet: TDataSet);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure YWBZPOSAfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure YWCPAfterDelete(DataSet: TDataSet);
    procedure Delete1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Import1Click(Sender: TObject);
    procedure GBBHAfterOpen(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure GetWeight(RYNO:string);
    procedure GetB1Weight(CartonNO:string);
    procedure RB1Click(Sender: TObject);
  private
    Production_N511_CheckKCLLS_Info:String;
    Production_N511_CheckKCLLS:String;
    { Private declarations }
    procedure ReadIni();
    Function CheckIsYPCP_CheckKCLLS(CARTONBAR:string;DDBH:String;Qty:integer;SB:String):Boolean; //20200928檢查領料完整才能成品倉滿箱入庫
    function DBGrid_YWCP_Qty(CARTONBAR:string;DDBH:String;Flag:boolean):String;
    function ShowUnlockWeightDialog():boolean;  //20140321 彈跳顯示解鎖人員允許過輕入庫作業
  public
    INUserID:string;//20140321 入庫人員UserID
    GSDH_PD:string;//20190330 get factory is PD
    GSDH_GC:String;//20201017 get factory is GC
    GSBH_XuongR_2Ma:String;
    RubberGSBH:array of String;    
    { Public declarations }
  end;

var
  ScanIn: TScanIn;
  NDate:TDate;
  rg:string;
  Gram,rgw,sgw:real;
implementation

uses ScanIn_Dep1, main1, ScanIn_hand1,ScanIn_InUser1 , FunUnit;

{$R *.dfm}
procedure TScanIn.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
    Production_N511_CheckKCLLS:='N';
    try
      AppDir:=ExtractFilePath(Application.ExeName);
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Production_N511_CheckKCLLS:=MyIni.ReadString('ERP','Production_N511_CheckKCLLS','N');
      if Production_N511_CheckKCLLS='Y' then
      begin
        DBGridEhKCLL.Visible:=true;
      end else
      begin
        DBGridEhKCLL.Visible:=false;
      end;
    finally
      MyIni.Free;
    end;
end;
procedure TScanIn.FormDestroy(Sender: TObject);
begin
  ScanIn:=nil;
end;

procedure TScanIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if YWCP.recordcount>0 then
  begin
    if messagedlg('Still have date not upload to server,discard?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
        YWBZPOS.Active:=false;
        YWCP2.Active:=false;
        YWCP.Active:=false;
        action:=cafree;
    end else
    abort;
  end else
  begin
    YWBZPOS.Active:=false;
    YWCP2.Active:=false;
    YWCP.Active:=false;
    action:=cafree;
  end;
end;

procedure TScanIn.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    sql.clear;
    sql.Add('select * from KCCKCP ');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.Items.Clear;
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('CKBH').Value);
      next;
    end;
    CBX1.ItemIndex:=0;
    CBX2.ItemIndex:=0;
    active:=false;
  end;
  //20190330
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select gsdh from Bgszl where SFL =''PD'' and GSDH='''+main.Edit2.Text+'''');
    active:=true;
    GSDH_PD:=FieldByName('gsdh').AsString;
    active:=false;
  end;
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select gsdh from Bgszl where SFL =''GC''  and DFL in (Select DFL from Bgszl where GSDH='''+main.Edit2.Text+''') ');
    active:=true;
    GSDH_GC:=FieldByName('gsdh').AsString;
    active:=false;
  end;
  //底廠
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''RB'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    setlength(RubberGSBH,RecordCount);
    for i:=0 to RecordCount-1 do
    begin
      RubberGSBH[i]:=FieldByName('GSBH').AsString;
      if GSBH_XuongR_2Ma='' then GSBH_XuongR_2Ma:=Copy(FieldByName('GSBH').AsString,1,2)+'%';
      Next;
    end;
    Active:=false;
  end;  
  //
  if mscomm1.PortOpen then
    MSComm1.PortOpen:=false;
  if mscomm1.Enabled then
    mscomm1.Enabled:=false;

  YWCP2.Active:=true;
  YWCP.Active:=true;
  //YWBZPOS.Active:=true;
  YPCPMat.Active:=true;
  //if ((main.Edit1.Text='316503') or (main.Edit1.Text='313699')) then checkbox2.Visible:=true;
  if (main.Edit1.Text='316503') then checkbox2.Visible:=true;
  readini();
end;


procedure TScanIn.Edit1DblClick(Sender: TObject);
begin
  ScanIn_Dep:=TScanIn_Dep.create(self);
  ScanIn_Dep.show;
end;

procedure TScanIn.Edit3Enter(Sender: TObject);
begin
  if edit5.text='' then
  begin
    showmessage('Pls select Department first.');
    edit1.SetFocus;
  end;
end;

procedure TScanIn.BitBtn1Click(Sender: TObject);
begin
  edit1dblclick(nil);
end;

procedure TScanIn.YWBZPOSNewRecord(DataSet: TDataSet);
begin
  abort;
end;
////20140321 彈跳顯示解鎖人員允許過輕入庫作業
function TScanIn.ShowUnlockWeightDialog():boolean;
var iRes:boolean;
begin
  iRes:=false;
  if checkbox2.checked then
  begin
  iRes:=true; //解鎖人員驗證正確允許入庫
  end else
  begin
  INUserID:='';//目前秤重不符合標準範圍 入庫人員清空
  if MessageDlg('Ban co muon he thong khong khoa de nhap kho hay khong (Trong luong nho hon gioi han)',mtCustom,[mbYes,mbNo], 0)=mrNo then
  begin
    //取消解鎖驗證
    //showmessage('Trong luong nho hon gioi han'); //重量低於限制
    windows.beep(1500,500);
    windows.beep(1500,500);
    windows.beep(1500,500);
    edit3.text:='';
  end else
  begin
    if ScanIn_User=nil then ScanIn_User:=TScanIn_User.Create(ScanIn);
    ScanIn_User.ShowModal();
    //輸入檢查解鎖人員驗證不正確
    if INUserID='' then
    begin
      //取消解鎖
      showmessage('ID khong chinh xac,Trong luong nho hon gioi han'); //重量低於限制
      windows.beep(1500,500);
      windows.beep(1500,500);
      windows.beep(1500,500);
      edit3.text:='';
    end else
    begin
      iRes:=true; //解鎖人員驗證正確允許入庫
    end;
   end;
  end;
  result:=iRes;
end;
//20200928 檢查是否TW材料是否都已經開單領用
Function TScanIn.CheckIsYPCP_CheckKCLLS(CARTONBAR:string;DDBH:String;Qty:integer;SB:String):Boolean;
var MatFlag,DDZLFlag,DDBHStr:string;
    i:integer;
    QtyDel:real;
    QtyUsage,Pairs:double;
    GSBH:string;
begin
  Production_N511_CheckKCLLS_Info:='';
  if Production_N511_CheckKCLLS='Y' then
  begin
    DDBHStr:=DDBH;
    //檢查是否有拆單
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select DDBH from DDZLTR where DDBH1='''+DDBH+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        DDBHStr:=FieldByName('DDBH').AsString;
      end;
      Active:=false;
    end;

    if YPCPMat.Locate('DDBH',DDBH,[])=false then
    begin
      //檢查訂單材料是否已完全開單領料
      //20241001 kiem tra VGC/VR2/VR3 da tinh dinh muc chua
      with Qtemp1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('  Select SMDD.GSBH,isnull(zlzls2.GSBH,SMDD_Article.GSBH) as GSBH_Check ');
        SQL.Add('  From SMDD   ');
        SQL.Add('  Left join (   ');
        SQL.Add('  		Select DISTINCT DDZL.GSBH,ZLZLS2.ZLBH  ');
        SQL.Add('  		From DDZL inner join DDZL_ZLZLS2  ZLZLS2  ');
        SQL.Add('  		on DDZL.DDBH=ZLZLS2.ZLBH  ');
        SQL.Add('  		Where DDBH='''+DDBHStr+''' and zlzls2.CLSL>0  ');
        SQL.Add('  		Union All   ');
        SQL.Add('  		Select DISTINCT '''+GSDH_GC+''' as GSBH,zlzls2_YM.ZLBH  ');
        SQL.Add('  		From DDZL inner join zlzls2_YM  ');
        SQL.Add('  		on DDZL.DDBH=zlzls2_YM.ZLBH  ');
        SQL.Add('  		Where DDBH='''+DDBHStr+''' and zlzls2_YM.CLSL>0  ');
        SQL.Add('  		Union All   ');
        SQL.Add('  		Select DISTINCT CQDH as GSBH,zlbh1 as ZLBH  ');
        SQL.Add('  		From LIY_DD.dbo.ZLZLS3  ZLZLS3  ');
        SQL.Add('  		Where ZLBH1='''+DDBHStr+''' and ZLZLS3.TCLYL>0  ');
        SQL.Add('  		) ZLZLS2 on SMDD.GSBH=ZLZLS2.GSBH and SMDD.YSBH=ZLZLS2.ZLBH  ');
        SQL.Add('  Left join SMDD_Article on SMDD.Article=SMDD_Article.Article	');
        SQL.Add('  WHERE YSBH='''+DDBHStr+''' and isnull(zlzls2.GSBH,SMDD_Article.GSBH) is null   ');
        SQL.Add('  GROUP BY SMDD.GSBH,isnull(zlzls2.GSBH,SMDD_Article.GSBH)  ');
        //funcobj.WriteErrorLog(sql.Text);
        Active:=true;
        if RecordCount>1 then
        begin
          Showmessage('Xuong: ' +fieldbyname('GSBH').AsString+ ' chua co dinh muc');
          abort;
        end;
      end;
      with Qtemp2 do
      begin
        Active:=false;
        SQL.Clear;
        //SQL.Add('Select ZLZLS2.*,DDZL.Pairs,  isnull(ZlZLS2.Qty,0)/(ZLZLs2.CLSL/DDZL.Pairs)/YWBZPOS.Qty as CTS  from (');
        SQL.Add('Select min(isnull(ZlZLS2.Qty,0)/(ZLZLs2.CLSL/DDZL.Pairs)) as Qty,max(DDZL.Pairs) as Pairs,ZLZLS2.GSBH from (');
        SQL.Add('select OrdCL.*,Round(IsNull(KCLLS.TempQty,0.00),2) as TempQty ,IsNull(KCLLS.Qty,0.00) as Qty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,IsNull(KCLLS.ZZ,0) as ZZ');
        SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
        SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.CQDH,DDZL.GSBH');
        SQL.Add('      from DDZL_ZLZLS2 as ZLZLS2');
        SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
        SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
        SQL.Add('      where 1=1');
        SQL.Add('      and ZLZLS2.ZLBH = '''+DDBHStr+''' ');
        SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
        SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
        SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.CQDH,DDZL.GSBH');
        SQL.Add('      union all ');
        SQL.Add('      select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from DDZL_ZLZLS2 as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
        SQL.Add('             sum(ZLZLS2.CLSL) CLSL,CLZL.CQDH,DDZL.GSBH');
        SQL.Add('      from DDZL_ZLZLS2 as ZLZLS2');
        SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
        SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
        SQL.Add('      where 1=1');
        SQL.Add('      and ZLZLS2.ZLBH = '''+DDBHStr+''' ');
        SQL.Add('      and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
        SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
        SQL.Add('    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.CQDH,DDZL.GSBH');
        SQL.Add(') OrdCL');
        SQL.Add('left join (');
        SQL.Add('      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Sum(NK) as NK,Sum(HD) as HD,Sum(KD) as KD,Sum(GC) as GC,Sum(XT) as XT,Sum(ZZ) as ZZ from (                ');
        SQL.Add('      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
        SQL.Add('			  SUM(CASE WHEN KCLLS.HGLB=''NK'' THEN QTY ELSE 0 END ) AS NK,');
        SQL.Add('			  SUM(CASE WHEN KCLLS.HGLB=''HD'' THEN QTY ELSE 0 END ) AS HD,');
        SQL.Add('			  SUM(CASE WHEN KCLLS.HGLB=''KD'' THEN QTY ELSE 0 END ) AS KD,');
        SQL.Add('			  SUM(CASE WHEN KCLLS.HGLB=''GC'' THEN QTY ELSE 0 END ) AS GC,');
        SQL.Add('			  SUM(CASE WHEN KCLLS.HGLB=''XT'' THEN QTY ELSE 0 END ) AS XT,');
        SQL.Add('			  SUM(CASE WHEN KCLLS.HGLB=''ZZZZ'' THEN QTY ELSE 0 END ) AS ZZ');
        SQL.Add('		   from KCLLS');
        SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
        SQL.Add('		   left join DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('		   left join CLZL on CLZL.CLDH=KCLLS.CLBH		   ');
        SQL.Add('		   where KCLLS.SCBH = '''+DDBHStr+'''');
        SQL.Add('			  and DDZl.GSBH='''+main.Edit2.Text+''' ');
        SQL.Add('              and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
        SQL.Add('		   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
        SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
        SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
        SQL.Add('where 1=1 ');
        SQL.Add('union all');
        SQL.Add('Select  KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.CQDH,KCLL.GSBH,Sum(KCLLS.TempQty) as TempQty,');
        SQL.Add('        Sum(KCLLS.Qty) as Qty,');
        SQL.Add('        Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
        SQL.Add('        Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
        SQL.Add('        Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
        SQL.Add('        Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
        SQL.Add('        Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('        Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ ');
        SQL.Add('from  KCLLS');
        SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
        SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO          ');
        SQL.Add('WHERE (KCLL.GSBH ='''+main.Edit2.Text+''') and KCLL.CFMID<>''NO'' and NOT EXISTS (select CLBH from (SELECT CLBH from DDZL_ZLZLS2 as ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH='''+DDBHStr+''' Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH) ');
        SQL.Add('   and KCLLS.SCBH = '''+DDBHStr+'''  and KCLLS.Qty>0  ');
        SQL.Add('Group by KCLLS.SCBH,KCLLS.CLBH,CLZL.CQDH,KCLL.GSBH');
        //印刷加工廠
        SQL.Add('union all');
        SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty,KCLLS.Qty ,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0),2),0)  as ZZ ');
        SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
        SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.CQDH,'''+GSDH_GC+''' as GSBH');
        SQL.Add('      from ZLZLS2_YM as ZLZLS2');
        SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
        SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
        SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
        SQL.Add('      where 1=1');
        SQL.Add('      and ZLZLS2.ZLBH = '''+DDBHStr+''' ');
        SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
        SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
        SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.CQDH');
        SQL.Add(') OrdCL');
        SQL.Add('left join (');
        SQL.Add('      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,');
        SQL.Add('                  Sum(NK) as NK,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (');
        SQL.Add('                  ');
        SQL.Add('      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
        SQL.Add('					Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
        SQL.Add('					Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
        SQL.Add('					Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
        SQL.Add('					Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('					Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
        SQL.Add('					Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ');
        SQL.Add('		   from KCLLS');
        SQL.Add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
        SQL.Add('		   left join DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('		   left join CLZL on CLZL.CLDH=KCLLS.CLBH		   ');
        SQL.Add('		   where  KCLLS.SCBH = '''+DDBHStr+''' ');
        SQL.Add('				  and DDZl.GSBH='''+main.Edit2.Text+''' ');
        SQL.Add('           and KCLL.GSBH='''+GSDH_GC+''' and KCLL.CFMID<>''NO'' ');
        SQL.Add('		   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
        SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
        SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
        SQL.Add('where 1=1 ');
        SQL.Add('union all');
        SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.CQDH,KCLL.GSBH,KCLLS.TempQty');
        SQL.Add('       ,KCLLS.Qty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
        SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ    ');
        SQL.Add('from  KCLLS');
        SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
        SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
        SQL.Add('left join ( ');
        SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ  ');
        SQL.Add('           from KCLLS ');
        SQL.Add('           where KCLLS.SCBH = '''+DDBHStr+''' ');
        SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
        SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
        SQL.Add('WHERE (KCLL.GSBH ='''+GSDH_GC+''') and KCLL.CFMID<>''NO'' and NOT EXISTS (select CLBH from (SELECT CLBH from ZLZLS2_YM ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH='''+DDBHStr+''' Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH) ');
        SQL.Add('     and KCLLS.SCBH = '''+DDBHStr+'''  and KCLLS.Qty>0');
        //大底場&大車
        For i:=0 to High(RubberGSBH) do
        begin
          SQL.Add('union all ');
          SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.Qty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
          SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ');
          SQL.Add(' from (');
          SQL.Add('select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,ERP_CLZL.CQDH,DDZL.CQDH as GSBH  ');
          SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
          SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
          SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
          SQL.Add('Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 ');
          SQL.Add('where ZLZLS3.TCLYL>0 and DDZL.ZLBH1='''+DDBHStr+''' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
          SQL.Add('GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,ERP_CLZL.CQDH,DDZL.CQDH ) ZLZLS3');
          SQL.Add('left join (');
          SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
          SQL.Add('                  			 Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ');
          SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
          SQL.Add('           where 1=1 ');
          SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+'''');
          SQL.Add('                 and KCLLS.SCBH ='''+DDBHStr+'''  ');
          SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
        end;
        //
        SQL.Add('union all');
        SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.CQDH,KCLL.GSBH,KCLLS.TempQty,KCLLS.Qty');
        SQL.Add('       ,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
        SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ      ');
        SQL.Add('from  KCLLS');
        SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
        SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
        SQL.Add('left join ( ');
        SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ  ');
        SQL.Add('           from KCLLS ');
        SQL.Add('           where KCLLS.SCBH = '''+DDBHStr+''' ');
        SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
        SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
        SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 and ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)');
        SQL.Add('   and KCLLS.SCBH = '''+DDBHStr+'''  and KCLLS.Qty>0');
        //
        SQL.Add('  ) ZLZLS2    ');
        SQL.Add('   Left join DDZL on ZLZLS2.ZLBH=DDZL.DDBH ');
        //SQL.Add('where 1=1  and ( case when NK>0 then Round(Convert(float,NK),2) end <> Round(Convert(float,CLSL),2)  or  (Round(Convert(float,CLSL),2)>0 and Round(Convert(float,IsNull(Qty,0)),2)=0)    )');
        SQL.Add('where 1=1  ');
        SQL.Add('group by ZLZLS2.GSBH');
        SQL.Add('order by min(isnull(ZlZLS2.Qty,0)/(ZLZLs2.CLSL/DDZL.Pairs)),ZLZLS2.GSBH ');
        //SQL.Add('and (  Round(Convert(float,CLSL),2)>0 and Round(Convert(float,CLSL),2)>Round(Convert(float,IsNull(Qty,0)),2)   ) ');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;

        if FieldByName('Qty').Value=0 then
        begin
          Showmessage(''+FieldByName('GSBH').AsString+' Chua mo phieu het tat ca cac vat tu. Vui long lien he sinh quan');     // 20241001 neu 1 vat tu chua mo phieu cung khong the scan nhap kho
          abort;
        end else
        begin
          QtyUsage:=  FieldByName('Qty').AsCurrency;
          Pairs:=  FieldByName('Pairs').AsCurrency;
          //if FieldByName('Qty').Value <  FieldByName('Pairs').Value  then
          if QtyUsage <  Pairs then
          begin
            MatFlag:='N';
          end else
          begin
            MatFlag:='Y';
          end;
        end;
        {if RecordCount>0 then
        begin
          while not Eof do
          begin
            Production_N511_CheckKCLLS_Info:=Production_N511_CheckKCLLS_Info+FieldByName('ZLBH').AsString+', '+FieldByName('CLBH').AsString+', '+FieldByName('GSBH').AsString+', CLSL='+FieldByName('CLSL').AsString+', Qty='+FieldByName('Qty').AsString+#13#10;
            Next;
          end;
          MatFlag:='N'; //不允許全部成品入庫
        end else
        begin
          MatFlag:='Y'; //允許全部成品入庫
        end;
        Active:=false;  }
      end;

      //訂單雙數&已成品入庫雙數
      with Qtemp do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select DDZL.DDBH,DDZL.Pairs,Count(YWCP.CartonNo)as CartonOK,SUM(IsNull(YWCP.Qty,0)) as Qty,'''+MatFlag+''' as MatFlag,YWDD.Flag');
        SQL.Add('from DDZL');
        SQL.Add('left join YWDD on YWDD.YSBH=DDZL.DDBH');
        SQL.Add('left join YWCP on YWCP.DDBH=YWDD.DDBH and YWCP.INCS>=1');
        SQL.Add('where DDZL.DDBH='''+DDBH+''' ');
        SQL.Add('Group by DDZL.DDBH,DDZL.Pairs,YWDD.Flag');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;
        if RecordCount>0 then
        begin
          YPCPMat.Insert;
          YPCPMat.FieldByName('DDBH').Value:=FieldByName('DDBH').Value;
          YPCPMat.FieldByName('Pairs').Value:=FieldByName('Pairs').Value;
          YPCPMat.FieldByName('CartonOK').Value:=FieldByName('CartonOK').Value;
          YPCPMat.FieldByName('Qty').Value:=FieldByName('Qty').Value;
          YPCPMat.FieldByName('MatFlag').Value:=FieldByName('MatFlag').Value;
          YPCPMat.FieldByName('Flag').Value:=FieldByName('Flag').Value;
          YPCPMat.Post;
        end;
        Active:=false;
      end;
    end;
    QtyDel:= Qtemp2.FieldByName('Qty').Value;
    if YPCPMat.Locate('DDBH',DDBH,[]) then
    begin
      if YPCPMat.FieldByName('MatFlag').AsString='N' then //還有TW材料開單未領
      begin
        if SB='' then //尚未入庫第一次
        begin
          //if YPCPMat.FieldByName('Qty').Value+Qty>=YPCPMat.FieldByName('Pairs').Value then
          if YPCPMat.FieldByName('Qty').Value+Qty>=QtyDel then
          begin
            if YPCPMat.FieldByName('Flag').AsString='1' then //申請簽呈解鎖
            begin
              YPCPMat.Edit;
              YPCPMat.FieldByName('Qty').Value:=YPCPMat.FieldByName('Qty').Value+Qty; //雙數增加
              YPCPMat.FieldByName('CartonOK').Value:=YPCPMat.FieldByName('CartonOK').Value+1;
              YPCPMat.Post;
              result:=true;
            end else
            begin
              result:=false; // 不允許滿箱
              Production_N511_CheckKCLLS_Info:=Production_N511_CheckKCLLS_Info+'Xuong: '+Qtemp2.FieldByName('GSBH').AsString;
            end;
          end else
          begin
            YPCPMat.Edit;
            YPCPMat.FieldByName('Qty').Value:=YPCPMat.FieldByName('Qty').Value+Qty; //雙數增加
            YPCPMat.FieldByName('CartonOK').Value:=YPCPMat.FieldByName('CartonOK').Value+1;
            YPCPMat.Post;
            result:=true;
          end;
        end else
        begin
          result:=true;//箱號已經入庫，重複入庫
        end;
      end else
      begin
        if SB='' then //尚未入庫第一次
        begin
          YPCPMat.Edit;
          YPCPMat.FieldByName('Qty').Value:=YPCPMat.FieldByName('Qty').Value+Qty;
          YPCPMat.FieldByName('CartonOK').Value:=YPCPMat.FieldByName('CartonOK').Value+1;
          YPCPMat.Post;
        end;
        result:=true;//材料都已經全部開單，允許最後一箱成品入庫
      end;
    end else
    begin
      result:=false; //沒找到DDZL訂單編號， 不允許入庫
    end;
  end else
  begin
    result:=true;//領料不用檢查直接入庫
  end;
end;
//20180421 修改回傳DBGrid暫存外箱SQL
function TScanIn.DBGrid_YWCP_Qty(CARTONBAR:string;DDBH:String;Flag:boolean):String;
var SQL:String;
begin
    SQL:='';
    SQL:=SQL+''''+CARTONBAR+''',';
    YWCP.Filter:=' DDBH='''+DDBH+''' ';
    YWCP.First;
    if YWCP.Locate('DDBH',DDBH,[]) then
    begin
      SQL:=SQL+''''+YWCP.FieldByName('CARTONBAR').AsString+''',';
      while YWCP.FindNext=true do
      begin
        SQL:=SQL+''''+YWCP.FieldByName('CARTONBAR').AsString+''',';
      end;
    end;
    if Flag=false then
    begin
       SQL:=' and CARTONBAR not in ('+Copy(SQL,1,length(SQL)-1)+')';
    end else
    begin
       SQL:=' and CARTONBAR  in ('+Copy(SQL,1,length(SQL)-1)+')';
    end;
    result:=SQL;
end;
//
procedure TScanIn.Edit3KeyPress(Sender: TObject; var Key: Char);
var
  XH,Cartonbar,DDBH:string;
begin
  if key=#13 then
  begin
    //20171110 UCC標 weston修改
    if YWCP2.Locate('LPNBarcode',RightStr(edit3.Text,15),[]) then
    begin
      Cartonbar:=YWCP2.fieldByName('CARTONBAR').AsString;
    end else
    begin
      Cartonbar:=edit3.Text;
    end;
    //只掃描外箱
    if RB1.Checked=true then
    begin
        if YWCP2.Locate('CARTONBAR',Cartonbar,[]) then
        begin
            with YWCP do
            begin
                if locate('CARTONBAR',cartonbar,[]) then
                begin
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  edit3.Text:='';
                  abort;
                end;
                //判斷是否掃到其他訂單
                if RYEdit.Text='' then
                begin
                  RYEdit.Text:=YWCP2.fieldbyname('YSBH').value;
                end else
                begin
                  if YWCP2.fieldbyname('YSBH').value <> RYEdit.text then
                  begin
                    windows.beep(1500,500);
                    windows.beep(1500,500);
                    windows.beep(1500,500);
                    if messagedlg('Cheng Shiping RYNO',mtinformation,[mbYes,mbNo],0)=mrYes then
                    begin
                      RYEdit.Text:=YWCP2.fieldbyname('YSBH').value;
                    end
                    else
                    begin
                      edit3.Text:='';
                      abort;
                    end;
                  end;
                end;
                //end
                DDBH:=YWCP2.fieldbyname('DDBH').value;
                XH:=YWCP2.fieldbyname('XH').value;
                sgw := YWCP2.fieldbyname('sgw').value;
                //showmessage(floattostr(sgw));
                if sgw= 0 then  //如果業務尚未計算標準重量
                begin
                  showmessage('Khong co trong luong tieu chuan thung'); //沒有外箱標準重量
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;
                if ((main.Edit2.Text = 'VB1') or (main.Edit2.Text = 'VB7'))  then
                begin
                  GetB1Weight(''+Cartonbar+''); //外箱條碼號傳入函數GetB1Weight
                end else
                begin
                  GetWeight(RYEdit.Text); //訂單號傳入函數GetWeight
                end;
                StaticText1.Caption:=FloattoStr(sgw);  //顯示外箱標準重量
                StaticText2.Caption:=FloattoStr(gram);  //顯示鞋子標準重量
                if Gram = 0 then  //如果沒有設定誤差重量
                begin
                  showmessage('Khong co trong luong tieu chuan giay'); //沒有鞋子標準重量
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;
                if rgw = 0 then   //如果沒有取得秤重重量
                begin
                  showmessage('Khong can duoc');  //秤重失敗
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;
                //確認A工段掃描數是否大於O工段
                //20150114暫時不檢查直到 1/20
                with FirstInCheck do
                begin
                  Active:=false;
                  sql.Clear;
                  sql.add('select YWCP.DDBH,YWCP.XH,YWBZPOS.DDCC,YWBZPOS.Qty,ok.okcts,ok.Aqty from YWCP');
                  sql.add('left join YWBZPOS on YWCP.DDBH = YWBZPOS.DDBH and YWCP.XH = YWBZPOS.XH');
                  sql.add('left join ywdd on ywdd.ddbh=ywcp.ddbh');
                  sql.add('left join ddzl on ywdd.ysbh=ddzl.ddbh');
                  sql.add('left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  sql.add('		        where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  sql.add('		        group by xxcc) as ok on YWBZPOS.DDCC = ok.XXCC');
                  sql.add('where CARTONBAR = '''+Cartonbar+''' and (ok.Aqty <> ''0'' or ddzl.flag=1)');
                  Active:=true;
                end;
                if (FirstInCheck.RecordCount = 0) and (main.Edit2.Text=GSDH_PD) then  //檢查該箱第一次掃描時是否有已完工數量
                begin
                  //訊息: 訂單號 Go工段未掃描完成無法,無法掃描入庫
                  showmessage('Don Hang '''+RYEdit.text+''' Cong Doan Go Hoan Thanh So Luong Khong Du, Khong The Scan Nhap Kho');
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;
                with ScanCheck do
                begin
                  active:=false;
                  sql.Clear;
                  //原本版本 old version
                  {sql.add('select scan.*,(case when scan.INqty < scan.Aqty then 1 else 0 end) as ScanFG,ddzl.flag as Flag');
                  sql.add('from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(case when YWCP.SB=''1'' then YWBZPOS.qty else 0 end) as INqty');
                  sql.add('      from ywcp');
                  sql.add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                  sql.add('      left join ywdd on ywdd.ddbh=ywcp.ddbh');
                  sql.add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  sql.add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  sql.add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                  sql.add('	     where ywcp.ddbh = '''+RYEdit.Text+''' and lastindate is not null');
                  sql.add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                  sql.add('      left join ywdd on ywdd.ddbh=scan.ddbh');
                  sql.add('      left join ddzl on ywdd.ysbh=ddzl.ddbh');
                  //20150115修改增加效率
                  sql.add('where  scan.DDBH='''+DDBH+''' and scan.XH='''+XH+''' and ((case when scan.INqty < scan.Aqty then 1 else 0 end) = ''0'' or ddzl.flag=1)');  }

                  //20180421 修正bug檢查G工段大於成品入庫，之前版本未考慮暫存DGBrid掃描箱數
                  SQL.Add('select * from (');
                  SQL.Add('select DDBH,XH,PagQty,XXCC,CTS,okCTS,AQty,Sum(INqty) as INqty,(case when Sum(INqty) < YWCP.Aqty then 1 else 0 end) as ScanFG,Flag from (');
                  SQL.Add('select scan.*,ddzl.flag as Flag');
                  SQL.Add('from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(case when YWCP.SB=''1'' then YWBZPOS.qty else 0 end) as INqty');
                  SQL.Add('      from ywcp');
                  SQL.Add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                  SQL.Add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  SQL.Add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  SQL.Add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                  SQL.Add('	     where ywcp.ddbh = '''+RYEdit.Text+''' and lastindate is not null '+DBGrid_YWCP_Qty(Cartonbar,RYEdit.Text,false));
                  SQL.Add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                  SQL.Add('      left join ddzl on scan.ddbh=ddzl.ddbh');
                  SQL.Add('union all');
                  SQL.Add('   select scan.*,ddzl.flag as Flag');
                  SQL.Add('   from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(YWBZPOS.qty) as INqty');
                  SQL.Add('      from ywcp');
                  SQL.Add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                  SQL.Add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  SQL.Add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  SQL.Add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                  SQL.Add('	     where 1=1 '+DBGrid_YWCP_Qty(Cartonbar,RYEdit.Text,true) );
                  SQL.Add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                  SQL.Add('      left join ddzl on scan.ddbh=ddzl.ddbh    ) YWCP');
                  SQL.Add('Group by   DDBH,Xh,PagQty,XXCC,CTS,okCTS,AQty,Flag ) Scan');
                  SQL.Add('where  scan.DDBH='''+RYEdit.Text+''' and scan.XH='''+XH+''' and ((case when scan.INqty <= scan.Aqty then 1 else 0 end) = ''0'' or Scan.flag=1)');

                  //funcObj.WriteErrorLog(sql.Text);
                  active:=true;
                end;
                ScanCheck.First;
                //if (Scancheck.FieldByName('CTS').Value <> Scancheck.FieldByName('okCTS').Value) and (main.Edit2.Text=GSDH_PD)
                //   and (Scancheck.FieldByName('ScanFG').Value = '0')and (ScanCheck.FieldByName('Flag').value<>'1') then  //檢查外箱掃描鎖定，僅控管A12廠
                if (main.Edit2.Text=GSDH_PD) and (Scancheck.FieldByName('ScanFG').Value = '0')and (ScanCheck.FieldByName('Flag').value<>'1') then  //20230523
                begin
                  //訊息: 訂單號 Go工段未掃描完成無法,無法掃描入庫
                  showmessage('Don Hang '''+RYEdit.text+''' Cong Doan Go Hoan Thanh So Luong Khong Du, Khong The Scan Nhap Kho ');
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;
                //如果實際重量低於標準重量,無法掃描入庫
                if ((main.Edit2.Text = 'VB1') or (main.Edit2.Text = 'VB7')) then
                begin
                  INUserID:=main.Edit1.Text;//20140321 預設入庫人員UserID為登入者
                  if abs(sgw - rgw) > gram/3  then
                  begin
                    if messagedlg('Trong luong vuot qua gioi han, huy bo Scan hay khong',mtinformation,[mbYes,mbNo],0)=mrYes then  //重量超過限制，是否取消掃描
                    begin
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      edit3.text:='';
                      abort;
                    end;
                  end;
                end else
                begin
                  //VA12 或 VA3 如果實際重量低於標準重量,無法掃描入庫
                  INUserID:=main.Edit1.Text;//20140321 預設入庫人員UserID為登入者
                  if (sgw - rgw) > gram/3 then
                  begin
                    //20140321 A12入庫秤重過輕 解鎖詢問
                    if ((main.Edit2.Text=GSDH_PD) and (ERP_VersionRel=true)) then
                    begin
                      //彈跳視窗讓解鎖人員輸入允許入庫作業
                      if ShowUnlockWeightDialog()=false then abort;
                    end else
                    begin
                      //非VA12廠登入原本流程
                      showmessage('Trong luong nho hon gioi han'); //重量低於限制
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      edit3.text:='';
                      abort;
                    end;
                  end;
                end;
                //20200928材料未領完成或未調整不能滿箱入成品倉
                if CheckIsYPCP_CheckKCLLS(YWCP2.fieldbyname('CartonBar').AsString,RYEdit.Text,YWCP2.fieldbyname('YWQty').value,YWCP2.fieldbyname('SB').AsString)=false then
                begin
                  //showmessage('Vat tu cua Don Hang chua lanh du, khong duoc nhap kho thanh pham, vui long lien he sinh quan'+#13#10+Production_N511_CheckKCLLS_Info);
                  showmessage(''+Production_N511_CheckKCLLS_Info+' Vat tu cua Don Hang chua lanh du, khong duoc nhap kho thanh pham, vui long lien he sinh quan');
                  abort;
                end;
                append;
                fieldbyname('CartonBar').value:=YWCP2.fieldbyname('CartonBar').value;
                fieldbyname('DDBH').value:=YWCP2.fieldbyname('DDBH').value;
                fieldbyname('Article').value:=YWCP2.fieldbyname('Article').value;
                fieldbyname('XieMing').value:=YWCP2.fieldbyname('XieMing').value;
                fieldbyname('CartonNO').value:=YWCP2.fieldbyname('CartonNO').value;
                fieldbyname('XH').value:=YWCP2.fieldbyname('XH').value;
                fieldbyname('Qty').value:=YWCP2.fieldbyname('YWQty').value;
                fieldbyname('DDGB').value:=YWCP2.fieldbyname('DDGB').value;
                fieldbyname('XieXing').value:=YWCP2.fieldbyname('XieXing').value;
                fieldbyname('SheHao').value:=YWCP2.fieldbyname('SheHao').value;
                fieldbyname('SB').value:='1';
                fieldbyname('KCBH').value:=edit2.text;
                fieldbyname('CKBH').value:=trim(CBX1.text);
                fieldbyname('KVBH').value:=trim(KVBHEdit.text);
                fieldbyname('rgw').value:=rgw;
                fieldbyname('INUSER').Value:=INUserID;//20140321 增加入庫人員ID記錄
                //20140405 weston 修改
                fieldbyname('LastINDate').value:=NDate;
                //是否第二次入倉，更改次數
                if not YWCP2.fieldbyname('INDate').isnull then
                begin
                  fieldbyname('INCS').value:=YWCP2.fieldbyname('INCS').value+1;
                  fieldbyname('INDate').value:=YWCP2.fieldbyname('INDate').value;
                  //保留第一次入庫部門
                  fieldbyname('DepNO').value:=YWCP2.fieldbyname('DepNo').value;
                  fieldbyname('DepName').value:=YWCP2.fieldbyname('DepName').value;
                end
                else
                begin
                  //第一次入庫
                  fieldbyname('INCS').value:=1;
                  fieldbyname('INDate').value:=NDate;
                  fieldbyname('DepNO').value:=edit5.text;
                  fieldbyname('DepName').value:=edit1.text;
                end;
                fieldbyname('LPNBarcode').value:=YWCP2.fieldbyname('LPNBarcode').value;
                fieldbyname('YSBH').value:=YWCP2.fieldbyname('YSBH').value;
                fieldbyname('Country').value:=YWCP2.fieldbyname('Country').value;
                post;
                edit3.text:='';
                edit4.text:=inttostr(recordcount);
              end; //end with ywcp do
        end else
        begin
          windows.beep(1500,500);
          windows.beep(1500,500);
          windows.beep(1500,500);
          //if messagedlg('Pls check the carton barcode and try again.',mterror,[mbOk],0)=mrok then
          edit3.Text:='';
        end;
    end; //if radiogroup1.itemindex=0 then
    //內盒與外箱均要掃描時的處理方式
    if RB2.Checked=true then
    begin  //外箱沒有記錄 第一次
          if YWCP.recordcount=0 then
          begin
              //找到還有外箱沒有出貨
              if YWCP2.Locate('CARTONBAR',cartonbar,[]) then
              begin
                //第一筆不需要檢查是否換訂單
                RYEdit.Text:=YWCP2.fieldbyname('YSBH').value;
                //
                DDBH:=YWCP2.fieldbyname('DDBH').value;
                XH:=YWCP2.fieldbyname('XH').value;
                sgw := YWCP2.fieldbyname('sgw').value;
                //showmessage(floattostr(sgw));
                if sgw= 0 then  //如果業務尚未計算標準重量
                begin
                  showmessage('Khong co trong luong tieu chuan thung');  //沒有外箱標準重量
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;

                GetWeight(RYEdit.Text); //訂單號傳入函數GetWeight
                StaticText1.Caption:=FloattoStr(sgw);  //顯示外箱標準重量
                StaticText2.Caption:=FloattoStr(gram);  //顯示鞋子標準重量
                if Gram = 0 then  //如果沒有設定誤差重量
                begin
                  showmessage('Khong co trong luong tieu chuan giay'); //沒有鞋子標準重量
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;
                if rgw = 0 then   //如果沒有取得秤重重量
                begin
                  showmessage('Khong can duoc');  //秤重失敗
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;

                //確認A工段掃描數是否大於O工段
                //20150114 暫時不檢查
                with FirstInCheck do
                begin
                  Active:=false;
                  sql.Clear;
                  sql.add('select YWCP.DDBH,YWCP.XH,YWBZPOS.DDCC,YWBZPOS.Qty,ok.okcts,ok.Aqty from YWCP');
                  sql.add('left join YWBZPOS on YWCP.DDBH = YWBZPOS.DDBH and YWCP.XH = YWBZPOS.XH');
                  sql.add('      left join ywdd on ywdd.ddbh=ywcp.ddbh');
                  sql.add('      left join ddzl on ywdd.ysbh=ddzl.ddbh');
                  sql.add('left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  sql.add('		        where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  sql.add('		        group by xxcc) as ok on YWBZPOS.DDCC = ok.XXCC');
                  sql.add('where CARTONBAR = '''+Cartonbar+''' and (ok.Aqty <> ''0'' or ddzl.flag=1)');
                  Active:=true;
                end;
                if (FirstInCheck.RecordCount = 0) and (main.Edit2.Text=GSDH_PD) then  //檢查該箱第一次掃描時是否有已完工數量
                begin
                  //訊息: 訂單號 Go工段未掃描完成無法,無法掃描入庫
                  showmessage('Don Hang '''+RYEdit.text+''' Cong Doan Go Hoan Thanh So Luong Khong Du, Khong The Scan Nhap Kho');
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;
                with ScanCheck do
                begin
                  active:=false;
                  sql.Clear;
                  //原本版本 old version
                  {sql.add('select scan.*,(case when scan.INqty < scan.Aqty then 1 else 0 end) as ScanFG,ddzl.flag as Flag');
                  sql.add('from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(case when YWCP.SB=''1'' then YWBZPOS.qty else 0 end) as INqty');
                  sql.add('      from ywcp');
                  sql.add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                  sql.add('      left join ywdd on ywdd.ddbh=ywcp.ddbh');
                  sql.add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  sql.add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  sql.add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                  sql.add('	     where ywdd.ysbh = '''+RYEdit.Text+''' and lastindate is not null');
                  sql.add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                  sql.add('      left join ywdd on ywdd.ddbh=scan.ddbh');
                  sql.add('      left join ddzl on ywdd.ysbh=ddzl.ddbh');
                  //20150115修改增加效率
                  sql.add('where  scan.DDBH='''+DDBH+''' and scan.XH='''+XH+''' and ((case when scan.INqty < scan.Aqty then 1 else 0 end) = ''0'' or ddzl.flag=1)');   }

                  //20180421 修正bug檢查G工段大於成品入庫，之前版本未考慮暫存DGBrid掃描箱數
                  SQL.Add('select * from (');
                  SQL.Add('select DDBH,XH,PagQty,XXCC,CTS,okCTS,AQty,Sum(INqty) as INqty,(case when Sum(INqty) < YWCP.Aqty then 1 else 0 end) as ScanFG,Flag from (');
                  SQL.Add('select scan.*,ddzl.flag as Flag');
                  SQL.Add('from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(case when YWCP.SB=''1'' then YWBZPOS.qty else 0 end) as INqty');
                  SQL.Add('      from ywcp');
                  SQL.Add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                  SQL.Add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  SQL.Add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  SQL.Add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                  SQL.Add('	     where ywcp.ddbh = '''+RYEdit.Text+''' and lastindate is not null '+DBGrid_YWCP_Qty(Cartonbar,RYEdit.Text,false));
                  SQL.Add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                  SQL.Add('      left join ddzl on scan.ddbh=ddzl.ddbh');
                  SQL.Add('union all');
                  SQL.Add('   select scan.*,ddzl.flag as Flag');
                  SQL.Add('   from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(YWBZPOS.qty) as INqty');
                  SQL.Add('      from ywcp');
                  SQL.Add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                  SQL.Add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                  SQL.Add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                  SQL.Add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                  SQL.Add('	     where 1=1 '+DBGrid_YWCP_Qty(Cartonbar,RYEdit.Text,true) );
                  SQL.Add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                  SQL.Add('      left join ddzl on scan.ddbh=ddzl.ddbh    ) YWCP');
                  SQL.Add('Group by   DDBH,Xh,PagQty,XXCC,CTS,okCTS,AQty,Flag ) Scan');
                  SQL.Add('where  scan.DDBH='''+RYEdit.Text+''' and scan.XH='''+XH+''' and ((case when scan.INqty <= scan.Aqty then 1 else 0 end) = ''0'' or Scan.flag=1)');

                  //funcObj.WriteErrorLog(sql.Text);
                  active:=true;
                end;
                ScanCheck.First;
                //if (Scancheck.FieldByName('CTS').Value <> Scancheck.FieldByName('okCTS').Value) and (main.Edit2.Text=GSDH_PD)
                //    and (Scancheck.FieldByName('ScanFG').Value = '0') and (ScanCheck.FieldByName('Flag').value<>'1')  then  //檢查外箱掃描鎖定，僅控管A12廠
                if  (main.Edit2.Text=GSDH_PD) and (Scancheck.FieldByName('ScanFG').Value = '0') and (ScanCheck.FieldByName('Flag').value<>'1')  then  //20230523
                begin
                  showmessage('Don Hang '''+RYEdit.text+''' Cong Doan Go Hoan Thanh So Luong Khong Du, Khong The Scan Nhap Kho ');
                  //終止
                  if YWBZPOS.Active=true then
                  begin
                    YWBZPOS.first;
                    while not YWBZPOS.eof do
                    begin
                      YWBZPOS.edit;
                      YWBZPOS.FieldByName('In_Qty').value:=YWBZPOS.fieldbyname('Qty').value;
                      YWBZPOS.post;
                      YWBZPOS.next;
                    end;
                  end;
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  abort;
                end;

                //如果實際重量低於標準重量,無法掃描入庫
                INUserID:=main.Edit1.Text;//20140321 預設入庫人員UserID為登入者
                if (sgw - rgw) > gram/3 then
                begin
                  //20140321 A12入庫秤重過輕 解鎖詢問
                  if ((main.Edit2.Text=GSDH_PD) and (ERP_VersionRel=true) ) then
                  begin
                      //彈跳視窗讓解鎖人員輸入允許入庫作業
                     if ShowUnlockWeightDialog()=false then abort;
                  end else
                  begin
                    //非VA12廠登入原本流程
                    showmessage('Trong luong nho hon gioi han'); //重量低於限制
                    windows.beep(1500,500);
                    windows.beep(1500,500);
                    windows.beep(1500,500);
                    edit3.text:='';
                    abort;
                  end;
                end;
                //20200928材料未領完成或未調整不能滿箱入成品倉
                if CheckIsYPCP_CheckKCLLS(YWCP2.fieldbyname('CartonBar').AsString,RYEdit.Text,YWCP2.fieldbyname('YWQty').value,YWCP2.fieldbyname('SB').AsString)=false then
                begin
                  //showmessage('Vat tu cua Don Hang chua lanh du, khong duoc nhap kho thanh pham, vui long lien he sinh quan'+#13#10+Production_N511_CheckKCLLS_Info);
                  showmessage(''+Production_N511_CheckKCLLS_Info+' Vat tu cua Don Hang chua lanh du, khong duoc nhap kho thanh pham, vui long lien he sinh quan');
                  abort;
                end;
                with YWCP do
                begin
                  append;
                  fieldbyname('CartonBar').value:=YWCP2.fieldbyname('CartonBar').value;
                  fieldbyname('DDBH').value:=YWCP2.fieldbyname('DDBH').value;
                  fieldbyname('Article').value:=YWCP2.fieldbyname('Article').value;
                  fieldbyname('XieMing').value:=YWCP2.fieldbyname('XieMing').value;
                  fieldbyname('CartonNO').value:=YWCP2.fieldbyname('CartonNO').value;
                  fieldbyname('XH').value:=YWCP2.fieldbyname('XH').value;
                  fieldbyname('Qty').value:=YWCP2.fieldbyname('YWQty').value;
                  fieldbyname('DDGB').value:=YWCP2.fieldbyname('DDGB').value;
                  fieldbyname('XieXing').value:=YWCP2.fieldbyname('XieXing').value;
                  fieldbyname('SheHao').value:=YWCP2.fieldbyname('SheHao').value;
                  fieldbyname('SB').value:='1';
                  fieldbyname('CKBH').value:=CBX1.text;
                  fieldbyname('KCBH').value:=trim(edit2.text);
                  fieldbyname('KVBH').value:=trim(KVBHEdit.text);
                  fieldbyname('rgw').value:=rgw;
                  fieldbyname('INUSER').Value:=INUserID;//20140321 增加入庫人員ID記錄
                  //20140405 weston 修改
                  fieldbyname('LastINDate').value:=NDate;
                  //是否第二次入倉，更改次數
                  if not YWCP2.fieldbyname('INDate').isnull then
                  begin
                    fieldbyname('INCS').value:=YWCP2.fieldbyname('INCS').value+1;
                    fieldbyname('INDate').value:=YWCP2.fieldbyname('INDate').value;
                    //保留第一次入庫部門
                    fieldbyname('DepNO').value:=YWCP2.fieldbyname('DepNo').value;
                    fieldbyname('DepName').value:=YWCP2.fieldbyname('DepName').value;
                  end
                  else
                  begin
                    //第一次入庫
                    fieldbyname('INCS').value:=1;
                    fieldbyname('INDate').value:=NDate;
                    fieldbyname('DepNO').value:=edit5.text;
                    fieldbyname('DepName').value:=edit1.text;
                  end;
                  fieldbyname('LPNBarcode').value:=YWCP2.fieldbyname('LPNBarcode').value;
                  fieldbyname('YSBH').value:=YWCP2.fieldbyname('YSBH').value;
                  fieldbyname('Country').value:=YWCP2.fieldbyname('Country').value;
                  post;
                  edit3.text:='';
                  edit4.text:=inttostr(recordcount);
                end; //end with YWCP do
              end else //如果找不到沒有出貨的外箱條碼YPCP2
              begin
                windows.beep(1500,500);
                windows.beep(1500,500);
                windows.beep(1500,500);
                edit3.Text:='';
              end;   //end if loop 找到還有外箱沒有出貨
          end else //如果YWCP有數據
          begin       //內盒找不到包裝明細記錄
              if YWBZPOS.recordcount=0 then
              begin
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  windows.beep(1500,500);
                  edit3.Text:='';
              end else
              //該外箱內盒有記錄，兩種情況，夠雙數與不夠雙數     footer
              begin
                  //檢查內盒總數與內盒實際總數是否相同 ，已完成內盒掃描。換下一箱  cartonbar#
                  if DBGrideh2.getfootervalue(0,dbgrideh2.columns[2])=DBGrideh2.getfootervalue(0,dbgrideh2.columns[3]) then
                  begin
                    if YWCP2.Locate('CARTONBAR',cartonbar,[]) then
                    begin
                      //判斷是否掃到其他訂單
                      if RYEdit.Text='' then
                      begin
                        RYEdit.Text:=YWCP2.fieldbyname('YSBH').value;
                      end else
                      begin
                        if YWCP2.fieldbyname('YSBH').value <> RYEdit.text then
                        begin
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          if messagedlg('Cheng Shiping RYNO',mtinformation,[mbYes,mbNo],0)=mrYes then
                          begin
                            RYEdit.Text:=YWCP2.fieldbyname('YSBH').value;
                          end else
                          begin
                            edit3.Text:='';
                            abort;
                          end;
                        end
                      end;
                      //
                      DDBH:=YWCP2.fieldbyname('DDBH').value;
                      XH:=YWCP2.fieldbyname('XH').value;
                      sgw := YWCP2.fieldbyname('sgw').value;
                      if sgw= 0 then  //如果業務尚未計算標準重量
                      begin
                        showmessage('Khong co trong luong tieu chuan thung'); //沒有外箱標準重量
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        abort;
                      end;
                      //20140922 修改 B1 生產Tommy掃內盒
                      GetWeight(RYEdit.Text);
                      StaticText1.Caption:=FloattoStr(sgw);  //顯示外箱標準重量
                      StaticText2.Caption:=FloattoStr(gram);  //顯示鞋子標準重量
                      if Gram = 0 then  //如果沒有設定誤差重量
                      begin
                        showmessage('Khong co trong luong tieu chuan giay');  //沒有鞋子標準重量
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        abort;
                      end;
                      if rgw = 0 then   //如果沒有取得秤重重量
                      begin
                        showmessage('Khong can duoc'); //秤重失敗
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        abort;
                      end;

                      //確認A工段掃描數是否大於O工段
                      //20150114 暫時不檢查
                      with FirstInCheck do
                      begin
                        Active:=false;
                        sql.Clear;
                        sql.add('select YWCP.DDBH,YWCP.XH,YWBZPOS.DDCC,YWBZPOS.Qty,ok.okcts,ok.Aqty from YWCP');
                        sql.add('left join YWBZPOS on YWCP.DDBH = YWBZPOS.DDBH and YWCP.XH = YWBZPOS.XH');
                        //
                        sql.add('      left join ywdd on ywdd.ddbh=ywcp.ddbh');
                        sql.add('      left join ddzl on ywdd.ysbh=ddzl.ddbh');
                        //
                        sql.add('left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                        sql.add('		        where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                        sql.add('		        group by xxcc) as ok on YWBZPOS.DDCC = ok.XXCC');
                        sql.add('where CARTONBAR = '''+Cartonbar+''' and (ok.Aqty <> ''0'' or ddzl.flag=1)');
                        Active:=true;
                      end;
                      if (FirstInCheck.RecordCount = 0) and (main.Edit2.Text=GSDH_PD) then  //檢查該箱第一次掃描時是否有已完工數量
                      begin
                      //訊息: 訂單號 Go工段未掃描完成無法,無法掃描入庫
                        showmessage('Don Hang '''+RYEdit.text+''' Cong Doan Go Hoan Thanh So Luong Khong Du, Khong The Scan Nhap Kho');
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        abort;
                      end;

                      with ScanCheck do
                      begin
                        active:=false;
                        sql.Clear;

                        //原本版本 old version
                        {sql.add('select scan.*,(case when scan.INqty < scan.Aqty then 1 else 0 end) as ScanFG, ddzl.flag as Flag');
                        sql.add('from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(case when YWCP.SB=''1'' then YWBZPOS.qty else 0 end) as INqty');
                        sql.add('      from ywcp');
                        sql.add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                        sql.add('      left join ywdd on ywdd.ddbh=ywcp.ddbh');
                        sql.add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                        sql.add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                        sql.add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                        sql.add('	     where ywdd.ysbh = '''+RYEdit.Text+''' and lastindate is not null');
                        sql.add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                        sql.add('      left join ywdd on ywdd.ddbh=scan.ddbh');
                        sql.add('      left join ddzl on ywdd.ysbh=ddzl.ddbh');
                        //20150115修改增加效率
                        sql.add('where  scan.DDBH='''+DDBH+''' and scan.XH='''+XH+''' and ((case when scan.INqty < scan.Aqty then 1 else 0 end) = ''0'' or ddzl.flag=1)');   }

                        //20180421 修正bug檢查G工段大於成品入庫，之前版本未考慮暫存DGBrid掃描箱數
                        SQL.Add('select * from (');
                        SQL.Add('select DDBH,XH,PagQty,XXCC,CTS,okCTS,AQty,Sum(INqty) as INqty,(case when Sum(INqty) < YWCP.Aqty then 1 else 0 end) as ScanFG,Flag from (');
                        SQL.Add('select scan.*,ddzl.flag as Flag');
                        SQL.Add('from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(case when YWCP.SB=''1'' then YWBZPOS.qty else 0 end) as INqty');
                        SQL.Add('      from ywcp');
                        SQL.Add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                        SQL.Add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                        SQL.Add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                        SQL.Add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                        SQL.Add('	     where ywcp.ddbh = '''+RYEdit.Text+''' and lastindate is not null '+DBGrid_YWCP_Qty(Cartonbar,RYEdit.Text,false));
                        SQL.Add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                        SQL.Add('      left join ddzl on scan.ddbh=ddzl.ddbh');
                        SQL.Add('union all');
                        SQL.Add('   select scan.*,ddzl.flag as Flag');
                        SQL.Add('   from (select ywcp.ddbh,ywcp.XH,YWBZPOS.Qty as PagQty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty,sum(YWBZPOS.qty) as INqty');
                        SQL.Add('      from ywcp');
                        SQL.Add('	     left join ywbzpos on ywbzpos.ddbh = ywcp.ddbh and ywbzpos.xh =ywcp.xh');
                        SQL.Add('	     left join (select XXCC,sum(CTS) as cts,sum(okcts) as okcts,sum(qty * okcts) as Aqty from smddss');
                        SQL.Add('			            where ddbh like '''+RYEdit.Text+'%'' and smddss.gxlb = ''A''');
                        SQL.Add('			            group by xxcc) as ok on ywbzpos.ddcc = ok.xxcc');
                        SQL.Add('	     where 1=1 '+DBGrid_YWCP_Qty(Cartonbar,RYEdit.Text,true) );
                        SQL.Add('      group by ywcp.ddbh,ywcp.XH,YWBZPOS.Qty,ok.xxcc,ok.cts,ok.okcts,ok.Aqty) as scan');
                        SQL.Add('      left join ddzl on scan.ddbh=ddzl.ddbh    ) YWCP');
                        SQL.Add('Group by   DDBH,Xh,PagQty,XXCC,CTS,okCTS,AQty,Flag ) Scan');
                        SQL.Add('where  scan.DDBH='''+RYEdit.Text+''' and scan.XH='''+XH+''' and ((case when scan.INqty <= scan.Aqty then 1 else 0 end) = ''0'' or Scan.flag=1)');

                        //funcObj.WriteErrorLog(sql.Text);
                        active:=true;
                      end;
                      ScanCheck.First;
                      //if (Scancheck.FieldByName('CTS').Value <> Scancheck.FieldByName('okCTS').Value) and (main.Edit2.Text=GSDH_PD)
                      //  and (Scancheck.FieldByName('ScanFG').Value = '0') and (ScanCheck.FieldByName('Flag').value<>'1') then  //檢查外箱掃描鎖定，僅控管A12廠
                      if  (main.Edit2.Text=GSDH_PD) and (Scancheck.FieldByName('ScanFG').Value = '0') and (ScanCheck.FieldByName('Flag').value<>'1')  then  //20230523
                      begin
                        showmessage('Don Hang '''+RYEdit.text+''' Cong Doan Go Hoan Thanh So Luong Khong Du, Khong The Scan Nhap Kho ');
                        //終止
                        if YWBZPOS.Active=true then
                        begin
                          YWBZPOS.first;
                          while not YWBZPOS.eof do
                          begin
                            YWBZPOS.edit;
                            YWBZPOS.FieldByName('In_Qty').value:=YWBZPOS.fieldbyname('Qty').value;
                            YWBZPOS.post;
                            YWBZPOS.next;
                          end;
                        end;
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        abort;
                      end;
                      //如果實際重量低於標準重量,無法掃描入庫
                      INUserID:=main.Edit1.Text;//20140321 預設入庫人員UserID為登入者
                      if (sgw - rgw) > gram/3 then
                      begin
                         //20140321 A12入庫秤重過輕 解鎖詢問
                        if ((main.Edit2.Text=GSDH_PD) and (ERP_VersionRel=true) ) then
                        begin
                          //彈跳視窗讓解鎖人員輸入允許入庫作業
                          if ShowUnlockWeightDialog()=false then abort;
                        end else
                        begin
                          //非VA12廠登入原本流程
                          showmessage('Trong luong nho hon gioi han'); //重量低於限制
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          edit3.text:='';
                          abort;
                        end;
                      end;
                      with YWCP do
                      begin
                        if locate('CARTONBAR',cartonbar,[]) then //內盒數量已經一樣 重複掃描終止
                        begin
                          YWBZPOS.first;
                          while not YWBZPOS.eof do
                          begin
                            YWBZPOS.edit;
                            YWBZPOS.FieldByName('In_Qty').value:=YWBZPOS.fieldbyname('Qty').value;
                            YWBZPOS.post;
                            YWBZPOS.next;
                          end;
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          windows.beep(1500,500);
                          edit3.Text:='';
                          abort;    //
                        end;
                        //20200928材料未領完成或未調整不能滿箱入成品倉
                        if CheckIsYPCP_CheckKCLLS(YWCP2.fieldbyname('CartonBar').AsString,RYEdit.Text,YWCP2.fieldbyname('YWQty').value,YWCP2.fieldbyname('SB').AsString)=false then
                        begin
                          //showmessage('Vat tu cua Don Hang chua lanh du, khong duoc nhap kho thanh pham, vui long lien he sinh quan'+#13#10+Production_N511_CheckKCLLS_Info);
                          showmessage(''+Production_N511_CheckKCLLS_Info+' Vat tu cua Don Hang chua lanh du, khong duoc nhap kho thanh pham, vui long lien he sinh quan');
                          abort;
                        end;
                        append;
                        fieldbyname('CartonBar').value:=YWCP2.fieldbyname('CartonBar').value;
                        fieldbyname('DDBH').value:=YWCP2.fieldbyname('DDBH').value;
                        fieldbyname('Article').value:=YWCP2.fieldbyname('Article').value;
                        fieldbyname('XieMing').value:=YWCP2.fieldbyname('XieMing').value;
                        fieldbyname('CartonNO').value:=YWCP2.fieldbyname('CartonNO').value;
                        fieldbyname('XH').value:=YWCP2.fieldbyname('XH').value;
                        fieldbyname('Qty').value:=YWCP2.fieldbyname('YWQty').value;
                        fieldbyname('DDGB').value:=YWCP2.fieldbyname('DDGB').value;
                        fieldbyname('XieXing').value:=YWCP2.fieldbyname('XieXing').value;
                        fieldbyname('SheHao').value:=YWCP2.fieldbyname('SheHao').value;
                        fieldbyname('SB').value:='1';
                        fieldbyname('CKBH').value:=CBX1.text;
                        fieldbyname('KCBH').value:=trim(edit2.text);
                        fieldbyname('KVBH').value:=trim(KVBHEdit.text);
                        fieldbyname('rgw').value:=rgw;
                        fieldbyname('LastINDate').value:=NDate;
                        fieldbyname('INUSER').Value:=INUserID;//20140321 增加入庫人員ID記錄
                        //20140405 weston 修改
                        fieldbyname('LastINDate').value:=NDate;
                        if not YWCP2.fieldbyname('INDate').isnull then
                        begin
                          //重複入庫保留第一次入庫時間
                          fieldbyname('INCS').value:=YWCP2.fieldbyname('INCS').value+1;
                          fieldbyname('INDate').value:=YWCP2.fieldbyname('INDate').value;
                          //保留第一次入庫部門
                          fieldbyname('DepNO').value:=YWCP2.fieldbyname('DepNo').value;
                          fieldbyname('DepName').value:=YWCP2.fieldbyname('DepName').value;
                        end
                        else
                        begin
                          //第一次入庫時間
                          fieldbyname('INCS').value:=1;
                          fieldbyname('INDate').value:=NDate;
                          fieldbyname('DepNO').value:=edit5.text;
                          fieldbyname('DepName').value:=edit1.text;
                        end;
                        //
                        fieldbyname('LPNBarcode').value:=YWCP2.fieldbyname('LPNBarcode').value;
                        fieldbyname('YSBH').value:=YWCP2.fieldbyname('YSBH').value;
                        fieldbyname('Country').value:=YWCP2.fieldbyname('Country').value;
                        post;
                        edit3.text:='';
                        edit4.text:=inttostr(recordcount);
                      end; //end with YWCP do
                    end else
                    begin
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      edit3.Text:='';
                    end;
                  end else //檢查內盒總數與內盒實際總數是否相同
                  begin
                    if YWBZPOS.Locate('InboxBar',cartonbar,[]) then
                    begin
                      //檢查該箱內盒數與實際內盒數是否相同
                      if YWBZPOS.FieldByName('Qty').value=YWBZPOS.fieldbyname('In_Qty').value then
                      begin
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        windows.beep(1500,500);
                        //showmessage('請檢查裝箱是否正確？XIN KIEM TRA DONG GOI CO CHINH XAC CHUA?');
                        edit3.Text:='';
                      end
                      else
                      begin
                        YWBZPOS.Edit;
                        YWBZPOS.FieldByName('In_Qty').value:=YWBZPOS.fieldbyname('In_Qty').value+1;
                        YWBZPOS.post;
                        edit3.Text:='';
                      end;
                    end else
                    begin
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      windows.beep(1500,500);
                      //showmessage('請檢查裝箱是否正確？XIN KIEM TRA DONG GOI CO CHINH XAC CHUA?');
                      edit3.Text:='';
                    end;
                  end; //end if 檢查內盒總數與內盒實際總數是否相同
              end;
            end;
    end;//if radiogroup1.itemindex=1 then
  end;
end;

procedure TScanIn.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TScanIn.Button1Click(Sender: TObject);
var IsUploadSucc:boolean;
    tmpCARTONBAR:TStringlist;
    i:integer;
    SQLStr:String;
begin
  //
  try
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').value;
      active:=false;
    end;
    tmpCARTONBAR:=TStringlist.Create;
    IsUploadSucc:=true; //判斷上傳是否異常成功或失敗
    with YWCP  do
    begin
      YWCP.first;
      while not YWCP.eof do
      begin
          //20140405 weston 修改
          YWCPExe.Active:=false;
          YWCPExe.SQL.Clear;
          YWCPExe.SQL.Add('Update YWCP Set  SB = '''+FieldByName('SB').AsString+''',CKBH='''+FieldByName('CKBH').AsString+''',');
          YWCPExe.SQL.Add('DepNo='''+FieldByName('DepNo').AsString+''',KCBH='''+FieldByName('KCBH').AsString+''',KVBH='''+FieldByName('KVBH').AsString+''',INCS='+FieldByName('INCS').AsString+',');
          YWCPExe.SQL.Add('INDATE='''+FormatDatetime('YYYY-MM-DD HH:NN:SS',FieldByName('INDATE').value)+''',LastInDate='''+FormatDatetime('YYYY-MM-DD HH:NN:SS',FieldByName('LastInDate').value)+''',');
          YWCPExe.SQL.Add('rgw='+FieldByName('rgw').AsString+',INUser='''+FieldByName('INUser').AsString+''',REDATE=Case when SB in (''2'',''4'') then  '''+FormatDatetime('YYYY-MM-DD HH:NN:SS',FieldByName('LastInDate').value)+''' else REDATE end, ');
          YWCPExe.SQL.Add('RECS=Case when SB in (''2'',''4'') then  IsNull(RECS,0)+1 else RECS end where CARTONBAR='''+FieldByName('CARTONBAR').AsString+'''');
          //funcObj.WriteErrorLog(YWCPExe.sql.Text);
          YWCPExe.ExecSQL;
          tmpCARTONBAR.Add(FieldByName('CARTONBAR').AsString);
          if YWCPExe.RowsAffected<>1 then IsUploadSucc:=false;
          //
          YWCP.next;
      end;
      //檢查資料是否完整寫入
      if tmpCARTONBAR.Count>0 then
      begin
        for i:=0 to tmpCARTONBAR.Count-1 do
        begin
          SQLStr:=SQLStr+'(CARTONBAR='''+tmpCARTONBAR.Strings[i]+''') or';
        end;
        if Length(SQLStr)>0 then SQLStr:='Select CARTONBAR from YWCP where ('+Copy(SQLStr,1,length(SQLStr)-3)+') and SB=1';
        //
        with YWCPExe do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add(SQLStr);
          Active:=true;
          if YWCPExe.RecordCount<tmpCARTONBAR.Count then IsUploadSucc:=false;
          Active:=false;
        end;
      end;
      tmpCARTONBAR.Free;
      //是否上傳都有更新成功
      if IsUploadSucc=true then
      begin
        YWCP.active:=false;
        edit4.text:='0';
        YWCP.active:=true;
        YPCPMat.Active:=false;
        YPCPMat.Active:=true;
      end else
      begin
        Showmessage('Du lieu nhap kho khi upload khong thanh cong, vui long upload lan nua hoac lien he IT');
      end;
    end;
  except
    on E:Exception do
      Showmessage('Error:'+E.Message);
  end;
end;

procedure TScanIn.YWBZPOSAfterOpen(DataSet: TDataSet);
begin
  if RB2.Checked=true then
  begin
    with YWBZPOS do
      begin
        while not eof do
          begin
            if fieldbyname('InBoxBar').IsNull then
              begin
                showmessage('Vui long scan carton truoc'); //請掃描內盒
              end;
            next;
          end;
      end;
  end;
end;

procedure TScanIn.Button2Click(Sender: TObject);
begin
  YWCP.Active:=false;
  YWCP.Active:=true;
  YPCPMat.Active:=false;
  YPCPMat.Active:=true;
  edit4.Text:='0';
end;

procedure TScanIn.YWCPAfterDelete(DataSet: TDataSet);
begin 
  edit4.text:=inttostr(YWCP.RecordCount);
end;

procedure TScanIn.Delete1Click(Sender: TObject);
begin
  YWCP.Delete;
end;

procedure TScanIn.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.checked then
  begin
    GBBH.Active:=true;
  end
  else
    begin
      YWBZPOS.Active:=false;
      GBBH.Active:=false;
    end;
end;

procedure TScanIn.Import1Click(Sender: TObject);
begin
  if edit5.text='' then
  begin
    showmessage('Pls select Department first.');
    edit1.SetFocus;
  end
  else
    begin
      ScanIn_hand:= TScanIn_hand.create(self);
      ScanIn_hand.show;
    end;
end;

procedure TScanIn.GBBHAfterOpen(DataSet: TDataSet);
begin
  if YWCP.recordcount>0 then
  begin
    with YWBZPOS do
      begin
        active:=false;
        if GBBH.recordcount>0 then
          begin
            params[0].Value:=YWCP.fieldbyname('CartonBar').Value;
            params[1].Value:=YWCP.fieldbyname('DDGB').Value;
            params[2].Value:=YWCP.fieldbyname('DDBH').Value;
            params[3].Value:=YWCP.fieldbyname('XH').Value;
          end
          else
            begin
              params[0].Value:=YWCP.fieldbyname('CartonBar').Value;
              params[1].Value:='NORMAL';
              params[2].Value:=YWCP.fieldbyname('DDBH').Value;
              params[3].Value:=YWCP.fieldbyname('XH').Value;
            end;
        Active:=true;
      end;
  end;
end;

procedure TScanIn.GetWeight(RYNO:string);
begin

  //取得誤差重量與秤重函數
  with GetGram do
  begin
    active:=false;
    sql.clear;
    {sql.add('select XXCC.*,(isnull(YWXXNew.NWeigh,0) * 1.04) as NWeigh ');
    sql.add('from(select YWXXNew.XieXing,YWXXNew.SheHao,MIN(YWXXNew.XXCC) as XXCC');
    sql.add('	    from YWXXNew');
    sql.add('     left join DDZL on YWXXNew.XieXing=DDZL.XieXing and YWXXNew.SheHao=DDZL.SheHao');
    sql.add('	    where DDZL.DDBH = '''+RYNO+'''');
    sql.add('   	group by YWXXNew.XieXing,YWXXNew.SheHao) as XXCC');
    sql.add('left join YWXXNew on XXCC.XieXing=YWXXNew.XieXing and XXCC.SheHao=YWXXNew.SheHao and XXCC.XXCC=YWXXNew.XXCC'); }
    sql.Add('select YWXXNew.XieXing,YWXXNew.SheHao,XXCC,isnull(YWXXNew.NWeigh,0)*1.04 as NWeigh');
    sql.Add('from YWCP left join YWDD on YWCP.DDBH =YWDD.DDBH ');
    sql.Add('left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH and YWCP.XH=YWBZPOS.XH');
    sql.Add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('left join YWXXNew on DDZL.XieXing=YWXXNew.XieXing and DDZL.SheHao=YWXXNew.SheHao');
    sql.Add('and YWBZPOS.DDCC=YWXXNew.XXCC');
    sql.Add('where CARTONBAR='''+edit3.Text+'''');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
    if GetGram.RecordCount = 0 then
    begin
      Gram:=0;
    end
    else
    begin
      Gram:=fieldbyname('NWeigh').value;
    end;
  end;

  if MSComm1.Enabled then
  begin
    rwin.Text:=MSComm1.Input;
    rg:=trim(copy(rwin.Lines.ValueFromIndex[2],10,7));
    rgw := StrToFloat(rg);
  end else
  begin
    rgw:=0;
  end;

  {rg:=edit6.Text;
  rgw := StrToFloat(rg); } 
end;

procedure TScanIn.GetB1Weight(CartonNO:string);
begin
  //取得誤差重量與秤重函數
  with GetGram do
  begin
    active:=false;
    sql.clear;
    sql.add('select round(sgw * 0.03,3) as NWeigh from YWCP');
    sql.add('where CARTONBAR = '''+CartonNO+'''');
    active:=true;
    if GetGram.RecordCount = 0 then
    begin
      Gram:=0;
    end
    else
    begin
      Gram:=fieldbyname('NWeigh').value;
    end;
  end;
  if MSComm1.Enabled then
  begin
    rwin.Text:=MSComm1.Input;
    rg:=trim(copy(rwin.Lines.ValueFromIndex[2],10,7));
    rgw := StrToFloat(rg);
  end else
  begin
    rgw:=0;
  end;
end;

procedure TScanIn.Button4Click(Sender: TObject);
begin
  if button4.Caption='W N' then
  begin
    button4.Caption:='W Y';
    mscomm1.Enabled:=true;
    MSComm1.PortOpen := true;
  end
  else
  begin
    button4.Caption:='W N';
    MSComm1.PortOpen:=false;
    mscomm1.Enabled:=false;
  end;
end;

procedure TScanIn.RB1Click(Sender: TObject);
begin
  if RB1.Checked=true then
  begin
    GBBH.Active:=false;
    YWBZPOS.Active:=false;
    checkbox1.checked:=false;
    checkbox1.Enabled:=true;
  end else
  begin
    GBBH.active:=true;
    checkbox1.checked:=true;
    checkbox1.Enabled:=false;
  end;
end;

end.
