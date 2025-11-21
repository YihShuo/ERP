unit CKBHLockQty1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TCKBHLockQty = class(TForm)
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1ckbh: TStringField;
    Query1Memo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CKBHLockQty: TCKBHLockQty;

implementation

uses CLBHLockQty1, LockQtyMaterial1, AnyStock_LockQtyMaterial1;

{$R *.dfm}

procedure TCKBHLockQty.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select CKBH,Memo from KCCK');
    SQL.Add('group by CKBH,Memo');
    SQL.Add('order by CKBH');
    //ShowMessage(sql.Text);
    Active := True;
  end;
end;

procedure TCKBHLockQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TCKBHLockQty.FormDestroy(Sender: TObject);
begin
  CLBHLockQty:=nil;
end;

procedure TCKBHLockQty.DBGridEh2DblClick(Sender: TObject);
begin
  if query1.recordcount>0  then
  begin
    with AnyStock_LockQtyMaterial.Qry1 do
    begin
      edit;
      FieldByName('ckbh').Value:=query1.fieldbyname('ckbh').Value;
    end;
    close;
  end;
end;

end.
