unit InternalArticleList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBTables,
  GridsEh, comobj, DBGridEh;

type
  TInternalArticleList = class(TForm)
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
    Query1MEMO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1Article: TStringField;
    Query1YN: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InternalArticleList: TInternalArticleList;

implementation

uses main1;

{$R *.dfm}

procedure TInternalArticleList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {FormClose}
  Action := Cafree;
end;

procedure TInternalArticleList.FormCreate(Sender: TObject);
begin
  {FromCreate}
end;

procedure TInternalArticleList.FormDestroy(Sender: TObject);
begin
  {FormDestroy}
  InternalArticleList := nil;
end;

procedure TInternalArticleList.BB1Click(Sender: TObject);
begin
  {Query}
  Panel2.Visible := true;
end;

procedure TInternalArticleList.BB2Click(Sender: TObject);
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
end;

procedure TInternalArticleList.BB3Click(Sender: TObject);
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
      Abort;
    end;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TInternalArticleList.BB4Click(Sender: TObject);
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
end;

procedure TInternalArticleList.BB5Click(Sender: TObject);
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
            Query1.FieldByName('YN').Value := '';
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
                Abort;
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

procedure TInternalArticleList.BB6Click(Sender: TObject);
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

procedure TInternalArticleList.BB7Click(Sender: TObject);
begin
  {Exit}
  Close;
end;

procedure TInternalArticleList.BBT1Click(Sender: TObject);
begin
  {First}
  Query1.First;
end;

procedure TInternalArticleList.BBT2Click(Sender: TObject);
begin
  {Prior}
  Query1.Prior;
end;

procedure TInternalArticleList.BBT3Click(Sender: TObject);
begin
  {Next}
  Query1.Next;
end;

procedure TInternalArticleList.BBT4Click(Sender: TObject);
begin
  {Last}
  Query1.Last;
end;

procedure TInternalArticleList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Lab_internal_article.* FROM Lab_internal_article');
    if ((Edit1.Text <> '') or (Edit2.Text <> '')) then
    begin
      SQL.Add('WHERE Lab_internal_article.Article LIKE :Article AND Lab_internal_article.Model LIKE :Model');
      ParamByName('Article').Value := '%' + Edit1.Text + '%';
      ParamByName('Model').Value := '%' + Edit2.Text + '%';
    end;
    SQL.Add('ORDER BY Lab_internal_article.Article');
    Active := true;
  end;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BBT1.Enabled := true;
  BBT2.Enabled := true;
  BBT3.Enabled := true;
  BBT4.Enabled := true;
end;

end.
