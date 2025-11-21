unit BWorker_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls;

type
  TBWorker_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BWorker_Dep: TBWorker_Dep;

implementation

uses BWorker1;

{$R *.dfm}

procedure TBWorker_Dep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Depname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TBWorker_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TBWorker_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TBWorker_Dep.DBGrid1DblClick(Sender: TObject);
begin
BWorker.Query1.edit;
BWorker.Query1.FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
BWorker.Query1.FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
close;
end;

procedure TBWorker_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TBWorker_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TBWorker_Dep.FormDestroy(Sender: TObject);
begin
BWorker_dep:=nil;
end;

end.
