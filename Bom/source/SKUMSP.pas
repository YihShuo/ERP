unit SKUMSP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  GridsEh, DBGridEh;

type
  TSKUMS = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    Panel2: TPanel;
    BB4: TBitBtn;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1SKU: TStringField;
    Query1ARTICLE: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query2: TQuery;
    Query2sku: TStringField;
    BB5: TBitBtn;
    Query1UserDate: TDateTimeField;
    Query1UserID: TStringField;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SKUMS: TSKUMS;

implementation
  uses main1;
{$R *.dfm}

procedure TSKUMS.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from SKUMAP');
    sql.add('where SKU like'+''''+'%'+edit1.text+'%'+'''');
    sql.add('      and ARTICLE like'+''''+'%'+edit2.text+'%'+'''');
    sql.add('order by SKU');
    //memo1.Text:=query1.SQL.Text;
    active:=true;
  end;
  bb4.Enabled:=true;
end;

procedure TSKUMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SKUMS:=nil;
  action:=cafree;
end;

procedure TSKUMS.BB4Click(Sender: TObject);
begin
  query1.RequestLive:=true;    //將query的唯獨屬性打開
  query1.CachedUpdates:=true;
  bb1.Enabled:=false;
  bb2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=false;
  bb5.Enabled:=true;
end;

procedure TSKUMS.BB2Click(Sender: TObject);
begin
  if (edit1.Text = '') or (edit2.Text = '') then
  begin
    showmessage('SKU or ARTICLE can''t insert NULL');
    abort;  //中斷執行
  end
  else
  begin
    with query2 do
    begin
      sql.Clear;
      sql.add('select SKU from SKUMAP');
      sql.add('where SKU = '+''''+edit1.text+'''');
      active:=true;
    end;
    if edit1.text = query2.FieldByName('SKU').Value then
    begin
      showmessage('SKU# '+edit1.text+' exist in SKU mapping list');
      abort;
    end
    else
    begin
    try  //先嘗試寫入DB是否成功
      with query1 do
      begin
        append;
        fieldbyname('sku').Value:=edit1.text;
        fieldbyname('article').Value:=edit2.text;
        fieldbyname('UserDate').Value:=now();
        fieldbyname('UserID').Value:=main.Edit1.Text;
        updatesql1.Apply(ukinsert);
      end;
    except;
      showmessage('Have wrong');
    end;
    end;
  end;
   query1.Active:=false;
   query1.sql.clear;
   query1.sql.Add('select * from skumap');
   query1.Active:=true;
end;

procedure TSKUMS.BB3Click(Sender: TObject);
begin
    with query1 do
    begin
      if query1.RecordCount > 0 then
      begin
        updatesql1.Apply(ukdelete);
      end;
    end;
    query1.Active:=false;
    query1.sql.clear;
    query1.sql.Add('select * from skumap');
    query1.Active:=true;
end;

procedure TSKUMS.FormDestroy(Sender: TObject);
begin
  SKUMS:=nil;
end;

procedure TSKUMS.BB5Click(Sender: TObject);
begin
  query1.RequestLive:=false;    //將query的唯獨屬性關閉
  query1.CachedUpdates:=false;
  bb1.Enabled:=true;
  bb2.Enabled:=false;
  bb3.Enabled:=false;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
end;

end.
