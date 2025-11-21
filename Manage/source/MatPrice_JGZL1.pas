unit MatPrice_JGZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMatPrice_JGZL = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1VNPrice: TFloatField;
    Query1USPrice: TCurrencyField;
    Query1USERDATE: TDateTimeField;
    Query1RKSB: TStringField;
    DS1: TDataSource;
    Query2: TQuery;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    DS2: TDataSource;
    Query2JGNO: TStringField;
    Query2CLBH: TStringField;
    Query2ZMLB: TStringField;
    Query2Qty: TCurrencyField;
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
  MatPrice_JGZL: TMatPrice_JGZL;

implementation

uses MatPrice1;

{$R *.dfm}

procedure TMatPrice_JGZL.FormDestroy(Sender: TObject);
begin
MatPrice_JGZL:=nil;
end;

procedure TMatPrice_JGZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
action:=cafree;
end;

procedure TMatPrice_JGZL.FormCreate(Sender: TObject);
begin

query2.Active:=true;
query1.Active:=true;
end;

procedure TMatPrice_JGZL.DBGridEh1DblClick(Sender: TObject);
begin

if query1.recordcount>0 then
  begin
    MatPrice.query1.Edit;
    MatPrice.query1.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value; 
    MatPrice.query1.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TMatPrice_JGZL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
DBGridEh1DblClick(nil);
end;

end.
