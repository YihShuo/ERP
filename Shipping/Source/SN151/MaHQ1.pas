unit MaHQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons,
  ExtCtrls,comobj;

type
  TMaHaiQuan1 = class(TForm)
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
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Button1: TButton;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    CheckBox1: TCheckBox;
    Query1CLBH: TStringField;
    Query1HGBH: TStringField;
    Query1HGPM: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1ywpm: TStringField;
    DBGrid1: TDBGridEh;
    Query1YN: TStringField;
    Query2: TQuery;
    Label2: TLabel;
    Edit2: TEdit;
    Query1dwbh: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure  Query1EditButtonClick(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaHaiQuan1: TMaHaiQuan1;

implementation

uses main1, TimMaHQ1;

{$R *.dfm}

procedure TMaHaiQuan1.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select clhg.clbh,clzl.ywpm,clzl.dwbh,clhg.HGBH,clhg.HGPM,clhg.UNitC,clhg.Ratec,clhg.userid,clhg.userdate,clhg.YN');
    sql.add('from clhg');
    sql.add('left join clzl on clhg.clbh = clzl.cldh  ');
    sql.add('Where clhg.clbh like '+''''+edit1.Text+'%'+'''');
    sql.add('and clzl.ywpm like '+'''%'+edit2.Text+'%'+'''');
    if CheckBox1.Checked = true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,clhg.USERDATE,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      sql.add(' and  ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('order by clhg.clbh  ');
    active:=true;
  end;
    panel2.Visible:=true;
    BB1.Enabled:= true;
    BB2.Enabled:= true;
    BB3.Enabled:= true;
    panel1.Visible:=false;
    BB4.Enabled:= true;
    bbt6.Enabled:= true;
end;

procedure TMaHaiQuan1.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TMaHaiQuan1.FormDestroy(Sender: TObject);
begin
  MaHaiQuan1:=nil;
end;

procedure TMaHaiQuan1.BB4Click(Sender: TObject);
begin
   BB2.Enabled:= false;
   BB3.Enabled:= false;
   BB5.Enabled:=true;
   BB6.Enabled:=true;
  with Query1 do
  begin
   RequestLive:=true;
   CachedUpdates:=true;
   edit;
  end;
end;

procedure TMaHaiQuan1.BB6Click(Sender: TObject);
begin
with Query1 do
  begin
  Active:=false;
  cachedupdates:=false;
  requestlive:=false;
  active:=true;
  end;
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TMaHaiQuan1.BB3Click(Sender: TObject);
begin
  BB2.enabled:=false;
  BB4.enabled:=false;
  BB5.enabled:=true;
  BB6.enabled:=true;
  if messagedlg('All the detail will be deleted too!',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if Query1.recordcount>0 then
    begin
      with Query1 do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
    end;
  end
end;

procedure TMaHaiQuan1.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
if Query1.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TMaHaiQuan1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaHaiQuan1.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
      usinserted:
      begin
        if Query1.fieldbyname('CLBH').isnull then
        begin
            Query1.delete;
        end else
        begin
            Query1.Edit;
            Query1.FieldByName('clbh').Value:=Query1.fieldbyname('clbh').value;
            Query1.FieldByName('HGBH').Value:=Query1.fieldbyname('HGBH').value;
            Query1.FieldByName('HGPM').Value:=Query1.fieldbyname('HGPM').value;
            Query1.FieldByName('UNitC').Value:=Query1.fieldbyname('UNitC').value;
            Query1.FieldByName('RateC').Value:=Query1.fieldbyname('RateC').value;
            Query1.FieldByName('userdate').Value:=date;
            Query1.FieldByName('userID').Value:=main.edit1.text;
            Query1.FieldByName('YN').Value:='1';
            UpdateSQL1.apply(ukinsert);
        end 
      end;
      usmodified:
        begin
          if query1.fieldbyname('YN').value='0'then
          begin
            UpdateSQL1.apply(ukdelete);
          end else
          //if ((query1.FieldByName('USERDATE').value<(date-10)) or (formatdatetime('yyyy/MM/dd',date)<'2008/11/01')) then
          begin
            query1.edit;
            query1.FieldByName('USERID').Value:=main.edit1.text;
            query1.FieldByName('USERdate').Value:=date;
            UpdateSQL1.apply(ukmodify);
          end;
        end;
      end;
      query1.next;
    end;
    Query1.active:=false;
    Query1.cachedupdates:=false;
    Query1.requestlive:=false;
    Query1.active:=true;
    BB2.enabled:=true;
    BB3.enabled:=true;
    BB4.enabled:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TMaHaiQuan1.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;


procedure TMaHaiQuan1. Query1EditButtonClick(Sender: TObject);
begin
  TimMHQ1:=TTimMHQ1.create(self);
  TimMHQ1.show;
end;


procedure TMaHaiQuan1.bbt6Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin

  if Query1.Active then
  begin
    if Query1.recordcount=0 then
    begin                                             
      showmessage('No record.');
      abort;
    end;
  end else
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
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        Query1.Next;
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
