unit ReplenishDayRatebyorderp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,comobj,dateutils;

type
  TReplenishDayRatebyorder = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DBGrideh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Detail1: TMenuItem;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGrideh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrideh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDayRatebyorder: TReplenishDayRatebyorder;
  sdate,edate:TDate;
implementation

{$R *.dfm}

procedure TReplenishDayRatebyorder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReplenishDayRatebyorder.FormDestroy(Sender: TObject);
begin
  ReplenishDayRatebyorder:=nil;
end;

procedure TReplenishDayRatebyorder.Button1Click(Sender: TObject);
var a,b,c :word;
i:word;
begin
  a:=strtoint(CBX1.text);
  b:=strtoint(CBX2.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);
  decodedate(edate,a,b,c);
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#KCLLS'+''''+') is not null  ');
    sql.add('begin   drop table #KCLLS end   ');
    sql.add('  if object_id('+''''+'tempdb..#DailyLL'+''''+') is not null  ');
    sql.add('begin   drop table #DailyLL end   ');
    sql.add('select substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) as GSBH');
    sql.add('       ,isnull(KCLLS.YYBH,'+''''+''+''''+') as YYBH,KCLL.DepID,KCLLS.Qty,CLLBFYS.FYLB,');
    sql.add('       KCLLS.CLBH,isnull(KCLLS.BLSB,'+''''+''+''''+') as BLSB,datepart(Day,KCLL.CFMDate) as NDay,KCLL.CFMDate');
    sql.add('into #KCLLS from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    //sql.add('left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('         '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and KCLLS.Qty<>0');
    //各廠每日的補料金額
    sql.add('select #KCLLS.Nday,#KCLLS.GSBH,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'+''''+' RepACC'+''''+' as SB');
    sql.add('into #DailyLL from #KCLLS ');
    sql.add('left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('where #KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('group by #KCLLS.Nday,#KCLLS.GSBH ');
    //各廠總補料金額
    sql.Add('insert #DailyLL');
    sql.add('select 32 as NDay,#KCLLS.GSBH,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'+''''+' RepACC'+''''+' as SB');
    sql.add('from #KCLLS');
    sql.add('left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('where #KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('group by #KCLLS.GSBH  ');
    //各廠每日的領料金額
    sql.Add('insert #DailyLL');
    sql.add('select #KCLLS.Nday,#KCLLS.GSBH,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'+''''+' DelACC'+''''+' as SB');;
    sql.add('from #KCLLS ');
    sql.add('left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    //sql.add('where KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('group by #KCLLS.Nday,#KCLLS.GSBH ');
    //各廠總領料金額
    sql.Add('insert #DailyLL');
    sql.add('select 32 as NDay,#KCLLS.GSBH,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'+''''+' DelACC'+''''+' as SB');;
    sql.add('from #KCLLS');
    sql.add('left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    //sql.add('where KCLLS.BLSB='+''''+'Y'+'''');
    sql.add('group by #KCLLS.GSBH ');
    //全廠每日補料金額
    sql.Add('insert #DailyLL');
    sql.add('select #DailyLL.Nday,'+''''+'zTotal'+''''+' as GSBH,sum(ACCUS) as ACCUS,#DailyLL.SB');
    sql.add('from #DailyLL');
    sql.add('group by #DailyLL.Nday ,#DailyLL.SB');
    //補料所占百分比
    sql.add('insert #DailyLL ');
    sql.add('select LL.NDay,LL.GSBH,case when LL.ACCUS<>0 then isnull(BL.ACCUS,0)/LL.ACCUS*100 else 0 end as ACCUS, '+''''+'Person%'+''''+' as SB');
    sql.add('from (select NDay,GSBH,ACCUS from #DailyLL ');
    sql.add('      where #DailyLL.SB='+''''+' DelACC'+''''+') LL');
    sql.add('left join (select NDay,GSBH,ACCUS from #DailyLL ');
    sql.add('           where #DailyLL.SB='+''''+' RepACC'+'''');
    sql.add('           ) BL  on LL.GSBH=BL.GSBH and LL.NDay=BL.NDay');
    sql.add('group by  LL.NDay,LL.GSBH,BL.ACCUS,LL.ACCUS');
    execsql;
  end;
  with query1 do
  begin
     active:=false;
     sql.clear;
     sql.add('select #DailyLL.GSBH as Factory,#DailyLL.SB  ');
     for i:=1 to c do
       begin
         sql.add(',sum(case  when #DailyLL.NDay='+''''+inttostr(i)+'''');
         sql.add(' then round(#DailyLL.ACCUS,2)  end) as '+''''+inttostr(i)+'''');
       end;
     sql.add(',sum(case  when #DailyLL.NDay='+''''+'32'+'''');
     sql.add(' then round(#DailyLL.ACCUS,2) end) as '+''''+'32'+'''');
     sql.add('from #DailyLL ');
     sql.add('group by #DailyLL.GSBH ,#DailyLL.SB ');
     sql.add('order by #DailyLL.GSBH ,#DailyLL.SB ');
     active:=true;
  end;
end;

procedure TReplenishDayRatebyorder.Query1AfterOpen(DataSet: TDataSet);
var i:word;
begin
 with DBGrideh1 do
   begin
     columns[0].Width:=40;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='廠區|Factory';
     columns[1].Width:=50;
     columns[1].title.caption:='類別|SB';
     for i:=2 to query1.FieldCount-2 do
       begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0.00' ;
         //columns[i].title.font.size:=10;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
           begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
           end;
         columns[i].Width:=60;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
         //columns[i].footer.ValueType := fvtSum;
       end;
     columns[query1.FieldCount-1].Width:=60;
     Tfloatfield(query1.Fields[query1.FieldCount-1]).displayformat:='##,#0.00' ;
     //columns[query1.FieldCount-1].font.style:=[fsbold];
     columns[query1.FieldCount-1].title.caption:='合計|Total';
     //columns[query1.FieldCount-1].footer.ValueType := fvtSum;
   end;
end;

procedure TReplenishDayRatebyorder.DBGrideh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  var i:integer;
begin
  if trim(query1.FieldByName('SB').value)='Person%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    if (query1.FieldByName('Factory').asstring='A1') or (query1.FieldByName('Factory').asstring='A2')   then
      begin
        if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
        or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
        or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
        or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
        or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
        or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
        or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')  or (column.field.fieldname='32')
        then
        if (Column.Field.value<0.5)   then
          begin
            DBGrideh1.Canvas.Font.Color   :=   clblue;
            DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
          end
          else
            begin
              DBGrideh1.Canvas.Font.Color   :=   clred;
              DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
            end;
      end
      else
        begin
          if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
          or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
          or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
          or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
          or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
          or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
          or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
          or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')  or (column.field.fieldname='32')
          then
          if (Column.Field.value<0.8)   then
            begin
              DBGrideh1.Canvas.Font.Color   :=   clblue;
              DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
            end
            else
              begin
                DBGrideh1.Canvas.Font.Color   :=   clred;
                DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
              end;
      end;
  end;

end;

procedure TReplenishDayRatebyorder.DBGrideh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if trim(query1.FieldByName('SB').value)='Person%' then
  begin
    if  (query1.FieldByName('Factory').asstring='A1') or (query1.FieldByName('Factory').asstring='A2')   then
      begin
        if query1.FieldByName('Total').value>=0.5 then
          begin
            dbgrideh1.canvas.font.Color:=clred;
          end;
      end
      else
        begin
          if query1.FieldByName('Total').value>=0.8   then
            begin
              dbgrideh1.canvas.font.Color:=clred;
            end;
        end;
  end;
end;

procedure TReplenishDayRatebyorder.PrintDBGridEh1BeforePrint(
  Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',CBX1.text+'/'+CBX2.text]);
end;

procedure TReplenishDayRatebyorder.Print1Click(Sender: TObject);
begin
  PrintDBGrideh1.Preview;
end;

procedure TReplenishDayRatebyorder.Detail1Click(Sender: TObject);
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

end.

