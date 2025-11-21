unit KhuonIn_Order1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TKhuonIn_Order = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1GSBH: TStringField;
    Query1Quantity: TIntegerField;
    Query1RKQty: TCurrencyField;
    Query1LLQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhuonIn_Order: TKhuonIn_Order;

implementation

uses KhuonInOutWarehouse1;

{$R *.dfm}

procedure TKhuonIn_Order.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TKhuonIn_Order.FormDestroy(Sender: TObject);
begin
  KhuonIn_Order:=nil;
end;

procedure TKhuonIn_Order.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select DDZL.DDBH,DDZL.GSBH,DDZL.Quantity,isnull(RK.RKQty,0) as RKQty,isnull(LL.LLQty,0) as LLQty,isnull(RK.RKQty,0)-isnull(LL.LLQty,0) as Qty  ');
    sql.Add('from KHUONIN_DDZL DDZL  ');
    sql.Add('left join (select DDBH,sum(Qty) as RKQty from KHUONIN_RK group by DDBH) RK on RK.DDBH=DDZL.DDBH ');
    sql.Add('left join (select DDBH,sum(Qty) as LLQty from KHUONIN_LL group by DDBH) LL on LL.DDBH=DDZL.DDBH ');
    sql.Add('where 1=1');
    if Edit1.Text<>'' then
      sql.add(' and DDZL.DDBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      sql.Add(' and DDZL.Article like '''+Edit2.Text+'%'' ');
    if CheckBox1.Checked then
      sql.Add(' and isnull(RK.RKQty,0) > isnull(LL.LLQty,0) ');
    sql.Add(' order by DDZL.DDBH ');
    active:=true;
  end;
end;

procedure TKhuonIn_Order.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.FieldByName('Qty').Value>0 then
  begin
    with KhuonInOutWarehouse.Query1 do
    begin
      Insert;
      FieldByName('DDBH').Value:=Query1.FieldByName('DDBH').Value;
      FieldByName('GSBH').Value:=Query1.FieldByName('GSBH').Value;
      FieldByName('Qty').Value:=Query1.FieldByName('Qty').Value;
      Post;
    end;
  end;
end;

procedure TKhuonIn_Order.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Qty').Value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
