unit TWAuditReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,
  ComCtrls;

type
  TTWAuditReport = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CFMDATE: TDateTimeField;
    Query1LLNO: TStringField;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USAmount: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNAmount: TCurrencyField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    ComboBox2: TComboBox;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query3: TQuery;
    DataSource3: TDataSource;
    Query4: TQuery;
    DataSource4: TDataSource;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    Query4CFMDate1: TDateTimeField;
    Query4JGNO: TStringField;
    Query4CLBH: TStringField;
    Query4ywpm: TStringField;
    Query4dwbh: TStringField;
    Query4Qty: TCurrencyField;
    Query4USPrice: TCurrencyField;
    Query4USAmount: TCurrencyField;
    Query4VNPrice: TCurrencyField;
    Query4VNAmount: TCurrencyField;
    Query4ZSBH: TStringField;
    Query4zsjc: TStringField;
    Query3CFMDATE: TDateTimeField;
    Query3LLNO: TStringField;
    Query3CLBH: TStringField;
    Query3ywpm: TStringField;
    Query3dwbh: TStringField;
    Query3Qty: TCurrencyField;
    Query3USPrice: TCurrencyField;
    Query3USAmount: TCurrencyField;
    Query3VNPrice: TCurrencyField;
    Query3VNAmount: TCurrencyField;
    Query3ZWSM: TStringField;
    Query3MEMO: TStringField;
    Query3MEMO_1: TStringField;
    Query2CFMDATE: TDateTimeField;
    Query2RKNO: TStringField;
    Query2ZSBH: TStringField;
    Query2zsjc: TStringField;
    Query2ZSNO: TStringField;
    Query2CLBH: TStringField;
    Query2ywpm: TStringField;
    Query2dwbh: TStringField;
    Query2Qty: TCurrencyField;
    Query2USPrice: TFloatField;
    Query2USAmount: TFloatField;
    Query2VNPrice: TCurrencyField;
    Query2VNAmount: TCurrencyField;
    Query1MEMO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TWAuditReport: TTWAuditReport;

implementation

{$R *.dfm}

procedure TTWAuditReport.Button1Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with Query1 do begin
      active:=false;
      sql.Clear;
      sql.add('select KCLL.CFMDATE,KCLLS.LLNO,KCLLS.CLBH,clzl.ywpm,clzl.dwbh,KCLLS.Qty, ');
      sql.add('isnull(KCLLS.USPrice,0) as USPrice,isnull(KCLLS.USPrice,0) * KCLLS.Qty as USAmount,');
      sql.add('isnull(KCLLS.VNPrice,0) as VNPrice,isnull(KCLLS.VNPrice,0) * KCLLS.Qty as VNAmount,');
      sql.add('KCLL.MEMO from KCLLS');
      sql.add('left join KCLL on KCLL.LLNO = KCLLS.LLNO');
      sql.add('left join CLZL on CLZL.cldh = KCLLS.CLBH');
      sql.add('where KCLL.GSBH = '''+ComboBox2.Text+'''');
      sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.add('order by KCLL.CFMDATE ');
      active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with Query2 do begin
      active:=false;
      sql.Clear;
      sql.add('select KCRK.CFMDATE,KCRKS.RKNO,KCRK.ZSBH,zszl.zsjc,KCRK.ZSNO,KCRKS.CLBH,clzl.ywpm,clzl.dwbh,KCRKS.Qty, ');
      sql.add('isnull(KCRKS.USPrice,0) as USPrice,isnull(KCRKS.USPrice,0) * KCRKS.Qty as USAmount,');
      sql.add('isnull(KCRKS.VNPrice,0) as VNPrice,isnull(KCRKS.VNPrice,0) * KCRKS.Qty as VNAmount from KCRKS');
      sql.add('left join KCRK on KCRK.RKNO = KCRKS.RKNO');
      sql.add('left join CLZL on CLZL.cldh = KCRKS.CLBH');
      sql.add('left join zszl on zszl.zsdh = KCRK.ZSBH');
      sql.add('where KCRK.GSBH = '''+ComboBox2.Text+'''');
      sql.add('      and convert(smalldatetime,convert(varchar,KCRK.CFMDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.add('order by KCRK.CFMDATE ');
      active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with Query3 do begin
      active:=false;
      sql.Clear;
      sql.add('select KCLL.CFMDATE,KCLLS.LLNO,KCLLS.CLBH,clzl.ywpm,clzl.dwbh,KCLLS.Qty, ');
      sql.add('isnull(KCLLS.USPrice,0) as USPrice,isnull(KCLLS.USPrice,0) * KCLLS.Qty as USAmount,');
      sql.add('isnull(KCLLS.VNPrice,0) as VNPrice,isnull(KCLLS.VNPrice,0) * KCLLS.Qty as VNAmount,');
      sql.add('SCBLYY.ZWSM,KCLLS.MEMO,KCLL.MEMO from KCLLS');
      sql.add('left join KCLL on KCLL.LLNO = KCLLS.LLNO');
      sql.add('left join CLZL on CLZL.cldh = KCLLS.CLBH');
      sql.add('left join SCBLYY on KCLLS.YYBH = SCBLYY.YYBH');
      sql.add('where KCLL.GSBH = '''+ComboBox2.Text+'''');
      sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.add('and KCLLS.YYBH in (select YYBH from SCBLYY where ZWSM like ''%¸É®Æ%'')');
      sql.add('order by KCLL.CFMDATE ');
      active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    with Query4 do begin
      active:=false;
      sql.Clear;
      sql.add('select JGZL.CFMDate1,JGZLS.JGNO,JGZLS.CLBH,clzl.ywpm,clzl.dwbh,JGZLS.Qty, ');
      sql.add('isnull(JGZLS.USPrice,0) as USPrice,isnull(JGZLS.USPrice,0) * JGZLS.Qty as USAmount,');
      sql.add('isnull(JGZLS.VNPrice,0) as VNPrice,isnull(JGZLS.VNPrice,0) * JGZLS.Qty as VNAmount,');
      sql.add('JGZL.ZSBH,zszl.zsjc from JGZLS');
      sql.add('left join JGZL on JGZL.JGNO = JGZLS.JGNO');
      sql.add('left join CLZL on CLZL.cldh = JGZLS.CLBH');
      sql.add('left join zszl on zszl.zsdh = JGZL.ZSBH');
      sql.add('where JGZL.GSBH = '''+ComboBox2.Text+'''');
      sql.add('      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.add('order by JGZL.CFMDate1 ');
      active:=true;
    end;
  end;
end;

procedure TTWAuditReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TTWAuditReport.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if PageControl1.ActivePageIndex = 0 then begin
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
              eclApp.Cells(1,i+1):=DBGrideh1.Columns[i].Title.Caption;
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
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    if  query2.active  then
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
        for   i:=0   to   query2.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=DBGrideh2.Columns[i].Title.Caption;
          end;

        query2.First;
        j:=2;
        while   not   query2.Eof   do
          begin
            for   i:=0   to  query2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query2.Fields[i].Value;
            end;
          query2.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    if  query3.active  then
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
        for   i:=0   to   query3.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=DBGrideh3.Columns[i].Title.Caption;
          end;

        query3.First;
        j:=2;
        while   not   query3.Eof   do
          begin
            for   i:=0   to  query3.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query3.Fields[i].Value;
            end;
          query3.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    if  query4.active  then
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
        for   i:=0   to   query4.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=DBGrideh4.Columns[i].Title.Caption;
          end;

        query4.First;
        j:=2;
        while   not   query4.Eof   do
          begin
            for   i:=0   to  query4.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query4.Fields[i].Value;
            end;
          query4.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end;
end;

procedure TTWAuditReport.FormDestroy(Sender: TObject);
begin
  TWAuditReport:=nil;
end;

procedure TTWAuditReport.FormCreate(Sender: TObject);
begin
  DTP1.Date := now - 30;
  DTP2.Date := now;
end;

end.
