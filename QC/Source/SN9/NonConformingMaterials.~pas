unit NonConformingMaterials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh;

type
  TNonConformingMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
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
    ckUSERDate: TCheckBox;
    dtpUSERDate: TDateTimePicker;
    MenuCode: TEdit;
    edtRID: TEdit;
    dtpInDate: TDateTimePicker;
    edtSKU: TEdit;
    edtMatID: TEdit;
    btClear: TButton;
    ckInDate: TCheckBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    QSig: TQuery;
    OpenPictureDialog1: TOpenDialog;
    Query1ReportID: TIntegerField;
    Query1ZSBH: TStringField;
    Query1InDate: TDateTimeField;
    Query1Qty: TIntegerField;
    Query1SKU: TStringField;
    Query1MaterialSpec: TStringField;
    Query1Issue: TStringField;
    Query1RandomQty: TIntegerField;
    Query1DeQty: TIntegerField;
    Query1Result: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1PreparedID: TStringField;
    Query1DepUID: TStringField;
    Query1DepCFDate: TDateTimeField;
    Query1YN: TIntegerField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1DeRate: TFloatField;
    Query1DDBH: TStringField;
    procedure BB4Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bExFClick(Sender: TObject);
    function GetUsernameByID(const AID: string): string;
    function NewID: string;
    procedure PrintSign(
      AWorksheet: OleVariant;
      AQuery: TQuery;
      AInsertRow: Integer;
      const AIDField, ADateField: string;
      ACol: Integer;
      UseUserName: Boolean
    );
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NonConformingMaterial: TNonConformingMaterial;

implementation

uses main1;

{$R *.dfm}
// Ham kiem tra va in chu ky
{procedure TNonConformingMaterial.PrintSign(
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

  AWorksheet.Cells[11, ACol].WrapText := True;

  if UseUserName then
    AWorksheet.Cells[11, ACol].Value :=
      GetUsernameByID(AQuery.FieldByName(AIDField).AsString)
      + Chr(10)
      + FormatDateTime(
          'dd-mm-yyyy',
          AQuery.FieldByName(ADateField).AsDateTime
        )
  else
    AWorksheet.Cells[11, ACol].Value :=
      AQuery.FieldByName(AIDField).AsString;
end;}
procedure TNonConformingMaterial.PrintSign(
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

  Cell := AWorksheet.Cells[AInsertRow + 2, ACol];
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

function TNonConformingMaterial.GetUsernameByID(const AID: string): string;
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

function TNonConformingMaterial.NewID: string;
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
      'from QC_NonConformingMaterial ' +
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

procedure TNonConformingMaterial.BB4Click(Sender: TObject);
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
              if Query1.FieldByName('DDBH').IsNull then
              begin
                query1.delete;
              end else
              begin
                Query1.Edit;
                Query1.FieldByName('ReportID').Value := NewID;
                Query1.FieldByName('USERID').Value := main.Edit1.Text;
                Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                Query1.FieldByName('YN').Value := 1;
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
                  {if MenuCode.Text = 'N961' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N962' then
                    begin
                      Query1.FieldByName('PurID').Value := main.Edit1.Text;
                      Query1.FieldByName('PurDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N963' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N964' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N965' then
                    begin
                      Query1.FieldByName('WMSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
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

procedure TNonConformingMaterial.BB1Click(Sender: TObject);
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

procedure TNonConformingMaterial.BB2Click(Sender: TObject);
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

procedure TNonConformingMaterial.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
//DBGrid1.SetFocus;
//DBGrid1.SelectedIndex := DBGrid1.FieldColumns['SCFID'].Index;
end;

procedure TNonConformingMaterial.BB5Click(Sender: TObject);
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

procedure TNonConformingMaterial.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TNonConformingMaterial.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, borderRange, Pic, Rg, TB: OleVariant;
  StartRow, InsertRow: Integer;
  DuongDanFile, SaveFile, AppDir, SrcFile, DstFile: string;
  SigS, SigWMS, SigL, SigI: Boolean;
  s: WideString;
  i, p: Integer;
  r: array[0..11] of Integer;
  c: array[0..11] of Integer;
  v: array[0..11] of WideString;
  cur: WideString;
begin
  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-WS009-02B.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-WS009-02B.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS009-02B.xlsx';
  SaveDialog := TSaveDialog.Create(nil);
  
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS009-02B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS009-02B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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

  r[0]:=2;  c[0]:=2;
  r[1]:=2;  c[1]:=5;
  r[2]:=2;  c[2]:=9;
  r[3]:=3;  c[3]:=2;
  r[4]:=3;  c[4]:=7;
  r[5]:=4;  c[5]:=1;
  r[6]:=5;  c[6]:=1;
  r[7]:=6;  c[7]:=1;
  r[8]:=7;  c[8]:=1;
  r[9]:=8;  c[9]:=1;
  r[10]:=9; c[10]:=1;
  if Query1.RecordCount = 0 then Exit;

  v[0] := Query1.FieldByName('ZSBH').AsString;
  v[1] := FormatDateTime('dd/mm/yyyy', Query1.FieldByName('InDate').AsDateTime);
  v[2] := Query1.FieldByName('Qty').AsString;
  
  v[3] := Query1.FieldByName('DDBH').AsString;
  v[3] := StringReplace(v[3], '_', Chr(10), [rfReplaceAll]);

  v[4] := Query1.FieldByName('SKU').AsString;
  v[5] := Query1.FieldByName('MaterialSpec').AsString;
  v[6] := Query1.FieldByName('Issue').AsString;
  v[7] := Query1.FieldByName('RandomQty').AsString;
  v[8] := Query1.FieldByName('DeQty').AsString;
  v[9] := Query1.FieldByName('DeRate').AsString + '%';
  v[10]:= Query1.FieldByName('Result').AsString;

  for i := 0 to 10 do
  begin
    cur := Trim(WideString(Worksheet.Cells[r[i], c[i]].Value));
    if cur = '' then
      Worksheet.Cells[r[i], c[i]].Value := v[i]
    else
      Worksheet.Cells[r[i], c[i]].Value := WideString(cur + ' ' + v[i]);
  end;

  //in chu ky
  PrintSign(Worksheet, Query1, InsertRow, 'DepUID', 'DepCFDate', 1, True);
  PrintSign(Worksheet, Query1, InsertRow, 'SCFID',  'SCFDate',  4, True);
  PrintSign(Worksheet, Query1, InsertRow, 'LCFID',  'LCFDate',  6, True);
  PrintSign(Worksheet, Query1, InsertRow, 'PreparedID', '', 8, False);

  //dinh dang header
  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned;

end;

procedure TNonConformingMaterial.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ReportID, ZSBH, InDate, Qty, DDBH, SKU, MaterialSpec, Issue, RandomQty, DeQty, ROUND(DeQty * 100.0 / NULLIF(RandomQty, 0), 1) as DeRate, ');
    SQL.Add('Result, SCFID, SCFDate, LCFID, LCFDate, PreparedID, DepUID, ');
    SQL.Add('DepCFDate, YN, USERID, USERDATE ');
    SQL.Add('FROM QC_NonConformingMaterial ');
    SQL.Add('where ReportID like ''' +edtRID.Text+ '%''');

    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date) + ''' ');
    if ckInDate.Checked then
      SQL.Add('and CAST(InDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpInDate.Date) + ''' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and ZSBH = '''+edtZSBH.Text+''' ');
    if edtDDBH.Text <> '' then
      SQL.Add('and DDBH like '''+edtDDBH.Text+'%'' ');
    if edtMatID.Text <> '' then
      SQL.Add('and MaterialSpec like '''+edtMatID.Text+'%'' ');
    if edtSKU.Text <> '' then
      SQL.Add('and SKU like '''+edtSKU.Text+'%'' ');
    
    Active := true;
  end;
end;

procedure TNonConformingMaterial.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
end;

procedure TNonConformingMaterial.DBGrid1KeyPress(Sender: TObject;
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
    if (DBGrid1.SelectedField.FieldName = 'DepUID') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('DepUID').AsString := main.Edit1.Text;
      Query1.FieldByName('DepCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;
  end;
end;

procedure TNonConformingMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TNonConformingMaterial.FormDestroy(Sender: TObject);
begin
    NonConformingMaterial := nil;
end;

procedure TNonConformingMaterial.FormClose(Sender: TObject;
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

end.
