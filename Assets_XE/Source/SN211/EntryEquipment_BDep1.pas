unit EntryEquipment_BDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEntryEquipment_BDep = class(TForm)
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
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryEquipment_BDep: TEntryEquipment_BDep;

implementation
  uses main1, FunUnit, Deliver_Equipment1;
{$R *.dfm}

procedure TEntryEquipment_BDep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from TSCD_BDepartment BDepartment');
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

procedure TEntryEquipment_BDep.FormDestroy(Sender: TObject);
begin
  EntryEquipment_BDep:=nil;
end;

procedure TEntryEquipment_BDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEntryEquipment_BDep.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0  then
  begin
    with Deliver_Equipment.DelMas do
    begin
      edit;
      FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
      FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
    end;
    close;
  end;
end;

procedure TEntryEquipment_BDep.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

end.
