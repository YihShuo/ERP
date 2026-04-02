unit MonthlyReportMaterials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh;

type
  TMonthlyReportMaterial = class(TForm)
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    Label6: TLabel;
    Button1: TButton;
    cbPDF: TCheckBox;
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    MenuCode: TEdit;
    edtRID: TEdit;
    ckMR: TCheckBox;
    dtpMR: TDateTimePicker;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    bbt6: TBitBtn;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    QSig: TQuery;
    Query2: TQuery;
    UpSQLDetail: TUpdateSQL;
    DS2: TDataSource;
    Query1ReportID: TIntegerField;
    Query1Brand: TStringField;
    Query1MonthReport: TDateTimeField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TSmallintField;
    Query1MSCFID: TStringField;
    Query1MSCFDate: TDateTimeField;
    Query2ReportID: TIntegerField;
    Query2Supplier: TStringField;
    Query2CLBH: TStringField;
    Query2DeLotQty: TIntegerField;
    Query2DeQty: TStringField;
    Query2Defects: TStringField;
    Query2Inspector: TStringField;
    Query2Remark: TStringField;
    Query2OKNG: TStringField;
    Query2USERDate: TDateTimeField;
    Query2USERID: TStringField;
    Query2YN: TSmallintField;
    edtSup: TEdit;
    brnQPac: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    edtCLBH: TEdit;
    Query2DeRate: TFloatField;
    Query2LotQty: TStringField;
    Query2TotalQty: TStringField;
    Query2DefectName: TStringField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    edtDefects: TEdit;
    Label2: TLabel;
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    function NewID: string;
    function GetUsernameByID(const AID: string): string;
    procedure PrintSign(
      AWorksheet: OleVariant;
      AQuery: TQuery;
      AInsertRow: Integer;
      const AIDField, ADateField: string;
      ACol: Integer;
      UseUserName: Boolean
    );
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure brnQPacClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthlyReportMaterial: TMonthlyReportMaterial;

implementation

uses main1, QC_MatDefect1;

{$R *.dfm}

// Ham kiem tra va in chu ky
procedure TMonthlyReportMaterial.PrintSign(
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

function TMonthlyReportMaterial.GetUsernameByID(const AID: string): string;
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

function TMonthlyReportMaterial.NewID: string;
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
      'from QC_MonthlyMaterial ' +
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


procedure TMonthlyReportMaterial.BB1Click(Sender: TObject);
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

procedure TMonthlyReportMaterial.BB2Click(Sender: TObject);
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

procedure TMonthlyReportMaterial.BB4Click(Sender: TObject);
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
              if query1.fieldbyname('Brand').isnull then
              begin
                query1.delete;
              end else
              begin
                Query1.Edit;
                Query1.FieldByName('ReportID').Value := NewID;
                Query1.FieldByName('USERID').Value := main.Edit1.Text;
                Query1.FieldByName('YN').Value := 1;
                Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
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
                    end;}
                  {if DBGrid1.SelectedField.FieldName = 'SCFID' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;
                  if DBGrid1.SelectedField.FieldName = 'LCFID' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
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

procedure TMonthlyReportMaterial.BB3Click(Sender: TObject);
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

procedure TMonthlyReportMaterial.BB5Click(Sender: TObject);
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

procedure TMonthlyReportMaterial.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TMonthlyReportMaterial.BitBtn1Click(Sender: TObject);
begin
  with query2 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
BitBtn4.enabled:=true;
BitBtn5.enabled:=true;
DBGridEh1.FieldColumns['Defects'].ButtonStyle:= cbsEllipsis;
end;

procedure TMonthlyReportMaterial.BitBtn2Click(Sender: TObject);
begin
if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
  end;
BitBtn4.enabled:=true;
BitBtn5.enabled:=true;
end;

procedure TMonthlyReportMaterial.BitBtn3Click(Sender: TObject);
begin
with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query2.edit;
  end;
BitBtn4.enabled:=true;
BitBtn5.enabled:=true;
DBGridEh1.FieldColumns['Defects'].ButtonStyle:=  cbsEllipsis;
end;

procedure TMonthlyReportMaterial.BitBtn4Click(Sender: TObject);
var i: integer;
begin
  try
    Query2.first;
    for i:=1 to Query2.RecordCount do
      begin
        case Query2.updatestatus of
          usinserted:
            begin
              if Query2.fieldbyname('Supplier').isnull then
              begin
                Query2.delete;
              end else
              begin
                Query2.Edit;
                Query2.FieldByName('ReportID').Value := Query1.FieldByName('ReportID').Value;
                Query2.FieldByName('USERID').Value := main.Edit1.Text;
                Query2.FieldByName('YN').Value := 1;
                Query2.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                UpSQLDetail.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if Query2.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure you want to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                    Query2.Edit;
                    Query2.FieldByName('USERID').Value := main.Edit1.Text;
                    UpSQLDetail.Apply(ukdelete)
                   end;
                 end else
                 begin
                  Query2.Edit;
                  UpSQLDetail.apply(ukmodify);
                 end;
              end;
        end;
        Query2.next;
      end;
    Query2.active:=false;
    Query2.cachedupdates:=false;
    Query2.requestlive:=false;
    Query2.active:=true;
    BitBtn4.enabled:=false;
    BitBtn5.enabled:=false;
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TMonthlyReportMaterial.BitBtn5Click(Sender: TObject);
begin
  with Query2 do
  begin
    CachedUpdates := false;
    RequestLive := false;
    BitBtn4.Enabled := false;
    BitBtn5.Enabled := false;
    dbgrid1.ReadOnly := false;
  end;
end;

procedure TMonthlyReportMaterial.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;

  if Query1.RecordCount > 0 then
  begin
    BitBtn1.Enabled := true;
    BitBtn2.Enabled := true;
    BitBtn3.Enabled := true
  end
  else
  begin
    BitBtn1.Enabled := false;
    BitBtn2.Enabled := false;
    BitBtn3.Enabled := false;
  end;
  Query2.Active := true;
end;

procedure TMonthlyReportMaterial.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from QC_MonthlyMaterial ');
    SQL.Add('where ReportID like ''' +edtRID.Text+ '%''');

    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date) + ''' ');
    if ckMR.Checked then
      SQL.Add('AND CONVERT(char(7), MonthReport, 120) = ''' + FormatDateTime('yyyy-mm', dtpMR.Date) + ''' ');
    Active := true;
  end;
end;

procedure TMonthlyReportMaterial.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange: OleVariant;
  StartRow, InsertRow, Col, Err: Integer;
  DuongDanFile, SaveFile, ColLetter, Total, AppDir, SrcFile, DstFile: string;
  i, p, TotalRow, TotalColumn: Integer;
  MaxHeight, N, SumVal: Double;
  SigS, SigMS, SigL, SigP: Boolean;
  s: WideString;
begin
  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-WS001-06B.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-WS001-06B.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS001-06B.xlsx';

  StartRow := 4;

  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS001-06B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS001-06B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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

  //hang 2
  s := Worksheet.Cells[2, 1].Value;
  Worksheet.Cells[2, 1].Value := s + ' ' + Query1.FieldByName('Brand').AsString;

  s := VarToStr(Worksheet.Cells[2, 8].Value);
  Worksheet.Cells[2, 8].Value := s + ' ' + FormatDateTime('mm/yyyy', Query1.FieldByName('MonthReport').AsDateTime);

  //in Query2 ra excel
  Query2.First;
  InsertRow := StartRow;

  while not Query2.Eof do
  begin
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    borderRange := Worksheet.Range[Format('A%d:J%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := Query2.FieldByName('Supplier').AsString;
    Worksheet.Cells[InsertRow, 2].Value := Query2.FieldByName('CLBH').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query2.FieldByName('LotQty').AsString;
    Worksheet.Cells[InsertRow, 4].Value := Query2.FieldByName('DeLotQty').AsString;
    Worksheet.Cells[InsertRow, 5].Value := Query2.FieldByName('TotalQty').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query2.FieldByName('DeQty').AsString;
    Worksheet.Cells[InsertRow, 7].Value := Query2.FieldByName('DeRate').AsString + '%';
    Worksheet.Cells[InsertRow, 8].Value := Query2.FieldByName('Defects').AsString;
    Worksheet.Cells[InsertRow, 9].Value := Query2.FieldByName('Inspector').AsString;
    Worksheet.Cells[InsertRow, 10].Value := Query2.FieldByName('Remark').AsString;
    Worksheet.Cells[InsertRow, 11].Value := Query2.FieldByName('OKNG').AsString;

    //tinh tong
    for TotalColumn := 3 to 5 do
    begin
      SumVal := 0;
      for TotalRow := StartRow to InsertRow do
      begin
        if not VarIsNull(Worksheet.Cells[TotalRow, TotalColumn].Value) then
          SumVal := SumVal + Worksheet.Cells[TotalRow, TotalColumn].Value;
      end;
      Worksheet.Cells[InsertRow + 2, TotalColumn].NumberFormat := '@';
      Worksheet.Cells[InsertRow + 2, TotalColumn].Value := SumVal;
    end;

      Worksheet.Rows[InsertRow].AutoFit;
      Inc(InsertRow);
      Query2.Next;
    end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  //in chu ky
  PrintSign(Worksheet, Query1, InsertRow, 'MSCFID', 'MSCFDate', 1, True);
  PrintSign(Worksheet, Query1, InsertRow, 'SCFID',  'SCFDate',  3, True);
  PrintSign(Worksheet, Query1, InsertRow, 'LCFID',  'LCFDate',  7, True);
  PrintSign(Worksheet, Query1, InsertRow, 'PreparedID', '', 9, False);

  //set header va loai file can in
  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$3';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Worksheet.PageSetup.Zoom := False;
    Worksheet.PageSetup.FitToPagesWide := 1;
    Worksheet.PageSetup.FitToPagesTall := 1;
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$3';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Worksheet.PageSetup.Zoom := False;
    Worksheet.PageSetup.FitToPagesWide := 1;
    Worksheet.PageSetup.FitToPagesTall := 1;
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure TMonthlyReportMaterial.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.FieldByName('YN').Value = '0' then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TMonthlyReportMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TMonthlyReportMaterial.FormClose(Sender: TObject;
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

procedure TMonthlyReportMaterial.FormDestroy(Sender: TObject);
begin
  MonthlyReportMaterial := nil;
end;

procedure TMonthlyReportMaterial.brnQPacClick(Sender: TObject);
begin
with Query2 do
  begin
    Close;
    SQL.Clear;

    SQL.Add('SELECT * ');
    SQL.Add('FROM QC_MonthlyMaterialDetail ');
    SQL.Add('WHERE ReportID = :ReportID');

    if edtSup.Text <> '' then
      SQL.Add('and Supplier like '''+edtSup.Text+'%'' ');
    if edtCLBH.Text <> '' then
      SQL.Add('and CLBH like '''+edtCLBH.Text+'%'' ');
    if edtDefects.Text <> '' then
      SQL.Add('and Defects like ''%'+edtDefects.Text+'%'' ');

    Open;
end;

end;

procedure TMonthlyReportMaterial.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
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

procedure TMonthlyReportMaterial.FormCreate(Sender: TObject);
begin
  dtpMR.DateTime := Now;
  //DBGridEh1.DataSource.AutoEdit := false;
  DecimalSeparator := '.';
  ThousandSeparator := #0;
end;

procedure TMonthlyReportMaterial.DBGridEh1Columns8EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  QC_MatDefect:=TQC_MatDefect.create(self);
  QC_MatDefect.Show;
end;

end.
