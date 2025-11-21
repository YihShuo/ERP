unit StockAnlysisp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, TeEngine, Series, TeeProcs,
  Chart, DbChart, ComCtrls, StdCtrls, ExtCtrls;

type
  TStockAnlysis = class(TForm)
    Label5: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    syear: TDateTimePicker;
    Factory: TComboBox;
    P1: TPageControl;
    TabSheet1: TTabSheet;
    DBChart1: TDBChart;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    SAQ: TQuery;
    SADS: TDataSource;
    StorkInQP: TQuery;
    AssembleQP: TQuery;
    Series1: TBarSeries;
    Series2: TBarSeries;
    SAQgsbh: TStringField;
    SAQaqty: TFloatField;
    SAQsqty: TIntegerField;
    SAQpp: TFloatField;
    DBChart3: TDBChart;
    BarSeries3: TBarSeries;
    BarSeries4: TBarSeries;
    Label4: TLabel;
    datamode: TComboBox;
    SSDS: TDataSource;
    SSQ: TQuery;
    ShipingQP: TQuery;
    SSQgsbh: TStringField;
    SSQsqty: TIntegerField;
    SSQaqty: TIntegerField;
    SSQpp: TIntegerField;
    DBGridEh2: TDBGridEh;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    Series3: TBarSeries;
    SSADS: TDataSource;
    SSAQ: TQuery;
    SSAQgsbh: TStringField;
    SSAQaqty: TFloatField;
    SSAQsqty: TIntegerField;
    SSAQshqty: TIntegerField;
    ASSQ: TQuery;
    ASSDS: TDataSource;
    TabSheet4: TTabSheet;
    DBGridEh4: TDBGridEh;
    DBChart4: TDBChart;
    BarSeries7: TPieSeries;
    ASSQgsbh: TStringField;
    ASSQBDEDesigner0D: TIntegerField;
    ASSQBDEDesigner7D: TIntegerField;
    ASSQBDEDesigner15D: TIntegerField;
    ASSQBDEDesigner30D: TIntegerField;
    ASSQBDEDesigner60D: TIntegerField;
    ASSQBDEDesigner90D: TIntegerField;
    ASSQBDEDesigner120D: TIntegerField;
    ASSQOver120D: TIntegerField;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    DBChart5: TDBChart;
    PieSeries1: TPieSeries;
    ASBSDS: TDataSource;
    ASBS: TQuery;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    ASBSToday: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh2TitleClick(Column: TColumnEh);
    procedure P1Change(Sender: TObject);
    procedure DBGridEh3TitleClick(Column: TColumnEh);
    procedure DBGridEh3CellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockAnlysis: TStockAnlysis;

implementation

{$R *.dfm}

procedure TStockAnlysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TStockAnlysis.FormDestroy(Sender: TObject);
begin
  StockAnlysis:=nil;
end;


{成型+入庫 全廠}
procedure TStockAnlysis.DBGridEh1TitleClick(Column: TColumnEh);
var liststr :string;
begin
  case datamode.ItemIndex of
  0:
    liststr:='month(lastindate)';
  1:
    liststr:='day(lastindate)';
  end;
  with StorkInQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.lastindate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcp.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     if Factory.Text<>'ALL' then
        sql.add('   and ddzl.gsbh='+''''+Factory.Text+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.lastindate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.lastindate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     if Factory.Text<>'ALL' then
        sql.add('   and ddzl.gsbh='+''''+Factory.Text+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.lastindate) as k');
     sql.add('group by  '+liststr);
     sql.add('order by  '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;

  case datamode.ItemIndex of
  0:
    liststr:='month(scbb.scdate)';
  1:
    liststr:='day(scbb.scdate)';
  end;
  with AssembleQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(scbbs.qty) as aqty  from scbbs');
     sql.add('	left join scbb on scbb.prono=scbbs.prono');
     sql.add('	left join ddzl on scbbs.scbh=ddzl.ddbh ');
     case datamode.ItemIndex of
     0:
        sql.add('	where year(scbb.scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), scbb.scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' and scbbs.gxlb='+''''+'A'+'''');

     if Factory.Text<>'ALL' then
        sql.add(' and ddzl.gsbh='+''''+Factory.Text+'''');
     sql.add('	group by '+liststr);
     active:=true;
  end;
end;

{成型+入庫 單廠}
procedure TStockAnlysis.DBGridEh1CellClick(Column: TColumnEh);
var liststr :string;
begin
  case datamode.ItemIndex of
  0:
    liststr:='month(lastindate)';
  1:
    liststr:='day(lastindate)';
  end;
  with StorkInQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.lastindate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcp.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SAQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.lastindate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.lastindate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SAQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.lastindate) as k');
     sql.add('group by  '+liststr);
     sql.add('order by  '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;

  case datamode.ItemIndex of
  0:
    liststr:='month(scbb.scdate)';
  1:
    liststr:='day(scbb.scdate)';
  end;

  with AssembleQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(scbbs.qty) as aqty  from scbbs');
     sql.add('	left join scbb on scbb.prono=scbbs.prono');
     sql.add('	left join ddzl on scbbs.scbh=ddzl.ddbh ');
     case datamode.ItemIndex of
     0:
        sql.add('	where year(scbb.scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), scbb.scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' and scbbs.gxlb='+''''+'A'+'''');
     sql.add('   and ddzl.gsbh='+''''+SAQ.Fieldbyname('gsbh').Value+'''');
     sql.add('	group by '+liststr);
     active:=true;
  end;
end;

{成型+出貨 單廠}
procedure TStockAnlysis.DBGridEh2CellClick(Column: TColumnEh);
var liststr :string;
begin
  case datamode.ItemIndex of
  0:
    liststr:='month(lastindate)';
  1:
    liststr:='day(lastindate)';
  end;
  with StorkInQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.lastindate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcp.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.lastindate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.lastindate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.lastindate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;


  case datamode.ItemIndex of
  0:
    liststr:='month(exedate)';
  1:
    liststr:='day(exedate)';
  end;
  with ShipingQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) as aqty from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.exedate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.exedate is not null) and ywcp.sb='+''''+'3'+'''');
     case datamode.ItemIndex of
     0:
        sql.add(' and year(ywcp.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add(' and CONVERT(char(7), ywcp.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.exedate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.exedate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.exedate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.exedate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;
end;

{成型+出貨 全廠}
procedure TStockAnlysis.DBGridEh2TitleClick(Column: TColumnEh);
var liststr :string;
begin
  case datamode.ItemIndex of
  0:
    liststr:='month(lastindate)';
  1:
    liststr:='day(lastindate)';
  end;
  with StorkInQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.lastindate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcp.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     if Factory.Text<>'ALL' then
        sql.add('   and ddzl.gsbh='+''''+Factory.Text+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.lastindate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.lastindate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.lastindate is not null) and ');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add(' CONVERT(char(7), ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     if Factory.Text<>'ALL' then
        sql.add('   and ddzl.gsbh='+''''+Factory.Text+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.lastindate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;

  case datamode.ItemIndex of
  0:
    liststr:='month(exedate)';
  1:
    liststr:='day(exedate)';
  end;
  with ShipingQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) as aqty from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.exedate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.exedate is not null) and ywcp.sb='+''''+'3'+'''');
     case datamode.ItemIndex of
     0:
        sql.add(' and year(ywcp.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add(' and CONVERT(char(7), ywcp.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     if Factory.Text<>'ALL' then
        sql.add('   and ddzl.gsbh='+''''+Factory.Text+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.exedate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.exedate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.exedate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     if Factory.Text<>'ALL' then
        sql.add('   and ddzl.gsbh='+''''+Factory.Text+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.exedate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;
end;

{成型+入庫+出貨 單廠}
procedure TStockAnlysis.DBGridEh3CellClick(Column: TColumnEh);
var liststr :string;
begin
  case datamode.ItemIndex of
  0:
    liststr:='month(lastindate)';
  1:
    liststr:='day(lastindate)';
  end;
  with StorkInQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.lastindate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcp.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSaQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.lastindate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.lastindate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSaQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.lastindate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;


  case datamode.ItemIndex of
  0:
    liststr:='month(exedate)';
  1:
    liststr:='day(exedate)';
  end;
  with ShipingQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) as aqty from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.exedate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.exedate is not null) and ywcp.sb='+''''+'3'+'''');
     case datamode.ItemIndex of
     0:
        sql.add(' and year(ywcp.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add(' and CONVERT(char(7), ywcp.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSaQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.exedate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.exedate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.exedate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('   and ddzl.gsbh='+''''+SSaQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.exedate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;

  case datamode.ItemIndex of
  0:
    liststr:='month(scbb.scdate)';
  1:
    liststr:='day(scbb.scdate)';
  end;

  with AssembleQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(scbbs.qty) as aqty  from scbbs');
     sql.add('	left join scbb on scbb.prono=scbbs.prono');
     sql.add('	left join ddzl on scbbs.scbh=ddzl.ddbh ');
     case datamode.ItemIndex of
     0:
        sql.add('	where year(scbb.scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), scbb.scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' and scbbs.gxlb='+''''+'A'+'''');
     sql.add('   and ddzl.gsbh='+''''+SsAQ.Fieldbyname('gsbh').Value+'''');
     sql.add('	group by '+liststr);
     active:=true;
  end;
end;

{成型+入庫+出貨 全廠}
procedure TStockAnlysis.DBGridEh3TitleClick(Column: TColumnEh);
var liststr :string;
begin
  case datamode.ItemIndex of
  0:
    liststr:='month(lastindate)';
  1:
    liststr:='day(lastindate)';
  end;
  with StorkInQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.lastindate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcp.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.lastindate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.lastindate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.lastindate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.lastindate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.lastindate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;


  case datamode.ItemIndex of
  0:
    liststr:='month(exedate)';
  1:
    liststr:='day(exedate)';
  end;
  with ShipingQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(k.q1) as aqty from ( ');
     sql.add('  select ddzl.ddbh,sum(ywcp.qty) as q1,ywcp.exedate,ddzl.gsbh,ddzl.pairs  from ywcp ');
     sql.add('	left join ywdd on ywcp.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcp.exedate is not null) and ywcp.sb='+''''+'3'+'''');
     case datamode.ItemIndex of
     0:
        sql.add(' and year(ywcp.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add(' and CONVERT(char(7), ywcp.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcp.exedate');
     sql.add('	union all');
     sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,ywcpold.exedate,ddzl.gsbh,ddzl.pairs  from ywcpold ');
     sql.add('	left join ywdd on ywcpold.ddbh=ywdd.ddbh ');
     sql.add('	left join ddzl on ywdd.ysbh=ddzl.ddbh ');
     sql.add('	where (ywcpold.exedate is not null) and');
     case datamode.ItemIndex of
     0:
        sql.add(' year(ywcpold.exedate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	CONVERT(char(7), ywcpold.exedate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,ywcpold.exedate) as k');
     sql.add('group by '+liststr);
     sql.add('order by '+liststr);
     //memo1.Text:=sql.text;
     active:=true;
  end;

  case datamode.ItemIndex of
  0:
    liststr:='month(scbb.scdate)';
  1:
    liststr:='day(scbb.scdate)';
  end;

  with AssembleQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+liststr+',sum(scbbs.qty) as aqty  from scbbs');
     sql.add('	left join scbb on scbb.prono=scbbs.prono');
     sql.add('	left join ddzl on scbbs.scbh=ddzl.ddbh ');
     case datamode.ItemIndex of
     0:
        sql.add('	where year(scbb.scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), scbb.scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' and scbbs.gxlb='+''''+'A'+'''');
     sql.add('	group by '+liststr);
     active:=true;
  end;
end;

{加總表分頁}
procedure TStockAnlysis.P1Change(Sender: TObject);
begin
  case p1.ActivePageIndex of
    0:  //成型VS入庫
    begin
      asbs.Active:=false;
      assq.Active:=false;

      with SAQ do
      begin
          active:=false;
          sql.Clear;
          sql.add('select a.gsbh as gsbh,a.aqty,isnull(s.sqty,0) as sqty,(a.aqty-isnull(s.sqty,0)) as pp ');
          sql.add(' from  (select isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,sum(scbbs.qty) as aqty  from scbbs');
          sql.add(' 	left join scbb on scbb.prono=scbbs.prono');
          sql.add('	  left join ddzl on scbbs.scbh=ddzl.ddbh ');
          //年.月.日不同的統計表
          case datamode.ItemIndex of
            0:
              sql.add('	where year(scbb.scdate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	where CONVERT(char(7),scbb.scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('	       and scbbs.gxlb='+''''+'A'+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and ddzl.gsbh='+''''+factory.Text+'''');
          sql.add('	group by  ddzl.gsbh) as A');
          sql.add(' left join  ');
          sql.add('(select k.gsbh,sum(k.q1) as sqty from');
          sql.add(' (select ddzl.ddbh,sum(ywcp.qty) as q1,month(ywcp.lastindate) as ld,isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,ddzl.pairs  from ywcp');
          sql.add('	 left join ywdd on ywcp.ddbh=ywdd.ddbh  ');
          sql.add('  left join ddzl on ywdd.ysbh=ddzl.ddbh');
          case datamode.ItemIndex of
            0:
              sql.add('	where year(ywcp.lastindate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	where CONVERT(char(7),ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;
          sql.add(' and (ywcp.lastindate is not null)');
          sql.add(' group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,month(ywcp.lastindate)');
          sql.add('	 union all');

          sql.add('  select ddzl.ddbh,sum(ywcpold.qty) as q1,month(ywcpold.lastindate) as ld,isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,ddzl.pairs  from ywcpold');
          sql.add('	 left join ywdd on ywcpold.ddbh=ywdd.ddbh  ');
          sql.add('  left join ddzl on ywdd.ysbh=ddzl.ddbh');
          case datamode.ItemIndex of
            0:
              sql.add('	where year(ywcpold.lastindate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	where CONVERT(char(7),ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;
          sql.add(' and (ywcpold.lastindate is not null)');
          sql.add(' group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,month(ywcpold.lastindate)) as k');
          sql.add('        group by k.gsbh ) as s on a.gsbh=s.gsbh ');
          sql.add('order by gsbh');
//          memo1.Text:=sql.text;
          active:=true;
        end;
    end;
    1:   //入庫VS出貨
    begin
      asbs.Active:=false;
      assq.Active:=false;
      with ssq do
      begin
          active:=false;
          sql.Clear;
          sql.add('select k.gsbh,sum(k.q1) as sqty,sum(case when sb=3 then k.q1 end) as aqty, ');
          sql.add(' (sum(k.q1)-sum(case when sb=3 then k.q1 end)) as pp  from');
          //加總入庫
          sql.add(' 	(select ddzl.ddbh,sum(ywcp.qty) as q1,month(ywcp.lastindate) as ld,');
          sql.add('     isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,ddzl.pairs,ywcp.sb from ywcp');
          sql.add('	    left join ywdd on ywcp.ddbh=ywdd.ddbh');
          sql.add('	    left join ddzl on ywdd.ysbh=ddzl.ddbh');
          sql.add('	    where (ywcp.lastindate is not null) ');
          case datamode.ItemIndex of
            0:
              sql.add('	and year(ywcp.lastindate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	and CONVERT(char(7),ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;
          sql.add('	    group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,month(ywcp.lastindate),ywcp.sb ');
          sql.add('	union all');
          sql.add(' 	 select ddzl.ddbh,sum(ywcpold.qty) as q1,month(ywcpold.lastindate) as ld,');
          sql.add('     isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,ddzl.pairs,ywcpold.sb from ywcpold');
          sql.add('	    left join ywdd on ywcpold.ddbh=ywdd.ddbh');
          sql.add('	    left join ddzl on ywdd.ysbh=ddzl.ddbh');
          sql.add('	    where (ywcpold.lastindate is not null) ');
          case datamode.ItemIndex of
            0:
              sql.add('	and year(ywcpold.lastindate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	and CONVERT(char(7),ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;
          sql.add('	    group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,month(ywcpold.lastindate) ,ywcpold.sb) ');
          sql.Add(' as k ');
          if factory.Text <> 'ALL' then
            sql.add('  where k.gsbh='+''''+factory.Text+'''');
          sql.add('	group by  k.gsbh');
          active:=true;
      end;
    end;
    2:
    begin
      asbs.Active:=false;
      assq.Active:=false;
      with ssaq do
      begin
          active:=false;
          sql.Clear;
          sql.add('select a.gsbh as gsbh,a.aqty,isnull(s.sqty,0) as sqty,isnull(s.aqty,0) as shqty ');
          sql.add(' from  (select isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,sum(scbbs.qty) as aqty  from scbbs');
          sql.add(' 	left join scbb on scbb.prono=scbbs.prono');
          sql.add('	  left join ddzl on scbbs.scbh=ddzl.ddbh ');
          //年.月.日不同的統計表
          case datamode.ItemIndex of
            0:
              sql.add('	where year(scbb.scdate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	where CONVERT(char(7),scbb.scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('	       and scbbs.gxlb='+''''+'A'+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and ddzl.gsbh='+''''+factory.Text+'''');
          sql.add('	group by  ddzl.gsbh) as A');
          sql.add('left join');
          sql.add(' (select k.gsbh,sum(k.q1) as sqty,sum(case when sb='+''''+'3'+''''+' then k.q1 end) as aqty, ');
          sql.add(' (sum(k.q1)-sum(case when sb='+''''+'3'+''''+' then k.q1 end)) as pp  from');
          sql.add(' 	(select ddzl.ddbh,sum(ywcp.qty) as q1,month(ywcp.lastindate) as ld,');
          sql.add('     isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,ddzl.pairs,ywcp.sb from ywcp');
          sql.add('	    left join ywdd on ywcp.ddbh=ywdd.ddbh');
          sql.add('	    left join ddzl on ywdd.ysbh=ddzl.ddbh');
          sql.add('	    where (ywcp.lastindate is not null) ');
          case datamode.ItemIndex of
            0:
              sql.add('	and year(ywcp.lastindate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	and CONVERT(char(7),ywcp.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;
          sql.add('	    group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,month(ywcp.lastindate),ywcp.sb ');
          sql.add('	union all');
          sql.add(' 	 select ddzl.ddbh,sum(ywcpold.qty) as q1,month(ywcpold.lastindate) as ld,');
          sql.add('     isnull(ddzl.gsbh,'+''''+'ERR'+''''+') as gsbh,ddzl.pairs,ywcpold.sb from ywcpold');
          sql.add('	    left join ywdd on ywcpold.ddbh=ywdd.ddbh');
          sql.add('	    left join ddzl on ywdd.ysbh=ddzl.ddbh');
          sql.add('	    where (ywcpold.lastindate is not null) ');
          case datamode.ItemIndex of
            0:
              sql.add('	and year(ywcpold.lastindate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	and CONVERT(char(7),ywcpold.lastindate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;
          sql.add('	    group by ddzl.ddbh,ddzl.gsbh,ddzl.pairs,month(ywcpold.lastindate),ywcpold.sb) as k ');
          sql.add('        group by k.gsbh');
          sql.add('     ) as s on a.gsbh=s.gsbh ');
          sql.add('order by gsbh');
          //memo1.text:=sql.Text;
          active:=true;
      end;
    end;
    3:
    begin
      asbs.Active:=false;
      assq.Active:=true;
    end;
    4:
    begin
      assq.Active:=false;
      asbs.Active:=true;
    end;
  end;
end;


end.
