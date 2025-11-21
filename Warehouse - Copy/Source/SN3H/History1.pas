unit History1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  THistory = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1YPZLBH: TStringField;
    Query1YPDH: TStringField;
    Query1CLBH: TStringField;
    Query1UseStockQty: TCurrencyField;
    Query1Remark: TStringField;
    Query1UserID_WH: TStringField;
    Query1UserDate_WH: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  History: THistory;

implementation

uses RequestCheckStock1;
{$R *.dfm}

procedure THistory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure THistory.FormDestroy(Sender: TObject);
begin
  History:=nil;
end;

procedure THistory.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select * From CGUseStock_Dev_his ');
    sql.Add(' Where YPZLBH =:YPZLBH AND YPDH=:YPDH AND CLBH=:CLBH ');
    active:=true;
  end;
end;

end.
