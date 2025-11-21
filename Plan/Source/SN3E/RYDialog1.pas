unit RYDialog1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables;

type
  TRYDialog = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ED_RY: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    ED_Building: TEdit;
    ED_Lean: TEdit;
    Query1DDBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1Pairs: TIntegerField;
    Query1ShipDate: TDateTimeField;
    Query1BuyNo: TStringField;
    Query1DAOMH: TStringField;
    Query1schedule_date: TDateTimeField;
    Query1MinCycle: TIntegerField;
    Query1MaxCycle: TIntegerField;
    Query1Seq: TFloatField;
    Query1NT: TStringField;
    Query1XTMH: TStringField;
    Query1RYTYPE: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Target, AssemblyTime: string;
    RYList, CycleList: TStringList;
  public
    { Public declarations }
    procedure Init(Building, Lean, Source, Time: string; RY, Cycle: TStringList);
  end;

var
  RYDialog: TRYDialog;

implementation

uses ScheduleUpload1;

{$R *.dfm}

procedure TRYDialog.Init(Building, Lean, Source, Time: string; RY, Cycle: TStringList);
begin
  ED_Building.Text := Building;
  ED_Lean.Text := Lean;
  Target := Source;
  if (Time = '') then
    AssemblyTime := '07:30 - 09:30'
  else if (Time = '07:30 - 09:30') then
    AssemblyTime := '09:30 - 11:30'
  else if (Time = '09:30 - 11:30') then
    AssemblyTime := '12:30 - 14:30'
  else if (Time = '12:30 - 14:30') then
    AssemblyTime := '14:30 - 16:30'
  else
    AssemblyTime := '16:30 - 18:00';
  RYList := RY;
  CycleList := Cycle;
end;

procedure TRYDialog.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ROW_NUMBER() OVER(ORDER BY SC.schedule_date, SC.ry_index) AS Seq, SC.schedule_date, DDZL.DDBH, DDZL.ShipDate, PP.NT,');
    SQL.Add('CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BuyNo, DDZL.ARTICLE, CASE WHEN ISNUMERIC(SC.sl) = 1 THEN CAST(SC.sl AS INT) ELSE 0 END AS Pairs,');
    SQL.Add('REPLACE(XXZL.DAOMH, ''LY-'', '''') AS DAOMH, SMDD.MinCycle, SMDD.MaxCycle, REPLACE(XXZL.XTMH, ''TV-'', '''') AS XTMH, DDZL.RYTYPE FROM schedule_crawler AS SC');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN YWCP ON YWCP.DDBH = DDZL.DDBH AND YWCP.InDate IS NOT NULL');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT YSBH, MIN(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MinCycle,');
    SQL.Add('  MAX(CASE WHEN DDBH = YSBH THEN 1 ELSE CAST(SUBSTRING(DDBH, LEN(DDBH)-2, 3) AS INT) END) AS MaxCycle FROM SMDD');
    SQL.Add('  WHERE GXLB = ''A''');
    SQL.Add('  GROUP BY YSBH');
    SQL.Add(') AS SMDD ON SMDD.YSBH = DDZL.DDBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DDZL.XieXing, DDZL.SheHao, MAX(PP.NT) AS NT FROM ProductionPlan AS PP');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = PP.RY');
    SQL.Add('  GROUP BY DDZL.XieXing, DDZL.SheHao');
    SQL.Add(') AS PP ON PP.XieXing = DDZL.XieXing AND PP.SheHao = DDZL.SheHao');
    SQL.Add('WHERE SC.building_no = ''' + ED_Building.Text + ''' AND SC.lean_no = ''' + ED_Lean.Text + ''' AND CONVERT(SmallDateTime, SC.schedule_date) >= DATEADD(DD, -120, CONVERT(SmallDateTime, GetDate()))');
    SQL.Add('AND DDZL.DDBH LIKE ''' + ED_RY.Text + '%''');
    SQL.Add('GROUP BY SC.schedule_date, SC.ry_index, DDZL.DDBH, DDZL.ShipDate, PP.NT, CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR),');
    SQL.Add('DDZL.ARTICLE, DDZL.Pairs, SC.sl, REPLACE(XXZL.DAOMH, ''LY-'', ''''), SMDD.MinCycle, SMDD.MaxCycle, REPLACE(XXZL.XTMH, ''TV-'', ''''), DDZL.RYTYPE');
    SQL.Add('HAVING DDZL.Pairs > ISNULL(SUM(YWCP.Qty), 0)');
    Active := true;
  end;
end;

procedure TRYDialog.DBGridEh1DblClick(Sender: TObject);
var
  index: integer;
begin
  if (Target = 'Query_GCD') then
  begin
    ScheduleUpload.Query_GCD.Edit;
    ScheduleUpload.Query_GCD.FieldByName('RY').Value := Query1.FieldByName('DDBH').AsString;
    ScheduleUpload.Query_GCD.FieldByName('ShipDate').Value := Query1.FieldByName('ShipDate').AsString;
    ScheduleUpload.Query_GCD.FieldByName('NT').Value := Query1.FieldByName('NT').AsString;
    ScheduleUpload.Query_GCD.FieldByName('BUYNO').Value := Query1.FieldByName('BuyNo').AsString;
    ScheduleUpload.Query_GCD.FieldByName('ARTICLE').Value := Query1.FieldByName('ARTICLE').AsString;
    ScheduleUpload.Query_GCD.FieldByName('RYPairs').Value := Query1.FieldByName('Pairs').AsString;
    ScheduleUpload.Query_GCD.FieldByName('DAOMH').Value := Query1.FieldByName('DAOMH').AsString;
    ScheduleUpload.Query_GCD.FieldByName('MinCycle').Value := Query1.FieldByName('MinCycle').AsInteger;
    ScheduleUpload.Query_GCD.FieldByName('MaxCycle').Value := Query1.FieldByName('MaxCycle').AsInteger;
    ScheduleUpload.Query_GCD.FieldByName('CycleStart').Value := Query1.FieldByName('MinCycle').AsInteger;
    ScheduleUpload.Query_GCD.FieldByName('CycleEnd').Value := Query1.FieldByName('MaxCycle').AsInteger;
    if (Query1.FieldByName('RYTYPE').AsString = 'SLT') then
      ScheduleUpload.Query_GCD.FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
    ScheduleUpload.GCD_RY := Query1.FieldByName('DDBH').AsString;
  end
  else if (Target = 'Query_3D') then
  begin
    ScheduleUpload.Query_3D.Edit;
    ScheduleUpload.Query_3D.FieldByName('RY').Value := Query1.FieldByName('DDBH').AsString;
    ScheduleUpload.Query_3D.FieldByName('ShipDate').Value := Query1.FieldByName('ShipDate').AsString;
    ScheduleUpload.Query_3D.FieldByName('NT').Value := Query1.FieldByName('NT').AsString;
    ScheduleUpload.Query_3D.FieldByName('BUYNO').Value := Query1.FieldByName('BuyNo').AsString;
    ScheduleUpload.Query_3D.FieldByName('ARTICLE').Value := Query1.FieldByName('ARTICLE').AsString;
    ScheduleUpload.Query_3D.FieldByName('RYPairs').Value := Query1.FieldByName('Pairs').AsString;
    ScheduleUpload.Query_3D.FieldByName('DAOMH').Value := Query1.FieldByName('DAOMH').AsString;
    ScheduleUpload.Query_3D.FieldByName('MinCycle').Value := Query1.FieldByName('MinCycle').AsInteger;
    ScheduleUpload.Query_3D.FieldByName('MaxCycle').Value := Query1.FieldByName('MaxCycle').AsInteger;
    ScheduleUpload.Query_3D.FieldByName('CycleStart').Value := Query1.FieldByName('MinCycle').AsInteger;
    ScheduleUpload.Query_3D.FieldByName('CycleEnd').Value := Query1.FieldByName('MaxCycle').AsInteger;
    if (Query1.FieldByName('RYTYPE').AsString = 'SLT') then
      ScheduleUpload.Query_3D.FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
    ScheduleUpload.P3D_RY := Query1.FieldByName('DDBH').AsString;
  end
  else if (Target = 'Query_1D') then
  begin
    index := RYList.IndexOf(Query1.FieldByName('DDBH').AsString);

    ScheduleUpload.Query_1D.Edit;
    ScheduleUpload.Query_1D.FieldByName('RY').Value := Query1.FieldByName('DDBH').AsString;
    ScheduleUpload.Query_1D.FieldByName('ShipDate').Value := Query1.FieldByName('ShipDate').AsString;
    ScheduleUpload.Query_1D.FieldByName('NT').Value := Query1.FieldByName('NT').AsString;
    ScheduleUpload.Query_1D.FieldByName('BUYNO').Value := Query1.FieldByName('BuyNo').AsString;
    ScheduleUpload.Query_1D.FieldByName('ARTICLE').Value := Query1.FieldByName('ARTICLE').AsString;
    ScheduleUpload.Query_1D.FieldByName('RYPairs').Value := Query1.FieldByName('Pairs').AsString;
    ScheduleUpload.Query_1D.FieldByName('DAOMH').Value := Query1.FieldByName('DAOMH').AsString;
    ScheduleUpload.Query_1D.FieldByName('MinCycle').Value := Query1.FieldByName('MinCycle').AsInteger;
    ScheduleUpload.Query_1D.FieldByName('MaxCycle').Value := Query1.FieldByName('MaxCycle').AsInteger;
    if (index >= 0) then
      ScheduleUpload.Query_1D.FieldByName('CycleStart').Value := StrToInt(CycleList[index]) + 1
    else
      ScheduleUpload.Query_1D.FieldByName('CycleStart').Value := Query1.FieldByName('MinCycle').AsInteger;
    if (index >= 0) then
      ScheduleUpload.Query_1D.FieldByName('CycleEnd').Value := StrToInt(CycleList[index]) + 2
    else
      ScheduleUpload.Query_1D.FieldByName('CycleEnd').Value := Query1.FieldByName('MaxCycle').AsInteger;
    ScheduleUpload.Query_1D.FieldByName('XTMH').Value := Query1.FieldByName('XTMH').AsString;
    ScheduleUpload.Query_1D.FieldByName('PlanDate').Value := ScheduleUpload.DTP_1D.Date;
    if (ScheduleUpload.Query_1D.FieldByName('DeliveryTime').AsString = '') then
      ScheduleUpload.Query_1D.FieldByName('DeliveryTime').Value := AssemblyTime;
    if (ScheduleUpload.Query_1D.FieldByName('AssemblyTime').AsString = '') then
      ScheduleUpload.Query_1D.FieldByName('AssemblyTime').Value := AssemblyTime;
    if (Query1.FieldByName('RYTYPE').AsString = 'SLT') then
      ScheduleUpload.Query_1D.FieldByName('Remark').Value := 'DON HANG XUAT NHANH (快速訂單)';
    ScheduleUpload.P1D_RY := Query1.FieldByName('DDBH').AsString;
  end;

  Close;
end;

procedure TRYDialog.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Ord(Key) = VK_RETURN) then
    DBGridEh1DblClick(Nil);
end;

end.
