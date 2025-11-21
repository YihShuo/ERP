unit PlanDatediff1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  GridsEh, DBGridEh, PrnDbgeh,comobj;

type
  TPlanDatediff = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    Query1GSBH: TStringField;
    Query1GXLB1: TStringField;
    Query1GXLB2: TStringField;
    Query1DIFF: TSmallintField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanDatediff: TPlanDatediff;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TPlanDatediff.FormDestroy(Sender: TObject);
begin
PlanDatediff:=nil;
end;

procedure TPlanDatediff.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

if bb5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TPlanDatediff.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    dbgrideh1.Columns[2].picklist.Clear;
    for i:=1 to recordcount do
      begin
        dbgrideh1.Columns[1].picklist.Add(fieldbyname('GX').asstring);
        dbgrideh1.Columns[2].picklist.Add(fieldbyname('GX').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
query1.Active:=true;

end;

procedure TPlanDatediff.BB2Click(Sender: TObject);
begin

with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TPlanDatediff.BB4Click(Sender: TObject);
begin

with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TPlanDatediff.BB5Click(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('GXLB1').IsNull then
          begin
            showmessage('Pls select GXLB ');
            abort;
          end;  
        if fieldbyname('GXLB2').IsNull then
          begin
            showmessage('Pls select GXLB ');
            abort;
          end;
        if fieldbyname('DIFF').IsNull then
          begin
            showmessage('Pls key in different Day first.');
            abort;
          end;
        next;
      end;
  end;
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              query1.edit;      
              query1.FieldByName('GSBH').Value:=main.Edit2.text;
              query1.FieldByName('USERDATE').Value:=date;
              query1.FieldByName('USERID').Value:=main.edit1.text;
              Query1.FieldByName('YN').Value:='1';
              upsql1.apply(ukinsert);
            end;
          usmodified:
             begin
               query1.edit;
               query1.FieldByName('USERID').Value:=main.edit1.text;
               query1.FieldByName('USERdate').Value:=date;
               upsql1.apply(ukmodify);
             end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TPlanDatediff.BB6Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TPlanDatediff.BB7Click(Sender: TObject);
begin

close;
end;

procedure TPlanDatediff.BBT1Click(Sender: TObject);
begin

query1.First;
end;

procedure TPlanDatediff.BBT2Click(Sender: TObject);
begin

query1.Prior;
end;

procedure TPlanDatediff.BBT3Click(Sender: TObject);
begin

query1.Next;
end;

procedure TPlanDatediff.BBT4Click(Sender: TObject);
begin

query1.Last;
end;

procedure TPlanDatediff.bbt6Click(Sender: TObject);
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

procedure TPlanDatediff.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if query1.FieldByName('YN').IsNull then
  DBGrideh1.Canvas.Font.Color:=clBlue;
end;

procedure TPlanDatediff.Query1AfterOpen(DataSet: TDataSet);
begin
BB2.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
BBT5.Enabled:=true;
BBT6.Enabled:=true;
with query1 do
  begin
    requestlive:=false;
    cachedupdates:=false;
  end;
end;

end.
