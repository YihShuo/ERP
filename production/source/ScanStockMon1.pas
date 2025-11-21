unit ScanStockMon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, PrnDbgeh, DB, Menus, DBTables, ComCtrls,
  StdCtrls, ExtCtrls,comobj,dateutils;

type
  TScanStockMon = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    RadG1: TRadioGroup;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit1: TEdit;
    Edit8: TEdit;
    Panel2: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Panel3: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Qtemp: TQuery;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label4: TLabel;
    Edit5: TEdit;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Country: TStringField;
    Query1KFJC: TStringField;
    Query1Qty: TFloatField;
    Query1okQty: TIntegerField;
    Query1LackQty: TFloatField;
    Query1CTS: TIntegerField;
    Query1okCTS: TIntegerField;
    Query1LackCTS: TIntegerField;
    Query1ETD: TDateTimeField;
    DS1: TDataSource;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Panel3DblClick(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanStockMon: TScanStockMon;

implementation

uses main1;

{$R *.dfm}

procedure TScanStockMon.FormDestroy(Sender: TObject);
begin
ScanStockMon:=nil;
end;

procedure TScanStockMon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanStockMon.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    DTP1.Date:=startofthemonth(fieldbyname('NDate').Value)+5;
    DTP2.date:=endofthemonth(fieldbyname('NDate').Value)+5;
    active:=false;
  end;


end;

procedure TScanStockMon.N1Click(Sender: TObject);
begin

panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TScanStockMon.N2Click(Sender: TObject);
begin

panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TScanStockMon.Panel3DblClick(Sender: TObject);
begin

panel3.Visible:=false;
panel2.Visible:=true;
end;

procedure TScanStockMon.Panel2DblClick(Sender: TObject);
begin

panel2.Visible:=false;
panel3.Visible:=true;
end;

procedure TScanStockMon.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDD.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');
    sql.add('       YWDD.Qty,YWCP.okQty,YWDD.Qty-isnull(YWCP.okQty,0) as LackQty,');
    sql.add('       YWBZPO.CTS,YWCP.okCTS,YWBZPO.CTS-isnull(YWCP.okCTS,0) as LackCTS');
    sql.add('from YWDD  with (nolock)');
    sql.add('left join (select YWCP.DDBH,count(YWCP.DDBH) as okCTS,sum(YWCP.Qty) as okQty ');
    sql.add('           from YWCP  ');
    sql.add('           left join BDepartment on BDepartment.ID=YWCP.DepNo ');
    sql.add('           where YWCP.InDate is not null'); 
    if edit8.text<>'' then
      begin
        sql.add('                 and BDepartment.DepName like '+''''+'%'+edit8.Text+'%'+'''');
      end;
    sql.add('           group by DDBH ) YWCP  on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join SCZLDate with (nolock) on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');  
    sql.add('      and isnull(KFZL.KFJC,'+''''+''+''''+') like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and YWDD.DDBH like '+''''+edit2.text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.text+'%'+'''');
    sql.add('      and isnull(LBZLS.YWSM,'+''''+''+''''+') like '+''''+'%'+edit5.text+'%'+'''');
    if panel2.Visible then
      begin
        sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.Text+'''');
        sql.add('      and SCZLDate.SCMONTH='+''''+CBX1.text+'''');
      end
      else
        begin
          sql.add('        and convert(smalldatetime,convert(varchar,YWDD.ETD)) between ');
          sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        end;
    if RadG1.itemindex=0 then
      begin
        sql.add('      and DDZl.GSBH='+''''+main.Edit2.text+'''');
      end
      else
        begin
          sql.add('         and SCZLDate.GSBH='+''''+main.edit2.text+'''');
        end;
    //sql.add('group by YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS');
    sql.add('order by YWDD.DDBH ');
    active:=true;
  end;
end;

procedure TScanStockMon.Excel1Click(Sender: TObject);
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

procedure TScanStockMon.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

procedure TScanStockMon.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if query1.FieldByName('LackQty').value=0 then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
end;

end.
