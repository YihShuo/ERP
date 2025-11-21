unit OrderDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh,fununit;

type
  TOrderDetail = class(TForm)
    DBGridEh1: TDBGridEh;
    OrderQry: TQuery;
    DataSource1: TDataSource;
    OrderQryDDBH: TStringField;
    OrderQryDDZT: TStringField;
    OrderQryShipDate: TDateTimeField;
    OrderQryDDQty: TIntegerField;
    OrderQrySCQty: TIntegerField;
    OrderQryDiffQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MONTH:string;
    procedure OrderDetailData();
  end;

var
  OrderDetail: TOrderDetail;

implementation

uses BrandProduction1;

{$R *.dfm}

procedure TOrderDetail.OrderDetailData();
begin
  with OrderQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ddzl.DDBH,ddzl.DDZT,ddzl.ShipDate,pairs as DDQty,isnull(convert(int,sum(scbbs.Qty)),0) as SCQty,pairs-isnull(convert(int,sum(scbbs.Qty)),0)as DiffQty');
    sql.Add('from ddzl');
    sql.Add('left join kfzl on kfzl.kfdh = DDZL.KHBH');
    sql.Add('left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
    sql.Add('left join scbb on scbb.proNo=scbbs.proNo');
    sql.Add('where year(DDZL.ShipDate)='+BrandProduction.cbYear.Text+' and month(DDZL.Shipdate)='+MONTH);
    if BrandProduction.qrMain.fieldbyname('Export').AsString ='¤º¾P' then
      sql.Add('and DDZL.DDGB=''VIE''');
    if BrandProduction.qrMain.fieldbyname('Export').AsString =' ¥~¾P' then
      sql.Add('and DDZL.DDGB<>''VIE''');
    sql.add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
    sql.add('and kfzl.kfjc='''+BrandProduction.qrMain.fieldbyname('Brand').AsString+'''');
    sql.Add('group by ddzl.ddbh,ddzl.ddzt,ddzl.shipdate,pairs');
    sql.Add('having DDZL.Pairs-isnull(convert(int,sum(scbbs.Qty)),0)>0');
    sql.Add('order by ddbh');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TOrderDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TOrderDetail.FormDestroy(Sender: TObject);
begin
 OrderDetail:=Nil;
end;

end.
