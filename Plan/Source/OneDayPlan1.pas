unit OneDayPlan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, GridsEh, DBGridEh, ExtCtrls, StdCtrls,
  DateUtils;

type
  TOneDayPlan = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DTP1: TDateTimePicker;
    Query1: TQuery;
    DS1: TDataSource;
    Query1RY: TStringField;
    Query1ARTICLE: TStringField;
    Query1DAOMH: TStringField;
    Query1Pairs: TIntegerField;
    Query1CycleStart: TIntegerField;
    Query1CycleEnd: TIntegerField;
    Query1AssemblyTime: TStringField;
    Query1Remark: TStringField;
    Query1Reason: TStringField;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Building, Lean: string;
  public
    { Public declarations } 
    procedure LoadData(sBuilding, sLean: string; sDate: TDate);
  end;

var
  OneDayPlan: TOneDayPlan;

implementation

uses
  main1;

{$R *.dfm}

procedure TOneDayPlan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOneDayPlan.FormDestroy(Sender: TObject);
begin
  OneDayPlan := Nil;
end;

procedure TOneDayPlan.LoadData(sBuilding, sLean: string; sDate: TDate);
begin
  DTP1.Date := sDate;
  Building := sBuilding;
  Lean := sLean;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT PP.RY, CASE WHEN PP.RY LIKE ''C%'' THEN KFXXZL.DEVCODE ELSE DDZL.ARTICLE END AS ARTICLE,');
    SQL.Add('CASE WHEN PP.RY LIKE ''C%'' THEN REPLACE(KFXXZL.DAOMH, ''LY-'', '''') ELSE REPLACE(XXZL.DAOMH, ''LY-'', '''') END AS DAOMH,');
    SQL.Add('PP.Pairs, PP.CycleStart, PP.CycleEnd, PP.AssemblyTime, PP.Remark, PP.Reason FROM ProductionPlan AS PP');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DEVCODE, DAOMH, XTMH FROM (');
    SQL.Add('    SELECT KFXXZL.DEVCODE, KFXXZL.DAOMH, KFXXZL.XTMH, ROW_NUMBER() OVER(PARTITION BY KFXXZL.DEVCODE ORDER BY KFXXZL.USERDATE DESC) AS Seq FROM ProductionPlan AS PP');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.DEVCODE = PP.SubRY');
    SQL.Add('    WHERE PP.Building = ''' + Building + ''' AND PP.Lean = ''' + Lean + ''' AND PP.PlanType = ''1-Day'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND PP.RY LIKE ''C%''');
    SQL.Add('  ) AS KFXXZL');
    SQL.Add('  WHERE Seq = 1');
    SQL.Add(') AS KFXXZL ON KFXXZL.DEVCODE = PP.SubRY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END AS RY,');
    SQL.Add('  MAX(CONVERT(VARCHAR, schedule_date, 111) + ''-'' + CAST(ry_index AS VARCHAR)) AS Date, SUM(CASE WHEN ISNUMERIC(sl) = 1 THEN CAST(sl AS INT) ELSE 0 END) AS RYPairs FROM schedule_crawler');
    SQL.Add('  WHERE building_no = ''' + Building + ''' AND lean_no = ''' + Lean + '''');
    SQL.Add('  GROUP BY building_no, lean_no, CASE WHEN LEN(ry) - LEN(REPLACE(ry, ''-'', '''')) < 2 THEN ry ELSE SUBSTRING(ry, 1, LEN(ry) - CHARINDEX(''-'', REVERSE(ry))) END');
    SQL.Add(') AS SC ON SC.building_no = PP.Building AND SC.lean_no = PP.Lean AND SC.RY = PP.RY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
    SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
    SQL.Add('  WHERE GXLB = ''A''');
    SQL.Add('  GROUP BY YSBH');
    SQL.Add(') AS SMDD ON SMDD.YSBH = PP.RY');
    SQL.Add('WHERE PP.Building = ''' + Building + ''' AND PP.Lean = ''' + Lean + ''' AND PP.PlanType = ''1-Day'' AND PP.PlanDate = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''');
    SQL.Add('AND PP.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY ISNULL(PP.Seq, 99), PP.AssemblyTime, CONVERT(SmallDateTime, LEFT(SC.Date, 10)), CAST(SUBSTRING(SC.Date, CHARINDEX(''-'', SC.Date) + 1, LEN(SC.Date) - CHARINDEX(''-'', SC.Date)) AS INT)');
    Active := true;
  end;
end;

procedure TOneDayPlan.DTP1Change(Sender: TObject);
begin
  LoadData(Building, Lean, DTP1.Date);
end;

procedure TOneDayPlan.Button1Click(Sender: TObject);
begin
  DTP1.Date := IncDay(DTP1.Date, -1);
  DTP1Change(Nil);
end;

procedure TOneDayPlan.Button2Click(Sender: TObject);
begin
  DTP1.Date := IncDay(DTP1.Date, 1);
  DTP1Change(Nil);
end;

procedure TOneDayPlan.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

end.
