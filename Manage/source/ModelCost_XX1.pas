unit ModelCost_XX1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, PrnDbgeh, GridsEh, DBGridEh, DB, DBTables,comobj,ehlibbde;

type
  TModelCost_XX = class(TForm)
    Query1: TQuery;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1SB: TStringField;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TFloatField;
    Query1ZWSM: TStringField;
    Query1ZWPM: TStringField;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelCost_XX: TModelCost_XX;

implementation

{$R *.dfm}

procedure TModelCost_XX.FormDestroy(Sender: TObject);
begin
ModelCost_XX:=nil;
end;

procedure TModelCost_XX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TModelCost_XX.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TModelCost_XX.Query1CalcFields(DataSet: TDataSet);
begin

with query1 do
  begin
    fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value;
  end;
end;

procedure TModelCost_XX.Excel1Click(Sender: TObject);
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

end.
