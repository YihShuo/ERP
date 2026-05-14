unit NGMaterials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh;

type
  TNGMaterial = class(TForm)
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
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
    ckInspecDate: TCheckBox;
    dtpInspecDate: TDateTimePicker;
    edtSup: TEdit;
    edtIssue: TEdit;
    edtDDBH: TEdit;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    QSig: TQuery;
    Query1Supplier: TStringField;
    Query1DDBH: TStringField;
    Query1CLBH: TStringField;
    Query1XieMing: TStringField;
    Query1SKU: TStringField;
    Query1RDate: TDateTimeField;
    Query1InspecDate: TDateTimeField;
    Query1Qty: TStringField;
    Query1DQty: TStringField;
    Query1Issue: TStringField;
    Query1DefectName: TStringField;
    Query1Brand: TStringField;
    Query1Result: TStringField;
    Query1ReportID: TIntegerField;
    Query1PreparedID: TStringField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1YN: TIntegerField;
    Query1IsExpired: TBooleanField;
    Query1Remark: TStringField;
    ckHideEx: TCheckBox;
    Query1RackLocation: TStringField;
    Label5: TLabel;
    edtCLBH: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure PrintSign(
                        AWorksheet: OleVariant;
                        AQuery: TQuery;
                        AInsertRow: Integer;
                        const AIDField, ADateField: string;
                        ACol: Integer;
                        UseUserName: Boolean
                      );
    function GetUsernameByID(const AID: string): string;
    function NewID: string;
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGrid1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NGMaterial: TNGMaterial;

implementation

uses main1, QC_MatDefect1;

{$R *.dfm}
procedure TNGMaterial.PrintSign(
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

  AWorksheet.Cells[AInsertRow + 1, ACol].WrapText := True;

  if UseUserName then
    AWorksheet.Cells[AInsertRow + 1, ACol].Value :=
      GetUsernameByID(AQuery.FieldByName(AIDField).AsString)
      + Chr(10)
      + FormatDateTime(
          'dd-mm-yyyy',
          AQuery.FieldByName(ADateField).AsDateTime
        )
  else
    AWorksheet.Cells[AInsertRow + 1, ACol].Value :=
      AQuery.FieldByName(AIDField).AsString;
end;

function TNGMaterial.GetUsernameByID(const AID: string): string;
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

function TNGMaterial.NewID: string;
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
      'from QC_NGMaterial ' +
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
    Seq := StrToInt(Copy(LastID, 5, 5)) + 1;
  end;

  Result := Prefix + FormatFloat('00000', Seq);
end;

procedure TNGMaterial.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from QC_NGMaterial ');
    SQL.Add('where ReportID like ''' +edtRID.Text+ '%'' ');

    if ckHideEx.Checked then
      SQL.Add('and IsExpired = 0 ');
    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date) + ''' ');
    if ckInspecDate.Checked then
      SQL.Add('and CAST(InspecDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpInspecDate.Date) + ''' ');
    if edtDDBH.Text <> '' then
      SQL.Add('and DDBH = '''+edtDDBH.Text+''' ');
    if edtSup.Text <> '' then
      SQL.Add('and Supplier = '''+edtSup.Text+''' ');
    if edtIssue.Text <> '' then
      SQL.Add('and Issue like ''%'+edtIssue.Text+'%'' ');
    if edtCLBH.Text <> '' then
      SQL.Add('and CLBH like '''+edtCLBH.Text+'%'' ');
    SQL.Add('order by RIGHT(''000'' + RackLocation, 3)');

    Active := true;
  end;
end;

procedure TNGMaterial.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.FieldColumns['Issue'].ButtonStyle:=  cbsEllipsis;
end;

procedure TNGMaterial.BB2Click(Sender: TObject);
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

procedure TNGMaterial.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.FieldColumns['Issue'].ButtonStyle:=  cbsEllipsis;
end;

procedure TNGMaterial.BB4Click(Sender: TObject);
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

procedure TNGMaterial.BB5Click(Sender: TObject);
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

procedure TNGMaterial.BB6Click(Sender: TObject);
begin
  Close;  
end;

procedure TNGMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TNGMaterial.FormDestroy(Sender: TObject);
begin
  NGMaterial := nil;
end;

procedure TNGMaterial.bExFClick(Sender: TObject);
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

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-004D.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-004D.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-004D.xlsx';

  StartRow := 5;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-004D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-004D_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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

    borderRange := Worksheet.Range[Format('A%d:M%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := Query1.FieldByName('RackLocation').AsString;
    Worksheet.Cells[InsertRow, 2].Value := Query1.FieldByName('Supplier').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query1.FieldByName('DDBH').AsString;
    Worksheet.Cells[InsertRow, 4].Value := Query1.FieldByName('CLBH').AsString;
    Worksheet.Cells[InsertRow, 5].Value := Query1.FieldByName('XieMing').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('SKU').AsString;
    Worksheet.Cells[InsertRow, 7].Value := FormatDateTime('dd/mm/yyyy', Query1.FieldByName('RDate').AsDateTime);
    Worksheet.Cells[InsertRow, 8].Value := FormatDateTime('dd/mm/yyyy', Query1.FieldByName('InspecDate').AsDateTime);
    Worksheet.Cells[InsertRow, 9].Value := Query1.FieldByName('Qty').AsString;
    Worksheet.Cells[InsertRow, 10].Value := Query1.FieldByName('DQty').AsString;
    Worksheet.Cells[InsertRow, 11].Value := Query1.FieldByName('DefectName').AsString;
    Worksheet.Cells[InsertRow, 12].Value := Query1.FieldByName('Brand').AsString;
    Worksheet.Cells[InsertRow, 13].Value := Query1.FieldByName('Result').AsString;

    Worksheet.Rows[InsertRow].AutoFit;

    Inc(InsertRow);
    Query1.Next;
  end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  //in chu ky
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

procedure TNGMaterial.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
end;

procedure TNGMaterial.DBGrid1Columns11EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  QC_MatDefect:=TQC_MatDefect.create(self);
  QC_MatDefect.Show;
end;

end.
