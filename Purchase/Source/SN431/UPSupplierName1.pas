unit UPSupplierName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TUPSupplierName = class(TForm)
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
    Query1Style: TStringField;
    Query1GroupName: TStringField;
    Query1zsqm: TStringField;
    Query1Country: TStringField;
    Query1MZSDH: TStringField;
    Query1Zsdh_TW: TStringField;
    Query1Mzsywjc: TStringField;
    Query1Zsdh_TW_jc: TStringField;
    Query1VAT: TCurrencyField;
    Query1remark: TStringField;
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
  UPSupplierName: TUPSupplierName;

implementation

uses main1,UPSupplier1;

{$R *.dfm}

procedure TUPSupplierName.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TUPSupplierName.FormDestroy(Sender: TObject);
begin
  UPSupplierName:=nil;
end;

procedure TUPSupplierName.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' SELECT z.zsdh, z.zsywjc, zszl_dev.Style, zszl_dev.GroupName, z.zsqm, zszl_dev.Country, zszl_dev.MZSDH,zszl_dev.Zsdh_TW, zszl_dev.ProdPurchaser, zv.VAT,zm.remark, ');
    sql.add(' (select zsywjc from zszl A where A.zsdh=zszl_dev.mzsdh ) as  Mzsywjc, ');
    sql.add(' (select zsywjc from zszl B where B.zsdh=zszl_dev.Zsdh_TW ) as  Zsdh_TW_jc ');
    sql.add(' FROM zszl z ');
    sql.add(' left join zszl_dev on zszl_dev.zsdh=z.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    sql.add(' left join zszl_VN zv ON zv.zsdh=Z.zsdh ');
    sql.add(' left join zszl_mat zm on zm.zsdh = z.zsdh ');
    sql.add(' where 1 = 1 ');
    sql.add(' and z.zsywjc NOT IN (''X'') ');
    if radiobutton1.Checked=True then
    sql.add(' and zszl_dev.ProdPurchaser is not null and zszl_dev.ProdPurchaser<>''''  ');
    if edit1.Text <> '' then
    sql.add(' and z.ZSDH like '''+Edit1.Text +'%'+''' ');
    if edit2.Text <> '' then
    sql.add(' and z.ZSYWJC like '''+Edit2.Text +'%'+''' ');
    sql.add(' Order by z.zsdh ');
    active:=true;
  end;
end;

procedure TUPSupplierName.DBGridEh1DblClick(Sender: TObject);
begin
  if(not query1.Active) then
    abort;
  if (query1.recordcount>0) then
  begin
    with UPSupplier.Query1 do
    begin
        edit;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col-1].FieldName).Value := query1.FieldByName('ZSDH').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col].FieldName).Value := query1.FieldByName('style').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+1].FieldName).Value := query1.FieldByName('GroupName').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+2].FieldName).Value := query1.FieldByName('zsywjc').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+3].FieldName).Value := query1.FieldByName('zsqm').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+4].FieldName).Value := query1.FieldByName('Zsdh_TW').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+5].FieldName).Value := query1.FieldByName('Zsdh_TW_jc').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+6].FieldName).Value := query1.FieldByName('MZSDH').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+7].FieldName).Value := query1.FieldByName('Mzsywjc').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+8].FieldName).Value := query1.FieldByName('country').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+9].FieldName).Value := query1.FieldByName('VAT').Value;
        UPSupplier.Query1.FieldByName(UPSupplier.DBGridEh1.Fields[UPSupplier.DBGridEh1.Col+17].FieldName).Value := query1.FieldByName('remark').Value;
        Post;
    end;
  end;
  query1.Active:=false;
  close;
end;


procedure TUPSupplierName.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
  radiobutton2.Checked :=true;
end;

end.
