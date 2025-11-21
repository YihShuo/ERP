unit SemiMaterialMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  DateUtils, Comobj;

type
  TSemiMaterialMonth = class(TForm)
    PC1: TPageControl;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP: TDateTimePicker;
    Button2: TButton;
    ComboBox1: TComboBox;
    DBGridEh1: TDBGridEh;
    TempQry: TQuery;
    DS2: TDataSource;
    Query2: TQuery;
    DBGridEh2: TDBGridEh;
    Query2DDBH: TStringField;
    Query2Pairs: TIntegerField;
    Query2NoFKCQy: TIntegerField;
    Query2NoFKCQty1: TIntegerField;
    Query2InQty: TIntegerField;
    Query2VNACC: TCurrencyField;
    Query2NotInQty: TIntegerField;
    Query2SemiVNACC: TCurrencyField;
    Query2FShoeVNACC: TFloatField;
    Query2FShoe1Pair_VNACC: TFloatField;
    Query2VNACCMon: TCurrencyField;
    Query2ZVNACC: TFloatField;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Button3: TButton;
    Button4: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit3: TEdit;
    Button5: TButton;
    DBGridEh3: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1VNACC: TCurrencyField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1ARTICLE: TStringField;
    Button6: TButton;
    Button7: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportDefaultExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  SemiMaterialMonth: TSemiMaterialMonth;

implementation
   uses SemiMaterialMonth_ZZ1,FunUnit, main1;
{$R *.dfm}

procedure TSemiMaterialMonth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSemiMaterialMonth.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth:=nil;
end;

procedure TSemiMaterialMonth.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth,VNACC:string;
begin
  Decodedate(DTP.Date,iYear,iMonth,iDay);   //找庫存相關的數據
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //計算攤提金額
  VNACC:='0.0';
  with  TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select VNACC,InQty,VNACC/InQty as AVGZVNACC from (');
    SQL.Add('	Select Sum(VNACC_HG) as VNACC ');
    SQL.Add('	From KCLL');
    SQL.Add('	Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('	where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+'''');
    if ComboBox1.Text <> 'ALL' then
    SQL.Add('	and KCLL.GSBH='''+ComboBox1.Text+'''');
    SQL.Add('	and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    if ComboBox1.Text <> 'ALL' then
    SQL.Add('	and KCLL.CKBH in (Select CKBH from KCCK where GSBH='''+ComboBox1.Text+''')');
    SQL.Add('	and KCLLS.CostID=''6211'' and KCLLS.SCBH=''ZZZZZZZZZZ'' ) KCLL');
    SQL.Add('left join (');
    SQL.Add('	Select Sum(YWCP.Qty) as InQty  ');
    SQL.Add('	from YWCP with (nolock)');
    SQL.Add('	left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    SQL.Add('	where convert(varchar,YWCP.Indate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
    SQL.Add('		and IsNull(YWCP.SB,'''')<>''''  ');
    SQL.Add(') B on 1=1');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      if FieldByName('AVGZVNACC').AsString<>'' then
      VNACC:=FieldByName('AVGZVNACC').AsString;
    end;
    Active:=false;
  end;

  //
  with Query2 do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('If object_id(''tempdb..#DDZL_Mon'') is not null ');
     SQL.Add('Begin  drop table #DDZL_Mon end ');
     SQL.Add('  Select DDBH  into #DDZL_Mon from (');
     SQL.Add('	  Select YWDD.YSBH as DDBH ');
     SQL.Add('	  From YWCP');
     SQL.Add('	  Left join YWDD on YWDD.DDBH=YWCP.DDBH');
     SQL.Add('	  where convert(varchar,YWCP.Indate,111) Between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
     if Edit1.Text<>'' then
      SQL.Add('        and YWDD.YSBH like '''+Edit1.Text+'%'' ');
     SQL.Add('	  Group by YWDD.YSBH ');
     SQL.Add('	  Union all');
     SQL.Add('	  Select KCLLS.SCBH');
     SQL.Add('	  From KCLL');
     SQL.Add('	  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('	  where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
     if Edit1.Text<>'' then
      SQL.Add('        and KCLL.SCBH like '''+Edit1.Text+'%'' ');
     SQL.Add('	  Group by KCLLS.SCBH  ');
     SQL.Add(') DDZL ');
     //
     SQL.Add('Select DDZL.*,DDZL.Pairs- YWCPKC.KCQty as FKCQy,IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.Pairs) as NoFKCQty1,YWCP_Mon.InQty,CWKCLLMonth.VNACC as VNACCMon,KCLLS.VNACC,Round(YWCP_Mon.InQty*'+VNACC+',0) as ZVNACC');
     SQL.Add('       ,DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0) as NotInQty');
     SQL.Add('	     ,Round((0+KCLLS.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.Pairs))*(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0)),0) as SemiVNACC');
     SQL.Add('	     ,0+KCLLS.VNACC+Round(YWCP_Mon.InQty*'+VNACC+',0)- Round((0+KCLLS.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.Pairs))*(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0)),0) as FShoeVNACC');
     SQL.Add('	     ,Round(( 0+KCLLS.VNACC+Round(YWCP_Mon.InQty*'+VNACC+',0)- Round((0+KCLLS.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.Pairs))*(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0)),0) )/IsNull(YWCP_Mon.InQty,0),0) as FShoe1Pair_VNACC ');
     SQL.Add('from (');
     SQL.Add('	Select DDZL.DDBH,DDZL.Pairs ');
     SQL.Add('	from DDZL ');
     SQL.Add('	where DDZL.DDBH in (');
     SQL.Add('	   Select DDBH From #DDZL_Mon');
     SQL.Add('	) ');
     SQL.Add(') DDZL');
     SQL.Add('Left join (');
     SQL.Add('	Select YWDD.YSBH,Sum(YWCPMonth.Qty) as KCQty ');
     SQL.Add('	from YWCPMonth with (nolock)');
     SQL.Add('	left join YWDD  with (nolock) on YWDD.DDBH=YWCPMonth.DDBH ');
     SQL.Add('	left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH ');
     SQL.Add('	where YWCPMonth.KCYEAR= '''+sYear+''' and YWCPMonth.KCMONTH='''+sMonth+'''  ');
     if Edit1.Text<>'' then
      SQL.Add('        and YWDD.YSBH like '''+Edit1.Text+'%'' ');
     if ComboBox1.Text <> 'ALL' then
     SQL.Add('		  and DDZL.GSBH='''+ComboBox1.Text+''' ');
     SQL.Add('	Group by YWDD.YSBH ) YWCPKC on YWCPKC.YSBH=DDZL.DDBH');
     SQL.Add('Left join (');
     SQL.Add('	Select CWKCLLMonth.DDBH,CWKCLLMonth.VNACC');
     SQL.Add('	from CWKCLLMonth with (nolock)');
     SQL.Add('	left join DDZL  with (nolock) on CWKCLLMonth.DDBH=DDZL.DDBH ');
     SQL.Add('	where CWKCLLMonth.KCYEAR= '''+sYear+''' and CWKCLLMonth.KCMONTH='''+sMonth+'''  ');
     SQL.Add('        and DDZL.DDBH like '''+Edit1.Text+'%'' ');
     SQL.Add('    ) CWKCLLMonth on CWKCLLMonth.DDBH=DDZL.DDBH');
     SQL.Add('Left join (');
     SQL.Add('        Select YWDD.YSBH,Sum(YWCP.Qty) as InQty  ');
     SQL.Add('	        from YWCP with (nolock)');
     SQL.Add('	        left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
     SQL.Add('		    where convert(varchar,YWCP.Indate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
     SQL.Add('		    Group by YWDD.YSBH');
     SQL.Add(')  YWCP_Mon on YWCP_Mon.YSBH=DDZL.DDBH ');
     SQL.Add('left join (');
     SQL.Add('    Select KCLLS.SCBH,Sum(VNACC_HG) as VNACC ');
     SQL.Add('	  From KCLL');
     SQL.Add('	  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('	  where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
     if ComboBox1.Text <> 'ALL' then
     SQL.Add('			and KCLL.GSBH='''+ComboBox1.Text+''' ');
     SQL.Add('			and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
     if Edit1.Text<>'' then
     SQL.Add('			and KCLLS.SCBH like '''+Edit1.Text+'%''');
     SQL.Add('	  Group by KCLLS.SCBH');
     SQL.Add(')  KCLLS on KCLLS.SCBH=DDZL.DDBH');
     SQL.Add('where 1=1 ');
     if Edit1.Text<>'' then
     SQL.Add(' and DDZL.DDBH like '''+Edit1.Text+'%'' ');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
  end;
  //
  //
end;

procedure TSemiMaterialMonth.FormCreate(Sender: TObject);
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select gsdh from bgszl order by gsdh');
    active:=true;
    ComboBox1.Items.Clear;
    ComboBox1.Items.Add('ALL');
    while not eof do
    begin
      ComboBox1.Items.Add(fieldbyname('gsdh').AsString);
      Next;
    end;
    ComboBox1.ItemIndex:=0;
    active:=False;
  end;
  DTP.Date:=Date();
end;

procedure TSemiMaterialMonth.Button2Click(Sender: TObject);
begin
  ExportDefaultExcel(Query2);
end;

procedure TSemiMaterialMonth.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query.Active then
  begin
    if Query.recordcount=0 then
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
    for   i:=1   to   Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
        end;
        Query.Next;
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

procedure TSemiMaterialMonth.Button4Click(Sender: TObject);
begin
  //
  with Query1 do
  begin
    Active:=False;
    SQL.Clear;
    SQL.Add('Select CWKCLLMonth.*,DDZL.ARTICLE ');
    SQL.Add('From CWKCLLMonth');
    SQL.Add('Left join DDZL on DDZL.DDBH=CWKCLLMonth.DDBH ');
    SQL.Add('where CWKCLLMonth.KCYEAR='''+CBX2.Text+'''  ');
    SQL.Add('		 and CWKCLLMonth.KCMONTH='''+CBX3.Text+''' ');
    if Edit3.Text<>'' then
    SQL.Add('   and CWKCLLMonth.DDBH like '''+Edit3.Text+'%'' ');
    Active:=true;
  end;
  //
end;

procedure TSemiMaterialMonth.Button3Click(Sender: TObject);
begin
  ExportDefaultExcel(Query1);
end;

procedure TSemiMaterialMonth.Button6Click(Sender: TObject);
begin
  SemiMaterialMonth_ZZ:=TSemiMaterialMonth_ZZ.Create(Self);
  SemiMaterialMonth_ZZ.Show;
end;

procedure TSemiMaterialMonth.Button5Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    sDate:TDate;
begin
  sDate:=encodedate(strtoint(CBX2.Text),strtoint(CBX3.Text),1);
  DeCodedate(sDate,iYear,iMonth,iDay);   //找庫存相關的數據
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('If object_id(''tempdb..#DDZL_Mon'') is not null ');
    SQL.Add('Begin  drop table #DDZL_Mon end ');
    SQL.Add('  Select DDBH  into #DDZL_Mon from (');
    SQL.Add('	  Select YWDD.YSBH as DDBH ');
    SQL.Add('	  From YWCP');
    SQL.Add('	  Left join YWDD on YWDD.DDBH=YWCP.DDBH');
    SQL.Add('	  where convert(varchar,YWCP.Indate,111) Between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('	  Group by YWDD.YSBH ');
    SQL.Add('	  Union all');
    SQL.Add('	  Select KCLLS.SCBH');
    SQL.Add('	  From KCLL');
    SQL.Add('	  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('	  where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('	  Group by KCLLS.SCBH  ');
    SQL.Add(') DDZL ');
    //
    SQL.Add('Delete from  CWKCLLMonth where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' ');
    SQL.Add('Insert into  CWKCLLMonth (KCYEAR, KCMONTH, DDBH, VNACC, UserID, UserDate, YN) ');
    SQL.Add('Select '''+CBX2.Text+''' as KCYEAR,'''+CBX3.Text+''' as KCMONTH, DDBH,SemiVNACC as VNACC,'''+main.Edit1.Text+''' as USERID,GetDate() as UserDate,''1'' as YN  from (');
    SQL.Add('Select DDZL.DDBH,Round((0+KCLLS.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.Pairs))*(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0)),0) as SemiVNACC');
    SQL.Add('from (');
    SQL.Add('	Select DDZL.DDBH,DDZL.Pairs ');
    SQL.Add('	from DDZL ');
    SQL.Add('	where DDZL.DDBH in (');
    SQL.Add('	   Select DDBH From #DDZL_Mon');
    SQL.Add('	) ');
    SQL.Add(') DDZL');
    SQL.Add('Left join (');
    SQL.Add('	Select YWDD.YSBH,Sum(YWCPMonth.Qty) as KCQty ');
    SQL.Add('	from YWCPMonth with (nolock)');
    SQL.Add('	left join YWDD  with (nolock) on YWDD.DDBH=YWCPMonth.DDBH ');
    SQL.Add('	left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH ');
    SQL.Add('	where YWCPMonth.KCYEAR= '''+sYear+''' and YWCPMonth.KCMONTH='''+sMonth+'''  ');
    SQL.Add('	Group by YWDD.YSBH ) YWCPKC on YWCPKC.YSBH=DDZL.DDBH');
    SQL.Add('Left join (');
    SQL.Add('	Select CWKCLLMonth.DDBH,CWKCLLMonth.VNACC');
    SQL.Add('	from CWKCLLMonth with (nolock)');
    SQL.Add('	left join DDZL  with (nolock) on CWKCLLMonth.DDBH=DDZL.DDBH ');
    SQL.Add('	where CWKCLLMonth.KCYEAR= '''+sYear+''' and CWKCLLMonth.KCMONTH='''+sMonth+'''  ');
    SQL.Add('    ) CWKCLLMonth on CWKCLLMonth.DDBH=DDZL.DDBH');
    SQL.Add('Left join (');
    SQL.Add('       Select YWDD.YSBH,Sum(YWCP.Qty) as InQty  ');
    SQL.Add('	      from YWCP with (nolock)');
    SQL.Add('	      left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    SQL.Add('		    where convert(varchar,YWCP.Indate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('		    Group by YWDD.YSBH');
    SQL.Add(')  YWCP_Mon on YWCP_Mon.YSBH=DDZL.DDBH ');
    SQL.Add('left join (');
    SQL.Add('    Select KCLLS.SCBH,Sum(VNACC_HG) as VNACC ');
    SQL.Add('	   From KCLL');
    SQL.Add('	   Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('	   where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('			   and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('	   Group by KCLLS.SCBH');
    SQL.Add(')  KCLLS on KCLLS.SCBH=DDZL.DDBH');
    SQL.Add('where 1=1 ) CWKCLLMonth');
    SQL.Add('where SemiVNACC>0');
    //FuncObj.WriteErrorLog(SQL.Text);
    ExecSQL();
  end;
  Showmessage('Finish');
end;

procedure TSemiMaterialMonth.Button7Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    sDate:TDate;
    VNACC:String;
begin
  sDate:=encodedate(strtoint(CBX2.Text),strtoint(CBX3.Text),1);
  DeCodedate(sDate,iYear,iMonth,iDay);   //找庫存相關的數據
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  //計算攤提金額
  VNACC:='0.0';
  with  TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select VNACC,InQty,VNACC/InQty as AVGZVNACC from (');
    SQL.Add('	Select Sum(VNACC_HG) as VNACC ');
    SQL.Add('	From KCLL');
    SQL.Add('	Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('	where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+'''');
    SQL.Add('	and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('	and KCLLS.CostID=''6211'' and KCLLS.SCBH=''ZZZZZZZZZZ'' ) KCLL');
    SQL.Add('left join (');
    SQL.Add('	Select Sum(YWCP.Qty) as InQty  ');
    SQL.Add('	from YWCP with (nolock)');
    SQL.Add('	left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    SQL.Add('	where convert(varchar,YWCP.Indate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('		and IsNull(YWCP.SB,'''')<>''''  ');
    SQL.Add(') B on 1=1');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      if FieldByName('AVGZVNACC').AsString<>'' then
      VNACC:=FieldByName('AVGZVNACC').AsString;
    end;
    Active:=false;
  end;

  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('If object_id(''tempdb..#DDZL_Mon'') is not null ');
    SQL.Add('Begin  drop table #DDZL_Mon end ');
    SQL.Add('  Select DDBH  into #DDZL_Mon from (');
    SQL.Add('	  Select YWDD.YSBH as DDBH ');
    SQL.Add('	  From YWCP');
    SQL.Add('	  Left join YWDD on YWDD.DDBH=YWCP.DDBH');
    SQL.Add('	  where convert(varchar,YWCP.Indate,111) Between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('	  Group by YWDD.YSBH ');
    SQL.Add('	  Union all');
    SQL.Add('	  Select KCLLS.SCBH');
    SQL.Add('	  From KCLL');
    SQL.Add('	  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('	  where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('	  Group by KCLLS.SCBH  ');
    SQL.Add(') DDZL ');
    SQL.Add('');
    SQL.Add('Update  YWCPMONTH set VNPrice=A.FShoe1Pair_VNACC,VNACC=Qty*A.FShoe1Pair_VNACC ');
    SQL.Add('from (');
    SQL.Add('	Select * from (');
    SQL.Add('	Select DDZL.DDBH,Round(( 0+KCLLS.VNACC+Round(YWCP_Mon.InQty*'+VNACC+',0)- Round((0+KCLLS.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.Pairs))*(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)');
    SQL.Add('        -IsNull(YWCP_Mon.InQty,0)),0) )/IsNull(YWCP_Mon.InQty,0),0) as FShoe1Pair_VNACC');
    SQL.Add('	from (');
    SQL.Add('		Select DDZL.DDBH,DDZL.Pairs ');
    SQL.Add('		from DDZL ');
    SQL.Add('		where DDZL.DDBH in (');
    SQL.Add('		   Select DDBH From #DDZL_Mon');
    SQL.Add('		) ');
    SQL.Add('	) DDZL');
    SQL.Add('	Left join (');
    SQL.Add('		Select YWDD.YSBH,Sum(YWCPMonth.Qty) as KCQty ');
    SQL.Add('		from YWCPMonth with (nolock)');
    SQL.Add('		left join YWDD  with (nolock) on YWDD.DDBH=YWCPMonth.DDBH ');
    SQL.Add('		left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH ');
    SQL.Add('		where YWCPMonth.KCYEAR= '''+sYear+''' and YWCPMonth.KCMONTH='''+sMonth+'''  ');
    SQL.Add('		Group by YWDD.YSBH ) YWCPKC on YWCPKC.YSBH=DDZL.DDBH');
    SQL.Add('	Left join (');
    SQL.Add('		Select CWKCLLMonth.DDBH,CWKCLLMonth.VNACC');
    SQL.Add('		from CWKCLLMonth with (nolock)');
    SQL.Add('		left join DDZL  with (nolock) on CWKCLLMonth.DDBH=DDZL.DDBH ');
    SQL.Add('		where CWKCLLMonth.KCYEAR= '''+sYear+''' and CWKCLLMonth.KCMONTH='''+sMonth+'''  ');
    SQL.Add('		) CWKCLLMonth on CWKCLLMonth.DDBH=DDZL.DDBH');
    SQL.Add('	Left join (');
    SQL.Add('		   Select YWDD.YSBH,Sum(YWCP.Qty) as InQty  ');
    SQL.Add('			  from YWCP with (nolock)');
    SQL.Add('			  left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    SQL.Add('				where convert(varchar,YWCP.Indate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('				Group by YWDD.YSBH');
    SQL.Add('	)  YWCP_Mon on YWCP_Mon.YSBH=DDZL.DDBH ');
    SQL.Add('	left join (');
    SQL.Add('		Select KCLLS.SCBH,Sum(VNACC_HG) as VNACC ');
    SQL.Add('		   From KCLL');
    SQL.Add('		   Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('		   where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('				   and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('		   Group by KCLLS.SCBH');
    SQL.Add('	)  KCLLS on KCLLS.SCBH=DDZL.DDBH ');
    SQL.Add('	where 1=1 ) CWKCLLMonth');
    SQL.Add('	where FShoe1Pair_VNACC>0');
    SQL.Add(') A');
    SQL.Add('where YWCPMONTH.KCYEAR='''+CBX2.Text+''' and YWCPMONTH.KCMONTH='''+CBX3.Text+''' and A.DDBH=YWCPMONTH.DDBH');
    //FuncObj.WriteErrorLog(sql.Text);
    ExecSQL();
    //Active:=true;
  end;
  Showmessage('Finish');
  //
end;

end.
