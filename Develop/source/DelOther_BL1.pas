unit DelOther_BL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls,
  ComCtrls, GridsEh, DBGridEh;

type
  TDelOther_BL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Query2: TQuery;
    Label2: TLabel;
    cda: TDateTimePicker;
    Button2: TButton;
    ordercb: TComboBox;
    ypma: TQuery;
    Query1ypzlbh: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1KCQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  DelOther_BL: TDelOther_BL;

implementation

uses DelOther1, main1;

{$R *.dfm}

procedure TDelOther_BL.FormDestroy(Sender: TObject);
begin
DelOther_BL:=nil;
end;

procedure TDelOther_BL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TDelOther_BL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    Params.Items[0].AsString := ordercb.text;
    Params.Items[1].AsString := DelOther.DelMas.fieldbyname('CKBH').value;
    Params.Items[2].AsString := ordercb.text;
    Active:=true;
  end;
end;

procedure TDelOther_BL.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

//Query1.FieldByName('Qty').displayformat:='##,#0.00';
 
end;

procedure TDelOther_BL.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  button1.SetFocus;
end;

procedure TDelOther_BL.Button2Click(Sender: TObject);
begin
  with ypma do
  begin
    active:=false;
    sql.clear;
    sql.add('select ypzlbh from ypzlzl');
    sql.add('where insdate >='+''''+datetostr(cda.date)+'''');
    sql.add(' and pd='+''''+'D'+'''');
    sql.add('');
    active:=true;
  end;
  ypma.First;
  ordercb.Items.Clear;
  while not ypma.Eof do
  begin
    ordercb.Items.Add(ypma.FieldByName('ypzlbh').Value);
    ypma.Next;
  end;
  ordercb.ItemIndex:=0;
  button1.Enabled:=true;
end;

procedure TDelOther_BL.FormCreate(Sender: TObject);
begin
  cda.Date:=now-14;
end;

procedure TDelOther_BL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.FieldByName('KCQty').value=0 then
  begin
    showmessage('khong con ton kho, van can mo phieu sao?');
  end;
  begin
    with DelOther.DelDet do
      begin
        insert;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query1.fieldbyname('YPZLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('CostID').value:='621' ;
        fieldbyname('BLSB').value:='N';
        fieldbyname('DFL').value:='';
        fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
        if query1.fieldbyname('Qty').isnull then
          fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value
            else
              fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
        fieldbyname('MEMO').value:=ordercb.text;
        post;
      end;
    Query1.Edit;
    query1.fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value ;
  end ;
  button1.Enabled:=false;
end;

procedure TDelOther_BL.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Qty').value>=(Query1.FieldByName('CLSL').value)   then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_BL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
