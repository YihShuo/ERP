unit UPSupplierName_N7431;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TUPSupplierName_N743 = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPSupplierName_N743: TUPSupplierName_N743;

implementation

uses UPSupplier1, UPMaterial1, main1;

{$R *.dfm}

procedure TUPSupplierName_N743.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TUPSupplierName_N743.FormDestroy(Sender: TObject);
begin
  UPSupplierName_N743:=nil;
end;

procedure TUPSupplierName_N743.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' SELECT zszl.zsdh, zszl.zsywjc ');
    sql.add(' FROM zszl  ');
    sql.add(' left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    sql.add(' where 1 = 1 ');
    sql.add(' and zszl.zsywjc NOT IN (''X'') ');
    if radiobutton1.Checked=True then
    sql.add(' and zszl_dev.ProdPurchaser is not null and zszl_dev.ProdPurchaser<>''''  ');
    if edit1.Text <> '' then
    sql.add(' and zszl.ZSDH like '''+Edit1.Text +'%'+''' ');
    if edit2.Text <> '' then
    sql.add(' and zszl.ZSYWJC like '''+Edit2.Text +'%'+''' ');
    sql.add(' Order by zszl.zsdh ');
    active:=true;
  end;
end;

procedure TUPSupplierName_N743.DBGridEh1DblClick(Sender: TObject);
begin
  if(not query1.Active) then
    abort;
  if (query1.recordcount>0) then
  begin
    with UPMaterial.Query1 do
      begin
       edit;
       fieldbyname('ZSDH').value:=Query1.fieldbyname('ZSDH').value;
       fieldbyname('zsywjc').value:=Query1.fieldbyname('zsywjc').value;
      end;
  end;
  query1.Active:=false;
  close;
end;


procedure TUPSupplierName_N743.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
  radiobutton2.Checked :=true;
end;

end.
