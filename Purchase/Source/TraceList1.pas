unit TraceList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh, ComCtrls;

type
  TTraceList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    Edit3: TEdit;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1ZLBH: TStringField;
    Query1XXCC: TStringField;
    Query1Qty: TCurrencyField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Button2: TButton;
    Query1Shipdate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceList: TTraceList;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TTraceList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TTraceList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZLSS.*,CLZL.YWPM,CLZL.DWBH,DDZL.Shipdate   ');
    sql.add('from CGZLSS');
    sql.add('left join CLZL on CLZl.CLDH=CGZLSS.CLBH ');
    sql.add('left join CGZL on CGZl.CGNO=CGZLSS.CGNO ');
    sql.add('left join DDZL on DDZL.DDBH=CGZLSS.ZLBH ');
    sql.add('where CGZLSS.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and CGZLSS.CGNO like '+''''+edit2.Text+'%'+'''');
    sql.add('and CGZLSS.CLBH like '+''''+edit3.Text+'%'+'''');
    sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,CGZL.CGDate,111))  between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('order by CGZLSS.CLBH,CGZLSS.ZLBH');
    active:=true;
  end;
end;

procedure TTraceList.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
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
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TTraceList.FormDestroy(Sender: TObject);
begin
TraceList:=nil;
end;

procedure TTraceList.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

end.
