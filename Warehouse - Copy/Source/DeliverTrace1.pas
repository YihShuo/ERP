unit DeliverTrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,
  comobj,dateutils, GridsEh, DBGridEh;

type
  TDeliverTrace = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Query1ZLBH: TStringField;
    Query1CGNO: TStringField;
    Query1KHPO: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1CLSL: TCurrencyField;
    Query1ZSYWJC: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1YSYWSM: TStringField;
    Query1CGDate: TDateTimeField;
    Query1USERDate: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1CGQty: TCurrencyField;
    Query1Days: TSmallintField;
    Query1CFMDate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverTrace: TDeliverTrace;

implementation

{$R *.dfm}

procedure TDeliverTrace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDeliverTrace.FormCreate(Sender: TObject);
begin
DTP1.Date:=startofthemonth(date);
DTP2.Date:=date;
end;

procedure TDeliverTrace.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  CGZLSS.ZLBH,CGZLSS.CGNO, DDZL.KHPO,XXZL.Article,XXZl.XieMing,');
    sql.add('DDZL.DDRQ,DDZL.Shipdate,CGZLSS.CLSL,ZSZL.ZSYWJC,KCRKS.CLBH,CLZL.YWPM,');
    sql.add('CLZL.DWBH,CLZL.YSYWSM,CGZL.CGDate, CGZLSS.YQDate,CGZLSS.CFMDate,KCRK.USERDate,');
    //sql.Add('KCRKS.Qty,'); 給客人報表不用這個，是假數字
    sql.add('CGZLSS.Qty as Qty,CGZLSS.Qty as CGQty ');
    sql.add('from KCRKS ');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join CGZLSS on CGZLSS.CGNO=KCRKS.CGBH and CGZLSS.CLBH=KCRKS.CLBH ');
    sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    sql.add('left join DDZL on DDZL.ZLBH=CGZLSS.ZLBH')  ;
    sql.add('left join CLZL on KCRKS.CLBH=CLZL.CLDH ');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl.SheHao ');
    sql.add('where  convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    if edit6.text<>'' then
      begin
        sql.add('and XXZL.XieMing like '+''''+'%'+edit6.Text+'%'+'''');
      end;
    sql.add('and CLZL.LYCC='+''''+'N'+'''');
    sql.add('and CLZL.CQDH='+''''+'VN'+'''');               
    if edit5.text<>'' then
      begin
        sql.add('and CGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
      end;
    sql.add('and not exists( select * from (select distinct CGZLSS.CLBH,CGZLSS.ZLBH from CGZLSS ');
    sql.add('               left join KCRK on KCRK.ZSBH=CGZLSS.CGNO ');
    sql.add('                where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) < ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');

    sql.add(') CG where CG.CLBH=CGZLSS.CLBH and CG.ZLBH=CGZLSS.ZLBH )');
    sql.add('order by KCRK.USERDate,KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH');
    active:=true;
  end;
end;

procedure TDeliverTrace.Button2Click(Sender: TObject);
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
      eclApp.Cells(1,i+1):=query1.fields[i-1].displaylabel;
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

procedure TDeliverTrace.Query1CalcFields(DataSet: TDataSet);
begin
if not query1.FieldByName('CGDate').IsNull then
  begin
    query1.FieldByName('Days').Value:=query1.FieldByName('UserDate').Value-query1.FieldByName('CGDate').Value;
  end
  else
    begin
      query1.FieldByName('Days').Value:=0;
    end;
end;

procedure TDeliverTrace.FormDestroy(Sender: TObject);
begin
DeliverTrace:=nil;
end;

end.
