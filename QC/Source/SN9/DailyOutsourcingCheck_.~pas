unit DailyOutsourcingCheck_;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh;

type
  TDailyOutsourcingCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    bbt6: TBitBtn;
    edtDDBH: TEdit;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    cbPDF: TCheckBox;
    edtZSBH: TEdit;
    dtpVI: TDateTimePicker;
    ckVIDate: TCheckBox;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    Query1ReportID: TAutoIncField;
    Query1XieMing: TStringField;
    Query1Parts: TStringField;
    Query1Article: TStringField;
    Query1DDBH: TStringField;
    Query1RQty: TIntegerField;
    Query1IQty: TIntegerField;
    Query1DeQty: TIntegerField;
    Query1Issues: TStringField;
    Query1DeRate: TFloatField;
    Query1VIDate: TDateTimeField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1Supplier: TStringField;
    Query1YN: TSmallintField;
    QGetID: TQuery;
    MenuCode: TEdit;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Label3: TLabel;
    edtRID: TEdit;
    Label4: TLabel;
    edtSKU: TEdit;
    Query1DepInputDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1PreparedDate: TDateTimeField;
    Query1DepUID: TStringField;
    QSig: TQuery;
    Confirm: TButton;
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure bExcelClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    function NewID: string;
    function GetUsernameByID(const AID: string): string;
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure ConfirmClick(Sender: TObject);
    procedure PrintSign(
                AWorksheet: OleVariant;
                AQuery: TQuery;
                AInsertRow: Integer;
                const AIDField, ADateField: string;
                ACol: Integer;
                UseUserName: Boolean
              );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyOutsourcingCheck: TDailyOutsourcingCheck;

implementation

uses main1;

{$R *.dfm}

procedure TDailyOutsourcingCheck.PrintSign(
  AWorksheet: OleVariant;
  AQuery: TQuery;
  AInsertRow: Integer;
  const AIDField, ADateField: string;
  ACol: Integer;
  UseUserName: Boolean
);
var
  s, SignFile: string;
  Cell, MergeCell: OleVariant;
  CellLeft, CellTop, CellWidth, CellHeight: Double;
  PicWidth, PicHeight: Double;
begin
  if AQuery.FieldByName(AIDField).IsNull
     or (Trim(AQuery.FieldByName(AIDField).AsString) = '') then
    Exit;

  Cell := AWorksheet.Cells[AInsertRow + 1, ACol];
  MergeCell := Cell.MergeArea;

  MergeCell.WrapText := True;
  MergeCell.HorizontalAlignment := -4108; // xlCenter
  MergeCell.VerticalAlignment := -4108;   // xlCenter

  s := AQuery.FieldByName(AIDField).AsString;
  s := StringReplace(s, '_', Chr(10), [rfReplaceAll]);

  if UseUserName then
  begin
    Cell.Value :=
      Chr(10) + Chr(10) + Chr(10) +
      GetUsernameByID(AQuery.FieldByName(AIDField).AsString)
      + Chr(10)
      + FormatDateTime(
          'dd-mm-yyyy',
          AQuery.FieldByName(ADateField).AsDateTime
        );

    SignFile := ExtractFilePath(Application.ExeName) +
                'Signatures\' +
                Trim(AQuery.FieldByName(AIDField).AsString) +
                '.bmp';

    if FileExists(SignFile) then
    begin
      CellLeft   := MergeCell.Left;
      CellTop    := MergeCell.Top;
      CellWidth  := MergeCell.Width;
      CellHeight := MergeCell.Height;

      PicWidth  := CellWidth * 0.4;
      PicHeight := CellHeight * 0.45;

      AWorksheet.Shapes.AddPicture(
        SignFile,
        False,
        True,
        CellLeft + (CellWidth - PicWidth) / 2, // can giua ngang
        CellTop + (CellHeight * 0.1),          // phia tren
        PicWidth,
        PicHeight
      );
    end;
  end
  else
    Cell.Value := s;
end;

function TDailyOutsourcingCheck.GetUsernameByID(const AID: string): string;
begin
  Result := '';
  if AID = '' then Exit;

  with QSig do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select USERNAME from Busers where USERID = :USERID');
    ParamByName('USERID').AsString := AID;
    Active := True;

    if not EOF then
      Result := FieldByName('USERNAME').AsString;
  end;
end;

function TDailyOutsourcingCheck.NewID: string;
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
      'select top 1 ReportID ' +
      'from JGDaily ' +
      'where left(ReportID, 4) = :P ' +
      'order by ReportID desc');
    ParamByName('P').AsString := Prefix;
    Active := true;
  end;

  if QGetID.IsEmpty then
    Seq := 1
  else
  begin
    LastID := QGetID.FieldByName('ReportID').AsString;
    Seq := StrToInt(Copy(LastID, 5, 4)) + 1;
  end;

  Result := Prefix + FormatFloat('0000', Seq);
end;

procedure TDailyOutsourcingCheck.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TDailyOutsourcingCheck.BB2Click(Sender: TObject);
begin
if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
    dbgrid1.ReadOnly := true;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TDailyOutsourcingCheck.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TDailyOutsourcingCheck.BB4Click(Sender: TObject);
var i: integer;
begin
  if not QGetID.Active then QGetID.Active;
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('DDBH').isnull then
              begin
                query1.delete;
              end else
              begin
                Query1.Edit;
                Query1.FieldByName('ReportID').Value := NewID;
                Query1.FieldByName('USERID').Value := main.Edit1.Text;
                Query1.FieldByName('YN').Value := 1;
                Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                upsql1.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if query1.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                    Query1.Edit;
                    Query1.FieldByName('USERID').Value := main.Edit1.Text;
                    UpSQL1.Apply(ukdelete)
                   end;
                 end else
                 begin
                  Query1.Edit;
                  if DBGrid1.SelectedField.FieldName = 'PreparedID' then
                    //Query1.FieldByName('PreparedDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)
                  else if MenuCode.Text = 'N921' then
                  begin
                    Query1.FieldByName('USERID').Value := main.Edit1.Text;
                    //Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                  end;
                  if MenuCode.Text = 'N922' then
                    begin
                      //Query1.FieldByName('DepInputDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;
                  if MenuCode.Text = 'N923' then
                    begin
                      //Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;
                  if MenuCode.Text = 'N924' then
                    begin
                      //Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;
                  upsql1.apply(ukmodify);
                 end;
              end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb4.enabled:=false;
    bb5.enabled:=false;
    dbgrid1.ReadOnly := false;
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDailyOutsourcingCheck.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    CachedUpdates := false;
    RequestLive := false;
    BB4.Enabled := false;
    BB5.Enabled := false;
    dbgrid1.ReadOnly := false;
  end;
end;

procedure TDailyOutsourcingCheck.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange: OleVariant;
  StartRow, InsertRow: Integer;
  DuongDanFile, SaveFile, s, AppDir, SrcFile, DstFile: string;
  i, p: Integer;
  SigS, SigDep, SigL, SigP: Boolean;
  MaxHeight: Double;
begin
  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-WS009-01D.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-WS009-01D.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS009-01D.xlsx';

  StartRow := 6;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS009-01D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS009-01D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
      SaveDialog.Title := 'Chon noi luu file PDF moi';
    end;

    if not SaveDialog.Execute then
      Exit;

    SaveFile := SaveDialog.FileName;
  finally
    SaveDialog.Free;
  end;

  ExcelApp := CreateOleObject('Excel.Application');

  Workbook := ExcelApp.Workbooks.Open(DuongDanFile);
  Worksheet := Workbook.WorkSheets[1];

  for i := 1 to 5 do
  begin
    s := VarToStr(Worksheet.Cells[3, i].Value);
    p := Pos(Chr(10), s);

    if p = 0 then
      p := Length(s) + 1
    else
      p := p + 1;

    case i of
      1: Worksheet.Cells[3, i].Characters(p, 0).Text :=
            '' + edtZSBH.Text;

      5: Worksheet.Cells[3, i].Characters(p, 0).Text :=
            '' + FormatDateTime('dd-mm-yyyy', dtpVI.Date);
    end;
  end;

  Query1.First;
  InsertRow := StartRow;

  while not Query1.Eof do
  begin
    MaxHeight := 35;
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    borderRange := Worksheet.Range[Format('A%d:I%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := Query1.FieldByName('XieMing').AsString;
    Worksheet.Cells[InsertRow, 2].Value := Query1.FieldByName('Parts').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query1.FieldByName('Article').AsString;

    begin
      s := Query1.FieldByName('DDBH').AsString;
      s := StringReplace(s, '_', Chr(10), [rfReplaceAll]);
      Worksheet.Cells[InsertRow, 4].WrapText := True;
      Worksheet.Cells[InsertRow, 4].Value := s;
    end;

    Worksheet.Cells[InsertRow, 5].Value := Query1.FieldByName('RQty').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('IQty').AsInteger;
    Worksheet.Cells[InsertRow, 7].Value := Query1.FieldByName('DeQty').AsString;
    Worksheet.Cells[InsertRow, 8].Value := Query1.FieldByName('Issues').AsString;
    Worksheet.Cells[InsertRow, 9].Value := Query1.FieldByName('DeRate').AsString + '%';
    Worksheet.Rows[InsertRow].AutoFit;

    if MaxHeight < Worksheet.Rows[InsertRow].RowHeight then
      MaxHeight := Worksheet.Rows[InsertRow].RowHeight;

    Inc(InsertRow);
    Query1.Next;
  end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  PrintSign(Worksheet, Query1, InsertRow, 'LCFID', 'LCFDate', 6, True);
  PrintSign(Worksheet, Query1, InsertRow, 'SCFID',  'SCFDate',  4, True);
  PrintSign(Worksheet, Query1, InsertRow, 'DepUID',  'DepInputDate',  1, True);
  PrintSign(Worksheet, Query1, InsertRow, 'PreparedID', '', 8, False);

  // Kiem tra ky KCS Super
  {Query1.First;
  SigS := False;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('SCFID').AsString = '') then
      SigS := True;
    Query1.Next;
  end;

  if not SigS then
  begin
    Worksheet.Cells[InsertRow + 1, 4].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 4].Value :=
      GetUsernameByID(Query1.FieldByName('SCFID').AsString)
      + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SCFDate').AsDateTime);
  end;


  // Kiem tra DepUID
  Query1.First;
  SigDep := False;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('DepUID').AsString = '') then
      SigDep := True;
    Query1.Next;
  end;

  if not SigDep then
  begin
    Worksheet.Cells[InsertRow + 1, 1].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 1].Value :=
      GetUsernameByID(Query1.FieldByName('DepUID').AsString)
      + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('DepInputDate').AsDateTime);
  end;


  // KCS Leader
  Query1.First;
  SigL := False;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('LCFID').AsString = '') then
      SigL := True;
    Query1.Next;
  end;

  if not SigL then
  begin
    Worksheet.Cells[InsertRow + 1, 6].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 6].Value :=
      GetUsernameByID(Query1.FieldByName('LCFID').AsString)
      + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('LCFDate').AsDateTime);
  end;


  // PreparedID
  Query1.First;
  SigP := False;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('PreparedID').AsString = '') then
      SigP := True;
    Query1.Next;
  end;

  if not SigP then
  begin
    Worksheet.Cells[InsertRow + 1, 8].WrapText := True;
    Worksheet.Cells[InsertRow + 1, 8].Value :=
      Query1.FieldByName('PreparedID').AsString
      + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('PreparedDate').AsDateTime);
  end;}

  //export format
  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$5';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$5';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure TDailyOutsourcingCheck.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
end;

procedure TDailyOutsourcingCheck.Button1Click(Sender: TObject);
begin
  if MenuCode.Text = 'N921' then
  begin
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['DepUID'].ReadOnly := True;
  end else if MenuCode.Text = 'N922' then
  begin
    DBGrid1.FieldColumns['Parts'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['Issues'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['VIDate'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    Confirm.Enabled := true;
  end else if MenuCode.Text = 'N923' then
  begin
    DBGrid1.FieldColumns['Parts'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['Issues'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['VIDate'].ReadOnly := True;
    DBGrid1.FieldColumns['DepUID'].ReadOnly := True;
    Confirm.Enabled := true;
  end else if MenuCode.Text = 'N924' then
  begin
    DBGrid1.FieldColumns['Parts'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['IQty'].ReadOnly := True;
    DBGrid1.FieldColumns['DeQty'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['Issues'].ReadOnly := True;
    DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
    DBGrid1.FieldColumns['VIDate'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['DepUID'].ReadOnly := True;
    Confirm.Enabled := true;
  end;

  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select ReportID, XieMing, Parts, Article, DDBH, RQty, IQty, DeQty, Issues, ');
    SQL.Add('CONVERT(numeric(18,1),(CAST(DeQty as numeric(18,1))/CAST(IQty as numeric(18,1))*100)) as DeRate, ');
    SQL.Add('VIDate, USERDate, USERID, Supplier, YN, SCFID, SCFDate, LCFID, LCFDate, DepUID, DepInputDate, PreparedID, PreparedDate');
    SQL.Add('from JGDaily ');
    SQL.Add('where DDBH like ''' + edtDDBH.Text + '%'' and YN <> 0 ');
    SQL.Add('and YN <> 0 ');
    if edtRID.Text <> '' then
      SQL.Add('and ReportID like '''+edtRID.Text+'%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and Supplier = ''' + edtZSBH.Text + ''' ');
    if edtSKU.Text <> '' then
      SQL.Add('and Article like ''%'+edtSKU.Text+'%'' ');
    if ckVIDate.Checked then
      SQL.Add('and CAST(VIDate as date) = ''' +FormatDateTime('yyyy-mm-dd', dtpVI.Date)+ ''' ');
    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as date) = ''' +FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date)+ ''' ');
    Active := True;
  end;
end;

procedure TDailyOutsourcingCheck.bExcelClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  Row, Col: Integer;
begin
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

procedure TDailyOutsourcingCheck.bbt6Click(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  i: Integer;
  CellValue: Variant;
begin
  BB4.Enabled := true;
  BB5.Enabled := true;
  // Cau hinh bo loc file Excel
  OpenDialog1.Filter :=
    'Excel 97-2003 (*.xls)|*.xls|Excel Workbook (*.xlsx)|*.xlsx|All Excel Files|*.xls;*.xlsx';
  OpenDialog1.FilterIndex := 3;

  // Cho nguoi dung chon file
  if not OpenDialog1.Execute then
  begin
    BB4.Enabled := false;
    BB5.Enabled := false;
    Exit;
  end;

  // Mo Excel bang OLE Automation
  ExcelApp := CreateOleObject('Excel.Application');
  Workbook := ExcelApp.Workbooks.Open(OpenDialog1.FileName);
  Worksheet := Workbook.Worksheets[1]; // lay sheet dau tien

  // Mo dataset trong tu bang dich
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT * FROM JGDaily WHERE 1=2');
  Query1.CachedUpdates := True;
  Query1.RequestLive := True;
  Query1.UpdateObject := UpSQL1;
  Query1.Open;

  // Duyet tung dong tu dong 2 den khi gap dong trong
  i := 2;
  while True do
  begin
    CellValue := Worksheet.Cells[i, 1].Value;
    if VarIsEmpty(CellValue) or VarIsNull(CellValue) or (Trim(VarToStr(CellValue)) = '') then
      Break;

    Query1.Append;
    Query1.FieldByName('XieMing').AsString := Worksheet.Cells[i, 2].Value;
    Query1.FieldByName('Parts').AsString := Worksheet.Cells[i, 3].Value;
    Query1.FieldByName('Article').AsString := Worksheet.Cells[i, 4].Value;
    Query1.FieldByName('DDBH').AsString := Worksheet.Cells[i, 5].Value;
    Query1.FieldByName('RQty').AsString := Worksheet.Cells[i, 6].Value;
    Query1.FieldByName('IQty').AsString := Worksheet.Cells[i, 7].Value;
    Query1.FieldByName('Issues').AsString := Worksheet.Cells[i, 9].Value;
    Query1.FieldByName('VIDate').AsString := Worksheet.Cells[i, 11].Value;
    Query1.FieldByName('Supplier').AsString := Worksheet.Cells[i, 14].Value;
    Query1.FieldByName('YN').AsInteger := 1;
    Query1.Post;

    Inc(i);
  end;

  // Dong Excel
  Workbook.Close(False);
  ExcelApp.Quit;

  // Thong bao so dong da import
  ShowMessage('Da import ' + IntToStr(Query1.RecordCount) + ' dong tu Excel (chua luu).');
end;

procedure TDailyOutsourcingCheck.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TDailyOutsourcingCheck.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  // Neu nhan Enter
  if Key = #13 then
  begin

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and (MenuCode.Text = 'N923') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N924') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'DepUID') and (MenuCode.Text = 'N922') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('DepUID').AsString := main.Edit1.Text;
      Query1.FieldByName('DepInputDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if DBGrid1.SelectedField.FieldName = 'DDBH' then
    begin
      if Query1.CachedUpdates then
      begin
        Qtemp.Close;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select DDZL.DDBH, DDZL.ARTICLE, xxzl.XieMing from DDZL ');
        Qtemp.SQL.Add('left join xxzl on xxzl.XieXing = DDZL.XieXing and xxzl.SheHao = DDZL.SheHao ');
        Qtemp.SQL.Add('where DDZL.DDBH = :DDBH');
        Qtemp.ParamByName('DDBH').AsString := DBGrid1.SelectedField.AsString;
        Qtemp.Open;

        if not Qtemp.IsEmpty then
        begin
          Query1.Edit;
          Query1.FieldByName('ARTICLE').AsString := Qtemp.FieldByName('ARTICLE').AsString;
          Query1.FieldByName('XieMing').AsString := Qtemp.FieldByName('XieMing').AsString;
          Query1.Post;
        end else
        begin
          Query1.Edit;
          Query1.FieldByName('ARTICLE').AsString := '';
          Query1.FieldByName('XieMing').AsString := '';
          Query1.Post;
        end;
      end;
    end;
  end;
end;

procedure TDailyOutsourcingCheck.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TDailyOutsourcingCheck.FormDestroy(Sender: TObject);
begin
  DailyOutsourcingCheck := nil;
end;

procedure TDailyOutsourcingCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TDailyOutsourcingCheck.FormCreate(Sender: TObject);
begin
  dtpUSERDate.Date := Now;
  dtpVI.Date := Now;
  DBGrid1.FrozenCols := 7;
end;

procedure TDailyOutsourcingCheck.DBGrid1CellClick(Column: TColumnEh);
begin
if not Query1.Active then exit;
if Query1.RecordCount = 0 then exit;
if (Query1.RecordCount > 0)  and not Query1.CachedUpdates then
  begin
    edtDDBH.Text := Query1.FieldByName('DDBH').AsString;
    edtSKU.Text := Query1.FieldByName('Article').AsString;
    edtZSBH.Text := Query1.FieldByName('Supplier').AsString;
    dtpUSERDate.Date := Query1.FieldByName('USERDate').AsDateTime;
    dtpVI.Date := Query1.FieldByName('VIDate').AsDateTime;
  end;
end;

procedure TDailyOutsourcingCheck.ConfirmClick(Sender: TObject);
begin
  Query1.RequestLive := true;
  Query1.CachedUpdates := true;
  BB4.Enabled := true;
  BB5.Enabled := true;

  if not Query1.Active then
    Query1.Open;
  Query1.DisableControls;
  try
    Query1.First; // quay ve dong dau
    while not Query1.Eof do
    begin
      Query1.Edit;

      // Gan gia tri Sign vao cache
      if MenuCode.Text = 'N922' then
      begin
        Query1.FieldByName('DepUID').AsString := Main.Edit1.Text;
        Query1.FieldByName('DepInputDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      end else if MenuCode.Text = 'N923' then
      begin
        Query1.FieldByName('SCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      end else if MenuCode.Text = 'N924' then
      begin
        Query1.FieldByName('LCFID').AsString := Main.Edit1.Text;
        Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now)
      end;

      Query1.Post; // Post chi vao cache, chua xuong SQL
      Query1.Next;
    end;
  finally
    Query1.EnableControls;
  end;
end;

end.
