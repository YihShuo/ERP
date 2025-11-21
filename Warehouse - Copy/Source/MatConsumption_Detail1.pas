unit MatConsumption_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids;

type
  TMatConsumption_Detail = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1ZLBH: TStringField;
    Query1CLSL: TFloatField;
    Query1XieMing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatConsumption_Detail: TMatConsumption_Detail;

implementation

uses MatConsumption1;

{$R *.dfm}

procedure TMatConsumption_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
free;
end;

procedure TMatConsumption_Detail.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZLZLS2.ZLBH,sum(ZLZLS2.CLSL) as CLSL,XXZL.XieMing ');
    sql.add('from ZLZLS2');
    sql.add('left join DDZL on DDZl.ZLBH=ZLZLS2.ZLBH ');
    sql.add('left join XXZl on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ') ;
    sql.add('where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add('and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('and XXZL.XieXing like '+''''+'%'+MatConsumption.edit1.Text+'%'+'''');
    sql.add('and XXZL.SheHao like '+''''+'%'+MatConsumption.edit2.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+MatConsumption.edit3.Text+'%'+'''');
    sql.add('and XXZl.Article like '+''''+'%'+MatConsumption.edit4.Text+'%'+'''');
    sql.add('and ZLZLS2.ZLBH like '+''''+'%'+MatConsumption.edit5.Text+'%'+'''');
    sql.add('and MJBH='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and ZLZLS2.CLBH='+ ''''+MatConsumption.query1.fieldbyname('CLBH').Value+'''');
    sql.add('group by ZLZLS2.ZLBH ,XXZL.XieMing');
    sql.add('order by ZLZLS2.ZLBH ');
    active:=true;
  end;
end;

procedure TMatConsumption_Detail.FormDestroy(Sender: TObject);
begin
MatConsumption_Detail:=nil;
end;

end.
