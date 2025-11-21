unit AccountRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls ,
  dateutils,comobj;

type
  TAccountRep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1Qty: TFloatField;
    Query1LackQty: TIntegerField;
    Query1okQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountRep: TAccountRep;

implementation

{$R *.dfm}

procedure TAccountRep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAccountRep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCSMRK.DDBH,XXZL.Article, XXZL.XieMing,DDZL.Pairs,okDD.okQty,sum(SCSMRK.Qty) as Qty');
    sql.add('from SCSMRK');
    sql.add('left join DDZL on DDZl.DDBH=SCSMRK.DDBH ');
    sql.add('left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.add('left join (select DDBH,sum(Qty) as okQty from SCSMRK group by DDBH) okDD ');
    sql.add('            on okDD.DDBh=SCSMRK.DDBH');
    sql.add('where convert(smalldatetime,convert(varchar,SCSMRK.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('group by SCSMRK.DDBH,XXZL.Article, XXZL.XieMing,okDD.okQty,DDZL.Pairs');
    active:=true;
  end;
end;

procedure TAccountRep.FormCreate(Sender: TObject);
begin
DTP1.Date:=startofthemonth(incmonth(date,-1)) ;
DTP2.Date:=endofthemonth(incmonth(date,-1));
end;

procedure TAccountRep.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if query1.FieldByName('Pairs').value=query1.FieldByName('okQty').value  then
  begin
    DBGrideh1.canvas.Font.Color:=clblue;
  end;
end;

procedure TAccountRep.Button2Click(Sender: TObject);
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
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
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

procedure TAccountRep.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
    fieldbyname('LackQty').Value:=fieldbyname('Pairs').Value -fieldbyname('okQty').Value  ;
  end;
end;

procedure TAccountRep.FormDestroy(Sender: TObject);
begin
AccountRep:=nil;
end;

end.
