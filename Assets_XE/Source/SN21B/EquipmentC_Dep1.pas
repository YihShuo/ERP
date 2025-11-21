unit EquipmentC_Dep1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Bde.DBTables;

type
  TEquipmentC_Dep = class(TForm)
    DBGrid1: TDBGrid;
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
    procedure Button1Click(Sender: TObject);
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
  EquipmentC_Dep: TEquipmentC_Dep;

implementation

{$R *.dfm}

uses ChangeEquipment1;

procedure TEquipmentC_Dep.Button1Click(Sender: TObject);
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

procedure TEquipmentC_Dep.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0  then
  begin
    with ChangeEquipmentC.DelMas do
    begin
      edit;
      FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
      FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
    end;
    close;
  end;
end;

procedure TEquipmentC_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TEquipmentC_Dep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentC_Dep.FormDestroy(Sender: TObject);
begin
  EquipmentC_Dep:=nil;
end;

end.
