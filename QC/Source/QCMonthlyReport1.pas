unit QCMonthlyReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Menus,OleServer,
  dateutils,comobj, ExcelXP, GridsEh, DBGridEh,ehlibBDE,DBGridEhImpExp,
  ComCtrls, ShellAPI, PrnDbgeh;

type
  TQCMonthlyReport = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCMonthlyReport: TQCMonthlyReport;
  var w:integer;
      CHG:Boolean;
implementation

uses DM3, main1, RYCheckM_Det1, QCMonthlyReport_Print1,
  QCMonthlyReport_Print_A1, QCMonthlyReport_Print_P1;

{$R *.dfm}

procedure TQCMonthlyReport.Button1Click(Sender: TObject);
var
  iDay:Tdate;
  tptable : string;
begin
CHG := false;
iday := dtp1.Date;
qtemp.active:=false;
tptable := main.Edit1.Text+inttostr(CBX3.ItemIndex);
case CBX3.ItemIndex of
  0:
    begin
      while iday <= dtp2.Date do
      begin
      with qtemp do
        begin
          sql.clear;
          if iday=dtp1.Date then
          begin
            sql.add('if object_id(N'+''''+'tempdb..#'+tptable+''''+',N''U'') is not null');
            sql.add(' begin drop table #'+tptable+' end;');
            sql.Add(' create table #'+tptable);
            sql.Add(' (YYBH char(10),QCBBS1 dec(7,2),QCBBS2 dec(7,2),QCBBS3 dec(7,2),QCBBS4 dec(7,2)');
            sql.Add(',QCBBS5 dec(7,2),QCBBS6 dec(7,2),QCBBS7 dec(7,2),QCBBS8 dec(7,2),QCBBSALL dec(7,2))');
          end;
          sql.add('insert into #'+tptable);
          sql.add(' select '+'''' +formatdatetime('yyyy/MM/dd',iday)+''''+' AS YYBH,');
          sql.add(' round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty');
          sql.add(' from QCBBS');
          sql.add(' left join QCBB on QCBB.ProNo=QCBBS.ProNo');
          sql.add(' where QCBB.DepNo=''LY010601''');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE))=');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('),0)/');
          sql.add('isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB');
          sql.add(' where QCBB.DepNo=''LY010601''');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)');
          sql.add(')*100,0),2) as QCBBS1,');
          sql.add('round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty');
          sql.add(' from QCBBS');
          sql.add(' left join QCBB on QCBB.ProNo=QCBBS.ProNo');
          sql.add(' where QCBB.DepNo=''LY010602''');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE))=');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('),0)/');
          sql.add('isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB');
          sql.add(' where QCBB.DepNo=''LY010602''');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE))=');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add(')*100,0),2) as QCBBS2,');
          sql.add('round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty');
          sql.add(' from QCBBS');
          sql.add(' left join QCBB on QCBB.ProNo=QCBBS.ProNo');
          sql.add(' where QCBB.DepNo=''LY010603''');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010603''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010604''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010605''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010606''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010607''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY010608''  ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS8,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )   ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )   ');
          sql.add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add(''''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
          execsql;
        end;
        iday := iday + 1;
      end;
     with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select * from #'+tptable);
          active:=true;
        end;
      edit9.Text:='0';
    end;
  1:
    begin
      while iday <= dtp2.Date do
      begin
      with qtemp do
        begin
          sql.clear;
          if iday=dtp1.Date then
          begin
            sql.add('if object_id(N'+''''+'tempdb..#'+tptable+''''+',N''U'') is not null');
            sql.add(' begin drop table #'+tptable+' end;');
            sql.Add(' create table #'+tptable);
            sql.Add(' (YYBH char(10),QCBBS1 dec(7,2),QCBBS2 dec(7,2),QCBBS3 dec(7,2)');
            sql.Add(',QCBBSALL dec(7,2))');
          end;
          sql.add('insert into #'+tptable);
          sql.add(' select '+'''' +formatdatetime('yyyy/MM/dd',iday)+''''+' AS YYBH,');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0109''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0113''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY0114''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
          execsql;
        end;
        iday := iday + 1;
      end;
     with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select * from #'+tptable);
          active:=true;
        end;
      edit9.Text:='0';
    end;
  2:
    begin
      while iday <= dtp2.Date do
      begin
      with qtemp do
        begin
          sql.clear;
          if iday=dtp1.Date then
          begin
            sql.add('if object_id(N'+''''+'tempdb..#'+tptable+''''+',N''U'') is not null');
            sql.add(' begin drop table #'+tptable+' end;');
            sql.Add(' create table #'+tptable);
            sql.Add(' (YYBH char(10),QCBBS1 dec(7,2),QCBBS2 dec(7,2),QCBBS3 dec(7,2),QCBBS4 dec(7,2),QCBBS5 dec(7,2)');
            sql.Add(',QCBBS6 dec(7,2),QCBBS7 dec(7,2),QCBBS8 dec(7,2),QCBBS9 dec(7,2),QCBBS10 dec(7,2),QCBBSALL dec(7,2))');
          end;
          sql.add('insert into #'+tptable);
          sql.add(' select '+'''' +formatdatetime('yyyy/MM/dd',iday)+''''+' AS YYBH,');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060001''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS1,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060002''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS2,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060003''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS3,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060004''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS4,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060005''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS5,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060006''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS6,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060007''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS7,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060008''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS8,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060009''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS9,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo=''LY01060010''  ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBS10,   ');
          sql.add('    round(isnull((isnull((select convert(float,sum(QCBBS.Qty)) as Qty ');
          sql.add('           from QCBBS ');
          sql.add('           left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+'''');
          sql.add('           ),0) /   ');
          sql.add('      isnull((select sum(QCBB.INSPECTQTY) as Qty from QCBB ');
          sql.add('           where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'' )   ');
          sql.add('                 and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = ');
          sql.add('                 '''+formatdatetime('yyyy/MM/dd',iday)+''''+' ),0)' );
          sql.add('     )*100,0),2)   as QCBBSALL   ');
          sql.add('from BDepartment ');
          sql.add('where ID=''LY0106''  ');
          execsql;
        end;
        iday := iday + 1;
      end;
     with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select * from #'+tptable);
          active:=true;
        end;
      edit9.Text:='0';
    end;
end;
end;

procedure TQCMonthlyReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TQCMonthlyReport.Button2Click(Sender: TObject);
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
      Application.MessageBox('Microsoft Excel is not install properly!','Microsoft Excel?',MB_OK+MB_ICONWarning);
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

procedure TQCMonthlyReport.NN1Click(Sender: TObject);
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
RYCheckM_Det:=TRYCheckM_Det.create(self);
RYCheckM_Det.Edit1.Text := dbgrid1.Columns.Items[0].DisplayText;
RYCheckM_Det.Edit2.Text := dbgrid1.Columns.Items[0].DisplayText;
RYCheckM_Det.Edit3.Text := edit1.Text;
RYCheckM_Det.show;
end;
end;

procedure TQCMonthlyReport.NN2Click(Sender: TObject);
var 
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  SaveDialog1.FileName := 'ex';
if (dbgrid1 is TDBGridEh) then
  if SaveDialog1.Execute then
  begin
    case SaveDialog1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
        SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,dbgrid1,SaveDialog1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
end;


procedure TQCMonthlyReport.FormDestroy(Sender: TObject);
begin
QCMonthlyReport:=nil;
end;

procedure TQCMonthlyReport.FormCreate(Sender: TObject);
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

procedure TQCMonthlyReport.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
case CBX3.ItemIndex of
  0:
    begin
      with DBGrid1 do
        begin
          columns[0].Width:=80;
          columns[0].title.caption:='Date';
          Columns[0].Footer.ValueType := fvtStaticText;
          Columns[0].Footer.value := 'Average';
          columns[1].Width:=50;
          columns[1].title.caption:='Lean1|%';
          Columns[1].Footer.ValueType := fvtAvg;
          Columns[1].Footer.DisplayFormat := '##0.00';
          columns[2].Width:=50;
          columns[2].title.caption:='Lean2|%';
          Columns[2].Footer.ValueType := fvtAvg;
          Columns[2].Footer.DisplayFormat := '##0.00';
          columns[3].Width:=50;
          columns[3].title.caption:='Lean3|%';
          Columns[3].Footer.ValueType := fvtAvg;
          Columns[3].Footer.DisplayFormat := '##0.00';
          columns[4].Width:=50;
          columns[4].title.caption:='Lean4|%';
          Columns[4].Footer.ValueType := fvtAvg;
          Columns[4].Footer.DisplayFormat := '##0.00';
          columns[5].Width:=50;
          Columns[5].Footer.ValueType := fvtAvg;
          Columns[5].Footer.DisplayFormat := '##0.00';
          columns[5].title.caption:='Lean5|%';
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtAvg;
          Columns[6].Footer.DisplayFormat := '##0.00';
          columns[6].title.caption:='Lean6|%';
          columns[7].Width:=50;
          Columns[7].Footer.ValueType := fvtAvg;
          Columns[7].Footer.DisplayFormat := '##0.00';
          columns[7].title.caption:='Lean7|%';
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtAvg;
          Columns[8].Footer.DisplayFormat := '##0.00';
          columns[8].title.caption:='Lean8|%';
          columns[9].Width:=50;
          Columns[9].Footer.ValueType := fvtAvg;
          Columns[9].Footer.DisplayFormat := '##0.00';
          columns[9].title.caption:='Total|%';
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
          columns[0].title.caption:='Date';
          Columns[0].Footer.ValueType := fvtStaticText;
          Columns[0].Footer.value := 'Average';
          columns[1].Width:=70;
          columns[1].title.caption:='Printing|%';
          Columns[1].Footer.ValueType := fvtAvg;
          Columns[1].Footer.DisplayFormat := '##0.00';
          columns[2].Width:=70;
          columns[2].title.caption:='Embroidery|%';
          Columns[2].Footer.ValueType := fvtAvg;
          Columns[2].Footer.DisplayFormat := '##0.00';
          columns[3].Width:=70;
          columns[3].title.caption:='Embossing|%';
          Columns[3].Footer.ValueType := fvtAvg;
          Columns[3].Footer.DisplayFormat := '##0.00';
          columns[4].Width:=70;
          Columns[4].Footer.ValueType := fvtAvg;
          Columns[4].Footer.DisplayFormat := '##0.00';
          columns[4].title.caption:='All|%';
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
          columns[0].title.caption:='Date';
          Columns[0].Footer.ValueType := fvtStaticText;
          Columns[0].Footer.value := 'Average';
          columns[1].Width:=50;
          columns[1].title.caption:='Lean1|%';
          Columns[1].Footer.ValueType := fvtAvg;
          Columns[1].Footer.DisplayFormat := '##0.00';
          columns[2].Width:=50;
          columns[2].title.caption:='Lean2|%';
          Columns[2].Footer.ValueType := fvtAvg;
          Columns[2].Footer.DisplayFormat := '##0.00';
          columns[3].Width:=50;
          columns[3].title.caption:='Lean3|%';
          Columns[3].Footer.ValueType := fvtAvg;
          Columns[3].Footer.DisplayFormat := '##0.00';
          columns[4].Width:=50;
          columns[4].title.caption:='Lean4|%';
          Columns[4].Footer.ValueType := fvtAvg;
          Columns[4].Footer.DisplayFormat := '##0.00';
          columns[5].Width:=50;
          Columns[5].Footer.ValueType := fvtAvg;
          Columns[5].Footer.DisplayFormat := '##0.00';
          columns[5].title.caption:='Lean5|%';
          columns[6].Width:=50;
          Columns[6].Footer.ValueType := fvtAvg;
          Columns[6].Footer.DisplayFormat := '##0.00';
          columns[6].title.caption:='Lean6|%';
          columns[7].Width:=50;
          Columns[7].Footer.ValueType := fvtAvg;
          Columns[7].Footer.DisplayFormat := '##0.00';
          columns[7].title.caption:='Lean7|%';
          columns[8].Width:=50;
          Columns[8].Footer.ValueType := fvtAvg;
          Columns[8].Footer.DisplayFormat := '##0.00';
          columns[8].title.caption:='Lean8|%';
          columns[9].Width:=50;
          columns[9].color:=$00C8FFC8  ;
          Columns[9].Footer.ValueType := fvtAvg;
          Columns[9].Footer.DisplayFormat := '##0.00';
          columns[9].title.caption:='Lean9|%';
          columns[10].Width:=50;
          columns[10].color:=$00C8FFC8  ;
          Columns[10].Footer.ValueType := fvtAvg;
          Columns[10].Footer.DisplayFormat := '##0.00';
          columns[10].title.caption:='Lean10|%';
          columns[11].Width:=50;
          Columns[11].Footer.ValueType := fvtAvg;
          Columns[11].Footer.DisplayFormat := '##0.00';
          columns[11].title.caption:='All|%';
          for i:=0 to query1.fieldcount-1 do
            begin
              columns[i].Title.TitleButton:=true;
            end;
        end;
    end;
end;
end;

procedure TQCMonthlyReport.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

//if query1.FieldByName('Pairs').value=query1.FieldByName('A_Qty').value then
//  dbgrid1.Canvas.Font.Color:=clblue;

//if ((query1.FieldByName('Pairs').value<>query1.FieldByName('A_Qty').value) and (not query1.FieldByName('C_Qty').isnull)) then
//  dbgrid1.Canvas.Font.Color:=clred;


end;

procedure TQCMonthlyReport.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TQCMonthlyReport.PrintDBGridEh1BeforePrint(Sender: TObject);
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

procedure TQCMonthlyReport.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

procedure TQCMonthlyReport.Button3Click(Sender: TObject);
begin
if CHG then
begin
  showmessage('Please requery first!');
  abort;
end;  
case CBX3.ItemIndex of
  0:
    begin
      QCMonthlyReport_Print:=TQCMonthlyReport_Print.create(self);
      QCMonthlyReport_Print.quickrep1.prepare;
      QCMonthlyReport_Print.PageN.caption:=inttostr(QCMonthlyReport_Print.quickrep1.QRPrinter.pagecount);
      QCMonthlyReport_Print.QRLabel21.Caption:=formatdatetime('yyyy/MM/dd',DTP1.Date)  ;
      QCMonthlyReport_Print.QRLabel22.Caption:=formatdatetime('yyyy/MM/dd',DTP2.Date)  ;
      QCMonthlyReport_Print.quickrep1.preview;
      QCMonthlyReport_Print.free;
    end;
  1:
    begin
      QCMonthlyReport_Print_P:=TQCMonthlyReport_Print_P.create(self);
      QCMonthlyReport_Print_P.quickrep1.prepare;
      QCMonthlyReport_Print_P.PageN.caption:=inttostr(QCMonthlyReport_Print_P.quickrep1.QRPrinter.pagecount);
      QCMonthlyReport_Print_P.QRLabel21.Caption:=formatdatetime('yyyy/MM/dd',DTP1.Date)  ;
      QCMonthlyReport_Print_P.QRLabel22.Caption:=formatdatetime('yyyy/MM/dd',DTP2.Date)  ;
      QCMonthlyReport_Print_P.quickrep1.preview;
      QCMonthlyReport_Print_P.free;
    end;
  2:
    begin
      QCMonthlyReport_Print_A:=TQCMonthlyReport_Print_A.create(self);
      QCMonthlyReport_Print_A.quickrep1.prepare;
      QCMonthlyReport_Print_A.PageN.caption:=inttostr(QCMonthlyReport_Print_A.quickrep1.QRPrinter.pagecount);
      QCMonthlyReport_Print_A.QRLabel21.Caption:=formatdatetime('yyyy/MM/dd',DTP1.Date)  ;
      QCMonthlyReport_Print_A.QRLabel22.Caption:=formatdatetime('yyyy/MM/dd',DTP2.Date)  ;
      QCMonthlyReport_Print_A.quickrep1.preview;
      QCMonthlyReport_Print_A.free;
    end;
end;
    
end;

procedure TQCMonthlyReport.DTP1Change(Sender: TObject);
begin
CHG:=true;
end;

procedure TQCMonthlyReport.DTP2Change(Sender: TObject);
begin
CHG:=true;
end;

procedure TQCMonthlyReport.CBX4Change(Sender: TObject);
begin
CHG:=true;
end;

procedure TQCMonthlyReport.CBX3Change(Sender: TObject);
begin
CHG:=true;
end;

end.

