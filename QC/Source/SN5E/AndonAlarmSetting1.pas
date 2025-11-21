unit AndonAlarmSetting1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj;

type
  TAndonAlarmSetting = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_DepNo: TEdit;
    Button1: TButton;
    Label2: TLabel;
    ED_DepName: TEdit;
    Panel2: TPanel;
    B_Exit: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    QAndon: TQuery;
    UP_Andon: TUpdateSQL;
    Button2: TButton;
    QAndonDepNo: TStringField;
    QAndonGXLB: TStringField;
    QAndonDefect: TStringField;
    QAndonADLine: TStringField;
    QAndonADMachine: TStringField;
    QAndonDCBox: TStringField;
    QAndonToken: TStringField;
    QAndonUserID: TStringField;
    QAndonUserDate: TDateTimeField;
    QAndonYN: TStringField;
    QAndonDepName: TStringField;
    QAndonYWSM: TStringField;
    QAndonZWSM: TStringField;
    Label3: TLabel;
    ED_DefectID: TEdit;
    Label4: TLabel;
    ED_DefectName: TEdit;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure B_ExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QAndonAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AndonAlarmSetting: TAndonAlarmSetting;

implementation

uses
  main1, funUnit, AndonDepartment1, AndonDefect1;

{$R *.dfm}

procedure TAndonAlarmSetting.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TAndonAlarmSetting.FormDestroy(Sender: TObject);
begin
  AndonAlarmSetting := Nil;
end;

procedure TAndonAlarmSetting.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TAndonAlarmSetting.Button1Click(Sender: TObject);
begin
  with QAndon do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT QC_Andon.DepNo, BDepartment.DepName, QC_Andon.GXLB, QC_Andon.Defect, QCBLYY.YWSM, QCBLYY.ZWSM,');
    SQL.Add('QC_Andon.ADLine, QC_Andon.ADMachine, QC_Andon.DCBox, QC_Andon.Token, QC_Andon.UserID, QC_Andon.UserDate, QC_Andon.YN FROM QC_Andon');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = QC_Andon.DepNo');
    SQL.Add('LEFT JOIN QCBLYY ON QCBLYY.YYBH = QC_Andon.Defect');
    SQL.Add('WHERE 1 = 1');
    if (ED_DepNo.Text <> '') then
      SQL.Add('AND QC_Andon.DepNo LIKE ''' + ED_DepNo.Text + '%''');
    if (ED_DepName.Text <> '') then
      SQL.Add('AND BDepartment.DepName LIKE ''' + ED_DepName.Text + '%''');
    if (ED_DefectID.Text <> '') then
      SQL.Add('AND QC_Andon.Defect LIKE ''' + ED_DefectID.Text + '%''');
    if (ED_DefectName.Text <> '') then
      SQL.Add('AND (QCBLYY.YWSM LIKE ''%' + ED_DefectName.Text + '%'' OR QCBLYY.ZWSM LIKE ''%' + ED_DefectName.Text + '%'')');
    SQL.Add('ORDER BY BDepartment.DepName, QC_Andon.Defect');
    Active := true;
  end;
end;

procedure TAndonAlarmSetting.BB2Click(Sender: TObject);
begin
  with QAndon do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh1.Columns[0].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TAndonAlarmSetting.BB3Click(Sender: TObject);
begin
  with QAndon do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TAndonAlarmSetting.BB4Click(Sender: TObject);
begin
  with QAndon do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh1.Columns[0].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TAndonAlarmSetting.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QAndon.First;
    for i := 1 to QAndon.RecordCount do
    begin
      case QAndon.UpdateStatus of
        usInserted:
        begin
          if (QAndon.FieldByName('DepNo').IsNull) OR (QAndon.FieldByName('GXLB').IsNull) OR (QAndon.FieldByName('Defect').IsNull) OR (QAndon.FieldByName('ADLine').IsNull) OR (QAndon.FieldByName('ADMachine').IsNull) then
          begin
            QAndon.Delete;
          end
          else begin
            QAndon.Edit;
            QAndon.FieldByName('DCBox').Value := '1';
            QAndon.FieldByName('Token').Value := 'nLiTOr71R1sY106';
            QAndon.FieldByName('USERID').Value := main.Edit1.Text;
            UP_Andon.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QAndon.FieldByName('YN').Value = 0) then
          begin
            UP_Andon.Apply(ukDelete);
          end
          else if (QAndon.FieldByName('DepNo').AsString <> '') AND (QAndon.FieldByName('GXLB').AsString <> '') AND (QAndon.FieldByName('Defect').AsString <> '') AND (QAndon.FieldByName('ADLine').AsString <> '') AND (QAndon.FieldByName('ADMachine').AsString <> '') then
          begin
            QAndon.Edit;
            QAndon.FieldByName('UserID').Value := main.Edit1.text;
            UP_Andon.Apply(ukModify);
          end;
        end;
      end;

      QAndon.Next;
    end;

    QAndon.Active := false;
    QAndon.CachedUpdates := false;
    QAndon.RequestLive := false;
    QAndon.Active := true;
    DBGridEh1.Columns[0].ButtonStyle := cbsNone;
    DBGridEh1.Columns[2].ButtonStyle := cbsNone;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TAndonAlarmSetting.BB6Click(Sender: TObject);
begin
  with QAndon do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh1.Columns[0].ButtonStyle := cbsNone;
  DBGridEh1.Columns[2].ButtonStyle := cbsNone;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TAndonAlarmSetting.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TAndonAlarmSetting.QAndonAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TAndonAlarmSetting.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QAndon.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TAndonAlarmSetting.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QAndon.Active) then
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

      QAndon.First;
      j := 2;
      while not QAndon.Eof do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := QAndon.FieldByName(DBGridEh1.Columns[i].FieldName).Value;
        end;
        QAndon.Next;
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

procedure TAndonAlarmSetting.DBGridEh1Columns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (AndonDepartment <> Nil) then
    AndonDepartment.Close;
  AndonDepartment := TAndonDepartment.Create(Self);
  AndonDepartment.Show;
end;

procedure TAndonAlarmSetting.FormCreate(Sender: TObject);
begin
  BB1Click(Nil);
end;

procedure TAndonAlarmSetting.DBGridEh1Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (AndonDefect <> Nil) then
    AndonDefect.Close;
  AndonDefect := TAndonDefect.Create(Self);
  AndonDefect.Show;
end;

end.
