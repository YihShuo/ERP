unit DetailInVNO_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Comobj, Grids, DBGrids, Menus, DB, DBTables, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDetailInVNO_Det = class(TForm)
    Query1: TQuery;
    Query1LLNO: TStringField;
    Query1CLBH: TStringField;
    Query1SCBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1TempQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1DFL: TStringField;
    Query1Person: TFloatField;
    Query1CKBH: TStringField;
    Query1BLSB: TStringField;
    Query1MEMO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1MJBH: TStringField;
    Query1DType: TStringField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Query1CNO: TStringField;
    Query1NK: TCurrencyField;
    Query1ND: TCurrencyField;
    Query1KD: TCurrencyField;
    Query1XT: TCurrencyField;
    Query1GC: TCurrencyField;
    Query1ZZ: TCurrencyField;
    Query1RKQty: TFloatField;
    Query2: TQuery;
    DS2: TDataSource;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query2RKNO: TStringField;
    Query2CKBH: TStringField;
    Query2SFL: TStringField;
    Query2CLBH: TStringField;
    Query2RKSB: TStringField;
    Query2CGBH: TStringField;
    Query2Qty: TCurrencyField;
    Query2NK: TCurrencyField;
    Query2HD: TCurrencyField;
    Query2KD: TCurrencyField;
    Query2XT: TCurrencyField;
    Query2GC: TCurrencyField;
    Query2ZZ: TCurrencyField;
    Query2GSBH: TStringField;
    Query1RateC: TFloatField;
    Query1TC: TCurrencyField;
    Query2TC: TCurrencyField;
    Query1LLMemo: TStringField;
    Query1NK1: TCurrencyField;
    Query1TC1: TCurrencyField;
    Query1HD1: TCurrencyField;
    Query1KD1: TCurrencyField;
    Query1H11: TCurrencyField;
    Query2NK1: TCurrencyField;
    Query2TC1: TCurrencyField;
    Query2HD1: TCurrencyField;
    Query2KD1: TCurrencyField;
    Query2H11: TCurrencyField;
    Query1NQ: TCurrencyField;
    Query2NQ: TCurrencyField;
    Query1NKNQ: TCurrencyField;
    Query2NKNQ: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    ZLBH:string;
    CLBH:string;
    MJBH:string;
    DType:string;
    GSBH:string;
    { Public declarations }
    procedure ShowDetail();
  end;

var
  DetailInVNO_Det: TDetailInVNO_Det;

implementation
  uses DetailInVNo1, main1, FunUnit;
{$R *.dfm}
procedure TDetailInVNO_Det.ShowDetail();
begin
   with Query1 do
   begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLLS.LLNo,KCLLS.CLBH,KCLLS.DFL,KCLLS.CLSL,KCLLS.SCBH,KCLLS.TempQty,KCLLS.Qty,KCLLS.MEMO,KCLLS.LLMemo,KCLLS.BLSB,KCLLS.USERID,KCLLS.USERDATE');
    SQL.Add('       ,KCLLS.YYBH,SCBLYY.YWSM,KCLL.CKBH,KCLLS.CLBH as MJBH,Case when len(KCRKCX.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
    SQL.Add('       KCRKCX.CNO,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.TC,0) as TC,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC,');
    SQL.Add('       (KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.TC,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0)) ');
    SQL.Add('                 -IsNull(KCRKCX.NK1,0)-IsNull(KCRKCX.TC1,0)-IsNull(KCRKCX.HD1,0)-IsNull(KCRKCX.KD1,0)-IsNull(KCRKCX.H11,0)-IsNull(KCRKCX.NQ,0)-IsNull(KCRKCX.NKNQ,0) as ZZ,KCLL.CFMID,KCLL.CFMDate,RateC,');
    SQL.Add('       IsNull(KCRKCX.NK1,0) as NK1,IsNull(KCRKCX.TC1,0) as TC1,IsNull(KCRKCX.HD1,0) as HD1,IsNull(KCRKCX.KD1,0) as KD1,IsNull(KCRKCX.H11,0) as H11,IsNull(KCRKCX.NQ,0) as NQ,IsNull(KCRKCX.NKNQ,0) as NKNQ ');
    SQL.Add('from KCLLS');
    SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('left join (');
    SQL.Add('           select LLNO,CLBH,SCBH,DFL,Max(CNO) as CNO,Sum(KCRKCX.RKQty) as RKQty,');
    SQL.Add('                  Sum(IsNull(KCRKCX.NK,0)) as NK,Sum(IsNull(KCRKCX.TC,0)) as TC,Sum(IsNull(KCRKCX.HD,0)) as HD,Sum(IsNull(KCRKCX.KD,0)) as KD,Sum(IsNull(KCRKCX.XT,0)) as XT,Sum(IsNull(KCRKCX.GC,0)) as GC,Sum(IsNull(KCRKCX.ZZ,0)) as ZZ,RateC, ');
    SQL.Add('                  Sum(IsNull(KCRKCX.NK1,0)) as NK1,Sum(IsNull(KCRKCX.TC1,0)) as TC1,Sum(IsNull(KCRKCX.HD1,0)) as HD1,Sum(IsNull(KCRKCX.KD1,0)) as KD1,Sum(IsNull(KCRKCX.H11,0)) as H11,Sum(IsNull(KCRKCX.NQ,0)) as NQ,Sum(IsNull(KCRKCX.NKNQ,0)) as NKNQ ');
    SQL.Add('           from (');
    SQL.Add('           select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
    SQL.Add('                   Max(KCLLS.CNO) as CNO,Sum(KCLLS.Qty) as RKQty, ');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC, ');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
    sql.Add('                   Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''NK1'' then Qty else 0 end ) as NK1, ');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''TC1'' then Qty else 0 end ) as TC1, ');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''HD1'' then Qty else 0 end ) as HD1,');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''KD1'' then Qty else 0 end ) as KD1, ');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''H11'' then Qty else 0 end ) as H11,');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''NQ'' then Qty else 0 end ) as NQ,');
    SQL.Add('                   Sum(Case when KCLLS.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ,');
    sql.Add('                   case when KCLLS.HGLB = ''NK'' then CLHG.RateC when KCLLS.HGLB=''TC'' then CLTC.RateC  when KCLLS.HGLB=''HD'' then CLHD.RateC when KCLLS.HGLB=''KD'' then CLKD.RateC  ');
    sql.Add('                        when KCLLS.HGLB = ''NK1'' then CLHG1.RateC when KCLLS.HGLB=''TC1'' then CLTC1.RateC  when KCLLS.HGLB=''HD1'' then CLHD1.RateC when KCLLS.HGLB=''KD1'' then CLKD1.RateC ');
    sql.Add('                        when KCLLS.HGLB =''NQ'' then CLNQ.RateC when KCLLS.HGLB =''NKNQ'' then CLNKNQ.RateC else NULL end as RateC');
    SQL.Add('           from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    SQL.Add('           left join CLHG on CLHG.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLHD on CLHD.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLTC on CLTC.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLKD on CLKD.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLHG1 on CLHG1.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLHD1 on CLHD1.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLTC1 on CLTC1.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLKD1 on CLKD1.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLNQ on CLNQ.CLBH=KCLLS.CLBH ');
    SQL.Add('           left join CLNKNQ on CLNKNQ.CLBH=KCLLS.CLBH ');
    SQL.Add('           where  KCLLS.CLBH = '''+CLBH+'''');
    SQL.Add('           and KCLLS.SCBH = '''+ZLBH+''' ');
    SQL.Add('           and KCLL.GSBH='''+GSBH+''' and KCLL.CFMID<>''NO''  ');
    SQL.Add('           group by KCLLS.LLNO,KCLLS.SCBH,KCLLS.DFL, KCLLS.CLBH,KCLLS.HGLB,CLHG.RateC,CLHD.RateC,CLTC.RateC,CLKD.RateC,CLHG1.RateC,CLHD1.RateC,CLTC1.RateC,CLKD1.RateC,CLNQ.RateC,CLNKNQ.RateC');
    SQL.Add('           ) KCRKCX ');
    SQL.Add('           Group by LLNO,CLBH,SCBH,DFL,CNO,RateC ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.SCBH=KCLLS.SCBH and KCRKCX.DFL=KCLLS.DFL ');
    SQL.Add('where KCLLS.SCBH='''+ZLBH+''' ');
    SQL.Add('      and KCLLS.CLBH='''+CLBH+'''');
    SQL.Add('      and KCLL.GSBH='''+GSBH+'''  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
   end;
   //20201127  顯示退庫數量
   with Query2 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select KCRK.RKNO,KCRK.CKBH,KCRK.SFL,KCRKS.CLBH,KCRKS.RKSB,KCRKS.CGBH,KCRKS.Qty,');
     SQL.Add('       Case when KCRK.HGLB=''NK'' then Qty else 0 end  as NK,');
     SQL.Add('       Case when KCRK.HGLB=''TC'' then Qty else 0 end  as TC,');
     SQL.Add('       Case when KCRK.HGLB=''HD'' then Qty else 0 end  as HD,');
     SQL.Add('       Case when KCRK.HGLB=''KD'' then Qty else 0 end  as KD,');
     SQL.Add('       Case when KCRK.HGLB=''XT'' then Qty else 0 end  as XT,');
     SQL.Add('       Case when KCRK.HGLB=''GC'' then Qty else 0 end  as GC,');
     SQL.Add('       Case when KCRK.HGLB=''ZZZZ'' then Qty else 0 end  as ZZ');
     SQL.Add('       ,KCRKS.GSBH,');
     SQL.Add('       Case when KCRK.HGLB=''NK1'' then Qty else 0 end  as NK1,');
     SQL.Add('       Case when KCRK.HGLB=''TC1'' then Qty else 0 end  as TC1,');
     SQL.Add('       Case when KCRK.HGLB=''HD1'' then Qty else 0 end  as HD1,');
     SQL.Add('       Case when KCRK.HGLB=''KD1'' then Qty else 0 end  as KD1,');
     SQL.Add('       Case when KCRK.HGLB=''H11'' then Qty else 0 end  as H11,');
     SQL.Add('       Case when KCRK.HGLB=''NQ'' then Qty else 0 end  as NQ,');
     SQL.Add('       Case when KCRK.HGLB=''NKNQ'' then Qty else 0 end  as NKNQ');
     SQL.Add('from KCRK');
     SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
     SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH='''+ZLBH+''' and KCRKS.GSBH='''+GSBH+''' ');
     SQL.Add('and KCRKS.CLBH = '''+CLBH+''' ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;
//
procedure TDetailInVNO_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TDetailInVNO_Det.FormDestroy(Sender: TObject);
begin
  DetailInVNO_Det:=nil;
end;

procedure TDetailInVNO_Det.Excel1Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
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
    for  i:=1  to  query1.fieldcount   do
    begin
      if DetailInVNo.IsHide_Warehouse_XT='Y' then
      begin
        if (query1.fields[i-1].FieldName<>'XT') and (query1.fields[i-1].FieldName<>'ZZ') then
          eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
      end else
      begin
        eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
      end;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
      begin
        if DetailInVNo.IsHide_Warehouse_XT='Y' then
        begin
          if (query1.fields[i-1].FieldName<>'XT') and (query1.fields[i-1].FieldName<>'ZZ') then
             eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
        end else
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
        end;
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
