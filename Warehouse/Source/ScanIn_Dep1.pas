unit ScanIn_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TScanIn_Dep = class(TForm)
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
    Edit3: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanIn_Dep: TScanIn_Dep;

implementation

uses ScanIn1;

{$R *.dfm}

procedure TScanIn_Dep.FormDestroy(Sender: TObject);
begin
ScanIn_Dep:=nil;
end;

procedure TScanIn_Dep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
query1.active:=false;
action:=cafree;
end;

procedure TScanIn_Dep.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit3.Text+'%'+'''');
    //sql.add('and GSBH='+''''+main.edit2.Text+'''');
    sql.add('and YN='+''''+'1'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TScanIn_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.setfocus
end;

procedure TScanIn_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin  
if key=#13 then
  edit3.setfocus
end;

procedure TScanIn_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TScanIn_Dep.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    ScanIn.edit5.text:=query1.fieldbyname('ID').Value;
    ScanIn.edit1.text:=query1.fieldbyname('DepName').Value;
    close;
  end;
end;

procedure TScanIn_Dep.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

end.
