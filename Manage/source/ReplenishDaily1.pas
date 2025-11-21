unit ReplenishDaily1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,comobj,dateutils;

type
  TReplenishDaily = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    DBGrideh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Detail1: TMenuItem;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure DBGrideh1EditButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDaily: TReplenishDaily;

implementation

uses main1,ReplenishDaily_Det1;

{$R *.dfm}

procedure TReplenishDaily.FormDestroy(Sender: TObject);
begin
  ReplenishDaily:=nil;
end;

procedure TReplenishDaily.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReplenishDaily.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;   
    DTP1.date:=fieldbyname('NDate').value-7;
    DTP2.date:=fieldbyname('NDate').value-1;
    active:=false;
  end;

end;

procedure TReplenishDaily.Button1Click(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#DailyKCLLS'+''''+') is not null  ');
    sql.add('begin   drop table #DailyKCLLS end   ');
    sql.add('select  IsNull(BDepartment.Xuong,BDepartment.GSBH) as GSBH');
    sql.add('       ,isnull(KCLLS.YYBH,'''') as YYBH,KCLL.DepID,KCLLS.CLBH,KCLLS.Qty,KCLLS.LLNO');
    sql.add('       ,isnull(KCLLS.BLSB,'''') as BLSB,convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) as CFMDate,KCLLS.SCBH');
    sql.add('into #DailyKCLLS from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('      and KCLL.CFMID<>''NO''');
    sql.add('      and BDepartment.DepName like ''%'+edit2.text+'%''');
    sql.add('      and KCLLS.Qty<>0');
    execsql;
    active:=false;
    sql.Clear;
    sql.add('select GSBH from (');
    sql.add('select  IsNull(BDepartment.Xuong,BDepartment.GSBH) as GSBH');
    sql.add('from KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('      and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('      and BDepartment.DepName like ''%'+edit2.text+'%''');
    sql.add('      and KCLLS.Qty<>0');
    sql.add('      and KCLLS.BLSB=''Y'' ');
    sql.add(') GS ');
    sql.add('Group by GSBH ');
    sql.add('order by GSBH ');
    active:=true;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select FYACC.CFMDate,FYACC.SB ');
    while not QTemp.eof do
    begin
         sql.add('      ,sum(case  when FYACC.GSBH='''+Qtemp.fieldbyname('GSBH').value+'''');
         sql.add('      then isnull(FYACC.ACCUS,0) else 0  end) as '''+Qtemp.fieldbyname('GSBH').value+'''');
         QTemp.Next;
    end;
    sql.add('      ,sum(case  when FYACC.GSBH='+''''+'zTotal'+'''');
    sql.add('      then isnull(FYACC.ACCUS,0) else 0  end) as '+''''+'zTotal'+'''');
    //各廠每日領料額
    sql.add('from (select #DailyKCLLS.CFMDate,#DailyKCLLS.GSBH,sum(#DailyKCLLS.Qty*CWDJ.USPrice) as ACCUS,''All'' as SB ');
    sql.add('      from #DailyKCLLS   ');
    sql.add('      left join CWDJ on CWDJ.CLBH=#DailyKCLLS.CLBH ');
    sql.add('                        and CWDJ.DJYear=convert(varchar,datepart(yyyy,#DailyKCLLS.CFMDate)) ');
    sql.add('                        and CWDJ.DJMonth=convert(varchar,datepart(MM,#DailyKCLLS.CFMDate)) ');
    //sql.add('      where #DailyKCLLS.BLSB='+''''+'Y'+'''');
    sql.add('      group by  #DailyKCLLS.CFMDate,#DailyKCLLS.GSBH ');
    //各廠每日補料額
    sql.Add('      union all');
    sql.add('      select #DailyKCLLS.CFMDate,#DailyKCLLS.GSBH,sum(#DailyKCLLS.Qty*CWDJ.USPrice) as ACCUS,''Rep'' as SB ');
    sql.add('      from #DailyKCLLS   ');
    sql.add('      left join CWDJ on CWDJ.CLBH=#DailyKCLLS.CLBH ');
    sql.add('                        and CWDJ.DJYear=convert(varchar,datepart(yyyy,#DailyKCLLS.CFMDate)) ');
    sql.add('                        and CWDJ.DJMonth=convert(varchar,datepart(MM,#DailyKCLLS.CFMDate)) ');
    sql.add('      where #DailyKCLLS.BLSB=''Y''');
    sql.add('      group by  #DailyKCLLS.CFMDate,#DailyKCLLS.GSBH ');
    //全公司每日領料金額
    sql.Add('      union all');
    sql.add('      select #DailyKCLLS.CFMDate,''zTotal'' as GSBH,sum(#DailyKCLLS.Qty*CWDJ.USPrice) as ACCUS,''All'' as SB ');
    sql.add('      from #DailyKCLLS   ');
    sql.add('      left join CWDJ on CWDJ.CLBH=#DailyKCLLS.CLBH ');
    sql.add('                        and CWDJ.DJYear=convert(varchar,datepart(yyyy,#DailyKCLLS.CFMDate)) ');
    sql.add('                        and CWDJ.DJMonth=convert(varchar,datepart(MM,#DailyKCLLS.CFMDate)) ');
    //sql.add('      where #DailyKCLLS.BLSB='+''''+'Y'+'''');
    sql.add('      group by  #DailyKCLLS.CFMDate ');
    //全公司每日補料金額
    sql.Add('      union all');
    sql.add('      select #DailyKCLLS.CFMDate,'+''''+'zTotal'+''''+' as GSBH,sum(#DailyKCLLS.Qty*CWDJ.USPrice) as ACCUS,''Rep'' as SB ');
    sql.add('      from #DailyKCLLS   ');
    sql.add('      left join CWDJ on CWDJ.CLBH=#DailyKCLLS.CLBH ');
    sql.add('                        and CWDJ.DJYear=convert(varchar,datepart(yyyy,#DailyKCLLS.CFMDate)) ');
    sql.add('                        and CWDJ.DJMonth=convert(varchar,datepart(MM,#DailyKCLLS.CFMDate)) ');
    sql.add('      where #DailyKCLLS.BLSB=''Y''');
    sql.add('      group by  #DailyKCLLS.CFMDate ) FYACC');

    sql.add('group by FYACC.CFMDate,FYACC.SB');
    sql.add('order by FYACC.CFMDate,FYACC.SB');
    active:=true;
  end;

end;

procedure TReplenishDaily.Print1Click(Sender: TObject);
begin
  printDBgrideh1.Preview;
end;

procedure TReplenishDaily.Detail1Click(Sender: TObject);
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
  end else
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

procedure TReplenishDaily.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

procedure TReplenishDaily.DBGrideh1EditButtonClick(Sender: TObject);
begin

  ReplenishDaily_Det:=TReplenishDaily_Det.create(self);
  with ReplenishDaily_Det.query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select #DailyKCLLS.*,CLZL.YWPM,CLZL.ZWPM,BDepartment.DepName,CLZL.DWBH,CWDJ.USPrice');
    sql.add('       ,#DailyKCLLS.Qty*CWDJ.USPrice as ACCUS,SCBLYY.YWSM,SCBLYY.ZWSM ');
    sql.add('from #DailyKCLLS');
    sql.add('left join CLZL on CLZL.CLDH=#DailyKCLLS.CLBH');
    sql.add('left join Bdepartment on BDepartment.ID=#DailyKCLLS.DepID');
    sql.add('left join SCBLYY on SCBLYY.YYBH=#DailyKCLLS.YYBH ');
    sql.add('left join CWDJ on CWDJ.CLBH=#DailyKCLLS.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#DailyKCLLS.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#DailyKCLLS.CFMDate)) ');
    sql.add('where convert(smalldatetime,convert(varchar,#DailyKCLLS.CFMDate,111)) ='+''''+formatdatetime('yyyy/MM/dd',query1.fieldbyname('CFMDate').value)+'''');
    sql.add('      and IsNull(BDepartment.Xuong,BDepartment.GSBH)='''+DBGrideh1.selectedfield.fieldname+''' ');
    if Query1.fieldbyname('SB').value='Rep' then
    begin
        sql.add('      and #DailyKCLLS.BLSB=''Y'' ');
    end;
    sql.add('order by #DailyKCLLS.GSBH,BDepartment.DepName,#DailyKCLLS.CLBH ');
    active:=true;
  end;
  ReplenishDaily_Det.show;
end;

procedure TReplenishDaily.Button2Click(Sender: TObject);
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
  end else
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

procedure TReplenishDaily.Query1AfterOpen(DataSet: TDataSet);
var i:word;
begin
   with DBGrideh1 do
   begin
     Tfloatfield(Query1.Fields[0]).displayformat:='yyyy/MM/dd' ;
     columns[0].title.caption:='補料日期|Date';
     columns[0].Width:=80;
     columns[1].Width:=50;
     columns[1].title.caption:='類別|SB';
     for i:=2 to query1.FieldCount-2 do
     begin
       Tfloatfield(query1.Fields[i]).displayformat:='##,#0.00' ;
       columns[i].Width:=80;
       columns[i].Title.Caption:='各廠區補料及領料額|'+columns[i].Title.Caption;
       Columns[i].buttonstyle:=cbsellipsis;
     end;
     columns[query1.FieldCount-1].Width:=100;
     Tfloatfield(query1.Fields[query1.FieldCount-1]).displayformat:='##,#0.00' ;
     columns[query1.FieldCount-1].title.caption:='合計|'+Query1.Fields[query1.FieldCount-1].FieldName;
     Columns[query1.FieldCount-1].buttonstyle:=cbsnone;
   end;
end;

end.
