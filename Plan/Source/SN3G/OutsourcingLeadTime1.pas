unit OutsourcingLeadTime1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TOutsourcingLeadTime = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1Building: TStringField;
    Query1Lean: TStringField;
    Query1DAOMH: TStringField;
    Query1ARTICLE: TStringField;
    Query1ZLBH: TStringField;
    Query1Cycle: TStringField;
    Query1OSPairs: TIntegerField;
    Query1RPairs: TIntegerField;
    Query1Ratio: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    procedure LoadData(SDate: TDate);
    { Public declarations }
  end;

var
  OutsourcingLeadTime: TOutsourcingLeadTime;

implementation

{$R *.dfm}

procedure TOutsourcingLeadTime.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOutsourcingLeadTime.FormDestroy(Sender: TObject);
begin
  OutsourcingLeadTime := Nil;
end;

procedure TOutsourcingLeadTime.LoadData(SDate: TDate);
begin
  Self.Caption := FormatDateTime('yyyy/MM/dd', SDate) + ' Outsourcing Status';

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CD.Building, CD.Lean, XXZL.DAOMH, XXZL.ARTICLE, CD.ZLBH, CASE WHEN MIN(CD.Cycle) = MAX(CD.Cycle) THEN ''T'' + CAST(MIN(CD.Cycle) AS VARCHAR) ELSE ''T'' + CAST(MIN(CD.Cycle) AS VARCHAR) + '' - T'' + CAST(MAX(CD.Cycle) AS VARCHAR) END AS Cycle,');
    SQL.Add('SUM(CD.OSPairs) AS OSPairs, ISNULL(SUM(CD.Pairs), 0) AS RPairs, CAST(ROUND(ISNULL(SUM(CD.Pairs), 0) * 100.0 / SUM(CD.OSPairs), 1) AS NUMERIC(4, 1)) AS Ratio FROM (');
    SQL.Add('  SELECT CD.Building, CD.Lean, CD.ZLBH, CD.DDBH, CD.Cycle, CD.OSPairs, ISNULL(SUM(KCRKS.Pairs), 0) AS Pairs FROM (');
    SQL.Add('    SELECT DISTINCT CDL.Building, CDL.Lean, CD.ZLBH, CD.DDBH, SMDD.Qty AS OSPairs,');
    SQL.Add('    CASE WHEN CD.DDBH = CD.ZLBH THEN 1 ELSE CAST(RIGHT(CD.DDBH, 3) AS INT) END AS Cycle FROM CycleDispatchList AS CDL');
    SQL.Add('    LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo');
    SQL.Add('    LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
    SQL.Add('    WHERE CAST(CDL.Date AS DATE) = ''' + FormatDateTime('yyyy/MM/dd', SDate) + ''' AND CDL.Type = ''Ready''');
    SQL.Add('  ) AS CD');
    SQL.Add('  LEFT JOIN KCRK_Upper AS KCRK ON KCRK.RY = CD.ZLBH');
    SQL.Add('  LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO AND KCRKS.DDBH = CD.DDBH');
    SQL.Add('  GROUP BY CD.Building, CD.Lean, CD.ZLBH, CD.DDBH, CD.OSPairs, CD.Cycle');
    SQL.Add(') AS CD');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CD.ZLBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('GROUP BY CD.Building, CD.Lean, XXZL.ARTICLE, XXZL.DAOMH, CD.ZLBH');
    SQL.Add('ORDER BY CD.Building, CD.Lean, XXZL.DAOMH, XXZL.ARTICLE');
    Active := true;
  end;

  DBGridEh1.Columns[8].Footer.Value := FormatFloat('##0.0%', StrToInt(StringReplace(DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[7]), ',', '', [rfReplaceAll])) * 100 / StrToInt(StringReplace(DBGridEh1.GetFooterValue(0, DBGridEh1.Columns[6]), ',', '', [rfReplaceAll])));
end;

procedure TOutsourcingLeadTime.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('OSPairs').AsInteger > Query1.FieldByName('RPairs').AsInteger) then
    DBGridEh1.Canvas.Font.Color := clRed
  else
    DBGridEh1.Canvas.Font.Color := clGreen;
end;

end.
