unit WorkReport1Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TWorkReport1Detail = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query2: TQuery;
    Query1sku: TStringField;
    Query1size: TStringField;
    Query1color: TStringField;
    Query1TotalQty: TIntegerField;
    Query1TotalS_OK: TIntegerField;
    Query1TotalDiff: TIntegerField;
    Query1ry: TStringField;
    Query1BUYNO: TStringField;
    Query1Scandate: TDateTimeField;
    Query1class_Shift: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadDetail(const Article, Color, BuyNo,Size: string);
  end;

var
  WorkReport1Detail: TWorkReport1Detail;

implementation

{$R *.dfm}

procedure TWorkReport1Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  WorkReport1Detail:= nil;
end;

procedure TWorkReport1Detail.FormDestroy(Sender: TObject);
begin
WorkReport1Detail:= nil;
end;


procedure TWorkReport1Detail.LoadDetail(const Article, Color, BuyNo,Size: string);
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
  SQL.Add('FROM TB_DD.[dbo].[rubber01f] a');
  SQL.Add('INNER JOIN TB_DD.[dbo].[rubber01] b ON a.sku = b.ARTICLE AND a.id_code = b.id');
  SQL.Add('INNER JOIN TB_ERP.dbo.DDZL c ON c.DDBH = b.ry AND c.ARTICLE = b.ARTICLE');
  SQL.Add('INNER JOIN TB_DD.[dbo].[rubber01fs] d ON a.id_code = d.id_code AND a.id = d.id');
  SQL.Add('WHERE');
  SQL.Add('    b.flag = ''F''');
  SQL.Add('    AND b.ARTICLE = ''' + Article + ''' ');
  SQL.Add('    AND a.[Color] = ''' + Color + ''' ');
  SQL.Add('    AND c.BUYNO = ''' + BuyNo + ''' ');
  SQL.Add('     AND a.[size] = ''' + Size + ''' ');
  SQL.Add('GROUP BY');
  SQL.Add('    a.[size], a.sku, a.color, b.ry, c.BUYNO, a.Scandate, a.class_Shift, a.qty, a.s_ok');
  SQL.Add('HAVING SUM(a.[s_ok]) > 0 AND SUM(a.[qty]) > 0');
  SQL.Add(') H');
  SQL.Add('ORDER BY ry');

  Open;
end;
  end;

procedure TWorkReport1Detail.FormCreate(Sender: TObject);
begin
   //Query1.Active:=true;
end;

end.
