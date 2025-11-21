unit SPRSP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  GridsEh, DBGridEh;

type
  TSPRS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CBX1: TComboBox;
    Query1: TQuery;
    Edit1: TEdit;
    Panel2: TPanel;
    Query2: TQuery;
    DataSource1: TDataSource;
    Query2bwdh: TStringField;
    DataSource2: TDataSource;
    Query3: TQuery;
    Query3bwdh: TStringField;
    UpdateSQL2: TUpdateSQL;
    Button1: TButton;
    Query3khbh: TStringField;
    Button2: TButton;
    Button3: TButton;
    UpdateSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SPRS: TSPRS;

implementation

{$R *.dfm}

procedure TSPRS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SPRS:=nil;
  action:=cafree;
end;

procedure TSPRS.FormCreate(Sender: TObject);
begin

with query1 do
begin
    active:=false;
    sql.Clear;
    sql.Add('select kfdh from kfzl order by kfdh');
    active:=true;
      while not eof do
      begin
        cbx1.items.Add(fieldbyname('kfdh').asstring);
        next;
      end;
    active:=false;
end;

end;

procedure TSPRS.CBX1Change(Sender: TObject);
begin
  with query1 do
  begin
    sql.Clear;
    sql.add('select kfjc from kfzl where kfdh='+''''+cbx1.text+'''');
    active:=true;
    edit1.Text:=fieldbyname('kfjc').AsString;
  end;

  with query2 do
  begin
    sql.Clear;
    sql.add('select bwdh from bwzl');
    sql.add('where not exists');
    sql.add('(select bwmap.bwdh from bwmap');
    sql.add('where khbh='+''''+cbx1.text+'''');
    sql.add('and bwzl.bwdh=bwmap.bwdh)');
    active:=true;
  end;

  with query3 do
  begin
    sql.Clear;
    sql.add('select bwdh,khbh from bwmap where khbh='+''''+cbx1.text+'''');
    active:=true;
  end;
end;

procedure TSPRS.FormDestroy(Sender: TObject);
begin
SPRS:=nil;
end;

procedure TSPRS.Button1Click(Sender: TObject);
begin
try   //先嘗試寫入DB是否成功
  with query3 do
  begin
    if query2.recordcount > 0 then  //檢查query2結果資料列是否大於0
    begin
      append;
      fieldbyname('khbh').Value:=cbx1.text;
      fieldbyname('bwdh').Value:=query2.fieldbyname('bwdh').Value;
      updatesql2.Apply(ukinsert);
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
procedure TSPRS.Button3Click(Sender: TObject);
begin
query2.RequestLive:=true;    //將query的唯獨屬性關閉
query2.CachedUpdates:=true;
query3.RequestLive:=true;
query3.CachedUpdates:=true;
button1.Enabled:=true;      //啟用add按鈕
button2.Enabled:=true;
end;

procedure TSPRS.Button2Click(Sender: TObject);
begin
  try
    with query3 do
    begin
      if query3.RecordCount>0 then
        updatesql2.apply(ukdelete);
    end;
    query2.Active:=false;
    query3.Active:=false;
    query2.Active:=true;
    query3.Active:=true;
  except
  showmessage('Have wrong');
  end;
end;

end.
