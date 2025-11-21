unit WareStock_MDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, Comobj, Menus;

type
  TWareStock_MDet = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1HGLB: TStringField;
    Query1CNO: TStringField;
    Query1LastRem: TFloatField;
    Query1RKQty: TCurrencyField;
    Query1LLQty: TCurrencyField;
    Query1JGRK: TCurrencyField;
    Query1JGCK: TCurrencyField;
    Query1Qty: TFloatField;
    Query1YWPM: TStringField;
    Splitter1: TSplitter;
    Panel1: TPanel;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query3: TQuery;
    DS3: TDataSource;
    Query2CKBH: TStringField;
    Query2HGLB: TStringField;
    Query2RKNO: TStringField;
    Query2CLBH: TStringField;
    Query2CGBH: TStringField;
    Query2RKSB: TStringField;
    Query2CNO: TStringField;
    Query2Qty: TCurrencyField;
    Query2USERDATE: TDateTimeField;
    Query2USERID: TStringField;
    Query3CKBH: TStringField;
    Query3HGLB: TStringField;
    Query3LLNO: TStringField;
    Query3CLBH: TStringField;
    Query3DFL: TStringField;
    Query3SCBH: TStringField;
    Query3CNO: TStringField;
    Query3Qty: TCurrencyField;
    Query3USERDATE: TDateTimeField;
    Query3USERID: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    Query2RKMEMO: TStringField;
    Query3LLMemo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    { Private declarations }
  public
    CLBH:string;
    CKBH:string;
    CNO:string;
    HGLB:string;  
    { Public declarations }
    procedure ShowDet();
    procedure ExportExcel(MasQry:TQuery;DetQry:TQuery);
  end;

var
  WareStock_MDet: TWareStock_MDet;

implementation
  uses WareStock1,FunUnit;
{$R *.dfm}

procedure TWareStock_MDet.ShowDet();
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRK.CKBH,KCRK.CLBH,KCRK.HGLB,case when CNO=''ZZZZ'' then '''' else CNO end as CNO,KCRK.LastRem,KCRK.RKQty,KCRK.LLQty,KCRK.JGRK,KCRK.JGCK,KCRK.Qty,CLZL.YWPM from (');
    SQL.Add('select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,');
    SQL.Add('       Round(isnull(round(Sum(LastRem),2),0)+isnull(round(Sum(RKQty),2),0)-isnull(round(Sum(LLQty),2),0)+isnull(round(Sum(JGRK),2),0)-isnull(round(Sum(JGCK),2),0),2)  as Qty');
    SQL.Add(' from (');
    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CNO,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK');
    SQL.Add('           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR='''+WareStock.sYear+''' ');
    SQL.Add('                                 and KCMONTH='''+WareStock.sMonth+''' and CLBH='''+CLBH+''' and CKBH='''+CKBH+'''  ');
    if CNO<>'' then
       SQL.Add('                              and CNO='''+CNO+''' ')
    else
       SQL.Add('                              and CNO=''ZZZZ'' ');
    SQL.Add('                                 ) LastKC');
    SQL.Add('Union all   ');
    SQL.Add('select * from (');
    SQL.Add('select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or left(KCRK.HGLB,2) not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCRKS.CNO end  as CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+WareStock.sSTDT+'''and '''+WareStock.sEDDT+''' ');
    SQL.Add('           and KCRKS.CLBH='''+CLBH+'''   ');
    SQL.Add('           and KCRK.CKBH='''+CKBH+''' ');
    SQL.Add('           and IsNull(KCRKS.CNO,'''')='''+CNO+''' ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or left(KCRK.HGLB,2) not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCRKS.CNO end ) RK        ');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+''' ');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH='''+CLBH+'''  and KCLL.CKBH='''+CKBH+''' ');
    SQL.Add('           and IsNull(KCLLS.CNO,'''')='''+CNO+''' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end ) LL    ');
    SQL.Add('union all ');
    SQL.Add('select * from (                                         ');
    SQL.Add('select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZ'' as CNO,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                 '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+''' ');
    SQL.Add('                 and JGZL.CFMID1<>''NO'' and JGZLS.CLBH='''+CLBH+''' ');
    SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 and CKBH='''+CKBH+''' ');
    if CNO<>'' then
    SQL.Add('                 and  1=2 ');
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+''' ');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMID<>''NO'' and KCLLS.CLBH='''+CLBH+''' and KCLL.CKBH='''+CKBH+''' ');
    SQL.Add('           and IsNull(KCLLS.CNO,'''')='''+CNO+''' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'')) then ''ZZZZ'' else KCLLS.CNO end ) JGCK');
    SQL.Add(') KCZLS');
    SQL.Add('where 1=1 and CLBH like ''%''  ');
    SQL.Add('Group by CKBH,CLBH,HGLB,CNO ) KCRK');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCRK.CLBH');
    SQL.Add('where 1=1  ');
    if HGLB='ZZ' then
      SQL.Add(' and (HGLB is null or HGLB=''ZZZZ'') ')
    else if HGLB<>'All' then
      SQL.Add(' and (HGLB='''+HGLB+''') ');
    //funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  //
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRK.CKBH,KCRK.HGLB,KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRKS.Qty,KCRK.USERDATE,KCRK.USERID,KCRKS.RKMEMO from KCRKS');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('      '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+'''  ');
    SQL.Add('     and KCRKS.CLBH='''+CLBH+'''   ');
    SQL.Add('     and KCRK.CKBH='''+CKBH+''' ');
    SQL.Add('     and IsNull(KCRKS.CNO,'''')='''+CNO+''' ');
    if HGLB='ZZ' then
      SQL.Add(' and (HGLB is null or HGLB=''ZZZZ'') ')
    else if HGLB<>'All' then
      SQL.Add(' and (HGLB='''+HGLB+''') ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Query3 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLL.CKBH,KCLLS.HGLB,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.CNO,KCLLS.Qty,KCLL.USERDATE,KCLL.USERID,KCLLS.LLMemo from KCLLS ');
    SQL.Add('       left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('       '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+'''  ');
    SQL.Add('       and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 ');
    SQL.Add('       and KCLLS.CLBH='''+CLBH+''' ');
    SQL.Add('       and KCLL.CKBH='''+CKBH+''' ');
    SQL.Add('       and IsNull(KCLLS.CNO,'''')='''+CNO+'''  ');
    if HGLB='ZZ' then
      SQL.Add(' and (HGLB is null or HGLB=''ZZZZ'') ')
    else if HGLB<>'All' then
      SQL.Add(' and (HGLB='''+HGLB+''') ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;
//
procedure TWareStock_MDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TWareStock_MDet.FormDestroy(Sender: TObject);
begin
 WareStock_MDet:=nil;
end;

procedure TWareStock_MDet.ExportExcel(MasQry:TQuery;DetQry:TQuery);
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

procedure TWareStock_MDet.Excel1Click(Sender: TObject);
begin
   ExportExcel(Query1,nil);   
end;

procedure TWareStock_MDet.MenuItem1Click(Sender: TObject);
begin
   ExportExcel(Query2,nil); 
end;

procedure TWareStock_MDet.MenuItem2Click(Sender: TObject);
begin
   ExportExcel(Query3,nil); 
end;

end.
