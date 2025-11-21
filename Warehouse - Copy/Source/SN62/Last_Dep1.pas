unit Last_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TLast_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    CheckBox1: TCheckBox;
    Query1ID: TStringField;
    Query1GSBH: TStringField;
    Query1Depname: TStringField;
    Query1Depmemo: TStringField;
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
  Last_Dep: TLast_Dep;

implementation

 uses  main1, Scrap_Material1, FunUnit ;

{$R *.dfm}

procedure TLast_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('Select * from BDepartment');
    sql.add('where ID like '''+edit1.Text+'%'' ');
    sql.add('  and Depname like ''%'+edit2.Text+'%'' ');
    sql.add('  and GSBH='''+main.edit2.Text+''' ');
    if CheckBox1.Checked=true then
      sql.Add('and Substring(Flag,1,1)=''1''');
    sql.add('Order by DepName');
    //ShowMessage(SQL.Text);
    active:=true;
  end;
end;

procedure TLast_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TLast_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TLast_Dep.FormDestroy(Sender: TObject);
begin
  Last_Dep:=nil;
end;

procedure TLast_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
     with Scrap_Material.DelMas do
     begin
        edit;
        FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
     end;
     close;
  end;
end;

procedure TLast_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

end.
