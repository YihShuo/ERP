unit FOCStockReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,
  DateUtils, comobj, iniFiles;

type
  TFOCStockReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Label2: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    QTemp: TQuery;
    Button2: TButton;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1LastRem: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1LLQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    WH_Decimal:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  FOCStockReport: TFOCStockReport;
  NDate: TDate;
  ayear,amonth:String;

implementation

uses main1;

{$R *.dfm}

procedure TFOCStockReport.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_Decimal:='2';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TFOCStockReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFOCStockReport.FormCreate(Sender: TObject);
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT getdate() as NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;
  //
  DTP1.Date := NDate;
  ReadIni();
end;

procedure TFOCStockReport.FormDestroy(Sender: TObject);
begin
  FOCStockReport := nil;
end;

procedure TFOCStockReport.Button1Click(Sender: TObject);
var Year,Month,Day:word;
begin
  decodedate(DTP1.Date,Year,Month,Day);
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  with Query1 do
  begin
    active := false;
    SQL.Clear;
    SQL.Add('  if object_id(''tempdb..#CLZLKC'') is not null ');
    SQL.Add('  begin drop table #CLZLKC end ');
    SQL.Add('  select CLZL.CLDH as CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty into #CLZLKC ');
    SQL.Add('  from CLZL ');
    SQL.Add('  left join ( Select KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as LastRem ');
    SQL.Add('  			       from KCCLMONTH_FOC as KCCLMONTH ');
    SQL.Add('  			       where KCCLMONTH.KCYEAR='''+ayear+''' ');
    SQL.Add('  			       and KCMONTH='''+amonth+''' ');
    SQL.Add('  			       and KCCLMONTH.CLBH like '''+Edit1.Text+'%'' and CKBH=''FOC'' ');
    SQL.Add('              and KCCLMONTH.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('  			       Group by KCCLMONTH.CLBH ');
    SQL.Add('  		       ) LastKC on LastKC.CLBH=CLZL.CLDH ');
    SQL.Add('  left join ( select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty ');
    SQL.Add('  		         from KCRKS_FOC KCRKS ');
    SQL.Add('              left join KCRK_FOC KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('              where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>= ');
    SQL.add('              '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' ');
    SQL.Add('              and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<= ');
    SQL.add('              '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('              and KCRKS.CLBH like '''+Edit1.Text+'%''  and CKBH=''FOC''');
    SQL.Add('              and KCRK.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('              group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');
    SQL.Add('  left join ( select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty ');
    SQL.Add('  			       from KCLLS_FOC KCLLS ');
    SQL.Add('              left join KCLL_FOC KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('              where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>= ');
    SQL.add('              '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' ');
    SQL.Add('              and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<= ');
    SQL.add('              '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    SQL.Add('              and KCLLS.CLBH like '''+Edit1.Text+'%''  and CKBH=''FOC''');
    SQL.Add('              and KCLL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('              and KCLL.CFMID<>''NO'' ');
    SQL.Add('              group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH ');
    SQL.Add('  where not (LastKC.LastRem is null and RK.RKQty is null and LL.LLQty is null) ');
    //====================================
    SQL.Add('  select #CLZLKC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,isnull(round(#CLZLKC.LastRem,'+WH_Decimal+'),0) as LastRem, ');
    SQL.Add('  isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0) as RKQty,isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0) as LLQty, ');
    SQL.Add('  isnull(round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0) as Qty ');
    SQL.Add('  from #CLZLKC   ');
    SQL.Add('  left join CLZL on CLZL.CLDH = #CLZLKC.CLDH ');
    SQL.Add('  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null) ');
    sql.add('  and #CLZLKC.CLDH like '''+Edit1.Text+'%'' ');
    sql.add('  and CLZL.ZWPM like ''%'+Edit2.text+'%'' ');
    sql.add('  and CLZL.YWPM like ''%'+Edit3.text+'%'' ');
    SQL.Add('  order by #CLZLKC.CLDH ');
    //funcObj.WriteErrorLog(sql.Text);
    active := true;
  end;
end;

procedure TFOCStockReport.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  //
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
  //
  if  Query1.active  then
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
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   Query1.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
      end;
      //
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
     eclapp.columns.autofit;
     showmessage('Succeed.');
     eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

procedure TFOCStockReport.Button3Click(Sender: TObject);
var KCYEAR,KCMONTH:string;
    Year,Month,Day:word;
begin
  decodedate(DTP1.Date,Year,Month,Day);
  KCYEAR:=floattostr(Year);
  KCMONTH:=floattostr(Month);
  if length(KCMONTH)=1 then
    KCMONTH:='0'+KCMONTH;
  //
  with QTemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select top 1 KCYEAR, YN from  KCCLMONTH_FOC ');
    SQL.add('where KCYEAR='+''''+KCYEAR+'''');
    SQL.add('and KCMONTH='+''''+KCMONTH+'''');
    SQL.Add('and CKBH=''FOC'' ');
    SQL.Add('and GSBH='''+main.Edit2.Text+''' ');
    active:=true;
    if fieldbyname('YN').value='1' then
    begin
      showmessage('Account already lock the data of stock.'+#13+'Pls contect with account.');
      abort;
    end;
  //
    active:=false;
    SQL.Clear;
    SQL.Add('Delete from KCCLMONTH_FOC where KCYEAR='''+KCYEAR+''' and KCMONTH='''+KCMONTH+''' and CKBH=''FOC'' and GSBH='''+main.Edit2.Text+'''');
    SQL.Add('Insert into KCCLMONTH_FOC (KCYEAR, KCMONTH,CKBH, CLBH, Qty, USERDATE, USERID, YN,GSBH) ');
    SQL.add('select  '+''''+KCYEAR+''''+' as KCYEAR,'+''''+KCMONTH+''''+' as KCMONTH,''FOC'',#CLZLKC.CLDH as CLBH,');
    SQL.add('isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0) as Qty,');
    SQL.add('convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
    SQL.add(''''+main.edit1.text+''''+' as USERID,''2'' as YN,'''+main.Edit2.Text+''' ');
    SQL.add('from #CLZLKC ');
    SQL.add('where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null)');
    ExecSQL;
    showmessage('Succeed.');
  end;
  
end;

end.
