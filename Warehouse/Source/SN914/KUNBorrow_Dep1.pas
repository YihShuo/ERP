unit KUNBorrow_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TKUNBorrow_Dep = class(TForm)
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
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KUNBorrow_Dep: TKUNBorrow_Dep;

implementation

uses main1, LYV_KUNBorrow1;

{$R *.dfm}

procedure TKUNBorrow_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '''+edit1.Text+'%'' ');
    sql.add('  and Depname like ''%'+edit2.Text+'%'' ');
    sql.add('  and GSBH='''+main.edit2.Text+''' ');
    if CheckBox1.Checked=true then
    sql.add('  and Substring(Flag,1,1)=''1'' '); //Bepartment Flag first char=1 , it means  Phom Use
    sql.add('Order by DepName');
    active:=true;
  end;
end;

procedure TKUNBorrow_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TKUNBorrow_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TKUNBorrow_Dep.FormDestroy(Sender: TObject);
begin
  KUNBorrow_Dep:=nil;
end;

procedure TKUNBorrow_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.recordcount>0 then
  begin
     with LYV_KUNBorrow.DelMas do
     begin
        Edit;
        FieldByName('DepID').Value:=Query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=Query1.fieldbyname('DepName').Value;
        FieldByName('Memo').Value:=Query1.fieldbyname('DepName').Value;
     end;
     close;
  end;
end;

procedure TKUNBorrow_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1Dblclick(nil);
end;

end.
