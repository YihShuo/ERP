unit DelOther_C_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TDelOther_C_Dep = class(TForm)
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
    DBGrid1: TDBGrid;
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
  DelOther_C_Dep: TDelOther_C_Dep;

implementation

uses DelOther_C1, main1;

{$R *.dfm}

procedure TDelOther_C_Dep.Button1Click(Sender: TObject);
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

procedure TDelOther_C_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TDelOther_C_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TDelOther_C_Dep.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with DelOther_C.DelMas do
      begin
        edit;
        FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
      end;
    close;
  end;
end;

procedure TDelOther_C_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TDelOther_C_Dep.FormDestroy(Sender: TObject);
begin
DelOther_C_Dep:=nil;
end;

procedure TDelOther_C_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
