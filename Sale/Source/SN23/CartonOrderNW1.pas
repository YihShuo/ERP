unit CartonOrderNW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, PrnDbgeh, DBTables, Menus;

type
  TCartonOrderNW = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    DBGridEh1: TDBGridEh;
    Query1XieXing: TStringField;
    Query1XXCC: TStringField;
    Query1NWeigh: TCurrencyField;
    Query1OWeigh: TCurrencyField;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Query1SheHao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CartonOrderNW: TCartonOrderNW;

implementation

uses main1;

{$R *.dfm}

procedure TCartonOrderNW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TCartonOrderNW.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
end;

procedure TCartonOrderNW.Print1Click(Sender: TObject);
begin
  printdbgrideh1.Preview;
end;

procedure TCartonOrderNW.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
