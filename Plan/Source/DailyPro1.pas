unit DailyPro1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, StdCtrls, ComCtrls, ExtCtrls,
  ehlibBDE,comobj, Buttons;

type
  TDailyPro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    CB1: TComboBox;
    Button2: TButton;
    Button1: TButton;
    QTemp: TQuery;
    Query1: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1SCDate: TDateTimeField;
    Query1GSBH: TStringField;
    Query1DepNo: TStringField;
    Query1C_Qty: TIntegerField;
    Query1C_Stock: TIntegerField;
    Query1S_Qty: TIntegerField;
    Query1S_Stock: TIntegerField;
    Query1W_Qty: TIntegerField;
    Query1W_Stock: TIntegerField;
    Query1Z_Qty: TIntegerField;
    Query1Z_Stock: TIntegerField;
    Query1O_Qty: TIntegerField;
    Query1O_Stock: TIntegerField;
    Query1A_Qty: TIntegerField;
    Query1A_Set: TIntegerField;
    Query1RSCQ: TIntegerField;
    Query1QJQty: TIntegerField;
    ImportData: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyPro: TDailyPro;

implementation

uses main1;

{$R *.dfm}

procedure TDailyPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDailyPro.FormDestroy(Sender: TObject);
begin
DailyPro:=nil;
end;

procedure TDailyPro.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:='All';
    active:=false;
  end;
DTP1.Date:=date-7;
DTP2.date:=date;

end;

procedure TDailyPro.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCPTZL.*,sum(CQQty) as RSCQ,sum(QJQty) as QJQty ');
    sql.add('from SCPTZL');
    sql.add('left join RSCQ on convert(varchar,SCPTZL.SCDate,111)=convert(varchar,RSCQ.RSDate,111)');
    sql.add('where convert(smalldatetime,convert(varchar,SCPTZL.SCDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and SCPTZL.DepNo like '+''''+edit1.Text+'%'+'''');
    if CB1.text<>'All' then
      begin
        sql.add('      and SCPTZL.GSBH='+''''+CB1.Text+'''');
      end;
    sql.add('group by SCPTZL.SCDate,SCPTZL.GSBH,SCPTZL.DepNo,SCPTZL.C_Qty,SCPTZL.C_Stock,');
    sql.add('         SCPTZL.S_Qty,SCPTZL.S_Stock,SCPTZL.W_Qty,SCPTZL.W_Stock,SCPTZL.Z_Qty,');
    sql.add('         SCPTZL.Z_Stock,SCPTZL.O_Qty,SCPTZL.O_Stock,SCPTZL.A_Qty,SCPTZL.A_Set');
    sql.add('order by SCPTZL.SCDate');
    active:=true;
  end;
end;

procedure TDailyPro.Button2Click(Sender: TObject);
var 
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
      Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1    do
          begin
              eclApp.Cells(4,i+1):=query1.fields[i].FieldName;
              eclApp.Cells.item[1,i+1].font.size:='8';
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.fieldcount-1   do
            begin
              eclApp.Cells(j+3,i+1):=query1.Fields[i].Value;
              eclApp.Cells.item[j+3,i+1].font.size:='8';
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

end.
