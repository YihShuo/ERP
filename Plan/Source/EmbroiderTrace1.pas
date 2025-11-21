unit EmbroiderTrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls,dateUtils;

type
  TEmbroiderTrace = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Edit6: TEdit;
    Edit7: TEdit;
    CBX2: TComboBox;
    Label2: TLabel;
    Label8: TLabel;
    CBX3: TComboBox;
    CBX1: TComboBox;
    Label4: TLabel;
    RG1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmbroiderTrace: TEmbroiderTrace;
  sdate,edate:Tdate;

implementation

{$R *.dfm}

procedure TEmbroiderTrace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
free;

end;

procedure TEmbroiderTrace.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with query1 do
  begin
    active:=false;
    if fieldcount>0 then
      begin
        fields.clear;
        DBGrid1.columns.clear;
      end;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#SCZKZL'+''''+') is not null  ');
    sql.add('begin   drop table #SCZKZL end   ');
    sql.add('  if object_id('+''''+'tempdb..#SCZKZL2'+''''+') is not null  ');
    sql.add('begin   drop table #SCZKZL2 end   ');
    sql.add('  if object_id('+''''+'tempdb..#SCZKZL3'+''''+') is not null  ');
    sql.add('begin   drop table #SCZKZL3 end   ');

    sql.add('select A.SCBH,B.ZLBH,C.DDBH,C.KHBH ,C.ShipDate,');
    sql.add('D.XieXing,D.SheHao,D.Article, D.XieMing ,sum(E.Qty) as zlQty into #SCZKZL ');
    sql.add('from SCZL A  ');
    sql.add('left join ZLZL B on A.ZLBH=B.ZLBH');
    sql.add('left join DDZL C on C.DDBH=B.DDBH');
    sql.add('left join XXZL D on D.XieXing=C.XieXing and D.SheHao=C.SheHao');
    sql.add('left join  SCZLS E on E.SCBH=A.SCBH');
    sql.add('where A.SCBH like');
    sql.add(''''+edit2.Text+'%'+'''');
    sql.add('and A.SCBH=A.ZLBH')  ;
    sql.add(' and D.XieMing like ');
    sql.add(''''+'%'+edit4.text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,C.ShipDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add('and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('and A.GXLB ='+''''+'Y'+'''');
    if RG1.itemindex<>0 then
      begin
        sql.add('and exists(select SCBH from DXBBSS where DXBBSS.SCBH=A.SCBH) ');
      end;

    sql.add('Group by  A.SCBH,B.ZLBH,C.DDBH,C.KHBH,D.XieXing,D.SheHao,D.Article,D.XieMing,C.ShipDate ');

    sql.add('select  m.SCBH,m.ZLBH,m.DDBH,m.KHBH,m.Article,m.XieXing,m.ShipDate,');
    sql.add('m.SheHao,m.XieMing,m.zlQty,isnull(sum(s.Qty),0) as okQty into #SCZKZL2 ');
    sql.add('from #SCZKZL m');
    sql.add('left join (select DX.SCBH,sum(DX.Qty) as Qty  ');
    sql.add('            from  (select DXCC.SCBH,DXCC.XXCC,isnull(min(DXCC.Qty),0) as Qty');
    sql.add('                from (select DXBBSS.SCBH,DXBBSS.BWBH,DXBBSS.XXCC,isnull(sum(Qty),0) as Qty from DXBBSS');
    sql.add('                       where exists(select SCBH from #SCZKZL where #SCZKZL.SCBH=DXBBSS.SCBH)');
    sql.add('                       group by DXBBSS.SCBH,DXBBSS.BWBH,DXBBSS.XXCC) DXCC');
    sql.add('              group by DXCC.SCBH,DXCC.XXCC) DX');
    sql.add('          group by DX.SCBH ) s on m.SCBH=s.SCBH ');
    sql.add('group by m.SCBH,m.ZLBH,m.DDBH,m.KHBH,m.XieXing,m.SheHao,m.Article,m.XieMing,m.zlQty,m.ShipDate');   
    if RG1.itemindex=1 then
      begin
        sql.add('having isnull(sum(s.Qty),0)<>0  ');
        sql.add(' and sum(s.Qty)<>m.zlQty ');
      end;

    execsql;
    if CBX1.itemindex=0 then
      begin
        active:=false;
        sql.clear;
        sql.add('select SCBH,KHBH,Article,XieXing,SheHao ,XieMing,ShipDate ,');
        sql.add('zlQty,isnull(okQty,0) as okQty,isnull(zlQty,0)-isnull(okQty,0) as LackQty  ');
        sql.add('from #SCZKZl2 order by SCBH ');
        active:=true;
        DBGrid1.Columns[0].Width:= 80;
        DBGrid1.Columns[1].Width:= 25;
        DBGrid1.Columns[2].Width:= 85;
        DBGrid1.Columns[3].Width:= 70;
        DBGrid1.Columns[4].Width:= 25;
        DBGrid1.Columns[5].Width:= 150;
        DBGrid1.Columns[6].Width:= 70;
        DBGrid1.Columns[7].Width:= 60;
        DBGrid1.Columns[8].Width:= 60;
        DBGrid1.Columns[9].Width:= 60;
      end;
    if CBX1.itemindex=1 then
      begin      
        active:=false;
        sql.clear;
        sql.add('select KHBH,XieXing,XieMing,sum(zlQty) as zlQty,isnull(sum(okQty),0) as okQty into #SCZKZL3 ');
        sql.add('from #SCZKZL2 group by KHBH,XieXing,XieMing ');
        sql.add('order by KHBH,XieXing,XieMing ');
        sql.add('select *,(zlQty-okQty) as LackQty from #SCZKZL3 order by XieXing');
        active:=true;

        DBGrid1.Columns[0].Width:= 25;
        DBGrid1.Columns[1].Width:= 85;
        DBGrid1.Columns[2].Width:= 150;
        DBGrid1.Columns[3].Width:= 60;
        DBGrid1.Columns[4].Width:= 60;
        DBGrid1.Columns[5].Width:= 60;
      end;
    if CBX1.itemindex=2 then
      begin
        active:=false;
        sql.clear;
        sql.add('select KHBH,XieXing,XieMing ,SheHao ,sum(zlQty) as zlQty,isnull(sum(okQty),0) as okQty  into #SCZKZL3');
        sql.add('from #SCZKZL2 group by KHBH,XieXing,XieMing, SheHao');
        sql.add('order by  KHBH,XieXing,XieMing, SheHao');
        sql.add('select *,(zlQty-okQty) as LackQty from #SCZKZL3 order by XieXing,SheHao');
        active:=true;
        DBGrid1.Columns[0].Width:= 25;
        DBGrid1.Columns[1].Width:= 85;
        DBGrid1.Columns[2].Width:= 150;
        DBGrid1.Columns[3].Width:= 25;
        DBGrid1.Columns[4].Width:= 60;
        DBGrid1.Columns[5].Width:= 60;  
        DBGrid1.Columns[5].Width:= 60;
      end;
    if CBX1.itemindex=3 then
      begin  
        active:=false;
        sql.clear;
        sql.add('select KHBH,convert(varchar,ShipDate,111) as ShipDate,sum(zlQty) as zlQty,isnull(sum(okQty),0) as okQty  into #SCZKZL3');
        sql.add('from #SCZKZL2');
        sql.add('group by KHBH,ShipDate');
        sql.add('order by KHBH,ShipDate');
        sql.add('select *,(zlQty-okQty) as LackQty from #SCZKZL3 order by ShipDate,KHBH');
        active:=true; 
        DBGrid1.Columns[0].Width:= 25;
        DBGrid1.Columns[1].Width:= 80;
        DBGrid1.Columns[2].Width:= 60;
        DBGrid1.Columns[3].Width:= 60;
        DBGrid1.Columns[4].Width:= 60;
      end;
  end;

end;

procedure TEmbroiderTrace.FormCreate(Sender: TObject);
begin
CBX1.ItemIndex:=0;
end;

procedure TEmbroiderTrace.FormDestroy(Sender: TObject);
begin
EmbroiderTrace:=nil;
end;

end.


