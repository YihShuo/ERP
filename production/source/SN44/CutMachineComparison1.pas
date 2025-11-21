unit CutMachineComparison1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, CheckLst, DB, DBTables,
  GridsEh, DBGridEh, Menus;

type
  TCutMachineComparison = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    ZLBHEdit: TEdit;
    Button1: TButton;
    Label2: TLabel;
    DepNameEdit: TEdit;
    SB1: TSpeedButton;
    CLLean: TCheckListBox;
    DBGridEh1: TDBGridEh;
    QTemp: TQuery;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    CB_PlanType: TComboBox;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Query1DLNO: TStringField;
    Query1DDBH: TStringField;
    Query1BWBH: TStringField;
    Query1SIZE: TStringField;
    Query1CLBH: TStringField;
    Query1Qty: TIntegerField;
    Query1DepName: TStringField;
    Query1PlanDate: TDateTimeField;
    Query1RDepName: TStringField;
    Query1RPlanDate: TDateTimeField;
    Query1Machine: TStringField;
    Query1MachineDate: TDateTimeField;
    PopupMenu1: TPopupMenu;
    QUpdate: TQuery;
    Query1ZLBH: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    SETMACHINEDATA1: TMenuItem;
    SELECTALL1: TMenuItem;
    PopupMenu2: TPopupMenu;
    SELECTALL2: TMenuItem;
    UNSELECTALL1: TMenuItem;
    Query1ROrder: TIntegerField;
    Query1CutNum: TIntegerField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1Article: TStringField;
    MachineBox: TComboBox;
    Label7: TLabel;
    EDIT_DLNO: TEdit;
    SELECTTO1: TMenuItem;
    Label6: TLabel;
    EDIT_BWBH: TEdit;
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLLeanClickCheck(Sender: TObject);
    procedure CLLeanClick(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure SETMACHINEDATA1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure SELECTALL1Click(Sender: TObject);
    procedure SELECTALL2Click(Sender: TObject);
    procedure UNSELECTALL1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure CB_PlanTypeChange(Sender: TObject);
    procedure SELECTTO1Click(Sender: TObject);
  private
    NDate: TDate;
    ZLBHList, LeanList, DLNOList, BWBHList: string;
    LEANID: array of string;
    procedure CMFocusChanged(var Message: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure ClickMessage(var Msg: tagMSG; var Handled: Boolean);
    { Private declarations }
  public
    Machine: array of string;
    { Public declarations }
  end;

var
  CutMachineComparison: TCutMachineComparison;

implementation

uses main1, SetMachineData1;

{$R *.dfm}

procedure TCutMachineComparison.CMFocusChanged(var Message: TCMFocusChanged);
var
  Target: TWinControl;
begin
  Target := TWinControl(Message.Sender);

  if (Target.Name <> 'CLLean') then
    CLLean.Visible := false;
end;

procedure TCutMachineComparison.ClickMessage(var Msg: tagMSG; var Handled: Boolean);
var
  Target: TControl;
  Point: TPoint;
begin
  if (Msg.Message = WM_LBUTTONDOWN) then
  begin
    Point.X := LongRec(Msg.lParam).Lo;
    Point.Y := LongRec(Msg.lParam).Hi;
    Target := FindDragTarget(Point, true);

    if (Target.Name <> 'CLLean') then
      CLLean.Visible := false;
  end;
end;

procedure TCutMachineComparison.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TCutMachineComparison.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCutMachineComparison.FormDestroy(Sender: TObject);
begin
  CutMachineComparison := Nil;
end;

procedure TCutMachineComparison.FormCreate(Sender: TObject);
var
  i: integer;
begin
  ZLBHList := '';
  LeanList := '';
  DTP1.Date := Date;
  DTP2.Date := DTP1.Date + 1;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong IS NOT NULL');
    SQL.Add('ORDER BY ID');
    Active := true;

    i := 0;
    SetLength(LEANID, RecordCount);
    CLLean.Items.Clear;
    while not Eof do
    begin
      CLLean.Items.Add(FieldByName('DepName').AsString);
      LEANID[i] := FieldByName('ID').AsString;
      Inc(i);
      Next;
    end;

    if (RecordCount > 0) then
      CLLean.Height := 22 + 16 * (RecordCount-1)
    else
      CLLean.Height := 22;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, MachineName FROM BMachine ORDER BY ID');
    Active := true;

    i := 0;
    SetLength(Machine, RecordCount);
    MachineBox.Items.Clear;
    MachineBox.Items.Add('ALL');
    while not Eof do
    begin
      MachineBox.Items.Add(FieldByName('MachineName').AsString);
      Machine[i] := FieldByName('ID').AsString;
      Inc(i);
      Next;
    end;
    MachineBox.ItemIndex := 0;
  end;
end;

procedure TCutMachineComparison.CLLeanClickCheck(Sender: TObject);
var
  i: integer;
  DepName: string;
begin
  DepName := '';
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Checked[i]) then
      DepName := DepName + CLLean.Items[i] + ',';
  end;
  DepName := Copy(DepName, 1, Length(DepName)-1);
  DepNameEdit.Text := DepName;
end;

procedure TCutMachineComparison.CLLeanClick(Sender: TObject);
var
  i: integer;
begin
  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Selected[i]) then
      CLLean.Checked[i] := not CLLean.Checked[i];
  end;
  CLLeanClickCheck(Nil);
end;

procedure TCutMachineComparison.SB1Click(Sender: TObject);
begin
  CLLean.Visible := not CLLean.Visible;
  if (CLLean.Visible) then
    CLLean.SetFocus;
end;

procedure TCutMachineComparison.Button1Click(Sender: TObject);
var
  i: integer;
begin
  ZLBHList := '';
  LeanList := '';
  DLNOList := '';
  BWBHList := '';

  for i:=0 to CLLean.Items.Count-1 do
  begin
    if (CLLean.Checked[i]) then
    begin
      LeanList := LeanList + LEANID[i] + ',';
    end;
  end;

  if (LeanList <> '') then
  begin
    LeanList := Copy(LeanList, 1, Length(LeanList)-1);
    LeanList := '''' + StringReplace(LeanList, ',', ''',''', [rfReplaceAll]) + '''';
  end
  else begin
    LeanList := '''''';
  end;

  if (ZLBHEdit.Text <> '') then
  begin
    ZLBHList := StringReplace(ZLBHEdit.Text, ' ', '', [rfReplaceAll]);
    ZLBHList := '''' + StringReplace(ZLBHList, ',', ''',''', [rfReplaceAll]) + '''';
  end;

  if (EDIT_DLNO.Text <> '') then
  begin
    DLNOList := StringReplace(EDIT_DLNO.Text, ' ', '', [rfReplaceAll]);
    DLNOList := '''' + StringReplace(DLNOList, ',', ''',''', [rfReplaceAll]) + '''';
  end;

  if (EDIT_BWBH.Text <> '') then
  begin
    BWBHList := StringReplace(EDIT_BWBH.Text, ' ', '', [rfReplaceAll]);
    BWBHList := '''' + StringReplace(BWBHList, ',', ''',''', [rfReplaceAll]) + '''';
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchSS.DLNO, CutDispatchSS.ZLBH, CutDispatchSS.DDBH, DDZL.XieXing, DDZL.SheHao, DDZL.Article, CutDispatchSS.BWBH,');
    SQL.Add('CutDispatchSS.SIZE, CutDispatchSS.CLBH, CutDispatchSS.Qty, CutDispatchSS.Qty*KT_SOPCut.piece/KT_SOPCut.layer*KT_SOPCut.joinnum AS CutNum,');
    SQL.Add('D1.DepName, SMDD.PlanDate, D2.DepName AS RDepName, SMDD.RPlanDate, SMDD.ROrder, BMachine.MachineName, CutDispatchSS.MachineDate, CutDispatchSS.USERID, CutDispatchSS.USERDATE FROM CutDispatchSS');
    SQL.Add('LEFT JOIN DDZL ON DDZL.ZLBH = CutDispatchSS.ZLBH');
    SQL.Add('LEFT JOIN KT_SOPCut ON KT_SOPCut.XieXing = DDZL.XieXing AND KT_SOPCut.SheHao = DDZL.SheHao AND KT_SOPCut.BWBH = CutDispatchSS.BWBH');
    SQL.Add('LEFT JOIN SMDD ON SMDD.DDBH = CutDispatchSS.DDBH AND SMDD.GXLB = ''C''');
    SQL.Add('LEFT JOIN BDepartment AS D1 ON D1.ID = SMDD.DepNO');
    SQL.Add('LEFT JOIN BDepartment AS D2 ON D2.ID = SMDD.RDepNO');
    SQL.Add('LEFT JOIN BMachine ON BMachine.ID = CutDispatchSS.Machine');
    SQL.Add('WHERE 1=1');
    if (DLNOList <> '') then
    begin
      if (Pos(',', DLNOList) > 0) then
        SQL.Add('AND CutDispatchSS.DLNO IN (' + DLNOList + ')')
      else
        SQL.Add('AND CutDispatchSS.DLNO LIKE ''' + EDIT_DLNO.Text + '%''');
    end;
    if (BWBHList <> '') then
      SQL.Add('AND CutDispatchSS.BWBH IN (' + BWBHList + ')');
    if (ZLBHList <> '') then
      SQL.Add('AND CutDispatchSS.ZLBH IN (' + ZLBHList + ')');
    if (CB_PlanType.ItemIndex = 0) then
    begin
      SQL.Add('AND SMDD.RDepNo IN (' + LeanList + ') AND SMDD.RPlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end
    else if (CB_PlanType.ItemIndex = 1) then
    begin
      SQL.Add('AND SMDD.DepNo IN (' + LeanList + ') AND SMDD.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''')
    end
    else if (CB_PlanType.ItemIndex = 2) then
    begin
      if (MachineBox.ItemIndex >= 1) then
        SQL.Add('AND CutDispatchSS.Machine = ''' + Machine[MachineBox.ItemIndex-1] + '''');
      SQL.Add('AND CutDispatchSS.MachineDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end;
    SQL.Add('ORDER BY CutDispatchSS.DLNO, CutDispatchSS.DDBH, CutDispatchSS.BWBH, CutDispatchSS.SIZE');
    Active := true;
  end;

  BB4.Enabled := true;
end;

procedure TCutMachineComparison.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh1.Options := DBGridEh1.Options + [dgRowSelect] - [dgEditing];
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TCutMachineComparison.BB5Click(Sender: TObject);
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
      usModified:
        begin
          Query1.Edit;
          if (Query1.FieldByName('MachineDate').AsString = '') then
            Query1.FieldByName('MachineDate').Value := Null;
          Query1.FieldByName('USERDATE').Value := Ndate;
          UpdateSQL1.Apply(ukModify);
        end;
      end;
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    DBGridEh1.Options := DBGridEh1.Options + [dgRowSelect] - [dgEditing];
    BB5.Enabled := false;
    BB6.Enabled := false;
    ShowMessage('Success!');
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TCutMachineComparison.Panel2Click(Sender: TObject);
begin
  CLLean.Visible := false;
end;

procedure TCutMachineComparison.SETMACHINEDATA1Click(Sender: TObject);
begin
  Query1.DisableControls;
  SetMachineData := TSetMachineData.Create(self);
  SetMachineData.Show;
end;

procedure TCutMachineComparison.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    DBGridEh1.Options := DBGridEh1.Options - [dgRowSelect] + [dgEditing];
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TCutMachineComparison.SELECTALL1Click(Sender: TObject);
begin
  DBGridEh1.SelectedRows.Clear;
  DBGridEh1.SelectedRows.SelectAll;
end;

procedure TCutMachineComparison.SELECTALL2Click(Sender: TObject);
var
  i: integer;
  LeanList: string;
begin
  LeanList := '';
  for i:=0 to CLLean.Items.Count-1 do
  begin
    CLLean.Checked[i] := true;
    LeanList := LeanList  + CLLean.Items[i] + ',';
  end;
  LeanList := Copy(LeanList, 1, Length(LeanList)-1);
  DepNameEdit.Text := LeanList;
end;

procedure TCutMachineComparison.UNSELECTALL1Click(Sender: TObject);
var
  i: integer;
begin
  for i:=0 to CLLean.Items.Count-1 do
  begin
    CLLean.Checked[i] := false;
  end;
  DepNameEdit.Text := '';
end;

procedure TCutMachineComparison.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TCutMachineComparison.Query1AfterOpen(DataSet: TDataSet);
begin
  if (Query1.RecordCount = 0) then
  begin
    PopupMenu1.Items[0].Visible := false;
    PopupMenu1.Items[1].Visible := false;
    DBGridEh1.Columns[4].Title.TitleButton := false;
    DBGridEh1.Columns[5].Title.TitleButton := false;
    DBGridEh1.Columns[6].Title.TitleButton := false;
  end
  else begin
    PopupMenu1.Items[0].Visible := true;
    PopupMenu1.Items[1].Visible := true;
    DBGridEh1.Columns[4].Title.TitleButton := true;
    DBGridEh1.Columns[5].Title.TitleButton := true;
    DBGridEh1.Columns[6].Title.TitleButton := true;
  end;
end;

procedure TCutMachineComparison.DBGridEh1TitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
var
  SortString: string;
begin
  with Column do
  begin
    if (FieldName = '') then
      Exit;

    case Title.SortMarker of
      smNoneEh:
      begin
        Title.SortMarker := smDownEh;
        SortString := 'CutDispatchSS.' + Column.FieldName + ' ASC';
      end;
      smDownEh: SortString := 'CutDispatchSS.' + Column.FieldName + ' ASC';
      smUpEh: SortString := 'CutDispatchSS.' + Column.FieldName + ' DESC';
    end;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatchSS.DLNO, CutDispatchSS.ZLBH, CutDispatchSS.DDBH, DDZL.XieXing, DDZL.SheHao, DDZL.Article, CutDispatchSS.BWBH,');
    SQL.Add('CutDispatchSS.SIZE, CutDispatchSS.CLBH, CutDispatchSS.Qty, CutDispatchSS.Qty*KT_SOPCut.piece/KT_SOPCut.layer*KT_SOPCut.joinnum AS CutNum,');
    SQL.Add('D1.DepName, SMDD.PlanDate, D2.DepName AS RDepName, SMDD.RPlanDate, SMDD.ROrder, BMachine.MachineName, CutDispatchSS.MachineDate, CutDispatchSS.USERID, CutDispatchSS.USERDATE FROM CutDispatchSS');
    SQL.Add('LEFT JOIN DDZL ON DDZL.ZLBH = CutDispatchSS.ZLBH');
    SQL.Add('LEFT JOIN KT_SOPCut ON KT_SOPCut.XieXing = DDZL.XieXing AND KT_SOPCut.SheHao = DDZL.SheHao AND KT_SOPCut.BWBH = CutDispatchSS.BWBH');
    SQL.Add('LEFT JOIN SMDD ON SMDD.DDBH = CutDispatchSS.DDBH AND SMDD.GXLB = ''C''');
    SQL.Add('LEFT JOIN BDepartment AS D1 ON D1.ID = SMDD.DepNO');
    SQL.Add('LEFT JOIN BDepartment AS D2 ON D2.ID = SMDD.RDepNO');
    SQL.Add('LEFT JOIN BMachine ON BMachine.ID = CutDispatchSS.Machine');
    SQL.Add('WHERE 1=1');
    if (DLNOList <> '') then
    begin
      if (Pos(',', DLNOList) > 0) then
        SQL.Add('AND CutDispatchSS.DLNO IN (' + DLNOList + ')')
      else
        SQL.Add('AND CutDispatchSS.DLNO LIKE ''' + EDIT_DLNO.Text + '%''');
    end;
    if (BWBHList <> '') then
      SQL.Add('AND CutDispatchSS.BWBH IN (' + BWBHList + ')');
    if (ZLBHList <> '') then
      SQL.Add('AND CutDispatchSS.ZLBH IN (' + ZLBHList + ')');
    if (CB_PlanType.ItemIndex = 0) then
    begin
      SQL.Add('AND SMDD.RDepNo IN (' + LeanList + ') AND SMDD.RPlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end
    else if (CB_PlanType.ItemIndex = 1) then
    begin
      SQL.Add('AND SMDD.DepNo IN (' + LeanList + ') AND SMDD.PlanDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''')
    end
    else if (CB_PlanType.ItemIndex = 2) then
    begin
      if (MachineBox.ItemIndex >= 1) then
        SQL.Add('AND CutDispatchSS.Machine = ''' + Machine[MachineBox.ItemIndex-1] + '''');
      SQL.Add('AND CutDispatchSS.MachineDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    end;
    SQL.Add('ORDER BY ' + SortString);
    Active := true;
  end;
end;

procedure TCutMachineComparison.CB_PlanTypeChange(Sender: TObject);
begin
  if (CB_PlanType.ItemIndex = 2) then
    MachineBox.Visible := true
  else
    MachineBox.Visible := false;
end;

procedure TCutMachineComparison.SELECTTO1Click(Sender: TObject);
var
  TargetValue: string;
  Qty, TargetQty: integer;
begin
  if InputQuery('SELECTION', 'ENTER THE TARGET VALUE:', TargetValue) then
  begin
    if (TryStrToInt(TargetValue, TargetQty)) then
    begin
      DBGridEh1.SelectedRows.Clear;
      Qty := 0;
      with Query1 do
      begin
        First;
        while not Eof do
        begin
          if (FieldByName('MachineDate').AsString = '') AND (FieldByName('MachineName').AsString = '') then
          begin
            Qty := Qty + FieldByName('Qty').AsInteger;
            if (Qty <= TargetQty) then
            begin
              DBGridEh1.SelectedRows.CurrentRowSelected := true;
              Next;
            end
            else begin
              Prior;
              Break;
            end;
          end
          else begin
            Next;
          end;
        end;
      end;
    end
    else begin
      ShowMessage('Please enter a valid number');
    end;
  end;
end;

end.
