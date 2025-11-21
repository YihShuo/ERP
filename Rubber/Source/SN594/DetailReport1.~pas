unit DetailReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TDetailReport = class(TForm)
    DBGH1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1sku: TStringField;
    Query1size: TStringField;
    Query1color: TStringField;
    Query1TotalQty: TIntegerField;
    Query1TotalS_OK: TIntegerField;
    Query1TotalDiff: TIntegerField;
    Query1ry: TStringField;
    Query1BUYNO: TStringField;
    Query2: TQuery;
    Query1Scandate: TDateTimeField;
    Query1class_Shift: TStringField;
    procedure FormCreate(Sender: TObject);
       procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure LoadDetail(const Article, Color, BuyNo,Size, BeginDate, EndDate: string);

  end;

var
  DetailReport: TDetailReport;

implementation

uses RBWorkReport1, main1;

{$R *.dfm}


procedure TDetailReport.FormCreate(Sender: TObject);
begin
  //DBGridEh1.DataSource := RBWorkReport.DataSource1;
end;

procedure TDetailReport.FormDestroy(Sender: TObject);
begin
DetailReport:= nil;
end;


procedure TDetailReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//Query1.Active := False;
  Action := caFree;
  DetailReport:= nil;
end;

procedure TDetailReport.LoadDetail(const Article, Color, BuyNo,Size, BeginDate, EndDate: string);
begin
with Query1 do
begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT ');
  SQL.Add('    sku, [size], color, TotalQty, TotalS_OK, TotalDiff, ry, BUYNO ,Scandate, class_Shift');
  SQL.Add('FROM (');
  SQL.Add('SELECT ');
  SQL.Add('    a.sku, a.[size], a.color, (a.[qty]) AS TotalQty, (a.[s_ok]) AS TotalS_OK, (a.[qty]) - (a.[s_ok]) AS TotalDiff,');
  SQL.Add('    b.ry, c.BUYNO, a.scandate, a.class_shift');
  SQL.Add('FROM TB_DD.[dbo].[rubber01p] a');
  SQL.Add('INNER JOIN TB_DD.[dbo].[rubber01] b ON a.sku = b.ARTICLE AND a.id_code = b.id');
  SQL.Add('INNER JOIN TB_ERP.dbo.DDZL c ON c.DDBH = b.ry AND c.ARTICLE = b.ARTICLE');
  SQL.Add('INNER JOIN TB_DD.[dbo].[rubber01ps] d ON a.id_code = d.id_code AND a.id = d.id');
  SQL.Add('WHERE');
  SQL.Add('    b.flag = ''P''');
  SQL.Add('    AND CAST(b.[SCRQ] AS date) BETWEEN ''2025-08-01'' AND ''2025-09-11''');
  SQL.Add('    AND b.ARTICLE = ''' + Article + ''' ');
  SQL.Add('    AND a.[Color] = ''' + Color + ''' ');
  SQL.Add('    AND c.BUYNO = ''' + BuyNo + ''' ');
  SQL.Add('     AND a.[size] = ''' + Size + ''' ');
  // SQL.Add('    AND b.ry = ''DH2508-159'''); // b?t n?u c?n l?c theo ngý?i l?p ðõn
  SQL.Add('GROUP BY');
  SQL.Add('    a.[size], a.sku, a.color, b.ry, c.BUYNO, a.Scandate, a.class_Shift, a.qty, a.s_ok');
  SQL.Add('HAVING SUM(a.[s_ok]) > 0 AND SUM(a.[qty]) > 0');
  SQL.Add(') H');
  SQL.Add('ORDER BY ry');

  Open;
end;
  end;

end.
