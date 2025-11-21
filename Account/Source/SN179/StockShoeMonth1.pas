unit StockShoeMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls,DateUtils,Comobj,fununit,IniFiles;

type
  TStockShoeMonth = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    TempQry: TQuery;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1CKBH: TStringField;
    Query1Pairs: TIntegerField;
    Query1LastRem: TIntegerField;
    Query1RKQty: TIntegerField;
    Query1XHQty: TIntegerField;
    Query1Qty: TIntegerField;
    Query1ShipDate: TDateTimeField;
    Query1ARTICLE: TStringField;
    Query1DDZT: TStringField;
    Query1Memo: TStringField;
    TS2: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Button6: TButton;
    DTP2: TDateTimePicker;
    Button7: TButton;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    Query2: TQuery;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    TS3: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Button11: TButton;
    DTP3: TDateTimePicker;
    Button12: TButton;
    CheckBox3: TCheckBox;
    Edit5: TEdit;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    Query3: TQuery;
    PopupMenu2: TPopupMenu;
    Detail2: TMenuItem;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Query3DDBH: TStringField;
    Query3CKBH: TStringField;
    Query3Pairs: TIntegerField;
    Query3LastRem: TFloatField;
    Query3RKQty: TIntegerField;
    Query3XHQty: TIntegerField;
    Query3Qty: TFloatField;
    Query3JHRQ: TDateTimeField;
    Query3TestNo: TStringField;
    Query3Article: TStringField;
    Query3DDZT: TStringField;
    Query3Memo: TStringField;
    Query2DDBH: TStringField;
    Query2CKBH: TStringField;
    Query2Pairs: TFloatField;
    Query2LastRem: TFloatField;
    Query2RKQty: TFloatField;
    Query2XHQty: TFloatField;
    Query2Qty: TFloatField;
    Query2JHRQ: TStringField;
    Query2TestNo: TStringField;
    Query2Article: TStringField;
    Query2DDZT: TStringField;
    Query2Memo: TStringField;
    Label10: TLabel;
    ComboBox2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Detail2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  StockShoeMonth: TStockShoeMonth;

implementation

uses main1,StockShoeMonth_Print1,SampleShoeStock_Detail1,CBYShoeStock_Detail1,SampleFinishShoeStock_Print1
    ,CBYFinishShoeStock_Print1;

{$R *.dfm}

procedure TStockShoeMonth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TStockShoeMonth.FormDestroy(Sender: TObject);
begin
  StockShoeMonth:=nil;
end;

procedure TStockShoeMonth.FormCreate(Sender: TObject);
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') ');
    sql.Add('order by gsdh ');
    active:=true;
    ComboBox1.Items.Clear;
    ComboBox1.Items.Add('ALL');
    while not eof do
    begin
      ComboBox1.Items.Add(fieldbyname('gsdh').AsString);
      Next;
    end;
    ComboBox1.ItemIndex:=0;
    active:=false;
  end;
  //
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and SFL = ''DC'' order by gsdh ');
    active:=true;
    ComboBox2.Items.Clear;
    ComboBox2.Items.Add('ALL');
    while not eof do
    begin
      ComboBox2.Items.Add(fieldbyname('gsdh').AsString);
      Next;
    end;
    ComboBox2.ItemIndex:=0;
    active:=false;
  end;

  AppDir:=ExtractFilePath(Application.ExeName);
  DTP1.Date:=Date();
  DTP2.Date:=Date();
  DTP3.Date:=Date();
end;

procedure TStockShoeMonth.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP1.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  Select YWDD.DDBH,YWDD.YSBH,YWDD.CKBH,DDZL.Pairs,YWDD.LastRem,YWDD.RKQty,YWDD.XHQty,YWDD.Qty,DDZL.ShipDate,DDZL.ARTICLE,DDZL.DDZT,YWCPMemo.Memo   ');
    SQL.Add('  from (  ');
    SQL.Add('    Select YWDD.DDBH,YWDD.YSBH,Max(YWCP.CKBH) as CKBH,Sum(YWCPMonth.Qty) as LastRem,Sum(YWCPRK.Qty) as RKQty,Sum(YWCPXH.Qty) as XHQty,Sum(YWCP.Qty) as Qty  ');
    SQL.Add('    from (  ');
    SQL.Add('  	Select DDBH,Max(CKBH) as CKBH, Sum(Qty) as Qty from (  ');
    SQL.Add('  	Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,''1'' as SB   ');
    SQL.Add('  	From YWCPMONTH     ');
    SQL.Add('  	where YWCPMONTH.KCYEAR='''+sYear+'''  ');
    SQL.Add('  		 and YWCPMONTH.KCMONTH='''+sMonth+''' ');
    SQL.Add('  	union all  ');
    SQL.Add('  	Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,''2'' as SB  ');
    SQL.Add('  	from YWCP  ');
    SQL.Add('  	where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('  	Group by YWCP.DDBH  ');
    SQL.Add('  	union all  ');
    SQL.Add('  	Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,-1*Sum( Case when SB=''3'' then YWCP.Qty else 0 end) as Qty,''3'' as SB  ');
    SQL.Add('  	from YWCP  ');
    SQL.Add('  	where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>''''  ');
    SQL.Add('  	Group by YWCP.DDBH  ) YWCPMONTH  ');
    SQL.Add('  	Group by DDBH  ) YWCP  ');
    SQL.Add('    Left join  (  ');
    SQL.Add('      Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,''1'' as SB   ');
    SQL.Add('  	From YWCPMONTH     ');
    SQL.Add('  	where YWCPMONTH.KCYEAR='''+sYear+'''  ');
    SQL.Add('  		 and YWCPMONTH.KCMONTH='''+sMonth+'''   ) YWCPMonth on YWCP.DDBH=YWCPMonth.DDBH  ');
    SQL.Add('    Left join  (  ');
    SQL.Add('  	Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,''2'' as SB  ');
    SQL.Add('  	from YWCP  ');
    SQL.Add('  	where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>''''   ');
    SQL.Add('  	Group by YWCP.DDBH ) YWCPRK on YWCP.DDBH=YWCPRK.DDBH  ');
    SQL.Add('    Left join  (  ');
    SQL.Add('  	Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum( Case when SB=''3'' then YWCP.Qty else 0 end) as Qty,''3'' as SB  ');
    SQL.Add('  	from YWCP  ');
    SQL.Add('  	where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>''''  ');
    SQL.Add('  	Group by YWCP.DDBH ) YWCPXH on YWCP.DDBH=YWCPXH.DDBH  ');
    SQL.Add('    Left join YWDD on YWDD.DDBH=YWCP.DDBH  Group by YWDD.YSBH,YWDD.DDBH ) YWDD  ');
    SQL.Add('  Left join YWCPMemo on YWCPMemo.DDBH=YWDD.YSBH   ');
    SQL.Add('  left join DDZL on YWDD.YSBH=DDZL.DDBH  ');
    SQL.Add('  where 1=1 ');
    if ComboBox1.Text <> 'ALL' then
      SQL.Add('  and DDZL.GSBH='''+ComboBox1.Text+'''');
    if Edit1.Text<>'' then
      SQL.Add('  and YWDD.YSBH like '''+Edit1.Text+'%'' ');
    if CheckBox1.Checked=true then
      SQL.Add('  and YWDD.Qty>0 ');
    SQL.Add('order by YWDD.YSBH ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TStockShoeMonth.Button2Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query1);
  end else
  begin
    ExportDefaultExcel(Query1);
  end;
end;

procedure TStockShoeMonth.ExportDefaultExcel(Query:TQuery);
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

procedure TStockShoeMonth.ExportFormatExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j: integer;
    iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    DTP:TDate;
    GSDH:String;
begin
  if PC1.ActivePageIndex=0 then
  begin
    DTP:=DTP1.Date;
    GSDH:=ComboBox1.Text;
  end else
  if PC1.ActivePageIndex=1 then
  begin
    DTP:=DTP2.Date;
    GSDH:=ComboBox2.Text;
  end else
  if PC1.ActivePageIndex=2 then
  begin
    DTP:=DTP3.Date;
    GSDH:='CBY';
  end;
  //
  decodedate(DTP,iYear,iMonth,iDay);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;


  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN179.xlsx'),Pchar(AppDir+'Additional\Account_SN179.xlsx'),false);
  if FileExists(AppDir+'Additional\Account_SN179.xlsx') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN179.xlsx');
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells(3,1):='Thang '+sMonth+' Nam '+sYear+' 年 '+sMonth +' 月份';
      eclApp.Cells(4,1):='Xuong: '+GSDH+' 廠區';
      //
      Query.First;
      j:=7;
      for i:=1 to Query.RecordCount do
      begin
        eclApp.ActiveSheet.Rows[j].Insert(-4121);
        eclApp.ActiveSheet.Rows[j].RowHeight:=16;
        eclApp.Cells(j,1):=Query.FieldByName('DDBH').Value;
        eclApp.Cells(j,2):=Query.FieldByName('CKBH').Value;
        eclApp.Cells(j,3):=Query.FieldByName('Pairs').Value;
        eclApp.Cells(j,4):=Query.FieldByName('LastRem').Value;
        eclApp.Cells(j,5):=Query.FieldByName('RKQty').Value;
        eclApp.Cells(j,6):=Query.FieldByName('XHQty').Value;
        eclApp.Cells(j,7):=Query.FieldByName('Qty').Value;
        eclApp.Cells(j,8):=Query.FieldByName('ARTICLE').Value;
        eclApp.Cells(j,9):=Query.FieldByName('Memo').Value;
        Query.Next;
        inc(j);
      end;
      eclApp.Cells[j,3].Formula:='=SUM(C7:C'+inttostr(j-1)+')';
      eclApp.Cells[j,4].Formula:='=SUM(D7:D'+inttostr(j-1)+')';
      eclApp.Cells[j,5].Formula:='=SUM(E7:E'+inttostr(j-1)+')';
      eclApp.Cells[j,6].Formula:='=SUM(F7:F'+inttostr(j-1)+')';
      eclApp.Cells[j,7].Formula:='=SUM(G7:G'+inttostr(j-1)+')';
      eclApp.Range[eclApp.Cells[7,1],eclApp.Cells[j-1,10]].font.Bold:=false;
      //eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

procedure TStockShoeMonth.Button3Click(Sender: TObject);
begin
  StockShoeMonth_Print:=TStockShoeMonth_Print.Create(self);
  StockShoeMonth_Print.Quickrep1.prepare;
  StockShoeMonth_Print.PageN.caption:=inttostr(StockShoeMonth_Print.quickrep1.QRPrinter.pagecount);
  StockShoeMonth_Print.Quickrep1.preview;
  StockShoeMonth_Print.Free;
end;

procedure TStockShoeMonth.Button5Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP1.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query1.First;
    while not Query1.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update YWCPMONTH set YN=2');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and DDBH ='''+Query1.fieldbyname('DDBH').AsString+''' ');
        execsql;
      end;
      Query1.Next;
    end;
    showmessage('Already unlock '+sYear+'/'+sMonth);
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TStockShoeMonth.Button4Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP1.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query1.First;
    while not Query1.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update YWCPMONTH set YN=1');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and DDBH ='''+Query1.fieldbyname('DDBH').AsString+''' ');
        execsql;
      end;
      Query1.Next;
    end;
    showmessage('Already lock '+sYear+'/'+sMonth);
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TStockShoeMonth.Button6Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP2.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ShoeTest.YPDH as DDBH,YPZL.GSDH as CKBH,YPZL.Quantity as Pairs,ShoeTestMonth.Qty as LastRem,ShoeTestIn.Qty as RKQty,ShoeTestship.Qty as XHQty,ShoetestAll.Qty,YPZL.JHRQ,');
    SQL.Add('       Shoetest.TestNo, ShoeTest.Article,Case when ShoeTest.TBCancel=1 then ''C'' else ''Y'' end as DDZT,ShoeTestMonth_Memo.Memo   from (');
    SQL.Add('  Select  TestNo , Sum(Qty) as Qty');
    SQL.Add('  from (');
    SQL.Add('	Select TestNo,Qty,''1'' as SB');
    SQL.Add('	from ShoeTestMonth');
    SQL.Add('	where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('	   and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('	   and ShoeTestMonth.CKBH<>''CBY''');
    SQL.Add('	union all');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('		  and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo');
    SQL.Add('	union all ');
    SQL.Add('	Select  shoetest.TestNo,-1*Sum(shoetestshipping.qty) as Qty,''3'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+'''   and shoetest.Complete is not null');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo  )  Shoetest  Group by TestNo )  ShoetestAll');
    SQL.Add('Left join (');
    SQL.Add('	Select TestNo,Qty,''1'' as SB');
    SQL.Add('	from ShoeTestMonth');
    SQL.Add('	where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('	   and ShoeTestMonth.KCMONTH='''+sMonth+''' ) ShoeTestMonth on ShoeTestMonth.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join (');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo ) ShoeTestIn on ShoeTestIn.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join (');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetestshipping.qty) as Qty,''3'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+'''  and shoetest.Complete is not null');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo ) ShoeTestship on ShoeTestship.TestNo=ShoetestAll.TestNo');
    SQL.Add('left join ShoeTest on ShoeTest.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join YPZL on YPZL.YPDH=ShoeTest.YPDH');
    SQL.Add('left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=ShoetestAll.TestNo');
    SQL.Add('where 1=1 ');
    if ComboBox2.Text <> 'ALL' then
      SQL.Add('  and YPZL.GSDH='''+ComboBox2.Text+'''');
    if Edit2.Text<>'' then
      SQL.Add('  and ShoeTest.YPDH like '''+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and ShoetestAll.TestNo like '''+Edit3.Text+'%'' ');
    if CheckBox2.Checked=true then
      SQL.Add('  and ShoetestAll.Qty>0 ');
    SQL.Add('order by ShoetestAll.TestNo ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TStockShoeMonth.Button7Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query2);
  end else
  begin
    ExportDefaultExcel(Query2);
  end;
end;

procedure TStockShoeMonth.Detail1Click(Sender: TObject);
begin
  SampleShoeStock_Detail:=TSampleShoeStock_Detail.Create(Self);
  SampleShoeStock_Detail.ShowModal();
end;

procedure TStockShoeMonth.Button11Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP3.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  with Query3 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CBY_Orders.MasterOrder as DDBH,''CBY ''as CKBH,CBY_Orders.total as Pairs,ShoeTestMonth.Qty as LastRem, ShoeTestIn.Qty as RKQty, ShoeTestship.Qty as XHQty, CBYShoetestAll.Qty,CBY_Orders.requiredShipDate as JHRQ, ');
    SQL.Add('CBYShoetestAll.workOrderId as TestNo,CBY_Orders.style as Article,Case when CBY_Orders.Cancel=1 then ''C'' else ''Y'' end DDZT,ShoeTestMonth_Memo.Memo  from (');
    SQL.Add('  Select  TestNo as workOrderId, Sum(Qty) as Qty from (');
    SQL.Add('    Select testNo,Qty,''1'' as SB from ShoeTestMonth');
    SQL.Add('    where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('    and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('    and ShoeTestMonth.CKBH=''CBY''');
    SQL.Add('    union all');
    SQL.Add('    Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''2'' as SB From CBY_Orders');
    SQL.Add('    where Convert(varchar,CBY_Orders.StockDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add('    union all ');
    SQL.Add('    Select CBY_Orders.workOrderId,-1*CBY_Orders.total as Qty, ''3'' as SB From CBY_Orders');
    SQL.Add('    where Convert(varchar,CBY_Orders.ShipDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add('  ) AS Shoetest');
    SQL.Add('  Group by TestNo');
    SQL.Add(') AS CBYShoetestAll');
    SQL.Add('Left join (');
    SQL.Add('  Select TestNo as workOrderId,Qty,''1'' as SB from ShoeTestMonth');
    SQL.Add('  where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('  and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('  and ShoeTestMonth.CKBH=''CBY''');
    SQL.Add(') AS ShoeTestMonth on ShoeTestMonth.workOrderId=CBYShoetestAll.workOrderId');
    SQL.Add('Left join (');
    SQL.Add('  Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''2'' as SB From CBY_Orders');
    SQL.Add('  where Convert(varchar,CBY_Orders.StockDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add(') AS ShoeTestIn on ShoeTestIn.workOrderId=CBYShoetestAll.workOrderId ');
    SQL.Add('Left join (');
    SQL.Add('  Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''3'' as SB From CBY_Orders');
    SQL.Add('  where Convert(varchar,CBY_Orders.ShipDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add(') AS ShoeTestship on ShoeTestship.workOrderId=CBYShoetestAll.workOrderId');
    SQL.Add('left join CBY_Orders on CBY_Orders.workOrderId=CBYShoetestAll.workOrderId');
    SQL.Add('left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=CBYShoetestAll.workOrderId');
    SQL.Add('where 1=1 ');
    if Edit4.Text<>'' then
      SQL.Add('and CBY_Orders.MasterOrder like '''+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add('and CBYShoetestAll.workOrderId like '''+Edit5.Text+'%'' ');
    if CheckBox3.Checked=true then
      SQL.Add('and CBYShoetestAll.Qty > 0');
    SQL.Add('order by CBY_Orders.MasterOrder');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TStockShoeMonth.Button12Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query3);
  end else
  begin
    ExportDefaultExcel(Query3);
  end;
end;

procedure TStockShoeMonth.Detail2Click(Sender: TObject);
begin
  CBYShoeStock_Detail:=TCBYShoeStock_Detail.Create(Self);
  CBYShoeStock_Detail.ShowModal();
end;

procedure TStockShoeMonth.Button9Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP2.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query2.First;
    while not Query2.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update ShoeTestMonth set YN=1');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and Testno ='''+Query2.fieldbyname('Testno').AsString+''' ');
        execsql;
      end;
      Query2.Next;
    end;
    showmessage('Already lock '+sYear+'/'+sMonth);
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TStockShoeMonth.Button10Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP2.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query2.First;
    while not Query2.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update ShoeTestMonth set YN=2');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and Testno ='''+Query2.fieldbyname('Testno').AsString+''' ');
        execsql;
      end;
      Query2.Next;
    end;
    showmessage('Already unlock '+sYear+'/'+sMonth);
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TStockShoeMonth.Button14Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP3.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query3.First;
    while not Query3.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update ShoeTestMonth set YN=1');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and Testno ='''+Query3.fieldbyname('Testno').AsString+''' ');
        execsql;
      end;
      Query3.Next;
    end;
    showmessage('Already lock '+sYear+'/'+sMonth);
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TStockShoeMonth.Button15Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP3.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query3.First;
    while not Query3.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update ShoeTestMonth set YN=2');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and Testno ='''+Query3.fieldbyname('Testno').AsString+''' ');
        execsql;
      end;
      Query3.Next;
    end;
    showmessage('Already unlock '+sYear+'/'+sMonth);
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TStockShoeMonth.Button8Click(Sender: TObject);
begin
  SampleFinishShoeStock_Print:=TSampleFinishShoeStock_Print.Create(self);
  SampleFinishShoeStock_Print.Quickrep1.prepare;
  SampleFinishShoeStock_Print.PageN.caption:=inttostr(SampleFinishShoeStock_Print.quickrep1.QRPrinter.pagecount);
  SampleFinishShoeStock_Print.Quickrep1.preview;
  SampleFinishShoeStock_Print.Free;
end;

procedure TStockShoeMonth.Button13Click(Sender: TObject);
begin
  CBYFinishShoeStock_Print:=TCBYFinishShoeStock_Print.Create(self);
  CBYFinishShoeStock_Print.Quickrep1.prepare;
  CBYFinishShoeStock_Print.PageN.caption:=inttostr(CBYFinishShoeStock_Print.quickrep1.QRPrinter.pagecount);
  CBYFinishShoeStock_Print.Quickrep1.preview;
  CBYFinishShoeStock_Print.Free;
end;

end.
