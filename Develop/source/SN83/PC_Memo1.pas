unit PC_Memo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, GridsEh, DBGridEh, ExtCtrls, Menus,
  Mask, DBCtrls;

type
  TPC_Memo = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    DBGridEh2: TDBGridEh;
    Button1: TButton;
    DataSource2: TDataSource;
    Query2: TQuery;
    Query1DEVCODE: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query2Department: TStringField;
    Query2UserDate: TDateTimeField;
    Query2Remark: TStringField;
    Query2UserID: TStringField;
    PopupMenu1: TPopupMenu;
    INSERT: TMenuItem;
    MODIFY: TMenuItem;
    SAVE: TMenuItem;
    CANCEL: TMenuItem;
    Query2Status: TStringField;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2BDep: TStringField;
    Query2BRemark: TStringField;
    DELETE: TMenuItem;
    Label1: TLabel;
    Label3: TLabel;
    CB1: TComboBox;
    Edit2: TEdit;
    QSearch: TQuery;
    Query1XieMing: TStringField;
    Query1JIJIE: TStringField;
    Query1FD: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    ShoeImage: TImage;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Query1ImgPath: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure INSERTClick(Sender: TObject);
    procedure MODIFYClick(Sender: TObject);
    procedure SAVEClick(Sender: TObject);
    procedure CANCELClick(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure DELETEClick(Sender: TObject);
    procedure Query2AfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PC_Memo: TPC_Memo;
  IsEdit: Boolean;

implementation

uses
  main1;
{$R *.dfm}

procedure TPC_Memo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPC_Memo.FormDestroy(Sender: TObject);
begin
  PC_Memo := Nil;
end;
 
procedure TPC_Memo.FormCreate(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KFXXZL.JiJie FROM KFXXZL');
    SQL.Add('LEFT JOIN KFZL_GS on KFZL_GS.KHBH = KFXXZL.KHDH');
    SQL.Add('WHERE FD IS NOT NULL AND KFZL_GS.GSBH = ''' + main.Edit2.Text + ''' AND RIGHT(LEFT(KFXXZL.JiJie, 2), 2) BETWEEN ''16'' AND ''50'' AND LEN(KFXXZL.JiJie) < 4');
    SQL.Add('GROUP BY KFXXZL.JiJie');
    SQL.Add('ORDER BY KFXXZL.JiJie DESC');
    Active := true;

    CB1.Items.Clear;
    while not Eof do
    begin
      CB1.Items.Add(FieldByName('JiJie').AsString);
      Next;
    end;
  end;
  IsEdit := false;
end;

procedure TPC_Memo.Button1Click(Sender: TObject);
begin
  Query2.Active := false;
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KFXXZL.DEVCODE, KFXXZL.XieMing, KFXXZL.JIJIE, KFXXZL.FD, KFXXZL.XieXing, KFXXZL.SheHao,');
    SQL.Add('''\\192.168.23.11\A_DataCenter'' +  SUBSTRING(XXZLKF.ImgNameCFM, CHARINDEX(''\CDC'', XXZLKF.ImgNameCFM), LEN(XXZLKF.ImgNameCFM)) AS ImgPath FROM KFXXZL');
    SQL.Add('LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZLKF.SheHao = KFXXZL.SheHao');
    SQL.Add('WHERE KFXXZL.JIJIE = ''' + CB1.Text + ''' AND KFXXZL.FD LIKE ''' + Edit2.Text + '%'' AND KFXXZL.DEVCODE LIKE ''' + Edit1.Text + '%''');
    SQL.Add('AND LEN(KFXXZL.SheHao) <= 2 AND XXZLKF.Dropped <> ''1'' AND XXZLKF.Transfer <> ''1''');
    Active := true;
  end;
  Query2.Active := true;
  DBGridEh1.SetFocus;
end;

procedure TPC_Memo.INSERTClick(Sender: TObject);
begin
  Query2.RequestLive := true;
  Query2.CachedUpdates := true;
  Query2.Insert;
  Query2.FieldByName('XieXing').Value := Query1.FieldByName('XieXing').AsString;
  Query2.FieldByName('SheHao').Value := Query1.FieldByName('SheHao').AsString;
  Query2.FieldByName('UserID').Value := main.Edit1.Text;
  Query2.FieldByName('Status').Value := 'N';
  DBGridEh2.Options := DBGridEh2.Options - [dgRowSelect] + [dgEditing];
  PopupMenu1.Items[0].Visible := false;
  PopupMenu1.Items[1].Visible := false;
  PopupMenu1.Items[2].Visible := true;
  PopupMenu1.Items[3].Visible := true;
  PopupMenu1.Items[4].Visible := false;
end;

procedure TPC_Memo.MODIFYClick(Sender: TObject);
begin
  IsEdit := true;
  Query2.RequestLive := true;
  Query2.CachedUpdates := true;
  Query2.Edit;
  PopupMenu1.Items[0].Visible := false;
  PopupMenu1.Items[1].Visible := false;
  PopupMenu1.Items[2].Visible := true;
  PopupMenu1.Items[3].Visible := true;
  PopupMenu1.Items[4].Visible := false;
  DBGridEh2.Options := DBGridEh1.Options - [dgRowSelect] + [dgEditing];

  if (Query2.FieldByName('UserID').AsString = main.Edit1.Text) then
    DBGridEh2.Options := DBGridEh1.Options - [dgRowSelect] + [dgEditing]
  else
    DBGridEh2.Options := DBGridEh1.Options + [dgRowSelect] - [dgEditing];
end;

procedure TPC_Memo.SAVEClick(Sender: TObject);
begin
  IsEdit := false;
  try
    Query2.First;
    while not Query2.Eof do
    begin
      if (Query2.FieldByName('Status').AsString = 'N') then
        UpdateSQL1.Apply(ukInsert)
      else if (Query2.FieldByName('Department').AsString <> Query2.FieldByName('BDep').AsString) OR (Query2.FieldByName('Remark').AsString <> Query2.FieldByName('BRemark').AsString) then
        UpdateSQL1.Apply(ukModify);

      Query2.Next;
    end;
  except
    Messagedlg('Error, can not save data!', mtwarning, [mbyes], 0);
  end;
  
  Query2.Active := false;
  Query2.RequestLive := false;
  Query2.CachedUpdates := false;
  Query2.Active := true;
  if (Query2.RecordCount > 0) then
  begin
    PopupMenu1.Items[0].Visible := true;
    PopupMenu1.Items[1].Visible := true;
    PopupMenu1.Items[2].Visible := false;
    PopupMenu1.Items[3].Visible := false;
    PopupMenu1.Items[4].Visible := true;
  end
  else begin
    PopupMenu1.Items[0].Visible := true;
    PopupMenu1.Items[1].Visible := false;
    PopupMenu1.Items[2].Visible := false;
    PopupMenu1.Items[3].Visible := false;
    PopupMenu1.Items[4].Visible := false;
  end;
  DBGridEh2.Options := DBGridEh1.Options + [dgRowSelect] - [dgEditing];
  ShowMessage('Completed');
end;
 
procedure TPC_Memo.DELETEClick(Sender: TObject);
begin
  if (Query2.FieldByName('UserID').AsString = main.Edit1.Text) then
  begin
    Query2.RequestLive := true;
    Query2.CachedUpdates := true;

    if (Messagedlg('Are you sure to delete it?', mtwarning, [mbYes, mbNo], 0) = mrYes) then
    begin
      UpdateSQL1.Apply(ukDelete);
      Query2.Active := false;
      Query2.RequestLive := false;
      Query2.CachedUpdates := false;
      Query2.Active := true;
      ShowMessage('Completed');
    end
    else begin
      Query2.RequestLive := false;
      Query2.CachedUpdates := false;
    end;
  end
  else begin
    ShowMessage('You don''t have permission to delete the data.');
  end;
end;

procedure TPC_Memo.CANCELClick(Sender: TObject);
begin
  IsEdit := false;
  Query2.Active := false;
  Query2.RequestLive := false;
  Query2.CachedUpdates := false;
  Query2.Active := true;
  if (Query2.RecordCount > 0) then
  begin
    PopupMenu1.Items[0].Visible := true;
    PopupMenu1.Items[1].Visible := true;
    PopupMenu1.Items[2].Visible := false;
    PopupMenu1.Items[3].Visible := false;
    PopupMenu1.Items[4].Visible := true;
  end
  else begin
    PopupMenu1.Items[0].Visible := true;
    PopupMenu1.Items[1].Visible := false;
    PopupMenu1.Items[2].Visible := false;
    PopupMenu1.Items[3].Visible := false;
    PopupMenu1.Items[4].Visible := false;
  end;
  DBGridEh2.Options := DBGridEh2.Options + [dgRowSelect] - [dgEditing];
end;

procedure TPC_Memo.Query2AfterOpen(DataSet: TDataSet);
begin
  if (Query1.FieldByName('DEVCODE').AsString <> '') then
  begin
    if (Query2.RecordCount > 0) then
    begin
      PopupMenu1.Items[0].Visible := true;
      PopupMenu1.Items[1].Visible := true;
      PopupMenu1.Items[2].Visible := false;
      PopupMenu1.Items[3].Visible := false;
      PopupMenu1.Items[4].Visible := true;
    end
    else begin
      PopupMenu1.Items[0].Visible := true;
      PopupMenu1.Items[1].Visible := false;
      PopupMenu1.Items[2].Visible := false;
      PopupMenu1.Items[3].Visible := false;
      PopupMenu1.Items[4].Visible := false;
    end;
  end
  else begin
    PopupMenu1.Items[0].Visible := false;
    PopupMenu1.Items[1].Visible := false;
    PopupMenu1.Items[2].Visible := false;
    PopupMenu1.Items[3].Visible := false;
    PopupMenu1.Items[4].Visible := false;
  end;
end;
   
procedure TPC_Memo.Query2AfterScroll(DataSet: TDataSet);
begin
  if (IsEdit) then
    Query2.Edit;

  if (Query2.State IN [dsEdit]) AND (Query2.FieldByName('UserID').AsString = main.Edit1.Text) then
    DBGridEh2.Options := DBGridEh1.Options - [dgRowSelect] + [dgEditing]
  else
    DBGridEh2.Options := DBGridEh1.Options + [dgRowSelect] - [dgEditing];
end;

procedure TPC_Memo.FormResize(Sender: TObject);
var
  Width: Integer;
begin
  Width := DBGridEh2.Width - (DBGridEh2.Columns[0].Width + DBGridEh2.Columns[1].Width + DBGridEh2.Columns[2].Width + 40);
  if (Width < 100) then
    Width := 100;
  DBGridEh2.Columns[3].Width := Width;
end;

procedure TPC_Memo.Query1AfterOpen(DataSet: TDataSet);
begin
  if (FileExists(Query1.FieldByName('ImgPath').AsString)) then
  begin
    Label6.Visible := false;
    ShoeImage.Picture.LoadFromFile(Query1.FieldByName('ImgPath').AsString);
  end
  else begin
    Label6.Visible := true;
    ShoeImage.Picture.Bitmap := nil;
  end;
end;

procedure TPC_Memo.Query1AfterScroll(DataSet: TDataSet);
begin
  if (FileExists(Query1.FieldByName('ImgPath').AsString)) then
  begin
    Label6.Visible := false;
    ShoeImage.Picture.LoadFromFile(Query1.FieldByName('ImgPath').AsString);
  end
  else begin
    Label6.Visible := true;
    ShoeImage.Picture.Bitmap := nil;
  end;
end;

end.
