unit AnyStock_R1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  ComCtrls,comobj, GridsEh, DBGridEh, EhlibBDE, iniFiles;

type
  TAnyStock_R = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    CBX1: TComboBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    PopupMenu1: TPopupMenu;
    temp: TQuery;
    Modify2: TMenuItem;
    Save1: TMenuItem;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1LastRem: TCurrencyField;
    Query1QtyTotal: TCurrencyField;
    Query1CLBH: TStringField;
    Query1QTY: TCurrencyField;
    Query1TemQty: TCurrencyField;
    Query1PurQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1Pair: TStringField;
    Query1Price: TCurrencyField;
    Query1ACC: TCurrencyField;
    Query1LLQty: TCurrencyField;
    Query1LastQty: TCurrencyField;
    Query1Memo: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    UpMas: TUpdateSQL;
    Cance1: TMenuItem;
    Query1CKBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Cance1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnyStock_R: TAnyStock_R;
  NDate:TDate;
  ayear,amonth,aamonth:string;

implementation

uses main1, AnyStock1, AnyStockRPrice1;

{$R *.dfm}

procedure TAnyStock_R.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TAnyStock_R.FormCreate(Sender: TObject);
var i:integer;
    y,m,d:word;
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
        DBGrid1.Columns[6].picklist.add(fieldbyname('CKBH').asstring);
        Next;
    end;
    active:=false;
    CBX1.items.add('ALL');
    CBX1.itemindex:=0;
    active:=false;
  end;
  DTP1.Date:=NDate;
end;

procedure TAnyStock_R.FormDestroy(Sender: TObject);
begin
   AnyStock:=nil;
end;

procedure TAnyStock_R.Button1Click(Sender: TObject);
var year,month,day:word;
    KCRK,KCRKS,KCLL,KCLLS:string;
    KCCLMONTHSQL:String;
begin
  if CBX1.text='' then
  begin
    showmessage('Pls select  warehouse first.');
    abort;
  end;
  decodedate(DTP1.Date,Year,Month,Day);
  aamonth:=floattostr(month);
  if length(aamonth)=1 then
    aamonth:='0'+aamonth;
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;

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

  KCRK:='KCRK with (nolock) ';
  KCRKS:='KCRKS with (nolock) ';
  KCLL:='KCLL with (nolock) ';
  KCLLS:='KCLLS with (nolock) ';
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('if object_id(''tempdb..#CLZLKC'') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');
    sql.Add(' select KCZLS.CKBH,KCZLS.CLBH as CLDH,sum(RunTemp.LastRem) as LastRem,sum(RunTemp.RKQty) as RKQty,sum(RunTemp.LLQty) as LLQty,sum(RunTemp.JGRK) as JGRK ');
    sql.Add('		    ,sum(RunTemp.JGCK) as JGCK,sum(RunTemp.JGCKTemp) as JGCKTemp,HGLB into #CLZLKC  ');
    sql.Add('from KCZLS with (nolock) ');
    sql.add('Left join ( ');
    sql.Add('     select * from (');
    sql.add('     Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as LastRem ,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCCLMONTH.HGLB ');
    sql.add('     from KCCLMONTH_HG as KCCLMONTH   with (nolock) ');
    sql.add('     where KCCLMONTH.KCYEAR='''+ayear+''' ');
    sql.add('           and KCMONTH='''+amonth+'''');
    sql.add('           and KCCLMONTH.CLBH like '''+edit1.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCCLMONTH.HGLB<>''XT'' ');
    if CBX1.text<>'ALL' then
       sql.Add('        and KCCLMONTH.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('        and KCCLMONTH.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');
    sql.Add('      Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH ,KCCLMONTH.HGLB ');
    sql.add('      ) LastKC   ');
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.Add('     select KCRK.CKBH,KCRKS.CLBH,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCRK.HGLB ');
    sql.Add('				    from '+KCRKS+' ');
    sql.add('           left join '+KCRK+'  on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCRKS.CLBH like '''+edit1.Text+'%'+'''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCRK.HGLB<>''XT'' ');
    if CBX1.text<>'ALL' then
       sql.Add('           and KCRK.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('           and KCRK.CKBH in '+temp.fieldbyname('CKBH').Value+' ');
    sql.add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB) RK ');
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.add('     select KCLL.CKBH,KCLLS.CLBH,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCLLS.HGLB ');
    sql.add(' 				  from '+KCLLS+'  ');
    sql.add('           left join '+KCLL+'   on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and KCLLS.CLBH like '''+edit1.Text+'%'' ');
    sql.add('           and KCLL.CFMID<>''NO''');
    if IsHide_Warehouse_XT='Y' then
    sql.add('           and KCLLS.HGLB<>''XT'' ');
    sql.add('           and KCLL.SCBH<>''JJJJJJJJJJ''');
    if CBX1.text<>'ALL' then
       sql.Add('           and KCLL.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('           and KCLL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');

    sql.add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) LL ');
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.add('     select JGZL.CKBH,JGZLS.CLBH,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK,0 as JGCKTemp,''GC'' as HGLB from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and JGZLS.CLBH like '''+edit1.Text+'%'' ');
    sql.add('           and JGZL.CFMID1 <>''NO'' ');
    sql.add('           and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
    if CBX1.text<>'ALL' then
       sql.Add('           and JGZL.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('           and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');

    sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK ');
    sql.add('  union all');
    sql.Add('     select * from (');
    sql.add('     select JGZL.CKBH,JGZLS.ZMLB,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK,0 as JGCKTemp ');
    sql.Add(' 					,''GC'' as HGLB from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('                      and JGZL.CFMID1 <>''NO''');
    sql.add('                      and JGZLS.ZMLB='''+'ZZZZZZZZZZ'+'''');
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    if CBX1.text<>'ALL' then
       sql.Add('                   and JGZL.CKBH='''+CBX1.Text+'''')
    else
       sql.Add('                   and JGZL.CKBH in '+Temp.fieldbyname('CKBH').Value+' ');

    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    sql.add('           and JGZLS.ZMLB like '''+edit1.Text+'%''');
    sql.add('           and JGZL.CFMID1 <>''NO'' ');
    sql.add('           and JGZLS.ZMLB<>''ZZZZZZZZZZ'' ');
    if CBX1.text<>'ALL' then
       sql.Add('        and JGZL.CKBH='+''''+CBX1.Text+'''')
    else
       sql.Add('        and JGZL.CKBH in '+temp.fieldbyname('CKBH').Value+' ');

    sql.add('        group by JGZL.CKBH,JGZLS.ZMLB ');
    sql.Add('        union all');
    sql.Add('        select KCLL.CKBH,KCLLS.CLBH,0 as LastRem,0 as RKQty,0 as LLQty ,0 as JGRK,sum(KCLLS.Qty) as JGCK,0 as JGCKTemp,KCLLS.HGLB ');
    sql.Add('				        from KCLLS ');
    sql.add('        left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('        where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('        '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('        and KCLL.SCBH = ''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''');
    sql.add('        and KCLLS.CLBH like '''+edit1.Text+'%'' ');
    if CBX1.text<>'ALL' then
      sql.Add('        and KCLL.CKBH='''+CBX1.Text+'''')
    else
      sql.Add('        and KCLL.CKBH in '+temp.fieldbyname('ckbh').Value+' ');

    if IsHide_Warehouse_XT='Y' then
    sql.add('         and KCLLS.HGLB<>''XT'' ');
    sql.add('         group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB');
    sql.add('        ) JGCK ');
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

    sql.add('           group by JGZL.CKBH,JGZLS.ZMLB ) JGCKTemp ');
    sql.Add(' ) RunTemp on KCZLS.CKBH = RunTemp.CKBH and KCZLS.CLBH =RunTemp.CLBH  ');
    sql.Add(' where RunTemp.LastRem<>0 or RunTemp.RKQty<>0 or RunTemp.LLQty<>0 or RunTemp.JGRK<>0 or RunTemp.JGCK <> 0 or RunTemp.JGCKTemp<>0 ');
    sql.Add(' group by KCZLS.CKBH,KCZLS.CLBH,RunTemp.HGLB ');

    SQL.Add('  select #CLZLKC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,  ');
    SQL.Add('         isnull(Round(#CLZLKC.LastRem,4),0)+isnull(Round(#CLZLKC.RKQty,4),0)-isnull(Round(#CLZLKC.LLQty,4),0)+isnull(Round(#CLZLKC.JGRK,4),0)-isnull(Round(#CLZLKC.JGCK,4),0) as QtyTotal  ');
    SQL.Add('  	   ,KCCLMONTH_R.*  ');
    SQL.Add('  from #CLZLKC    ');
    SQL.Add('  left join CLZL on CLZL.CLDH=#CLZLKC.CLDH  ');
    SQL.Add('  left join  KCZLS on KCZLS.CLBH=#CLZLKC.CLDH  and KCZLS.CKBH=#CLZLKC.CKBH   ');
    SQL.Add('  left join  KCCLMONTH_R on KCZLS.CLBH=KCCLMONTH_R.CLBH  and #CLZLKC.CKBH=#CLZLKC.CKBH   ');
    SQL.Add('  where  ');
    SQL.Add('   not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null   ');
    SQL.Add('                 and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null and #CLZLKC.JGCKTemp is null)   ');
    SQL.Add('   and KCZLS.CKBH=''VTXW''   ');
    SQL.Add('  and #CLZLKC.CLDH like '''+edit1.Text+'%'' ');
    SQL.Add('  and CLZL.YWPM like ''%%''  ');
    SQL.Add('  and CLZL.YWPM like ''%%''  ');
    SQL.Add('  order by #CLZLKC.CLDH    ');
    //memo1.Text:=sql.Text;
    Active:=true;
  end;
end;

procedure TAnyStock_R.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  dbgrid1.columns[9].ButtonStyle:=cbsEllipsis;
end;

procedure TAnyStock_R.Modify2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  dbgrid1.columns[11].ButtonStyle:=cbsEllipsis;
  dbgrid1.columns[9].ButtonStyle:=cbsEllipsis;
  dbgrid1.columns[10].ButtonStyle:=cbsEllipsis;
end;

procedure TAnyStock_R.Save1Click(Sender: TObject);
var
  i: integer;
  a: string;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          with temp do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT CLBH,CKBH from KCCLMONTH_R where CLBH  = '''+Query1.FieldByName('CLDH').AsString+'''');
            Active := true;
          end;
          if temp.RecordCount>0 then
          begin
            Query1.Edit;
            if (Query1.FieldByName('TemQty').value<>0) and (Query1.FieldByName('LastRem').value<>0) then
            begin
              Query1.FieldByName('PurQty').value:=Query1.FieldByName('LastRem').value-Query1.FieldByName('TemQty').value;
            end else
            if (Query1.FieldByName('LastRem').value=0) then
            begin
              Query1.FieldByName('PurQty').value:=Query1.FieldByName('TemQty').value;
            end;
            Query1.FieldByName('LastQty').Value:=Query1.FieldByName('LastRem').Value;
            Query1.FieldByName('Qty').Value:=Query1.FieldByName('QtyTotal').Value;
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := NDate;
            UpMas.Apply(ukModify);
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('CLBH').Value:=Query1.FieldByName('CLDH').Value;
            Query1.FieldByName('CKBH').Value:=Query1.FieldByName('CKBH').Value;
            Query1.FieldByName('Qty').Value:=Query1.FieldByName('QtyTotal').Value;
            if (Query1.FieldByName('TemQty').value<>0) and (Query1.FieldByName('LastRem').value<>0) then
            begin
              Query1.FieldByName('PurQty').value:=Query1.FieldByName('LastRem').value-Query1.FieldByName('TemQty').value;
            end else
            if (Query1.FieldByName('LastRem').value=0) then
            begin
              Query1.FieldByName('PurQty').value:=Query1.FieldByName('TemQty').value;
            end;
            Query1.FieldByName('LastQty').Value:=Query1.FieldByName('LastRem').Value;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            UpMas.Apply(ukInsert);
          end;
        end;
      end;

      Query1.Next;
    end;
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    dbgrid1.columns[11].ButtonStyle:=cbsNone;
    dbgrid1.columns[9].ButtonStyle:=cbsNone;
    dbgrid1.columns[10].ButtonStyle:=cbsNone;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;

end;

procedure TAnyStock_R.DBGrid1EditButtonClick(Sender: TObject);
begin
    AnyStockRPrice:=TAnyStockRPrice.Create(self);
    AnyStockRPrice.Show();
end;

procedure TAnyStock_R.Query1CalcFields(DataSet: TDataSet);
begin
  with Query1 do
  begin
    if (FieldByName('QtyTotal').value<>0) and (FieldByName('TemQty').value<>0) then
    begin
      FieldByName('PurQty').value:=FieldByName('QtyTotal').value-FieldByName('TemQty').value;
    end;
  end;
end;

procedure TAnyStock_R.Cance1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  dbgrid1.columns[11].ButtonStyle:=cbsNone;
  dbgrid1.columns[9].ButtonStyle:=cbsNone;
  dbgrid1.columns[10].ButtonStyle:=cbsNone;
end;

procedure TAnyStock_R.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
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
    for i:=0 to DBGrid1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGrid1.Columns.Count-1 do
      begin
        eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      Query1.Next;
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

end.
