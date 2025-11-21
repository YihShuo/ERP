unit ExecShort1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, DBCtrls, Buttons,
  ExtCtrls,dateutils, ComCtrls;

type
  TExecShort = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    YWDDSDZS: TQuery;
    YWDDSDZSCARTONBAR: TStringField;
    YWDDSDZSArticle: TStringField;
    YWDDSDZSXieMing: TStringField;
    YWDDSDZSETD: TDateTimeField;
    YWDDSDZSDDCC: TStringField;
    YWDDSDZSQty: TIntegerField;
    YWDDSDZSUSERID: TStringField;
    YWDDSDZSUSERDATE: TDateTimeField;
    YWDDSDZSYN: TStringField;
    UpYWDDSDZS: TUpdateSQL;
    YWDDSDZSXH: TStringField;
    Label14: TLabel;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExecShort: TExecShort; 
  sdate,edate,ndate:TDate;

implementation

uses ExecShort_Car1, main1;

{$R *.dfm}

procedure TExecShort.FormDestroy(Sender: TObject);
begin
ExecShort:=nil;
end;

procedure TExecShort.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TExecShort.BB1Click(Sender: TObject);
begin

Panel2.Visible:=true;
end;

procedure TExecShort.Button1Click(Sender: TObject);
//var y,m:word;
begin
{if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);   }

sdate:=DTP1.Date;
edate:=DTP2.Date;


with YWDDSDZS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDDSDZ.*,DDZL.Article,XXZL.XieMing,YWDD.ETD');
    sql.add('from YWDDSDZ ');
    sql.add('left join YWCP on YWCP.CartonBar=YWDDSDZ.CartonBar');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL on DDZl.DDBH=YWDD.YSBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('where convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and YWCP.DDBH like '+''''+edit1.text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''')  ;
    sql.add('      and YWDD.GSBH='+''''+main.Edit2.text+'''');
    active:=true;
  end;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
BBT6.Enabled:=true;
end;

procedure TExecShort.BB2Click(Sender: TObject);
begin

with YWDDSDZS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrideh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExecShort.BB3Click(Sender: TObject);
begin

//if messagedlg('All the detail will be deleted too!',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if YWDDSDZS.recordcount>0 then
      begin
        with YWDDSDZS do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
      end;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrideh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExecShort.BB4Click(Sender: TObject);
begin

with YWDDSDZS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrideh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExecShort.DBGridEh1EditButtonClick(Sender: TObject);
begin

if YWDDSDZS.updatestatus=usinserted then
  begin
    ExecShort_Car:=TExecShort_Car.create(self);
    ExecShort_Car.show;
    enabled:=false;
  end;
end;

procedure TExecShort.BB5Click(Sender: TObject);
var i:integer;
begin
YWDDSDZS.First;
while not YWDDSDZS.Eof do
  begin
    if YWDDSDZS.FieldByName('Qty').IsNull then
      begin
        messagedlg('Pls key in Qty first.',mtconfirmation,[mbYes],0);
        abort;
      end;
    YWDDSDZS.Next;
  end;
try
    YWDDSDZS.first;
    for i:=1 to YWDDSDZS.RecordCount do
      begin
        case YWDDSDZS.updatestatus of
          usinserted:
            begin
              if YWDDSDZS.fieldbyname('CartonBar').isnull then
                begin
                  YWDDSDZS.delete;
                end
                 else
                   begin
                     YWDDSDZS.edit;
                     YWDDSDZS.FieldByName('userID').Value:=main.edit1.text;
                     YWDDSDZS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',date);
                     YWDDSDZS.FieldByName('YN').Value:='1';
                     upYWDDSDZS.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if YWDDSDZS.fieldbyname('YN').value='0'then
                begin
                  upYWDDSDZS.apply(ukdelete);
                end
                else
                  begin
                    YWDDSDZS.edit;
                    YWDDSDZS.FieldByName('userID').Value:=main.edit1.text;
                    YWDDSDZS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',date);
                    upYWDDSDZS.apply(ukmodify);
                  end;
             end;
        end;
       YWDDSDZS.next;
      end;
YWDDSDZS.active:=false;
YWDDSDZS.cachedupdates:=false;
YWDDSDZS.requestlive:=false;
YWDDSDZS.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
dbgrideh1.columns[1].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TExecShort.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if YWDDSDZS.FieldByName('YN').value='0' then
  begin
    DBGrideh1.canvas.font.color:=clred;
  end;
end;

procedure TExecShort.BB7Click(Sender: TObject);
begin
close;
end;

procedure TExecShort.BBT1Click(Sender: TObject);
begin
YWDDSDZS.first;
end;

procedure TExecShort.BBT2Click(Sender: TObject);
begin
YWDDSDZS.prior;
end;

procedure TExecShort.BBT3Click(Sender: TObject);
begin
YWDDSDZS.next;
end;

procedure TExecShort.BBT4Click(Sender: TObject);
begin
YWDDSDZS.last;
end;

procedure TExecShort.BB6Click(Sender: TObject);
begin
with YWDDSDZS do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TExecShort.FormCreate(Sender: TObject);
begin

DTP1.date:=startofthemonth(Date)+5;
DTP2.date:=startofthemonth(incmonth(Date,1))+4;
end;

end.
