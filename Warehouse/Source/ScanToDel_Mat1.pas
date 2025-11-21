unit ScanToDel_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TScanToDel_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1DFL: TStringField;
    Query1YN: TStringField;
    Query1Qty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Me: TStringField;
    Query1DepName: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanToDel_Mat: TScanToDel_Mat;

implementation

uses ScanToDeliver1, main1;

{$R *.dfm}

procedure TScanToDel_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanToDel_Mat.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select BDepartment.DepName,KCSMCL.ZLBH,KCSMCL.CLBH,KCSMCL.DFL,KCSMCL.YN,sum(KCSMCL.Qty) as Qty,');
    sql.add('       CLZL.YWPM,CLZL.DWBH,DDZL.YN as Me');
    sql.add('from KCSMCL');
    sql.add('left join CLZL on CLZL.CLDH=KCSMCL.CLBH');
    sql.add('left join DDZL on DDZL.ZLBH=KCSMCL.ZLBH ') ;
    sql.add('left join BDepartment on BDepartment.ID=KCSMCL.DepID');
    sql.add('where KCSMCL.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KCSMCL.CLBH like '+''''+edit2.Text+'%'+'''');
    sql.add('      and KCSMCL.YN='+''''+'2'+'''');
    sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('group by BDepartment.DepName,KCSMCL.ZLBH,KCSMCL.CLBH,KCSMCL.DFL,KCSMCL.YN,CLZL.YWPM,CLZL.DWBH ,DDZL.YN');
    sql.add('order by BDepartment.DepName,KCSMCL.CLBH,KCSMCL.ZLBH ');
    active:=true;
  end;
end;

procedure TScanToDel_Mat.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
if query1.FieldByName('Me').value='5' then
  begin
    showmessage('Account already Lock this order. Pls contect with Account.');
    abort;
  end;
if  Query1.FieldByName('YN').value<>'3' then
  begin
    with ScanToDeliver.DelDet do
      begin
        insert;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value; 
        fieldbyname('TempQty').value:=query1.fieldbyname('Qty').value;
        fieldbyname('CostID').value:='621' ;
        fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
        fieldbyname('CLSL').value:=query1.fieldbyname('Qty').value;
        post;
      end;
    Query1.Edit;
    query1.fieldbyname('YN').value:='3';
   // showmessage('Succeed.');
  end
    else
      begin
        showmessage('Already deliver all.');
      end;
end;

procedure TScanToDel_Mat.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

 if Query1.FieldByName('YN').value='3' then
  begin
    dbgrid1.canvas.font.color:=clLime;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
 if Query1.FieldByName('Me').value='5' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TScanToDel_Mat.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1DblClick(nil);
end;

procedure TScanToDel_Mat.FormDestroy(Sender: TObject);
begin
ScanToDel_Mat:=nil;
end;

end.
