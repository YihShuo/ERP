unit Report6041;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Series, TeEngine, TeeProcs, Chart, DbChart, Grids,
  DBGrids, ComCtrls, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TReport604 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    syear: TDateTimePicker;
    P1: TPageControl;
    TabSheet1: TTabSheet;
    DBChart1: TDBChart;
    PRQ: TQuery;
    PRDS: TDataSource;
    PRQP: TQuery;
    PRQP2: TQuery;
    DBGridEh1: TDBGridEh;
    PRQgsbh: TStringField;
    PRQPlanQty: TIntegerField;
    PRQrqty: TFloatField;
    PRQpr: TFloatField;
    Label3: TLabel;
    Factory: TComboBox;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBChart2: TDBChart;
    DBGridEh2: TDBGridEh;
    PPRDS: TDataSource;
    pprQ: TQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    PPRQP: TQuery;
    datamode: TComboBox;
    Label4: TLabel;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    DBChart3: TDBChart;
    BarSeries3: TBarSeries;
    PPPRDS: TDataSource;
    ppprQ: TQuery;
    ppprQgsbh: TStringField;
    ppprQPlanQty: TIntegerField;
    ppprQrqty: TFloatField;
    ppprQpr: TIntegerField;
    BarSeries1: TBarSeries;
    Series1: TBarSeries;
    Series3: TFastLineSeries;
    BarSeries2: TFastLineSeries;
    BarSeries4: TFastLineSeries;
    Series2: TFastLineSeries;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure P1Change(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh2TitleClick(Column: TColumnEh);
    procedure DBGridEh3TitleClick(Column: TColumnEh);
    procedure datamodeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report604: TReport604;

implementation

{$R *.dfm}

procedure TReport604.FormDestroy(Sender: TObject);
begin
Report604:=nil;
end;

procedure TReport604.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;



procedure TReport604.P1Change(Sender: TObject);
begin
  case p1.ActivePageIndex of
    0:
    begin
        with prQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select  scbzcl.gsbh,sum(qty) as PlanQty,realp.rqty,((realp.rqty/sum(qty))*100) as pr ');
          sql.add('  from scbzcl ');
          sql.add('left join bdepartment on depno=id ');
          sql.add('left join ');
          sql.add('(select scbb.gsbh,sum(scbbs.qty) as rqty from scbb ');
          sql.add('	left join bdepartment on depno=id');
          sql.add('	left join scbbs on scbb.prono=scbbs.prono');
          //.る.らぃ参璸
          case datamode.ItemIndex of
            0:
              sql.add('	where year(scdate)>= year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	where year(scdate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            2:
              sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('	       and scbbs.GXLB='+''''+'A'+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and scbzcl.gsbh='+''''+factory.Text+'''');
          sql.add(' group by scbb.gsbh) as realp on realp.gsbh=scbzcl.gsbh');
          //.る.らぃ参璸
          case datamode.ItemIndex of
            0:
              sql.add('where  year(bzdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('where  year(bzdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
            2:
              sql.add('	where CONVERT(char(7),bzdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('and bdepartment.GXLB='+''''+'A'+'''');
          sql.add(' group by scbzcl.gsbh,realp.rqty');
          sql.add(' order by scbzcl.gsbh,realp.rqty');
//          memo1.Text:=sql.text;
          active:=true;
        end;
//        DBGridEh1TitleClick;
    end;
    1:
    begin
        with pprQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select smdd.gsbh,sum(smdd.qty) as PlanQty,realp.rqty,((realp.rqty/sum(smdd.qty))*100) as pr ');
          sql.add('  from smdd ');
          sql.add('left join ');
          sql.add('(select scbb.gsbh,sum(scbbs.qty) as rqty from scbb ');
          sql.add('	left join bdepartment on depno=id');
          sql.add('	left join scbbs on scbb.prono=scbbs.prono');
          //.る.らぃ参璸
          case datamode.ItemIndex of
            0:
              sql.add('	where year(scdate)>= year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	where year(scdate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            2:
              sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('	       and scbbs.GXLB='+''''+'A'+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and smdd.gsbh='+''''+factory.Text+'''');

          sql.add(' group by scbb.gsbh) as realp on realp.gsbh=smdd.gsbh');
          //.る.らぃ参璸
          case datamode.ItemIndex of
            0:
              sql.add('where  year(plandate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('where  year(plandate)=year('+ '''' + datetostr(syear.date) + '''' +')');
            2:
              sql.add('	where CONVERT(char(7),plandate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('and smdd.GXLB='+''''+'A'+'''');
          sql.add(' group by smdd.gsbh,realp.rqty');
          sql.add(' order by smdd.gsbh,realp.rqty');
//          memo1.Text:=sql.text;
          active:=true;
        end;
    end;
    2:
    begin
        with ppprQ do
        begin
          active:=false;
          sql.Clear;
          sql.add('select  scbzcl.gsbh,sum(qty) as PlanQty,realp.rqty,ppr.pr');
          sql.add('  from scbzcl ');
          sql.add('left join bdepartment on depno=id ');
          sql.add('left join ');
          sql.add('     (select  smdd.gsbh,sum(smdd.qty) as pr from smdd');
          sql.add('               where year(prdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
          sql.add('	          and smdd.gxlb='+''''+'A'+'''');
          sql.add('      group by smdd.gsbh) as ppr on ppr.gsbh=scbzcl.gsbh');
          sql.add('left join ');
          sql.add('(select scbb.gsbh,sum(scbbs.qty) as rqty from scbb ');
          sql.add('	left join bdepartment on depno=id');
          sql.add('	left join scbbs on scbb.prono=scbbs.prono');
          //.る.らぃ参璸
          case datamode.ItemIndex of
            0:
              sql.add('	where year(scdate)>= year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('	where year(scdate) = year('+ '''' + datetostr(syear.date) + '''' +')');
            2:
              sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('	       and scbbs.GXLB='+''''+'A'+'''');
          if factory.Text <> 'ALL' then
            sql.add('  and scbzcl.gsbh='+''''+factory.Text+'''');

          sql.add(' group by scbb.gsbh) as realp on realp.gsbh=scbzcl.gsbh');
          //.る.らぃ参璸
          case datamode.ItemIndex of
            0:
              sql.add('where  year(bzdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
            1:
              sql.add('where  year(bzdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
            2:
              sql.add('	where CONVERT(char(7),bzdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
          end;

          sql.add('and bdepartment.GXLB='+''''+'A'+'''');
          sql.add(' group by scbzcl.gsbh,realp.rqty,ppr.pr');
          sql.add(' order by scbzcl.gsbh,realp.rqty,ppr.pr');
          //memo1.Text:=sql.text;
          active:=true;
        end;
    end;
  end;
end;

procedure TReport604.DBGridEh1CellClick(Column: TColumnEh);
var pyear,ryear:string;
begin
  case datamode.ItemIndex of
     0:
        pyear:= ' year(bzdate) ';
     1:
        pyear:= ' month(bzdate) ';
     2:
        pyear:= ' day(bzdate) ';
  end;
  with PRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+pyear+' as pyear');
     sql.add(',sum(qty) as pqty from scbzcl ');
     sql.add('left join bdepartment on depno=id');
     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(bzdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(bzdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),bzdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;

     sql.add('       and bdepartment.GXLB='+''''+'A'+'''');
     sql.add('       and scbzcl.gsbh='+''''+prq.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by '+pyear);
     sql.add(' order by '+pyear);
     active:=true;
  end;

  case datamode.ItemIndex of
     0:
        ryear:= ' year(scdate) ';
     1:
        ryear:= ' month(scdate) ';
     2:
        ryear:= ' day(scdate) ';
  end;

  with PRQP2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ryear+' as ryear');
     sql.add(',sum(scbbs.qty) as rqty from scbb');
     sql.add('left join bdepartment on depno=id');
     sql.add('left join scbbs on scbb.prono=scbbs.prono');

     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(scdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;

     sql.add('       and scbbs.GXLB='+''''+'A'+'''');
     sql.add('       and scbb.gsbh='+''''+prq.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by '+ryear);
     sql.add(' order by '+ryear);
     active:=true;
  end;
end;

procedure TReport604.DBGridEh1TitleClick(Column: TColumnEh);
var pyear,ryear:string;
begin
  case datamode.ItemIndex of
     0:
        pyear:= ' year(bzdate) ';
     1:
        pyear:= ' month(bzdate) ';
     2:
        pyear:= ' day(bzdate) ';
  end;

  with PRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+pyear+' as pyear,sum(qty) as pqty from scbzcl ');
     sql.add('left join bdepartment on depno=id');
     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(bzdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(bzdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),bzdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and bdepartment.GXLB='+''''+'A'+'''');
     sql.add(' group by '+pyear);
     sql.add(' order by '+pyear);
     active:=true;
  end;

  case datamode.ItemIndex of
     0:
        ryear:= ' year(scdate) ';
     1:
        ryear:= ' month(scdate) ';
     2:
        ryear:= ' day(scdate) ';
  end;
  with PRQP2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ryear+' as ryear,sum(scbbs.qty) as rqty from scbb');
     sql.add('left join bdepartment on depno=id');
     sql.add('left join scbbs on scbb.prono=scbbs.prono');
     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(scdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and scbbs.GXLB='+''''+'A'+'''');
     sql.add(' group by '+ryear);
     sql.add(' order by '+ryear);
     active:=true;
  end;
end;


procedure TReport604.DBGridEh2CellClick(Column: TColumnEh);
var pyear,ryear:string;
begin
  case datamode.ItemIndex of
     0:
        pyear:= ' year(plapdate) ';
     1:
        pyear:= ' month(plandate) ';
     2:
        pyear:= ' day(plandate) ';
  end;

  with PPRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+pyear+' as pyear,sum(qty) as pqty from smdd ');

     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(plandate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(plandate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),plandate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;

     sql.add('       and smdd.GXLB='+''''+'A'+'''');
     sql.add('       and smdd.gsbh='+''''+pprq.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by '+pyear);
     sql.add(' order by '+pyear);
     active:=true;
  end;

  case datamode.ItemIndex of
     0:
        ryear:= ' year(scdate) ';
     1:
        ryear:= ' month(scdate) ';
     2:
        ryear:= ' day(scdate) ';
  end;
  with PRQP2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ryear+' as ryear,sum(scbbs.qty) as rqty from scbb');
     sql.add('left join bdepartment on depno=id');
     sql.add('left join scbbs on scbb.prono=scbbs.prono');
     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(scdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and scbbs.GXLB='+''''+'A'+'''');
     sql.add('       and scbb.gsbh='+''''+pprq.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by '+ryear);
     sql.add(' order by '+ryear);
     active:=true;
  end;
end;

procedure TReport604.DBGridEh2TitleClick(Column: TColumnEh);
var pyear,ryear:string;
begin
  case datamode.ItemIndex of
     0:
        pyear:= ' year(plandate) ';
     1:
        pyear:= ' month(plandate) ';
     2:
        pyear:= ' day(plandate) ';
  end;

  with PPRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+pyear+' as pyear,sum(qty) as pqty from smdd ');

     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(plandate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(plandate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),plandate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;

     sql.add('       and smdd.GXLB='+''''+'A'+'''');
     sql.add(' group by '+pyear);
     sql.add(' order by '+pyear);
     active:=true;
  end;

  case datamode.ItemIndex of
     0:
        ryear:= ' year(scdate) ';
     1:
        ryear:= ' month(scdate) ';
     2:
        ryear:= ' day(scdate) ';
  end;
  with PRQP2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ryear+' as ryear,sum(scbbs.qty) as rqty from scbb');
     sql.add('left join bdepartment on depno=id');
     sql.add('left join scbbs on scbb.prono=scbbs.prono');
     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(scdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and scbbs.GXLB='+''''+'A'+'''');
     sql.add(' group by '+ryear);
     sql.add(' order by '+ryear);
     active:=true;
  end;
end;

procedure TReport604.DBGridEh3CellClick(Column: TColumnEh);
var ppyear,pyear,ryear:string;
begin
//ヘ夹玻
  case datamode.ItemIndex of
     0:
        ppyear:= ' year(bzdate) ';
     1:
        ppyear:= ' month(bzdate) ';
     2:
        ppyear:= ' day(bzdate) ';
  end;
  with PRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ppyear+' as pyear,sum(qty) as pqty from scbzcl ');
     sql.add('left join bdepartment on depno=id');
     case datamode.ItemIndex of
     0:
        sql.add('where  year(bzdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(bzdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),bzdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and bdepartment.GXLB='+''''+'A'+'''');
     sql.add('       and scbzcl.gsbh='+''''+ppprq.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by '+ppyear);
     sql.add(' order by '+ppyear);
     active:=true;
  end;
//ネ恨逼祘玻
  case datamode.ItemIndex of
     0:
        pyear:= ' year(plandate) ';
     1:
        pyear:= ' month(plandate) ';
     2:
        pyear:= ' day(plandate) ';
  end;

  with PPRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+pyear+' as pyear,sum(qty) as pqty from smdd ');

     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(plandate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(plandate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),plandate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and smdd.GXLB='+''''+'A'+'''');
     sql.add('       and smdd.gsbh='+''''+ppprq.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by '+ pyear);
     sql.add(' order by '+ pyear);
     active:=true;
  end;
//龟悔ネ玻玻

  case datamode.ItemIndex of
     0:
        ryear:= ' year(scdate) ';
     1:
        ryear:= ' month(scdate) ';
     2:
        ryear:= ' day(scdate) ';
  end;
  with PRQP2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ryear+' as ryear,sum(scbbs.qty) as rqty from scbb');
     sql.add('left join bdepartment on depno=id');
     sql.add('left join scbbs on scbb.prono=scbbs.prono');
     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(scdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and scbbs.GXLB='+''''+'A'+'''');
     sql.add('       and scbb.gsbh='+''''+ppprq.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by '+ryear);
     sql.add(' order by '+ryear);
     active:=true;
  end;
end;

procedure TReport604.DBGridEh3TitleClick(Column: TColumnEh);
var ppyear,pyear,ryear:string;
begin
//ヘ夹玻
  case datamode.ItemIndex of
     0:
        ppyear:= ' year(bzdate) ';
     1:
        ppyear:= ' month(bzdate) ';
     2:
        ppyear:= ' day(bzdate) ';
  end;
  with PRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ppyear+' as pyear,sum(qty) as pqty from scbzcl ');
     sql.add('left join bdepartment on depno=id');
     case datamode.ItemIndex of
     0:
        sql.add('where  year(bzdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(bzdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),bzdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and bdepartment.GXLB='+''''+'A'+'''');
     sql.add(' group by '+ppyear);
     sql.add(' order by '+ppyear);
     active:=true;
  end;
//ネ恨逼祘玻
  case datamode.ItemIndex of
     0:
        pyear:= ' year(plandate) ';
     1:
        pyear:= ' month(plandate) ';
     2:
        pyear:= ' day(plandate) ';
  end;

  with PPRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+pyear+' as pyear,sum(qty) as pqty from smdd ');

     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(plandate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(plandate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),plandate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and smdd.GXLB='+''''+'A'+'''');
     sql.add(' group by '+ pyear);
     sql.add(' order by '+ pyear);
     active:=true;
  end;
//龟悔ネ玻玻

  case datamode.ItemIndex of
     0:
        ryear:= ' year(scdate) ';
     1:
        ryear:= ' month(scdate) ';
     2:
        ryear:= ' day(scdate) ';
  end;
  with PRQP2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select '+ryear+' as ryear,sum(scbbs.qty) as rqty from scbb');
     sql.add('left join bdepartment on depno=id');
     sql.add('left join scbbs on scbb.prono=scbbs.prono');
     //.る.らぃ参璸
     case datamode.ItemIndex of
     0:
        sql.add('where  year(scdate)>=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('where  year(scdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     2:
        sql.add('	where CONVERT(char(7),scdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add('       and scbbs.GXLB='+''''+'A'+'''');
     sql.add(' group by '+ryear);
     sql.add(' order by '+ryear);
     active:=true;
  end;
end;

procedure TReport604.datamodeChange(Sender: TObject);
begin
  case datamode.ItemIndex of
  0:
    label1.Caption:='After this Year';
  1:
    label1.Caption:='IN this Year';
  2:
    label1.Caption:='IN this Month';
  end;
end;

end.


