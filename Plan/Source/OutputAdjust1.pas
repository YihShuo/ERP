unit OutputAdjust1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBTables, DB, DBCtrls, ComCtrls, StdCtrls,
  ExtCtrls, Buttons, GridsEh, DBGridEh,comobj;

type
  TOutputAdjust = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    SCBBS: TQuery;
    DS1: TDataSource;
    UpSCBBS: TUpdateSQL;
    DBGrid1: TDBGridEh;
    SCBBSSCBH: TStringField;
    SCBBSGXLB: TStringField;
    SCBBSQty: TFloatField;
    SCBBSBZLB: TStringField;
    SCBBSSCDate: TDateTimeField;
    SCBBSDepNo: TStringField;
    SCBBSDepName: TStringField;
    Panel2: TPanel;
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
    SCXXCL: TQuery;
    DS2: TDataSource;
    SCBBSXieXing: TStringField;
    SCXXCLXieXing: TStringField;
    SCXXCLGXLB: TStringField;
    SCXXCLBZLB: TStringField;
    SCXXCLXXGS: TCurrencyField;
    SCXXCLBZRS: TIntegerField;
    SCXXCLBZCL: TIntegerField;
    DBGrid2: TDBGridEh;
    Edit1: TEdit;
    SCBBSProNo: TStringField;
    Label1: TLabel;
    CBGXLB: TComboBox;
    QTemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure SCXXCLAfterOpen(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutputAdjust: TOutputAdjust;

implementation

{$R *.dfm}

procedure TOutputAdjust.FormClose(Sender: TObject;
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

procedure TOutputAdjust.FormCreate(Sender: TObject);
var i:integer;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBGXLB.Items.Add(fieldbyname('GX').asstring);
      next;
    end;
    active:=false;
  end;
  CBGXLB.ItemIndex:=2 ;
  DTP1.Date:=date-7;
  DTP2.date:=date;
end;

procedure TOutputAdjust.Button1Click(Sender: TObject);
begin
with SCBBS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  SCBBS.*,SCBB.SCDate,SCBB.DepNo,BDepartment.DepName,DDZL.XieXing ');
    sql.add('from SCBBS');
    sql.add('left join SCBB on SCBB.ProNo=SCBBS.ProNo');
    sql.add('left join SCZL on SCZL.SCBH=SCBBS.SCBH ');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH ');
    Sql.add('left join DDZL on DDZl.ZLBH=ZLZL.ZLBH ');
    sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('where SCBBS.SCBH like '+''''+edit2.Text+'%'+'''');
    sql.Add(' and SCBBS.GXLB='''+CBGXLB.Text+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/mm/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',DTP2.Date)+'''');
    sql.add('order by SCBB.DepNo,SCBB.SCDate,SCBBS.SCBH ');
    active:=true;
  end ;
BB4.Enabled:=true;
bbt6.Enabled:=true;
SCXXCL.Active:=true;
end;

procedure TOutputAdjust.BB4Click(Sender: TObject);
begin
SCBBS.CachedUpdates:=true;
SCBBS.RequestLive:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TOutputAdjust.SCXXCLAfterOpen(DataSet: TDataSet);
begin
{DBX1.Items.Clear;
if SCXXCL.recordcount>0 then
  begin
    SCXXCL.First;
    while not SCXXCL.Eof do
      begin
        DBX1.Items.Add(SCXXCL.fieldbyname('BZLB').Value);
        SCXXCL.Next;
      //  showmessage(SCXXCL.fieldbyname('BZLB').Value);
      end;
  end;}
end;

procedure TOutputAdjust.DBGrid2DblClick(Sender: TObject);
begin
if SCBBS.CachedUpdates then
  begin
    SCBBS.Edit;
    SCBBS.FieldByName('BZLB').Value:=SCXXCL.fieldbyname('BZLB').Value;
  end;
end;

procedure TOutputAdjust.BB5Click(Sender: TObject);
begin
try
  SCBBS.first;
  while not SCBBS.Eof do
    begin
      case SCBBS.updatestatus of
      usmodified:
        begin
          upSCBBS.Apply(ukmodify);
        end;
      end;
      SCBBS.next;
    end;
SCBBS.active:=false;
SCBBS.cachedupdates:=false;
SCBBS.requestlive:=false;
SCBBS.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
showmessage('succeed.');
except
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;
end;

procedure TOutputAdjust.BB6Click(Sender: TObject);
begin
SCBBS.active:=false;
SCBBS.cachedupdates:=false;
SCBBS.requestlive:=false;
SCBBS.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TOutputAdjust.BB7Click(Sender: TObject);
begin
Close;
end;

procedure TOutputAdjust.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid2DblClick(nil);
end;

procedure TOutputAdjust.FormDestroy(Sender: TObject);
begin
OutputAdjust:=nil;
end;

procedure TOutputAdjust.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
 if  SCBBS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   SCBBS.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=SCBBS.fields[i].FieldName;
          end;

        SCBBS.First;
        j:=2;
        while   not   SCBBS.Eof   do
          begin
            for   i:=0   to  SCBBS.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=SCBBS.Fields[i].Value;
            end;
          SCBBS.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

end.
