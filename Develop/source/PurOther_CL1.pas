unit PurOther_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TPurOther_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YPZLBH: TStringField;
    Query1KFJD: TStringField;
    Query1JiJie: TStringField;
    Query1CALDATE: TDateTimeField;
    Query1memo: TStringField;
    Query2: TQuery;
    Query1INSDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1PD: TStringField;
    Query1csbh: TStringField;
    Query2YPZLBH: TStringField;
    Query2CLBH: TStringField;
    Query2CSBH: TStringField;
    Query2CLSL: TFloatField;
    Query2Qty: TFloatField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2YN: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query2cgqty: TCurrencyField;
    DBGridEh1: TDBGridEh;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);

    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurOther_CL: TPurOther_CL;

implementation

uses PurOther1, FunUnit;

{$R *.dfm}

procedure TPurOther_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
 //if key=#13 then
end;



procedure TPurOther_CL.FormDestroy(Sender: TObject);
begin
PurOther_CL:=nil;
end;

procedure TPurOther_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TPurOther_CL.FormCreate(Sender: TObject);
begin
if purother.ordercb.Text<>'' then
    edit1.Text:=purother.ordercb.Text;
if edit1.text='' then
  begin
    showmessage('Data is null');
    abort;
  end;
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ypzlzls1.*,CLZL.YWPM,CLZL.DWBH,isnull(cgzls.qty,0) as CGQty');
    sql.add('  from ypzlzls1');
    sql.add('left join clzl on ypzlzls1.clbh=clzl.cldh');
    sql.add('left join (');
    sql.Add(' select memo,clbh,sum(isnull(qty,0)) as qty from cgzls');
    sql.add('   where left(isnull(memo,'+''''+'123456789012'+''''+'),12)='+''''+edit1.Text+'''');
    sql.Add(' group by memo,clbh ');
    sql.add(' ) as cgzls on ypzlzls1.ypzlbh=left(isnull(cgzls.memo,'+''''+'123456789012'+''''+'),12)');
    sql.add(' and ypzlzls1.clbh=cgzls.clbh');
    sql.Add('where ypzlzls1.ypzlbh=');
    sql.add(''''+edit1.Text+'''');
    sql.Add(' and ypzlzls1.csbh=');
    sql.add(''''+purother.DBEdit7.Text+'''');
    sql.add('and ypzlzls1.yn='+''''+'Y'+'''');
    sql.add('and isnull(ypzlzls1.qty,0) >= isnull(cgzls.qty,0)');
    //memo1.Text:=sql.Text;
    active:=true;
    if recordcount > 0 then
      purother.ordercb.Text:=fieldbyname('ypzlbh').Value;
  end;
end;

procedure TPurOther_CL.Button1Click(Sender: TObject);
begin
if (not query2.Active) then
  begin
    abort;
  end;
if (Query2.recordcount<1) then
  begin
    abort;
  end;
query2.First;
while not query2.Eof do
begin
  if query2.fieldbyname('YN').value = 'Y' then
  begin
  //
  purother.materialdef.Active:=false;
  with purother.CGDet do
  begin


    if not locate('clbh',query2.fieldbyname('CLBH').value,[]) then
    begin
      insert;
      if query2.fieldbyname('qty').IsNull then
      begin
        fieldbyname('XqQty').value:=0;
        fieldbyname('Qty').value:=0;
      end
      else
      begin
        fieldbyname('XqQty').value:=query2.fieldbyname('qty').Value-query2.fieldbyname('CGqty').Value;
        fieldbyname('Qty').value:=query2.fieldbyname('qty').Value;
      end;
    end
    else
    begin
      edit;
      if query2.FieldByName('qty').IsNull then
        fieldbyname('XqQty').value:=0
      else
        fieldbyname('XqQty').value:=query2.fieldbyname('qty').Value-query2.fieldbyname('CGqty').Value;
    end;
    fieldbyname('CLBH').value:=query2.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query2.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query2.fieldbyname('DWBH').value;
    fieldbyname('memo').value:=edit1.Text;
  end;
  end;
  query2.next;
end;
showmessage('Succeed');

end;

procedure TPurOther_CL.DBGridEh1DblClick(Sender: TObject);
begin
  query2.Edit;
  if query2.fieldbyname('YN').value = 'Y' then
      query2.fieldbyname('YN').value := 'N'
  else
      query2.fieldbyname('YN').value := 'Y';
end;

procedure TPurOther_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
