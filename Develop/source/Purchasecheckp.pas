unit Purchasecheckp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DB, DBCtrls, StdCtrls, ComCtrls, FunUnit,
  DBTables, GridsEh, DBGridEh;

type
  TPurchasecheck = class(TForm)
    Panel1: TPanel;
    YPDE: TQuery;
    YPMA: TQuery;
    CGLIST: TQuery;
    Label1: TLabel;
    CDA: TDateTimePicker;
    Button1: TButton;
    Label2: TLabel;
    ypmad: TDataSource;
    YPMAypzlbh: TStringField;
    ypded: TDataSource;
    ordercb: TComboBox;
    YPDEYPDH: TStringField;
    YPDEXieXing: TStringField;
    YPDESheHao: TStringField;
    YPDEARTICLE: TStringField;
    YPDEKFJD: TStringField;
    cgD: TDataSource;
    CGLISTypzlbh: TStringField;
    CGLISTcsbh: TStringField;
    CGLISTclbh: TStringField;
    CGLISTywpm: TStringField;
    CGLISTclsl: TFloatField;
    CGLISTcgqty: TCurrencyField;
    YPDEQuantity: TFloatField;
    YPDESDRQ: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ordercbChange(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Purchasecheck: TPurchasecheck;

implementation

{$R *.dfm}

procedure TPurchasecheck.Button1Click(Sender: TObject);
begin
  with ypma do
  begin
    active:=false;
    sql.clear;
    sql.add('select ypzlbh from ypzlzl');
    sql.add('where insdate >='+''''+datetostr(cda.date)+'''');
    sql.add(' and pd='+''''+'P'+'''');
    sql.add('');
    active:=true;
  end;
  ypma.First;
  ordercb.Items.Clear;
  ordercb.Items.Add('');
  ordercb.Items.Add('ALL');
  while not ypma.Eof do
  begin
    ordercb.Items.Add(ypma.FieldByName('ypzlbh').Value);
    ypma.Next;
  end;
  ordercb.ItemIndex:=0;
end;

procedure TPurchasecheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TPurchasecheck.FormCreate(Sender: TObject);
begin
   cda.Date:=now-14;
end;

procedure TPurchasecheck.FormDestroy(Sender: TObject);
begin
  purchasecheck:=nil;
end;

procedure TPurchasecheck.ordercbChange(Sender: TObject);
begin
  if ordercb.Text<>'' then
  begin
    with ypde do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from ypzlzls');
      sql.add('left join ypzl on ypzlzls.ypdh=ypzl.ypdh');
      if ordercb.Text<>'ALL' then
        sql.add('where ypzlbh='+''''+ordercb.Text+'''')
      else
      begin
        if ypma.active then
        begin
          ypma.First;
          sql.add('where ypzlbh in ('+''''+ypma.FieldByName('ypzlbh').Value+'''');
          while not ypma.Eof do
          begin
            sql.add(','+''''+ypma.FieldByName('ypzlbh').Value+'''');
            ypma.Next;
          end;
          sql.Add(')')
        end;
      end;

      active:=true;
    end;

    with cglist do
    begin
      active:=false;
      sql.Clear;
      sql.add('select ypzlzls1.ypzlbh,ypzlzls1.csbh,ypzlzls1.clbh,clzl.ywpm');
      //sql.add('	,ypzlzls1.clsl,ypzlzls1.qty,isnull(cgzls.qty,0) as cgqty');
      sql.add('	,ypzlzls1.clsl,isnull(cgzls.qty,0) as cgqty');
      sql.add(' from ypzlzls1');
      sql.add('left join cgzls on ypzlzls1.ypzlbh=cgzls.memo and ypzlzls1.clbh=cgzls.clbh');
      sql.Add('left join clzl on ypzlzls1.clbh=clzl.cldh ');
      sql.add('where 1=1 ');
      //sql.add(' and ypzlzls1.yn='+''''+'Y'+'''');
      if ordercb.Text<>'ALL' then
        sql.add('and ypzlzls1.ypzlbh='+''''+ordercb.Text+'''')
      else
      begin
        if ypma.active then
        begin
          ypma.First;
          sql.add('and ypzlzls1.ypzlbh in ('+''''+ypma.FieldByName('ypzlbh').Value+'''');
          while not ypma.Eof do
          begin
            sql.add(','+''''+ypma.FieldByName('ypzlbh').Value+'''');
            ypma.Next;
          end;
          sql.Add(')');
        end;
      end;
      //funcobj.WriteErrorLog(sql.Text );
      active:=true;
    end;
  end;
end;

procedure TPurchasecheck.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 {
  if  cglist.FieldByName('Qty').value>(cglist.FieldByName('cgqty').value)   then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;}
end;

end.
