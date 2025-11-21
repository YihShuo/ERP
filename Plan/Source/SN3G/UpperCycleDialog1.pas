unit UpperCycleDialog1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TUpperCycleDialog = class(TForm)
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1CheckStatus: TBooleanField;
    Query1DDBH: TStringField;
    Query1Cycle: TStringField;
    UpdateSQL1: TUpdateSQL;
    Panel1: TPanel;
    Button1: TButton;
    QUpdate: TQuery;
    Query1SelectedPairs: TIntegerField;
    Query1Pairs: TIntegerField;
    Query1CyclePairs: TIntegerField;
    QSearch: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query1PairsChange(Sender: TField);
    procedure DBGridEh1Columns4UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
  private
    Source, ListNo, RY: string;
    SelectAll: boolean;
    { Private declarations }
  public
    procedure LoadData(sMode, sListNo, sBuilding, sLean, sRY: string);
    { Public declarations }
  end;

var
  UpperCycleDialog: TUpperCycleDialog;

implementation

uses
  main1, ShoeUpperInventory1;

{$R *.dfm}

procedure TUpperCycleDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TUpperCycleDialog.FormDestroy(Sender: TObject);
begin
  UpperCycleDialog := Nil;
end;

procedure TUpperCycleDialog.LoadData(sMode, sListNo, sBuilding, sLean, sRY: string);
begin
  Source := sMode;
  ListNo := sListNo;
  RY := sRY;
  SelectAll := true;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;

    if (Source = 'Stock-In') then
    begin
      SQL.Add('SELECT CheckStatus, DDBH, Cycle, CyclePairs, SelectedPairs, ISNULL(Pairs, CyclePairs - SelectedPairs) AS Pairs FROM (');
      SQL.Add('  SELECT CAST(MAX(CASE WHEN KCRKS_Upper.RKNO IS NULL OR KCRKS_Upper.RKNO <> ''' + ListNo + ''' THEN 0 ELSE 1 END) AS BIT) AS CheckStatus, SMDD.DDBH,');
      SQL.Add('  CASE WHEN SMDD.YSBH = SMDD.DDBH THEN ''T1'' ELSE ''T'' + CAST(CAST(RIGHT(SMDD.DDBH, 3) AS INT) AS VARCHAR) END AS Cycle, SMDD.Qty AS CyclePairs,');
      SQL.Add('  ISNULL(SUM(CASE WHEN KCRKS_Upper.RKNO IS NOT NULL AND KCRKS_Upper.RKNO <> ''' + sListNo + ''' THEN ISNULL(KCRKS_Upper.Pairs, 0) END), 0) AS SelectedPairs,');
      SQL.Add('  SUM(CASE WHEN KCRKS_Upper.RKNO = ''' + ListNo + ''' THEN ISNULL(KCRKS_Upper.Pairs, 0) END) AS Pairs FROM (');
      SQL.Add('    SELECT SC.DDBH,');
      SQL.Add('    ISNULL(CAST(SUBSTRING(SC.TotalCycles, 1, CHARINDEX(''-'', SC.TotalCycles)-1) AS INT), 0) AS MinCycle,');
      SQL.Add('    ISNULL(CAST(SUBSTRING(SC.TotalCycles, CHARINDEX(''-'', SC.TotalCycles)+1, 10) AS INT), 9999) AS MaxCycle FROM (');
      SQL.Add('      SELECT DDBH, CASE WHEN ISNUMERIC(TotalCycles) = 1 THEN TotalCycles ELSE NULL END AS TotalCycles, Seq FROM (');
      SQL.Add('        SELECT DDZL.DDBH,');
      SQL.Add('        CASE WHEN REPLACE(SC.stitching, '' '', '''') LIKE ''T%'' THEN REPLACE(REPLACE(REPLACE(SC.stitching, '' '', ''''), ''~'', ''-''), ''T'', '''') ELSE NULL END AS TotalCycles,');
      SQL.Add('        ROW_NUMBER() OVER(ORDER BY SC.schedule_date DESC, SC.ry_index DESC) AS Seq FROM schedule_crawler AS SC');
      SQL.Add('        LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('        WHERE SC.building_no = ''' + sBuilding + ''' AND SUBSTRING(SC.lean_no, 1, 6) = ''' + sLean + ''' AND DDZL.DDBH = ''' + RY + '''');
      SQL.Add('      ) AS SC');
      SQL.Add('    ) AS SC');
      SQL.Add('    WHERE SC.Seq = 1');
      SQL.Add('  ) AS SC');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = SC.DDBH AND CASE WHEN SMDD.YSBH = SMDD.DDBH THEN 1 ELSE CAST(RIGHT(SMDD.DDBH, 3) AS INT) END BETWEEN SC.MinCycle AND SC.MaxCycle AND SMDD.GXLB = ''A''');
      SQL.Add('  LEFT JOIN KCRKS_Upper ON KCRKS_Upper.DDBH = SMDD.DDBH');
      SQL.Add('  GROUP BY SMDD.YSBH, SMDD.DDBH, SMDD.Qty');
      SQL.Add(') AS SC');
      SQL.Add('WHERE CyclePairs > SelectedPairs');
      SQL.Add('ORDER BY DDBH');
    end
    else if (Source = 'Stock-Out') then
    begin
      SQL.Add('SELECT CheckStatus, DDBH, Cycle, CyclePairs, SelectedPairs, ISNULL(Pairs, CyclePairs - SelectedPairs) AS Pairs FROM (');
      SQL.Add('  SELECT CAST(MAX(CASE WHEN KCLLS_Upper.LLNO IS NULL OR KCLLS_Upper.LLNO <> ''' + ListNo + ''' THEN 0 ELSE 1 END) AS BIT) AS CheckStatus, KCRK.DDBH, KCRK.Cycle, KCRK.CyclePairs,');
      SQL.Add('  ISNULL(SUM(CASE WHEN KCLLS_Upper.LLNO IS NOT NULL AND KCLLS_Upper.LLNO <> ''' + ListNo + ''' THEN ISNULL(KCLLS_Upper.Pairs, 0) END), 0) AS SelectedPairs,');
      SQL.Add('  SUM(CASE WHEN KCLLS_Upper.LLNO = ''' + ListNo + ''' THEN ISNULL(KCLLS_Upper.Pairs, 0) END) AS Pairs FROM (');
      SQL.Add('    SELECT KCRKS_Upper.DDBH, CASE WHEN KCRK_Upper.RY = KCRKS_Upper.DDBH THEN ''T1'' ELSE ''T'' + CAST(CAST(RIGHT(KCRKS_Upper.DDBH, 3) AS INT) AS VARCHAR) END AS Cycle,');
      SQL.Add('    SUM(KCRKS_Upper.Pairs) AS CyclePairs FROM KCRK_Upper');
      SQL.Add('    LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
      SQL.Add('    WHERE KCRK_Upper.RY = ''' + RY + ''' AND KCRKS_Upper.DDBH IS NOT NULL');
      SQL.Add('    GROUP BY KCRK_Upper.RY, KCRKS_Upper.DDBH');
      SQL.Add('  ) AS KCRK');
      SQL.Add('  LEFT JOIN KCLLS_Upper ON KCLLS_Upper.DDBH = KCRK.DDBH');
      SQL.Add('  GROUP BY KCRK.DDBH, KCRK.Cycle, KCRK.CyclePairs');
      SQL.Add(') AS SC');
      SQL.Add('WHERE CyclePairs > SelectedPairs');
      SQL.Add('ORDER BY DDBH');
    end;

    Active := true;
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
end;

procedure TUpperCycleDialog.Button1Click(Sender: TObject);
var
  i: integer;
begin
  with QUpdate do
  begin
    SQL.Clear;

    if (Source = 'Stock-In') then
    begin
      QSearch.Active := false;
      QSearch.SQL.Clear;
      QSearch.SQL.Add('SELECT KCRK.RY, KCRK.DDBH, KCRK.InPairs, ISNULL(SUM(KCLLS.Pairs), 0) AS OutPairs FROM (');
      QSearch.SQL.Add('  SELECT KCRK.RY, KCRKS.DDBH, ISNULL(SUM(CASE WHEN KCRK.RKNO <> ''' + ListNo + ''' THEN KCRKS.Pairs END), 0) AS InPairs FROM KCRK_Upper AS KCRK');
      QSearch.SQL.Add('  LEFT JOIN KCRKS_Upper AS KCRKS ON KCRKS.RKNO = KCRK.RKNO');
      QSearch.SQL.Add('  WHERE ISNULL(KCRKS.Pairs, 0) > 0 AND KCRK.RY = ''' + RY + '''');
      QSearch.SQL.Add('  GROUP BY KCRK.RY, KCRKS.DDBH');
      QSearch.SQL.Add(') AS KCRK');
      QSearch.SQL.Add('LEFT JOIN KCLL_Upper AS KCLL ON KCLL.RY = KCRK.RY');
      QSearch.SQL.Add('LEFT JOIN KCLLS_Upper AS KCLLS ON KCLLS.LLNO = KCLL.LLNO AND KCLLS.DDBH = KCRK.DDBH');
      QSearch.SQL.Add('GROUP BY KCRK.RY, KCRK.DDBH, KCRK.InPairs');
      QSearch.SQL.Add('HAVING KCRK.InPairs < ISNULL(SUM(KCLLS.Pairs), 0)');
      QSearch.Active := true;

      if (QSearch.RecordCount = 0) then
      begin
        SQL.Add('DELETE FROM KCRKS_Upper WHERE RKNO = ''' + ListNo + ''';');
        ExecSQL;

        SQL.Clear;
        SQL.Add('INSERT INTO KCRKS_Upper (RKNO, DDBH, Pairs, UserID, UserDate, YN)');
        SQL.Add('SELECT ''' + ListNo + ''' AS RKNO, DDBH, Pairs, ''' + main.Edit1.Text + ''' AS UserID, GETDATE() AS UserDate, ''1'' AS YN FROM (');

        Query1.First;
        i := -1;
        while not Query1.Eof do
        begin
          if (Query1.FieldByName('CheckStatus').AsBoolean) then
          begin    
            Inc(i);

            if (i = 0) then
              SQL.Add('  SELECT ''' + Query1.FieldByName('DDBH').AsString + ''' AS DDBH, ' + Query1.FieldByName('Pairs').AsString + ' AS Pairs')
            else
              SQL.Add('  UNION SELECT ''' + Query1.FieldByName('DDBH').AsString + ''' AS DDBH, ' + Query1.FieldByName('Pairs').AsString + ' AS Pairs');
          end;

          Query1.Next;
        end;

        SQL.Add(') AS KCRK');

        if (i >= 0) then
          ExecSQL;

        ShoeUpperInventory.Q_UIC.Active := false;
        ShoeUpperInventory.Q_UIC.Active := true;
      end
      else begin
        ShowMessage('Some cycles of this RY have already been shipped out, execution denied.');
      end;
    end
    else if (Source = 'Stock-Out') then
    begin
      SQL.Add('DELETE FROM KCLLS_Upper WHERE LLNO = ''' + ListNo + ''';');
      ExecSQL;

      SQL.Clear;
      SQL.Add('INSERT INTO KCLLS_Upper (LLNO, DDBH, Pairs, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + ListNo + ''' AS LLNO, DDBH, Pairs, ''' + main.Edit1.Text + ''' AS UserID, GETDATE() AS UserDate, ''1'' AS YN FROM (');

      Query1.First;
      i := -1;
      while not Query1.Eof do
      begin
        if (Query1.FieldByName('CheckStatus').AsBoolean) then
        begin
          Inc(i);

          if (i = 0) then
            SQL.Add('  SELECT ''' + Query1.FieldByName('DDBH').AsString + ''' AS DDBH, ' + Query1.FieldByName('Pairs').AsString + ' AS Pairs')
          else
            SQL.Add('  UNION SELECT ''' + Query1.FieldByName('DDBH').AsString + ''' AS DDBH, ' + Query1.FieldByName('Pairs').AsString + ' AS Pairs');
        end;

        Query1.Next;
      end;

      SQL.Add(') AS KCLL');

      if (i >= 0) then
        ExecSQL;

      ShoeUpperInventory.Q_UOC.Active := false;
      ShoeUpperInventory.Q_UOC.Active := true;
    end;
  end;

  Close;
end;

procedure TUpperCycleDialog.DBGridEh1TitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  if (ACol = 0) then
  begin
    Query1.First;
    Query1.DisableControls;
    while not Query1.Eof do
    begin
      Query1.Edit;
      Query1.FieldByName('CheckStatus').Value := SelectAll;
      Query1.Next;
    end;
    Query1.First;
    Query1.EnableControls;
    SelectAll := not SelectAll;
    if (SelectAll) then
      DBGridEh1.Columns[0].Title.ImageIndex := 0
    else
      DBGridEh1.Columns[0].Title.ImageIndex := 1;
  end;
end;

procedure TUpperCycleDialog.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('CheckStatus').AsBoolean = false) then
    DBGridEh1.Canvas.Font.Color := clSilver
  else if (Query1.FieldByName('SelectedPairs').AsInteger + Query1.FieldByName('Pairs').AsInteger = Query1.FieldByName('CyclePairs').AsInteger) then
    DBGridEh1.Canvas.Font.Color := clLime;
end;

procedure TUpperCycleDialog.Query1PairsChange(Sender: TField);
begin
  if (Query1.FieldByName('Pairs').AsInteger > Query1.FieldByName('CyclePairs').AsInteger - Query1.FieldByName('SelectedPairs').AsInteger) then
    Query1.FieldByName('Pairs').Value := Query1.FieldByName('CyclePairs').AsInteger - Query1.FieldByName('SelectedPairs').AsInteger
  else if (Query1.FieldByName('Pairs').AsInteger < 0) then
    Query1.FieldByName('Pairs').Value := 0;
end;

procedure TUpperCycleDialog.DBGridEh1Columns4UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var
  Formula, Mode: string;
  i, StartPos, ResultPairs, AddPairs: integer;
  isFormula: boolean;
begin
  Formula := Text;
  isFormula := false;

  if (Pos('+', Formula) > 0) OR (Pos('-', Formula) > 0) then
  begin
    isFormula := true;

    if (Formula[1] <> '+') AND (Formula[1] <> '-') then
    begin
      Formula := '+' + Formula;
      Mode := '+';
    end
    else if (Formula[1] = '-') then
    begin
      Mode := '-';
    end;

    ResultPairs := 0;
    StartPos := 0;
    for i := 1 to Length(Formula) do
    begin
      if (Formula[i] = '+') OR (Formula[i] = '-') then
      begin
        if (StartPos > 0) then
        begin
          if (TryStrToInt(Copy(Formula, StartPos, i-StartPos), AddPairs)) then
          begin
            if (Mode = '+') then
              Inc(ResultPairs, AddPairs)
            else
              Inc(ResultPairs, -AddPairs);
          end
          else begin
            isFormula := false;
            Break;
          end;
        end;

        if (Formula[i] = '+') then
          Mode := '+'
        else if (Formula[i] = '-') then
          Mode := '-';
        StartPos := i + 1;
      end;
    end;

    if (StartPos > 0) then
    begin
      if (TryStrToInt(Copy(Formula, StartPos, Length(Formula)-StartPos+1), AddPairs)) then
      begin
        if (Mode = '+') then
          Inc(ResultPairs, AddPairs)
        else
          Inc(ResultPairs, -AddPairs);
      end
      else begin
        isFormula := false;
      end;
    end;
  end;

  if (isFormula) then
    Text := IntToStr(ResultPairs);
end;

end.
