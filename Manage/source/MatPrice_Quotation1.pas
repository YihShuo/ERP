unit MatPrice_Quotation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMatPrice_Quotation = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1VNPrice: TFloatField;
    Query1USPrice: TCurrencyField;
    DS1: TDataSource;
    Query1BJNO: TStringField;
    Query1ZSYWJC: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatPrice_Quotation: TMatPrice_Quotation;

implementation

uses MatPrice1;

{$R *.dfm}

procedure TMatPrice_Quotation.FormDestroy(Sender: TObject);
begin
MatPrice_Quotation:=nil;
end;

procedure TMatPrice_Quotation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TMatPrice_Quotation.DBGridEh1DblClick(Sender: TObject);
begin

if query1.recordcount>0 then
  begin
    MatPrice.query1.Edit;
    MatPrice.query1.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
    MatPrice.query1.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TMatPrice_Quotation.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin  
if key=#13 then
dbgrideh1dblclick(nil);

end;

procedure TMatPrice_Quotation.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

end.
