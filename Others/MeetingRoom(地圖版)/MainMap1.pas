unit MainMap1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,
  Mask, DBCtrls, ADODB, jpeg, Menus, Math, Registry, inifiles;

type
  TMainMap = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label12: TLabel;
    ADOConnection1: TADOConnection;
    RoomBox: TPanel;
    RName: TLabel;
    Panel15: TPanel;
    MonthCalendar2: TMonthCalendar;
    ScrollBox1: TScrollBox;
    Img_DC: TImage;
    Img_OS2: TImage;
    Img_OS1: TImage;
    Img_AS: TImage;
    Img_C70: TImage;
    Img_JP: TImage;
    Img_MR1: TImage;
    Img_MR2: TImage;
    Img_MR3: TImage;
    Img_CS1: TImage;
    Img_CS2: TImage;
    Img_CS3: TImage;
    ADOQuery1: TADOQuery;
    L_OS2: TLabel;
    L_OS1: TLabel;
    L_JP: TLabel;
    L_MR1: TLabel;
    L_C70: TLabel;
    L_AS: TLabel;
    L_CS3: TLabel;
    L_CS1: TLabel;
    L_CS2: TLabel;
    L_MR2: TLabel;
    L_MR3: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    PopupMenu1: TPopupMenu;
    Windowsize1: TMenuItem;
    Default1: TMenuItem;
    Small1: TMenuItem;
    Panel5: TPanel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Panel6: TPanel;
    Label2: TLabel;
    Img_2F: TImage;
    L_2F: TLabel;
    ListBox1: TListBox;
    ADOQuery2: TADOQuery;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Img_DCMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Img_OS2Click(Sender: TObject);
    procedure ShowDetail(Name: String);
    procedure Img_OS1Click(Sender: TObject);
    procedure Img_ASClick(Sender: TObject);
    procedure Img_CS2Click(Sender: TObject);
    procedure Img_CS3Click(Sender: TObject);
    procedure Img_CS1Click(Sender: TObject);
    procedure Img_C70Click(Sender: TObject);
    procedure Img_JPClick(Sender: TObject);
    procedure Img_MR1Click(Sender: TObject);
    procedure Img_MR2Click(Sender: TObject);
    procedure Img_MR3Click(Sender: TObject);
    procedure MonthCalendar2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure L_OS2Click(Sender: TObject);
    procedure L_OS1Click(Sender: TObject);
    procedure L_ASClick(Sender: TObject);
    procedure L_CS2Click(Sender: TObject);
    procedure L_CS3Click(Sender: TObject);
    procedure L_CS1Click(Sender: TObject);
    procedure L_C70Click(Sender: TObject);
    procedure L_JPClick(Sender: TObject);
    procedure L_MR1Click(Sender: TObject);
    procedure L_MR2Click(Sender: TObject);
    procedure L_MR3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Small1Click(Sender: TObject);
    procedure Default1Click(Sender: TObject);
    procedure Img_2FClick(Sender: TObject);
    procedure L_2FClick(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Button4Click(Sender: TObject);

  private
    DefaultHeight, DefaultWidth, DefaultTop, DefaultLeft: array of integer;
    WindowSize: string;
    { Private declarations }
    MainApplication:String;
    procedure ReadIni();
  public
    Room: TStringList;
    procedure ShowDevice();
    { Public declarations }
  end;

var
  MainMap: TMainMap;
  a: integer;
  UserID, UserName, RoomName, Mode: string;

implementation

uses
  MeetingRoomDetail1, Login1, MyBooking1, RoutineMeeting1, EKanban1,
  DeviceMeeting1;
{$R *.dfm}

procedure TMainMap.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ERPCommit.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ERPCommit.ini');
      DBIP:=MyIni.ReadString('DB','IP','192.168.23.9');
      DBUser:=MyIni.ReadString('DB','User','tyxuan');
      DBPass:=MyIni.ReadString('DB','Pass','Itkhua@!admin');
      DBName:=MyIni.ReadString('DB','DBName','LIY_TYXUAN');
      MainApplication:=MyIni.ReadString('DB','Application','LY_ERP.exe');
      //
      ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog='+DBName+';Data Source='+DBIP;
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TMainMap.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    if Reg.OpenKey('Software\Danny\MeetingRoomSystem\WindowSize', false) then
    begin
      if (Default1.Checked) then
        Reg.WriteString('Size', '0')
      else if (Small1.Checked) then               
        Reg.WriteString('Size', '1')
    end;
  finally
    Reg.Free;
  end;
  Action := caFree;
end;
          
procedure TMainMap.FormDestroy(Sender: TObject);
begin
  MainMap := nil;
end;

procedure TMainMap.FormCreate(Sender: TObject);
var
  Reg: TRegistry;
begin
  ReadIni();
  if (FileExists(ExtractFilePath(Application.ExeName) + '\Room.txt')) then
  begin
    Room := TStringList.Create;
    Room.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Room.txt');

    EKanban := TEKanban.Create(Nil);
    EKanban.Show;
    MainMap.Close;
  end;

  {if (Screen.WorkAreaHeight < MainMap.Height) then
  begin
    MainMap.Height := MainMap.Height - (MainMap.Height - Screen.WorkAreaHeight);
    MainMap.Width := MainMap.Width + 16;
    ScrollBox1.Height := MainMap.Height - 90;
    ScrollBox1.Width := ScrollBox1.Width + 16;
    Img_DC.Height := ScrollBox1.Height - 4;
  end;}

  Label1.Caption := FormatDateTime('yyyy/MM/dd', Now);
  MonthCalendar2.Date := Now;
  MonthCalendar2Click(Nil);
  ScrollBox1.DoubleBuffered := true;
  UserID := '';
  UserName := '';
  RoomName := '';
  Mode := 'N';

  SetLength(DefaultHeight, 15);
  DefaultHeight[0] := 883;
  DefaultHeight[1] := ScrollBox1.Height;
  DefaultHeight[2] := Img_OS1.Height;
  DefaultHeight[3] := Img_OS2.Height;
  DefaultHeight[4] := Img_C70.Height;
  DefaultHeight[5] := Img_AS.Height;
  DefaultHeight[6] := Img_CS1.Height;
  DefaultHeight[7] := Img_CS2.Height;
  DefaultHeight[8] := Img_CS3.Height;
  DefaultHeight[9] := Img_JP.Height;
  DefaultHeight[10] := Img_MR1.Height;
  DefaultHeight[11] := Img_MR2.Height;
  DefaultHeight[12] := Img_MR3.Height;
  DefaultHeight[13] := Img_DC.Height;
  DefaultHeight[14] := Img_2F.Height;

  SetLength(DefaultWidth, 15);
  DefaultWidth[0] := 1363;
  DefaultWidth[1] := ScrollBox1.Width;
  DefaultWidth[2] := Img_OS1.Width;
  DefaultWidth[3] := Img_OS2.Width;
  DefaultWidth[4] := Img_C70.Width;
  DefaultWidth[5] := Img_AS.Width;
  DefaultWidth[6] := Img_CS1.Width;
  DefaultWidth[7] := Img_CS2.Width;
  DefaultWidth[8] := Img_CS3.Width;
  DefaultWidth[9] := Img_JP.Width;
  DefaultWidth[10] := Img_MR1.Width;
  DefaultWidth[11] := Img_MR2.Width;
  DefaultWidth[12] := Img_MR3.Width;
  DefaultWidth[13] := Img_DC.Width;
  DefaultWidth[14] := Img_2F.Width;

  SetLength(DefaultTop, 15);
  DefaultTop[0] := MainMap.Top;
  DefaultTop[1] := ScrollBox1.Top;
  DefaultTop[2] := Img_OS1.Top;
  DefaultTop[3] := Img_OS2.Top;
  DefaultTop[4] := Img_C70.Top;
  DefaultTop[5] := Img_AS.Top;
  DefaultTop[6] := Img_CS1.Top;
  DefaultTop[7] := Img_CS2.Top;
  DefaultTop[8] := Img_CS3.Top;
  DefaultTop[9] := Img_JP.Top;
  DefaultTop[10] := Img_MR1.Top;
  DefaultTop[11] := Img_MR2.Top;
  DefaultTop[12] := Img_MR3.Top;
  DefaultTop[13] := Img_DC.Top;
  DefaultTop[14] := Img_2F.Top;

  SetLength(DefaultLeft, 15);
  DefaultLeft[0] := MainMap.Left;
  DefaultLeft[1] := ScrollBox1.Left;
  DefaultLeft[2] := Img_OS1.Left;
  DefaultLeft[3] := Img_OS2.Left;
  DefaultLeft[4] := Img_C70.Left;
  DefaultLeft[5] := Img_AS.Left;
  DefaultLeft[6] := Img_CS1.Left;
  DefaultLeft[7] := Img_CS2.Left;
  DefaultLeft[8] := Img_CS3.Left;
  DefaultLeft[9] := Img_JP.Left;
  DefaultLeft[10] := Img_MR1.Left;
  DefaultLeft[11] := Img_MR2.Left;
  DefaultLeft[12] := Img_MR3.Left;
  DefaultLeft[13] := Img_DC.Left;
  DefaultLeft[14] := Img_2F.Left;


  Reg := TRegistry.Create;
  try
    if not Reg.OpenKey('Software\Danny\MeetingRoomSystem\WindowSize', True) then
    begin
      Small1Click(Nil);
    end
    else begin
      WindowSize := Reg.ReadString('Size');
      if (WindowSize = '1') then
        Small1Click(Nil)
      else if (WindowSize = '0') then
        Default1Click(Nil)
      else
        Reg.WriteString('Size', '0');
    end;
  finally
    Reg.Free;
  end;
end;

procedure TMainMap.MonthCalendar2Click(Sender: TObject);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MAX(CASE WHEN RoomName = ''All Star'' THEN Booked END) AS ''AS'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Chuck 70'' THEN Booked END) AS ''C70'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Cons 1'' THEN Booked END) AS ''CS1'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Cons 2'' THEN Booked END) AS ''CS2'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Cons 3'' THEN Booked END) AS ''CS3'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Jack Purcell'' THEN Booked END) AS ''JP'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Meeting Room 1'' THEN Booked END) AS ''MR1'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Meeting Room 2'' THEN Booked END) AS ''MR2'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''Meeting Room 3'' THEN Booked END) AS ''MR3'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''One Star 1'' THEN Booked END) AS ''OS1'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''One Star 2'' THEN Booked END) AS ''OS2'',');
    SQL.Add('MAX(CASE WHEN RoomName = ''2F'' THEN Booked END) AS ''2F'' FROM (');
    SQL.Add('  SELECT MeetingRoom.RoomName, ISNULL(MeetingRooms.Booked, 0) AS Booked FROM MeetingRoom');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('  SELECT RoomName, COUNT(RoomDate) AS Booked FROM MeetingRooms');
    SQL.Add('  WHERE RoomDate = ''' + FormatDateTime('yyyy-MM-dd', MonthCalendar2.Date) + '''');
    SQL.Add('  GROUP BY RoomName');
    SQL.Add('  ) AS MeetingRooms ON MeetingRooms.RoomName = MeetingRoom.RoomName');
    SQL.Add(') AS BookedMeeting');
    Active := true;

    L_OS1.Caption := FieldByName('OS1').AsString;
    L_OS2.Caption := FieldByName('OS2').AsString;
    L_AS.Caption := FieldByName('AS').AsString;
    L_CS1.Caption := FieldByName('CS1').AsString;
    L_CS2.Caption := FieldByName('CS2').AsString;
    L_CS3.Caption := FieldByName('CS3').AsString;
    L_C70.Caption := FieldByName('C70').AsString;
    L_JP.Caption := FieldByName('JP').AsString;
    L_MR1.Caption := FieldByName('MR1').AsString;
    L_MR2.Caption := FieldByName('MR2').AsString;
    L_MR3.Caption := FieldByName('MR3').AsString;
    L_2F.Caption := FieldByName('2F').AsString;
  end;
end;

procedure TMainMap.Button1Click(Sender: TObject);
begin
 if (Login <> Nil) then
   Login.Close;

 Login := TLogin.Create(self);
 Login.Show;
end;
        
procedure TMainMap.Button2Click(Sender: TObject);
begin
  if (UserID <> '') then
  begin
    if (MyBooking <> Nil) then
      MyBooking.Close;

    MyBooking := TMyBooking.Create(self);
    MyBooking.Show;
  end
  else begin
    if (MessageDlg('Please login first.', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      Mode := 'M';
      if (Login <> Nil) then
        Login.Close;

      Login := TLogin.Create(self);
      Login.Show;
    end;
  end;
end;
       
procedure TMainMap.Button3Click(Sender: TObject);
begin
  if (UserID <> '') then
  begin
    if (RoutineMeeting <> Nil) then
      RoutineMeeting.Close;

    RoutineMeeting := TRoutineMeeting.Create(self);
    RoutineMeeting.Show;
  end
  else begin
    if (MessageDlg('Please login first.', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      Mode := 'R';
      if (Login <> Nil) then
        Login.Close;

      Login := TLogin.Create(self);
      Login.Show;
    end;
  end;
end;

procedure  TMainMap.ShowDevice();
var
  position : Integer;
  ListBox: TListBox;
  Canvas: TCanvas;
begin
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ''  ''+Device,case when Status=1 then ''V'' else ''X'' end as TT ');
    SQL.Add('From MeetingRoomss ');
    SQL.Add('Where RoomName = '''+RName.Caption+''' ');
    Active:=true;
    if recordcount=0 then
    begin
      ListBox1.Visible:=false;
    end else
    begin
      ListBox1.Visible:=true;
      ListBox1.Items.Clear;
      while not eof do
      begin
        ListBox1.Items.Add(''+ADOQuery2.Fields[0].AsString+''#9''+ADOQuery2.Fields[1].AsString+'');
        next;
      end;
    end;
    Active:=false;
  end;


end;

procedure TMainMap.Img_DCMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Offset: Integer;
begin
  Offset := ScrollBox1.VertScrollBar.Position;
  RoomBox.Visible := false;
  Img_OS1.Visible := false;
  Img_OS2.Visible := false;
  Img_AS.Visible := false;
  Img_CS1.Visible := false;
  Img_CS2.Visible := false;
  Img_CS3.Visible := false;
  Img_C70.Visible := false;
  Img_JP.Visible := false;
  Img_MR1.Visible := false;
  Img_MR2.Visible := false;
  Img_MR3.Visible := false;
  Img_2F.Visible := false;
  ListBox1.Visible:=false;

  if (X >= Img_OS1.Left) AND (X <= Img_OS1.Left+Img_OS1.Width) AND (Y >= Img_OS1.Top+Offset) AND (Y <= Img_OS1.Top+Img_OS1.Height+Offset) then // One Star 1
  begin
    RName.Caption := 'One Star 1';
    RoomBox.Width := RName.Width + 20;
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_OS1.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_OS1.Top + 40;
    RoomBox.Visible := true;
    Img_OS1.Visible := true;
    //
    ListBox1.Left :=  Img_OS1.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_OS1.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_OS2.Left) AND (X <= Img_OS2.Left+Img_OS2.Width) AND (Y >= Img_OS2.Top+Offset) AND (Y <= Img_OS2.Top+Img_OS2.Height+Offset) then // One Star 2
  begin

    RName.Caption := 'One Star 2';
    RoomBox.Width := RName.Width + 20;  
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_OS2.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_OS2.Top + 40;
    RoomBox.Visible := true;
    Img_OS2.Visible := true;

    //
    ListBox1.Left :=  Img_OS2.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_OS2.Top - 10;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_AS.Left) AND (X <= Img_AS.Left+Img_AS.Width) AND (Y >= Img_AS.Top+Offset) AND (Y <= Img_AS.Top+Img_AS.Height+Offset) then // All Star
  begin   
    RName.Caption := 'All Star';
    RoomBox.Width := RName.Width + 20;    
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_AS.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_AS.Top + 40;
    RoomBox.Visible := true;
    Img_AS.Visible := true;

    //
    ListBox1.Left :=  Img_AS.Left + Panel4.Left  -ListBox1.Width-10;
    ListBox1.Top :=  Img_AS.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_CS1.Left) AND (X <= Img_CS1.Left+Img_CS1.Width) AND (Y >= Img_CS1.Top+Offset) AND (Y <= Img_CS1.Top+Img_CS1.Height+Offset) then // Cons 1
  begin   
    RName.Caption := 'Cons 1';
    RoomBox.Width := RName.Width + 20;  
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_CS1.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_CS1.Top + 40;
    RoomBox.Visible := true;
    Img_CS1.Visible := true;

    //
    ListBox1.Left :=  Img_CS1.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_CS1.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end   
  else if (X >= Img_CS2.Left) AND (X <= Img_CS2.Left+Img_CS2.Width) AND (Y >= Img_CS2.Top+Offset) AND (Y <= Img_CS2.Top+Img_CS2.Height+Offset) then // Cons 2
  begin        
    RName.Caption := 'Cons 2';
    RoomBox.Width := RName.Width + 20;
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_CS2.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_CS2.Top + 40;
    RoomBox.Visible := true;
    Img_CS2.Visible := true;

    //
    ListBox1.Left :=  Img_CS2.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_CS2.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_CS3.Left) AND (X <= Img_CS3.Left+Img_CS3.Width) AND (Y >= Img_CS3.Top+Offset) AND (Y <= Img_CS3.Top+Img_CS3.Height+Offset) then // Cons 3
  begin     
    RName.Caption := 'Cons 3';
    RoomBox.Width := RName.Width + 20;   
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_CS3.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_CS3.Top + 40;
    RoomBox.Visible := true;
    Img_CS3.Visible := true;

    //
    ListBox1.Left :=  Img_CS3.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_CS3.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_C70.Left) AND (X <= Img_C70.Left+Img_C70.Width) AND (Y >= Img_C70.Top+Offset) AND (Y <= Img_C70.Top+Img_C70.Height+Offset) then // Chuck 70
  begin
    RName.Caption := 'Chuck 70';
    RoomBox.Width := RName.Width + 20;    
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_C70.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_C70.Top + 40;
    RoomBox.Visible := true;
    Img_C70.Visible := true;

    //
    ListBox1.Left :=  Img_C70.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_C70.Top - 10;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_JP.Left) AND (X <= Img_JP.Left+Img_JP.Width) AND (Y >= Img_JP.Top+Offset) AND (Y <= Img_JP.Top+Img_JP.Height+Offset) then // Jack Purcell
  begin     
    RName.Caption := 'Jack Purcell';
    RoomBox.Width := RName.Width + 20;  
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_JP.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_JP.Top + 40;
    RoomBox.Visible := true;
    Img_JP.Visible := true;

    //
    ListBox1.Left :=  Img_JP.Left + Panel4.Left -ListBox1.Width-60;
    ListBox1.Top :=  Img_JP.Top - 100;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_MR1.Left) AND (X <= Img_MR1.Left+Img_MR1.Width) AND (Y >= Img_MR1.Top+Offset) AND (Y <= Img_MR1.Top+Img_MR1.Height+Offset) then // Meeting Room 1
  begin      
    RName.Caption := 'Meeting Room 1';
    RoomBox.Width := RName.Width + 20;  
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_MR1.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_MR1.Top + 40;
    RoomBox.Visible := true;
    Img_MR1.Visible := true;

    //
    ListBox1.Left :=  Img_MR1.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_MR1.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_MR2.Left) AND (X <= Img_MR2.Left+Img_MR2.Width) AND (Y >= Img_MR2.Top+Offset) AND (Y <= Img_MR2.Top+Img_MR2.Height+Offset) then // Meeting Room 2
  begin       
    RName.Caption := 'Meeting Room 2';
    RoomBox.Width := RName.Width + 20;  
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_MR2.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_MR2.Top + 40;
    RoomBox.Visible := true;
    Img_MR2.Visible := true;

    //
    ListBox1.Left :=  Img_MR2.Left + Panel4.Left  -ListBox1.Width-10;
    ListBox1.Top :=  Img_MR2.Top -60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end
  else if (X >= Img_MR3.Left) AND (X <= Img_MR3.Left+Img_MR3.Width) AND (Y >= Img_MR3.Top+Offset) AND (Y <= Img_MR3.Top+Img_MR3.Height+Offset) then // Meeting Room 3
  begin
    RName.Caption := 'Meeting Room 3';
    RoomBox.Width := RName.Width + 20;
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_MR3.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_MR3.Top + 40;
    RoomBox.Visible := true;
    Img_MR3.Visible := true;

    //
    ListBox1.Left :=  Img_MR3.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_MR3.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
    //
  end else if (X >= Img_2F.Left) AND (X <= Img_2F.Left+Img_2F.Width) AND (Y >= Img_2F.Top+Offset) AND (Y <= Img_2F.Top+Img_2F.Height+Offset) then // 2F
  begin
    RName.Caption := '2F';
    RoomBox.Width := RName.Width + 20;
    Splitter2.Width := RoomBox.Width;
    Splitter3.Width := RoomBox.Width;
    Splitter4.Left := RoomBox.Width - 2;
    RoomBox.Left := Img_2F.Left + Panel4.Left - RoomBox.Width;
    RoomBox.Top :=  Img_2F.Top + 40;
    RoomBox.Visible := true;
    Img_2F.Visible := true;

    //
    ListBox1.Left :=  Img_2F.Left + Panel4.Left -ListBox1.Width-10;
    ListBox1.Top :=  Img_2F.Top - 60;
    //ListBox1.Visible:=true;
    ShowDevice();
  end;
end;

procedure TMainMap.ShowDetail(Name: String);
begin
  RoomName := Name;
  if (MeetingRoomDetail <> Nil) then
  begin
    MeetingRoomDetail.Close;
  end;

  MeetingRoomDetail := TMeetingRoomDetail.Create(self);
  MeetingRoomDetail.Show;
end;
  
procedure TMainMap.Img_OS1Click(Sender: TObject);
begin
  ShowDetail('One Star 1');
end;

procedure TMainMap.Img_OS2Click(Sender: TObject);
begin
  ShowDetail('One Star 2');
end;
     
procedure TMainMap.Img_ASClick(Sender: TObject);
begin
  ShowDetail('All Star');
end;

procedure TMainMap.Img_CS1Click(Sender: TObject);
begin
  ShowDetail('Cons 1');
end;

procedure TMainMap.Img_CS2Click(Sender: TObject);
begin
  ShowDetail('Cons 2');
end;

procedure TMainMap.Img_CS3Click(Sender: TObject);
begin
  ShowDetail('Cons 3');
end;

procedure TMainMap.Img_C70Click(Sender: TObject);
begin
  ShowDetail('Chuck 70');
end;

procedure TMainMap.Img_JPClick(Sender: TObject);
begin
  ShowDetail('Jack Purcell');
end;

procedure TMainMap.Img_MR1Click(Sender: TObject);
begin
  ShowDetail('Meeting Room 1');
end;

procedure TMainMap.Img_MR2Click(Sender: TObject);
begin
  ShowDetail('Meeting Room 2');
end;

procedure TMainMap.Img_MR3Click(Sender: TObject);
begin
  ShowDetail('Meeting Room 3');
end;

procedure TMainMap.FormShow(Sender: TObject);
begin
  Panel2.SetFocus;
end;

procedure TMainMap.L_OS2Click(Sender: TObject);
begin
  Img_OS2Click(Nil);
end;

procedure TMainMap.L_OS1Click(Sender: TObject);
begin
  Img_OS1Click(Nil);
end;

procedure TMainMap.L_ASClick(Sender: TObject);
begin
  Img_ASClick(Nil);
end;
                
procedure TMainMap.L_CS1Click(Sender: TObject);
begin
  Img_CS1Click(Nil);
end;

procedure TMainMap.L_CS2Click(Sender: TObject);
begin
  Img_CS2Click(Nil);
end;

procedure TMainMap.L_CS3Click(Sender: TObject);
begin
  Img_CS3Click(Nil);
end;

procedure TMainMap.L_C70Click(Sender: TObject);
begin
  Img_C70Click(Nil);
end;

procedure TMainMap.L_JPClick(Sender: TObject);
begin
  Img_JPClick(Nil);
end;

procedure TMainMap.L_MR1Click(Sender: TObject);
begin
  Img_MR1Click(Nil);
end;

procedure TMainMap.L_MR2Click(Sender: TObject);
begin
  Img_MR2Click(Nil);
end;

procedure TMainMap.L_MR3Click(Sender: TObject);
begin
  Img_MR3Click(Nil);
end;

procedure TMainMap.Small1Click(Sender: TObject);
begin
  Small1.Checked := true;
  Default1.Checked := false;

  MainMap.Width := Floor(DefaultWidth[0] * 0.8) + 40;
  ScrollBox1.Width := Floor(DefaultWidth[1] * 0.8);
  Img_OS1.Width := Floor(DefaultWidth[2] * 0.8) + 1;
  Img_OS2.Width := Floor(DefaultWidth[3] * 0.8) + 1;
  Img_C70.Width := Floor(DefaultWidth[4] * 0.8) + 1;
  Img_AS.Width := Floor(DefaultWidth[5] * 0.8) + 1;
  Img_CS1.Width := Floor(DefaultWidth[6] * 0.8) + 1;
  Img_CS2.Width := Floor(DefaultWidth[7] * 0.8) + 1;
  Img_CS3.Width := Floor(DefaultWidth[8] * 0.8) + 1;
  Img_JP.Width := Floor(DefaultWidth[9] * 0.8) + 1;
  Img_MR1.Width := Floor(DefaultWidth[10] * 0.8) + 1;
  Img_MR2.Width := Floor(DefaultWidth[11] * 0.8) + 1;
  Img_MR3.Width := Floor(DefaultWidth[12] * 0.8) + 1;
  Img_DC.Width := Floor(DefaultWidth[13] * 0.8);
  Img_2F.Width := Floor(DefaultWidth[14] * 0.8)+1;

  MainMap.Height := Floor(DefaultHeight[0] * 0.8) + 20;
  ScrollBox1.Height := Floor(DefaultHeight[1] * 0.8);
  Img_OS1.Height := Floor(DefaultHeight[2] * 0.8) + 1;
  Img_OS2.Height := Floor(DefaultHeight[3] * 0.8) + 1;
  Img_C70.Height := Floor(DefaultHeight[4] * 0.8) + 1;
  Img_AS.Height := Floor(DefaultHeight[5] * 0.8) + 1;
  Img_CS1.Height := Floor(DefaultHeight[6] * 0.8) + 1;
  Img_CS2.Height := Floor(DefaultHeight[7] * 0.8) + 1;
  Img_CS3.Height := Floor(DefaultHeight[8] * 0.8) + 1;
  Img_JP.Height := Floor(DefaultHeight[9] * 0.8) + 1;
  Img_MR1.Height := Floor(DefaultHeight[10] * 0.8) + 1;
  Img_MR2.Height := Floor(DefaultHeight[11] * 0.8) + 1;
  Img_MR3.Height := Floor(DefaultHeight[12] * 0.8) + 1;
  Img_DC.Height := Floor(DefaultHeight[13] * 0.8);
  Img_2F.Height := Floor(DefaultHeight[14] * 0.8)+1;

  MainMap.Top := Floor(DefaultTop[0] * 0.8);
  ScrollBox1.Top := Floor(DefaultTop[1] * 0.8);
  Img_OS1.Top := Floor(DefaultTop[2] * 0.8);
  Img_OS2.Top := Floor(DefaultTop[3] * 0.8);
  Img_C70.Top := Floor(DefaultTop[4] * 0.8);
  Img_AS.Top := Floor(DefaultTop[5] * 0.8);
  Img_CS1.Top := Floor(DefaultTop[6] * 0.8);
  Img_CS2.Top := Floor(DefaultTop[7] * 0.8);
  Img_CS3.Top := Floor(DefaultTop[8] * 0.8);
  Img_JP.Top := Floor(DefaultTop[9] * 0.8);
  Img_MR1.Top := Floor(DefaultTop[10] * 0.8);
  Img_MR2.Top := Floor(DefaultTop[11] * 0.8);
  Img_MR3.Top := Floor(DefaultTop[12] * 0.8);
  Img_DC.Top := Floor(DefaultTop[13] * 0.8);
  Img_2F.Top := Floor(DefaultTop[14] * 0.8);

  MainMap.Left := Floor(DefaultLeft[0] * 0.8);
  ScrollBox1.Left := Floor(DefaultLeft[1] * 0.8);
  Img_OS1.Left := Floor(DefaultLeft[2] * 0.8);
  Img_OS2.Left := Floor(DefaultLeft[3] * 0.8);
  Img_C70.Left := Floor(DefaultLeft[4] * 0.8);
  Img_AS.Left := Floor(DefaultLeft[5] * 0.8);
  Img_CS1.Left := Floor(DefaultLeft[6] * 0.8);
  Img_CS2.Left := Floor(DefaultLeft[7] * 0.8);
  Img_CS3.Left := Floor(DefaultLeft[8] * 0.8);
  Img_JP.Left := Floor(DefaultLeft[9] * 0.8);
  Img_MR1.Left := Floor(DefaultLeft[10] * 0.8);
  Img_MR2.Left := Floor(DefaultLeft[11] * 0.8);
  Img_MR3.Left := Floor(DefaultLeft[12] * 0.8);
  Img_DC.Left := Floor(DefaultLeft[13] * 0.8);
  Img_2F.Left := Floor(DefaultLeft[14] * 0.8);

  L_OS1.Top := Img_OS1.Top + Img_OS1.Height - L_OS1.Height - 2;
  L_OS2.Top := Img_OS2.Top + Img_OS2.Height - L_OS2.Height - 2;
  L_C70.Top := Img_C70.Top + Img_C70.Height - L_C70.Height - 2;
  L_AS.Top := Img_AS.Top + Img_AS.Height - L_AS.Height - 2;
  L_CS1.Top := Img_CS1.Top + Img_CS1.Height - L_CS1.Height - 2;
  L_CS2.Top := Img_CS2.Top + Img_CS2.Height - L_CS2.Height - 2;
  L_CS3.Top := Img_CS3.Top + Img_CS3.Height - L_CS3.Height - 2;
  L_JP.Top := Img_JP.Top + Img_JP.Height - L_JP.Height - 2;
  L_MR1.Top := Img_MR1.Top + Img_MR1.Height - L_MR1.Height - 2;
  L_MR2.Top := Img_MR2.Top + Img_MR2.Height - L_MR2.Height - 2;
  L_MR3.Top := Img_MR3.Top + Img_MR3.Height - L_MR3.Height - 2;
  L_2F.Top := Img_2F.Top + Img_2F.Height - L_2F.Height - 2;

  L_OS1.Left := Img_OS1.Left + 2;
  L_OS2.Left := Img_OS2.Left + 2;
  L_C70.Left := Img_C70.Left + 2;
  L_AS.Left := Img_AS.Left + 2;
  L_CS1.Left := Img_CS1.Left + 2;
  L_CS2.Left := Img_CS2.Left + 2;
  L_CS3.Left := Img_CS3.Left + 2;
  L_JP.Left := Img_JP.Left + 2;
  L_MR1.Left := Img_MR1.Left + 2;
  L_MR2.Left := Img_MR2.Left + 2;
  L_MR3.Left := Img_MR3.Left + 2;
  L_2F.Left := Img_2F.Left + 2;

  Width := ScrollBox1.Width + Panel3.Width + 17;
  Height := ScrollBox1.Height + Panel2.Height + 40;
end;

procedure TMainMap.Default1Click(Sender: TObject);
begin
  Default1.Checked := true;
  Small1.Checked := false;

  MainMap.Width := DefaultWidth[0];
  ScrollBox1.Width := DefaultWidth[1];
  Img_OS1.Width := DefaultWidth[2];
  Img_OS2.Width := DefaultWidth[3];
  Img_C70.Width := DefaultWidth[4];
  Img_AS.Width := DefaultWidth[5];
  Img_CS1.Width := DefaultWidth[6];
  Img_CS2.Width := DefaultWidth[7];
  Img_CS3.Width := DefaultWidth[8];
  Img_JP.Width := DefaultWidth[9];
  Img_MR1.Width := DefaultWidth[10];
  Img_MR2.Width := DefaultWidth[11];
  Img_MR3.Width := DefaultWidth[12];
  Img_DC.Width := DefaultWidth[13];
  Img_2F.Width := DefaultWidth[14];

  MainMap.Height := DefaultHeight[0];
  ScrollBox1.Height := DefaultHeight[1];
  Img_OS1.Height := DefaultHeight[2];
  Img_OS2.Height := DefaultHeight[3];
  Img_C70.Height := DefaultHeight[4];
  Img_AS.Height := DefaultHeight[5];
  Img_CS1.Height := DefaultHeight[6];
  Img_CS2.Height := DefaultHeight[7];
  Img_CS3.Height := DefaultHeight[8];
  Img_JP.Height := DefaultHeight[9];
  Img_MR1.Height := DefaultHeight[10];
  Img_MR2.Height := DefaultHeight[11];
  Img_MR3.Height := DefaultHeight[12];
  Img_DC.Height := DefaultHeight[13];
  Img_2F.Height := DefaultHeight[14];

  MainMap.Top := DefaultTop[0];
  ScrollBox1.Top := DefaultTop[1];
  Img_OS1.Top := DefaultTop[2];
  Img_OS2.Top := DefaultTop[3];
  Img_C70.Top := DefaultTop[4];
  Img_AS.Top := DefaultTop[5];
  Img_CS1.Top := DefaultTop[6];
  Img_CS2.Top := DefaultTop[7];
  Img_CS3.Top := DefaultTop[8];
  Img_JP.Top := DefaultTop[9];
  Img_MR1.Top := DefaultTop[10];
  Img_MR2.Top := DefaultTop[11];
  Img_MR3.Top := DefaultTop[12];
  Img_DC.Top := DefaultTop[13];
  Img_2F.Top := DefaultTop[14];

  MainMap.Left := DefaultLeft[0];
  ScrollBox1.Left := DefaultLeft[1];
  Img_OS1.Left := DefaultLeft[2];
  Img_OS2.Left := DefaultLeft[3];
  Img_C70.Left := DefaultLeft[4];
  Img_AS.Left := DefaultLeft[5];
  Img_CS1.Left := DefaultLeft[6];
  Img_CS2.Left := DefaultLeft[7];
  Img_CS3.Left := DefaultLeft[8];
  Img_JP.Left := DefaultLeft[9];
  Img_MR1.Left := DefaultLeft[10];
  Img_MR2.Left := DefaultLeft[11];
  Img_MR3.Left := DefaultLeft[12];
  Img_DC.Left := DefaultLeft[13];
  Img_2F.Left := DefaultLeft[14];

  L_OS1.Top := Img_OS1.Top + Img_OS1.Height - L_OS1.Height - 3;
  L_OS2.Top := Img_OS2.Top + Img_OS2.Height - L_OS2.Height - 3;
  L_C70.Top := Img_C70.Top + Img_C70.Height - L_C70.Height - 3;
  L_AS.Top := Img_AS.Top + Img_AS.Height - L_AS.Height - 3;
  L_CS1.Top := Img_CS1.Top + Img_CS1.Height - L_CS1.Height - 3;
  L_CS2.Top := Img_CS2.Top + Img_CS2.Height - L_CS2.Height - 3;
  L_CS3.Top := Img_CS3.Top + Img_CS3.Height - L_CS3.Height - 3;
  L_JP.Top := Img_JP.Top + Img_JP.Height - L_JP.Height - 3;
  L_MR1.Top := Img_MR1.Top + Img_MR1.Height - L_MR1.Height - 3;
  L_MR2.Top := Img_MR2.Top + Img_MR2.Height - L_MR2.Height - 3;
  L_MR3.Top := Img_MR3.Top + Img_MR3.Height - L_MR3.Height - 3;
  L_2F.Top := Img_2F.Top + Img_2F.Height - L_2F.Height - 3;

  L_OS1.Left := Img_OS1.Left + 3;
  L_OS2.Left := Img_OS2.Left + 3;
  L_C70.Left := Img_C70.Left + 3;
  L_AS.Left := Img_AS.Left + 3;
  L_CS1.Left := Img_CS1.Left + 3;
  L_CS2.Left := Img_CS2.Left + 3;
  L_CS3.Left := Img_CS3.Left + 3;
  L_JP.Left := Img_JP.Left + 3;
  L_MR1.Left := Img_MR1.Left + 3;
  L_MR2.Left := Img_MR2.Left + 3;
  L_MR3.Left := Img_MR3.Left + 3;
  L_2F.Left := Img_2F.Left + 3;

  Width := ScrollBox1.Width + Panel3.Width + 18;
  Height := ScrollBox1.Height + Panel2.Height + 40;
end;

procedure TMainMap.Img_2FClick(Sender: TObject);
begin
  ShowDetail('2F');  
end;

procedure TMainMap.L_2FClick(Sender: TObject);
begin
  Img_2FClick(Nil);
end;



procedure TMainMap.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  ListBox: TListBox;
  ItemText, Col1, Col2: string;
  TabPos: Integer;
  Col1Width, Col2Width: Integer;
begin
  ListBox := TListBox(Control);
  if Index < 0 then Exit;

  //Lay dong hien tai
  ItemText := ListBox.Items[Index];

  // Kiem tra vi tri Tab (#9) tach thanh 2 cot
  TabPos := Pos(#9, ItemText);
  if TabPos > 0 then
  begin
    Col1 := Trim(Copy(ItemText, 1, TabPos - 1));
    Col2 := Trim(Copy(ItemText, TabPos + 1, Length(ItemText)));
  end
  else
  begin
    Col1 := ItemText;
    Col2 := '';
  end;

  //Set do rong tung cot
  Col1Width := 120;
  Col2Width := 50;

  // Xoa nen
  //ListBox.Canvas.FillRect(Rect);

  // Ve cot 1
  ListBox.Canvas.Font.Color := clwhite;
  ListBox.Canvas.TextOut(Rect.Left + 2, Rect.Top, Col1);

  // Ktra gia tri va doi mau cot 2
  if Col2 = 'V' then
    ListBox.Canvas.Font.Color := clgreen
  else if Col2 = 'X' then
    ListBox.Canvas.Font.Color := clRed;

  // Ve cot 2
  ListBox.Canvas.TextOut(Rect.Left + Col1Width + 2, Rect.Top, Col2);
end;

procedure TMainMap.Button4Click(Sender: TObject);
begin
  if (UserID <> '') then
  begin
    if (DeviceMeeting <> Nil) then
      DeviceMeeting.Close;

    DeviceMeeting := TDeviceMeeting.Create(self);
    DeviceMeeting.Show;
  end
  else begin
    if (MessageDlg('Please login first.', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      Mode := 'D';
      if (Login <> Nil) then
        Login.Close;

      Login := TLogin.Create(self);
      Login.Show;
    end;
  end;
end;

end.
