unit StockShoeMonth_TRList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Menus, Comobj, StdCtrls,
  ExtCtrls;

type
  TStockShoeMonth_TRList = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1DDBH1: TStringField;
    Query1Qty: TIntegerField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  StockShoeMonth_TRList: TStockShoeMonth_TRList;

implementation

{$R *.dfm}

procedure TStockShoeMonth_TRList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TStockShoeMonth_TRList.FormDestroy(Sender: TObject);
begin
  StockShoeMonth_TRList:=nil;
end;

procedure TStockShoeMonth_TRList.Excel1Click(Sender: TObject);
begin
  ExportExcel(Query1);
end;

//¿é¥XExcel
procedure TStockShoeMonth_TRList.ExportExcel(Query:TQuery);
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
      for   i:=1   to   query.fieldcount   do
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

procedure TStockShoeMonth_TRList.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

procedure TStockShoeMonth_TRList.Button2Click(Sender: TObject);
begin
  ExportExcel(Query1);
end;

procedure TStockShoeMonth_TRList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * ');
    SQL.Add('from YWCPMONTH_DDZLTR ');
    SQL.Add('where 1=1 ');
    if Edit1.Text<>'' then
    SQL.Add(' and YWCPMONTH_DDZLTR.DDBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
    SQL.Add(' and YWCPMONTH_DDZLTR.DDBH1 like '''+Edit2.Text+'%'' ');
    SQL.Add('order by YWCPMONTH_DDZLTR.DDBH,YWCPMONTH_DDZLTR.DDBH1 ');
    Active:=true;
  end;
end;

end.
