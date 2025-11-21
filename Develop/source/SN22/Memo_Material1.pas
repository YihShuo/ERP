unit Memo_Material1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMemo_Material = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Memo_Material: TMemo_Material;

implementation

uses SampleOrder1;

{$R *.dfm}

procedure TMemo_Material.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMemo_Material.FormDestroy(Sender: TObject);
begin
  Memo_Material:=nil;
end;

procedure TMemo_Material.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select cldh as MaterialNo, bz as Memo from clbzzl');
    sql.add('where cldh=:CLBH and zybb=''E''');
    active:=true;
  end;
end;

end.
