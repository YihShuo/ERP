unit Monitor1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, jpeg;

type
  TMasterScreen1 = class(TForm)
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    CBFactory: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    Panel5: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Timer2: TTimer;
    Button1: TButton;
    Image1: TImage;
    Panel6: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBFactoryChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  MasterScreen1: TMasterScreen1;

implementation

{$R *.dfm}

uses
  Detail1;

procedure TMasterScreen1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMasterScreen1.FormDestroy(Sender: TObject);
begin
  MasterScreen1 := nil;
end;

procedure TMasterScreen1.FormCreate(Sender: TObject);
var
  i: integer;
  DataList: TStringList;
begin
  DataList := TStringList.Create;
  DataList.LoadFromFile(GetCurrentDir + '\ShowCursor.txt');
  ShowCursor(StrToBool(DataList[0]));

  DataList.LoadFromFile(GetCurrentDir + '\ConnectData.txt');
  ADOQuery1.ConnectionString := 'Provider=SQLOLEDB.1;' + DataList.Strings[1] + ';Persist Security Info=True;' + DataList.Strings[0] + ';Initial Catalog=LIY_ERP;Data Source=192.168.23.9';

  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Xuong FROM BDepartment');
    SQL.Add('WHERE Xuong IS NOT NULL');
    SQL.Add('GROUP BY Xuong');
    SQL.Add('ORDER BY CONVERT(INT, REPLACE(Xuong, ''A'', ''''))');
    Active := true;
    
    while not Eof do
    begin
      CBFactory.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
  end;

  with StringGrid1 do
  begin
    Cells[0, 0] := 'L';
    ColWidths[0] := 40;
    Cells[1, 0] := 'ModelName';
    ColWidths[1] := 400;
    Cells[2, 0] := 'Plan';
    ColWidths[2] := 69;
    Cells[3, 0] := 'Output';
    ColWidths[3] := 69;
    Cells[4, 0] := 'C%';
    ColWidths[4] := 51;
    Panel2.Width := ColWidths[0] + ColWidths[1] + ColWidths[2] + ColWidths[3] + ColWidths[4] + 10;
    Label4.Width := ColWidths[3];
    Label4.Left := ColWidths[0] + ColWidths[1] + ColWidths[2] + 4;
    Label4.Caption := '';
    Label6.Width := ColWidths[2];
    Label6.Left := ColWidths[0] + ColWidths[1] + 3;
    Label6.Caption := '';

  end;

  with StringGrid2 do
  begin
    Cells[0, 0] := 'L';
    ColWidths[0] := 40;
    Cells[1, 0] := 'ModelName';
    ColWidths[1] := 400;
    Cells[2, 0] := 'Plan';
    ColWidths[2] := 69;
    Cells[3, 0] := 'Output';
    ColWidths[3] := 69;
    Cells[4, 0] := 'C%';
    ColWidths[4] := 51;
    Panel3.Width := ColWidths[0] + ColWidths[1] + ColWidths[2] + ColWidths[3] + ColWidths[4] + 10;
    Label5.Width := ColWidths[3];
    Label5.Left := ColWidths[0] + ColWidths[1] + ColWidths[2] + 4;
    Label5.Caption := '';
    Label7.Width := ColWidths[2];
    Label7.Left := ColWidths[0] + ColWidths[1] + 3;
    Label7.Caption := '';
  end;

  Panel5.Width := Panel2.Width + Panel3.Width + 3;
  Panel6.Left :=  Panel1.Width - 55;
  Button1.Left := Panel1.Width - 200;
  MasterScreen1.BorderStyle := bsNone;
end;

procedure TMasterScreen1.CBFactoryChange(Sender: TObject);
begin
  LoadData;
end;

procedure TMasterScreen1.Timer1Timer(Sender: TObject);
begin
  Label3.Caption := formatdatetime('yyyy/mm/dd hh:mm:ss', Now);
end;

procedure TMasterScreen1.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    if (ACol = 2) AND (ARow > 0) then
    begin
      Canvas.Font.Color := clBlue;
    end;

    Canvas.FillRect(Rect);
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
  end;
end;

procedure TMasterScreen1.StringGrid2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid2 do
  begin
    if (ACol = 2) AND (ARow > 0) then
    begin
      Canvas.Font.Color := clBlue;
    end;

    Canvas.FillRect(Rect);
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
  end;
end;

procedure TMasterScreen1.LoadData;
var
  a, s, Target_a, Total_a, Target_s, Total_s, i: integer;
begin
  Button1.Enabled := false;

  if (CBFactory.Text = '') then
  begin
    ShowMessage('PLEASE SELECT A LEAN FIRST!');
    Button1.Enabled := true;
    Exit;
  end;
  
  Button1.Caption := 'LOADING...';
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DepNO, SUBSTRING(DepName, 1, 10) AS DepName, DepNameNO, GXLB, Xuong, Qty, SUM(ScanPairs) AS ScanPairs, SUM(ScanPairs)*100/NULLIF(Qty, 0) AS PG, (SELECT ''[ '' + SMZL.XieMing + '' ]¡B'' FROM (');
    SQL.Add('  SELECT SMZL.DepNO, BDepartment.DepName, SUBSTRING(BDepartment.DepName, 10, 2) AS DepNameNO, BDepartment.GXLB, BDepartment.Xuong,');
    SQL.Add('  SMDD.XieMing, SCBZCL.Qty, SUM(SMZL.CTS*SMDDSS.Qty) AS ScanPairs FROM SMZL');
    SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SMZL.DepNO');
    SQL.Add('  LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = BDepartment.GXLB');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT DepNo, Qty FROM SCBZCL');
    SQL.Add('    LEFT JOIN BDepartment ON BDepartment.ID = SCBZCL.DepNo');
    SQL.Add('    WHERE BZDate2 = CONVERT(VARCHAR, GetDate(), 111)');
    SQL.Add('    AND BDepartment.Xuong = ''' + CBFactory.Text + ''' AND BDepartment.GXLB IN (''S'', ''A'')');
    SQL.Add('  ) AS SCBZCL ON SCBZCL.DepNo = SMZL.DepNO');
    SQL.Add('  WHERE CONVERT(VARCHAR, SMZL.ScanDate, 111) = CONVERT(VARCHAR, GetDate(), 111) AND BDepartment.Xuong = ''' + CBFactory.Text + ''' AND SMDDSS.GXLB IN (''S'', ''A'')');
    SQL.Add('  GROUP BY SMZL.DepNO, BDepartment.DepName, BDepartment.GXLB, BDepartment.Xuong, SCBZCL.Qty, SMDD.XieMing');
    SQL.Add('  ) AS SMZL WHERE SMZL.DepNO = SMZL2.DepNO FOR XML PATH('''')) AS XieMing');
    SQL.Add('FROM (');
    SQL.Add('  SELECT SMZL.DepNO, BDepartment.DepName, SUBSTRING(BDepartment.DepName, 10, 2) AS DepNameNO, BDepartment.GXLB, BDepartment.Xuong,');
    SQL.Add('  SMDD.XieMing, SCBZCL.Qty, SUM(SMZL.CTS*SMDDSS.Qty) AS ScanPairs FROM SMZL');
    SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SMZL.DepNO');
    SQL.Add('  LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR');
    SQL.Add('  LEFT JOIN SMDD ON SMDD.DDBH = SMDDSS.DDBH AND SMDD.GXLB = BDepartment.GXLB');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT DepNo, Qty FROM SCBZCL');
    SQL.Add('    LEFT JOIN BDepartment ON BDepartment.ID = SCBZCL.DepNo');
    SQL.Add('    WHERE BZDate2 = CONVERT(VARCHAR, GetDate(), 111)');
    SQL.Add('    AND BDepartment.Xuong = ''' + CBFactory.Text + ''' AND BDepartment.GXLB IN (''S'', ''A'')');
    SQL.Add('  ) AS SCBZCL ON SCBZCL.DepNo = SMZL.DepNO');
    SQL.Add('  WHERE CONVERT(VARCHAR, SMZL.ScanDate, 111) = CONVERT(VARCHAR, GetDate(), 111) AND BDepartment.Xuong = ''' + CBFactory.Text + ''' AND SMDDSS.GXLB IN (''S'', ''A'')');
    SQL.Add('  GROUP BY SMZL.DepNO, BDepartment.DepName, BDepartment.GXLB, BDepartment.Xuong, SCBZCL.Qty, SMDD.XieMing');
    SQL.Add(') AS SMZL2');
    SQL.Add('GROUP BY DepNO, DepName, DepNameNO, GXLB, Xuong, Qty');
    SQL.Add('ORDER BY GXLB DESC, DepNameNO');
    Active := true;

    for i := 0 to 4 do
    begin
      StringGrid1.Cols[i].Clear;
      StringGrid2.Cols[i].Clear;
    end;

    StringGrid1.Cells[0, 0] := 'L';
    StringGrid1.Cells[1, 0] := 'ModelName';
    StringGrid1.Cells[2, 0] := 'Plan';
    StringGrid1.Cells[3, 0] := 'Output';
    StringGrid1.Cells[4, 0] := 'C%';

    StringGrid2.Cells[0, 0] := 'L';
    StringGrid2.Cells[1, 0] := 'ModelName';
    StringGrid2.Cells[2, 0] := 'Plan';
    StringGrid2.Cells[3, 0] := 'Output';
    StringGrid2.Cells[4, 0] := 'C%';

    a := 1;
    s := 1;
    Target_a := 0;
    Total_a := 0;
    Target_s := 0;
    Total_s := 0;
    while not Eof do
    begin
      if (FieldByName('GXLB').AsString = 'S') then
      begin
        with StringGrid1 do
        begin
          Cells[0, s] := FieldByName('DepNameNO').AsString;
          Cells[1, s] := COPY(FieldByName('XieMing').AsString, 1, Length(FieldByName('XieMing').AsString)-1);
          Cells[2, s] := FieldByName('Qty').AsString;
          Cells[3, s] := FieldByName('ScanPairs').AsString;
          Cells[4, s] := FieldByName('PG').AsString + '%';
        end;
        Target_s := Target_s + FieldByName('Qty').AsInteger;
        Total_s := Total_s + FieldByName('ScanPairs').AsInteger;
        Inc(s);
      end
      else if (FieldByName('GXLB').AsString = 'A') then
      begin
        with StringGrid2 do
        begin
          Cells[0, a] := FieldByName('DepNameNO').AsString;
          Cells[1, a] := COPY(FieldByName('XieMing').AsString, 1, Length(FieldByName('XieMing').AsString)-1);
          Cells[2, a] := FieldByName('Qty').AsString;
          Cells[3, a] := FieldByName('ScanPairs').AsString;
          Cells[4, a] := FieldByName('PG').AsString + ' %';
        end;
        Target_a := Target_a + FieldByName('Qty').AsInteger;
        Total_a := Total_a + FieldByName('ScanPairs').AsInteger;
        Inc(a);
      end;
      Next;
    end;

    if (Target_s <> 0) then
      Label6.Caption := IntToStr(Target_s)
    else
      Label6.Caption := '';

    if (Total_s <> 0) then
      Label4.Caption := IntToStr(Total_s)
    else
      Label4.Caption := '';

    if (Target_a <> 0) then
      Label7.Caption := IntToStr(Target_a)
    else
      Label7.Caption := '';

    if (Total_a <> 0) then
      Label5.Caption := IntToStr(Total_a)
    else
      Label5.Caption := '';
  end;

  Button1.Caption := 'RELOAD DATA';
  Button1.Enabled := true;
end;

procedure TMasterScreen1.Timer2Timer(Sender: TObject);
begin
  LoadData;
end;

procedure TMasterScreen1.Button1Click(Sender: TObject);
begin
  LoadData;
end;

procedure TMasterScreen1.StringGrid1DblClick(Sender: TObject);
begin
  if (CBFactory.Text <> '') then
  begin
    if (ADOQuery1.Locate(Format('%s;%s', ['DepNameNO', 'GXLB']), VarArrayOf([StringGrid1.Cells[0, StringGrid1.Row], 'S']), [])) then
    begin
      Button1.Enabled := false;
      Button1.Caption := 'OPENING';
      if (Details <> nil) then
      begin
        Details.Close;
        Details := TDetails.Create(self);
        Details.Show;
      end
      else begin
        Details := TDetails.Create(self);
        Details.Show;
      end;                   
      Button1.Caption := 'RELOAD DATA';
      Button1.Enabled := true;
    end;
  end;
end;

procedure TMasterScreen1.StringGrid2DblClick(Sender: TObject);
begin
  if (CBFactory.Text <> '') then
  begin
    if (ADOQuery1.Locate(Format('%s;%s', ['DepNameNO', 'GXLB']), VarArrayOf([StringGrid1.Cells[0, StringGrid2.Row], 'A']), [])) then
    begin
      Button1.Enabled := false;
      Button1.Caption := 'OPENING';
      if (Details <> nil) then
      begin
        Details.Close;
        Details := TDetails.Create(self);
        Details.Show;
      end
      else begin
        Details := TDetails.Create(self);
        Details.Show;
      end;
      Button1.Caption := 'RELOAD DATA';
      Button1.Enabled := true;
    end;
  end;
end;

procedure TMasterScreen1.Image1Click(Sender: TObject);
begin
  MasterScreen1.Close;
end;

end.
