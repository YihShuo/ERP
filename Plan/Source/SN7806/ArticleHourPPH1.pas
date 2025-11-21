unit ArticleHourPPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  Comobj ,Dateutils, Menus;

type
  TArticleHourPPH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CBX4: TComboBox;
    Button2: TButton;
    CB1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    QTemp: TQuery;
    DataSource1: TDataSource;
    InfoLabel: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
  public
    { Public declarations }
  end;

var
  ArticleHourPPH: TArticleHourPPH;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TArticleHourPPH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TArticleHourPPH.FormDestroy(Sender: TObject);
begin
  ArticleHourPPH:=nil;
end;

procedure TArticleHourPPH.FormCreate(Sender: TObject);
var NDate:TDate;
    i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  InfoLabel.Caption:='Du lieu cua May chu ERP:'+DatetoStr(now)+'-'+datetostr(Date()-45)+' xin dao ra som nhe';
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
        CBX4.Items.Add(fieldbyname('GX').asstring);
        next;
    end;
    CBX4.ItemIndex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    DTP1.date:=NDate-8;
    DTP2.time:=startoftheday(NDate);
    DTP3.date:=NDate-1;
    DTP4.time:=endoftheday(NDate);
  end;

end;
procedure TArticleHourPPH.Button1Click(Sender: TObject);
var j:integer;
    SKUCaption:String;
begin
  if length(Edit1.Text)<=11 then
  begin
    Showmessage('Please input complete DepName ');
    Exit;
  end;
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct DDZL.Article+'' ( ''+XXZL.DAOMH+'' )'' as Article ');
    sql.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL ');
    sql.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    sql.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
    sql.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    sql.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    sql.Add('where SMZL.ScanDate between');
    sql.Add('      convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    sql.Add('and SMDDSS.DDBH like '''+Edit2.Text+'%'' and BDepartment.DepName like '''+Edit1.Text+'%%''');
    sql.Add('and SMDDSS.GXLB='''+CBX4.Text+'''');
    if CB1.Checked=false then
      sql.Add('and SMDDSS.DDBH not like ''ZS%'' ');
    active:=true;
  end;

  with Query1 do
  begin
    //20210316 現場點名直工數
    SQL.Add('if object_id(''tempdb..#RSCQPOH'') is not null');
    SQL.Add('begin  drop table #RSCQPOH end');
    SQL.Add('Select RSDate,BDepartment.sumline,Sum(RSCQ.CQQty) as CQQty into  #RSCQPOH ');
    SQL.Add('from RSCQ ');
    SQL.Add('inner join BDepartment on Bdepartment.ID=RSCQ.DepNo');
    SQL.Add('where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))  between  '''+Formatdatetime('yyyy/MM/dd',DTP1.datetime)+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.datetime)+''' ');
    SQL.Add('Group by  RSDate,BDepartment.sumline ');
    //
    active:=false;
    sql.Clear;
    sql.Add('select ScanDate,DepName,GXLB,TimeGroupId');
    //Article
    while not QTemp.eof do
    begin
      sql.add(',Max(case  when Article='+''''+Copy(Qtemp.fieldbyname('Article').asstring,1,Pos(' ( ',Qtemp.fieldbyname('Article').asstring))+'''');
      sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('Article').asstring+'''');
       //Article_PPH
      sql.add(',Max(case  when Article='+''''+Copy(Qtemp.fieldbyname('Article').asstring,1,Pos(' ( ',Qtemp.fieldbyname('Article').asstring))+'''');
      sql.add(' then PPH  end) as '+''''+Qtemp.fieldbyname('Article').asstring+'_PPH'+'''');
      //Article_IE_PP
      sql.add(',Max(case  when Article='+''''+Copy(Qtemp.fieldbyname('Article').asstring,1,Pos(' ( ',Qtemp.fieldbyname('Article').asstring))+'''');
      sql.add(' then IE_PPH  end) as '+''''+Qtemp.fieldbyname('Article').asstring+'_IE_PPH'+'''');
      //
      QTemp.Next;
    end;
    sql.Add(',sum(Qty) as Total,Sum(PPH) as AvgPPH,Avg(IE_PPH) as AvgIE_PPH,CQQty');
    sql.Add('from (');
    sql.Add('      select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDepartment.DepName,SMDDSS.GXLB,SMDD.Article,SMDD.XieMing,');
    sql.Add('             sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeGroupID,RSCQ.CQQty,');
    sql.Add('             Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) / Count(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,');
    sql.Add('             SCXXCL.POH as IE_PPH');
    sql.Add('      from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    sql.Add('      left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    sql.Add('      left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    sql.Add('      left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB');
    sql.Add('      left join #RSCQPOH as RSCQ on RSCQ.Sumline=BDepartment.Sumline and RSCQ.RSDate=convert(varchar,SMZL.ScanDate,111)');
    sql.Add('      left join DDZL on DDZL.DDBH=SMDD.YSBH');
    sql.Add('      left join (Select XieXing,SheHao,BZLB,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
    sql.Add('                        (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH ');
    sql.Add('                 from SCXXCL');
    sql.Add('                 Group by XieXing,SheHao,BZLB ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and BDepartment.BZLB=SCXXCL.BZLB ');
    sql.Add('      left join (');
    sql.Add('                 select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZL.ScanDate))-0)/60 as TimeGroupID');
    sql.Add('                 from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    sql.Add('                 left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    sql.Add('                 left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    sql.Add('                 where SMZL.ScanDate between');
    sql.Add('                       convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    sql.Add('                 and SMDDSS.DDBH like '''+Edit2.Text+'%'' and BDepartment.DepName like '''+Edit1.Text+'%''');
    sql.Add('                 and SMDDSS.GXLB='''+CBX4.Text+'''');
    if CB1.Checked=false then
      sql.Add('               and SMDDSS.DDBH not like ''ZS%'' ');
    sql.Add('                 ) SMZLT on SMZLT.SMNO=SMZL.SMNO');
    sql.Add('      where BDepartment.DepName like '''+Edit1.Text+'%''');
    sql.Add('      and SMDDSS.DDBH like '''+Edit2.Text+'%''');
    sql.Add('      and SMDDSS.GXLB='''+CBX4.Text+'''');
    sql.Add('      and DDZL.GSBH='''+main.Edit2.Text+''' ');
    if CB1.Checked=false then
      sql.Add('    and SMDDSS.DDBH not like ''ZS%'' ');
    sql.Add('      and SMZL.ScanDate between ');
    sql.Add('               convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    sql.Add('      group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BDepartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeGroupID,RSCQ.CQQty,SCXXCL.POH ');
    sql.Add('   ) SMZL');
    sql.Add('Group by ScanDate,DepName,GXLB,CQQty,TimeGroupId');
    sql.Add('order by ScanDate,Depname,GXLB,TimeGroupID');
    active:=true;
  end;
  with DBGrideh1 do
  begin
    columns[0].Width:=70;
    columns[0].title.caption:='掃描日期|ScanDate';
    columns[1].Width:=105;
    columns[1].title.caption:='生產單位|DepName';
    columns[2].Width:=40;
    columns[2].title.caption:='工段|GXLB';
    columns[3].Width:=70;
    columns[3].title.caption:='生產時段|TimeGroup';
    for j:=4 to Query1.FieldCount-5 do
    begin
      columns[j].Width:=50;
      if (j mod 3)=1 then
      begin
        SKUCaption:=columns[j].Title.Caption;
      end;
      if (j mod 3)=1 then columns[j].Title.Caption:=SKUCaption+'|Qty';
      if (j mod 3)=2 then columns[j].Title.Caption:=SKUCaption+'|POH';
      if (j mod 3)=0 then columns[j].Title.Caption:=SKUCaption+'|IE POH';
      //columns[j].Title.Caption:='SKU|'+columns[j].Title.Caption;
    end;
    for j:= Query1.FieldCount-4 to  Query1.FieldCount-4 do
    begin
     columns[j].Width:=55;
     columns[j].title.caption:='小計|Total';
    end;
    for j:= Query1.FieldCount-3 to  Query1.FieldCount-2 do
    begin
     columns[j].Width:=75;
     columns[j].title.caption:='平均|'+columns[j].Title.Caption;
    end;
    for j:= Query1.FieldCount-1 to  Query1.FieldCount-1 do
    begin
     columns[j].Width:=50;
     columns[j].title.caption:='人數|People';
    end;
  end;
end;
//==============
procedure TArticleHourPPH.ExportFormatExcel();
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
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin

  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN7806.xls'),Pchar(AppDir+'Additional\Plan_SN7806.xls'),false);
  if FileExists(AppDir+'Additional\Plan_SN7806.xls') then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN7806.xls');
          //Title
          for i:=1 to ((Query1.fieldcount-8) div 3)-1 do
          begin
            eclApp.ActiveSheet.Columns[8].Insert; //Qty Column
            eclApp.ActiveSheet.Columns[8].Insert; //POH Column
            eclApp.ActiveSheet.Columns[8].Insert; //IE POH Column
            eclApp.Range[GetExcelColumnID(5)+'2:'+GetExcelColumnID(7)+'3'].Copy;
            eclApp.Cells[2,8].Select;
            eclApp.ActiveSheet.Paste;
            //
          end;
          //Article資訊
          for i:=0 to ((Query1.fieldcount-8) div 3)-1 do
          begin
             eclApp.Cells(2,5+i*3):=Query1.fields[(i*3)+4].FieldName;
          end;
          //
          Query1.First;
          j:=4;
          while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
            Query1.Next;
            inc(j);
          end;
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
          end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
      on  F:Exception   do
        showmessage(F.Message);
      end;
    end;
  end;
end;
//=============
procedure TArticleHourPPH.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
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
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
          end;
          Query1.Next;
          inc(j);
        end;
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
        end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
    on  F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;
//
procedure TArticleHourPPH.Button2Click(Sender: TObject);
begin
  ExportFormatExcel();
end;
procedure TArticleHourPPH.DTP1Change(Sender: TObject);
begin
  DTP3.Date:=DTP1.Date;
end;

end.
