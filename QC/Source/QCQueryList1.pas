unit QCQueryList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,comobj,
  Dateutils,ehlibBDE, GridsEh, DBGridEh, DBCtrls, TeeProcs, TeEngine, Chart,
  TeeFunci, Series, DbChart;

type
  TQCQueryList = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGridEh;
    DS1: TDataSource;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    Query1: TQuery;
    Query2: TQuery;
    Query1depno: TStringField;
    Query1Depname: TStringField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1zwsm: TStringField;
    Query1yyy: TIntegerField;
    Query1mmm: TIntegerField;
    Query1ddd: TIntegerField;
    Query1qty: TIntegerField;
    Query1t7: TIntegerField;
    Query1t8: TIntegerField;
    Query1t9: TIntegerField;
    Query1t10: TIntegerField;
    Query1t11: TIntegerField;
    Query1t12: TIntegerField;
    Query1t13: TIntegerField;
    Query1t14: TIntegerField;
    Query1t15: TIntegerField;
    Query1t16: TIntegerField;
    Query1t17: TIntegerField;
    Query1t18: TIntegerField;
    Query1t19: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCQueryList: TQCQueryList;
  NDate:TDate;   //今天的日期
  NYear:Integer;
  NMonth:Integer;
  NDay:Integer;
  ayear,amonth:string;

implementation

uses main1, QCDailyData1;

{$R *.dfm}

procedure TQCQueryList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TQCQueryList.FormCreate(Sender: TObject);
begin
//取今天的日期
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate,');
    sql.add('       datepart(year,getdate()) as NYear,');
    sql.add('       datepart(month,getdate()) as NMonth, ');
    sql.add('       datepart(day,getdate()) as NDay');

    active:=true;
    NDate:=fieldbyname('NDate').Value;
    NYear:=fieldbyname('NYear').Value;
    NMonth:=fieldbyname('NMonth').Value;
    NDay:=fieldbyname('NDay').Value;
    active:=false;
    sql.Clear;
    active:=false;
  end;
DTP1.Date:=Ndate;
end;

procedure TQCQueryList.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    //sql.add('select * from qcr where qcr.SCDate = '''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');

    sql.add('select depno');
    sql.add('       ,Depname');
    sql.add('       ,YYBH');
    sql.add('       ,YWSM');
    sql.add('       ,zwsm');
    sql.add('       ,yyy');
    sql.add('       ,mmm');
    sql.add('       ,ddd');
    sql.add('       ,sum(qty) as qty');
    sql.add('       ,sum(t7) as t7');
    sql.add('       ,sum(t8) as t8');
    sql.add('       ,sum(t9) as t9');
    sql.add('       ,sum(t10) as t10');
    sql.add('       ,sum(t11) as t11');
    sql.add('       ,sum(t12) as t12');
    sql.add('       ,sum(t13) as t13');
    sql.add('       ,sum(t14) as t14');
    sql.add('       ,sum(t15) as t15');
    sql.add('       ,sum(t16) as t16');
    sql.add('       ,sum(t17) as t17');
    sql.add('       ,sum(t18) as t18');
    sql.add('       ,sum(t19) as t19');
    sql.add('from ( ');
    sql.add('select qcr.Depno,');
    sql.add('       BDepartment.Depname,');
    sql.add('       qcrd.YYBH,');
    sql.add('       qcblyy.ywsm,');
    sql.add('       qcblyy.zwsm,');
    sql.add('       qcrd.qty,');
    //sql.add('       qcr.userdate');
    
    sql.add('       datepart(year,qcr.userdate) as yyy,');
    sql.add('       datepart(month,qcr.userdate) as mmm,');
    sql.add('       datepart(day,qcr.userdate) as ddd');
    sql.add('       ,datepart(hh,qcr.userdate) as hour');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 7 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t7'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 8 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t8'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 9 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t9'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 10 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t10'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 11 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t11'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 12 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t12'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 13 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t13'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 14 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t14'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 15 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t15'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 16 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t16'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 17 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t17'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 18 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t18'+'''');
    sql.add('       ,(case datepart(hh,qcr.userdate) when 19 then isnull(qcrd.qty,0) else 0 end)  as '+''''+'t19'+'''');
    sql.add('from qcrd');
    sql.add('left join qcblyy on qcblyy.yybh=qcrd.yybh');
    sql.add('left join qcr on qcr.prono= qcrd.prono');
    sql.add('left join bdepartment on bdepartment.id=qcr.depno');
    //sql.add('where qcr.userdate = '''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');
    sql.add('where datepart(year,qcr.userdate)='+inttostr(NYear)+' and');
    sql.add('datepart(month,qcr.userdate)='+inttostr(NMonth)+'  and  ');
    sql.add('datepart(day,qcr.userdate)='+inttostr(NDay));
    //sql.add('datepart(day,qcr.userdate)=25 ');
    sql.add('    ) aaa');
    sql.add('group by depno,Depname,YYBH,YWSM,zwsm,yyy,mmm,ddd');
    //    sql.add('order by qcr.depno,qcr.userdate,qcrd.YYBH');







    active:=true;
  end;


end;

procedure TQCQueryList.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

//if Query1.Active then
//  begin
//    if Query1.recordcount=0 then
//      begin
//        showmessage('No record.');
//        abort;
//      end;
//  end
//  else
//    begin
//      showmessage('No record.');
//      abort;
//    end;
//
//try
//  eclApp:=CreateOleObject('Excel.Application');
//  WorkBook:=CreateOleObject('Excel.Sheet');
//except
//  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
//  Exit;
//end;
//
//try
//  WorkBook:=eclApp.workbooks.Add;
//  eclApp.Cells(1,1):='NO';
//  for   i:=1   to   Query1.fieldcount   do
//    begin
//      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
//    end;
//  Query1.First;
//  j:=2;
//  while   not  Query1.Eof   do
//    begin
//      eclApp.Cells(j,1):=j-1;
//      for   i:=1   to   Query1.fieldcount   do
//        begin
//          eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
//          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
//        end;
//      Query1.Next;
//      inc(j);
//    end;
//  eclapp.columns.autofit;
//  showmessage('Succeed.');
//  eclApp.Visible:=True;
//except
//  on   F:Exception   do
//    showmessage(F.Message);
//end;
end;

procedure TQCQueryList.FormDestroy(Sender: TObject);
begin
  QCDailyData:=nil;
end;

end.
