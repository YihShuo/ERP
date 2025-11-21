unit CuttingType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TCuttingType = class(TForm)
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
  CuttingType: TCuttingType;

implementation

uses
  CutDispatch1;
{$R *.dfm}

procedure TCuttingType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCuttingType.FormDestroy(Sender: TObject);
begin
  CuttingType := Nil;
end;

procedure TCuttingType.FormCreate(Sender: TObject);
begin
  Query1.Active := true;
end;

procedure TCuttingType.DBGridEh1DblClick(Sender: TObject);
var
  MachineType: string;
begin
  if (Query1.FieldByName('Type').AsString = '裁斷機') then
    MachineType := 'MC'
  else if (Query1.FieldByName('Type').AsString = '自動裁斷機') then
    MachineType := 'AC'
  else if (Query1.FieldByName('Type').AsString = 'Lectra裁斷機') then
    MachineType := 'Lectra';

  with CutDispatch.QCDMaster do
  begin
    Edit;
    FieldByName('DLLB').Value := MachineType;
    Post;
  end;
  Close;
end;

end.
