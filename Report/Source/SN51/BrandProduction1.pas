unit BrandProduction1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls,comobj,dateutils;

type
  TBrandProduction = class(TForm)
    pnTop: TPanel;
    gdMain: TDBGridEh;
    bnQuery: TButton;
    bnExcel: TButton;
    lbEnglish: TLabel;
    lbChinese: TLabel;
    lbYear: TLabel;
    qrMain: TQuery;
    dsMain: TDataSource;
    cbYear: TComboBox;
    QTemp: TQuery;
    Label1: TLabel;
    CBBrand: TComboBox;
    CheckBox1: TCheckBox;
    OpenDialog: TOpenDialog;
    qrMainbrand: TStringField;
    qrMainexport: TStringField;
    qrMainitem: TStringField;
    qrMainBDEDesigner01January: TIntegerField;
    qrMainBDEDesigner02February: TIntegerField;
    qrMainBDEDesigner03March: TIntegerField;
    qrMainBDEDesigner04April: TIntegerField;
    qrMainBDEDesigner05May: TIntegerField;
    qrMainBDEDesigner06June: TIntegerField;
    qrMainBDEDesigner07July: TIntegerField;
    qrMainBDEDesigner08August: TIntegerField;
    qrMainBDEDesigner09September: TIntegerField;
    qrMainBDEDesigner10October: TIntegerField;
    qrMainBDEDesigner11November: TIntegerField;
    qrMainBDEDesigner12December: TIntegerField;
    qrMaintotal: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bnQueryClick(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
    procedure gdMainGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure cbYearChange(Sender: TObject);
    procedure gdMainCellClick(Column: TColumnEh);
  private
    AppDir:string;
    { Private declarations }
    OrderListExcel:Variant;
    OrderExcFN:string;
    procedure GetBrand();
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure ExportExternalExcel();
  public
    { Public declarations }
    ExcelSheetI:integer;
  end;

var
  BrandProduction: TBrandProduction;

implementation
  uses FunUnit, ExcelSheetDlg1, OrderDetail1, Main1;
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
var i:word;
begin
  qrMain.Active:=false;
  qrMain.SQL.Clear;
  with qrMain.SQL do
    begin
      add('select kfjc as brand,export,item,');
      add('sum(case when mm=1 then Qty else 0 end) as ''01.January'',');
      add('sum(case when mm=2 then Qty else 0 end) as ''02.February'',');
      add('sum(case when mm=3 then Qty else 0 end) as ''03.March'',');
      add('sum(case when mm=4 then Qty else 0 end ) as ''04.April'',');
      add('sum(case when mm=5 then Qty else 0 end ) as ''05.May'',');
      add('sum(case when mm=6 then Qty else 0 end ) as ''06.June'',');
      add('sum(case when mm=7 then Qty else 0 end ) as ''07.July'',');
      add('sum(case when mm=8 then Qty else 0 end ) as ''08.August'',');
      add('sum(case when mm=9 then Qty else 0 end ) as ''09.September'',');
      add('sum(case when mm=10 then Qty else 0 end ) as ''10.October'',');
      add('sum(case when mm=11 then Qty else 0 end ) as ''11.November'',');
      add('sum(case when mm=12 then Qty else 0 end ) as ''12.December'',');
      add('isnull(sum(Qty),0) as total');
      add('from(');
      add(' select ddzl.gsbh,kfzl.kfjc,''內銷'' as export,''1.接單雙數'' as Item,sum(ddzl.Pairs) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB=''VIE''');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      add(' union all');
      add(' select ddzl.gsbh,kfzl.kfjc,''內銷'' as export,''2.完成雙數'' as Item,convert(int,sum(scbbs.Qty)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add(' left join scbb on scbb.proNo=scbbs.proNo');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB=''VIE'' and month(scbb.scdate)=month(ddzl.ShipDate)');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      add(' union all');
      add(' select ddzl.gsbh,kfzl.kfjc,''內銷'' as export,''3.提前生產'' as Item,convert(int,sum(scbbs.Qty)-sum(case when Month(scbb.scdate)=month(ddzl.shipdate) then scbbs.qty else 0 end)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add(' left join scbb on scbb.proNo = scbbs.proNo');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB=''VIE''');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      add(' union all');
      add(' select ddzl.gsbh,kfzl.kfjc,''內銷'' as export,''4.欠數'' as Item,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join (');
      add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL');
      add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add('  group by DDZL.DDBH');
      add(' ) sc on sc.DDBH = DDZL.DDBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB=''VIE''');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      // 20161114 ddzl.shipdate -> ywcp.exedate
      add(' union all');
      add('  select ddzl.gsbh,kfzl.kfjc,''內銷'' as export,''5.出貨雙數'' as Item,sum(YWCP.Qty) as Qty,month(YWCP.Exedate) as mm ');
      add(' from (select * from YWCP union all select * from YWCPOld) YWCP ');
      add(' left join YWDD on YWCP.DDBH=YWDD.DDBH');
      add(' left join ddzl on YWDD.YSBH=DDZL.DDBH');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' where year(YWCP.Exedate)='+cbYear.Text+' and DDZL.DDGB=''VIE'' and YWCP.EXEDATE is not null ');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(YWCP.Exedate) ');
      //
      add(' union all');
      add(' select ddzl.gsbh,kfzl.kfjc,'' 外銷'' as export,''1.接單雙數'' as Item,sum(ddzl.Pairs) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB<>''VIE''');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      add(' union all');
      add(' select ddzl.gsbh,kfzl.kfjc,'' 外銷'' as export,''2.完成雙數'' as Item,convert(int,sum(scbbs.Qty)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add(' left join scbb on scbb.proNo = scbbs.proNo');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB<>''VIE'' and month(scbb.scdate)=month(ddzl.ShipDate)');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      add(' union all');
      add(' select ddzl.gsbh,kfzl.kfjc,'' 外銷'' as export,''3.提前生產'' as Item,convert(int,sum(scbbs.Qty)-sum(case when Month(scbb.scdate)=month(ddzl.shipdate) then scbbs.qty else 0 end)) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add(' left join scbb on scbb.proNo = scbbs.proNo');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB<>''VIE''');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      add(' union all');
      add(' select ddzl.gsbh,kfzl.kfjc,'' 外銷'' as export,''4.欠數'' as Item,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,month(ddzl.ShipDate) as mm');
      add(' from ddzl');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' left join (');
      add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL');
      add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
      add('  group by DDZL.DDBH');
      add(' ) sc on sc.DDBH = DDZL.DDBH');
      add(' where year(DDZL.ShipDate)='+cbYear.Text+' and DDZL.DDGB<>''VIE''');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(ddzl.ShipDate)');
      // 20161114 ddzl.shipdate -> ywcp.exedate
      add(' union all');
      add('  select ddzl.gsbh,kfzl.kfjc,'' 外銷'' as export,''5.出貨雙數'' as Item,sum(YWCP.Qty) as Qty,month(YWCP.Exedate) as mm ');
      add(' from (select * from YWCP union all select * from YWCPOld) YWCP');
      add(' left join YWDD on YWCP.DDBH=YWDD.DDBH');
      add(' left join ddzl on YWDD.YSBH=DDZL.DDBH');
      add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
      add(' where year(YWCP.Exedate)='+cbYear.Text+' and DDZL.DDGB<>''VIE'' and YWCP.EXEDATE is not null ');
      add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
      if CBBrand.Text <>'' then
       add('and kfzl.kfjc='''+CBBrand.Text+'''');
      add(' group by ddzl.gsbh,kfzl.kfjc,month(YWCP.Exedate) ');
      //
      if Checkbox1.Checked = true then
      begin
        add(' union all');
        add(' select ddzl.gsbh,ddzl.gsbh,''合計'' as export,''1.接單雙數'' as Item,sum(ddzl.Pairs) as Qty,month(ddzl.ShipDate) as mm');
        add(' from ddzl');
        add(' where year(DDZL.ShipDate)='+cbYear.Text);
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by ddzl.gsbh,month(ddzl.ShipDate)');
        add(' union all');
        add(' select ddzl.gsbh,ddzl.gsbh,''合計'' as export,''2.完成雙數'' as Item,convert(int,sum(scbbs.Qty)) as Qty,month(ddzl.ShipDate) as mm');
        add(' from ddzl');
        add(' left join scbbs on scbbs.SCBH = DDZL.DDBH  and scbbs.GXLB=''A''');
        add(' left join scbb on scbb.proNo = scbbs.proNo');
        add(' where year(DDZL.ShipDate)='+cbYear.Text+' and month(scbb.scdate)=month(ddzl.ShipDate)');
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by ddzl.gsbh,month(ddzl.ShipDate)');
        add(' union all');
        add(' select ddzl.gsbh,ddzl.gsbh,''合計'' as export,''3.提前生產'' as Item,convert(int,sum(scbbs.Qty)-sum(case when Month(scbb.scdate)=month(ddzl.shipdate) then scbbs.qty else 0 end)) as Qty,month(ddzl.ShipDate) as mm');
        add(' from ddzl');
        add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
        add(' left join scbb on scbb.proNo = scbbs.proNo');
        add(' where year(DDZL.ShipDate)='+cbYear.Text);
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by ddzl.gsbh,month(ddzl.ShipDate)');
        add(' union all');
        add(' select ddzl.gsbh,ddzl.gsbh,''合計'' as export,''4.欠數'' as Item,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,month(ddzl.ShipDate) as mm');
        add(' from ddzl');
        add(' left join (');
        add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL ');
        add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
        add('  group by DDZL.DDBH');
        add(' ) sc on sc.DDBH = DDZL.DDBH');
        add(' where year(DDZL.ShipDate)='+cbYear.Text);
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by ddzl.gsbh,month(ddzl.ShipDate)');
        // 20161114 ddzl.shipdate -> ywcp.exedate
        add(' union all');
        add('  select ddzl.gsbh,ddzl.gsbh,''合計'' as export,''5.出貨雙數'' as Item,sum(YWCP.Qty) as Qty,month(YWCP.Exedate) as mm ');
        add(' from (select * from YWCP union all select * from YWCPOld) YWCP');
        add(' left join YWDD on YWCP.DDBH=YWDD.DDBH');
        add(' left join ddzl on YWDD.YSBH=DDZL.DDBH');
        add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
        add(' where year(YWCP.Exedate)='+cbYear.Text+' and YWCP.EXEDATE is not null ');
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by ddzl.gsbh,month(YWCP.Exedate)');
      //
        add(' union all');
        add(' select ''全廠合計'',''全廠合計'',''全廠合計'' as export,''1.接單雙數'' as Item,sum(ddzl.Pairs) as Qty,month(ddzl.ShipDate) as mm');
        add(' from DDZL');
        add(' where year(DDZL.ShipDate)='+cbYear.Text);
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by month(ddzl.ShipDate)');
        add(' union all');
        add(' select ''全廠合計'',''全廠合計'',''全廠合計'' as export,''2.完成雙數'' as Item,convert(int,sum(scbbs.Qty)) as Qty,month(ddzl.ShipDate) as mm');
        add(' from DDZL');
        add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
        add(' left join scbb on scbb.proNo = scbbs.proNo');
        add(' where year(DDZL.ShipDate)='+cbYear.Text+' and month(scbb.scdate)=month(ddzl.ShipDate)');
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by month(ddzl.ShipDate)');
        add(' union all');
        add(' select ''全廠合計'',''全廠合計'',''全廠合計'' as export,''3.提前生產'' as Item,convert(int,sum(scbbs.Qty)-sum(case when Month(scbb.scdate)=month(ddzl.shipdate) then scbbs.qty else 0 end)) as Qty,month(ddzl.ShipDate) as mm');
        add(' from DDZL');
        add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
        add(' left join scbb on scbb.proNo = scbbs.proNo');
        add(' where year(DDZL.ShipDate)='+cbYear.Text);
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by month(ddzl.ShipDate)');
        add(' union all');
        add(' select ''全廠合計'',''全廠合計'',''全廠合計'' as export,''4.欠數'' as Item,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,month(ddzl.ShipDate) as mm');
        add(' from DDZL');
        add(' left join (');
        add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL ');
        add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
        add('  group by DDZL.DDBH');
        add(' ) sc on sc.DDBH = DDZL.DDBH');
        add(' where year(DDZL.ShipDate)='+cbYear.Text);
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by month(ddzl.ShipDate)');
        //20161114 ddzl.shipdate -> ywcp.exedate
        add(' union all');
        add('  select ''全廠合計'',''全廠合計'',''全廠合計'' as export,''5.出貨雙數'' as Item,sum(YWCP.Qty) as Qty,month(YWCP.Exedate) as mm ');
        add(' from (select * from YWCP union all select * from YWCPOld) YWCP');
        add(' left join YWDD on YWCP.DDBH=YWDD.DDBH');
        add(' left join ddzl on YWDD.YSBH=DDZL.DDBH');
        add(' left join kfzl on kfzl.kfdh = DDZL.KHBH');
        add(' where year(YWCP.Exedate)='+cbYear.Text+'  and YWCP.EXEDATE is not null');
        add(' and DDZL.DDZT=''Y''  and DDZL.DDLB=''N''');
        add(' group by month(YWCP.Exedate)');
      end;
      add(') as ta');
      add('group by gsbh,kfjc,Item,export');
      add('order by gsbh,');
      add('case when gsbh = kfjc then '''' else kfjc end desc,export,Item');
    end;
   //funcobj.WriteErrorLog(qrmain.SQL.Text);
  qrMain.Active:=true;
end;

procedure TBrandProduction.ExportDefaultExcel();
var
  eclApp,WorkBook,xlSheet:olevariant;
  i,j,k:integer;
  sBrand,sExport,sTitle:string;
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
        eclApp.WorkSheets[3].Activate;
        xlSheet := workbook.Worksheets['sheet3'];
        xlSheet.Name:='年度品牌報表'+cbYear.Text;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,15]].merge;
        eclApp.Cells[1,1].HorizontalAlignment := -4108;
        eclApp.Cells[1,1].font.size:=14;
        eclApp.Cells(1,1):=sTitle;
        i:= qrMain.RecordCount+2;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,16]].font.size:=10;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,16]].borders[1].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,16]].borders[2].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,16]].borders[3].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,16]].borders[4].linestyle:=1;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,16]].borders[3].linestyle:=-4119;
        eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[i,1]].borders[1].linestyle:=-4119;
        eclApp.Range[eclApp.Cells[2,16],eclApp.Cells[i,16]].borders[2].linestyle:=-4119;
        eclApp.Range[eclApp.Cells[i,1],eclApp.Cells[i,16]].borders[4].linestyle:=-4119;
        for i:=0 to gdMain.Columns.Count-1 do
          begin
            slSplit.DelimitedText:=gdMain.Columns[i].Title.Caption;     //取英文欄位名稱   by star
            eclApp.Cells(2,i+1):=slSplit[1];
          end;

        qrMain.First;
        j:=3;
        while not qrMain.Eof do
        begin
          if gdMain.Fields[0].asstring <> sBrand then       //品牌名只在第一筆顯示 by star
            eclApp.Cells(j,1):= gdMain.Fields[0].asstring;
          if (gdMain.Fields[0].asstring <> sBrand) or (gdMain.Fields[1].asstring <> sExport) then   //內外銷只在第一筆顯示 by star
            eclApp.Cells(j,2):= gdMain.Fields[1].asstring;
          sBrand:=gdMain.Fields[0].asstring;
          sExport:=gdMain.Fields[1].asstring;
          eclApp.Cells(j,3):= gdMain.Fields[2].asstring;
          for i:=3 to gdMain.Columns.Count-1 do     //複製第二欄以後的資料 by star
            if gdMain.Fields[i].AsInteger<>0 then
              eclApp.Cells(j,i+1):=gdMain.Fields[i].Value;
          if 0 = (j-2) mod 5 then         //每4列,就加粗框線 by star
            eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,16]].borders[4].weight:=4;
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

procedure  TBrandProduction.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
    Brand,tmpStr:string;
    Brand_S,Brand_E:integer;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Report_SN51.xls'),Pchar(AppDir+'Additional\Report_SN51.xls'),false);
   if FileExists(AppDir+'Additional\Report_SN51.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclApp.DisplayAlerts := False;
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Report_SN51.xls');
        eclApp.WorkSheets[3].Activate;
        eclApp.Cells(2,1):=cbYear.Text+'年度品牌接單生產報表-每天更新';
        qrMain.First;
        j:=4;
        for i:=0 to qrMain.RecordCount-1 do
        begin
          if qrMain.FieldByName('Item').AsString='5.出貨雙數'then
          begin
            qrMain.Next;
          end else
          begin
            if qrMain.FieldByName('brand').Value<>qrMain.FieldByName('Export').Value then
              eclApp.Cells(j,1):=qrMain.FieldByName('brand').Value+qrMain.FieldByName('Export').Value
            else
              eclApp.Cells(j,1):=qrMain.FieldByName('brand').Value;
            for k:=2 to qrMain.FieldCount-1 do
            begin
             eclApp.Cells(j,k):=qrMain.Fields[k].AsString;
            end;
            if  qrMain.FieldByName('Item').Value='4.欠數' then
              eclApp.Range[eclApp.Cells[j,2],eclApp.Cells[j,15]].interior.color:=clyellow;
            qrMain.Next;
            inc(j) ;
          end;
        end;
        //  add outline
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[4,1],eclApp.cells[j-1,15]].borders[k].linestyle:=1;
        end;

       //Run Meger Cell Brand
        Brand:='';
        Brand_S:=0;
        Brand_E:=0;
        for k:=3 to qrMain.RecordCount+3 do
        begin
         tmpStr:=eclApp.Cells[k,1];
         if Brand='' then
         begin
          Brand_S:=k;
          Brand:=tmpStr;
         end;
         if(( tmpStr<>Brand) and (Brand<>'')) then
         begin
           Brand_E:=k-1;
           Brand:= eclApp.Cells[k,1];
           eclApp.Range[eclApp.Cells[Brand_S,1],eclApp.Cells[Brand_E,1]].merge;
           Brand_S:=k;
         end;
        end;
        eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;

Procedure TBrandProduction.ExportExternalExcel();
var i,j,k,excelcount: integer;
    Exbrand:string;
begin
  if OpenDialog.Execute()=true then
  begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
  end;
  try
    OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
    ExcelSheetI:=1;
    excelcount:=OrderListExcel.WorkSheets.count;

    ExcelSheetDlg:=TExcelSheetDlg.Create(self);
    ExcelSheetDlg.ExcelSheetI:=@ExcelSheetI;
    for i:=1 to excelcount do
    begin
      ExcelSheetDlg.ListBox1.Items.Add(inttostr(i)+'.'+OrderListExcel.WorkSheets[i].name);
    end;
    ExcelSheetDlg.ShowModal();
    ExcelSheetDlg.Free;
    //
    OrderListExcel.WorkSheets[ExcelSheetI].Activate;
    //
    j:=4;
    qrMain.First;
    for i:=0 to qrMain.RecordCount-1 do
    begin
      if qrMain.FieldByName('Item').AsString='5.出貨雙數'then
      begin
        qrMain.Next;
      end else
      begin
        Exbrand:=OrderListExcel.Cells[j,1];
        if (copy(Exbrand,1,3)<>copy(qrMain.FieldByName('Brand').Value,1,3))and (Exbrand<>'') then
        begin
          qrMain.Next;
        end else
        begin
        if (copy(Exbrand,1,3)=copy(qrMain.FieldByName('Brand').Value,1,3))or (Exbrand='') then
        begin
          for k:=3 to qrMain.FieldCount-1 do
          begin
            OrderListExcel.Cells(j,k):=qrMain.Fields[k].AsString;
          end;
          qrMain.Next;
        end;
      inc(j) ;
      end;
    end;
  end;
  showmessage('Succeed');
  OrderListExcel.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end;

procedure TBrandProduction.bnExcelClick(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
   if Messagedlg(Pchar('Use External Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
   begin
     ExportExternalExcel();
   end else
   begin
     ExportFormatExcel();
   end;
  end else
  begin
    ExportDefaultExcel();
  end;
end;


procedure TBrandProduction.gdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qrMain.FieldByname('Item').asstring='4.欠數' then
    gdMain.canvas.font.color:=clred;
  if qrMain.FieldByname('Item').asstring='5.出貨雙數' then
    gdMain.canvas.font.color:=clblue;
end;

procedure TBrandProduction.GetBrand();
var i:integer;
begin
  with QTemp do
   begin
    active:=false;
    sql.Clear;
    sql.Add('select kfjc');
    sql.Add('from ddzl left join kfzl on ddzl.khbh=kfzl.kfdh');
    sql.Add('where year(shipdate)='+cbYear.Text);
    sql.Add('group by kfjc') ;
    sql.Add('order by kfjc');
    active:=true;
    CBBrand.Items.Clear;
    CBBrand.Items.Add('');
    for i:=1 to recordcount do
    begin
     CBBrand.Items.Add(fieldbyname('kfjc').asstring);
     next;
    end;
    CBBrand.Text:='CONVERSE';
   end;
end;

procedure TBrandProduction.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    Cbyear.Items.Add('');
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      Cbyear.Items.Add(inttostr(i));
      next;
    end;
    active:=false;
  end;
  Cbyear.ItemIndex:=6;
  GetBrand();
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TBrandProduction.cbYearChange(Sender: TObject);
begin
 GetBrand();
end;

procedure TBrandProduction.gdMainCellClick(Column: TColumnEh);
begin
  if qrMain.Active=true then
  begin
    if  Column.Index>=3 then
    begin
     if (qrMain.Fields[Column.Index].AsString<>'') and (qrMain.Fields[Column.Index].FieldName<>'total') and(qrMain.FieldByName('Item').AsString='4.欠數') then
     begin
       OrderDetail:=TOrderDetail.Create(self);
       OrderDetail.MONTH:=Copy(qrMain.Fields[Column.Index].FieldName,1,2);
       OrderDetail.OrderDetailData();
       OrderDetail.ShowModal();
     end;
    end;
  end;
end;

end.
