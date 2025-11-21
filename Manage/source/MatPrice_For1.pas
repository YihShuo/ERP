unit MatPrice_For1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMatPrice_For = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DJYear: TStringField;
    Query1DJMonth: TStringField;
    Query1CLBH: TStringField;
    Query1VNPrice: TFloatField;
    Query1CWHL: TIntegerField;
    Query1USPrice: TCurrencyField;
    Query1SB: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
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
  MatPrice_For: TMatPrice_For;

implementation

uses MatPrice1;

{$R *.dfm}

procedure TMatPrice_For.FormDestroy(Sender: TObject);
begin
MatPrice_For:=nil;
end;

procedure TMatPrice_For.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TMatPrice_For.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TMatPrice_For.DBGridEh1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    MatPrice.query1.Edit;
    //MatPrice.query1.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
    MatPrice.query1.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TMatPrice_For.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then  
dbgrideh1dblclick(nil);
end;

end.
