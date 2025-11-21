unit OrganizationSetting1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, ADODB, StdCtrls, Grids, Menus;

type
  TOrganization1 = class(TForm)
    Panel1: TPanel;
    TreeView1: TTreeView;
    ADOQuery1: TADOQuery;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    StringGrid2: TStringGrid;
    Panel8: TPanel;
    ADOQuery2: TADOQuery;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Label3: TLabel;
    ADOQuery3: TADOQuery;
    ADOQUpdate: TADOQuery;
    Panel11: TPanel;
    ADOQuery4: TADOQuery;
    PopupMenu1: TPopupMenu;
    Expand1: TMenuItem;
    Collapse1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Edit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Expand1Click(Sender: TObject);
    procedure Collapse1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SG1SetData;
    procedure SG2SetData;
    function TreeItemSearch(TV: TTreeView; SucheItem: string): TTreeNode;
  public
    { Public declarations }
  end;

var
  Organization1: TOrganization1;
  SelectedUserID: string;

implementation

{$R *.dfm}

function TOrganization1.TreeItemSearch(TV: TTreeView; SucheItem: string): TTreeNode;
var
  i: Integer;
  iItem: string;
begin
  if (TV = nil) or (SucheItem = '') then
    Exit;
    
  for i := 0 to TV.Items.Count - 1 do 
  begin
    iItem := TV.Items[i].Text;
    if SucheItem = iItem then 
    begin
      Result := TV.Items[i];
      Exit;
    end 
    else begin
      Result := nil;
    end;
  end;
end;

procedure TOrganization1.SG1SetData;
var
  i: integer;
begin
  with ADOQuery2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT USERID + '' ('' + USERNAME + '')'' AS USERDATA FROM USERS');
    SQL.Add('WHERE USERID LIKE ''' + Edit1.Text + '%'' AND USERID NOT IN (');
    SQL.Add('  SELECT ISNULL(USERGROUPS.USERID, '''') AS USERID FROM SYS_ORG');
    SQL.Add('  LEFT JOIN GROUPS ON GROUPS.GROUPID = SYS_ORG.ORG_MAN');
    SQL.Add('  LEFT JOIN USERGROUPS ON USERGROUPS.GROUPID = GROUPS.GROUPID');
    SQL.Add('  WHERE SYS_ORG.ORG_DESC + '' ('' + SYS_ORG.ORG_NO + '')'' = ''' + Label3.Caption + ''')');
    SQL.Add('AND USERID + '' ('' + USERNAME + '')'' NOT IN (' + SelectedUserID + ')');
    Active := true;

    i := 0;
    if (RecordCount >= 1) then
      StringGrid1.RowCount := RecordCount
    else begin
      StringGrid1.RowCount := 1;
      StringGrid1.Cells[0, 0] := '';
    end;
      
    while not Eof do
    begin
      StringGrid1.Cells[0, i] := FieldByName('USERDATA').AsString;
      Inc(i);
      Next;
    end;
  end;
end;

procedure TOrganization1.SG2SetData;
var
  i: integer;
begin
  with ADOQuery3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ISNULL(USERGROUPS.USERID + '' ('' + USERS.USERNAME + '')'', '''') AS USERDATA FROM SYS_ORG');
    SQL.Add('LEFT JOIN GROUPS ON GROUPS.GROUPID = SYS_ORG.ORG_MAN');
    SQL.Add('LEFT JOIN USERGROUPS ON USERGROUPS.GROUPID = GROUPS.GROUPID');
    SQL.Add('LEFT JOIN USERS ON USERS.USERID = USERGROUPS.USERID');
    SQL.Add('WHERE SYS_ORG.ORG_DESC + '' ('' + SYS_ORG.ORG_NO + '')'' = ''' + Label3.Caption + '''');
    Active := true;

    i := 0;
    if (RecordCount > 1) then
      StringGrid2.RowCount := RecordCount
    else begin
      StringGrid2.RowCount := 1;
      StringGrid2.Cells[0, 0] := '';
    end;

    while not Eof do
    begin
      SelectedUserID := SelectedUserID + '''' + FieldByName('USERDATA').AsString + ''',';
      if (FieldByName('USERDATA').AsString <> '') then
      begin
        StringGrid2.Cells[0, i] := FieldByName('USERDATA').AsString;
        Inc(i);
      end;
      Next;
    end;
    SelectedUserID := COPY(SelectedUserID, 1, Length(SelectedUserID)-1);
  end;
end;

procedure TOrganization1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOrganization1.FormDestroy(Sender: TObject);
begin
  Organization1 := nil;
end;

procedure TOrganization1.FormCreate(Sender: TObject);
var
  i, Count: integer;
begin
  SelectedUserID := '''''';
  TreeView1.HideSelection := false;
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SYS_ORG.ORG_NO, SYS_ORG.ORG_DESC + '' ('' + SYS_ORG.ORG_NO + '')'' AS ORG_DESC, ORG_UP.ORG_DESC + '' ('' + SYS_ORG.UPPER_ORG + '')'' AS UPPER_ORG FROM SYS_ORG');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ORG_NO, ORG_DESC FROM SYS_ORG WHERE ORG_KIND = ''2000''');
    SQL.Add(') AS ORG_UP ON ORG_UP.ORG_NO = SYS_ORG.UPPER_ORG');
    SQL.Add('WHERE SYS_ORG.ORG_KIND = ''2000''');
    Active := true;

    while not Eof do
    begin
      if (FieldByName('UPPER_ORG').AsString = '') then
        TreeView1.Items.Add(nil, FieldByName('ORG_DESC').AsString)
      else
        TreeView1.items.addChild(TreeItemSearch(TreeView1, FieldByName('UPPER_ORG').AsString), FieldByName('ORG_DESC').AsString);
      Next;
    end;
  end;
end;

procedure TOrganization1.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  Label3.Caption := Node.Text;
  SG2SetData;
  SG1SetData;
end;

procedure TOrganization1.Edit1Change(Sender: TObject);
begin
  SG1SetData;
end;

procedure TOrganization1.Button3Click(Sender: TObject);
var
  i: integer;
begin
  if (StringGrid2.Cells[0, 0] = '') then
    StringGrid2.Cells[0, 0] := StringGrid1.Cells[0, StringGrid1.Row]
  else begin
    StringGrid2.RowCount := StringGrid2.RowCount + 1;
    StringGrid2.Cells[0, StringGrid2.RowCount-1] := StringGrid1.Cells[0, StringGrid1.Row];
  end;
  StringGrid2.Row := StringGrid2.RowCount-1;

  SelectedUserID := '';
  for i := 0 to StringGrid2.RowCount-1 do
  begin
    SelectedUserID := SelectedUserID + '''' + StringGrid2.Cells[0, i] + ''',';
  end;
  SelectedUserID := COPY(SelectedUserID, 1, Length(SelectedUserID)-1);
  SG1SetData;
end;

procedure TOrganization1.Button4Click(Sender: TObject);
var
  i: integer;
begin
  for i := StringGrid2.Row to StringGrid2.RowCount-1 do
  begin
    if (StringGrid2.RowCount > 1) then
    begin
      StringGrid2.Cells[0, i] := StringGrid2.Cells[0, i+1];
      StringGrid2.RowCount := StringGrid2.RowCount-1;
    end
    else
      StringGrid2.Cells[0, i] := '';
  end;

  SelectedUserID := '';
  for i := 0 to StringGrid2.RowCount-1 do
  begin
    SelectedUserID := SelectedUserID + '''' + StringGrid2.Cells[0, i] + ''',';
  end;
  SelectedUserID := COPY(SelectedUserID, 1, Length(SelectedUserID)-1);
  SG1SetData;
end;

procedure TOrganization1.Button5Click(Sender: TObject);
var
  i: integer;
begin
  with ADOQuery4 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ORG_MAN FROM SYS_ORG WHERE ORG_KIND = ''2000'' AND ORG_DESC + '' ('' + ORG_NO + '')'' = ''' + Label3.Caption + '''');
    Active := true;
  end;

  with ADOQUpdate do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM USERGROUPS WHERE GROUPID = ''' + ADOQuery4.FieldByName('ORG_MAN').AsString + ''';');

    for i := 0 to StringGrid2.RowCount-1 do
    begin
      if (StringGrid2.Cells[0, i] <> '') then
        SQL.Add('INSERT INTO USERGROUPS (USERID, GROUPID) VALUES (''' + COPY(StringGrid2.Cells[0, i], 1, Pos(' (', StringGrid2.Cells[0, i])-1) + ''', ''' + ADOQuery4.FieldByName('ORG_MAN').AsString + ''');');
    end;
    ExecSQL;
    SQL.Clear;
  end;

  SG2SetData;
end;

procedure TOrganization1.Expand1Click(Sender: TObject);
begin
  TreeView1.FullExpand;
end;

procedure TOrganization1.Collapse1Click(Sender: TObject);
begin
  TreeView1.FullCollapse;
end;

end.
