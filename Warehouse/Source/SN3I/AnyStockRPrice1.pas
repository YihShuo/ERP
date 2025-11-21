unit AnyStockRPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TAnyStockRPrice = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    tmpQry: TQuery;
    Query1RKNO: TStringField;
    Query1CKBH: TStringField;
    Query1clbh: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1VNACC: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnyStockRPrice: TAnyStockRPrice;

implementation

uses main1,AnyStock_R1;

{$R *.dfm}

procedure TAnyStockRPrice.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    //
    SQL.Add('select KCRK.RKNO,KCRK.CKBH,KCRKS.clbh,KCRKS.VNPrice,KCRKS.Qty,KCRKS.VNACC');
    SQL.Add('from KCRKS left join KCRK on KCRKS.RKNO=KCRK.RKNO ');
    SQL.Add('where 1=1  ');
    if Edit1.Text <> '' then
      sql.add('and KCRK.RKNO like  '''+edit1.Text+'%'+'''');
    sql.add('and KCRKS.CLBH  = '''+AnyStock_R.Query1.FieldByName('CLDH').AsString+'''');
    sql.add('and KCRK.gsbh='''+main.edit2.text+ '''   ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TAnyStockRPrice.DBGridEh1DblClick(Sender: TObject);
begin
    with AnyStock_R.Query1 do
    begin
      Edit;
      FieldByName('Price').Value:=query1.fieldbyname('VNPrice').Value;
      FieldByName('RKQty').Value:=query1.fieldbyname('Qty').Value;
      FieldByName('ACC').Value:=query1.fieldbyname('VNACC').Value;
      Insert;
    end;
    showmessage('Succeed.');
end;



end.
