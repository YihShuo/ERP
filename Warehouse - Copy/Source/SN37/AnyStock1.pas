unit AnyStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  ComCtrls,comobj, GridsEh, DBGridEh, EhlibBDE, iniFiles;

type
  TAnyStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Query1: TQuery;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    NN3: TMenuItem;
    DTP1: TDateTimePicker;
    Query1CLDH: TStringField;
    Query1LastRem: TFloatField;
    Query1RKQty: TFloatField;
    Query1LLQty: TFloatField;
    Query1KCBH: TStringField;
    CB1: TCheckBox;
    Query1Qty: TFloatField;
    Button3: TButton;
    Query1JGRK: TFloatField;
    Query1JGCK: TFloatField;
    Button4: TButton;
    CBX1: TComboBox;
    Query1CKBH: TStringField;
    Query1JGCKTemp: TCurrencyField;
    Query1LBBH: TStringField;
    Query1ZWPM: TStringField;
    Edit4: TEdit;
    Label7: TLabel;
    CB2: TCheckBox;
    CB3: TCheckBox;
    Query1zsdh: TStringField;
    Query1zsqm: TStringField;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    CNOEdit: TEdit;
    temp: TQuery;
    Button5: TButton;
    Label28: TLabel;
    KCBHEdit: TEdit;
    Button6: TButton;
    Label10: TLabel;
    NotInCKBHEdit: TEdit;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    DBGrid2: TDBGridEh;
    Query2: TQuery;
    Query2CKBH: TStringField;
    Query2CLBH: TStringField;
    Query2HGLB: TStringField;
    Query2SIZE: TStringField;
    Query2Qty: TCurrencyField;
    Query2LastRem: TCurrencyField;
    Query2RKQty: TCurrencyField;
    Query2LLQty: TCurrencyField;
    Query2JGRK: TCurrencyField;
    Query2JGCK: TCurrencyField;
    Query2zwpm: TStringField;
    Query2dwbh: TStringField;
    DS2: TDataSource;
    Label11: TLabel;
    SIZEEdit: TEdit;
    SizeCK: TCheckBox;
    TS3: TTabSheet;
    Query3: TQuery;
    Query3CKBH: TStringField;
    Query3CLBH: TStringField;
    Query3DepID: TStringField;
    Query3Qty: TFloatField;
    Query3DepName: TStringField;
    Query3DepMemo: TStringField;
    Query3YWPM: TStringField;
    Query3ZWPM: TStringField;
    Query3VNPrice: TCurrencyField;
    Query3USPrice: TFloatField;
    Query3VNACC: TFloatField;
    Query3USACC: TFloatField;
    DBGrid3: TDBGridEh;
    DS3: TDataSource;
    CheckBox1: TCheckBox;
    Query1QtyWH: TCurrencyField;
    Query1QtyAc: TCurrencyField;
    Query1Remark: TStringField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1CFMID1: TStringField;
    Query1CFMDate1: TDateTimeField;
    Query1QtyP: TCurrencyField;
    Query1UserID: TStringField;
    Query1UserID1: TStringField;
    Query1UserDate1: TDateTimeField;
    N1: TMenuItem;
    Copy1: TMenuItem;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Query1UserDate: TDateTimeField;
    Confirm1: TMenuItem;
    Query4: TQuery;
    UpdateSQL1: TUpdateSQL;
    btnUploadFile: TPanel;
    Query1HGLB: TStringField;
    Query1CNO2: TStringField;
    Query1LifecycleEndDate: TStringField;
    Button7: TButton;
    CB4: TCheckBox;
    CB5: TCheckBox;
    Query1KCMC: TStringField;
    Button8: TButton;
    Query1STT: TStringField;
    KCBHEdit1: TEdit;
    Label12: TLabel;
    HGLBEdit: TEdit;
    HGLBCBX: TComboBox;
    Button9: TButton;
    Button10: TButton;
    DTP2: TDateTimePicker;
    DTP3: TDateTimePicker;
    CheckBox2: TCheckBox;
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
    procedure NN1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Label3DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Copy1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Cancel1Click(Sender: TObject);
    procedure Confirm1Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure btnUploadFileClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Label12DblClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);

  private
    IsHide_Warehouse_XT:String;
    GSBH_SFL:String;
    //畐挡衡计
    WH_Decimal:String;
    WH_DiplayFormat:String;
    //羆叭
    WH_TXSQL:String;
    { Private declarations }
    procedure ReadIni();
    procedure ExportExcel(Query:TQuery);
    procedure Callbutton();
  public
    NgayKK,VTGC:string;

    { Public declarations }
    procedure ShowStock_TS1();
    procedure ShowStock_TS2();
    procedure ShowStock_TS3();

  end;

var
   AnyStock: TAnyStock;
   NDate:TDate;
   ayear,amonth,aamonth:string;

implementation

uses AnyStock_Print1, Entry_Print1, main1, MaterialTrace1, FunUnit,
     AnyStock_PrintC1, AnyStock_PrintIO1, AnyStockSize_Det1, AnyStockDep_Det_Det1,
  frmStockFile1, WareStock_Print_Yearly1, WarehouseKeyInSTT1,
  AnyStock_PrintCard1, AnyStock_PrintCard_DC1, AnyStockImport1,
  WareStock_Print_Monthly1;

{$R *.dfm}

procedure TAnyStock.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //畐计
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //留旅XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      //畐计
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //羆叭
      WH_TXSQL:=MyIni.ReadString('Warehouse','WarehouseN32_TXSQL',' (''VTXX'',''VTXY'',''VTXZ'') ');
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
  TCurrencyField(Query1.FieldByName('QtyWH')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('QtyAc')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('QtyP')).DisplayFormat:=WH_DiplayFormat;

  TCurrencyField(Query2.FieldByName('LastRem')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('LLQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('JGRK')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('JGCK')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TAnyStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin  
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');
    execsql;
  end;
  action:=cafree;
end;


procedure TAnyStock.ShowStock_TS1();
var year,month,day:word;
    KCRK,KCRKS,KCLL,KCLLS:string;
    KCCLMONTHSQL:String;
begin
  if CBX1.text='' then
  begin
    showmessage('Pls select  warehouse first.');
    abort;
  end;
  decodedate(DTP1.Date,Year,Month,Day);   //т畐闽计沮
  aamonth:=floattostr(month);
  if length(aamonth)=1 then
    aamonth:='0'+aamonth;
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
       sql.add('if object_id(''tempdb..#kcrkmain'') is not null    ');
       sql.add('    begin drop table #kcrkmain end                 ');
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
    sql.add('if object_id(''tempdb..#CLZLKC'') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');
    //sql.Add('select KCZLS.CKBH,KCZLS.CLBH as CLDH,LastKC.LBBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp into #CLZLKC  ');
    //20230825 show HGLB,CNO
    sql.Add(' select KCZLS.CKBH,KCZLS.CLBH as CLDH,sum(RunTemp.LastRem) as LastRem,sum(RunTemp.RKQty) as RKQty,sum(RunTemp.LLQty) as LLQty,sum(RunTemp.JGRK) as JGRK ');
    sql.Add('		    ,sum(RunTemp.JGCK) as JGCK,sum(RunTemp.JGCKTemp) as JGCKTemp,HGLB into #CLZLKC  ');
    sql.Add('from KCZLS with (nolock) ');
    //戳畐
    sql.add('Left join ( ');
    sql.Add('     select * from (');
    sql.add('     Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as LastRem ,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCCLMONTH.HGLB ');
    sql.add('     from KCCLMONTH_HG as KCCLMONTH   with (nolock) ');
    sql.add('     where KCCLMONTH.KCYEAR='''+ayear+''' ');
    sql.add('           and KCMONTH='''+amonth+'''');
    sql.add('           and KCCLMONTH.CLBH like '''+edit1.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCCLMONTH.HGLB<>''XT'' ');
    //场畐
    if CBX1.text<>'ALL' then
       sql.Add('        and KCCLMONTH.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('        and KCCLMONTH.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
       sql.add('        and KCCLMONTH.CKBH<>'''+NotInCKBHEdit.Text+'''');
    //
    sql.Add('      Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH ,KCCLMONTH.HGLB ');
    sql.add('      ) LastKC   ');
    //畐计秖
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.Add('     select KCRK.CKBH,KCRKS.CLBH,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCRK.HGLB ');
    sql.Add('				    from '+KCRKS+' ');
    sql.add('           left join '+KCRK+'  on KCRK.RKNO=KCRKS.RKNO ') ;
    {sql.add('           left join '+KCRK+'  on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );  }
    //30.09.2025
    if CheckBox2.Checked then
    begin
        sql.add(' where convert(smalldatetime,convert(varchar,KCRK.userdate,111))  between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
    end else
    begin
      sql.add(' where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
      sql.add('  '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
      sql.add('  and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    end;
    //==========

    sql.add('           and KCRKS.CLBH like '''+edit1.Text+'%'+'''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCRK.HGLB<>''XT'' ');
    //场畐
    if CBX1.text<>'ALL' then
       sql.Add('           and KCRK.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('           and KCRK.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
       sql.add('        and KCRK.CKBH<>'''+NotInCKBHEdit.Text+'''');
    sql.add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB) RK ');
    //畐计秖
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.add('     select KCLL.CKBH,KCLLS.CLBH,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCLLS.HGLB ');
    sql.add(' 				  from '+KCLLS+'  ');
    sql.add('           left join '+KCLL+'   on KCLL.LLNO=KCLLS.LLNO ')   ;
   { sql.add('           left join '+KCLL+'   on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );   }
    //30.09.2025
    if CheckBox2.Checked then
    begin
        sql.add(' where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))  between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
    end else
    begin
      sql.add(' where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=') ;
      sql.add('  '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
      sql.add('  and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    end;
    //===============
    sql.add('           and KCLLS.CLBH like '''+edit1.Text+'%'' ');
    sql.add('           and KCLL.CFMID<>''NO''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCLLS.HGLB<>''XT'' ');
    sql.add('           and KCLL.SCBH<>''JJJJJJJJJJ''');
    //场畐
    if CBX1.text<>'ALL' then
       sql.Add('           and KCLL.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('           and KCLL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
       sql.add('        and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    sql.add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) LL ');
    //畐计秖
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.add('     select JGZL.CKBH,JGZLS.CLBH,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK,0 as JGCKTemp,''GC'' as HGLB from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    {sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );       }
    //30.09.2025
    if CheckBox2.Checked then
    begin
        sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))  between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
    end else
    begin
      sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=') ;
      sql.add('  '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
      sql.add('  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    end;
    //=============
    sql.add('           and JGZLS.CLBH like '''+edit1.Text+'%'' ');
    sql.add('           and JGZL.CFMID1 <>''NO'' ');
    sql.add('           and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
    if CBX1.text<>'ALL' then
       sql.Add('           and JGZL.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('           and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
       sql.add('           and JGZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK ');
    //畐计秖
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.add('     select JGZL.CKBH,JGZLS.ZMLB,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK,0 as JGCKTemp ');
    sql.Add(' 					,''GC'' as HGLB from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
   { sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );   }
    //30.09.2025
    if CheckBox2.Checked then
    begin
        sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))  between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
    end else
    begin
      sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=') ;
      sql.add('  '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
      sql.add('  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    end;
    //====
    sql.add('                      and JGZL.CFMID1 <>''NO''');
    sql.add('                      and JGZLS.ZMLB='''+'ZZZZZZZZZZ'+'''');
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    if CBX1.text<>'ALL' then
       sql.Add('                   and JGZL.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('                   and JGZL.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
       sql.add('                   and JGZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
   { sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );     }
    //30.09.2025
    if CheckBox2.Checked then
    begin
        sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))  between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
    end else
    begin
      sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=') ;
      sql.add('  '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
      sql.add('  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    end;
    //=======
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    sql.add('           and JGZLS.ZMLB like '''+edit1.Text+'%''');
    sql.add('           and JGZL.CFMID1 <>''NO'' ');
    sql.add('           and JGZLS.ZMLB<>''ZZZZZZZZZZ'' ');
    if CBX1.text<>'ALL' then
       sql.Add('        and JGZL.CKBH='+''''+CBX1.Text+'''')
    else
       sql.Add('        and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
       sql.add('        and JGZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    sql.add('        group by JGZL.CKBH,JGZLS.ZMLB ');
    // KCLL.SCBH='JJJJJJJJJJ'
    sql.Add('        union all');
    sql.Add('        select KCLL.CKBH,KCLLS.CLBH,0 as LastRem,0 as RKQty,0 as LLQty ,0 as JGRK,sum(KCLLS.Qty) as JGCK,0 as JGCKTemp,KCLLS.HGLB ');
    sql.Add('				        from KCLLS ');
    sql.add('        left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    {sql.add('        where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('        '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );    }
    //30.09.2025
    if CheckBox2.Checked then
    begin
        sql.add(' where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))  between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
    end else
    begin
      sql.add(' where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=') ;
      sql.add('  '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
      sql.add('  and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    end;
    //=====
    sql.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('        and KCLL.SCBH = ''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''');
    sql.add('        and KCLLS.CLBH like '''+edit1.Text+'%'' ');
    if CBX1.text<>'ALL' then
      sql.Add('        and KCLL.CKBH='''+CBX1.Text+'''')
    else
      sql.Add('        and KCLL.CKBH in '+temp.fieldbyname('ckbh').Value+' ');
    if NotInCKBHEdit.Text<>'' then
      sql.add('        and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('         and KCLLS.HGLB<>''XT'' ');
    sql.add('         group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB');
    sql.add('        ) JGCK ');
    //虫秨临ゼㄓ计秖
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.add('     select JGZL.CKBH,JGZLS.ZMLB,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCKTemp ');
    sql.Add('           ,''GC'' as HGLB  from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where  JGZLS.ZMLB='''+'ZZZZZZZZZZ''');
    sql.Add('                      and JGZL.CKBH='''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where  JGZLS.ZMLB like '''+edit1.Text+'%''');
    sql.add('           and JGZL.CFMID1 =''NO''');
    sql.add('           and JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    if CBX1.text<>'ALL' then
       sql.Add('        and JGZL.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('        and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
      sql.add('          and JGZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    sql.add('           group by JGZL.CKBH,JGZLS.ZMLB ) JGCKTemp ');
    sql.Add(' ) RunTemp on KCZLS.CKBH = RunTemp.CKBH and KCZLS.CLBH =RunTemp.CLBH  ');
    sql.Add(' where RunTemp.LastRem<>0 or RunTemp.RKQty<>0 or RunTemp.LLQty<>0 or RunTemp.JGRK<>0 or RunTemp.JGCK <> 0 or RunTemp.JGCKTemp<>0 ');
    sql.Add(' group by KCZLS.CKBH,KCZLS.CLBH,RunTemp.HGLB ');
    //sql.add('where  not (LastKC.LastRem is null  and RK.RKQty is null and LL.LLQty is null and JGRK.JGRK is null and JGCK.JGCK is null and JGCKTemp.JGCK is null) ');

    //秨﹍SQL琩高 =================================================================================================
    {if CBX1.text<>'ALL' then
    begin
       sql.add('select clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,CLLBFLS.LBBH as LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,');
       sql.add('       isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0) as RKQty,isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0) as LLQty,');
       sql.add('       isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0) as JGRK,isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as JGCK,');
       sql.add('       isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0) as JGCKTemp,KCZLS.KCBH,KCZLS.CKBH,');
       sql.add('       isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as Qty,'); //20141027 э计材
       sql.Add('       #CLZLKC.HGLB,#CLZLKC.CNO, ');
       sql.Add('       Round(LastAC.QtyWH,'+WH_Decimal+') as QtyWH,Round(LastAc.QtyAc,'+WH_Decimal+') as QtyAc,Round(LastAc.QtyP,'+WH_Decimal+') as QtyP,LastAC.Remark, ');
       sql.Add('       LastAC.UserID,LastAC.UserDate,LastAC.CFMID,LastAC.CFMDate,LastAC.UserID1,LastAC.UserDate1,LastAC.CFMID1,LastAC.CFMDate1');
       sql.Add('       ,case when CLZL_Lifecycle.LifecycleEndDate is not null then CLZL_Lifecycle.LifecycleEndDate else ''NA'' end as LifecycleEndDate ');
    end else
    begin
       sql.add('select clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,CLLBFLS.LBBH  as LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,');
       sql.add('       sum(isnull(#CLZLKC.LastRem,0)) as LastRem,');
       sql.add('       sum(isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0)) as RKQty,');
       sql.add('       sum(isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0)) as LLQty,');
       sql.add('       sum(isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0)) as JGRK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as JGCK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0)) as JGCKTemp,');
       sql.add('       Max(KCBH) as KCBH,''ALL'' as CKBH,');
       sql.add('       sum(isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as Qty,'); //20141027 э计材
       sql.Add('       '''' as HGLB,'''' as CNO, ');
       sql.Add('       sum(isnull(Round(LastAC.QtyWH,'+WH_Decimal+'),0)) as QtyWH,sum(isnull(Round(LastAc.QtyAc,'+WH_Decimal+'),0)) as QtyAc,sum(Round(LastAc.QtyP,'+WH_Decimal+')) as QtyP, LastAc.Remark,');
       sql.Add('       LastAC.UserID,LastAC.UserDate,LastAC.CFMID,LastAC.CFMDate,LastAC.UserID1,LastAC.UserDate1,LastAC.CFMID1,LastAC.CFMDate1');
       sql.Add('       ,case when CLZL_Lifecycle.LifecycleEndDate is not null then CLZL_Lifecycle.LifecycleEndDate else ''NA'' end as LifecycleEndDate ');
    end; }
    if ((CBX1.text<>'ALL') and (CB4.Checked=False)) then
    begin
       sql.add('select clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,isnull(CLLBFLS.LBBH,''A'') as LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,');
       sql.add('       isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0) as RKQty,isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0) as LLQty,');
       sql.add('       isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0) as JGRK,isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as JGCK,');
       sql.add('       isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0) as JGCKTemp,KCZLS.KCBH,KCZLS.CKBH,');
       sql.add('       isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as Qty,'); //20141027 э计材
       sql.Add('       #CLZLKC.HGLB,');
       sql.Add('       case when #CLZLKC.HGLB=''NK'' then CLHG.HGBH when #CLZLKC.HGLB=''TC'' then CLTC.HGBH when #CLZLKC.HGLB=''HD'' then CLHD.HGBH when #CLZLKC.HGLB=''KD'' then CLKD.HGBH ');
       sql.Add('            when #CLZLKC.HGLB=''NK1'' then CLHG1.HGBH when #CLZLKC.HGLB=''TC1'' then CLTC1.HGBH when #CLZLKC.HGLB=''HD1'' then CLHD1.HGBH when #CLZLKC.HGLB=''KD1'' then CLKD1.HGBH  ');
       sql.Add('      			when #CLZLKC.HGLB=''NKNQ'' then CLNKNQ.HGBH  when #CLZLKC.HGLB=''NQ'' then CLNQ.HGBH end as CNO, ');
       sql.Add('       Round(LastAC.QtyWH,'+WH_Decimal+') as QtyWH,Round(LastAc.QtyAc,'+WH_Decimal+') as QtyAc,Round(LastAc.QtyP,'+WH_Decimal+') as QtyP,LastAC.Remark, ');
       sql.Add('       LastAC.UserID,LastAC.UserDate,LastAC.CFMID,LastAC.CFMDate,LastAC.UserID1,LastAC.UserDate1,LastAC.CFMID1,LastAC.CFMDate1');
       sql.Add('       ,case when CLZL_Lifecycle.LifecycleEndDate is not null then CLZL_Lifecycle.LifecycleEndDate else ''NA'' end as LifecycleEndDate ');
       sql.Add('       ,case when ((KCZLS.DFL is not null) or (KCZLS.DFL<>'''')) then KCZLS.DFL else KCZL.KCMC end as KCMC,Mat.STT');
       //23.09.2025 query them so luong vat tu lock
       //03.10.2025 bo qty material lock
       //sql.Add('       ,KCZL_QtyLock.Qty as Qty_KCZL_QtyLock');
    end else if  ((CBX1.text<>'ALL') and (CB4.Checked=True)) then
    begin
       sql.add('select clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,isnull(CLLBFLS.LBBH,''A'')  as LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,');
       sql.add('       sum(isnull(#CLZLKC.LastRem,0)) as LastRem,');
       sql.add('       sum(isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0)) as RKQty,');
       sql.add('       sum(isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0)) as LLQty,');
       sql.add('       sum(isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0)) as JGRK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as JGCK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0)) as JGCKTemp,');
       sql.add('       KCZLS.KCBH,KCZLS.CKBH,');
       sql.add('       sum(isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as Qty,'); //20141027 э计材
       sql.Add('       '''' as HGLB,'''' as CNO, ');
       sql.Add('       sum(isnull(Round(LastAC.QtyWH,'+WH_Decimal+'),0)) as QtyWH,sum(isnull(Round(LastAc.QtyAc,'+WH_Decimal+'),0)) as QtyAc,sum(Round(LastAc.QtyP,'+WH_Decimal+')) as QtyP, LastAc.Remark,');
       sql.Add('       LastAC.UserID,LastAC.UserDate,LastAC.CFMID,LastAC.CFMDate,LastAC.UserID1,LastAC.UserDate1,LastAC.CFMID1,LastAC.CFMDate1');
       sql.Add('       ,case when CLZL_Lifecycle.LifecycleEndDate is not null then CLZL_Lifecycle.LifecycleEndDate else ''NA'' end as LifecycleEndDate ');
       sql.Add('       ,case when ((KCZLS.DFL is not null) or (KCZLS.DFL<>'''')) then KCZLS.DFL else KCZL.KCMC end as KCMC,Mat.STT');
       //23.09.2025 query them so luong vat tu lock
       //03.10.2025 bo qty material lock
       //sql.Add('       ,KCZL_QtyLock.Qty as Qty_KCZL_QtyLock');
    end else
    begin
       sql.add('select clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,isnull(CLLBFLS.LBBH,''A'')  as LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,');
       sql.add('       sum(isnull(#CLZLKC.LastRem,0)) as LastRem,');
       sql.add('       sum(isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0)) as RKQty,');
       sql.add('       sum(isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0)) as LLQty,');
       sql.add('       sum(isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0)) as JGRK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as JGCK,');
       sql.add('       sum(isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0)) as JGCKTemp,');
       sql.add('       Max(KCZLS.KCBH) as KCBH,''ALL'' as CKBH,');
       sql.add('       sum(isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as Qty,'); //20141027 э计材
       sql.Add('       '''' as HGLB,'''' as CNO, ');
       sql.Add('       sum(isnull(Round(LastAC.QtyWH,'+WH_Decimal+'),0)) as QtyWH,sum(isnull(Round(LastAc.QtyAc,'+WH_Decimal+'),0)) as QtyAc,sum(Round(LastAc.QtyP,'+WH_Decimal+')) as QtyP, LastAc.Remark,');
       sql.Add('       LastAC.UserID,LastAC.UserDate,LastAC.CFMID,LastAC.CFMDate,LastAC.UserID1,LastAC.UserDate1,LastAC.CFMID1,LastAC.CFMDate1');
       sql.Add('       ,case when CLZL_Lifecycle.LifecycleEndDate is not null then CLZL_Lifecycle.LifecycleEndDate else ''NA'' end as LifecycleEndDate ');
       sql.Add('       ,case when ((KCZLS.DFL is not null) or (KCZLS.DFL<>'''')) then KCZLS.DFL else KCZL.KCMC end as KCMC,Mat.STT');
       //23.09.2025 query them so luong vat tu lock
       //03.10.2025 bo qty material lock
       //sql.Add('       ,KCZL_QtyLock.Qty as Qty_KCZL_QtyLock');
    end;
    sql.add('from #CLZLKC ');
    sql.add('left join CLZL on CLZL.CLDH=#CLZLKC.CLDH');
    sql.add('left join zszl on zszl.zsdh=clzl.zsdh ');
    sql.add('left join  KCZLS on KCZLS.CLBH=#CLZLKC.CLDH  and KCZLS.CKBH=#CLZLKC.CKBH ');
    sql.Add('left join KCZL on KCZL.KCBH=KCZLS.KCBH and KCZLS.CKBH=KCZL.CKBH');
    //LBBH
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='''+main.Edit2.Text+''' ');
    sql.Add('left join CLHG on CLHG.CLBH=#CLZLKC.CLDH  and #CLZLKC.HGLB=''NK'' ');
    sql.Add('left join CLTC on CLTC.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''TC''  ');
    sql.Add('left join CLHD on CLHD.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''HD'' ');
    sql.Add('left join CLKD on CLKD.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''KD'' and #CLZLKC.CKBH in (''CDC'',''CDT'',''VC1'') ');
    sql.Add('left join CLHG1 on CLHG1.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''NK1'' ');
    sql.Add('left join CLTC1 on CLTC1.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''TC1'' ');
    sql.Add('left join CLHD1 on CLHD1.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''HD1'' ');
    sql.Add('left join CLKD1 on CLKD1.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''KD1'' and #CLZLKC.CKBH in (''CDC'',''CDT'',''VC1'') ');
    sql.Add('left join CLNQ on CLNQ.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''NQ'' ');
    sql.Add('left join CLNKNQ on CLNKNQ.CLBH=#CLZLKC.CLDH and #CLZLKC.HGLB =''NKNQ'' ');
    //23.09.2025 query them so luong vat tu lock
    //03.10.2025 bo qty material lock
    //sql.Add('left join KCZL_QtyLock on KCZL_QtyLock.CLBH = #CLZLKC.CLDH and KCZL_QtyLock.CKBH = #CLZLKC.CKBH');
    //sql.add('left join CLHG on CLHG.CLBH=#CLZLKC.CLDH  ');
    //20230805 add QtyWH,QTyAc
    sql.Add('Left join ( Select KCCLMONTH_AC.CKBH as CKBH,KCCLMONTH_AC.CLBH as CLBH,KCCLMONTH_AC.HGLB,KCCLMONTH_AC.CNO,QtyWH,QtyAc,QtyP,Remark, ');
    sql.Add('                   UserID,UserDate,CFMID,CFMDate,UserID1,UserDate1,CFMID1,CFMDate1 ');
    sql.Add('            from KCCLMONTH_AC   with (nolock) ');
    sql.add('            where KCCLMONTH_AC.KCYEAR='''+ayear+''' ');
    sql.add('            and KCCLMONTH_AC.KCMONTH='''+aamonth+'''');
    sql.add('            and KCCLMONTH_AC.CLBH like '''+edit1.Text+'%'' ');
    {if IsHide_Warehouse_XT='Y' then
    sql.add('            and KCCLMONTHAC.HGLB<>''XT'' ');  }
    //场畐
    if CBX1.text<>'ALL' then
       sql.Add('         and KCCLMONTH_AC.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('         and KCCLMONTH_AC.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');
    if NotInCKBHEdit.Text<>'' then
       sql.add('         and KCCLMONTH_AC.CKBH<>'''+NotInCKBHEdit.Text+'''');
    sql.Add('            Group by  KCCLMONTH_AC.CKBH,KCCLMONTH_AC.CLBH,KCCLMONTH_AC.HGLB,KCCLMONTH_AC.CNO,QtyWH,QtyAc,QtyP,Remark,UserID,UserDate,CFMID,CFMDate,UserID1,UserDate1,CFMID1,CFMDate1 ');
    sql.Add('         ) LastAC  on LastAC.CKBH=#CLZLKC.CKBH and LastAC.CLBH=#CLZLKC.CLDH and LastAC.HGLB=#CLZLKC.HGLB --and LastAC.CNO=#CLZLKC.CNO   ');
    sql.Add('           and LastAC.CNO=case when #CLZLKC.HGLB=''NK'' then CLHG.HGBH when #CLZLKC.HGLB=''TC'' then CLTC.HGBH when #CLZLKC.HGLB=''HD'' then CLHD.HGBH when #CLZLKC.HGLB=''KD'' then CLKD.HGBH  ');
    sql.Add('           			when #CLZLKC.HGLB=''NK1'' then CLHG1.HGBH when #CLZLKC.HGLB=''TC1'' then CLTC1.HGBH when #CLZLKC.HGLB=''HD1'' then CLHD1.HGBH when #CLZLKC.HGLB=''KD1'' then CLKD1.HGBH  ');
    sql.Add('           			when #CLZLKC.HGLB=''NKNQ'' then CLNKNQ.HGBH  when #CLZLKC.HGLB=''NQ'' then CLNQ.HGBH end  ');
    sql.Add('left join CLZL_Lifecycle on CLZL_Lifecycle.CLBH = #CLZLKC.CLDH ');
    sql.Add('left join KCCLMONTH_Mat_Order Mat on  Mat.CKBH=#CLZLKC.CKBH and Mat.CLBH=#CLZLKC.CLDH  and Mat.KCYEAR='''+ayear+'''  and Mat.KCMONTH='''+aamonth+''' ');
    sql.add('where');
    sql.add(' not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null ');
    sql.add('               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null and #CLZLKC.JGCKTemp is null) ');
    if CBX1.text<>'ALL' then
       sql.Add(' and KCZLS.CKBH='''+CBX1.Text+''' ');
    sql.add('and #CLZLKC.CLDH like '''+edit1.Text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit2.text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit3.text+'%''');
    if edit5.text<>'' then
       sql.add('and CLZL.ZSDH like ''%'+edit5.text+'%''');
    if edit6.text<>'' then
       sql.add('and zszl.zsqm like ''%'+edit6.text+'%''');
    if CNOEdit.Text<>'' then
       sql.add('and #CLZLKC.CNO like ''%'+CNOEdit.Text+'%'' ');
    {if KCBHEdit.Text<>'' then
       sql.add('and KCZLS.KCBH like '''+KCBHEdit.Text+'%'' '); }
    if ((KCBHEdit.Text<>'') and (KCBHEdit1.Text='')) then
     SQL.Add('   and KCZLS.KCBH = '''+KCBHEdit.Text+''' ')
    else if ((KCBHEdit.Text='') and (KCBHEdit1.Text<>'')) then
     SQL.Add('   and KCZLS.KCBH = '''+KCBHEdit1.Text+''' ')
    else if ((KCBHEdit.Text<>'') and (KCBHEdit1.Text<>'')) then
     SQL.Add('   and (KCZLS.KCBH>= '''+KCBHEdit.Text+''' and KCZLS.KCBH<= '''+KCBHEdit1.Text+''')   ');
    if HGLBEdit.Text<> '' then
      sql.Add(' and #CLZLKC.HGLB='''+HGLBEdit.Text+''' ');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('            and #CLZLKC.HGLB '+HGLBCBX.Text );
    if CB1.checked then
    begin
      sql.add('and (isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0))<0  ');
    end;
    if CB5.checked then
    begin
      sql.add('and (isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0))>0  ');
    end;
    //畐禬筁90ぱ琌⊿Τㄏノ
    if CB2.Checked then
    begin
      sql.Add('and #CLZLKC.CLDH not in (select KCRKS.CLBH from '+KCRK+','+KCRKS+' where KCRK.CKBH='''+CBX1.text+''' and KCRK.RKNO=KCRKS.RKNO    Group by  KCRKS.CLBH  having DATEDIFF(day ,Max(KCRK.CFMDate),GetDate())<='+edit4.Text+')');
      sql.Add('and #CLZLKC.CLDH not in (select KCLLS.CLBH from '+KCLL+','+KCLLS+' where KCLL.CKBH='''+CBX1.text+''' and KCLL.LLNO=KCLLS.LLNO    Group by  KCLLS.CLBH  having DATEDIFF(day, Max(KCLL.CFMDate),Getdate())<='+edit4.Text+')');
      sql.Add('and #CLZLKC.CLDH not in (select JGZLS.CLBH from JGZL,JGZLS where JGZL.CKBH='''+CBX1.text+''' and JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB=''ZZZZZZZZZZ''   Group by  JGZLS.CLBH  having DATEDIFF(day, Max(JGZL.CFMDate1),Getdate())<='+edit4.Text+')');
      sql.Add('and #CLZLKC.CLDH not in (select JGZLS.ZMLB from JGZL,JGZLS where JGZL.CKBH='''+CBX1.text+''' and JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB<>''ZZZZZZZZZZ''   Group by  JGZLS.ZMLB  having DATEDIFF(day, Max(JGZL.CFMDate1),Getdate())<='+edit4.Text+')');
    end;
    //
    if CBX1.text='ALL' then
    begin
       sql.add('Group by clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,CLLBFLS.LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,LastAC.QtyWH,LastAC.QtyAc,LastAC.Remark,LastAC.CFMID,LastAC.CFMDate,LastAC.CFMID1,LastAC.CFMDate1,LastAC.UserID,LastAC.UserDate,LastAC.UserID1,LastAC.UserDate1 ');
       sql.add('        ,CLZL_Lifecycle.LifecycleEndDate ');
       sql.Add('        ,case when ((KCZLS.DFL is not null) or (KCZLS.DFL<>'''')) then KCZLS.DFL else KCZL.KCMC end,Mat.STT');
    end;
    if  ((CBX1.text<>'ALL') and (CB4.Checked=True)) then
    begin
      sql.Add(' Group by clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,CLLBFLS.LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CKBH,LastAC.Remark, LastAC.UserID,LastAC.UserDate,LastAC.CFMID,LastAC.CFMDate,LastAC.UserID1,LastAC.UserDate1,LastAC.CFMID1,LastAC.CFMDate1 ');
      sql.Add('	        ,CLZL_Lifecycle.LifecycleEndDate');
      sql.Add('         ,case when ((KCZLS.DFL is not null) or (KCZLS.DFL<>'''')) then KCZLS.DFL else KCZL.KCMC end,Mat.STT');
    end;

    //===2025.06.23
    if ((main.Edit2.Text='CDC') and (CBX1.text='ALL') and (NotInCKBHEdit.Text='CBY')) or (main.Edit2.Text='VC1') then      //2025.09.11 them VC1
      SQL.Add('order by KCZLS.KCBH,#CLZLKC.CLDH ')
    else
      sql.add('order by Mat.STT,#CLZLKC.CLDH  ');
    //ShowMessage(sql.Text);
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //Callbutton();     chua su dung

end;

procedure TAnyStock.Callbutton();
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select Position from Busers_Position  where ckbh= '''+CBX1.text+''' and userid='''+main.Edit1.Text+''' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if temp.RecordCount>0 then
  begin
    if Pos('NVK',temp.FieldByName('Position').AsString )>0 then
    begin
      if query1.FieldByName('UserDate').IsNull then
      begin
        Copy1.Enabled:=true;
      end else
      begin
        Copy1.Enabled:=false;
        if query1.FieldByName('CFMID').AsString='' then
        begin
          Modify1.Enabled:=true;
          DBgrid1.Columns[17].ReadOnly:=false;
          DBgrid1.Columns[18].ReadOnly:=true;
        end;
      end;
    end;
    //
    if temp.FieldByName('Position').AsString='Account' then
    begin
      if query1.FieldByName('CFMID1').AsString='' then
      begin
        Copy1.Enabled:=true;
        Modify1.Enabled:=true;
        DBgrid1.Columns[17].ReadOnly:=true;
        DBgrid1.Columns[18].ReadOnly:=false;
      end;
    end;
    //
    if Pos('CQK',temp.FieldByName('Position').AsString )>0 then
    begin
      if ((not query1.FieldByName('UserDate').IsNull) and (query1.FieldByName('CFMID').AsString='')) then
      begin
        Confirm1.Enabled:=true;
      end else
      begin
        Confirm1.Enabled:=false;
      end;
    end;
    //
    if temp.FieldByName('Position').AsString='CheifAccount' then
    begin
      if ((query1.FieldByName('CFMID').AsString<>'') and (query1.FieldByName('CFMID1').AsString='')) then
      begin
        Confirm1.Enabled:=true;
      end else
      begin
        Confirm1.Enabled:=false;
      end;
    end;
    //
  end;
end;

procedure TAnyStock.ShowStock_TS2();
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
  if ((CBX1.text <> 'VTXX') and (CBX1.text <> 'VTXY') and (CBX1.text <> 'VTXZ') and (CBX1.text <> 'TBXX') and (CBX1.text <> 'TBXY') and (CBX1.text <> 'TBXZ')
       and (CBX1.text <> 'TBXW') and (CBX1.text <> 'HBXX') and (CBX1.text <> 'HBXY') and (CBX1.text <> 'HBXZ') and (CBX1.text <> 'HBXW')) then
  begin
    showmessage('Size Page didnt have VTXW warehouse.');
    abort;
  end;
  decodedate(DTP1.Date,Year,Month,Day);   //т畐闽计沮
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  SIZE_KCZL.*,SIZE_KCCLMonth.LastRem,SIZE_KCRK.RKQty,SIZE_KCLL.LLQty,SIZE_JGZL.JGRK,SIZE_JGCK.JGCK,CLZL.zwpm,CLZL.dwbh from (');
    SQL.Add('Select CKBH,CLBH,HGLB,SIZE,SUM(LastRem) as Qty ');
    SQL.Add('from (');
    SQL.Add('Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.SIZE,KCCLMONTH.Qty as LastRem,''1'' as SB ');
    SQL.Add('From KCCLMONTH_HG_SIZE KCCLMONTH  ');
    SQL.Add('where KCCLMONTH.KCYEAR='''+ayear+'''  ');
    SQL.Add('      and KCCLMONTH.CLBH like '''+Edit1.Text+'%'' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCCLMONTH.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('	     and KCCLMONTH.KCMONTH='''+amonth+''' and KCCLMONTH.CKBH='''+CBX1.Text+'''');
    SQL.Add('union all ');
    SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,''ZZZZZZ'') as SIZE,sum(IsNull(KCRKSS.Qty,KCRKS.Qty)) as RKQty,''2'' as SB  ');
    SQL.Add('from KCRKS');
    SQL.Add('left join KCRKSS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS.CLBH and KCRKS.CGBH=KCRKSS.CGBH and KCRKS.RKSB=KCRKSS.RKSB ');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	     and KCRK.CKBH='''+CBX1.Text+''' ');
    SQL.Add('	     and KCRKS.CLBH like '''+Edit1.Text+'%'' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCRK.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,''ZZZZZZ'') ');
    SQL.Add('union all   ');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'') as SIZE	 ,-1*sum(IsNull(KCLLSS.Qty,KCLLS.Qty))  as LLQty,''3'' as SB  ');
    SQL.Add('from KCLLS ');
    SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
    SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	 and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and KCLL.CKBH='''+CBX1.Text+''' ');
    SQL.Add('	 and KCLLS.CLBH like '''+Edit1.Text+'%'' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCLLS.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,CLZL.lycc,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'')');
    SQL.Add('union all ');
    SQL.Add('Select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZZZ'' as SIZE,sum(IsNull(JGZLSS.Qty,JGZLS.Qty))as JGRK,''4'' as SB  ');
    SQL.Add('from JGZLS');
    SQL.Add('left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH');
    SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	  and JGZL.CFMID1<>''NO''');
    SQL.Add('	  and JGZLS.CLBH like '''+Edit1.Text+'%'' ');
    SQL.Add('	  and JGZLS.ZMLB=''ZZZZZZZZZZ''  and JGZL.CKBH='''+CBX1.Text+'''');
    //if ((HGLBEdit.Text<>'') and (HGLBEdit.Text<>'GC')) then
    //SQL.add('   and  1=2 ');
    SQL.Add('Group by JGZL.CKBH,JGZLS.CLBH ');
    SQL.Add('union all ');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'') as SIZE,-1*sum(IsNull(KCLLSS.Qty,KCLLS.Qty))  as JGCK,''5'' as SB ');
    SQL.Add('from KCLLS ');
    SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
    SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	    and KCLLS.CLBH like '''+Edit1.Text+'%''  ');
    SQL.Add('	 and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and KCLL.CKBH='''+CBX1.Text+''' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCLLS.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,CLZL.lycc,IsNull(KCLLSS.SIZE,''ZZZZZZ'')');
    SQL.Add(') KCLLMonth ');
    SQL.Add('Group by CKBH,CLBH,HGLB,SIZE ) SIZE_KCZL');
    SQL.Add('left join (');
    SQL.Add('Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.SIZE,KCCLMONTH.Qty as LastRem,''1'' as SB ');
    SQL.Add('From KCCLMONTH_HG_SIZE KCCLMONTH  ');
    SQL.Add('where KCCLMONTH.KCYEAR='''+ayear+'''  ');
    SQL.Add('      and KCCLMONTH.CLBH like '''+Edit1.Text+'%'' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCCLMONTH.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('	     and KCCLMONTH.KCMONTH='''+amonth+''' and KCCLMONTH.CKBH='''+CBX1.Text+'''');
    SQL.Add(') SIZE_KCCLMonth on SIZE_KCCLMonth.CKBH=SIZE_KCZL.CKBH and SIZE_KCCLMonth.CLBH=SIZE_KCZL.CLBH and SIZE_KCCLMonth.HGLB=SIZE_KCZL.HGLB and SIZE_KCCLMonth.SIZE=SIZE_KCZL.SIZE');
    SQL.Add('left join (');
    SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,''ZZZZZZ'') as SIZE,sum(IsNull(KCRKSS.Qty,KCRKS.Qty)) as RKQty,''2'' as SB  ');
    SQL.Add('from KCRKS');
    SQL.Add('left join KCRKSS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS.CLBH and KCRKS.CGBH=KCRKSS.CGBH and KCRKS.RKSB=KCRKSS.RKSB ');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	     and KCRK.CKBH='''+CBX1.Text+''' ');
    SQL.Add('	     and KCRKS.CLBH like '''+Edit1.Text+'%'' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCRK.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,''ZZZZZZ'') ');
    SQL.Add(') SIZE_KCRK on SIZE_KCRK.CKBH=SIZE_KCZL.CKBH and SIZE_KCRK.CLBH=SIZE_KCZL.CLBH and SIZE_KCRK.HGLB=SIZE_KCZL.HGLB and SIZE_KCRK.SIZE=SIZE_KCZL.SIZE');
    SQL.Add('left join (');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'')  as SIZE	 ,sum(IsNull(KCLLSS.Qty,KCLLS.Qty))  as LLQty,''3'' as SB  ');
    SQL.Add('from KCLLS ');
    SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
    SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	 and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and KCLL.CKBH='''+CBX1.Text+''' ');
    SQL.Add('	 and KCLLS.CLBH like '''+Edit1.Text+'%'' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCLLS.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,CLZL.lycc,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'')');
    SQL.Add(') SIZE_KCLL on SIZE_KCLL.CKBH=SIZE_KCZL.CKBH and SIZE_KCLL.CLBH=SIZE_KCZL.CLBH and SIZE_KCLL.HGLB=SIZE_KCZL.HGLB and SIZE_KCLL.SIZE=SIZE_KCZL.SIZE');
    SQL.Add('left join (');
    SQL.Add('Select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZZZ'' as SIZE,sum(IsNull(JGZLSS.Qty,JGZLS.Qty))as JGRK,''4'' as SB  ');
    SQL.Add('from JGZLS');
    SQL.Add('left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH');
    SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	  and JGZL.CFMID1<>''NO''');
    SQL.Add('	  and JGZLS.CLBH like '''+Edit1.Text+'%'' ');
    SQL.Add('	  and JGZLS.ZMLB=''ZZZZZZZZZZ''  and JGZL.CKBH='''+CBX1.Text+'''');
    //if ((HGLBEdit.Text<>'') and (HGLBEdit.Text<>'GC')) then
    //SQL.add('   and  1=2 ');
    SQL.Add('Group by JGZL.CKBH,JGZLS.CLBH');
    SQL.Add(') SIZE_JGZL on SIZE_JGZL.CKBH=SIZE_KCZL.CKBH and SIZE_JGZL.CLBH=SIZE_KCZL.CLBH and SIZE_JGZL.HGLB=SIZE_KCZL.HGLB and SIZE_JGZL.SIZE=SIZE_KCZL.SIZE');
    SQL.Add('left join (');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'')  as SIZE,sum(IsNull(KCLLSS.Qty,KCLLS.Qty))  as JGCK,''5'' as SB ');
    SQL.Add('from KCLLS ');
    SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
    SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('	    and KCLLS.CLBH like '''+Edit1.Text+'%''  ');
    SQL.Add('	 and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and KCLL.CKBH='''+CBX1.Text+''' ');
    //if HGLBEdit.Text<>'' then
    //SQL.Add('      and KCLLS.HGLB='''+HGLBEdit.Text+''' ');
    SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,CLZL.lycc,IsNull(KCLLSS.SIZE,''ZZZZZZ'')');
    SQL.Add(') SIZE_JGCK on SIZE_JGCK.CKBH=SIZE_KCZL.CKBH and SIZE_JGCK.CLBH=SIZE_KCZL.CLBH and SIZE_JGCK.HGLB=SIZE_KCZL.HGLB and SIZE_JGCK.SIZE=SIZE_KCZL.SIZE');
    SQL.Add('Left join CLZL on CLZL.CLDH=SIZE_KCZL.CLBH ');
    SQL.Add('where 1=1 ');
    if SizeCK.Checked=true then
    SQL.Add('and  SIZE_KCZL.SIZE<>''ZZZZZZ'' ');
    if CB1.Checked=true then
    SQL.Add('and SIZE_KCZL.Qty<0 ');
	SQL.Add('Order by SIZE_KCZL.CLBH,SIZE_KCZL.SIZE');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

//羆叭场舱
procedure TAnyStock.ShowStock_TS3();
var year,month,day:word;
    KCRK,KCRKS,KCLL,KCLLS:string;
    KCCLMONTHSQL:String;
begin
  if CBX1.text='' then
  begin
    showmessage('Pls select  warehouse first.');
    abort;
  end;
  if ((CBX1.text <> 'VTXX') and (CBX1.text <> 'VTXY') and (CBX1.text <> 'VTXZ') and (CBX1.text <> 'TBXX') and (CBX1.text <> 'TBXY') and (CBX1.text <> 'TBXZ')
       and (CBX1.text <> 'TBXW') and (CBX1.text <> 'HBXX') and (CBX1.text <> 'HBXY') and (CBX1.text <> 'HBXZ') and (CBX1.text <> 'HBXW')) then
  begin
    showmessage('Total Department didnt have VTXW warehouse.');
    abort;
  end;
  decodedate(DTP1.Date,Year,Month,Day);   //т畐闽计沮
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  with Query3 do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('Select KCCLMONTH_Dep.*,CLZL.YWPM,CLZL.ZWPM,CGBJS.VNPrice,CGBJS.USPrice,CGBJS.VNPrice*KCCLMONTH_Dep.Qty as VNACC,CGBJS.USPrice*KCCLMONTH_Dep.Qty as USACC from ( ');
    SQL.Add('Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Sum(KCCLMONTH_Dep.Qty) as Qty,IsNull(Bdepartment.DepName,''Stock'') as DepName,IsNull(Bdepartment.DepMemo,''畐'') as DepMemo ');
    SQL.Add('from (');
    SQL.Add('Select CKBH, CLBH, Case when Qty<0 then ''ZZZZZZZZZZ'' else DepID end as DepID, Qty from (	 ');
    SQL.Add('Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from (');
    SQL.Add('Select CKBH,CLBH,DepID,Qty,''1'' as SB');
    SQL.Add('from KCCLMONTH_BDepartment');
    SQL.Add('where KCYEAR='''+ayear+''' and KCMONTH='''+amonth+'''');
    //场畐
    if CBX1.text<>'ALL' then
    SQL.Add('        and KCCLMONTH_BDepartment.CKBH='''+CBX1.Text+''' ')
    else
    SQL.Add('        and KCCLMONTH_BDepartment.CKBH in '+WH_TXSQL);
    //
    SQL.Add('	       and KCCLMONTH_BDepartment.CLBH like '''+edit1.Text+'%''  ');
    SQL.Add('Union all');
    SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Qty,''2'' as SB');
    SQL.Add('from KCRK');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO and KCRKSS.CLBH=KCRKS.CLBH and KCRKSS.CGBH=KCRKS.CGBH and KCRKSS.RKSB=KCRKS.RKSB');
    SQL.Add('left join SGDH on SGDH.SGNO=KCRKSS.CGBH');
    SQL.Add('left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE and CGZLSS.Stage=''TVu'' ');
    SQL.Add('where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    //场畐
    if CBX1.text<>'ALL' then
    SQL.Add('        and KCRK.CKBH='''+CBX1.Text+''' ')
    else
    SQL.Add('        and KCRK.CKBH in '+WH_TXSQL);
    //
    SQL.Add('	        and KCRKS.CLBH is not null and KCRKS.CLBH like '''+edit1.Text+'%''  ');
    SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) ');
    SQL.Add('Union all');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty ,''3'' as SB');
    SQL.Add('from KCLL');
    SQL.Add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('where  KCLL.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    //场畐
    if CBX1.text<>'ALL' then
    SQL.Add('        and KCLL.CKBH='''+CBX1.Text+''' ')
    else
    SQL.Add('        and KCLL.CKBH in '+WH_TXSQL);
    //
    SQL.Add('	       and KCLLS.CLBH is not null and KCLLS.Qty >0 and KCLLS.CLBH like '''+edit1.Text+'%'' ');
    SQL.Add('Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   ');
    //秸笆虫
    SQL.Add('Union all ');
    SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*Sum(KCLL_Dep_DBS.Qty) as Qty,''4'' as SB'); //锣
    SQL.Add('from KCLL_Dep_DB');
    SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
    SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    //场畐
    if CBX1.text<>'ALL' then
    SQL.Add('        and KCLL_Dep_DB.CKBH='''+CBX1.Text+''' ')
    else
    SQL.Add('        and KCLL_Dep_DB.CKBH in '+WH_TXSQL);
    //
    SQL.Add('	       and KCLL_Dep_DBS.CLBH is not null and KCLL_Dep_DBS.CLBH like '''+edit1.Text+'%''  ');
    SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  ');
    SQL.Add('Union all ');
    SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  as DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,''5'' as SB');  //锣
    SQL.Add('from KCLL_Dep_DB');
    SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
    SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    //场畐
    if CBX1.text<>'ALL' then
    SQL.Add('        and KCLL_Dep_DB.CKBH='''+CBX1.Text+''' ')
    else
    SQL.Add('        and KCLL_Dep_DB.CKBH in '+WH_TXSQL);
    //
    SQL.Add('	       and KCLL_Dep_DBS.CLBH is not null and KCLL_Dep_DBS.CLBH like '''+edit1.Text+'%''  ') ;
    SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  )  KCCLMONTH_Dep');
    //
    SQL.Add('Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep ) KCCLMONTH_Dep  ');
    SQL.Add('Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID');
    SQL.Add('Group by KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Bdepartment.DepName,Bdepartment.DepMemo ) KCCLMONTH_Dep ');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCCLMONTH_Dep.CLBH');
    SQL.Add('left join (');
    SQL.Add('    Select CLBH, USPrice ,VNPrice,rn  from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,');
    SQL.Add('	ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
    SQL.Add('	from CGBJ');
    SQL.Add('	left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
    SQL.Add('	where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null and (CGBJS.CLBH like ''X%'' or CGBJS.CLBH like ''Y%'' or CGBJS.CLBH like ''Z%'') ');
    SQL.Add('       and CGBJS.CLBH like '''+Edit1.Text+'%'' ');
    SQL.Add('	) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=KCCLMONTH_Dep.CLBH');
    SQL.Add('where 1=1 ');
    sql.add('and CLZL.YWPM like ''%'+edit2.text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit3.text+'%''');
    SQL.Add('order by  KCCLMONTH_Dep.DepID,KCCLMONTH_Dep.CLBH ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;

end;
//
procedure TAnyStock.Button1Click(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then ShowStock_TS1();
  if PC1.ActivePage=TS2 then ShowStock_TS2();
  if PC1.ActivePage=TS3 then ShowStock_TS3();
end;

procedure TAnyStock.Query1CalcFields(DataSet: TDataSet);
begin
  with query1 do
  begin
    fieldbyname('Qty').Value:=fieldbyname('LastRem').Value+fieldbyname('RKQty').Value-fieldbyname('LLQty').Value;
  end;

end;

procedure TAnyStock.FormCreate(Sender: TObject);
begin
  with temp do
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
    while not eof do
    begin
        CBX1.items.add(fieldbyname('CKBH').AsString);
        Next;
    end;
    CBX1.items.add('ALL');
    CBX1.itemindex:=0;
    active:=false;
  end;
  with temp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  //
  if main.Edit2.Text='CDC' then
    DBGrid1.FieldColumns['LifecycleEndDate'].Visible:=True;
  if main.Edit2.Text='VA12' then
    Button9.Visible:=true;
  if main.Edit2.Text='VC2' then
    Button9.Visible:=true;
  //
  DTP1.Date:=NDate;
  DTP2.Date:=NDate -3;
  DTP3.Date:=NDate;
  ReadIni();
  IsHide_Warehouse_XT := 'Y';
  PC1.ActivePage:=TS1;
end;

//块Excel
procedure TAnyStock.ExportExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
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
    for i:=1 to  Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
    Query.First;
    j:=2;
    while  not Query.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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
procedure TAnyStock.Button2Click(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then ExportExcel(Query1);
  if PC1.ActivePage=TS2 then ExportExcel(Query2);
  if PC1.ActivePage=TS3 then ExportExcel(Query3);
end;

procedure TAnyStock.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TAnyStock.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TAnyStock.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    CBX1.SetFocus;
end;

procedure TAnyStock.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TAnyStock.Button3Click(Sender: TObject);
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

procedure TAnyStock.Button4Click(Sender: TObject);
var KCYEAR,KCMONTH:string;
    year,month,day:word;
begin
  //氨ノ
  decodedate(DTP1.Date,Year,Month,Day);   //т畐闽计沮
  KCyear:=floattostr(year);
  KCmonth:=floattostr(month);
  if length(KCmonth)=1 then
    KCmonth:='0'+KCmonth;

  if ((edit1.text<>'') or (edit2.text<>'')  or (edit3.text<>'')) then
  begin
    showmessage('Pls select all material!');
    abort;
  end; 
  if (CBX1.text='') then
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
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct YN from  KCCLMONTH ');
    sql.add('where KCYEAR='+''''+KCyear+'''');
    sql.add('and KCMONTH='+''''+KCmonth+'''');
    sql.add('and exists(select KCCK.* from KCCK ');
    sql.add('           where KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('             and KCCK.GSBH='+''''+main.Edit2.text+''''+')');
    sql.add('and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
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
    sql.add('and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');


    sql.add('insert KCCLMONTH ');
    sql.add('select  '+''''+KCyear+''''+' as KCYEAR,'+''''+KCmonth+''''+' as KCMONTH,');
    sql.add(''''+CBX1.text+''''+',#CLZLKC.CLDH as CLBH, ');
    sql.add('isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0) as Qty,');
    sql.add('null as USPRice,0 as CWHL,0 as VNPrice,null as VNACC,CLLBFLS.LBBH,convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
    sql.add(''''+main.edit1.text+''''+' as USERID,'+''''+'0'+''''+' as YN');
    sql.add('from #CLZLKC ');
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=#CLZLKC.CLDH and CLLBFLS.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('where  isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0)>=0.01');
    sql.add('and not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null)');
    execsql;
    showmessage('Succeed.');
  end;

end;

procedure TAnyStock.NN1Click(Sender: TObject);
begin
  MaterialTrace:=TMaterialTrace.create(self);
  MaterialTrace.edit1.Text:=query1.fieldbyname('CLDH').AsString;
  MaterialTrace.CBX1.Text:=query1.fieldbyname('CKBH').AsString;
  MaterialTrace.button1click(nil);
  MaterialTrace.show;
end;

procedure TAnyStock.FormDestroy(Sender: TObject);
begin
  AnyStock:=nil;
end;

procedure TAnyStock.NN2Click(Sender: TObject);
begin
  button2click(nil);
end;

procedure TAnyStock.Button5Click(Sender: TObject);
begin
  if KCBHEdit.Text='' then
  begin
    showmessage('Pls key in Shelves');
    abort;
  end;

  if ((main.Edit2.Text='CDC') or (main.Edit2.Text='VC1' )) then
  begin
     AnyStock_PrintCard_DC:=TAnyStock_PrintCard_DC.create(self);
     AnyStock_PrintCard_DC.quickrep1.prepare;
     AnyStock_PrintCard_DC.QRCompositeReport1.Preview;
     AnyStock_PrintCard_DC.quickrep1.preview;
     AnyStock_PrintCard_DC.free;
  end else
  begin
    if  Messagedlg(Pchar('Ngay kiem ke hien thi theo ngay hien tai hay ngay StockDate ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
       NgayKK:='Y' ;
    end else
    begin
       NgayKK:='N' ;
    end;
    if ((CBX1.Text='VA12') or (CBX1.Text='VC2')) then
    begin
    if  Messagedlg(Pchar('Vat tu binh thuong hay vat tu gia cong ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
      begin
         VTGC:='N' ;
      end else
      begin
         VTGC:='Y' ;
      end;
    end;
    AnyStock_PrintCard:=TAnyStock_PrintCard.create(self);
    AnyStock_PrintCard.quickrep1.prepare;
    if CBX1.Text='VTXW' then
    begin
      if  Messagedlg(Pchar('Hang lenh su dung hay hang tong vu ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
      begin
        AnyStock_PrintCard.QRCGBH.Enabled:=false;
        AnyStock_PrintCard.QRAritcle.Enabled:=false;
        AnyStock_PrintCard.QRLabel_CGBH.Caption:='HANG LENH';
      end else
      begin
        AnyStock_PrintCard.QRCGBH.Enabled:=false;
        AnyStock_PrintCard.QRAritcle.Enabled:=false;
        AnyStock_PrintCard.QRLabel_CGBH.Caption:='';
      end;
    end else
    begin
      AnyStock_PrintCard.QRLabel_CGBH.Enabled:=false;
      AnyStock_PrintCard.QRCGBH.Enabled:=true;
      AnyStock_PrintCard.QRAritcle.Enabled:=true;
    end;
    AnyStock_PrintCard.QRCompositeReport1.Preview;
    AnyStock_PrintCard.quickrep1.preview;
    AnyStock_PrintCard.free;
  end;
end;

procedure TAnyStock.Button6Click(Sender: TObject);
begin
  AnyStock_PrintIO:=TAnyStock_PrintIO.create(self);
  AnyStock_PrintIO.quickrep1.prepare;
  AnyStock_PrintIO.quickrep1.preview;
  AnyStock_PrintIO.free;
end;

procedure TAnyStock.DBGrid2EditButtonClick(Sender: TObject);
begin
  //
  if  DBGrid2.SelectedField.FieldName='RKQty' then
  begin
    AnyStockSize_Det:=TAnyStockSize_Det.Create(self);
    AnyStockSize_Det.ShowKCRKS_RKQty();
    AnyStockSize_Det.ShowModal();
  end;
  if  DBGrid2.SelectedField.FieldName='LLQty' then
  begin
    AnyStockSize_Det:=TAnyStockSize_Det.Create(self);
    AnyStockSize_Det.ShowKCLLS_LLQty();
    AnyStockSize_Det.ShowModal();
  end;
  if  DBGrid2.SelectedField.FieldName='JGRK' then
  begin
    AnyStockSize_Det:=TAnyStockSize_Det.Create(self);
    AnyStockSize_Det.ShowJGZLS_JGRK();
    AnyStockSize_Det.ShowModal();
  end;
  if  DBGrid2.SelectedField.FieldName='JGCK' then
  begin
    AnyStockSize_Det:=TAnyStockSize_Det.Create(self);
    AnyStockSize_Det.ShowKCLLS_JGCK();
    AnyStockSize_Det.ShowModal();
  end;
  //
end;

procedure TAnyStock.DBGrid3EditButtonClick(Sender: TObject);
begin
  if  DBGrid3.SelectedField.FieldName='Qty' then
  begin
    AnyStockDep_Det_Det:=TAnyStockDep_Det_Det.Create(self);
    AnyStockDep_Det_Det.ShowQty_Dep();
    AnyStockDep_Det_Det.ShowModal();
  end;
  //
end;

procedure TAnyStock.CheckBox1Click(Sender: TObject);
begin
  if IsHide_Warehouse_XT='Y' then
    IsHide_Warehouse_XT := 'N'
  else
    IsHide_Warehouse_XT := 'Y';
end;

procedure TAnyStock.Label3DblClick(Sender: TObject);
begin
  CheckBox1.Visible := not CheckBox1.Visible;
end;

procedure TAnyStock.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((not query1.FieldByName('QtyAC').IsNull) and (query1.FieldByName('QtyWH').value <> query1.FieldByName('QtyAc').value)) then
  begin
    DBGrid1.canvas.font.color := clred;
    DBGrid1.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;
end;

procedure TAnyStock.Copy1Click(Sender: TObject);
var i:integer;
    year,month,day:word;
    KCYEAR,KCMONTH:string;
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select Position from Busers_Position  where ckbh= '''+CBX1.text+''' and userid='''+main.Edit1.Text+''' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  decodedate(DTP1.Date,Year,Month,Day);
  KCYEAR:=floattostr(year);
  KCMONTH:=floattostr(month);
  if length(KCMONTH)=1 then
    KCMONTH:='0'+KCMONTH;
  if messagedlg('Do you want to copy quantiy ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      if pos('NVK',temp.fieldbyname('Position').Asstring)>0 then
      begin
        Query1.First;
        for i:=0 to query1.RecordCount-1 do
        begin
           with query4 do
           begin
              active:=false;
              sql.Clear;
              sql.Add('INSERT INTO KCCLMONTH_AC(KCYEAR, KCMONTH, CKBH, CLBH, HGLB,CNO, QtyWH, UserID,UserDate)');
              sql.Add('VALUES('''+KCYEAR+''','''+KCMONTH+''','''+CBX1.Text+''','''+Query1.fieldbyname('CLDH').AsString+''','''+Query1.fieldbyname('HGLB').AsString+''','''+Query1.fieldbyname('CNO').AsString+''','''+Query1.fieldbyname('Qty').AsString+''','''+main.Edit1.Text+''',getdate())');
              //funcobj.WriteErrorLog(sql.Text);
              ExecSQL;
           end;
          query1.Next;
        end;
      end;
      // Check NVKT
      if temp.FieldByName('Position').AsString='Account' then
      begin
        Query1.First;
        for i:=0 to query1.RecordCount-1 do
        begin
          with query4 do
          begin
            sql.Clear;
            sql.Add('Update KCCLMONTH_AC');
            sql.Add('Set QtyAc='''+Query1.fieldbyname('Qty').AsString+''', ');
            sql.Add('     UserID1='''+main.Edit1.Text+''',Userdate1=getdate()' ) ;
            sql.Add('Where KCYEAR='''+KCYEAR+''' and KCMONTH='''+KCMONTH+''' and CKBH='''+query1.fieldbyname('CKBH').Asstring+''' and CLBH='''+query1.fieldbyname('CLDH').Asstring+'''  and HGLB='''+query1.fieldbyname('HGLB').Asstring+'''  and CNO='''+query1.fieldbyname('CNO').Asstring+''' ');
            ExecSQL;
          end;
          query1.Next;
        end;
      end;

    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
  end;
  showmessage('Success');
  button1.Click;
end;

procedure TAnyStock.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TAnyStock.Save1Click(Sender: TObject);
var i:integer;
    year,month,day:word;
    KCYEAR,KCMONTH:string;
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select Position from Busers_Position  where ckbh= '''+CBX1.text+''' and userid='''+main.Edit1.Text+''' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  decodedate(DTP1.Date,Year,Month,Day);
  KCYEAR:=floattostr(year);
  KCMONTH:=floattostr(month);
  if length(KCMONTH)=1 then
    KCMONTH:='0'+KCMONTH;
  try
      Query1.first;
      for i:=1 to Query1.RecordCount do
      begin
        case Query1.updatestatus of
          usmodified:
          begin
            // Check NVK
            if pos('NVK',temp.fieldbyname('Position').Asstring)>0 then
            begin
              if Query1.FieldByName('CFMID').AsString='' then
              begin
                if Query1.fieldbyname('QtyWH').OldValue<>Query1.fieldbyname('QtyWH').Value then
                begin
                   with query4 do
                   begin
                      sql.Clear;
                      sql.Add('Update KCCLMONTH_AC');
                      sql.Add('Set QtyWH='''+Query1.fieldbyname('QtyWH').AsString+''', ');
                      sql.Add('     UserID='''+main.Edit1.Text+''',Userdate=getdate()' ) ;
                      sql.Add('Where KCYEAR='''+KCYEAR+''' and KCMONTH='''+KCMONTH+''' and CKBH='''+query1.fieldbyname('CKBH').Asstring+''' and CLBH='''+query1.fieldbyname('CLDH').Asstring+''' and HGLB='''+query1.fieldbyname('HGLB').Asstring+''' and CNO='''+query1.fieldbyname('CNO').Asstring+'''');
                      ExecSQL;
                   end;
                end;
              end else
              begin
                ShowMessage('Already Confirm. Can not update. ');
                abort;
              end;
            end;
            // Check NVKT
            if temp.FieldByName('Position').AsString='Account' then
            begin
              if Query1.FieldByName('CFMID1').AsString='' then
              begin
                if not  Query1.FieldByName('QtyAc').IsNull then
                begin
                   with query4 do
                   begin
                      sql.Clear;
                      sql.Add('Update KCCLMONTH_AC');
                      sql.Add('Set QtyAc='''+Query1.fieldbyname('QtyAc').AsString+''', Remark='''+Query1.fieldbyname('Remark').AsString+''', ');
                      sql.Add('     UserID1='''+main.Edit1.Text+''',Userdate1=getdate()' ) ;
                      sql.Add('Where KCYEAR='''+KCYEAR+''' and KCMONTH='''+KCMONTH+''' and CKBH='''+query1.fieldbyname('CKBH').Asstring+''' and CLBH='''+query1.fieldbyname('CLDH').Asstring+''' and HGLB='''+query1.fieldbyname('HGLB').Asstring+''' and CNO='''+query1.fieldbyname('CNO').Asstring+''' ');
                      ExecSQL;
                   end;
                end;
              end else
              begin
                ShowMessage('Already Confirm. Can not update. ');
                abort;
              end;
            end;
            //
          end;
        end;
        Query1.Next;
      end;
      with Query1 do
      begin
        Active:=false;
        requestlive:=false;
        cachedupdates:=false;
        Active:=true;
      end;
   except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
   end;
   showmessage('Success');
   button1.Click;
end;

procedure TAnyStock.Query1AfterOpen(DataSet: TDataSet);
begin
  Callbutton();
end;

procedure TAnyStock.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    requestlive:=false;
    cachedupdates:=false;
    Active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TAnyStock.Confirm1Click(Sender: TObject);
var i:integer;
    year,month,day:word;
    KCYEAR,KCMONTH:string;
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select Position from Busers_Position  where ckbh= '''+CBX1.text+''' and userid='''+main.Edit1.Text+''' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  decodedate(DTP1.Date,Year,Month,Day);
  KCYEAR:=floattostr(year);
  KCMONTH:=floattostr(month);
  if length(KCMONTH)=1 then
    KCMONTH:='0'+KCMONTH;
  if messagedlg('Are you sure to confirm ???',mtwarning,[mbyes,mbNo],0) = mryes then
  begin
    try
         // Check CQK
      if pos('CQK',temp.fieldbyname('Position').Asstring)>0 then
      begin
        if Query1.FieldByName('CFMID').AsString='' then
        begin
           with query4 do
           begin
              sql.Clear;
              sql.Add('Update KCCLMONTHAC');
              sql.Add('Set CFMID='''+main.Edit1.Text+''',CFMDate=getdate() ');
              sql.Add('Where KCYEAR='''+KCYEAR+''' and KCMONTH='''+KCMONTH+''' and CKBH='''+query1.fieldbyname('CKBH').Asstring+'''  ');
              ExecSQL;
           end;
        end else
        begin
          ShowMessage('Already Confirm.');
          abort;
        end;
      end;
      // Check CQKT
      if temp.FieldByName('Position').AsString='CheifAccount' then
      begin
        if Query1.FieldByName('CFMID1').AsString='' then
        begin
           with query4 do
           begin
              sql.Clear;
              sql.Add('Update KCCLMONTHAC');
              sql.Add('Set CFMID1='''+main.Edit1.Text+''',CFMDate1=getdate() ');
              sql.Add('Where KCYEAR='''+KCYEAR+''' and KCMONTH='''+KCMONTH+''' and CKBH='''+query1.fieldbyname('CKBH').Asstring+'''  ');
              ExecSQL;
           end;
        end else
        begin
          ShowMessage('Already Confirm.');
          abort;
        end;
      end;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
   end;
   showmessage('Success');
   button1.Click;
end;

procedure TAnyStock.Query1AfterScroll(DataSet: TDataSet);
begin
  Callbutton();
end;

procedure TAnyStock.btnUploadFileClick(Sender: TObject);
var KCYear,KCMonth: String;
    Year, Month, Day: Word;
begin
  DecodeDate(DTP1.Date,Year,Month,Day);
  KCYear:=FloatToStr(year);
  KCMonth:=FloatToStr(month);
  if Length(KCMonth)=1 then
    KCMonth:='0'+KCMonth;
  frmStockFile1.KCYear:=KCYear;
  frmStockFile1.KCMonth:=KCMonth;
  if frmStockFile=nil then
    frmStockFile:=TfrmStockFile.Create(Self);
  frmStockFile.Show;
end;

procedure TAnyStock.Button7Click(Sender: TObject);
begin
  if KCBHEdit.Text='' then
  begin
    showmessage('Pls key in Shelves');
    abort;
  end;
  if  Messagedlg(Pchar('Ngay kiem ke hien thi theo ngay hien tai hay ngay StockDate ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     NgayKK:='Y' ;
  end else
  begin
     NgayKK:='N' ;
  end;
  if ((main.Edit2.Text='CDC') or (main.Edit2.Text='VC1' )) then
  begin
     if  Messagedlg(Pchar('So luong tong hay so luong nhap kho?'),mtInformation,[mbNo,mbYes],0)=mrYes then
      begin
        WareStock_Print_Yearly:=TWareStock_Print_Yearly.Create(self);
        WareStock_Print_Yearly.Quickrep1.prepare;
        WareStock_Print_Yearly.QRDBText3.DataField:='Qty';
        WareStock_Print_Yearly.PageN.caption:=inttostr(WareStock_Print_Yearly.quickrep1.QRPrinter.pagecount);
        WareStock_Print_Yearly.Quickrep1.preview;
        WareStock_Print_Yearly.Free;
      end else
      begin
        WareStock_Print_Yearly:=TWareStock_Print_Yearly.Create(self);
        WareStock_Print_Yearly.Quickrep1.prepare;
        WareStock_Print_Yearly.QRDBText3.DataField:='RKQty';
        WareStock_Print_Yearly.PageN.caption:=inttostr(WareStock_Print_Yearly.quickrep1.QRPrinter.pagecount);
        WareStock_Print_Yearly.Quickrep1.preview;
        WareStock_Print_Yearly.Free;
      end;
  end else begin
    WareStock_Print_Yearly:=TWareStock_Print_Yearly.Create(self);
    WareStock_Print_Yearly.Quickrep1.prepare;
    WareStock_Print_Yearly.PageN.caption:=inttostr(WareStock_Print_Yearly.quickrep1.QRPrinter.pagecount);
    WareStock_Print_Yearly.Quickrep1.preview;
    WareStock_Print_Yearly.Free;
  end;
end;



procedure TAnyStock.Button8Click(Sender: TObject);
begin
  WarehouseKeyInSTT:=TWarehouseKeyInSTT.Create(self);
  WarehouseKeyInSTT.Show;
end;

procedure TAnyStock.Label12DblClick(Sender: TObject);
begin
  HGLBCBX.Visible:=true;
end;

procedure TAnyStock.Button9Click(Sender: TObject);
begin
  AnyStockImport:=TAnyStockImport.Create(self);
  AnyStockImport.Show;
end;

procedure TAnyStock.Button10Click(Sender: TObject);
begin
  if KCBHEdit.Text='' then
  begin
    showmessage('Pls key in Shelves');
    abort;
  end;
  //05.11.2025
  if  Messagedlg(Pchar('Ngay kiem ke hien thi theo ngay hien tai hay ngay StockDate ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     NgayKK:='Y' ;
  end else
  begin
     NgayKK:='N' ;
  end;
  //=========
  if ((main.Edit2.Text='CDC') or (main.Edit2.Text='VC1' )) then
  begin
     if  Messagedlg(Pchar('So luong tong hay so luong nhap kho?'),mtInformation,[mbNo,mbYes],0)=mrYes then
      begin
        WareStock_Print_Monthly:=TWareStock_Print_Monthly.Create(self);
        WareStock_Print_Monthly.Quickrep1.prepare;
        WareStock_Print_Monthly.QRDBText3.DataField:='Qty';
        WareStock_Print_Monthly.PageN.caption:=inttostr(WareStock_Print_Monthly.quickrep1.QRPrinter.pagecount);
        WareStock_Print_Monthly.Quickrep1.preview;
        WareStock_Print_Monthly.Free;
      end else
      begin
        WareStock_Print_Monthly:=TWareStock_Print_Monthly.Create(self);
        WareStock_Print_Monthly.Quickrep1.prepare;
        WareStock_Print_Monthly.QRDBText3.DataField:='RKQty';
        WareStock_Print_Monthly.PageN.caption:=inttostr(WareStock_Print_Monthly.quickrep1.QRPrinter.pagecount);
        WareStock_Print_Monthly.Quickrep1.preview;
        WareStock_Print_Monthly.Free;
      end;
  end else begin
  WareStock_Print_Monthly:=TWareStock_Print_Monthly.Create(self);
  WareStock_Print_Monthly.Quickrep1.prepare;
  WareStock_Print_Monthly.PageN.caption:=inttostr(WareStock_Print_Monthly.quickrep1.QRPrinter.pagecount);
  WareStock_Print_Monthly.Quickrep1.preview;
  WareStock_Print_Monthly.Free;
  end;
end;

end.
