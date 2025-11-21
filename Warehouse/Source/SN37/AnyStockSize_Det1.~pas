unit AnyStockSize_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DateUtils, Menus, Comobj;

type
  TAnyStockSize_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowKCLLS_JGCK();
    procedure ShowKCLLS_LLQty();
    procedure ShowKCRKS_RKQty();
    procedure ShowJGZLS_JGRK();
  end;

var
  AnyStockSize_Det: TAnyStockSize_Det;

implementation
   uses AnyStock1, FunUnit;
{$R *.dfm}

procedure TAnyStockSize_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;
//
procedure TAnyStockSize_Det.ShowKCLLS_LLQty();
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCLL.GSBH,KCLL.CKBH,KCLL.LLNO,KCLLS.CLBH,KCLLS.HGLB,KCLLS.SCBH,Case when CLZL.lycc=''N'' then ''ZZZZZZ'' else IsNull(KCLLSS.SIZE,''ZZZZZZ'') end as SIZE, IsNull(KCLLSS.Qty,KCLLS.Qty)  as Qty,KCLL.CFMDATE ');
    SQL.Add('from KCLLS ');
    SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
    SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('where Convert(smalldatetime,Convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('	 and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and KCLL.CKBH='''+AnyStock.Query2.FieldByName('CKBH').AsString+''' ');
    SQL.Add('	 and KCLLS.CLBH='''+AnyStock.Query2.FieldByName('CLBH').AsString+''' ');
    SQL.Add('  and IsNull(KCLLSS.SIZE,''ZZZZZZ'')='''+AnyStock.Query2.FieldByName('SIZE').AsString+''' ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  DBGridEh1.columns[0].width:=40;  //GSBH
  DBGridEh1.columns[1].width:=40;  //CKBH
  DBGridEh1.columns[2].width:=60;  //LLNO
  DBGridEh1.columns[3].width:=80;  //CLBH
  DBGridEh1.columns[4].width:=40;  //HGLB
  DBGridEh1.columns[5].width:=40;  //SCBH
  DBGridEh1.columns[6].width:=80;  //SIZE
  DBGridEh1.columns[7].width:=40;  //Qty
  DBGrideh1.columns[7].displayformat:='##,#0.000';
  DBGridEh1.columns[8].width:=60;  //CFMDATE
  DBGridEh1.columns[8].Displayformat:='yyyy/MM/dd';
  //
  DBGridEh1.Columns[7].Footer.FieldName:='Qty';
  DBGridEh1.Columns[7].Footer.ValueType:=fvtSum;
end;
//
procedure TAnyStockSize_Det.ShowKCRKS_RKQty();
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCRK.GSBH,KCRK.CKBH,KCRK.RKNO,KCRKS.CLBH,KCRK.HGLB,KCRKS.CGBH,IsNull(KCRKSS.SIZE,''ZZZZZZ'') as SIZE, IsNull(KCRKSS.Qty,KCRKS.Qty) as Qty,KCRK.UserDate ');
    SQL.Add('from KCRKS');
    SQL.Add('left join KCRKSS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS.CLBH and KCRKS.CGBH=KCRKSS.CGBH and KCRKS.RKSB=KCRKSS.RKSB ');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('	     and KCRK.CKBH='''+AnyStock.Query2.FieldByName('CKBH').AsString+''' ');
    SQL.Add('	     and KCRKS.CLBH='''+AnyStock.Query2.FieldByName('CLBH').AsString+''' ');
    SQL.Add('      and IsNull(KCRKSS.SIZE,''ZZZZZZ'')='''+AnyStock.Query2.FieldByName('SIZE').AsString+''' ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  DBGridEh1.columns[0].width:=40;  //GSBH
  DBGridEh1.columns[1].width:=40;  //CKBH
  DBGridEh1.columns[2].width:=60;  //RKNO
  DBGridEh1.columns[3].width:=80;  //CLBH
  DBGridEh1.columns[4].width:=40;  //HGLB
  DBGridEh1.columns[5].width:=40;  //CGBH
  DBGridEh1.columns[6].width:=80;  //SIZE
  DBGridEh1.columns[7].width:=40;  //Qty
  DBGrideh1.columns[7].displayformat:='##,#0.000';
  DBGridEh1.columns[8].width:=60;  //CFMDATE
  DBGridEh1.columns[8].Displayformat:='yyyy/MM/dd';
  //
  DBGridEh1.Columns[7].Footer.FieldName:='Qty';
  DBGridEh1.Columns[7].Footer.ValueType:=fvtSum;
end;
procedure TAnyStockSize_Det.ShowKCLLS_JGCK();
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCLL.GSBH,KCLL.CKBH,KCLL.LLNO,KCLLS.CLBH,KCLLS.HGLB,KCLLS.SCBH,Case when CLZL.lycc=''N'' then ''ZZZZZZ'' else IsNull(KCLLSS.SIZE,''ZZZZZZ'') end as SIZE, IsNull(KCLLSS.Qty,KCLLS.Qty)  as Qty,KCLL.CFMDATE ');
    SQL.Add('from KCLLS ');
    SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
    SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('where Convert(smalldatetime,Convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('	 and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and KCLL.CKBH='''+AnyStock.Query2.FieldByName('CKBH').AsString+''' ');
    SQL.Add('	 and KCLLS.CLBH='''+AnyStock.Query2.FieldByName('CLBH').AsString+''' ');
    SQL.Add('  and IsNull(KCLLSS.SIZE,''ZZZZZZ'')='''+AnyStock.Query2.FieldByName('SIZE').AsString+''' ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  DBGridEh1.columns[0].width:=40;  //GSBH
  DBGridEh1.columns[1].width:=40;  //CKBH
  DBGridEh1.columns[2].width:=60;  //LLNO
  DBGridEh1.columns[3].width:=80;  //CLBH
  DBGridEh1.columns[4].width:=40;  //HGLB
  DBGridEh1.columns[5].width:=40;  //SCBH
  DBGridEh1.columns[6].width:=80;  //SIZE
  DBGridEh1.columns[7].width:=40;  //Qty
  DBGrideh1.columns[7].displayformat:='##,#0.000';
  DBGridEh1.columns[8].width:=60;  //CFMDATE
  DBGridEh1.columns[8].Displayformat:='yyyy/MM/dd';
  //
  DBGridEh1.Columns[7].Footer.FieldName:='Qty';
  DBGridEh1.Columns[7].Footer.ValueType:=fvtSum;
  //
end;

procedure TAnyStockSize_Det.ShowJGZLS_JGRK();
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select JGZL.GSBH,JGZL.CKBH,JGZL.JGNO,JGZLS.CLBH,''GC'' as HGLB,''ZZZZZZ'' as SIZE,(IsNull(JGZLSS.Qty,JGZLS.Qty))as Qty,JGZL.CFMDate1');
    SQL.Add('from JGZLS');
    SQL.Add('left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH');
    SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('	  and JGZL.CFMID1<>''NO''  and JGZL.CKBH='''+AnyStock.Query2.FieldByName('CKBH').AsString+''' ');
    SQL.Add('	  and JGZLS.CLBH='''+AnyStock.Query2.FieldByName('CLBH').AsString+'''  ');
    SQL.Add('	  and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  DBGridEh1.columns[0].width:=40;  //GSBH
  DBGridEh1.columns[1].width:=40;  //CKBH
  DBGridEh1.columns[2].width:=60;  //JGNO
  DBGridEh1.columns[3].width:=80;  //CLBH
  DBGridEh1.columns[4].width:=40;  //HGLB
  DBGridEh1.columns[5].width:=80;  //SIZE
  DBGridEh1.columns[6].width:=40;  //Qty
  DBGrideh1.columns[6].displayformat:='##,#0.000';
  DBGridEh1.columns[7].width:=60;  //CFMDATE
  DBGridEh1.columns[7].Displayformat:='yyyy/MM/dd';
  //
  DBGridEh1.Columns[6].Footer.FieldName:='Qty';
  DBGridEh1.Columns[6].Footer.ValueType:=fvtSum;
end;
//
procedure TAnyStockSize_Det.FormCreate(Sender: TObject);
begin

end;
//

procedure TAnyStockSize_Det.FormDestroy(Sender: TObject);
begin
  AnyStockSize_Det:=nil;
end;

procedure TAnyStockSize_Det.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if Query1.Active then
  begin
    if query1.recordcount=0 then
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
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
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

end.
