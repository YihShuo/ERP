unit PurOther_safe1;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateUtils,
  GridsEh, DBGridEh;

type
  TPurOther_safe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLdH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    {procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);}
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurOther_safe: TPurOther_safe;

implementation

uses PurOther1,  main1;

{$R *.dfm}

procedure TPurOther_safe.Button1Click(Sender: TObject);

begin   //找庫存相關的數據

if edit1.Text='' then
begin
  showmessage('Matno is null');
  abort;
end;
with query1 do
  begin
    active:=true;
    sql.clear;
    if purother.PurClass.Text='6' then
    begin
      sql.Add('select CLdH,YWPM,DWBH from clzl');
      sql.add(' where cldh like '+''''+edit1.Text+'%'+'''');
    end
    else
    begin
      sql.Add('select tempddbh as CLdH,YWPM,cllb as DWBH from clzltemp');
      sql.add(' where tempddbh like '+''''+edit1.Text+'%'+'''');
    end;

    sql.add(' and YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add(' and YWPM like '+''''+'%'+edit4.Text+'%'+'''');

    if purother.PurClass.Text='6' then
    begin
      sql.add(' and yn='+''''+'1'+'''');
      sql.add(' order by cldh ');
    end
    else
    begin
      sql.add(' order by tempddbh ');
    end;

    //memo1.text:=sql.text;
    active:=true;
  end;
end;

procedure TPurOther_safe.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 
end;
{
procedure TPurOther_safe.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if query1.FieldByName('KCQty').value>query1.FieldByName('MaxQty').value then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if query1.FieldByName('KCQty').value<query1.FieldByName('MinQty').value then
  begin
    dbgrid1.canvas.font.color:=clLime;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;
}
procedure TPurOther_safe.FormDestroy(Sender: TObject);
begin
  PurOther_safe:=nil;
end;

procedure TPurOther_safe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TPurOther_safe.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;

  if (Query1.recordcount<1) then
  begin
    abort;
  end;

  with purother.CGDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('memo').value:=purother.ordercb.Text;
    fieldbyname('XqQty').value:=0;
    fieldbyname('Qty').value:=0;
    insert;
  end;
end;

procedure TPurOther_safe.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   DBGridEh1DblClick(nil);
end;

end.
