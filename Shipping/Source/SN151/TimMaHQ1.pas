unit TimMaHQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TTimMaHQ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimMaHQ: TTimMaHQ;

implementation

uses MaHaiQuan1, main1;

{$R *.dfm}

procedure TTimMaHQ.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select cldh,zwpm,ywpm');
    sql.add('from clzl');
    sql.add('Where cldh like '+''''+edit1.Text+'%'+'''');
    sql.add('and ywpm like '+'''%'+edit2.Text+'%'+'''');
    active:=true;
  end;
end;


procedure TTimMaHQ.DBGridEh1DblClick(Sender: TObject);
var i:integer;
  dNeed,dNeed1:double;
begin
  dNeed:=query1.fieldbyname('cldh').value;
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with TimMaHQ.Query1 do
  begin
  if Query1.Fields[0].FieldName <> ''  then
  begin
    MaHaiQuan.Query1.FieldByName('clbh').AsString:= Query1.FieldByName('cldh').AsString;
    MaHaiQuan.Query1.FieldByName('ywpm').AsString:= Query1.FieldByName('ywpm').AsString;
  end;
    showmessage('Succeed.');
  end;
end;
procedure TTimMaHQ.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
