unit ScanDailyRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ExtCtrls, Grids, DBGrids, ComCtrls,comobj,
  StdCtrls;

type
  TScanDailyRep = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    NN3: TMenuItem;
    DD: TQuery;
    DS2: TDataSource;
    DDS: TQuery;
    DS3: TDataSource;
    Edit1: TEdit;
    Query1Qty: TCurrencyField;
    Query1ScanDate: TStringField;
    Query1SMLX: TStringField;
    DDDDBH: TStringField;
    DDQty: TCurrencyField;
    DDArticle: TStringField;
    DDXieMing: TStringField;
    DDSDDBH: TStringField;
    DDSXXCC: TStringField;
    DDSQty: TCurrencyField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    DDDepID: TStringField;
    DDUSERDate: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanDailyRep: TScanDailyRep;

implementation

{$R *.dfm}

procedure TScanDailyRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanDailyRep.FormCreate(Sender: TObject);
begin

DTP1.Date:=date-7;
DTP2.date:=date;
end;

procedure TScanDailyRep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCSM.SMLX,sum(SCSM.Qty) as Qty,convert(varchar,max(SCSM.USERDate),111) as ScanDate,');
    sql.add('SCSM.DepID,'+''''+'Tot'+''''+' as DepName');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('group by  SCSM.SMLX,SCSM.DepID');
    sql.add(' union ');
    sql.add('select SCSM.SMLX,sum(SCSM.Qty) as Qty,convert(varchar,SCSM.USERDATE,111) as ScanDate,SCSM.DepID,BDepartment.DepName');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('group by  SCSM.SMLX,SCSM.DepID,BDepartment.DepName,convert(varchar,SCSM.USERDATE,111)');
    sql.add('order by SCSM.DepID, ScanDate');
    active:=true;
  end;
DD.Active:=true;
DDS.active:=true;
end;

procedure TScanDailyRep.Query1AfterScroll(DataSet: TDataSet);
begin
{with DD do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select SCSM.DDBH,sum(SCSM.Qty) as Qty,DDZL.Article,XXZL.XieMing )    ;
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.ZLBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and DDZL.SheHao=XXZl.SheHao ');
    sql.add('where SCSM.USERDate=:ScanDate');
    sql.add('order by SCSM.DDBH ');
    active:=true;
  end; }
end;

procedure TScanDailyRep.Button2Click(Sender: TObject);
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

procedure TScanDailyRep.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if  query1.fieldbyname('DepName').Value='Tot' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TScanDailyRep.FormDestroy(Sender: TObject);
begin
ScanDailyRep:=nil;
end;

end.
