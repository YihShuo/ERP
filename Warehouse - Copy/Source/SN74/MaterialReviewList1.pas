unit MaterialReviewList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBTables,
  GridsEh, comobj, DBGridEh;

type
  TMaterialReviewList = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BBT5: TBitBtn;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1MEMO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BBT5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialReviewList: TMaterialReviewList;

implementation

uses main1, MaterialReviewList_VN1;

{$R *.dfm}

procedure TMaterialReviewList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {FormClose}
  Action := Cafree;
end;

procedure TMaterialReviewList.FormCreate(Sender: TObject);
begin
  {FromCreate}
end;

procedure TMaterialReviewList.FormDestroy(Sender: TObject);
begin
  {FormDestroy}
  MaterialReviewList := nil;
end;

procedure TMaterialReviewList.BB1Click(Sender: TObject);
begin
  {Query}
  Panel2.Visible := true;
end;

procedure TMaterialReviewList.BB2Click(Sender: TObject);
begin
  {Insert}
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TMaterialReviewList.BB3Click(Sender: TObject);
begin
  {Delete}
  with Query1 do
  begin
    if (FieldByName('USERID').value = main.edit1.Text) then
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := '0';
    end
    else
    begin
      ShowMessage('It is not yours, can not delete.');
    end;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[1].ButtonStyle := cbsEllipsis;
end;

procedure TMaterialReviewList.BB4Click(Sender: TObject);
begin
  {Modify}
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[2].ReadOnly := true;
end;

procedure TMaterialReviewList.BB5Click(Sender: TObject);
var
  i: integer;
begin
  {Save}
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        {Insert Start}
        usinserted:
          begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := now;
            Query1.FieldByName('YN').Value := '1';
            UpdateSQL1.Apply(ukinsert);
          end;
        {Insert End}
        {Modified Start}
        usmodified:
          begin
            if (Query1.FieldByName('YN').Value = '0') then
            begin
              UpdateSQL1.Apply(ukdelete);
            end
            else
            begin
              if (Query1.FieldByName('USERID').Value = main.Edit1.Text) then
              begin
                Query1.Edit;
                Query1.FieldByName('USERID').Value := main.Edit1.Text;
                Query1.FieldByName('USERDATE').Value := now;
                UpdateSQL1.Apply(ukmodify);
              end
              else
              begin
                ShowMessage('It is not yours, can not modify.');
              end;
            end;
          end;
        {Modified End}
      end;
      Query1.Next;
    end;
    Query1.Active := false;
    Query1.CachedUpdates := false;
    QUery1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    ShowMessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TMaterialReviewList.BB6Click(Sender: TObject);
begin
  {Cancel}
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TMaterialReviewList.BB7Click(Sender: TObject);
begin
  {Exit}
  Close;
end;

procedure TMaterialReviewList.BBT1Click(Sender: TObject);
begin
  {First}
  Query1.First;
end;

procedure TMaterialReviewList.BBT2Click(Sender: TObject);
begin
  {Prior}
  Query1.Prior;
end;

procedure TMaterialReviewList.BBT3Click(Sender: TObject);
begin
  {Next}
  Query1.Next;
end;

procedure TMaterialReviewList.BBT4Click(Sender: TObject);
begin
  {Last}
  Query1.Last;
end;

procedure TMaterialReviewList.BBT5Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if (Query1.Active) then
  begin
    if (Query1.RecordCount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK +
      MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal := '@';
    eclApp.Cells(1, 1) := 'NO';
    for i := 1 to Query1.fieldcount do
    begin
      eclApp.Cells(1, i + 1) := Query1.Fields[i - 1].FieldName;
    end;
    Query1.First;
    j := 2;
    while not Query1.Eof do
    begin
      eclApp.Cells(j, 1) := j - 1;
      for i := 1 to Query1.FieldCount do
      begin
        eclApp.Cells(j, i + 1) := Query1.Fields[i - 1].Value;
        eclApp.Cells.Cells.item[j, i + 1].font.size := '8';
      end;
      Query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
      ShowMessage(F.Message);
  end;

end;

procedure TMaterialReviewList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MaterialReviewList_TPM.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH FROM MaterialReviewList_TPM');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH=MaterialReviewList_TPM.CLBH');
    if ((Edit1.Text <> '') or (Edit2.Text <> '')) then
    begin
      SQL.Add('WHERE MaterialReviewList_TPM.CLBH LIKE :MateiralNo AND (CLZL.YWPM LIKE :MateiralName OR CLZL.ZWPM LIKE :MateiralName)');
      ParamByName('MateiralNo').Value := '%' + Edit1.Text + '%';
      ParamByName('MateiralName').Value := '%' + Edit2.Text + '%';
    end;
    SQL.Add('ORDER BY MaterialReviewList_TPM.CLBH');
    Active := true;
  end;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BBT1.Enabled := true;
  BBT2.Enabled := true;
  BBT3.Enabled := true;
  BBT4.Enabled := true;
  BBT5.Enabled := true;
end;

procedure TMaterialReviewList.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'CLBH') then
  begin
    MaterialReviewList_VN := TMaterialReviewList_VN.Create(self);
    MaterialReviewList_VN.Show;
  end;
end;

end.
