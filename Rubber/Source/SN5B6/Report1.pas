unit Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TReport1Detail = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YSBH: TStringField;
    Query1XXCC: TStringField;
    Query1OUTSOLE: TStringField;
    Query1Qty: TIntegerField;
    Query1InQty: TIntegerField;
    Query1LastInQty: TIntegerField;
    Query1OutQty: TIntegerField;
    Query1LastOutQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     CurrentYSBH: string;
    procedure LoadData(YSBHValue: string);
  end;

var
  Report1Detail: TReport1Detail;

implementation

{$R *.dfm}

procedure TReport1Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Report1Detail:= nil;
end;

procedure TReport1Detail.FormCreate(Sender: TObject);
begin
//Query1.active:=true;
end;


procedure TReport1Detail.LoadData(YSBHValue: string);
begin
  CurrentYSBH := YSBHValue;

  with Query1 do
  begin
    Close;
    SQL.Clear;
    sql.add(' SELECT B.YSBH,A.XXCC ,A.GJCCs as OUTSOLE,sum(B.Qty) as Qty ,sum (b.InQTy) as InQty, SUM ( b.LastInQty) as LastInQty, SUM ( b.OutQty) as OutQty,SUM ( b.LastOutQty) as LastOutQty ');
    sql.add(' FROM ( SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) AS GJCC, GJCC as GJCCs FROM TB_ERP.dbo.xxgjs WHERE XieXing IN (select XieXing  from DDZL where DDBH=:YSBH ) AND gjlb = ''101'') A ');
    sql.add(' INNER JOIN ( SELECT a.YSBH,a.ARTICLE,a.XieMing,c.YSSM,b.XieXing,a.QRCode,a.Qty,a.SCCX ,(sum(WIn)-sum(ROut)) InQTy,(sum(Qty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQty, (sum(Qty)-sum(ROut)) as LastOutQty');
    sql.add(' FROM TB_DD.dbo.SMDDScanOut a ');
    sql.add(' INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH ');
    sql.add(' INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.SheHao  ');
    sql.add(' where a.YSBH=:YSBH');
    sql.add(' GROUP BY a.YSBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCode, a.Qty, a.SCCX');
    sql.add(') B ON A.GJCC = B.SCCX ');
    sql.add('group by B.YSBH,XXCC,GJCC,A.GJCCs');
    sql.add('  ORDER BY XXCC');

    ParamByName('YSBH').AsString := CurrentYSBH;
    Open;
  end;
end;
end.
