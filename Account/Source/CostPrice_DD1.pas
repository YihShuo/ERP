unit CostPrice_DD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ExtCtrls, DBTables, Grids, DBGrids, GridsEh,
  DBGridEh;

type
  TCostPrice_DD = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Qty: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1okQty: TFloatField;
    Query1okACC: TCurrencyField;
    DBGridEh1: TDBGridEh;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostPrice_DD: TCostPrice_DD;

implementation

uses CostPrice1, main1;

{$R *.dfm}

procedure TCostPrice_DD.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TCostPrice_DD.Edit2KeyPress(Sender: TObject; var Key: Char);
begin 
  if key=#13 then
    button1.SetFocus;
end;

procedure TCostPrice_DD.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CWDD.DDBH,CWDD.Article,CWDD.XieMing,sum(CWDD.Qty) as Qty,');
    sql.add('sum(CWDD.USACC) as USACC,isnull(CWSK.okQty,0) as okQty,isnull(CWSK.okACC,0) as okACC');
    sql.add('from CWDD');
    sql.add('left join (select ZLBH,sum(Pairs) as okQty,sum(USACC) as okACC ');
    sql.add('            from CWSKS ');
    sql.add('            where ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('            group by ZLBH) CWSK on CWSK.ZLBH=CWDD.DDBH ');
    sql.add('where CWDD.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and  CWDD.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('group by CWDD.DDBH,CWDD.Article,CWDD.XieMing,CWSK.okQty,CWSK.okACC ');
    sql.add('having isnull(CWSK.okACC,0)<sum(CWDD.USACC) ');
    sql.add('order by DDBH ');
    active:=true;
  end;
end;

procedure TCostPrice_DD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  action:=cafree;
end;

procedure TCostPrice_DD.FormDestroy(Sender: TObject);
begin
  costprice_DD:=nil;
end;

procedure TCostPrice_DD.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with costPrice.RevDet do
      begin
        insert;
        fieldbyname('ZLBH').value:=query1.fieldbyname('DDBH').value;
        fieldbyname('Pairs').value:=query1.fieldbyname('Qty').Value-query1.fieldbyname('okQty').Value;
        fieldbyname('USACC').value:=query1.fieldbyname('USACC').Value-query1.fieldbyname('okACC').Value;
       // fieldbyname('VNACC').value:=0;
        fieldbyname('Article').value:=query1.fieldbyname('Article').Value;
        fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
        fieldbyname('USERDate').value:=date;
        fieldbyname('USERID').value:=main.edit1.text;
        fieldbyname('YN').value:='1';
        post;
      end;
  end;
end;

procedure TCostPrice_DD.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (query1.FieldByName('USACC').value>query1.FieldByName('okACC').value) and (query1.FieldByName('okACC').value<>0)  then
  begin
    DBGridEh1.canvas.font.color:=clRed;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TCostPrice_DD.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
