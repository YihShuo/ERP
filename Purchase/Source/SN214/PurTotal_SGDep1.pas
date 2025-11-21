unit PurTotal_SGDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TPurTotal_SGDep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurTotal_SGDep: TPurTotal_SGDep;

implementation
  uses PurTotal1;
{$R *.dfm}

procedure TPurTotal_SGDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPurTotal_SGDep.FormDestroy(Sender: TObject);
begin
  PurTotal_SGDep:=nil;
end;

procedure TPurTotal_SGDep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%''');
    sql.add('and YN=''1'' ');
    sql.add('order by ID ');
    active:=true;
  end;
end;

procedure TPurTotal_SGDep.DBGridEh1DblClick(Sender: TObject);
begin
  with PurTotal.CGS do
  begin
    edit;
    FieldByName('Memo').Value:=query1.fieldbyname('ID').Value;
    FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
  end;
  close;
end;

end.
