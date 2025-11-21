unit TimMaTC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TTimMaTC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimMaTC: TTimMaTC;

implementation

uses MaHaiQuanTC1, main1;

{$R *.dfm}

procedure TTimMaTC.Button1Click(Sender: TObject);
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

procedure TTimMaTC.DBGridEh1DblClick(Sender: TObject);
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
  with TimMaTC.Query1 do
  begin
  if Query1.Fields[0].FieldName <> ''  then
  begin
    MaHaiQuanTC.Query1.FieldByName('clbh').AsString:= Query1.FieldByName('cldh').AsString;
    MaHaiQuanTC.Query1.FieldByName('ywpm').AsString:= Query1.FieldByName('ywpm').AsString;
  end;
    showmessage('Succeed.');
  end;
end;

procedure TTimMaTC.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
