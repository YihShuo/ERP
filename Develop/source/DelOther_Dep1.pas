unit DelOther_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelOther_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_Dep: TDelOther_Dep;

implementation

uses  DelOther1, main1;

{$R *.dfm}

procedure TDelOther_Dep.Button1Click(Sender: TObject);
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
    sql.add('and GSBH='+''''+main.edit2.Text+'''');  
    sql.add('and YN='+''''+'1'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TDelOther_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TDelOther_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TDelOther_Dep.FormDestroy(Sender: TObject);
begin
DelOther_Dep:=nil;
end;

procedure TDelOther_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TDelOther_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DelOther.DelMas do
      begin
        edit;
        FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
      end;
    close;
  end;
end;

procedure TDelOther_Dep.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
