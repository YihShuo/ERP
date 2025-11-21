unit ScanStockBrand1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  PrnDbgeh,comobj;

type
  TScanStockBrand = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Label5: TLabel;
    Query1KHBH: TStringField;
    Query1KFJC: TStringField;
    Query1DDGB: TStringField;
    Query1Country: TStringField;
    Query1Qty: TFloatField;
    Query1okQty: TIntegerField;
    Query1LackQty: TFloatField;
    Query1CTS: TIntegerField;
    Query1okCTS: TIntegerField;
    Query1LackCTS: TIntegerField;
    Detail1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanStockBrand: TScanStockBrand;

implementation

uses ScanStockBrand_Det1, main1;

{$R *.dfm}

procedure TScanStockBrand.FormDestroy(Sender: TObject);
begin
ScanStockBrand:=nil;
end;

procedure TScanStockBrand.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanStockBrand.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.KHBH,YWCP.KFJC,YWCP.DDGB,YWCP.Country,isnull(sum(YWCP.Qty),0) as Qty,');
    sql.add('       isnull(sum(YWCP.okQty),0) as okQty,isnull(sum(YWCP.Qty),0)-isnull(sum(YWCP.okQty),0) as LackQty,');
    sql.add('       isnull(sum(YWBZPO.CTS),0) as CTS, isnull(sum(YWCP.okCTS),0) as okCTS ');
    sql.add('       ,isnull(sum(YWBZPO.CTS),0)-isnull(sum(YWCP.okCTS),0) as LackCTS ');
    sql.add('from (select YWCP.DDBH,count(YWCP.DDBH) as okCTS,sum(YWCP.Qty) as okQty,');
    sql.add('             DDZL.DDGB,LBZLS.YWSM as Country,YWDD.Qty,DDZL.KHBH,KFZL.KFJC');
    sql.add('      from YWCP with (nolock)');
    sql.add('      left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('      left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('      left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('      left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.Add('      where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('            and YWCP.KCBH like '+''''+edit2.Text+'%'+'''');
    sql.add('            and isnull(KFZL.KFJC,'+''''+''+''''+') like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('            and isnull(LBZLS.YWSM,'+''''+''+''''+') like '+''''+'%'+edit4.text+'%'+'''');
    sql.add('            and YWCP.SB='+''''+'1'+'''');
    sql.add('            and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('       group by YWCP.DDBH,YWDD.Qty,DDZL.DDGB,LBZLS.YWSM,DDZL.KHBH,KFZL.KFJC) YWCP');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH ');
    sql.add('group by  YWCP.KHBH,YWCP.KFJC,YWCP.DDGB,YWCP.Country ');
    sql.add('order by  YWCP.KFJC,YWCP.KHBH,YWCP.Country,YWCP.DDGB');
    active:=true;
  end;
end;

procedure TScanStockBrand.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if query1.FieldByName('LackQty').value=0 then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
end;

procedure TScanStockBrand.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.Preview;
end;

procedure TScanStockBrand.Excel1Click(Sender: TObject);
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

procedure TScanStockBrand.Detail1Click(Sender: TObject);
begin
ScanStockBrand_Det:=TScanStockBrand_Det.create(nil);
ScanStockBrand_Det.show;
end;

end.
