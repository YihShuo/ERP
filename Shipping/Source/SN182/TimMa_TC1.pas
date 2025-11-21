unit TimMa_TC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TTimMa_TC = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimMa_TC: TTimMa_TC;

implementation

uses MaHaiQuan_TC1, main1;

{$R *.dfm}

procedure TTimMa_TC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTimMa_TC.FormDestroy(Sender: TObject);
begin
  TimMa_TC:=nil;
end;

procedure TTimMa_TC.Button1Click(Sender: TObject);
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

procedure TTimMa_TC.DBGridEh1DblClick(Sender: TObject);
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
  with TimMa_TC.Query1 do
  begin
  if Query1.Fields[0].FieldName <> ''  then
  begin
    MaHaiQuan_TC.Query1.FieldByName('clbh').AsString:= Query1.FieldByName('cldh').AsString;
    MaHaiQuan_TC.Query1.FieldByName('ywpm').AsString:= Query1.FieldByName('ywpm').AsString;
  end;
    showmessage('Succeed.');
  end;
end;

procedure TTimMa_TC.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
