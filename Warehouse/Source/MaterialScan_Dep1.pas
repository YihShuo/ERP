unit MaterialScan_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TMaterialScan_Dep = class(TForm)
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
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialScan_Dep: TMaterialScan_Dep;

implementation

uses MaterialScan1;

{$R *.dfm}

procedure TMaterialScan_Dep.FormDestroy(Sender: TObject);
begin
MaterialScan_Dep:=nil;
end;

procedure TMaterialScan_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialScan_Dep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YN='+''''+'1'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TMaterialScan_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.setfocus
end;

procedure TMaterialScan_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TMaterialScan_Dep.DBGrid1DblClick(Sender: TObject);
begin

if query1.recordcount>0 then
  begin
    MaterialScan.edit5.text:=query1.fieldbyname('ID').Value;
    MaterialScan.edit1.text:=query1.fieldbyname('DepName').Value;
    close;
  end;
end;

procedure TMaterialScan_Dep.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
  DBGrid1Dblclick(nil);
end;

end.
