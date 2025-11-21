unit OnTime_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TOnTime_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OnTime_Dep: TOnTime_Dep;

implementation

uses Ontime1;

{$R *.dfm}

procedure TOnTime_Dep.Button1Click(Sender: TObject);
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
    sql.add('and (ProYN=1 or ID like '+''''+'VTY0601'+'%'+''''+')');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TOnTime_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus;
end;

procedure TOnTime_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TOnTime_Dep.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    OnTime.QRepMas.edit;
    OnTime.QRepMas.FieldByName('DepNo').Value:=query1.fieldbyname('ID').Value;
    OnTime.QRepMas.FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
    close;
  end;
end;

procedure TOnTime_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TOnTime_Dep.FormDestroy(Sender: TObject);
begin
OnTime_Dep:=nil;
end;

procedure TOnTime_Dep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
