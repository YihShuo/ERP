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
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    DataSource1: TDataSource;
    query2: TQuery;
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
    Query1CNO: TStringField;
    Label9: TLabel;
    CNOEdit: TEdit;
    temp: TQuery;
    Button5: TButton;
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
  private
    IsHide_Warehouse_XT:String;
    GSBH_SFL:String;
    //畐挡衡计
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
   AnyStock: TAnyStock;
   NDate:TDate;
   ayear,amonth:string;

implementation

uses AnyStock_Print1, Entry_Print1, main1, MaterialTrace1, FunUnit,
  AnyStock_PrintC1;

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

end;

procedure TAnyStock.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TAnyStock.Button1Click(Sender: TObject);
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
  decodedate(DTP1.Date,Year,Month,Day);   //т畐闽计沮
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
    //戳畐
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
       sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from '+KCRKS+' ');    //畐计秖
    end;
    if CBX1.text='ALL' then
    begin
       sql.Add('           and KCCLMONTH.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');
       sql.Add('   Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH ');
       sql.add('     ) LastKC on LastKC.CLBH=CLZL.CLDH group by clzl.zsdh,CLZL.CLDH,CLZL.DWBH,LastKC.LBBH )clzl ');
       sql.add('left join (select ''ALL'' as CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from '+KCRKS+' ');     //畐计秖
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
    //畐计秖
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
    //畐计秖
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
    //畐计秖
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
    //虫秨临ゼㄓ计秖
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
    //秨﹍SQL琩高
    if CBX1.text<>'ALL' then
    begin
       sql.add('select CLHG.HGBH,clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,IsNull(#CLZLKC.LBBH,CLLBFLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,');
       sql.add('       isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0) as RKQty,isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0) as LLQty,');
       sql.add('       isnull(round(#CLZLKC.JGRK,'+WH_Decimal+'),0) as JGRK,isnull(round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as JGCK,');
       sql.add('       isnull(round(#CLZLKC.JGCKTemp,'+WH_Decimal+'),0) as JGCKTemp,KCZLS.KCBH,KCZLS.CKBH,');
       sql.add('       isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0) as Qty'); //20141027 э计材
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
       sql.add('       sum(isnull(Round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.LLQty,'+WH_Decimal+'),0)+isnull(Round(#CLZLKC.JGRK,'+WH_Decimal+'),0)-isnull(Round(#CLZLKC.JGCK,'+WH_Decimal+'),0)) as Qty'); //20141027 э计材
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
       sql.add('group by clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH');
    sql.add('order by #CLZLKC.CLDH  ');
    funcObj.WriteErrorLog(sql.Text);
    //memo1.text:=sql.text;
    active:=true;
  end;
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
    while not eof do
    begin
        CBX1.items.add(fieldbyname('CKBH').AsString);
        Next;
    end;
    CBX1.items.add('ALL');
    CBX1.itemindex:=0;
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
  ReadIni();
end;

procedure TAnyStock.Button2Click(Sender: TObject);
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
   { //Ωㄏノノ传奔
    sql.add('where  (exists(select KCLLS.CLBH from KCLLS ');
    sql.add('              left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('              where KCLLS.CLBH=#CLZLKC.CLDH');
    sql.add('                and KCLL.CKBH='+''''+CBX1.Text+''''+')');
    sql.add('    or exists(select KCRKS.CLBH from KCRKS ');
    sql.add('              left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('              where KCRKS.CLBH=#CLZLKC.CLDH');
    sql.add('                and KCRK.CKBH='+''''+CBX1.Text+''''+')');
    sql.add('    or exists(select KCCLMONTH.CLBH from KCCLMONTH ');
    sql.add('              where KCCLMONTH.CLBH=#CLZLKC.CLDH ');
    sql.add('                and KCCLMONTH.CKBH='+''''+CBX1.Text+''''+')');
    sql.add('    or exists(select JGZLS.CLBH from JGZLS ');
    sql.add('              left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('              where JGZLS.CLBH=#CLZLKC.CLDH');
    sql.add('                and JGZL.CKBH='+''''+CBX1.Text+''''+')');
    sql.add('    or exists(select JGZLS.ZMLB from JGZLS ');
    sql.add('              left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('              where JGZLS.ZMLB=#CLZLKC.CLDH');
    sql.add('                and JGZL.CKBH='+''''+CBX1.Text+''''+')  )');    }

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
  AnyStock_PrintC:=TAnyStock_PrintC.create(self);
  AnyStock_PrintC.quickrep1.prepare;
  AnyStock_PrintC.PageN.caption:=inttostr(AnyStock_PrintC.quickrep1.QRPrinter.pagecount);
  AnyStock_PrintC.SDate.Caption:=formatdatetime('YYYY/MM/DD',DTP1.date);
  AnyStock_PrintC.QRCompositeReport1.Preview;
  AnyStock_PrintC.quickrep1.preview;
  AnyStock_PrintC.free;
end;

end.
