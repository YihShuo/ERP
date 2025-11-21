unit Deliveraccount_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables,comobj, Menus, StdCtrls, GridsEh,
  DBGridEh;

type
  TDeliveraccount_Detail = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1LLNO: TStringField;
    Query1CLBH: TStringField;
    Query1DFL: TStringField;
    Query1SCBH: TStringField;
    Query1TempQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1CLSL: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1Person: TFloatField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Query1CKBH: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1MEMO: TStringField;
    Query1BLSB: TStringField;
    Query1MJBH: TStringField;
    Query1DType: TStringField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ShowDetail();
  public
    { Public declarations }
  end;

var
  Deliveraccount_Detail: TDeliveraccount_Detail;

implementation
  uses DeliverAccount1,FunUnit, main1;
{$R *.dfm}

procedure TDeliveraccount_Detail.ShowDetail();
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select KCLLS.LLNo,KCLLS.CLBH,KCLLS.DFL,KCLLS.CLSL,KCLLS.SCBH,KCLLS.TempQty,KCLLS.Qty,KCLLS.MEMO,KCLLS.BLSB,KCLLS.USERID,KCLLS.USERDATE');
     SQL.Add('       ,KCLLS.YYBH,SCBLYY.YWSM,KCLL.CKBH,KCLLS.CLBH as MJBH,''Assembly'' as DType,KCLL.CFMID,KCLL.CFMDate ');
     SQL.Add('from KCLLS');
     SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
     SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('where KCLLS.SCBH='''+DeliverAccount.Query1.FieldByName('ZLBH').AsString+''' ');
     SQL.Add('      and KCLLS.CLBH='''+DeliverAccount.Query1.FieldByName('CLBH').AsString+'''');
     SQL.Add('      and KCLLS.CLBH='''+DeliverAccount.Query1.FieldByName('MJBH').AsString+'''');
     SQL.Add('      and ''Assembly''='''+DeliverAccount.Query1.FieldByName('DType').AsString+'''');
     sql.Add('      and KCLL.GSBH='''+DeliverAccount.Query1.FieldByName('GSDH').AsString+''' ');
     if DeliverAccount.cbCfm.Checked=true then
     sql.Add('       and KCLL.CFMID<>''NO'' ');
     //20170824
     sql.Add('      and KCLL.SCBH<>''JJJJJJJJJJ''');
     //
     if DeliverAccount.CB1.ItemIndex=1 then
      sql.Add('       and IsNull(KCLLS.BLSB,''N'')=''N'' ');
     if DeliverAccount.CB1.ItemIndex=2 then
      sql.Add('       and KCLLS.BLSB=''Y'' ');
     SQL.Add('union all');
     SQL.Add('select JGZLSS.JGNO as LLNO,JGZLS.ZMLB as CLBH,null as DFL,(JGZLSS.CLSL*JGZLS.Qty) as CLSL,JGZLSS.ZLBH as SCBH,(JGZLS.Qty*JGZLSS.Qty) as TempQty,(JGZLS.Qty*JGZLSS.Qty) as Qty, ');
     SQL.Add('       JGZLS.MEMO,null as BLSB,JGZLSS.USERID,JGZLSS.USERDATE,null YYSB,null as YWSM,JGZL.CKBH,JGZLS.CLBH as MJBH,''Gia cong'' as DType,JGZL.CFMID1 as CFMID,JGZL.CFMDate1 as CFMDate ');
     SQL.Add('from JGZLS');
     SQL.Add('Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
     SQL.Add('left join JGZL on JGZL.JGNO=JGZLSS.JGNO');
     SQL.Add('Left join DDZL on DDZL.DDBH=JGZLSS.ZLBH');
     SQL.Add('where  JGZLSS.ZLBH = '''+DeliverAccount.Query1.FieldByName('ZLBH').AsString+''' ');
     SQL.Add('    and JGZLS.ZMLB = '''+DeliverAccount.Query1.FieldByName('CLBH').AsString+'''');
     SQL.Add('    and JGZLS.CLBH='''+DeliverAccount.Query1.FieldByName('MJBH').AsString+'''');
     SQL.Add('    and ''Gia cong''='''+DeliverAccount.Query1.FieldByName('DType').AsString+'''');
     SQL.Add('    and JGZL.GSBH='''+DeliverAccount.Query1.FieldByName('GSDH').AsString+'''  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) <''2017/09/01''');
     if DeliverAccount.cbCfm.Checked=true then
     sql.Add('    and JGZL.CFMID1<>''NO'' ');
     //20170824
     SQL.Add('union all');
     SQL.Add('select KCLLS.LLNo,KCLLS.CLBH,KCLLS.DFL,KCLLS.CLSL,KCLLS.SCBH,KCLLS.TempQty,KCLLS.Qty,KCLLS.MEMO,KCLLS.BLSB,KCLLS.USERID,KCLLS.USERDATE');
     SQL.Add('       ,KCLLS.YYBH,SCBLYY.YWSM,KCLL.CKBH,KCLLS.DFL as MJBH,''Gia Cong'' as DType,KCLL.CFMID,KCLL.CFMDate ');
     SQL.Add('from KCLLS');
     SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
     SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('where KCLLS.SCBH='''+DeliverAccount.Query1.FieldByName('ZLBH').AsString+''' ');
     SQL.Add('      and KCLLS.CLBH='''+DeliverAccount.Query1.FieldByName('CLBH').AsString+'''');
     SQL.Add('      and KCLLS.DFL='''+DeliverAccount.Query1.FieldByName('MJBH').AsString+'''');
     SQL.Add('      and ''Gia Cong''='''+DeliverAccount.Query1.FieldByName('DType').AsString+'''');
     sql.Add('      and KCLL.GSBH='''+DeliverAccount.Query1.FieldByName('GSDH').AsString+'''  and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01'' ');
     if DeliverAccount.cbCfm.Checked=true then
     sql.Add('      and KCLL.CFMID<>''NO'' ');
     //20170824
     sql.Add('      and KCLL.SCBH=''JJJJJJJJJJ''');
     //
     if DeliverAccount.CB1.ItemIndex=1 then
      sql.Add('       and IsNull(KCLLS.BLSB,''N'')=''N'' ');
     if DeliverAccount.CB1.ItemIndex=2 then
      sql.Add('       and KCLLS.BLSB=''Y'' ');
     funcObj.WriteErrorLog(sql.Text);
     //
     Active:=true;
   end;
end;

procedure TDeliveraccount_Detail.FormCreate(Sender: TObject);
begin
  ShowDetail();
end;

procedure TDeliveraccount_Detail.Query1CalcFields(DataSet: TDataSet);
begin
  if query1.FieldByName('CLSL').value<>0 then
  begin
    query1.FieldByName('Person').value:=query1.FieldByName('Qty').value/query1.FieldByName('CLSL').value*100;
  end;
end;

procedure TDeliveraccount_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.Active:=false;
  free;
end;

procedure TDeliveraccount_Detail.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
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

procedure TDeliveraccount_Detail.FormDestroy(Sender: TObject);
begin
  Deliveraccount_Detail:=nil;
end;

procedure TDeliveraccount_Detail.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
