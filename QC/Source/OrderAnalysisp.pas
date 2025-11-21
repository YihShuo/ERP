unit OrderAnalysisp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, DBTables, TeeProcs, TeEngine, Chart,
  DbChart, Grids, DBGrids, Series, StdCtrls;

type
  TOrderAnalysis = class(TForm)
    Panel1: TPanel;
    P1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    CustomersDS: TDataSource;
    customersQ: TQuery;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    sdate: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    edate: TDateTimePicker;
    Factory: TComboBox;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    shipdateDS: TDataSource;
    shipdateQ: TQuery;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    DBChart3: TDBChart;
    shipcountryQ: TQuery;
    shipcountryDS: TDataSource;
    shipcountryQP: TQuery;
    Series2: TPieSeries;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    DBChart4: TDBChart;
    PieSeries1: TPieSeries;
    shiparticleDS: TDataSource;
    ShipArticleQ: TQuery;
    ShipArticleQP: TQuery;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    DBChart5: TDBChart;
    od2sdSD: TDataSource;
    od2sdQP: TQuery;
    od2sdQ: TQuery;
    Series3: TAreaSeries;
    procedure P1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderAnalysis: TOrderAnalysis;

implementation

{$R *.dfm}





procedure TOrderAnalysis.P1Change(Sender: TObject);
begin
  case p1.ActivePageIndex of
    0:
    begin
        with customersQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select kfjc,sum(Pairs) as qty from ddzl ');
          sql.add('left join kfzl on khbh=kfdh ');
          sql.add('where convert(smalldatetime,convert(varchar,ddrq,111)) between');
          sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and gsbh='+''''+factory.Text+'''');
          sql.Add('group by kfjc');
          active:=true;
        end;
    end;
    1:
    begin
        with shipdateQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select kfjc,sum(Pairs) as qty from ddzl ');
          sql.add('left join kfzl on khbh=kfdh ');
          sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
          sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and gsbh='+''''+factory.Text+'''');
          sql.Add('group by kfjc');
          active:=true;
        end;
    end;
    2:
    begin
        with shipcountryQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select kfjc,khbh,sum(Pairs) as qty  from ddzl ');
          sql.add('left join kfzl on khbh=kfdh ');
          sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
          sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and gsbh='+''''+factory.Text+'''');
          sql.Add('group by kfjc,khbh');
          active:=true;
        end;
    end;
    3:
    begin
        with shiparticleQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select kfjc,khbh,sum(Pairs) as qty  from ddzl ');
          sql.add('left join kfzl on khbh=kfdh ');
          sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
          sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and gsbh='+''''+factory.Text+'''');
          sql.Add('group by kfjc,khbh');
          active:=true;
        end;
    end;
    4:
    begin
        with od2sdQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select kfjc,khbh,avg(convert(int,(CONVERT(datetime,shipdate,111)-CONVERT(datetime,ddrq,111)))) as AvgDate from ddzl ');
          sql.add('left join kfzl on khbh=kfdh ');
          sql.add('where convert(smalldatetime,convert(varchar,ddrq,111)) between');
          sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and gsbh='+''''+factory.Text+'''');
          sql.Add('group by kfjc,khbh');
          active:=true;
        end;
    end;
  end;
end;

procedure TOrderAnalysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=Cafree;
end;

procedure TOrderAnalysis.FormDestroy(Sender: TObject);
begin
   orderanalysis:=nil;
end;


procedure TOrderAnalysis.DBGrid3TitleClick(Column: TColumn);
begin
  with shipcountryQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10 dd.ywsm,sum(Pairs) as qty  from ddzl ');
     sql.add(' left join (select lbdh,ywsm from lbzls where lb='+''''+'06'+''''+') as dd on dd.lbdh=ddzl.ddgb');
     sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
     sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
     //sql.add('  and khbh='+''''+shipcountryq.Fieldbyname('khbh').Value+'''');
     sql.Add('group by dd.ywsm');
     sql.Add('order by qty desc');
     active:=true;
  end;
end;


procedure TOrderAnalysis.DBGrid3CellClick(Column: TColumn);
begin
  with shipcountryQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10 dd.ywsm,sum(Pairs) as qty  from ddzl ');
     sql.add(' left join (select lbdh,ywsm from lbzls where lb='+''''+'06'+''''+') as dd on dd.lbdh=ddzl.ddgb');
     sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
     sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
     sql.add('  and khbh='+''''+shipcountryq.Fieldbyname('khbh').Value+'''');
     sql.Add('group by dd.ywsm');
     sql.Add('order by qty desc');
     active:=true;
  end;
end;

procedure TOrderAnalysis.DBGrid3EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  with shipcountryQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select ddgb,sum(Pairs) as qty from ddzl ');
     sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
     sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
     sql.add('  and khbh='+''''+shipcountryq.Fieldbyname('khbh').Value+'''');
     sql.Add('group by ddgb');
     active:=true;
  end;
end;


procedure TOrderAnalysis.DBGrid4TitleClick(Column: TColumn);
begin
  with shiparticleQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10 xiexing,sum(Pairs) as qty  from ddzl ');
     sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
     sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
//     sql.add('  and khbh='+''''+shiparticleq.Fieldbyname('khbh').Value+'''');
     sql.Add('group by xiexing');
     sql.Add('order by qty desc');
     active:=true;
  end;
end;

procedure TOrderAnalysis.DBGrid4CellClick(Column: TColumn);
begin
  with shiparticleQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10 xiexing,sum(Pairs) as qty  from ddzl ');
     sql.add('where convert(smalldatetime,convert(varchar,shipdate,111)) between');
     sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
     sql.add('  and khbh='+''''+shiparticleq.Fieldbyname('khbh').Value+'''');
     sql.Add('group by xiexing');
     sql.Add('order by qty desc');
     active:=true;
  end;
end;

procedure TOrderAnalysis.DBGrid5TitleClick(Column: TColumn);
begin
  with od2sdQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select convert(int,(CONVERT(datetime,shipdate,111)-CONVERT(datetime,ddrq,111) )) as dd,count(*) as re  from ddzl ');
     sql.add('where convert(smalldatetime,convert(varchar,ddrq,111)) between');
     sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
//     sql.add('  and khbh='+''''+od2sdq.Fieldbyname('khbh').Value+'''');
     sql.Add(' group by convert(int,(CONVERT(datetime,shipdate,111)-CONVERT(datetime,ddrq,111) ))');
     active:=true;
  end;
end;

procedure TOrderAnalysis.DBGrid5CellClick(Column: TColumn);
begin
  with od2sdqp do
  begin
     active:=false;
     sql.Clear;
     sql.add('select convert(int,(CONVERT(datetime,shipdate,111)-CONVERT(datetime,ddrq,111) )) as dd,count(*) as re  from ddzl ');
     sql.add('where convert(smalldatetime,convert(varchar,ddrq,111)) between');
     sql.add('  '''+formatdatetime('yyyy/MM/dd',sdate.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate.Date)+'''');
     sql.add('  and khbh='+''''+od2sdq.Fieldbyname('khbh').Value+'''');
     sql.Add(' group by convert(int,(CONVERT(datetime,shipdate,111)-CONVERT(datetime,ddrq,111) ))');
     active:=true;
  end;
end;

end.
