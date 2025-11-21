unit LeaveData1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Data.DB, Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MyADOUpdateSQL, ComObj, Vcl.Menus, MyADOQuery;

type
  TLeaveData = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB7: TBitBtn;
    Panel2: TPanel;
    BB1_2: TBitBtn;
    BB2_2: TBitBtn;
    BB3_2: TBitBtn;
    BB4_2: TBitBtn;
    BB6_2: TBitBtn;
    BB5_2: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Panel4: TPanel;
    Label2: TLabel;
    Button2: TButton;
    ED_ID: TEdit;
    Label3: TLabel;
    ED_Name: TEdit;
    DBGridEh1: TDBGridEh;
    Query2: TADOQuery;
    DS2: TDataSource;
    Query2ID: TStringField;
    Query2StartDate: TDateTimeField;
    Query2EndDate: TDateTimeField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2Name: TWideStringField;
    Button3: TButton;
    UpdateSQL2: TMyADOUpdateSQL;
    Query2YN: TStringField;
    QSearch: TADOQuery;
    Query2Type: TStringField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    QMaster: TADOQuery;
    DSMas: TDataSource;
    DSDet: TDataSource;
    Query2Remark: TWideStringField;
    UpdateDetail: TMyADOUpdateSQL;
    Splitter1: TSplitter;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    QDetail: TMyADOQuery;
    QDetailID: TStringField;
    QDetailDID: TStringField;
    QDetailDepartment: TStringField;
    QDetailPID: TStringField;
    QDetailPosition: TWideStringField;
    QDetailName: TWideStringField;
    QDetailPhone: TStringField;
    QDetailPhone2: TStringField;
    QDetailTelExt: TStringField;
    QDetailEmail: TStringField;
    QDetailNID: TStringField;
    QDetailNationality: TStringField;
    QDetailFID: TStringField;
    QDetailFactory: TStringField;
    QDetailFactoryS: TStringField;
    QDetailLeave: TStringField;
    QDetailBusinessTrip: TStringField;
    QDetailRemark: TWideStringField;
    QDetailSequence: TIntegerField;
    OpenDialog1: TOpenDialog;
    Orderby3: TMenuItem;
    N1: TMenuItem;
    Label4: TLabel;
    ED_ID1: TEdit;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    Label11: TLabel;
    Edit6: TEdit;
    GroupBox2: TGroupBox;
    RB11: TRadioButton;
    RB12: TRadioButton;
    RB13: TRadioButton;
    RB14: TRadioButton;
    RB15: TRadioButton;
    Label7: TLabel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    RB21: TRadioButton;
    RB22: TRadioButton;
    RB23: TRadioButton;
    Label10: TLabel;
    Query2Agent: TWideStringField;
    Query2Memo: TStringField;
    Query2FYear: TStringField;
    Query2NO: TSmallintField;
    CheckBox1: TCheckBox;
    RB16: TRadioButton;
    N2: TMenuItem;
    OrderbyN1: TMenuItem;
    OrderbyN2: TMenuItem;
    QMasterFactory: TStringField;
    QMasterDepartment: TStringField;
    QMasterTotal: TIntegerField;
    QMasterTW: TIntegerField;
    QMasterCN: TIntegerField;
    QMasterPH: TIntegerField;
    QMasterOthers: TIntegerField;
    QMasterAbsence: TIntegerField;
    QMasterBusinessTrip: TIntegerField;
    QMasterAttendance: TIntegerField;
    QMasterAttendanceRate: TBCDField;
    QMasterAbsenceRate: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BB2_2Click(Sender: TObject);
    procedure BB3_2Click(Sender: TObject);
    procedure BB4_2Click(Sender: TObject);
    procedure BB5_2Click(Sender: TObject);
    procedure BB6_2Click(Sender: TObject);
    procedure ED_IDChange(Sender: TObject);
    procedure ED_IDKeyPress(Sender: TObject; var Key: Char);
    procedure Query2NewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2GetFooterParams(Sender: TObject; DataCol, Row: Integer;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      var Alignment: TAlignment; State: TGridDrawState; var Text: string);
    procedure FormCreate(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh3Columns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Excel1Click(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure Orderby3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure OrderbyN1Click(Sender: TObject);
    procedure OrderbyN2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LeaveData: TLeaveData;

implementation

uses DM1, main1, LeaveData_ID1, Directory_Position1, Directory_Department1, FunUnit;

{$R *.dfm}

procedure TLeaveData.BB2_2Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    First;
    Insert;
  end;

  DBGridEh1.ReadOnly := false;
  BB5_2.Enabled := true;
  BB6_2.Enabled := true;
end;

procedure TLeaveData.BB3Click(Sender: TObject);
begin
  with QDetail do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  DBGridEh3.Columns[0].HideDuplicates := false;
  DBGridEh3.Columns[1].HideDuplicates := false;
  DBGridEh3.Columns[3].ButtonStyle:=cbsellipsis;
  DBGridEh3.Columns[4].ButtonStyle:=cbsellipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TLeaveData.BB3_2Click(Sender: TObject);
begin
  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;

  DBGridEh1.ReadOnly := false;
  BB5_2.Enabled := true;
  BB6_2.Enabled := true;
end;

procedure TLeaveData.BB4_2Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;

  BB5_2.Enabled := true;
  BB6_2.Enabled := true;
end;

procedure TLeaveData.BB5Click(Sender: TObject);
var
  i: integer;
begin
  QDetail.First;
  for i := 0 to QDetail.RecordCount-1 do
  begin
    case QDetail.UpdateStatus of
      usModified:
      begin
          UpdateDetail.Apply(ukModify);
      end;
    end;
    QDetail.Next;
  end;

  QDetail.Active := false;
  QDetail.LockType := ltReadOnly;
  DBGridEh3.Columns[0].HideDuplicates := true;
  DBGridEh3.Columns[1].HideDuplicates := true;
  DBGridEh3.Columns[3].ButtonStyle:=cbsNone;
  DBGridEh3.Columns[4].ButtonStyle:=cbsNone;
  QDetail.Active := true;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TLeaveData.BB5_2Click(Sender: TObject);
var
  i: integer;
begin
  Query2.First;
  for i := 0 to Query2.RecordCount-1 do
  begin
    case Query2.UpdateStatus of
      usInserted:
      begin
        if ((Query2.FieldByName('ID').AsString = '') OR (Query2.FieldByName('Type').AsString = '') OR (Query2.FieldByName('StartDate').AsString = '')) then
        begin
          Query2.Delete;
        end
        else begin
          Query2.Edit;
          Query2.FieldByName('UserID').AsString := main.UserID;
          UpdateSQL2.Apply(ukInsert);
        end;
      end;

      usModified:
      begin
        if (Query2.FieldByName('YN').AsString = '0') then
        begin
          UpdateSQL2.Apply(ukDelete);
        end
        else begin
            Query2.Edit;
            Query2.FieldByName('UserID').AsString := main.UserID;
            UpdateSQL2.Apply(ukModify);
        end;
      end;
    end;
    Query2.Next;
  end;

  QMaster.Active := false;
  QMaster.Active := true;
  QDetail.Active := false;
  QDetail.Active := true;
  Query2.Active := false;
  Query2.LockType := ltReadOnly;
  Query2.Active := true;
  DBGridEh1.ReadOnly := true;
  BB5_2.Enabled := false;
  BB6_2.Enabled := false;
end;

procedure TLeaveData.BB6Click(Sender: TObject);
begin
  with QDetail do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;

  DBGridEh3.Columns[0].HideDuplicates := true;
  DBGridEh3.Columns[1].HideDuplicates := true;
  DBGridEh3.Columns[3].ButtonStyle:=cbsNone;
  DBGridEh3.Columns[4].ButtonStyle:=cbsNone;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TLeaveData.BB6_2Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;

  DBGridEh1.ReadOnly := true;
  BB5_2.Enabled := false;
  BB6_2.Enabled := false;
end;

procedure TLeaveData.BB7Click(Sender: TObject);
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  i, j, SRow, ERow: integer;
  Factory: string;
begin
  try
    ExcelApp := CreateOleObject('Excel.Application');
    WorkBook := ExcelApp.Workbooks.Add;
  except
    Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  try
    QMaster.DisableControls;
    WorkSheet := ExcelApp.WorkSheets.Add;
    WorkSheet.Name := FormatDateTime('M月d日', DTP1.Date);
    ExcelApp.WorkSheets[FormatDateTime('M月d日', DTP1.Date)].Activate;
    ExcelApp.Columns.Font.Name := 'Arial';
    ExcelApp.Cells[1, 1] := FormatDateTime('M/d', DTP1.Date) + '億春外籍主管每日出勤報告';
    ExcelApp.Cells[1, 1].Font.Size := 14;
    ExcelApp.Cells[1, 1].HorizontalAlignment := -4108;
    ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[1, 13]].MergeCells := true;

    for i:=0 to DBGridEh2.Columns.Count-1 do
    begin
      ExcelApp.Cells[2, i+1] := DBGridEh2.Columns[i].Title.Caption;
    end;

    QMaster.First;
    j := 3;
    ExcelApp.Range['A3', 'A4'].MergeCells := true;
    ExcelApp.Range['A5', 'A6'].MergeCells := true;
    ExcelApp.Range['A7', 'B7'].MergeCells := true;
    while not QMaster.Eof do
    begin
      for i:=0 to DBGridEh2.Columns.Count-1 do
      begin
        if (i >= DBGridEh2.Columns.Count-2) then
          ExcelApp.Cells[j, i+1] := QMaster.FieldByName(DBGridEh2.Columns[i].FieldName).AsString + '%'
        else
          ExcelApp.Cells[j, i+1] := QMaster.FieldByName(DBGridEh2.Columns[i].FieldName).AsString;
      end;
      QMaster.Next;
      Inc(j);
    end;

    ExcelApp.Cells[j, 2] := '合計';
    ExcelApp.Cells[j, 3] := '=SUM(C3:C7)';
    ExcelApp.Cells[j, 4] := '=SUM(D3:D7)';
    ExcelApp.Cells[j, 5] := '=SUM(E3:E7)';
    ExcelApp.Cells[j, 6] := '=SUM(F3:F7)';
    ExcelApp.Cells[j, 7] := '=SUM(G3:G7)';
    ExcelApp.Cells[j, 8] := '=SUM(H3:H7)';
    ExcelApp.Cells[j, 9] := '=SUM(I3:I7)';
    ExcelApp.Cells[j, 10] := '=I8/C8';
    ExcelApp.Cells[j, 10].NumberFormatLocal := '0.0%';
    ExcelApp.Cells[j, 11] := '=(G8+H8)/C8';
    ExcelApp.Cells[j, 11].NumberFormatLocal := '0.0%';
    ExcelApp.Range['A1', 'K8'].Borders.Linestyle := 1;
    Inc(j);
    QMaster.First;
    QMaster.EnableControls;

    QDetail.DisableControls;
    QDetail.First;
    i := 10;
    SRow := 10;
    ERow := 10;
    Factory := QDetail.FieldByName('Factory').AsString;
    while not QDetail.Eof do
    begin
      if (QDetail.FieldByName('Factory').AsString = Factory) then
      begin
        ERow := i;
      end
      else begin
        ExcelApp.Range[ExcelApp.Cells[SRow, 1], ExcelApp.Cells[ERow, 1]].MergeCells := true;
        Factory := QDetail.FieldByName('Factory').AsString;
        SRow := i;
        ERow := i;
      end;

      Inc(i);
      QDetail.Next;
    end;
    ExcelApp.Range[ExcelApp.Cells[SRow, 1], ExcelApp.Cells[ERow, 1]].MergeCells := true;

    QDetail.First;
    i := 10;
    SRow := 10;
    ERow := 10;
    Factory := QDetail.FieldByName('FactoryS').AsString;
    while not QDetail.Eof do
    begin
      if (QDetail.FieldByName('FactoryS').AsString = Factory) then
      begin
        ERow := i;
      end
      else begin
        ExcelApp.Range[ExcelApp.Cells[SRow, 2], ExcelApp.Cells[ERow, 2]].MergeCells := true;
        Factory := QDetail.FieldByName('FactoryS').AsString;
        SRow := i;
        ERow := i;
      end;

      Inc(i);
      QDetail.Next;
    end;
    ExcelApp.Range[ExcelApp.Cells[SRow, 2], ExcelApp.Cells[ERow, 2]].MergeCells := true;

    for i:=0 to DBGridEh3.Columns.Count-1 do
    begin
      if (i <> 6) then
      begin
        if (i < 6) then
          ExcelApp.Cells[j, i+1] := DBGridEh3.Columns[i].Title.Caption
        else
          ExcelApp.Cells[j, i] := DBGridEh3.Columns[i].Title.Caption;
      end;
    end;
    Inc(j);

    QDetail.First;
    while not QDetail.Eof do
    begin
      for i:=0 to DBGridEh3.Columns.Count-1 do
      begin
        if (i <> 6) then
        begin
          if (i < 6) then
          begin
            if (Pos('返', QDetail.FieldByName('Leave').AsString) > 0) then
              ExcelApp.Cells[j, i+1].Interior.Color := $0099FFFF
            else if (QDetail.FieldByName('Leave').AsString <> '') then
              ExcelApp.Cells[j, i+1].Interior.Color := $0050D092;

            if (i = 0) then
            begin
              if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = '03') then
                ExcelApp.Cells[j, i+1] := '共同單位'
              else if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = '01') then
                ExcelApp.Cells[j, i+1] := 'A廠區'
              else if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = '02') then
                ExcelApp.Cells[j, i+1] := 'B廠區';
            end
            else if (i = 1) then
            begin
              if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = 'General') then
                ExcelApp.Cells[j, i+1] := '共同單位'
              else if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = 'DC') then
                ExcelApp.Cells[j, i+1] := '開發中心'
              else if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = 'A12') then
                ExcelApp.Cells[j, i+1] := 'A1,A2鞋廠'
              else if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = 'ARP') then
                ExcelApp.Cells[j, i+1] := 'R廠,印刷'
              else if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = 'B157') then
                ExcelApp.Cells[j, i+1] := 'B1,B5,B7鞋廠'
              else if (QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString = 'BRP') then
                ExcelApp.Cells[j, i+1] := 'B6大底,加工廠';
            end
            else if (i = 2) then
              ExcelApp.Cells[j, i+1] := '''' + QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString
            else
              ExcelApp.Cells[j, i+1] := QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString;
          end
          else begin
            if (Pos('返', QDetail.FieldByName('Leave').AsString) > 0) then
              ExcelApp.Cells[j, i].Interior.Color := $0099FFFF
            else if (QDetail.FieldByName('Leave').AsString <> '') then
              ExcelApp.Cells[j, i].Interior.Color := $0050D092;

            if (i = 9) then
              ExcelApp.Cells[j, i] := '''' + QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString
            else
              ExcelApp.Cells[j, i] := QDetail.FieldByName(DBGridEh3.Columns[i].FieldName).AsString;
          end;
        end;
      end;

      QDetail.Next;
      Inc(j);
    end;
    ExcelApp.Range['A9', 'M' + IntToStr(j-1)].Borders.Linestyle := 1;

    QDetail.First;
    QDetail.EnableControls;

    ExcelApp.Cells.Item[10, 7].Select;
    ExcelApp.ActiveWindow.FreezePanes := true;
    ExcelApp.Columns.Autofit;
    ShowMessage('Succeed');
    ExcelApp.Visible := True;
  except on ex: Exception do
    ShowMessage(ex.Message);
  end;
end;

procedure TLeaveData.Button1Click(Sender: TObject);
begin
  with QMaster do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Factory, Department, Total, TW, CN, PH,Others, Absence, BusinessTrip, Total-Absence-BusinessTrip AS Attendance,');
    SQL.Add('CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AttendanceRate,');
    SQL.Add('100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AbsenceRate FROM (');
    SQL.Add('  SELECT ''A廠區'' AS Factory, ''開發-鞋廠-幕僚-技術部'' AS Department, MAX(Total_TW) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,');
    SQL.Add('  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH, MAX(Total_Others) AS Others,');
    SQL.Add('  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS BusinessTrip FROM (');
    SQL.Add('    SELECT ISNULL(CASE WHEN Certificate.NID = ''TW'' THEN COUNT(Certificate.NID) END, 0) AS Total_TW,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''CN'' THEN COUNT(Certificate.NID) END, 0) AS Total_CN,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''PH'' THEN COUNT(Certificate.NID) END, 0) AS Total_PH,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID NOT IN (''TW'', ''CN'', ''PH'') THEN COUNT(Certificate.NID) END, 0) AS Total_Others ');
    SQL.Add('	FROM Certificate');
    SQL.Add('	left join Directory on Certificate.ID=Directory.ID');
    SQL.Add('	Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('    WHERE  IsNull(Certificate.Resigned,0)=0 and Directory.FactoryS IN (''009'',''General'', ''003'',''004'',''002'',''DC'',''006'',''012'') and Directory.FID = ''01'' and Certificate.NID<>''VN'' ');
    SQL.Add('    GROUP BY Certificate.NID');
    SQL.Add('  ) AS Nationality');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ''A廠區'' AS Factory, ''開發-鞋廠-幕僚-技術部'' AS Department, SUM(Absence) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM (');
    SQL.Add('      SELECT');
    SQL.Add('      CASE WHEN Type <> ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS Absence,');
    SQL.Add('      CASE WHEN Type = ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS BusinessTrip FROM LeaveData');
    SQL.Add('      LEFT JOIN Directory ON Directory.ID = LeaveData.ID');
    SQL.Add('      WHERE CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''') BETWEEN StartDate AND CASE WHEN ISNULL(EndDate, '''') = '''' THEN CONVERT(DATETIME, ''3000/01/01'') ELSE EndDate END');
    SQL.Add('      and Directory.FactoryS IN (''009'',''General'', ''003'',''004'',''002'',''DC'',''006'',''012'') and Directory.FID = ''01''');
    SQL.Add('      GROUP BY Type');
    SQL.Add('    ) AS LeaveData');
    SQL.Add('  ) AS LeaveData ON 1 = 1');
    SQL.Add('  GROUP BY Absence, BusinessTrip');
    SQL.Add(') AS AttendanceData');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT Factory, Department, Total, TW, CN, PH,Others, Absence, BusinessTrip, Total-Absence-BusinessTrip AS Attendance,');
    SQL.Add('CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AttendanceRate,');
    SQL.Add('100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AbsenceRate FROM (');
    SQL.Add('  SELECT ''A廠區'' AS Factory, ''化工'' AS Department, MAX(Total_TW) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,');
    SQL.Add('  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH, MAX(Total_Others) AS Others,');
    SQL.Add('  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS BusinessTrip FROM (');
    SQL.Add('    SELECT ISNULL(CASE WHEN Certificate.NID = ''TW'' THEN COUNT(Certificate.NID) END, 0) AS Total_TW,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''CN'' THEN COUNT(Certificate.NID) END, 0) AS Total_CN,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''PH'' THEN COUNT(Certificate.NID) END, 0) AS Total_PH,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID NOT IN (''TW'', ''CN'', ''PH'') THEN COUNT(Certificate.NID) END, 0) AS Total_Others ');
    SQL.Add('	FROM Certificate');
    SQL.Add('	left join Directory on Certificate.ID=Directory.ID');
    SQL.Add('	Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('    WHERE IsNull(Certificate.Resigned,0)=0 and Directory.FactoryS IN (''007'') and Directory.FID = ''01''  and Certificate.NID<>''VN''  ');
    SQL.Add('	   GROUP BY Certificate.NID');
    SQL.Add('  ) AS Nationality');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ''A廠區'' AS Factory, ''化工'' AS Department, SUM(Absence) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM (');
    SQL.Add('      SELECT');
    SQL.Add('      CASE WHEN Type <> ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS Absence,');
    SQL.Add('      CASE WHEN Type = ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS BusinessTrip FROM LeaveData');
    SQL.Add('      LEFT JOIN Directory ON Directory.ID = LeaveData.ID');
    SQL.Add('      WHERE CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''') BETWEEN StartDate AND CASE WHEN ISNULL(EndDate, '''') = '''' THEN CONVERT(DATETIME, ''3000/01/01'') ELSE EndDate END');
    SQL.Add('      and Directory.FactoryS IN (''007'') and Directory.FID = ''01''');
    SQL.Add('      GROUP BY Type');
    SQL.Add('    ) AS LeaveData');
    SQL.Add('  ) AS LeaveData ON 1 = 1');
    SQL.Add('  GROUP BY Absence, BusinessTrip');
    SQL.Add(') AS AttendanceData');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT Factory, Department, Total, TW, CN, PH,Others, Absence, BusinessTrip, Total-Absence-BusinessTrip AS Attendance,');
    SQL.Add('CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AttendanceRate,');
    SQL.Add('100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AbsenceRate FROM (');
    SQL.Add('  SELECT ''B廠區'' AS Factory, ''含共同單位/廠務'' AS Department, MAX(Total_TW) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,');
    SQL.Add('  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH, MAX(Total_Others) AS Others,');
    SQL.Add('  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS BusinessTrip FROM (');
    SQL.Add('    SELECT ISNULL(CASE WHEN Certificate.NID = ''TW'' THEN COUNT(Certificate.NID) END, 0) AS Total_TW,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''CN'' THEN COUNT(Certificate.NID) END, 0) AS Total_CN,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''PH'' THEN COUNT(Certificate.NID) END, 0) AS Total_PH,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID NOT IN (''TW'', ''CN'', ''PH'') THEN COUNT(Certificate.NID) END, 0) AS Total_Others ');
    SQL.Add('	FROM Certificate');
    SQL.Add('	left join Directory on Certificate.ID=Directory.ID');
    SQL.Add('	Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('    WHERE IsNull(Certificate.Resigned,0)=0 and Directory.FactoryS IN (''005'',''General'') and Directory.FID = ''02'' and Certificate.NID<>''VN''  ');
    SQL.Add('	   GROUP BY Certificate.NID');
    SQL.Add('  ) AS Nationality');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ''B廠區'' AS Factory, ''含共同單位/廠務'' AS Department, SUM(Absence) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM (');
    SQL.Add('      SELECT');
    SQL.Add('      CASE WHEN Type <> ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS Absence,');
    SQL.Add('      CASE WHEN Type = ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS BusinessTrip FROM LeaveData');
    SQL.Add('      LEFT JOIN Directory ON Directory.ID = LeaveData.ID');
    SQL.Add('      WHERE CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''') BETWEEN StartDate AND CASE WHEN ISNULL(EndDate, '''') = '''' THEN CONVERT(DATETIME, ''3000/01/01'') ELSE EndDate END');
    SQL.Add('      and Directory.FactoryS IN (''005'',''General'') and Directory.FID = ''02''');
    SQL.Add('      GROUP BY Type');
    SQL.Add('    ) AS LeaveData');
    SQL.Add('  ) AS LeaveData ON 1 = 1');
    SQL.Add('  GROUP BY Absence, BusinessTrip');
    SQL.Add(') AS AttendanceData');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT Factory, Department, Total, TW, CN, PH,Others,Absence, BusinessTrip, Total-Absence-BusinessTrip AS Attendance,');
    SQL.Add('CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AttendanceRate,');
    SQL.Add('100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AbsenceRate FROM (');
    SQL.Add('  SELECT ''B廠區'' AS Factory, ''量產（含大底/大車)'' AS Department, MAX(Total_TW) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,');
    SQL.Add('  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH, MAX(Total_Others) AS Others,');
    SQL.Add('  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS BusinessTrip FROM (');
    SQL.Add('    SELECT ISNULL(CASE WHEN Certificate.NID = ''TW'' THEN COUNT(Certificate.NID) END, 0) AS Total_TW,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''CN'' THEN COUNT(Certificate.NID) END, 0) AS Total_CN,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''PH'' THEN COUNT(Certificate.NID) END, 0) AS Total_PH,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID NOT IN (''TW'', ''CN'', ''PH'') THEN COUNT(Certificate.NID) END, 0) AS Total_Others ');
    SQL.Add('	FROM Certificate');
    SQL.Add('	left join Directory on Certificate.ID=Directory.ID');
    SQL.Add('	Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('    WHERE IsNull(Certificate.Resigned,0)=0  and  Directory.FactoryS IN (''011'') and Directory.FID = ''02''  and Certificate.NID<>''VN''  ');
    SQL.Add('	   GROUP BY Certificate.NID');
    SQL.Add('  ) AS Nationality');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ''B廠區'' AS Factory, ''量產（含大底/大車)'' AS Department, SUM(Absence) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM (');
    SQL.Add('      SELECT');
    SQL.Add('      CASE WHEN Type <> ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS Absence,');
    SQL.Add('      CASE WHEN Type = ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS BusinessTrip FROM LeaveData');
    SQL.Add('      LEFT JOIN Directory ON Directory.ID = LeaveData.ID');
    SQL.Add('      WHERE CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''') BETWEEN StartDate AND CASE WHEN ISNULL(EndDate, '''') = '''' THEN CONVERT(DATETIME, ''3000/01/01'') ELSE EndDate END');
    SQL.Add('      and  Directory.FactoryS IN (''011'') and Directory.FID = ''02''  ');
    SQL.Add('      GROUP BY Type');
    SQL.Add('    ) AS LeaveData');
    SQL.Add('  ) AS LeaveData ON 1 = 1');
    SQL.Add('  GROUP BY Absence, BusinessTrip');
    SQL.Add(') AS AttendanceData');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT Factory, Department, Total, TW, CN, PH,Others, Absence, BusinessTrip, Total-Absence-BusinessTrip AS Attendance,');
    SQL.Add('CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AttendanceRate,');
    SQL.Add('100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AbsenceRate FROM (');
    SQL.Add('  SELECT ''行政中心'' AS Factory, ''行政中心-總公司'' AS Department, MAX(Total_TW) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,');
    SQL.Add('  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH, MAX(Total_Others) AS Others,');
    SQL.Add('  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS BusinessTrip FROM (');
    SQL.Add('    SELECT ISNULL(CASE WHEN Certificate.NID = ''TW'' THEN COUNT(Certificate.NID) END, 0) AS Total_TW,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''CN'' THEN COUNT(Certificate.NID) END, 0) AS Total_CN,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''PH'' THEN COUNT(Certificate.NID) END, 0) AS Total_PH,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID NOT IN (''TW'', ''CN'', ''PH'') THEN COUNT(Certificate.NID) END, 0) AS Total_Others ');
    SQL.Add('	FROM Certificate');
    SQL.Add('	left join Directory on Certificate.ID=Directory.ID');
    SQL.Add('	Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('    WHERE  IsNull(Certificate.Resigned,0)=0 and  Directory.FactoryS IN (''001'', ''010'') and Directory.FID IN (''04'', ''05'',''06'') and Certificate.NID<>''VN''  ');
    SQL.Add('	   GROUP BY Certificate.NID');
    SQL.Add('  ) AS Nationality');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ''行政中心'' AS Factory, ''行政中心-總公司'' AS Department, SUM(Absence) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM (');
    SQL.Add('      SELECT');
    SQL.Add('      CASE WHEN Type <> ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS Absence,');
    SQL.Add('      CASE WHEN Type = ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS BusinessTrip FROM LeaveData');
    SQL.Add('      LEFT JOIN Directory ON Directory.ID = LeaveData.ID');
    SQL.Add('      WHERE CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' ) BETWEEN StartDate AND CASE WHEN ISNULL(EndDate, '''') = '''' THEN CONVERT(DATETIME, ''3000/01/01'') ELSE EndDate END');
    SQL.Add('      and  Directory.FactoryS IN (''001'', ''010'') and Directory.FID IN (''04'', ''05'',''06'')');
    SQL.Add('      GROUP BY Type');
    SQL.Add('    ) AS LeaveData');
    SQL.Add('  ) AS LeaveData ON 1 = 1');
    SQL.Add('  GROUP BY Absence, BusinessTrip');
    SQL.Add(') AS AttendanceData');

     //10-01-2025
    SQL.Add('UNION ALL');
    SQL.Add('SELECT Factory, Department, Total, TW, CN, PH,Others, Absence, BusinessTrip, Total-Absence-BusinessTrip AS Attendance,');
    SQL.Add('CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AttendanceRate,');
    SQL.Add('100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) AS AbsenceRate FROM (');
    SQL.Add('  SELECT ''C廠區'' AS Factory, ''開發-鞋廠-幕僚-技術部'' AS Department, MAX(Total_TW) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,');
    SQL.Add('  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH, MAX(Total_Others) AS Others,');
    SQL.Add('  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS BusinessTrip FROM (');
    SQL.Add('    SELECT ISNULL(CASE WHEN Certificate.NID = ''TW'' THEN COUNT(Certificate.NID) END, 0) AS Total_TW,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''CN'' THEN COUNT(Certificate.NID) END, 0) AS Total_CN,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID = ''PH'' THEN COUNT(Certificate.NID) END, 0) AS Total_PH,');
    SQL.Add('    ISNULL(CASE WHEN Certificate.NID NOT IN (''TW'', ''CN'', ''PH'') THEN COUNT(Certificate.NID) END, 0) AS Total_Others ');
    SQL.Add('	FROM Certificate');
    SQL.Add('	left join Directory on Certificate.ID=Directory.ID');
    SQL.Add('	Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('    WHERE  IsNull(Certificate.Resigned,0)=0 and Directory.FactoryS IN (''012'',''009'',''General'', ''003'',''004'',''002'',''DC'',''006'') and Directory.FID = ''07'' and Certificate.NID<>''VN'' ');
    SQL.Add('	   GROUP BY Certificate.NID');
    SQL.Add('  ) AS Nationality');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT ''C廠區'' AS Factory, ''開發-鞋廠-幕僚-技術部'' AS Department, SUM(Absence) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM (');
    SQL.Add('      SELECT');
    SQL.Add('      CASE WHEN Type <> ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS Absence,');
    SQL.Add('      CASE WHEN Type = ''出差'' THEN COUNT(DISTINCT LeaveData.ID) END AS BusinessTrip FROM LeaveData');
    SQL.Add('      LEFT JOIN Directory ON Directory.ID = LeaveData.ID');
    SQL.Add('      WHERE CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' ) BETWEEN StartDate AND CASE WHEN ISNULL(EndDate, '''') = '''' THEN CONVERT(DATETIME, ''3000/01/01'') ELSE EndDate END');
    SQL.Add('      and Directory.FactoryS IN (''012'',''009'',''General'', ''003'',''004'',''002'',''DC'',''006'') and Directory.FID = ''07'' ');
    SQL.Add('      GROUP BY Type');
    SQL.Add('    ) AS LeaveData');
    SQL.Add('  ) AS LeaveData ON 1 = 1');
    SQL.Add('  GROUP BY Absence, BusinessTrip');
    SQL.Add(') AS AttendanceData');
    //FuncObj.WriteErrorLog(sql.Text);
    //showmessage(sql.Text);
    Active := true;
  end;

  with QDetail do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Directory.ID,Directory.DID, Directory_Department.Name as Department,Directory.PID, Directory_Position.Name as Position, Certificate.Name, Directory.Phone, Directory.Phone2, Directory.TelExt, Directory.Email,');
    SQL.Add('     Certificate.NID,Directory_Nationality.Name as Nationality,Directory.FID, Directory_Factory.Name as Factory,');
    SQL.Add('     Directory.FactoryS, LeaveData.Leave, LeaveData.BusinessTrip, LeaveData.Remark, Directory.Sequence ');
    SQL.Add('FROM Directory');
    SQL.Add('Left join Certificate on Certificate.ID=Directory.ID');
    SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
    SQL.Add('Left join Directory_FactoryS on Directory_FactoryS.FIDS=Directory.FactoryS');
    SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID');
    SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID');
    SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ID, CASE WHEN Type <> ''出差'' THEN CONVERT(VARCHAR, StartDate, 111) + CASE WHEN ISNULL(EndDate, '''') <> '''' THEN '' ~ '' + CONVERT(VARCHAR, EndDate, 111) ELSE '''' END END + '' '' + Memo AS Leave,');
    SQL.Add('  CASE WHEN Type = ''出差'' THEN CONVERT(VARCHAR, StartDate, 111) + CASE WHEN ISNULL(EndDate, '''') <> '''' THEN '' ~ '' + CONVERT(VARCHAR, EndDate, 111) ELSE '''' END END AS BusinessTrip, Remark FROM LeaveData');
    SQL.Add('  WHERE CONVERT(DATETIME, ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' ) BETWEEN StartDate AND CASE WHEN ISNULL(EndDate, '''') = '''' THEN CONVERT(DATETIME, ''3000/01/01'') ELSE EndDate END');
    SQL.Add(') AS LeaveData ON LeaveData.ID = Directory.ID');
    SQL.Add('WHERE 1=1 ');    //and Directory.FactoryS is not null
    if ED_ID1.Text<>'' then
    SQL.Add(' and Certificate.ID like '''+ED_ID1.Text+'%'' ');
    if Edit1.Text<>'' then
    SQL.Add(' and Certificate.Name like '''+Edit1.Text+'%'' ');
    if Edit3.Text<>'' then
    SQL.Add(' and Directory_Factory.Name like '''+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
    SQL.Add(' and Directory_Department.Name like '''+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
    SQL.Add(' and Directory_Position.Name like '''+Edit5.Text+'%'' ');
    if Edit6.Text<>'' then
    SQL.Add(' and Directory_FactoryS.Name like '''+Edit6.Text+'%'' ');
    //國籍
    if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
    if RB13.Checked=true then  SQL.Add(' and Certificate.NID=''CN'' ');
    if RB14.Checked=true then  SQL.Add(' and Certificate.NID=''PH'' ');
    if RB15.Checked=true then  SQL.Add(' and Certificate.NID=''VN'' ');
    if RB16.Checked=true then  SQL.Add(' and Certificate.NID=''IN'' ');
    //離職
    if RB22.Checked=true then  SQL.Add(' and IsNull(Certificate.Resigned,0)=0 ');
    if RB23.Checked=true then  SQL.Add(' and IsNull(Certificate.Resigned,0)=1 ');
    if CheckBox1.Checked=true then SQL.Add(' and Certificate.NID<>''VN'' ');

    SQL.Add('ORDER BY  Directory.Sequence');
    //FuncObj.WriteErrorLog(sql.Text);
    //showmessage(Sql.Text);
    Active := true;
  end;

  BB3.Enabled := true;
end;

procedure TLeaveData.Button2Click(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, Name FROM Certificate WHERE ID = ''' + ED_ID.Text + '''');
    Active := true;
  end;

  if (QSearch.RecordCount <> 0) then
  begin
    with Query2 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT LeaveData.*, Certificate.Name FROM LeaveData');
      SQL.Add('LEFT JOIN Certificate ON Certificate.ID = LeaveData.ID');
      SQL.Add('WHERE LeaveData.ID = ''' + ED_ID.Text + '''');
      SQL.Add('ORDER BY StartDate DESC');
      Active := true;
    end;

    BB2_2.Enabled := true;
    BB3_2.Enabled := true;
    BB4_2.Enabled := true;
  end
  else begin
    Query2.Active := false;
    BB2_2.Enabled := false;
    BB3_2.Enabled := false;
    BB4_2.Enabled := false;
  end;
end;

procedure TLeaveData.Button3Click(Sender: TObject);
begin
  LeaveData_ID := TLeaveData_ID.Create(Self);
  LeaveData_ID.Show;
end;

procedure TLeaveData.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (Query2.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TLeaveData.DBGridEh2GetFooterParams(Sender: TObject; DataCol,
  Row: Integer; Column: TColumnEh; AFont: TFont; var Background: TColor;
  var Alignment: TAlignment; State: TGridDrawState; var Text: string);
begin
  if (Column.Index = 10) then
  begin
    if (DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[2]) <> '0') then
    begin
      Text := FloatToStr(StrToInt(DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[9])) * 1000 DIV StrToInt(DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[2])) / 10);
      if (Pos('.', Text) > 0) then
        Text := Text + '%'
      else
        Text := Text + '.0%';
    end
    else begin
      Text := '0.0%';
    end;
  end
  else if (Column.Index = 11) then
  begin
    if (DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[2]) <> '0') then
    begin
      Text := FloatToStr((StrToInt(DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[7])) + StrToInt(DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[8]))) * 1000 DIV StrToInt(DBGridEh2.GetFooterValue(0, DBGridEh2.Columns[2])) / 10);
      if (Pos('.', Text) > 0) then
        Text := Text + '%'
      else
        Text := Text + '.0%';
    end
    else begin
      Text := '0.0%';
    end;
  end;
end;

procedure TLeaveData.DBGridEh3Columns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (Text = '共同單位') then
    QDetail.FieldByName('Factory').Value := 'G'
  else if (Text = '開發中心') then
    QDetail.FieldByName('Factory').Value := 'A'
  else if (Text = 'A1,A2鞋廠') then
    QDetail.FieldByName('Factory').Value := 'A'
  else if (Text = 'R廠,印刷') then
    QDetail.FieldByName('Factory').Value := 'A'
  else if (Text = 'B1,B5,B7鞋廠') then
    QDetail.FieldByName('Factory').Value := 'B'
  else if (Text = 'B6大底,加工廠') then
    QDetail.FieldByName('Factory').Value := 'B';
end;

procedure TLeaveData.DBGridEh3DblClick(Sender: TObject);
begin
  {
  PageControl1.ActivePageIndex := 1;
  ED_ID.Text := QDetail.FieldByName('ID').AsString;
  ED_Name.Text := QDetail.FieldByName('Name').AsString;
  Button2Click(Nil);
  }
end;

procedure TLeaveData.DBGridEh3EditButtonClick(Sender: TObject);
begin
  if  DBGridEh3.SelectedField.FieldName='Position' then
  begin
    Directory_Position:=TDirectory_Position.create(self);
    Directory_Position.ParentForm:='LeaveData';
    Directory_Position.ed_NID.Text:=QDetail.FieldByName('NID').AsString;
    Directory_Position.show;
  end;
  if  DBGridEh3.SelectedField.FieldName='Department' then
  begin
    Directory_Department:=TDirectory_Department.create(self);
    Directory_Department.ParentForm:='LeaveData';
    Directory_Department.show;
  end;
end;

procedure TLeaveData.DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

  if (Column.Index > 1) then
  begin
    if (Pos('返', QDetail.FieldByName('Leave').AsString) > 0) then
      Background := $0099FFFF
    else if (QDetail.FieldByName('Leave').AsString <> '') then
      Background := $0050D092;
  end;

end;

procedure TLeaveData.DTP1Change(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TLeaveData.ED_IDChange(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, Name FROM Certificate WHERE ID = ''' + ED_ID.Text + '''');
    Active := true;

    if (RecordCount > 0) then
      ED_Name.Text := FieldByName('Name').AsString
    else
      ED_Name.Text := '';

    Button2Click(Nil);
  end;
end;

procedure TLeaveData.ED_IDKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    ED_IDChange(Nil);
end;

procedure TLeaveData.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;

    eclApp.Cells(1,1):='NO';
    for   i:=1   to   QDetail.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=QDetail.fields[i-1].FieldName;
    end;
    QDetail.First;
    j:=2;
    while   not  QDetail.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   QDetail.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=QDetail.Fields[i-1].AsString;
      end;
      QDetail.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TLeaveData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLeaveData.FormCreate(Sender: TObject);
begin
  //廠區
  with QSearch do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select FID,Name from Directory_Factory order by FID ');
    Active:=true;
    while not Eof do
    begin
      DBGridEh3.Columns[0].KeyList.add(FieldByName('FID').AsString);
      DBGridEh3.Columns[0].PickList.add(FieldByName('Name').AsString);
      Next;
    end;
    Active:=false;
  end;
  //廠區
  with QSearch do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select FIDS,Name from Directory_FactoryS order by FIDS ');
    Active:=true;
    while not Eof do
    begin
      DBGridEh3.Columns[1].KeyList.add(FieldByName('FIDS').AsString);
      DBGridEh3.Columns[1].PickList.add(FieldByName('Name').AsString);
      Next;
    end;
    Active:=false;
  end;
  //國籍
  with QSearch do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select NID,Name from Directory_Nationality  order by NID ');
    Active:=true;
    while not Eof do
    begin
      DBGridEh3.Columns[6].KeyList.add(FieldByName('NID').AsString);
      DBGridEh3.Columns[6].PickList.add(FieldByName('Name').AsString);
      Next;
    end;
    Active:=false;
  end;
  PageControl1.ActivePageIndex := 0;
  DTP1.Date := Date();
  Button1Click(Nil);
end;

procedure TLeaveData.FormDestroy(Sender: TObject);
begin
  LeaveData := Nil;
end;

procedure TLeaveData.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TLeaveData.OrderbyN1Click(Sender: TObject);
var i,Sequence:integer;
begin
  //
  if RB11.Checked=false then
  begin
    Showmessage('請先顯示全部名單Vui lòng hiển thị danh sách đầy đủ trước');
    Exit;
  end;
  Sequence:=QDetail.FieldByName('Sequence').Value;
  Sequence:=Sequence+1;
  QDetail.Next;
  while not QDetail.Eof do
  begin
    with QSearch do
    begin
       Sequence:=Sequence+1;
       Active:=false;
       SQL.Clear;
       SQL.Add('Update Directory Set Sequence='+inttostr(Sequence)+' where ID='''+QDetail.FieldByName('ID').AsString+''' ');
       ExecSQL();
       Active:=false;
    end;
    QDetail.Next;
  end;
  //
  QDetail.Active:=false;
  QDetail.Active:=true;
end;

procedure TLeaveData.OrderbyN2Click(Sender: TObject);
var i,Sequence:integer;
begin
  if RB11.Checked=false then
  begin
    Showmessage('請先顯示全部名單Vui lòng hiển thị danh sách đầy đủ trước');
    Exit;
  end;
  //
  Sequence:=QDetail.FieldByName('Sequence').Value;
  Sequence:=Sequence-1;
  QDetail.Next;
  while not QDetail.Eof do
  begin
    with QSearch do
    begin
       Sequence:=Sequence+1;
       Active:=false;
       SQL.Clear;
       SQL.Add('Update Directory Set Sequence=Sequence-1 where ID='''+QDetail.FieldByName('ID').AsString+''' ');
       ExecSQL();
       Active:=false;
    end;
    QDetail.Next;
  end;
  //
  QDetail.Active:=false;
  QDetail.Active:=true;
end;

procedure TLeaveData.PageControl1Change(Sender: TObject);
begin
  ED_ID.Text := QDetail.FieldByName('ID').AsString;
  ED_Name.Text := QDetail.FieldByName('Name').AsString;
  Button2Click(Nil);
end;

procedure TLeaveData.Query2NewRecord(DataSet: TDataSet);
begin
  Query2.FieldByName('ID').Value := ED_ID.Text;
  Query2.FieldByName('Name').Value := ED_Name.Text;
end;

procedure TLeaveData.Orderby3Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
begin
  if OpenDialog1.Execute() then
  begin
    tmpList:=TStringlist.Create;
    tmpList.LoadFromFile(OpenDialog1.FileName);
    if tmpList.Count>0  then
    begin
      with QSearch do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update Directory Set Sequence=999 ');
        ExecSQL;
      end;
      for i:=0 to tmpList.Count-1 do
      begin
        with QSearch do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Update Directory Set Sequence='+inttostr(i)+' where ID in (Select ID from Certificate where Name='''+tmpList[i]+''') ');
          //funcObj.WriteErrorLog(sql.Text);
          ExecSQL;
        end;
      end;
    end;
    tmpList.Free;
    Showmessage('Finish');
  end;
end;

end.
