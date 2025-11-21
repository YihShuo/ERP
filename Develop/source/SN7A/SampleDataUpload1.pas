unit SampleDataUpload1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons, DB, DBTables, ExcelXP,
  Grids, ComObj, ComCtrls;

type
  TSampleDataUpload = class(TForm)
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    StringGrid1: TStringGrid;
    QUpdate: TQuery;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleDataUpload: TSampleDataUpload;

implementation

{$R *.dfm}

procedure TSampleDataUpload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSampleDataUpload.FormDestroy(Sender: TObject);
begin
  SampleDataUpload := nil;
end;

procedure TSampleDataUpload.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[1, 0] := 'Colorway ID';
  StringGrid1.Cells[2, 0] := 'Cut';
  StringGrid1.Cells[3, 0] := 'Sample Size';
  StringGrid1.Cells[4, 0] := 'Production Type';
  StringGrid1.Cells[5, 0] := 'Colorway Status';
  StringGrid1.Cells[6, 0] := 'Product Developer';
  StringGrid1.Cells[7, 0] := 'CLO Developer';
  StringGrid1.Cells[8, 0] := 'Factory';
end;

procedure TSampleDataUpload.Button1Click(Sender: TObject);
var
  eclApp, Sheet: Variant;
  Col, Row, MaxCol, MaxRow: integer;
  Col_ID, Col_Cut, Col_SS, Col_PT, Col_CS, Col_PD, Col_CD, Col_FT, Col_GC: integer;
begin
  if (OpenDialog1.Execute) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.workbooks.Open(OpenDialog1.FileName);
      //eclApp.WorkSheets[1].Activate;
      Sheet := eclApp.WorkSheets[1];
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    MaxCol := Sheet.UsedRange.Columns.count;
    MaxRow := Sheet.UsedRange.Rows.count;
    Col_ID := -1;
    Col_Cut := -1;
    Col_SS := -1;
    Col_PT := -1;
    Col_CS := -1;
    Col_PD := -1;
    Col_CD := -1;
    Col_FT := -1;
    Col_GC := -1;

    for Col := 1 to MaxCol do
    begin
      if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'COLORWAYID') then
        Col_ID := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'CUT') then
        Col_Cut := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'GENDERCLASS') then
        Col_GC := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'SAMPLESIZE') then
        Col_SS := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'PRODUCTIONTYPE') then
        Col_PT := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'COLORWAYSTATUS') then
        Col_CS := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'PRODUCTDEVELOPER') then
        Col_PD := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'CLODEVELOPER') then
        Col_CD := Col
      else if (StringReplace(UpperCase(Sheet.Cells[2, Col]), ' ', '', [rfReplaceAll]) = 'FACTORY') then
        Col_FT := Col;
    end;

    StringGrid1.RowCount := 2;
    for Row := 3 to MaxRow do
    begin
      if (Col_ID <> -1) then StringGrid1.Cells[1, Row-2] := Sheet.Cells[Row, Col_ID];
      if (Col_Cut <> -1) then StringGrid1.Cells[2, Row-2] := Sheet.Cells[Row, Col_Cut];
      if (Col_GC <> -1) AND (Col_SS <> -1) then StringGrid1.Cells[3, Row-2] := Copy(Sheet.Cells[Row, Col_GC], 0, 1) + IntToStr(Sheet.Cells[Row, Col_SS]);
      if (Col_PT <> -1) then StringGrid1.Cells[4, Row-2] := Sheet.Cells[Row, Col_PT];
      if (Col_CS <> -1) then StringGrid1.Cells[5, Row-2] := Sheet.Cells[Row, Col_CS];
      if (Col_PD <> -1) then StringGrid1.Cells[6, Row-2] := StringReplace(StringReplace(StringReplace(Sheet.Cells[Row, Col_PD], ' ', '', [rfReplaceAll]), '(Converse)', '', [rfReplaceAll, rfIgnoreCase]), '(ConverseInc.)', '', [rfReplaceAll, rfIgnoreCase]);
      if (Col_CD <> -1) then StringGrid1.Cells[7, Row-2] := StringReplace(StringReplace(StringReplace(Sheet.Cells[Row, Col_CD], ' ', '', [rfReplaceAll]), '(Converse)', '', [rfReplaceAll, rfIgnoreCase]), '(ConverseInc.)', '', [rfReplaceAll, rfIgnoreCase]);
      if (Col_FT <> -1) then StringGrid1.Cells[8, Row-2] := Copy(Sheet.Cells[Row, Col_FT], 0, Pos('-', Sheet.Cells[Row, Col_FT])-1);
      StringGrid1.RowCount := StringGrid1.RowCount + 1;
      StringGrid1.Row := StringGrid1.Row + 1;
    end;
    StringGrid1.Row := 1;
    StringGrid1.RowCount := StringGrid1.RowCount - 1;

    eclApp.WorkBooks.Close;
    eclApp.Quit;
    ShowMessage('Upload Completed');
  end;
end;

procedure TSampleDataUpload.Button2Click(Sender: TObject);
var
  i: integer;
begin
  QUpdate.SQL.Clear;
  for i := 1 to StringGrid1.RowCount-1 do
  begin
    StringGrid1.Row := i;
    QUpdate.SQL.Add('UPDATE XXZLKF SET cut = ''' + StringGrid1.Cells[2, StringGrid1.Row] + ''', SS = ''' + StringGrid1.Cells[3, StringGrid1.Row] + ''', ProductionType = ''' + StringGrid1.Cells[4, StringGrid1.Row] + ''',');
    QUpdate.SQL.Add('ColorwayStatus = ''' + StringGrid1.Cells[5, StringGrid1.Row] + ''', NA = ''' + StringGrid1.Cells[6, StringGrid1.Row] + ''', CTS = ''' + StringGrid1.Cells[7, StringGrid1.Row] + ''', PFS = ''' + StringGrid1.Cells[8, StringGrid1.Row] + '''');
    QUpdate.SQL.Add('FROM KFXXZL');
    QUpdate.SQL.Add('LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.SheHao = KFXXZL.SheHao');
    QUpdate.SQL.Add('WHERE KFXXZL.DEVCODE = ''' + StringGrid1.Cells[1, StringGrid1.Row] + '''');
    QUpdate.ExecSQL;
    QUpdate.SQL.Clear;
  end;
  StringGrid1.Row := 1;
  ShowMessage('Update Completed');
end;

end.
