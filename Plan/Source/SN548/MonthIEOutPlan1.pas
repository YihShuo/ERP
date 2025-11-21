unit MonthIEOutPlan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Dateutils, Comobj;

type
  TMonthIEOutPlan = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    Button2: TButton;
    CBX3: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
  public
    { Public declarations }
  end;

var
  MonthIEOutPlan: TMonthIEOutPlan;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TMonthIEOutPlan.FormDestroy(Sender: TObject);
begin
  MonthIEOutPlan:=nil;
end;

procedure TMonthIEOutPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMonthIEOutPlan.Button1Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    i:integer;
    sDate,eDate:TDateTime;
    DepGXLB,GXLB:String;
begin

  iYear:=strtoint(CBX1.text);
  iMonth:=strtoint(CBX2.text);
  iDay:=1;
  sdate:=EncodeDate(iYear,iMonth,iDay);
  edate:=endofthemonth(sdate);
  decodedate(edate,iYear,iMonth,iDay);
  //成型線有掃描工段A 和 B
  GXLB:=CBX3.Text;
  if ((GXLB='A') or (GXLB='B')) then
    DepGXLB:='A'
  else
    DepGXLB:=GXLB;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SCBBS.DepName,SB  ');
    for i:=1 to iDay do
    begin
      SQL.Add(',sum(case  when NDay='+''''+inttostr(i)+'''');
      SQL.Add(' then Qty  end) as '+''''+inttostr(i)+'''');
    end;
    SQL.Add('from  (');
    SQL.Add('       Select  SCBB.DepNo,BDepartment.DepName,''2.Actual'' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
    SQL.Add('       from SCBBS ');
    SQL.Add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+'''  ');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%'' and BDepartment.YN=1  ');
    SQL.Add('              and SCBB.GSBH like'''+main.Edit2.Text+''' ');
    SQL.Add('              and SCBBS.GXLB='''+DepGXLB+'''');
    SQL.Add('       group by SCBB.DepNo,BDepartment.DepName,datepart(day, SCBB.SCDate)  ');
    SQL.Add('       union  all');
    SQL.Add('       select SCBZCL.DepNo,BDepartment.DepName,''1.Plan'' as SB,isnull(SCBZCL.Qty,0) as Qty ,datepart(day, SCBZCL.BZDate) as NDay  ');
    SQL.Add('       from SCBZCL ');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%'' ');
    SQL.Add('              and SCBZCL.GSBH like'''+main.Edit2.Text+''' ');
    SQL.Add('              and BDepartment.GXLB='''+DepGXLB+''' and BDepartment.YN=1  ');
    SQL.Add('       union  all');
    SQL.Add('       select SCBB.DepNo, SCBB.DepName,''3.Hours'' as SB,Avg(SCRL.SCGS) as Qty,datepart(day, SCBB.SCDate)  as NDay   from (');
    SQL.Add('       Select BDepartment.DepName,BDepartment.ID as DepNo,BDepartment.GXLB,SCBB.SCDate ');
    SQL.Add('       from SCBB ');
    SQL.Add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.Add('              '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
    SQL.Add('              and SCBB.GSBH like '''+main.Edit2.Text+''' ');
    SQL.Add('              and BDepartment.GXLB='''+DepGXLB+''' and BDepartment.YN=1  ');
    SQL.Add('       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GXLB,SCBB.SCDate  ) SCBB');
    SQL.Add('       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate) and SCRL.DepNo=SCBB.Depno   ');
    SQL.Add('       Group by SCBB.DepNo, SCBB.DepName,GXLB,datepart(day, SCBB.SCDate)        ');
    SQL.Add('       )SCBBS ');
    SQL.Add('group by   SCBBS.DepName,SB   ');
    SQL.Add('order by   SCBBS.DepName,SB  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TMonthIEOutPlan.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
   with DBGrideh1 do
   begin
     columns[0].Width:=100;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='單位線別|Lean';
     columns[1].Width:=60;
     columns[1].title.caption:='類別|SB';
     for i:=2 to query1.FieldCount-1 do
     begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0.00' ;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
         begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
         end;
         columns[i].Width:=45;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
     end;
   end;

end;

//
procedure TMonthIEOutPlan.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
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

//預設Excel
procedure TMonthIEOutPlan.ExportFormatExcel();
  //
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
  //
var i,j,k,DataRow,ExcelRow:integer;
    eclApp,WorkBook:olevariant;
    Str:string;
    tmpDate:TDateTime;
    iYear,iMonth:word;
begin

   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN548.xlsx'),Pchar(AppDir+'Additional\Plan_SN548.xlsx'),false);
   if FileExists(AppDir+'Additional\Plan_SN548.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN548.xlsx');
        //
        eclApp.WorkSheets[1].Activate;
        if CBX3.Text='C' then Str:='裁斷';
        if CBX3.Text='A' then Str:='成型';
        if CBX3.Text='S' then Str:='針車';
        eclApp.Cells(1,1):=CBX1.Text+'/'+CBX2.Text+'月'+Str+'生產日報表';
        Query1.First;
        //
        iYear:=strtoint(CBX1.text);
        iMonth:=strtoint(CBX2.text);
        for i:=2 to Query1.FieldCount-1 do
        begin
          //日期從Query.Fields[3]開始, Excel從
          eclApp.Cells(2,i+1):=Query1.Fields[i].FieldName;
          eclApp.Columns[i+1].ColumnWidth:=4;
          //判斷是否星期日  斜體
          TmpDate:=EncodeDate(iYear,iMonth,strtoint(Query1.Fields[i].FieldName));
          if DayofWeek(tmpDate)=1 then
          begin
            eclApp.Columns[i+1].Font.Italic:=true;
            eclApp.Cells[2,i+1].Interior.Color := clGray;  //
          end else
          begin
            eclApp.Cells[2,i+1].Interior.Color := clyellow;  //
          end;
        end;
        //複製區塊
        for i:=1 to (Query1.RecordCount div 3)-1 do
        begin
          eclApp.Range[GetExcelColumnID(1)+'3:'+GetExcelColumnID(36)+'11'].Copy;
          eclApp.ActiveSheet.Rows[9+((i-1)*6)].Select;
          eclApp.ActiveSheet.Paste;
        end;
        eclApp.cutCopyMode := 0;
        //==========
        K:=0;
        DataRow:=3;   //ERP Data 9 row
        ExcelRow:=6;  //Excel 12 row format
        Query1.First;
        for j:=1 to Query1.RecordCount do
        begin
          //
          if (j mod DataRow)=1 then
          begin
            eclApp.Cells(3+(K*ExcelRow),1):=Query1.FieldByName('DepName').AsString;
          end;
          //
          for i:=2 to Query1.FieldCount-1 do
          begin
            if  Query1.FieldByName('SB').AsString='1.Plan' then
            eclApp.Cells(3+0+(K*ExcelRow),i+1):=Query1.Fields[i].Value;
            if  Query1.FieldByName('SB').AsString='2.Actual' then
            eclApp.Cells(3+1+(K*ExcelRow),i+1):=Query1.Fields[i].Value;
            if  Query1.FieldByName('SB').AsString='3.Hours' then
            eclApp.Cells(3+4+(K*ExcelRow),i+1):=Query1.Fields[i].Value;
          end;
          if (j mod DataRow)=0 then   K:=K+1;
          //
          Query1.Next;
        end;
        //
        showmessage('Succeed.');
        eclApp.Visible:=True;

      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;

procedure TMonthIEOutPlan.Button2Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel();
  end else
  begin
    ExportDefaultExcel();
  end;
end;

procedure TMonthIEOutPlan.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
end;

end.
