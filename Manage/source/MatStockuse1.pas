unit MatStockuse1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE
  ,comobj;

type
  TMatStockuse = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CBX3: TComboBox;
    CBX4: TComboBox;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Label7: TLabel;
    CB1: TComboBox;
    Qtemp: TQuery;
    DS1: TDataSource;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1OldQty: TCurrencyField;
    Query1OldACC: TFloatField;
    Query1newQty: TCurrencyField;
    Query1NewACC: TFloatField;
    Button2: TButton;
    Query1OldBH: TStringField;
    Query1NewBH: TStringField;
    CheckBox1: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatStockuse: TMatStockuse;

implementation

uses main1;

{$R *.dfm}

procedure TMatStockuse.FormDestroy(Sender: TObject);
begin
MatStockuse:=nil;
end;

procedure TMatStockuse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMatStockuse.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin 
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
  end;

end;

procedure TMatStockuse.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZl.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,');
    sql.add('       isnull(KCCLMONTH1.Qty,0) as OldQty,KCCLMONTH1.VNACC as OldACC,KCCLMONTH1.LBBH as OldBH,');
    sql.add('       isnull(KCCLMONTH2.Qty,0) as newQty,KCCLMONTH2.VNACC as NewACC,KCCLMONTH2.LBBH as NewBH');
    sql.add('from CLZL ');
    sql.add('left join (select KCCLMONTH.CLBH,sum(KCCLMONTH.Qty) Qty,sum(KCCLMONTH.VNACC) as VNACC,KCCLMONTH.LBBH ');
    sql.add('           from KCCLMONTH');
    sql.add('           left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('           where KCCLMONTH.KCYEAR='+''''+CBX1.Text+'''');
    sql.add('                 and KCCLMONTH.KCMONTH='+ ''''+CBX2.Text+'''');
    sql.add('                 and KCCK.GSBH='+''''+CB1.Text+'''');
    sql.add('           group by KCCLMONTH.CLBH,KCCLMONTH.LBBH) KCCLMONTH1 on KCCLMONTH1.CLBH=CLZL.CLDH ');
    sql.add('left join (select KCCLMONTH.CLBH,sum(KCCLMONTH.Qty) as Qty,sum(KCCLMONTH.VNACC) as VNACC,KCCLMONTH.LBBH');
    sql.add('           from KCCLMONTH');
    sql.add('           left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('           where KCCLMONTH.KCYEAR='+''''+CBX3.Text+'''');
    sql.add('                 and KCCLMONTH.KCMONTH='+ ''''+CBX4.Text+''''); 
    sql.add('                 and KCCK.GSBH='+''''+CB1.Text+'''');
    sql.add('           group by KCCLMONTH.CLBH,KCCLMONTH.LBBH) KCCLMONTH2 on KCCLMONTH2.CLBH=CLZL.CLDH ');
    sql.add('where not (isnull(KCCLMONTH1.Qty,0)=0 and isnull(KCCLMONTH2.Qty,0)=0) ');
    sql.add('      and not (isnull(KCCLMONTH1.LBBH,'+''''+'A'+''''+')='+''''+'A'+'''');
    sql.add('                and isnull(KCCLMONTH2.LBBH,'+''''+'A'+''''+')='+''''+'A'+''''+')');
    if checkbox1.Checked then
      begin
        sql.add('      and (  isnull(KCCLMONTH1.LBBH,'+''''+'A'+''''+')<>isnull(KCCLMONTH2.LBBH,'+''''+'A'+''''+')');
        sql.add('           or isnull(KCCLMONTH1.Qty,0)<>isnull(KCCLMONTH2.Qty,0) ) ');
      end;
    sql.add('order by CLZL.CLDH ');
    active:=true;
  end;
end;

procedure TMatStockuse.Button2Click(Sender: TObject);
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
