unit Outsolestock_LL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TOutsolestock_LL = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1LLNO: TStringField;
    Query1GSBH: TStringField;
    Query1CKBH: TStringField;
    Query1PlanDate: TDateTimeField;
    Query1DepID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1CFMID: TStringField;
    Query1SB: TStringField;
    Query1YN: TStringField;
    Query1PMARK: TIntegerField;
    Query1MEMO: TStringField;
    Query1SFL: TStringField;
    Query1LLNO_1: TStringField;
    Query1CLBH: TStringField;
    Query1ZLBH: TStringField;
    Query1SIZ: TStringField;
    Query1Qty: TFloatField;
    Query1TempQTY: TFloatField;
    Query1KCQty: TFloatField;
    Query1USERDate_1: TDateTimeField;
    Query1USERID_1: TStringField;
    Query1YN_1: TStringField;
    Query1LCRY: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Outsolestock_LL: TOutsolestock_LL;

implementation

{$R *.dfm}

procedure TOutsolestock_LL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TOutsolestock_LL.FormDestroy(Sender: TObject);
begin
  Outsolestock_LL:=nil;
end;

procedure TOutsolestock_LL.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

end.
