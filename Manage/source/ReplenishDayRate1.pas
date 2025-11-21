unit ReplenishDayRate1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,dateutils,comobj;

type
  TReplenishDayRate = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    DBGrideh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Detail1: TMenuItem;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Label1: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    OpenDialog: TOpenDialog;
    Button2: TButton;
    CheckBox1: TCheckBox;
    tmpQ: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGrideh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Detail1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    AppDir:String;
    OrderListExcel:Variant;
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
    Procedure ExportExternalExcel();
    { Private declarations }
  public
    ExcelSheetI:integer;
    { Public declarations }
  end;

var
  ReplenishDayRate: TReplenishDayRate;
  sdate,edate:TDate;

implementation

uses ExcelSheetDlg1;

{$R *.dfm}

procedure TReplenishDayRate.FormDestroy(Sender: TObject);
begin
  ReplenishDayRate:=nil;
end;

procedure TReplenishDayRate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin  
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#KCLLS'+''''+') is not null  ');
    sql.add('begin   drop table #KCLLS end   ');  
    sql.add('  if object_id('+''''+'tempdb..#DailyLL'+''''+') is not null  ');
    sql.add('begin   drop table #DailyLL end   ');
    execsql;
  end;
action:=cafree;
end;

procedure TReplenishDayRate.Button1Click(Sender: TObject);
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
    sql.add('      and BDepartment.DepName like '+''''+''+edit2.text+'%'+'''');
    sql.add('      and KCLLS.Qty<>0');
    if CheckBox1.Checked = false then
       begin
          sql.Add('and KCLL.CKBH <> ''VTXX'' and KCLL.CKBH <> ''VTXY'' and KCLL.CKBH <> ''VTXZ'' and KCLL.CKBH <> ''VTXW''');
       end;
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
    sql.add('group by #KCLLS.GSBH ');
   ///

    sql.Add('insert #DailyLL');
    sql.add('select A.Nday,A.GSBH,null as ACCUS,'+''''+' RepACC'+''''+' as SB from');;
    sql.add('( select * from #DailyLL where SB='+''''+' DelACC'+''''+' ) A');
    sql.add('Left join ( select * from #DailyLL where SB='+''''+' RepACC'+''''+' ) B on A.Nday=B.NDay and A.GSBH=B.GSBH ');
    sql.add('where B.Nday is null');

    //全廠每日補料金額
    sql.Add('insert #DailyLL');
    sql.add('select #DailyLL.Nday,'+''''+'  zTotal'+''''+' as GSBH,sum(ACCUS) as ACCUS,#DailyLL.SB');
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
     sql.add(',sum(case  when #DailyLL.NDay='+''''+'32'+'''');
     sql.add(' then round(#DailyLL.ACCUS,2) end) as '+''''+'Total'+'''');
     for i:=1 to c do
       begin
         sql.add(',sum(case  when #DailyLL.NDay='+''''+inttostr(i)+'''');
         sql.add(' then round(#DailyLL.ACCUS,2)  end) as '+''''+inttostr(i)+'''');
       end;
     sql.add('from #DailyLL ');
     sql.add('group by #DailyLL.GSBH ,#DailyLL.SB ');
     sql.add('order by #DailyLL.GSBH ,#DailyLL.SB ');
     active:=true;
  end;
end;

procedure TReplenishDayRate.Query1AfterOpen(DataSet: TDataSet);
var i:word;
begin
 with DBGrideh1 do
   begin
     columns[0].Width:=60;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='廠區|Factory';
     columns[1].Width:=50;
     columns[1].title.caption:='類別|SB';
     columns[2].Width:=80;
     columns[2].title.caption:='合計|Total';
     columns[2].displayformat:='##,#0.00' ;
     for i:=3 to query1.FieldCount-1 do
       begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0.00' ;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
           begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
           end;  
         columns[i].Width:=60;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
       end;
   end;

end;

procedure TReplenishDayRate.DBGrideh1DrawColumnCell(Sender: TObject;
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

procedure TReplenishDayRate.FormCreate(Sender: TObject);
var  myYear, myMonth, myDay : Word;
  i,j,k:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DecodeDate(Date(), myYear, myMonth, myDay);
  with tmpQ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    CBX1.Items.Add('');
    for i:=tmpQ.fieldbyname('Oldyear').value to  tmpQ.fieldbyname('Newyear').value  do
    begin
      CBX1.Items.Add(inttostr(i));
      next;
    end;
   active:=false;
  end;
  CBX1.ItemIndex:=6;
  for j:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[j])=myMonth then
    begin
      CBX2.ItemIndex:=j;
      break;
    end;
  end; 
  AppDir:=ExtractFilePath(Application.ExeName);
end;


procedure TReplenishDayRate.Detail1Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
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

procedure TReplenishDayRate.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',CBX1.text+'/'+CBX2.text]);
end;

procedure TReplenishDayRate.ExportExternalExcel();
var i,j,excelcount: integer;
    eclApp,WorkBook:olevariant;
    k:integer;
    tmpStr:string;
    Factory:string;
    Factory_S,Factory_E:integer;
begin
if OpenDialog.Execute()=true then
    begin
    try
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
      OrderListExcel.WorkSheets[ExcelSheetI].Activate;
      for   i:=2   to   Query1.fieldCount -1   do
      begin
          OrderListExcel.Cells(3,i+1):=Query1.fields[i].FieldName;
      end;
      Query1.First;
      j:=4;
      while   not   Query1.Eof   do
      begin
        for   k:=2   to  Query1.fieldcount-1  do
        begin
          OrderListExcel.Cells(j,k+1):=Query1.Fields[k].Value;
        end;
        OrderListExcel.Cells(2,5):=CBX1.Text+'年度'+CBX2.Text+'月份產量達成狀況明細表';
        OrderListExcel.Cells(j,1):=Query1.FieldByName('Factory').AsString;
        OrderListExcel.Cells(j,2):=Query1.FieldByName('SB').AsString;
        if  Query1.FieldByName('SB').Value=' DelACC' then
          OrderListExcel.Cells(j,2):='原材料領用';
        if  Query1.FieldByName('SB').Value=' RepACC' then
          OrderListExcel.Cells(j,2):='補料金額';
        if  Query1.FieldByName('SB').Value='Person%' then
          OrderListExcel.Cells(j,2):='補料%';
        if  Query1.FieldByName('Factory').Value='  zTotal' then
        begin
          OrderListExcel.Cells(j,1):='全廠合計';
          OrderListExcel.Range[OrderListExcel.Cells[j,1],OrderListExcel.Cells[j,1]].interior.color:=clyellow;
        end;
        Query1.Next;
        OrderListExcel.Rows[j].RowHeight:=20;
        inc(j);
        Factory:='';
        Factory_S:=0;
        Factory_E:=0;
        for k:=4 to Query1.RecordCount+4 do
        begin
         tmpStr:=OrderListExcel.Cells[k,1];
         if Factory='' then
         begin
          Factory_S:=k;
          Factory:=tmpStr;
         end;
        if(( tmpStr<>Factory) and (Factory<>'')) then
        begin
          Factory_E:=k-1;
          Factory:= OrderListExcel.Cells[k,1];
          OrderListExcel.Range[OrderListExcel.Cells[Factory_S+2,1],OrderListExcel.Cells[Factory_E,1]].merge;
          OrderListExcel.Range[OrderListExcel.Cells[Factory_S+2,1],OrderListExcel.Cells[Factory_E,1]].Font.Bold:=true;
          Factory_S:=k;
        end;
       end;
      end;
      for k:=1 to 4 do
        begin
          OrderListExcel.range[OrderListExcel.cells[3,1],OrderListExcel.cells[j-1,i]].borders[k].linestyle:=1;
        end;
        showmessage('Succeed.');
        OrderListExcel.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
  end;
end;

procedure TReplenishDayRate.ExportFormatExcel();
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    tmpStr:string;
    Factory:string;
    Factory_S,Factory_E:integer;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.23.9\liy_erp\Additional\Manage_SN225.xls'),Pchar(AppDir+'Additional\Manage_SN225.xls'),false);
   if FileExists(AppDir+'Additional\Manage_SN225.xls') then
   begin
    if  Query1.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
      eclApp.WorkBooks.Open(AppDir+'Additional\Manage_SN225.xls');
      eclApp.Cells(2,5):=CBX1.Text+'年度'+CBX2.Text+'月份產量達成狀況明細表';
      for   i:=2   to   Query1.fieldCount -1   do
      begin
          eclApp.Cells(3,i+1):=Query1.fields[i].FieldName;
      end;
      Query1.First;
      j:=4;
      while   not   Query1.Eof   do
      begin
        for   k:=2   to  Query1.fieldcount-1  do
        begin
          eclApp.Cells(j,k+1):=Query1.Fields[k].Value;
        end;
        eclApp.Cells(j,1):=Query1.FieldByName('Factory').AsString;
        eclApp.Cells(j,2):=Query1.FieldByName('SB').AsString;
        if  Query1.FieldByName('SB').Value=' DelACC' then
          eclApp.Cells(j,2):='原材料領用';
        if  Query1.FieldByName('SB').Value=' RepACC' then
          eclApp.Cells(j,2):='補料金額';
        if  Query1.FieldByName('SB').Value='Person%' then
          eclApp.Cells(j,2):='補料%';
        if  Query1.FieldByName('Factory').Value='  zTotal' then
        begin
          eclApp.Cells(j,1):='全廠|合計';
          eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,1]].interior.color:=clyellow;
        end;
        Query1.Next;
        eclApp.Rows[j].RowHeight:=20;
        inc(j);
        Factory:='';
        Factory_S:=0;
        Factory_E:=0;
        for k:=4 to Query1.RecordCount+4 do
        begin
         tmpStr:=eclApp.Cells[k,1];
         if Factory='' then
         begin
         Factory_S:=k;
         Factory:=tmpStr;
         end;
        if(( tmpStr<>Factory) and (Factory<>'')) then
        begin
          Factory_E:=k-1;
          Factory:= eclApp.Cells[k,1];
          eclApp.Range[eclApp.Cells[Factory_S+2,1],eclApp.Cells[Factory_E,1]].merge;
          eclApp.Range[eclApp.Cells[Factory_S+2,1],eclApp.Cells[Factory_E,1]].Font.Bold:=true;
          Factory_S:=k;
        end;
       end;
        for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[3,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
          end;
      end;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
    end;
  end;
end;

procedure TReplenishDayRate.ExportDefaultExcel();
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin

  if Query1.Active then
  begin
    if Query1.recordcount=0 then
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
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        Query1.Next;
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

procedure TReplenishDayRate.Button2Click(Sender: TObject);
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

end.
