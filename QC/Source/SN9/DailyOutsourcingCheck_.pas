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
                  if MenuCode.Text = 'N921' then
                    begin
                      Query1.FieldByName('USERID').Value := main.Edit1.Text;
                      Query1.FieldByName('USERDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;
                  if MenuCode.Text = 'N923' then
                    begin
                      Query1.FieldByName('SCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
                    end;
                  if MenuCode.Text = 'N924' then
                    begin
                      Query1.FieldByName('LCFDate').Value := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
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
  DuongDanFile, SaveFile, s: string;
  i, p: Integer;
  MaxHeight: Double;
begin
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
            '' + FormatDateTime('yyyy-mm-dd', dtpVI.Date);
    end;
  end;

  Query1.First;
  InsertRow := StartRow;

  while not Query1.Eof do
  begin
    MaxHeight := 35;
    Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Insert;
    Worksheet.Range[Format('H%d:I%d',[InsertRow, InsertRow])].Merge;

    borderRange := Worksheet.Range[Format('A%d:J%d', [InsertRow, InsertRow])];
    borderRange.Borders.LineStyle := 1;
    borderRange.Borders.Weight := 2;


    Worksheet.Cells[InsertRow, 1].Value := Query1.FieldByName('XieMing').AsString;
    Worksheet.Cells[InsertRow, 2].Value := Query1.FieldByName('Parts').AsString;
    Worksheet.Cells[InsertRow, 3].Value := Query1.FieldByName('Article').AsString;
    Worksheet.Cells[InsertRow, 4].Value := Query1.FieldByName('DDBH').AsString;
    Worksheet.Cells[InsertRow, 5].Value := Query1.FieldByName('RQty').AsString;
    Worksheet.Cells[InsertRow, 6].Value := Query1.FieldByName('IQty').AsInteger;
    Worksheet.Cells[InsertRow, 7].Value := Query1.FieldByName('DeQty').AsString;
    Worksheet.Cells[InsertRow, 8].Value := Query1.FieldByName('Issues').AsString;
    Worksheet.Cells[InsertRow, 10].Value := Query1.FieldByName('DeRate').AsString + '%';

    Worksheet.Range[Format('A%d:J%d',[InsertRow, InsertRow])].WrapText := True;
    Worksheet.Range[Format('H%d:I%d',[InsertRow, InsertRow])].UnMerge;
    Worksheet.Rows[InsertRow].AutoFit;

    if MaxHeight < Worksheet.Rows[InsertRow].RowHeight then
      MaxHeight := Worksheet.Rows[InsertRow].RowHeight;

    Worksheet.Range[Format('H%d:I%d',[InsertRow, InsertRow])].Merge;

    if MaxHeight > 150 then
      Worksheet.Rows[InsertRow].RowHeight := MaxHeight / 2 + 1
    else
      Worksheet.Rows[InsertRow].RowHeight := MaxHeight;

    Inc(InsertRow);
    Query1.Next;
  end;

  Worksheet.Rows[Format('%d:%d', [InsertRow, InsertRow])].Delete;

  if cbPDF.Checked then
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$5';
    //Worksheet.PageSetup.CenterFooter := '&P / &N';
    Workbook.ExportAsFixedFormat(0, SaveFile);
    ShowMessage('Duong dan PDF: ' + SaveFile);
    ShellExecute(0, 'open', PChar(SaveFile), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    Worksheet.PageSetup.PrintTitleRows := '$1:$5';
    //Worksheet.PageSetup.CenterFooter := '&P / &N';
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
    {DBGrid1.FieldColumns['ResultDate'].ReadOnly := True;
    DBGrid1.FieldColumns['LabID'].ReadOnly := True;
    DBGrid1.FieldColumns['Result'].ReadOnly := True;
    DBGrid1.FieldColumns['Defects'].ReadOnly := True;}
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
  end else if MenuCode.Text = 'N922' then
  begin
    {DBGrid1.FieldColumns['LabRequest'].ReadOnly := True;
    DBGrid1.FieldColumns['MatName'].ReadOnly := True;
    DBGrid1.FieldColumns['XieMing'].ReadOnly := True;
    DBGrid1.FieldColumns['Article'].ReadOnly := True;
    DBGrid1.FieldColumns['DDBH'].ReadOnly := True;
    DBGrid1.FieldColumns['CLBH'].ReadOnly := True;
    DBGrid1.FieldColumns['RQty'].ReadOnly := True;
    DBGrid1.FieldColumns['SendDate'].ReadOnly := True;
    DBGrid1.FieldColumns['ZSBH'].ReadOnly := True;}
    DBGrid1.FieldColumns['SCFID'].ReadOnly := True;
    DBGrid1.FieldColumns['LCFID'].ReadOnly := True;
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
  end;

  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select ReportID, XieMing, Parts, Article, DDBH, RQty, IQty, DeQty, Issues, ');
    SQL.Add('CONVERT(numeric(18,1),(CAST(DeQty as numeric(18,1))/CAST(IQty as numeric(18,1))*100)) as DeRate, ');
    SQL.Add('VIDate, USERDate, USERID, Supplier, YN, SCFID, SCFDate, LCFID, LCFDate');
    SQL.Add('from JGDaily ');
    SQL.Add('where DDBH like ''' + edtDDBH.Text + '%'' ');
    SQL.Add('and YN <> 0 ');
    if edtRID.Text <> '' then
      SQL.Add('and ReportID like '''+edtRID.Text+'%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('and Supplier = ''' + edtZSBH.Text + ''' ');
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
      Query1.Post;
    end;

    if (DBGrid1.SelectedField.FieldName = 'LCFID') and (MenuCode.Text = 'N924') and Query1.CachedUpdates then
    begin
      Query1.Edit;
      Query1.FieldByName('LCFID').AsString := main.Edit1.Text;
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
  DBGrid1.FrozenCols := 5;
end;

end.
