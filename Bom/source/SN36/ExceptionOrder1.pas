unit ExceptionOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls, DBCtrls,
  ExtCtrls, ComCtrls,dateutils,comobj;

type
  TExceptionOrder = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    lbCSD: TLabel;
    dtpStart: TDateTimePicker;
    lbTo: TLabel;
    dtpEnd: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1GSBH: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1Pairs: TIntegerField;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label2: TLabel;
    Query1exp1: TStringField;
    Query1exp2: TStringField;
    Query1exp3: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
      sdate,edate:Tdate;
    { Public declarations }
  end;

var
  ExceptionOrder: TExceptionOrder;

implementation

uses main1,FunUnit, BOMUsage1;

{$R *.dfm}

procedure TExceptionOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExceptionOrder.FormCreate(Sender: TObject);
begin
   dtpStart.date:=startofthemonth(incmonth(Now,2))+5;
   dtpEnd.date:=startofthemonth(incmonth(Now,3))+4;

end;

procedure TExceptionOrder.FormDestroy(Sender: TObject);
begin
   ExceptionOrder:=nil;
end;

procedure TExceptionOrder.Button1Click(Sender: TObject);
begin
  Label19.Caption:='Red color : '+BOMUsage.QuoteSize+'-Quote >0';
  sdate:=dtpStart.Date;
  edate:=dtpEnd.Date;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select DDBH, ddzl.gsbh, ddzl.XieXing, ddzl.Shehao, ddzl.Article, ddzl.Pairs, ddzl.Shipdate,xtbwyl.expect as exp1,xtbwyl1.expect as exp2,QuoteUsg.XieXing as exp3 from DDZL');
    sql.Add('left join  (select QuoteUsg.XieXing,QuoteUsg.SheHao,''1'' as expect from QuoteUsg,xtbwyl');
    sql.Add('where QuoteUsg.XieXing=xtbwyl.XieXing and QuoteUsg.SheHao=xtbwyl.SheHao and QuoteUsg.BWBH=xtbwyl.BWBH  and QuoteUsg.XTCC=xtbwyl.XTCC  and (xtbwyl.CLSL-QuoteUsg.CLSL)>0');
    sql.Add('Group by QuoteUsg.XieXing,QuoteUsg.SheHao ) xtbwyl on DDZL.XieXing=xtbwyl.XieXing and DDZL.SheHao=xtbwyl.SheHao');
    sql.Add('left join  (select QuoteUsg.XieXing,QuoteUsg.SheHao,''2'' as expect from QuoteUsg,xtbwyl1');
    sql.Add('where QuoteUsg.XieXing=xtbwyl1.XieXing and QuoteUsg.SheHao=xtbwyl1.SheHao and QuoteUsg.BWBH=xtbwyl1.BWBH  and QuoteUsg.XTCC=xtbwyl1.XTCC  and (xtbwyl1.CLSL-QuoteUsg.CLSL)>0');
    sql.Add('Group by QuoteUsg.XieXing,QuoteUsg.SheHao ) xtbwyl1 on DDZL.XieXing=xtbwyl.XieXing and DDZL.SheHao=xtbwyl1.SheHao');
    sql.Add('left join (select XieXing,SheHao from QuoteUsg Group by XieXing,SheHao) QuoteUsg on QuoteUsg.XieXing=DDZL.XieXing and QuoteUsg.SheHao=DDZL.SheHao ');
    sql.Add('where ((xtbwyl.expect is not null or xtbwyl1.expect is not null) or (QuoteUsg.XieXing is null))');
    sql.Add('and ddbh like '''+edit1.Text+'%''');
    sql.Add('and article like '''+edit3.Text+'%''');
    sql.Add('and gsbh='''+main.edit2.text+'''');
    sql.add('and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by DDBH ');
    active:=true;
  end;
end;

procedure TExceptionOrder.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldCount-1   do
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
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          query1.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TExceptionOrder.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((Query1.FieldByName('exp1').AsString<>'') or (Query1.FieldByName('exp2').AsString<>''))  then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
  if (Query1.FieldByName('exp3').AsString='')  then
  begin
    DBGridEh1.canvas.font.color:=clBlue;;
  end;
end;

end.
