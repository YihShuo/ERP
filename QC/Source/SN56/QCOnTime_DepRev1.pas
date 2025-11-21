unit QCOnTime_DepRev1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, Grids, DBGrids, ExtCtrls, jpeg, StdCtrls, GridsEh,
  DBGridEh, StrUtils,IniFiles;

type
  TQCOnTime_DepRev = class(TForm)
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
    procedure FormCreate(Sender: TObject);
  private
    IsAllowUserID:Boolean;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  QCOnTime_DepRev: TQCOnTime_DepRev;

implementation

uses main1,AndonInputRev1, FunUnit;

{$R *.dfm}
procedure TQCOnTime_DepRev.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  //
  UserIDList:='00523';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDList:=MyIni.ReadString('ERP','QC_N56_CheckUserID','00523');
    finally
      MyIni.Free;
    end;
  end;
  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
end;

procedure TQCOnTime_DepRev.imgClose01Click(Sender: TObject);
begin
  Close;
end;

procedure TQCOnTime_DepRev.FormActivate(Sender: TObject);
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
    if (AndonInputRev.DepGXLB = 'A') then
      SQL.Add('    WHERE SMDDSS.GXLB = ''A''');
    if (AndonInputRev.DepGXLB = 'S') then
      SQL.Add('    WHERE SMDDSS.GXLB = ''S''');
    if (AndonInputRev.DepGXLB = 'C') then
      SQL.Add('    WHERE SMDDSS.GXLB = ''C''');
    SQL.Add('    GROUP BY SMDDSS.DDBH');
    SQL.Add('  ) AS S ON SMDD.DDBH = S.DDBH');
    SQL.Add('  INNER JOIN XXZL AS X ON X.XieXing = DDZL.XieXing AND X.SheHao = DDZL.SheHao');
    SQL.Add('  WHERE DDZL.YN = ''1'' AND DDZL.DDRQ > DATEADD(MONTH, -3, GetDate())'); //有沒有入庫
    SQL.Add('  AND SMDD.PlanDate <= GetDate() AND SMDD.DepNo = ''' + AndonInputRev.DepID + ''' AND DDZL.GSBH = ''' + main.Edit2.Text + '''');
    //已排產   派工組別
    if (AndonInputRev.DepGXLB = 'A') then
      SQL.Add('  AND SMDD.GXLB = ''A''');
    if (AndonInputRev.DepGXLB = 'S') then
      SQL.Add('  AND SMDD.GXLB = ''S''');
    if (AndonInputRev.DepGXLB = 'C') then
      SQL.Add('  AND SMDD.GXLB = ''C''');
    SQL.Add('  GROUP BY SMDD.YSBH, X.XieXing, X.SheHao, X.DAOMH, X.XieMing');
    SQL.Add(') AS DDZL');
    SQL.Add('WHERE lqty > 0');
    SQL.Add('ORDER BY YSBH');
    Active := true;
  end;
  edtRY.SetFocus;
end;

procedure TQCOnTime_DepRev.gdehMainDblClick(Sender: TObject);
var
  i : integer;
  PageTitle: string;
  IsExit: boolean;
begin
  IsExit := false;
  with AndonInputRev do
  begin
    if (TabletPairs <> 0) then
      TabletTimerTimer(Nil);
    PageTitle := AndonInputRev.DepName + '#' + Qry1.fieldbyname('YSBH').AsString;
    for i := 0 to pgcContent.PageCount - 1 do
      if pgcContent.Pages[i].Caption = PageTitle then
      begin
        IsExit := true;
        break;
      end;
    //訂單不存在
    if IsExit=false then
    begin
      AndonInputRev.edtRY.Text:=Qry1.fieldbyname('YSBH').AsString;
      //儲存變數
      AndonInputRev.OrderRY:=Qry1.fieldbyname('YSBH').AsString;
      AndonInputRev.XieXing:=Qry1.fieldbyname('XieXing').AsString;
      AndonInputRev.DAOMH:=Qry1.fieldbyname('DAOMH').AsString;
      AndonInputRev.XieMing:=Qry1.fieldbyname('XieMing').AsString;
      //新增分頁
      addTabSheet();
      self.ModalResult:=mrOK; // 回傳&關閉
    end;
  end;
end;

procedure TQCOnTime_DepRev.FormDestroy(Sender: TObject);
begin
  QCOnTime_DepRev := nil; //---為了完整真正釋放此子視窗，配合 Action := caFree;
end;

procedure TQCOnTime_DepRev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree; //---為了完整真正釋放此子視窗
end;

procedure TQCOnTime_DepRev.pnlQueryClick(Sender: TObject);
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
      if (AndonInputRev.DepGXLB = 'A') then
        SQL.Add('    WHERE SMDDSS.GXLB = ''A''');
      if (AndonInputRev.DepGXLB = 'S') then
        SQL.Add('    WHERE SMDDSS.GXLB = ''S''');
      if (AndonInputRev.DepGXLB = 'C') then
        SQL.Add('    WHERE SMDDSS.GXLB = ''C''');
      SQL.Add('    GROUP BY SMDDSS.DDBH');
      SQL.Add('  ) AS S ON SMDD.DDBH = S.DDBH');
      SQL.Add('  INNER JOIN XXZL AS X ON X.XieXing = DDZL.XieXing AND X.SheHao = DDZL.SheHao');
      SQL.Add('  WHERE DDZL.GSBH = ''' + main.Edit2.Text + '''');
      //已排產   派工組別
      if (AndonInputRev.DepGXLB = 'A') then
        SQL.Add('  AND SMDD.GXLB = ''A''');
      if (AndonInputRev.DepGXLB = 'S') then
        SQL.Add('  AND SMDD.GXLB = ''S''');
      if (AndonInputRev.DepGXLB = 'C') then
        SQL.Add('  AND SMDD.GXLB = ''C''');
      SQL.Add('  AND SMDD.DDBH LIKE ''' + edtRY.Text + '%''');
      if IsAllowUserID=false then
      begin
        SQL.Add('  AND SMDD.DepNo = ''' + AndonInputRev.DepID + ''' ');
      end;
      SQL.Add('  GROUP BY SMDD.YSBH, X.XieXing, X.SheHao, X.DAOMH, X.XieMing');
      SQL.Add(') AS DDZL');
      SQL.Add('ORDER BY YSBH');
      //funcobj.WriteErrorLog(sql.Text);
      Active := true;
    end;
  end
  else begin
    ShowMessage('Please enter at least 8 words.');
  end;
  edtRY.SetFocus;
end;

procedure TQCOnTime_DepRev.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.

