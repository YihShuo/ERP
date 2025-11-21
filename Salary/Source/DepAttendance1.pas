unit DepAttendance1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, GridsEh, DBGridEh, DBTables, DB, Buttons,
  ExtCtrls,comobj;

type
  TDepAttendance = class(TForm)
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
    bbt6: TBitBtn;
    Panel3: TPanel;
    Button1: TButton;
    Query1: TQuery;
    RSCQ: TQuery;
    DS1: TDataSource;
    UpZL: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label6: TLabel;
    CB1: TComboBox;
    RSCQRSDate: TDateTimeField;
    RSCQDepNo: TStringField;
    RSCQCQQty: TIntegerField;
    RSCQQJQty: TIntegerField;
    RSCQYN: TStringField;
    RSCQDepName: TStringField;
    RSCQID: TStringField;
    RSCQUSERDate: TDateTimeField;
    RSCQRQ: TDateTimeField;
    RSCQUSERID: TStringField;
    RSCQSDGS: TCurrencyField;
    RSCQSJGS: TCurrencyField;
    Label2: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure RSCQNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DepAttendance: TDepAttendance;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDepAttendance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TDepAttendance.FormCreate(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.date:=NDate;
    active:=false;
    sql.clear;
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

procedure TDepAttendance.Button1Click(Sender: TObject);
begin
with RSCQ do
  begin
    active:=false;
    sql.clear;
    sql.add('select RSCQ.*,BDepartment.DepName,BDepartment.ID,convert(smalldatetime,'+''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+') as RQ ');
    sql.add('from BDepartment');
    sql.add('left join RSCQ on RSCQ.DepNo=BDepartment.ID and convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))='+''''+formatdatetime('yyyy/MM/dd',DTP1.date) +'''');
    sql.add('where BDepartment.GSBH='+''''+CB1.text+'''' );
    sql.add('      and BDepartment.ProYN='+''''+'1'+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('order by BDepartment.ID');
    active:=true;
  end;
BB4.Enabled:=true;

end;

procedure TDepAttendance.BB7Click(Sender: TObject);
begin
close;
end;

procedure TDepAttendance.BB4Click(Sender: TObject);
begin
with RSCQ do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TDepAttendance.BB5Click(Sender: TObject);
var i:integer;
begin
try
RSCQ.First;
for i:=1 to RSCQ.RecordCount do
  begin
    if RSCQ.updatestatus=usmodified then
      begin
        if not RSCQ.FieldByName('DepNo').isnull     then
          begin
            UPZL.apply(ukmodify);
          end
            else
              begin
                RSCQ.edit;
                RSCQ.fieldbyname('DepNo').Value:=RSCQ.fieldbyname('ID').value;
                RSCQ.fieldbyname('RSdate').Value:=RSCQ.fieldbyname('RQ').value;
                RSCQ.fieldbyname('USERDATE').Value:=Ndate;
                RSCQ.fieldbyname('USERID').Value:=main.edit1.text;
                RSCQ.fieldbyname('YN').Value:='1';
                UPZL.apply(ukinsert);
              end;
      end;
    RSCQ.next;
  end;

RSCQ.active:=false;
RSCQ.requestlive:=false;
RSCQ.cachedupdates:=false;
RSCQ.active:=true;
BB5.Enabled:=false;
BB6.Enabled:=false;
showmessage('Succeed');
except
showmessage('have wrong');
end;


end;

procedure TDepAttendance.BB6Click(Sender: TObject);
begin

with RSCQ do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
end;

procedure TDepAttendance.RSCQNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TDepAttendance.FormDestroy(Sender: TObject);
begin
DepAttendance:=nil;
end;

procedure TDepAttendance.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  RSCQ.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   RSCQ.FieldCount-1   do
          begin
              eclApp.Cells(4,i+1):=RSCQ.fields[i].FieldName;
              eclApp.Cells.item[4,i+1].font.size:='8';
          end;

        RSCQ.First;
        j:=2;
        while   not   RSCQ.Eof   do
          begin
            for   i:=0   to   RSCQ.FieldCount-1   do
            begin
              eclApp.Cells(j+3,i+1):=RSCQ.Fields[i].Value;
              eclApp.Cells.item[j+3,i+1].font.size:='8';
            end;
          RSCQ.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

end.
