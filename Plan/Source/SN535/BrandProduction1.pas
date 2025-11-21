unit BrandProduction1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls,comobj;

type
  TBrandProduction = class(TForm)
    pnTop: TPanel;
    gdMain: TDBGridEh;
    bnQuery: TButton;
    bnExcel: TButton;
    cbYear: TComboBox;
    lbEnglish: TLabel;
    lbChinese: TLabel;
    lbYear: TLabel;
    qrMain: TQuery;
    dsMain: TDataSource;
    qrMainkfqm: TStringField;
    qrMainitem: TStringField;
    qrMainjanuary: TIntegerField;
    qrMainFebruary: TIntegerField;
    qrMainMarch: TIntegerField;
    qrMainApril: TIntegerField;
    qrMainMay: TIntegerField;
    qrMainJune: TIntegerField;
    qrMainJuly: TIntegerField;
    qrMainAugust: TIntegerField;
    qrMainSeptember: TIntegerField;
    qrMainOctober: TIntegerField;
    qrMainNovember: TIntegerField;
    qrMainDecember: TIntegerField;
    qrMainTotal: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bnQueryClick(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BrandProduction: TBrandProduction;

implementation

{$R *.dfm}

procedure TBrandProduction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBrandProduction.FormDestroy(Sender: TObject);
begin
  BrandProduction:=nil;
end;

procedure TBrandProduction.bnQueryClick(Sender: TObject);
var
  ff:textfile;
begin
  qrMain.Active:=false;
  qrMain.SQL.Clear;
  with qrMain.SQL do
    begin
      add('select kfqm as kfqm,item as Item,');
      add('sum(case when mm=1 then Qty else 0 end) as January,');
      add('sum(case when mm=2 then Qty else 0 end) as February,');
      add('sum(case when mm=3 then Qty else 0 end) as March,');
      add('sum(case when mm=4 then Qty else 0 end ) as April,');
      add('sum(case when mm=5 then Qty else 0 end ) as May,');
      add('sum(case when mm=6 then Qty else 0 end ) as June,');
      add('sum(case when mm=7 then Qty else 0 end ) as July,');
      add('sum(case when mm=8 then Qty else 0 end ) as August,');
      add('sum(case when mm=9 then Qty else 0 end ) as September,');
      add('sum(case when mm=10 then Qty else 0 end ) as October,');
      add('sum(case when mm=11 then Qty else 0 end ) as November,');
      add('sum(case when mm=12 then Qty else 0 end ) as December,');
      add('isnull(sum(Qty),0) as total');
      add('from(');
      add(' select bgszl.gszwqm,kfzl.kfqm,''訂單雙數'' as Item,sum(ddzl.Pairs) as Qty,month(ddzl.ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,kfzl.kfqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select Bgszl.gszwqm,kfzl.kfqm,''當月生產'' as Item,convert(int,sum(scbbs.Qty)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A'' and month(scbbs.USERDATE)=month(ddzl.ShipDate)');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,kfzl.kfqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select bgszl.gszwqm,kfzl.kfqm,''提前生產'' as Item,convert(int,sum(scbbs.Qty)-sum(case when Month(scbbs.USERDATE)=month(ddzl.shipdate) then scbbs.qty end)) as Qty,month(ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A'' and month(scbbs.USERDATE)<>month(ddzl.ShipDate)');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,kfzl.kfqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select bgszl.gszwqm,kfzl.kfqm,''欠數'' as Item,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,month(ddzl.ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join (');
      add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL');
      add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add('  group by DDZL.DDBH');
      add(' ) sc on sc.DDBH = DDZL.DDBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,kfzl.kfqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select bgszl.gszwqm,bgszl.gszwqm+''合計'',''訂單雙數'' as Item,sum(ddzl.Pairs) as Qty,month(ddzl.ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select Bgszl.gszwqm,bgszl.gszwqm+''合計'',''當月生產'' as Item,convert(int,sum(scbbs.Qty)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH  and scbbs.GXLB=''A'' and month(scbbs.USERDATE)=month(ddzl.ShipDate)');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select bgszl.gszwqm,bgszl.gszwqm+''合計'',''提前生產'' as Item,convert(int,sum(scbbs.Qty)-sum(case when Month(scbbs.USERDATE)=month(ddzl.shipdate) then scbbs.qty end)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select bgszl.gszwqm,bgszl.gszwqm+''合計'',''欠數'' as Item,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,month(ddzl.ShipDate) as mm');
      add(' from Bgszl');
      add(' left join DDZL on DDZL.GSBH = Bgszl.gsdh');
      add(' left join (');
      add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL ');
      add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add('  group by DDZL.DDBH');
      add(' ) sc on sc.DDBH = DDZL.DDBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by Bgszl.gszwqm,month(ddzl.ShipDate)');
      add(' union all');
      add(' select ''全廠合計'',''全廠合計'',''訂單雙數'' as Item,sum(ddzl.Pairs) as Qty,month(ddzl.ShipDate) as mm');
      add(' from DDZL');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by month(ddzl.ShipDate)');
      add(' union all');
      add(' select ''全廠合計'',''全廠合計'',''當月生產'' as Item,convert(int,sum(scbbs.Qty)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from DDZL');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A'' and month(scbbs.USERDATE)=month(ddzl.ShipDate)');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by month(ddzl.ShipDate)');
      add(' union all');
      add(' select ''全廠合計'',''全廠合計'',''提前生產'' as Item,convert(int,sum(scbbs.Qty)-sum(case when Month(scbbs.USERDATE)=month(ddzl.shipdate) then scbbs.qty end)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from DDZL');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A'' and month(scbbs.USERDATE)<>month(ddzl.ShipDate)');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by month(ddzl.ShipDate)');
      add(' union all');
      add(' select ''全廠合計'',''全廠合計'',''欠數'' as Item,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,month(ddzl.ShipDate) as mm');
      add(' from DDZL');
      add(' left join (');
      add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL ');
      add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add('  group by DDZL.DDBH');
      add(' ) sc on sc.DDBH = DDZL.DDBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text);
      add(' group by month(ddzl.ShipDate)');
      add(') as ta');
      add('group by gszwqm,kfqm,Item');
      add('order by gszwqm,');
      add('case when gszwqm+''合計'' = kfqm then '''' else kfqm end desc,');
      add('case when item = ''接單雙數'' then 1 else ');
      add('	case when item = ''當月生產'' then 2 else ');
      add('	 case when item = ''提前生產'' then 3 else');
      add('	  case when item = ''欠數'' then 4 end');
      add('  end');
      add(' end');
      add('end');

    end;
  assignfile(ff,'sql.txt');
  rewrite(ff);
  writeln(ff,qrMain.sql.text);
  closefile(ff);
  qrMain.Active:=true;
end;

procedure TBrandProduction.bnExcelClick(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
  sTemp,sTitle:string;
  slSplit:TStringList;
begin
  sTitle:=cbYear.Text+'年度品牌接單生產報表-每天更新';
  slSplit:=TStringList.Create;
  slSplit.Delimiter:='|';
  if  qrMain.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,15]].merge;
        eclApp.Cells[1,1].HorizontalAlignment := -4108;
        eclApp.Cells[1,1].font.size:=14;
        eclApp.Cells(1,1):=sTitle;
        i:= qrMain.RecordCount+2;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,15]].font.size:=10;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,15]].borders[1].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,15]].borders[2].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,15]].borders[3].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,15]].borders[4].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,15]].borders[3].linestyle:=-4119;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,1]].borders[1].linestyle:=-4119;
        eclApp.Range[eclApp.Cells[2,15],eclApp.Cells[i,15]].borders[2].linestyle:=-4119;
        eclApp.Range[eclApp.Cells[i,1],eclApp.Cells[i,15]].borders[4].linestyle:=-4119;
        for i:=0 to gdMain.Columns.Count-1 do
          begin
            slSplit.DelimitedText:=gdMain.Columns[i].Title.Caption;
            eclApp.Cells(2,i+1):=slSplit[1];
          end;
        qrMain.First;
        j:=3;
        while not qrMain.Eof do
        begin
          if gdMain.Fields[0].asstring <> sTemp then
            eclApp.Cells(j,1):= gdMain.Fields[0].asstring;
          sTemp:=gdMain.Fields[0].asstring;
          eclApp.Cells(j,2):= gdMain.Fields[1].asstring;
          for i:=2 to gdMain.Columns.Count-1 do
            if gdMain.Fields[i].AsInteger<>0 then
              eclApp.Cells(j,i+1):=gdMain.Fields[i].Value;
          if 0 = (j-2) mod 4 then
            eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,15]].borders[4].weight:=4;
          qrMain.Next;
          inc(j);
        end;

        eclapp.columns.autofit;
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
