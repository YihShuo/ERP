unit ScankeyIn_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TScankeyIn_Dep = class(TForm)
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
    Query1GXLB: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScankeyIn_Dep: TScankeyIn_Dep;

implementation

uses main1, ScankeyIn1,FunUnit;

{$R *.dfm}

procedure TScankeyIn_Dep.FormDestroy(Sender: TObject);
begin
  ScankeyIn_Dep:=nil;
end;

procedure TScankeyIn_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  query1.active:=false;
end;

procedure TScankeyIn_Dep.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and ProYN='+''''+'1'+'''');
    sql.add('      and IsNull(GXLB,'''')<>'''' ');
    sql.Add('      and gxlb not in (''C'',''S'')');
    if not Checkbox1.Checked then
    begin
      sql.add('      and GSBH='+''''+main.edit2.Text+'''');
    end;
    sql.add('order by ID');
    funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TScankeyIn_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.setfocus
end;

procedure TScankeyIn_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1click(nil);
end;

procedure TScankeyIn_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ScankeyIn do
      begin
        edit1.text:=query1.fieldbyname('DepName').Value;
        ScankeyIn.DepID:=query1.fieldbyname('ID').Value;
        ScankeyIn.DepGXLB:=query1.fieldbyname('GXLB').Value
      end;
    close;
  end;
end;

procedure TScankeyIn_Dep.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TScankeyIn_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
