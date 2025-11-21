unit Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, DB, ADODB, jpeg, Math, Menus;

type
  TDetails = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel10: TPanel;
    Label8: TLabel;
    ADOQuery3: TADOQuery;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    PopupMenu1: TPopupMenu;
    LoadImage1: TMenuItem;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    LoadImage2: TMenuItem;
    LoadImage3: TMenuItem;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid3DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure LoadImage1Click(Sender: TObject);
    procedure LoadImage2Click(Sender: TObject);
    procedure LoadImage3Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  Details: TDetails;
  Path: string = '\\192.168.123.111\Public\Monitor\';

implementation

{$R *.dfm}

uses
  Monitor1;

procedure TDetails.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDetails.FormDestroy(Sender: TObject);
begin
  Details := nil;
end;

procedure TDetails.FormCreate(Sender: TObject);
begin
  ADOQuery1.ConnectionString := MasterScreen1.ADOQuery1.ConnectionString;
  ADOQuery2.ConnectionString := MasterScreen1.ADOQuery1.ConnectionString;
  ADOQuery3.ConnectionString := MasterScreen1.ADOQuery1.ConnectionString;

  Label5.Caption := MasterScreen1.ADOQuery1.FieldByName('DepName').AsString;
  Label6.Caption := MasterScreen1.ADOQuery1.FieldByName('Qty').AsString;
  
  if (MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString = 'S') then
    Label8.Caption := 'Stitching  '
  else if (MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString = 'A') then
    Label8.Caption := 'Assembly  ';

  with StringGrid1 do
  begin
    Cells[0, 0] := 'ModelName';
    ColWidths[0] := 250;
    Cells[1, 0] := 'Article';
    ColWidths[1] := 123;
    Cells[2, 0] := 'RY (TODAY [output] / [Accu] / [Order] Qty)';
    ColWidths[2] := 680;

    RowHeights[1] := 60;
    Panel7.Height := RowHeights[1]+1;
    RowHeights[2] := 60;
    Panel8.Height := RowHeights[2]+1;
    RowHeights[3] := 60;
    Panel9.Height := RowHeights[3]+1;
    Height := RowHeights[0] + RowHeights[1] + RowHeights[2] + RowHeights[3] + 7;
    Panel2.Height := RowHeights[0] + RowHeights[1] + RowHeights[2] + RowHeights[3] + 7;
    Selection := TGridRect(Rect(-1, -1, -1, -1));
  end;

  with StringGrid2 do
  begin
    Cells[0, 0] := 'Hourly' + #13#10 + 'Performance';
    ColWidths[0] := 139;
    Cells[1, 0] := 'Target';
    ColWidths[1] := 90;
    Cells[2, 0] := '7:00 ~ 8:00';
    Cells[3, 0] := '8:00 ~ 9:00';
    Cells[4, 0] := '9:00 ~ 10:00';
    Cells[5, 0] := '10:00 ~ 11:00';
    Cells[6, 0] := '11:00 ~ 12:00';
    Cells[7, 0] := '12:00 ~ 13:00';
    Cells[8, 0] := '13:00 ~ 14:00';
    Cells[9, 0] := '14:00 ~ 15:00';
    Cells[10, 0] := '15:00 ~ 16:00';
    Cells[11, 0] := '16:00 ~ 17:00';
    Cells[12, 0] := '17:00 ~ 18:00';
    Cells[0, 1] := 'Output';
    Cells[0, 2] := 'Defects';
    Cells[0, 3] := 'FTT%';
    Cells[1, 1] := '>100';
    Cells[1, 2] := '<10';
    Cells[1, 3] := '>91.5%';

    RowHeights[0] := 33;
    Height := RowHeights[0] + RowHeights[1] + RowHeights[2] + RowHeights[3] + 7;
    Selection := TGridRect(Rect(-1, -1, -1, -1));
  end;

  with StringGrid3 do
  begin
    Cells[0, 0] := 'Reason 1';
    Cells[1, 0] := 'Reason 2';
    Cells[2, 0] := 'Reason 3';

    Selection := TGridRect(Rect(-1, -1, -1, -1));
  end;

  LoadData;
end;

procedure TDetails.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    Canvas.FillRect(Rect);
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

    if Pos(#13#10, Cells[ACol, ARow]) > 0 then
    begin
      Canvas.FillRect(Rect);
      Inc(Rect.Left, 2);
      Inc(Rect.Top, 2);
      DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), -1, Rect, DT_CENTER or DT_NOPREFIX or DT_WORDBREAK);
    end;
  end;
end;

procedure TDetails.StringGrid2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid2 do
  begin
    if (ACol = 1) AND (ARow >= 1) then
    begin
      Canvas.Font.Color := $00FFBF80;
    end
    else if (ACol >= 2) AND (ARow = 0) then
    begin
      Canvas.Brush.Color := $00388BFC;
    end
    else if (ACol >= 2) AND (ARow >= 1) then
    begin
      Canvas.Brush.Color := $00BD5F00;
    end;

    Canvas.FillRect(Rect);
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

    if Pos(#13#10, Cells[ACol, ARow]) > 0 then
    begin
      Canvas.FillRect(Rect);
      Inc(Rect.Left, 2);
      Inc(Rect.Top, 2);
      DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), -1, Rect, DT_CENTER or DT_NOPREFIX or DT_WORDBREAK);
    end;
  end;
end;

procedure TDetails.StringGrid3DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid3 do
  begin
    Canvas.FillRect(Rect);
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);

    if Pos(#13#10, Cells[ACol, ARow]) > 0 then
    begin
      Canvas.FillRect(Rect);
      Inc(Rect.Left, 2);
      Inc(Rect.Top, 2);
      DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), -1, Rect, DT_CENTER or DT_NOPREFIX or DT_WORDBREAK);
    end;
  end;
end;

procedure TDetails.LoadData;
var
  i, count: integer;
  ARTICLE: string;
  DataList: TStringList;
begin
  //StringGrid1更綾戈
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SUBSTRING(XXZL.IMGName, CHARINDEX(''CONVERSE'', XXZL.IMGName), LEN(XXZL.IMGName)-CHARINDEX(''CONVERSE'', XXZL.IMGName)+1) AS IMGName,');
    SQL.Add('XXZL.IMGName, XXZL.XieMing, XXZL.ARTICLE, DDZL.DDBH, SUM(SMZL.CTS*SMDDSS.QTY) AS ScanPairs, DDZL.Pairs FROM (');
    SQL.Add('  SELECT * FROM SMZL WHERE CONVERT(VARCHAR, ScanDate, 111) >= CONVERT(VARCHAR, GetDate(), 111)');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT SMZLOLD.*, ''X'' FROM SMZLOLD WHERE CONVERT(VARCHAR, ScanDate, 111) < CONVERT(VARCHAR, GetDate(), 111)');
    SQL.Add(') AS SMZL');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SMZL.DepNO');
    SQL.Add('LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('LEFT JOIN SMDD ON SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = BDepartment.GXLB');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE BDepartment.DepName LIKE ''' + Label5.Caption + '%'' AND SMDDSS.GXLB = ''' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '''');
    SQL.Add('AND CONVERT(VARCHAR, SMZL.ScanDate, 111) = CONVERT(VARCHAR, GetDate(), 111)');
    SQL.Add('GROUP BY XXZL.IMGName, XXZL.XieMing, XXZL.ARTICLE, DDZL.DDBH, DDZL.Pairs');
    Active := true;

    i := 1;
    count := 0;
    ARTICLE := '';
    while not Eof do
    begin
      if (FieldByName('ARTICLE').AsString <> ARTICLE) then
      begin
        if (i = 1) then
          Image1.Picture.LoadFromFile('\\192.168.123.111\bom\' + FieldByName('IMGName').AsString)
        else if (i = 2) then
          Image2.Picture.LoadFromFile('\\192.168.123.111\bom\' + FieldByName('IMGName').AsString)
        else if (i = 3) then
          Image3.Picture.LoadFromFile('\\192.168.123.111\bom\' + FieldByName('IMGName').AsString);

        StringGrid1.Cells[0, i] := FieldByName('XieMing').AsString;
        StringGrid1.Cells[1, i] := FieldByName('ARTICLE').AsString;
        with ADOQuery2 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('SELECT SUM(SMZL.CTS*SMDDSS.QTY) AS SUMQty FROM (');
          SQL.Add('  SELECT * FROM SMZL WHERE CONVERT(VARCHAR, ScanDate, 111) >= CONVERT(VARCHAR, GetDate(), 111)');
          SQL.Add('  UNION ALL');
          SQL.Add('  SELECT SMZLOLD.*, ''X'' FROM SMZLOLD WHERE CONVERT(VARCHAR, ScanDate, 111) < CONVERT(VARCHAR, GetDate(), 111)');
          SQL.Add(') AS SMZL');
          SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SMZL.DepNO');
          SQL.Add('LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
          SQL.Add('LEFT JOIN SMDD ON SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = BDepartment.GXLB');
          SQL.Add('WHERE SMDD.YSBH = ''' + ADOQuery1.FieldByName('DDBH').AsString + ''' AND SMDDSS.GXLB = ''' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '''');
          SQL.Add('GROUP BY SMDD.YSBH, BDepartment.GXLB');
          Active := true;
        end;
        StringGrid1.Cells[2, i] := FieldByName('DDBH').AsString + ' ([' + FieldByName('ScanPairs').AsString + '] / [' + ADOQuery2.FieldByName('SUMQty').AsString + '] / [' + FieldByName('Pairs').AsString + '])';
        Inc(i);
        ARTICLE := FieldByName('ARTICLE').AsString;
      end
      else begin
        Dec(i);
        with ADOQuery2 do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('SELECT SUM(SMZL.CTS*SMDDSS.QTY) AS SUMQty FROM (');
          SQL.Add('  SELECT * FROM SMZL WHERE CONVERT(VARCHAR, ScanDate, 111) >= CONVERT(VARCHAR, GetDate(), 111)');
          SQL.Add('  UNION ALL');
          SQL.Add('  SELECT SMZLOLD.*, ''X'' FROM SMZLOLD WHERE CONVERT(VARCHAR, ScanDate, 111) < CONVERT(VARCHAR, GetDate(), 111)');
          SQL.Add(') AS SMZL');
          SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SMZL.DepNO');
          SQL.Add('LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
          SQL.Add('LEFT JOIN SMDD ON SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = BDepartment.GXLB');
          SQL.Add('WHERE SMDD.YSBH = ''' + ADOQuery1.FieldByName('DDBH').AsString + ''' AND SMDDSS.GXLB = ''' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '''');
          SQL.Add('GROUP BY SMDD.YSBH, BDepartment.GXLB');
          Active := true;
        end;
        StringGrid1.Cells[2, i] := StringGrid1.Cells[2, i] + #13#10 + FieldByName('DDBH').AsString + ' ([' + FieldByName('ScanPairs').AsString + '] / [' + ADOQuery2.FieldByName('SUMQty').AsString + '] / [' + FieldByName('Pairs').AsString + '])';
        Inc(i);
      end;
      count := count + FieldByName('ScanPairs').AsInteger;
      Next;
    end;
    Label7.Caption := IntToStr(count);
  end;

  //StringGrid2更玻秖戈
  with ADOQuery3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT');
    SQL.Add('SUM(CASE WHEN SMZL.Hours <= ''7'' THEN SMZL.Qty END) AS ''7'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''8'' THEN SMZL.Qty END) AS ''8'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''9'' THEN SMZL.Qty END) AS ''9'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''10'' THEN SMZL.Qty END) AS ''10'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''11'' THEN SMZL.Qty END) AS ''11'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''12'' THEN SMZL.Qty END) AS ''12'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''13'' THEN SMZL.Qty END) AS ''13'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''14'' THEN SMZL.Qty END) AS ''14'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''15'' THEN SMZL.Qty END) AS ''15'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours = ''16'' THEN SMZL.Qty END) AS ''16'',');
    SQL.Add('SUM(CASE WHEN SMZL.Hours >= ''17'' THEN SMZL.Qty END) AS ''17''');
    SQL.Add('FROM (');
    SQL.Add('  SELECT DATEPART(HOUR,SMZL.ScanDate) AS Hours, SUM(SMZL.CTS*SMDDSS.Qty) AS Qty FROM SMZL');
    SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SMZL.DepNO');
    SQL.Add('  LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('  WHERE BDepartment.DepName LIKE ''' + Label5.Caption + '%'' AND SMDDSS.GXLB = ''' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '''');
    SQL.Add('  AND CONVERT(VARCHAR, SMZL.ScanDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('  GROUP BY DATEPART(HOUR, SMZL.ScanDate)');
    SQL.Add(') AS SMZL');
    Active := true;

    count := 0;
    for i := 0 to FieldCount-1 do
    begin
      StringGrid2.Cells[2+i, 1] := FieldByName(Fields[i].FieldName).AsString;
      if (FieldByName(Fields[i].FieldName).AsString = '') then
        Inc(count)
      else
        count := 0;
    end;

    if (count > 0) then
    begin
      for i := 0 to FieldCount-1-count do
      begin
        if (StringGrid2.Cells[2+i, 1] = '') then
          StringGrid2.Cells[2+i, 1] := '0';
      end;
    end;
  end;

  //StringGrid2更ぃ▆珇计秖
  with ADOQuery3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) <= ''7'' THEN QCRD.Qty END) AS ''7'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''8'' THEN QCRD.Qty END) AS ''8'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''9'' THEN QCRD.Qty END) AS ''9'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''10'' THEN QCRD.Qty END) AS ''10'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''11'' THEN QCRD.Qty END) AS ''11'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''12'' THEN QCRD.Qty END) AS ''12'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''13'' THEN QCRD.Qty END) AS ''13'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''14'' THEN QCRD.Qty END) AS ''14'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''15'' THEN QCRD.Qty END) AS ''15'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) = ''16'' THEN QCRD.Qty END) AS ''16'',');
    SQL.Add('SUM(CASE WHEN DATEPART(HOUR, QCR.USERDATE) >= ''17'' THEN QCRD.Qty END) AS ''17''');
    SQL.Add('FROM QCR');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = QCR.DepNo');
    SQL.Add('LEFT JOIN QCRD ON QCRD.ProNo = QCR.ProNo');
    SQL.Add('WHERE CONVERT(VARCHAR, QCR.SCDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('AND BDepartment.DepName LIKE ''' + Label5.Caption + '%''');
    if (MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString = 'S') then
      SQL.Add('AND QCR.GXLB = ''C+S''')
    else
      SQL.Add('AND QCR.GXLB = ''' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '''');
    Active := true;

    for i := 0 to FieldCount-1 do
    begin
      StringGrid2.Cells[2+i, 2] := FieldByName(Fields[i].FieldName).AsString;
    end;

    if (count > 0) then
    begin
      for i := 0 to FieldCount-1-count do
      begin
        if (StringGrid2.Cells[2+i, 2] = '') then
          StringGrid2.Cells[2+i, 2] := '0';
      end;
    end;
  end;

  //StringGrid2更硄筁瞯戈
  for i := 0 to ADOQuery3.FieldCount-1-count do
  begin
    if (StrToInt(StringGrid2.Cells[2+i, 1]) > 0) then
      StringGrid2.Cells[2+i, 3] := FloatToStr(RoundTo(StrToInt(StringGrid2.Cells[2+i, 1]) / (StrToInt(StringGrid2.Cells[2+i, 1]) + StrToInt(StringGrid2.Cells[2+i, 2])) * 100.0, -1)) + '%'
    else if (StrToInt(StringGrid2.Cells[2+i, 1]) = 0) then
      StringGrid2.Cells[2+i, 3] := '0%';
  end;

  //StringGrid3更TOP 3ぃ▆珇
  with ADOQuery3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT TOP 3 QCRD.YYBH, QCBLYY.YWSM, QCBLYY.ZWSM, SUM(QCRD.Qty) AS Qty FROM QCR');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = QCR.DepNo');
    SQL.Add('LEFT JOIN QCRD ON QCRD.ProNo = QCR.ProNo');
    SQL.Add('LEFT JOIN QCBLYY ON QCBLYY.YYBH = QCRD.YYBH AND QCBLYY.GSBH = QCR.GSBH');
    SQL.Add('WHERE CONVERT(VARCHAR, QCR.SCDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('AND BDepartment.DepName LIKE ''' + Label5.Caption + '%''');
    if (MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString = 'S') then
      SQL.Add('AND QCR.GXLB = ''C+S''')
    else
      SQL.Add('AND QCR.GXLB = ''' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '''');
    SQL.Add('GROUP BY QCRD.YYBH, QCBLYY.YWSM, QCBLYY.ZWSM');
    SQL.Add('ORDER BY SUM(QCRD.Qty) DESC, QCRD.YYBH');
    Active := true;

    StringGrid3.Cells[0, 0] := 'NONE';
    StringGrid3.Cells[1, 0] := 'NONE';
    StringGrid3.Cells[2, 0] := 'NONE';

    DataList := TStringList.Create;
    DataList.LoadFromFile(GetCurrentDir + '\ReasonLanguage.txt');
    i := 0;
    while not Eof do
    begin
      if (UpperCase(DataList[0]) = 'EN') then
        StringGrid3.Cells[i, 0] := FieldByName('YYBH').AsString + #13#10 + FieldByName('YWSM').AsString
      else if (UpperCase(DataList[0]) = 'VN') then
        StringGrid3.Cells[i, 0] := FieldByName('YYBH').AsString + #13#10 + FieldByName('ZWSM').AsString;
      Inc(i);
      Next;
    end;
  end;

  if (FileExists(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\1.JPG')) then
    Image4.Picture.LoadFromFile(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\1.JPG');
  if (FileExists(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\2.JPG')) then
    Image5.Picture.LoadFromFile(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\2.JPG');
  if (FileExists(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\3.JPG')) then
    Image6.Picture.LoadFromFile(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\3.JPG');
end;

procedure TDetails.LoadImage1Click(Sender: TObject);
var
  FilePath: string;
begin
  if (OpenDialog1.Execute) then
  begin
    FilePath := Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\1' + ExtractFileExt(OpenDialog1.FileName);
    if not DirectoryExists(Path + FormatDateTime('yyyymmdd', Date)) then
      CreateDir(Path + FormatDateTime('yyyymmdd', Date));

    if not DirectoryExists(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString) then
      CreateDir(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString);

    CopyFile(PAnsiChar(AnsiString(OpenDialog1.FileName)), PAnsiChar(AnsiString(FilePath)), False);
    Image4.Picture.LoadFromFile(FilePath);
    ShowMessage('Success!');
  end;
end;

procedure TDetails.LoadImage2Click(Sender: TObject);
var
  FilePath: string;
begin
  if (OpenDialog1.Execute) then
  begin
    FilePath := Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\2' + ExtractFileExt(OpenDialog1.FileName);
    if not DirectoryExists(Path + FormatDateTime('yyyymmdd', Date)) then
      CreateDir(Path + FormatDateTime('yyyymmdd', Date));

    if not DirectoryExists(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString) then
      CreateDir(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString);

    CopyFile(PAnsiChar(AnsiString(OpenDialog1.FileName)), PAnsiChar(AnsiString(FilePath)), False); 
    Image5.Picture.LoadFromFile(FilePath);
    ShowMessage('Success!');
  end;
end;

procedure TDetails.LoadImage3Click(Sender: TObject);
var
  FilePath: string;
begin
  if (OpenDialog1.Execute) then
  begin
    FilePath := Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString + '\3' + ExtractFileExt(OpenDialog1.FileName);
    if not DirectoryExists(Path + FormatDateTime('yyyymmdd', Date)) then
      CreateDir(Path + FormatDateTime('yyyymmdd', Date));

    if not DirectoryExists(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString) then
      CreateDir(Path + FormatDateTime('yyyymmdd', Date) + '\' + Label5.Caption + '_' + MasterScreen1.ADOQuery1.FieldByName('GXLB').AsString);

    CopyFile(PAnsiChar(AnsiString(OpenDialog1.FileName)), PAnsiChar(AnsiString(FilePath)), False); 
    Image6.Picture.LoadFromFile(FilePath);
    ShowMessage('Success!');
  end;
end;

end.
