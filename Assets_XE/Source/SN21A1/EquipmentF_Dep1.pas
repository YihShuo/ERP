unit EquipmentF_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEquipmentF_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentF_Dep: TEquipmentF_Dep;

implementation

uses main1, Deliver_EquipmentF1;

{$R *.dfm}

procedure TEquipmentF_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from TSCD_BDepartment BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%'' ');
    //sql.add('and GSBH='+''''+main.edit2.Text+'''');
    sql.add('and YN=''1'' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TEquipmentF_Dep.FormDestroy(Sender: TObject);
begin
  EquipmentF_Dep:=nil;
end;

procedure TEquipmentF_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;
procedure TEquipmentF_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TEquipmentF_Dep.DBGrid1DblClick(Sender: TObject);
begin

  if query1.recordcount>0  then
  begin
    with Deliver_EquipmentF.DelMas do
    begin
      edit;
      FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
      FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
    end;
    close;
  end;

end;
end.
