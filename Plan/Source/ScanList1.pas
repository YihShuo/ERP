unit ScanList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,
  comobj;

type
  TScanList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    DTP1: TDateTimePicker;
    Label6: TLabel;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Edit3: TEdit;
    Query1SMLX: TStringField;
    Query1DepID: TStringField;
    Query1DDBH: TStringField;
    Query1XXCC: TStringField;
    Query1Qty: TCurrencyField;
    Query1USERID1: TStringField;
    Query1USERID2: TStringField;
    Query1USERDate: TDateTimeField;
    Query1DepName: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1THour: TStringField;
    Query1XH: TAutoIncField;
    Label4: TLabel;
    CB1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanList: TScanList;

implementation

{$R *.dfm}

procedure TScanList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanList.FormCreate(Sender: TObject);
begin
DTP1.Date:=date-7;
DTP2.Date:=date;
end;

procedure TScanList.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCSM.*,BDepartment.DepName,XXZl.Article,XXZl.XieMing ');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;
    active:=true;
  end;

end;

procedure TScanList.Button2Click(Sender: TObject);
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

procedure TScanList.FormDestroy(Sender: TObject);
begin
ScanList:=nil;
end;

end.
