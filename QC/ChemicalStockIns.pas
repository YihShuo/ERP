unit ChemicalStockIns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, ShellAPI, ComCtrls, DBCtrlsEh;

type
  TChemicalStockIn = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    bbt6: TBitBtn;
    bExcel: TBitBtn;
    bExF: TBitBtn;
    cbPDF: TCheckBox;
    ckUSERDate: TCheckBox;
    MenuCode: TEdit;
    edtRKNO: TEdit;
    edtCLBH: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog: TSaveDialog;
    QGetID: TQuery;
    OpenPictureDialog1: TOpenDialog;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1CARTONNO: TIntegerField;
    Query1ExpirationDate: TDateTimeField;
    Query1Weight: TIntegerField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    btQR: TButton;
    Query1YN: TIntegerField;
    Query1YWPM: TStringField;
    edtCARNO: TEdit;
    Label1: TLabel;
    ckExpDate: TCheckBox;
    dtpExpDate: TDateTimePicker;
    ckTK: TCheckBox;
    ckDX: TCheckBox;
    edtYWPM: TEdit;
    Label2: TLabel;
    dtpUSERDate: TDateTimePicker;
    dtpExpDate1: TDateTimePicker;
    Label4: TLabel;
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    function NewID: string;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCARNOKeyPress(Sender: TObject; var Key: Char);
    procedure btQRClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChemicalStockIn: TChemicalStockIn;

implementation

uses main1, ChemicalSearch;

{$R *.dfm}
function TChemicalStockIn.NewID: string;
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
      'select top 1 RKNO ' +
      'from KCRK_HC ' +
      'where left(RKNO, 4) = :P ' +
      'order by RKNO desc');
    ParamByName('P').AsString := Prefix;
    Active := true;
  end;

  if QGetID.IsEmpty then
    Seq := 1
  else
  begin
    LastID := QGetID.FieldByName('RKNO').AsString;
    Seq := StrToInt(Copy(LastID, 7, 7)) + 1;
  end;

  Result := Prefix + FormatFloat('0000000', Seq);
end;

procedure TChemicalStockIn.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  bExcel.Enabled := true;
  bExF.Enabled := true;
end;

procedure TChemicalStockIn.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
  RequestLive :=  true;
  CachedUpdates:= true;
  Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.FieldColumns['CLBH'].ButtonStyle := cbsEllipsis;
end;

procedure TChemicalStockIn.BB2Click(Sender: TObject);
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

procedure TChemicalStockIn.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.FieldColumns['CLBH'].ButtonStyle := cbsEllipsis;
end;

procedure TChemicalStockIn.BB4Click(Sender: TObject);
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
              if Query1.FieldByName('CLBH').IsNull then
              begin
                query1.delete;
              end else
              begin
                Query1.Edit;
                Query1.FieldByName('RKNO').Value := NewID;
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

procedure TChemicalStockIn.BB5Click(Sender: TObject);
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

procedure TChemicalStockIn.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TChemicalStockIn.FormDestroy(Sender: TObject);
begin
  ChemicalStockIn := nil;
end;

procedure TChemicalStockIn.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT TOP 10000 KCRK_HC.*, CLZL.YWPM FROM KCRK_HC ');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = KCRK_HC.CLBH ');
    SQL.Add('where RKNO like ''' +edtRKNO.Text+ '%'' ');

    if ckUSERDate.Checked then
      SQL.Add('and CAST(KCRK_HC.USERDate as DATE) = ''' + FormatDateTime('yyyy-mm-dd', dtpUSERDate.Date) + ''' ');
    if edtCLBH.Text <> '' then
      SQL.Add('and CLBH like '''+edtCLBH.Text+'%'' ');
    if edtYWPM.Text <> '' then
      SQL.Add('and YWPM like '''+edtYWPM.Text+'%'' ');
    if ckExpDate.Checked then
    begin
      SQL.Add('and CAST(ExpirationDate as DATE) BETWEEN ''' + FormatDateTime('yyyy-mm-dd', dtpExpDate.Date) + ''' ');
      SQL.Add('AND ''' + FormatDateTime('yyyy-mm-dd', dtpExpDate1.Date) + ''' ');
    end;
    if ckTK.Checked then
      SQL.Add('and KCRK_HC.YN = ''1'' ');
    if ckDX.Checked then
      SQL.Add('and KCRK_HC.YN = ''2'' ');
    SQL.Add('order by RKNO desc');
    Active := true;
  end;
end;

procedure TChemicalStockIn.DBGrid1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  ChemicalSearchs := TChemicalSearchs.create(self);
  ChemicalSearchs.Show;
end;

procedure TChemicalStockIn.FormClose(Sender: TObject;
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

procedure TChemicalStockIn.edtCARNOKeyPress(Sender: TObject; var Key: Char);
var
  ACount, i: Integer;
  Bookmark: TBookmark;

  vRKNO, vCLBH, vUSERID: string;
  vExpirationDate, vUSERDATE: Variant;
  vWeight: Variant;
begin
  if Key = #13 then
  begin
    Key := #0;
    BB3.Click;

    ACount := StrToIntDef(edtCARNO.Text, 0);
    if ACount <= 0 then Exit;
    if Query1.IsEmpty then Exit;

    // luu du lieu dong hien tai
    vCLBH := Query1.FieldByName('CLBH').AsString;
    vExpirationDate := Query1.FieldByName('ExpirationDate').Value;
    vWeight := Query1.FieldByName('Weight').Value;
    vUSERID := Query1.FieldByName('USERID').AsString;
    vUSERDATE := Query1.FieldByName('USERDATE').Value;

    Bookmark := Query1.GetBookmark;
    try
      for i := 1 to ACount do
      begin
        Query1.Append;

        Query1.FieldByName('CLBH').AsString := vCLBH;
        //Query1.FieldByName('CARTONNO').AsInteger := i + 1;
        Query1.FieldByName('ExpirationDate').Value := vExpirationDate;
        Query1.FieldByName('Weight').Value := vWeight;
        Query1.FieldByName('USERID').AsString := vUSERID;
        Query1.FieldByName('USERDATE').Value := vUSERDATE;

        Query1.Post;
      end;

      Query1.GotoBookmark(Bookmark);
    finally
      Query1.FreeBookmark(Bookmark);
    end;
  end;
end;

procedure TChemicalStockIn.btQRClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  j: Integer;
  RKNO, CLBH, ExpirationDate: string;
  AppDir: string;
begin
  AppDir := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  if Query1.Active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := eclApp.Workbooks.Add;
    except
      Application.MessageBox('Khong co Microsoft Excel', 'Error', MB_OK);
      Exit;
    end;

    try
      // Header
      eclApp.Cells[1, 1] := 'QR';
      eclApp.Cells[1, 2] := 'RKNO';
      eclApp.Cells[1, 3] := 'CLBH';
      eclApp.Cells[1, 4] := 'ExpirationDate';

      Query1.First;
      j := 2;

      while not Query1.Eof do
      begin
        RKNO := VarToStr(Query1.Fields[0].Value);
        CLBH := VarToStr(Query1.Fields[1].Value);
        ExpirationDate := Query1.Fields[3].AsString;

        // Cot QR
        eclApp.Cells[j, 1] := RKNO;

        eclApp.Cells[j, 2] := RKNO;

        eclApp.Cells[j, 3].NumberFormat := '@';
        eclApp.Cells[j, 3] := '''' + CLBH;

        eclApp.Cells[j, 4] := ExpirationDate;

        Inc(j);
        Query1.Next;
      end;

      eclApp.Columns.AutoFit;

      if FileExists(AppDir + 'PrintQR_HC.xlsx') then
        DeleteFile(AppDir + 'PrintQR_HC.xlsx');

      eclApp.ActiveWorkbook.SaveAs(AppDir + 'PrintQR_HC.xlsx', 51);
      eclApp.Visible := True;
      eclApp.Quit;

      // Goi BarTender
      if FileExists(ExtractFilePath(Application.ExeName) + 'PrintQR_HC.btw') then
      begin
        ShellExecute(Handle, 'open',
          PChar(ExtractFilePath(Application.ExeName) + 'PrintQR_HC.btw'),
          nil,
          PChar(ExtractFilePath(Application.ExeName)),
          SW_SHOW);
      end
      else
        ShowMessage('Chua co file PrintQR_HC.btw');

    except
      on F: Exception do
        ShowMessage('Error: ' + F.Message);
    end;
  end;
end;

procedure TChemicalStockIn.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (DBGrid1.SelectedField.FieldName = 'CLBH') then
    Key := #0;
end;

procedure TChemicalStockIn.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').Value = '2') and (Query1.FieldByName('ExpirationDate').AsDateTime >= Date) then
    DBGrid1.Canvas.Font.Color := clLime;
  if Query1.FieldByName('ExpirationDate').AsDateTime < Date then
    DBGrid1.Canvas.Font.Color := clRed;
  if (Query1.FieldByName('YN').Value = '0') and Query1.CachedUpdates then
    DBGrid1.Canvas.Font.Color := clAqua;
end;

procedure TChemicalStockIn.bExcelClick(Sender: TObject);
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

procedure TChemicalStockIn.FormCreate(Sender: TObject);
begin
  dtpUSERDate.Date := Now;
  dtpExpDate.Date := Now - 30;
  dtpExpDate1.Date := Now;
end;

end.
