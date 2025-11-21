unit StitchingSend1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, DB, DBTables;

type
  TStitchingSend = class(TForm)
    Panel1: TPanel;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query1: TQuery;
    QSize: TQuery;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StitchingSend: TStitchingSend;

implementation

uses
  main1;

{$R *.dfm}

procedure TStitchingSend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TStitchingSend.FormDestroy(Sender: TObject);
begin
  StitchingSend := nil;
end;

procedure TStitchingSend.FormCreate(Sender: TObject);
begin
  StringGrid1.ColWidths[0] := 128;

  StringGrid1.Cells[0, 0] := 'Size';
  StringGrid1.Cells[0, 1] := 'Pairs';
end;

procedure TStitchingSend.Button1Click(Sender: TObject);
var
  i, Row, Col: integer;
  SizeSQL, DDBH: string;
begin
  for i := 0 to StringGrid1.ColCount-1 do
  begin
    StringGrid1.Cols[i].Clear;
  end;

  with QSize do
  begin
    //取得訂單迴轉數量
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDBH FROM SMDD');
    SQL.Add('WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''S'' AND YSBH = ''' + Edit1.Text + '''');
    Active := true;

    StringGrid1.RowCount := RecordCount + 2;
    if (StringGrid1.RowCount > 2) then
      StringGrid1.FixedRows := 2;
    i := 2;
    while not Eof do
    begin
      StringGrid1.Cells[0, i] := FieldByName('DDBH').AsString;
      Inc(i);
      Next;
    end;

    //取得訂單需生產之鞋子尺碼及數量
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDZLS.CC, DDZLS.Quantity FROM DDZL');
    SQL.Add('LEFT JOIN DDZLS ON DDZLS.DDBH = DDZL.DDBH');
    SQL.Add('WHERE DDZL.GSBH = ''' + main.Edit2.Text + ''' AND DDZL.DDBH = ''' + Edit1.Text + '''');
    SQL.Add('ORDER BY DDZLS.CC');
    Active := true;

    StringGrid1.ColCount := RecordCount + 1;
    if (StringGrid1.ColCount > 1) then
      StringGrid1.FixedCols := 1;
    i := 1;
    while not Eof do
    begin
      StringGrid1.Cells[i, 0] := FieldByName('CC').AsString;
      StringGrid1.Cells[i, 1] := FieldByName('Quantity').AsString;
      if (RB1.Checked) then
        SizeSQL := SizeSQL + ',ISNULL(MAX(CASE WHEN SIZE = ''' + QSize.FieldByName('CC').AsString + ''' THEN okCutNum END), '''') AS ''' + QSize.FieldByName('CC').AsString + ''''
      else if (RB2.Checked) then
        SizeSQL := SizeSQL + ',ISNULL(MAX(CASE WHEN SIZE = ''' + QSize.FieldByName('CC').AsString + ''' THEN CONVERT(VARCHAR, Progress) + ''%'' END), '''') AS ''' + QSize.FieldByName('CC').AsString + ''''
      else if (RB3.Checked) then
        SizeSQL := SizeSQL + ',MAX(ISNULL(CASE WHEN SIZE = ''' + QSize.FieldByName('CC').AsString + ''' THEN Qty END, ''!'')) AS ''' + QSize.FieldByName('CC').AsString + '''';
      Inc(i);
      Next;
    end;
  end;

  StringGrid1.Cells[0, 0] := 'Size';
  StringGrid1.Cells[0, 1] := 'Pairs';

  with Query1 do
  begin
    //取得訂單已完成裁斷數量
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DDBH');
    SQL.Add(SizeSQL);
    SQL.Add('FROM (');

    if (RB3.Checked) then
    begin
      SQL.Add('  SELECT DDBH, SIZE, CONVERT(VARCHAR, MIN(OkQty)) + '' / '' + CONVERT(VARCHAR, TQty) AS Qty FROM (');
      SQL.Add('    SELECT CutDispatchSS.DDBH, CutDispatchZL.BWBH, CutDispatchZL.SIZE, CutDispatchSS.Qty AS TQty,');
      SQL.Add('    CONVERT(INT, ROUND(CutDispatchS.okCutNum*(CutDispatchZL.Qty*1.0/CutDispatchZL.CutNum)/(CutDispatchZL.Qty*1.0/CutDispatchSS.Qty), 0, 1)) AS OkQty FROM CutDispatchZL');
      SQL.Add('    LEFT JOIN CutDispatchS ON CutDispatchS.ZLBH = CutDispatchZL.ZLBH AND CutDispatchS.BWBH = CutDispatchZL.BWBH AND CutDispatchS.SIZE = CutDispatchZL.SIZE');
      SQL.Add('    LEFT JOIN CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE');
      SQL.Add('    WHERE CutDispatchZL.ZLBH = ''' + Edit1.Text + '''');
      SQL.Add('  ) AS CutDispatch');
      SQL.Add('  GROUP BY DDBH, SIZE, TQty');
      SQL.Add(') AS StitchingSend');
      SQL.Add('WHERE DDBH IS NOT NULL');
      SQL.Add('GROUP BY DDBH');
    end
    else begin
      SQL.Add('  SELECT CutDispatchZL.DDBH, CutDispatchZL.SIZE,');
      SQL.Add('  CASE WHEN CutDispatch.okCutNum IS NOT NULL THEN CONVERT(VARCHAR, CutDispatch.okCutNum) + '' / '' + CONVERT(VARCHAR, CutDispatchZL.CutNum) ELSE ''0 / '' + CONVERT(VARCHAR, CutDispatchZL.CutNum) END AS okCutNum,');
      SQL.Add('  ISNULL(CONVERT(FLOAT, ROUND(CutDispatch.okCutNum*1.0/CutDispatchZL.CutNum*100, 2)), 0) AS Progress FROM (');
      SQL.Add('    SELECT SMDDS.DDBH, CutDispatchZL.SIZE, SUM(CONVERT(INT, ROUND(SMDDS.Qty*(CutDispatchZL.CutNum*1.0/CutDispatchZL.Qty), 0, 1))) AS CutNum FROM CutDispatchZL');
      SQL.Add('    LEFT JOIN SMDDS ON SMDDS.XXCC = CutDispatchZL.SIZE');
      SQL.Add('    WHERE CutDispatchZL.ZLBH = ''' + Edit1.Text + ''' AND SMDDS.DDBH LIKE ''' + Edit1.Text + '%''');
      SQL.Add('    GROUP BY SMDDS.DDBH, CutDispatchZL.SIZE');
      SQL.Add('  ) AS CutDispatchZL');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT CutDispatchSS.DDBH, CutDispatchZL.SIZE,');
      SQL.Add('    SUM(CONVERT(INT, ROUND(CutDispatchS.okCutNum*1.0/(CutDispatchZL.Qty*1.0/CutDispatchSS.Qty), 0, 1))) AS okCutNum FROM CutDispatchZL');
      SQL.Add('    LEFT JOIN CutDispatchS ON CutDispatchS.ZLBH = CutDispatchZL.ZLBH AND CutDispatchS.BWBH = CutDispatchZL.BWBH AND CutDispatchS.SIZE = CutDispatchZL.SIZE');
      SQL.Add('    LEFT JOIN CutDispatchSS ON CutDispatchSS.DLNO = CutDispatchS.DLNO AND CutDispatchSS.ZLBH = CutDispatchS.ZLBH AND CutDispatchSS.BWBH = CutDispatchS.BWBH AND CutDispatchSS.SIZE = CutDispatchS.SIZE');
      SQL.Add('    WHERE CutDispatchZL.ZLBH = ''' + Edit1.Text + ''' AND CutDispatchSS.DDBH IS NOT NULL AND ISNULL(CutDispatchS.ScanDate, '''') <> ''''');
      SQL.Add('    GROUP BY CutDispatchSS.DDBH, CutDispatchZL.SIZE');
      SQL.Add('  ) AS CutDispatch ON CutDispatchZL.DDBH = CutDispatch.DDBH AND CutDispatch.SIZE = CutDispatchZL.SIZE');
      SQL.Add(') AS StitchingSend');
      SQL.Add('GROUP BY DDBH');
    end;
    Active := true;

    DDBH := '';
    while not Eof do
    begin
      if (FieldByName('DDBH').AsString <> DDBH) then
      begin
        Row := 0;
        for i := 2 to StringGrid1.RowCount-1 do
        begin
          if (FieldByName('DDBH').AsString = StringGrid1.Cells[0, i]) then
          begin
            Row := i;
            DDBH := FieldByName('DDBH').AsString;
            break;
          end
        end;
      end;

      for Col := 1 to StringGrid1.ColCount-1 do
      begin
        if (RB3.Checked) then
        begin
          if (Row <> 0) AND (Fields[Col].AsString <> '!') then
            StringGrid1.Cells[Col, Row] := Fields[Col].AsString
          else
            StringGrid1.Cells[Col, Row] := '';
        end
        else if (RB1.Checked) OR (RB2.Checked) then
        begin
          if (Row <> 0) AND (Fields[Col].AsString <> '-1') then
            StringGrid1.Cells[Col, Row] := Fields[Col].AsString
          else
            StringGrid1.Cells[Col, Row] := '';
        end;
      end;
      Next;
    end;
  end;
end;

end.
