unit ChooseSupplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TChooseSupplier = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChooseSupplier: TChooseSupplier;

implementation

uses SupplierSaleContract1;

{$R *.dfm}

procedure TChooseSupplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TChooseSupplier.FormDestroy(Sender: TObject);
begin
  ChooseSupplier:=nil;
end;

procedure TChooseSupplier.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select ZSDH,ZSYWJC from ZSZL ');
    SQL.Add('where 1=1 ');
    if Edit1.Text<>'' then
      SQL.Add('and ZSDH like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('and ZSYWJC like ''%'+Edit2.Text+'%'' ');
    SQL.Add('order by ZSDH');
    active:=true;
  end;
end;

procedure TChooseSupplier.DBGridEh1DblClick(Sender: TObject);
begin
  SupplierSaleContract.Query1.Edit;
  SupplierSaleContract.Query1.FieldByName('ZSBH').Value := Query1.FieldByName('ZSDH').AsString;
  SupplierSaleContract.Query1.FieldByName('ZSYWJC').Value := Query1.FieldByName('ZSYWJC').AsString;
  Close;
end;

end.
