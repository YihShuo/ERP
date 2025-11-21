unit ProModel_Mod1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TProModel_Mod = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Model: TQuery;
    DS1: TDataSource;
    ModelModel: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProModel_Mod: TProModel_Mod;

implementation

uses ProModel1;

{$R *.dfm}

procedure TProModel_Mod.Button1Click(Sender: TObject);
begin

with Model do
  begin
    active:=false;
    sql.clear;
    sql.add('select distinct Model from XXZLVN ');
    sql.add('where Model like '+''''+'%'+edit1.text+'%'+'''');
    sql.add('order by Model ');
    active:=true;
  end;
end;

procedure TProModel_Mod.DBGridEh1DblClick(Sender: TObject);
begin

if Model.RecordCount>0 then
  begin
    ProModel.XXZL.edit;
    ProModel.XXZL.fieldbyname('Model').value:= Model.fieldbyname('Model').value ;
    Model.Active:=false;
    close;
  end;
end;

procedure TProModel_Mod.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrideh1dblclick(nil);
end;

procedure TProModel_Mod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TProModel_Mod.FormDestroy(Sender: TObject);
begin
promodel_mod:=nil;
end;

end.
