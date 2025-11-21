unit QCDailyData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,comobj,
  Dateutils,ehlibBDE, GridsEh, DBGridEh, DBCtrls, TeeProcs, TeEngine, Chart,
  TeeFunci, Series, DbChart;

type
  TQCDailyData = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGridEh;
    DS1: TDataSource;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query3: TQuery;
    spl1: TSplitter;
    strngfldQuery1ProNo: TStringField;
    dtmfldQuery1SCDate: TDateTimeField;
    strngfldQuery1SJXH: TStringField;
    strngfldQuery1GSBH: TStringField;
    strngfldQuery1DepNo: TStringField;
    strngfldQuery1GXLB: TStringField;
    strngfldQuery1SCBH: TStringField;
    strngfldQuery1CC: TStringField;
    strngfldQuery1USERID: TStringField;
    dtmfldQuery1USERDATE: TDateTimeField;
    smlntfldQuery3qty: TSmallintField;
    strngfldQuery3YYBH: TStringField;
    strngfldQuery3ywsm: TStringField;
    strngfldQuery3zwsm: TStringField;
    Query2: TQuery;
    ds3: TDataSource;
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
  QCDailyData: TQCDailyData;
  NDate:TDate;
  ayear,amonth:string;

implementation

uses main1;

{$R *.dfm}

procedure TQCDailyData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TQCDailyData.FormCreate(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    active:=false;
  end;
DTP1.Date:=Ndate;
end;

procedure TQCDailyData.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from qcr where qcr.SCDate = '''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');
    active:=true;
  end;

with query3 do
  begin
    active:=false;
    active:=true;
  end;
end;

procedure TQCDailyData.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

//if Query1.Active then
//  begin
//    if Query1.recordcount=0 then
//      begin
//        showmessage('No record.');
//        abort;
//      end;
//  end
//  else
//    begin
//      showmessage('No record.');
//      abort;
//    end;
//
//try
//  eclApp:=CreateOleObject('Excel.Application');
//  WorkBook:=CreateOleObject('Excel.Sheet');
//except
//  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
//  Exit;
//end;
//
//try
//  WorkBook:=eclApp.workbooks.Add;
//  eclApp.Cells(1,1):='NO';
//  for   i:=1   to   Query1.fieldcount   do
//    begin
//      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
//    end;
//  Query1.First;
//  j:=2;
//  while   not  Query1.Eof   do
//    begin
//      eclApp.Cells(j,1):=j-1;
//      for   i:=1   to   Query1.fieldcount   do
//        begin
//          eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
//          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
//        end;
//      Query1.Next;
//      inc(j);
//    end;
//  eclapp.columns.autofit;
//  showmessage('Succeed.');
//  eclApp.Visible:=True;
//except
//  on   F:Exception   do
//    showmessage(F.Message);
//end;
end;

procedure TQCDailyData.FormDestroy(Sender: TObject);
begin
  QCDailyData:=nil;
end;

end.
