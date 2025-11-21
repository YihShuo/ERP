unit DeliverCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TDeliverCon = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    Button3: TButton;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    DTP2: TDateTimePicker;
    DelDetKCBH: TStringField;
    Edit1: TEdit;
    Label2: TLabel;
    DelDetDDYN: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DelDetBLSB: TStringField;
    DelDetYWSM: TStringField;
    DelDetYYBH: TStringField;
    DelDetZWPM: TStringField;
    DelMasCKGS: TStringField;
    Qtemp: TQuery;
    DelDetKCQty: TFloatField;
    DelTot: TQuery;
    DelTotCLBH: TStringField;
    DelTotQty: TCurrencyField;
    DS1: TDataSource;
    DelTotTempQty: TCurrencyField;
    UpdateSQL1: TUpdateSQL;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGridEh;
    DelDetCKBH: TStringField;
    HGLBCB: TComboBox;
    Label3: TLabel;
    KhoaCK: TCheckBox;
    DelDetHGLB: TStringField;
    DelDetCNO: TStringField;
    DelDetNK: TCurrencyField;
    DelDetHD: TCurrencyField;
    DelDetKD: TCurrencyField;
    DelDetXT: TCurrencyField;
    DelDetGC: TCurrencyField;
    DelDetZZZZ: TCurrencyField;
    DelDetHGBH: TStringField;
    NKCK1: TCheckBox;
    DelDetSCANUSERID: TStringField;
    DelDetDDGB: TStringField;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelMasSFL: TStringField;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    Panel5: TPanel;
    Label4: TLabel;
    SCBHEdit: TEdit;
    Label5: TLabel;
    CLBHEdit: TEdit;
    DelSCBH: TQuery;
    DS2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    DelSCBHLLNO: TStringField;
    DelSCBHSCBH: TStringField;
    DelSCBHDFL: TStringField;
    DelSCBHCLBH: TStringField;
    DelSCBHTempQty: TCurrencyField;
    DelSCBHQty: TCurrencyField;
    DetailCK: TCheckBox;
    DelDetHGBH_HD: TStringField;
    DelDetTC: TCurrencyField;
    DelDetHGBH_TC: TStringField;
    DelDetLLMemo: TStringField;
    HGBHQry: TQuery;
    UpdateSQL3: TUpdateSQL;
    DS5: TDataSource;
    HGBHQryCKBH: TStringField;
    HGBHQryCLBH: TStringField;
    HGBHQryHGLB: TStringField;
    HGBHQryCNO: TStringField;
    HGBHQryQty: TCurrencyField;
    HGBHQryNowQty: TCurrencyField;
    Splitter3: TSplitter;
    CKHGBH: TCheckBox;
    DBGridEh3: TDBGridEh;
    CKBHCombo: TComboBox;
    Label6: TLabel;
    Splitter4: TSplitter;
    DBGridEh4: TDBGridEh;
    DelDetS: TQuery;
    DelDetSLLNO: TStringField;
    DelDetSCLBH: TStringField;
    DelDetSDFL: TStringField;
    DelDetSSCBH: TStringField;
    DelDetSSIZE: TStringField;
    DelDetSCLSL: TCurrencyField;
    DelDetSQty: TCurrencyField;
    DelDetSUSERID: TStringField;
    DelDetSUSERDATE: TDateTimeField;
    DelDetSYN: TStringField;
    UPDetS: TUpdateSQL;
    DS6: TDataSource;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DelMasNewRecord(DataSet: TDataSet);
    procedure DelDetNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DelTotAfterPost(DataSet: TDataSet);
    procedure DelMasAfterScroll(DataSet: TDataSet);
    procedure DelDetAfterScroll(DataSet: TDataSet);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DelDetAfterPost(DataSet: TDataSet);
    procedure DelDetBeforeEdit(DataSet: TDataSet);
    procedure SCBHEditKeyPress(Sender: TObject; var Key: Char);
    procedure CLBHEditKeyPress(Sender: TObject; var Key: Char);
    procedure DelSCBHBeforeEdit(DataSet: TDataSet);
    procedure DelSCBHAfterPost(DataSet: TDataSet);
    procedure DBGrid2CellClick(Column: TColumnEh);
    procedure DetailCKClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    IsLockPostDBGrid:boolean;
    OldQty:double;
    //
    sYear,sMonth:String;
    sSTDT,sEDDT:String;
    CKBHList:TStringlist;
    procedure ReadIni();
    { Private declarations }
    //20171017 檢查HG類別
    procedure Init_HGBH_CNO();
    function CheckKCLLS_HGLB(var Info:String):boolean;
    procedure DelSCBH_Query();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  DeliverCon: TDeliverCon;
  var sdate,edate,NDate:TDate;

implementation

uses main1, MaterialArea1, FunUnit;

{$R *.dfm}

procedure TDeliverCon.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      //倉庫位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(DelDet.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).EditFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('KCQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('NK')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('HD')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('KD')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('TC')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('GC')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('XT')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelTot.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelSCBH.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelSCBH.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    DBGrid2.Columns[19].Visible:=false;
  end;
end;

procedure TDeliverCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id(''tempdb..#KC'') is not null  ');
    sql.add('begin   drop table #KC end   ');
    execsql;
  end;
  CKBHList.Free;
  action:=cafree;
end;

procedure TDeliverCon.Button1Click(Sender: TObject);
begin

  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName,KCCK.GSBH as CKGS,bgszl.SFL ');
    sql.add('from KCLL ');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.add('left join bgszl  on bgszl.GSDH=KCLL.GSBH ');
    sql.add('where KCLL.CFMID=''NO''');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('      and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('      and KCLL.LLNO like '''+edit1.Text+'%''');
    sql.add('      and KCCK.GSBH='''+main.Edit2.Text+'''');
    if CKBHCombo.Text<>'' then
    sql.add('      and KCLL.CKBH='''+CKBHCombo.Text+''' ');
    sql.add('order by KCLL.LLNO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
  DelDet.Active:=true;
  DelDetS.Active:=true;
  //
  Panel3.Visible:=true;
  DBGrideh1.Visible:=true;
  DelTot.Active:=true;
  //20200905 億柏底廠可搜尋訂單+料號
  if DetailCK.Checked=true then
  begin
   Panel4.Visible:=true;
   DelSCBH.Active:=true;
   Splitter2.Align:=alBottom;
  end;
  Splitter1.Align:=alRight;
end;

procedure TDeliverCon.Button3Click(Sender: TObject);
begin
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
end;
//20220713 檢查海關代碼是否正數
procedure TDeliverCon.Init_HGBH_CNO();
begin
  with HGBHQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CKBH,CLBH,HGLB,CNO,Sum(Qty) as Qty,Sum(Qty) as NowQty from (');
    SQL.Add('Select CKBH,CLBH,HGLB,Case when CNO=''ZZZZ'' then '''' else CNO end as CNO,Qty,''Last'' as SB ');
    SQL.Add('from KCCLMONTH_HGBH');
    SQL.Add('where KCYEAR='''+sYear+''' and KCMONTH='''+sMonth+''' and CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')  --and CLBH=''G010000174''');
    SQL.Add('Union all');
    SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKS.CNO,'''') as CNO,Sum(IsNull(KCRKS.Qty,0.0)) as RKQty,''RK'' as SB');
    SQL.Add('from KCRKS ');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where 1=1 ');
    SQL.Add('   and Convert(smalldatetime,convert(varchar,KCRK.UserDate,111)) between ');
    SQL.Add('		'''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    SQL.Add('   and KCRK.CKBH  in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')  --and KCRKS.CLBH=''G010000174''');
    SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,KCRKS.CNO');
    SQL.Add('Union all');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLS.CNO,'''') as CNO,-1*Sum(IsNull(KCLLS.Qty,0.0)) as LLQty,''LL'' as SB');
    SQL.Add('from KCLLS');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNo');
    SQL.Add('where 1=1 and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''');
    SQL.Add('   and Convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
    SQL.Add('		'''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    SQL.Add('   and KCLL.CKBH  in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')  --and KCLLS.CLBH=''G010000174''');
    SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,KCLLS.CNO');
    SQL.Add('union all');
    SQL.Add('Select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,'''' as CNO,Sum(IsNull(JGZLS.Qty,0.0)) as JGQty,''GR'' as SB');
    SQL.Add('from JGZL');
    SQL.Add('left join JGZLS on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between');
    SQL.Add('   '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    SQL.Add('	  and JGZLS.ZMLB=''ZZZZZZZZZZ''    --and JGZLS.CLBH=''G010000174''');
    SQL.Add('	  and JGZL.CKBH  in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    SQL.Add('	  Group by JGZL.CKBH,JGZLS.CLBH');
    SQL.Add('Union all');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLS.CNO,'''') as CNO,-1*Sum(IsNull(KCLLS.Qty,0.0)) as LLQty,''CK'' as SB');
    SQL.Add('from KCLLS');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNo');
    SQL.Add('where 1=1 and KCLL.SCBH=''JJJJJJJJJJ''  and KCLL.CFMID<>''NO''');
    SQL.Add('   and Convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
    SQL.Add('		'''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    SQL.Add('   and KCLL.CKBH  in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')  --and KCLLS.CLBH=''G010000174''');
    SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,KCLLS.CNO');
    SQL.Add(')   KCCLMonth_HGBH');
    SQL.Add('Group by  CKBH,CLBH,HGLB,CNO');
    SQL.Add('order by CKBH,CLBH,Sum(Qty) desc,HGLB,CNO');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

//20171213檢查分倉數量和庫存是否足夠發料
function TDeliverCon.CheckKCLLS_HGLB(var Info:String):boolean;
var iRes:boolean;
    Str:string;
begin
  //
  iRes:=true;
  if HGLBCB.Text='NK' then
  begin
    if DelDet.FieldByName('HGLB').AsString='' then
    begin
      DelDet.Edit;
      if DelDet.FieldByName('NK').Value>0 then
         DelDet.FieldByName('HGLB').Value:='NK'
      else if DelDet.FieldByName('TC').Value>0 then
         DelDet.FieldByName('HGLB').Value:='TC'
      else if DelDet.FieldByName('HD').Value>0 then
         DelDet.FieldByName('HGLB').Value:='HD'
      else if DelDet.FieldByName('GC').Value>0 then
         DelDet.FieldByName('HGLB').Value:='GC'
      else if DelDet.FieldByName('KD').Value>0 then
         DelDet.FieldByName('HGLB').Value:='KD'
      else
         DelDet.FieldByName('HGLB').Value:='XT';
      DelDet.Post;
    end;
  end else if HGLBCB.Text='KD' then
  begin
    //
    if DelDet.FieldByName('HGLB').AsString='' then
    begin
      DelDet.Edit;
      if DelDet.FieldByName('KD').Value>0 then
         DelDet.FieldByName('HGLB').Value:='KD'
      else if DelDet.FieldByName('HD').Value>0 then
         DelDet.FieldByName('HGLB').Value:='HD'
      else if DelDet.FieldByName('GC').Value>0 then
         DelDet.FieldByName('HGLB').Value:='GC'
      else if DelDet.FieldByName('XT').Value>0 then
         DelDet.FieldByName('HGLB').Value:='XT'
      else if DelDet.FieldByName('NK').Value>0 then
         DelDet.FieldByName('HGLB').Value:='NK'
      else 
         DelDet.FieldByName('HGLB').Value:='TC';
      DelDet.Post;
    end;
    //
  end else
  begin
    if DelDet.FieldByName('HGLB').AsString='' then
    begin
      DelDet.Edit;
      if DelDet.FieldByName(HGLBCB.Text).Value>0 then
         DelDet.FieldByName('HGLB').Value:=HGLBCB.Text
      else if DelDet.FieldByName('GC').Value>0 then
         DelDet.FieldByName('HGLB').Value:='GC'
      else if DelDet.FieldByName('XT').Value>0 then
         DelDet.FieldByName('HGLB').Value:='XT'
      else if DelDet.FieldByName('NK').Value>0 then
         DelDet.FieldByName('HGLB').Value:='NK'
      else if DelDet.FieldByName('TC').Value>0 then
         DelDet.FieldByName('HGLB').Value:='TC'
      else
         DelDet.FieldByName('HGLB').Value:='KD';
      DelDet.Post;
    end;
  end;
  //海關代碼帶入預設值
  DelDet.Edit;
  //20220713 庫存清單帶入海關代碼
  if CKHGBH.Checked=true then
  begin
    if HGBHQry.locate('CKBH;CLBH;HGLB',vararrayof([DelMas.FieldByName('CKBH').AsString,DelDet.FieldByName('CLBH').AsString,DelDet.FieldByName('HGLB').AsString]),[]) then
    begin
      if  DelDet.FieldByName('CNO').Value=null then
        DelDet.FieldByName('CNO').Value:=HGBHQry.FieldByName('CNO').Value;
    end;
  end;
  //
  if ((DelDet.FieldByName('HGLB').Value='NK')) then
  begin
    if  DelDet.FieldByName('CNO').Value=null then
      DelDet.FieldByName('CNO').Value:=DelDet.FieldByName('HGBH').Value
  end else if  ((DelDet.FieldByName('HGLB').Value='TC')) then
  begin
    if  DelDet.FieldByName('CNO').Value=null then
      DelDet.FieldByName('CNO').Value:=DelDet.FieldByName('HGBH_TC').Value
  end else if ((DelDet.FieldByName('HGLB').Value='HD')) then
  begin
    if  DelDet.FieldByName('CNO').Value=null then
      DelDet.FieldByName('CNO').Value:=DelDet.FieldByName('HGBH_HD').Value
  end else if ((DelDet.FieldByName('HGLB').Value='KD')) then
  begin

  end else
  begin
    DelDet.FieldByName('CNO').Value:=null;
  end;
  DelDet.Post;
  //檢查數量
  if DelDet.FieldByName('HGLB').AsString='NK' then
  begin
    if  DelDet.FieldByName('Qty').Value>DelDet.FieldByName('NK').Value then iRes:=false;
  end else if DelDet.FieldByName('HGLB').AsString='TC' then
  begin
    if  DelDet.FieldByName('Qty').Value>DelDet.FieldByName('TC').Value then iRes:=false;
  end else if DelDet.FieldByName('HGLB').AsString='HD' then
  begin
    if  DelDet.FieldByName('Qty').Value>DelDet.FieldByName('HD').Value then iRes:=false;
  end else if DelDet.FieldByName('HGLB').AsString='GC' then
  begin
    if  DelDet.FieldByName('Qty').Value>DelDet.FieldByName('GC').Value then iRes:=false;
  end else if DelDet.FieldByName('HGLB').AsString='KD' then
  begin
    if  DelDet.FieldByName('Qty').Value>DelDet.FieldByName('KD').Value then iRes:=false;
  end else if DelDet.FieldByName('HGLB').AsString='XT' then
  begin
    if  DelDet.FieldByName('Qty').Value>DelDet.FieldByName('XT').Value then iRes:=false;
  end else
  begin
    iRes:=false;
  end;
  //20220713 檢查海關碼數量
  if CKHGBH.Checked=true then
  begin
    HGBHQry.locate('CKBH;CLBH;HGLB;CNO',vararrayof([DelMas.FieldByName('CKBH').AsString,DelDet.FieldByName('CLBH').AsString,DelDet.FieldByName('HGLB').AsString,DelDet.FieldByName('CNO').AsString]),[]);
    if ( (DelMas.FieldByName('CKBH').AsString=HGBHQry.FieldByName('CKBH').AsString) and (DelDet.FieldByName('CLBH').AsString=HGBHQry.FieldByName('CLBH').AsString)
       and (DelDet.FieldByName('HGLB').AsString=HGBHQry.FieldByName('HGLB').AsString) and (DelDet.FieldByName('CNO').AsString=HGBHQry.FieldByName('CNO').AsString) ) then
    begin
      if DelDet.FieldByName('Qty').Value>HGBHQry.FieldByName('NowQty').Value then
      begin
        Info:=DelDet.FieldByName('CNO').AsString+' ton kho so luong ma hai quan khong duoc. 倉庫海關碼數量不足';
        iRes:=false;
      end;
    end else
    begin
      Info:=DelDet.FieldByName('CNO').AsString+' ton kho so luong ma hai quan khong duoc. 倉庫海關碼數量不足';
      iRes:=false;
    end;
  end;
  //
  if KhoaCK.Checked=true then
  begin
    //Order Export foreign 出貨國家不是越南VIE 或<>空白
    if ( ((DelDet.FieldByName('DDGB').AsString<>'') and (DelDet.FieldByName('DDGB').AsString<>'VIE')) or (Copy(DelDet.FieldByName('SCBH').AsString,4,1)='V')  ) then
    begin
      if DelDet.FieldByName('HGLB').AsString='XT' then
      begin
        Info:=DelDet.FieldByName('HGLB').AsString+' khong cho xuat kho, vi don hang xuat nuoc ngoai. 出口訂單不允許使用';
        iRes:=false;
      end;
      //20220713 KD 沒有海關代碼，不可以用外銷訂單
      if ((DelDet.FieldByName('HGLB').AsString='KD') and (DelDet.FieldByName('CNO').AsString='')) then
      begin
        Info:=DelDet.FieldByName('HGLB').AsString+' khong cho xuat kho, vi don hang xuat nuoc ngoai. 出口訂單不允許使用';
        iRes:=false;
      end;
    end else
    begin
      if DelDet.FieldByName('HGLB').AsString='NK' then
      begin
        Info:=DelDet.FieldByName('HGLB').AsString+' khong cho xuat kho, vi su dung xuong .內銷&廠內不允許使用';
        iRes:=false;
      end;
      if DelDet.FieldByName('HGLB').AsString='TC' then
      begin
        Info:=DelDet.FieldByName('HGLB').AsString+' khong cho xuat kho, vi su dung xuong noi  .內銷&廠內不允許使用';
        iRes:=false;
      end;
    end;
  end;
  if DelDet.FieldByName('Qty').Value=0 then iRes:=true;
  //
  result:=iRes;
end;
//
procedure TDeliverCon.Button2Click(Sender: TObject);
var y1,m1,d1,y2,m2,d2:word;
    i:integer;
    LLQty,RemQty,UseQty:double;
    //
    IsFindClBH:boolean;
    CLBHList,QtyList,CLBH_HGList,Qty_HGLIst,CLBH_CNOList,Qty_CNOList,KCQty_CNOList:TStringlist;
    HGLB_Qty:double;
    QtyFloat,KCQtyFloat:double;
    //
    CheckKCLLS_HGLB_Info:String;
begin
  //暫存檢查庫存同一筆領料單多筆料號
  QtyList:=TStringlist.Create;
  CLBHList:=TStringlist.Create;
  Qty_HGLIst:=TStringlist.Create;
  CLBH_HGList:=TStringlist.Create;
  CLBH_CNOList:=TStringlist.Create;
  Qty_CNOList:=TStringlist.Create;
  KCQty_CNOList:=TStringlist.Create;
  //
  if DelMas.Active=true then
  begin
    decodedate(DelMas.fieldbyname('USERDATE').value,y1,m1,d1);
    decodedate(date,y2,m2,d2);
    if  daysbetween(Ndate,DelMas.fieldbyname('USERDATE').Value)>30  then
    begin
        showmessage('Past 30 Days, Pls contect with data maintainer.');
        abort;
    end;
    DelDet.first; //檢查材料庫位是否輸入，沒有則要先輸入庫位
    while not DelDet.eof do
    begin
        if DelDet.fieldbyname('KCBH').IsNull then
        begin
             MaterialArea:=TMaterialArea.create(self);
             MaterialArea.Edit1.Text:=DelDet.fieldbyname('CLBH').AsString;
             MaterialArea.CBX1.Text:=DelMas.fieldbyname('CKBH').AsString;
             MaterialArea.button1click(nil);
             MaterialArea.show;
             DelDet.Active:=false;
             DelMas.Active:=false;
             abort;
        end;
        if DelDet.fieldbyname('BLSB').IsNull then
        begin
            if ((not DelDet.fieldbyname('YWSM').IsNull)  and (DelMas.fieldbyname('CKGS').value<>'VTX' )) then
            begin
                if DelMas.FieldByName('SCBH').value='ZZZZZZZZZZ' then
                begin
                    showmessage('Pls select the replenish?');
                    abort;
                end;
            end;
        end;
        if DelDet.fieldbyname('Qty').isnull then
        begin
          showmessage('Qty can not be empty.');
          abort;
        end;
        if DelDet.fieldbyname('Qty').value>DelDet.fieldbyname('KCQty').value then
        begin
           showmessage('Not enough material to deliver.庫存數量不夠發');
           abort;
        end;
        //20171213 檢查分倉庫存
        if CheckKCLLS_HGLB(CheckKCLLS_HGLB_Info)=false then
        begin
           if CheckKCLLS_HGLB_Info='' then
              Showmessage(DelDet.FieldByName('HGLB').AsString+' = Ton Kho So luong khong du.庫存數量不夠發')
           else
              Showmessage(CheckKCLLS_HGLB_Info);
           abort;
        end;
        //20191012 weston檢查同一料號多筆，庫存不足發料bug檢查
        IsFindClBH:=false;
        for i:=0 to CLBHList.Count-1 do
        begin
          if CLBHList.Strings[i]=DelDet.FieldByName('CLBH').AsString then
          begin
            IsFindClBH:=true;
            break;
          end;
        end;
        if IsFindClBH=false then
        begin
          QtyList.Add(DelDet.FieldByName('Qty').AsString);
          CLBHList.Add(DelDet.FieldByName('CLBH').AsString);
        end else
        begin
          QtyFloat:=strtofloat(QtyList.Strings[i])+DelDet.FieldByName('Qty').Value;
          KCQtyFloat:=DelDet.fieldbyname('KCQty').value;
          if strtofloat(format('%.'+WH_Decimal+'f',[QtyFloat])) > strtofloat(format('%.'+WH_Decimal+'f',[KCQtyFloat])) then
          begin
             showmessage('Not enough material to deliver.庫存數量不夠發');
             abort;
          end else
          begin
             QtyList.Strings[i]:=floattostr(strtofloat(QtyList.Strings[i])+DelDet.FieldByName('Qty').Value);
          end;
        end;
        IsFindClBH:=false;
        for i:=0 to CLBH_HGList.Count-1 do
        begin
          if CLBH_HGList.Strings[i]=DelDet.FieldByName('CLBH').AsString+'_'+DelDet.FieldByName('HGLB').AsString then
          begin
            IsFindClBH:=true;
            break;
          end;
        end;
        if IsFindClBH=false then
        begin
          Qty_HGList.Add(DelDet.FieldByName('Qty').AsString);
          CLBH_HGList.Add(DelDet.FieldByName('CLBH').AsString+'_'+DelDet.FieldByName('HGLB').AsString);
        end else
        begin
          if DelDet.fieldbyname(DelDet.fieldbyname('HGLB').AsString).AsString='' then  HGLB_Qty:=0 else HGLB_Qty:=DelDet.fieldbyname(DelDet.fieldbyname('HGLB').AsString).Value;
          QtyFloat:=strtofloat(Qty_HGList.Strings[i])+DelDet.FieldByName('Qty').Value;
          if strtofloat(format('%.'+WH_Decimal+'f',[QtyFloat])) > strtofloat(format('%.'+WH_Decimal+'f',[HGLB_Qty]))  then
          begin
             showmessage(DelDet.FieldByName('HGLB').AsString+' = Ton Kho So luong khong du.庫存數量不夠發');
             abort;
          end else
          begin
             Qty_HGList.Strings[i]:=floattostr(strtofloat(Qty_HGList.Strings[i])+DelDet.FieldByName('Qty').Value);
          end;
        end;
        //
        if CKHGBH.Checked=true then
        begin
          //20220713 檢查海關碼庫存
          IsFindClBH:=false;
          for i:=0 to CLBH_CNOList.Count-1 do
          begin
            if CLBH_CNOList.Strings[i]=DelDet.FieldByName('CLBH').AsString+'_'+DelDet.FieldByName('HGLB').AsString+'_'+DelDet.FieldByName('CNO').AsString then
            begin
              IsFindClBH:=true;
              break;
            end;
          end;
          if IsFindClBH=false then
          begin
            Qty_CNOList.Add(DelDet.FieldByName('Qty').AsString);
            CLBH_CNOList.Add(DelDet.FieldByName('CLBH').AsString+'_'+DelDet.FieldByName('HGLB').AsString+'_'+DelDet.FieldByName('CNO').AsString);
            if HGBHQry.locate('CKBH;CLBH;HGLB;CNO',vararrayof([DelMas.FieldByName('CKBH').AsString,DelDet.FieldByName('CLBH').AsString,DelDet.FieldByName('HGLB').AsString,DelDet.FieldByName('CNO').AsString]),[]) then
            begin
              KCQty_CNOList.Add(HGBHQry.FieldByName('NowQty').AsString);
            end else
            begin
              KCQty_CNOList.Add('0.0');
            end;
          end else
          begin
            HGLB_Qty:=strtofloat(KCQty_CNOList.Strings[i]);
            QtyFloat:=strtofloat(Qty_CNOList.Strings[i])+DelDet.FieldByName('Qty').Value;
            if strtofloat(format('%.'+WH_Decimal+'f',[QtyFloat])) > strtofloat(format('%.'+WH_Decimal+'f',[HGLB_Qty]))  then
            begin
               showmessage(DelDet.FieldByName('HGLB').AsString+' = Ma Hai Quan Ton Kho So luong khong du.海關碼 庫存數量不夠發');
               abort;
            end else
            begin
               Qty_CNOList.Strings[i]:=floattostr(strtofloat(Qty_CNOList.Strings[i])+DelDet.FieldByName('Qty').Value);
            end;
          end;
        end;
        //End weston檢查同一料號多筆，庫存不足發料bug檢查
        if DelDetS.RecordCount>0 then
        begin
          if (DelDet.FieldByName('Qty').Value<> DBGridEh4.getfootervalue(0,DBGridEh4.columns[1])) then
          begin
            Showmessage('Qty VS SiZE Qty is not the same');
            abort();
          end;
        end;
        DelDet.next;
    end;
    QtyList.Free;
    CLBHList.Free;
    Qty_HGList.Free;
    CLBH_HGList.Free;
    CLBH_CNOList.Free;
    Qty_CNOList.Free;
    KCQty_CNOList.Free;
    //檢查
    if NKCK1.Checked=true then
    begin
      if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrNo then
      begin
        Abort();
      end;
    end;
    //
    try  //更新真正庫存
      with DelDet do
      begin
          first;
          while not eof do
          begin
              if updatestatus=usmodified then
              begin
                //20150424 材料分類改寫
                Edit;
                fieldbyname('Qty').Value:=formatfloat(WH_DiplayFormat,fieldbyname('Qty').Value);  //20141023 四捨五入到小數第二位
                Post;
                UPdet.apply(ukmodify);
                //20220713 檢查海關碼庫存
                if ( (DelMas.FieldByName('CKBH').AsString=HGBHQry.FieldByName('CKBH').AsString) and (DelDet.FieldByName('CLBH').AsString=HGBHQry.FieldByName('CLBH').AsString)
                   and (DelDet.FieldByName('HGLB').AsString=HGBHQry.FieldByName('HGLB').AsString) and (DelDet.FieldByName('CNO').AsString=HGBHQry.FieldByName('CNO').AsString)) then
                begin
                  HGBHQry.Edit;
                  HGBHQry.FieldByName('NowQty').Value:=HGBHQry.FieldByName('NowQty').Value-DelDet.FieldByName('Qty').Value;
                  HGBHQry.Post;
                end;
                //
              end;
              Next;
          end;
      end;
      //update KCZLS
      with Qtemp do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update KCZLS Set KCQty=KCQty-KCLLS.Qty ');
        SQL.Add('from ( ');
        SQL.Add('select CKBH,CLBH,Sum(Qty) as Qty from KCLLS ');
        SQL.Add('Left join KCLL on KCLL.LLNo=KCLLS.LLNO ');
        SQL.Add('where KCLLS.LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
        SQL.Add('Group by CKBH,CLBH ) KCLLS where KCLLS.CKBH=KCZLS.CKBH and KCLLS.CLBH=KCZLS.CLBH ');
        Execsql;
      end;
      //20171213 更新KCZLS NK/HD/KD/GC/XT
      with Qtemp do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update KCZLS Set ');
        SQL.Add('  NK = case when KCLLS.HGLB=''NK'' then NK-KCLLS.Qty else NK end,');
        SQL.Add('  TC = case when KCLLS.HGLB=''TC'' then TC-KCLLS.Qty else TC end,');
        SQL.Add('  HD = case when KCLLS.HGLB=''HD'' then HD-KCLLS.Qty else HD end,');
        SQL.Add('  KD = case when KCLLS.HGLB=''KD'' then KD-KCLLS.Qty else KD end,');
        SQL.Add('  XT = case when KCLLS.HGLB=''XT'' then XT-KCLLS.Qty else XT end,');
        SQL.Add('  GC = case when KCLLS.HGLB=''GC'' then GC-KCLLS.Qty else GC end');
        SQL.Add('from (');
        SQL.Add('select CKBH,CLBH,HGLB,Sum(Qty) as Qty from KCLLS');
        SQL.Add('Left join KCLL on KCLL.LLNo=KCLLS.LLNO ');
        SQL.Add('where KCLLS.LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
        SQL.Add('Group by CKBH,CLBH,HGLB ) KCLLS where KCLLS.CKBH=KCZLS.CKBH and KCLLS.CLBH=KCZLS.CLBH ');
        Execsql;
      end;

      with DelMas do
      begin
          edit;
          fieldbyname('CFMID').Value:=main.edit1.text;
          fieldbyname('CFMDATE').Value:=Ndate;
          UPMas.Apply(ukmodify);
          active:=false;
          active:=true;
      end;
      showmessage('Succeed.');
    except
      on E:Exception do
      begin
        Showmessage('Have wrong.'+E.Message);
      end;
    end;
  end;
end;

procedure TDeliverCon.FormCreate(Sender: TObject);
var y,m,d:word;
    ayear,amonth:string;
    ff:textfile;
    i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''' ');
    active:=true;
    CKBHCombo.Items.add('');
    while not eof do
    begin
      CKBHCombo.Items.add(FieldByName('CKBH').AsString);
      Next;
    end;
    active:=false;
  end;
  //
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;

  decodedate(NDate,y,m,d);
  sdate:=startofthemonth(NDate);
  edate:=endofthemonth(NDate);
  decodedate(incmonth(NDate,-1),y,m,d);
  ayear:=inttostr(y);
  amonth:=inttostr(m);
  ReadIni();
  if  length(amonth)<2  then
  begin
    amonth:='0'+amonth;
  end;
  //20170819 全域變數
  sYear:=ayear;
  sMonth:=amonth;
  sSTDT:=formatdatetime('yyyy/MM/dd',sdate);
  sEDDT:=formatdatetime('yyyy/MM/dd',edate);
  //
 try  
  with Qtemp do
  begin
      active:=false;
      sql.Clear;
      sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
      sql.add('begin   drop table #CLZLKC end   ');

      sql.Add('select KCZLS.CLBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,KCZLS.CKBH');
      sql.add(' into #CLZLKC from KCZLS ');

      sql.add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as LastRem ');
      sql.add('           from KCCLMONTH_HG as KCCLMONTH   where KCCLMONTH.KCYEAR='+''''+ayear+'''');
      sql.add('                                 and KCMONTH='+''''+amonth+''' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      if IsHide_Warehouse_XT='Y' then
      sql.add('                                  and KCCLMONTH.HGLB<>''XT'' ');
      sql.add('           Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH  ');
      sql.add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH');

      sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
      sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ') ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      if IsHide_Warehouse_XT='Y' then
      sql.add('                 and KCRK.HGLB<>''XT'' ');
      sql.add('           group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH ');

      sql.add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>'+''''+'NO'+''' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      if IsHide_Warehouse_XT='Y' then
      sql.add('                 and KCLLS.HGLB<>''XT'' ');
      sql.add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH');

      sql.add('left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+''' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCZLS.CLBH and JGRK.CKBH=KCZLS.CKBH');
      //20160521 round 2 numeric for JGCK
      sql.Add('left join (select JGZl.CKBH,JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2)) as JGCK from JGZLS');
      //
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
      sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                            '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('                      )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
      sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+''' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      sql.add('           group by JGZL.CKBH,JGZLS.ZMLB ');
      //20170822 sua gia cong xuat vat tu KCLL.SCBH='JJJJJJJJJJ'
      sql.Add('           union all');
      sql.Add('           select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
      sql.add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>'+''''+'NO'+''' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      if IsHide_Warehouse_XT='Y' then
      sql.add('           and KCLLS.HGLB<>''XT'' ');
      sql.add('           group by KCLL.CKBH,KCLLS.CLBH) JGCK on JGCK.ZMLB=KCZLS.CLBH and JGCK.CKBH=KCZLS.CKBH');
      sql.add('where  KCZLS.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')   ');
      sql.add('update KCZLS ');
      sql.add('set KCQty=(select isnull(round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as KCQty ');
      sql.add('           from #CLZLKC where KCZLS.CLBH=#CLZLKC.CLBH and KCZLS.CKBH=#CLZLKC.CKBH)');
      sql.Add('    ,NK=null , TC=null , HD=null , KD=null, GC=null, XT=null ');
      sql.add('where  KCZLS.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')   ');
      //sql.add('where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null)');
      //sql.add('order by #CLZLKC.CKBH,#CLZLKC.CLBH  ');
      sql.add('drop table #CLZLKC ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
    end;
  except
   showmessage('Have wrong.');
  end;

  //20171017更新KCZLS.NK/HD/XT.GC/KD
  with Qtemp do
  begin
    Active:=false;
    Sql.Clear;
    SQL.Add('Update KCZLS set NK=HG.NK,TC=HG.TC,HD=HG.HD,KD=HG.KD,GC=HG.GC,XT=HG.XT,ZZZZ=HG.ZZZZ');
    SQL.Add('from (');
    SQL.Add('select CKBH,CLBH,Max(NK) as NK,Max(TC) as TC,Max(HD) as HD,Max(KD) as KD,Max(GC) as GC,Max(XT) as XT,Max(ZZZZ) as ZZZZ from (');
    SQL.Add('select CKBH,CLDH as CLBH,case when HGLB=''NK'' then Max(Qty)  end as NK,');
    SQL.Add('       case when HGLB=''TC'' then Max(Qty)  end as TC,');
    SQL.Add('       case when HGLB=''HD'' then Max(Qty)  end as HD,');
    SQL.Add('       case when HGLB=''KD'' then Max(Qty)  end as KD,');
    SQL.Add('       case when HGLB=''GC'' then Max(Qty)  end as GC,');
    SQL.Add('       case when HGLB=''XT'' then Max(Qty)  end as XT,');
    SQL.Add('       case when HGLB=''ZZZZ'' or HGLB is null then Max(Qty)  end as ZZZZ');
    SQL.Add('from (');
    SQL.Add('select KCZLS.CLBH as CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,KCZLS.CKBH,KCZLS.HGLB,');
    SQL.Add('       (isnull(round(LastKC.LastRem,'+WH_Decimal+'),0)+isnull(round(RK.RKQty,'+WH_Decimal+'),0)-isnull(round(LL.LLQty,'+WH_Decimal+'),0)+isnull(round(JGRK.JGRK,'+WH_Decimal+'),0)-isnull(round(JGCK.JGCK,'+WH_Decimal+'),0) ) as Qty');
    SQL.Add('-- into #CLZLKC');
    SQL.Add('  from (select * from KCZLS  CROSS JOIN');
    SQL.Add('  (select ''NK'' as HGLB union all select ''TC'' union all select ''HD'' union all select ''KD'' union all select ''XT'' union all select ''GC'' union all select ''ZZZZ'' ) LOAI ) KCZLS');
    SQL.Add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.Qty as LastRem ');
    SQL.Add('           from KCCLMONTH_HG KCCLMONTH  where KCCLMONTH.KCYEAR='''+ayear+'''');
    SQL.Add('                                 and KCCLMONTH.KCMONTH='''+amonth+''' and KCCLMONTH.CLBH like ''%'' and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if IsHide_Warehouse_XT='Y' then
    sql.add('                                 and KCCLMONTH.HGLB<>''XT'' ');
    SQL.Add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH and LastKC.HGLB=KCZLS.HGLB');
    SQL.Add('left join (select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,sum(KCRKS.Qty) as RKQty from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCRK.HGLB<>''XT'' ');
    SQL.Add('           and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH and RK.HGLB=KCZLS.HGLB');
    SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,sum(KCLLS.Qty) as LLQty from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like ''%''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH and LL.HGLB=KCZLS.HGLB');
    SQL.Add('left join (select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,sum(JGZLS.Qty) as JGRK from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    SQL.Add('                 and JGZL.CFMID1<>''NO''');
    SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCZLS.CLBH and JGRK.CKBH=KCZLS.CKBH and JGRK.HGLB=KCZLS.HGLB');
    SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) JGCK on JGCK.ZMLB=KCZLS.CLBH and JGCK.CKBH=KCZLS.CKBH and JGCK.HGLB=KCZLS.HGLB');
    SQL.Add('where 1=1 and (isnull(round(LastKC.LastRem,'+WH_Decimal+'),0)+isnull(round(RK.RKQty,'+WH_Decimal+'),0)-isnull(round(LL.LLQty,'+WH_Decimal+'),0)+isnull(round(JGRK.JGRK,'+WH_Decimal+'),0)-isnull(round(JGCK.JGCK,'+WH_Decimal+'),0) )>=0.0001 ');
    SQL.Add(') KCZLSHG');
    SQL.Add('Group by CKBH,CLDH,HGLB ) HG group by CKBH,CLBH ) HG ');
    SQL.Add('where KCZLS.CLBH=HG.CLBH and KCZLS.CKBH=HG.CKBH');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSql;
  end;
  //
  CKBHList:=TStringlist.Create;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select CKBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y'' ');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and KDFL=''W'' and CKBH is not null');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by CKBH');
    Active:=true;
    for i:=0 to RecordCount-1 do
    begin
      CKBHList.Add(FieldByName('CKBH').AsString);
      Next;
    end;
    Active:=false;
  end;
  //20220713
  Init_HGBH_CNO();
end;

procedure TDeliverCon.DelMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TDeliverCon.DelDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TDeliverCon.FormDestroy(Sender: TObject);
begin
  DeliverCon:=nil;
end;

procedure TDeliverCon.Excel1Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin

  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
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
  DelDet.Active:=false;
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   DelMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DelMas.fields[i-1].FieldName;
    end;
  DelMas.First;
  j:=2;
  while   not  DelMas.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   DelMas.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=DelMas.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      DelMas.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
  DelDet.Active:=true;
except
  on   F:Exception   do
    showmessage(F.Message);
end;


end;

procedure TDeliverCon.DelTotAfterPost(DataSet: TDataSet);
var CLBH,DFL,SCBH:string;
    Qty:real;
begin
  if IsLockPostDBGrid=false then
  begin
    if DelTot.FieldByName('Qty').IsNull then
    begin
      showmessage('Qty can not be empty.');
      abort;
    end;
    Qty:=DelTot.FieldByName('Qty').value;
    IsLockPostDBGrid:=true;
    with DelDet do
    begin
      first;
      while not eof do
      begin
          if DelTot.fieldbyname('CLBH').value=fieldbyname('CLBH').value then
          begin
              if Qty>fieldbyname('TempQty').value then
              begin
                  edit;
                  fieldbyname('Qty').value:=fieldbyname('TempQty').value;
                  post;
                  Qty:=Qty-fieldbyname('TempQty').value;
              end else
              begin
                  edit;
                  fieldbyname('Qty').value:=Qty;
                  Qty:=0;
                  post;
              end;
              CLBH:=fieldbyname('CLBH').value;
              DFL:=fieldbyname('DFL').value;
              SCBH:=fieldbyname('SCBH').value;
              //20200905 SCBH明細
              if DelSCBH.Active=true then
              begin
                DelSCBH.First;
                if DelSCBH.locate('CLBH;DFL;SCBH',vararrayof([CLBH,DFL,SCBH]),[]) then
                begin
                  DelSCBH.Edit;
                  DelSCBH.fieldbyname('Qty').value:=DelDet.fieldbyname('Qty').value;
                  DelSCBH.Post;
                end;
              end;
              //
          end;
          Next;
      end;
      if Qty>0 then
      begin
          if locate('CLBH;DFL;SCBH',vararrayof([CLBH,DFL,SCBH]),[]) then
          begin
            edit;
            fieldbyname('Qty').value:=fieldbyname('Qty').value+Qty;
            post;
            //20200905 SCBH明細
            if DelSCBH.Active=true then
            begin
              DelSCBH.First;
              if DelSCBH.locate('CLBH;DFL;SCBH',vararrayof([CLBH,DFL,SCBH]),[]) then
              begin
                DelSCBH.Edit;
                DelSCBH.fieldbyname('Qty').value:=DelDet.fieldbyname('Qty').value;
                DelSCBH.Post;
              end;
            end;
            //
          end;
      end;
    end;
    IsLockPostDBGrid:=false;
  end;
end;

//
procedure TDeliverCon.DelMasAfterScroll(DataSet: TDataSet);
begin
  if DelMas.FieldByName('CFMID').AsString<>'NO' then
  begin
    Button2.Enabled:=false;
  end else
  begin
    Button2.Enabled:=true;
  end;

end;



procedure TDeliverCon.DelDetAfterScroll(DataSet: TDataSet);
begin
  if KhoaCK.Checked=true then
  begin
    //Order Export foreign 出貨國家不是越南VIE 或<>空白
    if ( ((DelDet.FieldByName('DDGB').AsString<>'') and (DelDet.FieldByName('DDGB').AsString<>'VIE'))
       or ( (Copy(DelDet.FieldByName('SCBH').AsString,4,1)='V') and (DelMas.FieldByName('SFL').AsString='DC') )
       ) then
    begin
      HGLBCB.ItemIndex:=0;
    end else
    begin
      HGLBCB.ItemIndex:=3;
    end;
  end;
  //20201126
 
  with Deldet do
  begin
  end;
end;

procedure TDeliverCon.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('SCANUSERID').IsNull=false then
  begin
    if DataCol=3 then
    begin
      DBGrid2.canvas.Font.Color:=clBlue;
      DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
end;

procedure TDeliverCon.DelDetAfterPost(DataSet: TDataSet);
var DiffQty:double;
    CLBH,DFL,SCBH:string;
begin
  if IsLockPostDBGrid=false then
  begin
    CLBH:=DelDet.fieldbyname('CLBH').value;
    DFL:=DelDet.fieldbyname('DFL').value;
    SCBH:=DelDet.fieldbyname('SCBH').value;
    DiffQty:=DelDet.FieldByName('Qty').Value-OldQty;
    IsLockPostDBGrid:=true;
    //總計
    if DelTot.Active=true then
    begin
      DelTot.First;
      if DelTot.locate('CLBH',DelDet.FieldByName('CLBH').AsString,[]) then
      begin
        DelTot.edit;
        DelTot.fieldbyname('Qty').value:=DelTot.fieldbyname('Qty').value+DiffQty;
        DelTot.post;
      end;
    end;
    //SCBH明細
    if DelSCBH.Active=true then
    begin
      DelSCBH.First;
      if DelSCBH.locate('CLBH;DFL;SCBH',vararrayof([CLBH,DFL,SCBH]),[]) then
      begin
        DelSCBH.Edit;
        DelSCBH.fieldbyname('Qty').value:=DelDet.fieldbyname('Qty').value;
        DelSCBH.Post;
      end;
    end;
    IsLockPostDBGrid:=false;
  end;
end;

procedure TDeliverCon.DelDetBeforeEdit(DataSet: TDataSet);
begin
  OldQty:=DelDet.FieldByName('Qty').Value;
end;

procedure TDeliverCon.DelSCBH_Query();
var CLBH,DFL,SCBH:string;
begin
  with DelSCBH do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select LLNO,SCBH,DFL,CLBH,TempQty,Qty ');
    SQL.Add('from KCLLS  ');
    SQL.Add('where LLNO=:LLNO ');
    if SCBHEdit.Text<>'' then
    SQL.Add(' and KCLLS.SCBH like ''%'+SCBHEdit.Text+'%'' ');
    if CLBHEdit.Text<>'' then
    SQL.Add(' and KCLLS.CLBH like ''%'+CLBHEdit.Text+'%'' ');
    SQL.Add('order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH ');
    Active:=true;
  end;
  //
  IsLockPostDBGrid:=true;
  while not DelSCBH.Eof do
  begin
    CLBH:=DelSCBH.fieldbyname('CLBH').value;
    DFL:=DelSCBH.fieldbyname('DFL').value;
    SCBH:=DelSCBH.fieldbyname('SCBH').value;
    //
    DelDet.First;
    if DelDet.locate('CLBH;DFL;SCBH',vararrayof([CLBH,DFL,SCBH]),[]) then
    begin
      DelSCBH.Edit;
      DelSCBH.fieldbyname('Qty').value:=DelDet.fieldbyname('Qty').value;
      DelSCBH.Post;
    end;
    DelSCBH.Next;
  end;
  IsLockPostDBGrid:=false;
  
end;
procedure TDeliverCon.SCBHEditKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then DelSCBH_Query();
end;

procedure TDeliverCon.CLBHEditKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then DelSCBH_Query();
end;

procedure TDeliverCon.DelSCBHBeforeEdit(DataSet: TDataSet);
begin
  OldQty:=DelSCBH.FieldByName('Qty').Value;
end;

procedure TDeliverCon.DelSCBHAfterPost(DataSet: TDataSet);
var DiffQty:double;
    CLBH,DFL,SCBH:string;
begin
  if IsLockPostDBGrid=false then
  begin
    CLBH:=DelSCBH.fieldbyname('CLBH').value;
    DFL:=DelSCBH.fieldbyname('DFL').value;
    SCBH:=DelSCBH.fieldbyname('SCBH').value;
    DiffQty:=DelSCBH.FieldByName('Qty').Value-OldQty;
    IsLockPostDBGrid:=true;
    //總計
    if DelTot.Active=true then
    begin
      DelTot.First;
      if DelTot.locate('CLBH',DelSCBH.FieldByName('CLBH').AsString,[]) then
      begin
        DelTot.edit;
        DelTot.fieldbyname('Qty').value:=DelTot.fieldbyname('Qty').value+DiffQty;
        DelTot.post;
      end;
    end;
    //DelDet明細
    if DelDet.Active=true then
    begin
      DelDet.First;
      if DelDet.locate('CLBH;DFL;SCBH',vararrayof([CLBH,DFL,SCBH]),[]) then
      begin
        DelDet.Edit;
        DelDet.fieldbyname('Qty').value:=DelSCBH.fieldbyname('Qty').value;
        DelDet.Post;
      end;
    end;
    IsLockPostDBGrid:=false;
  end;

end;

procedure TDeliverCon.DBGrid2CellClick(Column: TColumnEh);
begin
  if Column.FieldName='CNO' then
     HGBHQry.locate('CKBH;CLBH;HGLB',vararrayof([DelMas.FieldByName('CKBH').AsString,DelDet.FieldByName('CLBH').AsString,DelDet.FieldByName('HGLB').AsString]),[]);
end;

procedure TDeliverCon.DetailCKClick(Sender: TObject);
begin
  if DetailCK.Checked=true then
  begin
    Panel4.Visible:=true;
    DelSCBH.Active:=true;
    Splitter2.Align:=alBottom;
  end else
  begin
    //20200905 億柏底廠可搜尋訂單+料號
    DelSCBH.Active:=false;
    Panel4.Visible:=false;
    Splitter2.Align:=alNone;   
  end;
end;

procedure TDeliverCon.MenuItem1Click(Sender: TObject);
var i:integer;
    Qty:Double;
begin
  Qty:=0;
  DelDetS.First;
  for i:=0 to DelDetS.RecordCount-1 do
  begin
    Qty:=Qty+DelDetS.FieldByName('Qty').Value;
    UPDetS.apply(ukmodify);
    DelDetS.Next;
  end;
  DelDet.Edit;
  DelDet.fieldbyname('Qty').Value:=formatfloat(WH_DiplayFormat,Qty);  //20141023 四捨五入到小數第二位
  DelDet.Post;
  UPdet.apply(ukmodify);

end;

end.
