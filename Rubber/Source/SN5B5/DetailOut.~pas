unit DetailOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh,Comobj;

type
  TDetailOut1 = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1YSBH: TStringField;
    Query1XXCC: TStringField;
    Query1OUTSOLE: TStringField;
    Query1Qty: TIntegerField;
    Query1Rout: TIntegerField;
    Query1LastOutQty: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    //procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CurrentYSBH: string;
    procedure LoadData(YSBHValue: string);
  end;

var
  DetailOut1: TDetailOut1;

implementation

uses ScanCheckOut, main1;


procedure TDetailOut1.LoadData(YSBHValue: string);
begin
  CurrentYSBH := YSBHValue;

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT B.YSBH,A.XXCC ,A.GJCCs as OUTSOLE, SUM(B.Qty) as Qty, SUM(b.ROut) as Rout, SUM(b.LastOutQty) as LastOutQty');
    SQL.Add('FROM (SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) AS GJCC, GJCC as GJCCs');
    SQL.Add('      FROM TB_ERP.dbo.xxgjs');
    SQL.Add('      WHERE XieXing IN (SELECT XieXing FROM DDZL WHERE DDBH = :YSBH) AND gjlb = ''101'') A');
    SQL.Add('INNER JOIN (SELECT a.YSBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCode, a.Qty, a.SCCX, a.ROut,');
    SQL.Add('                   (SUM(WIn)-SUM(ROut)) InQTy,');
    SQL.Add('                   (SUM(Qty)-(SUM(WIn)-SUM(ROut))-SUM(ROut)) AS LastInQty,');
    SQL.Add('                   SUM(ROut) OutQty,');
    SQL.Add('                   (SUM(Qty)-SUM(ROut)) AS LastOutQty');
    SQL.Add('           FROM TB_DD.dbo.SMDDScanOut a');
    SQL.Add('           INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH');
    SQL.Add('           INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.SheHao');
    SQL.Add('           WHERE a.YSBH = :YSBH');
    SQL.Add('           GROUP BY a.YSBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCode, a.Qty, a.SCCX, a.ROut) B');
    SQL.Add('ON A.GJCC = B.SCCX');
    SQL.Add('GROUP BY YSBH, XXCC, GJCC, A.GJCCs');
    SQL.Add('ORDER BY XXCC');

    ParamByName('YSBH').AsString := CurrentYSBH;
    Open;
  end;
end;

{$R *.dfm}



procedure TDetailOut1.FormDestroy(Sender: TObject);
begin
DetailOut1:= nil;
end;


procedure TDetailOut1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//Query1.Active := False;
  Action := caFree;
  DetailOut1:= nil;
end;

procedure TDetailOut1.FormCreate(Sender: TObject);
begin
//Query1.active:=true;
end;


{procedure TDetailOut1.FormActivate(Sender: TObject);
begin
with query1 do
  begin
    Query1.Close;
    sql.Clear;
    sql.add(' SELECT B.YSBH,A.XXCC ,A.GJCCs as OUTSOLE,sum(B.Qty) as Qty ,sum (b.ROut) as Rout, SUM(b.LastOutQty) as LastOutQty ');
    sql.add(' FROM ( SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) AS GJCC, GJCC as GJCCs FROM TB_ERP.dbo.xxgjs WHERE XieXing IN (select XieXing  from DDZL where DDBH=:YSBH ) AND gjlb = ''101'') A ');
    sql.add(' INNER JOIN ( SELECT a.YSBH,a.ARTICLE,a.XieMing,c.YSSM,b.XieXing,a.QRCode,a.Qty,a.SCCX , a.ROut ,(sum(WIn)-sum(ROut)) InQTy,(sum(Qty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQty, (sum(Qty)-sum(ROut)) as LastOutQty');
    sql.add(' FROM TB_DD.dbo.SMDDScanOut a ');
    sql.add(' INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH ');
    sql.add(' INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.SheHao  ');
    sql.add(' where a.YSBH=:YSBH');
    sql.add(' GROUP BY a.YSBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCode, a.Qty, a.SCCX, a.ROut ');
    sql.add(') B ON A.GJCC = B.SCCX ');
    sql.add('group by YSBH,XXCC,GJCC,A.GJCCs');
    sql.add('  ORDER BY XXCC');
    ParamByName('YSBH').AsString := CurrentYSBH;
    active:=true;
  end;
end;}
end.
