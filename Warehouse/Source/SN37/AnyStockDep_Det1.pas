unit AnyStockDep_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, Menus, DBTables, DateUtils;

type
  TAnyStockDep_Det = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DBGridEh1: TDBGridEh;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1DepID: TStringField;
    Query1Qty: TFloatField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure ShowQty_Dep();
  end;

var
  AnyStockDep_Det: TAnyStockDep_Det;

implementation

uses AnyStock1, AnyStockDep_Det_Det1, FunUnit;

{$R *.dfm}

procedure TAnyStockDep_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TAnyStockDep_Det.FormDestroy(Sender: TObject);
begin
  AnyStockDep_Det:=nil;
end;

procedure TAnyStockDep_Det.ShowQty_Dep();
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Sum(KCCLMONTH_Dep.Qty) as Qty,IsNull(Bdepartment.DepName,''Stock'') as DepName,IsNull(Bdepartment.DepMemo,''庫存'') as DepMemo ');
    SQL.Add('from (');
    SQL.Add('Select CKBH, CLBH, Case when Qty<0 then ''ZZZZZZZZZZ'' else DepID end as DepID, Qty from (	 ');
    SQL.Add('Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from (');
    SQL.Add('Select CKBH,CLBH,DepID,Qty,''1'' as SB');
    SQL.Add('from KCCLMONTH_BDepartment');
    SQL.Add('where KCYEAR='''+ayear+''' and KCMONTH='''+amonth+'''');
    SQL.Add('        and KCCLMONTH_BDepartment.CKBH='''+AnyStock.Query3.FieldByName('CKBH').AsString+''' ');
    SQL.Add('	       and KCCLMONTH_BDepartment.CLBH='''+AnyStock.Query3.FieldByName('CLBH').AsString+''' ');
    SQL.Add('Union all');
    SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Qty,''2'' as SB');
    SQL.Add('from KCRK');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO and KCRKSS.CLBH=KCRKS.CLBH and KCRKSS.CGBH=KCRKS.CGBH and KCRKSS.RKSB=KCRKS.RKSB');
    SQL.Add('left join SGDH on SGDH.SGNO=KCRKSS.CGBH');
    SQL.Add('left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE and CGZLSS.Stage=''TVu'' ');
    SQL.Add('where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('        and KCRK.CKBH='''+AnyStock.Query3.FieldByName('CKBH').AsString+''' and KCRKS.CLBH is not null');
    SQL.Add('	       and KCRKS.CLBH='''+AnyStock.Query3.FieldByName('CLBH').AsString+''' ');
    SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) ');
    SQL.Add('Union all');
    SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty ,''3'' as SB');
    SQL.Add('from KCLL');
    SQL.Add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('where  KCLL.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('        and KCLL.CKBH='''+AnyStock.Query3.FieldByName('CKBH').AsString+''' and KCLLS.CLBH is not null');
    SQL.Add('	       and KCLLS.CLBH='''+AnyStock.Query3.FieldByName('CLBH').AsString+''' ');
    SQL.Add('Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   ');
    //調動單
    SQL.Add('Union all ');
    SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*Sum(KCLL_Dep_DBS.Qty) as Qty,''4'' as SB'); //轉出
    SQL.Add('from KCLL_Dep_DB');
    SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
    SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('        and KCLL_Dep_DB.CKBH='''+AnyStock.Query3.FieldByName('CKBH').AsString+''' and KCLL_Dep_DBS.CLBH is not null');
    SQL.Add('	       and KCLL_Dep_DBS.CLBH='''+AnyStock.Query3.FieldByName('CLBH').AsString+''' ');
    SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  ');
    SQL.Add('Union all ');
    SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  as DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,''5'' as SB');  //轉入
    SQL.Add('from KCLL_Dep_DB');
    SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
    SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
    SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(AnyStock.DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',AnyStock.DTP1.date)+''' ');
    SQL.Add('        and KCLL_Dep_DB.CKBH='''+AnyStock.Query3.FieldByName('CKBH').AsString+''' and KCLL_Dep_DBS.CLBH is not null');
    SQL.Add('	       and KCLL_Dep_DBS.CLBH='''+AnyStock.Query3.FieldByName('CLBH').AsString+''' ') ;
    SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  )  KCCLMONTH_Dep');
    //
    SQL.Add('Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep ) KCCLMONTH_Dep  ');
    SQL.Add('Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID');
    SQL.Add('Group by KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Bdepartment.DepName,Bdepartment.DepMemo ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  DBGridEh1.columns[0].width:=45;  //CKBH
  DBGridEh1.columns[1].width:=90;  //CKBH
  DBGridEh1.columns[2].width:=90;  //DepID
  DBGridEh1.columns[3].width:=40;  //Qty
  DBGridEh1.columns[4].width:=100;  //DepName
  DBGridEh1.columns[5].width:=100;  //DepMemo
  DBGrideh1.columns[3].displayformat:='##,#0.000';
  //
  DBGridEh1.Columns[3].Footer.FieldName:='Qty';
  DBGridEh1.Columns[3].Footer.ValueType:=fvtSum;
end;

procedure TAnyStockDep_Det.Excel1Click(Sender: TObject);
begin
  AnyStockDep_Det_Det:=TAnyStockDep_Det_Det.Create(self);
  AnyStockDep_Det_Det.ShowQty_Dep();
  AnyStockDep_Det_Det.ShowModal();
end;

end.
