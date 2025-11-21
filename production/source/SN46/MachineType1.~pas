unit MachineType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMachineType = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Kieu: TStringField;
    Query1Type: TStringField;
    Query1ID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MachineType: TMachineType;

implementation

uses
  CutMachine1;
{$R *.dfm}

procedure TMachineType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMachineType.FormDestroy(Sender: TObject);
begin
  MachineType := Nil;
end;

procedure TMachineType.FormCreate(Sender: TObject);
begin
  Query1.Active := true;
end;

procedure TMachineType.DBGridEh1DblClick(Sender: TObject);
begin
  with CutMachine.Query1 do
  begin
    Edit;
    FieldByName('MachineType').Value := Query1.FieldByName('ID').AsString;
    Post;
  end;
  Close;
end;

end.
