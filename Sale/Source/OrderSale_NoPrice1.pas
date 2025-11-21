unit OrderSale_NoPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,
  PrnDbgeh, Menus,comobj;

type
  TOrderSale_NoPrice = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1XXCC: TStringField;
    Query1DDCC: TStringField;
    Query1Qty: TIntegerField;
    Query1IPrice: TCurrencyField;
    Query1ETD: TDateTimeField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderSale_NoPrice: TOrderSale_NoPrice;

implementation

uses main1;

{$R *.dfm}

procedure TOrderSale_NoPrice.FormDestroy(Sender: TObject);
begin
OrderSale_NoPrice:=nil;
end;

procedure TOrderSale_NoPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TOrderSale_NoPrice.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDDS.*,YWDD.ETD');
    sql.add('from YWDDS');
    sql.add('left join YWDD on YWDD.DDBH=YWDDS.DDBH');
    sql.add('where convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''' );
    sql.add('       and YWDDS.DDBH like '+''''+edit1.text+'%'+'''');
    sql.add('       and isnull(YWDDS.IPrice,0)=0 ') ;
    sql.add('       and YWDDS.Qty<>0 ');
    sql.add('       and YWDD.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by YWDDS.DDBH,YWDDS.XXCC ');
    active:=true;
  end;
end;

procedure TOrderSale_NoPrice.Print1Click(Sender: TObject);
begin
printdbgrideh1.preview;
end;

procedure TOrderSale_NoPrice.Excel1Click(Sender: TObject);
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

procedure TOrderSale_NoPrice.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
