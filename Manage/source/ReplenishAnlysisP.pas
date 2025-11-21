unit ReplenishAnlysisP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Series, DB, DBTables, TeEngine, GridsEh, DBGridEh, TeeProcs,
  Chart, DbChart, ComCtrls, StdCtrls, ExtCtrls;

type
  TReplenishAnlysis = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    syear: TDateTimePicker;
    Factory: TComboBox;
    datamode: TComboBox;
    P1: TPageControl;
    TabSheet1: TTabSheet;
    DBChart1: TDBChart;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    DBChart2: TDBChart;
    ReplenisQ: TQuery;
    ReplenisDS: TDataSource;
    ReplenisRQP: TQuery;
    Series1: TPieSeries;
    ReplenisQgsbh: TStringField;
    ReplenisQRpr: TCurrencyField;
    ReplenisQTotpr: TCurrencyField;
    ReplenisQrp: TCurrencyField;
    DBGridEh2: TDBGridEh;
    Series2: TPieSeries;
    ReplenishMQP: TQuery;
    ReplenishMQPxiexing: TStringField;
    ReplenishMQPCOLUMN2: TCurrencyField;
    ReplenishMQPCOLUMN3: TIntegerField;
    ReplenishMQPrp: TCurrencyField;
    ReplenisRQPywsm: TStringField;
    ReplenisRQPzwsm: TStringField;
    ReplenisRQPrp: TCurrencyField;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    DBChart3: TDBChart;
    PieSeries1: TPieSeries;
    ResplenishMCQP: TQuery;
    Label5: TLabel;
    jobcb: TComboBox;
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh2TitleClick(Column: TColumnEh);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure P1Change(Sender: TObject);
    procedure DBChart2Click(Sender: TObject);
    procedure DBChart1Click(Sender: TObject);
    procedure DBChart3Click(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh3TitleClick(Column: TColumnEh);
    procedure datamodeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishAnlysis: TReplenishAnlysis;

implementation

uses ReplenishAnlysisdP;

{$R *.dfm}

procedure TReplenishAnlysis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReplenishAnlysis.FormDestroy(Sender: TObject);
begin
  ReplenishAnlysis:=nil;
end;

procedure TReplenishAnlysis.DBGridEh1TitleClick(Column: TColumnEh);
begin
  with ReplenisRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10 scblyy.ywsm,scblyy.zwsm ,sum( kclls.qty*cwdj.usprice) as rp ');
     sql.add(' from kclls ');
     sql.add('left join kcll on kcll.llno=kclls.llno ');
     sql.add('left join scblyy on scblyy.yybh=kclls.yybh ');
     sql.add('left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) = cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth) ');
     case datamode.ItemIndex of
     0:
        sql.add('where  year( kcll.cfmdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), kcll.cfmdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)');
     sql.add('	and kclls.blsb='+''''+'Y'+'''');
     sql.add(' group by scblyy.ywsm,scblyy.zwsm ');
     sql.add(' order by rp desc ');
     active:=true;
  end;
end;

procedure TReplenishAnlysis.DBGridEh1CellClick(Column: TColumnEh);
begin
  with ReplenisRQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10 scblyy.ywsm,scblyy.zwsm ,sum( kclls.qty*cwdj.usprice) as rp ');
     sql.add(' from kclls ');
     sql.add('left join kcll on kcll.llno=kclls.llno ');
     sql.add('left join scblyy on scblyy.yybh=kclls.yybh ');
     sql.add('left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) = cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth) ');
     case datamode.ItemIndex of
     0:
        sql.add('where  year( kcll.cfmdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), kcll.cfmdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)');
     sql.add('	and kclls.blsb='+''''+'Y'+'''');
     sql.add('       and kcll.gsbh='+''''+ReplenisQ.Fieldbyname('gsbh').Value+'''');
     sql.add(' group by scblyy.ywsm,scblyy.zwsm ');
     sql.add(' order by rp desc ');
     active:=true;
  end;
end;

procedure TReplenishAnlysis.DBGridEh2CellClick(Column: TColumnEh);
begin
  with ReplenishMQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10  ddzl.xiexing ,sum( kclls.qty*cwdj.usprice),sum(ddzl.pairs),(sum(kclls.qty*cwdj.usprice)/sum(ddzl.pairs)) as rp');
     sql.add(' from kclls ');
     sql.add('left join kcll on kcll.llno=kclls.llno ');
     sql.add('left join ddzl on ddzl.ddbh=kclls.scbh');
     sql.add('left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) = cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth) ');
     case datamode.ItemIndex of
     0:
        sql.add('where  year( kcll.cfmdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), kcll.cfmdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)');
     sql.add('       and kcll.gsbh='+''''+ReplenisQ.Fieldbyname('gsbh').Value+'''');
     sql.add('	and kclls.blsb='+''''+'Y'+'''');
     sql.add(' group by ddzl.xiexing ');
     sql.add(' order by (sum(kclls.qty*cwdj.usprice)/sum(ddzl.pairs)) desc ');
     active:=true;
  end;
end;

procedure TReplenishAnlysis.DBGridEh2TitleClick(Column: TColumnEh);
begin
  with ReplenishMQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select top 10  ddzl.xiexing ,sum( kclls.qty*cwdj.usprice),sum(ddzl.pairs),(sum(kclls.qty*cwdj.usprice)/sum(ddzl.pairs)) as rp');
     sql.add(' from kclls ');
     sql.add('left join kcll on kcll.llno=kclls.llno ');
     sql.add('left join ddzl on ddzl.ddbh=kclls.scbh');
     sql.add('left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) = cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth) ');
     case datamode.ItemIndex of
     0:
        sql.add('where  year( kcll.cfmdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), kcll.cfmdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)');
     sql.add('	and kclls.blsb='+''''+'Y'+'''');
     sql.add(' group by ddzl.xiexing ');
     sql.add(' order by (sum(kclls.qty*cwdj.usprice)/sum(ddzl.pairs)) desc ');
     active:=true;
  end;
end;


procedure TReplenishAnlysis.P1Change(Sender: TObject);
begin
  with ReplenisQ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select kcll.gsbh, ');
    sql.add('sum(case when kclls.blsb='+''''+'Y'+''''+' then (kclls.qty*cwdj.usprice) end) as Rpr');
    sql.add(',sum( kclls.qty*cwdj.usprice) as Totpr,');
    sql.add('(sum(case when kclls.blsb='+''''+'Y'+''''+' then (kclls.qty*cwdj.usprice) end) / sum( kclls.qty*cwdj.usprice))*100 as rp ');
    sql.add('from kclls  ');
    sql.add('left join kcll on kcll.llno=kclls.llno ');
    sql.add('left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) = cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth)');
    //年.月.日不同的統計表
    case datamode.ItemIndex of
    0:
      sql.add(' where  year(kcll.cfmdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
    1:
      sql.add('	where CONVERT(char(7),kcll.cfmdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
    end;
    sql.add(' and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)');
    if factory.Text <> 'ALL' then
       sql.add('  and kcll.gsbh='+''''+factory.Text+'''');

    sql.add(' group by kcll.gsbh');
    sql.add(' order by kcll.gsbh');
    //memo1.text:=sql.text;
    active:=true;
  end;
  case p1.ActivePageIndex of
  0:
    jobcb.Visible:=false;
  1:
    jobcb.Visible:=false;
  2:
    jobcb.Visible:=true;
  end;
end;

procedure TReplenishAnlysis.DBChart2Click(Sender: TObject);
begin
if ReplenishAnlysisd<>nil then
  begin
    ReplenishAnlysisd.show;
    ReplenishAnlysisd.windowstate:=wsmaximized;
    ReplenishAnlysisd.DataSource1.DataSet:=ReplenishMQP;
  end
  else
    begin
      ReplenishAnlysisd:=TReplenishAnlysisd.create(self);
      ReplenishAnlysisd.show;
      ReplenishAnlysisd.DataSource1.DataSet:=ReplenishMQP;
    end;
end;

procedure TReplenishAnlysis.DBChart1Click(Sender: TObject);
begin
if ReplenishAnlysisd<>nil then
  begin
    ReplenishAnlysisd.show;
    ReplenishAnlysisd.windowstate:=wsmaximized;
    ReplenishAnlysisd.DataSource1.DataSet:=ReplenisRQP;
  end
  else
    begin
      ReplenishAnlysisd:=TReplenishAnlysisd.create(self);
      ReplenishAnlysisd.show;
      ReplenishAnlysisd.DataSource1.DataSet:=ReplenisRQP;
    end;
end;

procedure TReplenishAnlysis.DBChart3Click(Sender: TObject);
begin
if ReplenishAnlysisd<>nil then
  begin
    ReplenishAnlysisd.show;
    ReplenishAnlysisd.windowstate:=wsmaximized;
    ReplenishAnlysisd.DataSource1.DataSet:=ResplenishMCQP;
  end
  else
    begin
      ReplenishAnlysisd:=TReplenishAnlysisd.create(self);
      ReplenishAnlysisd.show;
      ReplenishAnlysisd.DataSource1.DataSet:=ResplenishMCQP;
    end;
end;

procedure TReplenishAnlysis.DBGridEh3CellClick(Column: TColumnEh);
begin
  with ResplenishMCQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select class.zwsm,class.ywsm,sum( kclls.qty*cwdj.usprice) as rp ');
     sql.add(' from kclls ');
     sql.add('left join kcll on kcll.llno=kclls.llno ');
     sql.add('left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) = cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth) ');
     sql.add('left join ');
     sql.add('      (select lbdh,zwsm,ywsm ');
     sql.add('      	from lbzls 	where lb='+''''+'05'+''''+') as class');
     sql.add('        on class.lbdh=substring( kclls.clbh,1,1)');
     sql.add('');
     case datamode.ItemIndex of
     0:
        sql.add('where  year( kcll.cfmdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), kcll.cfmdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)');
     sql.add('       and kcll.gsbh='+''''+ReplenisQ.Fieldbyname('gsbh').Value+'''');
     sql.add('	and kclls.blsb='+''''+'Y'+'''');
     if jobcb.Text<>'ALL' then
        sql.add('   and kclls.dfl='+''''+jobcb.Text+'''');
     sql.add(' group by class.zwsm,class.ywsm ');
     sql.add(' order by sum(kclls.qty*cwdj.usprice) desc ');
     active:=true;
  end;
end;

procedure TReplenishAnlysis.DBGridEh3TitleClick(Column: TColumnEh);
begin
  with ResplenishMCQP do
  begin
     active:=false;
     sql.Clear;
     sql.add('select class.zwsm,class.ywsm,sum( kclls.qty*cwdj.usprice) as rp ');
     sql.add(' from kclls ');
     sql.add('left join kcll on kcll.llno=kclls.llno ');
     sql.add('left join cwdj on kclls.clbh=cwdj.clbh and (year(kcll.cfmdate) = cwdj.djyear and month(kcll.cfmdate) = cwdj.djmonth) ');
     sql.add('left join ');
     sql.add('      (select lbdh,zwsm,ywsm ');
     sql.add('      	from lbzls 	where lb='+''''+'05'+''''+') as class');
     sql.add('        on class.lbdh=substring( kclls.clbh,1,1)');
     sql.add('');
     case datamode.ItemIndex of
     0:
        sql.add('where  year( kcll.cfmdate)=year('+ '''' + datetostr(syear.date) + '''' +')');
     1:
        sql.add('	where CONVERT(char(7), kcll.cfmdate,111) = CONVERT(char(7),'+ '''' + datetostr(syear.date) + '''' +')');
     end;
     sql.add(' 	and substring(kclls.scbh,1,1) <> substring(kclls.scbh,3,1)');
     sql.add('	and kclls.blsb='+''''+'Y'+'''');
     if jobcb.Text<>'ALL' then
        sql.add('   and kclls.dfl='+''''+jobcb.Text+'''');     
     sql.add(' group by class.zwsm,class.ywsm ');
     sql.add(' order by sum(kclls.qty*cwdj.usprice) desc ');
     active:=true;
  end;
end;

procedure TReplenishAnlysis.datamodeChange(Sender: TObject);
begin
  if datamode.ItemIndex=0 then
     label1.Caption:='IN this Year'
  else
     label1.Caption:='IN this Month'

end;

end.
