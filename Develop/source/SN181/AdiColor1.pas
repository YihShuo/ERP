unit AdiColor1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj, GridsEh, DBGridEh;

type
  TAdiColor = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    edt1: TEdit;
    qry1: TQuery;
    DBGrid1: TDBGridEh;
    lbl2: TLabel;
    edt2: TEdit;
    lbl1: TLabel;
    lbl3: TLabel;
    UpdateSQL1: TUpdateSQL;
    strngfldQuery1ADICOLOR: TStringField;
    strngfldQuery1Ver: TStringField;
    strngfldQuery1COLORNAME: TStringField;
    strngfldQuery1type: TStringField;
    strngfldQuery1property: TStringField;
    strngfldQuery1page: TStringField;
    strngfldQuery1ordinal: TStringField;
    strngfldQuery1Season: TStringField;
    strngfldQuery1Comment: TStringField;
    blnfldQuery1Dropped: TBooleanField;
    strngfldQuery1USERID: TStringField;
    dtmfldQuery1USERDATE: TDateTimeField;
    strngfldQuery1YN: TStringField;
    strngfldQuery1CreateUser: TStringField;
    dtmfldQuery1CreateDate: TDateTimeField;
    strngfldQuery1Coats_Nylon: TStringField;
    strngfldQuery1Coats_Sylko: TStringField;
    Label1: TLabel;
    edt3: TEdit;
    Label2: TLabel;
    edt4: TEdit;
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
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdiColor: TAdiColor;
  NDate:TDate;

implementation

uses main1, Calendar1;


{$R *.dfm}

procedure TAdiColor.FormCreate(Sender: TObject);
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

procedure TAdiColor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
  begin
    action:=Cafree;
    AdiColor:=nil;
  end;
   
end;

procedure TAdiColor.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TAdiColor.Button1Click(Sender: TObject);
begin
if not query1.RequestLive then
  begin
    with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select adicolor.*,acs.Coats_Nylon,acs.Coats_Sylko from ADICOLOR');
        sql.Add(' left join adicolorgoats acs on acs.adicolor=adicolor.adicolor and acs.ver=0 and acs.yn=''0''');
        sql.add(' where 1=1');
        if  length(edt1.Text) > 0 then
            sql.add(' and ADICOLOR.ADICOLOR like '''+edt1.Text+'%''');
        if  length(edt3.Text) > 0 then
            sql.add(' and ADICOLOR.property like '+''''+'%'+edt3.Text+'%''');
        if  length(edt4.Text) > 0 then
            sql.add(' and ADICOLOR.COLORNAME like '+''''+'%'+edt4.Text+'%''');
        if  length(edt2.Text) > 0 then
            sql.add(' and (ADICOLOR.SEASON like '''+edt2.Text+'%'' or ADICOLOR.SEASON is Null)');

        sql.add(' and (ADICOLOR.Dropped = ''0'' or ADICOLOR.Dropped is null) ');
        active:=true;
      end;
  end
  else
    begin
      showmessage('Pls save data first.');
    end;
end;

procedure TAdiColor.BB1Click(Sender: TObject);
var
  yr,itm : string;
  yy,mm,dd:word;
begin
AdiColor.FormCreate(Sender);
decodedate(NDate,yy,mm,dd);
yr := inputbox('Input the ADICOLOR of new record','ADICOLOR :','');
with qry1 do
begin
  active:=false;
  sql.Clear;
  sql.add('select * from ADICOLOR');
  sql.add(' where ADICOLOR = '''+yr+'''  and ver =''0''');
  active:=true;
  if eof then
  begin
    active:=false;
    sql.Clear;
    sql.Add('insert into ADICOLOR (ADICOLOR,ver,createuser,createdate,dropped) values ('''+yr+''',''0'','''+main.edit1.text+''','''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+''',''0'')');
    execsql;
  end
  else
    if fieldbyname('Dropped').Value='1' then
    begin
      active:=false;
      sql.Clear;
      sql.Add('delete ADICOLOR where ADICOLOR = '''+yr+''' and ver =''9''');
      execsql;
      sql.Clear;
      sql.Add('update ADICOLOR set dropped = ''1'', ver = convert(int,ver)+1 where ADICOLOR = '''+yr+''' ');
      execsql;
      sql.Clear;
      sql.Add('insert into ADICOLOR (ADICOLOR,ver,createuser,createdate,dropped) values ('''+yr+''',''0'','''+main.edit1.text+''','''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+''',''0'')');
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
    locate('ADICOLOR', yr,[]);
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
bb1.Enabled:=false;
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=true;
//dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TAdiColor.BB3Click(Sender: TObject);
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
end;

procedure TAdiColor.BB4Click(Sender: TObject);
var i:integer;
begin
try
//if query1.requestlive then
  //begin
    AdiColor.FormCreate(Sender);
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
      usmodified:
        begin
         query1.edit;
         query1.fieldbyname('userid').Value:=main.edit1.text;
         query1.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
         updatesql1.apply(ukmodify);
        end;
      end;
      query1.next;
    end;
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


procedure TAdiColor.BB5Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb2.enabled:=true;
bb4.enabled:=false;
bb5.enabled:=false;
//dbgrid1.columns[0].ButtonStyle:=cbsNone;
end;

procedure TAdiColor.BB6Click(Sender: TObject);
begin
close;
end;

procedure TAdiColor.Query1AfterOpen(DataSet: TDataSet);
begin
bb2.enabled:=true;
BB1.Enabled:=true;
BB3.Enabled:=true;
bbt5.Enabled:=true;
bbt6.Enabled:=true;
end;

procedure TAdiColor.bbt6Click(Sender: TObject);
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
        for   i:=0   to   query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.fieldCount-1   do
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

procedure TAdiColor.BB2Click(Sender: TObject);
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

procedure TAdiColor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if   query1.FieldByName('dropped').AsBoolean   then     DBGrid1.Canvas.Brush.Color:=clRed;
 DBGrid1.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TAdiColor.FormDestroy(Sender: TObject);
begin
  AdiColor := nil;
end;

end.
