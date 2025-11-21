unit Directory_LeaveRuler_Cal1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, Data.DB, Data.Win.ADODB, DateUtils;

type
  TDirectory_LeaveRuler_Cal = class(TForm)
    QTemp: TADOQuery;
    ExcQry: TADOQuery;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    SpinEdit1: TSpinEdit;
    DTP1: TDateTimePicker;
    ED_ID: TEdit;
    ExtendSpinEdit: TSpinEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    IntervalSpinEdit: TSpinEdit;
    StopJobDaySpinEdit: TSpinEdit;
    Label9: TLabel;
    ED_ID1: TEdit;
    Label10: TLabel;
    DTP2: TDateTimePicker;
    Button2: TButton;
    Label11: TLabel;
    Label12: TLabel;
    SpinEdit2: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ED_ID1Change(Sender: TObject);
  private
    { Private declarations }
    procedure ShowIntervalDays();
  public
    { Public declarations }
  end;

var
  Directory_LeaveRuler_Cal: TDirectory_LeaveRuler_Cal;

implementation
   uses main1, Directory_LeaveRuler1, FunUnit;
{$R *.dfm}

procedure TDirectory_LeaveRuler_Cal.Button1Click(Sender: TObject);
var i,j,Days,IntervalDays,ExtendDays:integer;
    Plan_SDate,Plan_EDate:TDate;
    Memo:String;
begin
  with QTemp do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select ID from Directory_LeaveRuler where FYear='''+inttostr(SpinEdit1.Value)+''' and SDate is not null ');
     if ((Ed_ID.Text <> '') and (Ed_ID.Text<>'All')) then
      SQL.Add(' and Directory_LeaveRuler.ID = ''' + ED_ID.Text + ''' ');
    //國籍
    if Directory_LeaveRuler.RB12.Checked=true then  SQL.Add(' and Exists (select ID from Certificate where Certificate.ID=Directory_LeaveRuler.ID and  Certificate.NID=''TW'') ');
    if Directory_LeaveRuler.RB13.Checked=true then  SQL.Add(' and Exists (select ID from Certificate where Certificate.ID=Directory_LeaveRuler.ID and  Certificate.NID in (''CN'',''PH'',''NIN'') ) ');
     Active:=true;
     if RecordCount>0 then
     begin
       Showmessage('Already have on holiday,已經請假，不能刪除重新計算');
       Exit;
     end;
     Active:=false;
  end;
  //
  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete From Directory_LeaveRuler where FYear='''+inttostr(SpinEdit1.Value)+''' ');
    if ((Ed_ID.Text <> '') and (Ed_ID.Text<>'All')) then
      SQL.Add(' and Directory_LeaveRuler.ID = ''' + ED_ID.Text + ''' ');
    //國籍
    if Directory_LeaveRuler.RB12.Checked=true then  SQL.Add(' and Exists (select ID from Certificate where Certificate.ID=Directory_LeaveRuler.ID and  Certificate.NID=''TW'') ');
    if Directory_LeaveRuler.RB13.Checked=true then  SQL.Add(' and Exists (select ID from Certificate where Certificate.ID=Directory_LeaveRuler.ID and  Certificate.NID in (''CN'',''PH'',''NIN'')) ');
    ExecSQL();
    //
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  '''+inttostr(SpinEdit1.Value)+''' as FYear,Directory.ID,Certificate.Name,Directory_Position.HolidayTimes,Certificate.NID,Directory_Position.Days,Directory_Position.IntervalDays ');
    SQL.Add('        ,Convert(smalldatetime,'''+FormatDatetime('YYYY/MM/DD',DTP1.Date)+''') as FirstHoliday');
    SQL.Add('from Certificate ');
    SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
    SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
    SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add(' where Directory_Position.HolidayTimes is not null and Year(Certificate.DutyDate)<'+inttostr(SpinEdit1.Value));
    SQL.Add(' and Certificate.NID<>''VN'' and IsNull(Certificate.Resigned,0)=0');
    if ((Ed_ID.Text <> '') and (Ed_ID.Text<>'All')) then
      SQL.Add('and Directory.ID = ''' + ED_ID.Text + ''' ');
    //國籍
    if Directory_LeaveRuler.RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
    if Directory_LeaveRuler.RB13.Checked=true then  SQL.Add(' and Certificate.NID in (''CN'',''PH'',''NIN'') ');
    SQL.Add('order by FYear,Directory.Sequence');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
    //
    for i:=0 to QTemp.RecordCount-1 do
    begin
      //
      IntervalDays:=FieldByName('IntervalDays').Value;//
      ExtendDays:=ExtendSpinEdit.Value; //第一次春節延長放假天數
      Plan_SDate:=FieldByName('FirstHoliday').Value+IntervalDays;//
      Plan_EDate:=FieldByName('FirstHoliday').Value+IntervalDays+ExtendDays+(FieldByName('Days').Value-1);
      Days:=DaysBetween(Plan_SDate,Plan_EDate)+1;
      //第一次
      ExcQry.Active:=false;
      ExcQry.SQL.Clear;
      ExcQry.SQL.Add('Insert into Directory_LeaveRuler (FYear, ID, NO, IsAllow, Plan_SDate, Plan_EDate, Plan_Days, Memo, UserID, UserDate, YN) ');
      ExcQry.SQL.Add('Values ('''+inttostr(SpinEdit1.Value)+''','''+FieldByName('ID').AsString+''',1,0,'''+FormatDatetime('YYYY/MM/DD',Plan_SDate)+''','''+FormatDatetime('YYYY/MM/DD',Plan_EDate)+''','+inttostr(Days)+','''+Memo+''','''+main.UserID+''',GetDate(),''1'') ');
      //FuncObj.WriteErrorLog(ExcQry.SQL.Text);
      if Yearof(Plan_SDate)=SpinEdit1.Value then  ExcQry.ExecSQL();
      //第二次
      for j:=2 to QTemp.FieldByName('HolidayTimes').Value do
      begin
         ExcQry.Active:=false;
         ExcQry.SQL.Clear;
         ExcQry.SQL.Add('Insert into Directory_LeaveRuler (FYear, ID, NO, IsAllow, Plan_SDate, Plan_EDate, Plan_Days, UserID, UserDate, YN) ');
         if ExtendDays>0 then //春節第一次休假後，第二次扣除天數
         begin
           Plan_SDate:=Plan_EDate+IntervalDays;
           Plan_EDate:=Plan_SDate+(FieldByName('Days').Value-1-ExtendDays);
           Days:=DaysBetween(Plan_SDate,Plan_EDate)+1;
           ExtendDays:=0;
           ExcQry.SQL.Add('Values ('''+inttostr(SpinEdit1.Value)+''','''+FieldByName('ID').AsString+''','+inttostr(j)+',0,'''+FormatDatetime('YYYY/MM/DD',Plan_SDate)+''','''+FormatDatetime('YYYY/MM/DD',Plan_EDate)+''','+inttostr(Days)+','''+main.UserID+''',GetDate(),''1'') ');
         end else
         begin
           Plan_SDate:=Plan_EDate+IntervalDays;
           Plan_EDate:=Plan_SDate+(FieldByName('Days').Value-1);
           Days:=DaysBetween(Plan_SDate,Plan_EDate)+1;
           ExcQry.SQL.Add('Values ('''+inttostr(SpinEdit1.Value)+''','''+FieldByName('ID').AsString+''','+inttostr(j)+',0,'''+FormatDatetime('YYYY/MM/DD',Plan_SDate)+''','''+FormatDatetime('YYYY/MM/DD',Plan_EDate)+''','+inttostr(Days)+','''+main.UserID+''',GetDate(),''1'') ');
         end;
         //FuncObj.WriteErrorLog(ExcQry.SQL.Text);
         if Yearof(Plan_EDate)=SpinEdit1.Value then  ExcQry.ExecSQL();
      end;
      QTemp.Next;
    end;
    //
  end;
  Directory_LeaveRuler.Query1.Active:=false;
  Directory_LeaveRuler.Query1.Active:=true;
  Showmessage('Finish');
  Close;
  //
end;

procedure TDirectory_LeaveRuler_Cal.Button2Click(Sender: TObject);
var i,j,Days,IntervalDays,StopJobDay:integer;
    Plan_SDate,Plan_EDate:TDate;
    Memo:String;
begin
  if ED_ID1.Text='' then
  begin
    Showmessage('人員工號不能為空白!');
    Exit;
  end;
  with QTemp do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select ID from Directory_LeaveRuler where FYear='''+inttostr(SpinEdit1.Value)+''' and SDate is not null ');
     SQL.Add(' and Directory_LeaveRuler.ID = ''' + ED_ID1.Text + ''' ');
     Active:=true;
     if RecordCount>0 then
     begin
       Showmessage('Already have on holiday,已經請假，不能刪除重新計算');
       Exit;
     end;
     Active:=false;
  end;
  //
  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete From Directory_LeaveRuler where FYear='''+inttostr(SpinEdit1.Value)+''' ');
    SQL.Add(' and Directory_LeaveRuler.ID = ''' + ED_ID1.Text + ''' ');
    ExecSQL();
    //
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  '''+inttostr(SpinEdit1.Value)+''' as FYear,Directory.ID,Certificate.Name,Directory_Position.HolidayTimes,Certificate.NID,Directory_Position.Days');
    SQL.Add('        ,Convert(smalldatetime,'''+FormatDatetime('YYYY/MM/DD',DTP2.Date)+''') as FirstHoliday');
    SQL.Add('from Certificate ');
    SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
    SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
    SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
    SQL.Add(' where Directory_Position.HolidayTimes is not null');
    SQL.Add(' and Certificate.NID<>''VN'' and IsNull(Certificate.Resigned,0)=0');
    SQL.Add('and Directory.ID = ''' + ED_ID1.Text + ''' ');
    //國籍
    if Directory_LeaveRuler.RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
    if Directory_LeaveRuler.RB13.Checked=true then  SQL.Add(' and Certificate.NID in (''CN'',''PH'',''NIN'')');
    SQL.Add('order by FYear,Directory.Sequence');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
    //
    for i:=0 to QTemp.RecordCount-1 do
    begin
      //
      IntervalDays:=IntervalSpinEdit.Value;
      StopJobDay:=StopJobDaySpinEdit.Value; //留職停薪天數
      Plan_SDate:=FieldByName('FirstHoliday').Value+IntervalDays+StopJobDay;//
      Plan_EDate:=FieldByName('FirstHoliday').Value+IntervalDays+StopJobDay+(FieldByName('Days').Value-1);
      Days:=DaysBetween(Plan_SDate,Plan_EDate)+1;
      Memo:=Memo+' 入職日'+FormatDateTime('YYYY/MM/DD',DTP2.Date);
      if StopJobDay>0 then Memo:=Memo+' 留職停薪'+inttostr(StopJobDay)+'天';

      //第一次
      ExcQry.Active:=false;
      ExcQry.SQL.Clear;
      ExcQry.SQL.Add('Insert into Directory_LeaveRuler (FYear, ID, NO, IsAllow, Plan_SDate, Plan_EDate, Plan_Days, Memo, UserID, UserDate, YN) ');
      ExcQry.SQL.Add('Values ('''+inttostr(SpinEdit1.Value)+''','''+FieldByName('ID').AsString+''',1,0,'''+FormatDatetime('YYYY/MM/DD',Plan_SDate)+''','''+FormatDatetime('YYYY/MM/DD',Plan_EDate)+''','+inttostr(Days)+','''+Memo+''','''+main.UserID+''',GetDate(),''1'') ');
      //FuncObj.WriteErrorLog(ExcQry.SQL.Text);
      //當年度
      if Yearof(Plan_SDate)=SpinEdit1.Value then  ExcQry.ExecSQL();
      //第二次
      for j:=2 to QTemp.FieldByName('HolidayTimes').Value do
      begin
         ExcQry.Active:=false;
         ExcQry.SQL.Clear;
         ExcQry.SQL.Add('Insert into Directory_LeaveRuler (FYear, ID, NO, IsAllow, Plan_SDate, Plan_EDate, Plan_Days, UserID, UserDate, YN) ');
         Plan_SDate:=Plan_EDate+IntervalDays;
         Plan_EDate:=Plan_SDate+(FieldByName('Days').Value-1);
         Days:=DaysBetween(Plan_SDate,Plan_EDate)+1;
         ExcQry.SQL.Add('Values ('''+inttostr(SpinEdit1.Value)+''','''+FieldByName('ID').AsString+''','+inttostr(j)+',0,'''+FormatDatetime('YYYY/MM/DD',Plan_SDate)+''','''+FormatDatetime('YYYY/MM/DD',Plan_EDate)+''','+inttostr(Days)+','''+main.UserID+''',GetDate(),''1'') ');
         //FuncObj.WriteErrorLog(ExcQry.SQL.Text);
         if Yearof(Plan_EDate)=SpinEdit1.Value then  ExcQry.ExecSQL();
      end;
      QTemp.Next;
    end;
    //
  end;
  Directory_LeaveRuler.Query1.Active:=false;
  Directory_LeaveRuler.Query1.Active:=true;
  Showmessage('Finish');
  Close;
  //

end;

procedure TDirectory_LeaveRuler_Cal.ED_ID1Change(Sender: TObject);
begin
 ShowIntervalDays();
end;

procedure TDirectory_LeaveRuler_Cal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDirectory_LeaveRuler_Cal.ShowIntervalDays();
begin
  if ED_ID1.Text<>'' then
  begin
    with QTemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Certificate.NID,Directory_Position.HolidayTimes,Directory_Position.IntervalDays  ');
      SQL.Add('from Certificate ');
      SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
      SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID ');
      SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID ');
      SQL.Add(' where Directory_Position.HolidayTimes is not null');
      SQL.Add(' and Certificate.ID = ''' + ED_ID1.Text + ''' ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      if RecordCount>0  then
      begin
        IntervalSpinEdit.Value:=FieldByName('IntervalDays').Value;
      end;
      Active:=false;
    end;
  end;
  //
end;


procedure TDirectory_LeaveRuler_Cal.FormCreate(Sender: TObject);
begin
  SpinEdit1.Value:=strtoint(Directory_LeaveRuler.FYearCombo.Text);
  SpinEdit2.Value:=strtoint(Directory_LeaveRuler.FYearCombo.Text);
  //
  DTP1.Date:=EncodeDate(strtoint(Directory_LeaveRuler.FYearCombo.Text), 1, 1);
  //第二分頁
  if Directory_LeaveRuler.Query1.Active=true then
  begin
    if Directory_LeaveRuler.Query1.RecordCount>0 then
       DTP2.Date:=Directory_LeaveRuler.Query1.FieldByName('DutyDate').Value
  end else
  begin
    DTP2.Date:=Date();
  end;
  //
  ED_ID.Text:=Directory_LeaveRuler.ED_ID.Text;
  ED_ID1.Text:=Directory_LeaveRuler.ED_ID.Text;
  //
  ShowIntervalDays();
  //
end;

procedure TDirectory_LeaveRuler_Cal.FormDestroy(Sender: TObject);
begin
  Directory_LeaveRuler_Cal:=nil;
end;

end.
