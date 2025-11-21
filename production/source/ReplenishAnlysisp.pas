unit ReplenishAnlysisp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Series, TeEngine, TeeProcs, Chart,
  DbChart, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TReplenishAnlysis = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sdate: TDateTimePicker;
    edate: TDateTimePicker;
    Factory: TComboBox;
    P1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBChart1: TDBChart;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    DBChart3: TDBChart;
    Series2: TPieSeries;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    DBChart4: TDBChart;
    PieSeries1: TPieSeries;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    DBChart5: TDBChart;
    Series3: TAreaSeries;
    CustomersDS: TDataSource;
    customersQ: TQuery;
    shipdateDS: TDataSource;
    shipdateQ: TQuery;
    shipcountryQ: TQuery;
    shipcountryDS: TDataSource;
    shipcountryQP: TQuery;
    shiparticleDS: TDataSource;
    ShipArticleQ: TQuery;
    ShipArticleQP: TQuery;
    od2sdSD: TDataSource;
    od2sdQP: TQuery;
    od2sdQ: TQuery;
    Series1: TBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishAnlysis: TReplenishAnlysis;

implementation

{$R *.dfm}

end.
