unit MonthStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, comobj;

type
  TMonthStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    Label2: TLabel;
    Label4: TLabel;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Label6: TLabel;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1QTY: TCurrencyField;
    Matsite: TQuery;
    Button3: TButton;
    Query1KCBH: TStringField;
    Edit4: TEdit;
    DB1: TCheckBox;
    CBX1: TComboBox;
    Query1CKBH: TStringField;
    Query1LBBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NN1Click(Sender: TObject);
    procedure NN2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthStock: TMonthStock;

implementation

uses MaterialTrace1, MonthStock_Print1, main1;

{$R *.dfm}

procedure TMonthStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TMonthStock.FormCreate(Sender: TObject);
begin
with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX1.Items.Clear;
    while not eof do
      begin
        CBX1.Items.Add(fieldbyname('CKBH').AsString);
        next;
      end;
    CBX1.ItemIndex:=0;
    active:=false;
  end;
end;

procedure TMonthStock.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCCLMONTH.CLBH,KCCLMONTH.Qty,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH,KCCLMONTH.CKBH,KCCLMONTH.LBBH ');
    sql.add('from KCCLMONTH');
    sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
    sql.add('left join KCZLS on KCCLMONTH.CLBH=KCZLS.CLBH and KCCLMONTH.CKBH=KCZLS.CKBH');
    sql.add('where KCCLMONTH.KCYEAR='+''''+CBX2.Text+'''');
    sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX3.Text+'''');
    sql.add('      and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    if not DB1.Checked then
      begin
        sql.add('and KCCLMONTH.Qty<>0');
      end;
    
    sql.add('and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
    sql.add('order by KCCLMONTH.CLBH') ;
    active:=true;
  end;
end;

procedure TMonthStock.Button2Click(Sender: TObject);
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

procedure TMonthStock.NN1Click(Sender: TObject);
var year,month:word;
begin
if Query1.recordcount>0 then
  begin
    MaterialTrace:=TMaterialTrace.create(self);
    MaterialTrace.show;
    MaterialTrace.edit1.Text:=query1.fieldbyname('CLBH').Value;
    year:=strtoint(CBX2.Text);
    month:=strtoint(CBX3.Text);
    MaterialTrace.DTP1.date:=incMonth(encodedate(year,month,1),1);
    MaterialTrace.button1click(nil);
  end;

end;

procedure TMonthStock.NN2Click(Sender: TObject);
begin
if query1.Active then
  button2click(nil); 
end;

procedure TMonthStock.Button3Click(Sender: TObject);
var i:integer;
begin
MonthStock_Print:=TMonthStock_Print.create(self);
MonthStock_Print.quickrep1.prepare;
i:=MonthStock_Print.quickrep1.qrprinter.pagecount;
MonthStock_Print.page1.caption:=inttostr(i);
MonthStock_Print.quickrep1.preview;
MonthStock_Print.free;
end;

procedure TMonthStock.FormDestroy(Sender: TObject);
begin
MonthStock:=nil;
end;

end.
