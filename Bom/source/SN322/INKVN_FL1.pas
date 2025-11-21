unit INKVN_FL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, GridsEh, DBGridEh;

type
  TINKVN_FL = class(TForm)
    Query1: TQuery;
    Query1FLBH: TStringField;
    Query1DFL: TStringField;
    Query1XFL: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INKVN_FL: TINKVN_FL;

implementation

uses INKVN1;

{$R *.dfm}

procedure TINKVN_FL.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;


procedure TINKVN_FL.FormDestroy(Sender: TObject);
begin
INKVN_FL:=nil;
end;

procedure TINKVN_FL.DBGridEh1DblClick(Sender: TObject);
begin
  with INKVN.XXZLSYM do
  begin
    edit;
    fieldbyname('FLBH').value:=query1.fieldbyname('FLBH').value;
    fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
    fieldbyname('XFL').value:=query1.fieldbyname('XFL').value;
  end;
  query1.Active:=false;
  close;
end;

procedure TINKVN_FL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil)    ;
end;

end.
