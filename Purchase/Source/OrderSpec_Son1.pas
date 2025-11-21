unit OrderSpec_Son1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TOrderSpec_Son = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CLDH1: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderSpec_Son: TOrderSpec_Son;

implementation

uses main1;

{$R *.dfm}

procedure TOrderSpec_Son.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
end;

procedure TOrderSpec_Son.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderSpec_Son.FormDestroy(Sender: TObject);
begin
  orderspec_son:=nil;
end;

procedure TOrderSpec_Son.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
