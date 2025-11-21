unit MatPrice_Mon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMatPrice_Mon = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1VNPrice: TFloatField;
    Query1USPrice: TCurrencyField;
    Query1USERDATE: TDateTimeField;
    Query1RKSB: TStringField;
    DS1: TDataSource;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query2CLDH: TStringField;
    Query2CLDH1: TStringField;
    Query2SYL: TFloatField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query1GSBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatPrice_Mon: TMatPrice_Mon;

implementation

uses MatPrice1;

{$R *.dfm}

procedure TMatPrice_Mon.FormDestroy(Sender: TObject);
begin
MatPrice_Mon:=nil;
end;

procedure TMatPrice_Mon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMatPrice_Mon.FormCreate(Sender: TObject);
begin
query2.Active:=true;
query1.Active:=true;
end;

procedure TMatPrice_Mon.DBGridEh1DblClick(Sender: TObject);
var USPrice:real;
    VNPrice:integer;
begin


if query1.recordcount>0 then
  begin
    if MatPrice.query1.fieldbyname('USPrice').isnull then
      begin
        USPrice:=0
      end
      else
        begin
          USPrice:= MatPrice.query1.fieldbyname('USPrice').value;
        end;
    if MatPrice.query1.fieldbyname('VNPrice').isnull then
      begin
        VNPrice:=0
      end
      else
        begin
          VNPrice:= MatPrice.query1.fieldbyname('VNPrice').value;
        end;
    MatPrice.query1.Edit;
    MatPrice.query1.fieldbyname('VNPrice').Value:=VNPrice+query1.fieldbyname('VNPrice').Value*query2.fieldbyname('SYL').Value;
    MatPrice.query1.fieldbyname('USPrice').Value:=USPrice+query1.fieldbyname('USPrice').Value*query2.fieldbyname('SYL').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TMatPrice_Mon.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
DBGridEh1DblClick(nil);
end;

end.
