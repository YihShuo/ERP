unit SupplierReview_Supplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables;

type
  TSupplierReview_Supplier = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    ED_SupID: TEdit;
    Label2: TLabel;
    ED_SupName: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
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
  SupplierReview_Supplier: TSupplierReview_Supplier;

implementation

uses
  SupplierReview1;

{$R *.dfm}

procedure TSupplierReview_Supplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSupplierReview_Supplier.FormDestroy(Sender: TObject);
begin
  SupplierReview_Supplier := Nil;
end;

procedure TSupplierReview_Supplier.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZSDH, ZSYWJC FROM ZSZL');
    SQL.Add('WHERE ZSDH LIKE ''' + ED_SupID.Text + '%'' AND ZSYWJC LIKE ''%' + ED_SupName.Text + '%''');
    SQL.Add('AND ZSYWJC <> ''X''');
    SQL.Add('ORDER BY ZSDH');
    Active := true;
  end;
end;

procedure TSupplierReview_Supplier.DBGridEh1DblClick(Sender: TObject);
begin
  SupplierReview.QSupplierS.Edit;
  SupplierReview.QSupplierS.FieldByName('SupplierID').Value := Query1.FieldByName('ZSDH').AsString;
  SupplierReview.QSupplierS.FieldByName('ZSYWJC').Value := Query1.FieldByName('ZSYWJC').AsString;
  Close;
end;

end.
