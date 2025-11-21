unit PurOther_safe1;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateUtils,
  GridsEh, DBGridEh;

type
  TPurOther_safe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1MinQty: TCurrencyField;
    Query1MaxQty: TCurrencyField;
    Query1BLQty: TCurrencyField;
    Query1KCQty: TCurrencyField;
    Query1CKBH: TStringField;
    QueryBJ: TQuery;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurOther_safe: TPurOther_safe;

implementation

uses FunUnit,PurOther1, PurTotal1, main1;

{$R *.dfm}

procedure TPurOther_safe.Button1Click(Sender: TObject);
var 
  // year,month,day:word;
   ayear,amonth:string;
begin   //找庫存相關的數據
ayear:=floattostr(yearof(incMonth(date,-1)));
amonth:=floattostr(monthof(incMonth(date,-1)));
if length(floattostr(monthof(incMonth(date,-1))))=1 then
  amonth:='0'+amonth;

with query1 do
  begin
    active:=true;
    sql.clear;
    sql.Add('select KCSAFE.CKBH,KCSAFE.CLBH,CLZL.YWPM,CLZL.DWBH,KCSAFE.MinQty,KCSAFE.MaxQty,KCSAFE.BLQty,');
    sql.add('(isnull(LastKC.LastRem,0)+isnull(RK.RKQty,0)-isnull(LL.LLQty,0)+isnull(JGRK.JGRK,0)-isnull(JGCK.JGCK,0)) as KCQty ');
    sql.add('from KCSAFE  ');

    sql.add(' left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
    sql.add(' from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add(' and KCMONTH='+''''+amonth+'''');
    sql.add(' and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCCLMONTH.CLBH)) LastKC ');
    sql.add(' on LastKC.CLBH=KCSAFE.CLBH and LastKC.CKBH=KCSAFE.CKBH');

    sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between') ;
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCRKS.CLBH) ');
    sql.add(' group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCSAFE.CLBH and RK.CKBH=KCSAFE.CKBH ');

    sql.add(' left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add(' left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between')   ;
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add(' and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCLLS.CLBH)');
    sql.add(' group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCSAFE.CLBH and LL.CKBH=KCSAFE.CKBH');

    sql.add(' left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
    sql.add(' left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add(' and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add(' and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.CLBH )');
    sql.add(' group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCSAFE.CLBH and JGRK.CKBH=KCSAFE.CKBH');

    sql.add(' left join (select JGZL.CKBH,JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK from JGZLS');
    sql.add(' left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add(' left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add(' left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add(' and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add(') JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add(' and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add(' and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');  
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.ZMLB )');
    sql.add(' group by JGZL.CKBH,JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCSAFE.CLBH and JGCK.CKBH=KCSAFE.CKBH');

    sql.add(' left join CLZL on CLZL.CLDH=KCSAFE.CLBH ');
    sql.add(' left join KCCK on KCCK.CKBH=KCSAFE.CKBH ');
    sql.add(' where KCSAFE.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add(' and KCCK.GSBH='+''''+main.Edit2.Text+'''');
    sql.add(' order by KCSAFE.CLBH ');
    active:=true;
  end;
end;

procedure TPurOther_safe.FormDestroy(Sender: TObject);
begin
  PurOther_safe:=nil;
end;

procedure TPurOther_safe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TPurOther_safe.DBGridEh1DblClick(Sender: TObject);
var m,n:double;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with PurTotal.CGDet do
  begin
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if query1.fieldbyname('KCQty').value>query1.fieldbyname('MaxQty').value then
    begin
        fieldbyname('XqQty').value:=0;
    end else
    begin
          m:= query1.fieldbyname('MaxQty').value-query1.fieldbyname('KCQty').value;
          n:=m div query1.fieldbyname('BLQty').value;
         // showmessage(floattostr(m)+'     '+floattostr(n));
          fieldbyname('XqQty').value:=trunc(query1.fieldbyname('BLQty').value*n*10+0.5)/10;
          fieldbyname('Qty').value:=fieldbyname('XqQty').value;
    end;
    //20150505 報價Price帶入
    QueryBJ.Active:=false;
    QueryBJ.SQL.Clear;
    QueryBJ.SQL.Add('Select  top 1 CGBJS.BJNO,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,CGBJS.USERDate from CGBJS ');
    QueryBJ.SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO ');
    QueryBJ.SQL.Add('where CGBJ.GSBH='''+main.Edit2.Text+'''  and CLBH='''+PurTotal.CGDet.fieldbyname('CLBH').AsString+'''  and CGBJ.ZSBH='''+PurOther.CGMas.FieldByName('ZSBH').AsString +''' ');
    QueryBJ.SQL.Add('order by CGBJS.BJNO desc,CGBJS.CLBH ');
    QueryBJ.Active:=true;
    if QueryBJ.RecordCount>0 then
    begin
      fieldbyname('BJNO').value:=QueryBJ.Fieldbyname('BJNO').value;
      fieldbyname('USPrice').value:=QueryBJ.Fieldbyname('USPrice').value;
      fieldbyname('VNPrice').value:=QueryBJ.Fieldbyname('VNPrice').value;
    end;
    QueryBJ.Active:=false;
    //    
    insert;
  end;
  showmessage('Succeed');
end;

procedure TPurOther_safe.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('KCQty').value>query1.FieldByName('MaxQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if query1.FieldByName('KCQty').value<query1.FieldByName('MinQty').value then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurOther_safe.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   DBGridEh1DblClick(nil);
end;

procedure TPurOther_safe.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
