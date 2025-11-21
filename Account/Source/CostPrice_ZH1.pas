unit CostPrice_ZH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, GridsEh, DBGridEh;

type
  TCostPrice_ZH = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZHBH: TStringField;
    Query1BankNo: TStringField;
    Query1ZHJC: TStringField;
    Query1BankName: TStringField;
    Query1ADDRESS: TStringField;
    Query1Telphone: TStringField;
    Query1FAX: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostPrice_ZH: TCostPrice_ZH;

implementation

uses CostPrice1;

{$R *.dfm}

procedure TCostPrice_ZH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query1.Active:=false;
  action:=cafree;
end;

procedure TCostPrice_ZH.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWZH order by ZHBH ');
    active:=true;
  end;
end;

procedure TCostPrice_ZH.FormDestroy(Sender: TObject);
begin
  costprice_ZH:=nil;
end;

procedure TCostPrice_ZH.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with CostPrice.RevMas do
    begin
      edit;
      fieldbyname('ZHBH').value:=query1.fieldbyname('ZHBH').value;
      fieldbyname('ZHJC').value:=query1.fieldbyname('ZHJC').value;
      fieldbyname('BankNo').value:=query1.fieldbyname('BankNo').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TCostPrice_ZH.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
