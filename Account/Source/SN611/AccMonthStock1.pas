unit AccMonthStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
  DBGridEhImpExp, Comobj, ShellAPI, iniFiles;

type
  TAccMonthStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit4: TEdit;
    CBX6: TComboBox;
    CBX4: TComboBox;
    CalQuery: TQuery;
    CalDS: TDataSource;
    tmpQry: TQuery;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    UpdateSQL1: TUpdateSQL;
    CalQueryKCYEAR: TStringField;
    CalQueryKCMONTH: TStringField;
    CalQueryCKBH: TStringField;
    CalQueryHGLB: TStringField;
    CalQueryCLBH: TStringField;
    CalQueryRemACC: TFloatField;
    CalQueryRemQty01T: TCurrencyField;
    CalQueryRemQty02T: TCurrencyField;
    CalQueryRemQty03T: TCurrencyField;
    CalQueryRemQty04T: TCurrencyField;
    CalQueryRemQty05T: TCurrencyField;
    CalQueryRemQty06T: TCurrencyField;
    CalQueryUSERID: TStringField;
    CalQueryUSERDATE: TDateTimeField;
    CalQueryCWBH: TStringField;
    CalQueryYN: TStringField;
    Button3: TButton;
    DBGridEh2: TDBGridEh;
    Stock6TQry: TQuery;
    Stock6TDS: TDataSource;
    Stock6TQryKCYEAR: TStringField;
    Stock6TQryKCMONTH: TStringField;
    Stock6TQryCKBH: TStringField;
    Stock6TQryCLBH: TStringField;
    Stock6TQryHGLB: TStringField;
    Stock6TQryRemQty: TCurrencyField;
    Stock6TQryRemACC: TFloatField;
    Stock6TQryRemQty01T: TCurrencyField;
    Stock6TQryRemQty02T: TCurrencyField;
    Stock6TQryRemQty03T: TCurrencyField;
    Stock6TQryRemQty04T: TCurrencyField;
    Stock6TQryRemQty05T: TCurrencyField;
    Stock6TQryRemQty06T: TCurrencyField;
    Stock6TQryRemAcc01T: TFloatField;
    Stock6TQryRemAcc02T: TFloatField;
    Stock6TQryRemAcc03T: TFloatField;
    Stock6TQryRemAcc04T: TFloatField;
    Stock6TQryRemAcc05T: TFloatField;
    Stock6TQryRemAcc06T: TFloatField;
    ExchangeEdit: TEdit;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    SaveDialog1: TSaveDialog;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    StockClassQry: TQuery;
    DBGridEh3: TDBGridEh;
    StockClassQryDS: TDataSource;
    StockClassQryKCYEAR: TStringField;
    StockClassQryKCMONTH: TStringField;
    StockClassQryclass0: TFloatField;
    StockClassQryClass1: TFloatField;
    StockClassQryClass2: TFloatField;
    StockClassQryClass3: TFloatField;
    StockClassQryClass4: TFloatField;
    StockClassQryClass5: TFloatField;
    StockClassQryClass6: TFloatField;
    StockClassQryClass7: TFloatField;
    StockClassQryClass8: TFloatField;
    StockClassQryClass9: TFloatField;
    StockClassQryClass10: TFloatField;
    StockClassQryClass11: TFloatField;
    StockClassQryClass12: TFloatField;
    StockClassQryClass13: TFloatField;
    StockABDQry: TQuery;
    StockABDDS: TDataSource;
    DBGridEh4: TDBGridEh;
    StockABDQryKCYEAR: TStringField;
    StockABDQryKCMONTH: TStringField;
    StockABDQryLB: TStringField;
    StockABDQryclassABD: TFloatField;
    CalQueryRemQty: TCurrencyField;
    CalQueryRemQty07T: TCurrencyField;
    Stock6TQryRemAcc07T: TFloatField;
    Stock6TQryRemQty07T: TCurrencyField;
    CalQueryRemAcc01T: TFloatField;
    CalQueryRemAcc02T: TFloatField;
    CalQueryRemAcc03T: TFloatField;
    CalQueryRemAcc04T: TFloatField;
    CalQueryRemAcc05T: TFloatField;
    CalQueryRemAcc06T: TFloatField;
    CalQueryRemAcc07T: TFloatField;
    CalQueryDiff_RemAcc: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBX4Change(Sender: TObject);
    procedure CalQueryCalcFields(DataSet: TDataSet);
  private
    IsHide_Warehouse_XT:String;
    procedure ExportExcel(Query:TQuery);
    { Private declarations }
    procedure readini();
    procedure Stock6TMonth();
    procedure StockClass();
    procedure StockABD();
    //
    procedure CWCLZL_HG_Mon();
    procedure Del_CWCLZL_HG_Mon();
    Function Check_CWCLZL_HG_Mon():boolean;
    //
    procedure ExportExcel_Stock6T();
    procedure ExportExcel_Default(Query:TQuery);
  public
    { Public declarations }
  end;

var
  AccMonthStock: TAccMonthStock;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TAccMonthStock.readini();
var MyIni :Tinifile;
    AppDir:string;
begin

  IsHide_Warehouse_XT:='N';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('NK+TC+HD+KD');
    CBX6.Items.Add('NK1+TC1+HD1+KD1');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.ItemIndex:=7;
  end;
end;

procedure TAccMonthStock.FormDestroy(Sender: TObject);
begin
  AccMonthStock:=nil;
end;

procedure TAccMonthStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TAccMonthStock.FormCreate(Sender: TObject);
var i,j,index:integer;
    myYear, myMonth, myDay : Word;
begin
  //
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') ');
    Active:=true;
    index:=0;
    CBX4.Items.Clear;
    CBX4.Items.Add('ALL');
    for i:=1 to recordCount do
    begin
      CBX4.Items.Add(fieldbyname('gsdh').AsString);
      if main.Edit2.Text=fieldbyname('gsdh').AsString then index:=i;
      Next;
    end;
    CBX4.ItemIndex:=0;
    Active:=false;
  end;
  //
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX1.Items.Clear;
    CBX1.Items.Add('ALL');
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.ItemIndex:=0;
    Active:=false;
  end;
  //
   // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for j:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[j])=myYear then
    begin
      CBX2.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[j])=myMonth then
    begin
      CBX3.ItemIndex:=j-1;
      break;
    end;
  end;
  readini();
end;
//計算存貨庫齡
procedure TAccMonthStock.Del_CWCLZL_HG_Mon();
var i:integer;
    tmpList:TStringlist;
    HGLBSQL:string;
begin
  //
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete from CWCLZL_HG_Mon ');
    SQL.Add('where exists ( ');
    SQL.Add(' select * from  CWCLZL_HG_Mon CWCLZL ');
    SQL.Add(' left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH  ');
    SQL.Add(' left join KCCK on KCCK.CKBH=CWCLZL.CKBH  ');
    SQL.Add('where  CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+''' ');
    SQL.Add(' and CWCLZL_HG_Mon.KCYEAR=CWCLZL.KCYEAR and CWCLZL_HG_Mon.KCMONTH=CWCLZL.KCMONTH  and CWCLZL_HG_Mon.CKBH=CWCLZL.CKBH  and CWCLZL_HG_Mon.CLBH=CWCLZL.CLBH and CWCLZL_HG_Mon.HGLB=CWCLZL.HGLB  ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and CWCLZL.HGLB <>''XT'' ');
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQl.Add(' ) ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
  end;
end;
//
Function TAccMonthStock.Check_CWCLZL_HG_Mon():boolean;
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  //
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCYEAR from CWCLZL_HG_Mon CWCLZL ');
    SQL.add('left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('where  KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and CWCLZL.HGLB <>''XT'' ');
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  if tmpQry.RecordCount>0 then
    result:=true
  else
    result:=false;
  tmpQry.Active:=false;
  //
end;
//
procedure TAccMonthStock.Button1Click(Sender: TObject);
var i:integer;
    iYear,iMonth:String;
    HGLBSQL:string;
    tmpList:TStringlist;
    IsRun:boolean;
begin
  iYear:=CBX2.Text;
  iMonth:=CBX3.Text;

  if Check_CWCLZL_HG_Mon()=false then
  begin
    IsRun:=true;
  end else
  begin
    if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
    begin
      IsRun:=true;
    end;
  end;
  //
  if IsRun=true then
  begin
    Del_CWCLZL_HG_Mon();
    with CalQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if object_id(''tempdb..#tmpCWCLZLR'') is not null');
      SQL.Add('begin drop table #tmpCWCLZLR end');
      SQL.Add('select '''+iYear+''' as KCYEAR,'''+iMonth+''' as KCMONTH,CWCLZL.clbh,CWCLZL.ckbh,CWCLZL.hglb,CWCLZL.rkqty+CWCLZL.JGQty as rkQty,CWCLZL.remqty,case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCLCOUNT.VNACC else CWCLZL.RemACC end [RemACC]');
      SQL.Add('      ,DATEDIFF(MONTH,CWCLZL.KCYEAR+''-''+CWCLZL.KCMONTH+''-01'','''+iYear+'-'+iMonth+'-01'' ) [Month] into #tmpCWCLZLR from CWCLZL_HG  CWCLZL');
      SQL.Add('left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH ');
      SQL.add('left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH');
      SQL.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      SQL.Add('where DATEDIFF(MONTH,CWCLZL.KCYEAR+''-''+CWCLZL.KCMONTH+''-01'','''+iYear+'-'+iMonth+'-01''  )<13  and DATEDIFF(MONTH,CWCLZL.KCYEAR+''-''+CWCLZL.KCMONTH+''-01'','''+iYear+'-'+iMonth+'-01''  )>-1 ');
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if edit1.Text<>'' then
      sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      //HGLB
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
        sql.add('and CWCLZL.HGLB <>''XT'' ');
      //GSBH
      if CBX4.itemindex<>0 then
      begin
        sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
      end else
      begin
        sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
      end;
      //
      SQL.Add('Create INDEX #tmpCWCLZLR_index on #tmpCWCLZLR(clbh,ckbh,month)');
      SQL.Add('Insert into CWCLZL_HG_Mon (KCYEAR, KCMONTH, CKBH, CLBH, HGLB, RemQty, RemACC, RemQty01T, RemQty02T, RemQty03T, RemQty04T, RemQty05T, RemQty06T, RemQty07T, USERID, USERDATE, YN) ');
      SQL.Add('select d.KCYear,d.KCMonth,d.ckbh,d.clbh,hglb,isnull(d.remqty,0) as remqty,isnull(d.remAcc,0) as RemACC ');
      SQL.Add('        ,isnull(Sum(d.c0),0) as RemQty01T -- [<30] ');
      SQL.Add('        ,isnull(Sum(d.c1),0) as RemQty02T --[31~60]');
      SQL.Add('        ,isnull(Sum(d.c2),0) as RemQty03T --[61~90]');
      SQL.Add('        ,isnull(Sum(d.c3),0) as RemQty04T --[91~120]');
      SQL.Add('        ,isnull(Sum(d.c4),0)+isnull(Sum(d.c5),0) as RemQty05T --[121~180]');
      SQL.Add('        ,isnull(Sum(d.c6),0)+isnull(Sum(d.c7),0)+isnull(Sum(d.c8),0)+isnull(Sum(d.c9),0)+isnull(Sum(d.c10),0)+isnull(Sum(d.c11),0) as RemQty06T --[181~359]');
      SQL.Add('        ,isnull(Sum(d.c12),0) as RemQty07T--[>181]');
      SQL.Add('        ,'''+main.Edit1.Text+''' as USERID,GetDate() as UserDate,''1'' as YN ');
      SQL.Add('from (');
      SQL.Add('	select *,');
      SQL.Add('	case when c.Month=0 then c.Qty end c0, ');
      SQL.Add('	case when c.Month=1 then c.Qty end c1,');
      SQL.Add('	case when c.Month=2 then c.Qty end c2,');
      SQL.Add('	case when c.Month=3 then c.Qty end c3,');
      SQL.Add('	case when c.Month=4 then c.Qty end c4,');
      SQL.Add('	case when c.Month=5 then c.Qty end c5,');
      SQL.Add('	case when c.Month=6 then c.Qty end c6,');
      SQL.Add('	case when c.Month=7 then c.Qty end c7,');
      SQL.Add('	case when c.Month=8 then c.Qty end c8,');
      SQL.Add('	case when c.Month=9 then c.Qty end c9,');
      SQL.Add('	case when c.Month=10 then c.Qty end c10,');
      SQL.Add('	case when c.Month=11 then c.Qty end c11,');
      SQL.Add('	case when c.Month=12 then c.Qty end c12');
      SQL.Add('	from (');
      SQL.Add('	select b.*,case when b.month=b1.MaxMonth then (case when b.RemQty-b.SumRKqty>0 then '); //20200812 修正原本b.month=6
      SQL.Add('					   b.RemQty-b.SumRKqty else 0 end) ');
      SQL.Add('				   else (case when b.RemQty>(b.RKQty+b.SumRKqty) then ');
      SQL.Add('						       b.RKQty ');
      SQL.Add('					      else ');
      SQL.Add('					      	(case when b.RemQty-b.SumRKqty>0  then ');
      SQL.Add('							      b.RemQty-b.SumRKqty else 0 end)  ');
      SQL.Add('						 end ) ');
      SQL.Add('				  end Qty from (');
      SQL.Add('	select a1.KCYEAR,a1.KCMonth,a1.CLBH,a1.ckbh,a1.hglb,a2.month,sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.month=0)then a1.RemQty end) RemQty,sum(case when (a1.month=0)then a1.RemACC end) RemACC');
      SQL.Add('	from #tmpCWCLZLR a1');
      SQL.Add('	left join #tmpCWCLZLR a2 on a2.clbh=a1.CLBH and a2.CKBH=a1.CKBH and a2.HGLB=a1.HGLB');
      SQL.Add('	where a2.month>a1.month');
      SQL.Add('	group by a1.KCYEAR,a1.KCMonth,a1.clbh,a1.ckbh,a1.hglb,a2.month,a2.rkqty');
      SQL.Add('	union all');
      SQL.Add('	select KCYEAR,KCMonth,clbh,ckbh,hglb,Month,0,RKQty,RemQty,RemACC from #tmpCWCLZLR');
      SQL.Add('	where  month=0 ) b ');
      //20200812 weston修正判斷最後一個月份，修正庫存月結CWCLZL_HG 沒有初始月
      SQL.Add('	left join (');
      SQL.Add('	  select KCYEAR,KCMONTH,CLBH,CKBH,HGLB,MAX([Month]) as MaxMonth from (');
      SQL.Add('		select a1.KCYEAR,a1.KCMonth,a1.CLBH,a1.ckbh,a1.hglb,a2.month,sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.month=0)then a1.RemQty end) RemQty,sum(case when (a1.month=0)then a1.RemACC end) RemACC');
      SQL.Add('		from #tmpCWCLZLR a1');
      SQL.Add('		left join #tmpCWCLZLR a2 on a2.clbh=a1.CLBH and a2.CKBH=a1.CKBH and a2.HGLB=a1.HGLB');
      SQL.Add('		where a2.month>a1.month');
      SQL.Add('		group by a1.KCYEAR,a1.KCMonth,a1.clbh,a1.ckbh,a1.hglb,a2.month,a2.rkqty');
      SQL.Add('		union all');
      SQL.Add('		select KCYEAR,KCMonth,clbh,ckbh,hglb,Month,0,RKQty,RemQty,RemACC from #tmpCWCLZLR');
      SQL.Add('		where  month=0 	)  Alldata');
      SQL.Add('	  Group by KCYEAR,KCMONTH,CLBH,CKBH,HGLB');
      SQL.Add('	) b1 on b1.KCYEAR=b.KCYEAR and b1.KCMONTH=b.KCMONTH and b1.CLBH=b.CLBH and b1.CKBH=b.CKBH and b1.HGLB=b.HGLB');
      //
      SQL.Add(' ) c  ) d');
      SQL.Add('where d.remqty>0');
      SQL.Add('group by d.KCYear,d.KCMonth,d.clbh,d.ckbh,hglb,d.RemQty,d.remAcc');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    Showmessage('Finish');
  end;

end;
//庫齡分析
procedure TAccMonthStock.Stock6TMonth();
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  with Stock6TQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from ( ');
    SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,''ALL'' as CKBH,''ALL''  as CLBH,''ALL''  as HGLB,Sum(CWCLZL.RemQty) as RemQty,Sum(CWCLZL.RemACC) as RemACC ');
    SQL.Add('           ,Sum(RemQty01T) as RemQty01T,Sum(RemQty02T) as RemQty02T,Sum(RemQty03T) as RemQty03T,Sum(RemQty04T) as RemQty04T,Sum(RemQty05T) as RemQty05T,Sum(RemQty06T) as RemQty06T,Sum(RemQty07T) as RemQty07T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty01T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end)  as RemAcc01T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty02T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end)  as RemAcc02T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty03T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end)  as RemAcc03T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty04T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end)  as RemAcc04T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty05T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end)  as RemAcc05T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty06T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end)  as RemAcc06T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty07T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end)  as RemAcc07T ');
    SQL.Add('    from CWCLZL_HG_Mon CWCLZL ');
    SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('    where 1=1 and CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+''' ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and CWCLZL.HGLB <>''XT'' ');
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQL.Add('    Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH');
    //明細
    if CheckBox1.Checked=true then
    begin
      SQL.Add('    union all ');
      SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty,CWCLZL.RemACC ');
      SQL.Add('           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,CWCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T,CWCLZL.RemQty07T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc01T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc02T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc03T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc04T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc05T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc06T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty07T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc07T ');
      SQL.Add('    from CWCLZL_HG_Mon CWCLZL');
      SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
      SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      SQL.Add('    where 1=1 and CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+''' ');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if edit1.Text<>'' then
      sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      //HGLB
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          HGLBSQL:='';
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
        sql.add('and CWCLZL.HGLB <>''XT'' ');
      //GSBH
      if CBX4.itemindex<>0 then
      begin
        sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
      end else
      begin
        sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
      end;
    end;
    SQL.Add('    )  CWCLZL  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if CheckBox1.Checked=true then
  begin
    for i:=5 to 13 do
      DBGridEh2.Columns[i].Visible:=true;
  end else
  begin
    for i:=5 to 13 do
      DBGridEh2.Columns[i].Visible:=false;
  end;
end;
//庫存呆滯分類
procedure TAccMonthStock.StockClass();
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  with StockClassQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CWCLZL.KCYEAR,CWCLZL.KCMONTH  ');
    SQL.Add('      ,sum(RemAcc06T) as ''class0''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''K02''  then RemAcc06T end) as ''Class1''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''F16''  then RemAcc06T end) as ''Class2''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,1)=''A''  then RemAcc06T end) as ''Class3''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''P99''  then RemAcc06T end) as ''Class4''      ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''E06''  then RemAcc06T end) as ''Class5'' ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''G03''  then RemAcc06T end) as ''Class6'' ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''G07''  then RemAcc06T end) as ''Class7'' ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,1)=''M''  then RemAcc06T end) as ''Class8''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''E01'' or left(CWCLZL.CLBH,3)=''E02''   then RemAcc06T end) as ''Class9''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''K01''   then RemAcc06T end) as ''Class10''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''K03''   then RemAcc06T end) as ''Class11''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''J02'' or left(CWCLZL.CLBH,3)=''J03''   then RemAcc06T end) as ''Class12''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3) not in (''K02'',''F16'',''P99'',''E06'',''G03'',''G07'',''E01'',''E02'',''K01'',''K03'',''J02'',''J03'') and left(CWCLZL.CLBH,1) not in (''A'',''M'') then RemAcc06T end) as ''Class13''');
    SQL.Add('from ( ');
    SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty,CWCLZL.RemACC ');
    SQL.Add('           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,CWCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc01T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc02T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc03T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc04T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc05T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round((RemQty06T+RemQty07T)*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc06T  ');
    SQL.Add('    from CWCLZL_HG_Mon CWCLZL');
    SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('    where 1=1 and CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+''' ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        HGLBSQL:='';
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and CWCLZL.HGLB <>''XT'' ');
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQL.Add('    )  CWCLZL  ');
    SQL.Add('Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;
//庫存ABD分類
procedure TAccMonthStock.StockABD();
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  //
  with StockABDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('   if object_id(''tempdb..#tmpStockABD'') is not null ');
    SQL.Add('   begin   drop table #tmpStockABD end  ');
    SQL.Add(' Select * into #tmpStockABD from (');
    SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty,CWCLZL.RemACC ');
    SQL.Add('           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,CWCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc01T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc02T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc03T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc04T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc05T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round((RemQty06T+RemQty07T)*((CWCLZL.RemACC/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc06T  ');
    SQL.Add('    from CWCLZL_HG_Mon CWCLZL');
    SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('    where 1=1 and CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+''' ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        HGLBSQL:='';
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and CWCLZL.HGLB <>''XT'' ');
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQL.Add('    )  CWCLZL  ');
    //
    SQL.Add('Select KCYEAR,KCMONTH,''A'' as LB ');
    SQl.Add('      ,sum(RemAcc01T+RemAcc02T+RemAcc03T) as ''classABD'' ');
    SQL.Add('from  #tmpStockABD ');
    SQL.Add('where 1=1 ');
    {
    SQL.Add('   and CLBH  in (');
    SQL.Add('  select CLBH ');
    SQL.Add('  from zlzls2');
    SQL.Add('  left join DDZL on DDZL.DDBH=zlzls2.ZLBH');
    SQL.Add('  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>''C'' and DDZL.DDLB=''N'' ');
    SQL.Add('  Group by CLBH )');
    }
    SQL.Add('Group by KCYEAR,KCMONTH');
    SQL.Add('Union all ');
    SQL.Add('Select KCYEAR,KCMONTH,''B'' as LB ');
    SQl.Add('      ,sum(RemAcc04T+RemAcc05T) as ''classABD'' ');
    SQL.Add('from  #tmpStockABD ');
    SQL.Add('where 1=1 ');
    {
    SQL.Add('  and CLBH  not in (');
    SQL.Add('  select CLBH ');
    SQL.Add('  from zlzls2');
    SQL.Add('  left join DDZL on DDZL.DDBH=zlzls2.ZLBH');
    SQL.Add('  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>''C'' and DDZL.DDLB=''N'' ');
    SQL.Add('  Group by CLBH )');
    }
    SQL.Add('Group by KCYEAR,KCMONTH');
    SQL.Add('Union all ');
    SQL.Add('Select KCYEAR,KCMONTH,''D'' as LB ');
    SQl.Add('      ,sum(RemAcc06T) as ''classABD'' ');
    SQL.Add('from  #tmpStockABD ');
    SQL.Add('where 1=1 ');
    {
    SQL.Add('  and CLBH  not in (');
    SQL.Add('  select CLBH ');
    SQL.Add('  from zlzls2');
    SQL.Add('  left join DDZL on DDZL.DDBH=zlzls2.ZLBH');
    SQL.Add('  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>''C'' and DDZL.DDLB=''N'' ');
    SQL.Add('  Group by CLBH )');
    }
    SQL.Add('Group by KCYEAR,KCMONTH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;
//顯示表格6T CWCLZL_HG_Mon
procedure TAccMonthStock.CWCLZL_HG_Mon();
var  tmpList:TStringlist;
     HGLBSQL:String;
     i:integer;
begin
 //
  with CalQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CWCLZL.*,KCZLS.CWBH ');
    SQL.Add('       ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end  as RemAcc01T');
    SQL.Add('       ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end  as RemAcc02T');
    SQL.Add('       ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end  as RemAcc03T');
    SQL.Add('       ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end  as RemAcc04T');
    SQL.Add('       ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end  as RemAcc05T');
    SQL.Add('       ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end  as RemAcc06T');
    SQL.Add('       ,case when CWCLZL.RemACC>0 then Round(RemQty07T*((convert(float,CWCLZL.RemACC)/CWCLZL.RemQty/'+ExchangeEdit.Text+'.0)),0) else 0 end  as RemAcc07T');
    SQL.Add('from CWCLZL_HG_Mon CWCLZL ');
    SQL.Add('Left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('where CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+'''  ');
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and CWCLZL.HGLB <>''XT'' ');
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
end;

procedure TAccMonthStock.ExportExcel(Query:TQuery);
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
    for   i:=1   to   Query.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
      end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='12';
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
procedure TAccMonthStock.Button3Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then  Stock6TMonth();
  if PC1.ActivePageIndex=1 then  StockClass();
  if PC1.ActivePageIndex=2 then  StockABD();
  if PC1.ActivePageIndex=3 then  CWCLZL_HG_Mon();
end;

procedure TAccMonthStock.ExportExcel_Stock6T();
var eclApp,WorkBook:olevariant;
    i,j:integer;
    TotalACC,AccPer:double;
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    if Stock6TQry.Active then
    begin
      if Stock6TQry.recordcount=0 then
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
      TotalACC:=Stock6TQry.Fields[14].Value+Stock6TQry.Fields[15].Value+Stock6TQry.Fields[16].Value+Stock6TQry.Fields[17].Value+Stock6TQry.Fields[18].Value+Stock6TQry.Fields[19].Value+Stock6TQry.Fields[20].Value;;
      eclApp.Cells(1,1):=Stock6TQry.Fields[0].Value;
      eclApp.Cells(1,2):=Stock6TQry.Fields[1].Value;
      //T1
      eclApp.Cells(1,3):=Stock6TQry.Fields[14].Value;
      AccPer:=(Stock6TQry.Fields[14].Value/TotalACC)*100;
      eclApp.Cells(1,4):=Format('%.2f',[AccPer]);
      //T2
      eclApp.Cells(1,5):=Stock6TQry.Fields[15].Value;
      AccPer:=(Stock6TQry.Fields[15].Value/TotalACC)*100;
      eclApp.Cells(1,6):=Format('%.2f',[AccPer]);
      //T3
      eclApp.Cells(1,7):=Stock6TQry.Fields[16].Value;
      AccPer:=(Stock6TQry.Fields[16].Value/TotalACC)*100;
      eclApp.Cells(1,8):=Format('%.2f',[AccPer]);
      //T4
      eclApp.Cells(1,9):=Stock6TQry.Fields[17].Value;
      AccPer:=(Stock6TQry.Fields[17].Value/TotalACC)*100;
      eclApp.Cells(1,10):=Format('%.2f',[AccPer]);
      //T5
      eclApp.Cells(1,11):=Stock6TQry.Fields[18].Value;
      AccPer:=(Stock6TQry.Fields[18].Value/TotalACC)*100;
      eclApp.Cells(1,12):=Format('%.2f',[AccPer]);
      //T6
      eclApp.Cells(1,13):=Stock6TQry.Fields[19].Value;
      AccPer:=(Stock6TQry.Fields[19].Value/TotalACC)*100;
      eclApp.Cells(1,14):=Format('%.2f',[AccPer]);
      //T7
      eclApp.Cells(1,15):=Stock6TQry.Fields[20].Value;
      AccPer:=(Stock6TQry.Fields[20].Value/TotalACC)*100;
      eclApp.Cells(1,16):=Format('%.2f',[AccPer]);
      //
      eclApp.Cells(1,17):=TotalACC;
      AccPer:=(TotalACC/TotalACC)*100;
      eclApp.Cells(1,18):=Format('%.2f',[AccPer]);
      //
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end else
  begin
    ExportExcel_Default(Stock6TQry);
  end;

end;
//
procedure TAccMonthStock.ExportExcel_Default(Query:TQuery);
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
    for   i:=1   to   Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
  Query.First;
  j:=2;
  while   not  Query.Eof   do
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

procedure TAccMonthStock.Button2Click(Sender: TObject);
begin

 if PC1.ActivePageIndex=0 then  ExportExcel_Stock6T();
 if PC1.ActivePageIndex=1 then  ExportExcel_Default(StockClassQry);
 if PC1.ActivePageIndex=2 then  ExportExcel_Default(StockABDQry);
 if PC1.ActivePageIndex=3 then  ExportExcel_Default(CalQuery);

end;

procedure TAccMonthStock.CBX4Change(Sender: TObject);
begin
  if CBX4.Text<>'ALL' then
  begin
    with tmpQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CKBH from KCCK ');
      sql.add('where GSBH='+''''+CBX4.Text+'''');
      sql.add('order by CKBH');
      active:=true;
      CBX1.Items.Clear;
      CBX1.Items.Add('ALL');
      while not eof do
      begin
        CBX1.Items.Add(fieldbyname('CKBH').AsString);
        Next;
      end;
      CBX1.ItemIndex:=0;
      Active:=false;
    end;
  end;
end;

procedure TAccMonthStock.CalQueryCalcFields(DataSet: TDataSet);
begin
  CalQuery.FieldByName('Diff_RemAcc').Value := CalQuery.FieldByName('RemAcc').Value -  CalQuery.FieldByName('RemAcc01T').Value - CalQuery.FieldByName('RemAcc02T').Value - CalQuery.FieldByName('RemAcc03T').Value - CalQuery.FieldByName('RemAcc04T').Value - CalQuery.FieldByName('RemAcc05T').Value - CalQuery.FieldByName('RemAcc06T').Value - CalQuery.FieldByName('RemAcc07T').Value ;
end;

end.
