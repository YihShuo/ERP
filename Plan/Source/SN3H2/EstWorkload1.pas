unit EstWorkload1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TEstWorkload = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1EstDate: TDateTimeField;
    Query1DDBH: TStringField;
    Query1Process: TStringField;
    Query1Part: TStringField;
    Query1Supplier: TStringField;
    Query1Qty: TIntegerField;
    Query1DAOMH: TStringField;
    Query1ARTICLE: TStringField;
    Query1schedule_date: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadData(EDate, Process, SupplierID, SupplierName: string);
  end;

var
  EstWorkload: TEstWorkload;

implementation

{$R *.dfm}

procedure TEstWorkload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TEstWorkload.FormDestroy(Sender: TObject);
begin
  EstWorkload := Nil;
end;

procedure TEstWorkload.LoadData(EDate, Process, SupplierID, SupplierName: string);
begin
  Self.Caption := '[' + EDate + '] ' + Process + ' - ' + SupplierName;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DATEADD(DAY, -MSP.LeadTime, SC.schedule_date) AS EstDate, XXZL.DAOMH, XXZL.ARTICLE, DDZL.DDBH, SC.schedule_date, MSP.Process, MSP.Supplier, MSP.Part, CAST(SC.sl AS INT) AS Qty FROM schedule_crawler AS SC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('LEFT JOIN ModelSecondProcess AS MSP ON MSP.XieXing = DDZL.XieXing AND MSP.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXIng AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE DATEADD(DAY, -MSP.LeadTime, SC.schedule_date) = ''' + EDate + '''');
    SQL.Add('AND MSP.Process = ''' + Process + ''' AND MSP.Supplier = ''' + SupplierID + ''' AND ISNULL(MSP.LeadTime, 0) > 0');
    SQL.Add('ORDER BY XXZL.DAOMH, XXZL.ARTICLE, SC.schedule_date, SC.ry_index');
    Active := true;
  end;
end;

end.
