unit StockIn_BC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj,
  ComCtrls;

type
  TStockIn_BC = class(TForm)
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    DS1: TDataSource;
    QKCRK: TQuery;
    UP_KCRK: TUpdateSQL;
    QKCRKRKNO: TStringField;
    QKCRKUserID: TStringField;
    QKCRKUserDate: TDateTimeField;
    QKCRKYN: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    QKCRKS: TQuery;
    DS2: TDataSource;
    DBGridEh2: TDBGridEh;
    UP_KCRKS: TUpdateSQL;
    QKCRKSRKNO: TStringField;
    QKCRKSGrade: TStringField;
    QKCRKSSize: TStringField;
    QKCRKSQty: TFloatField;
    QKCRKSDefectID: TStringField;
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
    QKCRKSUserID: TStringField;
    QKCRKSUserDate: TDateTimeField;
    QKCRKSYN: TStringField;
    Label3: TLabel;
    ED_RKNO: TEdit;
    GB1: TGroupBox;
    Label4: TLabel;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    CB4: TCheckBox;
    QKCRKSDDBH: TStringField;
    QKCRKSArticle: TStringField;
    QKCRKSXieMing: TStringField;
    QKCRKSYSSM: TStringField;
    QKCRKSJiJie: TStringField;
    QKCRKSDDMH: TStringField;
    QKCRKStatus: TStringField;
    QKCRKB: TFloatField;
    QKCRKC: TFloatField;
    QKCRKDepID: TStringField;
    QKCRKDepName: TStringField;
    QKCRKDepMemo: TStringField;
    QKCRKBuilding: TStringField;
    Label1: TLabel;
    CB_Building: TComboBox;
    Label2: TLabel;
    ED_DepID: TEdit;
    ED_DepName: TEdit;
    Label5: TLabel;
    BB8: TBitBtn;
    BD8: TBitBtn;
    QKCRKCFMDate: TDateTimeField;
    QKCRKGSBH: TStringField;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label7: TLabel;
    QUpdate: TQuery;
    QKCRKSCheckDate: TDateTimeField;
    QKCRKSKHPO: TStringField;
    bbt6: TBitBtn;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    Ed_OrderNo: TEdit;
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
    procedure QKCRKAfterOpen(DataSet: TDataSet);
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
    procedure QKCRKSNewRecord(DataSet: TDataSet);
    procedure DBGridEh2Columns1UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure QKCRKNewRecord(DataSet: TDataSet);
    procedure DBGridEh2Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns13UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB8Click(Sender: TObject);
    procedure BD8Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    workflow: boolean;
    { Public declarations }
  end;

var
  StockIn_BC: TStockIn_BC;

implementation

uses
  main1, funUnit, Department_BC1, OrderList_BC1, StockIn_Report1;

{$R *.dfm}

procedure TStockIn_BC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('Please save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TStockIn_BC.FormDestroy(Sender: TObject);
begin
  StockIn_BC := Nil;
end;
        
procedure TStockIn_BC.FormCreate(Sender: TObject);
begin
  if (main.ServerIP = '192.168.23.9') then
  begin
    workflow := true;
  end
  else begin
    workflow := false;
    DBGridEh1.Columns[9].Visible := false;
//    Label4.Visible := false;
//    GB1.Visible := false;
//    CB2.Checked := false;
//    CB3.Checked := false;
//    CB4.Checked := false;
//    Button1.Left := 704;
  end;

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Xuong FROM BDepartment');
    SQL.Add('WHERE Xuong IS NOT NULL');
    SQL.Add('ORDER BY Xuong');
    Active := true;

    DBGridEh1.Columns[1].KeyList.Clear;
    DBGridEh1.Columns[1].PickList.Clear;
    CB_Building.Items.Clear;
    CB_Building.Items.Add('ALL');
    while not Eof do
    begin
      DBGridEh1.Columns[1].KeyList.Add(FieldByName('Xuong').AsString);
      DBGridEh1.Columns[1].PickList.Add(FieldByName('Xuong').AsString);
      CB_Building.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;

    Active := false;
    SQL.Clear;
    if (main.ServerIP = '192.168.27.9') then
      SQL.Add('SELECT YYBH, YWSM AS ZWSM FROM QCBLYY')
    else
      SQL.Add('SELECT YYBH, ZWSM FROM QCBLYY');
    SQL.Add('WHERE GSBH = ''' + main.Edit2.Text + ''' AND DFL = ''AR'' AND YN = ''2''');
    SQL.Add('ORDER BY YYBH');
    Active := true;

    DBGridEh2.Columns[11].KeyList.Clear;
    DBGridEh2.Columns[11].PickList.Clear;
    DBGridEh2.Columns[11].KeyList.Add('N/A');
    DBGridEh2.Columns[11].PickList.Add('N/A');
    while not Eof do
    begin
      DBGridEh2.Columns[11].PickList.Add(FieldByName('YYBH').AsString + ' - [' + FieldByName('ZWSM').AsString + ']');
      DBGridEh2.Columns[11].KeyList.Add(FieldByName('YYBH').AsString);
      Next;
    end;
  end;

  DTP1.Date := Date - 3;
  DTP2.Date := Date;
  PC1.ActivePageIndex := 0;
  BB1Click(Nil);
end;

procedure TStockIn_BC.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TStockIn_BC.Button1Click(Sender: TObject);
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
    StatusSQL := StatusSQL + 'Status = ''Stock-In''';
  end;
  if (CB4.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Cancelled''';
  end;
  if (StatusSQL = '') then
    StatusSQL := '1 = 0';

  with QKCRK do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT RKNO, ISNULL(SUM(B), 0) AS B, ISNULL(SUM(C), 0) AS C, Building, DepID, DepName, DepMemo, CFMDate, UserID, UserDate, YN, Status, GSBH FROM (');
    SQL.Add('  SELECT KCRK_BC.RKNO, KCRK_BC.GSBH, KCRK_BC.Building, KCRK_BC.DepID, BDepartment.DepName, BDepartment.DepMemo, KCRK_BC.CFMDate, KCRK_BC.UserID, KCRK_BC.UserDate, KCRK_BC.YN,');
    SQL.Add('  CASE WHEN KCRKS_BC.Grade = ''B'' THEN Qty END AS B,');
    SQL.Add('  CASE WHEN KCRKS_BC.Grade = ''C'' THEN Qty END AS C,');
    SQL.Add('  CASE WHEN KCRK_BC.flowflag IS NULL THEN ''Not Submitted'' ELSE');
    SQL.Add('  CASE WHEN KCRK_BC.flowflag NOT IN ('''', ''X'', ''Z'') THEN ''Under Review'' ELSE');
    SQL.Add('  CASE WHEN KCRK_BC.flowflag = ''Z'' THEN ''Stock-In'' ELSE');
    SQL.Add('  CASE WHEN KCRK_BC.flowflag = ''X'' THEN ''Cancelled'' END END END END AS Status FROM KCRK_BC');
    SQL.Add('  LEFT JOIN KCRKS_BC ON KCRKS_BC.RKNO = KCRK_BC.RKNO');
    SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = KCRK_BC.DepID');
    SQL.Add('  LEFT JOIN ddzl ON ddzl.DDBH = KCRKS_BC.DDBH');
    SQL.Add('  WHERE KCRK_BC.GSBH = ''' + main.Edit2.Text + ''' and isnull(KCRK_BC.flowflag,'''') <> ''X''');
    if Ed_OrderNo.Text <> '' then
      SQL.Add('and KCRKS_BC.DDBH like '''+Ed_OrderNo.Text+'%''');
    if EdSKU.Text <> '' then
      SQL.Add('and ddzl.article like '''+EdSKU.Text+'%''');
    SQL.Add('  AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add(') AS KCRK_BC');
    SQL.Add('WHERE 1 = 1');
    if (ED_RKNO.Text <> '') then
      SQL.Add('AND RKNO LIKE ''' + ED_RKNO.Text + '%''');
    if (CB_Building.ItemIndex > 0) then
      SQL.Add('AND Building = ''' + CB_Building.Text + ''''); 
    if (ED_DepID.Text <> '') then
      SQL.Add('AND DepID LIKE ''' + ED_DepID.Text + '%''');
    if (ED_DepName.Text <> '') then
      SQL.Add('AND DepName LIKE ''' + ED_DepName.Text + '%''');
    SQL.Add('AND (' + StatusSQL + ')');
    SQL.Add('GROUP BY RKNO, Building, DepID, DepName, DepMemo, CFMDate, UserID, UserDate, YN, Status, GSBH');
    SQL.Add('ORDER BY RKNO DESC');
    //showmessage(SQL.Text);
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
  QKCRKS.Active := true;
end;

procedure TStockIn_BC.BB2Click(Sender: TObject);
begin
  with QKCRK do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
    DBGridEh1.Columns[1].ReadOnly := false;  
    DBGridEh1.Columns[2].ReadOnly := false;
  end;

  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TStockIn_BC.BB3Click(Sender: TObject);
begin
  if QKCRK.FieldByName('CFMDate').Value <> null then begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if (QKCRK.FieldByName('Status').AsString <> 'Not Submitted') then
  begin
    ShowMessage('[' + QKCRK.FieldByName('RKNO').AsString + '] has already been submitted. Execution denied.');
    Exit;
  end;

  if (QKCRKS.RecordCount > 0) then
  begin
    ShowMessage('Please delete all data in detail page first.');
    Exit;
  end;

  with QKCRK do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TStockIn_BC.BB4Click(Sender: TObject);
begin
  with QKCRK do
  begin
    RequestLive := true;
    CachedUpdates := true;
    DBGridEh1.Columns[3].ReadOnly := false;
    Edit;
  end;

  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TStockIn_BC.BB5Click(Sender: TObject);
var
  i: integer;
  Year, Month, RKNO: string;
begin
  try
    QKCRK.First;
    for i := 1 to QKCRK.RecordCount do
    begin
      case QKCRK.UpdateStatus of
        usInserted:
        begin
          if (QKCRK.FieldByName('Building').AsString = '') then
          begin
            QKCRK.Delete;
          end
          else begin
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
              SQL.Add('SELECT RKNO FROM KCRK_BC WHERE RKNO LIKE ''' + Year + Month + '%''');
              SQL.Add('ORDER BY RKNO');
              Active := true;
              if (RecordCount > 0) then
              begin
                Last;
                RKNO := FieldByName('RKNO').AsString;
                RKNO := Copy(RKNO, 7, 5);
                RKNO := IntToStr(StrToInt(RKNO) + 1);
                while Length(RKNO) < 5 do
                begin
                  RKNO := '0' + RKNO;
                end;
              end
              else begin
                RKNO := '00001';
              end;
              RKNO := Year + Month + RKNO;
            end;

            QKCRK.Edit;
            QKCRK.FieldByName('RKNO').Value := RKNO;
            QKCRK.FieldByName('UserID').Value := main.Edit1.Text;
            QKCRK.FieldByName('GSBH').Value := main.Edit2.Text;
            UP_KCRK.Apply(ukInsert);
            if (workflow = false) then
            begin
              QUpdate.SQL.Clear;
              QUpdate.SQL.Add('UPDATE KCRK_BC SET CFMDate = GetDate() WHERE RKNO = ''' + RKNO + '''');
              QUpdate.ExecSQL;
            end;
          end;
        end;

        usModified:
        begin
          if (QKCRK.FieldByName('YN').Value = 0) then
          begin
            QKCRK.Edit;
            QKCRK.FieldByName('flowflag').Value := 'X';
            UP_KCRK.Apply(ukModify);
//            UP_KCRK.Apply(ukDelete);
          end
          else begin
            QKCRK.Edit;
            QKCRK.FieldByName('UserID').Value := main.Edit1.text;
            UP_KCRK.Apply(ukModify);
          end;
        end;
      end;

      QKCRK.Next;
    end;

    QKCRK.Active := false;
    QKCRK.CachedUpdates := false;
    QKCRK.RequestLive := false;
    QKCRK.Active := true;

    DBGridEh1.Columns[1].ButtonStyle := cbsNone;
    DBGridEh1.Columns[2].ButtonStyle := cbsNone;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TStockIn_BC.BB6Click(Sender: TObject);
begin
  with QKCRK do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh1.Columns[1].ButtonStyle := cbsNone;
  DBGridEh1.Columns[2].ButtonStyle := cbsNone;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TStockIn_BC.BB7Click(Sender: TObject);
begin
  Close;
end;
    
procedure TStockIn_BC.DBGridEh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (Department_BC <> Nil) then
    Department_BC.Close;
  Department_BC := TDepartment_BC.Create(Self);
  Department_BC.Show;
end;

procedure TStockIn_BC.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (Department_BC <> Nil) then
    Department_BC.Close;
  Department_BC := TDepartment_BC.Create(Self);
  Department_BC.Show;
end;

procedure TStockIn_BC.QKCRKAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  // BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TStockIn_BC.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QKCRK.FieldByName('Status').AsString = 'Cancelled') then
    DBGridEh1.Canvas.Font.Color := clFuchsia
  else if (QKCRK.FieldByName('Status').AsString = 'Stock-In') then
    DBGridEh1.Canvas.Font.Color := $0000D500
  else if (QKCRK.FieldByName('Status').AsString = 'Under Review') then
    DBGridEh1.Canvas.Font.Color := clBlue;

  if (QKCRK.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TStockIn_BC.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCRK.Active) then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells[1, i+1] := DBGridEh1.Columns[i].Title.Caption;
      end;

      QKCRK.First;
      j := 2;
      while not QKCRK.Eof do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := QKCRK.FieldByName(DBGridEh1.Columns[i].FieldName).Value;
        end;
        QKCRK.Next;
        Inc(j);
      end;

      eclapp.Columns.Autofit;
      eclApp.Visible := true;
      ShowMessage('Succeed');
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TStockIn_BC.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePageIndex = 0) then
  begin
    Panel2.Visible := true;
    Panel3.Visible := false;
  end
  else begin
    Panel3.Visible := true;
    Panel2.Visible := false;
    if (QKCRK.Active) then
    begin
      if (QKCRK.RecordCount > 0) then
      begin
        BD2.Enabled := true;
        BD3.Enabled := true;
        BD4.Enabled := true;
      end
      else begin
        BD2.Enabled := false;
        BD3.Enabled := false;
        BD4.Enabled := false;
      end;
    end
    else begin
      BD2.Enabled := false;
      BD3.Enabled := false;
      BD4.Enabled := false;
    end;
  end;
end;

procedure TStockIn_BC.DBGridEh1DblClick(Sender: TObject);
begin
  if (BB5.Enabled) OR (BD5.Enabled) then
  begin
    ShowMessage('Please save the data first.');
  end
  else begin
    PC1.ActivePageIndex := 1;
    PC1Change(Nil);
  end;
end;

procedure TStockIn_BC.BD2Click(Sender: TObject);
var
  Grade, Order, SKU, ShoeName, Color, Season, Outsole: string;
begin
  with QKCRKS do
  begin
    Grade := FieldByName('Grade').AsString;
    Order := FieldByName('DDBH').AsString;
    SKU := FieldByName('Article').AsString;
    ShoeName := FieldByName('XieMing').AsString;
    Color := FieldByName('YSSM').AsString;
    Season := FieldByName('JiJie').AsString;
    Outsole := FieldByName('DDMH').AsString;

    RequestLive := true;
    CachedUpdates := true;
    Insert;

    FieldByName('Grade').AsString := Grade;
    FieldByName('DDBH').AsString := Order;
    FieldByName('Article').AsString := SKU;
    FieldByName('XieMing').AsString := ShoeName;
    FieldByName('YSSM').AsString := Color;
    FieldByName('JiJie').AsString := Season;
    FieldByName('DDMH').AsString := Outsole;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsAuto;
  DBGridEh2.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh2.Columns[9].ButtonStyle := cbsAuto;
  DBGridEh2.Columns[11].ButtonStyle := cbsAuto;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TStockIn_BC.BD3Click(Sender: TObject);
begin
  if QKCRK.FieldByName('CFMDate').Value <> null then begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if (QKCRK.FieldByName('Status').AsString <> 'Not Submitted') then
  begin
    ShowMessage('[' + QKCRK.FieldByName('RKNO').AsString + '] has already been submitted. Execution denied.');
    Exit;
  end;

  with QKCRKS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TStockIn_BC.BD4Click(Sender: TObject);
begin
  if (QKCRK.FieldByName('Status').AsString <> 'Not Submitted') then
  begin
    ShowMessage('[' + QKCRK.FieldByName('RKNO').AsString + '] has already been submitted. Execution denied.');
    Exit;
  end;

  with QKCRKS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsAuto;
  DBGridEh2.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh2.Columns[9].ButtonStyle := cbsAuto;
  DBGridEh2.Columns[11].ButtonStyle := cbsAuto;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TStockIn_BC.BD5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QKCRKS.First;
    for i := 1 to QKCRKS.RecordCount do
    begin
      case QKCRKS.UpdateStatus of
        usInserted:
        begin
          if (QKCRKS.FieldByName('Grade').AsString <> '') AND (QKCRKS.FieldByName('DDBH').AsString <> '') AND (QKCRKS.FieldByName('Size').AsString <> '') AND (QKCRKS.FieldByName('DefectID').AsString <> '') then
          begin
            QKCRKS.Edit;
            QKCRKS.FieldByName('UserID').Value := main.Edit1.Text;
            UP_KCRKS.Apply(ukInsert);
          end 
          else begin
            QKCRKS.Delete;
          end
        end;

        usModified:
        begin
          with QSearch do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT * FROM BCShoeMonth WHERE KCYear = ''' + FormatDateTime('yyyy', QKCRK.FieldByName('CFMDate').AsDateTime) + ''' AND KCMonth = ''' + FormatDateTime('MM', QKCRK.FieldByName('CFMDate').AsDateTime) + ''' AND GSBH = ''' + main.Edit2.Text + '''');
            Active := true;

            if (RecordCount > 0) then
            begin
              ShowMessage('List No [' + QKCRK.FieldByName('RKNO').AsString + '] has been confirmed, execution denied.');
              QKCRKS.Next;
              Continue;
            end;
          end;

          if (QKCRKS.FieldByName('YN').Value = 0) then
          begin
            UP_KCRKS.Apply(ukDelete);
          end
          else if (QKCRKS.FieldByName('Grade').AsString <> '') AND (QKCRKS.FieldByName('DDBH').AsString <> '') AND (QKCRKS.FieldByName('Size').AsString <> '') AND (QKCRKS.FieldByName('DefectID').AsString <> '') then
          begin
            QKCRKS.Edit;
            QKCRKS.FieldByName('UserID').Value := main.Edit1.text;
            UP_KCRKS.Apply(ukModify);
          end;
        end;
      end;

      QKCRKS.Next;
    end;

    QKCRKS.Active := false;
    QKCRKS.CachedUpdates := false;
    QKCRKS.RequestLive := false;
    QKCRKS.Active := true;

    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ISNULL(SUM(CASE WHEN Grade = ''B'' THEN Qty END), 0) AS B, ISNULL(SUM(CASE WHEN Grade = ''C'' THEN Qty END), 0) AS C FROM KCRKS_BC');
      SQL.Add('WHERE RKNO = ''' + QKCRK.FieldByName('RKNO').AsString + '''');
      Active := true;

      QKCRK.RequestLive := true;
      QKCRK.CachedUpdates := true;
      QKCRK.Edit;
      DBGridEh1.Columns[1].ReadOnly := true;  
      DBGridEh1.Columns[2].ReadOnly := true;
      QKCRK.FieldByName('B').Value := FieldByName('B').Value;
      QKCRK.FieldByName('C').Value := FieldByName('C').Value;
    end;

    DBGridEh2.Columns[1].ButtonStyle := cbsNone;
    DBGridEh2.Columns[2].ButtonStyle := cbsNone;
    DBGridEh2.Columns[9].ButtonStyle := cbsNone;
    DBGridEh2.Columns[11].ButtonStyle := cbsNone;
    BD5.Enabled := false;
    BD6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TStockIn_BC.BD6Click(Sender: TObject);
begin
  with QKCRKS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsNone;
  DBGridEh2.Columns[2].ButtonStyle := cbsNone;
  DBGridEh2.Columns[9].ButtonStyle := cbsNone;
  DBGridEh2.Columns[11].ButtonStyle := cbsNone;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TStockIn_BC.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure TStockIn_BC.PC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) OR (BD5.Enabled) then
  begin
    ShowMessage('Please save the data first.');
    AllowChange := false;
  end;
end;

procedure TStockIn_BC.QKCRKSNewRecord(DataSet: TDataSet);
begin
  QKCRKS.FieldByName('RKNO').Value := QKCRK.FieldByName('RKNO').AsString;
end;

procedure TStockIn_BC.DBGridEh2Columns1UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Text = 'B') AND (QKCRKS.FieldByName('Qty').IsNull = false) then
  begin
    QKCRKS.FieldByName('Qty').Value := StrToFloat(Copy(FloatToStr(QKCRKS.FieldByName('Qty').AsFloat), 1, Pos('.', FloatToStr(QKCRKS.FieldByName('Qty').AsFloat))-1));
  end;
end;
      
procedure TStockIn_BC.DBGridEh2Columns13UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Value <= 0) then
  begin
    ShowMessage('please enter a number greater than 0.');
    Text := '';
  end
  else begin
    if (Pos('.', Text) = 0) then
      Text := Text + '.0';

    if (QKCRKS.FieldByName('Grade').AsString = 'B') then
      Text := Copy(Text, 1, Pos('.', Text)-1)
    else if (StrToFloat('0' + Copy(Text, Pos('.', Text), 2)) > 0) then
      Text := Copy(Text, 1, Pos('.', Text)-1) + '.5';
  end;
end;

procedure TStockIn_BC.QKCRKNewRecord(DataSet: TDataSet);
begin
  QKCRK.FieldByName('RKNO').Value := '(Auto-Generated)';
end;

procedure TStockIn_BC.DBGridEh2Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (OrderList_BC <> Nil) then
    OrderList_BC.Close;
  OrderList_BC := TOrderList_BC.Create(Self);
  OrderList_BC.Show;
end;

procedure TStockIn_BC.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QKCRK.FieldByName('Status').AsString = 'Cancelled') then
    DBGridEh2.Canvas.Font.Color := clFuchsia
  else if (QKCRK.FieldByName('Status').AsString = 'Stock-In') then
    DBGridEh2.Canvas.Font.Color := $0000D500
  else if (QKCRK.FieldByName('Status').AsString = 'Under Review') then
    DBGridEh2.Canvas.Font.Color := clBlue;

  if (QKCRKS.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TStockIn_BC.BB8Click(Sender: TObject);
begin
  if ((workflow = true) AND (QKCRK.FieldByName('Status').AsString = 'Stock-In')) OR (workflow = false) then
  begin
    StockIn_Report := TStockIn_Report.Create(Self);
    StockIn_Report.Init;
    StockIn_Report.QuickRep1.Preview;
  end
  else begin
    ShowMessage('List [' + QKCRK.FieldByName('RKNO').AsString + '] has not been approved, execution denied.');
  end;
end;

procedure TStockIn_BC.BD8Click(Sender: TObject);
begin
  BB8Click(Nil);
end;

procedure TStockIn_BC.bbt6Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCRK.Active) then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells[1, i+1] := DBGridEh1.Columns[i].Title.Caption;
      end;

      QKCRK.First;
      j := 2;
      while not QKCRK.Eof do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := QKCRK.FieldByName(DBGridEh1.Columns[i].FieldName).Value;
        end;
        QKCRK.Next;
        Inc(j);
      end;
      ShowMessage('Succeed');
      eclapp.Columns.Autofit;
      eclApp.Visible := true;

    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TStockIn_BC.BitBtn1Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCRKS.Active) then
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
      for i:=0 to DBGridEh2.Columns.Count-1 do
      begin
        eclApp.Cells[1, i+1] := DBGridEh2.Columns[i].Title.Caption;
      end;

      QKCRKS.First;
      j := 2;
      while not QKCRKS.Eof do
      begin
        for i:=0 to DBGridEh2.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := QKCRKS.FieldByName(DBGridEh2.Columns[i].FieldName).Value;
        end;
        QKCRKS.Next;
        Inc(j);
      end;
      ShowMessage('Succeed');
      eclapp.Columns.Autofit;
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
