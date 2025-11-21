unit Deliveraccount_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables,comobj, Menus, PrnDbgeh, GridsEh,
  DBGridEh;

type
  TDeliveraccount_Detail = class(TForm)
    Query1: TQuery;
    DBGrid1: TDBGridEh;
    DataSource1: TDataSource;
    Query1LLNO: TStringField;
    Query1CLBH: TStringField;
    Query1DFL: TStringField;
    Query1SCBH: TStringField;
    Query1TempQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1CLSL: TCurrencyField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1Person: TFloatField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1ZWSM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Deliveraccount_Detail: TDeliveraccount_Detail;

implementation

{$R *.dfm}

procedure TDeliveraccount_Detail.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
end;

procedure TDeliveraccount_Detail.Query1CalcFields(DataSet: TDataSet);
begin
  if query1.FieldByName('CLSL').value<>0 then
  begin
    query1.FieldByName('Person').value:=query1.FieldByName('Qty').value/query1.FieldByName('CLSL').value*100;
  end;
end;

procedure TDeliveraccount_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.Active:=false;
end;

procedure TDeliveraccount_Detail.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
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
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
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

procedure TDeliveraccount_Detail.FormDestroy(Sender: TObject);
begin
deliveraccount_Detail:=nil;
end;

end.
