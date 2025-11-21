unit InStockPriceP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, StdCtrls, ComCtrls,comobj;

type
  TInStockPrice = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Label3: TLabel;
    GSBH: TComboBox;
    CGSD: TDateTimePicker;
    Label2: TLabel;
    CGED: TDateTimePicker;
    Button1: TButton;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    DS1: TDataSource;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1CKBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice_2: TFloatField;
    Query1USACC_2: TFloatField;
    Query1VNPrice_2: TFloatField;
    Query1VNACC_2: TFloatField;
    Query1CFMDATE: TDateTimeField;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InStockPrice: TInStockPrice;

implementation

{$R *.dfm}

procedure TInStockPrice.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRKS.RKNO,KCRKS.CLBH,clzl.ywpm,KCRK.CKBH,KCRKS.Qty,');
    sql.add('       KCRKS.USPrice_2,KCRKS.USACC_2, KCRKS.VNPrice_2,KCRKS.VNACC_2,KCRK.CFMDATE');
    sql.add('from KCRKS');
    sql.add('left join KCRK on KCRKS.RKNO = KCRK.RKNO');
    sql.add('left join clzl on KCRKS.CLBH = clzl.cldh');
    sql.add('where KCRKS.RKNO like '+'''%'+edit1.text+'%'''+'');
    sql.add('and KCRKS.CLBH like '+'''%'+edit2.text+'%'''+'');
    sql.add('and KCRK.CFMDATE >= '+''''+datetostr(cgsd.date)+''''+'');
    sql.add('and KCRK.CFMDATE <= '+''''+datetostr(cged.date)+''''+'');
    if gsbh.Text <> 'ALL' then
      sql.add('and KCRK.GSBH = '+''''+gsbh.Text+''''+'');
    sql.add('order by KCRKS.RKNO,KCRK.CFMDATE');
    //memo1.Text:=sql.text;
    active:=true;
  end;
end;

procedure TInStockPrice.FormCreate(Sender: TObject);
begin
  CGSD.Date:=Now-30;
  CGED.Date:=Now;
end;

procedure TInStockPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TInStockPrice.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
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
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
  Query1.First;
  j:=2;
  while   not  Query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   Query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      Query1.Next;
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
