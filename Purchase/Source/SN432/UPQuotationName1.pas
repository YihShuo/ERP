unit UPQuotationName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TUPQuotationName = class(TForm)
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
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    Query1Style: TStringField;
    Query1SGroup: TStringField;
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
  UPQuotationName: TUPQuotationName;

implementation

uses  main1, UPQuotation1, UPSupplier1;

{$R *.dfm}

procedure TUPQuotationName.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TUPQuotationName.FormDestroy(Sender: TObject);
begin
  UPQuotationName:=nil;
end;

procedure TUPQuotationName.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' SELECT ');
    sql.add(' zszl.zsdh, zszl.zsywjc, zszl_Dev.Style, Data_UP_Style_Group.SGroup ');
    sql.add(' FROM zszl  ');
    sql.add(' left join zszl_Dev on zszl_dev.zsdh=zszl.zsdh and  zszl_dev.gsbh='''+main.Edit2.Text+''' ');
    sql.add(' left join Data_UP_Style_Group  ON Data_UP_Style_Group.Style = zszl_dev.Style ');
    sql.add(' where 1 = 1 ');
    sql.add(' and zszl.zsywjc NOT IN (''X'') ');
    if radiobutton1.Checked=True then
    sql.add(' and zszl_Dev.ProdPurchaser is not null and zszl_Dev.ProdPurchaser<>''''  ');
    if edit1.Text <> '' then
    sql.add(' and zszl.ZSDH like '''+Edit1.Text +'%'+''' ');
    if edit2.Text <> '' then
    sql.add(' and zszl.ZSYWJC like '''+Edit2.Text +'%'+''' ');
    active:=true;
  end;
end;

procedure TUPQuotationName.DBGridEh1DblClick(Sender: TObject);
begin
  if(not query1.Active) then
    abort;
  if (query1.recordcount>0) then
  begin
    with UPQuotation.Query1 do
    begin
        edit;
          UPQuotation.Query1.FieldByName(UPQuotation.DBGridEh1.Fields[UPQuotation.DBGridEh1.Col-1].FieldName).Value := query1.FieldByName('ZSDH').Value;
          UPQuotation.Query1.FieldByName(UPQuotation.DBGridEh1.Fields[UPQuotation.DBGridEh1.Col].FieldName).Value := query1.FieldByName('zsywjc').Value;
          UPQuotation.Query1.FieldByName(UPQuotation.DBGridEh1.Fields[UPQuotation.DBGridEh1.Col+1].FieldName).Value := query1.FieldByName('SGroup').Value;
          UPQuotation.Query1.FieldByName(UPQuotation.DBGridEh1.Fields[UPQuotation.DBGridEh1.Col+2].FieldName).Value := query1.FieldByName('style').Value;
        Post;
    end;
  end;
  query1.Active:=false;
  close;
end;


procedure TUPQuotationName.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
  radiobutton2.Checked := true;

end;

end.
