unit Order_List1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TOrder_List = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1CQDH: TStringField;
    Query1Pairs: TFloatField;
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
  Order_List: TOrder_List;

implementation

uses main1, OutsoleOutWarehouse1 , OutsoleInWarehouse1;

{$R *.dfm}

procedure TOrder_List.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrder_List.FormDestroy(Sender: TObject);
begin
  Order_List:=nil;
end;

procedure TOrder_List.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add(' select DDZL.DDBH,DDZL.CQDH,DDZL.Pairs,isnull(RK.RKQty,0) as RKQty,isnull(LL.LLQty,0) as LLQty,isnull(RK.RKQty,0) - isnull(LL.LLQty,0) as Qty ');
    SQL.Add(' from '+main.LIY_DD+'.dbo.DDZL DDZL ');
    SQL.Add(' left join (select DDBH, sum(Qty) as RKQty from '+main.LIY_DD+'.dbo.OUTSOLE_RK group by DDBH) RK on RK.DDBH=DDZL.DDBH ');
    SQL.Add(' left join (select DDBH, sum(Qty) as LLQty from '+main.LIY_DD+'.dbo.OUTSOLE_LL group by DDBH) LL on LL.DDBH=DDZL.DDBH ');
    SQL.Add(' where 1=1');
    if Edit1.Text<>'' then
      SQL.Add(' and DDZL.DDBH like '''+Edit1.Text+'%'' ');
    if CheckBox1.Checked = true then
    begin
      SQL.Add(' and isnull(RK.RKQty,0) > isnull(LL.LLQty,0) ');
    end;
    SQL.Add(' order by DDZL.DDBH ');
    active:=true;
  end;
end;

procedure TOrder_List.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.FieldByName('Qty').Value>0 then
  begin
    with OutsoleOutWarehouse.Query1 do
    begin
      Insert;
      FieldByName('DDBH').Value:=Query1.FieldByName('DDBH').Value;
      FieldByName('GSBH').Value:=Query1.FieldByName('CQDH').Value;
      FieldByName('Qty').Value:=Query1.FieldByName('Qty').Value;
      Post;
    end;
  end;
end;

procedure TOrder_List.DBGridEh1DrawColumnCell(Sender: TObject;
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
