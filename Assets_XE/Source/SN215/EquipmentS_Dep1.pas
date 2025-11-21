unit EquipmentS_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEquipmentS_Dep = class(TForm)
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
  EquipmentS_Dep: TEquipmentS_Dep;

implementation

uses main1, Deliver_EquipmentS1;

{$R *.dfm}

procedure TEquipmentS_Dep.Button1Click(Sender: TObject);
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

procedure TEquipmentS_Dep.FormDestroy(Sender: TObject);
begin
  EquipmentS_Dep:=nil;
end;

procedure TEquipmentS_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;
procedure TEquipmentS_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TEquipmentS_Dep.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0  then
  begin
    with Deliver_EquipmentS.DelMas do
    begin
      edit;
      FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
      FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
    end;
    close;
  end;
end;

end.
