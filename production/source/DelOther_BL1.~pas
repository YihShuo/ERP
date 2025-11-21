unit DelOther_BL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh;

type
  TDelOther_BL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Query2: TQuery;
    Query1BLNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1KCQty: TCurrencyField;
    Query1DFL: TStringField;
    Query1CLSL: TCurrencyField;
    DataSource2: TDataSource;
    Query1Qty: TCurrencyField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
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
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCBL.ZLBH,DDZL.Article,XXZL.XieMing ,DDZL.YN ');
    sql.add('from SCBL left join DDZL on DDZL.ZLBH=SCBL.ZLBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao ');
    sql.add('where SCBL.BLNO='+''''+edit1.Text+'''');
    active:=true;
    //memo1.Text:=sql.Text;
    if fieldbyname('YN').value<>'5' then
      begin
        query1.Active:=false;
        query1.Params.Items[0].AsString := edit1.text;
        query1.Params.Items[1].AsString := DelOther.DelMas.fieldbyname('CKBH').value;
        query1.Params.Items[2].AsString := main.edit2.text;
        query1.Params.Items[3].AsString := edit1.text;
        query1.Active:=true;
      end
        else
          begin
            showmessage('Already Locked.');
            abort;
          end;
  end;
end;

procedure TDelOther_BL.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  button1.SetFocus;
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
  if query1.FieldByName('DFL').value='N' then
  begin
    showmessage('Pls contect with develop department first.');
    abort;
  end;
  begin
    with DelOther.DelDet do
      begin
        insert;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query2.fieldbyname('ZLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('CostID').value:='621' ;
        fieldbyname('BLSB').value:='Y';
        fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
        fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
        if query1.fieldbyname('Qty').isnull then
          fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value
            else   
              fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('Qty').value;
        fieldbyname('MEMO').value:=edit1.text;
        post;
      end;
    Query1.Edit;
    query1.fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value ;
  end ;
end;

procedure TDelOther_BL.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if  Query1.FieldByName('Qty').value>=(Query1.FieldByName('CLSL').value)   then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_BL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

procedure TDelOther_BL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
