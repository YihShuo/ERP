unit MoldData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI;

type
  TMoldData = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    tmpQry: TQuery;
    Query1MoldCode: TStringField;
    Query1CLBH: TStringField;
    Query1ZSDH: TStringField;
    Query1Standard: TStringField;
    Query1Material: TStringField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1zsywjc: TStringField;
    Panel2: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    Edit7: TEdit;
    DBGridEh1: TDBGridEh;
    ConCombo: TComboBox;
    Query1MoldCodeProd: TStringField;
    Query1Construction: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    NDate: TDateTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoldData: TMoldData;

implementation

uses main1, MoldData_Mat1 ,MoldData_ZSDH1;

{$R *.dfm}

procedure TMoldData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMoldData.FormDestroy(Sender: TObject);
begin
  MoldData := nil;
end;

procedure TMoldData.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TMoldData.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select MoldData.*,CLZL.ywpm,CLZL.zwpm,CLZL.dwbh,ZSZL.zsywjc ');
    SQL.Add('from MoldData');
    SQL.Add('left join CLZL on CLZL.CLDH=MoldData.CLBH ');
    SQL.Add('Left join ZSZL on ZSZL.ZSDH=MoldData.ZSDH ');
    SQL.Add('WHERE 1 = 1');
    if (Edit1.Text <> '') then
      SQL.Add('AND MoldData.CLBH LIKE ''%' + Edit1.Text + '%''');
    if (Edit2.Text <> '') then
      SQL.Add('AND MoldData.MoldCode LIKE ''%' + Edit2.Text + '%''');
    if (Edit3.Text <> '') then
      SQL.Add('AND MoldData.Standard LIKE ''%' + Edit3.Text + '%''');
    if (Edit4.Text <> '') then
      SQL.Add('AND MoldData.ZSDH LIKE ''%' + Edit4.Text + '%''');
    if (ConCombo.Text <> '') then
      SQL.Add('AND MoldData.Construction = ''' + ConCombo.Text + '''');
    if (Edit6.Text <> '') then
      SQL.Add('AND MoldData.Material LIKE ''%' + Edit6.Text + '%''');
    if (Edit7.Text <> '') then
      SQL.Add('AND MoldData.Memo LIKE ''%' + Edit7.Text + '%''');
    SQL.Add('ORDER BY MoldData.MoldCode,MoldData.CLBH, MoldData.UserDate DESC');
    Active := true;
  end;

  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;

end;

procedure TMoldData.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  BB2.Enabled := false;
  BB3.Enabled := false;
  BB4.Enabled := false;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
end;

procedure TMoldData.BB5Click(Sender: TObject);
var i: integer;
begin

  try
    Query1.First;
    for i:=1 to Query1.RecordCount do
    begin
      case query1.updatestatus of
        usInserted:
        begin
          Query1.Edit;
          Query1.FieldByName('UserDate').Value := NDate;
          Query1.FieldByName('UserID').Value := main.Edit1.Text;
          UpdateSQL1.Apply(ukInsert);
        end;

        usModified:
        begin
          if (Query1.FieldByName('YN').Value = '0') then
          begin
            Query1.Edit;
            UpdateSQL1.Apply(ukDelete);
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('UserID').Value := main.Edit1.Text;
            query1.FieldByName('userdate').Value:=NDate;
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
    DBGridEh1.Columns[3].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TMoldData.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TMoldData.BB4Click(Sender: TObject);
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
  DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
end;

procedure TMoldData.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    CachedUpdates := false;
    RequestLive := false;
    Active := true;
  end;
  BB5.enabled := false;
  BB6.enabled := false;
  DBGridEh1.Columns[2].ButtonStyle := cbsNone;
  DBGridEh1.Columns[3].ButtonStyle := cbsNone;
end;

procedure TMoldData.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if (Query1.Active) then
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
      for i:=0 to Query1.FieldCount-2 do
      begin
        eclApp.Cells(1, i+1) := Query1.Fields[i].FieldName;
      end;

      Query1.First;
      j := 2;
      while not Query1.Eof do
      begin
        for i:=0 to Query1.FieldCount-2 do
        begin
          eclApp.Cells(j, i+1) := Query1.Fields[i].Value;
        end;
        Query1.Next;
        Inc(j);
      end;
      eclapp.columns.autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TMoldData.FormCreate(Sender: TObject);
begin
  with tmpQry do          //取服務器的年月值
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select Year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    Active := true;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;
  with tmpQry do
  begin
    Active :=false;
    SQL.Clear;
    SQL.Add('Select distinct Construction from MoldData ');
    Active:=true;
    while not Eof do
    begin
      ConCombo.Items.Add(FieldByName('Construction').AsString);
      Next;
    end;
    Active :=false;
  end;
end;

procedure TMoldData.DBGridEh1EditButtonClick(Sender: TObject);
begin
  with DBGridEh1 do
  begin
    if Selectedfield.fieldname='ZSDH' then
    begin
      MoldData_ZSDH:=TMoldData_ZSDH.Create(self);
      MoldData_ZSDH.Show;
    end;
    if Selectedfield.fieldname='CLBH' then
    begin
      MoldData_Mat := TMoldData_Mat.Create(self);
      MoldData_Mat.Show;
    end;
  end;
end;

procedure TMoldData.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

end.
