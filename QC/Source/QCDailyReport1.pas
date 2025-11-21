unit QCDailyReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Menus,OleServer,
  dateutils,comobj, ExcelXP, GridsEh, DBGridEh,ehlibBDE,DBGridEhImpExp,
  ComCtrls, PrnDbgeh;

type
  TQCDailyReport = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    CBX3: TComboBox;
    Label4: TLabel;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    Label8: TLabel;
    Label12: TLabel;
    CBX4: TComboBox;
    QTemp: TQuery;
    SaveDialog1: TSaveDialog;
    Edit9: TEdit;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Print1: TMenuItem;
    Label14: TLabel;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    Button3: TButton;
    Button4: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure NN1Click(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure DTP2Change(Sender: TObject);
    procedure CBX4Change(Sender: TObject);
    procedure CBX3Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCDailyReport: TQCDailyReport;
  var w:integer;
      CHG:Boolean;
implementation

uses DM3, RYCheck_Det1, main1, QCDailyReport_Print1,
  QCDailyReport_Print_A1, QCDailyReport_Print_P1, QCDailyReport_Print_C1;

{$R *.dfm}

procedure TQCDailyReport.Button1Click(Sender: TObject);
//var
//i:integer;
begin
if button4.Caption <> 'Stop' then
  if (datetostr(dtp1.Date) = datetostr(dtp2.Date)) and (datetostr(dtp1.Date) = datetostr(Date)) then
    button4.Visible := true
  else
    button4.Visible := false;
CHG := false;
case CBX3.ItemIndex of
  0:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select QCBLYY.YYBH,QCBLYY.YWSM,QCBLYY.ZWSM,');
          sql.add('       isnull(QCBBS1.Qty,0) as QCBBS1,');
          sql.add('       isnull(QCBBS2.Qty,0) as QCBBS2,');
          sql.add('       isnull(QCBBS3.Qty,0) as QCBBS3,');
          sql.add('       isnull(QCBBS4.Qty,0) as QCBBS4,');
          sql.add('       isnull(QCBBS5.Qty,0) as QCBBS5,');
          sql.add('       isnull(QCBBS6.Qty,0) as QCBBS6,');
          sql.add('       isnull(QCBBS7.Qty,0) as QCBBS7,');
          sql.add('       isnull(QCBBS8.Qty,0) as QCBBS8,');
          sql.add('       isnull(QCBBSALL.Qty,0) as QCBBSALL');
          sql.add('from QCBLYY ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010601''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS1 on QCBBS1.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010602''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS2 on QCBBS2.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS3 on QCBBS3.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS4 on QCBBS4.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS5 on QCBBS5.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS6 on QCBBS6.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS7 on QCBBS7.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS8 on QCBBS8.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBSALL on QCBBSALL.SCBH=QCBLYY.YYBH ');
          sql.add('  WHERE DFL=''S''  ');
//加總
          sql.add(' UNION     ');
          sql.add('select ''TOTAL DEFECT'' AS YYBH,''TOTAL DEFECT'' AS YWSM,''SO LUONG HU'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010601''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010602''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS5,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS6,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS7,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS8,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL  ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//檢驗數量
          sql.add(' UNION     ');
          sql.add('select ''TOTAL INSPECTED'' AS YYBH,''TOTAL INSPECTED'' AS YWSM,''SO LUONG KIEM'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010601''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010602''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS5,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS6,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS7,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS8,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo  IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'')  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//百分比
          sql.add(' UNION     ');
          sql.add('select ''TOTAL PERCENT'' AS YYBH,''TOTAL PERCENT'' AS YWSM,''PHAN TRAM HU'' AS ZWSM,');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010601''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010601''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010602''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010602''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS8,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//RFT
          sql.add(' UNION     ');
          sql.add('select ''T-RFT'' AS YYBH,''RFT%'' AS YWSM,''PHAN TRAM RFT'' AS ZWSM,');
          sql.add(' 100 - round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010601''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010601''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add(' 100 -  round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010602''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010602''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add(' 100 -   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add(' 100 -   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('  100 -  round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add(' 100 -   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add('  100 -  round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add(' 100 -   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS8,   ');
          sql.add(' 100 -    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');

          active:=true;
 {         Tfloatfield(FieldByName('QCBBS1')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS2')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS3')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS4')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS5')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS6')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS7')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS8')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS9')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBSALL')).displayformat:='##,#0' ; }
          edit9.Text:='0';
        end;
    end;
  1:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select QCBLYY.YYBH,QCBLYY.YWSM,QCBLYY.ZWSM,');
          sql.add('       isnull(QCBBS1.Qty,0) as QCBBS1,');
          sql.add('       isnull(QCBBS2.Qty,0) as QCBBS2,');
          sql.add('       isnull(QCBBS3.Qty,0) as QCBBS3,');
          sql.add('       isnull(QCBBS4.Qty,0) as QCBBS4,');
          sql.add('       isnull(QCBBSALL.Qty,0) as QCBBSALL');
          sql.add('from QCBLYY ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');   //印刷部門
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS1 on QCBBS1.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');  //Embroidery
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS2 on QCBBS2.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');   //Embossing
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS3 on QCBBS3.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0115''  ');   //CUTTING
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS4 on QCBBS4.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'',''LY0115'' )');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBSALL on QCBBSALL.SCBH=QCBLYY.YYBH ');
          sql.add('where QCBLYY.DFL=''O''  ');
//加總
          sql.add(' UNION     ');
          sql.add('select ''TOTAL DEFECT'' AS YYBH,''TOTAL DEFECT'' AS YWSM,''SO LUONG HU'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0115''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'',''LY0115'' )  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL  ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//檢驗數量
          sql.add(' UNION     ');
          sql.add('select ''TOTAL INSPECTED'' AS YYBH,''TOTAL INSPECTED'' AS YWSM,''SO LUONG KIEM'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0115''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo  IN (''LY0109'',''LY0113'',''LY0114'',''LY0115'' )  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//百分比
          sql.add(' UNION     ');
          sql.add('select ''TOTAL PERCENT'' AS YYBH,''TOTAL PERCENT'' AS YWSM,''PHAN TRAM HU'' AS ZWSM,');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0115''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0115''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//RFT
          sql.add(' UNION     ');
          sql.add('select ''T-RFT'' AS YYBH,''RFT%'' AS YWSM,''PHAN TRAM RFT'' AS ZWSM,');
          sql.add(' 100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0115''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0115''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
          sql.add('order by QCBLYY.YYBH ');
          active:=true;
{          Tfloatfield(FieldByName('QCBBS1')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS2')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS3')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBSALL')).displayformat:='##,#0' ; }
          edit9.Text:='0';
        end;
    end;
  2:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select QCBLYY.YYBH,QCBLYY.YWSM,QCBLYY.ZWSM,');
          sql.add('       isnull(QCBBS1.Qty,0) as QCBBS1,');
          sql.add('       isnull(QCBBS2.Qty,0) as QCBBS2,');
          sql.add('       isnull(QCBBS3.Qty,0) as QCBBS3,');
          sql.add('       isnull(QCBBS4.Qty,0) as QCBBS4,');
          sql.add('       isnull(QCBBS5.Qty,0) as QCBBS5,');
          sql.add('       isnull(QCBBS6.Qty,0) as QCBBS6,');
          sql.add('       isnull(QCBBS7.Qty,0) as QCBBS7,');
          sql.add('       isnull(QCBBS8.Qty,0) as QCBBS8,');
          sql.add('       isnull(QCBBS9.Qty,0) as QCBBS9,');
          sql.add('       isnull(QCBBS10.Qty,0) as QCBBS10,');
          sql.add('       isnull(QCBBS11.Qty,0) as QCBBS11,');
          sql.add('       isnull(QCBBS12.Qty,0) as QCBBS12,');
          sql.add('       isnull(QCBBSALL.Qty,0) as QCBBSALL');
          sql.add('from QCBLYY ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');     //成型LINE 1
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS1 on QCBBS1.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS2 on QCBBS2.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS3 on QCBBS3.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS4 on QCBBS4.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS5 on QCBBS5.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS6 on QCBBS6.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS7 on QCBBS7.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS8 on QCBBS8.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS9 on QCBBS9.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS10 on QCBBS10.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060011''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS11 on QCBBS11.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060012''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS12 on QCBBS12.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBSALL on QCBBSALL.SCBH=QCBLYY.YYBH ');
          sql.add('where QCBLYY.DFL=''A''  ');
//加總
          sql.add(' UNION     ');
          sql.add('select ''TOTAL DEFECT'' AS YYBH,''TOTAL DEFECT'' AS YWSM,''SO LUONG HU'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS5,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS6,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS7,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS8,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS9,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS10,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060011''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS11,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060012''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS12,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL  ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//檢驗數量
          sql.add(' UNION     ');
          sql.add('select ''TOTAL INSPECTED'' AS YYBH,''TOTAL INSPECTED'' AS YWSM,''SO LUONG KIEM'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS5,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS6,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS7,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS8,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS9,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS10,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060011''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS11,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060012''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS12,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo  IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//百分比
          sql.add(' UNION     ');
          sql.add('select ''TOTAL PERCENT'' AS YYBH,'' % Defect'' AS YWSM,''PHAN TRAM HU'' AS ZWSM,');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS8,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS9,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS10,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060011''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060011''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS11,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060012''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060012''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS12,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//RFT
          sql.add(' UNION     ');
          sql.add('select ''T-RFT'' AS YYBH,''RFT%'' AS YWSM,''PHAN TRAM RFT'' AS ZWSM,');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('    isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add('100-      round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS8,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS9,   ');
          sql.add('100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS10,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060011''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060011''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS11,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060012''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060012''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS12,   ');
          sql.add('100-    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
          sql.add('order by QCBLYY.YYBH ');
          active:=true;
{          Tfloatfield(FieldByName('QCBBS1')).displayformat:='##,#0.00' ;
          Tfloatfield(FieldByName('QCBBS2')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS3')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS4')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS5')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS6')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS7')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS8')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS9')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS10')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBSALL')).displayformat:='##,#0' ; }
          edit9.Text:='0';
        end;
    end;
     3:
    begin
      with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select QCBLYY.YYBH,QCBLYY.YWSM,QCBLYY.ZWSM,');
          sql.add('       isnull(QCBBS1.Qty,0) as QCBBS1,');
          sql.add('       isnull(QCBBS2.Qty,0) as QCBBS2,');
          sql.add('       isnull(QCBBS3.Qty,0) as QCBBS3,');
          sql.add('       isnull(QCBBS4.Qty,0) as QCBBS4,');
          sql.add('       isnull(QCBBS5.Qty,0) as QCBBS5,');
          sql.add('       isnull(QCBBS6.Qty,0) as QCBBS6,');
          sql.add('       isnull(QCBBS7.Qty,0) as QCBBS7,');
          sql.add('       isnull(QCBBSALL.Qty,0) as QCBBSALL');
          sql.add('from QCBLYY ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010623''  ');     //成型LINE 1
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS1 on QCBBS1.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010624''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS2 on QCBBS2.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010625''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS3 on QCBBS3.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010626''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS4 on QCBBS4.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010627''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS5 on QCBBS5.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010628''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS6 on QCBBS6.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010629''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBS7 on QCBBS7.SCBH=QCBLYY.YYBH ');
          sql.add('left join (select QCBBS.SCBH,sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010623'',''LY010624'',''LY010625'',''LY010626'',''LY010627'',''LY010628'',''LY010629'' )');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBBS.SCBH) QCBBSALL on QCBBSALL.SCBH=QCBLYY.YYBH ');
          sql.add('where QCBLYY.DFL=''C''  ');
//加總
          sql.add(' UNION     ');
          sql.add('select ''TOTAL DEFECT'' AS YYBH,''TOTAL DEFECT'' AS YWSM,''SO LUONG HU'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010623''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010624''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010625''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010626''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010627''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS5,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010628''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS6,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010629''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS7,   ');
          sql.add(' isnull((select sum(QCBBS.Qty) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010623'',''LY010624'',''LY010625'',''LY010626'',''LY010627'',''LY010628'',''LY010629'' )  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL  ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//檢驗數量
          sql.add(' UNION     ');
          sql.add('select ''TOTAL INSPECTED'' AS YYBH,''TOTAL INSPECTED'' AS YWSM,''SO LUONG KIEM'' AS ZWSM,');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010623''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS1,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010624''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS2,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010625''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS3,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010626''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS4,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010627''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS5,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010628''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS6,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010629''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           group by QCBB.DepNo),0) as QCBBS7,   ');
          sql.add(' isnull((select sum(QCBB.INSPECTQTY) as Qty ');
          sql.add('           from QCBB ');
          sql.add('           where QCBB.DepNo  IN (''LY010623'',''LY010624'',''LY010625'',''LY010626'',''LY010627'',''LY010628'',''LY010629'' )  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//百分比
          sql.add(' UNION     ');
          sql.add('select ''TOTAL PERCENT'' AS YYBH,'' % Defect'' AS YWSM,''PHAN TRAM HU'' AS ZWSM,');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010623''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010623''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010624''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010624''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010625''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010625''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010626''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010626''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010627''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010627''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010628''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010628''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010629''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010629''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010623'',''LY010624'',''LY010625'',''LY010626'',''LY010627'',''LY010628'',''LY010629'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY010623'',''LY010624'',''LY010625'',''LY010626'',''LY010627'',''LY010628'',''LY010629'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
//RFT
          sql.add(' UNION     ');
          sql.add(' select ''T-RFT'' AS YYBH,''RFT%'' AS YWSM,''PHAN TRAM RFT'' AS ZWSM,');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010623''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010623''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010624''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010624''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010625''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010625''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010626''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010626''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010627''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010627''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010628''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010628''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010629''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010629''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add(' 100-   round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010623'',''LY010624'',''LY010625'',''LY010626'',''LY010627'',''LY010628'',''LY010629'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY010623'',''LY010624'',''LY010625'',''LY010626'',''LY010627'',''LY010628'',''LY010629'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) between ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
          sql.add('order by QCBLYY.YYBH ');
          active:=true;
{          Tfloatfield(FieldByName('QCBBS1')).displayformat:='##,#0.00' ;
          Tfloatfield(FieldByName('QCBBS2')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS3')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS4')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS5')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS6')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS7')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS8')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS9')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBS10')).displayformat:='##,#0' ;
          Tfloatfield(FieldByName('QCBBSALL')).displayformat:='##,#0' ; }
          edit9.Text:='0';
        end;
    end;



    end;


end;

procedure TQCDailyReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TQCDailyReport.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
              eclApp.Cells.item[1,i+1].font.size:='8';
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              eclApp.Cells.item[j,i+1].font.size:='8';
            end;
          query1.Next;
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

procedure TQCDailyReport.NN1Click(Sender: TObject);
begin
if CBX3.ItemIndex<>1 then
if (copy(dbgrid1.SelectedField.FieldName,6,1) <='9') and (copy(dbgrid1.SelectedField.FieldName,6,1) >='0') then
begin
case CBX3.ItemIndex of
  0:
    begin
      Edit1.Text := 'LY01060'+ copy(dbgrid1.SelectedField.FieldName,6,1);
      Label2.Caption := 'S'
    end;
  1:
    begin
      case strtoint(copy(dbgrid1.SelectedField.FieldName,6,1)) of
      1:
        begin
          Edit1.Text := 'LY0109';
        end;
      2:
        begin
          Edit1.Text := 'LY0113';
        end;
      3:
        begin
          Edit1.Text := 'LY0114';
        end;
      end;
    end;
  2:
    begin
      if length(dbgrid1.SelectedField.FieldName)> 6 then
        Edit1.Text := 'LY010600'+ copy(dbgrid1.SelectedField.FieldName,6,2)
      else
        Edit1.Text := 'LY0106000'+ copy(dbgrid1.SelectedField.FieldName,6,1);
      Label2.Caption := 'A'
    end;
end;
RYCheck_Det :=TRYCheck_Det.create(self);
RYCheck_Det.Edit1.Text := datetostr(dtp1.date);
RYCheck_Det.Edit2.Text := datetostr(dtp2.date);
RYCheck_Det.Edit3.Text := edit1.Text;
//Showmessage(DBGrid1.Columns[PopupMenu1.tag].Field.AsString);
RYCheck_Det.show;
//RYCheck_Det.edit1.Text:=inttostr(w);
//RYCheck_Det.button1.Click;
end;
end;

procedure TQCDailyReport.NN2Click(Sender: TObject);
  var   ExpClass:TDBGridEhExportClass;
          Ext:String;
  begin
          SaveDialog1.FileName   :=   '';
          if   SaveDialog1.Execute   then
          begin
              case   SaveDialog1.FilterIndex   of
                  1:   begin   ExpClass   :=   TDBGridEhExportAsText;   Ext   :=   'txt';   end;
                  2:   begin   ExpClass   :=   TDBGridEhExportAsCSV;   Ext   :=   'csv';   end;
                  3:   begin   ExpClass   :=   TDBGridEhExportAsHTML;   Ext   :=   'htm';   end;
                  4:   begin   ExpClass   :=   TDBGridEhExportAsRTF;   Ext   :=   'rtf';   end;
                  5:   begin   ExpClass   :=   TDBGridEhExportAsXLS;   Ext   :=   'xls';   end;
              else
                  ExpClass   :=   nil;   Ext   :=   '';
              end;
              if   ExpClass   <>   nil   then
              begin
                  if   UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3))   <>
                        UpperCase(Ext)   then
                      SaveDialog1.FileName   :=   SaveDialog1.FileName   +   '.'   +   Ext;
                  SaveDBGridEhToExportFile(ExpClass,dbgrid1,
                            SaveDialog1.FileName,true);
              end;
          end;
end;

procedure TQCDailyReport.FormDestroy(Sender: TObject);
begin
QCDailyReport:=nil;
end;

procedure TQCDailyReport.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
  end;

//DTP1.Date:=startofthemonth(date)+5;
//DTP2.date:=endofthemonth(date)+5;

DTP1.Date:=date;
DTP2.date:=date;
CHG := true;


end;

procedure TQCDailyReport.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
case CBX3.ItemIndex of
  0:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='No|'+query1.Fields[0].fieldname;
          columns[1].Width:=240;
          columns[1].title.caption:='Issues|'+query1.Fields[1].fieldname;
          columns[2].Width:=240;
          columns[2].title.caption:='Issues|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;
          columns[3].title.caption:='Lean1|'+query1.Fields[3].fieldname;
          Columns[3].Footer.ValueType := fvtSum;
          columns[4].Width:=50;
          columns[4].title.caption:='Lean2|'+query1.Fields[4].fieldname;
          Columns[4].Footer.ValueType := fvtSum;
          columns[5].Width:=50;
          columns[5].title.caption:='Lean3|'+query1.Fields[5].fieldname;
          Columns[5].Footer.ValueType := fvtSum;
          columns[6].Width:=50;
          columns[6].title.caption:='Lean4|'+query1.Fields[6].fieldname;
          Columns[6].Footer.ValueType := fvtSum;
          columns[7].Width:=50;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='Lean5|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='Lean6|'+query1.Fields[8].fieldname;
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Lean7|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Lean8|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Total|'+query1.Fields[11].fieldname;


          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  1:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='No|'+query1.Fields[0].fieldname;
           columns[1].Width:=240;
          columns[1].title.caption:='Issues|'+query1.Fields[1].fieldname;
          columns[2].Width:=240;
          columns[2].title.caption:='Issues|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;
          columns[3].title.caption:='Printing|'+query1.Fields[3].fieldname;
          Columns[3].Footer.ValueType := fvtSum;
          columns[4].Width:=50;
          columns[4].title.caption:='Embroidery|'+query1.Fields[4].fieldname;
          Columns[4].Footer.ValueType := fvtSum;
          columns[5].Width:=50;
          columns[5].title.caption:='Embossing|'+query1.Fields[5].fieldname;
          Columns[5].Footer.ValueType := fvtSum;
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='All|'+query1.Fields[6].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;

        end;
    end;
  2:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='No|'+query1.Fields[0].fieldname;
          columns[1].Width:=240;
          columns[1].title.caption:='Issues|'+query1.Fields[1].fieldname;
          columns[2].Width:=240;
          columns[2].title.caption:='Issues|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;
          columns[3].title.caption:='Lean1|'+query1.Fields[3].fieldname;
          Columns[3].Footer.ValueType := fvtSum;
          columns[4].Width:=50;
          columns[4].title.caption:='Lean2|'+query1.Fields[4].fieldname;
          Columns[4].Footer.ValueType := fvtSum;
          columns[5].Width:=50;
          columns[5].title.caption:='Lean3|'+query1.Fields[5].fieldname;
          Columns[5].Footer.ValueType := fvtSum;
          columns[6].Width:=50;
          columns[6].title.caption:='Lean4|'+query1.Fields[6].fieldname;
          Columns[6].Footer.ValueType := fvtSum;
          columns[7].Width:=50;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='Lean5|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='Lean6|'+query1.Fields[8].fieldname;
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Lean7|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Lean8|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          columns[11].color:=$00C8FFC8  ;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Lean9|'+query1.Fields[11].fieldname;
          columns[12].Width:=50;
          columns[12].color:=$00C8FFC8  ;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Lean10|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          columns[13].color:=$00C8FFC8  ;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Lean11|'+query1.Fields[13].fieldname;
          columns[13].Width:=50;
          columns[14].color:=$00C8FFC8  ;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Lean12|'+query1.Fields[14].fieldname;
          columns[15].Width:=50;
          Columns[15].Footer.ValueType := fvtSum;
          columns[15].title.caption:='All|'+query1.Fields[15].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  3:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='No|'+query1.Fields[0].fieldname;
          columns[1].Width:=240;
          columns[1].title.caption:='Issues|'+query1.Fields[1].fieldname;
          columns[2].Width:=240;
          columns[2].title.caption:='Issues|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;
          columns[3].title.caption:='Lean1|'+query1.Fields[3].fieldname;
          Columns[3].Footer.ValueType := fvtSum;
          columns[4].Width:=50;
          columns[4].title.caption:='Lean2|'+query1.Fields[4].fieldname;
          Columns[4].Footer.ValueType := fvtSum;
          columns[5].Width:=50;
          columns[5].title.caption:='Lean3|'+query1.Fields[5].fieldname;
          Columns[5].Footer.ValueType := fvtSum;
          columns[6].Width:=50;
          columns[6].title.caption:='Lean4|'+query1.Fields[6].fieldname;
          Columns[6].Footer.ValueType := fvtSum;
          columns[7].Width:=50;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='Lean5|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='Lean6|'+query1.Fields[8].fieldname;
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Lean7|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Total|'+query1.Fields[10].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  4:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='要求出貨日|'+query1.Fields[0].fieldname;
          columns[1].Width:=100;
          Columns[1].Footer.ValueType := fvtCount;
          columns[1].title.caption:='客戶簡稱|'+query1.Fields[1].fieldname;
          columns[2].Width:=60;
          Columns[2].Footer.ValueType := fvtsum;
          columns[2].title.caption:='訂單合計|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;
          Columns[3].Footer.ValueType := fvtSum;
          columns[3].color:=$00C8FFC8  ;
          columns[3].title.caption:='Cutting(裁斷)|'+query1.Fields[3].fieldname;
          columns[4].Width:=50;
          columns[4].color:=$00C8FFC8  ;
          Columns[4].Footer.ValueType := fvtSum;
          columns[4].title.caption:='Cutting(裁斷)|'+query1.Fields[4].fieldname;
          columns[5].Width:=50;
          Columns[5].Footer.ValueType := fvtSum;
          columns[5].title.caption:='Stitching(針車)|'+query1.Fields[5].fieldname;
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='Stitching(針車)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50;
          columns[7].color:=$00C8FFC8  ;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='CCS(大車)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='CCS(大車)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50; 
          columns[9].color:=$00C8FFC8  ;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Outsole(大底)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Outsole(大底)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          columns[11].color:=$00C8FFC8  ;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Insocker(鞋墊)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50;
          columns[12].color:=$00C8FFC8  ;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Insocker(鞋墊)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Assemble(成型)|'+query1.Fields[13].fieldname;
          columns[14].Width:=50;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Assemble(成型)|'+query1.Fields[14].fieldname;
          columns[15].Width:=60;
          columns[15].color:=$00C8FFC8  ;
          Columns[15].Footer.ValueType := fvtSum;
          columns[15].title.caption:='成型配套|'+query1.Fields[15].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
  5:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='上船日期|'+query1.Fields[0].fieldname;
          columns[1].Width:=100;
          Columns[1].Footer.ValueType := fvtCount;
          columns[1].title.caption:='客戶簡稱|'+query1.Fields[1].fieldname;
          columns[2].Width:=60;
          Columns[2].Footer.ValueType := fvtsum;
          columns[2].title.caption:='訂單合計|'+query1.Fields[2].fieldname;
          columns[3].Width:=50;
          columns[3].color:=$00C8FFC8  ;
          Columns[3].Footer.ValueType := fvtSum;
          columns[3].title.caption:='Cutting(裁斷)|'+query1.Fields[3].fieldname;
          columns[4].Width:=50;
          columns[4].color:=$00C8FFC8  ;
          Columns[4].Footer.ValueType := fvtSum;
          columns[4].title.caption:='Cutting(裁斷)|'+query1.Fields[4].fieldname;
          columns[5].Width:=50;
          Columns[5].Footer.ValueType := fvtSum;
          columns[5].title.caption:='Stitching(針車)|'+query1.Fields[5].fieldname;
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtSum;
          columns[6].title.caption:='Stitching(針車)|'+query1.Fields[6].fieldname;
          columns[7].Width:=50;
          columns[7].color:=$00C8FFC8  ;
          Columns[7].Footer.ValueType := fvtSum;
          columns[7].title.caption:='CCS(大車)|'+query1.Fields[7].fieldname;
          columns[8].Width:=50;
          columns[8].color:=$00C8FFC8  ;
          Columns[8].Footer.ValueType := fvtSum;
          columns[8].title.caption:='CCS(大車)|'+query1.Fields[8].fieldname;
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtSum;
          columns[9].title.caption:='Outsole(大底)|'+query1.Fields[9].fieldname;
          columns[10].Width:=50;
          Columns[10].Footer.ValueType := fvtSum;
          columns[10].title.caption:='Outsole(大底)|'+query1.Fields[10].fieldname;
          columns[11].Width:=50;
          columns[11].color:=$00C8FFC8  ;
          Columns[11].Footer.ValueType := fvtSum;
          columns[11].title.caption:='Insocker(鞋墊)|'+query1.Fields[11].fieldname;
          columns[12].Width:=50;
          columns[12].color:=$00C8FFC8  ;
          Columns[12].Footer.ValueType := fvtSum;
          columns[12].title.caption:='Insocker(鞋墊)|'+query1.Fields[12].fieldname;
          columns[13].Width:=50;
          Columns[13].Footer.ValueType := fvtSum;
          columns[13].title.caption:='Assemble(成型)|'+query1.Fields[13].fieldname;
          columns[14].Width:=50;
          Columns[14].Footer.ValueType := fvtSum;
          columns[14].title.caption:='Assemble(成型)|'+query1.Fields[14].fieldname;
          columns[15].Width:=60;
          columns[15].color:=$00C8FFC8  ;
          Columns[15].Footer.ValueType := fvtSum;
          columns[15].title.caption:='成型配套|'+query1.Fields[15].fieldname;
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
end;


end;

procedure TQCDailyReport.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

//if query1.FieldByName('Pairs').value=query1.FieldByName('A_Qty').value then
//  dbgrid1.Canvas.Font.Color:=clblue;

//if ((query1.FieldByName('Pairs').value<>query1.FieldByName('A_Qty').value) and (not query1.FieldByName('C_Qty').isnull)) then
//  dbgrid1.Canvas.Font.Color:=clred;


end;

procedure TQCDailyReport.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 {
if (gdSelected in State) then
begin
    DBGrid1.Canvas.Font.Color   :=clBlack;
    DBGrid1.Canvas.Brush.Color   :=$00669988;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
end;
   
if (gdselected in state) then
  begin
    DBGrid1.canvas.Font.Style:=[fsbold] ;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end; }
end;

procedure TQCDailyReport.PrintDBGridEh1BeforePrint(Sender: TObject);
begin

case CBX3.ItemIndex of
  0:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','所有訂單完成狀況明細表']);  
  1:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按配色加總完成狀況明細表']);
  2:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按型體加總完成狀況明細表']); 
  3:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按客戶加總完成狀況明細表']);
  4:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按CSD加總完成狀況明細表']);
  5:
    PrintDBGridEh1.SetSubstitutes(['%[TName]','按ETD加總完成狀況明細表']);
end;
end;

procedure TQCDailyReport.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

procedure TQCDailyReport.Button3Click(Sender: TObject);
begin
if CHG then
begin
  showmessage('Please requery first!');
  abort;
end;  
case CBX3.ItemIndex of
  0:
    begin
      QCDailyReport_Print:=TQCDailyReport_Print.create(self);
      QCDailyReport_Print.quickrep1.prepare;
      QCDailyReport_Print.PageN.caption:=inttostr(QCDailyReport_Print.quickrep1.QRPrinter.pagecount);
      QCDailyReport_Print.QRLabel21.Caption:=formatdatetime('yyyy/MM/dd',DTP1.Date)  ;
      QCDailyReport_Print.QRLabel22.Caption:=formatdatetime('yyyy/MM/dd',DTP2.Date)  ;
      QCDailyReport_Print.quickrep1.preview;
      QCDailyReport_Print.free;
    end;
  1:
    begin
      QCDailyReport_Print_P:=TQCDailyReport_Print_P.create(self);
      QCDailyReport_Print_P.quickrep1.prepare;
      QCDailyReport_Print_P.PageN.caption:=inttostr(QCDailyReport_Print_P.quickrep1.QRPrinter.pagecount);
      QCDailyReport_Print_P.QRLabel21.Caption:=formatdatetime('yyyy/MM/dd',DTP1.Date)  ;
      QCDailyReport_Print_P.QRLabel22.Caption:=formatdatetime('yyyy/MM/dd',DTP2.Date)  ;
      QCDailyReport_Print_P.quickrep1.preview;
      QCDailyReport_Print_P.free;
    end;
  2:
    begin
      QCDailyReport_Print_A:=TQCDailyReport_Print_A.create(self);
      QCDailyReport_Print_A.quickrep1.prepare;
      QCDailyReport_Print_A.PageN.caption:=inttostr(QCDailyReport_Print_A.quickrep1.QRPrinter.pagecount);
      QCDailyReport_Print_A.QRLabel21.Caption:=formatdatetime('yyyy/MM/dd',DTP1.Date)  ;
      QCDailyReport_Print_A.QRLabel22.Caption:=formatdatetime('yyyy/MM/dd',DTP2.Date)  ;
      QCDailyReport_Print_A.quickrep1.preview;
      QCDailyReport_Print_A.free;
    end;
  3:
    begin
      QCDailyReport_Print_C:=TQCDailyReport_Print_C.create(self);
      QCDailyReport_Print_C.quickrep1.prepare;
      QCDailyReport_Print_C.PageN.caption:=inttostr(QCDailyReport_Print_C.quickrep1.QRPrinter.pagecount);
      QCDailyReport_Print_C.QRLabel21.Caption:=formatdatetime('yyyy/MM/dd',DTP1.Date)  ;
      QCDailyReport_Print_C.QRLabel22.Caption:=formatdatetime('yyyy/MM/dd',DTP2.Date)  ;
      QCDailyReport_Print_C.quickrep1.preview;
      QCDailyReport_Print_C.free;
    end;
end;
    
end;

procedure TQCDailyReport.DTP1Change(Sender: TObject);
begin
CHG:=true;
end;

procedure TQCDailyReport.DTP2Change(Sender: TObject);
begin
CHG:=true;
end;

procedure TQCDailyReport.CBX4Change(Sender: TObject);
begin
CHG:=true;
end;

procedure TQCDailyReport.CBX3Change(Sender: TObject);
begin
CHG:=true;
end;

procedure TQCDailyReport.Button4Click(Sender: TObject);
begin
  if button4.Caption = 'Stop' then
  begin
    Timer1.Enabled := false;
    Timer2.Enabled := false;
    label1.Visible := false;
    dtp1.Enabled := true;
    dtp2.Enabled := true;
    cbx3.Enabled := true;
    cbx4.Enabled := true;
    button1.Enabled := true;
    button2.Enabled := true;
    button3.Enabled := true;
    button4.Caption := 'Auto refresh';
  end
  else
  begin
    dtp1.Enabled := false;
    dtp2.Enabled := false;
    cbx3.Enabled := false;
    cbx4.Enabled := false;
    button1.Enabled := false;
    button2.Enabled := false;
    button3.Enabled := false;
    button4.Caption := 'Stop';
    Timer2.Enabled := true;
    Timer1.Enabled := true;
    label1.Visible := true;
  end;
end;

procedure TQCDailyReport.Timer2Timer(Sender: TObject);
begin
  label1.Caption := datetimetostr(now);
end;

end.

