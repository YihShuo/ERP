unit CutMachine1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, Buttons,
  ComCtrls, DateUtils;

type
  TCutMachine = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    QTemp: TQuery;
    Query1ID: TStringField;
    Query1GSBH: TStringField;
    Query1MachineName: TStringField;
    Query1MachineType: TStringField;
    Query1FabricCutNum: TIntegerField;
    Query1LeatherCutNum: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TIntegerField;
    Query1FoamCutNum: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ID_Edit: TEdit;
    Name_Edit: TEdit;
    Button1: TButton;
    CB_MachineType: TComboBox;
    Label4: TLabel;
    CB1: TComboBox;
    Query1DepNo: TStringField;
    Query1DepName: TStringField;
    Query1Lean: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    NDate: TDate;
    MachineTypeArr, DepID: array of string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CutMachine: TCutMachine;

implementation

uses
  main1, MachineType1, MachineLean1;

{$R *.dfm}

procedure TCutMachine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    Action := caNone;
    ShowMessage('Please save your data first.');
  end
  else
    Action := caFree;
end;

procedure TCutMachine.FormDestroy(Sender: TObject);
begin
  CutMachine := Nil;
end;
 
procedure TCutMachine.FormCreate(Sender: TObject);
var
  i: integer;
begin
  SetLength(MachineTypeArr, 4);
  MachineTypeArr[0] := 'MC';
  MachineTypeArr[1] := 'Leather';
  MachineTypeArr[2] := 'AC';
  MachineTypeArr[3] := 'Lectra';

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
    SQL.Add('ORDER BY ID');
    Active := true;

    i := 0;
    SetLength(DepID, RecordCount);
    CB1.Items.Clear;
    CB1.Items.Add('');
    while not Eof do
    begin
      DepID[i] := FieldByName('ID').AsString;
      CB1.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
  end;

  PageControl1.ActivePageIndex := 0;
end;

procedure TCutMachine.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT BMachine.*, CASE WHEN ISNULL(DepNo, '''') <> '''' THEN ''LEAN'' + RIGHT(BDepartment.sumline, 2) ELSE '''' END AS Lean, BDepartment.DepName, 1 AS YN FROM BMachine');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = BMachine.DepNo');
    SQL.Add('WHERE BMachine.ID LIKE ''' + ID_Edit.Text + '%'' AND MachineName LIKE ''' + Name_Edit.Text + '%''');
    if (CB_MachineType.ItemIndex > 0) then
      SQL.Add('AND MachineType = ''' + MachineTypeArr[CB_MachineType.ItemIndex-1] + '''');
    if (CB1.ItemIndex > 0) then
      SQL.Add('AND BMachine.DepNo = ''' + DepID[CB1.ItemIndex-1] + '''');
    SQL.Add('ORDER BY MachineType, BMachine.DepNo, BMachine.ID');
    Active := true;
  end;

  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TCutMachine.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[6].ButtonStyle := cbsEllipsis;
end;

procedure TCutMachine.BB3Click(Sender: TObject);
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

procedure TCutMachine.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[6].ButtonStyle := cbsEllipsis;
end;

procedure TCutMachine.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.Columns[2].ButtonStyle := cbsNone;
  DBGridEh1.Columns[6].ButtonStyle := cbsNone;
end;

procedure TCutMachine.BB5Click(Sender: TObject);
var
  i: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
  end;

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usInserted:
        begin
          if (Query1.FieldByName('ID').IsNull) OR (Query1.FieldByName('MachineName').IsNull) OR (Query1.FieldByName('MachineType').IsNull) then
          begin
            Query1.Delete;
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('GSBH').Value := main.Edit2.Text;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := Ndate;
            Query1.FieldByName('YN').Value := 1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Query1.FieldByName('YN').value = 0) then
          begin
            UpdateSQL1.Apply(ukDelete);
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := Ndate;
            UpdateSQL1.Apply(ukModify);
          end;
        end;
      end;
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGridEh1.Columns[2].ButtonStyle := cbsNone;
    DBGridEh1.Columns[6].ButtonStyle := cbsNone;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TCutMachine.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TCutMachine.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TCutMachine.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  MachineType := TMachineType.Create(self);
  MachineType.Show;
end;

procedure TCutMachine.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  MachineLean := TMachineLean.Create(self);
  MachineLean.Show;
end;

end.
