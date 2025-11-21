unit AnyStock2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  ComCtrls,comobj, GridsEh, DBGridEh, EhlibBDE, DBGridEhImpExp, ShellAPI;

type
  TAnyStockF = class(TForm)
    Panel1: TPanel;
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
    TmpQuery: TQuery;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    BaseDate: TDateTimePicker;
    Query1CLDH: TStringField;
    Query1CLLB: TStringField;
    Query1LastRem: TFloatField;
    Query1RKQty: TFloatField;
    Query1LLQty: TFloatField;
    Query1KCBH: TStringField;
    Query1Qty: TFloatField;
    Query1JGRK: TFloatField;
    Query1JGCK: TFloatField;
    CBX1: TComboBox;
    Query1CKBH: TStringField;
    Query1JGCKTemp: TCurrencyField;
    Query1STOCKQty: TCurrencyField;
    Label7: TLabel;
    Edit4: TEdit;
    Button5: TButton;
    CB1: TCheckBox;
    Query1QCQty: TCurrencyField;
    Query1UnLL: TCurrencyField;
    CB3: TCheckBox;
    CB4: TCheckBox;
    Query1UnRkQty: TCurrencyField;
    Chk_Stock: TCheckBox;
    Query1UnJG: TCurrencyField;
    Query1Remain: TCurrencyField;
    Remain1: TMenuItem;
    N1: TMenuItem;
    Query1ZWPM: TStringField;
    CB5: TCheckBox;
    Query1UnRkJG: TCurrencyField;
    CB7: TCheckBox;
    CB6: TCheckBox;
    Query1UnBURkQty: TCurrencyField;
    chk_shp: TCheckBox;
    dtp3: TDateTimePicker;
    Label9: TLabel;
    dtp4: TDateTimePicker;
    Label1: TLabel;
    EditRY1: TEdit;
    Label16: TLabel;
    EditRY2: TEdit;
    Label8: TLabel;
    BuyNoEdit: TEdit;
    CB8: TCheckBox;
    CB9: TCheckBox;
    Query1ERPClass: TStringField;
    Query1LBBH: TStringField;
    UpdateSQL1: TUpdateSQL;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UseClass1: TMenuItem;
    Label6: TLabel;
    LocCombo: TComboBox;
    Query1CQDH: TStringField;
    SaveDialog1: TSaveDialog;
    Query1SupplierID: TStringField;
    Query1SupplierName: TStringField;
    LockQtyMaterial1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure NN1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Chk_StockClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
    procedure Query1PARTChange(Sender: TField);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BaseDateChange(Sender: TObject);
    procedure CB9Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure UseClass1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LockQtyMaterial1Click(Sender: TObject);
  private
    LastMon:string; //上個月(Month)
    LastYear:string;//上個月(Year)
    STLastMonDate:string; //上個月初
    EDLastMonDate:string; //上個月底
    //
    LastMon2:string;//上上一個月(Month) 月結累積加總計算
    LastYear2:string;//上上一個月(Year)
    //
    STDate:string; //當月月初
    EDDate:string; //今天
    { Private declarations }
    procedure GetDateParam();
  public
    { Public declarations }
  end;

var
   AnyStockF: TAnyStockF;
   NDate:TDate;    
   ayear,amonth:string;
   flag :integer;

implementation

uses Entry_Print1, main1, MaterialTrace1,
  AnyStock_Print21, RYTemp1, AnyStock2_Print1, UnBURK1, FunUnit,
  AnyStock_LockQtyMaterial1;

{$R *.dfm}

procedure TAnyStockF.FormClose(Sender: TObject; var Action: TCloseAction);
begin  
  with TmpQuery do
  begin
      active:=false;
      sql.Clear;
      sql.add('  if object_id('+''''+'tempdb..#RemainKC'+''''+') is not null  ');
      sql.add('begin   drop table #RemainKC end   ');
      execsql;
  end;
  action:=cafree;
end;

//[QUERY] ======================================================================
procedure TAnyStockF.Button1Click(Sender: TObject);
var 
   year,month,day:word;
begin

  if CBX1.text='' then
  begin
    showmessage('Pls select  warehouse first.');
    abort;
  end;
  //找庫存相關的數據
  decodedate(BaseDate.Date,Year,Month,Day);  //今天日期:例2011.10.28
  incAMonth(Year,Month,Day,-1);          //指定日期倒推一個月:2011.9.28
  ayear:=floattostr(year);               //2011年
  amonth:=floattostr(month);             //9月
  if length(amonth)=1 then
    amonth:='0'+amonth;
  
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#RemainKC'+''''+') is not null  ');
    sql.add('begin   drop table #RemainKC end   ');

    sql.Add('select CLZL.CLDH,');
    sql.add('       CLZL.CLLB,');
    sql.add('       CLZL.YWPM,');
    sql.add('       CLZL.ZWPM,');
    sql.add('       CLZL.DWBH,');
    sql.add('       CLZL.CQDH,');
    sql.add('       LastKC.LastRem,');
    sql.add('       RK.RKQty,');
    sql.add('       QC.QCQty,');
    sql.add('       LL.LLQty,');
    sql.add('       JGRK.JGRK,');
    sql.add('       JGCK.JGCK,');
    sql.add('       JGCKTemp.JGCK as JGCKTemp,');
    sql.add('       JGCKTemp1.JGCK as JGCKTempM'); //add by Nick 2015.10.23
    sql.add('       ,Un90LL.CLBH as Un90LLCLBH,CLLBFLS.LBBH,CLZL.ZSDH as SupplierID, ZSZL.ZSYWJC as SupplierName ');
    sql.add('into #RemainKC from CLZL  ');
    //期初庫存 (前一個月的庫存.例:9月)
    sql.add('left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
    sql.add('           from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('           and KCMONTH='+''''+amonth+'''');
    sql.add('           and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('           and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
    sql.add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');

    //入庫數量 (入庫日期>=今天日期 而且 <=入庫日期>=今天日期 例:)
    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty ');
    sql.add('           from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
    sql.add('                 and ');
    sql.add('                 convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('                 and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('                 and KCRK.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');

    //入庫數量->不良品 (入庫日期>=今天日期 而且 <=入庫日期>=今天日期 例:)
    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as QCQty ');
    sql.add('           from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO and KCRK.QCID=''NO'' ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('                '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
    sql.add('                and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('                '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('                and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('                and KCRK.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by KCRKS.CLBH) QC on QC.CLBH=CLZL.CLDH ');

    //出庫數量 =>倉庫確認出庫   (出庫日期>=今天日期 而且 <=出庫日期>=今天日期   而且 尚未Confirm 例:)
    //sql.add('left join (select KCLLS.CLBH,round(sum(KCLLS.Qty),3) as LLQty ');
    sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty ');
    sql.add('           from KCLLS ');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('         left join ddzl on ddzl.ddbh=KCLLS.SCBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
    sql.add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('                 and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('                 and KCLL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                 and KCLL.SCBH<>''JJJJJJJJJJ''');  //2017/09/01 sua gia cong vat tu       
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('               AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');
    //加工入庫數量 =>母材料+倉庫已確認入庫    (出庫日期>=今天日期 而且 <=出庫日期>=今天日期   而且 尚未Confirm 例:)
    sql.add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK ');
    sql.add('           from JGZLS');
    sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
    sql.add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('                 and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                 and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                 group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');

    //2017/09/01 sua gia cong vat tu
    //加工出庫數量 =>子材料+倉庫確認出庫
    sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK ');
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
    begin
      sql.add('         from JGZLSS');
      sql.add('         left join JGZL on JGZL.JGNO=JGZLSS.JGNO  ');
      sql.add('         left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLBH=JGZLSS.CLBH ');
      sql.add('         left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  ');
    end else begin
      sql.add('         from JGZLS');
      sql.add('         left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    end;
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty ');
    sql.add('                      from JGZLS ');
    sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    sql.add('                      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+''''  );
    sql.add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    sql.add('                 and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                 and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                 and JGZL.CKBH='+''''+CBX1.Text+'''');                     
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('               AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('                 group by JGZLS.ZMLB ');
    // KCLL.SCBH='JJJJJJJJJJ'
    sql.Add('           union all');
    sql.Add('           select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO '); 
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('         left join ddzl on ddzl.ddbh=KCLLS.SCBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    sql.add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.Add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('                 and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('                 and KCLL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                 and KCLL.SCBH =''JJJJJJJJJJ''');     
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('               AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('           group by KCLL.CKBH,KCLLS.CLBH');
    sql.add('           ) JGCK on JGCK.ZMLB=CLZL.CLDH');

    //加工單開還未回來數量 (在途數量)
    sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK ');
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
    begin
      sql.add('         from JGZLSS');
      sql.add('         left join JGZL on JGZL.JGNO=JGZLSS.JGNO  ');
      sql.add('         left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLBH=JGZLSS.CLBH ');
      sql.add('         left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  ');
    end else begin
      sql.add('         from JGZLS');
      sql.add('         left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    end;
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where  JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where 1=2 and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.JGDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');   
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('         AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH');
    //加工單已開將來預計要入庫母料數量 (預計入庫母料數量)  add by Nick 2015.10.23
    sql.add(' left join (select JGZLS.CLBH,sum(round(JGZLS.Qty,2)) as JGCK ');
    sql.add('           from JGZLS');
    sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           where  JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.JGDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''''  );
    sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('           group by JGZLS.CLBH ) JGCKTemp1 on JGCKTemp1.CLBH=CLZL.CLDH');
    //20160125 90以上
    sql.add('left join (select CLBH from ( ');
    sql.add('			select KCLLS.CLBH from KCLLS,KCLL ');  
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('   left join ddzl on ddzl.ddbh=KCLL.SCBH ');
    sql.add('            where KCLL.LLNO=KCLLS.LLNO and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' and KCLL.CFMDate>GetDate()-90 and KCLLS.Qty>0 ');                   
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('                AND DDZL.KHPO NOT LIKE ''%-MP''');
    if CB9.Checked=false then
       sql.add('         and 1=2 ');
    if CB3.checked then
       sql.add('         and LEFT(KCLLS.CLBH,1)<>''X''  ');
    if CB4.checked then
       sql.add('         and LEFT(KCLLS.CLBH,1)<>''Z''  ');
    if CB5.checked then
       sql.add('         and LEFT(KCLLS.CLBH,2)<>''U1''  ');
    if CB6.checked then
       sql.add('         and LEFT(KCLLS.CLBH,1)<>''V''  ');
    if CB8.checked then
       sql.add('         and LEFT(KCLLS.CLBH,1)<>''J''  ');
    sql.add('     Group by KCLLS.CLBH ');
    sql.add('     Union all  ');
    sql.add('     select JGZLS.ZMLB from JGZL,JGZLS ');       
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
    begin
      sql.add('   left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLBH=JGZLSS.CLBH ');
      sql.add('   left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  ');
    end;
    sql.add('            where JGZL.JGNO=JGZLS.JGNO and JGZL.GSBH='''+main.Edit2.Text+''' and JGZLS.ZMLB<>''ZZZZZZZZZZ''  and JGZL.CFMID1<>''NO'' and  JGZL.CFMDate1>GetDate()-90 ');  
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('                AND DDZL.KHPO NOT LIKE ''%-MP''');
    if CB9.Checked=false then
       sql.add('         and 1=2 ');
    if CB3.checked then
       sql.add('         and LEFT(JGZLS.ZMLB,1)<>''X''  ');
    if CB4.checked then
       sql.add('         and LEFT(JGZLS.ZMLB,1)<>''Z''  ');
    if CB5.checked then
       sql.add('         and LEFT(JGZLS.ZMLB,2)<>''U1''  ');
    if CB6.checked then
       sql.add('         and LEFT(JGZLS.ZMLB,1)<>''V''  ');
    if CB8.checked then
       sql.add('         and LEFT(JGZLS.ZMLB,1)<>''J''  ');
    sql.add('            Group by JGZLS.ZMLB   ) Un90LL Group by CLBH  ');
    sql.add(') Un90LL  on Un90LL.CLBH=CLZL.CLDH  ');
    //分類
    sql.add('left join (select CLBH,LBBH from CLLBFLS ');
    sql.add('            where GSBH='''+main.Edit2.Text+''' ');
    if CB9.Checked=false then
       sql.add('         and 1=2 ');
    if CB3.checked then
       sql.add('         and LEFT(CLLBFLS.CLBH,1)<>''X''  ');
    if CB4.checked then
       sql.add('         and LEFT(CLLBFLS.CLBH,1)<>''Z''  ');
    if CB5.checked then
       sql.add('         and LEFT(CLLBFLS.CLBH,2)<>''U1''  ');
    if CB6.checked then
       sql.add('         and LEFT(CLLBFLS.CLBH,1)<>''V''  ');
    if CB8.checked then
       sql.add('         and LEFT(CLLBFLS.CLBH,1)<>''J''  ');
    sql.add('           ) CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH ');
    sql.Add('left join ZSZL on CLZL.ZSDH=ZSZL.ZSDH');
    //訂單材料查詢
    if (( editRY1.Text<>'') or (editRY2.Text<>'') or(BuyNoEdit.Text<>'') or (chk_shp.Checked)) then
    begin
    sql.add('left join (');
    sql.add('            select  ZLZLS2.CLBH from ZLZLS2');
    sql.add('            left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH ');
    sql.add('            where DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('            and ZLZLS2.ZMLB=''N'' '); //
    sql.add('            and ZLZLS2.CLSL<>0') ;     
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('          AND DDZL.KHPO NOT LIKE ''%-MP''');
    if (editRY1.Text<>'') and (editRY2.Text='') then
       sql.add('and ZLZLS2.ZLBH like '+''''+editRY1.Text+'%'+'''');
    if (editRY1.Text<>'') and (editRY2.Text<>'') then
    begin
        sql.add('and ZLZLS2.ZLBH >= '+''''+editRY1.Text+'''');
        sql.add('and ZLZLS2.ZLBH <= '+''''+editRY2.Text+'''');
    end;
    //20150904
    if BuyNoEdit.Text <> '' then
          sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102
    if chk_shp.Checked then
    begin
          sql.add('and DDZL.DDRQ between ');
          sql.add('Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''')'+ ' and '+'Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''')');
    end;
    sql.add('   Group by  ZLZLS2.CLBH) ZLZLS2 on ZLZLS2.CLBH=CLZL.CLDH ');
    end;
    //==================
    sql.add('  where not (LastKC.LastRem is null  and RK.RKQty is null and LL.LLQty is null ');
    sql.add('               and JGRK.JGRK is null and JGCK.JGCK is null and JGCKTemp.JGCK is null and JGCKTemp1.JGCK is null)');
    if edit1.Text<>'' then
       sql.add('and CLZL.CLDH like '+''''+edit1.Text+'%'+'''');

    // filter RY, BuyNo
    if (( editRY1.Text<>'') or (editRY2.Text<>'') or(BuyNoEdit.Text<>'') or (chk_shp.Checked)) then
    begin
      sql.add('and IsNull(ZLZLS2.CLBH,'''')<>'''' ');
    end;

    //
    if trim(LocCombo.Text)<>'' then
       sql.add('and CLZL.CQDH='''+LocCombo.Text+''' ');
    if edit2.Text<>'' then
       sql.add('and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
    if edit3.Text<>'' then
       sql.add('and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
    if CB3.checked then
       sql.add('and LEFT(CLZL.CLDH,1)<>''X''  ');
    if CB4.checked then
       sql.add('and LEFT(CLZL.CLDH,1)<>''Z''  ');
    if CB5.checked then
       sql.add('and LEFT(CLZL.CLDH,2)<>''U1''  ');
    if CB6.checked then
       sql.add('and LEFT(CLZL.CLDH,1)<>''V''  ');
    if CB8.checked then
       sql.add('and LEFT(CLZL.CLDH,1)<>''J''  ');
    //    sql.add('');
    sql.add('DECLARE @Ldate as datetime');
    sql.add('set @Ldate = DATEADD(month, -6, GETDATE())'); //限定六個月內的訂單
    sql.add('select #RemainKC.CLDH,');                              //材料編號
    sql.Add('       #RemainKC.CLLB,');                              //材料類別
    sql.add('       #RemainKC.CQDH,');
    sql.add('       #RemainKC.YWPM  as YWPM,');          //英文品名
    sql.add('       #RemainKC.ZWPM  as ZWPM,');          //中文品名
    sql.add('       #RemainKC.DWBH,');                              //單位
    sql.add('       isnull(#RemainKC.LastRem,0) as LastRem,');      //last month上個月
    sql.add('       isnull(#RemainKC.RKQty,0) as RKQty,');          //RKQty+
    sql.add('       isnull(#RemainKC.QCQty,0) as QCQty,');          //QCQty
    sql.add('       isnull(#RemainKC.LLQty,0) as LLQty,');          //LLQty-
    sql.add('       isnull(round(#RemainKC.JGRK,2),0) as JGRK,');   //JGRK+
    sql.add('       isnull(round(#RemainKC.JGCK,2),0) as JGCK,');   //JGCK-
    sql.add('       isnull(round(#RemainKC.JGCKTemp,2),0) as JGCKTemp,'); //JGTmp# 在途數量
    sql.add('       KCZLS.KCBH,');
    sql.add('       KCZLS.CKBH,');
    sql.add('       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0) as Qty,');
    sql.add('       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)-isnull(#RemainKC.JGCKTemp,0) as STOCKQty,');
    //可利用庫存
    //sql.add('       case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)<0 then 0 else isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0) end as UnLL,');
    sql.add('       isnull(ZLZLS.UnLL,0) as UnLL, '); //2018/06/08

    sql.add('       isnull(Round(JGZLZLS2.CLSL,2),0) as UnJG ,');
    sql.add('       isnull(#RemainKC.JGCKTempM,0) as UnRkJG, ');
    sql.add('       isnull(UnRk.UnRkQty,0) as UnRkQty, ');
    sql.add('       isnull(UnBURk.UnBURkQty,0) as UnBURkQty, ');
    //實際在倉庫的可利用庫存
    if CB7.Checked=false then
    begin
       sql.Add('    case when isnull(zlzls.UnLL,0)>=0 then '); //2018/06/08
       sql.Add('      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
       sql.Add('      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0) -isnull(ZLZLS.UnLL,0) - isnull(JGZLZLS2.CLSL,0) '); //2018/06/08
       sql.Add('    else ');
       sql.Add('      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
       sql.Add('      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(JGZLZLS2.CLSL,0) end as Remain');
    end else
    begin
      sql.add('     (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
      //2018/06/08
      sql.add('     + case when (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)- isnull(ZLZLS.UnLL,0)-isnull(JGZLZLS2.CLSL,0))<0 then ');
      sql.add('     (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(ZLZLS.UnLL,0)-isnull(JGZLZLS2.CLSL,0)) else 0 end ');
      //
      sql.add('      ) as Remain ');
    end;
    //
    if CB9.Checked=true then
    begin
      //2018/06/08
      sql.add('       ,case when isnull(Round(JGZLZLS2.CLSL,2),0)>0 or (case when isnull(zlzls.UnLL,0)<0 then 0 else');
      sql.add('        isnull(zlzls.UnLL,0) end) >0 then ''A'' else case when #RemainKC.Un90LLCLBH is not null then ''B'' else ''D'' end  end as ERPClass,#RemainKC.LBBH,#RemainKC.SupplierID,#RemainKC.SupplierName  ');
      //
    end else
    begin
      sql.add('       ,'''' as ERPClass,'''' as LBBH,#RemainKC.SupplierID,#RemainKC.SupplierName   ');
    end;
    //
    sql.add('from #RemainKC ');
    sql.add('left join (select * ');
    sql.add('           from KCZLS ');
    sql.add('           where CKBH='+''''+CBX1.text+'''');
    sql.add('           ) KCZLS on KCZLS.CLBH=#RemainKC.CLDH');

    //2018/06/08
    sql.add('left join     ');

    //sql.add('  (select ZLZLS2.CLBH, sum(case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)<0 then 0 else isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0) end) UnLL ');
    //  因拆單問題  領料跟正確訂單不同修改
    sql.add('  (select ZLZLS2.CLBH,sum(isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0) ) UnLL  ');
    sql.add('   from (     ');
    sql.add('            (select ZLZLS2.ZLBH,ZLZLS2.CLBH ');
    //sql.add('                   ,sum(ZLZLS2.CLSL ) AS CLSL  ');  因拆單問題
    sql.add('                   ,sum(case when ddzl.DDZT=''S'' then 0 else ZLZLS2.CLSL end ) AS CLSL  ');
    sql.add('             from  ZLZLS2  ');
    sql.add('             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh');
    sql.add('             where ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ddzl.GSBH='''+main.Edit2.Text+''' and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    sql.add('                   and ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                   and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate');  // add no risk RY
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('                 AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('             group by ZLZLS2.ZLBH,ZLZLS2.CLBH ) ZLZLS2 ');
    sql.add('    left join (select  KCLLS.SCBH,KCLLS.CLBH, sum(CASE  WHEN (KCLLS.CLSL > KCLLS.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty ');
    sql.add('               from  KCLLS,KCLL ');
    sql.add('               left join ddzl on ddzl.ddbh=KCLL.SCBH');
    sql.add('               where KCLL.CFMID<>''NO'' AND KCLLS.LLNO=KCLL.LLNO AND KCLL.SCBH<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+'''  and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
    sql.add('               and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'')  and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    sql.add('               and KCLLS.CLBH like '''+edit1.Text+'%'' ');
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('             AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('               group by KCLLS.SCBH,KCLLS.CLBH ');
    sql.add('               ) ZLZLS2LL on ZLZLS2LL.CLBH=ZLZLS2.CLBH and ZLZLS2LL.SCBH=ZLZLS2.ZLBH ');
    sql.add('         ) group by ZLZLS2.clbh ');
    sql.add('   )ZLZLS on  ZLZLS.clbh=#RemainKC.CLDH ');
    //
    //有問題    修改加工淨需求計算時不算負值 Nick Lee 2015-06-26
    //加工子件材料  加工淨需求計算時不算負值
    //sql.add('left join( select za.clbh,sum(CLSLS) as clsl from (select ZLZLS2.ZLBH,ZLZLS2.CLBH ,sum(ZLZLS2.CLSL) - isnull(JGZLBK.okQty,0) AS CLSLS, ZLZLS2.MJBH');
    //20250729 sean 拆單母訂單不計算數量
    sql.add('left join( select za.clbh,sum(CLSLS) as clsl from (select ZLZLS2.ZLBH,ZLZLS2.CLBH ,sum(case when ddzl.DDZT=''S'' then 0 else ZLZLS2.CLSL end ) - isnull(JGZLBK.okQty,0) AS CLSLS, ZLZLS2.MJBH');
    sql.add('             from  ZLZLS2  ');
    sql.add('             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh');    //add by Nick
    sql.add('             left join (select JGZLSS.ZLBH,JGZLS.CLBH as MJBH,JGZLS.ZMLB as CLBH,sum(JGZLSS.Qty*JGZLS.QTY) as okQty from JGZLSS');
    sql.add('						   left join JGZL on JGZL.JGNO=JGZLSS.JGNO ');
    sql.add('						   left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLBH=JGZLSS.CLBH');
    sql.add('              left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  ');  //add by Nick
    sql.add('						   where JGZL.CFMID1 <>''NO'' and JGZLS.ZMLB like '''+edit1.Text+'%'' ');
    sql.add('								 and JGZLS.ZMLB<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+''' ');
    sql.Add('                and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111))< ''2017/09/01'''); //<''2017/09/01
    sql.add('                and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');    
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('              AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('							group by  JGZLSS.ZLBH,JGZLS.CLBH,JGZLS.ZMLB ');
    // >=''2017/09/01
    sql.Add('           union all');
    sql.Add('           select KCLLS.SCBH,KCLLS.DFL as MJBH,KCLLS.CLBH,sum(KCLLS.Qty) as okQty from KCLL ');
    sql.add('           left join KCLLS on KCLLS.LLNO=KCLL.LLNO ');
    sql.add('           left join ddzl on ddzl.ddbh=KCLLS.SCBH  ');
    sql.Add('                where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('                 and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID <>''NO''');
    sql.add('                 and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and KCLL.GSBH='''+main.Edit2.Text+''' and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
    sql.add('                 and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('               AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('           group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH');
    sql.add('						  ) JGZLBK on JGZLBK.MJBH=ZLZLS2.MJBH and JGZLBK.CLBH=ZLZLS2.CLBH and JGZLBK.ZLBH=ZLZLS2.ZLBH');
    sql.add('             where ZLZLS2.MJBH<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+''' ');
    sql.add('                   and ZLZLS2.CLBH like '''+edit1.Text+'%'' ');
    sql.add('                   and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');                
    //<>MP
    if (main.Edit2.Text='VA12') or (main.Edit2.Text='VC2') then
      sql.add('                 AND DDZL.KHPO NOT LIKE ''%-MP''');
    sql.add('             group by ZLZLS2.ZLBH,ZLZLS2.CLBH,JGZLBK.okQty, ZLZLS2.MJBH');
    //關閉 有效訂單跟領料訂單不同 無法正確計算
    sql.add('                 --  having sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty,0)');
    sql.add('            ) za group by za.CLBH) JGZLZLS2 ON JGZLZLS2.CLBH=#RemainKC.CLDH ');
    //已採未入庫量不包含補料
    sql.add('left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGRK.okQty,0)) as UnRkQty  ');
    sql.add('           from CGZLS');
    sql.add('           left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(IsNull(KCRKS.Qty,0)) as okQty from KCRKS');
    sql.add('                      left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('                      where IsNull(KCRKS.Flag,0)<>1  and ISNULL(KCRKS.RKSB,'''')<>''NG'' and ISNULL(KCRKS.RKSB,'''')<>''DL'' and KCRK.GSBH='''+main.Edit2.Text+''' ');
    // 20161012
    sql.add('                            and convert(varchar,KCRK.USERDATE,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    //
    sql.add('                            and ZSNO in (select CGNO from CGZL where CGZL.GSBH='''+main.Edit2.Text+'''  ');
    sql.add('                                                                      and (CGZL.CGLX=''2'' ');
    sql.add('                                                                      or CGZL.CGLX=''5'' ');
    sql.add('                                                                      or CGZL.CGLX=''3'' ' );
    sql.add('                                                                      or CGZL.CGLX=''1'')' );
    sql.add('                                                                    and CGZL.CGDate > DATEADD(month, -6, GETDATE()) ) ');
    sql.add('                      group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH ') ;
    sql.add('           where  CGZLS.YN<>''5'' and CGZLS.YN<>''0'' and IsNull(CGZL.DevType,'''')<>''Z07'' ');
    sql.add('                  and CGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                  and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('                  and CGZL.CGDate > @LDate and convert(varchar,CGZL.CGDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''  ');   // add by Nick
    sql.add('                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) ');
    sql.add('                  and (CGZL.CGLX='+''''+'2'+'''' );
    sql.add('                  or CGZL.CGLX='+''''+'5'+'''' );
    sql.add('                  or CGZL.CGLX='+''''+'3'+'''' );
    sql.add('                  or CGZL.CGLX='+''''+'1'+''''+')' );
    sql.add('           group by CGZLS.CLBH ) UnRk on UnRk.CLBH=#RemainKC.CLDH ') ;
    //已採未入庫量不包含補料
    sql.add('left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGRK.okQty,0)) as UnBURkQty  ');
    sql.add('           from CGZLS');
    sql.add('           left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(IsNull(KCRKS.Qty,0)) as okQty from KCRKS');
    sql.add('                      left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('                      where IsNull(KCRKS.Flag,0)<>1  and ISNULL(KCRKS.RKSB,'''')<>''NG'' and ISNULL(KCRKS.RKSB,'''')<>''DL'' and KCRK.GSBH='''+main.Edit2.Text+''' ');
    //20161012
    sql.add('                            and KCRK.UserDate<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date+1)+''') ');
    //
    sql.add('                            and ZSNO in (select CGNO from CGZL where CGZL.GSBH='''+main.Edit2.Text+'''  ');
    sql.add('                                                                      and (CGZL.CGLX=''2'' ');
    sql.add('                                                                      or CGZL.CGLX=''5'' ');
    sql.add('                                                                      or CGZL.CGLX=''3'' ' );
    sql.add('                                                                      or CGZL.CGLX=''1'')' );
    sql.add('                                                                    and CGZL.CGDate > DATEADD(month, -6, GETDATE()) ) ');
    sql.add('                      group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH ') ;
    sql.add('           where  CGZLS.YN<>''5''  and CGZLS.YN<>''0''   and CGZL.DevType=''Z07'' ');
    sql.add('                  and CGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                  and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('                  and CGZL.CGDate > @LDate and convert(varchar,CGZL.CGDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''  ');   // add by Nick
    sql.add('                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) ');
    sql.add('                  and (CGZL.CGLX='+''''+'2'+'''' );
    sql.add('                  or CGZL.CGLX='+''''+'5'+'''' );
    sql.add('                  or CGZL.CGLX='+''''+'3'+'''' );
    sql.add('                  or CGZL.CGLX='+''''+'1'+''''+')' );
    sql.add('           group by CGZLS.CLBH ) UnBURk on UnBURk.CLBH=#RemainKC.CLDH ') ;
    //
    sql.add('where 1=1 ');
    if CB1.checked then
    begin
      if CB7.Checked=false then
      begin
        sql.add('and  (');
        sql.add('     case when isnull(zlzls.UnLL,0)>=0 then ');  //2018/06/08
        sql.add('       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
        sql.add('        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)- isnull(zlzls.UnLL,0) -isnull(JGZLZLS2.CLSL,0) )');   //2018/06/08
        sql.add('     else ');
        sql.add('       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
        sql.add('        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(JGZLZLS2.CLSL,0) )');
        sql.add('     end ) >0.05 ');
      end else
      begin
        sql.add('and  (');
        sql.add('     case when isnull(zlzls.UnLL,0)>=0 then ');  //2018/06/08
        sql.add('       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
        //2018/06/08
        sql.add('        + case when (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(zlzls.UnLL,0) -isnull(JGZLZLS2.CLSL,0))<0 then ');
        sql.add('       (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)- isnull(zlzls.UnLL,0)-isnull(JGZLZLS2.CLSL,0)) else 0 end ');
        //
        sql.add('     else ');
        sql.add('       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.JGCK,0)');
        sql.add('        + case when (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(JGZLZLS2.CLSL,0))<0 then ');
        sql.add('       (isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(JGZLZLS2.CLSL,0)) else 0 end ');
        sql.add('     end ) >0.05');
      end;
    end;
    IF  edit4.TEXT<>'' THEN
        sql.add('             and KCZLS.KCBH='+''''+edit4.Text+'''');
    sql.add('order by #RemainKC.CLDH');
    //ShowMessage(SQL.text);
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;


end;

procedure TAnyStockF.FormCreate(Sender: TObject);
begin

  with TmpQuery do
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
      next;
    end;
    CBX1.itemindex:=0;
    active:=false;
  end;
  BaseDate.Date:=NDate;
  DTP3.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP4.Datetime:=EndOfTheMonth(IncMonth(Date(),0));
  GetDateParam();

end;

procedure TAnyStockF.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TAnyStockF.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TAnyStockF.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  CBX1.SetFocus;
end;

procedure TAnyStockF.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;
//當月天數
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
//取得時間參數
procedure TAnyStockF.GetDateParam();
var myYear, myMonth, myDay : Word;
    tmpDate:TDate;
begin
  //取得上個月起始和結束日期
  tmpDate:=incmonth(BaseDate.Date,-1);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon:=Format('%.2d',[myMonth]);
  LastYear:=Format('%.4d',[myYear]);
  STLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //月初日期
  EDLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, DaysOfItsMonth(tmpDate)));//月底

  //
  //取得上上個月用來月結資料累積加總
  tmpDate:=incmonth(BaseDate.Date,-2);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon2:=Format('%.2d',[myMonth]);
  LastYear2:=Format('%.4d',[myYear]);
  //取得當月初和今天日期
  DecodeDate(BaseDate.Date, myYear, myMonth, myDay);
  STDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //月初日期
  EDDate:=FormatDateTime('YYYY/MM/DD', BaseDate.Date);//基礎日
end;

procedure TAnyStockF.NN1Click(Sender: TObject);
begin
  if MaterialTrace=nil then
      MaterialTrace:=TMaterialTrace.create(self);
  MaterialTrace.edit1.Text:=query1.fieldbyname('CLDH').AsString;
  MaterialTrace.CBX1.Text:=query1.fieldbyname('CKBH').AsString;
  MaterialTrace.button1click(nil);
  MaterialTrace.show;
end;

procedure TAnyStockF.FormDestroy(Sender: TObject);
begin
AnyStockF:=nil;
end;

procedure TAnyStockF.NN2Click(Sender: TObject);
begin
button2click(nil);
end;

procedure TAnyStockF.Button5Click(Sender: TObject);
begin
  AnyStock_Print2:=TAnyStock_Print2.create(self);
  AnyStock_Print2.quickrep1.prepare;
  AnyStock_Print2.PageN.caption:=inttostr(AnyStock_Print2.quickrep1.QRPrinter.pagecount);
  AnyStock_Print2.SDate.Caption:=formatdatetime('YYYY/MM/DD',BaseDate.date);
  AnyStock_Print2.quickrep1.preview;
  AnyStock_Print2.free;
end;

procedure TAnyStockF.Chk_StockClick(Sender: TObject);
begin
    if Chk_Stock.Checked then
    begin
      DBGrid1.FieldColumns['STOCKQty'].Visible:=true ;
      DBGrid1.FieldColumns['LastRem'].Visible:=true ;
      DBGrid1.FieldColumns['RKQty'].Visible:=true ;
      DBGrid1.FieldColumns['LLQty'].Visible:=true ;
      DBGrid1.FieldColumns['JGRK'].Visible:=true ;
      DBGrid1.FieldColumns['JGCK'].Visible:=true ;
      DBGrid1.FieldColumns['JGCKTemp'].Visible:=true ;
      DBGrid1.FieldColumns['QCQty'].Visible:=true ;
      DBGrid1.FieldColumns['CKBH'].Visible:=true ;
      DBGrid1.FieldColumns['KCBH'].Visible:=true ;
    end
    else
    begin
      DBGrid1.FieldColumns['STOCKQty'].Visible:=false ;
      DBGrid1.FieldColumns['LastRem'].Visible:=false ;
      DBGrid1.FieldColumns['RKQty'].Visible:=false ;
      DBGrid1.FieldColumns['LLQty'].Visible:=false ;
      DBGrid1.FieldColumns['JGRK'].Visible:=false ;
      DBGrid1.FieldColumns['JGCK'].Visible:=false ;
      DBGrid1.FieldColumns['JGCKTemp'].Visible:=false ;
      DBGrid1.FieldColumns['QCQty'].Visible:=false ;
      DBGrid1.FieldColumns['CKBH'].Visible:=false ;
      DBGrid1.FieldColumns['KCBH'].Visible:=false ;
    end;
end;

procedure TAnyStockF.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('Remain').AsCurrency=0.00) and (column.FieldName='Remain') then
      DBGrid1.canvas.font.color:=clwhite;
  if (Query1.FieldByName('UnRkQty').AsCurrency=0.00) and (column.FieldName='UnRkQty') then
      DBGrid1.canvas.font.color:=clSkyBlue;
  if (Query1.FieldByName('UnLL').AsCurrency=0.00) and (column.FieldName='UnLL') then
      DBGrid1.canvas.font.color:=clSkyBlue;
  if (Query1.FieldByName('UnJG').AsCurrency=0.00) and (column.FieldName='UnJG') then
      DBGrid1.canvas.font.color:=clSkyBlue;
  if (Query1.FieldByName('UnRkJG').AsCurrency=0.00) and (column.FieldName='UnRkJG') then
      DBGrid1.canvas.font.color:=clSkyBlue;

  if (Query1.FieldByName('RKQty').AsCurrency=0.00) and (column.FieldName='RKQty') then
      DBGrid1.canvas.font.color:=clwhite;
  if (Query1.FieldByName('UnBURkQty').AsCurrency=0.00) and (column.FieldName='UnBURkQty') then
      DBGrid1.canvas.font.color:=clwhite;
  if (Query1.FieldByName('LLQty').AsCurrency=0.00) and (column.FieldName='LLQty') then
      DBGrid1.canvas.font.color:=clwhite;
  if (Query1.FieldByName('JGRK').AsCurrency=0.00) and (column.FieldName='JGRK') then
      DBGrid1.canvas.font.color:=clwhite;
  if (Query1.FieldByName('JGCK').AsCurrency=0.00) and (column.FieldName='JGCK') then
      DBGrid1.canvas.font.color:=clwhite;
  if (Query1.FieldByName('JGCKTemp').AsCurrency=0.00) and (column.FieldName='JGCKTemp') then
      DBGrid1.canvas.font.color:=clwhite;
  if (Query1.FieldByName('QCQty').AsCurrency=0.00) and (column.FieldName='QCQty') then
      DBGrid1.canvas.font.color:=clwhite;



end;

procedure TAnyStockF.Button6Click(Sender: TObject);
begin

  RYTemp:=TRYTemp.create(self);
  RYTemp.BaseDate:=BaseDate.Date;
  RYTemp.CKBH:=query1.fieldbyname('CKBH').AsString;
  RYTemp.Edit1.text:=query1.fieldbyname('CLDH').AsString;
  RYTemp.Lab_MatID.caption:=query1.fieldbyname('CLDH').AsString;
  RYTemp.Lab_Unit.caption:=query1.fieldbyname('DWBH').AsString;
  RYTemp.Lab_MatName.caption:=query1.fieldbyname('YWPM').AsString;
  RYTemp.Lab_Stock.caption:=query1.fieldbyname('Qty').AsString;
  RYTemp.Lab_UnRK.caption:=query1.fieldbyname('UnRkQty').AsString;
  RYTemp.Lab_UnRkJG.caption:=query1.fieldbyname('UnRkJG').AsString;
  RYTemp.Lab_Add.caption:=query1.fieldbyname('Qty').value+query1.fieldbyname('UnRkQty').value+query1.fieldbyname('UnRkJG').Value;
  RYTemp.Lab_Min.caption:=query1.fieldbyname('UnLL').value+query1.fieldbyname('UnJG').value;
  RYTemp.Lab_UnLL.caption:=query1.fieldbyname('UnLL').AsString;
  RYTemp.Lab_UnJG.caption:=query1.fieldbyname('UnJG').AsString;
  if CB7.Checked=false then
    RYTemp.Lab_Remain.caption:=query1.fieldbyname('Remain').AsString
  else
    RYTemp.Lab_Remain.caption:=query1.fieldbyname('Remain').AsString+'(倉庫可利庫) + '+FormatFloat('0.0',strtofloat(RYTemp.Lab_Add.caption)-strtofloat(RYTemp.Lab_Min.Caption)-strtofloat(query1.fieldbyname('Remain').AsString))+'(在途量)';
  RYTemp.button1click(nil);
  RYTemp.show;

end;

procedure TAnyStockF.Query1PARTChange(Sender: TField);
begin
    if not Query1.FieldByName('PART').IsNull then
        flag:=1
    else flag:=0;
end;

procedure TAnyStockF.DBGrid1EditButtonClick(Sender: TObject);
begin

  with DBGrid1 do
  begin
    if Selectedfield.fieldname='UnBURkQty' then
    begin
      UnBURK:=TUnBURK.Create(self);
      UnBURK.Show;
    end;
  end;
end;

procedure TAnyStockF.BaseDateChange(Sender: TObject);
begin
  GetDateParam();
end;

procedure TAnyStockF.CB9Click(Sender: TObject);
begin
  if CB9.Checked=true then
  begin
    DBGrid1.Columns[22].Visible:=true;
    DBGrid1.Columns[23].Visible:=true;
    N1.Visible:=true;
    Save1.Visible:=true;
    Cancel1.Visible:=true;
    UseClass1.Visible:=true;
    Modify1.Visible:=true;
  end else
  begin
    DBGrid1.Columns[22].Visible:=false;
    DBGrid1.Columns[23].Visible:=false;
    N1.Visible:=false;
    Save1.Visible:=false;
    Cancel1.Visible:=false;
    UseClass1.Visible:=false;
    Modify1.Visible:=false;
  end;
end;

procedure TAnyStockF.Modify1Click(Sender: TObject);
begin
  //
  if Query1.Active then
  begin
    Query1.RequestLive:=true;
    Query1.CachedUpdates:=true;
    Query1.Edit;
    UseClass1.enabled:=true;
    Save1.enabled:=true;
    Cancel1.enabled:=true;
  end;
  //
end;

procedure TAnyStockF.Cancel1Click(Sender: TObject);
begin
  if Query1.CachedUpdates then
  begin
    Query1.Active:=false;
    Query1.CachedUpdates:=false;
    Query1.RequestLive:=false;
    Query1.Active:=true;
  end;
  UseClass1.enabled:=false;
  Save1.enabled:=false;
  Cancel1.enabled:=false;
end;

procedure TAnyStockF.UseClass1Click(Sender: TObject);
var i:integer;
begin
   //
   DBGrid1.DataSource:=nil;
   Query1.First;
   for i:=0 to Query1.RecordCount-1 do
   begin
     Application.ProcessMessages;
     Query1.Edit;
     Query1.FieldByName('LBBH').Value:=Query1.FieldByName('ERPClass').Value;
     Query1.Post;
     Query1.Next;
   end;
   DBGrid1.DataSource:=DataSource1;
   //
end;

procedure TAnyStockF.Save1Click(Sender: TObject);
var i:integer;
begin
  //
  if Query1.Active=true then
  begin
    if MessageDlg('Save ? ',mtCustom, [mbYes,mbCancel], 0)=mrYes then
    begin
      Query1.First;
      for i:=0 to Query1.RecordCount-1 do
      begin
        case Query1.updatestatus of
          usmodified:
          begin
            with TmpQuery do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Select CLBH from CLLBFLS ');
              SQL.Add('where GSBH='''+main.Edit2.Text+''' and CLBH='''+Query1.fieldByName('CLDH').AsString+''' ');
              Active:=true;
              if RecordCount=0 then
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Insert into CLLBFLS (GSBH,CLBH,LBBH,UserID,UserDate,YN) ');
                SQL.Add('Values ('''+main.Edit2.Text+''','''+Query1.fieldByName('CLDH').AsString+''','''+Query1.fieldByName('LBBH').AsString+''','''+main.Edit1.Text+''',GetDate(),1)');
                ExecSQL;
              end else
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Update CLLBFLS  Set LBBH='''+Query1.fieldByName('LBBH').AsString+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() ');
                SQL.Add('where GSBH='''+main.Edit2.Text+''' and CLBH='''+Query1.fieldByName('CLDH').AsString+''' ');
                ExecSQL;
              end;
            end;
          end;
        end;
        Query1.Next;
      end;
      Showmessage('Success');
    end;
  end;
  //
end;

procedure TAnyStockF.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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

procedure TAnyStockF.LockQtyMaterial1Click(Sender: TObject);
var
  CLBHValue: string;
begin
  CLBHValue := query1.FieldByName('CLDH').AsString;

  if CLBHValue = '' then
  begin
    ShowMessage('Khong co CLDH nao duoc chon!');
    Exit;
  end;

  AnyStock_LockQtyMaterial := TAnyStock_LockQtyMaterial.Create(Self);
  try
    AnyStock_LockQtyMaterial.edt1.Text := CLBHValue;

    AnyStock_LockQtyMaterial.Show;
  except
    AnyStock_LockQtyMaterial.Free;
    raise;
  end;
end;

end.
