unit ScanDailyDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh,
  StdCtrls, ExtCtrls,comobj;

type
  TScanDailyDep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Detail1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label6: TLabel;
    Qtemp: TQuery;
    Query1DepNO: TStringField;
    Query1DepName: TStringField;
    Query1InDate: TStringField;
    Query1Qty: TIntegerField;
    Query1DepMemo: TStringField;
    Label12: TLabel;
    CBX4: TComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanDailyDep: TScanDailyDep;

implementation

uses main1, ScanDailyDep_Det1;

{$R *.dfm}

procedure TScanDailyDep.FormDestroy(Sender: TObject);
begin
ScanDailyDep:=nil;
end;

procedure TScanDailyDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
action:=cafree;
end;

procedure TScanDailyDep.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,convert(varchar,YWCP.InDate,111) as InDate,sum(YWCP.Qty) as Qty');
    sql.add('from YWCP with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWCP.DDBH=YWDD.DDBH ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepNo ');
    sql.add('where YWCP.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and isnull(KFZL.KFJC,'+''''+''+''''+') like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and BDepartment.GSBH='+''''+CBX4.Text+'''');
    sql.add('      and convert(varchar,YWCP.InDate,111) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('group by  YWCP.DepNO,BDepartment.DepName,BDepartment.DepMemo,convert(varchar,YWCP.InDate,111)');
    sql.add('order by  YWCP.DepNO,convert(varchar,YWCP.InDate,111)');
    active:=true;
  end;
end;

procedure TScanDailyDep.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    DTP1.date:=fieldbyname('NDate').Value-1; 
    DTP2.date:=fieldbyname('NDate').Value-1;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
  end;
end;

procedure TScanDailyDep.Print1Click(Sender: TObject);
begin

PrintDBGrideh1.Preview;
end;

procedure TScanDailyDep.Excel1Click(Sender: TObject);
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

procedure TScanDailyDep.Detail1Click(Sender: TObject);
begin
ScanDailyDep_Det:=TScanDailyDep_Det.create(nil);
ScanDailyDep_Det.show;
end;

end.
