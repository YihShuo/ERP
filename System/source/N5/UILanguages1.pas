unit UILanguages1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DBCtrls,
  ComCtrls, Buttons;

type
  TUILanguages = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    QSearch: TQuery;
    QSearchMKID: TStringField;
    QSearchMKNAME: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    CB1: TComboBox;
    Label1: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    UpdateSQL1: TUpdateSQL;
    Query1MKID: TStringField;
    Query1mainForm: TStringField;
    Query1VCLID: TStringField;
    Query1VCLName_VN: TStringField;
    Query1VCLName_EN: TStringField;
    Query1VCLName_CN: TStringField;
    Query1FORMID: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Label2: TLabel;
    MainFormEdit: TEdit;
    DataSource2: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    StringField9: TStringField;
    UpdateSQL2: TUpdateSQL;
    DBGridEh2: TDBGridEh;
    Query2FieldName: TStringField;
    Query1MKNAME: TStringField;
    Query2MKNAME: TStringField;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField11: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    UpdateSQL3: TUpdateSQL;
    Query3MKID: TStringField;
    Query3FORMID: TStringField;
    Query3FORMNAME: TStringField;
    Label3: TLabel;
    FieldNMEdit: TEdit;
    Label4: TLabel;
    VNEdit: TEdit;
    Label5: TLabel;
    ENEdit: TEdit;
    Label6: TLabel;
    CNEdit: TEdit;
    ComboxVCLName: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    VCLIDEdit: TEdit;
    Label9: TLabel;
    FormIDEdit: TEdit;
    Query3YN: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    MKID: array of string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UILanguages: TUILanguages;

implementation

uses main1, Module1;

{$R *.dfm}

procedure TUILanguages.FormCreate(Sender: TObject);
var
  i: integer;
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MKID, MKNAME FROM BLimit');
    SQL.Add('GROUP BY MKID, MKNAME');
    SQL.Add('ORDER BY MKID');
    Active := true;

    SetLength(MKID, RecordCount+1);
    CB1.Items.Clear;
    CB1.Items.Add('ALL');
    MKID[0]:='NULL';
    i := 1;
    while not Eof do
    begin
      CB1.Items.Add(FieldByName('MKNAME').AsString);
      MKID[i] := FieldByName('MKID').AsString;
      Inc(i);
      Next;
    end;
    if CB1.Items.Count>0 then
    CB1.ItemIndex:=0;
  end;

  PageControl1.ActivePageIndex := 0;
end;

procedure TUILanguages.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('You have to save the data first.', mtwarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TUILanguages.FormDestroy(Sender: TObject);
begin
  UILanguages := Nil;
end;

procedure TUILanguages.Button1Click(Sender: TObject);
var OrderBy:string;
begin
  OrderBy:='';
  if ComboxVCLName.ItemIndex=4 then OrderBy:='VCLName_VN,';
  if ComboxVCLName.ItemIndex=5 then OrderBy:='VCLName_EN,';
  if ComboxVCLName.ItemIndex=6 then OrderBy:='VCLName_CN,';

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select BLanguage.*,BLimit.MKNAME from BLanguage ');
    SQL.Add('left join (select distinct MKID,MKNAME from BLimit) BLimit on BLimit.MKID=BLanguage.MKID ');
    SQL.Add('WHERE 1=1 ');
    if CB1.ItemIndex>0 then
    SQL.Add('and BLanguage.MKID = ''' + MKID[CB1.ItemIndex] + '''');
    if (MainFormEdit.Text <> '') then
      SQL.Add('AND mainForm LIKE ''%' + MainFormEdit.Text + '%''');
    if VCLIDEdit.Text<>'' then
      SQL.Add('AND VCLID LIKE ''%'+ VCLIDEdit.Text+'%'' ');
    if VNEdit.Text<>'' then
      SQL.Add('AND VCLName_VN LIKE ''%'+ VNEdit.Text+'%'' ');
    if ENEdit.Text<>'' then
      SQL.Add('AND VCLName_EN LIKE ''%'+ ENEdit.Text+'%'' ');
    if CNEdit.Text<>'' then
      SQL.Add('AND VCLName_CN LIKE ''%'+ CNEdit.Text+'%'' ');
    if FormIDEdit.Text<>'' then
      SQL.Add('AND FORMID like '''+FormIDEdit.Text+'%'' ');
    if ComboxVCLName.ItemIndex=1then
      SQL.Add('AND VCLName_VN is null ');
    if ComboxVCLName.ItemIndex=2then
      SQL.Add('AND VCLName_EN is null ');
    if ComboxVCLName.ItemIndex=3then
      SQL.Add('AND VCLName_CN is null ');
    if ComboxVCLName.ItemIndex=4then
      SQL.Add('AND VCLName_VN is not null ');
    if ComboxVCLName.ItemIndex=5then
      SQL.Add('AND VCLName_EN is not null ');
    if ComboxVCLName.ItemIndex=6then
      SQL.Add('AND VCLName_CN is not null ');
    SQL.Add('ORDER BY '+OrderBy+'mainForm');
    Active := true;
  end;

  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select BLanguage_DBGrid.*,BLimit.MKNAME from BLanguage_DBGrid ');
    SQL.Add('left join (select distinct MKID,MKNAME from BLimit) BLimit on BLimit.MKID=BLanguage_DBGrid.MKID ');
    //SQL.Add('SELECT MKID, ''' + CB1.Text + ''' AS MKNAME, mainForm, VCLID, FieldName, VCLName_VN ,VCLName_EN, VCLName_CN, FORMID, UserID, UserDate, YN FROM BLanguage_DBGrid');
    SQL.Add('WHERE 1=1 ');
    if CB1.ItemIndex>0 then
    SQL.Add('and BLanguage_DBGrid.MKID = ''' + MKID[CB1.ItemIndex] + '''');
    if (MainFormEdit.Text <> '') then
      SQL.Add('AND mainForm LIKE ''%' + MainFormEdit.Text + '%''');
    if VCLIDEdit.Text<>'' then
      SQL.Add('AND VCLID LIKE ''%'+ VCLIDEdit.Text+'%'' ');
    if VNEdit.Text<>'' then
      SQL.Add('AND VCLName_VN LIKE ''%'+ VNEdit.Text+'%'' ');
    if ENEdit.Text<>'' then
      SQL.Add('AND VCLName_EN LIKE ''%'+ ENEdit.Text+'%'' ');
    if CNEdit.Text<>'' then
      SQL.Add('AND VCLName_CN LIKE ''%'+ CNEdit.Text+'%'' ');
    if FormIDEdit.Text<>'' then
      SQL.Add('AND FORMID like '''+FormIDEdit.Text+'%'' ');      
    if ComboxVCLName.ItemIndex=1then
      SQL.Add('AND VCLName_VN is null ');
    if ComboxVCLName.ItemIndex=2then
      SQL.Add('AND VCLName_EN is null ');
    if ComboxVCLName.ItemIndex=3then
      SQL.Add('AND VCLName_CN is null ');
    if ComboxVCLName.ItemIndex=4then
      SQL.Add('AND VCLName_VN is not null ');
    if ComboxVCLName.ItemIndex=5then
      SQL.Add('AND VCLName_EN is not null ');
    if ComboxVCLName.ItemIndex=6then
      SQL.Add('AND VCLName_CN is not null ');
    if FieldNMEdit.Text<>'' then
      SQL.Add('AND FieldName LIKE ''%'+ FieldNMEdit.Text+'%'' ');
    SQL.Add('ORDER BY '+OrderBy+'mainForm');
    Active := true;
  end;

  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MKID, FORMID, MKNAME, FORMNAME, VCLName_VN ,VCLName_EN, VCLName_CN, YN FROM BLimit');
    SQL.Add('WHERE 1=1 ');
    if CB1.ItemIndex>0 then
    SQL.Add('and MKID = ''' + MKID[CB1.ItemIndex] + '''');
    if VNEdit.Text<>'' then
      SQL.Add('AND VCLName_VN LIKE ''%'+ VNEdit.Text+'%'' ');
    if ENEdit.Text<>'' then
      SQL.Add('AND VCLName_EN LIKE ''%'+ ENEdit.Text+'%'' ');
    if CNEdit.Text<>'' then
      SQL.Add('AND VCLName_CN LIKE ''%'+ CNEdit.Text+'%'' ');
    if ComboxVCLName.ItemIndex=1then
      SQL.Add('AND VCLName_VN is null ');
    if ComboxVCLName.ItemIndex=2then
      SQL.Add('AND VCLName_EN is null ');
    if ComboxVCLName.ItemIndex=3then
      SQL.Add('AND VCLName_CN is null ');
    if ComboxVCLName.ItemIndex=4then
      SQL.Add('AND VCLName_VN is not null ');
    if ComboxVCLName.ItemIndex=5then
      SQL.Add('AND VCLName_EN is not null ');
    if ComboxVCLName.ItemIndex=6then
      SQL.Add('AND VCLName_CN is not null ');      
    SQL.Add('ORDER BY '+OrderBy+'FORMID');
    Active := true;
  end;

  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TUILanguages.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TUILanguages.BB2Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      First;
      Insert;
      FieldByName('MKID').Value := MKID[CB1.ItemIndex];
      FieldByName('MKNAME').Value := CB1.Text;
    end;

    DBGridEh1.Columns[0].ButtonStyle := cbsEllipsis;
    DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      First;
      Insert;
      FieldByName('MKID').Value := MKID[CB1.ItemIndex];
      FieldByName('MKNAME').Value := CB1.Text;
    end;

    DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
    DBGridEh2.Columns[1].ButtonStyle := cbsEllipsis;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      First;
      Insert;
      FieldByName('MKID').Value := MKID[CB1.ItemIndex];
      FieldByName('MKNAME').Value := CB1.Text;
    end;

    DBGridEh3.Columns[0].ButtonStyle := cbsEllipsis;
    DBGridEh3.Columns[2].ButtonStyle := cbsEllipsis;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TUILanguages.BB3Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := 0;
    end;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := 0;
    end;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := 0;
    end;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TUILanguages.BB4Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
    end;

    DBGridEh1.Columns[0].ButtonStyle := cbsEllipsis;
    DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
    end;

    DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
    DBGridEh2.Columns[1].ButtonStyle := cbsEllipsis;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
    end;

    DBGridEh3.Columns[0].ButtonStyle := cbsEllipsis;
    DBGridEh3.Columns[2].ButtonStyle := cbsEllipsis;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TUILanguages.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    if (PageControl1.ActivePageIndex = 0) then
    begin
      Query1.First;
      for i := 1 to Query1.RecordCount do
      begin
        case Query1.UpdateStatus of
          usInserted:
          begin
            if (Query1.FieldByName('MKID').IsNull) OR (Query1.FieldByName('mainForm').IsNull) OR (Query1.FieldByName('VCLID').IsNull) then
            begin
              Query1.Delete;
            end
            else begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.Text;
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

      DBGridEh1.Columns[0].ButtonStyle := cbsNone;
      DBGridEh1.Columns[1].ButtonStyle := cbsNone;
    end
    else if (PageControl1.ActivePageIndex = 1) then
    begin
      Query2.First;
      for i := 1 to Query2.RecordCount do
      begin
        case Query2.UpdateStatus of
          usInserted:
          begin
            if (Query2.FieldByName('MKID').IsNull) OR (Query2.FieldByName('mainForm').IsNull) OR (Query2.FieldByName('VCLID').IsNull) OR (Query2.FieldByName('FieldName').IsNull) then
            begin
              Query2.Delete;
            end
            else begin
              Query2.Edit;
              Query2.FieldByName('UserID').Value := main.Edit1.Text;
              Query2.FieldByName('YN').Value := 1;
              UpdateSQL2.Apply(ukInsert);
            end;
          end;

          usModified:
          begin
            if (Query2.FieldByName('YN').value = 0) then
            begin
              UpdateSQL2.Apply(ukDelete);
            end
            else begin
              Query2.Edit;
              Query2.FieldByName('USERID').Value := main.Edit1.text;
              UpdateSQL2.Apply(ukModify);
            end;
          end;
        end;

        Query2.Next;
      end;

      Query2.Active := false;
      Query2.CachedUpdates := false;
      Query2.RequestLive := false;
      Query2.Active := true;

      DBGridEh2.Columns[0].ButtonStyle := cbsNone;
      DBGridEh2.Columns[1].ButtonStyle := cbsNone;
    end
    else if (PageControl1.ActivePageIndex = 2) then
    begin
      Query3.First;
      for i := 1 to Query3.RecordCount do
      begin
        case Query3.UpdateStatus of
          usInserted:
          begin
            if (Query3.FieldByName('MKID').IsNull) OR (Query3.FieldByName('FORMID').IsNull) then
            begin
              Query3.Delete;
            end
            else begin
              UpdateSQL3.Apply(ukInsert);
            end;
          end;

          usModified:
          begin
            if (Query3.FieldByName('YN').value = 0) then
            begin
              UpdateSQL3.Apply(ukDelete);
            end
            else begin
              UpdateSQL3.Apply(ukModify);
            end;
          end;
        end;

        Query3.Next;
      end;

      Query3.Active := false;
      Query3.CachedUpdates := false;
      Query3.RequestLive := false;
      Query3.Active := true;

      DBGridEh3.Columns[0].ButtonStyle := cbsNone;
      DBGridEh3.Columns[2].ButtonStyle := cbsNone;
    end;

    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TUILanguages.BB6Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then
  begin
    with Query1 do
    begin
      Active := false;
      RequestLive := false;
      CachedUpdates := false;
      Active := true;
    end;

    DBGridEh1.Columns[0].ButtonStyle := cbsNone;
    DBGridEh1.Columns[1].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 1) then
  begin
    with Query2 do
    begin
      Active := false;
      RequestLive := false;
      CachedUpdates := false;
      Active := true;
    end;

    DBGridEh2.Columns[0].ButtonStyle := cbsNone;
    DBGridEh2.Columns[1].ButtonStyle := cbsNone;
  end
  else if (PageControl1.ActivePageIndex = 2) then
  begin
    with Query3 do
    begin
      Active := false;
      RequestLive := false;
      CachedUpdates := false;
      Active := true;
    end;

    DBGridEh3.Columns[0].ButtonStyle := cbsNone;
    DBGridEh3.Columns[2].ButtonStyle := cbsNone;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TUILanguages.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TUILanguages.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('You have to save the data first.', mtwarning, [mbyes], 0);
    AllowChange := false;
  end;
end;
     
procedure TUILanguages.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 2) then
  begin
    Label2.Visible := false;
    MainFormEdit.Visible := false;
  end
  else begin
    Label2.Visible := true;
    MainFormEdit.Visible := true;
  end;
end;

procedure TUILanguages.DBGridEh1EditButtonClick(Sender: TObject);
begin
  Module := TModule.Create(Self);
  Module.Show;
end;
      
procedure TUILanguages.DBGridEh2EditButtonClick(Sender: TObject);
begin
  Module := TModule.Create(Self);
  Module.Show;
end;
      
procedure TUILanguages.DBGridEh3EditButtonClick(Sender: TObject);
begin
  Module := TModule.Create(Self);
  Module.Show;
end;

procedure TUILanguages.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.color := clRed;
end;

procedure TUILanguages.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query2.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.color := clRed;
end;

procedure TUILanguages.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query3.FieldByName('YN').AsString = '0') then
    DBGridEh3.Canvas.Font.color := clRed;
end;

end.
