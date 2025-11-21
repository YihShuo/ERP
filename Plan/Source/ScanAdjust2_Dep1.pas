unit ScanAdjust2_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TScanAdjust2_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanAdjust2_Dep: TScanAdjust2_Dep;

implementation

uses main1, ScanAdjust3;

{$R *.dfm}

procedure TScanAdjust2_Dep.FormDestroy(Sender: TObject);
begin
ScanAdjust2_Dep:=nil;
end;

procedure TScanAdjust2_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

query1.active:=false;
end;

procedure TScanAdjust2_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and YN='+''''+'1'+'''');
    if not Checkbox1.Checked then
    begin
      sql.add('      and GSBH='+''''+main.edit2.Text+'''');
    end;
    sql.Add('and GXLB='+''''+ScanAdjust2.CBX4.Text+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TScanAdjust2_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TScanAdjust2_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TScanAdjust2_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ScanAdjust2 do
    begin
      Edit4.Text:=query1.fieldbyname('DepName').Value;
      {SMZL.edit;
      SMZL.fieldbyname('DepNo').value:=query1.fieldbyname('ID').Value;
      SMZL.fieldbyname('DepName').value:=query1.fieldbyname('DepName').Value;
      SMZL.post;}
    end;
    close;
  end;
end;

procedure TScanAdjust2_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
