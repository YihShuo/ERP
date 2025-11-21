unit OrderCheck_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls;

type
  TOrderCheck_Det = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Edit1: TEdit;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    Query2: TQuery;
    DataSource2: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderCheck_Det: TOrderCheck_Det;

implementation

uses OrderCheck1;

{$R *.dfm}

procedure TOrderCheck_Det.Button1Click(Sender: TObject);
var i:integer;
begin
i:=strtoint(edit1.Text);
with OrderCheck_Det.Query1 do
  begin
    active:=false;
    sql.clear;
    if i=0 then
      begin
        sql.add('select SCBH,GXLB,KHBH,Article,XieXing,SheHao as Color,XieMing,ShipDate as ETD,zlQty,isnull(okQty,0) as okQty  ');
        sql.add('from #SCZKZl2 ');
        sql.Add('where SCBH=');
        sql.add(''''+OrderCheck.query1.FieldByName('SCBH').AsString+'''');
        sql.add('order by SCBH,GXLB ');
     //   sql.add('select *,(zlQty-okQty) as LackQty from #SCZKZL4');
      end;
    if i=1 then
      begin
        sql.Add('select SCBH,GXLB,KHBH,Article,XieXing,SheHao as Color,XieMing,ShipDate as ETD,zlQty,isnull(okQty,0) as okQty ');
        sql.add('from #SCZKZl2 ');
        sql.Add('where XieXing=');
        sql.add(''''+OrderCheck.query1.FieldByName('XieXing').AsString+'''');
        sql.Add('and KHBH=');
        sql.add(''''+OrderCheck.query1.FieldByName('KHBH').AsString+'''');
        sql.Add('and XieMing=');
        sql.add(''''+OrderCheck.query1.FieldByName('XieMing').AsString+'''');
        sql.add('order by SCBH,GXLB ');
   //     sql.add('select *,(zlQty-okQty) as LackQty from #SCZKZL4');
      end;
    if i=2 then
      begin
        sql.Add('select SCBH,GXLB,KHBH,Article,XieXing,SheHao as Color,XieMing,ShipDate,zlQty,isnull(okQty,0) as okQty ');
        sql.add('from #SCZKZl2 ');
        sql.Add('where XieXing=');
        sql.add(''''+OrderCheck.query1.FieldByName('XieXing').AsString+'''');
        sql.Add('and KHBH=');
        sql.add(''''+OrderCheck.query1.FieldByName('KHBH').AsString+'''');
        sql.Add('and XieMing=');
        sql.add(''''+OrderCheck.query1.FieldByName('XieMing').AsString+'''');
        sql.Add('and SheHao=');
        sql.add(''''+OrderCheck.query1.FieldByName('Color').AsString+'''');
        sql.add('order by SCBH,GXLB ');
       // sql.add('select *,(zlQty-okQty) as LackQty from #SCZKZL4');
      end;
    if i=3 then
      begin
        sql.Add('select SCBH,GXLB,KHBH,Article,XieXing,SheHao as Color,XieMing as ArtName,ShipDate as ETD,zlQty,isnull(okQty,0) as okQty');
        sql.add('from #SCZKZl2 ');
        sql.Add('where KHBH=');
        sql.add(''''+OrderCheck.query1.FieldByName('KHBH').AsString+'''');
        sql.Add('where GXLB=');
        sql.add(''''+OrderCheck.query1.FieldByName('GXLB').AsString+'''');
        sql.Add('where ETD=');
        sql.add(''''+OrderCheck.query1.FieldByName('ETD').AsString+'''');
        sql.add('order by SCBH,GXLB ');
   //     sql.add('select *,(zlQty-okQty) as LackQty from #SCZKZL4');
      end;
    Active:=true;
  end;
Query2.Active:=true;
end;

procedure TOrderCheck_Det.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Query2.FieldByName('zlQty').value>Query2.FieldByName('okQty').value then
  begin
    dbgrid2.canvas.font.color:=clRed;
    dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end; 
if Query2.FieldByName('zlQty').value= Query2.FieldByName('okQty').value then
  begin
    dbgrid2.canvas.font.color:=clLime;
    dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TOrderCheck_Det.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Query1.FieldByName('zlQty').value>Query2.FieldByName('okQty').value then
  begin
    dbgrid1.canvas.font.color:=clRed;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;  
if Query1.FieldByName('zlQty').value= Query1.FieldByName('okQty').value then
  begin
    dbgrid1.canvas.font.color:=clLime;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TOrderCheck_Det.FormDestroy(Sender: TObject);
begin
OrderCheck_Det:=nil;
end;

procedure TOrderCheck_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
