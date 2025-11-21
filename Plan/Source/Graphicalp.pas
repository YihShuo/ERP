unit Graphicalp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, TeEngine, Series, GanttCh, TeeProcs, Chart,
  ExtCtrls, StdCtrls, ComCtrls, DbChart, DBCtrls;

type
  TGraphical = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DBChart1: TDBChart;
    DataSource1: TDataSource;
    Series1: TGanttSeries;
    sd: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ed: TDateTimePicker;
    ComboBox1: TComboBox;
    qgsdh: TQuery;
    Label3: TLabel;
    ComboBox2: TComboBox;
    getdepid: TQuery;
    ComboBox3: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure DBChart1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Graphical: TGraphical;

implementation

uses OrderPlan1, main1;

{$R *.dfm}

procedure TGraphical.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGraphical.FormDestroy(Sender: TObject);
begin
  Graphical:=nil;
end;

procedure TGraphical.ComboBox1Change(Sender: TObject);
begin
with getdepid do
  begin
    sql.clear;
    sql.add('select id,depname  from BDepartment ');
    sql.add('where gsbh='+''''+combobox1.Text+'''');
    sql.add(' and gxlb='+''''+combobox2.Text+'''');
    sql.add(' and yn='+''''+'1'+'''');
    active:=true;
    combobox3.Items.Clear;
    while not eof do
      begin
        combobox3.Items.Add(fieldbyname('depname').Value);
        next;
      end;
    active:=false;
  end;
end;

procedure TGraphical.FormShow(Sender: TObject);
begin
with qgsdh do
  begin
    sql.clear;
    sql.add('select GSDH from Bgszl order by GSDH ');
    active:=true;
    combobox1.Items.Clear;
    while not eof do
      begin
        combobox1.Items.Add(fieldbyname('GSDH').Value);
        next;
      end;
    active:=false;
  end;
end;

procedure TGraphical.ComboBox2Change(Sender: TObject);
begin
with getdepid do
  begin
    sql.clear;
    sql.add('select id,depname  from BDepartment ');
    sql.add('where gsbh='+''''+combobox1.Text+'''');
    sql.add(' and gxlb='+''''+combobox2.Text+'''');
    active:=true;
    combobox3.Items.Clear;
    while not eof do
      begin
        combobox3.Items.Add(fieldbyname('depname').Value);
        next;
      end;
    active:=false;
  end;
end;

procedure TGraphical.ComboBox3Change(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ysbh,min(smdd.plandate) as startplay,max(smdd.planedate) as endplan');
    sql.Add(' from smdd');
    sql.Add(' left join BDepartment on BDepartment.id = smdd.depno');
    sql.Add(' where BDepartment.depname='+''''+combobox3.Text+'''');

    sql.add('       and (convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    sql.add('            or convert(smalldatetime,convert(varchar,planDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    sql.add(' )');

    sql.add(' group by  ysbh');
    sql.add(' order by startplay,ysbh' );
    //memo1.Text:=sql.Text;
    active:=true;
  end;
end;
procedure TGraphical.DBChart1Click(Sender: TObject);
begin
  OrderPlan.show;
  OrderPlan.windowstate:=wsmaximized;
with OrderPlan.SMDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZL.ShipDate as CSD');
    sql.add(',KFZL.KFJC,ywdd.etd,f.fpd,f.fped ');
    sql.add('from SMDD');
    sql.add('left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  ');
    sql.add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo ');
    sql.add('left join DDZL on DDZl.ZLBH=SMDD.YSBH ');
    sql.add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywdd on ywdd.ysbh=smdd.ysbh');
    sql.Add('left join (select ddbh,sccx,max(plandate) as fpd,min(planedate) as fped from smdd group by ddbh,sccx) ');
    sql.add(' as f on f.ddbh=smdd.ddbh and f.sccx=smdd.gxlb');
    sql.add('where BDepartment.depname='+''''+combobox3.Text+'''');
    sql.add('       and smdd.gxlb='+''''+combobox2.Text+'''');
    sql.add('       and (convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    sql.add('            or convert(smalldatetime,convert(varchar,planDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    sql.add(' )');
    active:=true;
  end;
OrderPlan.DDdet.Active:=true;
if main.edit2.Text =  ComboBox1.Text then
begin
  OrderPlan.bb4.enabled:=true;
  OrderPlan.bb5.enabled:=false;
  OrderPlan.bb6.enabled:=false;
  OrderPlan.bb7.enabled:=true;
  OrderPlan.bbt1.enabled:=true;
  OrderPlan.bbt2.enabled:=true;
  OrderPlan.bbt3.enabled:=true;
  OrderPlan.bbt4.enabled:=true;
  OrderPlan.bbt5.enabled:=true;
  OrderPlan.bbt6.enabled:=true;
end
else
begin
  OrderPlan.bb4.enabled:=false;
  OrderPlan.bb5.enabled:=false;
  OrderPlan.bb6.enabled:=false;
  OrderPlan.bb7.enabled:=false;
  OrderPlan.bbt1.enabled:=false;
  OrderPlan.bbt2.enabled:=false;
  OrderPlan.bbt3.enabled:=false;
  OrderPlan.bbt4.enabled:=false;
  OrderPlan.bbt5.enabled:=false;
  OrderPlan.bbt6.enabled:=false;
end;

end;

procedure TGraphical.FormCreate(Sender: TObject);
begin
  sd.Date:=now();
  ed.Date:=now()+30;
end;

end.
