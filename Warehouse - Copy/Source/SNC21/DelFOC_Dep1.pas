unit DelFOC_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelFOC_Dep = class(TForm)
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelFOC_Dep: TDelFOC_Dep;

implementation

uses main1, DelFOC1;

{$R *.dfm}

procedure TDelFOC_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active := false;
    sql.clear;
    sql.Add('SELECT * FROM BDepartment');
    sql.add('WHERE ID LIKE ');
    sql.add('''' + edit1.Text + '%' + '''');
    sql.add('AND Depname LIKE ');
    sql.add('''' + '%' + edit2.Text + '%' + '''');
    sql.add('AND YN=' + '''' + '1' + '''');
    sql.Add('AND GSBH = '''+main.Edit2.Text+''' ');
    sql.add('ORDER BY ID');
    active := true;
  end;
end;

procedure TDelFOC_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edit2.setfocus
  end;
end;

procedure TDelFOC_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    button1click(nil);
  end;
end;

procedure TDelFOC_Dep.FormDestroy(Sender: TObject);
begin
  DelFOC_Dep := nil;
end;

procedure TDelFOC_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TDelFOC_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount > 0 then
  begin
    with DelFOC.DelMas do
    begin
      Edit;
      FieldByName('DepID').Value := query1.fieldbyname('ID').Value;
      FieldByName('DepName').Value := query1.fieldbyname('DepName').Value;
    end;
    close;
  end;
end;

procedure TDelFOC_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    DBGridEh1Dblclick(nil);
  end;
end;

procedure TDelFOC_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

end.
