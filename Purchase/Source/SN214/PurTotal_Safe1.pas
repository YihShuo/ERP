unit PurTotal_Safe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,
  GridsEh, DBGridEh;

type
  TPurTotal_Safe = class(TForm)
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
    Label3: TLabel;
    CBX1: TComboBox;
    Query2: TQuery;
    Query1ZWPM: TStringField;
    QueryBJ: TQuery;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  PurTotal_Safe: TPurTotal_Safe;

implementation

uses PurTotal1, main1;

{$R *.dfm}

procedure TPurTotal_Safe.Button1Click(Sender: TObject);

  // year,month,day:word;
 var  ayear,amonth:string;
begin
if CBX1.text='' then
  begin
    showmessage('Pls select CKBH first.');
    abort;
  end;


  //找庫存相關的數據
ayear:=floattostr(yearof(incMonth(date,-1)));
amonth:=floattostr(monthof(incMonth(date,-1)));
if length(floattostr(monthof(incMonth(date,-1))))=1 then
  amonth:='0'+amonth;


with query1 do
  begin
    active:=true;
    sql.clear;
    sql.Add('select KCSAFE.CKBH,KCSAFE.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCSAFE.MinQty,KCSAFE.MaxQty,KCSAFE.BLQty,');
    sql.add('(isnull(LastKC.LastRem,0)+isnull(RK.RKQty,0)-isnull(LL.LLQty,0)+isnull(JGRK.JGRK,0)-isnull(JGCK.JGCK,0)) as KCQty ');
    sql.add('from KCSAFE  ');

    sql.add(' left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
    sql.add(' from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add(' and KCMONTH='+''''+amonth+'''');
    sql.add(' and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCCLMONTH.CLBH)) LastKC ');
    sql.add(' on LastKC.CLBH=KCSAFE.CLBH and LastKC.CKBH=KCSAFE.CKBH ');

    sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between') ;
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');    
    sql.add('and KCRK.CKBH='+''''+CBX1.Text+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCRKS.CLBH) ');
    sql.add(' group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCSAFE.CLBH and RK.CKBH=KCSAFE.CKBH');

    sql.add(' left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add(' left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between')   ;
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');  
    sql.add('and KCLL.CKBH='+''''+CBX1.Text+'''');
    sql.add(' and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCLLS.CLBH)');
    sql.add(' group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCSAFE.CLBH and LL.CKBH=KCSAFE.CKBH');

    sql.add(' left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
    sql.add(' left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');  
    sql.add('and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add(' and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add(' and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.CLBH )');
    sql.add(' group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCSAFE.CLBH and JGRK.CKBH=KCSAFE.CKBH');

    sql.add(' left join (select JGZl.CKBH,JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK from JGZLS');
    sql.add(' left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add(' left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('            left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('            where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add('            and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add('            and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('            and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add('            ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add(' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add(' and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');   
    sql.add(' and JGZL.CKBH='+''''+CBX1.Text+'''');
    sql.add(' and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add(' and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');  
    sql.add(' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.ZMLB )');
    sql.add(' group by JGZL.CKBH,JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCSAFE.CLBH and JGCK.CKBH=KCSAFE.CKBH');

    sql.add(' left join CLZL on CLZL.CLDH=KCSAFE.CLBH ');
    sql.add(' left join KCCK on KCCK.CKBH=KCSAFE.CKBH ');
    sql.add(' where KCSAFE.CLBH like '+''''+edit1.Text+'%'+''''); 
    sql.add(' and KCSAFE.CKBH='+''''+CBX1.Text+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+''''); 
    sql.add(' and KCCK.GSBH='+''''+main.Edit2.Text+'''');
    sql.add(' order by KCSAFE.CLBH ');
    active:=true;
  end;
end;

procedure TPurTotal_Safe.FormCreate(Sender: TObject);
var i:integer;
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX1.Items.add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
  end;

end;

procedure TPurTotal_Safe.FormDestroy(Sender: TObject);
begin
  PurTotal_Safe:=nil;
end;

procedure TPurTotal_Safe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=Cafree;
end;

procedure TPurTotal_Safe.DBGridEh1DblClick(Sender: TObject);
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
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if query1.fieldbyname('KCQty').value>query1.fieldbyname('MaxQty').value then
    begin
        fieldbyname('XqQty').value:=0;
    end else
    begin
          m:= query1.fieldbyname('MaxQty').value-query1.fieldbyname('KCQty').value;
          n:=m div query1.fieldbyname('BLQty').value;
         // showmessage(floattostr(m)+'     '+floattostr(n));
          fieldbyname('XqQty').value:=query1.fieldbyname('BLQty').value*n;
          fieldbyname('Qty').value:=fieldbyname('XqQty').value;
    end;
    //20150505 報價Price帶入
    QueryBJ.Active:=false;
    QueryBJ.SQL.Clear;
    QueryBJ.SQL.Add('Select  top 1 CGBJS.BJNO,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,CGBJS.USERDate from CGBJS ');
    QueryBJ.SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO ');
    QueryBJ.SQL.Add('where CGBJ.GSBH='''+main.Edit2.Text+'''  and CLBH='''+PurTotal.CGDet.fieldbyname('CLBH').AsString+''' and CGBJ.ZSBH='''+PurTotal.CGMas.FieldByName('ZSBH').AsString +''' ');
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

procedure TPurTotal_Safe.DBGridEh1DrawColumnCell(Sender: TObject;
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

procedure TPurTotal_Safe.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   DBGridEh1DblClick(nil);
end;

procedure TPurTotal_Safe.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
