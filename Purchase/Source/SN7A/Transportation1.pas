unit Transportation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons, DB, DBTables, ExcelXP,
  Grids, ComObj, ComCtrls;

type
  TTransportation = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    StringGrid2: TStringGrid;
    QUpdate: TQuery;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Transportation: TTransportation;

implementation

{$R *.dfm}

procedure TTransportation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTransportation.FormCreate(Sender: TObject);
begin
begin
  StringGrid1.Cells[1, 0] := 'invoice Number';
  StringGrid1.Cells[2, 0] := 'Bill Number';
  StringGrid1.Cells[3, 0] := 'Freight_Fee_USD';
  StringGrid1.Cells[4, 0] := 'Freight_Fee_VND';
  StringGrid1.Cells[5, 0] := 'Express Name';
//
  StringGrid2.Cells[1, 0] := 'invoice Number';
  StringGrid2.Cells[2, 0] := 'Purchase PO';
  StringGrid2.Cells[3, 0] := 'Supplier Name';
  StringGrid2.Cells[4, 0] := 'Material Code';
  StringGrid2.Cells[5, 0] := 'Surcharge USD';
  StringGrid2.Cells[6, 0] := 'Surcharge VND';
end;
end;

procedure TTransportation.FormDestroy(Sender: TObject);
begin
  Transportation := nil;
end;

procedure TTransportation.Button1Click(Sender: TObject);
var
  eclApp, Sheet: Variant;
  Col, Row, MaxCol, MaxRow: integer;
  Col_IN, Col_BI, Col_USD, Col_VND, Col_EX: integer;
begin
  if (OpenDialog1.Execute) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.workbooks.Open(OpenDialog1.FileName);
      eclApp.WorkSheets[1].Activate;
      Sheet := eclApp.WorkSheets[1];
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    MaxCol := Sheet.UsedRange.Columns.count;
    MaxRow := Sheet.UsedRange.Rows.count;

    for Col := 1 to MaxCol do
    begin
      if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('invoice Number')) then
        Col_IN := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Bill Number')) then
        Col_BI := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Freight_Fee_USD')) then
        Col_USD := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Freight_Fee_VND')) then
        Col_VND := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Express Name')) then
        Col_EX := Col
    end;

    StringGrid1.RowCount := 2;
    for Row := 3 to MaxRow do
    begin
      StringGrid1.Cells[1, Row-2] := Sheet.Cells[Row, Col_IN];
      StringGrid1.Cells[2, Row-2] := Sheet.Cells[Row, Col_BI];
      StringGrid1.Cells[3, Row-2] := Sheet.Cells[Row, Col_USD];
      StringGrid1.Cells[4, Row-2] := Sheet.Cells[Row, Col_VND];
      StringGrid1.Cells[5, Row-2] := Sheet.Cells[Row, Col_EX];
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


procedure TTransportation.Button2Click(Sender: TObject);
var
  i: integer;
begin
  QUpdate.SQL.Clear;
  for i := 1 to StringGrid1.RowCount-1 do
  begin
    StringGrid1.Row := i;
    QUpdate.SQL.Add('UPDATE cgzlinvoice SET billno = ''' + StringGrid1.Cells[2, StringGrid1.Row] + ''', Freight_Fee_USD = ''' + StringGrid1.Cells[3, StringGrid1.Row] + ''', Freight_Fee_VND = ''' + StringGrid1.Cells[4, StringGrid1.Row] + ''',');
    QUpdate.SQL.Add('transport = ''' + StringGrid1.Cells[5, StringGrid1.Row] + '''');
    QUpdate.SQL.Add('FROM cgzlinvoice');
    QUpdate.SQL.Add('WHERE cgzlinvoice.invoice = ''' + StringGrid1.Cells[1, StringGrid1.Row] + '''');
    QUpdate.ExecSQL;
    QUpdate.SQL.Clear;
  end;
  StringGrid1.Row := 1;
  ShowMessage('Update Completed');

end;

procedure TTransportation.Button3Click(Sender: TObject);
var
  eclApp, Sheet: Variant;
  Col, Row, MaxCol, MaxRow: integer;
  Col_IN, Col_PP, Col_SN, Col_MC, Col_USD, Col_VND: integer;
begin
  if (OpenDialog1.Execute) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.workbooks.Open(OpenDialog1.FileName);
      eclApp.WorkSheets[1].Activate;
      Sheet := eclApp.WorkSheets[1];
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    MaxCol := Sheet.UsedRange.Columns.count;
    MaxRow := Sheet.UsedRange.Rows.count;

    for Col := 1 to MaxCol do
    begin
      if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('invoice Number')) then
        Col_IN := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Purchase PO')) then
        Col_PP := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Supplier Name')) then
        Col_SN := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Material Code')) then
        Col_MC := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Surcharge USD')) then
        Col_USD := Col
      else if (UpperCase(Sheet.Cells[2, Col]) = UpperCase('Surcharge VND')) then
        Col_VND := Col
    end;

    StringGrid2.RowCount := 2;
    for Row := 3 to MaxRow do
    begin
      StringGrid2.Cells[1, Row-2] := Sheet.Cells[Row, Col_IN];
      StringGrid2.Cells[2, Row-2] := Sheet.Cells[Row, Col_PP];
      StringGrid2.Cells[3, Row-2] := Sheet.Cells[Row, Col_SN];
      StringGrid2.Cells[4, Row-2] := Sheet.Cells[Row, Col_MC];
      StringGrid2.Cells[5, Row-2] := Sheet.Cells[Row, Col_USD];
      StringGrid2.Cells[6, Row-2] := Sheet.Cells[Row, Col_VND];
      StringGrid2.RowCount := StringGrid2.RowCount + 1;
      StringGrid2.Row := StringGrid2.Row + 1;
    end;
    StringGrid2.Row := 1;
    StringGrid2.RowCount := StringGrid2.RowCount - 1;

    eclApp.WorkBooks.Close;
    eclApp.Quit;
    ShowMessage('Upload Completed');
  end;
end;

end.
