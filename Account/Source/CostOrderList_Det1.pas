unit CostOrderList_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids,dateutils, GridsEh, DBGridEh;

type
  TCostOrderList_Det = class(TForm)
    Query1: TQuery;
    Query1LLNO: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1SCBH: TStringField;
    Query1CostID: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TFloatField;
    Query1VNACC: TIntegerField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostOrderList_Det: TCostOrderList_Det;
  sdate,edate:TDate;

implementation

uses CostOrderList1;

{$R *.dfm}

procedure TCostOrderList_Det.FormCreate(Sender: TObject);
var y,m:word;
begin
  y:=strtoint(CostOrderList.CWDD.fieldbyname('CWYEAR').value);
  m:=strtoint(CostOrderList.CWDD.fieldbyname('CWMONTH').value);
  if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  sdate:=encodedate(y,m,1);
  edate:=endofthemonth(sdate);
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,');
    sql.add('KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZl.DWBH,KCLLS.YYBH,KCLL.SCBH,');
    sql.add('SCBLYY.YWSM,BDepartment.DepName,KCLL.DepID,KCLLS.CostID,KCZLS.CWBH');
    sql.add('from KCLLS');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH ');
    sql.add('where KCLLS.CostID='+''''+'621'+'''');
    sql.add('and not exists(select ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH   ');
    sql.add('               union select DDBH as ZLBH from CWDD where CWDD.DDBH=KCLLS.SCBH )');
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add(' and '+''''+ formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('and KCLLS.Qty<>0');
    sql.add('order by KCLLS.LLNO,KCLLS.CLBH ');
    active:=true;
  end;

end;

procedure TCostOrderList_Det.FormDestroy(Sender: TObject);
begin
costorderlist_det:=nil;
end;

procedure TCostOrderList_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TCostOrderList_Det.DBGridEh1DblClick(Sender: TObject);
begin
  Query1.Edit;
  query1.FieldByName('SCBH').Value:=CostOrderList.CWDD.fieldbyname('DDBH').Value;
  UpSQL1.Apply(ukmodify);
end;

end.
