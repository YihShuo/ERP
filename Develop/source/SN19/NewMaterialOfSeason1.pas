unit NewMaterialOfSeason1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBTables,
  Menus, ComObj, ExcelXP;

type
  TNewMaterialOfSeason = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    TempQry: TQuery;
    Query1JiJie: TStringField;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TIntegerField;
    Query1TempCLBH: TStringField;
    CB1: TComboBox;
    BB8: TButton;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query2: TQuery;
    Splitter1: TSplitter;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    ShowRelativeShoes1: TMenuItem;
    Query1GSBH: TStringField;
    Query2CGNO: TStringField;
    Query2CLBH: TStringField;
    Query2ZSBH: TStringField;
    Query2CGDate: TDateTimeField;
    Query2SEASON: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB1Change(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ShowRelativeShoes1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    InsertMatList: string;
    { Public declarations }
  end;

var
  NewMaterialOfSeason: TNewMaterialOfSeason;

implementation

uses main1, NewMaterial1, MaterialList1, RelativeShoes1;

{$R *.dfm}

procedure TNewMaterialOfSeason.FormCreate(Sender: TObject);
begin
  InsertMatList := '';
  
  with TempQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT JiJie FROM kfxxzl');
    SQL.Add('LEFT JOIN kfzl_GS ON kfzl_GS.KHBH = kfxxzl.KHDH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ''S'' AS Season, 1 AS RowID');
    SQL.Add('  UNION ALL SELECT ''U'', 2');
    SQL.Add('  UNION ALL SELECT ''F'', 3');
    SQL.Add('  UNION ALL SELECT ''H'', 4');
    SQL.Add(') AS SeasonID ON kfxxzl.JiJie LIKE ''%'' + SeasonID.Season');
    SQL.Add('WHERE FD IS NOT NULL AND kfzl_GS.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND RIGHT(LEFT(JiJie, 2), 2) BETWEEN ''16'' AND ''50''');
    SQL.Add('AND LEN(JiJie) < 4');
    SQL.Add('GROUP BY JiJie, SeasonID.RowID');
    SQL.Add('ORDER BY CONVERT(Int, SUBSTRING(JiJie, 1, 2)) DESC, SeasonID.RowID DESC');
    Active := true;

    while not Eof do
    begin
      CB1.Items.Add(FieldByName('JiJie').AsString);
      Next;
    end;
  end;
end;

procedure TNewMaterialOfSeason.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('You have to save the data first.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TNewMaterialOfSeason.FormDestroy(Sender: TObject);
begin
  NewMaterialOfSeason := Nil;
end;

procedure TNewMaterialOfSeason.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TNewMaterialOfSeason.Button1Click(Sender: TObject);
begin
  if (CB1.Text <> '') then
  begin
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT NewMaterialOfSeason.*, CLZL.ywpm, CLZL.zwpm, 1 AS YN, NewMaterialOfSeason.CLBH AS TempCLBH, GSBH FROM NewMaterialOfSeason');
      SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = NewMaterialOfSeason.CLBH');
      SQL.Add('WHERE NewMaterialOfSeason.JiJie = ''' + CB1.Text +  ''' AND NewMaterialOfSeason.CLBH LIKE ''' + Edit1.Text + '%''');
      SQL.Add('AND GSBH = ''' + main.Edit2.Text + '''');
      Active := true;
    end;
    Query2.Active := true;

    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
    BB8.Enabled := true;
  end;
end;

procedure TNewMaterialOfSeason.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
    FieldByName('JiJie').Value := Edit1.Text;
  end;

  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TNewMaterialOfSeason.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TNewMaterialOfSeason.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TNewMaterialOfSeason.BB5Click(Sender: TObject);
var
  SaveDate: TDate;
begin
  try
    with TempQry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT GETDATE() AS SaveDate');
      Active := true;

      SaveDate := FieldByName('SaveDate').Value;
      Active := false;
    end;

    Query2.Active := false;
    Query1.First;
    while not Query1.Eof do
    begin
      case Query1.UpdateStatus of
        usInserted:
        begin
          if (Query1.FieldByName('JiJie').IsNull) OR (Query1.FieldByName('CLBH').IsNull) then
          begin
            Query1.Delete;
          end
          else begin
            with TempQry do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT * FROM NewMaterialOfSeason WHERE CLBH = ''' + Query1.FieldByName('CLBH').AsString + '''');
              Active := true;
            end;

            if (TempQry.RecordCount <= 0) then
            begin
              Query1.Edit;
              Query1.FieldByName('GSBH').Value := main.Edit2.Text;
              Query1.FieldByName('USERID').Value := main.Edit1.Text;
              Query1.FieldByName('USERDATE').Value := SaveDate;
              Query1.FieldByName('YN').Value := 1;
              UpdateSQL1.Apply(ukInsert);
            end
            else begin
              MessageDlg('Material ''' + Query1.FieldByName('CLBH').AsString + ''' already exists in season ' + Query1.FieldByName('JiJie').AsString, mtWarning, [mbyes], 0);
              Exit;
            end;
          end;
        end;

        usModified:
        begin
          if (Query1.FieldByName('YN').value = 0) then
          begin
            UpdateSQL1.Apply(ukDelete);
          end
          else begin
            if (Query1.FieldByName('CLBH').AsString <> Query1.FieldByName('TempCLBH').AsString) then
            begin
              with TempQry do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('SELECT * FROM NewMaterialOfSeason WHERE CLBH = ''' + Query1.FieldByName('CLBH').AsString + '''');
                Active := true;
              end;

              if (TempQry.RecordCount <= 0) then
              begin
                Query1.Edit;
                Query1.FieldByName('USERID').Value := main.Edit1.text;
                Query1.FieldByName('USERDATE').Value := SaveDate;
                UpdateSQL1.Apply(ukModify);
              end
              else begin
                MessageDlg('Material ''' + Query1.FieldByName('CLBH').AsString + ''' already exists in season ' + Query1.FieldByName('JiJie').AsString, mtWarning, [mbyes], 0);
                Exit;
              end;
            end;
          end;
        end;
      end;
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    Query2.Active := true;

    DBGridEh1.Columns[1].ButtonStyle := cbsNone;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    BB8.Enabled := true;
    InsertMatList := '';
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TNewMaterialOfSeason.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh1.Columns[1].ButtonStyle := cbsNone;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BB5.Enabled := false;
  BB6.Enabled := false;
  BB8.Enabled := true;
  InsertMatList := '';
end;

procedure TNewMaterialOfSeason.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TNewMaterialOfSeason.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TNewMaterialOfSeason.CB1Change(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TNewMaterialOfSeason.BB8Click(Sender: TObject);
begin
  BB5.Enabled := true;
  BB6.Enabled := true;

  NewMaterial := TNewMaterial.Create(Self);
  NewMaterial.Edit1.Text := CB1.Text;
  NewMaterial.Show;
end;

procedure TNewMaterialOfSeason.DBGridEh1EditButtonClick(Sender: TObject);
begin
  MaterialList := TMaterialList.Create(Self);
  MaterialList.Show;
end;

procedure TNewMaterialOfSeason.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').AsString = '0' then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TNewMaterialOfSeason.ShowRelativeShoes1Click(Sender: TObject);
begin
  RelativeShoes := TRelativeShoes.Create(Self);
  RelativeShoes.LB_CLBH.Caption := 'Material Numbers: ' + Query1.FieldByName('CLBH').AsString;
  RelativeShoes.Show;
  //Query2.Active := true;
  //Splitter1.Visible := true;
  //DBGridEh2.Visible := true;
end;

procedure TNewMaterialOfSeason.Button2Click(Sender: TObject);
var
  eclApp, WorkBook, GSheet: olevariant;
  Row: Integer;
begin
  if (Query1.RecordCount = 0) then Exit;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  Query2.Active := false;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    GSheet := eclapp.workbooks[1].sheets[1];

    GSheet.Cells[1, 1] := 'Season';
    GSheet.Cells[1, 2] := 'CLBH';
    GSheet.Cells[1, 3] := 'YWPM';
    GSheet.Cells[1, 4] := 'ZWPM';
    GSheet.Cells[1, 5] := 'USERID';
    GSheet.Cells[1, 6] := 'USERDATE';

    Row := 2;
    Query1.First;
    while not Query1.Eof do
    begin
      GSheet.Cells[Row, 1] := Query1.FieldByName('JiJie').AsString;
      GSheet.Cells[Row, 2] := Query1.FieldByName('CLBH').AsString;
      GSheet.Cells[Row, 3] := Query1.FieldByName('ywpm').AsString;
      GSheet.Cells[Row, 4] := Query1.FieldByName('zwpm').AsString;
      GSheet.Cells[Row, 5] := Query1.FieldByName('USERID').AsString;
      GSheet.Cells[Row, 6] := FormatDateTime('yyyy/MM/dd', Query1.FieldByName('USERDATE').AsDateTime);
      Inc(Row);
      Query1.Next;
    end;

    eclApp.Range['A:F','A:F'].Columns.AutoFit;
    eclApp.Columns.Item[3].ColumnWidth := 70;
    eclApp.Columns.Item[4].ColumnWidth := 70;
    ShowMessage('Succeed!!');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

end.
