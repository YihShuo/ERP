unit Calendar1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids , StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj, GridsEh, DBGridEh;

type
  TCalendar = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpSQL1: TUpdateSQL;
    DBNavigator1: TDBNavigator;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    lbl1: TLabel;
    strngfldQuery1Year: TStringField;
    strngfldQuery1ProductionTiming: TStringField;
    dtmfldQuery1MCSETD90: TDateTimeField;
    dtmfldQuery1MSCSigned90: TDateTimeField;
    dtmfldQuery1MCSETD60: TDateTimeField;
    dtmfldQuery1MSCSigned60: TDateTimeField;
    dtmfldQuery1OrderPlace90: TDateTimeField;
    dtmfldQuery1OrderPlace60: TDateTimeField;
    dtmfldQuery1TrialProduction: TDateTimeField;
    dtmfldQuery1ProductionStart: TDateTimeField;
    strngfldQuery1CreateUser: TStringField;
    dtmfldQuery1CreateDate: TDateTimeField;
    Query1Dropped: TBooleanField;
    strngfldQuery1USERID: TStringField;
    dtmfldQuery1USERDATE: TDateTimeField;
    strngfldQuery1YN: TStringField;
    edt1: TEdit;
    qry1: TQuery;
    Query1Ver: TStringField;
    dtmfldQuery1CWA90: TDateTimeField;
    dtmfldQuery1CWA60: TDateTimeField;
    Query1CWA75: TDateTimeField;
    Query1MCSETD75: TDateTimeField;
    Query1MSCSigned75: TDateTimeField;
    Query1MONTH: TStringField;
    Query1OrderPlace75: TDateTimeField;
    Query1CS1_ETA: TDateTimeField;
    Query1CS1_Fit: TDateTimeField;
    Query1CS1_Wear: TDateTimeField;
    Query1CS2_Fit: TDateTimeField;
    Query1CS2_Conduct: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calendar: TCalendar;
  NDate:TDate;

implementation

uses main1;


{$R *.dfm}

procedure TCalendar.FormCreate(Sender: TObject);
var i:integer;
begin
with qry1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TCalendar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
  begin
    action:=cafree;
    Calendar:=nil;
  end;
   
end;

procedure TCalendar.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

//[SEARCH] =====================================================================
procedure TCalendar.Button1Click(Sender: TObject);
begin
  if not query1.RequestLive then
    begin
      with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select * from COMCALENDAR');
          sql.add(' where year like '+''''+edt1.Text+'%'+'''');
          sql.add(' and Dropped = ''0''  ORDER BY YEAR,MONTH ');
          active:=true;
        end;
    end
  else
    begin
      showmessage('Pls save data first.');
    end;

  DBGrid1.columns[3].ButtonStyle:=cbsnone;
  DBGrid1.columns[4].ButtonStyle:=cbsnone;
  DBGrid1.columns[5].ButtonStyle:=cbsnone;
  DBGrid1.columns[6].ButtonStyle:=cbsnone;
  DBGrid1.columns[7].ButtonStyle:=cbsnone;
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
  DBGrid1.columns[9].ButtonStyle:=cbsnone;
  DBGrid1.columns[10].ButtonStyle:=cbsnone;
  DBGrid1.columns[12].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[14].ButtonStyle:=cbsnone;
  DBGrid1.columns[15].ButtonStyle:=cbsnone;
  DBGrid1.columns[16].ButtonStyle:=cbsnone;
  DBGrid1.columns[17].ButtonStyle:=cbsnone;
  DBGrid1.columns[18].ButtonStyle:=cbsnone;
  DBGrid1.columns[19].ButtonStyle:=cbsnone;


end;

procedure TCalendar.BB1Click(Sender: TObject);
var
  yr,itm : string;
  yy,mm,dd:word;
begin
calendar.FormCreate(Sender);
decodedate(NDate,yy,mm,dd);
yr := inputbox('Input the year of new record','Year :',inttostr(yy));
itm := inputbox('Input the production timing','Timing','');
with qry1 do
begin
  active:=false;
  sql.Clear;
  sql.add('select * from COMCALENDAR');
  sql.add(' where year = '''+yr+''' and productiontiming ='''+itm+''' and ver =''0''');
  active:=true;
  if eof then
  begin
    active:=false;
    sql.Clear;
    sql.Add('insert into COMCALENDAR (year,productiontiming,ver,createuser,createdate,dropped) values ('''+yr+''','''+itm+''',''0'','''+main.edit1.text+''','''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+''',''0'')');
    execsql;
  end
  else
    if fieldbyname('Dropped').Value='1' then
    begin
      active:=false;
      sql.Clear;
      sql.Add('delete COMCALENDAR where year = '''+yr+''' and productiontiming ='''+itm+''' and ver =''9''');
      execsql;
      sql.Clear;
      sql.Add('update COMCALENDAR set dropped = ''1'', ver = convert(int,ver)+1 where year = '''+yr+''' and productiontiming ='''+itm+'''');
      execsql;
      sql.Clear;
      sql.Add('insert into COMCALENDAR (year,productiontiming,ver,createuser,createdate,dropped) values ('''+yr+''','''+itm+''',''0'','''+main.edit1.text+''','''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+''',''0'')');
      execsql;
    end
    else
    if Application.MessageBox('Do you want to edit this exist record?','Exist record',MB_YESNO or MB_ICONQUESTION or MB_DEFBUTTON2) = IDNO then
        exit;
  active:=false;
end;
button1.OnClick(Sender);
with query1 do
  begin
    locate('year;productiontiming', VarArrayOf([yr,itm]),[]);
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
bb1.Enabled:=false;
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=true;
  DBGrid1.columns[3].ButtonStyle:=cbsAuto;
  DBGrid1.columns[4].ButtonStyle:=cbsAuto;
  DBGrid1.columns[5].ButtonStyle:=cbsAuto;
  DBGrid1.columns[6].ButtonStyle:=cbsAuto;
  DBGrid1.columns[7].ButtonStyle:=cbsAuto;
  DBGrid1.columns[8].ButtonStyle:=cbsAuto;
  DBGrid1.columns[9].ButtonStyle:=cbsAuto;
  DBGrid1.columns[10].ButtonStyle:=cbsAuto;
  DBGrid1.columns[12].ButtonStyle:=cbsAuto;
  DBGrid1.columns[13].ButtonStyle:=cbsAuto;
  DBGrid1.columns[13].ButtonStyle:=cbsAuto;
  DBGrid1.columns[14].ButtonStyle:=cbsAuto;
  DBGrid1.columns[15].ButtonStyle:=cbsAuto;
  DBGrid1.columns[16].ButtonStyle:=cbsAuto;
  DBGrid1.columns[17].ButtonStyle:=cbsAuto;
  DBGrid1.columns[18].ButtonStyle:=cbsAuto;
  DBGrid1.columns[19].ButtonStyle:=cbsAuto;

//dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCalendar.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=true;
//dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[3].ButtonStyle:=cbsAuto;
  DBGrid1.columns[4].ButtonStyle:=cbsAuto;
  DBGrid1.columns[5].ButtonStyle:=cbsAuto;
  DBGrid1.columns[6].ButtonStyle:=cbsAuto;
  DBGrid1.columns[7].ButtonStyle:=cbsAuto;
  DBGrid1.columns[8].ButtonStyle:=cbsAuto;
  DBGrid1.columns[9].ButtonStyle:=cbsAuto;
  DBGrid1.columns[10].ButtonStyle:=cbsAuto;
  DBGrid1.columns[12].ButtonStyle:=cbsAuto;
  DBGrid1.columns[13].ButtonStyle:=cbsAuto;
  DBGrid1.columns[13].ButtonStyle:=cbsAuto;
  DBGrid1.columns[14].ButtonStyle:=cbsAuto;
  DBGrid1.columns[15].ButtonStyle:=cbsAuto;
  DBGrid1.columns[16].ButtonStyle:=cbsAuto;
  DBGrid1.columns[17].ButtonStyle:=cbsAuto;
  DBGrid1.columns[18].ButtonStyle:=cbsAuto;
  DBGrid1.columns[19].ButtonStyle:=cbsAuto;

end;

procedure TCalendar.BB4Click(Sender: TObject);
var i:integer;
begin
try
//if query1.requestlive then
  //begin
    calendar.FormCreate(Sender);
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
      usmodified:
        begin
         query1.edit;
         query1.fieldbyname('userid').Value:=main.edit1.text;
         query1.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
         upsql1.apply(ukmodify);
        end;
      end;
      query1.next;
    end;
  DBGrid1.columns[3].ButtonStyle:=cbsnone;
  DBGrid1.columns[4].ButtonStyle:=cbsnone;
  DBGrid1.columns[5].ButtonStyle:=cbsnone;
  DBGrid1.columns[6].ButtonStyle:=cbsnone;
  DBGrid1.columns[7].ButtonStyle:=cbsnone;
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
  DBGrid1.columns[9].ButtonStyle:=cbsnone;
  DBGrid1.columns[10].ButtonStyle:=cbsnone;
  DBGrid1.columns[12].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[14].ButtonStyle:=cbsnone;
  DBGrid1.columns[15].ButtonStyle:=cbsnone;
  DBGrid1.columns[16].ButtonStyle:=cbsnone;
  DBGrid1.columns[17].ButtonStyle:=cbsnone;
  DBGrid1.columns[18].ButtonStyle:=cbsnone;
  DBGrid1.columns[19].ButtonStyle:=cbsnone;
    
query1.active:=false;
query1.cachedupdates:=false;
query1.requestlive:=false;
query1.active:=true;
bb1.Enabled:=true;
bb4.enabled:=false;
bb5.enabled:=false;
bb2.enabled:=true;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;


procedure TCalendar.BB5Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGrid1.columns[3].ButtonStyle:=cbsnone;
  DBGrid1.columns[4].ButtonStyle:=cbsnone;
  DBGrid1.columns[5].ButtonStyle:=cbsnone;
  DBGrid1.columns[6].ButtonStyle:=cbsnone;
  DBGrid1.columns[7].ButtonStyle:=cbsnone;
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
  DBGrid1.columns[9].ButtonStyle:=cbsnone;
  DBGrid1.columns[10].ButtonStyle:=cbsnone;
  DBGrid1.columns[12].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[13].ButtonStyle:=cbsnone;
  DBGrid1.columns[14].ButtonStyle:=cbsnone;
  DBGrid1.columns[15].ButtonStyle:=cbsnone;
  DBGrid1.columns[16].ButtonStyle:=cbsnone;
  DBGrid1.columns[17].ButtonStyle:=cbsnone;
  DBGrid1.columns[18].ButtonStyle:=cbsnone;
  DBGrid1.columns[19].ButtonStyle:=cbsnone;
  
bb2.enabled:=true;
bb4.enabled:=false;
bb5.enabled:=false;
//dbgrid1.columns[0].ButtonStyle:=cbsNone;
end;

procedure TCalendar.BB6Click(Sender: TObject);
begin
close;
end;

procedure TCalendar.Query1AfterOpen(DataSet: TDataSet);
begin
bb2.enabled:=true;
BB1.Enabled:=true;
BB3.Enabled:=true;
bbt5.Enabled:=true;
bbt6.Enabled:=true;
end;

procedure TCalendar.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   15   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   15   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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

procedure TCalendar.BB2Click(Sender: TObject);
begin
with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('Dropped').Value:='1';
  end;
BB4.Enabled:=true;
BB5.Enabled:=true;
dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCalendar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if   query1.FieldByName('dropped').AsBoolean   then     DBGrid1.Canvas.Brush.Color:=clRed;
 DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

end.
