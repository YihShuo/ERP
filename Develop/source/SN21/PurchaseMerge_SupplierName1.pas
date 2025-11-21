unit PurchaseMerge_SupplierName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBTables, GridsEh,
  DBGridEh;

type
  TPurchaseMerge_SupplierName = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Button1: TButton;
    SupplierNoEdit: TEdit;
    SupplierNMEdit: TEdit;
    ZSZL_DS: TDataSource;
    ZSZL: TQuery;
    ZSZLzsdh: TStringField;
    ZSZLzsywjc: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurchaseMerge_SupplierName: TPurchaseMerge_SupplierName;

implementation
  uses smapleorderlistp;
{$R *.dfm}

procedure TPurchaseMerge_SupplierName.Button1Click(Sender: TObject);
begin
  //
  with ZSZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select zsdh,zsywjc from zszl where 1=1 ');
    if SupplierNoEdit.Text<>'' then
      SQL.Add('and zsdh like ''%'+SupplierNoEdit.Text+'%'' ');
    if SupplierNMEdit.Text<>'' then
      SQL.Add('and zsywjc like ''%'+SupplierNMEdit.Text+'%'' ');
    SQL.Add('order by  zsdh,zsywjc  ');
    Active:=true;
  end;
  //
end;

procedure TPurchaseMerge_SupplierName.DBGridEh1DblClick(Sender: TObject);
begin
  SmapleOrderList.ypzlzls1.Edit;
  SmapleOrderList.ypzlzls1.FieldByName('ZSYWJC').AsString:=ZSZL.FieldByName('zsywjc').AsString;
  SmapleOrderList.ypzlzls1.FieldByName('CSBH').AsString:=ZSZL.FieldByName('zsdh').AsString;
  Close;
end;

end.
