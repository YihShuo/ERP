unit PurOther_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TPurOther_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurOther_Dep: TPurOther_Dep;

implementation

uses main1, PurOther1;

{$R *.dfm}

procedure TPurOther_Dep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and YN='+''''+'1'+'''');
    sql.add('      and GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TPurOther_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with PurOther.CGMas do
      begin
        edit;
        FieldByName('MEMO').Value:=query1.fieldbyname('DepName').Value;
      end;
    close;
  end;
end;

end.
