unit MaterialHistory1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TMaterialHistory = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1UserDate: TDateTimeField;
    Query1ArrivalDate: TDateTimeField;
    Query1Type: TStringField;
    Query1Usage: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadData(RY, SupID, MatID: string);
    { Public declarations }
  end;

var
  MaterialHistory: TMaterialHistory;

implementation

{$R *.dfm}

procedure TMaterialHistory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMaterialHistory.FormDestroy(Sender: TObject);
begin
  MaterialHistory := Nil;
end;

procedure TMaterialHistory.LoadData(RY, SupID, MatID: string);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Type, Usage, UserDate, ArrivalDate FROM (');
    SQL.Add('  SELECT ''Estimated Date'' AS Type, ZLZLS2.Usage, SM.UserDate, SM.ArrivalDate FROM schedule_materials AS SM');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('  SELECT ZLBH, CLBH, SUM(CLSL) AS Usage FROM ZLZLS2');
    SQL.Add('    WHERE ZLBH = ''' + RY + ''' AND CLBH = ''' + MatID + ''' AND ZMLB = ''N''');
    SQL.Add('    GROUP BY ZLBH, CLBH');
    SQL.Add('  ) AS ZLZLS2 ON ZLZLS2.ZLBH = SM.DDBH AND ZLZLS2.CLBH = SM.CLBH');
    SQL.Add('  WHERE SM.DDBH = ''' + RY + ''' AND SM.CSBH = ''' + SupID + ''' AND SM.CLBH = ''' + MatID + '''');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT ''Use Stock'' AS Type, Qty AS Usage, USERDATE, USERDATE FROM CGKCUSE');
    SQL.Add('  WHERE ZLBH = ''' + RY + ''' AND CLBH = ''' + MatID + '''');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT ''Stock-In Date'' AS Type, SUM(KCRKS.Qty) AS Usage, MAX(KCRK.CFMDate) AS UserDate, CONVERT(SmallDateTime, CONVERT(VARCHAR, KCRK.CFMDate, 111)) AS CFMDate FROM KCRKS');
    SQL.Add('  LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ZLBH, CLBH, SUM(Qty) AS Qty FROM CGZLSS');
    SQL.Add('    WHERE ZLBH = ''' + RY + ''' AND CLBH = ''' + MatID + '''');
    SQL.Add('    GROUP BY ZLBH, CLBH');
    SQL.Add('  ) AS CGZL ON CGZL.ZLBH = KCRKS.CGBH AND CGZL.CLBH = KCRKS.CLBH');
    SQL.Add('  WHERE KCRKS.CGBH = ''' + RY + ''' AND KCRKS.CLBH = ''' + MatID + ''' AND KCRK.CFMDate IS NOT NULL');
    SQL.Add('  GROUP BY CONVERT(SmallDateTime, CONVERT(VARCHAR, KCRK.CFMDate, 111)), CGZL.Qty');
    SQL.Add(') AS History');
    SQL.Add('ORDER BY UserDate DESC');
    Active := true;
  end;
end;

end.
