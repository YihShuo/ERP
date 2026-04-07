unit SoleWeekReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh;
type
  TRejectedMaterial = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    QSig: TQuery;
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    edtRID: TEdit;
    cbPDF: TCheckBox;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    MenuCode: TEdit;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    bbt6: TBitBtn;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    DBGrid1: TDBGridEh;
    Query1ReportID: TIntegerField;
    Query1InDate: TDateTimeField;
    Query1DDBH: TStringField;
    Query1InsDate: TDateTimeField;
    Query1Brand: TStringField;
    Query1MatName: TStringField;
    Query1Supplier: TStringField;
    Query1DeReason: TStringField;
    Query1DeQty: TIntegerField;
    Query1ShoePO: TStringField;
    Query1XFDate: TDateTimeField;
    Query1Result: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1MSCFID: TStringField;
    Query1MSCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TSmallintField;
    ckInDate: TCheckBox;
    dtpInDate: TDateTimePicker;
    Label2: TLabel;
    edtSup: TEdit;
    Label3: TLabel;
    edtReason: TEdit;
    Label4: TLabel;
    edtDDBH: TEdit;
    Query1DefectName: TStringField;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    function NewID: string;
    function GetUsernameByID(const AID: string): string;
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PrintSign(
      AWorksheet: OleVariant;
      AQuery: TQuery;
      AInsertRow: Integer;
      const AIDField, ADateField: string;
      ACol: Integer;
      UseUserName: Boolean
    );
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RejectedMaterial: TRejectedMaterial;

implementation

uses main1, QC_MatDefect1;

{$R *.dfm}

// Ham kiem tra va in chu ky
procedure TRejectedMaterial.PrintSign(
  AWorksheet: OleVariant;
  AQuery: TQuery;
  AInsertRow: Integer;
  const AIDField, ADateField: string;
  ACol: Integer;
  UseUserName: Boolean
);
begin
  // neu field trong hoac null thi khong in
  if AQuery.FieldByName(AIDField).IsNull
     or (Trim(AQuery.FieldByName(AIDField).AsString) = '') then
    Exit;

  AWorksheet.Cells[AInsertRow + 2, ACol].WrapText := True;

  if UseUserName then
    AWorksheet.Cells[AInsertRow + 2, ACol].Value :=
      GetUsernameByID(AQuery.FieldByName(AIDField).AsString)
      + Chr(10)
      + FormatDateTime(
          'dd-mm-yyyy',
          AQuery.FieldByName(ADateField).AsDateTime
        )
  else
    AWorksheet.Cells[AInsertRow + 2, ACol].Value :=
      AQuery.FieldByName(AIDField).AsString;
end;

function TRejectedMaterial.GetUsernameByID(const AID: string): string;
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

function TRejectedMaterial.NewID: string;
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
      'from QC_RejectMat ' +
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

procedure TRejectedMaterial.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from QC_RejectMat ');
    SQL.Add('where ReportID like ''' +edtRID.Text+ '%''');

    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date) + ''' ');
    if ckInDate.Checked then
      SQL.Add('and CAST(InDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpInDate.Date) + ''' ');
    if edtDDBH.Text <> '' then
      SQL.Add('and DDBH = '''+edtDDBH.Text+''' ');
    if edtSup.Text <> '' then
      SQL.Add('and Supplier = '''+edtDDBH.Text+''' ');
    if edtReason.Text <> '' then
      SQL.Add('and DeReason like ''%'+edtReason.Text+'%'' ');
    Active := true;
  end;
end;

procedure TRejectedMaterial.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  {bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;}
end;

procedure TRejectedMaterial.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.FieldColumns['DeReason'].ButtonStyle:=  cbsEllipsis;
end;

procedure TRejectedMaterial.BB2Click(Sender: TObject);
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

procedure TRejectedMaterial.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.FieldColumns['DeReason'].ButtonStyle:=  cbsEllipsis;
end;

procedure TRejectedMaterial.BB4Click(Sender: TObject);
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
                  {if DBGrid1.SelectedField.FieldName = 'PreparedID' then
                    //Query1.FieldByName('PreparedDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)
                  else
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if DBGrid1.SelectedField.FieldName = 'SCFID' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if DBGrid1.SelectedField.FieldName = 'LCFID' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if DBGrid1.SelectedField.FieldName = 'MSCFID' then
                    begin
                      Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;}
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

procedure TRejectedMaterial.BB5Click(Sender: TObject);
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

procedure TRejectedMaterial.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TRejectedMaterial.FormClose(Sender: TObject;
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

procedure TRejectedMaterial.FormDestroy(Sender: TObject);
begin
  RejectedMaterial := nil;
end;

procedure TRejectedMaterial.BitBtn1Click(Sender: TObject);
begin
  with Query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
end;

procedure TRejectedMaterial.BitBtn2Click(Sender: TObject);
begin
if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
  end;
end;

procedure TRejectedMaterial.BitBtn3Click(Sender: TObject);
begin
with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Query1.edit;
  end;
end;

procedure TRejectedMaterial.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange: OleVariant;
  StartRow, InsertRow, Col: Integer;
  DuongDanFile, SaveFile, ColLetter, AppDir, SrcFile, DstFile: string;
  i, p: Integer;
  MaxHeight: Double;
  SigS, SigMS, SigL, SigP: Boolean;
  s: WideString;
begin

  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\RejectedMaterial.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'RejectedMaterial.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'RejectedMaterial.xlsx';

  StartRow := 3;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'RejectedMaterial_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'RejectedMaterial_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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

  Query1.First;
  InsertRow := StartRow;

  while not Query1.Eof do
  begin
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    borderRange := Worksheet.Range[Format('A%d:J%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := FormatDateTime('dd/mm/yyyy', Query1.FieldByName('InDate').AsDateTime);
    Worksheet.Cells[InsertRow, 2].Value := Query1.FieldByName('DDBH').AsString;
    Worksheet.Cells[InsertRow, 3].Value := FormatDateTime('dd/mm/yyyy', Query1.FieldByName('InsDate').AsDateTime);
    Worksheet.Cells[InsertRow, 4].Value := Query1.FieldByName('Brand').AsString;
    Worksheet.Cells[InsertRow, 5].Value := Query1.FieldByName('MatName').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('Supplier').AsString;
    Worksheet.Cells[InsertRow, 7].Value := Query1.FieldByName('DeReason').AsString;
    Worksheet.Cells[InsertRow, 8].Value := Query1.FieldByName('DeQty').AsString;
    Worksheet.Cells[InsertRow, 9].Value := Query1.FieldByName('ShoePO').AsString;
    Worksheet.Cells[InsertRow, 10].Value := FormatDateTime('dd/mm/yyyy', Query1.FieldByName('XFDate').AsDateTime);
    Worksheet.Cells[InsertRow, 11].Value := Query1.FieldByName('Result').AsString;

    Worksheet.Rows[InsertRow].AutoFit;

    Inc(InsertRow);
    Query1.Next;
  end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  //in chu ky
  PrintSign(Worksheet, Query1, InsertRow, 'MSCFID', 'MSCFDate', 1, True);
  PrintSign(Worksheet, Query1, InsertRow, 'SCFID',  'SCFDate',  5, True);
  PrintSign(Worksheet, Query1, InsertRow, 'LCFID',  'LCFDate',  7, True);
  PrintSign(Worksheet, Query1, InsertRow, 'PreparedID', '', 10, False);

  //set header va loai file can in
  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$2';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$2';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure TRejectedMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TRejectedMaterial.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

  if (DBGrid1.SelectedField.FieldName = 'Brand') then
    Key := #0;
  // Neu nhan Enter
  if Key = #13 then
  begin

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;
    if (DBGrid1.SelectedField.FieldName = 'MSCFID') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('MSCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;
  end;
end;

procedure TRejectedMaterial.DBGrid1Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  QC_MatDefect:=TQC_MatDefect.create(self);
  QC_MatDefect.Show;
end;

end.
