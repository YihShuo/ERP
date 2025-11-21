unit ScanStockDet_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, PrnDbgeh, GridsEh, DBGridEh,comobj;

type
  TScanStockDet_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1XXCC: TStringField;
    Query1DDCC: TStringField;
    Query1Qty: TIntegerField;
    Query1okQty: TIntegerField;
    Query1LackQty: TIntegerField;
    Excel1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanStockDet_Det: TScanStockDet_Det;

implementation

uses main1;

{$R *.dfm}

procedure TScanStockDet_Det.FormDestroy(Sender: TObject);
begin
ScanStockDet_Det:=nil;
end;

procedure TScanStockDet_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;

end;

procedure TScanStockDet_Det.FormCreate(Sender: TObject);
begin
query1.active:=true;
end;

procedure TScanStockDet_Det.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.Preview;
end;

procedure TScanStockDet_Det.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
    fieldbyname('LackQty').Value:=fieldbyname('Qty').Value -fieldbyname('okQty').Value;
  end;
end;

procedure TScanStockDet_Det.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if query1.FieldByName('okQty').value=query1.FieldByName('Qty').value then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
end;

procedure TScanStockDet_Det.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
end;

procedure TScanStockDet_Det.Excel1Click(Sender: TObject);
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
  end   else
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
