unit PurtraceGC_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables;

type
  TPurtraceGC_Det = class(TForm)
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
  PurtraceGC_Det: TPurtraceGC_Det;

implementation

{$R *.dfm}

procedure TPurtraceGC_Det.FormDestroy(Sender: TObject);
begin
PurtraceGC_Det:=nil;
end;

procedure TPurtraceGC_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

end.
