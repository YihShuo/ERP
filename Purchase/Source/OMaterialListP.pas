unit OMaterialListP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls, GridsEh,
  DBGridEh;

type
  TOMaterialList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CBX1: TComboBox;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query3: TQuery;
    UpdateSQL3: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    Query2cllb: TStringField;
    Query2ywsm: TStringField;
    Query3GSBH: TStringField;
    Query3cllb: TStringField;
    Query3lb: TStringField;
    Query3USERID: TStringField;
    Query3USERDATE: TDateTimeField;
    Query3ywsm: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OMaterialList: TOMaterialList;

implementation

uses main1;

{$R *.dfm}

procedure TOMaterialList.FormCreate(Sender: TObject);
begin
with query1 do
begin
    active:=false;
    sql.Clear;
    sql.Add('select lb from cllbzl group by lb order by lb');
    active:=true;
      while not eof do
      begin
        cbx1.items.Add(fieldbyname('lb').asstring);
        next;
      end;
    active:=false;
end;

end;

procedure TOMaterialList.CBX1Change(Sender: TObject);
begin

  with query2 do
  begin
    sql.Clear;
    sql.add('select cllb,ywsm from cllbzl');
    sql.add('where not exists');
    sql.add('         (select * from CLOther');
    sql.add('          where cllbzl.cllb = CLOther.cllb');
    sql.add('          and GSBH='+''''+main.edit2.text+''''+')');
    sql.Add('      and lb='+''''+cbx1.text+''''+'');
    active:=true;
  end;

  with query3 do
  begin
    sql.Clear;
    sql.add('select CLOther.*,cllbzl.ywsm from CLOther');
    sql.add('left join cllbzl on CLOther.cllb = cllbzl.cllb');
    sql.add('where CLOther.lb='+''''+cbx1.text+''''+'');
    sql.add('      and GSBH='+''''+main.edit2.text+''''+'');
    active:=true;
  end;
end;

procedure TOMaterialList.FormDestroy(Sender: TObject);
begin
  OMaterialList:=nil;
end;

procedure TOMaterialList.Button3Click(Sender: TObject);
begin
  query2.RequestLive:=true;    //將query的唯獨屬性關閉
  query2.CachedUpdates:=true;
  query3.RequestLive:=true;
  query3.CachedUpdates:=true;
  button1.Enabled:=true;      //啟用add按鈕
  button2.Enabled:=true;
end;

procedure TOMaterialList.Button1Click(Sender: TObject);
begin
  try   //先嘗試寫入DB是否成功
    with query3 do
    begin
      if query2.recordcount > 0 then  //檢查query2結果資料列是否大於0
      begin
        append;
        fieldbyname('GSBH').Value:=main.Edit2.Text;
        fieldbyname('cllb').Value:=query2.fieldbyname('cllb').Value;
        fieldbyname('lb').Value:=cbx1.Text;
        fieldbyname('USERID').Value:=main.Edit1.Text;
        fieldbyname('USERDATE').Value:=date;
        updatesql3.Apply(ukinsert);
      end;
    end;
    query2.Active:=false;
    query3.Active:=false;
    query2.Active:=true;
    query3.Active:=true;
  except;
    showmessage('Have wrong.');
  end;
end;

procedure TOMaterialList.Button2Click(Sender: TObject);
begin
  try
    with query3 do
    begin
      if query3.RecordCount>0 then
        updatesql3.apply(ukdelete);
    end;
    query2.Active:=false;
    query3.Active:=false;
    query2.Active:=true;
    query3.Active:=true;
  except
  showmessage('Have wrong');
  end;
end;

procedure TOMaterialList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
