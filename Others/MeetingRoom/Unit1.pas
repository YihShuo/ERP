unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,
  Mask, DBCtrls, ADODB, inifiles;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Panel8: TPanel;
    Button1: TButton;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    Panel6: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    Panel7: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel10: TPanel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Button2: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Label12: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Button3: TButton;
    Panel11: TPanel;
    Button4: TButton;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Panel12: TPanel;
    Panel13: TPanel;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Button5: TButton;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Timer1: TTimer;
    Label21: TLabel;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOQuery1RoomName: TStringField;
    ADOQuery1Booked: TIntegerField;
    ADOQuery2: TADOQuery;
    ADOQuery2UserDate: TStringField;
    ADOQuery2UserID: TStringField;
    ADOQuery2RoomDate: TDateTimeField;
    ADOQuery2Topic: TStringField;
    ADOQuery2RoomTime: TStringField;
    ADOQuery2USERNAME: TStringField;
    ADOgettime: TADOQuery;
    ADOTable1: TADOTable;
    ADOQuery3: TADOQuery;
    ADOQuery3RoomName: TStringField;
    ADOQuery3UserDate: TStringField;
    ADOQuery3UserID: TStringField;
    ADOQuery3RoomDate: TDateTimeField;
    ADOQuery3Topic: TStringField;
    ADOQuery3RoomTime: TStringField;
    ADOConnection2: TADOConnection;
    CheckBox1: TCheckBox;
    Edit16: TEdit;
    Panel14: TPanel;
    Edit17: TEdit;
    Label22: TLabel;
    ADOQuery2Participant: TStringField;
    Panel3: TPanel;
    MonthCalendar1: TMonthCalendar;
    Label23: TLabel;
    Edit18: TEdit;
    ADOQuery3Participant: TStringField;
    DBGridEh4: TDBGridEh;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    CheckBox2: TCheckBox;
    ADOQuery4RoomTime: TStringField;
    ADOQuery4Participant: TStringField;
    ADOQuery4Topic: TStringField;
    ADOQuery4RoomName: TStringField;
    ADOQuery4UserName: TStringField;
    procedure MonthCalendar1Click(Sender: TObject);
    procedure Database1Login(Database: TDatabase; LoginParams: TStrings);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button1Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure ADOQuery3AfterScroll(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);

  private
    { Private declarations }
    MainApplication:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:integer;

implementation

{$R *.dfm}

procedure TForm1.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ERPCommit.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ERPCommit.ini');
      DBIP:=MyIni.ReadString('DB','IP','192.168.23.9');
      DBUser:=MyIni.ReadString('DB','User','tyx');
      DBPass:=MyIni.ReadString('DB','Pass','tyx');
      DBName:=MyIni.ReadString('DB','DBName','LIY_TYXUAN');
      MainApplication:=MyIni.ReadString('DB','Application','LY_ERP.exe');
      //
      ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog='+DBName+';Data Source='+DBIP;
      ADOConnection2.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog='+DBName+';Data Source='+DBIP;
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TForm1.MonthCalendar1Click(Sender: TObject);
begin
   DateTimePicker1.date:=MonthCalendar1.Date;
   label1.caption:=formatdatetime('yyyy/MM/dd',dateTimePicker1.Date); 
   with ADOQuery1 do          //取服務器的年月值
   begin
    active:=false;
    sql.Clear;
    sql.Add('select meetingroom.roomname,isnull(meetingrooms.booked,0) as booked from meetingroom');
    sql.Add('left join (');
    sql.Add('select roomname,count(roomdate) booked from meetingrooms');
    sql.Add('where roomdate='''+datetostr(DateTimePicker1.date)+'''');
    sql.Add('group by roomname)meetingrooms on meetingroom.roomname=meetingrooms.roomname');
    active:=true;
   end;
  with ADOQuery2 do
      begin
       SQL.Clear;
       SQL.Add('select * from LIY_TYXUAN.dbo.MeetingRooms ');
       SQL.Add('left join LIY_ERP.dbo.busers on busers.userid=MeetingRooms.userid');
       SQL.Add('where roomname=:roomname and roomdate='''+datetostr(DateTimePicker1.date)+'''');
       SQL.Add('ORDER BY roomtime');
       Active:=true;
      end;

end;

procedure TForm1.Database1Login(Database: TDatabase;
  LoginParams: TStrings);
begin
  loginparams.Values['user name']:='sa';
  loginparams.values['password']:='jack';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    ReadIni();
    MonthCalendar1.date:=now;
    dateTimePicker1.date:=date;
    with adogettime do  //抓取CFM的FD 15-19季
        begin
         active:=false;
         sql.Clear;
         sql.add('select roomname from meetingroom');
         sql.add('group by roomname');
         active:=true;
         combobox1.items.clear;
         while not eof do
         begin
           combobox1.items.add(fieldbyname('roomname').asstring );
           next;
         end;
      end;
      combobox1.ItemIndex:=0;
      PageControl1.TabIndex:=1;
      a:=1; //預設進入booking
      MonthCalendar1.OnClick(nil);
end;

procedure TForm1.DBGridEh1CellClick(Column: TColumnEh);
begin
   combobox1.Text:=adoquery1.FieldByName('roomname').Asstring;
   Label13.caption:=adoquery1.FieldByName('roomname').Asstring;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  if edit8.text='pass' then
  begin
     PageControl1.TabIndex:=1;  
     panel9.Visible:=true;
     edit2.text:=edit6.Text;
     edit9.text:=edit4.Text;
  end;
  if edit8.text<>'pass' then
  begin
      PageControl1.TabIndex:=0;
      a:=1;      //未輸入密碼前判斷是點BOOKING 或CANCEL
  end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    adotable1.Active:=true;
    if adotable1.Locate('UserID',trim(edit4.Text),[]) then
      begin
        edit6.Text:=adotable1.fieldbyname('UserName').AsString;
        edit5.SetFocus;
      end
      else
      begin
        messagedlg('No UserID. Pls key in again.',mtwarning,[mbOK],0);
        edit4.SetFocus;
      end;
  end;
end;

procedure TForm1.Edit4Exit(Sender: TObject);
begin
    adotable1.Active:=true;
    if adotable1.Locate('UserID',trim(edit4.Text),[]) then
      begin
        edit6.Text:=adotable1.fieldbyname('UserName').AsString;
      end
      else
      begin
        messagedlg('No UserID. Pls key in again.',mtwarning,[mbOK],0);
        //edit1.SetFocus;
      end;
end;

procedure TForm1.Edit5Enter(Sender: TObject);
begin
  if edit4.text='' then
     edit4.SetFocus;
end;


procedure TForm1.Button2Click(Sender: TObject);
var y,m,d:word;
var date1:tdate;

begin
decodedate(date,y,m,d);

if adotable1.locate('UserID;PWD',vararrayof([edit4.text,edit5.text]),[loCaseInsensitive]) then
  begin
     edit8.text:='pass';
     if a=1 then
     begin
       PageControl1.TabIndex:=1;
       button1.click;
     end;
     if a=2 then
     begin
       PageControl1.TabIndex:=2;
       button3.click;
     end;
     edit5.visible:=false;
     label10.visible:=false;
     button2.visible:=false;     
  end
  else
    begin
      showmessage('You key in the wrong user name or password.'+#13+'Pls try again');
      edit7.Text:=inttostr(strtoint(edit7.Text)+1);
      edit5.setfocus;
    end;
if strtoint(edit7.Text)>=3 then
  begin
    showmessage('More than 3 times.'+#13+'Abort.');
    close;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if edit8.text='pass' then
  begin
     panel11.Visible:=true;
     PageControl1.TabIndex:=2;
       with adoquery3 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select * from MeetingRooms');
          sql.add('where userid='''+edit4.text+''' ');
          if checkbox1.checked then
             sql.add('and roomdate>='''+datetostr(dateTimePicker1.date)+''' ');
          sql.add('order by roomdate,roomtime ');
          active:=true;
        end;
        edit10.text:=adoquery3.fieldbyname('Topic').AsString;
        edit11.text:=adoquery3.fieldbyname('UserID').AsString;
        edit12.text:=adoquery3.fieldbyname('Userdate').AsString;
        edit13.text:=adoquery3.fieldbyname('Roomname').AsString;
        edit14.text:=adoquery3.fieldbyname('roomtime').AsString;
        edit15.text:=adoquery3.fieldbyname('roomdate').AsString;
  end;
  if edit8.text<>'pass' then
  begin
      PageControl1.TabIndex:=0;
      a:=2;      //未輸入密碼前判斷是點BOOKING 或CANCEL
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     if edit16.text<=(formatdatetime('yyyy/MM/dd',dateTimePicker1.Date)) then
     begin
        if (edit1.text<>'') then
        begin

           with adoquery4 do  //提示有衝突的會議
           begin
             active:=false;
             sql.Clear;
             sql.add('select RoomTime,Participant,Topic,RoomName,UserID as UserName  from MeetingRooms');
             sql.add('where roomdate = '''+datetostr(datetimepicker1.date)+''' and LEFT(roomtime,2)<= '''+combobox2.text+''' AND SUBSTRING(roomtime,7,2)>='''+combobox2.text+'''');
             active:=true;
           end;
                   
           with ADOgettime do
           begin
             active:=false;
             sql.Clear;
             sql.add('insert into MeetingRooms');
             sql.add('(roomname,roomdate,roomtime,userID,userdate,topic,Participant)');
             sql.add('values');
             sql.add('('''+combobox1.text+''','''+datetostr(datetimepicker1.date)+''',');
             sql.add(' '''+combobox2.text+':'+''+combobox3.text+'~'+combobox4.text+':'+combobox5.text+''',');
             sql.add(' '''+edit4.text+''','''+edit16.text+' '+edit3.text+''','''+edit1.text+''','''+edit17.text+''')');
             execsql;
           end;


           showmessage('Booking Already');
           if not adoquery4.Eof then
              panel6.visible:=true;
           edit1.Color:=clWindow;
           MonthCalendar1.OnClick(nil);
        end;
     end;
     if (edit1.text='') then
     begin
        showmessage('input Meeting Topic');
        edit1.SetFocus;
        edit1.Color:=clred;
     end;

     if edit16.text>(formatdatetime('yyyy/MM/dd',dateTimePicker1.Date)) then
     begin
        showmessage('Booking Date Error');
     end;
end;


procedure TForm1.Button5Click(Sender: TObject);
begin

    with adoquery3 do
       begin
         active:=false;
         sql.Clear;
         sql.add('delete MeetingRooms where UserID='''+edit4.text+''' and topic='''+edit10.text+''' ');
         sql.add('and roomname='''+edit13.text+''' ');
         sql.add('and roomdate='''+edit15.text+''' ');
         sql.add('and roomtime='''+edit14.text+''' ');
         sql.add('and userdate='''+edit12.text+''' ');
         sql.add('and Participant='''+edit18.text+''' ');
         execsql;
       end;
     button3.click;

end;




procedure TForm1.Timer1Timer(Sender: TObject);
begin
  edit3.text:=formatdatetime('HH:mm:SS',time);
  edit16.text:=formatdatetime('yyyy/MM/dd',date);
end;

procedure TForm1.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
   combobox1.Text:=ADOquery1.FieldByName('roomname').Asstring;
   Label13.caption:=ADOquery1.FieldByName('roomname').Asstring;
end;

procedure TForm1.ADOQuery3AfterScroll(DataSet: TDataSet);
begin
    edit10.text:=adoquery3.fieldbyname('Topic').AsString;
    edit11.text:=adoquery3.fieldbyname('UserID').AsString;
    edit12.text:=adoquery3.fieldbyname('Userdate').AsString;
    edit13.text:=adoquery3.fieldbyname('Roomname').AsString;
    edit14.text:=adoquery3.fieldbyname('roomtime').AsString;
    edit15.text:=adoquery3.fieldbyname('roomdate').AsString;
    edit18.text:=adoquery3.fieldbyname('Participant').AsString;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
       if PageControl1.TabIndex=1 then
          MonthCalendar1.OnClick(nil);
       if PageControl1.TabIndex=2 then
          button3.click;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
   button3.Click;
end;


procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then
     panel6.Visible:= true
  else
     panel6.Visible:=false;
end;

end.
