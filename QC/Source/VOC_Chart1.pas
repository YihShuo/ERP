unit VOC_Chart1;
                   
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, StrUtils,
  TeeProcs, TeEngine, Chart, Series, DbChart;

type
  TVOC_Chart = class(TForm)
    DataSource1: TDataSource;
    DBChart1: TDBChart;
    Query1: TQuery;
    Button1: TButton;
    Series2: TLineSeries;
    Series1: TLineSeries;
    Query1proddate: TDateTimeField;
    Query1VOC: TFloatField;
    Query1VOCTarget: TIntegerField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VOC_Chart: TVOC_Chart;

implementation

uses QCOntime1, main1, FeedbackWastrelOnSite, //AndonInput1,
  VOC_Input1, VOC_Input_Dep1, VOC_List1;

{$R *.dfm}

procedure TVOC_Chart.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
end;

procedure TVOC_Chart.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
end;

procedure TVOC_Chart.FormDestroy(Sender: TObject);
begin
  VOC_Chart:=nil;
end;

procedure TVOC_Chart.Button1Click(Sender: TObject);
begin

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select proddate ');
    sql.add('       ,round(( ');
    sql.add('       +1000*(sum(PU45311NT1) * 95 * 0.01 )/sum(pairs)');      //1
    sql.add('       +1000*(sum(WPL01) * 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(wh03)  * 15 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(T6127T)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(Primer297)* 99 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(P311FT_6primer)* 70 * 0.01)/sum(pairs)'); //6
    sql.add('       +1000*(sum(Hotmelt1438A)* 0 * 0.01 )/sum(pairs)');
    sql.add('       +1000*(sum(Hotmelt3173H)* 0 * 0.01 )/sum(pairs)');
    sql.add('       +1000*(sum(NCwhitetransparent)* 90 * 0.01 )/sum(pairs)');
    sql.add('       +1000*(sum(MWaterbase)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(Latex)* 0 * 0.01 )/sum(pairs)');              //11
    sql.add('       +1000*(sum(A102)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(ABwhitetransparent)* 10 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(RB13F)* 86 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(C237F)* 86 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(AD752S)* 60 * 0.01)/sum(pairs)');             //16
    sql.add('       +1000*(sum(A5)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(A3)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(AD5500)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(A05W1A)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(HM401hotmelt)* 0 * 0.01)/sum(pairs)');
    sql.add('       +1000*(sum(A722)* 0 * 0.01 )/sum(pairs)');
    sql.add('       ),2) as VOC');
    sql.add('       ,24 as VOCTarget');
    sql.add('from  (                 ');
    sql.Add('       select  QIPVOC.* ');
    sql.add('       from QIPVOC      ');
    sql.add('       left join bdepartment on bdepartment.id=QIPVOC.depno ');
    sql.add('       where left(bdepartment.depname,4)='+''''+'LY_G'+'''');
    sql.add('             and   convert(smalldatetime,convert(varchar,QIPVOC.ProdDate,111)) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',VOC_List1.sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',VOC_List1.edate)+'''');
    sql.add('       )');
    sql.add('        QIPVOC');
    sql.add('group by proddate');

    active:=true;

  end;  
end;

end.
