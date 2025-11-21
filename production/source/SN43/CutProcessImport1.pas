unit CutProcessImport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables,
  Dateutils, Buttons;

type
  TCutProcessImport = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    EDIT_DLNO: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    XuongCB: TComboBox;
    Label5: TLabel;
    DepNameCB: TComboBox;
    Query1: TQuery;
    DataSource1: TDataSource;
    QTemp: TQuery;
    CB_PlanDate: TCheckBox;
    Query1DLNO: TStringField;
    Query1DLLB: TStringField;
    Query1DepName: TStringField;
    Query1PlanDate: TDateTimeField;
    Query1Memo: TStringField;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2BWBH: TStringField;
    Query2BWYWSM: TStringField;
    Query2BWZWSM: TStringField;
    Query2GCBWBH: TStringField;
    Query2GCYWSM: TStringField;
    Query2GCZWSM: TStringField;
    Query2ZLBH: TStringField;
    Query2SIZE: TStringField;
    Query2Qty: TIntegerField;
    Query2DDBH: TStringField;
    Query2ProcessStatus: TIntegerField;
    Query1ListStatus: TIntegerField;
    BB9: TBitBtn;
    DTP: TDateTimePicker;
    EDIT_MEMO: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    Query2CuttingStatus: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XuongCBChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB9Click(Sender: TObject);
  private
    DepIDList: TStringlist;
    procedure SetFactory;
    procedure SetDepartment;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CutProcessImport: TCutProcessImport;

implementation

uses main1;

{$R *.dfm}

procedure TCutProcessImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCutProcessImport.FormDestroy(Sender: TObject);
begin
  CutProcessImport := Nil;
end;

procedure TCutProcessImport.FormCreate(Sender: TObject);
begin
  DepIDList := TStringList.Create;
  DTP.Date := Date;
  DTP1.Date := StartOfTheWeek(IncWeek(Date, 1));
  DTP2.Date := EndOfTheWeek(IncWeek(Date, 1));
  SetFactory;
end;

procedure TCutProcessImport.SetFactory;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Xuong FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL');
    SQL.Add('AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND ISNULL(Xuong, '''') <> ''''');
    SQL.Add('GROUP BY Xuong');
    SQL.Add('ORDER BY CONVERT(INT, REPLACE(Xuong, ''A'', ''''))');
    Active := true;

    XuongCB.Items.Clear;
    XuongCB.Items.Add('');
    while not Eof do              
    begin
      XuongCB.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
  end;
end;

procedure TCutProcessImport.SetDepartment;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID,DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong = ''' + XuongCB.Text + '''');
    SQL.Add('ORDER BY ID');
    Active := true;

    DepNameCB.Items.Clear;
    DepNameCB.Items.Add('');
    DepIDList.Clear;
    DepIDList.Add('');

    while not Eof do
    begin
      DepNameCB.Items.Add(FieldByName('DepName').AsString);
      DepIDList.Add(FieldByName('ID').AsString);
      Next;
    end;
  end;
end;

procedure TCutProcessImport.XuongCBChange(Sender: TObject);
begin
  SetDepartment;
end;

procedure TCutProcessImport.Button1Click(Sender: TObject);
var
  DLNOList: string;
begin
  DLNOList := '';
  if (Edit_DLNO.Text <> '') then
  begin
    DLNOList := StringReplace(Edit_DLNO.Text, ' ', '', [rfReplaceAll]);
    DLNOList := '(''' + StringReplace(DLNOList, ',', ''',''', [rfReplaceAll]) + ''')';
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DLNO, DLLB, DepName, PlanDate, memo, CASE WHEN ZLQty <= DQty THEN 1 ELSE 0 END AS ListStatus FROM (');
    SQL.Add('  SELECT CutDispatchSS.DLNO, DLLB, MIN(DepName) AS DepName, MIN(SMDD.PlanDate) AS PlanDate, memo, SUM(ISNULL(CutDispatchSS.Qty, 0)) AS ZLQty, SUM(ISNULL(CutDispatchSS_GC.Qty, 0)) AS DQty FROM CutDispatchSS');
    SQL.Add('  LEFT JOIN CutDispatch ON CutDispatch.DLNO = CutDispatchSS.DLNO');
    SQL.Add('  LEFT JOIN CutDispatchZL_GC ON CutDispatchZL_GC.ZLBH = CutDispatchSS.ZLBH AND CutDispatchZL_GC.BWBH = CutDispatchSS.BWBH AND CutDispatchZL_GC.CLBH = CutDispatchSS.CLBH AND CutDispatchZL_GC.SIZE = CutDispatchSS.SIZE');
    SQL.Add('  LEFT JOIN CutDispatchSS_GC ON CutDispatchSS_GC.ZLBH = CutDispatchSS.ZLBH AND CutDispatchSS_GC.DDBH = CutDispatchSS.DDBH AND CutDispatchSS_GC.BWBH = CutDispatchSS.BWBH AND CutDispatchSS_GC.SIZE = CutDispatchSS.SIZE');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.DDBH = CutDispatchSS.DDBH AND GXLB = ''C''');
    SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SMDD.DepNO');
    SQL.Add('  WHERE CutDispatchZL_GC.ZLBH IS NOT NULL');
    if (DLNOList <> '') then
      SQL.Add('  AND CutDispatchSS.DLNO IN ' + DLNOList);
    if (DepNameCB.ItemIndex > -1) then
      SQL.Add('  AND SMDD.DepNO = ''' + DepIDList.Strings[DepNameCB.ItemIndex] + '''');
    if (CB_PlanDate.Checked) then
      SQL.Add('  AND CONVERT(VARCHAR, SMDD.PlanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('  GROUP BY CutDispatchSS.DLNO, DLLB, memo');
    SQL.Add(') AS CutDispatchSS');
    SQL.Add('ORDER BY CASE WHEN ZLQty <= DQty THEN 1 ELSE 0 END, PlanDate');
    Active := true;
  end;

  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZLBH, DDBH, BWBH, BWYWSM, BWZWSM, GCBWBH, GCYWSM, GCZWSM, SIZE, Qty, ProcessStatus, CuttingStatus FROM (');
    SQL.Add('  SELECT CutDispatchSS.ZLBH, CutDispatchSS.DDBH, CutDispatchSS.BWBH, bwzl.ywsm AS BWYWSM, bwzl.zwsm AS BWZWSM, CutDispatchZL_GC.GCBWBH, KT_SOPCutS_GCBWD.ywsm AS GCYWSM, KT_SOPCutS_GCBWD.zwsm AS GCZWSM, CutDispatchSS.SIZE, CutDispatchSS.Qty,');
    SQL.Add('  CASE WHEN CutDispatchSS.Qty <= CutDispatchSS_GC.Qty THEN 1 ELSE 0 END AS ProcessStatus,');
    SQL.Add('  CASE WHEN CutDispatchS.okCutNum = CutDispatchS.CutNum THEN 1 ELSE 0 END AS CuttingStatus FROM CutDispatchSS');
    SQL.Add('  LEFT JOIN CutDispatchS ON CutDispatchS.DLNO = CutDispatchSS.DLNO AND CutDispatchS.ZLBH = CutDispatchSS.ZLBH AND CutDispatchS.BWBH = CutDispatchSS.BWBH AND CutDispatchS.SIZE = CutDispatchSS.SIZE AND CutDispatchS.CLBH = CutDispatchSS.CLBH');
    SQL.Add('  LEFT JOIN CutDispatchZL_GC ON CutDispatchZL_GC.ZLBH = CutDispatchSS.ZLBH AND CutDispatchZL_GC.BWBH = CutDispatchSS.BWBH AND CutDispatchZL_GC.CLBH = CutDispatchSS.CLBH AND CutDispatchZL_GC.SIZE = CutDispatchSS.SIZE');
    SQL.Add('  LEFT JOIN CutDispatchSS_GC ON CutDispatchSS_GC.ZLBH = CutDispatchSS.ZLBH AND CutDispatchSS_GC.DDBH = CutDispatchSS.DDBH AND CutDispatchSS_GC.BWBH = CutDispatchSS.BWBH AND CutDispatchSS_GC.SIZE = CutDispatchSS.SIZE');
    SQL.Add('  LEFT JOIN KT_SOPCutS_GCBWD ON KT_SOPCutS_GCBWD.gcbwdh = CutDispatchZL_GC.GCBWBH');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT bwdh, ywsm, zwsm FROM bwzl');
    SQL.Add('    UNION ALL');
    SQL.Add('    SELECT gcbwdh, ywsm, zwsm FROM KT_SOPCutS_GCBW');
    SQL.Add('  ) AS bwzl ON bwzl.bwdh = CutDispatchSS.BWBH');
    SQL.Add('  WHERE CutDispatchSS.DLNO = :DLNO AND CutDispatchZL_GC.ZLBH IS NOT NULL');
    SQL.Add(') AS CutDispatchSS');
    SQL.Add('ORDER BY ProcessStatus, DDBH, SIZE');
    
    {SQL.Add('If (OBJECT_ID(''tempdb..#TempImport'') Is Not Null)');
    SQL.Add('Begin Drop Table #TempImport End');

    SQL.Add('SELECT CutDispatchZL_GC.BWBH, bwzl.ywsm AS BWYWSM, bwzl.zwsm AS BWZWSM, CutDispatchZL_GC.GCBWBH, KT_SOPCutS_GCBWD.ywsm AS GCYWSM,');
    SQL.Add('KT_SOPCutS_GCBWD.zwsm AS GCZWSM, CutDispatchS.ZLBH, CutDispatchS.SIZE, CutDispatchS.Qty INTO #TempImport FROM CutDispatchS');
    SQL.Add('LEFT JOIN CutDispatchZL_GC ON CutDispatchZL_GC.ZLBH = CutDispatchS.ZLBH AND CutDispatchZL_GC.BWBH = CutDispatchS.BWBH AND CutDispatchZL_GC.CLBH = CutDispatchS.CLBH AND CutDispatchZL_GC.SIZE = CutDispatchS.SIZE');
    SQL.Add('LEFT JOIN KT_SOPCutS_GCBWD ON KT_SOPCutS_GCBWD.gcbwdh = CutDispatchZL_GC.GCBWBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT bwdh, ywsm, zwsm FROM bwzl');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT gcbwdh, ywsm, zwsm FROM KT_SOPCutS_GCBWD');
    SQL.Add(') AS bwzl ON bwzl.bwdh = CutDispatchZL_GC.BWBH');
    SQL.Add('WHERE CutDispatchS.DLNO = :DLNO AND CutDispatchZL_GC.ZLBH IS NOT NULL');

    SQL.Add('SELECT BWBH, BWYWSM, BWZWSM, GCBWBH, GCYWSM, GCZWSM, ZLBH, CAST(LEFT(SIZE, LEN(SIZE)-1) AS VARCHAR) AS SIZE, SUM(Qty) AS Qty FROM (');
    SQL.Add('  SELECT BWBH, BWYWSM, BWZWSM, GCBWBH, GCYWSM, GCZWSM, ZLBH,');
    SQL.Add('  (SELECT DISTINCT SIZE + '','' FROM #TempImport');
    SQL.Add('  WHERE BWBH = TempData1.BWBH AND GCBWBH = TempData1.GCBWBH AND ZLBH = TempData1.ZLBH');
    SQL.Add('  FOR XML PATH('''')) AS SIZE, Qty');
    SQL.Add('  FROM #TempImport AS TempData1');
    SQL.Add(') AS ImportData');
    SQL.Add('GROUP BY BWBH, BWYWSM, BWZWSM, GCBWBH, GCYWSM, GCZWSM, ZLBH, SIZE');}
    Active := true;
  end;
end;

procedure TCutProcessImport.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('ListStatus').AsInteger = 1) then
  begin
    DBGridEh1.Canvas.Font.Color := $0038DE1B;
  end;
end;

procedure TCutProcessImport.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query2.FieldByName('ProcessStatus').AsInteger = 1) then
  begin
    DBGridEh2.Canvas.Font.Color := $0038DE1B;
  end;
end;

procedure TCutProcessImport.BB9Click(Sender: TObject);
var
  DLNO, DepID: string;
begin
  BB9.Enabled := false;
  Query2.First;
  while not Query2.Eof do
  begin
    if (Query2.FieldByName('CuttingStatus').AsInteger = 0) then
    begin
      ShowMessage('There are some uncompleted parts in this list, dispatch denied.');
      Exit;
    end;
    Query2.Next;
  end;
  
  //計算領料單流水號
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DLNO, YEAR(GETDATE()) AS DLYear, RIGHT(''00'' + CONVERT(VARCHAR, MONTH(GETDATE())), 2) AS DLMonth FROM CutDispatch_GC');
    SQL.Add('WHERE DLNO LIKE CONVERT(VARCHAR, YEAR(GETDATE())) + RIGHT(''00'' + CONVERT(VARCHAR, MONTH(GETDATE())), 2) + ''%''');
    SQL.Add('ORDER BY DLNO');
    Active := true;

    if (RecordCount > 0) then
    begin
      Last;
      DLNO := FieldByName('DLNO').AsString;
      DLNO := Copy(DLNO, 7, 5);
      DLNO := IntToStr(StrToInt(DLNO) + 1);

      while (Length(DLNO) < 5) do
      begin
        DLNO := '0' + DLNO;
      end;
    end
    else begin
      DLNO := '00001';
    end;
    Active := false;

    SQL.Clear;
    SQL.Add('SELECT YEAR(GETDATE()) AS DLYear, RIGHT(''00'' + CONVERT(VARCHAR, MONTH(GETDATE())), 2) AS DLMonth');
    Active := true;
    DLNO := FieldByName('DLYear').AsString + FieldByName('DLMonth').AsString + DLNO;
    Active := false;

    SQL.Clear;
    SQL.Add('SELECT DepID FROM CutDispatch WHERE DLNO = ''' + Query1.FieldByName('DLNO').AsString + '''');
    Active := true;
    DepID := FieldByName('DepID').AsString;
    Active := false;

    SQL.Clear;
    SQL.Add('INSERT INTO CutDispatch_GC');
    SQL.Add('(DLNO, GSBH, DepID, PlanDate, Memo, USERID, USERDATE, CFMID, CFMDate, YN)');
    SQL.Add('VALUES');
    SQL.Add('(''' + DLNO + ''', ''' + main.Edit2.Text + ''', ''' + DepID + ''', ''' + FormatDatetime('yyyy/MM/dd', DTP.Date) + ''', ''' + EDIT_MEMO.Text + ''', ''' + main.Edit1.Text + ''', GetDate(), ''NO'', NULL, 1)');
    ExecSQL();

    SQL.Clear;
    SQL.Add('INSERT INTO CutDispatchS_GC');
    SQL.Add('SELECT ''' + DLNO + ''' AS DLNO, CutDispatchS.ZLBH, CutDispatchZL_GC.GCBWBH, CutDispatchS.SIZE, CutDispatchS.BWBH, CutDispatchS.Qty AS TmpQty, 0 AS Qty, GETDATE() AS USERDATE, ''' + main.Edit1.Text + ''' AS USERID, 1 AS YN FROM CutDispatchS');
    SQL.Add('LEFT JOIN CutDispatchZL_GC ON CutDispatchZL_GC.ZLBH = CutDispatchS.ZLBH AND CutDispatchZL_GC.BWBH = CutDispatchS.BWBH AND CutDispatchZL_GC.CLBH = CutDispatchS.CLBH AND CutDispatchZL_GC.SIZE = CutDispatchS.SIZE');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZLBH, GCBWBH, SIZE, BWBH, SUM(TmpQty) AS Qty FROM CutDispatchS_GC');
    SQL.Add('  GROUP BY ZLBH, GCBWBH, SIZE, BWBH');
    SQL.Add(') AS CutDispatchS_GC ON CutDispatchS_GC.ZLBH = CutDispatchZL_GC.ZLBH AND CutDispatchS_GC.BWBH = CutDispatchZL_GC.BWBH AND CutDispatchS_GC.SIZE = CutDispatchZL_GC.SIZE AND CutDispatchS_GC.GCBWBH = CutDispatchZL_GC.GCBWBH');
    SQL.Add('WHERE CutDispatchS.DLNO = ''' + Query1.FieldByName('DLNO').AsString + ''' AND ISNULL(CutDispatchZL_GC.Qty, 0) > ISNULL(CutDispatchS_GC.Qty, 0)');
    ExecSQL();

    SQL.Clear;
    SQL.Add('INSERT INTO CutDisPatchSS_GC');
    SQL.Add('SELECT ''' + DLNO + ''' AS DLNO, CutDispatchSS.ZLBH, CutDispatchSS.DDBH, CutDispatchZL_GC.GCBWBH, CutDispatchSS.SIZE, CutDispatchSS.BWBH, CutDispatchSS.Qty, 0 AS ScanQty, GETDATE() AS USERDATE, ''' + main.Edit1.Text + ''' AS USERID, 1 AS YN FROM CutDispatchSS');
    SQL.Add('LEFT JOIN CutDispatchZL_GC ON CutDispatchZL_GC.ZLBH = CutDispatchSS.ZLBH AND CutDispatchZL_GC.BWBH = CutDispatchSS.BWBH AND CutDispatchZL_GC.CLBH = CutDispatchSS.CLBH AND CutDispatchZL_GC.SIZE = CutDispatchSS.SIZE');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZLBH, GCBWBH, SIZE, BWBH, SUM(Qty) AS Qty FROM CutDispatchSS_GC');
    SQL.Add('  GROUP BY ZLBH, GCBWBH, SIZE, BWBH');
    SQL.Add(') AS CutDispatchSS_GC ON CutDispatchSS_GC.ZLBH = CutDispatchZL_GC.ZLBH AND CutDispatchSS_GC.BWBH = CutDispatchZL_GC.BWBH AND CutDispatchSS_GC.SIZE = CutDispatchZL_GC.SIZE AND CutDispatchSS_GC.GCBWBH = CutDispatchZL_GC.GCBWBH');
    SQL.Add('WHERE CutDispatchSS.DLNO = ''' + Query1.FieldByName('DLNO').AsString + ''' AND ISNULL(CutDispatchZL_GC.Qty, 0) > ISNULL(CutDispatchSS_GC.Qty, 0)');
    ExecSQL();
  end;

  DLNO := Query1.FieldByName('DLNO').AsString;
  Query1.Active := false;
  Query1.Active := false;
  Query1.Active := true;
  Query1.Locate('DLNO', DLNO, []);
  Query2.Active := true;

  ShowMessage('Success!');
  BB9.Enabled := true;
end;

end.
