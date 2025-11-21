unit ColorSwatchScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, colorbutton, GridsEh, DBGridEh, ExtCtrls, OleCtrls,
  SHDocVw, DB, DBTables, ComCtrls, jpeg, Mask, DBCtrls, ComObj, ExcelXP,
  Buttons, DateUtils, Menus;

type
  TColorSwatchScan = class(TForm)
    Panel1: TPanel;
    ED_Barcode: TEdit;
    Label1: TLabel;
    QScan: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    QUpdate: TQuery;
    QScanCINO: TStringField;
    QScanCGNO: TStringField;
    QScanCLBH: TStringField;
    QScanYWPM: TStringField;
    QScanDWBH: TStringField;
    QScanQty: TCurrencyField;
    QScanDEVCODE: TStringField;
    QScanPURPOSE: TStringField;
    QScanFD: TStringField;
    QScanNoted: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    B_Manual: TButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Label2: TLabel;
    Label3: TLabel;
    B_Save: TButton;
    UP_Scan: TUpdateSQL;
    QScanOK: TBooleanField;
    QScanNG: TBooleanField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ED_InvoiceNo: TDBEdit;
    ED_PO: TDBEdit;
    ED_MaterialNo: TDBEdit;
    CB_OK: TDBCheckBox;
    CB_NG: TDBCheckBox;
    ED_Noted: TDBEdit;
    Panel3: TPanel;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    CB1: TComboBox;
    B_Query: TButton;
    B_Excel: TButton;
    DS2: TDataSource;
    QReport: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    DBGridEh2: TDBGridEh;
    QScanSeq: TFloatField;
    UP_Report: TUpdateSQL;
    Panel4: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    QScanScanDate: TDateTimeField;
    QReportScanDate: TDateTimeField;
    Label9: TLabel;
    ED_MatNo: TEdit;
    Label10: TLabel;
    ED_SR: TEdit;
    Label11: TLabel;
    ED_Stage: TEdit;
    Label12: TLabel;
    ED_FD: TEdit;
    QReportForThisStage: TBooleanField;
    QReportCheckDate: TDateTimeField;
    DTP2: TDateTimePicker;
    Label13: TLabel;
    QReportCheckID: TStringField;
    BDelRec: TQuery;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ED_BarcodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure B_ManualClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure QScanAfterOpen(DataSet: TDataSet);
    procedure QScanAfterScroll(DataSet: TDataSet);
    procedure ED_NotedChange(Sender: TObject);
    procedure B_SaveClick(Sender: TObject);
    procedure CB_OKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CB_NGMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ED_NotedExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B_QueryClick(Sender: TObject);
    procedure B_ExcelClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh2Columns10UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns11UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns12UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure Detail1Click(Sender: TObject);
  private
    AfterFormShow: Boolean;
    StartTime: TDateTime;
    procedure ReloadScanData;
    procedure LoadCheckResult;
    { Private declarations }
  public
    procedure ReadBarcode(Invoice, PO, MatNo: string);
    { Public declarations }
  end;

var
  ColorSwatchScan: TColorSwatchScan;

implementation

uses
  main1, ManualEntry1, Detail1;

{$R *.dfm}
        
procedure TColorSwatchScan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TColorSwatchScan.FormDestroy(Sender: TObject);
begin
  ColorSwatchScan := Nil;
end;

procedure TColorSwatchScan.FormCreate(Sender: TObject);
begin
  AfterFormShow := false; 
  PC1.ActivePageIndex := 0;
  StartTime := Now;
  DTP1.Date := Date;
  DTP2.Date := Date;
  ReloadScanData;
end;
   
procedure TColorSwatchScan.FormActivate(Sender: TObject);
begin
  ED_Barcode.SetFocus;
end;
  
procedure TColorSwatchScan.ReloadScanData;
begin
  with QScan do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ROW_NUMBER() OVER(ORDER BY CGZLInvoiceS.ScanDate DESC) AS Seq, CGZLInvoiceS.CINO, CGZLInvoiceS.ScanDate,');
    SQL.Add('CGZLInvoiceS.CGNO, CGZLInvoiceS.CLBH, CLZL.YWPM, CLZL.DWBH, CGZLInvoiceS.Qty, CAST(YPZL.DEVCODE AS VARCHAR(250)) AS DEVCODE, CGZL.PURPOSE, CAST(YPZL.FD AS VARCHAR(100)) AS FD,');
    SQL.Add('CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''OK'' THEN 1 ELSE 0 END AS BIT) AS OK, CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''NG'' THEN 1 ELSE 0 END AS BIT) AS NG, CGZLInvoiceS.MEMO1 AS Noted FROM CGZLInvoiceS');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLInvoiceS.CLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLInvoiceS.CGNO');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DISTINCT InvoiceS.CINO, InvoiceS.CGNO, InvoiceS.CLBH, STUFF((');
    SQL.Add('    SELECT '','' + KFXXZL.DEVCODE FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.XieXing = YPZL.XieXing AND KFXXZL.SheHao = YPZL.SheHao');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) = ''' + FormatDateTime('yyyy/MM/dd', StartTime) + '''');
    SQL.Add('    AND CGZLInvoiceS.CINO = InvoiceS.CINO AND CGZLInvoiceS.CGNO = InvoiceS.CGNO AND CGZLInvoiceS.CLBH = InvoiceS.CLBH');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 1, '''') AS DEVCODE, STUFF((');
    SQL.Add('    SELECT '','' + YPZL.FD FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) = ''' + FormatDateTime('yyyy/MM/dd', StartTime) + '''');
    SQL.Add('    AND CGZLInvoiceS.CINO = InvoiceS.CINO AND CGZLInvoiceS.CGNO = InvoiceS.CGNO AND CGZLInvoiceS.CLBH = InvoiceS.CLBH');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 1, '''') AS FD FROM (');
    SQL.Add('    SELECT CGZLInvoiceS.CINO, CGZLInvoiceS.CGNO, CGZLInvoiceS.CLBH FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) = ''' + FormatDateTime('yyyy/MM/dd', StartTime) + '''');
    SQL.Add('  ) AS InvoiceS');
    SQL.Add(') AS YPZL ON YPZL.CINO = CGZLInvoiceS.CINO AND YPZL.CGNO = CGZLInvoiceS.CGNO AND YPZL.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) = ''' + FormatDateTime('yyyy/MM/dd', StartTime) + '''');
    Active := true;
  end;
end;

procedure TColorSwatchScan.ED_BarcodeKeyPress(Sender: TObject;
  var Key: Char);
var
  Invoice, PO, MatNo: string;
begin
  if (Key = #13) then
  begin
    Invoice := Copy(ED_Barcode.Text, 1, 11);
    PO := Copy(ED_Barcode.Text, 13, 11);
    MatNo := Copy(ED_Barcode.Text, 25, 10);
    ED_Barcode.Text := '';
    ReadBarcode(Invoice, PO, MatNo);
  end;
end;

procedure TColorSwatchScan.ReadBarcode(Invoice, PO, MatNo: string);
begin
  with QUpdate do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CLBH, ScanDate FROM CGZLInvoiceS WHERE CINO = ''' + Invoice + ''' AND CGNO = ''' + PO + ''' AND CLBH = ''' + MatNo + '''');
    Active := true;

    if (RecordCount > 0) then
    begin
      if (FieldByName('ScanDate').IsNull) then
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('UPDATE CGZLInvoiceS SET ScanDate = GETDATE()');
        SQL.Add('WHERE CINO = ''' + Invoice + ''' AND CGNO = ''' + PO + ''' AND CLBH = ''' + MatNo + '''');
        ExecSQL;
        ReloadScanData;
      end
      else begin
        Active := false;
        ShowMessage('The barcode has already been scanned.');
      end;
    end
    else begin
      Active := false;
      ShowMessage('The barcode is damaged or data does not exist.');
    end;
  end;
end;

procedure TColorSwatchScan.B_ManualClick(Sender: TObject);
begin
  ManualEntry := TManualEntry.Create(Self);
  ManualEntry.ShowModal;
end;

procedure TColorSwatchScan.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QScan.FieldByName('Seq').AsInteger = 1) then
    DBGridEh1.Canvas.Font.Color := clHighLight;
end;

procedure TColorSwatchScan.LoadCheckResult;
begin
  if (QScan.RecordCount > 0) then
  begin
    CB_OK.Enabled := true;
    CB_NG.Enabled := true;
    ED_Noted.Enabled := true;
    B_Save.Enabled := false;
  end
  else begin
    CB_OK.Enabled := false;
    CB_NG.Enabled := false;
    ED_Noted.Enabled := false;
    B_Save.Enabled := false;
  end;

  if (AfterFormShow) then
    ED_Barcode.SetFocus;
end;

procedure TColorSwatchScan.QScanAfterOpen(DataSet: TDataSet);
begin
  LoadCheckResult;
end;

procedure TColorSwatchScan.QScanAfterScroll(DataSet: TDataSet);
begin
  LoadCheckResult;
end;

procedure TColorSwatchScan.CB_OKMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CB_NG.Checked := false;
  B_Save.Enabled := true;
  ED_Barcode.SetFocus;
end;

procedure TColorSwatchScan.CB_NGMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CB_OK.Checked := false;
  B_Save.Enabled := true;   
  ED_Barcode.SetFocus;
end;

procedure TColorSwatchScan.ED_NotedChange(Sender: TObject);
begin
  B_Save.Enabled := true;
end;

procedure TColorSwatchScan.B_SaveClick(Sender: TObject);
var
  Status: string;
  OK, NG: integer;
begin
  if (CB_OK.Checked) then
  begin
    Status := '1';
    OK := 1;
    NG := 0;
  end
  else if (CB_NG.Checked) then
  begin
    Status := '0';
    OK := 0;
    NG := 1;
  end
  else begin
    Status := 'NULL';
    OK := 0;
    NG := 0;
  end;

  with QUpdate do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('UPDATE CGZLInvoiceS SET CheckResult = ' + Status + ', MEMO1 = ''' + ED_Noted.Text + '''');
    SQL.Add('WHERE CINO = ''' + QScan.FieldByName('CINO').AsString + ''' AND CGNO = ''' + QScan.FieldByName('CGNO').AsString + ''' AND CLBH = ''' + QScan.FieldByName('CLBH').AsString + '''');
    ExecSQL;
  end;

  QScan.Edit;
  QScan.FieldByName('OK').Value := OK; 
  QScan.FieldByName('NG').Value := NG;
  QScan.FieldByName('Noted').Value := ED_Noted.Text;
  B_Save.Enabled := false;
  ED_Barcode.SetFocus;
end;

procedure TColorSwatchScan.ED_NotedExit(Sender: TObject);
begin
  ED_Barcode.SetFocus;
end;

procedure TColorSwatchScan.FormShow(Sender: TObject);
begin
  AfterFormShow := true;
end;

procedure TColorSwatchScan.B_QueryClick(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZLInvoiceS.CINO, CGZLInvoiceS.ScanDate, CGZLInvoiceS.CGNO, CGZLInvoiceS.CLBH, CLZL.YWPM, CLZL.DWBH,');
    SQL.Add('CGZLInvoiceS.Qty, CAST(YPZL.DEVCODE AS VARCHAR(250)) AS DEVCODE, CGZL.PURPOSE, CAST(YPZL.FD AS VARCHAR(100)) AS FD,');
    SQL.Add('CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''OK'' THEN 1 ELSE 0 END AS BIT) AS OK,');
    SQL.Add('CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''NG'' THEN 1 ELSE 0 END AS BIT) AS NG,');
    SQL.Add('CAST(CASE WHEN CGZLInvoiceS.CheckResult = ''ForThisStage'' THEN 1 ELSE 0 END AS BIT) AS ForThisStage,');
    SQL.Add('CGZLInvoiceS.MEMO1 AS Noted, CGZLInvoiceS.CheckID, CGZLInvoiceS.CheckDate FROM CGZLInvoiceS');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLInvoiceS.CLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLInvoiceS.CGNO');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DISTINCT InvoiceS.CINO, InvoiceS.CGNO, InvoiceS.CLBH, STUFF((');
    SQL.Add('    SELECT '','' + KFXXZL.DEVCODE FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.XieXing = YPZL.XieXing AND KFXXZL.SheHao = YPZL.SheHao');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('    AND CGZLInvoiceS.CINO = InvoiceS.CINO AND CGZLInvoiceS.CGNO = InvoiceS.CGNO AND CGZLInvoiceS.CLBH = InvoiceS.CLBH');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 1, '''') AS DEVCODE, STUFF((');
    SQL.Add('    SELECT '','' + YPZL.FD FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('    AND CGZLInvoiceS.CINO = InvoiceS.CINO AND CGZLInvoiceS.CGNO = InvoiceS.CGNO AND CGZLInvoiceS.CLBH = InvoiceS.CLBH');
    SQL.Add('    FOR XML PATH('''')');
    SQL.Add('  ), 1, 1, '''') AS FD FROM (');
    SQL.Add('    SELECT CGZLInvoiceS.CINO, CGZLInvoiceS.CGNO, CGZLInvoiceS.CLBH FROM CGZLInvoiceS');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('    WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('  ) AS InvoiceS');
    SQL.Add(') AS YPZL ON YPZL.CINO = CGZLInvoiceS.CINO AND YPZL.CGNO = CGZLInvoiceS.CGNO AND YPZL.CLBH = CGZLInvoiceS.CLBH');
    SQL.Add('WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if (ED_MatNo.Text <> '') then
      SQL.Add('AND CGZLInvoiceS.CLBH LIKE ''' + ED_MatNo.Text + '%''');
    if (ED_SR.Text <> '') then
      SQL.Add('AND CAST(YPZL.DEVCODE AS VARCHAR(250)) LIKE ''' + ED_SR.Text + '%''');
    if (ED_Stage.Text <> '') then
      SQL.Add('AND CGZL.PURPOSE LIKE ''' + ED_Stage.Text + '%''');
    if (ED_FD.Text <> '') then
      SQL.Add('AND CAST(YPZL.FD AS VARCHAR(100)) LIKE ''' + ED_FD.Text + '%''');
    if (CB1.ItemIndex = 1) then
      SQL.Add('AND CGZLInvoiceS.CheckResult = ''OK''')
    else if (CB1.ItemIndex = 2) then
      SQL.Add('AND CGZLInvoiceS.CheckResult = ''NG''') 
    else if (CB1.ItemIndex = 3) then
      SQL.Add('AND CGZLInvoiceS.CheckResult = ''ForThisStage''')
    else if (CB1.ItemIndex = 4) then
      SQL.Add('AND CGZLInvoiceS.CheckResult IS NULL AND ISNULL(CGZLInvoiceS.MEMO1, '''') = ''''');
    SQL.Add('ORDER BY CGZLInvoiceS.ScanDate');
    Active := true;
  end;

  if (QReport.RecordCount > 0) then
    BB4.Enabled := true
  else
    BB4.Enabled := false;
end;

procedure TColorSwatchScan.B_ExcelClick(Sender: TObject);
var
  eclApp, WorkBook, GSheet: OleVariant;
  Col, Row: Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := eclApp.workbooks.Add;
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[1, DBGridEh2.Columns.Count]].Merge;
    eclApp.Cells[1, 1] := 'MAU KIEM MAU 色卡確認表 Material color swatch check list';
    eclApp.Cells[1, 1].HorizontalAlignment := xlHAlignCenter;
    eclApp.Cells[1, 1].Font.Size := 18;
    eclApp.Cells[1, 1].Font.Color := clRed;
    eclApp.Cells[1, 1].Font.Bold := true;

    for Col := 1 to DBGridEh2.Columns.Count do
    begin
      eclApp.Cells[2, Col] := DBGridEh2.Columns[Col-1].Title.Caption;
    end;

    QReport.First;
    Row := 3;
    while not QReport.Eof do
    begin
      for Col := 1 to DBGridEh2.Columns.Count do
      begin
        if (DBGridEh2.Columns[Col-1].FieldName <> 'Qty') then
          eclApp.Cells[Row, Col].NumberFormatLocal := '@';
        if (DBGridEh2.Columns[Col-1].FieldName = 'OK') OR (DBGridEh2.Columns[Col-1].FieldName = 'NG') OR (DBGridEh2.Columns[Col-1].FieldName = 'ForThisStage') then
        begin
          if (QReport.FieldByName(DBGridEh2.Columns[Col-1].FieldName).AsBoolean) then
            eclApp.Cells[Row, Col] := 'V';
        end
        else begin
          eclApp.Cells[Row, Col] := QReport.FieldByName(DBGridEh2.Columns[Col-1].FieldName).Value;
        end;
      end;

      Inc(Row);
      QReport.Next;
    end;
                             
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[QReport.RecordCount+2, DBGridEh2.Columns.Count]].Font.Name := 'Calibri';
    eclApp.Range[eclApp.Cells[2, 1], eclApp.Cells[2, DBGridEh2.Columns.Count-4]].Interior.Color := $0050D092;
    eclApp.Range[eclApp.Cells[2, DBGridEh2.Columns.Count-3], eclApp.Cells[2, DBGridEh2.Columns.Count]].Interior.Color := $00B4D5FC;
    eclApp.Range[eclApp.Cells[2, 1], eclApp.Cells[QReport.RecordCount+2, DBGridEh2.Columns.Count]].Borders.LineStyle := xlContinuous;
    eclApp.Columns.AutoFit;
    eclApp.Columns[5].ColumnWidth := 50;

    ShowMessage('Succeed');
    eclApp.Visible := True;
  except on F:Exception do
    ShowMessage(F.Message);
  end;
end;

procedure TColorSwatchScan.PC1Change(Sender: TObject);
begin
  if (AfterFormShow) then
  begin
    if (PC1.ActivePageIndex = 0) then
      ED_Barcode.SetFocus
    else begin
      Panel3.SetFocus;
    end;
  end;
end;

procedure TColorSwatchScan.BB4Click(Sender: TObject);
begin
  with QReport do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TColorSwatchScan.BB5Click(Sender: TObject);
var
  i: integer;
  Status: string;
begin
  try
    QReport.First;
    for i := 1 to QReport.RecordCount do
    begin
      case QReport.UpdateStatus of
        usModified:
        begin
          if (QReport.FieldByName('OK').AsBoolean) then
            Status := '''OK'''
          else if (QReport.FieldByName('NG').AsBoolean) then
            Status := '''NG'''
          else if (QReport.FieldByName('ForThisStage').AsBoolean) then
            Status := '''ForThisStage'''
          else
            Status := 'NULL';
          //
          with BDelRec do
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into BDelRec ');
            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
            sql.add('values ('+''''+'CGZLInvoiceS_Check'+''''+','+''''+QReport.fieldbyname('CINO').Value+'''');
            sql.add(','+''''+QReport.fieldbyname('CGNO').Value+'***'+QReport.fieldbyname('CLBH').Value+'***'+StringReplace(Status,'''','',[rfReplaceAll])+'''');
            sql.add(','+''''+QReport.fieldbyname('CheckID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
            active:=false;
          end;
          //
          with QUpdate do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('UPDATE CGZLInvoiceS SET CheckResult = ' + Status + ', CheckID = ''' + QReport.FieldByName('CheckID').AsString + ''', CheckDate = ''' + FormatDateTime('yyyy/MM/dd hh:mm:ss', QReport.FieldByName('CheckDate').AsDateTime) + ''', MEMO1 = ''' + QReport.FieldByName('Noted').AsString + '''');
            SQL.Add('WHERE CINO = ''' + QReport.FieldByName('CINO').AsString + ''' AND CGNO = ''' + QReport.FieldByName('CGNO').AsString + ''' AND CLBH = ''' + QReport.FieldByName('CLBH').AsString + '''');
            ExecSQL;
          end;
        end;
      end;

      QReport.Next;
    end;

    QReport.Active := false;
    QReport.CachedUpdates := false;
    QReport.RequestLive := false;
    QReport.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TColorSwatchScan.BB6Click(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TColorSwatchScan.DBGridEh2Columns10UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  QReport.FieldByName('NG').Value := false;
  QReport.FieldByName('ForThisStage').Value := false;
  QReport.FieldByName('CheckID').Value := main.Edit1.Text;
  QReport.FieldByName('CheckDate').Value := Now;
end;

procedure TColorSwatchScan.DBGridEh2Columns11UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  QReport.FieldByName('OK').Value := false;
  QReport.FieldByName('ForThisStage').Value := false; 
  QReport.FieldByName('CheckID').Value := main.Edit1.Text;
  QReport.FieldByName('CheckDate').Value := Now;
end;

procedure TColorSwatchScan.DBGridEh2Columns12UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin                    
  QReport.FieldByName('OK').Value := false;
  QReport.FieldByName('NG').Value := false;      
  QReport.FieldByName('CheckID').Value := main.Edit1.Text;
  QReport.FieldByName('CheckDate').Value := Now;
end;

procedure TColorSwatchScan.Detail1Click(Sender: TObject);
begin
  Detail:=TDetail.create(self);
  Detail.ShowModal();
end;

end.
