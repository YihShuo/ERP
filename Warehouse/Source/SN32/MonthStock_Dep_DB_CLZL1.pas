unit MonthStock_Dep_DB_CLZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DateUtils;

type
  TMonthStock_Dep_DB_CLZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1DepID: TStringField;
    Query1Qty: TFloatField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthStock_Dep_DB_CLZL: TMonthStock_Dep_DB_CLZL;

implementation
  uses MonthStock_Dep_DB1, FunUnit;
{$R *.dfm}

procedure TMonthStock_Dep_DB_CLZL.Button1Click(Sender: TObject);
var year,month,day:word;
    ayear,amonth:String;
begin
  decodedate(Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;

   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Sum(KCCLMONTH_Dep.Qty) as Qty,IsNull(Bdepartment.DepName,''Stock'') as DepName,IsNull(Bdepartment.DepMemo,''庫存'') as DepMemo,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH');
     SQL.Add('from (');
     SQL.Add('Select CKBH, CLBH, Case when Qty<0 then ''ZZZZZZZZZZ'' else DepID end as DepID, Qty from (	');
     SQL.Add('Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from (');
     SQL.Add('Select CKBH,CLBH,DepID,Qty,''1'' as SB');
     SQL.Add('from KCCLMONTH_BDepartment');
     SQL.Add('where KCYEAR='''+ayear+''' and KCMONTH='''+amonth+'''');
     SQL.Add('        and KCCLMONTH_BDepartment.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' ');
     if Edit1.Text<>'' then
     SQL.Add('	       and KCCLMONTH_BDepartment.CLBH like '''+Edit1.Text+'%'' ');
     SQL.Add('Union all');
     SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Qty,''2'' as SB');
     SQL.Add('from KCRK');
     SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
     SQL.Add('left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO and KCRKSS.CLBH=KCRKS.CLBH and KCRKSS.CGBH=KCRKS.CGBH and KCRKSS.RKSB=KCRKS.RKSB');
     SQL.Add('left join SGDH on SGDH.SGNO=KCRKSS.CGBH');
     SQL.Add('left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE and CGZLSS.Stage=''TVu'' ');
     SQL.Add('where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('        and KCRK.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCRKS.CLBH is not null');
     if Edit1.Text<>'' then
     SQL.Add('	       and KCRKS.CLBH like '''+Edit1.Text+'%'' ');
     SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) ');
     SQL.Add('Union all');
     SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty ,''3'' as SB');
     SQL.Add('from KCLL');
     SQL.Add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('where  KCLL.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('        and KCLL.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCLLS.CLBH is not null');
     if Edit1.Text<>'' then
     SQL.Add('	       and KCLLS.CLBH like '''+Edit1.Text+'%'' ');
     SQL.Add('Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   ');
     //調動
     SQL.Add('Union all ');
     SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*Sum(KCLL_Dep_DBS.Qty) as Qty,''4'' as SB');
     SQL.Add('from KCLL_Dep_DB');
     SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
     SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('        and KCLL_Dep_DB.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCLL_Dep_DBS.CLBH is not null');
     if Edit1.Text<>'' then
     SQL.Add('	       and KCLL_Dep_DBS.CLBH like '''+Edit1.Text+'%'' ');
     SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  ');
     SQL.Add('Union all ');
     SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  as DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,''5'' as SB');
     SQL.Add('from KCLL_Dep_DB');
     SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
     SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('        and KCLL_Dep_DB.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCLL_Dep_DBS.CLBH is not null');
     if Edit1.Text<>'' then
     SQL.Add('	       and KCLL_Dep_DBS.CLBH like '''+Edit1.Text+'%'' ');
     SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  )  KCCLMONTH_Dep');
     SQL.Add('Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep  ) KCCLMONTH_Dep');
     SQL.Add('Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID');
     SQL.Add('Left join CLZL on CLZL.CLDH=KCCLMONTH_Dep.CLBH');
     SQL.Add('where 1=1 ');
     if Edit2.Text<>'' then
     SQL.Add('  and CLZL.YWPM like ''%'+Edit2.Text+'%'' ');
     if Edit3.Text<>'' then
     SQL.Add('  and CLZL.YWPM like ''%'+Edit3.Text+'%'' ');
     SQL.Add('Group by KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Bdepartment.DepName,Bdepartment.DepMemo,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;

procedure TMonthStock_Dep_DB_CLZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMonthStock_Dep_DB_CLZL.FormDestroy(Sender: TObject);
begin
  MonthStock_Dep_DB_CLZL:=nil;
end;

procedure TMonthStock_Dep_DB_CLZL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with MonthStock_Dep_DB.DelDet do
  begin
    Edit;
    FieldByName('CLBH').AsString:=Query1.FieldByName('CLBH').AsString;
    FieldByName('YWPM').AsString:=Query1.FieldByName('YWPM').AsString;
    FieldByName('ZWPM').AsString:=Query1.FieldByName('ZWPM').AsString;
    FieldByName('DWBH').AsString:=Query1.FieldByName('DWBH').AsString;
    FieldByName('DepID').AsString:=Query1.FieldByName('DepID').AsString;
    FieldByName('DepName').AsString:=Query1.FieldByName('DepName').AsString;
    FieldByName('Qty').AsString:=Query1.FieldByName('Qty').AsString;
    Post;
  end;
  Showmessage('Succeed.');
end;

end.
