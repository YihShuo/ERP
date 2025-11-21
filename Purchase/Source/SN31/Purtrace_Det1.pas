unit Purtrace_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables;

type
  TPurtrace_Det = class(TForm)
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Purtrace_Det: TPurtrace_Det;

implementation

{$R *.dfm}

procedure TPurtrace_Det.FormDestroy(Sender: TObject);
begin
  Purtrace_Det:=nil;
end;

procedure TPurtrace_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  query1.active:=false;
end;

end.
