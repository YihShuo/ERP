unit MonthlyReportShoeB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, comobj;

type
  TMonthlyReportShoeB = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    cbYear: TComboBox;
    btQuery: TButton;
    btExcel: TButton;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1MONTH: TStringField;
    Query1BRAND: TStringField;
    Query1PO: TStringField;
    Query1BDEDesigner010K: TIntegerField;
    Query1BDEDesigner015K: TIntegerField;
    Query1BDEDesigner020K: TIntegerField;
    Query1BDEDesigner025K: TIntegerField;
    Query1BDEDesigner030K: TIntegerField;
    Query1BDEDesigner035K: TIntegerField;
    Query1BDEDesigner040K: TIntegerField;
    Query1BDEDesigner045K: TIntegerField;
    Query1BDEDesigner050K: TIntegerField;
    Query1BDEDesigner055K: TIntegerField;
    Query1BDEDesigner060K: TIntegerField;
    Query1BDEDesigner065K: TIntegerField;
    Query1BDEDesigner070K: TIntegerField;
    Query1BDEDesigner075K: TIntegerField;
    Query1BDEDesigner080K: TIntegerField;
    Query1BDEDesigner085K: TIntegerField;
    Query1BDEDesigner090K: TIntegerField;
    Query1BDEDesigner095K: TIntegerField;
    Query1BDEDesigner100K: TIntegerField;
    Query1BDEDesigner105K: TIntegerField;
    Query1BDEDesigner110K: TIntegerField;
    Query1BDEDesigner115K: TIntegerField;
    Query1BDEDesigner120K: TIntegerField;
    Query1BDEDesigner125K: TIntegerField;
    Query1BDEDesigner130K: TIntegerField;
    Query1BDEDesigner135K: TIntegerField;
    Query1BDEDesigner01: TIntegerField;
    Query1BDEDesigner015: TIntegerField;
    Query1BDEDesigner02: TIntegerField;
    Query1BDEDesigner025: TIntegerField;
    Query1BDEDesigner03: TIntegerField;
    Query1BDEDesigner035: TIntegerField;
    Query1BDEDesigner04: TIntegerField;
    Query1BDEDesigner045: TIntegerField;
    Query1BDEDesigner05: TIntegerField;
    Query1BDEDesigner055: TIntegerField;
    Query1BDEDesigner06: TIntegerField;
    Query1BDEDesigner065: TIntegerField;
    Query1BDEDesigner07: TIntegerField;
    Query1BDEDesigner075: TIntegerField;
    Query1BDEDesigner08: TIntegerField;
    Query1BDEDesigner085: TIntegerField;
    Query1BDEDesigner09: TIntegerField;
    Query1BDEDesigner095: TIntegerField;
    Query1BDEDesigner10: TIntegerField;
    Query1BDEDesigner105: TIntegerField;
    Query1BDEDesigner11: TIntegerField;
    Query1BDEDesigner115: TIntegerField;
    Query1BDEDesigner12: TIntegerField;
    Query1BDEDesigner125: TIntegerField;
    Query1BDEDesigner13: TIntegerField;
    Query1BDEDesigner135: TIntegerField;
    Query1BDEDesigner14: TIntegerField;
    Query1TOTAL: TIntegerField;
    DataSource1: TDataSource;
    Label3: TLabel;
    cbMonth: TComboBox;
    Label4: TLabel;
    BC: TComboBox;
    procedure btQueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ExportPlanFormatData();
    procedure ExportDefaultData();
  public
    { Public declarations }
  end;

var
  MonthlyReportShoeB: TMonthlyReportShoeB;

implementation
  uses main1;
{$R *.dfm}

procedure TMonthlyReportShoeB.btQueryClick(Sender: TObject);
var ShoeName:string;
begin
  if cbyear.Text='' then
  begin
    showmessage('Please select year first!');
    abort;
  end;
  //20141017 BC«~Åã¥Ü
  if BC.ItemIndex=0 then
    ShoeName:='shoeB'
  else
    ShoeName:='shoeC';
  //
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select ''MONTH''=cast(year(scdate) as varchar)+'' - ''+ cast(month(scdate) as varchar),BRAND=kfzl.kfjc,PO=ddzl.KHPO,');
    sql.add('''01''= sum(case when wopr.cc=''01'' then '+ShoeName+' else NULL end),');
    sql.add('''01.5''= sum(case when wopr.cc=''01.5'' then '+ShoeName+' else NULL end),');
    sql.add('''02''= sum(case when wopr.cc=''02'' then '+ShoeName+' else NULL end),');
    sql.add('''02.5''= sum(case when wopr.cc=''02.5'' then '+ShoeName+' else NULL end),');
    sql.add('''03''= sum(case when wopr.cc=''03'' then '+ShoeName+' else NULL end),');
    sql.add('''03.5''= sum(case when wopr.cc=''03.5'' then '+ShoeName+' else NULL end),');
    sql.add('''04''= sum(case when wopr.cc=''04'' then '+ShoeName+' else NULL end),');
    sql.add('''04.5''= sum(case when wopr.cc=''04.5'' then '+ShoeName+' else NULL end),');
    sql.add('''05''= sum(case when wopr.cc=''05'' then '+ShoeName+' else NULL end),');
    sql.add('''05.5''= sum(case when wopr.cc=''05.5'' then '+ShoeName+' else NULL end),');
    sql.add('''06''= sum(case when wopr.cc=''06'' then '+ShoeName+' else NULL end),');
    sql.add('''06.5''= sum(case when wopr.cc=''06.5'' then '+ShoeName+' else NULL end),');
    sql.add('''07''= sum(case when wopr.cc=''07'' then '+ShoeName+' else NULL end),');
    sql.add('''07.5''= sum(case when wopr.cc=''07.5'' then '+ShoeName+' else NULL end),');
    sql.add('''08''= sum(case when wopr.cc=''08'' then '+ShoeName+' else NULL end),');
    sql.add('''08.5''= sum(case when wopr.cc=''08.5'' then '+ShoeName+' else NULL end),');
    sql.add('''09''= sum(case when wopr.cc=''09'' then '+ShoeName+' else NULL end),');
    sql.add('''09.5''= sum(case when wopr.cc=''09.5'' then '+ShoeName+' else NULL end),');
    sql.add('''10''= sum(case when wopr.cc=''10'' then '+ShoeName+' else NULL end),');
    sql.add('''10.5''= sum(case when wopr.cc=''10.5'' then '+ShoeName+' else NULL end),');
    sql.add('''11''= sum(case when wopr.cc=''11'' then '+ShoeName+' else NULL end),');
    sql.add('''11.5''= sum(case when wopr.cc=''11.5'' then '+ShoeName+' else NULL end),');
    sql.add('''12''= sum(case when wopr.cc=''12'' then '+ShoeName+' else NULL end),');
    sql.add('''12.5''= sum(case when wopr.cc=''12.5'' then '+ShoeName+' else NULL end),');
    sql.add('''13''= sum(case when wopr.cc=''13'' then '+ShoeName+' else NULL end),');
    sql.add('''13.5''= sum(case when wopr.cc=''13.5'' then '+ShoeName+' else NULL end),');
    sql.add('''14''= sum(case when wopr.cc=''14'' then '+ShoeName+' else NULL end),');
    sql.add('''01.0K''= sum(case when wopr.cc=''01.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''01.5K''= sum(case when wopr.cc=''01.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''02.0K''= sum(case when wopr.cc=''02.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''02.5K''= sum(case when wopr.cc=''02.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''03.0K''= sum(case when wopr.cc=''03.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''03.5K''= sum(case when wopr.cc=''03.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''04.0K''= sum(case when wopr.cc=''04.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''04.5K''= sum(case when wopr.cc=''04.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''05.0K''= sum(case when wopr.cc=''05.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''05.5K''= sum(case when wopr.cc=''05.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''06.0K''= sum(case when wopr.cc=''06.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''06.5K''= sum(case when wopr.cc=''06.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''07.0K''= sum(case when wopr.cc=''07.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''07.5K''= sum(case when wopr.cc=''07.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''08.0K''= sum(case when wopr.cc=''08.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''08.5K''= sum(case when wopr.cc=''08.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''09.0K''= sum(case when wopr.cc=''09.0K'' then '+ShoeName+' else NULL end),');
    sql.add('''09.5K''= sum(case when wopr.cc=''09.5K'' then '+ShoeName+' else NULL end),');
    sql.add('''10.0K''= sum(case when ((wopr.cc=''10.0K'') or (wopr.cc='' 10.0K'')) then '+ShoeName+' else NULL end),');
    sql.add('''10.5K''= sum(case when ((wopr.cc=''10.5K'') or (wopr.cc='' 10.5K'')) then '+ShoeName+' else NULL end),');
    sql.add('''11.0K''= sum(case when ((wopr.cc=''11.0K'') or (wopr.cc='' 11.0K'')) then '+ShoeName+' else NULL end),');
    sql.add('''11.5K''= sum(case when ((wopr.cc=''11.5K'') or (wopr.cc='' 11.5K'')) then '+ShoeName+' else NULL end),');
    sql.add('''12.0K''= sum(case when ((wopr.cc=''12.0K'') or (wopr.cc='' 12.0K'')) then '+ShoeName+' else NULL end),');
    sql.add('''12.5K''= sum(case when ((wopr.cc=''12.5K'') or (wopr.cc='' 12.5K'')) then '+ShoeName+' else NULL end),');
    sql.add('''13.0K''= sum(case when ((wopr.cc=''13.0K'') or (wopr.cc='' 13.0K'')) then '+ShoeName+' else NULL end),');
    sql.add('''13.5K''= sum(case when ((wopr.cc=''13.5K'') or (wopr.cc='' 13.5K''))then '+ShoeName+' else NULL end),');
    sql.add('''TOTAL''=sum('+ShoeName+')');
    sql.add('from wopr left join ddzl');
    sql.add('on wopr.scbh=ddzl.ddbh');
    sql.add('left join kfzl');
    sql.add('on ddzl.khbh=kfzl.kfdh');
    sql.add('where year(WOPR.scdate)='+cbyear.Text+'  and WOPR.GSBH='''+main.sGSBH+''' ');
    if cbmonth.Text<>'' then
    sql.Add(' and  month(WOPR.scdate)='+cbmonth.Text+' ');
    sql.add('and '+ShoeName+' is not null and '+ShoeName+' <>0');
    sql.Add('group by cast(year(scdate) as varchar)+'' - ''+ cast(month(scdate) as varchar),kfzl.kfjc,ddzl.KHPO');
    active:=true;
  end;
end;

procedure TMonthlyReportShoeB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMonthlyReportShoeB.FormDestroy(Sender: TObject);
begin
   MonthlyReportShoeB:=nil;
end;

procedure TMonthlyReportShoeB.btExcelClick(Sender: TObject);
begin
  if  Messagedlg(Pchar('Export Plan Department Format?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      ExportPlanFormatData();
    end else
    begin
      ExportDefaultData();
    end;
end;
procedure TMonthlyReportShoeB.ExportDefaultData();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
if  query1.active  then
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
          for   i:=0   to   query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
            end;

          query1.First;
          j:=2;
          while   not   query1.Eof   do
            begin
              for   i:=0   to  query1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              end;
            query1.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;
procedure TMonthlyReportShoeB.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,Voffset,Hoffset,index:integer;
    //
    tmpStr:string;
    month:string;
    month_S,month_E:integer;
    k:integer; //
begin
   if FileExists(AppDir+'Additional\QCbaocaothang.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\QCbaocaothang.xls'),Pchar(AppDir+'Additional\QCbaocaothang.xls'),false);
   end;

   if FileExists(AppDir+'Additional\QCbaocaothang.xls') then
   begin
      if  query1.active  then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\QCbaocaothang.xls');
          eclApp.WorkSheets[1].Activate;
          index:=0;
          Hoffset:=1;
          Voffset:=3;
          query1.First;
          eclApp.Range[eclApp.Cells[3,3],eclApp.Cells[Query1.RecordCount+3,3]].NumberFormatLocal:='@';
          //
          for i:=1 to query1.RecordCount do
          begin
            for   j:=Hoffset   to  query1.Fieldcount  do
            begin
              eclApp.Cells(Voffset+index,j):=query1.Fields[j-1].Value;
            end;
            query1.Next;
            inc(index);
          end;

          //Run Meger Cell Month
          month:='';
          month_S:=0;
          month_E:=0;
          for k:=3 to Query1.RecordCount+3 do
          begin
           tmpStr:=eclApp.Cells[k,1];
           if month='' then
           begin
            month_S:=k;
            month:=tmpStr;
           end;
          if(( tmpStr<>month) and (month<>'')) then
          begin
            month_E:=k-1;
            month:= eclApp.Cells[k,1];
            eclApp.Range[eclApp.Cells[month_S,1],eclApp.Cells[month_E,1]].merge;
            month_S:=k;
          end;
         end;
       { // Run Merge Cell Brand
          for k:=3 to Query1.RecordCount+3 do
          begin
           tmpStr:=eclApp.Cells[k,2];
           if month='' then
           begin
            month_S:=k;
            month:=tmpStr;
           end;
          if(( tmpStr<>month) and (month<>'')) then
          begin
            month_E:=k-1;
            month:= eclApp.Cells[k,2];
            eclApp.Range[eclApp.Cells[month_S,2],eclApp.Cells[month_E,2]].merge;
            month_S:=k;
          end;
         end;
        } //
         showmessage('Succeed');
         eclApp.Visible:=True;

        except
            on   F:Exception   do
            begin
              eclApp.quit;
              showmessage(F.Message);
            end;
        end;
      end;
   end;

end;
procedure TMonthlyReportShoeB.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
    i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to cbYear.Items.Count-1 do
  begin
     if  strtoint(cbYear.Items[i])=myYear then
     begin
       cbYear.ItemIndex:=i;
       break;
     end;
  end;
  for i:=0 to cbMonth.Items.Count-1 do
  begin
     if  strtoint(cbMonth.Items[i])=myMonth then
     begin
       cbMonth.ItemIndex:=i;
       break;
     end;
  end;
end;

end.
