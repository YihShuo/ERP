unit MaterialCostRea1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,comobj;

type
  TMaterialCostRea = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    CBX4: TComboBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Print1: TMenuItem;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1FYLB: TStringField;
    Query1ACCUS: TFloatField;
    Query1MEMO: TStringField;
    Query1CMEMO: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1YYBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialCostRea: TMaterialCostRea;

implementation

uses main1, MaterialCostRea_Det1;

{$R *.dfm}

procedure TMaterialCostRea.FormDestroy(Sender: TObject);
begin
MaterialCostRea:=nil;
end;

procedure TMaterialCostRea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin   {
with Qtemp  do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#ReaUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #ReaUSPrice end   ');
    execsql;
    active:=false;
  end; }
action:=cafree;
end;

procedure TMaterialCostRea.FormCreate(Sender: TObject);
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
    {sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#ReaUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #ReaUSPrice end   ');
    sql.add('declare @HL int ');
    sql.add('set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMONTH DESC,HLDAY DESC)  ');
    sql.add('select CLDH as CLBH ,case when USPrice is null then round(convert(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice');
    sql.add('into #ReaUSPrice from (select CLZL.CLDH,');
    sql.add('                      (select top 1 USPrice from KCRKS');
    sql.add('                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))  ');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))');
    sql.add('                         order by USERDATE  desc)  as USPrice,');
    sql.add('                      (select top 1 VNPrice from KCRKS  ');
    sql.add('                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))    ');
    sql.add('                         order by USERDATE  desc)  as VNPrice');
    sql.add('from CLZL ) CLZL  ');
    sql.add('where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  ');
    sql.Add(' order by CLZL.CLDH  ');
    execsql;
    active:=false;   }
  end;
DTP1.date:=date-7;
DTP2.date:=date-1;

end;

procedure TMaterialCostRea.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select FYACC.FYLB,sum(FYACC.ACCUS) as ACCUS,CLLBFY.MEMO,CLLBFY.CMEMO,SCBLYY.YWSM,SCBLYY.ZWSM,FYACC.YYBH  ');
    sql.add('from (select LL.CLBH,LL.FYLB,sum(LL.Qty*CWDJ.USPrice) as ACCUS,LL.YYBH');
    sql.add('      from (select KCLLS.YYBH,KCLL.DepID,BDepartment.DepName,KCLLS.Qty,CLLBFYS.FYLB,KCLL.CFMDate,KCLLS.CLBH');
    sql.add('            from KCLLS');
    sql.add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('            left join BDepartment on BDepartment.ID=KCLL.DepID');
    //sql.add('            left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('            left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('            where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                  and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                  and BDepartment.DepName like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('                  and KCLLS.Qty<>0');
    sql.add('                  and BDepartment.GSBH='+''''+CBX4.Text+'''');
    sql.add('            ) LL  ');
    sql.add('      left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                        and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                        and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('      group by LL.CLBH,LL.FYLB,CWDJ.USPrice,LL.YYBH) FYACC');
    sql.add('left join CLLBFY on CLLBFY.LBBH=FYACC.FYLB  and CLLBFY.XH='+''''+'01'+'''');
    sql.add('left join SCBLYY on SCBLYY.YYBH=FYACC.YYBH ');


    sql.add('group by FYACC.FYLB,CLLBFY.MEMO,CLLBFY.CMEMO,SCBLYY.YWSM,SCBLYY.ZWSM,FYACC.YYBH');
    sql.add('order by FYACC.FYLB,FYACC.YYBH');
    active:=true;
  end;
end;

procedure TMaterialCostRea.Print1Click(Sender: TObject);
begin
printDBgrideh1.Preview;
end;

procedure TMaterialCostRea.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TMaterialCostRea.Detail1Click(Sender: TObject);
begin
MaterialCostRea_Det:=TMaterialCostRea_Det.create(self);
MaterialCostRea_Det.show;
end;

procedure TMaterialCostRea.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

end.
