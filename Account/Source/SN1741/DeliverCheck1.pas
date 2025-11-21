unit DeliverCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, Menus,ShellApi, DBGridEhImpExp, iniFiles,
  ComCtrls;

type
  TDeliverCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button3: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    DS1: TDataSource;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    PopupMenu1: TPopupMenu;
    CheckPrice1: TMenuItem;
    SonMatCode1: TMenuItem;
    Label10: TLabel;
    CBX3: TComboBox;
    Matsite: TQuery;
    SaveDialog1: TSaveDialog;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    CBX4: TComboBox;
    Label15: TLabel;
    CBX5: TComboBox;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGridEh1: TDBGridEh;
    Label16: TLabel;
    CBX6: TComboBox;
    Label17: TLabel;
    GSBHCBX: TComboBox;
    TS3: TTabSheet;
    DS2: TDataSource;
    DBGridEh2: TDBGridEh;
    Label18: TLabel;
    Edit9: TEdit;
    TS4: TTabSheet;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    Query1: TQuery;
    Query1CKBH: TStringField;
    Query1LLNO: TStringField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Query1CFMDATE: TDateTimeField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1DFL: TStringField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1SCBH: TStringField;
    Query1CostID: TStringField;
    Query1YWSM: TStringField;
    Query1MEMO: TStringField;
    Query1BLSB: TStringField;
    Query1HGBH: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query1HGLB: TStringField;
    Query2: TQuery;
    Query2CKBH: TStringField;
    Query2LLNO: TStringField;
    Query2DepID: TStringField;
    Query2DepName: TStringField;
    Query2CFMDATE: TDateTimeField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2CWBH: TStringField;
    Query2DFL: TStringField;
    Query2Qty: TCurrencyField;
    Query2VNPrice: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query2SCBH: TStringField;
    Query2CostID: TStringField;
    Query2YWSM: TStringField;
    Query2MEMO: TStringField;
    Query2BLSB: TStringField;
    Query2HGBH: TStringField;
    Query2UnitC: TStringField;
    Query2RateC: TFloatField;
    Query2HGLB: TStringField;
    Query2LLMemo: TStringField;
    Query2CLSL: TFloatField;
    Query3: TQuery;
    Query3CKBH: TStringField;
    Query3LLNO: TStringField;
    Query3DepID: TStringField;
    Query3DepName: TStringField;
    Query3CFMDATE: TDateTimeField;
    Query3CLBH: TStringField;
    Query3DFL: TStringField;
    Query3SCBH: TStringField;
    Query3YWPM: TStringField;
    Query3DWBH: TStringField;
    Query3CWBH: TStringField;
    Query3Qty: TCurrencyField;
    Query3HGBH: TStringField;
    Query3HGLB: TStringField;
    Query3DOCNO: TStringField;
    Query3Declaretion: TStringField;
    Query3PKNO: TStringField;
    Query2CNO1: TStringField;
    Query2Declaretion: TStringField;
    TS5: TTabSheet;
    DBGridEh4: TDBGridEh;
    Query4: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField9: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField13: TStringField;
    DS4: TDataSource;
    Label11: TLabel;
    Edit10: TEdit;
    Query3InWH_Date: TDateTimeField;
    Query3F_Date: TDateTimeField;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure CheckPrice1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SonMatCode1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    { Private declarations }
    procedure ExportExcel(Query:TQuery;DBGrid:TDBGridEh);
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  DeliverCheck: TDeliverCheck;

implementation

uses DeliverCheck_Print1, main1, DeliverCheck_Price1, DeliverCheck_Son1,FunUnit;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TDeliverCheck.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
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
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query4.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query4.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query3.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query4.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('ALL');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('GC');
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('H11');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.Items.Add('NK+TC+HD+KD');
    CBX6.Items.Add('NK1+TC1+HD1+KD1');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.ItemIndex:=0;
  end;
end;
//

procedure TDeliverCheck.ExportExcel(Query:TQuery;DBGrid:TDBGridEh);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin

    if Query.Active then
    begin
      if Query.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
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
      for i:=0 to DBGrid.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid.Columns[i].Title.Caption;
      end;
      Query.First;
      j:=2;
      while   not  Query.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for i:=0 to DBGrid.Columns.Count-1 do
          begin
              eclApp.Cells(j,i+2):=DBGrid.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+2].font.size:='8';
              if ((DBGrid.Fields[i].FieldName = 'InWH_Date') or (DBGrid.Fields[i].FieldName = 'F_Date') ) then
                eclApp.Cells.Cells.item[j,i+2].NumberFormat := 'YYYY/MM/DD';
          end;
          Query.Next;
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
//
procedure TDeliverCheck.Button3Click(Sender: TObject);
var i:integer;
begin
  DeliverCheck_Print:=TDeliverCheck_Print.create(self);
  DeliverCheck_Print.quickrep1.prepare;
  i:=DeliverCheck_Print.quickrep1.qrprinter.pagecount;
  DeliverCheck_Print.page1.caption:=inttostr(i);
  DeliverCheck_Print.quickrep1.preview;
  DeliverCheck_Print.free;
end;

procedure TDeliverCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliverCheck.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
    i,iYear,iMonth:integer;
    tmpList:TStringList;
    HGLBSQL:String;
begin
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
  if (iYear>2999) or (iYear<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (iMonth=0) or (iMonth>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL');
      SQL.Add('       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice,0) as VNPrice,KCLLS.VNACC');
      SQL.Add('       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'''') as YWSM,IsNull(KCLLS.MEMO,'''') as MEMO,IsNull(KCLLS.BLSB,'''') as BLSB');
      SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH');
      sql.Add('       ,Case when KCLLS.HGLB =''NK'' then CLHG.UnitC when KCLLS.HGLB =''TC'' then CLTC.UnitC when KCLLS.HGLB=''HD'' then  CLHD.UnitC else '''' end as UnitC');
      sql.Add('       ,Case when KCLLS.HGLB =''NK'' then CLHG.RateC when KCLLS.HGLB =''TC'' then CLTC.RateC when KCLLS.HGLB=''HD'' then  CLHD.RateC else '''' end as RateC');
      sql.Add('       ,isnull(KCLLS.HGLB,''ZZZZ'')as HGLB');
      SQL.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS ');
      SQL.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
      SQL.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      sql.Add('left join CLHG on CLHG.CLBH=KCLLS.CLBH and KCLLS.HGLB=''NK'' and Year(KCLLS.USERDATE)>=2017');
      sql.Add('left join CLTC on CLTC.CLBH=KCLLS.CLBH and KCLLS.HGLB=''TC'' and Year(KCLLS.USERDATE)>=2017');
      sql.Add('left join CLHD on CLHD.CLBH=KCLLS.CLBH and KCLLS.HGLB=''HD'' and Year(KCLLS.USERDATE)>=2017');
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text<>'' then
      begin
        SQL.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      SQL.add('      and KCLLS.CLBH like '+''''+edit1.text+'%'+'''');
      SQL.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
      SQL.add('      and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
      SQL.add('      and isnull(KCZLS.CWBH,'+''''+''+''''+') like '+''''+edit4.text+'%'+'''');
      SQL.add('      and KCLLS.CostID like '+''''+edit7.text+'%'+'''');
      SQL.add('      and KCLLS.LLNO like '+''''+edit5.text+'%'+'''');
      SQL.add('      and BDepartment.DepName like '+''''+'%'+edit6.Text+'%'+'''');
      sql.add('      and KCLL.YN='+''''+'5'+'''');
      if GSBHCBX.Text<>'ALL' then
      SQL.add('      and KCCK.GSBH='+''''+GSBHCBX.Text+'''');
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%''  ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
  if PC1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select * from ( ');
      SQL.add('select CKBH,LLNO,DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,CWBH,DFL,Qty,VNPrice,VNACC,SCBH,CostID,YWSM,MEMO,BLSB,HGBH,UnitC,RateC,HGLB,LLMemo,CNO1,');
      SQL.add('       case when (CLSL is not null and TCLYL is null) then CLSL else TCLYL  end  as CLSL ');
      SQL.add('       ,Cast((Select  case when isnull(KCPK.Declaretion,'''') <> '''' then  KCPK.Declaretion + '' '' else '''' end ');
      SQL.Add('       			 from KCRKS left join KCRK on kcrks.RKNO=KCRK.RKNO ');
      SQL.Add('        			 Left join KCPK on KCRK.RKNO=KCPK.PKNO  ');
      SQL.Add('       			 Where KCRKS.CLBH=KCLLS.CLBH  and KCRKS.CGBH=KCLLS.SCBH and KCRK.HGLB=KCLLS.HGLB and KCRKS.CNO=KCLLS.HGBH Group by KCPK.Declaretion for XML Path (''''))  as varchar(50)) as Declaretion ');  
      SQL.add('from ( ');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDATE,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCLLS.DFL');
      SQL.Add('       ,isnull(KCLLS.Qty,0) as Qty,isnull(KCLLS.VNPrice_HG,0) as VNPrice,KCLLS.VNACC_HG as VNACC');
      SQL.Add('       ,KCLLS.SCBH,KCLLS.CostID,IsNull(SCBLYY.YWSM,'''') as YWSM,IsNull(KCLLS.MEMO,'''') as MEMO,IsNull(KCLLS.BLSB,'''') as BLSB');
      SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH');
      sql.Add('       ,Case when KCLLS.HGLB =''NK'' then CLHG.UnitC when KCLLS.HGLB =''TC'' then CLTC.UnitC when KCLLS.HGLB=''HD'' then  CLHD.UnitC');
      sql.Add('             when (KCLLS.HGLB =''KD'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD.UnitC  ');
      sql.Add('             when KCLLS.HGLB =''NK1'' then CLHG1.UnitC when KCLLS.HGLB =''TC1'' then CLTC1.UnitC when KCLLS.HGLB=''HD1'' then  CLHD1.UnitC');
      sql.Add('             when (KCLLS.HGLB =''KD1'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD1.UnitC  when KCLLS.HGLB=''NQ'' then  CLNQ.UnitC ');
      sql.Add('             when KCLLS.HGLB=''NKNQ'' then  CLNKNQ.UnitC else '''' end as UnitC');
      sql.Add('       ,Case when KCLLS.HGLB =''NK'' then CLHG.RateC when KCLLS.HGLB =''TC'' then CLTC.RateC when KCLLS.HGLB=''HD'' then  CLHD.RateC');
      sql.Add('             when (KCLLS.HGLB =''KD'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD.RateC ');
      sql.Add('             when KCLLS.HGLB =''NK1'' then CLHG1.RateC when KCLLS.HGLB =''TC1'' then CLTC1.RateC when KCLLS.HGLB=''HD1'' then  CLHD1.RateC');
      sql.Add('             when (KCLLS.HGLB =''KD1'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD1.RateC when KCLLS.HGLB=''NQ'' then  CLNQ.RateC ');
      sql.Add('             when KCLLS.HGLB=''NKNQ'' then  CLNKNQ.RateC else NULL end as RateC');
      sql.Add('       ,isnull(KCLLS.HGLB,''ZZZZ'') as HGLB,KCLLS.LLMemo,KCLLS.CNO1,ZLZLS2.CLSL,TCLYL');
      SQL.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS ');
      SQL.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      SQL.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
      SQL.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      sql.Add('left join CLHG on CLHG.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NK'' and Year(KCLLS.USERDATE)>=2017');
      sql.Add('left join CLTC on CLTC.CLBH=KCLLS.CLBH and KCLLS.HGLB =''TC'' and Year(KCLLS.USERDATE)>=2017');
      sql.Add('left join CLHD on CLHD.CLBH=KCLLS.CLBH and KCLLS.HGLB =''HD'' and Year(KCLLS.USERDATE)>=2017');
      sql.Add('left join CLKD on CLKD.CLBH=KCLLS.CLBH and KCLLS.HGLB =''KD'' and Year(KCLLS.USERDATE)>=2022');
      sql.Add('left join CLHG1 on CLHG1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NK1'' ');
      sql.Add('left join CLTC1 on CLTC1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''TC1'' ');
      sql.Add('left join CLHD1 on CLHD1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''HD1'' ');
      sql.Add('left join CLKD1 on CLKD1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''KD1'' ');
      sql.Add('left join CLNQ on CLNQ.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NQ'' ');
      sql.Add('left join CLNKNQ on CLNKNQ.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NKNQ'' ');
      sql.Add('left join (select CLBH,ZLBH,sum (CLSL) as CLSL from DDZL_ZLZLS2 group by CLBH,ZLBH) ZLZLS2 on ZLZLS2.CLBH=KCLLS.CLBH and ZLZLS2.ZLBH=KCLLS.SCBH');
      sql.Add('left join (select zlbh1,right(cldhz,10) as CLBH,Sum(TCLYL) as TCLYL from LIY_DD.dbo.ZLZLS3 group by zlbh1,cldhz)ZLZLS3 on ZLZLS3.zlbh1=KCLLS.SCBH and ZLZLS3.CLBH=KCLLS.CLBH');
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text <> '' then
      begin
        SQL.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      SQL.add('      and KCLLS.CLBH like '''+edit1.text+'%'' ');
      SQL.add('      and CLZL.YWPM like ''%'+edit2.text+'%'' ');
      SQL.add('      and CLZL.YWPM like ''%'+edit3.text+'%'' ');
      SQL.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%'' ');
      SQL.add('      and KCLLS.CostID like '''+edit7.text+'%'' ');
      SQL.add('      and KCLLS.LLNO like '''+edit5.text+'%'' ');
      SQL.add('      and BDepartment.DepName like ''%'+edit6.Text+'%'' ');
      SQL.add('      and KCLL.YN=''5'' ');
      if GSBHCBX.Text<>'ALL' then
      SQL.add('      and KCCK.GSBH='''+GSBHCBX.Text+'''');
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%'' ');
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList:=TStringlist.Create;
            tmpList:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList.Count-1 do
            begin
              HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
            end;
            HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
            sql.add(' and KCLLS.HGLB in '+HGLBSQL+' ');
            tmpList.Free;
          end;
        end;
      end;
      if edit9.Text<>'' then
        SQL.Add('and KCLLS.CNO like '''+edit9.text+'%''');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('and KCLLS.HGLB<>''XT'' ');
      SQL.add(') KCLLS ');
      SQL.add('group by CKBH,LLNO,DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,CWBH,DFL,Qty,VNPrice,VNACC,SCBH,CostID,YWSM,MEMO,BLSB,HGBH,UnitC,RateC,HGLB,LLMemo,CNO1,TCLYL,CLSL');
      SQL.Add(' )KCLL where 1=1 ');
      if edit10.Text <> '' then
        SQL.Add(' and Declaretion like '''+edit10.text+'%''');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  if PC1.ActivePageIndex=2 then
  begin
    with Query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select KCLL.CKBH,KCPKLL.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDATE,KCPKLL.CLBH,KCPKLL.DFL,KCPKLL.SCBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCPKLL.Qty as Qty ');
      SQL.Add('       ,IsNull(KCLLS.CNO,'''') as HGBH,KCRK.HGLB,KCRK.DOCNO,KCPK.Declaretion,KCPKLL.PKNO,KCRK.UserDate as InWH_Date,YWCP.Indate as F_Date ');
      SQL.Add('	  from KCPKLL');
      SQL.Add('	  left join KCLL on KCPKLL.LLNO=KCLL.LLNO');
      SQL.Add('	  left join KCLLS on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.DFL=KCPKLL.DFL and KCLLS.SCBH=KCPKLL.SCBH');
      SQL.Add('	  left join KCRK on KCRK.RKNO=KCPKLL.PKNO');
      SQL.Add('	  Left join KCPK on KCPK.PKNO=KCPKLL.PKNO');
      SQL.Add('	  left join CLZL on CLZL.CLDH=KCPKLL.CLBH');
      SQL.Add('	  left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.add('   left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      SQL.Add('	  left join BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.Add('   left join ( select DDBH,max(Indate) as Indate ');
      SQL.Add('		            from ywcp group by DDBH ');
      SQL.Add('		            union all ');
      SQL.Add('		            select DDBH,max(Indate) as Indate ');
      SQL.Add('		            from YWCPOld group by DDBH ');
      SQL.Add('				        union all ');
      SQL.Add('     				  select ypdh as DDBH,max(Complete) as Indate ');
      SQL.Add('     				  from ShoeTest  ');
      SQL.Add('     				  where isnull(ypdh,'''')<>'''' group by YPDH ');
      SQL.Add('     				  union all  ');
      SQL.Add('     				  select MasterOrder as DDBh,max(StockDate) as Indate ');
      SQL.Add('     				  from CBY_Orders  ');
      SQL.Add('     				  group by MasterOrder ');
      SQL.Add('   				  ) YWCP on YWCP.DDBH=KCPKLL.SCBH ');
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      SQL.add('      and KCLLS.CLBH like '''+edit1.text+'%'' ');
      SQL.add('      and CLZL.YWPM like '''+'%'+edit2.text+'%'' ');
      SQL.add('      and CLZL.YWPM like '''+'%'+edit3.text+'%'' ');
      SQL.add('      and isnull(KCZLS.CWBH,'''') like '+''''+edit4.text+'%'' ');
      SQL.add('      and KCLLS.CostID like '''+edit7.text+'%'' ');
      SQL.add('      and KCLLS.LLNO like '''+edit5.text+'%'' ');
      SQL.add('      and BDepartment.DepName like '''+'%'+edit6.Text+'%'' ');
      SQL.add('      and KCLL.YN=''5'' ');
      if GSBHCBX.Text<>'ALL' then
      SQL.add('      and KCCK.GSBH='+''''+GSBHCBX.Text+'''');
      if CBX3.Text <> '' then
      SQL.Add('      and KCLL.CKBH='''+CBX3.Text+''' '); 
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%'' ');
      if CBX6.ItemIndex>0 then
      begin
        if CBX6.ItemIndex>0 then
        begin
          if Pos('+',CBX6.Text)<0 then
          begin
            sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
          end else
          begin
            tmpList:=TStringlist.Create;
            tmpList:=FuncObj.SplitString(CBX6.Text,'+');
            for i:=0 to tmpList.Count-1 do
            begin
              HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
            end;
            HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
            sql.add(' and KCLLS.HGLB in '+HGLBSQL+' ');
            tmpList.Free;
          end;
        end;
      end;
      if edit9.Text<>'' then
        SQL.Add('    and KCLLS.CNO like '''+edit9.text+'%''');
      if edit10.Text<>'' then
        SQL.Add('    and KCPK.Declaretion like '''+edit10.text+'%''');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('    and KCLLS.HGLB<>''XT'' ');
      //funcobj.WriteErrorLog(sql.Text);  
      Active:=true;
    end;
  end;
  if PC1.ActivePageIndex=3 then
  begin
    with query4 do
    begin
      active:=false;
      SQL.Clear;
      SQL.add(' Select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,DepName,CFMDATE,CLBH,YWPM,DWBH,KCLLS.DFL,Qty,VNPrice,VNACC,KCLLS.SCBH,CostID,MEMO');
      SQL.Add(' From CBY_LineStock_KCLLs KCLLS ');
      SQL.Add(' Left join CBY_LineStock_KCLL KCLL on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add(' Left join Bdepartment on KCLL.DepID = Bdepartment.ID ');
      SQL.Add(' Left join CLZL on KCLLS.CLBH=CLZL.CLDH ');
      SQL.Add(' Where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+'''  and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add(' and KCLL.YN=''5'' ');
      if edit1.Text <>'' then
        SQL.add(' and KCLLS.CLBH like '''+edit1.text+'%'' ');
      if edit2.Text <>'' then
        SQL.add(' and CLZL.YWPM like ''%'+edit2.text+'%'' ');
      if edit3.Text <>'' then
        SQL.add(' and CLZL.YWPM like ''%'+edit3.text+'%'' ');
      if edit7.Text <>'' then
        SQL.add(' and KCLLS.CostID like '''+edit7.text+'%'' ');
      if edit5.Text <>'' then
        SQL.add(' and KCLLS.LLNO like '''+edit5.text+'%'' ');
      SQL.add('   and BDepartment.DepName like ''%'+edit6.Text+'%'' ');
      SQL.Add('   and KCLLS.SCBH like '''+edit8.text+'%'' ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;

end;

procedure TDeliverCheck.CheckPrice1Click(Sender: TObject);
begin
   if query1.recordcount>0 then
   begin
     DeliverCheck_Price:=TDeliverCheck_Price.create(self);
     DeliverCheck_Price.show;
   end;
end;

procedure TDeliverCheck.FormDestroy(Sender: TObject);
begin
  DeliverCheck:=nil
end;

procedure TDeliverCheck.SonMatCode1Click(Sender: TObject);
begin 
  if query1.recordcount>0 then
   begin
     DeliverCheck_Son:=TDeliverCheck_Son.create(self);
     DeliverCheck_Son.show;
   end;
end;

procedure TDeliverCheck.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
  y,m:word;
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
    begin
        CBX3.Items.Add(fieldbyname('CKBH').AsString);
        next;
    end;
    //
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    GSBHCBX.Items.Add('ALL');
    while not eof do
    begin
        GSBHCBX.Items.Add(fieldbyname('GSDH').asstring);
        next;
    end;
    GSBHCBX.Text:=main.Edit2.Text
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX4.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i-1;
      CBX5.ItemIndex:=i-1;
      break;
    end;
  end;
  readini();
  PC1.ActivePage:=TS3;
  if main.Edit2.Text='CDC' then
  begin
    TS5.TabVisible := True;
  end else
  begin
    TS5.TabVisible := false;
  end;
end;

procedure TDeliverCheck.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if  Messagedlg(Pchar('Direct Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     if PC1.ActivePageIndex=0 then ExportExcel(Query1,DBGridEh1);
     if PC1.ActivePageIndex=1 then ExportExcel(Query2,DBGridEh2);
     if PC1.ActivePageIndex=2 then ExportExcel(Query3,DBGridEh3);
     if PC1.ActivePageIndex=3 then ExportExcel(Query4,DBGridEh4);
  end else
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
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
        if PC1.ActivePageIndex=0 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh1,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=1 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh2,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=2 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh3,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=3 then
           SaveDBGridEhToExportFile(ExpClass,DBGridEh4,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;

end;

procedure TDeliverCheck.CBX1Change(Sender: TObject);
begin
  CBX4.Text:=CBX1.Text;
end;

procedure TDeliverCheck.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

end.
