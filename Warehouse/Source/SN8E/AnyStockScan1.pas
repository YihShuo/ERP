unit AnyStockScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,
  ComCtrls,comobj, GridsEh, DBGridEh, EhlibBDE, iniFiles;

type
  TAnyStockScan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Button4: TButton;
    Query1: TQuery;
    Query1zsqm: TStringField;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1LastRem: TFloatField;
    Query1RKQty: TFloatField;
    Query1LLQty: TFloatField;
    Query1Qty: TFloatField;
    Query1CKBH: TStringField;
    Query1KCBH: TStringField;
    Query1LBBH: TStringField;
    Query1ZWPM: TStringField;
    Query1zsdh: TStringField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    temp: TQuery;
    DBGrid1: TDBGridEh;
    Button2: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure NN1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  AnyStockScan: TAnyStockScan;
  NDate:TDate;
  ayear,amonth:string;

implementation

uses main1, MaterialTraceScan1, FunUnit;

{$R *.dfm}

procedure TAnyStockScan.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('LastRem')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('LLQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TAnyStockScan.FormDestroy(Sender: TObject);
begin
  AnyStockScan:=nil;
end;

procedure TAnyStockScan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('if object_id('+''''+'tempdb..#CLZLKCScan'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKCScan end   ');
    execsql;
  end;
  action:=cafree;
end;

procedure TAnyStockScan.FormCreate(Sender: TObject);
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  ReadIni();
  DTP1.Date:=NDate;
end;

procedure TAnyStockScan.Query1CalcFields(DataSet: TDataSet);
begin
  with query1 do
  begin
    fieldbyname('Qty').Value:=fieldbyname('LastRem').Value+fieldbyname('RKQty').Value-fieldbyname('LLQty').Value;
  end;
end;

procedure TAnyStockScan.Button1Click(Sender: TObject);
var year,month,day:word;
    KCRK,KCRKS,KCLL,KCLLS:string;
    KCCLMONTHSQL:String;
begin
  decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('if object_id(''tempdb..#CLZLKCScan'') is not null  ');
    sql.add('begin   drop table #CLZLKCScan end   ');
    sql.Add('select KCZLS.CKBH, KCZLS.CLBH as CLDH,LastKC.LBBH, isnull(LastKC.LastRem,0) LastRem, RK.RKQty, LL.LLQty into #CLZLKCScan  ');
    sql.Add('from KCZLS with (nolock) ');
    //KC
    sql.add('Left join ( ');
    sql.add('     Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Max(KCCLMONTH.LBBH) as LBBH,Sum(isnull(KCCLMONTH.Qty,0)) as LastRem ');
    sql.add('     from KCCLMONTH_ScanRF as KCCLMONTH   with (nolock) ');
    sql.add('     left join CLZL on KCCLMONTH.CLBH = CLZL.CLDH ');
    sql.add('     where KCCLMONTH.KCYEAR='''+ayear+''' ');
    sql.add('           and KCMONTH='''+amonth+'''');
    if edit1.Text<>'' then
      sql.add('         and KCCLMONTH.CLBH like '''+edit1.Text+'%'' ');
    if edit2.Text<>'' then
      sql.Add('         and CLZL.YWPM like ''%'+edit2.Text+'%'' ');
    sql.Add('      Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH ');
    sql.add('      ) LastKC  on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH ');
    //RK
    sql.add('left join (SELECT KCRKScan_RFSS.CLBH, KCRKScan_RF.CKBH, SUM(isnull(KCRKScan_RFSS.Qty,0)) RKQty from KCRKScan_RFSS ');
    sql.add('           left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO ') ;
    sql.add('           left join CLZL on KCRKScan_RFSS.CLBH = CLZL.CLDH ') ;
    sql.add('           where convert(smalldatetime,convert(varchar,KCRKScan_RFSS.CFMDate,111))>= ') ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCRKScan_RFSS.CFMDate,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    if edit1.Text<>'' then
      sql.add('         and KCRKScan_RFSS.CLBH like '''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
      sql.Add('         and CLZL.YWPM like ''%'+edit2.Text+'%'' ');
    sql.add('           group by KCRKScan_RFSS.CLBH, KCRKScan_RF.CKBH) RK on RK.CLBH=KCZLS.CLBH  and RK.CKBH=KCZLS.ckbh');
    //LL
    sql.add('left join (select CLBH,CKBH, SUM(isnull(LLQty,0)) LLQty from( ');
    sql.add('           SELECT KCLLScan_RFSS.CLBH, isnull(KCLL.CKBH,'''+main.Edit2.Text+''') CKBH, SUM (KCLLScan_RFSS.SCANQty) LLQty from KCLLScan_RFSS ') ;
    sql.add('           left join KCLLS on KCLLScan_RFSS.LLNO=KCLLS.LLNO and KCLLScan_RFSS.CLBH=KCLLS.CLBH ') ;
    sql.Add('                              and KCLLScan_RFSS.DFL=KCLLS.DFL and KCLLScan_RFSS.SCBH=KCLLS.SCBH ');
    sql.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           left join CLZL on KCLLScan_RFSS.CLBH = CLZL.CLDH ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCLLScan_RFSS.SCANUSERDATE,111))>= ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLLScan_RFSS.SCANUSERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    if edit1.Text<>'' then
      sql.add('         and KCLLScan_RFSS.CLBH like '''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
      sql.Add('         and CLZL.YWPM like ''%'+edit2.Text+'%'' ');
    sql.add('           group by KCLLScan_RFSS.CLBH, KCLL.CKBH ');
    sql.add('           union all ');
    sql.add('           SELECT KCLLScan_RFSSS.CLBH, isnull(KCLL.CKBH,'''+main.Edit2.Text+''') CKBH, SUM (KCLLScan_RFSSS.SCANQty) LLQty from KCLLScan_RFSSS ') ;
    sql.add('           left join KCLLS on KCLLScan_RFSSS.LLNO=KCLLS.LLNO and KCLLScan_RFSSS.CLBH=KCLLS.CLBH  ') ;
    sql.Add('                              and KCLLScan_RFSSS.DFL=KCLLS.DFL and KCLLScan_RFSSS.SCBH=KCLLS.SCBH ');
    sql.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           left join CLZL on KCLLScan_RFSSS.CLBH = CLZL.CLDH ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCLLScan_RFSSS.SCANUSERDATE,111))>= ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLLScan_RFSSS.SCANUSERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    if edit1.Text<>'' then
      sql.add('         and KCLLScan_RFSSS.CLBH like '''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
      sql.Add('         and CLZL.YWPM like ''%'+edit2.Text+'%'' ');
    sql.add('           group by KCLLScan_RFSSS.CLBH, KCLL.CKBH) KCLL group by CLBH, CKBH) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.ckbh');
    sql.add('where  not (LastKC.LastRem is null  and RK.RKQty is null and LL.LLQty is null ) ');
    //query
    sql.add('select  clzl.zsdh,zszl.zsqm,#CLZLKCScan.CLDH,IsNull(#CLZLKCScan.LBBH,CLLBFLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CKBH, ');
    sql.add('       isnull(#CLZLKCScan.LastRem,0) as LastRem,isnull(round(#CLZLKCScan.RKQty,'+WH_Decimal+'),0) as RKQty,isnull(round(#CLZLKCScan.LLQty,'+WH_Decimal+'),0) as LLQty, ');
    sql.add('       isnull(Round(#CLZLKCScan.LastRem,'+WH_Decimal+'),0)+isnull(Round(#CLZLKCScan.RKQty,'+WH_Decimal+'),0)-isnull(Round(#CLZLKCScan.LLQty,'+WH_Decimal+'),0) as Qty ');
    sql.add('from #CLZLKCScan ');
    sql.add('left join CLZL on CLZL.CLDH=#CLZLKCScan.CLDH');
    sql.add('left join zszl on zszl.zsdh=clzl.zsdh ');
    sql.add('left join KCZLS on KCZLS.CLBH=#CLZLKCScan.CLDH  and KCZLS.CKBH=#CLZLKCScan.CKBH ');
    //LBBH
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='''+main.Edit2.Text+''' ');
    sql.add('where');
    sql.add(' not (#CLZLKCScan.LastRem is null  and #CLZLKCScan.RKQty is null and #CLZLKCScan.LLQty is null) ');
    if edit1.Text<>'' then
      sql.add('and #CLZLKCScan.CLDH like '''+edit1.Text+'%''');
    if edit2.Text<>'' then
      sql.add('and CLZL.YWPM like ''%'+edit2.text+'%''');
    sql.add('order by #CLZLKCScan.CLDH  ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
end;

procedure TAnyStockScan.Button4Click(Sender: TObject);
var KCYEAR,KCMONTH:string;
    year,month,day:word;
begin
  //停用
  decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  KCyear:=floattostr(year);
  KCmonth:=floattostr(month);
  if length(KCmonth)=1 then
    KCmonth:='0'+KCmonth;

  if ((edit1.text<>'') or (edit2.text<>'')) then
  begin
    showmessage('Pls select all material!');
    abort;
  end;
  if (Query1.Active=false) then
  begin
    showmessage('Pls select all material!');
    abort;
  end else begin
    if (Query1.RecordCount=0) then
    begin
      showmessage('Pls select all material!');
      abort;
    end;
  end;
  if (DTP1.Date+1)< endofthemonth(DTP1.Date) then
  begin
    showmessage('Pls select the last day of the month!');
    abort;
  end;

  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct YN from KCCLMONTH_ScanRF  KCCLMONTH ');
    sql.add('where KCYEAR='+''''+KCyear+'''');
    sql.add('and KCMONTH='+''''+KCmonth+'''');
    sql.add('and exists(select KCCK.* from KCCK ');
    sql.add('           where KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('             and KCCK.GSBH='+''''+main.Edit2.text+''''+')');
    sql.add('order by YN DESC');
    active:=true;
    if fieldbyname('YN').value='1' then
    begin
        showmessage('Account already lock the data of stock.'+#13+'Pls contect with account.');
        abort;
    end;
    active:=false;
    sql.Clear;
    sql.add('delete KCCLMONTH_ScanRF ');
    sql.add('where KCYEAR='+''''+KCyear+'''');
    sql.add('and KCMONTH='+''''+KCmonth+'''');
    sql.add('and exists(select KCCK.* ');
    sql.add('           from KCCK ');
    sql.add('           where KCCK.CKBH=KCCLMONTH_ScanRF.CKBH ');
    sql.add('           and KCCK.GSBH='+''''+main.Edit2.Text+''''+')');


    sql.add('insert KCCLMONTH_ScanRF ');
    sql.add('select  '+''''+KCyear+''''+' as KCYEAR,'+''''+KCmonth+''''+' as KCMONTH, ');
    sql.add(''''+main.Edit2.Text+''''+',#CLZLKCScan.CLDH as CLBH, ');
    sql.add('isnull(#CLZLKCScan.LastRem,0)+isnull(#CLZLKCScan.RKQty,0)-isnull(#CLZLKCScan.LLQty,0) as Qty, ');
    sql.add('null as USPRice,0 as CWHL,0 as VNPrice,null as VNACC,CLLBFLS.LBBH,convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE, ');
    sql.add(''''+main.edit1.text+''''+' as USERID,'+''''+'0'+''''+' as YN ');
    sql.add('from #CLZLKCScan ');
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=#CLZLKCScan.CLDH and CLLBFLS.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('where  isnull(#CLZLKCScan.LastRem,0)+isnull(#CLZLKCScan.RKQty,0)-isnull(#CLZLKCScan.LLQty,0)>=0.01 ');
    sql.add('and not (#CLZLKCScan.LastRem is null  and #CLZLKCScan.RKQty is null and #CLZLKCScan.LLQty is null) ');
    execsql;
    showmessage('Succeed.');
  end;

end;

procedure TAnyStockScan.NN1Click(Sender: TObject);
begin
  MaterialTraceScan:=TMaterialTraceScan.create(self);
  MaterialTraceScan.edit1.Text:=query1.fieldbyname('CLDH').AsString;
  MaterialTraceScan.CKBH:=query1.fieldbyname('CKBH').AsString;
  MaterialTraceScan.button1click(nil);
  MaterialTraceScan.show;
end;

procedure TAnyStockScan.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
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
    for i:=1 to  Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while  not Query1.Eof   do
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

end.

