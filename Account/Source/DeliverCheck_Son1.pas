unit DeliverCheck_Son1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TDeliverCheck_Son = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverCheck_Son: TDeliverCheck_Son;

implementation

{$R *.dfm}

procedure TDeliverCheck_Son.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TDeliverCheck_Son.FormDestroy(Sender: TObject);
begin
delivercheck_son:=nil;
end;

procedure TDeliverCheck_Son.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
