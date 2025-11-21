unit DelMaterial_CT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TDelMaterial_CT = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TIntegerField;
    Query1okQty: TCurrencyField;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelMaterial_CT: TDelMaterial_CT;

implementation

uses main1, DelMaterial1;

{$R *.dfm}

procedure TDelMaterial_CT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDelMaterial_CT.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT YWDD.YSBH as DDBH, YWBZPO.CLBH,sum( YWBZPO.CTS) as Qty,');
    sql.add('       CLZL.YWPM,CLZL.DWBH,isnull(KCLLS.okQty,0) as okQty');
    sql.add('from YWBZPO');
    sql.add('left join CLZl on CLZl.CLDH=YWBZPO.CLBH ');
    sql.add('left join YWDD on YWDD.DDBH=YWBZPO.DDBH');
    sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as okQty,KCLLS.SCBH from KCLLS');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           where  KCLLS.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and KCLLS.CLBH like '+''''+'U1%'+'''') ;
    sql.add('                 and KCLL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('                 group by  KCLLS.CLBH,KCLLS.SCBH ) KCLLS')  ;
    sql.add('           on KCLLS.CLBH=YWBZPO.CLBH and KCLLS.SCBH=YWDD.YSBH') ;
    sql.add('where YWDD.YSBH='+''''+edit1.Text+'''');
    sql.add('group by  YWDD.YSBH, YWBZPO.CLBH, CLZL.YWPM, ');
    sql.add('          CLZL.DWBH,KCLLS.okQty   ');
    sql.add('order by YWDD.YSBH,YWBZPO.CLBH ');
    active:=true;
  end;
end;

procedure TDelMaterial_CT.FormCreate(Sender: TObject);
begin
edit1.text:=DelMaterial.SpecMas.fieldbyname('ZLBH').asstring;
button1click(nil);
end;

procedure TDelMaterial_CT.DBGridEh1DblClick(Sender: TObject);
begin

if (Query1.recordcount<1) then
  begin
    abort;
  end;
if  Query1.FieldByName('okQty').value<(Query1.FieldByName('Qty').value)  then
  begin
    with DelMaterial.DelDet do
      begin
        insert;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query1.fieldbyname('DDBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('TempQty').value:=query1.fieldbyname('Qty').value-Query1.FieldByName('okQty').value;
        fieldbyname('CostID').value:='621' ;
        fieldbyname('DFL').value:='A';
        fieldbyname('CLSL').value:=query1.fieldbyname('Qty').value;
        post;
      end;
    Query1.Edit;
    query1.fieldbyname('okQty').value:=query1.fieldbyname('Qty').value ;
    showmessage('Succeed.');
  end
    else
      begin
        showmessage('Already deliver all.');
      end;
end;

procedure TDelMaterial_CT.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if  Query1.FieldByName('okQty').value>=Query1.FieldByName('Qty').value   then
  begin
    dbgrideh1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelMaterial_CT.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin 
if key=#13 then
  DBGrideh1dblclick(nil);
end;

procedure TDelMaterial_CT.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
end;

end.
