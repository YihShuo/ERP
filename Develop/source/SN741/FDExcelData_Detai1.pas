unit FDExcelData_Detai1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TFDExcelData_Detai = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDExcelData_Detai: TFDExcelData_Detai;

implementation

uses FDExcelData1;

{$R *.dfm}

procedure TFDExcelData_Detai.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFDExcelData_Detai.FormCreate(Sender: TObject);
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

procedure TFDExcelData_Detai.FormDestroy(Sender: TObject);
begin
  FDExcelData_Detai:=nil;
end;

end.
