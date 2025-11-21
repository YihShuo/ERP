unit AnyStockUltra1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  ComCtrls,comobj, GridsEh, DBGridEh, EhlibBDE, iniFiles, DBCtrls, Printers;

type
  TAnyStockUltra = class(TForm)
    Query1: TQuery;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    DataSource1: TDataSource;
    query2: TQuery;
    PopupMenu1: TPopupMenu;
    NN2: TMenuItem;
    Query1CLDH: TStringField;
    Query1LastRem: TFloatField;
    Query1RKQty: TFloatField;
    Query1LLQty: TFloatField;
    Query1KCBH: TStringField;
    Query1Qty: TFloatField;
    Query1JGRK: TFloatField;
    Query1JGCK: TFloatField;
    Query1CKBH: TStringField;
    Query1JGCKTemp: TCurrencyField;
    Query1LBBH: TStringField;
    Query1ZWPM: TStringField;
    Query1zsdh: TStringField;
    Query1zsqm: TStringField;
    Query1CNO: TStringField;
    temp: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    DTP1: TDateTimePicker;
    CB1: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    CBX1: TComboBox;
    Edit4: TEdit;
    CB2: TCheckBox;
    CB3: TCheckBox;
    Edit5: TEdit;
    Edit6: TEdit;
    CNOEdit: TEdit;
    Button5: TButton;
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit7: TEdit;
    Button6: TButton;
    Button7: TButton;
    DTP2: TDateTimePicker;
    DTP3: TDateTimePicker;
    CBX2: TComboBox;
    CheckBox1: TCheckBox;
    CGNOEdit: TEdit;
    InvEdit: TEdit;
    CheckBox2: TCheckBox;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    DBGrid2: TDBGridEh;
    KCRK: TQuery;
    KCRKRKNO: TStringField;
    KCRKUSERDATE: TDateTimeField;
    KCRKQty: TCurrencyField;
    KCRKZSBH: TStringField;
    KCRKCFMID: TStringField;
    KCRKMemo: TStringField;
    KCRKInvoice: TStringField;
    KCRKPaperNo: TStringField;
    KCRKZLBH: TStringField;
    DS1: TDataSource;
    PopupMenu2: TPopupMenu;
    EXCEL2: TMenuItem;
    JGDet2: TMenuItem;
    Query3: TQuery;
    Material: TQuery;
    DS3: TDataSource;
    UpSQL1: TUpdateSQL;
    PopupMenu3: TPopupMenu;
    EXCEL1: TMenuItem;
    JGDet1: TMenuItem;
    KCLL: TQuery;
    KCLLLLNO: TStringField;
    KCLLSCBH: TStringField;
    KCLLCFMDATE: TDateTimeField;
    KCLLQty: TCurrencyField;
    KCLLCFMID: TStringField;
    KCLLMemo: TStringField;
    DS2: TDataSource;
    TabSheet2: TTabSheet;
    KHOQry1: TQuery;
    KHOQry1CLDH: TStringField;
    KHOQry1Qty: TCurrencyField;
    KHOQry1NK_Qty: TCurrencyField;
    KHOQry1TC: TCurrencyField;
    KHOQry1ND_Qty: TCurrencyField;
    KHOQry1NKND_Qty: TCurrencyField;
    KHOQry1XT_Qty: TCurrencyField;
    KHOQry1GC_Qty: TCurrencyField;
    KHOQry1Null_Qty: TCurrencyField;
    KHOQry1YWPM: TStringField;
    KHOQry1DWBH: TStringField;
    DataSource2: TDataSource;
    KhoPopup: TPopupMenu;
    MenuItem1: TMenuItem;
    Panel5: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Button8: TButton;
    CBX3: TComboBox;
    MatNoEdit: TEdit;
    CNO1Edit: TEdit;
    StockDT1: TDateTimePicker;
    CBox1: TCheckBox;
    DBGridEh2: TDBGridEh;
    KHOQry1CKBH: TStringField;
    KHOQry1KCBH: TStringField;
    Label25: TLabel;
    Edit8: TEdit;
    Label26: TLabel;
    Edit9: TEdit;
    Label27: TLabel;
    Edit10: TEdit;
    KHOQry1Classification: TStringField;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Label28: TLabel;
    Edit11: TEdit;
    Panel4: TPanel;
    Label29: TLabel;
    DTP4: TDateTimePicker;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Data: TQuery;
    Splitter3: TSplitter;
    DBGridEh3: TDBGridEh;
    Query4: TQuery;
    Query2CLBH: TStringField;
    Query2KCBH: TStringField;
    Query5: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    Query3QTY: TCurrencyField;
    Query3CKBH: TStringField;
    Query3EntryDate: TDateTimeField;
    Query3DeliverDate: TDateTimeField;
    Query3NK: TCurrencyField;
    Query3KD: TCurrencyField;
    Query3HD: TCurrencyField;
    Query3TC: TCurrencyField;
    Query3GC: TCurrencyField;
    Query3XT: TCurrencyField;
    Query3ZZZZ: TCurrencyField;
    DS4: TDataSource;
    PrintDialog1: TPrintDialog;
    CheckBox3: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure CBX1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure CalCulate_KCCLMONTH_HGBH();
    procedure CalCulate_KCCLMONTH_HGBH_NK();
    procedure CalCulate_KCCLMONTH_HGBH_NKHD();
    procedure CalCulate_Classification();

    procedure CalWarehouseDate(StockDT:TDateTimePicker);
    procedure MenuItem1Click(Sender: TObject);
    procedure ExportExcel(MasQry:TQuery;DetQry:TQuery);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Label22DblClick(Sender: TObject);
  private
     AppDir:String;
    IsHide_Warehouse_XT:String;
    GSBH_SFL:String;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Private declarations }
    sDate,eDate,NDate:TDate;
    sYear,sMonth,sSTDT,sEDDT:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
   AnyStockUltra: TAnyStockUltra;
   ayear,amonth:string;

implementation

uses AnyStock_Print1, Entry_Print1, main1, MaterialTrace1, FunUnit, AnyStock_PrintC1;

{$R *.dfm}

procedure TAnyStockUltra.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('LastRem')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('LLQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('JGRK')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('JGCK')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('JGCKTemp')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KCRK.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KCLL.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;

end;

procedure TAnyStockUltra.FormClose(Sender: TObject; var Action: TCloseAction);
begin  
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');
    execsql;
  end;
  action:=cafree;
end;

procedure TAnyStockUltra.Button1Click(Sender: TObject);
var
   year,month,day:word;
   KCRK,KCRKS,KCLL,KCLLS:string;
   KCCLMONTHSQL:String;
begin
  if CBX1.text='' then
  begin
    showmessage('Pls select  warehouse first.');
    abort;
  end;
  Query1.DisableControls;
  Query1.AfterScroll := nil;
  decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  if CBX1.text='ALL' then
  begin
    with temp do
    begin
       active:=false;
       sql.Clear;
       sql.add('      if object_id(''tempdb..#kcrkmain'') is not null    ');
       sql.add('         begin drop table #kcrkmain end                 ');
       sql.add('select gsbh,''('' +''''''''+left(CKBH,len(CKBH)-2)+'')'' as CKBH  into #kcrkmain');
       sql.add('from(');
       sql.add('select GSBH,(');
       sql.add('select CKBH +'''''','''''' from KCCK');
       sql.add('where kcrkmain.gsbh=KCCK.gsbh ');
       sql.add('for xml path('''')');
       sql.add(')as CKBH');
       sql.add('from KCCK kcrkmain');
       sql.add('group by GSBH)a');
       sql.add('WHERE gsbh='''+main.edit2.text+ '''   ');
       sql.add('select #kcrkmain.gsbh,CAST(#kcrkmain.ckbh AS char(500)) as ckbh from #kcrkmain ');
       //funcObj.WriteErrorLog(sql.Text);
       active:=true;
     end;
  end;

  if CB3.Checked=true then
  begin
    KCRK:='(select * from KCRK union all select * from KCRK_2014 ) KCRK ';
    KCRKS:='(select * from KCRKS union all select * from KCRKS_2014 ) KCRKS ';
    KCLL:='(select * from KCLL union all select * from KCLL_2014 ) KCLL ';
    KCLLS:='(select * from KCLLS union all select * from KCLLS_2014 ) KCLLS ';
   end else
   begin
    KCRK:='KCRK with (nolock) ';
    KCRKS:='KCRKS with (nolock) ';
    KCLL:='KCLL with (nolock) ';
    KCLLS:='KCLLS with (nolock) ';
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');
    sql.Add('select clzl.*,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp into #CLZLKC  ');
    sql.Add('from (');
    if CBX1.text<>'ALL' then
       sql.Add('    select '''+CBX1.Text+''' as CKBH,clzl.zsdh,CLZL.CLDH,CLZL.DWBH,LastKC.LBBH,LastKC.LastRem');
    if CBX1.text='ALL' then
       sql.Add('    select ''ALL'' as CKBH,clzl.zsdh,CLZL.CLDH,CLZL.DWBH,LastKC.LBBH,sum(LastKC.LastRem) as LastRem');
    sql.Add('     from CLZL with (nolock) ');
    //期初庫存
    sql.add('     left join (');
    sql.add('     Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Max(KCCLMONTH.LBBH) as LBBH,Sum(KCCLMONTH.Qty) as LastRem ');
    sql.add('     from KCCLMONTH_HG as KCCLMONTH   with (nolock) ');
    sql.add('     where KCCLMONTH.KCYEAR='+''''+ayear+''' ');
    sql.add('           and KCMONTH='+''''+amonth+'''');
    sql.add('           and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCCLMONTH.HGLB<>''XT'' ');
    if CBX1.text<>'ALL' then
    begin
       sql.Add('           and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
       sql.Add('   Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH ');
       sql.add('     ) LastKC on LastKC.CLBH=CLZL.CLDH ) clzl ');
       sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from '+KCRKS+' ');    //入庫數量
    end;
    if CBX1.text='ALL' then
    begin
       sql.Add('           and KCCLMONTH.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');
       sql.Add('   Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH ');
       sql.add('     ) LastKC on LastKC.CLBH=CLZL.CLDH group by clzl.zsdh,CLZL.CLDH,CLZL.DWBH,LastKC.LBBH )clzl ');
       sql.add('left join (select ''ALL'' as CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from '+KCRKS+' ');     //入庫數量
    end;
    sql.add('           left join '+KCRK+'  on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCRK.HGLB<>''XT'' ');
    if CBX1.text<>'ALL' then
    begin
       sql.Add('           and KCRK.CKBH='+''''+CBX1.Text+'''');
       sql.add('           group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH  and RK.CKBH=clzl.ckbh');
    end;
    if CBX1.text='ALL' then
    begin
       sql.Add('           and KCRK.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
       sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH  and RK.CKBH=clzl.ckbh');
    end;
    //出庫數量
    if CBX1.text<>'ALL' then
       sql.add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from '+KCLLS+'  ');
    if CBX1.text='ALL' then
       sql.add('left join (select ''ALL'' as CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from '+KCLLS+'  ');
    sql.add('           left join '+KCLL+'   on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and KCLL.CFMID<>'+''''+'NO'+'''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCLLS.HGLB<>''XT'' ');
    //2017/09/01 sua gia cong vat tu
    sql.add('           and KCLL.SCBH<>''JJJJJJJJJJ''');
    if CBX1.text<>'ALL' then
    begin
       sql.Add('           and KCLL.CKBH='+''''+CBX1.Text+'''');
       sql.add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH and LL.CKBH=clzl.ckbh');
    end;
    if CBX1.text='ALL' then
    begin
       sql.Add('           and KCLL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
       sql.add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH and LL.CKBH=clzl.ckbh');
    end;
    //加工入庫數量
    if CBX1.text<>'ALL' then
       sql.add('left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS with (nolock) ');
    if CBX1.text='ALL' then
       sql.add('left join (select ''ALL'' as CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    if CBX1.text<>'ALL' then
    begin
       sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
       sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH and JGRK.CKBH=clzl.ckbh');
    end;
    if CBX1.text='ALL' then
    begin
       sql.Add('           and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
       sql.add('           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH and JGRK.CKBH=clzl.ckbh');
    end;
    // 2017/09/01 sua gia cong vat tu
    //加工出庫數量
    if CBX1.text<>'ALL' then
       sql.add('left join (select JGZL.CKBH,JGZLS.ZMLB,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK from JGZLS with (nolock) ');
    if CBX1.text='ALL' then
       sql.add('left join (select ''ALL'' as CKBH,JGZLS.ZMLB,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
   // sql.add('                      and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    if CBX1.text<>'ALL' then
       sql.Add('                   and JGZL.CKBH='+''''+CBX1.Text+'''');
    if CBX1.text='ALL' then
       sql.Add('                   and JGZL.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    sql.add('           and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    if CBX1.text<>'ALL' then
    begin
       sql.Add('        and JGZL.CKBH='+''''+CBX1.Text+'''');
       sql.add('        group by JGZL.CKBH,JGZLS.ZMLB ');
       // KCLL.SCBH='JJJJJJJJJJ'
       sql.Add('        union all');
       sql.Add('        select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
       sql.add('        left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       sql.add('        where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
       sql.add('        '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
       sql.add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
       sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
       sql.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
       sql.add('        and KCLL.SCBH = ''JJJJJJJJJJ'' and KCLL.CFMID<>'+''''+'NO'+'''');
       sql.add('        and KCLLS.CLBH like '''+edit1.Text+'%'' ');
       sql.Add('        and KCLL.CKBH='+''''+CBX1.Text+'''');
       if IsHide_Warehouse_XT='Y' then
       sql.add('         and KCLLS.HGLB<>''XT'' ');
       sql.add('         group by KCLL.CKBH,KCLLS.CLBH');
       sql.add('        ) JGCK on JGCK.ZMLB=CLZL.CLDH and JGCK.CKBH=clzl.ckbh');
    end;
    if CBX1.text='ALL' then
    begin
       sql.Add('        and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
       sql.add('        group by JGZLS.ZMLB  ');
       // KCLL.SCBH='JJJJJJJJJJ'
       sql.Add('        union all');
       sql.Add('        select ''ALL'' as CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
       sql.add('        left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       sql.add('        where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
       sql.add('        '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
       sql.add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
       sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
       sql.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
       sql.add('        and KCLL.SCBH =''JJJJJJJJJJ'' and KCLL.CFMID<>'+''''+'NO'+'''');
       sql.Add('        and KCLL.CKBH in '+temp.fieldbyname('ckbh').Value+' ');
       sql.add('        and KCLLS.CLBH like '''+edit1.Text+'%'' ');
       if IsHide_Warehouse_XT='Y' then
       sql.add('         and KCLLS.HGLB<>''XT'' ');
       sql.add('        group by KCLLS.CLBH');
       sql.add('        ) JGCK on JGCK.ZMLB=CLZL.CLDH and JGCK.CKBH=clzl.ckbh');
    end;
    //加工單開還未回來數量
    if CBX1.text<>'ALL' then
       sql.add('left join (select JGZL.CKBH,JGZLS.ZMLB,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK from JGZLS with (nolock) ');
    if CBX1.text='ALL' then
       sql.add('left join (select ''ALL'' as CKBH,JGZLS.ZMLB,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where  JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where  JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    if CBX1.text<>'ALL' then
    begin
       sql.Add('        and JGZL.CKBH='+''''+CBX1.Text+'''');
       sql.add('        group by JGZL.CKBH,JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH and JGCKTemp.CKBH=clzl.ckbh');
    end;
    if CBX1.text='ALL' then
    begin
       sql.Add('        and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
       sql.add('        group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH and JGCKTemp.CKBH=clzl.ckbh');
    end;
    //開始SQL查詢
    if CBX1.text<>'ALL' then
    begin
       sql.add('select CLHG.HGBH,clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,IsNull(#CLZLKC.LBBH,CLLBFLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,');
       sql.add('       isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0) as RKQty,isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0) as LLQty,');
       sql.add('       isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0) as JGRK,isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as JGCK,');
       sql.add('       isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0) as JGCKTemp,KCZLS.KCBH,KCZLS.CKBH,');
       sql.add('       isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as Qty'); //20141027 修改取到小數第二位
    end;
    if CBX1.text='ALL' then
    begin
       sql.add('select ''ALL'' as HGBH,clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,''ALL'' LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH,');
       sql.add('       sum(isnull(#CLZLKC.LastRem,0)) as LastRem,');
       sql.add('       sum(isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0)) as RKQty,');
       sql.add('       sum(isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0)) as LLQty,');
       sql.add('       sum(isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0)) as JGRK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as JGCK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0)) as JGCKTemp,');
       sql.add('       ''ALL'' as KCBH,''ALL'' as CKBH,');
       sql.add('       sum(isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as Qty'); //20141027 修改取到小數第二位
    end;
    sql.add('from #CLZLKC ');
    sql.add('left join CLZL on CLZL.CLDH=#CLZLKC.CLDH');
    sql.add('left join zszl on zszl.zsdh=clzl.zsdh ');
    if CBX1.text<>'ALL' then
    begin
       sql.add('left join (select * from KCZLS');
       sql.add('where CKBH='+''''+CBX1.text+'''');
       sql.add('                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH  and KCZLS.CKBH=#CLZLKC.CKBH');
    end;
    //LBBH
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='''+main.Edit2.Text+''' ');
    sql.add('left join CLHG on CLHG.CLBH=#CLZLKC.CLDH  ');
    sql.add('  where');
    sql.add(' not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null ');
    sql.add('               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null and #CLZLKC.JGCKTemp is null) and');
    if CBX1.text<>'ALL' then
       sql.Add(' KCZLS.CKBH='+''''+CBX1.Text+''' and');
    //if CBX1.text='ALL' then
    //   sql.Add('and KCZLS.CKBH in '+temp.fieldbyname('ckbh').Value+' ');
    sql.add(' #CLZLKC.CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
    if edit5.text<>'' then
       sql.add('and CLZL.ZSDH like '+''''+'%'+edit5.text+'%'+'''');
    if edit6.text<>'' then
       sql.add('and zszl.zsqm like '+''''+'%'+edit6.text+'%'+'''');
    if CNOEdit.Text<>'' then
       sql.add('and CLHG.HGBH like ''%'+CNOEdit.Text+'%'' ');
    if CB1.checked then
    begin
      sql.add('and (isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0))<0  ');
    end;
    //入庫超過90天的材料，可是沒有使用
    if CB2.Checked then
    begin
      sql.Add('and #CLZLKC.CLDH not in (select KCRKS.CLBH from '+KCRK+','+KCRKS+' where KCRK.CKBH='''+CBX1.text+''' and KCRK.RKNO=KCRKS.RKNO    Group by  KCRKS.CLBH  having DATEDIFF(day ,Max(KCRK.CFMDate),'+formatdatetime('YYYY/MM/DD',DTP1.Date)+')<='+edit4.Text+')');
      sql.Add('and #CLZLKC.CLDH not in (select KCLLS.CLBH from '+KCLL+','+KCLLS+' where KCLL.CKBH='''+CBX1.text+''' and KCLL.LLNO=KCLLS.LLNO    Group by  KCLLS.CLBH  having DATEDIFF(day, Max(KCLL.CFMDate),'+formatdatetime('YYYY/MM/DD',DTP1.Date)+')<='+edit4.Text+')');
      sql.Add('and #CLZLKC.CLDH not in (select JGZLS.CLBH from JGZL,JGZLS where JGZL.CKBH='''+CBX1.text+''' and JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB=''ZZZZZZZZZZ''   Group by  JGZLS.CLBH  having DATEDIFF(day, Max(JGZL.CFMDate1),'+formatdatetime('YYYY/MM/DD',DTP1.Date)+')<='+edit4.Text+')');
      sql.Add('and #CLZLKC.CLDH not in (select JGZLS.ZMLB from JGZL,JGZLS where JGZL.CKBH='''+CBX1.text+''' and JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB<>''ZZZZZZZZZZ''   Group by  JGZLS.ZMLB  having DATEDIFF(day, Max(JGZL.CFMDate1),'+formatdatetime('YYYY/MM/DD',DTP1.Date)+')<='+edit4.Text+')');
    end;
    //
    if CBX1.text='ALL' then
       sql.add('group by clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH');
    sql.add('order by #CLZLKC.CLDH  ');
    //memo1.text:=sql.text;
    //showmessage(SQL.Text);
    active:=true;
  end;
  Query1.EnableControls;
  Query1.AfterScroll := Query1AfterScroll;
end;

procedure TAnyStockUltra.Query1CalcFields(DataSet: TDataSet);
begin
//  with query1 do
//  begin
//    fieldbyname('Qty').Value:=fieldbyname('LastRem').Value+fieldbyname('RKQty').Value-fieldbyname('LLQty').Value;
//  end;
end;

procedure TAnyStockUltra.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    CBX2.items.clear;
    CBX3.items.clear;
    while not eof do
    begin
        CBX1.items.add(fieldbyname('CKBH').AsString);
        CBX2.items.add(fieldbyname('CKBH').AsString);
        CBX3.items.add(fieldbyname('CKBH').AsString);
        Next;
    end;
    CBX1.items.add('ALL');
    CBX1.itemindex:=0;
    CBX2.items.add('ALL');
    CBX2.itemindex:=0;
    CBX3.items.add('ALL');
    CBX3.items.add('ALL Without CBY');
    CBX3.itemindex:=0;
    if (main.Edit2.Text = 'CDC') then
      CBX2.items.add('ALL Without CBY');    
    active:=false;
  end;
  with query2 do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  //
  DTP1.Date:=NDate;
  DTP2.Date := strtodate(formatdatetime('YYYY/MM/01',DTP1.Date));
  DTP3.Date := NDate;
  DTP4.date:=startofthemonth(Date);
  StockDT1.Date := NDate;
  {
  if (main.Edit2.Text = 'CDC') or (main.Edit2.Text = 'SKX') then
    TabSheet1.Destroy
  else
    TabSheet2.Destroy;
  }
  ReadIni();
  IsHide_Warehouse_XT := 'Y';
  DBGridEh2.Columns[11].Visible := false;
  DBGridEh2.Columns[13].Visible := false;
end;

procedure TAnyStockUltra.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
  begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
      begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      query1.Next;
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

procedure TAnyStockUltra.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TAnyStockUltra.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TAnyStockUltra.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    CBX1.SetFocus;
end;

procedure TAnyStockUltra.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TAnyStockUltra.Button3Click(Sender: TObject);
begin
  AnyStock_Print:=TAnyStock_Print.create(self);
  if GSBH_SFL='TM' then
    AnyStock_Print.QRLabel15.Enabled:=true;

  AnyStock_Print.quickrep1.prepare;
  AnyStock_Print.PageN.caption:=inttostr(AnyStock_Print.quickrep1.QRPrinter.pagecount);
  AnyStock_Print.SDate.Caption:=formatdatetime('YYYY/MM/DD',DTP1.date);
  AnyStock_Print.quickrep1.preview;
  AnyStock_Print.free;
end;

procedure TAnyStockUltra.Button4Click(Sender: TObject);
var KCYEAR,KCMONTH:string;
    year,month,day:word;
begin
  //停用
  decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  KCyear:=floattostr(year);
  KCmonth:=floattostr(month);
  if length(KCmonth)=1 then
    KCmonth:='0'+KCmonth;

  if ((edit1.text<>'') or (edit2.text<>'')  or (edit3.text<>'')) then
  begin
    showmessage('Pls select all material!');
    abort;
  end; 
  if (CBX2.text='') then
  begin
    showmessage('Pls select warehouse!');
    abort;
  end;  
  if CB1.checked then
  begin
    showmessage('Do not give any condition!');
    abort;
  end;
  if (DTP1.Date+1)< endofthemonth(DTP1.Date) then
  begin
    showmessage('Pls select the last day of the month!');
    abort;
  end;
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct YN from  KCCLMONTH ');
    sql.add('where KCYEAR='+''''+KCyear+'''');
    sql.add('and KCMONTH='+''''+KCmonth+'''');
    sql.add('and exists(select KCCK.* from KCCK ');
    sql.add('           where KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('             and KCCK.GSBH='+''''+main.Edit2.text+''''+')');
    sql.add('and KCCLMONTH.CKBH='+''''+CBX2.Text+'''');
    sql.add('order by YN DESC');
    active:=true;
    if fieldbyname('YN').value='1' then
      begin
        showmessage('Account already lock the data of stock.'+#13+'Pls contect with account.');
        abort;
      end;
    active:=false;
    sql.Clear;
    sql.add('delete KCCLMONTH ');
    sql.add('where KCYEAR='+''''+KCyear+'''');
    sql.add('and KCMONTH='+''''+KCmonth+'''');
    sql.add('and exists(select KCCK.* ');
    sql.add('           from KCCK ');
    sql.add('           where KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('           and KCCK.GSBH='+''''+main.Edit2.Text+''''+')');
    sql.add('and KCCLMONTH.CKBH='+''''+CBX2.Text+'''');


    sql.add('insert KCCLMONTH ');
    sql.add('select  '+''''+KCyear+''''+' as KCYEAR,'+''''+KCmonth+''''+' as KCMONTH,');
    sql.add(''''+CBX2.text+''''+',#CLZLKC.CLDH as CLBH, ');
    sql.add('isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0) as Qty,');
    sql.add('null as USPRice,0 as CWHL,0 as VNPrice,null as VNACC,CLLBFLS.LBBH,convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
    sql.add(''''+main.edit1.text+''''+' as USERID,'+''''+'0'+''''+' as YN');
    sql.add('from #CLZLKC ');
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=#CLZLKC.CLDH and CLLBFLS.GSBH='+''''+main.Edit2.Text+'''');
   { //一次使用，以後用後面的換掉
    sql.add('where  (exists(select KCLLS.CLBH from KCLLS ');
    sql.add('              left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('              where KCLLS.CLBH=#CLZLKC.CLDH');
    sql.add('                and KCLL.CKBH='+''''+CBX2.Text+''''+')');
    sql.add('    or exists(select KCRKS.CLBH from KCRKS ');
    sql.add('              left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('              where KCRKS.CLBH=#CLZLKC.CLDH');
    sql.add('                and KCRK.CKBH='+''''+CBX2.Text+''''+')');
    sql.add('    or exists(select KCCLMONTH.CLBH from KCCLMONTH ');
    sql.add('              where KCCLMONTH.CLBH=#CLZLKC.CLDH ');
    sql.add('                and KCCLMONTH.CKBH='+''''+CBX2.Text+''''+')');
    sql.add('    or exists(select JGZLS.CLBH from JGZLS ');
    sql.add('              left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('              where JGZLS.CLBH=#CLZLKC.CLDH');
    sql.add('                and JGZL.CKBH='+''''+CBX2.Text+''''+')');
    sql.add('    or exists(select JGZLS.ZMLB from JGZLS ');
    sql.add('              left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('              where JGZLS.ZMLB=#CLZLKC.CLDH');
    sql.add('                and JGZL.CKBH='+''''+CBX2.Text+''''+')  )');    }

    sql.add('where  isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0)>=0.01');


    sql.add('and not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null)');

    execsql;
    showmessage('Succeed.');
  end;

end;

procedure TAnyStockUltra.FormDestroy(Sender: TObject);
begin
  AnyStockUltra:=nil;
end;

procedure TAnyStockUltra.NN2Click(Sender: TObject);
begin
  button2click(nil);
end;

procedure TAnyStockUltra.Button5Click(Sender: TObject);
begin
  AnyStock_PrintC:=TAnyStock_PrintC.create(self);
  AnyStock_PrintC.quickrep1.prepare;
  AnyStock_PrintC.PageN.caption:=inttostr(AnyStock_PrintC.quickrep1.QRPrinter.pagecount);
  AnyStock_PrintC.SDate.Caption:=formatdatetime('YYYY/MM/DD',DTP1.date);
  AnyStock_PrintC.QRCompositeReport1.Preview;
  AnyStock_PrintC.quickrep1.preview;
  AnyStock_PrintC.free;
end;

procedure TAnyStockUltra.DTP1Change(Sender: TObject);
begin
  DTP2.Date := strtodate(formatdatetime('YYYY/MM/01',DTP1.Date));
  DTP3.Date := DTP1.Date;
end;

procedure TAnyStockUltra.Query1AfterScroll(DataSet: TDataSet);
var year,month,day:word;
    ayear,amonth:string;
begin

  Edit7.Text:=Query1.FieldByName('CLDH').AsString;
  decodedate(DTP2.Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
  amonth:='0'+amonth;
  with KCLL do          //出庫數量清單
  begin
    active:=false;
    sql.Clear;
    if CheckBox1.Checked then
    begin
    sql.add('select * from (');
    end;
    sql.add('select * from ( select * from ( select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,');
    //20160521 round 2 numeric for Qty
    sql.add('JGZL.CFMID1 as CFMID,round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),'+WH_Decimal+') as Qty');
    //
    sql.add(',cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as SCBH ');
    sql.add(', '+''''+'JG'+''''+' as Memo ' );
    sql.add('from JGZLS  ');
    sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
   // sql.add('          and JGZL.CFMDate1 is not null');
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    sql.add('          and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('          and JGZL.CKBH='+''''+CBX2.text+'''');
    sql.add('          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('where JGZL.CFMDate1>='+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    //  sql.add('and JGZL.CFMDate1 is not null');
    sql.add('and JGZLS.ZMLB='+''''+Query1.fieldbyname('CLDH').AsString+'''');
    //  sql.add('and JGZLS.clbh='+''''+edit1.Text+'''');
    sql.Add('and JGZL.CKBH='''+CBX2.text+''' '); //20140319 weston JG資料修正
    sql.add('and JGZLS.ZMLB <>'+''''+'ZZZZZZZZZZ'+'''');  //2017/09/01 sua gia cong vat tu
    //2017/09/01 sua gia cong vat tu
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where  KCLLS.CLBH='+''''+Query1.fieldbyname('CLDH').AsString+'''');
    sql.add('and KCLL.CKBH='+''''+CBX2.text+'''');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    //2017/09/01 sua gia cong vat tu
    sql.Add('and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('and KCLL.SCBH = ''JJJJJJJJJJ'')');
    sql.add(') JGCK ');
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where  KCLLS.CLBH='+''''+Query1.fieldbyname('CLDH').AsString+'''');
    sql.add('and KCLL.CKBH='+''''+CBX2.text+'''');
    sql.add('and KCLL.SCBH <> ''JJJJJJJJJJ''');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    if  CheckBox2.Checked then
    begin
      sql.Add(')');
    end else
    begin
      sql.add('or KCLL.CFMDATE is null)');
    end;
    sql.add(') JGCK ');
    //
    if not CheckBox1.Checked then
    begin
      sql.Add('order by JGCK.LLNO');
    end;
    if CheckBox1.Checked then
    begin
      sql.add('union all');
      sql.add('select KCLL_2014.LLNO,KCLL_2014.CFMDATE,KCLL_2014.CFMID,KCLLS_2014.Qty,KCLLS_2014.SCBH, BDepartment.DepName as Memo');
      sql.add('from KCLLS_2014');
      sql.add('left join KCLL_2014 on KCLL_2014.LLNO=KCLLS_2014.LLNO ');
      sql.add('left join BDepartment on BDepartment.ID=KCLL_2014.DepID ') ;
      sql.add('where  KCLLS_2014.CLBH='+''''+Query1.fieldbyname('CLDH').AsString+'''');
      sql.add('and KCLL_2014.CKBH='+''''+CBX2.text+'''');
      sql.add('and (convert(smalldatetime,convert(varchar,KCLL_2014.CFMDate,111)) between ');
      sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
      sql.add('     and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
      if  CheckBox2.Checked then
      begin
        sql.Add(')');
      end else
      begin
        sql.add('or KCLL_2014.CFMDATE is null)');
      end;
      sql.add(') JGCK ');
      sql.add('order by JGCK.LLNO');
    end;
    //memo1.Text:=sql.Text;
    //showmessage(SQL.Text);
    active:=true;
  end;
  with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZL.CFMID1 as CFMID,JGZLS.Qty,');
    sql.add(''''+'JG'+''''+' as Memo,'''' as Invoice,'''' as PaperNo ');
    sql.add(' ,cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as ZLBH ');
    sql.add('from JGZL,JGZLS ');
    sql.add('where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and JGZLS.CLBH='+''''+Query1.fieldbyname('CLDH').AsString+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    sql.add('and JGZL.CKBH='+''''+CBX2.text+'''');
    sql.add('union all');
    sql.add('select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,KCRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRKS.CGBH as ZLBH ');
    sql.add('from KCRKS');
    sql.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('where KCRKS.CLBH='+''''+Query1.fieldbyname('CLDH').AsString+'''');
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    sql.add('and KCRK.CKBH='+''''+CBX2.text+'''');
    if CGNOEdit.Text<>'' then
      sql.add('and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
    if INVEdit.Text<>'' then
      sql.add('and KCRK.DOCNO='''+INVEdit.Text+''' ');
    //
    if not CheckBox1.Checked then
    begin
      sql.Add('order by kcrk.rkno');
    end;
    if CheckBox1.Checked then
    begin
      sql.add('union all');
      sql.add('select * from ( ');
      sql.add('select KCRK_2014.RKNO,KCRK_2014.USERDATE,KCRK_2014.ZSBH,KCRK_2014.CFMID ,KCRKS_2014.Qty,KCRK_2014.ZSNO as Memo,KCRK_2014.docno as Invoice,KCRK_2014.memo as PaperNo,KCRKS_2014.CGBH as ZLBH  ');
      sql.add('from KCRKS_2014');
      sql.Add('inner join KCRK_2014 on KCRK_2014.RKNO=KCRKS_2014.RKNO');
      sql.add('where KCRKS_2014.CLBH='+''''+Query1.fieldbyname('CLDH').AsString+'''');
      sql.add('and convert(smalldatetime,convert(varchar,KCRK_2014.USERDATE,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
      sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
      sql.add('and KCRK_2014.CKBH='+''''+CBX2.text+'''');
      if CGNOEdit.Text<>'' then
         sql.add('and KCRK_2014.ZSNO='''+CGNOEdit.Text+''' ');
      if INVEdit.Text<>'' then
         sql.add('and KCRK_2014.DOCNO='''+INVEdit.Text+''' ');
      sql.add(')  KCRK ');
      sql.add('order by KCRK.RKNO');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    active:=true;
  end;
  //材料名稱及庫存數量的更新
  with material do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,1000.00 as Remainder, ');
    sql.add(' 1000.00 as RKQty,1000.00 as LLQty,1000.00 as NeedQty,1000.00 as OnQty ');
    sql.add('from CLZL  where CLDH='+''''+Query1.fieldbyname('CLDH').AsString+'''');
    active:=true;
  end;
  
end;

procedure TAnyStockUltra.CBX1Change(Sender: TObject);
begin
  CBX2.ItemIndex := CBX1.ItemIndex;
end;

procedure TAnyStockUltra.Button6Click(Sender: TObject);
var year,month,day:word;
    ayear,amonth:string;
begin
  decodedate(DTP2.Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
  amonth:='0'+amonth;
  if Edit7.Text = '' then exit;
  with KCLL do          //出庫數量清單
  begin
    active:=false;
    sql.Clear;
    if CheckBox1.Checked then
    begin
    sql.add('select * from (');
    end;
    sql.add('select * from ( select * from ( select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,');
    //20160521 round 2 numeric for Qty
    sql.add('JGZL.CFMID1 as CFMID,round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),'+WH_Decimal+') as Qty');
    //
    sql.add(',cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as SCBH ');
    sql.add(', '+''''+'JG'+''''+' as Memo ' );
    sql.add('from JGZLS  ');
    sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
   // sql.add('          and JGZL.CFMDate1 is not null');
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    sql.add('          and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('          and JGZL.CKBH='+''''+CBX2.text+'''');
    sql.add('          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('where JGZL.CFMDate1>='+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    //  sql.add('and JGZL.CFMDate1 is not null');
    sql.add('and JGZLS.ZMLB='+''''+Edit7.Text+'''');
    //  sql.add('and JGZLS.clbh='+''''+edit1.Text+'''');
    sql.Add('and JGZL.CKBH='''+CBX2.text+''' '); //20140319 weston JG資料修正
    sql.add('and JGZLS.ZMLB <>'+''''+'ZZZZZZZZZZ'+'''');  //2017/09/01 sua gia cong vat tu
    //2017/09/01 sua gia cong vat tu
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where  KCLLS.CLBH='+''''+Edit7.Text+'''');
    sql.add('and KCLL.CKBH='+''''+CBX2.text+'''');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    //2017/09/01 sua gia cong vat tu
    sql.Add('and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('and KCLL.SCBH = ''JJJJJJJJJJ'')');
    sql.add(') JGCK ');
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where  KCLLS.CLBH='+''''+Edit7.Text+'''');
    sql.add('and KCLL.CKBH='+''''+CBX2.text+'''');
    sql.add('and KCLL.SCBH <> ''JJJJJJJJJJ''');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    if  CheckBox2.Checked then
    begin
      sql.Add(')');
    end else
    begin
      sql.add('or KCLL.CFMDATE is null)');
    end;
    sql.add(') JGCK ');
    //
    if not CheckBox1.Checked then
    begin
      sql.Add('order by JGCK.CFMDate');
    end;
    if CheckBox1.Checked then
    begin
      sql.add('union all');
      sql.add('select KCLL_2014.LLNO,KCLL_2014.CFMDATE,KCLL_2014.CFMID,KCLLS_2014.Qty,KCLLS_2014.SCBH, BDepartment.DepName as Memo');
      sql.add('from KCLLS_2014');
      sql.add('left join KCLL_2014 on KCLL_2014.LLNO=KCLLS_2014.LLNO ');
      sql.add('left join BDepartment on BDepartment.ID=KCLL_2014.DepID ') ;
      sql.add('where  KCLLS_2014.CLBH='+''''+Edit7.Text+'''');
      sql.add('and KCLL_2014.CKBH='+''''+CBX2.text+'''');
      sql.add('and (convert(smalldatetime,convert(varchar,KCLL_2014.CFMDate,111)) between ');
      sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
      sql.add('     and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
      if  CheckBox2.Checked then
      begin
        sql.Add(')');
      end else
      begin
        sql.add('or KCLL_2014.CFMDATE is null)');
      end;
      sql.add(') JGCK ');
      sql.add('order by JGCK.CFMDate');
    end;
    //memo1.Text:=sql.Text;
    //showmessage(SQL.Text);
    active:=true;
  end;
  with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZL.CFMID1 as CFMID,JGZLS.Qty,');
    sql.add(''''+'JG'+''''+' as Memo,'''' as Invoice,'''' as PaperNo ');
    sql.add(' ,cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as ZLBH ');
    sql.add('from JGZL,JGZLS ');
    sql.add('where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and JGZLS.CLBH='+''''+Edit7.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    sql.add('and JGZL.CKBH='+''''+CBX2.text+'''');
    sql.add('union all');
    sql.add('select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,KCRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRKS.CGBH as ZLBH ');
    sql.add('from KCRKS');
    sql.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('where KCRKS.CLBH='+''''+Edit7.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
    sql.add('and KCRK.CKBH='+''''+CBX2.text+'''');
    if CGNOEdit.Text<>'' then
      sql.add('and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
    if INVEdit.Text<>'' then
      sql.add('and KCRK.DOCNO='''+INVEdit.Text+''' ');
    //
    if not CheckBox1.Checked then
    begin
      sql.Add('order by kcrk.USERDATE');
    end;
    if CheckBox1.Checked then
    begin
      sql.add('union all');
      sql.add('select * from ( ');
      sql.add('select KCRK_2014.RKNO,KCRK_2014.USERDATE,KCRK_2014.ZSBH,KCRK_2014.CFMID ,KCRKS_2014.Qty,KCRK_2014.ZSNO as Memo,KCRK_2014.docno as Invoice,KCRK_2014.memo as PaperNo,KCRKS_2014.CGBH as ZLBH  ');
      sql.add('from KCRKS_2014');
      sql.Add('inner join KCRK_2014 on KCRK_2014.RKNO=KCRKS_2014.RKNO');
      sql.add('where KCRKS_2014.CLBH='+''''+Edit7.Text+'''');
      sql.add('and convert(smalldatetime,convert(varchar,KCRK_2014.USERDATE,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
      sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
      sql.add('and KCRK_2014.CKBH='+''''+CBX2.text+'''');
      if CGNOEdit.Text<>'' then
         sql.add('and KCRK_2014.ZSNO='''+CGNOEdit.Text+''' ');
      if INVEdit.Text<>'' then
         sql.add('and KCRK_2014.DOCNO='''+INVEdit.Text+''' ');
      sql.add(')  KCRK ');
      sql.add('order by KCRK.USERDATE');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    active:=true;
  end;
  //材料名稱及庫存數量的更新
  with material do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,1000.00 as Remainder, ');
    sql.add(' 1000.00 as RKQty,1000.00 as LLQty,1000.00 as NeedQty,1000.00 as OnQty ');
    sql.add('from CLZL  where CLDH='+''''+Edit7.Text+'''');
    active:=true;
  end;
end;

procedure TAnyStockUltra.Button8Click(Sender: TObject);
begin
   if StockDT1.Date<strtodate('2017/11/01') then
   begin
     Showmessage('Please select >2017/11/01');
     abort();
   end;
   CalCulate_KCCLMONTH_HGBH();
end;

procedure TAnyStockUltra.CalCulate_KCCLMONTH_HGBH();
begin
  //
  CalWarehouseDate(StockDT1);
  if StockDT1.Date<strtodate('2021/03/01') then
  begin
    CalCulate_KCCLMONTH_HGBH_NK();
  end else
  begin
    CalCulate_KCCLMONTH_HGBH_NKHD();
  end;
end;

procedure TAnyStockUltra.CalCulate_Classification();
begin
    KHOQry1.SQL.Add('  ,case when left(CLZL.CLDH,3)= ''A54'' and CLZL.DWBH=''M''  then ''Giay bac 轉印紙''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''A'' and CLZL.DWBH in (''M'',''YRD'',''SHT'',''SQM'') then ''Vai 布''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''A'' and CLZL.DWBH =''PCE''  then ''Mu giay 鞋面部位''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''B'' and CLZL.DWBH in (''YRD'',''SHT'')  then ''MOUSE 泡棉類''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''C'' and CLZL.DWBH in (''YRD'')  then ''Vai 布''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''D'' and CLZL.DWBH in (''PRS'')  then ''Day giay 鞋帶''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''D'' and CLZL.DWBH in (''YRD'',''M'',''PCE'')  then ''Day det/thun 帶類''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''E'' and CLZL.DWBH in (''SET'',''PCE'')  then ''Ode 眼扣''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''F'' and CLZL.DWBH in (''SQF'',''SQM'')  then ''Da 皮料''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''G'' and CLZL.DWBH in (''PRS'',''SHT'')  then ''De 鞋墊/中底類''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''G'' and CLZL.DWBH in (''M'',''YRD'',''SQM'')  then ''Vai labang中底布''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,3)= ''H10'' and CLZL.DWBH in (''PCE'')  then ''Giay don 土報紙''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''H'' and CLZL.DWBH in (''BOX'')  then ''Hop 內盒''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''H'' and CLZL.DWBH in (''PCE'')  then ''Bao bi包裝材料''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''I'' and CLZL.DWBH in (''PRS'')  then ''De 鞋墊/中底類''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''J'' and CLZL.DWBH in (''PRS'')  then ''Nhan nhua 橡膠 logo''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''K'' and CLZL.DWBH in (''YRD'',''M'')  then ''PU''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''L'' and CLZL.DWBH in (''PCE'')  then ''Tem 紙標''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''M'' and CLZL.DWBH in (''GRN'',''ROLL'')  then ''Chi 線''    ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''N'' and CLZL.DWBH in (''PCE'',''PRS'')  then ''Nhan vai 布標''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''O'' and CLZL.DWBH in (''SHT'',''PRS'')  then ''Pho 熱熔膠''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''P'' and CLZL.DWBH in (''PCE'',''PRS'')  then ''De 鞋墊/中底類''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''P'' and CLZL.DWBH in (''YRD'')  then ''Vai 布''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''P'' and CLZL.DWBH in (''M'')  then ''PU''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD =''VT MAT'' and CLZL.DWBH in (''M'',''YRD'')  then ''Vai 布''   ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD =''VT MAT'' and CLZL.DWBH in (''PCE'',''PRS'')  then ''Mu giay 鞋面部位''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD =''VT MAT'' and CLZL.DWBH in (''YRD'')  then ''MOUSE 泡棉類''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD =''VT Phu GO'' and CLZL.DWBH in (''PRS'')  then ''Day giay鞋帶''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Phu may'',''VT MAT'') and CLZL.DWBH in (''YRD'',''M'')  then ''Day det/thun帶類''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Phu may'') and CLZL.DWBH in (''SET'',''PCE'')  then ''Ode 眼扣''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Phu may'',''VT Mat'') and CLZL.DWBH in (''SQF'',''SQM'')  then ''Da 皮料''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT De'',''VT Mat'') and CLZL.DWBH in (''PRS'',''SHT'',''PCE'')  then ''De 鞋墊/中底類''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT De'',''VT Mat'') and CLZL.DWBH in (''PRS'',''SHT'',''PCE'')  then ''De 鞋墊/中底類''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Phu GO'') and CLZL.DWBH in (''PCE'')  then ''Bao bi包裝材料''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT MAT'') and CLZL.DWBH in (''YRD'',''M'',''SHT'')  then ''PU''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Phu GO'') and CLZL.DWBH in (''PCE'')  then ''Tem 紙標''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Phu may'') and CLZL.DWBH in (''GRN'',''ROLL'')  then ''Chi 線''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Phu may'') and CLZL.DWBH in (''PRS'',''PCE'')  then ''Nhan vai 布標''  ');
    KHOQry1.SQL.Add('  when left(CLZL.CLDH,1)= ''V'' and CLZL.CLTD in (''VT Mat'') and CLZL.DWBH in (''SHT'')  then ''Pho 熱熔膠''  else '''' end as ''Classification''  ');
end;

procedure TAnyStockUltra.CalCulate_KCCLMONTH_HGBH_NK();
begin
  with KHOQry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#tmpKCCLMonthHG'') is not null ');
    SQL.Add('begin   drop table #tmpKCCLMonthHG end   ');
    SQL.Add('select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,');
    SQL.Add('       Round(isnull(round(Sum(LastRem),'+WH_Decimal+'),0)+isnull(round(Sum(RKQty),'+WH_Decimal+'),0)-isnull(round(Sum(LLQty),'+WH_Decimal+'),0)+isnull(round(Sum(JGRK),'+WH_Decimal+'),0)-isnull(round(Sum(JGCK),'+WH_Decimal+'),0),'+WH_Decimal+')  as Qty');
    SQL.Add('into #tmpKCCLMonthHG  from (');
    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CNO,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK');
    SQL.Add('           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR='''+sYear+''' ');
    SQL.Add('                                 and KCMONTH='''+sMonth+''' and CLBH like '''+MatNoEdit.Text+'%'' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('                                 and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('                                 ) LastKC');
    SQL.Add('Union all   ');
    SQL.Add('select * from (');
    SQL.Add('select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB <>''NK'') then ''ZZZZ'' else KCRKS.CNO end  as CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCRKS.CLBH like '''+MatNoEdit.Text+'%''    ');
    SQL.Add('           and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB <>''NK'') then ''ZZZZ'' else KCRKS.CNO end ) RK        ');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like '''+MatNoEdit.Text+'%''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end ) LL    ');
    SQL.Add('union all ');
    SQL.Add('select * from (                                         ');
    SQL.Add('select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZ'' as CNO,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('                 and JGZL.CFMID1<>''NO'' and JGZLS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if CNO1Edit.Text<>'' then
    SQL.Add('                 and 1=2 ');
    SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+''' ');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMID<>''NO'' and KCLLS.CLBH like '''+MatNoEdit.Text+'%'' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end ) JGCK');
    SQL.Add(') KCZLS');
    SQL.Add('where 1=1 and CLBH like '''+MatNoEdit.Text+'%''  ');
    SQL.Add('Group by CKBH,CLBH,HGLB,CNO     ');
    //-------------
    SQL.Add('select KCRK.*,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH ');
    CalCulate_Classification();
    SQL.Add('from (');
    if CBX3.text = 'ALL Without CBY' then
      SQL.Add('select ''ALL'' as CKBH,CLBH as CLDH,Sum(Qty) as Qty, ')
    else

      SQL.Add('select CKBH,CLBH as CLDH,Sum(Qty) as Qty, ');
    SQL.Add('       Sum(Case when HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('       Sum(Case when HGLB=''TC'' then Qty else 0 end ) as TC,');
    SQL.Add('       Sum(Case when HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('       Sum(Case when HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('       Sum(Case when HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('       Sum(Case when HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when HGLB=''ZZ'' then Qty else 0 end ) as ZZ');
    SQL.Add('from (select * from #tmpKCCLMonthHG ) KCZLS');

    SQL.Add('where 1=1 and CLBH not like ''Adjusting%'' ');
    if CBX3.text<>'ALL' then begin
      if CBX3.text = 'ALL Without CBY' then
        SQL.Add('and CKBH <> ''CBY'' ')
      else
        SQL.Add('and CKBH='''+CBX3.Text+''' ');
    end;
    if CBox1.Checked=true then
    begin
      SQL.Add('    and CLBH in ( select CLBH from #tmpKCCLMonthHG  where Qty > 0 ) ')
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('      and KCZLS.HGLB<>''XT'' ');
    SQL.Add('Group by CKBH,CLBH  ) KCRK');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCRK.CLDH');
    //SQL.Add('Left join CLStock on CLStock.CLBH=KCRK.CLDH');
    sql.add('left join (select * from KCZLS');
    if CBX3.text<>'ALL' then begin
      if CBX3.text = 'ALL Without CBY' then
        SQL.Add('where CKBH <> ''CBY'' ')
      else
        SQL.Add('where CKBH='''+CBX3.Text+''' ');
    end;
    sql.add('                            ) KCZLS on KCZLS.CLBH=KCRK.CLDH  and KCZLS.CKBH=KCRK.CKBH');
    SQL.Add('order by CLZL.CLDH ');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;
end;

procedure TAnyStockUltra.CalCulate_KCCLMONTH_HGBH_NKHD();
begin
  with KHOQry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#tmpKCCLMonthHG'') is not null ');
    SQL.Add('begin   drop table #tmpKCCLMonthHG end   ');
    SQL.Add('select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,');
    SQL.Add('       Round(isnull(round(Sum(LastRem),'+WH_Decimal+'),0)+isnull(round(Sum(RKQty),'+WH_Decimal+'),0)-isnull(round(Sum(LLQty),'+WH_Decimal+'),0)+isnull(round(Sum(JGRK),'+WH_Decimal+'),0)-isnull(round(Sum(JGCK),'+WH_Decimal+'),0),'+WH_Decimal+')  as Qty');
    SQL.Add('into #tmpKCCLMonthHG  from (');
    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CNO,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK');
    SQL.Add('           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR='''+sYear+''' ');
    SQL.Add('                                 and KCMONTH='''+sMonth+''' and CLBH like '''+MatNoEdit.Text+'%'' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('                                 and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('                                 ) LastKC');
    SQL.Add('Union all   ');
    SQL.Add('select * from (');
    SQL.Add('select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCRKS.CNO end  as CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCRKS.CLBH like '''+MatNoEdit.Text+'%''    ');
    SQL.Add('           and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCRKS.CNO end ) RK        ');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like '''+MatNoEdit.Text+'%''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end ) LL    ');
    SQL.Add('union all ');
    SQL.Add('select * from (                                         ');
    SQL.Add('select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZ'' as CNO,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('                 and JGZL.CFMID1<>''NO'' and JGZLS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if CNO1Edit.Text<>'' then
    SQL.Add('                 and 1=2 ');
    SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+''' ');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMID<>''NO'' and KCLLS.CLBH like '''+MatNoEdit.Text+'%'' and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end ) JGCK');
    SQL.Add(') KCZLS');
    SQL.Add('where 1=1 and CLBH like '''+MatNoEdit.Text+'%''  ');
    SQL.Add('Group by CKBH,CLBH,HGLB,CNO     ');
    //-------------
    SQL.Add('select KCRK.*,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH');
    CalCulate_Classification();
    SQL.Add('from (');
    if (CBX3.text = 'ALL Without CBY') or ((CBX3.text = 'ALL') and (main.Edit2.Text = 'SKX')) then
      SQL.Add('select ''ALL'' as CKBH,CLBH as CLDH,Sum(Qty) as Qty, ')
    else
      SQL.Add('select CKBH,CLBH as CLDH,Sum(Qty) as Qty, ');
    SQL.Add('       Sum(Case when HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('       Sum(Case when HGLB=''TC'' then Qty else 0 end ) as TC,');
    SQL.Add('       Sum(Case when HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('       Sum(Case when HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('       Sum(Case when HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('       Sum(Case when HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when HGLB=''ZZ'' then Qty else 0 end ) as ZZ');
    SQL.Add('from (select * from #tmpKCCLMonthHG ) KCZLS');
    SQL.Add('where 1=1 and CLBH not like ''Adjusting%'' ');
    if Edit10.Text <> '' then
      SQL.Add('and HGLB =  '''+Edit10.Text+''' ');

    if CBX3.text<>'ALL' then begin
      if CBX3.text = 'ALL Without CBY' then
        SQL.Add('and CKBH <> ''CBY'' ')
      else
        SQL.Add('and CKBH='''+CBX3.Text+''' ');
    end;
    if CheckBox3.Checked = true then
      SQL.Add('and (CKBH <> ''XT'') and (CKBH <> ''ZZ'') ');

    if CBox1.Checked=true then
    begin
      SQL.Add('    and CLBH in ( select CLBH from #tmpKCCLMonthHG  where Qty > 0 ) ')
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('      and KCZLS.HGLB<>''XT'' ');
    if (CBX3.text = 'ALL Without CBY') or ((CBX3.text = 'ALL') and (main.Edit2.Text = 'SKX')) then
      SQL.Add('Group by CLBH  ) KCRK')
    else
      SQL.Add('Group by CKBH,CLBH  ) KCRK');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCRK.CLDH');
    if CBX3.text = 'ALL Without CBY' then
      sql.add('left join (select CLBH,KCBH from KCZLS where 1 = 1 ')
    else
      sql.add('left join (select CLBH,KCBH,CKBH from KCZLS where 1 = 1 ');
    if CBX3.text<>'ALL' then begin
      if CBX3.text = 'ALL Without CBY' then
        SQL.Add('and CKBH <> ''CBY'' ')
      else
        SQL.Add('and CKBH='''+CBX3.Text+''' ');
    end;
    if CBX3.text = 'ALL Without CBY' then
      sql.add('and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') and KCQty > 0 group by CLBH,KCBH ) KCZLS on KCZLS.CLBH=KCRK.CLDH ')
    else
      sql.add('and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') and KCQty > 0 group by CLBH,KCBH,CKBH ) KCZLS on KCZLS.CLBH=KCRK.CLDH and KCZLS.CKBH=KCRK.CKBH');
    SQL.Add('where 1 = 1 ');
    if Edit8.Text <> '' then
      SQL.Add('and DWBH =  '''+Edit8.Text+''' ');
    if Edit9.Text <> '' then
      SQL.Add('and KCZLS.KCBH like  '''+Edit9.Text+'%'' ');
    SQL.Add('order by CLZL.CLDH ');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    //exit;
    Active:=true;
  end;
end;

procedure TAnyStockUltra.CalWarehouseDate(StockDT:TDateTimePicker);
var iYear,iMonth,iDay:word;
begin
    //
    decodedate(incmonth(StockDT.Date,-1),iYear,iMonth,iDay);
    sDate:=startofthemonth(StockDT1.Date);
    eDate:=StockDT1.Date;
    sYear:=inttostr(iYear);
    sMonth:=inttostr(iMonth);
    if  length(sMonth)<2  then
    begin
      sMonth:='0'+sMonth;
    end;
    sSTDT:=formatdatetime('yyyy/MM/dd',sDate);
    sEDDT:=formatdatetime('yyyy/MM/dd',eDate);
    //
end;

procedure TAnyStockUltra.MenuItem1Click(Sender: TObject);
begin
   ExportExcel(KHOQry1,nil);
end;

procedure TAnyStockUltra.ExportExcel(MasQry:TQuery;DetQry:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if MasQry.Active then
  begin
    if MasQry.recordcount=0 then
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
    if DetQry<>nil then DetQry.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for  i:=1  to  MasQry.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=MasQry.fields[i-1].FieldName;
    end;
    MasQry.First;
    j:=2;
    while   not  MasQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   MasQry.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=MasQry.Fields[i-1].Value;
      end;
      MasQry.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    if DetQry<>nil then DetQry.Active:=true;
  except
    on  F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TAnyStockUltra.Button10Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,s,NameSheets,ValuesSheets,excelsheet,excelcount,Mon:integer;
    DataRow,ExcelRow,Nhap,Xuat:integer;
    Nxuat,Nnhap,CLBHTT:string;
    stockqty:real;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Warehouse_SN33.xls'),Pchar(AppDir+'Additional\Warehouse_SN33.xls'),false);
   if FileExists(AppDir+'Additional\Warehouse_SN33.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Warehouse_SN33.xls');
//        Excelall := eclApp.WorkBooks.Open(AppDir+'Additional\Warehouse_SN33.xls');
        with query2 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select isnull(sum(QTY),0)');
          sql.add('from KCCLMONTH where 1 = 1');
          if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
            sql.add('and CKBH = '''+CBX2.Text+'''')
          else if CBX2.text = 'ALL Without CBY' then
            sql.add('and CKBH in (''CDC'',''CDT'',''BYC'',''BYT'')');

          sql.add('and CLBH = '''+Edit7.Text+'''');
          sql.add('and KCYear = '''+copy(formatdatetime('YYYY/MM/DD',DTP2.Date-15),1,4)+'''');
          sql.add('and KCMonth = '''+copy(formatdatetime('YYYY/MM/DD',DTP2.Date-15),6,2)+'''');
          active:=true;
          stockqty:=query2.Fields[0].Value;
        end;
        with Data do
        begin
          active:=false;
          sql.Clear;
          if CB2.Checked then
          begin
          sql.add('select CFMDate,LLNO,Qty from (');
          end;
          sql.add('select CFMDate,LLNO,Qty from ( select * from ( select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,');
          //20160521 round 2 numeric for Qty
          sql.add('JGZL.CFMID1 as CFMID,round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),'+WH_Decimal+') as Qty');
          //
          sql.add(',cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as SCBH ');
          sql.add(', '+''''+'JG'+''''+' as Memo ' );
          sql.add('from JGZLS  ');
          sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
          sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
          sql.add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
          sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
         // sql.add('          and JGZL.CFMDate1 is not null');
          sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
          sql.add('          and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');

          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and JGZL.CKBH='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

          sql.add('          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
          sql.add('where JGZL.CFMDate1>='+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
          sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu

          sql.add('and JGZLS.ZMLB='+''''+Edit7.Text+'''');
          //  sql.add('and JGZLS.clbh='+''''+edit1.Text+'''');
          //sql.Add('and JGZL.CKBH='''+CBX1.text+''' '); //20140319 weston JG資料修正
          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and JGZL.CKBH='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
          sql.add('and JGZLS.ZMLB <>'+''''+'ZZZZZZZZZZ'+'''');  //2017/09/01 sua gia cong vat tu
          //2017/09/01 sua gia cong vat tu
          sql.add('union all');
          sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
          sql.add('from KCLLS');
          sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
          sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
          sql.add('where  KCLLS.CLBH='+''''+Edit7.Text+'''');
          //sql.add('and KCLL.CKBH='+''''+CBX1.text+'''');
          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and KCLL.CKBH='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
          sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
          sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
          sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
          //2017/09/01 sua gia cong vat tu
          sql.Add('and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
          sql.add('and KCLL.SCBH = ''JJJJJJJJJJ'')');
          sql.add(') JGCK ');
          sql.add('union all');
          sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
          sql.add('from KCLLS');
          sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
          sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
          sql.add('where  KCLLS.CLBH='+''''+Edit7.Text+'''');
          //sql.add('and KCLL.CKBH='+''''+CBX1.text+'''');
          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and KCLL.CKBH='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
          sql.add('and KCLL.SCBH <> ''JJJJJJJJJJ''');
          sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
          sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
          sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
          if  CB3.Checked then
          begin
            sql.Add(')');
          end else
          begin
            sql.add('or KCLL.CFMDATE is null)');
          end;
          sql.add(') JGCK ');
          //
          if CB2.Checked then
          begin
            sql.add('union all');
            sql.add('select KCLL_2014.CFMDATE,KCLL_2014.LLNO,KCLLS_2014.Qty');
            sql.add('from KCLLS_2014');
            sql.add('left join KCLL_2014 on KCLL_2014.LLNO=KCLLS_2014.LLNO ');
            sql.add('left join BDepartment on BDepartment.ID=KCLL_2014.DepID ') ;
            sql.add('where  KCLLS_2014.CLBH='+''''+Edit7.Text+'''');
            //sql.add('and KCLL_2014.CKBH='+''''+CBX1.text+'''');
            if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
            begin
              SQL.Add('and KCLL_2014.CKBH='''+CBX2.Text+''' ');
            end else
            if CBX2.text = 'ALL Without CBY' then
            begin
              sql.add('and KCLL_2014.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
            end else
            if CBX2.text = 'ALL' then
              sql.add('and KCLL_2014.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

            sql.add('and (convert(smalldatetime,convert(varchar,KCLL_2014.CFMDate,111)) between ');
            sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
            sql.add('     and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
            if  CB3.Checked then
            begin
              sql.Add(')');
            end else
            begin
              sql.add('or KCLL_2014.CFMDATE is null)');
            end;
            sql.add(') JGCK ');
            //sql.add('order by JGCK.CFMDate');
          end;
          sql.add('union all');
          sql.add('select JGZL.CFMDate1 as USERDATE,JGZL.JGNO as RKNO,JGZLS.Qty');
          //sql.add(''''+'JG'+''''+' as Memo,'''' as Invoice,'''' as PaperNo ');
          //sql.add(' ,cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as ZLBH ');
          sql.add('from JGZL,JGZLS ');
          sql.add('where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
          sql.add('and JGZLS.CLBH='+''''+Edit7.Text+'''');
          sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
          sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
          //sql.add('and JGZL.CKBH='+''''+CBX1.text+'''');
          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and JGZL.CKBH ='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and JGZL.CKBH  in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and JGZL.CKBH  in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

          sql.add('union all');
          sql.add('select KCRK.USERDATE,KCRK.RKNO,KCRKS.Qty');
          sql.add('from KCRKS');
          sql.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
          sql.add('where KCRKS.CLBH='+''''+Edit7.Text+'''');
          sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
          sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
          //sql.add('and KCRK.CKBH='+''''+CBX1.text+'''');

          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and KCRK.CKBH ='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and KCRK.CKBH  in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and KCRK.CKBH  in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

          if CGNOEdit.Text<>'' then
            sql.add('and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
          if INVEdit.Text<>'' then
            sql.add('and KCRK.DOCNO='''+INVEdit.Text+''' ');
          //
          if not CB2.Checked then
            sql.add('order by JGCK.CFMDate');
          if CB2.Checked then
          begin
            sql.add('union all');
            sql.add('select USERDATE,RKNO,Qty from ( ');
            sql.add('select KCRK_2014.RKNO,KCRK_2014.USERDATE,KCRK_2014.ZSBH,KCRK_2014.CFMID ,KCRKS_2014.Qty,KCRK_2014.ZSNO as Memo,KCRK_2014.docno as Invoice,KCRK_2014.memo as PaperNo,KCRKS_2014.CGBH as ZLBH  ');
            sql.add('from KCRKS_2014');
            sql.Add('inner join KCRK_2014 on KCRK_2014.RKNO=KCRKS_2014.RKNO');
            sql.add('where KCRKS_2014.CLBH='+''''+Edit7.Text+'''');
            sql.add('and convert(smalldatetime,convert(varchar,KCRK_2014.USERDATE,111)) between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
            sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''  );
            //sql.add('and KCRK_2014.CKBH='+''''+CBX1.text+'''');
            if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
            begin
              SQL.Add('and KCRK_2014.CKBH ='''+CBX2.Text+''' ');
            end else
            if CBX2.text = 'ALL Without CBY' then
            begin
              sql.add('and KCRK_2014.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
            end else
            if CBX2.text = 'ALL' then
              sql.add('and KCRK_2014.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');


            if CGNOEdit.Text<>'' then
               sql.add('and KCRK_2014.ZSNO='''+CGNOEdit.Text+''' ');
            if INVEdit.Text<>'' then
               sql.add('and KCRK_2014.DOCNO='''+INVEdit.Text+''' ');
            sql.add(')  KCRK ');
            sql.add('order by JGCK.CFMDate');
          end;
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
        end;
        with query2 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH');
          sql.add('from CLZL left join KCZLS on CLZL.CLDH = KCZLS.CLBH where CLZL.CLDH='+''''+edit7.Text+'''');
          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and KCZLS.CKBH ='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and KCZLS.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and KCZLS.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

          active:=true;
        end;
        eclApp.Cells(2,1):='Ten hang 品名: '+ query2.FieldByName('CLDH').AsString;
        eclApp.Cells(2,3):='Don vi tinh 計算單位: '+ query2.FieldByName('DWBH').AsString;
        eclApp.Cells(2,5):= 'Qui cach 規格: ' +copy(query2.FieldByName('YWPM').AsString,1,4);
        eclApp.Cells(2,7):= 'Ma ke 貨架號碼: ' +query2.FieldByName('KCBH').AsString;
        eclApp.Cells(5,6):= 'LastMonth Qty: ' +floattostr(stockqty);
        Nhap:=6;
        Xuat:=6;
        k:=1;
        i:=1;
        KCLL.First;
        KCRK.First;
        while  not  Data.Eof   do
        begin
           if (KCLL.FieldByName('CFMdate').Value = NULL) then
           begin
              eclApp.Cells(Xuat,3):=KCLL.Fields[0].Value;
              eclApp.Cells(Xuat,5):=KCLL.Fields[3].Value;
              stockqty := stockqty - KCLL.fieldbyname('qty').Value;
              eclApp.Cells(Xuat,6):=floattostr(stockqty);
              KCLL.Next;
              i:=i+1;
           end else
           if (formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value) > formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value))  and (i<=KCLL.RecordCount) then
           begin
              eclApp.Cells(Xuat,2):=formatdatetime('YYYY/MM/DD',KCLL.Fields[2].Value);
              eclApp.Cells(Xuat,3):=KCLL.Fields[0].Value;
              eclApp.Cells(Xuat,5):=KCLL.Fields[3].Value;
              stockqty := stockqty - KCLL.fieldbyname('qty').Value;
              eclApp.Cells(Xuat,6):=floattostr(stockqty);
              KCLL.Next;
              i:=i+1;
           end else
           if (formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value) <= formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value)) and (k<=KCRK.RecordCount) then
           begin
              eclApp.Cells(Nhap,1):=formatdatetime('YYYY/MM/DD',KCRK.Fields[1].Value);
              eclApp.Cells(Nhap,3):=KCRK.Fields[0].Value;
              eclApp.Cells(Nhap,4):=KCRK.Fields[2].Value;
              stockqty := stockqty + KCRK.fieldbyname('qty').Value;
              eclApp.Cells(Nhap,6):=floattostr(stockqty);
              KCRK.Next;
              k:=k+1;
           end;
           if (formatdatetime('YYYY/MM/DD',Data.FieldByName('CFMdate').Value) = formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value)) and
           (formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value) > formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value)) then
           begin
              eclApp.Cells(Nhap,1):=formatdatetime('YYYY/MM/DD',KCRK.Fields[1].Value);
              eclApp.Cells(Nhap,3):=KCRK.Fields[0].Value;
              eclApp.Cells(Nhap,4):=KCRK.Fields[2].Value;
              stockqty := stockqty + KCRK.fieldbyname('qty').Value;
              eclApp.Cells(Nhap,6):=floattostr(stockqty);
              KCRK.Next;
              k:=k+1;
           end else
           if (formatdatetime('YYYY/MM/DD',Data.FieldByName('CFMdate').Value) = formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value)) and
           (formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value) >= formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value)) then
           begin
              eclApp.Cells(Xuat,2):=formatdatetime('YYYY/MM/DD',KCLL.Fields[2].Value);
              eclApp.Cells(Xuat,3):=KCLL.Fields[0].Value;
              eclApp.Cells(Xuat,5):=KCLL.Fields[3].Value;
              stockqty := stockqty - KCLL.fieldbyname('qty').Value;
              eclApp.Cells(Xuat,6):=floattostr(stockqty);
              KCLL.Next;
              i:=i+1;
           end;
           Xuat:=Xuat+1;
           Nhap:=Nhap+1;
           Data.Next;
        end;
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[5,1],eclApp.cells[Xuat-1,7]].borders[k].linestyle:=1;
        end;
          Showmessage('Succeed.');
          eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;

end;

procedure TAnyStockUltra.Button12Click(Sender: TObject);
var year,month,day:word;
    ayear,amonth:string;
    eclApp,WorkBook:olevariant;
    i,j,k,s,t,NameSheets,ValuesSheets,excelsheet,excelcount,Mon:integer;
    DataRow,ExcelRow,Nhap,Xuat:integer;
    Nxuat,Nnhap,CLBHTT,KCRKDATE:string;
    stockqty:real;
begin
  decodedate(DTP3.Date,Year,Month,Day);   //找庫存相關的數據
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
  amonth:='0'+amonth;
  with KCLL do          //出庫數量清單
  begin
    active:=false;
    sql.Clear;
    if CB2.Checked then
    begin
    sql.add('select JGCK.LLNO,JGCK.CFMDate,JGCK.CFMID,SUM(QTY) as QTY,JGCK.SCBH,JGCK.Memo from (');
    end;
    sql.add('select JGCK.LLNO,JGCK.CFMDate,JGCK.CFMID,SUM(QTY) as QTY,JGCK.SCBH,JGCK.Memo from ( select * from ( select '''' as LLNO,JGZL.CFMDate1 as CFMDate,');
    //20160521 round 2 numeric for Qty
    sql.add(''''' as CFMID,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),'+WH_Decimal+')) as Qty');
    //
    sql.add(','''' as SCBH ');
    sql.add(', '''' as Memo ' );
    sql.add('from JGZLS  ');
    sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.Date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',endofthemonth(DTP4.Date))+''''  );
   // sql.add('          and JGZL.CFMDate1 is not null');
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    sql.add('          and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');

    //sql.add('          and JGZL.CKBH='+''''+CBX1.text+'''');

    if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and JGZL.CKBH='''+CBX2.Text+''' ');
    end else
    if CBX2.text = 'ALL Without CBY' then
    begin
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX2.text = 'ALL' then
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('where JGZL.CFMDate1>='+''''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.Date))+''''  );
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    //  sql.add('and JGZL.CFMDate1 is not null');
    sql.add('and JGZLS.ZMLB='+''''+edit7.Text+'''');
    //  sql.add('and JGZLS.clbh='+''''+edit1.Text+'''');
    //sql.Add('and JGZL.CKBH='''+CBX1.text+''' '); //20140319 weston JG資料修正

    if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and JGZL.CKBH='''+CBX2.Text+''' ');
    end else
    if CBX2.text = 'ALL Without CBY' then
    begin
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX2.text = 'ALL' then
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

    sql.add('and JGZLS.ZMLB <>'+''''+'ZZZZZZZZZZ'+'''');  //2017/09/01 sua gia cong vat tu
    sql.add('group by JGZL.CFMDate1');
    //2017/09/01 sua gia cong vat tu
    sql.add('union all');
    sql.add('select '''' as LLNO,convert(char(10),KCLL.CFMDATE,111) as CFMDate,'''' as CFMID,sum(KCLLS.Qty) as QTY,'''' as SCBH, '''' as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where  KCLLS.CLBH='+''''+edit7.Text+'''');
    //sql.add('and KCLL.CKBH='+''''+CBX1.text+'''');

    if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and KCLL.CKBH='''+CBX2.Text+''' ');
    end else
    if CBX2.text = 'ALL Without CBY' then
    begin
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX2.text = 'ALL' then
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.Date))+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',endofthemonth(DTP4.Date))+''''  );
    //2017/09/01 sua gia cong vat tu
    sql.Add('and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('and KCLL.SCBH = ''JJJJJJJJJJ'')');
    sql.add('group by convert(char(10),KCLL.CFMDATE,111)');

    sql.add(') JGCK ');
    sql.add('union all');
    sql.add('select '''' as LLNO,convert(char(10),KCLL.CFMDATE,111) as CFMDate,'''' as CFMID,sum(KCLLS.Qty) as QTY,'''' as SCBH, '''' as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where  KCLLS.CLBH='+''''+edit1.Text+'''');
    //sql.add('and KCLL.CKBH='+''''+CBX1.text+'''');

    if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and KCLL.CKBH='''+CBX2.Text+''' ');
    end else
    if CBX2.text = 'ALL Without CBY' then
    begin
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX2.text = 'ALL' then
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('and KCLL.SCBH <> ''JJJJJJJJJJ''');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.Date))+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',endofthemonth(DTP4.Date))+''''  );
    if  CB3.Checked then
    begin
      sql.Add(')');
    end else
    begin
      sql.add('or KCLL.CFMDATE is null)');
    end;
    sql.add('group by convert(char(10),KCLL.CFMDATE,111)');
    sql.add(') JGCK ');
    sql.add('group by JGCK.CFMDate,JGCK.LLNO,JGCK.CFMID,JGCK.SCBH,JGCK.Memo');
    //
    if not CB2.Checked then
    begin
      sql.Add('order by JGCK.CFMDate');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.JGNO as RKNO,convert(char(10),JGZL.CFMDate1,111) as USERDATE,JGZL.ZSBH,JGZL.CFMID1 as CFMID,JGZLS.Qty,');
    sql.add(''''+'JG'+''''+' as Memo,'''' as Invoice,'''' as PaperNo ');
    sql.add(' ,cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as ZLBH ');
    sql.add('from JGZL,JGZLS ');
    sql.add('where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and JGZLS.CLBH='+''''+edit7.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.Date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',endofthemonth(DTP4.Date))+''''  );
    //sql.add('and JGZL.CKBH='+''''+CBX1.text+'''');

    if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and JGZL.CKBH='''+CBX2.Text+''' ');
    end else
    if CBX2.text = 'ALL Without CBY' then
    begin
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX2.text = 'ALL' then
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('union all');
    sql.add('select KCRK.RKNO,convert(smalldatetime,convert(char(10),KCRK.USERDATE,111)) as USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,KCRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRKS.CGBH as ZLBH ');
    sql.add('from KCRKS');
    sql.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('where KCRKS.CLBH='+''''+edit7.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.Date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',endofthemonth(DTP4.Date))+''''  );
    //sql.add('and KCRK.CKBH='+''''+CBX1.text+'''');
    if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and KCRK.CKBH='''+CBX2.Text+''' ');
    end else
    if CBX2.text = 'ALL Without CBY' then
    begin
      sql.add('and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX2.text = 'ALL' then
      sql.add('and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if CGNOEdit.Text<>'' then
      sql.add('and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
    if INVEdit.Text<>'' then
      sql.add('and KCRK.DOCNO='''+INVEdit.Text+''' ');
    //
    if not CB2.Checked then
    begin
      sql.Add('order by kcrk.USERDATE');
    end;
    if CB2.Checked then
    begin
      sql.add('union all');
      sql.add('select * from ( ');
      sql.add('select KCRK_2014.RKNO,convert(smalldatetime,convert(char(10),KCRK_2014.USERDATE,111)) as USERDATE,KCRK_2014.ZSBH,KCRK_2014.CFMID ,KCRKS_2014.Qty,KCRK_2014.ZSNO as Memo,KCRK_2014.docno as Invoice,KCRK_2014.memo as PaperNo,KCRKS_2014.CGBH as ZLBH  ');
      sql.add('from KCRKS_2014');
      sql.Add('inner join KCRK_2014 on KCRK_2014.RKNO=KCRKS_2014.RKNO');
      sql.add('where KCRKS_2014.CLBH='+''''+edit7.Text+'''');
      sql.add('and convert(smalldatetime,convert(varchar,KCRK_2014.USERDATE,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.Date))+''''  );
      sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',endofthemonth(DTP4.Date))+''''  );
      //sql.add('and KCRK_2014.CKBH='+''''+CBX1.text+'''');

      if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
      begin
        SQL.Add('and KCRK_2014.CKBH='''+CBX2.Text+''' ');
      end else
      if CBX2.text = 'ALL Without CBY' then
      begin
        sql.add('and KCRK_2014.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
      end else
      if CBX2.text = 'ALL' then
        sql.add('and KCRK_2014.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

      if CGNOEdit.Text<>'' then
         sql.add('and KCRK_2014.ZSNO='''+CGNOEdit.Text+''' ');
      if INVEdit.Text<>'' then
         sql.add('and KCRK_2014.DOCNO='''+INVEdit.Text+''' ');
      sql.add(')  KCRK ');
      sql.add('order by USERDATE');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  //列印
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Warehouse_SN33.xls'),Pchar(AppDir+'Additional\Warehouse_SN33.xls'),false);
   if FileExists(AppDir+'Additional\Warehouse_SN33.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Warehouse_SN33.xls');
//        Excelall := eclApp.WorkBooks.Open(AppDir+'Additional\Warehouse_SN33.xls');
        with Query2 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select isnull(sum(QTY),0)');
          sql.add('from KCCLMONTH where 1 = 1');
          if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
            sql.add('and CKBH = '''+CBX2.Text+'''')
          else if CBX2.text = 'ALL Without CBY' then
            sql.add('and CKBH in (''CDC'',''CDT'',''BYC'',''BYT'')');

          sql.add('and CLBH = '''+Edit7.Text+'''');
          sql.add('and KCYear = '''+copy(formatdatetime('YYYY/MM/DD',DTP2.Date-15),1,4)+'''');
          sql.add('and KCMonth = '''+copy(formatdatetime('YYYY/MM/DD',DTP2.Date-15),6,2)+'''');
          //funcObj.WriteErrorLog(sql.Text);
          active:=true;
          stockqty:=Query2.Fields[0].Value;
        end;
        with Query2 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,CLZL.YWPM');
          sql.add('from CLZL left join KCZLS on CLZL.CLDH = KCZLS.CLBH where CLZL.CLDH='+''''+edit7.Text+'''');
          if (CBX2.text<>'ALL') and (CBX2.text <> 'ALL Without CBY') then
          begin
            SQL.Add('and KCZLS.CKBH ='''+CBX2.Text+''' ');
          end else
          if CBX2.text = 'ALL Without CBY' then
          begin
            sql.add('and KCZLS.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
          end else
          if CBX2.text = 'ALL' then
            sql.add('and KCZLS.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

          active:=true;
        end;
        eclApp.Cells(2,1):='Ten hang 品名: '+ Query2.FieldByName('CLDH').AsString+'                    ' +Query2.FieldByName('YWPM').AsString ;
        eclApp.Cells(2,3):='Don vi tinh 計算單位: '+ Query2.FieldByName('DWBH').AsString;
//        eclApp.Cells(2,5):= 'Qui cach 規格: ' +copy(Query1.FieldByName('YWPM').AsString,1,4);
        eclApp.Cells(2,5):= 'Thang kiem ke 盤點月份: ' +ayear +'/'+amonth;
        eclApp.Cells(2,7):= 'Ma ke 貨架號碼: ' +Query2.FieldByName('KCBH').AsString;
        eclApp.Cells(5,6):= 'LastMonth Qty: ' +floattostr(stockqty);
        Nhap:=6;
        Xuat:=6;
        k:=1;
        i:=1;
        t:=1;
        KCLL.First;
        KCRK.First;
        while not KCLL.Eof do begin
           if (KCLL.FieldByName('CFMdate').Value = NULL) then           //領料未確認
           begin
              eclApp.Cells(Xuat,5):=KCLL.Fields[3].Value;
              stockqty := stockqty - KCLL.fieldbyname('qty').Value;
              eclApp.Cells(Xuat,6):=floattostr(stockqty);
           end else
//           if (formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value) > formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value))  and (i<=KCLL.RecordCount) then
           if (formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value) > formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value))  then   //入庫日大於領料日
           begin
              eclApp.Cells(Xuat,2):=formatdatetime('YYYY/MM/DD',KCLL.Fields[2].Value);
              eclApp.Cells(Xuat,5):=KCLL.Fields[3].Value;
              stockqty := stockqty - KCLL.fieldbyname('qty').Value;
              eclApp.Cells(Xuat,6):=floattostr(stockqty);
              t := t + 1;
           end else
           if (formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value) <= formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value)) then    //入庫日小於領料日，跑回圈把入庫小於領料的先填，i紀錄跑到地幾筆入庫單
           begin
              for k := i to KCRK.RecordCount do begin
                KCRKDATE := formatdatetime('YYYY/MM/DD',KCRK.Fields[1].Value);
                if (formatdatetime('YYYY/MM/DD',KCRK.FieldByName('USERDATE').Value) <= formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value)) then begin
                  eclApp.Cells(Nhap,1):=formatdatetime('YYYY/MM/DD',KCRK.Fields[1].Value);
                  eclApp.Cells(Nhap,3):=KCRK.Fields[0].Value;
                  eclApp.Cells(Nhap,4):=KCRK.Fields[2].Value;
                  stockqty := stockqty + KCRK.fieldbyname('qty').Value;
                  eclApp.Cells(Nhap,6):=floattostr(stockqty);
                end
                else
                  break;
                 Xuat:=Xuat+1;
                 Nhap:=Nhap+1;
                 KCRK.Next;
                i := i + 1;
              end;
           end;
           if (KCRKDATE = formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value)) then begin    //上述情況入庫單填完後，再判斷是否要填領料單
              eclApp.Cells(Xuat,2):=formatdatetime('YYYY/MM/DD',KCLL.Fields[2].Value);
              eclApp.Cells(Xuat,5):=KCLL.Fields[3].Value;
              stockqty := stockqty - KCLL.fieldbyname('qty').Value;
              eclApp.Cells(Xuat,6):=floattostr(stockqty);
              t := t + 1;
           end else
           if (KCRKDATE <> formatdatetime('YYYY/MM/DD',KCLL.FieldByName('CFMdate').Value)) and (t = 1) then
           begin
              eclApp.Cells(Xuat,2):=formatdatetime('YYYY/MM/DD',KCLL.Fields[2].Value);
              eclApp.Cells(Xuat,5):=KCLL.Fields[3].Value;
              stockqty := stockqty - KCLL.fieldbyname('qty').Value;
              eclApp.Cells(Xuat,6):=floattostr(stockqty);
           end;
           Xuat:=Xuat+1;
           Nhap:=Nhap+1;
           t := 1;

           KCLL.Next;
        end;

        if i < KCRK.RecordCount then
        begin
          for k := i to KCRK.RecordCount do begin
            eclApp.Cells(Nhap,1):=formatdatetime('YYYY/MM/DD',KCRK.Fields[1].Value);
            eclApp.Cells(Nhap,3):=KCRK.Fields[0].Value;
            eclApp.Cells(Nhap,4):=KCRK.Fields[2].Value;
            stockqty := stockqty + KCRK.fieldbyname('qty').Value;
            eclApp.Cells(Nhap,6):=floattostr(stockqty);
            Xuat:=Xuat+1;
            Nhap:=Nhap+1;
            KCRK.Next;
          end;
        end;

        if (KCLL.RecordCount = 0) and (KCRK.RecordCount = 0) then begin
          eclApp.Cells(Xuat,6):=floattostr(stockqty);
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[5,1],eclApp.cells[Xuat,7]].borders[k].linestyle:=1;
          end;
        end
        else begin
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[5,1],eclApp.cells[Xuat-1,7]].borders[k].linestyle:=1;
          end;
        end;
//        eclApp.Visible:=True;

          eclApp.ActiveSheet.PrintOut;
          if not varIsEmpty(eclApp) then begin
            eclApp.DisplayAlerts := False;
            eclApp.Quit;
          end;

      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;

end;

procedure TAnyStockUltra.Button15Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if Query5.Active then
  begin
    if Query5.recordcount=0 then
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
    for   i:=1   to   Query5.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query5.fields[i-1].FieldName;
    end;
  Query5.First;
  j:=2;
  while   not  Query5.Eof   do
  begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   Query5.fieldcount   do
      begin
          eclApp.Cells(j,i+1):=Query5.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      Query5.Next;
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

procedure TAnyStockUltra.Button9Click(Sender: TObject);
begin
  Ds4.DataSet := Query5;
  DBGridEh3.Visible := True;
    Query5.Active := false;
    Query5.SQL.Clear;
    Query5.SQL.Add('select CLBH,KCBH,QTY,CKBH,(select MAX(userdate) from KCRKS where CLBH = KCLL.CLBH) as EntryDate,');
    Query5.SQL.Add('(select MAX(userdate) from KCLLS where CLBH = KCLL.CLBH) as DeliverDate,');
    Query5.SQL.Add('(select top 1 QTY from KCCLMONTH_HGBH where HGLB = ''NK'' and CLBH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH and CKBH = KCLL.CKBH) as ''NK'', ');
    Query5.SQL.Add('(select top 1 QTY from KCCLMONTH_HGBH where HGLB = ''KD'' and CLBH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH and CKBH = KCLL.CKBH) as ''KD'', ');
    Query5.SQL.Add('(select top 1 QTY from KCCLMONTH_HGBH where HGLB = ''HD'' and CLBH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH and CKBH = KCLL.CKBH) as ''HD'', ');
    Query5.SQL.Add('(select top 1 QTY from KCCLMONTH_HGBH where HGLB = ''TC'' and CLBH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH and CKBH = KCLL.CKBH) as ''TC'', ');
    Query5.SQL.Add('(select top 1 QTY from KCCLMONTH_HGBH where HGLB = ''GC'' and CLBH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH and CKBH = KCLL.CKBH) as ''GC'', ');
    Query5.SQL.Add('(select top 1 QTY from KCCLMONTH_HGBH where HGLB = ''XT'' and CLBH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH and CKBH = KCLL.CKBH) as ''XT'', ');
    Query5.SQL.Add('(select top 1 QTY from KCCLMONTH_HGBH where HGLB = ''ZZZZ'' and CLBH = KCLL.CLBH and KCYEAR = KCLL.KCYEAR and KCMONTH = KCLL.KCMONTH and CKBH = KCLL.CKBH) as ''ZZZZ'' ');
    Query5.SQL.Add('from (');
    Query5.SQL.Add('select KCCLMONTH.CLBH,KCZLS.KCBH,QTY,KCYEAR,KCMONTH,KCCLMONTH.CKBH from KCCLMONTH');
    if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
      Query5.SQL.Add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH = '''+CBX2.Text+'''')
    else if CBX2.text = 'ALL Without CBY' then
      Query5.sql.add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH in (''CDC'',''CDT'',''BYC'',''BYT'') and KCCLMONTH.CKBH = KCZLS.CKBH')
    else if CBX2.text = 'ALL' then
      Query5.sql.add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH in (Select CKBH from KCCK where GSBH = '''+main.Edit2.Text+''') and KCCLMONTH.CKBH = KCZLS.CKBH');
    Query5.SQL.Add('where 1=1 and QTY > 0');
    Query5.sql.add('and KCYear = '''+copy(formatdatetime('YYYY/MM/DD',startofthemonth(DTP4.Date)-1),1,4)+'''');
    Query5.sql.add('and KCMonth = '''+copy(formatdatetime('YYYY/MM/DD',startofthemonth(DTP4.Date)-1),6,2)+'''');
    Query5.sql.add('and KCCLMONTH.CLBH not in  (select CLBH from KCRKS where convert(smalldatetime,convert(varchar,USERDATE,111)) between ');
    Query5.sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date-180)+''''  );
    Query5.sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+''')'  );
    Query5.sql.add('and KCCLMONTH.CLBH not in  (select CLBH from KCLLS where convert(smalldatetime,convert(varchar,USERDATE,111)) between ');
    Query5.sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP2.date-180)+''''  );
    Query5.sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''')'  );

    if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
      Query5.sql.add('and KCCLMONTH.CKBH = '''+CBX2.Text+'''')
    else if CBX2.text = 'ALL Without CBY' then
      Query5.sql.add('and KCCLMONTH.CKBH in (''CDC'',''CDT'',''BYC'',''BYT'')')
    else if CBX2.text = 'ALL' then
      Query5.sql.add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH in (Select CKBH from KCCK where GSBH = '''+main.Edit2.Text+''')');
    if Edit2.Text <> '' then
      Query5.sql.add('and kczls.KCBH like '''+Edit11.Text+'%''');
    if Edit1.Text <> '' then
      Query5.sql.add('and KCCLMONTH.CLBH like '''+Edit7.Text+'%''');
    Query5.SQL.Add(')KCLL');
    Query5.SQL.Add('order by CLBH');
    //showmessage(Query3.SQL.Text);
    //funcObj.WriteErrorLog(Query5.sql.Text);
    Query5.Active := true;
end;

procedure TAnyStockUltra.Button11Click(Sender: TObject);
begin
  Panel4.Visible := not Panel4.Visible;
  Ds4.DataSet := Query4;
  DBGrideh3.Visible := false;
end;

procedure TAnyStockUltra.Button14Click(Sender: TObject);
begin
  Panel4.Visible := not Panel4.Visible;
end;

procedure TAnyStockUltra.Button13Click(Sender: TObject);
var PrinterIndex,i: Integer;
  PrinterName: string;
begin
  Panel4.Visible := not Panel4.Visible;
  if (PrintDialog1.Execute) then
  begin
    PrinterName := Printers.Printer.Printers[Printers.Printer.PrinterIndex];
    PrinterIndex := Printers.Printer.Printers.IndexOf(PrinterName);
  end else
    Exit;
  i := 0;
  if messagedlg('From start ?',mtconfirmation,[MBYes,MBNo],0)=mrYes then begin
    Query4.Active := false;
    Query4.SQL.Clear;
    Query4.SQL.Add('select * from (');
    Query4.SQL.Add('select KCCLMONTH.CLBH,KCZLS.KCBH from KCCLMONTH');
    if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
      Query4.SQL.Add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH = '''+CBX2.Text+'''')
    else if CBX2.text = 'ALL Without CBY' then
      Query4.sql.add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH in (''CDC'',''CDT'',''BYC'',''BYT'')');
    Query4.SQL.Add('where 1=1 and QTY > 0');
    Query4.sql.add('and KCYear = '''+copy(formatdatetime('YYYY/MM/DD',startofthemonth(DTP4.Date)-1),1,4)+'''');
    Query4.sql.add('and KCMonth = '''+copy(formatdatetime('YYYY/MM/DD',startofthemonth(DTP4.Date)-1),6,2)+'''');
    if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
      Query4.sql.add('and KCCLMONTH.CKBH = '''+CBX2.Text+'''')
    else if CBX2.text = 'ALL Without CBY' then
      Query4.sql.add('and KCCLMONTH.CKBH in (''CDC'',''CDT'',''BYC'',''BYT'')')
    else if CBX2.text = 'ALL' then
      Query4.sql.add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH in (Select CKBH from KCCK where GSBH = '''+main.Edit2.Text+''')');
    if Edit11.Text <> '' then
      Query4.sql.add('and kczls.KCBH like '''+Edit11.Text+'%''');
    if Edit7.Text <> '' then
      Query4.sql.add('and KCCLMONTH.CLBH like '''+Edit7.Text+'%''');
    Query4.SQL.Add('union  ');
    Query4.SQL.Add('select KCRKS.CLBH,KCZLS.KCBH from KCRKS  ');
    Query4.SQL.Add('left join KCRK on KCRK.RKNO = KCRKS.RKNO  ');
    if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
      Query4.SQL.Add('left join KCZLS on KCRKS.CLBH = KCZLS.CLBH and KCZLS.CKBH = '''+CBX2.Text+'''')
    else if CBX2.text = 'ALL Without CBY' then
      Query4.sql.add('left join KCZLS on KCRKS.CLBH = KCZLS.CLBH and KCZLS.CKBH in (''CDC'',''CDT'',''BYC'',''BYT'')');
    Query4.SQL.Add('where KCRKS.USERDATE between '''+formatdatetime('YYYY/MM/01',DTP4.Date)+''' and '''+formatdatetime('YYYY/MM/DD',Endofthemonth(DTP4.Date))+''' ');
    if (CBX2.Text <> 'ALL') and (CBX2.text <> 'ALL Without CBY') then
      Query4.sql.add('and KCRK.CKBH = '''+CBX2.Text+'''')
    else if CBX2.text = 'ALL Without CBY' then
      Query4.sql.add('and KCRK.CKBH in (''CDC'',''CDT'',''BYC'',''BYT'')')
    else if CBX2.text = 'ALL' then
      Query4.sql.add('left join KCZLS on KCCLMONTH.CLBH = KCZLS.CLBH and KCZLS.CKBH in (Select CKBH from KCCK where GSBH = '''+main.Edit2.Text+''')');
    if Edit11.Text <> '' then
      Query4.sql.add('and kczls.KCBH like '''+Edit11.Text+'%''');
    if Edit7.Text <> '' then
      Query4.sql.add('and KCRKS.CLBH like '''+Edit7.Text+'%''');
    Query4.sql.add(')KCLL');
    Query4.SQL.Add('group by CLBH,KCBH');
    Query4.SQL.Add('order by CLBH');
    //funcObj.WriteErrorLog(Query4.SQL.Text);
    Query4.Active := true;
  end else
    if not Query4.Active then begin
      showmessage('There is no data !');
      exit;
    end;
  while not Query4.Eof do
  begin
    Edit7.Text := Query4.Fields[0].AsString;
    Button12.Click;
    Query4.Next;
  end;

end;

procedure TAnyStockUltra.CheckBox3Click(Sender: TObject);
begin
  if IsHide_Warehouse_XT='Y' then
  begin
    IsHide_Warehouse_XT := 'N';
    DBGridEh2.Columns[11].Visible:=true;
    DBGridEh2.Columns[13].Visible:=true;
  end
  else begin
    IsHide_Warehouse_XT := 'Y';
    DBGridEh2.Columns[11].Visible:=false;
    DBGridEh2.Columns[13].Visible:=false;
  end;
end;

procedure TAnyStockUltra.Label22DblClick(Sender: TObject);
begin
  CheckBox3.Visible := not CheckBox3.Visible;
end;

end.
