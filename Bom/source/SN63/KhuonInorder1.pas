unit KhuonInorder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TKhuonInorder = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1Quantity: TIntegerField;
    Query1OKQTY: TCurrencyField;
    Query1RKQTY: TCurrencyField;
    Query1GSBH: TStringField;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhuonInorder: TKhuonInorder;

implementation

uses KhuonInInWarehouse1;

{$R *.dfm}

procedure TKhuonInorder.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    active:=false;
    sql.Clear;
    SQL.Add('select DDZL.DDBH,DDZL.GSBH,DDZL.Quantity,isnull (RK.OKQTY,0) as OKQTY,DDZL.Quantity-isnull (RK.OKQTY,0) as RKQTY  ');
    SQL.Add('from KHUONIN_DDZL DDZL  ');
    SQL.Add('left join (select DDBH,sum (QTY) as OKQTY from KHUONIN_RK group by DDBH) RK on RK.DDBH=DDZL.DDBH  ');
    SQL.Add('where 1=1');
    if Edit1.Text<>'' then
      SQL.add('and DDZL.DDBH like '+''''+'%'+edit1.text+'%'+'''');
    if CheckBox1.Checked = true then
    begin
      SQL.add('and isnull (RK.OKQTY,0) <> isnull (DDZL.Quantity,0)');
    end;
    active:=true;
    //ExecSQL; 
  end;
end;

procedure TKhuonInorder.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('RKQTY').value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end; 
 { if Query1.FieldByName('RKQTY').value<>0 then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;}
end;

procedure TKhuonInorder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TKhuonInorder.FormDestroy(Sender: TObject);
begin
  KhuonInorder:=nil;
end;

procedure TKhuonInorder.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.FieldByName('Quantity').Value-Query1.FieldByName('OKQTY').Value>0 then
  begin
    with KhuonInInWarehouse.RK do
    begin
      Insert;
      FieldByName('DDBH').Value:=Query1.FieldByName('DDBH').Value;
      FieldByName('GSBH').Value:=Query1.FieldByName('GSBH').Value;
      FieldByName('Qty').Value:=Query1.FieldByName('Quantity').Value-Query1.FieldByName('OKQTY').Value;
      Post;
    end;
  end;
end;

end.
