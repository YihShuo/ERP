unit MatPrice_Entry1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMatPrice_Entry = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1VNPrice: TFloatField;
    Query1USPrice: TCurrencyField;
    Query1USERDATE: TDateTimeField;
    Query1RKSB: TStringField;
    Query1GSBH: TStringField;
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
  MatPrice_Entry: TMatPrice_Entry;

implementation

uses MatPrice1;

{$R *.dfm}

procedure TMatPrice_Entry.FormDestroy(Sender: TObject);
begin
MatPrice_Entry:=nil;
end;

procedure TMatPrice_Entry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TMatPrice_Entry.DBGridEh1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    MatPrice.query1.Edit;
    MatPrice.query1.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value; 
    MatPrice.query1.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;

end;

procedure TMatPrice_Entry.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then  
dbgrideh1dblclick(nil);
end;

procedure TMatPrice_Entry.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

end.
