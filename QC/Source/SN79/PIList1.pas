unit PIList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj,
  ComCtrls;

type
  TPIList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_PI: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    DS1: TDataSource;
    QPI: TQuery;
    UP_PI: TUpdateSQL;
    Button2: TButton;
    QPIPI: TStringField;
    QPIOpenDate: TDateTimeField;
    QPIIssueDescription: TStringField;
    QPIIssueCategory: TStringField;
    QPIClaimedUnits: TIntegerField;
    QPIPO_Qty: TIntegerField;
    QPIGAC: TDateTimeField;
    QPISAP_PO: TStringField;
    QPIMaterial: TStringField;
    QPIPO_ShortText: TStringField;
    QPIResponsibility: TStringField;
    QPIUserID: TStringField;
    QPIUserDate: TDateTimeField;
    QPIYN: TStringField;
    BB8: TBitBtn;
    OpenDialog1: TOpenDialog;
    QSearch: TQuery;
    QPIClaimIssueDate: TDateTimeField;
    QPIDDBH: TStringField;
    QPICountry: TStringField;
    QPICloseDate: TDateTimeField;
    QPIProductionLine: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QPIClaimAmount: TFloatField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    UP_PIS: TUpdateSQL;
    QPIS: TQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    DS2: TDataSource;
    QPIGSBH: TStringField;
    QPISGSBH: TStringField;
    QPISCategory: TStringField;
    QPISSolution: TStringField;
    QPISUserID: TStringField;
    QPISUserDate: TDateTimeField;
    QPISYN: TStringField;
    Panel3: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    QUpdate: TQuery;
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
    procedure QPIAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure QPISAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
  private
    Mode: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PIList: TPIList;

implementation

uses main1, funUnit;

{$R *.dfm}

procedure TPIList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('You have to save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TPIList.FormDestroy(Sender: TObject);
begin
  PIList := Nil;
end;
       
procedure TPIList.FormCreate(Sender: TObject);
begin
  Mode := 'Normal';
  BB1Click(Nil);
  PC1.ActivePageIndex := 0;
end;

procedure TPIList.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TPIList.Button1Click(Sender: TObject);
begin
  with QPI do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT PI_List.PI, PI_List.GSBH, PI_List.OpenDate, PI_List.IssueDescription, PI_List.IssueCategory, PI_List.ClaimedUnits, PI_List.PO_Qty,');
    SQL.Add('PI_List.GAC, PI_List.SAP_PO, PI_List.Material, PI_List.PO_ShortText, PI_List.Responsibility, PI_List.ClaimIssueDate, ISNULL(PI_List.DDBH, DDZL.DDBH) AS DDBH,');
    SQL.Add('PI_List.Country, SUM(PI_ListS.ClaimAmount) AS ClaimAmount, PI_List.CloseDate, PI_List.ProductionLine, PI_List.UserID, PI_List.UserDate, PI_List.YN FROM PI_List');
    SQL.Add('LEFT JOIN PI_ListS ON PI_ListS.PI = PI_List.PI AND PI_ListS.GSBH = PI_List.GSBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.KHPO = PI_List.SAP_PO');
    SQL.Add('WHERE PI_List.PI LIKE ''' + ED_PI.Text + '%'' AND PI_List.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('GROUP BY PI_List.PI, PI_List.GSBH, PI_List.OpenDate, PI_List.IssueDescription, PI_List.IssueCategory, PI_List.ClaimedUnits, PI_List.PO_Qty,');
    SQL.Add('PI_List.GAC, PI_List.SAP_PO, PI_List.Material, PI_List.PO_ShortText, PI_List.Responsibility, PI_List.ClaimIssueDate, ISNULL(PI_List.DDBH, DDZL.DDBH),');
    SQL.Add('PI_List.Country, PI_List.CloseDate, PI_List.ProductionLine, PI_List.UserID, PI_List.UserDate, PI_List.YN');
    SQL.Add('ORDER BY PI_List.PI');
    Active := true;
  end;
  QPIS.Active := true;
end;

procedure TPIList.BB2Click(Sender: TObject);
begin
  with QPI do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TPIList.BB3Click(Sender: TObject);
begin
  with QPI do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TPIList.BB4Click(Sender: TObject);
begin
  with QPI do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TPIList.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QPI.First;
    for i := 1 to QPI.RecordCount do
    begin
      case QPI.UpdateStatus of
        usInserted:
        begin
          if (QPI.FieldByName('PI').IsNull) then
          begin
            QPI.Delete;
          end
          else begin
            if (Mode = 'Import') then
            begin
              with QSearch do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT PI FROM PI_List WHERE PI = ''' + QPI.FieldByName('PI').AsString + ''' AND GSBH = ''' + main.Edit2.Text + '''');
                Active := true;
              end;

              QPI.Edit;
              QPI.FieldByName('USERID').Value := main.Edit1.Text;  
              QPI.FieldByName('GSBH').Value := main.Edit2.Text;
              if (QSearch.RecordCount = 0) then
              begin
                with QUpdate do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('INSERT INTO PI_List (PI, GSBH, OpenDate, IssueDescription, IssueCategory, ClaimedUnits, PO_Qty, GAC, SAP_PO,');
                  SQL.Add('Material, PO_ShortText, Responsibility, ClaimIssueDate, DDBH, Country, CloseDate, ProductionLine, UserID, UserDate, YN)');
                  SQL.Add('VALUES (');
                  SQL.Add('''' + QPI.FieldByName('PI').AsString + ''',');
                  SQL.Add('''' + QPI.FieldByName('GSBH').AsString + ''',');
                  SQL.Add('''' + FormatDateTime('yyyy/MM/dd', QPI.FieldByName('OpenDate').AsDateTime) + ''',');
                  SQL.Add('''' + QPI.FieldByName('IssueDescription').AsString + ''',');
                  SQL.Add('''' + QPI.FieldByName('IssueCategory').AsString + ''',');
                  SQL.Add(QPI.FieldByName('ClaimedUnits').AsString + ',');
                  SQL.Add(QPI.FieldByName('PO_Qty').AsString + ',');
                  SQL.Add('''' + FormatDateTime('yyyy/MM/dd', QPI.FieldByName('GAC').AsDateTime) + ''',');
                  SQL.Add('''' + QPI.FieldByName('SAP_PO').AsString + ''',');
                  SQL.Add('''' + QPI.FieldByName('Material').AsString + ''',');
                  SQL.Add('''' + QPI.FieldByName('PO_ShortText').AsString + ''','); 
                  SQL.Add('''' + QPI.FieldByName('Responsibility').AsString + ''',');
                  SQL.Add('''' + FormatDateTime('yyyy/MM/dd', QPI.FieldByName('ClaimIssueDate').AsDateTime) + ''',');
                  SQL.Add('''' + QPI.FieldByName('DDBH').AsString + ''',');
                  SQL.Add('''' + QPI.FieldByName('Country').AsString + ''',');
                  SQL.Add('''' + FormatDateTime('yyyy/MM/dd', QPI.FieldByName('CloseDate').AsDateTime) + ''',');
                  SQL.Add('''' + QPI.FieldByName('ProductionLine').AsString + ''',');
                  SQL.Add('''' + main.Edit1.Text + ''',');
                  SQL.Add('GetDate(),');
                  SQL.Add('''1'')');
                  ExecSQL;
                end;
              end
              else begin
                with QUpdate do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('UPDATE PI_List SET');
                  SQL.Add('PI = ''' + QPI.FieldByName('PI').AsString + ''',');
                  SQL.Add('GSBH = ''' + QPI.FieldByName('GSBH').AsString + ''',');
                  SQL.Add('OpenDate = ''' + FormatDateTime('yyyy/MM/dd', QPI.FieldByName('OpenDate').AsDateTime) + ''',');
                  SQL.Add('IssueDescription = ''' + QPI.FieldByName('IssueDescription').AsString + ''',');
                  SQL.Add('IssueCategory = ''' + QPI.FieldByName('IssueCategory').AsString + ''',');
                  SQL.Add('ClaimedUnits = ' + QPI.FieldByName('ClaimedUnits').AsString + ',');
                  SQL.Add('PO_Qty = ' + QPI.FieldByName('PO_Qty').AsString + ',');
                  SQL.Add('GAC = ''' + FormatDateTime('yyyy/MM/dd', QPI.FieldByName('GAC').AsDateTime) + ''',');
                  SQL.Add('SAP_PO = ''' + QPI.FieldByName('SAP_PO').AsString + ''',');
                  SQL.Add('Material = ''' + QPI.FieldByName('Material').AsString + ''',');
                  SQL.Add('PO_ShortText = ''' + QPI.FieldByName('PO_ShortText').AsString + ''',');
                  SQL.Add('Responsibility = ''' + QPI.FieldByName('Responsibility').AsString + '''');
                  SQL.Add('WHERE PI = ''' + QPI.FieldByName('PI').AsString + ''' AND GSBH = ''' + main.Edit2.Text + '''');
                  ExecSQL;
                end;
              end;
            end
            else begin
              QPI.Edit;
              QPI.FieldByName('USERID').Value := main.Edit1.Text;
              QPI.FieldByName('GSBH').Value := main.Edit2.Text;
              UP_PI.Apply(ukInsert);
            end;
          end;
        end;

        usModified:
        begin
          if (QPI.FieldByName('YN').Value = 0) then
          begin
            UP_PI.Apply(ukDelete);
          end
          else begin
            QPI.Edit;
            QPI.FieldByName('UserID').Value := main.Edit1.text;
            UP_PI.Apply(ukModify);
          end;
        end;
      end;

      QPI.Next;
    end;

    with QPI do
    begin
      Active := false;
      CachedUpdates := false;
      RequestLive := false;
      SQL.Clear;
      SQL.Add('SELECT PI_List.PI, PI_List.GSBH, PI_List.OpenDate, PI_List.IssueDescription, PI_List.IssueCategory, PI_List.ClaimedUnits, PI_List.PO_Qty,');
      SQL.Add('PI_List.GAC, PI_List.SAP_PO, PI_List.Material, PI_List.PO_ShortText, PI_List.Responsibility, PI_List.ClaimIssueDate, PI_List.DDBH,');
      SQL.Add('PI_List.Country, SUM(PI_ListS.ClaimAmount) AS ClaimAmount, PI_List.CloseDate, PI_List.ProductionLine, PI_List.UserID, PI_List.UserDate, PI_List.YN FROM PI_List');
      SQL.Add('LEFT JOIN PI_ListS ON PI_ListS.PI = PI_List.PI AND PI_ListS.GSBH = PI_List.GSBH');
      SQL.Add('WHERE PI_List.PI LIKE ''' + ED_PI.Text + '%'' AND PI_List.GSBH = ''' + main.Edit2.Text + '''');
      SQL.Add('GROUP BY PI_List.PI, PI_List.GSBH, PI_List.OpenDate, PI_List.IssueDescription, PI_List.IssueCategory, PI_List.ClaimedUnits, PI_List.PO_Qty,');
      SQL.Add('PI_List.GAC, PI_List.SAP_PO, PI_List.Material, PI_List.PO_ShortText, PI_List.Responsibility, PI_List.ClaimIssueDate, PI_List.DDBH,');
      SQL.Add('PI_List.Country, PI_List.CloseDate, PI_List.ProductionLine, PI_List.UserID, PI_List.UserDate, PI_List.YN');
      SQL.Add('ORDER BY PI_List.PI');
      Active := true;
    end;
    BB5.Enabled := false;
    BB6.Enabled := false;
    Mode := 'Normal';
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPIList.BB6Click(Sender: TObject);
begin
  with QPI do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TPIList.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TPIList.QPIAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TPIList.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QPI.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TPIList.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
  Query: TQuery;
  Grid: TDBGridEh;
begin
  if (PC1.ActivePageIndex = 0) then
  begin
    Query := QPI;
    Grid := DBGridEh1;
  end
  else if (PC1.ActivePageIndex = 1) then
  begin
    Query := QPIS;
    Grid := DBGridEh2;
  end;

  if (Query.Active) then
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
      for i:=0 to Grid.Columns.Count-1 do
      begin
        eclApp.Cells[1, i+1] := Grid.Columns[i].Title.Caption;
      end;

      Query.First;
      j:=2;
      while not Query.Eof do
      begin
        for i:=0 to Grid.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := Query.FieldByName(Grid.Columns[i].FieldName).Value;
        end;
        Query.Next;
        Inc(j);
      end;
      eclapp.Columns.Autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TPIList.BB8Click(Sender: TObject);
var
  eclApp, Sheet: OleVariant;
  Col, Row, MaxRow, i: integer;
const
  ColumnList: array[0..10] of integer = (1, 6, 8, 9, 10, 14, 16, 17, 20, 21, 31);
  FieldList: array[0..10] of string = ('PI', 'OpenDate', 'IssueDescription', 'IssueCategory', 'ClaimedUnits', 'PO_Qty', 'GAC', 'SAP_PO', 'Material', 'PO_ShortText', 'Responsibility');
begin
  if (OpenDialog1.Execute) then
  begin
    with QPI do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT PI_List.PI, PI_List.GSBH, PI_List.OpenDate, PI_List.IssueDescription, PI_List.IssueCategory, PI_List.ClaimedUnits, PI_List.PO_Qty,');
      SQL.Add('PI_List.GAC, PI_List.SAP_PO, PI_List.Material, PI_List.PO_ShortText, PI_List.Responsibility, PI_List.ClaimIssueDate, PI_List.DDBH,');
      SQL.Add('PI_List.Country, 0.0 AS ClaimAmount, PI_List.CloseDate, PI_List.ProductionLine, PI_List.UserID, PI_List.UserDate, PI_List.YN FROM PI_List');
      SQL.Add('WHERE 1 = 0');
      Active := true;

      RequestLive := true;
      CachedUpdates := true;
    end;

    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.workbooks.Open(OpenDialog1.FileName);
      for i := 1 to eclApp.WorkSheets.Count do
      begin
        if (eclApp.WorkSheets[i].Visible = true) then
        begin
          Sheet := eclApp.WorkSheets[i];
          Break;
        end;
      end;
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    Row := 2;
    while (Sheet.Cells[Row, 1].Text <> '') do
    begin
      QPI.Append;
      for Col := 0 to Length(ColumnList)-1 do
      begin
        if (Sheet.Cells[Row, ColumnList[Col]].Text <> '') then
          QPI.FieldByName(FieldList[Col]).Value := Sheet.Cells[Row, ColumnList[Col]];
      end;

      with QSearch do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT DDBH FROM DDZL WHERE KHPO = ''' + QPI.FieldByName('SAP_PO').AsString + '''');
        Active := true;

        if (RecordCount > 0) then
          QPI.FieldByName('DDBH').Value := FieldByName('DDBH').AsString;
      end;

      Inc(Row);
    end;

    eclApp.DisplayAlerts := 0;
    eclApp.WorkBooks.Close;
    eclApp.Quit;
                
    Mode := 'Import';
    BB5.Enabled := true;
    BB6.Enabled := true;
    QPI.First;
    ShowMessage('Imported Successfully');
  end;
end;

procedure TPIList.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePageIndex = 0) then
  begin                 
    Panel2.Visible := true;
    Panel3.Visible := false;
  end
  else if (PC1.ActivePageIndex = 1) then
  begin                 
    Panel3.Visible := true;
    Panel2.Visible := false;
  end;
end;

procedure TPIList.QPISAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
end;

procedure TPIList.BD2Click(Sender: TObject);
begin
  with QPIS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TPIList.BD3Click(Sender: TObject);
begin
  with QPIS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TPIList.BD4Click(Sender: TObject);
begin
  with QPIS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TPIList.BD5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QPIS.First;
    for i := 1 to QPIS.RecordCount do
    begin
      case QPIS.UpdateStatus of
        usInserted:
        begin
          if (QPIS.FieldByName('Category').IsNull) then
          begin
            QPIS.Delete;
          end
          else begin
            QPIS.Edit;
            QPIS.FieldByName('PI').Value := QPI.FieldByName('PI').AsString;
            QPIS.FieldByName('USERID').Value := main.Edit1.Text;
            QPIS.FieldByName('GSBH').Value := main.Edit2.Text;
            UP_PIS.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QPIS.FieldByName('YN').Value = 0) then
          begin
            UP_PIS.Apply(ukDelete);
          end
          else begin
            QPIS.Edit;
            QPIS.FieldByName('UserID').Value := main.Edit1.text;
            UP_PIS.Apply(ukModify);
          end;
        end;
      end;

      QPIS.Next;
    end;

    QPIS.Active := false;
    QPIS.CachedUpdates := false;
    QPIS.RequestLive := false;
    QPIS.Active := true;
    with QPI do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('ClaimAmount').Value := DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[2]);
    end;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPIList.BD6Click(Sender: TObject);
begin
  with QPIS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TPIList.BD7Click(Sender: TObject);
begin
  Close;
end;

end.
