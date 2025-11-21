unit QCOnTime_DepRev_AE1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, Grids, DBGrids, ExtCtrls, jpeg, StdCtrls, GridsEh,
  DBGridEh, StrUtils;

type
  TQCOnTime_DepRev_AE = class(TForm)
    Panel1: TPanel;
    qry1: TQuery;
    dsMain: TDataSource;
    imgClose01: TImage;
    gdehMain: TDBGridEh;
    qry1ysbh: TStringField;
    qry1XieXing: TStringField;
    qry1SheHao: TStringField;
    qry1DAOMH: TStringField;
    qry1XieMing: TStringField;
    Label1: TLabel;
    edtRY: TEdit;
    pnlQuery: TPanel;
    procedure imgClose01Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gdehMainDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlQueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCOnTime_DepRev_AE: TQCOnTime_DepRev_AE;

implementation

uses main1,AndonInputRev_AE1, FunUnit, QCOnTime_DepRev1;

{$R *.dfm}

procedure TQCOnTime_DepRev_AE.imgClose01Click(Sender: TObject);
begin
  Close;
end;

procedure TQCOnTime_DepRev_AE.FormActivate(Sender: TObject);
begin
  with qry1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('  SELECT SMDD.YSBH, X.XieXing, X.SheHao, X.DAOMH, X.XieMing, MAX(DDZL.Pairs)-SUM(ISNULL(S.Qty, 0)) AS lqty FROM SMDD');
    SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT SMDDSS.DDBH, SUM(okcts*qty) AS Qty FROM SMDDSS');
    //20120226 修改判斷部門生產別過濾挑選訂單
    if (AndonInputRev_AE.DepGXLB = 'A') then
      SQL.Add('    WHERE SMDDSS.GXLB = ''A''');
    if (AndonInputRev_AE.DepGXLB = 'S') then
      SQL.Add('    WHERE SMDDSS.GXLB = ''S''');
    if (AndonInputRev_AE.DepGXLB = 'C') then
      SQL.Add('    WHERE SMDDSS.GXLB = ''C''');
    SQL.Add('    GROUP BY SMDDSS.DDBH');
    SQL.Add('  ) AS S ON SMDD.DDBH = S.DDBH');
    SQL.Add('  INNER JOIN XXZL AS X ON X.XieXing = DDZL.XieXing AND X.SheHao = DDZL.SheHao');
    SQL.Add('  WHERE DDZL.YN = ''1'' AND DDZL.DDRQ > DATEADD(MONTH, -3, GetDate())'); //有沒有入庫
    SQL.Add('  AND SMDD.PlanDate <= GetDate() AND SMDD.DepNo = ''' + AndonInputRev_AE.DepID + ''' AND DDZL.GSBH = ''' + main.Edit2.Text + '''');
    //已排產   派工組別
    if (AndonInputRev_AE.DepGXLB = 'A') then
      SQL.Add('  AND SMDD.GXLB = ''A''');
    if (AndonInputRev_AE.DepGXLB = 'S') then
      SQL.Add('  AND SMDD.GXLB = ''S''');
    if (AndonInputRev_AE.DepGXLB = 'C') then
      SQL.Add('  AND SMDD.GXLB = ''C''');
    SQL.Add('  GROUP BY SMDD.YSBH, X.XieXing, X.SheHao, X.DAOMH, X.XieMing');
    SQL.Add(') AS DDZL');
    SQL.Add('WHERE lqty > 0');
    SQL.Add('ORDER BY YSBH');
    Active := true;
  end;
  edtRY.SetFocus;
end;

procedure TQCOnTime_DepRev_AE.gdehMainDblClick(Sender: TObject);
var
  i : integer;
  PageTitle: string;
  IsExit: boolean;
begin
  IsExit := false;
  with AndonInputRev_AE do
  begin
    if (TabletPairs <> 0) then
      TabletTimerTimer(Nil);
    PageTitle := AndonInputRev_AE.DepName + '#' + Qry1.fieldbyname('YSBH').AsString;
    for i := 0 to pgcContent.PageCount - 1 do
      if pgcContent.Pages[i].Caption = PageTitle then
      begin
        IsExit := true;
        break;
      end;
    //訂單不存在
    if IsExit=false then
    begin
      AndonInputRev_AE.edtRY.Text:=Qry1.fieldbyname('YSBH').AsString;
      //儲存變數
      AndonInputRev_AE.OrderRY:=Qry1.fieldbyname('YSBH').AsString;
      AndonInputRev_AE.XieXing:=Qry1.fieldbyname('XieXing').AsString;
      AndonInputRev_AE.DAOMH:=Qry1.fieldbyname('DAOMH').AsString;
      AndonInputRev_AE.XieMing:=Qry1.fieldbyname('XieMing').AsString;
      //新增分頁
      addTabSheet();
      self.ModalResult:=mrOK; // 回傳&關閉
    end;
  end;
end;

procedure TQCOnTime_DepRev_AE.FormDestroy(Sender: TObject);
begin
  QCOnTime_DepRev_AE := nil; //---為了完整真正釋放此子視窗，配合 Action := caFree;
end;

procedure TQCOnTime_DepRev_AE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree; //---為了完整真正釋放此子視窗
end;

procedure TQCOnTime_DepRev_AE.pnlQueryClick(Sender: TObject);
begin
  if Length(edtRY.Text) >= 8 then
  begin
    with qry1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT * FROM (');
      SQL.Add('  SELECT SMDD.YSBH, X.XieXing, X.SheHao, X.DAOMH, X.XieMing, MAX(DDZL.Pairs)-SUM(ISNULL(S.Qty, 0)) AS lqty FROM SMDD');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT SMDDSS.DDBH, SUM(okcts*qty) AS Qty FROM SMDDSS');
      //20120226 修改判斷部門生產別過濾挑選訂單
      if (AndonInputRev_AE.DepGXLB = 'A') then
        SQL.Add('    WHERE SMDDSS.GXLB = ''A''');
      if (AndonInputRev_AE.DepGXLB = 'S') then
        SQL.Add('    WHERE SMDDSS.GXLB = ''S''');
      if (AndonInputRev_AE.DepGXLB = 'C') then
        SQL.Add('    WHERE SMDDSS.GXLB = ''C''');
      SQL.Add('    GROUP BY SMDDSS.DDBH');
      SQL.Add('  ) AS S ON SMDD.DDBH = S.DDBH');
      SQL.Add('  INNER JOIN XXZL AS X ON X.XieXing = DDZL.XieXing AND X.SheHao = DDZL.SheHao');
      SQL.Add('  WHERE DDZL.GSBH = ''' + main.Edit2.Text + '''');
      //已排產   派工組別
      if (AndonInputRev_AE.DepGXLB = 'A') then
        SQL.Add('  AND SMDD.GXLB = ''A''');
      if (AndonInputRev_AE.DepGXLB = 'S') then
        SQL.Add('  AND SMDD.GXLB = ''S''');
      if (AndonInputRev_AE.DepGXLB = 'C') then
        SQL.Add('  AND SMDD.GXLB = ''C''');
      SQL.Add('  AND SMDD.DDBH LIKE ''' + edtRY.Text + '%''');
      SQL.Add('  GROUP BY SMDD.YSBH, X.XieXing, X.SheHao, X.DAOMH, X.XieMing');
      SQL.Add(') AS DDZL');
      SQL.Add('ORDER BY YSBH');
      Active := true;
    end;
  end
  else begin
    ShowMessage('Please enter at least 8 words.');
  end;
  edtRY.SetFocus;
end;

end.

