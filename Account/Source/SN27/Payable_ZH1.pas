unit Payable_ZH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, GridsEh, DBGridEh;

type
  TPayable_ZH = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Payable_ZH: TPayable_ZH;

implementation

uses PayableLit1, PayMentCon1;

{$R *.dfm}

procedure TPayable_ZH.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWZH order by ZHBH ');
    active:=true;
  end;
end;

procedure TPayable_ZH.FormDestroy(Sender: TObject);
begin
Payable_ZH:=nil;
end;

procedure TPayable_ZH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TPayable_ZH.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with PaymentCon.PayMas do
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

procedure TPayable_ZH.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
