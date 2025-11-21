unit SaleReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,
  GridsEh, DBGridEh, PrnDbgeh,comobj;

type
  Tsalereportf = class(TForm)
    Panel1: TPanel;
    CB1: TComboBox;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    Label2: TLabel;
    dtp2: TDateTimePicker;
    Label3: TLabel;
    DataSource1: TDataSource;
    saledata: TQuery;
    Button1: TButton;
    saledataBDEDesigner: TStringField;
    saledataBDEDesigner2: TStringField;
    saledataBDEDesigner3: TDateTimeField;
    saledataBDEDesigner4: TDateTimeField;
    saledataBDEDesigner5: TIntegerField;
    saledataBDEDesigner6: TIntegerField;
    saledataBDEDesigner7: TIntegerField;
    DBGridEh1: TDBGridEh;
    Button2: TButton;
    tmpQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  salereportf: Tsalereportf;
  sdate,edate:tdate;
  
implementation

uses main1,FunUnit;

{$R *.dfm}



procedure Tsalereportf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure Tsalereportf.Button1Click(Sender: TObject);
begin

  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  with saledata do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ddzl.ddbh as 訂單號,kfzl.kfjc as 客戶名稱,ddzl.shipdate as 原始交期,max(ywcp.exedate) as 實際出貨日,ddzl.pairs as 預計出貨數量, ');
    sql.add('isnull(outgoods.qty,0) as 實際出貨數,(ddzl.pairs-isnull(outgoods.qty,0)) as 短裝數  from DDzl ');
    sql.add('left join kfzl on kfzl.kfdh=ddzl.khbh ');
    sql.Add('left join (');
    sql.Add('  select ywdd.ysbh as ddbh,ywcp.exedate   from YWCP');
    sql.Add('  left join ywdd on ywdd.ddbh=ywcp.ddbh');
    sql.Add('  group by ywdd.ysbh,ywcp.exedate ) ywcp on ywcp.ddbh=ddzl.ddbh ');
    sql.Add('left join (');
    sql.Add('  select ywdd.ysbh as ddbh,isnull(sum(YWCP.qty),0) as qty   from YWCP');
    sql.Add('  left join ywdd on ywdd.ddbh=ywcp.ddbh');
    sql.Add('  where exedate is not null  group by ywdd.ysbh ) outgoods on outgoods.ddbh=ddzl.ddbh ');
    sql.add('where gsbh='+''''+cb1.Text+'''');
    sql.add('      and ((shipdate>'''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add(' and shipdate<='+''''+formatdatetime('yyyy/MM/dd',edate)+''''+')');
    sql.add('      or (exedate>'''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add(' and exedate<='+''''+formatdatetime('yyyy/MM/dd',edate)+''''+'))');
    sql.add('      group by  ddzl.ddbh,kfzl.kfjc,ddzl.shipdate,ddzl.pairs,outgoods.qty');
    sql.add(' order by ddzl.ddbh');
    funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  
end;

procedure Tsalereportf.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;

begin
if saledata.Active then
  begin
    if saledata.recordcount=0 then
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
  for   i:=1   to   saledata.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=saledata.fields[i-1].FieldName;
    end;
  saledata.First;
  j:=2;
  while   not  saledata.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   saledata.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=saledata.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      saledata.Next;
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

procedure Tsalereportf.FormCreate(Sender: TObject);
var index,i:integer;
begin
   //
   with tmpQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select GSDH  from bgszl where YN=1 and SFL=''PD'' ');
     Active:=true;
     CB1.Items.Clear;
     i:=0;
     while not Eof do
     begin
       CB1.Items.Add(FieldByName('GSDH').AsString);
       if  FieldByName('GSDH').AsString=main.Edit2.Text then index:=i;
       i:=i+1;
       Next;
     end;
     CB1.ItemIndex:=index;
     Active:=false;
   end;
   //
   dtp1.Date:=Date()-5;
   dtp2.Date:=Date();
end;

end.
