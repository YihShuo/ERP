unit OrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,DateUtils,comobj,
  GridsEh, DBGridEh
  ;

type
  TOrderList = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1SCBH: TStringField;
    Query1DDLB: TStringField;
    Query1ZLDW: TStringField;
    Query1Qty: TFloatField;
    Query1ARTICLE: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1XieMing: TStringField;
    Query1ShipDate: TDateTimeField;
    Label1: TLabel;
    CBX2: TComboBox;
    Label4: TLabel;
    CBX3: TComboBox;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderList: TOrderList; 
  sqltext:string;

implementation

uses main1;

{$R *.dfm}

procedure TOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TOrderList.Button1Click(Sender: TObject);
var sdate,edate:TDate;
a,b,y,m:integer;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);
try

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  SCZL.SCBH,SCZL.DDLB,SCZL.ZLDW,SCZL.Qty,XXZL.ARTICLE,XXZL.XieXing,XXZL.SheHao,XXZL.XieMing,DDZL.ShipDate');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('where GXLB='+''''+'S'+'''');
    sql.add('and DDZL.Shipdate>='+''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add('and DDZL.Shipdate<='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('and SCZL.SCBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and SCZL.SCBH=SCZL.ZLBH');
    sql.add('and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and DDZl.GSBH='+''''+main.edit2.Text+'''');
    sqltext:=sql.Text;
    sql.Add('order by SCZL.SCBH');
    active:=true;
  end;
except
  showmessage('Have wrong');
end;
end;

procedure TOrderList.Button2Click(Sender: TObject);
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
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.FieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.FieldCount-1   do
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

procedure TOrderList.FormDestroy(Sender: TObject);
begin
  OrderList:=nil;
end;

procedure TOrderList.DBGridEh1TitleClick(Column: TColumnEh);
var
 temp,sqlorder: string;
begin
  if not query1.Active then
    begin
      abort;
    end;
  temp := Column.FieldName;

  if temp='ShipDate' then
  begin
    sqlorder:=sqltext+' order by DDZL.ShipDate,SCZL.SCBH';
    query1.Active:=false;
    query1.SQL.Text:=sqlorder;
    query1.Active:=true;
  end;
  if temp='XieMing' then
  begin
    sqlorder:=sqltext+' order by XXZL.XieMing,SCZL.SCBH';
    query1.Active:=false;
    query1.SQL.Text:=sqlorder;
    query1.Active:=true;
  end;

  if temp='SCBH' then
  begin
    sqlorder:=sqltext+' order by SCZL.SCBH';
    query1.Active:=false;
    query1.SQL.Text:=sqlorder;
    query1.Active:=true;
  end;
end;

end.
