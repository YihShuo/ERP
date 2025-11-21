unit Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TDetail = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1CLBH: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1ZLBH: TStringField;
    Query1CLSL: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Detail: TDetail;

implementation

{$R *.dfm}

procedure TDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDetail.FormDestroy(Sender: TObject);
begin
  Detail:=Nil;
end;

procedure TDetail.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

end.
