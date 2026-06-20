unit IncomeMatEvaPaintings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, Menus;

type
  TIncomeMatEvaPainting = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
    edtCLBH: TEdit;
    MenuCode: TEdit;
    edtRID: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    ckInsDate: TCheckBox;
    dtpInsDate: TDateTimePicker;
    SKU: TLabel;
    edtSKU: TEdit;
    Label3: TLabel;
    edtStyle: TEdit;
    QSig: TQuery;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query1ReportID: TIntegerField;
    Query1InspecDate: TDateTimeField;
    Query1CLBH: TStringField;
    Query1Supplier: TStringField;
    Query1SCFID: TStringField;
    Query1SCFDate: TDateTimeField;
    Query1LCFID: TStringField;
    Query1LCFDate: TDateTimeField;
    Query1MSCFID: TStringField;
    Query1MSCFDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1YN: TSmallintField;
    Query1PreparedID: TStringField;
    Query1PreparedDate: TDateTimeField;
    Query1SKU: TStringField;
    Query1StyleName: TStringField;
    Query2: TQuery;
    UpSQLDetail: TUpdateSQL;
    DS2: TDataSource;
    Query2ReportID: TStringField;
    Query2Size: TStringField;
    Query2IQty: TIntegerField;
    Query2RQty: TIntegerField;
    Query2Defects: TStringField;
    Query2DeQty: TIntegerField;
    Query2TDeQty: TIntegerField;
    Query2Remark: TStringField;
    Query2YN: TSmallintField;
    Query2USERID: TStringField;
    Query2USERDate: TDateTimeField;
    QIssues: TQuery;
    QRemark: TQuery;
    QDeQty: TQuery;
    btClear: TButton;
    Query1DDBH: TStringField;
    edtSize: TEdit;
    Label4: TLabel;
    btnQuery: TBitBtn;
    Query1LabID: TStringField;
    Query1LabTestResult: TStringField;
    Query1RpFile: TStringField;
    PopupMenu1: TPopupMenu;
    mnu4: TMenuItem;
    mnu1: TMenuItem;
    upmnu1: TMenuItem;
    upmnu2: TMenuItem;
    mnu2: TMenuItem;
    mnu3: TMenuItem;
    SaveDialog1: TSaveDialog;
    QUp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure bExFClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure bExcelClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    function NewID: string;
    function GetUsernameByID(const AID: string): string;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetColumnsReadOnly;
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnQueryClick(Sender: TObject);
    procedure upmnu1Click(Sender: TObject);
    procedure upmnu2Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure mnu4Click(Sender: TObject);
    procedure mnu3Click(Sender: TObject);
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
  IncomeMatEvaPainting: TIncomeMatEvaPainting;

implementation

uses main1;

{$R *.dfm}

procedure TIncomeMatEvaPainting.PrintSign(
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

  Cell := AWorksheet.Cells[AInsertRow + 4, ACol];
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

function TIncomeMatEvaPainting.GetUsernameByID(const AID: string): string;
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

function TIncomeMatEvaPainting.NewID: string;
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
      'from QC_EvaPainting ' +
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

procedure TIncomeMatEvaPainting.Button1Click(Sender: TObject);
begin
  SetColumnsReadOnly;
  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from QC_EvaPainting ');
    SQL.Add('where DDBH like ''' +edtDDBH.Text+ '%''');

    if edtRID.Text <> '' then
      SQL.Add('and ReportID like '''+edtRID.Text+'%'' ');
    if edtCLBH.Text <> '' then
      SQL.Add('and CLBH like ''' +edtCLBH.Text+ '%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and Supplier like ''' +edtZSBH.Text+ '%'' ');
    if ckUSERDate.Checked then
      SQL.Add('and CAST(USERDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date) + ''' ');
    if ckInsDate.Checked then
      SQL.Add('and CAST(InspecDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpInsDate.Date) + ''' ');
    Active := true;
  end;
end;

procedure TIncomeMatEvaPainting.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;

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
  if Query1.Active then
    begin
       mnu1.Enabled:=true;
       mnu2.Enabled:=true;
       mnu3.Enabled:=true;
       mnu4.Enabled:=true;
    end;
end;

procedure TIncomeMatEvaPainting.bExFClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet, rng, CellValue: OleVariant;
  StartRow, InsertRow: Integer;
  DuongDanFile, SaveFile, PdfFile, qty, issue, size, checksize, AppDir, SrcFile, DstFile: string;
  s: WideString;
  i, j, p, tdeqty, tinqty, traqty, tisqty, valInt: Integer;
  derate, Tong, vTong, vTraQty: Double;
  SigS, SigMS, SigL, SigP: Boolean;
begin

  AppDir := ExtractFilePath(Application.ExeName);

  if not DirectoryExists(AppDir) then
    ForceDirectories(AppDir);

  SrcFile := '\\192.168.71.4\erp\lys_erp\A-QIP-WS001-04B.xlsx';
  DstFile := IncludeTrailingPathDelimiter(AppDir) + 'A-QIP-WS001-04B.xlsx';

  if not CopyFile(PChar(SrcFile), PChar(DstFile), False) then
    ShowMessage('Copy file that bai');

  DuongDanFile := ExtractFilePath(ParamStr(0)) + 'A-QIP-WS001-04B.xlsx';
  SaveDialog := TSaveDialog.Create(nil);
  try
    if not cbPDF.Checked then
    begin
      SaveDialog.Filter := 'Excel Files (*.xlsx)|*.xlsx';
      SaveDialog.DefaultExt := 'xlsx';
      SaveDialog.FileName := 'A-QIP-WS001-04B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.xlsx';
      SaveDialog.Title := 'Chon noi luu file Excel moi';
    end else
    begin
      SaveDialog.Filter := 'PDF (*.pdf)|*.pdf';
      SaveDialog.DefaultExt := 'pdf';
      SaveDialog.FileName := 'A-QIP-WS001-04B_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';
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

  for i := 1 to 20 do
  begin
    s := Worksheet.Cells[2, i].Value;
    case i of
      1:  Worksheet.Cells[2, i].Value := s + ' ' + FormatDateTime('dd-mm-yyyy', dtpInsdate.Date);
      6:  Worksheet.Cells[2, i].Value := s + ' ' + edtCLBH.Text;
      10: Worksheet.Cells[2, i].Value := s + ' ' + edtZSBH.Text;
    end;
  end;

  for i := 1 to 20 do
  begin
    s := Worksheet.Cells[3, i].Value;
    case i of
      1:  Worksheet.Cells[3, i].Value := s + ' ' + edtStyle.Text;
      10:  Worksheet.Cells[3, i].Value := s + ' ' + edtSKU.Text;
    end;
  end;

  if edtDDBH.Text <> '' then
  begin
    s := Worksheet.Cells[4, 1].Value;
    Worksheet.Cells[4, 1].Value := s + ' ' + edtDDBH.Text;
  end;

  Query2.First;
  StartRow := 7;
  InsertRow := StartRow;

  while not Query2.Eof do
  begin
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;

    Worksheet.Cells[InsertRow, 1].Value := Query2.FieldByName('Size').AsString;

    //xoa size trung
    i := 7;
    while i < InsertRow do
    begin
      checksize := Worksheet.Cells[i, 1].Value;
      if checksize = Worksheet.Cells[i + 1, 1].Value then
      begin
        Worksheet.Rows[i + 1].EntireRow.Delete;
        Dec(InsertRow);
      end
      else
        Inc(i);
    end;

    Worksheet.Cells[InsertRow, 2].Value := Query2.FieldByName('IQty').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query2.FieldByName('RQty').AsInteger;

    //insert Defects vao excel
    with QIssues do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select distinct Defects from QC_EvaPaintingDetail where ReportID = ''' + edtRID.Text + ''' order by Defects desc');
      Active := True;

      First;

      i := 4;
      while (not Eof) and (i <= 12) do
      begin
        Worksheet.Cells[6, i].Value := FieldByName('Defects').AsString;
        Next;
        Inc(i);
      end;
    end;

    //insert Defect qty
    begin
      i := 4;
      while i <= 12 do
      begin
        issue := Worksheet.Cells[6, i].Value;
        size := Worksheet.Cells[InsertRow, 1].Value;
        if issue <> '' then
        begin
          with QDeQty do
          begin
            Active := False;
            SQL.Clear;
            SQL.Add('select DeQty from QC_EvaPaintingDetail');
            SQL.Add('where ReportID = ''' + edtRID.Text + '''');
            SQL.Add('  and Defects = ''' + issue + '''');
            SQL.Add('  and Size = ''' + size + '''');
            Active := True;
            if not IsEmpty then
            begin
              qty := FieldByName('DeQty').AsString;
              Worksheet.Cells[InsertRow, i].Value := qty;
            end;
          end;
        end;
        i := i + 1;
      end;
    end;

    //tinh tong defectqty
    begin
      i := 4;
      tdeqty := 0;
      while i <= 12 do
      begin
        size := Worksheet.Cells[InsertRow, 1].Value;
        tdeqty := tdeqty + Worksheet.Cells[InsertRow, i].Value;
        i := i + 1;
      end;
    end;

    //tinh tong incomingqty
    begin
      i := 7;
      tinqty := 0;
      while i <= InsertRow do
      begin
        tinqty := tinqty + Worksheet.Cells[i, 2].Value;
        Inc(i);
      end;
    end;

    //tinh tong randomqty
    begin
      i := 7;
      traqty := 0;
      while i <= InsertRow do
      begin
        traqty := traqty + Worksheet.Cells[i, 3].Value;
        Inc(i);
      end;
    end;

    //tinh tong defect qty
    begin
      for j := 4 to 12 do
      begin
        tisqty := 0;

        for i := 7 to InsertRow do
        begin
          valInt := 0;

          if not VarIsNull(Worksheet.Cells[i, j].Value) then
          begin
            try
              valInt := Worksheet.Cells[i, j].Value;
            except
              valInt := 0;
            end;
          end;

          tisqty := tisqty + valInt;
          Worksheet.Cells[InsertRow + 2, j].Value := tisqty;
        end;
        if Worksheet.Cells[InsertRow + 2, j].Value = '0' then
          Worksheet.Cells[InsertRow + 2, j].Value := '';
      end;
    end;


    //tinh ti le khong dat
    begin
      for i := 4 to 12 do
      begin

        try
          valInt := Worksheet.Cells[InsertRow + 2, i].Value;
        except
          valInt := 0;
        end;

        derate := valInt / traqty * 100;

        if derate = 0 then
          Worksheet.Cells[InsertRow + 3, i].Value := ''
        else
        Worksheet.Cells[InsertRow + 3, i].Value :=
          FormatFloat('0.00', derate) + '%';
      end;
    end;


    Worksheet.Cells[InsertRow + 2, 2].Value := tinqty;
    Worksheet.Cells[InsertRow + 2, 3].Value := traqty;
    Worksheet.Cells[InsertRow, 13].Value := tdeqty;


    //insert Remark
    begin
      i := 4;
      while i <= 12 do
      begin
        size := Worksheet.Cells[InsertRow, 1].Value;
        if size <> '' then
        begin
          s := '';

          with QRemark do
          begin
            Active := False;
            SQL.Clear;
            SQL.Add('select Remark from QC_EvaPaintingDetail');
            SQL.Add('where ReportID = ''' + edtRID.Text + '''');
            SQL.Add('  and Size = ''' + size + '''');
            Active := True;

            if not IsEmpty then
            begin
              First;
              while not Eof do
              begin
                if s <> '' then s := s + ', ';
                s := s + FieldByName('Remark').AsString;
                Next;
              end;

              Worksheet.Cells[InsertRow, 14].WrapText := True;
              Worksheet.Cells[InsertRow, 14].Value := s;
            end;
          end;
        end;

        i := i + 1;
      end;
    end;

    //tinh tong total defects qty
    Tong := 0;
    for i := 7 to InsertRow do
    begin
      CellValue := Worksheet.Cells[i, 13].Value;
      if not VarIsNull(CellValue) then
        Tong := Tong + CellValue;
    end;
    Worksheet.Cells[InsertRow + 2, 13].Value := Tong;


    Worksheet.Rows[InsertRow].AutoFit;
    Inc(InsertRow);
    Query2.Next;
  end;

  //tinh % tong total defects qty
  {vTong   := Worksheet.Cells[InsertRow + 1, 13].Value;
  vTraQty := Worksheet.Cells[InsertRow + 1, 3].Value;

  if vTraQty > 0 then
  begin
    Worksheet.Cells[InsertRow + 2, 13].Value := vTong / vTraQty;
    Worksheet.Cells[InsertRow + 2, 13].NumberFormat := '0.00%';
  end
  else
    Worksheet.Cells[InsertRow + 2, 13].Clear;}



  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  PrintSign(Worksheet, Query1, InsertRow, 'MSCFID', 'MSCFDate', 1, True);
  PrintSign(Worksheet, Query1, InsertRow, 'SCFID',  'SCFDate',  5, True);
  PrintSign(Worksheet, Query1, InsertRow, 'LCFID',  'LCFDate',  10, True);
  PrintSign(Worksheet, Query1, InsertRow, 'PreparedID', 'PreparedDate', 13, False);

  //Kiem tra ky KCS Super
  {Query1.First;
  SigS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('SCFID').AsString = '') or Query1.FieldByName('SCFID').IsNull then
      SigS := true;
  Query1.Next
  end;

  if SigS = false then
  begin
    Worksheet.Cells[InsertRow + 4, 5].WrapText := True;
    Worksheet.Cells[InsertRow + 4, 5].Value := GetUsernameByID(Query1.FieldByName('SCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('SCFDate').AsDateTime);
  end;

  //Kiem tra ky Material Super
  Query1.First;
  SigMS := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('MSCFID').AsString = '') or Query1.FieldByName('MSCFID').IsNull then
      SigMS := true;
  Query1.Next
  end;

  if SigMS = false then
  begin
    Worksheet.Cells[InsertRow + 4, 1].WrapText := True;
    Worksheet.Cells[InsertRow + 4, 1].Value := GetUsernameByID(Query1.FieldByName('MSCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('MSCFDate').AsDateTime);
  end;

  //Kiem tra ky KCS Leader
  Query1.First;
  SigL := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('LCFID').AsString = '') or Query1.FieldByName('LCFID').IsNull then
      SigL := true;
  Query1.Next
  end;

  if SigL = false then
  begin
    Worksheet.Cells[InsertRow + 4, 10].WrapText := True;
    Worksheet.Cells[InsertRow + 4, 10].Value := GetUsernameByID(Query1.FieldByName('LCFID').AsString)
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('LCFDate').AsDateTime);
  end;

  //Kiem tra ky PreparedID
  Query1.First;
  SigP := false;
  while not Query1.Eof do
  begin
    if (Query1.FieldByName('PreparedID').AsString = '') or Query1.FieldByName('PreparedID').IsNull then
      SigP := true;
  Query1.Next
  end;

  if SigP = false then
  begin
    Worksheet.Cells[InsertRow + 4, 13].WrapText := True;
    Worksheet.Cells[InsertRow + 4, 13].Value := Query1.FieldByName('PreparedID').AsString
    + Chr(10) + FormatDateTime('dd-mm-yyyy', Query1.FieldByName('PreparedDate').AsDateTime);
  end;}

  Worksheet.Rows[InsertRow + 1].WrapText := True;
  Worksheet.Rows[InsertRow + 1].RowHeight := 35;
  Worksheet.Rows[InsertRow].WrapText := True;
  Worksheet.Rows[InsertRow].RowHeight := 35;


  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$6';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$6';
    Worksheet.PageSetup.RightHeader := '&P / &N';
    Workbook.SaveAs(SaveFile);
    ShowMessage('Duong dan Excel: ' + SaveFile);
    ExcelApp.Visible := True;
  end;

  ExcelApp := Unassigned;
  Workbook := Unassigned;
  Worksheet := Unassigned; 
end;

procedure TIncomeMatEvaPainting.DBGrid1CellClick(Column: TColumnEh);
begin
if not Query1.Active then exit;
if Query1.RecordCount = 0 then exit;
if (Query1.RecordCount > 0)  and not Query1.CachedUpdates then
  begin
    dtpInsDate.Date := Query1.FieldByName('InspecDate').AsDateTime;
    edtStyle.Text := Query1.FieldByName('StyleName').AsString;
    edtSKU.Text := Query1.FieldByName('SKU').AsString;
    edtDDBH.Text := Query1.FieldByName('DDBH').AsString;
    edtCLBH.Text := Query1.FieldByName('CLBH').AsString;
    edtZSBH.Text := Query1.FieldByName('Supplier').AsString;
    dtpUSERDate.Date := Query1.FieldByName('USERDate').AsDateTime;
    edtRID.Text := Query1.FieldByName('ReportID').AsString;
  end;
end;

procedure TIncomeMatEvaPainting.BB1Click(Sender: TObject);
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

procedure TIncomeMatEvaPainting.BB3Click(Sender: TObject);
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

procedure TIncomeMatEvaPainting.bExcelClick(Sender: TObject);
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

procedure TIncomeMatEvaPainting.SetColumnsReadOnly;
begin
if MenuCode.Text = 'N951' then
begin
  DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
  DBGrid1.FieldColumns['YN'].ReadOnly := True;
end else if MenuCode.Text = 'N952' then
begin
  DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
  DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
  DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
  DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
  DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
  DBGrid1.FieldColumns['SKU'].ReadOnly := True;
  DBGrid1.FieldColumns['StyleName'].ReadOnly := True;
  DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
  DBGrid1.FieldColumns['YN'].ReadOnly := True;
  DBGridEh1.ReadOnly := true;
end else if MenuCode.Text = 'N953' then
begin
  DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
  DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
  DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
  DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
  DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
  DBGrid1.FieldColumns['SKU'].ReadOnly := True;
  DBGrid1.FieldColumns['StyleName'].ReadOnly := True;
  DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['MSCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['MSCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
  DBGrid1.FieldColumns['YN'].ReadOnly := True;
  DBGridEh1.ReadOnly := true;
end else if MenuCode.Text = 'N954' then
begin
  DBGrid1.FieldColumns['ReportID'].ReadOnly := True;
  DBGrid1.FieldColumns['InspecDate'].ReadOnly := True;
  DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
  DBGrid1.FieldColumns['Supplier'].ReadOnly := True;
  DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
  DBGrid1.FieldColumns['SKU'].ReadOnly := True;
  DBGrid1.FieldColumns['StyleName'].ReadOnly := True;
  DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['SCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
  DBGrid1.FieldColumns['LCFDate'].ReadOnly := True;
  DBGrid1.FieldColumns['USERID'].ReadOnly := True;
  DBGrid1.FieldColumns['USERDate'].ReadOnly := True;
  DBGrid1.FieldColumns['YN'].ReadOnly := True;
  DBGridEh1.ReadOnly := true;
end;
end;

procedure TIncomeMatEvaPainting.BB4Click(Sender: TObject);
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
                    Query1.FieldByName('PreparedDate').Value := FormatDateTime('yyyy-mm-dd', Now)
                  else if MenuCode.Text = 'N951' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd', Now);
                    end;
                  if MenuCode.Text = 'N952' then
                    begin
                         with Qtemp do
                         begin
                            Close;
                            SQL.Clear;
                            SQL.Add('INSERT INTO BDelRec VALUES (');
                            SQL.Add('''N952'',');
                            SQL.Add(QuotedStr(Query1.FieldByName('ReportID').AsString) + ',');
                            SQL.Add(QuotedStr(FormatDateTime('yyyy-mm-dd', Query1.FieldByName('SCFDate').AsDateTime)) + ',');
                            SQL.Add(QuotedStr(Query1.FieldByName('USERID').AsString) + ',');
                            SQL.Add(QuotedStr(main.Edit1.Text) + ',');
                            SQL.Add('GETDATE())');
                            ExecSQL;
                         end;
                    end;
                  if MenuCode.Text = 'N953' then
                    begin
                         with Qtemp do
                         begin
                            Close;
                            SQL.Clear;
                            SQL.Add('INSERT INTO BDelRec VALUES (');
                            SQL.Add('''N953'',');
                            SQL.Add(QuotedStr(Query1.FieldByName('ReportID').AsString) + ',');
                            SQL.Add(QuotedStr(FormatDateTime('yyyy-mm-dd', Query1.FieldByName('LCFDate').AsDateTime)) + ',');
                            SQL.Add(QuotedStr(Query1.FieldByName('USERID').AsString) + ',');
                            SQL.Add(QuotedStr(main.Edit1.Text) + ',');
                            SQL.Add('GETDATE())');
                            ExecSQL;
                         end;
                    end;
                  if MenuCode.Text = 'N954' then
                    begin
                         with Qtemp do
                         begin
                            Close;
                            SQL.Clear;
                            SQL.Add('INSERT INTO BDelRec VALUES (');
                            SQL.Add('''N954'',');
                            SQL.Add(QuotedStr(Query1.FieldByName('ReportID').AsString) + ',');
                            SQL.Add(QuotedStr(FormatDateTime('yyyy-mm-dd', Query1.FieldByName('MSCFDate').AsDateTime)) + ',');
                            SQL.Add(QuotedStr(Query1.FieldByName('USERID').AsString) + ',');
                            SQL.Add(QuotedStr(main.Edit1.Text) + ',');
                            SQL.Add('GETDATE())');
                            ExecSQL;
                         end;
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

procedure TIncomeMatEvaPainting.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  // Neu nhan Enter
  if Key = #13 then
  begin

    if (DBGrid1.SelectedField.FieldName = 'SCFID') and (MenuCode.Text = 'N952') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('SCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N953') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;
    if (DBGrid1.SelectedField.FieldName = 'MSCFID') and (MenuCode.Text = 'N954') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('MSCFID').AsString := main.Edit1.Text;
      Query1.FieldByName('MSCFDate').Value := FormatDateTime('yyyy-mm-dd', Now);
      Query1.Post;
    end;

    if DBGrid1.SelectedField.FieldName = 'DDBH' then
    begin
      if Query1.CachedUpdates then
      begin
        Qtemp.Close;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select DDZL.DDBH, DDZL.ARTICLE, DDZL.Pairs, xxzl.XieMing from DDZL ');
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

procedure TIncomeMatEvaPainting.BB6Click(Sender: TObject);
begin
 Close;
end;

procedure TIncomeMatEvaPainting.FormDestroy(Sender: TObject);
begin
  IncomeMatEvaPainting := nil;
end;

procedure TIncomeMatEvaPainting.FormClose(Sender: TObject;
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

procedure TIncomeMatEvaPainting.BB5Click(Sender: TObject);
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

procedure TIncomeMatEvaPainting.FormCreate(Sender: TObject);
begin
  DBGrid1.FrozenCols := 10;
end;

procedure TIncomeMatEvaPainting.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value = '0' then
    DBGrid1.Canvas.Font.Color := clRed;
end;

procedure TIncomeMatEvaPainting.BB2Click(Sender: TObject);
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

procedure TIncomeMatEvaPainting.BitBtn1Click(Sender: TObject);
begin
  with query2 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
BitBtn4.enabled:=true;
BitBtn5.enabled:=true;
end;

procedure TIncomeMatEvaPainting.BitBtn2Click(Sender: TObject);
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

procedure TIncomeMatEvaPainting.BitBtn3Click(Sender: TObject);
begin
with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query2.edit;
  end;
BitBtn4.enabled:=true;
BitBtn5.enabled:=true;
end;

procedure TIncomeMatEvaPainting.BitBtn4Click(Sender: TObject);
var i: integer;
begin
  try
    Query2.first;
    for i:=1 to Query2.RecordCount do
      begin
        case Query2.updatestatus of
          usinserted:
            begin
              if Query2.fieldbyname('Size').isnull then
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

procedure TIncomeMatEvaPainting.Query1AfterScroll(DataSet: TDataSet);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from QC_EvaPaintingDetail ');
    SQL.Add('where ReportID = '''+Query1.FieldByName('ReportID').AsString+''' ');
    Active := true;
  end;
end;

procedure TIncomeMatEvaPainting.BitBtn5Click(Sender: TObject);
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

procedure TIncomeMatEvaPainting.btClearClick(Sender: TObject);
begin
  edtDDBH.Clear;
  edtSKU.Clear;
  edtZSBH.Clear;
  edtStyle.Clear;
  edtCLBH.Clear;
  edtRID.Clear;
end;

procedure TIncomeMatEvaPainting.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.FieldByName('YN').Value = '0' then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TIncomeMatEvaPainting.btnQueryClick(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from QC_EvaPaintingDetail ');
    SQL.Add('where ReportID = '''+Query1.FieldByName('ReportID').AsString+''' ');
    if edtSize.Text <> '' then
      SQL.Add(' and Size = '''+edtSize.Text+''' ');
    Active := true;
  end;
end;

procedure TIncomeMatEvaPainting.upmnu1Click(Sender: TObject);
var
  SaveFN, BasePath, DestFile: string;
  CopyResult: Boolean;
begin
  if Query1.Active = False then Exit;

  if not OpenDialog1.Execute then Exit;
  if OpenDialog1.FileName = '' then Exit;

  BasePath := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N95\';
  SaveFN := ExtractFileName(OpenDialog1.FileName);
  DestFile := BasePath + SaveFN;

  // check file ton tai
  if FileExists(DestFile) then
  begin
    if MessageDlg('File da ton tai, Ghi de?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;

  try
    // copy file len server
    CopyResult := CopyFile(PChar(OpenDialog1.FileName), PChar(DestFile), False);

    if not CopyResult then
    begin
      ShowMessage('Upload fail: ' + SysErrorMessage(GetLastError) + ' ');
      Exit;
    end;

    // update DB
    with QUp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE QC_EvaPainting');
      SQL.Add('SET RpFile = ''' + SaveFN + '''');
      SQL.Add('WHERE ReportID = ' + Query1.FieldByName('ReportID').AsString);
      ExecSQL;
    end;

    Query1.Active := False;
    Query1.Active := True;

    ShowMessage('Upload OK');
  except
    on E: Exception do
      ShowMessage('Upload fail: ' + E.Message);
  end;
end;

procedure TIncomeMatEvaPainting.upmnu2Click(Sender: TObject);
var
  SaveFN, BasePath, DestFile: string;
  CopyResult: Boolean;
begin
  if Query1.Active = False then Exit;
  if Query1.FieldByName('LabID').IsNull then Exit;
  if not OpenDialog1.Execute then Exit;
  if OpenDialog1.FileName = '' then Exit;

  BasePath := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N95\';
  SaveFN := ExtractFileName(OpenDialog1.FileName);
  DestFile := BasePath + SaveFN;

  // check file ton tai
  if FileExists(DestFile) then
  begin
    if MessageDlg('File da ton tai, Ghi de?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;

  try
    // copy file len server
    CopyResult := CopyFile(PChar(OpenDialog1.FileName), PChar(DestFile), False);

    if not CopyResult then
    begin
      ShowMessage('Upload fail: ' + SysErrorMessage(GetLastError) + ' ');
      Exit;
    end;

    // update DB
    with QUp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE QC_EvaPainting');
      SQL.Add('SET RpFile = ''' + SaveFN + '''');
      SQL.Add('WHERE LabID = ''' + Query1.FieldByName('LabID').AsString + ''' ');
      ExecSQL;
    end;

    Query1.Active := False;
    Query1.Active := True;

    ShowMessage('Upload OK');
  except
    on E: Exception do
      ShowMessage('Upload fail: ' + E.Message);
  end;
end;

procedure TIncomeMatEvaPainting.mnu2Click(Sender: TObject);
var
  SourceFile, DestFile, FileName: string;
begin
  if Query1.FieldByName('RpFile').IsNull then Exit;

  FileName := Query1.FieldByName('RpFile').AsString;

  SaveDialog1.FileName := FileName;

  if not SaveDialog1.Execute then Exit;

  SourceFile := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N95\' + FileName;

  DestFile := SaveDialog1.FileName;

  // kiem tra file nguon
  if not FileExists(SourceFile) then
  begin
    ShowMessage('Khong tim thay file tren server');
    Exit;
  end;

  // kiem tra file dich
  if FileExists(DestFile) then
  begin
    if MessageDlg('File da ton tai. Ghi de?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;

  // copy file
  if CopyFile(PChar(SourceFile), PChar(DestFile), False) then
    ShowMessage('Download file OK')
  else
    ShowMessage('Download file error');
end;

procedure TIncomeMatEvaPainting.mnu4Click(Sender: TObject);
var
  SourceFile, FileName: string;
begin
  if Query1.FieldByName('RpFile').IsNull then Exit;

  FileName := Query1.FieldByName('RpFile').AsString;

  SourceFile := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N95\' + FileName;

  // kiem tra file nguon
  if not FileExists(SourceFile) then
  begin
    ShowMessage('Khong tim thay file tren server');
    Exit;
  end;

  // mo file truc tiep
  ShellExecute(0, 'open', PChar(SourceFile), nil, nil, SW_SHOWNORMAL);
end;
procedure TIncomeMatEvaPainting.mnu3Click(Sender: TObject);
var
  FileName, BasePath, FullPath: string;
begin
  // kiem tra co file trong database khong
  if Query1.FieldByName('RpFile').IsNull then Exit;
  if Query1.FieldByName('RpFile').AsString = '' then Exit;

  // hoi nguoi dung co muon xoa file khong
  if MessageDlg('You want to delete guarantee letter?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;

  FileName := Query1.FieldByName('RpFile').AsString;

  // duong dan server share
  BasePath := '\\192.168.71.11\upload-QC\' + main.Edit2.Text + '\N95\';
  FullPath := BasePath + FileName;

  try
    // kiem tra file ton tai tren server
    if FileExists(FullPath) then
    begin
      // xoa file tren network share
      DeleteFile(FullPath);
    end;

    // update database set null
    with QUp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE QC_EvaPainting SET RpFile = NULL');
      SQL.Add('WHERE ReportID = ' + Query1.FieldByName('ReportID').AsString);
      ExecSQL;
    end;

    ShowMessage('Delete OK');

    // refresh data
    Query1.Active := False;
    Query1.Active := True;

  except
    on E: Exception do
      ShowMessage('Delete fail: ' + E.Message);
  end;
end;

end.
