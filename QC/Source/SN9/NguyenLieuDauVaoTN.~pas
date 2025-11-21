unit NguyenLieuDauVaoTN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls;

type
  TIncomingMatTest = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    bbt6: TBitBtn;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    edtDDBH: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    SaveDialog: TSaveDialog;
    cbPDF: TCheckBox;
    edtZSBH: TEdit;
    Label2: TLabel;
    dtpSend: TDateTimePicker;
    dtpResult: TDateTimePicker;
    ckResultDate: TCheckBox;
    ckSendDate: TCheckBox;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    Label3: TLabel;
    nmMatName: TMemo;
    cbxHT: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edtCLBH: TEdit;
    MenuCode: TEdit;
    Query1ReportID: TAutoIncField;
    Query1MatName: TStringField;
    Query1XieMing: TStringField;
    Query1Article: TStringField;
    Query1CLBH: TStringField;
    Query1DDBH: TStringField;
    Query1RQty: TIntegerField;
    Query1LabRequest: TStringField;
    Query1LabID: TStringField;
    Query1Result: TStringField;
    Query1Defects: TStringField;
    Query1USERID: TStringField;
    Query1SendDate: TDateTimeField;
    Query1ResultDate: TDateTimeField;
    Query1USERDate: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1YN: TSmallintField;
    Query1Brand: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    QGetID: TQuery;
    Label6: TLabel;
    edtRID: TEdit;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure bExcelClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    function NewID: string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncomingMatTest: TIncomingMatTest;
  BrandFlag: Boolean;

implementation

uses main1;

{$R *.dfm}

function TIncomingMatTest.NewID: string;
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
      'from MaterialIncomTest ' +
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

procedure TIncomingMatTest.BB1Click(Sender: TObject);
begin
  BrandFlag := true;
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TIncomingMatTest.Button1Click(Sender: TObject);
begin

  if MenuCode.Text = 'N911' then
  begin
    DBGrid1.FieldColumns['ResultDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['Result'].ReadOnly := True;
    DBGrid1.FieldColumns['Defects'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
  end else if MenuCode.Text = 'N912' then
  begin
    DBGrid1.FieldColumns['LabRequest'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ZSBH'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
  end else if MenuCode.Text = 'N913' then
  begin
    DBGrid1.FieldColumns['LabRequest'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['Result'].ReadOnly := True;
    DBGrid1.FieldColumns['Defects'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ResultDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ZSBH'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
  end else if MenuCode.Text = 'N914' then
  begin
    DBGrid1.FieldColumns['LabRequest'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['Result'].ReadOnly := True;
    DBGrid1.FieldColumns['Defects'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ResultDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ZSBH'].ReadOnly := True;
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
  end;

  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from MaterialIncomTest ');
    SQL.Add('where DDBH like ''' +edtDDBH.Text+ '%'' ');

    if edtRID.Text <> '' then
      SQL.Add('and ReportID like '''+edtRID.Text+'%'' ');
    if edtCLBH.Text <> '' then
      SQL.Add('and CLBH like ''' +edtCLBH.Text+ '%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and ZSBH like ''' +edtZSBH.Text+ '%'' ');
    if cbxHT.Text <> 'All' then
      SQL.Add('and Brand like ''' +cbxHT.Text+ '%'' ');
    if ckSendDate.Checked then
      SQL.Add('and CAST(SendDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpSend.Date) + ''' ');
    if ckResultDate.Checked then
      SQL.Add('and CAST(ResultDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpResult.Date) + ''' ');
    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date) + ''' ');
    Active := true;
  end;
end;

procedure TIncomingMatTest.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
end;

procedure TIncomingMatTest.BB2Click(Sender: TObject);
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
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TIncomingMatTest.BB3Click(Sender: TObject);
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

procedure TIncomingMatTest.BB4Click(Sender: TObject);
var i:integer;
begin
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
                Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                if BrandFlag = true then
                  Query1.FieldByName('Brand').Value := cbxHT.Text;
                upsql1.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if query1.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                    Query1.FieldByName('USERID').Value := main.Edit1.Text;
                    UpSQL1.Apply(ukdelete)
                   end;
                 end else
                 begin
                  Query1.Edit;
                  if MenuCode.Text = 'N911' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('Brand').Value := cbxHT.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;
                  if MenuCode.Text = 'N912' then
                    Query1.FieldByName('Brand').Value := Query1.FieldByName('Brand').Value;
                  if MenuCode.Text = 'N913' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                      Query1.FieldByName('Brand').Value := Query1.FieldByName('Brand').Value;
                    end;
                  if MenuCode.Text = 'N914' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                      Query1.FieldByName('Brand').Value := Query1.FieldByName('Brand').Value;
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
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TIncomingMatTest.bbt6Click(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  i: Integer;
  CellValue: Variant;
begin
  BrandFlag := false;
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
  Query1.SQL.Add('SELECT * FROM MaterialIncomTest WHERE 1=2');
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
      Break; // gap dong trong thi dung lai

    Query1.Append;
    Query1.FieldByName('MatName').AsString := Worksheet.Cells[i, 2].Value;
    Query1.FieldByName('XieMing').AsString := Worksheet.Cells[i, 3].Value;
    Query1.FieldByName('Article').AsString := Worksheet.Cells[i, 4].Value;
    Query1.FieldByName('CLBH').AsString := Worksheet.Cells[i, 5].Value;
    Query1.FieldByName('DDBH').AsString := Worksheet.Cells[i, 6].Value;
    Query1.FieldByName('RQty').AsInteger := Worksheet.Cells[i, 7].Value;
    Query1.FieldByName('LabRequest').AsString := Worksheet.Cells[i, 8].Value;
    Query1.FieldByName('LabID').AsString := Worksheet.Cells[i, 9].Value;
    Query1.FieldByName('Result').AsString := Worksheet.Cells[i, 10].Value;
    Query1.FieldByName('Defects').AsString := Worksheet.Cells[i, 11].Value;
    Query1.FieldByName('USERID').AsString := main.Edit1.Text;
    Query1.FieldByName('SendDate').AsString := Worksheet.Cells[i, 13].Value;
    Query1.FieldByName('ResultDate').AsString := Worksheet.Cells[i, 14].Value;
    Query1.FieldByName('USERDate').AsDateTime := Now;
    Query1.FieldByName('ZSBH').AsString := Worksheet.Cells[i, 16].Value;
    Query1.FieldByName('Brand').AsString := Worksheet.Cells[i, 18].Value;
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

procedure TIncomingMatTest.bExcelClick(Sender: TObject);
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


procedure TIncomingMatTest.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    CachedUpdates := false;
    RequestLive := false;
    BB4.Enabled := false;
    BB5.Enabled := false;
  end;
end;

procedure TIncomingMatTest.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, rng: OleVariant;
  StartRow, InsertRow: Integer;
  DuongDanFile, SaveFile, PdfFile, s: string;
  userdateDB, senddateDB, resultdateDB: TDateTime;
  i, p: Integer;
begin
  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS001-05B.xlsx';

  StartRow := 6;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS001-05B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS001-05B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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

  userdateDB := Query1.FieldByName('USERDate').AsDateTime;
  senddateDB := Query1.FieldByName('SendDate').AsDateTime;
  resultdateDB := Query1.FieldByName('ResultDate').AsDateTime;

  for i := 1 to 8 do
  begin
    s := VarToStr(Worksheet.Cells[3, i].Value);
    p := Pos(Chr(10), s);
    begin
      case i of
        1: Worksheet.Cells[3, i].Characters(p, 0).Text := ' ' + edtZSBH.Text;
        2: Worksheet.Cells[3, i].Characters(p, 0).Text := ' ' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date);
        3: Worksheet.Cells[3, i].Characters(p, 0).Text := ' ' + FormatDateTime('yyyy-mm-dd', dtpSend.Date);
        5: Worksheet.Cells[3, i].Characters(p, 0).Text := ' ' + FormatDateTime('yyyy-mm-dd', dtpResult.Date);
        8: Worksheet.Cells[3, i].Characters(p, 0).Text := ' ' + cbxHT.Text;
      end;
    end;
  end;

  Query1.First;
  InsertRow := StartRow;

  while not Query1.Eof do
  begin
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    Worksheet.Cells[InsertRow, 1].Value := Query1.FieldByName('MatName').AsString;
    Worksheet.Cells[InsertRow, 2].Value := Query1.FieldByName('XieMing').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query1.FieldByName('Article').AsString;
    Worksheet.Cells[InsertRow, 4].Value := Query1.FieldByName('CLBH').AsString;
    Worksheet.Cells[InsertRow, 5].Value := Query1.FieldByName('DDBH').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('RQty').AsInteger;
    Worksheet.Cells[InsertRow, 7].Value := Query1.FieldByName('LabRequest').AsString;
    Worksheet.Cells[InsertRow, 8].Value := Query1.FieldByName('LabID').AsString;
    Worksheet.Cells[InsertRow, 9].Value := Query1.FieldByName('Result').AsString;
    Worksheet.Cells[InsertRow, 10].Value := Query1.FieldByName('Defects').AsString;
    Inc(InsertRow);
    Query1.Next;
  end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  Worksheet.Rows.AutoFit;
  Worksheet.Rows[InsertRow + 1].WrapText := True;
  Worksheet.Rows[InsertRow + 1].RowHeight := 35;
  Worksheet.Rows[InsertRow].WrapText := True;
  Worksheet.Rows[InsertRow].RowHeight := 35;

  rng := Worksheet.Range[
  Worksheet.Cells[StartRow, 1],
  Worksheet.Cells[InsertRow-1, 10]];

  rng.Borders.LineStyle := 1;
  rng.Borders.Weight := 2;


  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$5';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$5';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure TIncomingMatTest.FormCreate(Sender: TObject);
begin
  nmMatName.Text := '';
  dtpSend.Date := Now;
  dtpResult.Date := Now;
  dtpUSERDate.Date := Now;
  
  DBGrid1.FrozenCols := 6;
end;

procedure TIncomingMatTest.Query1AfterScroll(DataSet: TDataSet);
begin
  if (Query1.RecordCount > 0) and not Query1.CachedUpdates then
  begin
    nmMatName.Text := Query1.FieldByName('MatName').AsString;
  end
  else
  begin
    nmMatName.Text := '';
  end;
end;

procedure TIncomingMatTest.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TIncomingMatTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TIncomingMatTest.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TIncomingMatTest.FormDestroy(Sender: TObject);
begin
  IncomingMatTest := nil;
end;

procedure TIncomingMatTest.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  // Neu nhan Enter
  if Key = #13 then
  begin

    if DBGrid1.SelectedField.FieldName = 'DDBH' then
    begin
      // Chi lam neu Query1 dang bat CachedUpdates
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
          // Cho Query1 vao Edit mode truoc khi gan field
          if not Query1.Active then Query1.Open;
          Query1.Edit;
          Query1.FieldByName('ARTICLE').AsString := Qtemp.FieldByName('ARTICLE').AsString;
          Query1.FieldByName('XieMing').AsString := Qtemp.FieldByName('XieMing').AsString;
          Query1.Post;
        end else
        begin
          Query1.FieldByName('ARTICLE').AsString := '';
          Query1.FieldByName('XieMing').AsString := '';
        end;
      end;
    end;

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and (MenuCode.Text = 'N913') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N914') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.Post;
    end;

    
    if DBGrid1.SelectedField.FieldName = 'CLBH' then
    begin
      // Chi lam neu Query1 dang bat CachedUpdates
      if Query1.CachedUpdates then
      begin
        Qtemp.Close;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select ywpm as MatName from clzl where cldh = :CLBH');
        Qtemp.ParamByName('CLBH').AsString := DBGrid1.SelectedField.AsString;
        Qtemp.Open;

        if not Qtemp.IsEmpty then
        begin
          Query1.Edit;
          Query1.FieldByName('MatName').AsString := Qtemp.FieldByName('MatName').AsString;
          Query1.Post;
        end else
          Query1.FieldByName('MatName').AsString := '';
      end;
    end;
  end;
end;

end.
