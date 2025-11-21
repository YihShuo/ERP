unit Vendor1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TVendor = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    ED_ERPVendorID: TEdit;
    Label2: TLabel;
    ED_FlexVendorID: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1zsdh: TStringField;
    Query1zsdhflex: TStringField;
    Query1zsywjc: TStringField;
    Label3: TLabel;
    ED_VendorName: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vendor: TVendor;

implementation

uses ConfirmSwatchReport1;

{$R *.dfm}
        
procedure TVendor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TVendor.FormDestroy(Sender: TObject);
begin
  Vendor := Nil;
end;

procedure TVendor.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT zszl_flex.zsdh, zszl_flex.zsdhflex, ZSZL.zsywjc FROM zszl_flex');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = zszl_flex.ZSDH');
    SQL.Add('WHERE zszl_flex.zsdh LIKE ''' + ED_ERPVendorID.Text + '%'' AND zszl_flex.zsdhflex LIKE ''' + ED_FlexVendorID.Text + '%''');
    SQL.Add('AND ZSZL.zsywjc LIKE ''%' + ED_VendorName.Text + '%''');
    SQl.Add('ORDER BY zszl_flex.zsdhflex');
    Active := true;
  end;
end;

procedure TVendor.DBGridEh1DblClick(Sender: TObject);
begin
  ConfirmSwatchReport.ED_VENDOR.Text := Query1.FieldByName('zsdhflex').AsString;
  Close;
end;

procedure TVendor.FormDeactivate(Sender: TObject);
begin
  Close;
end;

end.
