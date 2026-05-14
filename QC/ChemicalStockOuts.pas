unit ChemicalStockOuts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh, StrUtils;

type
  TChemicalStockOut = class(TForm)
    Panel1: TPanel;
    bExcel: TBitBtn;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1CARTONNO: TIntegerField;
    Query1ExpirationDate: TDateTimeField;
    Query1Weight: TIntegerField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TIntegerField;
    Query1YWPM: TStringField;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    QueryCheck: TQuery;
    QGetID: TQuery;
    edtScan: TEdit;
    Label1: TLabel;
    Query1LLNO: TStringField;
    QKCRK_HC: TQuery;
    QUpKCRK_HC: TQuery;
    Label2: TLabel;
    Query1DepName: TStringField;
    Label3: TLabel;
    cbDep: TComboBox;
    edtCLBH: TEdit;
    Label4: TLabel;
    btSearch: TButton;
    procedure SplitScan(const s: string; out v1, v2, v3: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtScanKeyPress(Sender: TObject; var Key: Char);
    procedure LoadData;
    function NewID: string;
    procedure bExcelClick(Sender: TObject);
    procedure cbDepKeyPress(Sender: TObject; var Key: Char);
    procedure btSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChemicalStockOut: TChemicalStockOut;

implementation

uses main1;

{$R *.dfm}

function TChemicalStockOut.NewID: string;
var
  Prefix, LastID: string;
  Seq: Integer;
begin
  Prefix := FormatDateTime('yymm', Date);

  with QGetID do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(
      'select top 1 LLNO ' +
      'from KCLL_HC ' +
      'where left(LLNO, 4) = :P ' +
      'order by LLNO desc');
    ParamByName('P').AsString := Prefix;
    Active := true;
  end;

  if QGetID.IsEmpty then
    Seq := 1
  else
  begin
    LastID := QGetID.FieldByName('LLNO').AsString;
    Seq := StrToInt(Copy(LastID, 7, 7)) + 1;
  end;

  Result := Prefix + FormatFloat('0000000', Seq);
end;

procedure TChemicalStockOut.SplitScan(const s: string; out v1, v2, v3: string);
var
  arr: TStringList;
begin
  v1 := '';
  v2 := '';
  v3 := '';

  arr := TStringList.Create;
  try
    arr.Delimiter := ';';
    //arr.StrictDelimiter := True;
    arr.DelimitedText := s;

    if arr.Count > 0 then v1 := arr[0];
    if arr.Count > 1 then v2 := arr[1];
    if arr.Count > 2 then v3 := arr[2];
  finally
    arr.Free;
  end;
end;

procedure TChemicalStockOut.LoadData;
var
  rkno, clbh, carton: string;
  YN: Integer;
begin
  if Trim(cbDep.Text) = '' then
  begin
    ShowMessage('Vui long chon don vi');
    Exit;
  end;

  Query1.CachedUpdates:= true;
  rkno := Trim(edtScan.Text);

  //kiem tra QR da scan hay chua
  QueryCheck.Close;
  QueryCheck.SQL.Clear;
  QueryCheck.SQL.Add('select YN from KCRK_HC where RKNO = ''' +rkno+ ''' ');
  QueryCheck.Open;

  YN := QueryCheck.FieldByName('YN').AsInteger;

  if YN = 2 then
  begin
    Label2.Visible := true;
    Label2.Caption := 'Da scan QR nay';
    edtScan.Clear;
    Exit;
  end else
    Label2.Caption := '';

  // dong query cu
  QKCRK_HC.Close;

  // set sql
  QKCRK_HC.SQL.Clear;
  QKCRK_HC.SQL.Add('select KCRK_HC.*, CLZL.YWPM from KCRK_HC ');
  QKCRK_HC.SQL.Add('left join CLZL on CLZL.CLDH = KCRK_HC.CLBH ');
  QKCRK_HC.SQL.Add('where RKNO = ''' +rkno+ ''' and KCRK_HC.YN = ''1'' ');

  // mo query
  QKCRK_HC.Open;

  // neu co du lieu thi gan sang Query1
  if not QKCRK_HC.IsEmpty then
  begin
    Query1.Close;
    Query1.Open;

    Query1.Edit;
    Query1.FieldByName('LLNO').Value := NewID;
    Query1.FieldByName('DepName').Value := cbDep.Text;
    Query1.FieldByName('RKNO').Value := QKCRK_HC.FieldByName('RKNO').Value;
    Query1.FieldByName('CLBH').Value := QKCRK_HC.FieldByName('CLBH').Value;
    Query1.FieldByName('YWPM').Value := QKCRK_HC.FieldByName('YWPM').Value;
    Query1.FieldByName('CARTONNO').Value := QKCRK_HC.FieldByName('CARTONNO').Value;
    Query1.FieldByName('ExpirationDate').Value := QKCRK_HC.FieldByName('ExpirationDate').Value;
    Query1.FieldByName('Weight').Value := QKCRK_HC.FieldByName('Weight').Value;
    Query1.FieldByName('USERID').Value := main.Edit1.Text;
    Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
    Query1.FieldByName('YN').Value := '2';

    Query1.Post;
    UpSQL1.Apply(ukinsert);

    //update trang thai KCRK_HC, yn = 2: da xuat
    QUpKCRK_HC.Close;
    QUpKCRK_HC.SQL.Clear;
    QUpKCRK_HC.SQL.Add('update KCRK_HC set YN = ''2'' ');
    QUpKCRK_HC.SQL.Add('where RKNO = ''' +rkno+ '''');
    QUpKCRK_HC.ExecSQL;

    //hien thi du lieu
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select KCLL_HC.*, CLZL.YWPM from KCLL_HC ');
    Query1.SQL.Add('left join CLZL on CLZL.CLDH = KCLL_HC.CLBH ');
    Query1.SQL.Add('where CLBH = ''' +QKCRK_HC.FieldByName('CLBH').AsString+ ''' ');
    Query1.Open;

  end else
  begin
    ShowMessage('Khong tim thay du lieu');
  end;
  edtScan.Clear;
end;

procedure TChemicalStockOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TChemicalStockOut.FormDestroy(Sender: TObject);
begin
  ChemicalStockOut := nil;
end;

procedure TChemicalStockOut.FormCreate(Sender: TObject);
begin
  edtScan.Focused;
end;

procedure TChemicalStockOut.edtScanKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then  // Enter
  begin
    Key := #0; // chan beep
    LoadData;
  end;
end;

procedure TChemicalStockOut.bExcelClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  Row, Col: Integer;
begin
  if Query1.IsEmpty then Exit;
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := True;

  Workbook := ExcelApp.Workbooks.Add;
  Worksheet := Workbook.Worksheets[1];

  for Col := 0 to Query1.FieldCount - 1 do
    Worksheet.Cells[1, Col + 1] := Query1.Fields[Col].FieldName;

  Row := 2;
  Query1.First;
  while not Query1.Eof do
  begin
    for Col := 0 to Query1.FieldCount - 1 do
      Worksheet.Cells[Row, Col + 1] := Query1.Fields[Col].AsString;
    Inc(Row);
    Query1.Next;
  end;
  Worksheet.Columns.AutoFit;
end;

procedure TChemicalStockOut.cbDepKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TChemicalStockOut.btSearchClick(Sender: TObject);
begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select KCLL_HC.*, CLZL.YWPM from KCLL_HC ');
    Query1.SQL.Add('left join CLZL on CLZL.CLDH = KCLL_HC.CLBH ');
    Query1.SQL.Add('where CLBH like ''' +edtCLBH.Text+ '%'' and DepName like ''' +cbDep.Text+ '%'' ');
    Query1.Open;
end;

end.
