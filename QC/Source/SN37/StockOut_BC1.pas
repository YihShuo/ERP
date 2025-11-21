unit StockOut_BC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj,
  ComCtrls, DateUtils;

type
  TStockOut_BC = class(TForm)
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    DS1: TDataSource;
    QKCLL: TQuery;
    UP_KCLL: TUpdateSQL;
    QKCLLUserID: TStringField;
    QKCLLUserDate: TDateTimeField;
    QKCLLYN: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    QKCLLS: TQuery;
    DS2: TDataSource;
    DBGridEh2: TDBGridEh;
    UP_KCLLS: TUpdateSQL;
    QKCLLSLLNO: TStringField;
    QKCLLSGrade: TStringField;
    QKCLLSSize: TStringField;
    QKCLLSQty: TFloatField;
    QSearch: TQuery;
    Panel3: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    Panel1: TPanel;
    Button1: TButton;
    QKCLLSUserID: TStringField;
    QKCLLSUserDate: TDateTimeField;
    QKCLLSYN: TStringField;
    Label3: TLabel;
    ED_LLNO: TEdit;
    GB1: TGroupBox;
    Label4: TLabel;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    CB4: TCheckBox;
    QKCLLSDDBH: TStringField;
    QKCLLSArticle: TStringField;
    QKCLLSXieMing: TStringField;
    QKCLLSYSSM: TStringField;
    QKCLLSJiJie: TStringField;
    QKCLLSDDMH: TStringField;
    QKCLLStatus: TStringField;
    QKCLLB: TFloatField;
    QKCLLC: TFloatField;
    QKCLLLLNO: TStringField;
    QKCLLPurpose: TStringField;
    Label1: TLabel;
    CBox1: TComboBox;
    BB8: TBitBtn;
    BD8: TBitBtn;
    QKCLLZLBH: TStringField;
    QKCLLCFMDate: TDateTimeField;
    QKCLLGSBH: TStringField;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    Label7: TLabel;
    DTP2: TDateTimePicker;
    QUpdate: TQuery;
    bbt6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QKCLLflowflag: TStringField;
    Label2: TLabel;
    EdOrder_No: TEdit;
    Label9: TLabel;
    EdSKU: TEdit;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QKCLLAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure QKCLLSNewRecord(DataSet: TDataSet);
    procedure DBGridEh2Columns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure QKCLLNewRecord(DataSet: TDataSet);
    procedure DBGridEh2Columns13UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB8Click(Sender: TObject);
    procedure BD8Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    function CheckBCStock(Grade, Order, Size: string): Double;
    { Private declarations }
  public
    workflow: boolean;
    { Public declarations }
  end;

var
  StockOut_BC: TStockOut_BC;
  NDate: TDate;

implementation

uses
  main1, OrderListOut_BC1, StockOut_Report1, StockOut_ScrapReport1;

{$R *.dfm}

function TStockOut_BC.CheckBCStock(Grade, Order, Size: string): Double;
var
  KCYear, KCMonth, StartDate, Today: string;
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT YEAR(DATEADD(MM, -1, GetDate())) AS KCYear, RIGHT(''00'' + CAST(MONTH(DATEADD(MM, -1, GetDate())) AS VARCHAR), 2) AS KCMonth, GetDate() AS Today');
    Active := true;

    KCYear := FieldByName('KCYear').AsString;
    KCMonth := FieldByName('KCMonth').AsString;
    StartDate := FormatDateTime('yyyy/MM/dd', StartOfTheMonth(FieldByName('Today').AsDateTime));
    Today := FormatDateTime('yyyy/MM/dd', FieldByName('Today').AsDateTime);

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, SUM(KCRKS_BC.Qty) AS Qty FROM (');
    //前月期末
    SQL.Add('  SELECT Grade, DDBH, Size, Qty FROM BCShoeMonth');
    SQL.Add('  WHERE KCYear = ''' + KCYear + ''' AND KCMonth = ''' + KCMonth + '''');
    SQL.Add('  AND DDBH = ''' + Order + ''' AND Grade = ''' + Grade + ''' AND Size = ''' + Size + '''');
    SQL.Add('  UNION ALL');
    //當月入庫
    SQL.Add('  SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, KCRKS_BC.Qty FROM KCRKS_BC');
    SQL.Add('  LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
    SQL.Add('  WHERE DDBH = ''' + Order + ''' AND KCRKS_BC.Grade = ''' + Grade + ''' AND Size = ''' + Size + '''');
    if (workflow) then
    begin
      SQL.Add('  AND ISNULL(KCRK_BC.flowflag, '''') = ''Z''');
      SQL.Add('  AND CONVERT(VARCHAR, KCRK_BC.CFMDate, 111) BETWEEN ''' + StartDate + ''' AND ''' + Today + '''');
    end
    else
    begin
      SQL.Add('  AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN ''' + StartDate + ''' AND ''' + Today + '''');
    end;
    SQL.Add('  UNION ALL');
    //當月出庫
    SQL.Add('  SELECT KCLLS_BC.Grade, KCLLS_BC.DDBH, KCLLS_BC.Size, KCLLS_BC.Qty*-1 AS Qty FROM KCLLS_BC');
    SQL.Add('  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO');
    SQL.Add('  WHERE DDBH = ''' + Order + ''' AND KCLLS_BC.Grade = ''' + Grade + ''' AND Size = ''' + Size + '''');
    if (workflow) then
    begin
      SQL.Add('  AND ISNULL(KCLL_BC.flowflag, '''') <> ''X''');
      SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.CFMDate, 111) BETWEEN ''' + StartDate + ''' AND ''' + Today + '''');
    end
    else
    begin
      SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN ''' + StartDate + ''' AND ''' + Today + '''');
    end;
    SQL.Add(') AS KCRKS_BC');
    SQL.Add('GROUP BY KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size');
    Active := true;
  end;

  Result := QSearch.FieldByName('Qty').AsFloat;
end;

procedure TStockOut_BC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('Please save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else
  begin
    Action := caFree;
  end;
end;

procedure TStockOut_BC.FormDestroy(Sender: TObject);
begin
  StockOut_BC := nil;
end;

procedure TStockOut_BC.FormCreate(Sender: TObject);
begin
  if (main.ServerIP = '192.168.23.9') then
  begin
    workflow := true;
  end
  else
  begin
    workflow := false;
    DBGridEh1.Columns[7].Visible := false;
    Label4.Visible := false;
    GB1.Visible := false;
    CB2.Checked := false;
    CB3.Checked := false;
    CB4.Checked := false;
    Button1.Left := 644;
  end;

  DTP1.Date := Date - 3;
  DTP2.Date := Date;
  PC1.ActivePageIndex := 0;
  BB1Click(nil);
end;

procedure TStockOut_BC.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TStockOut_BC.Button1Click(Sender: TObject);
var
  StatusSQL: string;
begin
  StatusSQL := '';
  if (CB1.Checked) then
    StatusSQL := 'Status = ''Not Submitted''';
  if (CB2.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Under Review''';
  end;
  if (CB3.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Stock-Out''';
  end;
  if (CB4.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Cancelled''';
  end;
  if (StatusSQL = '') then
    StatusSQL := '1 = 0';

  with QKCLL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT LLNO, ISNULL(SUM(B), 0) AS B, ISNULL(SUM(C), 0) AS C, Purpose, ZLBH, CFMDate, UserID, UserDate, YN, Status, GSBH, flowflag FROM (');
    SQL.Add('  SELECT KCLL_BC.LLNO, KCLL_BC.Purpose, KCLL_BC.GSBH, KCLL_BC.ZLBH, KCLL_BC.CFMDate, KCLL_BC.UserID, KCLL_BC.UserDate, KCLL_BC.YN, KCLL_BC.flowflag,');
    SQL.Add('  CASE WHEN KCLLS_BC.Grade = ''B'' THEN KCLLS_BC.Qty END AS B,');
    SQL.Add('  CASE WHEN KCLLS_BC.Grade = ''C'' THEN KCLLS_BC.Qty END AS C,');
    SQL.Add('  CASE WHEN KCLL_BC.flowflag IS NULL THEN ''Not Submitted'' ELSE');
    SQL.Add('  CASE WHEN KCLL_BC.flowflag NOT IN ('''', ''X'', ''Z'') THEN ''Under Review'' ELSE');
    SQL.Add('  CASE WHEN KCLL_BC.flowflag = ''Z'' THEN ''Stock-Out'' ELSE');
    SQL.Add('  CASE WHEN KCLL_BC.flowflag = ''X'' THEN ''Cancelled'' END END END END AS Status FROM KCLL_BC');
    SQL.Add('  LEFT JOIN KCLLS_BC ON KCLLS_BC.LLNO = KCLL_BC.LLNO');
    SQL.Add('  LEFT JOIN ddzl ON ddzl.DDBH = KCLLS_BC.DDBH');
    SQL.Add('  WHERE KCLL_BC.GSBH = ''' + main.Edit2.Text + ''' and isnull(KCLL_BC.flowflag,'''') <> ''X''');
    if EdOrder_No.Text <> '' then
      SQL.Add('and KCLLS_BC.DDBH = '''+EdOrder_No.Text+'''');
    if EdSKU.Text <> '' then
    SQL.Add('  and ddzl.article like '''+EdSKU.Text+'%''');
    SQL.Add('  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' +
      FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add(') AS KCLL_BC');
    SQL.Add('WHERE 1 = 1');
    if (ED_LLNO.Text <> '') then
      SQL.Add('AND LLNO LIKE ''' + ED_LLNO.Text + '%''');
    if (CBox1.ItemIndex > 0) then
      SQL.Add('AND Purpose = ''' + CBox1.Text + '''');
    SQL.Add('AND (' + StatusSQL + ')');
    SQL.Add('GROUP BY LLNO, Purpose, ZLBH, CFMDate, UserID, UserDate, YN, Status, GSBH, flowflag');
    SQL.Add('ORDER BY LLNO DESC');
    //showmessage(sql.text);
    Active := true;
  end;
  QKCLLS.Active := true;
end;

procedure TStockOut_BC.BB2Click(Sender: TObject);
begin
  with QKCLL do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
    DBGridEh1.Columns[3].ReadOnly := false;
    FieldByName('Purpose').Value := 'Sale';
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TStockOut_BC.BB3Click(Sender: TObject);
begin
  if QKCLL.FieldByName('CFMDate').Value <> null then begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if (QKCLL.FieldByName('Status').AsString <> 'Not Submitted') then
  begin
    ShowMessage('[' + QKCLL.FieldByName('LLNO').AsString + '] has already been submitted. Execution denied.');
    Exit;
  end;

  if (QKCLLS.RecordCount > 0) then
  begin
    ShowMessage('Please delete all data in detail page first.');
    Exit;
  end;

  with QKCLL do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TStockOut_BC.BB4Click(Sender: TObject);
begin
  with QKCLL do
  begin
    RequestLive := true;
    CachedUpdates := true;
    if (QKCLL.FieldByName('Status').AsString = 'Not Submitted') then
      DBGridEh1.Columns[3].ReadOnly := false
    else
      DBGridEh1.Columns[3].ReadOnly := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TStockOut_BC.BB5Click(Sender: TObject);
var
  i: integer;
  Year, Month, LLNO: string;
begin
  try
    QKCLL.First;
    for i := 1 to QKCLL.RecordCount do
    begin
      case QKCLL.UpdateStatus of
        usInserted:
          begin
            if (QKCLL.FieldByName('Purpose').AsString = '') then
            begin
              QKCLL.Delete;
            end
            else
            begin
              //計算入庫單流水號
              with QSearch do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT GetDate() AS Today');
                Active := true;
                Year := FormatDateTime('yyyy', FieldByName('Today').AsDateTime);
                Month := FormatDateTime('MM', FieldByName('Today').AsDateTime);

                Active := false;
                SQL.Clear;
                SQL.Add('SELECT LLNO FROM KCLL_BC WHERE LLNO LIKE ''' + Year + Month + '%''');
                SQL.Add('ORDER BY LLNO');
                Active := true;
                if (RecordCount > 0) then
                begin
                  Last;
                  LLNO := FieldByName('LLNO').AsString;
                  LLNO := Copy(LLNO, 7, 5);
                  LLNO := IntToStr(StrToInt(LLNO) + 1);
                  while Length(LLNO) < 5 do
                  begin
                    LLNO := '0' + LLNO;
                  end;
                end
                else
                begin
                  LLNO := '00001';
                end;
                LLNO := Year + Month + LLNO;
              end;

              QKCLL.Edit;
              QKCLL.FieldByName('LLNO').Value := LLNO;
              QKCLL.FieldByName('UserID').Value := main.Edit1.Text;
              QKCLL.FieldByName('GSBH').Value := main.Edit2.Text;
              UP_KCLL.Apply(ukInsert);
              if (workflow = false) then
              begin
                QUpdate.SQL.Clear;
                QUpdate.SQL.Add('UPDATE KCLL_BC SET CFMDate = GetDate() WHERE LLNO = ''' + LLNO + '''');
                QUpdate.ExecSQL;
              end;
            end;
          end;

        usModified:
          begin
            if (QKCLL.FieldByName('YN').Value = 0) then
            begin
              QKCLL.Edit;
              QKCLL.FieldByName('flowflag').Value := 'X';
              UP_KCLL.Apply(ukModify);
              //            UP_KCLL.Apply(ukDelete);
            end
            else if (QKCLL.FieldByName('Purpose').AsString <> '') then
            begin
              QKCLL.Edit;
              QKCLL.FieldByName('UserID').Value := main.Edit1.text;
              UP_KCLL.Apply(ukModify);
            end;
          end;
      end;

      QKCLL.Next;
    end;

    QKCLL.Active := false;
    QKCLL.CachedUpdates := false;
    QKCLL.RequestLive := false;
    QKCLL.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TStockOut_BC.BB6Click(Sender: TObject);
begin
  with QKCLL do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TStockOut_BC.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TStockOut_BC.QKCLLAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TStockOut_BC.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QKCLL.FieldByName('Status').AsString = 'Cancelled') then
    DBGridEh1.Canvas.Font.Color := clFuchsia
  else if (QKCLL.FieldByName('Status').AsString = 'Stock-Out') then
    DBGridEh1.Canvas.Font.Color := $0000D500
  else if (QKCLL.FieldByName('Status').AsString = 'Under Review') then
    DBGridEh1.Canvas.Font.Color := clBlue;

  if (QKCLL.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TStockOut_BC.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCLL.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        eclApp.Cells[1, i + 1] := DBGridEh1.Columns[i].Title.Caption;
      end;

      QKCLL.First;
      j := 2;
      while not QKCLL.Eof do
      begin
        for i := 0 to DBGridEh1.Columns.Count - 1 do
        begin
          eclApp.Cells[j, i + 1] := QKCLL.FieldByName(DBGridEh1.Columns[i].FieldName).Value;
        end;
        QKCLL.Next;
        Inc(j);
      end;

      eclapp.Columns.Autofit;
      eclApp.Visible := true;
      ShowMessage('Succeed');
    except on F: Exception do
        ShowMessage(F.Message);
    end;
  end;
end;

procedure TStockOut_BC.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePageIndex = 0) then
  begin
    Panel2.Visible := true;
    Panel3.Visible := false;
  end
  else
  begin
    Panel3.Visible := true;
    Panel2.Visible := false;
    if (QKCLL.Active) then
    begin
      if (QKCLL.RecordCount > 0) then
      begin
        BD2.Enabled := true;
        BD3.Enabled := true;
        BD4.Enabled := true;
      end
      else
      begin
        BD2.Enabled := false;
        BD3.Enabled := false;
        BD4.Enabled := false;
      end;
    end
    else
    begin
      BD2.Enabled := false;
      BD3.Enabled := false;
      BD4.Enabled := false;
    end;
  end;
end;

procedure TStockOut_BC.DBGridEh1DblClick(Sender: TObject);
begin
  if (BB5.Enabled) or (BD5.Enabled) then
  begin
    ShowMessage('Please save the data first.');
  end
  else
  begin
    PC1.ActivePageIndex := 1;
    PC1Change(nil);
  end;
end;

procedure TStockOut_BC.BD2Click(Sender: TObject);
begin
  with QKCLLS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsEllipsis;
  DBGridEh2.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh2.Columns[8].ButtonStyle := cbsAuto;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TStockOut_BC.BD3Click(Sender: TObject);
begin
  if QKCLL.FieldByName('CFMDate').Value <> null then begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if (QKCLL.FieldByName('Status').AsString <> 'Not Submitted') then
  begin
    ShowMessage('[' + QKCLL.FieldByName('LLNO').AsString + '] has already been submitted. Execution denied.');
    Exit;
  end;

  with QKCLLS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TStockOut_BC.BD4Click(Sender: TObject);
begin
  if (QKCLL.FieldByName('Status').AsString <> 'Not Submitted') then
  begin
    ShowMessage('[' + QKCLL.FieldByName('LLNO').AsString + '] has already been submitted. Execution denied.');
    Exit;
  end;

  with QKCLLS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsAuto;
  DBGridEh2.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh2.Columns[8].ButtonStyle := cbsAuto;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TStockOut_BC.BD5Click(Sender: TObject);
var
  i: integer;
  StockQty: Double;
begin
  try
    QKCLLS.First;
    for i := 1 to QKCLLS.RecordCount do
    begin
      case QKCLLS.UpdateStatus of
        usInserted:
          begin
            if (QKCLLS.FieldByName('Grade').AsString <> '') and (QKCLLS.FieldByName('DDBH').AsString <> '') and
              (QKCLLS.FieldByName('Size').AsString <> '') then
            begin
              StockQty := CheckBCStock(QKCLLS.FieldByName('Grade').AsString, QKCLLS.FieldByName('DDBH').AsString,
                QKCLLS.FieldByName('Size').AsString);
              if (QKCLLS.FieldByName('Qty').AsFloat > StockQty) then
              begin
                ShowMessage('There is not enough stock for Grade ' + QKCLLS.FieldByName('Grade').AsString + ' shoes [Order: ' +
                  QKCLLS.FieldByName('DDBH').AsString + ', Size: ' + QKCLLS.FieldByName('Size').AsString + '].');
                QKCLLS.Edit;
                QKCLLS.FieldByName('Qty').Value := StockQty;
              end;

              QKCLLS.Edit;
              QKCLLS.FieldByName('UserID').Value := main.Edit1.Text;
              UP_KCLLS.Apply(ukInsert);
            end
            else
            begin
              QKCLLS.Delete;
            end
          end;

        usModified:
          begin
            with QSearch do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT * FROM BCShoeMonth WHERE KCYear = ''' + FormatDateTime('yyyy',
                QKCLL.FieldByName('CFMDate').AsDateTime) + ''' AND KCMonth = ''' + FormatDateTime('MM',
                QKCLL.FieldByName('CFMDate').AsDateTime) + ''' AND GSBH = ''' + main.Edit2.Text + '''');
              Active := true;

              if (RecordCount > 0) then
              begin
                ShowMessage('List No [' + QKCLL.FieldByName('LLNO').AsString + '] has been confirmed, execution denied.');
                QKCLLS.Next;
                Continue;
              end;
            end;

            if (QKCLLS.FieldByName('YN').Value = 0) then
            begin
              UP_KCLLS.Apply(ukDelete);
            end
            else if (QKCLLS.FieldByName('Grade').AsString <> '') and (QKCLLS.FieldByName('DDBH').AsString <> '') and
              (QKCLLS.FieldByName('Size').AsString <> '') then
            begin
              StockQty := CheckBCStock(QKCLLS.FieldByName('Grade').AsString, QKCLLS.FieldByName('DDBH').AsString,
                QKCLLS.FieldByName('Size').AsString);
              if (QKCLLS.FieldByName('Qty').AsFloat <= StockQty) then
              begin
                QKCLLS.Edit;
                QKCLLS.FieldByName('UserID').Value := main.Edit1.text;
                UP_KCLLS.Apply(ukModify);
              end
              else
              begin
                ShowMessage('There is not enough stock for Grade ' + QKCLLS.FieldByName('Grade').AsString + ' shoes [Order: ' +
                  QKCLLS.FieldByName('DDBH').AsString + ', Size: ' + QKCLLS.FieldByName('Size').AsString + '].');
              end;
            end;
          end;
      end;

      QKCLLS.Next;
    end;

    QKCLLS.Active := false;
    QKCLLS.CachedUpdates := false;
    QKCLLS.RequestLive := false;
    QKCLLS.Active := true;

    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ISNULL(SUM(CASE WHEN Grade = ''B'' THEN Qty END), 0) AS B, ISNULL(SUM(CASE WHEN Grade = ''C'' THEN Qty END), 0) AS C FROM KCLLS_BC');
      SQL.Add('WHERE LLNO = ''' + QKCLL.FieldByName('LLNO').AsString + '''');
      Active := true;

      QKCLL.RequestLive := true;
      QKCLL.CachedUpdates := true;
      QKCLL.Edit;
      DBGridEh1.Columns[3].ReadOnly := true;
      QKCLL.FieldByName('B').Value := FieldByName('B').Value;
      QKCLL.FieldByName('C').Value := FieldByName('C').Value;
    end;

    DBGridEh2.Columns[1].ButtonStyle := cbsNone;
    DBGridEh2.Columns[2].ButtonStyle := cbsNone;
    DBGridEh2.Columns[8].ButtonStyle := cbsNone;
    BD5.Enabled := false;
    BD6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TStockOut_BC.BD6Click(Sender: TObject);
begin
  with QKCLLS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsNone;
  DBGridEh2.Columns[2].ButtonStyle := cbsNone;
  DBGridEh2.Columns[8].ButtonStyle := cbsNone;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TStockOut_BC.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure TStockOut_BC.PC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) or (BD5.Enabled) then
  begin
    ShowMessage('Please save the data first.');
    AllowChange := false;
  end;
end;

procedure TStockOut_BC.QKCLLSNewRecord(DataSet: TDataSet);
begin
  QKCLLS.FieldByName('LLNO').Value := QKCLL.FieldByName('LLNO').AsString;
end;

procedure TStockOut_BC.DBGridEh2Columns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (QKCLL.FieldByName('Purpose').AsString = 'Sale') and (Text = 'C') then
  begin
    ShowMessage('Grade C shoes can''t be sold.');
    Text := '';
  end;

  if (Text = 'B') and (QKCLLS.FieldByName('Qty').IsNull = false) then
  begin
    QKCLLS.FieldByName('Qty').Value := StrToFloat(Copy(FloatToStr(QKCLLS.FieldByName('Qty').AsFloat), 1, Pos('.',
      FloatToStr(QKCLLS.FieldByName('Qty').AsFloat)) - 1));
  end;
end;

procedure TStockOut_BC.DBGridEh2Columns13UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Value <= 0) then
  begin
    ShowMessage('Please enter a number greater than 0.');
    Text := '';
  end
  else
  begin
    if (Pos('.', Text) = 0) then
      Text := Text + '.0';

    if (QKCLLS.FieldByName('Grade').AsString = 'B') then
      Text := Copy(Text, 1, Pos('.', Text) - 1)
    else if (StrToFloat('0' + Copy(Text, Pos('.', Text), 2)) > 0) then
      Text := Copy(Text, 1, Pos('.', Text) - 1) + '.5';
  end;
end;

procedure TStockOut_BC.QKCLLNewRecord(DataSet: TDataSet);
begin
  QKCLL.FieldByName('LLNO').Value := '(Auto-Generated)';
  QKCLL.FieldByName('Purpose').Value := 'Sale';
end;

procedure TStockOut_BC.DBGridEh2Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (OrderListOut_BC <> nil) then
    OrderListOut_BC.Close;
  OrderListOut_BC := TOrderListOut_BC.Create(Self);
  OrderListOut_BC.Show;
end;

procedure TStockOut_BC.DBGridEh2Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (OrderListOut_BC <> nil) then
    OrderListOut_BC.Close;
  OrderListOut_BC := TOrderListOut_BC.Create(Self);
  OrderListOut_BC.Show;
end;

procedure TStockOut_BC.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QKCLL.FieldByName('Status').AsString = 'Cancelled') then
    DBGridEh2.Canvas.Font.Color := clFuchsia
  else if (QKCLL.FieldByName('Status').AsString = 'Stock-Out') then
    DBGridEh2.Canvas.Font.Color := $0000D500
  else if (QKCLL.FieldByName('Status').AsString = 'Under Review') then
    DBGridEh2.Canvas.Font.Color := clBlue;

  if (QKCLLS.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TStockOut_BC.BB8Click(Sender: TObject);
begin
  if ((workflow = true) and (QKCLL.FieldByName('Status').AsString = 'Stock-Out')) or (workflow = false) then
  begin
    if (QKCLL.FieldByName('Purpose').AsString = 'Sale') then
    begin
      StockOut_Report := TStockOut_Report.Create(Self);
      StockOut_Report.Init;
      StockOut_Report.QuickRep1.Preview;
    end
    else if (QKCLL.FieldByName('Purpose').AsString = 'Scrap') then
    begin
      StockOut_ScrapReport := TStockOut_ScrapReport.Create(Self);
      StockOut_ScrapReport.Init;
      StockOut_ScrapReport.QuickRep1.Preview;
    end;
  end
  else
  begin
    ShowMessage('List [' + QKCLL.FieldByName('LLNO').AsString + '] has not been approved, execution denied.');
  end;
end;

procedure TStockOut_BC.BD8Click(Sender: TObject);
begin
  BB8Click(nil);
end;

procedure TStockOut_BC.bbt6Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCLL.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        eclApp.Cells[1, i + 1] := DBGridEh1.Columns[i].Title.Caption;
      end;

      QKCLL.First;
      j := 2;
      while not QKCLL.Eof do
      begin
        for i := 0 to DBGridEh1.Columns.Count - 1 do
        begin
          eclApp.Cells[j, i + 1] := QKCLL.FieldByName(DBGridEh1.Columns[i].FieldName).Value;
        end;
        QKCLL.Next;
        Inc(j);
      end;
      ShowMessage('Succeed');
      eclapp.Columns.Autofit;
      eclApp.Visible := true;

    except on F: Exception do
        ShowMessage(F.Message);
    end;
  end;
end;

procedure TStockOut_BC.BitBtn1Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCLLS.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i := 0 to DBGridEh2.Columns.Count - 1 do
      begin
        eclApp.Cells[1, i + 1] := DBGridEh2.Columns[i].Title.Caption;
      end;

      QKCLLS.First;
      j := 2;
      while not QKCLLS.Eof do
      begin
        for i := 0 to DBGridEh2.Columns.Count - 1 do
        begin
          eclApp.Cells[j, i + 1] := QKCLLS.FieldByName(DBGridEh2.Columns[i].FieldName).Value;
        end;
        QKCLLS.Next;
        Inc(j);
      end;
      ShowMessage('Succeed');
      eclapp.Columns.Autofit;
      eclApp.Visible := true;

    except on F: Exception do
        ShowMessage(F.Message);
    end;
  end;
end;

procedure TStockOut_BC.BitBtn2Click(Sender: TObject);
var
  iYear, iMonth, iDay: Word;
  sYear, sMonth: string; //讀取系統年月，用於抓取上月月結資料
  Year, Month, RKNO, LLNO: string; //讀取最新入庫單編號
begin
  QKCLLS.First;
  if QKCLLS.IsEmpty then
  begin
    showmessage('There is no Data!');
    exit;
  end;

  while not QKCLLS.Eof do
  begin
    if QKCLLS.FieldByName('Grade').AsString <> 'B' then
    begin
      showmessage('Not all datas are Grade B');
      abort;
    end;
    QKCLLS.Next;
  end;

  if (BD5.Enabled) or (BB5.Enabled) then
  begin
    showmessage('Please Save First!');
    exit;
  end;

  if QKCLL.FieldByName('Purpose').AsString <> 'Scrap' then
  begin
    showmessage('This List No is Sale ， Cant transfer to Grade C!');
    exit;
  end;

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ');
    SQL.Add('    CAST(YEAR(DATEADD(MONTH, -1, GETDATE())) AS VARCHAR(4)) AS PreviousYear, ');
    SQL.Add('    RIGHT(''0'' + CAST(MONTH(DATEADD(MONTH, -1, GETDATE())) AS VARCHAR(2)), 2) AS PreviousMonth ');
    Active := true;
    sYear := FieldByName('PreviousYear').AsString;
    sMonth := FieldByName('PreviousMonth').AsString;
  end;

  with QKCLLS do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
    fieldbyname('YN').Value := '0';
  end;
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('from KCRK_BC LEFT JOIN KCRKS_BC ON KCRKS_BC.RKNO = KCRK_BC.RKNO');
    SQL.Add('WHERE KCRK_BC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND KCRKS_BC.DDBH=''' + QKCLLS.FieldByName('DDBH').AsString + ''' and KCRKS_BC.Size=''' +
      QKCLLS.FieldByName('Size').AsString + '''');
    SQL.Add('AND KCRKS_BC.Grade=''' + QKCLLS.FieldByName('Grade').AsString + '''');
    Active := true;
  end;
  //  if QKCLLS.FieldByName('USERID').value=main.Edit1.Text then
  //  begin
  if QSearch.RecordCount > 0 then
  begin
    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT GetDate() AS Today');
      Active := true;
      Year := FormatDateTime('yyyy', FieldByName('Today').AsDateTime);
      Month := FormatDateTime('MM', FieldByName('Today').AsDateTime);
      NDate := fieldbyname('Today').Value;

      Active := false;
      SQL.Clear;
      SQL.Add('SELECT top 1 RKNO FROM KCRK_BC WHERE RKNO LIKE ''' + Year + Month + '%''');
      SQL.Add('ORDER BY RKNO desc');
      Active := true;
      if (RecordCount > 0) then
      begin
        RKNO := FieldByName('RKNO').AsString;
        RKNO := Copy(RKNO, 7, 5);
        RKNO := IntToStr(StrToInt(RKNO) + 1);
        while Length(RKNO) < 5 do
        begin
          RKNO := '0' + RKNO;
        end;
      end
      else
        RKNO := '00001';
      RKNO := Year + Month + RKNO;

      Active := false;
      SQL.Clear;
      SQL.Add('SELECT top 1 LLNO FROM KCLL_BC WHERE LLNO LIKE ''' + Year + Month + '%''');
      SQL.Add('ORDER BY LLNO desc');
      Active := true;
      if (RecordCount > 0) then
      begin
        LLNO := FieldByName('LLNO').AsString;
        LLNO := Copy(LLNO, 7, 5);
        LLNO := IntToStr(StrToInt(LLNO) + 1);
        while Length(LLNO) < 5 do
        begin
          LLNO := '0' + LLNO;
        end;
      end
      else
        LLNO := '00001';
      LLNO := Year + Month + LLNO;
      //如果有入庫單，新增一筆C級別的入庫單
      Active := false;
      SQL.Clear;


      SQL.Add('Update KCRK_BC set CFMDATE = ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''' where RKNO = '''+QKCLL.fieldbyname('LLNO').AsString+'''');

      SQL.Add('Insert into KCRK_BC (RKNO, GSBH, CFMDate, flowflag, UserID, UserDate, YN)');
      SQL.Add('Values (''' + RKNO + ''', ''' + main.Edit2.Text + ''', ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) +
        ''', ''Z'', ''' + main.Edit1.Text + ''', ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''', ''1'')');

      QKCLLS.First;
      while not QKCLLS.Eof do
      begin
        SQL.Add('Insert into KCRKS_BC (RKNO, Grade, DDBH, Size, Qty, CheckDate, UserID, UserDate, YN, DefectID)');
        SQL.Add('Values (''' + RKNO + ''', ''C'', ''' + QKCLLS.FieldByName('DDBH').AsString + ''', ''' +
          QKCLLS.FieldByName('Size').AsString + ''', ' + QKCLLS.FieldByName('Qty').AsString + ', ''' +
          formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''', ''' + main.Edit1.Text + ''', ''' +
          formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''', ''1'',''BtoC'')');
        QKCLLS.Next;
      end;
      //再新增一筆C級別的出庫單
      SQL.Add('Insert into KCLL_BC (LLNO, Purpose, GSBH, ZLBH, CFMDATE, flowflag, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + LLNO + ''', Purpose, GSBH, ZLBH, ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) +
        ''',flowflag,UserID, ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''',YN');
      SQL.Add('FROM KCLL_BC');
      SQL.Add('WHERE LLNO = ''' + QKCLL.fieldbyname('LLNO').AsString + '''');

      SQL.Add('Insert into KCLLS_BC (LLNO, Grade, DDBH, Size, Qty, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + LLNO + ''', ''C'', DDBH, Size, Qty,UserID, ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) +
        ''',YN');
      SQL.Add('FROM KCLLS_BC');
      SQL.Add('WHERE LLNO = ''' + QKCLL.fieldbyname('LLNO').AsString + '''');
      //showmessage(SQL.Text);
      //exit;
      ExecSQL();
    end;
  end
  else
  begin
    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select *');
      SQL.Add('from BCShoeMonth ');
      SQL.Add('WHERE GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('AND DDBH=''' + QKCLLS.FieldByName('DDBH').AsString + ''' and Size=''' + QKCLLS.FieldByName('Size').AsString +
        '''');
      SQL.Add('AND Grade=''' + QKCLLS.FieldByName('Grade').AsString + ''' and KCYear = ''' + Syear + ''' and KCMonth = ''' +
        Smonth + '''');
      Active := true;
      if RecordCount > 0 then
      begin
        Active := false;
        SQL.Clear;
        Active := false;
        SQL.Clear;
        SQL.Add('Insert into KCRK_BC (RKNO, GSBH, CFMDate, flowflag, UserID, UserDate, YN)');
        SQL.Add('Values (''' + RKNO + ''', ''' + main.Edit2.Text + ''', ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) +
          ''', ''Z'', ''' + main.Edit1.Text + ''', ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''', ''1'')');

        QKCLLS.First;
        while not QKCLLS.Eof do
        begin
          SQL.Add('Insert into KCRKS_BC (RKNO, Grade, DDBH, Size, Qty, CheckDate, UserID, UserDate, YN)');
          SQL.Add('Values (''' + RKNO + ''', ''C'', ''' + QKCLLS.FieldByName('DDBH').AsString + ''', ''' +
            QKCLLS.FieldByName('Size').AsString + ''', ' + QKCLLS.FieldByName('Qty').AsString + ', ''' +
            formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''', ''' + main.Edit1.Text + ''', ''' +
            formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''', ''1'')');
          QKCLLS.Next;
        end;

        SQL.Add('Insert into KCLL_BC (LLNO, Purpose, GSBH, ZLBH, CFMDATE, flowflag, UserID, UserDate, YN)');
        SQL.Add('SELECT ''' + LLNO + ''', Purpose, GSBH, ZLBH, ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) +
          ''',flowflag,UserID, ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) + ''',YN');
        SQL.Add('FROM KCLL_BC');
        SQL.Add('WHERE LLNO = ''' + QKCLL.fieldbyname('LLNO').AsString + '''');

        SQL.Add('Insert into KCLLS_BC (LLNO, Grade, DDBH, Size, Qty, UserID, UserDate, YN)');
        SQL.Add('SELECT ''' + LLNO + ''', ''C'', DDBH, Size, Qty,UserID, ''' + formatdatetime('YYYY/MM/DD HH:MM:SS', NDate) +
          ''',YN');
        SQL.Add('FROM KCLLS_BC');
        SQL.Add('WHERE LLNO = ''' + QKCLL.fieldbyname('LLNO').AsString + '''');
      end
      else
      begin
        showmessage('Size hoac Grade khong ton tai.');
        abort;
      end;
    end;
  end;
  //  end else
  //  begin
  //    showmessage('It is not yours, can not modify.');
  //  end;
  showmessage('Succeed');
end;

end.
