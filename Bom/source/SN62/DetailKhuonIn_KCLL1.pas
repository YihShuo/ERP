unit DetailKhuonIn_KCLL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TDetailKhuonIn_KCLL = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1LLNO: TStringField;
    Query1CLBH: TStringField;
    Query1SCBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1TempQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1DFL: TStringField;
    Query1CKBH: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1LLMemo: TStringField;
    DS1: TDataSource;
    Query1HGLB: TStringField;
    Query1GSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailKhuonIn_KCLL: TDetailKhuonIn_KCLL;

implementation

uses OrderDetailKhuonIn1, main1, FunUnit;

{$R *.dfm}

procedure TDetailKhuonIn_KCLL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDetailKhuonIn_KCLL.FormDestroy(Sender: TObject);
begin
  DetailKhuonIn_KCLL:=nil;
end;

procedure TDetailKhuonIn_KCLL.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

end.
