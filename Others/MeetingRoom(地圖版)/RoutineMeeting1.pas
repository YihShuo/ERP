unit RoutineMeeting1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DB, ADODB, DateUtils;

type
  TRoutineMeeting = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BoxWeekly: TGroupBox;
    Panel1: TPanel;
    RG1: TRadioGroup;
    Label10: TLabel;
    ED_WeeklyWeek: TEdit;
    BoxDaily: TGroupBox;
    ED_DailyDay: TEdit;
    CB_EveryCustomDay: TCheckBox;
    CB_EveryWeekDay: TCheckBox;
    BoxMonthly: TGroupBox;
    CB_DayOfMonth: TCheckBox;
    ED_MonthlyDay: TEdit;
    CB_CustomDayOfMonth: TCheckBox;
    BoxYearly: TGroupBox;
    ED_MonthlyMonth1: TEdit;
    CBox_Order1: TComboBox;
    CBox_Week1: TComboBox;
    ED_MonthlyMonth2: TEdit;
    Label11: TLabel;
    ED_Year: TEdit;
    CB_OnYearDate: TCheckBox;
    CB_OnTheCustomDate: TCheckBox;
    CBox_Month1: TComboBox;
    ED_Date: TEdit;
    CBox_Month2: TComboBox;
    CBox_Order2: TComboBox;
    CBox_Week2: TComboBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label12: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    ComboBox5: TComboBox;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    RG2: TRadioGroup;
    ADOQUpdate: TADOQuery;
    procedure RG1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CB_OnYearDateClick(Sender: TObject);
    procedure CB_OnTheCustomDateClick(Sender: TObject);
    procedure CB_DayOfMonthClick(Sender: TObject);
    procedure CB_CustomDayOfMonthClick(Sender: TObject);
    procedure CB_EveryCustomDayClick(Sender: TObject);
    procedure CB_EveryWeekDayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Room: string;
    { Private declarations }
  public
    PreviewSQL: TStrings;
    { Public declarations }
  end;

var
  RoutineMeeting: TRoutineMeeting;

implementation

uses
  MainMap1, BookingPreview1;

{$R *.dfm}

procedure TRoutineMeeting.FormCreate(Sender: TObject);
const
  WeekSetValue: array[0..6] of integer = (0, 2, 4, 6, 1, 3, 5);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT RoomName From MeetingRoom ORDER BY RoomName');
    Active := true;

    ComboBox5.Clear;
    while not Eof do
    begin
      ComboBox5.Items.Add(FieldByName('RoomName').AsString);
      Next;
    end;
    ComboBox5.ItemIndex := 0;
  end;

  Edit4.Text := MainMap1.UserName + '(' + MainMap1.UserID + ')';
  RG2.ItemIndex := WeekSetValue[DayOfWeek(Date)]-1;  
  ED_MonthlyDay.Text := FormatDateTime('d', Date);
  CBox_Month1.ItemIndex := StrToInt(FormatDateTime('M', Date))-1;
  CBox_Month2.ItemIndex := CBox_Month1.ItemIndex;
  ED_Date.Text := FormatDateTime('d', Date);
  DTP1.Date := Date;
  DTP2.Date := IncMonth(DTP1.Date);
  PreviewSQL := TStringList.Create;
  Mode := 'N';
end;
             
procedure TRoutineMeeting.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TRoutineMeeting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRoutineMeeting.FormDestroy(Sender: TObject);
begin
  RoutineMeeting := Nil;
end;
   
procedure TRoutineMeeting.RG1Click(Sender: TObject);
begin
  BoxDaily.Visible := false;
  BoxWeekly.Visible := false;
  BoxMonthly.Visible := false;
  BoxYearly.Visible := false;

  if (RG1.ItemIndex = 0) then
    BoxDaily.Visible := true
  else if (RG1.ItemIndex = 1) then
    BoxWeekly.Visible := true
  else if (RG1.ItemIndex = 2) then
    BoxMonthly.Visible := true
  else if (RG1.ItemIndex = 3) then
    BoxYearly.Visible := true;
end;

procedure TRoutineMeeting.CB_OnYearDateClick(Sender: TObject);
begin
  if (CB_OnYearDate.Checked) then
  begin
    CB_OnTheCustomDate.Checked := false;
    CBox_Month1.Enabled := true;
    ED_Date.Enabled := true;
    CBox_Month2.Enabled := false;
    CBox_Order2.Enabled := false;
    CBox_Week2.Enabled := false;
  end
  else begin
    CB_OnTheCustomDate.Checked := true;
    CBox_Month1.Enabled := false;
    ED_Date.Enabled := false;
    CBox_Month2.Enabled := true;
    CBox_Order2.Enabled := true;
    CBox_Week2.Enabled := true;
  end;
end;

procedure TRoutineMeeting.CB_OnTheCustomDateClick(Sender: TObject);
begin
  if (CB_OnTheCustomDate.Checked) then
  begin
    CB_OnYearDate.Checked := false;
    CBox_Month1.Enabled := false;
    ED_Date.Enabled := false;
    CBox_Month2.Enabled := true;
    CBox_Order2.Enabled := true;
    CBox_Week2.Enabled := true;
  end
  else begin
    CB_OnYearDate.Checked := true;
    CBox_Month1.Enabled := true;
    ED_Date.Enabled := true;
    CBox_Month2.Enabled := false;
    CBox_Order2.Enabled := false;
    CBox_Week2.Enabled := false;
  end;
end;

procedure TRoutineMeeting.CB_DayOfMonthClick(Sender: TObject);
begin
  if (CB_DayOfMonth.Checked) then
  begin
    CB_CustomDayOfMonth.Checked := false;
    ED_MonthlyDay.Enabled := true;
    ED_MonthlyMonth1.Enabled := true;
    CBox_Order1.Enabled := false;
    CBox_Week1.Enabled := false;
    ED_MonthlyMonth2.Enabled := false;
  end
  else begin
    CB_CustomDayOfMonth.Checked := true;
    ED_MonthlyDay.Enabled := false;
    ED_MonthlyMonth1.Enabled := false;
    CBox_Order1.Enabled := true;
    CBox_Week1.Enabled := true;
    ED_MonthlyMonth2.Enabled := true;
  end;
end;

procedure TRoutineMeeting.CB_CustomDayOfMonthClick(Sender: TObject);
begin
  if (CB_CustomDayOfMonth.Checked) then
  begin
    CB_DayOfMonth.Checked := false;   
    ED_MonthlyDay.Enabled := false;
    ED_MonthlyMonth1.Enabled := false;
    CBox_Order1.Enabled := true;
    CBox_Week1.Enabled := true;
    ED_MonthlyMonth2.Enabled := true;
  end
  else begin
    CB_DayOfMonth.Checked := true;
    ED_MonthlyDay.Enabled := true;
    ED_MonthlyMonth1.Enabled := true;
    CBox_Order1.Enabled := false;
    CBox_Week1.Enabled := false;
    ED_MonthlyMonth2.Enabled := false;
  end;
end;

procedure TRoutineMeeting.CB_EveryCustomDayClick(Sender: TObject);
begin
  if (CB_EveryCustomDay.Checked) then
  begin
    CB_EveryWeekDay.Checked := false;
    ED_DailyDay.Enabled := true;
  end
  else begin
    CB_EveryWeekDay.Checked := true;
    ED_DailyDay.Enabled := false;
  end;
end;

procedure TRoutineMeeting.CB_EveryWeekDayClick(Sender: TObject);
begin
  if (CB_EveryWeekDay.Checked) then
  begin
    CB_EveryCustomDay.Checked := false;
    ED_DailyDay.Enabled := false;
  end
  else begin
    CB_EveryCustomDay.Checked := true;
    ED_DailyDay.Enabled := true;
  end;
end;

procedure TRoutineMeeting.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TRoutineMeeting.Button1Click(Sender: TObject);
var
  Time: string;
  SMode: boolean;
const
  WeekValue: array[0..6] of string = ('0', '4', '1', '5', '2', '6', '3');
begin
  SMode := false;
  if (DTP1.Date > DTP2.Date) OR (DTP2.Date < Date) then
  begin
    MessageDlg('Please select a valid date', mtInformation, [mbOk], 0);
    Exit;
  end;

  if (ComboBox1.Text <> '') AND (ComboBox2.Text <> '') AND (ComboBox3.Text <> '') AND (ComboBox4.Text <> '') then
  begin
    if (StrToInt(ComboBox1.Text)*100+StrToInt(ComboBox2.Text) >= StrToInt(ComboBox3.Text)*100+StrToInt(ComboBox4.Text)) then
    begin
      MessageDlg('Please select a valid time', mtInformation, [mbOk], 0);
      Exit;
    end;
  end
  else begin
    MessageDlg('Please select booking time', mtInformation, [mbOk], 0);
    Exit;
  end;
  Time := ComboBox1.Text + ':' + ComboBox2.Text + '~' + ComboBox3.Text +':' + ComboBox4.Text;

  with ADOQUpdate do
  begin
    SQL.Clear;
    SQL.Add('DECLARE @StartDate DateTime');
    SQL.Add('DECLARE @EndDate DateTime');
    SQL.Add('SET @StartDate = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''');
    SQL.Add('SET @EndDate = ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''';');

    SQL.Add('WITH TEMPTAB(DATE) AS (');
    SQL.Add('  SELECT @StartDate');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS DATE FROM TEMPTAB');
    SQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= @EndDate');
    SQL.Add(')');

    SQL.Add('INSERT INTO MeetingRooms');
    SQL.Add('SELECT RoomName, UserDate, UserID, RoomDate, Topic, RoomTime, Participant FROM (');
    SQL.Add('  SELECT ''' + ComboBox5.Text + ''' AS RoomName, TEMPTAB.DATE AS RoomDate, REPLACE(CONVERT(VARCHAR, GETDATE(), 120), ''-'', ''/'') AS UserDate, ''' + MainMap1.UserID + ''' AS UserID,');
    SQL.Add('  ''' + Edit2.Text + ''' AS Topic, ''' + Time + ''' AS RoomTime, ''' + Edit3.Text + ''' AS Participant,');
    SQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5)) AS SDate,');
    SQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5)) AS EDate,');
    SQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) AS SDate_F,');
    SQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) AS EDate_F,');
    SQL.Add('  DATEPART(WEEKDAY, DATE)-1 AS Day, DATEDIFF(DAY, @StartDate, TEMPTAB.DATE) AS DayDiff, DATEDIFF(WEEK, @StartDate, TEMPTAB.DATE) AS Week,');
    SQL.Add('  CASE WHEN DATEPART(WEEKDAY, TEMPTAB.DATE)-1 < DATEPART(WEEKDAY, DATEADD(DAY, -DAY(TEMPTAB.DATE), TEMPTAB.DATE) + 1)-1');
    SQL.Add('  THEN DATEPART(WEEK, TEMPTAB.DATE) - DATEPART(WEEK, DATEADD(MONTH, DATEDIFF(MONTH, 0, TEMPTAB.DATE), 0))');
    SQL.Add('  ELSE DATEPART(WEEK, TEMPTAB.DATE) - DATEPART(WEEK, DATEADD(MONTH, DATEDIFF(MONTH, 0, TEMPTAB.DATE), 0)) + 1 END AS MonthWeek,');
    SQL.Add('  DATEDIFF(MONTH, @StartDate, DATE) AS Month, DATEDIFF(YEAR, @StartDate, DATE) AS Year FROM TEMPTAB');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT * FROM MeetingRooms WHERE RoomName = ''' + ComboBox5.Text + ''' AND RoomDate >= @StartDate');
    SQL.Add('  ) AS MeetingRooms ON MeetingRooms.RoomDate = TEMPTAB.DATE');
    SQL.Add('  AND (');
    SQL.Add('    CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) <= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    SQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) > CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    SQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) <= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    SQL.Add('  ) OR (');
    SQL.Add('    CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) >= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    SQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) < CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    SQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) > CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    SQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) <= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    SQL.Add('  ) OR (');
    SQL.Add('    CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) >= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    SQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) < CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    SQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) >= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    SQL.Add('  )');
    SQL.Add(') AS BookData');
    if (BoxWeekly.Visible) then
      SQL.Add('WHERE (Day = ' + WeekValue[RG2.ItemIndex] + ' AND Week % ' + ED_WeeklyWeek.Text + ' = 0 AND SDate_F IS NULL)')
    else if (BoxDaily.Visible) then
    begin
      if (CB_EveryCustomDay.Checked) then
        SQL.Add('WHERE (DayDiff % ' + ED_DailyDay.Text + ' = 0 AND SDate_F IS NULL)')
      else if (CB_EveryWeekDay.Checked) then
        SQL.Add('WHERE (Day <> 0 AND SDate_F IS NULL)');
    end
    else if (BoxMonthly.Visible) then
    begin
      if (CB_DayOfMonth.Checked) then
        SQL.Add('WHERE (DAY(RoomDate) = ' + ED_MonthlyDay.Text + ' AND Month % ' + ED_MonthlyMonth1.Text + ' = 0 AND SDate_F IS NULL)')
      else if (CB_CustomDayOfMonth.Checked) then
        SQL.Add('WHERE (Day = ' + IntToStr(CBox_Week1.ItemIndex) + ' AND MonthWeek = ' + IntToStr(CBox_Order1.ItemIndex + 1) + ' AND Month % ' + ED_MonthlyMonth2.Text + ' = 0 AND SDate_F IS NULL)');
    end
    else if (BoxYearly.Visible) then
    begin
      if (CB_OnYearDate.Checked) then
        SQL.Add('WHERE (Year % ' + ED_Year.Text + ' = 0 AND MONTH(RoomDate) = ' + IntToStr(CBox_Month1.ItemIndex+1) + ' AND DAY(RoomDate) = ' + ED_Date.Text + ' AND SDate_F IS NULL)')
      else if (CB_OnTheCustomDate.Checked) then
        SQL.Add('WHERE (Year % ' + ED_Year.Text + ' = 0 AND MONTH(RoomDate) = ' + IntToStr(CBox_Month1.ItemIndex+1) + ' AND Day = ' + IntToStr(CBox_Week2.ItemIndex) + ' AND MonthWeek = ' + IntToStr(CBox_Order2.ItemIndex + 1) + ' AND SDate_F IS NULL)');
    end;
    SQL.Add('OPTION (MaxRecursion 0)');

    PreviewSQL.Clear;
    PreviewSQL.Add('DECLARE @StartDate DateTime');
    PreviewSQL.Add('DECLARE @EndDate DateTime');
    PreviewSQL.Add('SET @StartDate = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''');
    PreviewSQL.Add('SET @EndDate = ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''';');

    PreviewSQL.Add('WITH TEMPTAB(DATE) AS (');
    PreviewSQL.Add('  SELECT @StartDate');
    PreviewSQL.Add('  UNION ALL');
    PreviewSQL.Add('  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS DATE FROM TEMPTAB');
    PreviewSQL.Add('  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= @EndDate');
    PreviewSQL.Add(')');

    PreviewSQL.Add('SELECT RoomName, UserDate, UserID, WeekDay, RoomDate, Topic, RoomTime, Participant, Status FROM (');
    PreviewSQL.Add('  SELECT ''' + ComboBox5.Text + ''' AS RoomName, TEMPTAB.DATE AS RoomDate, REPLACE(CONVERT(VARCHAR, GETDATE(), 120), ''-'', ''/'') AS UserDate, ''' + MainMap1.UserID + ''' AS UserID,');
    PreviewSQL.Add('  ''' + Edit2.Text + ''' AS Topic, ''' + Time + ''' AS RoomTime, ''' + Edit3.Text + ''' AS Participant,');
    PreviewSQL.Add('  CASE WHEN MeetingRooms.RoomName IS NULL THEN ''Valid Time'' ELSE ''Booked by ['' + MeetingRooms.UserID + ''] between ['' + MeetingRooms.RoomTime + '']'' END AS Status,');
    PreviewSQL.Add('  CASE DATEPART(WEEKDAY, DATE)-1 WHEN 0 THEN ''Sun'' WHEN 1 THEN ''Mon'' WHEN 2 THEN ''Tue'' WHEN 3 THEN ''Wed'' WHEN 4 THEN ''Thu'' WHEN 5 THEN ''Fri'' WHEN 6 THEN ''Sat'' END AS WeekDay,');
    PreviewSQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5)) AS SDate,');
    PreviewSQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5)) AS EDate,');
    PreviewSQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) AS SDate_F,');
    PreviewSQL.Add('  CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) AS EDate_F,');
    PreviewSQL.Add('  DATEPART(WEEKDAY, DATE)-1 AS Day, DATEDIFF(DAY, @StartDate, TEMPTAB.DATE) AS DayDiff, DATEDIFF(WEEK, @StartDate, TEMPTAB.DATE) AS Week,');
    PreviewSQL.Add('  CASE WHEN DATEPART(WEEKDAY, TEMPTAB.DATE)-1 < DATEPART(WEEKDAY, DATEADD(DAY, -DAY(TEMPTAB.DATE), TEMPTAB.DATE) + 1)-1');
    PreviewSQL.Add('  THEN DATEPART(WEEK, TEMPTAB.DATE) - DATEPART(WEEK, DATEADD(MONTH, DATEDIFF(MONTH, 0, TEMPTAB.DATE), 0))');
    PreviewSQL.Add('  ELSE DATEPART(WEEK, TEMPTAB.DATE) - DATEPART(WEEK, DATEADD(MONTH, DATEDIFF(MONTH, 0, TEMPTAB.DATE), 0)) + 1 END AS MonthWeek,');
    PreviewSQL.Add('  DATEDIFF(MONTH, @StartDate, DATE) AS Month, DATEDIFF(YEAR, @StartDate, DATE) AS Year FROM TEMPTAB');
    PreviewSQL.Add('  LEFT JOIN (');
    PreviewSQL.Add('    SELECT * FROM MeetingRooms WHERE RoomName = ''' + ComboBox5.Text + ''' AND RoomDate >= @StartDate');
    PreviewSQL.Add('  ) AS MeetingRooms ON MeetingRooms.RoomDate = TEMPTAB.DATE');
    PreviewSQL.Add('  AND (');
    PreviewSQL.Add('    CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) <= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    PreviewSQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) > CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    PreviewSQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) <= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    PreviewSQL.Add('  ) OR (');
    PreviewSQL.Add('    CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) >= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    PreviewSQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) < CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    PreviewSQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) > CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    PreviewSQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) <= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    PreviewSQL.Add('  ) OR (');
    PreviewSQL.Add('    CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) >= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 1, 5))');
    PreviewSQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 1, 5)) < CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    PreviewSQL.Add('    AND CONVERT(DATETIME, CONVERT(VARCHAR, MeetingRooms.RoomDate, 111) + '' '' + SUBSTRING(MeetingRooms.RoomTime, 7, 5)) >= CONVERT(DATETIME, CONVERT(VARCHAR, TEMPTAB.DATE, 111) + '' '' + SUBSTRING(''' + Time + ''', 7, 5))');
    PreviewSQL.Add('  )');
    PreviewSQL.Add(') AS BookData');
    if (BoxWeekly.Visible) then
      PreviewSQL.Add('WHERE (Day = ' + WeekValue[RG2.ItemIndex] + ' AND Week % ' + ED_WeeklyWeek.Text + ' = 0)')
    else if (BoxDaily.Visible) then
    begin
      if (CB_EveryCustomDay.Checked) then
        PreviewSQL.Add('WHERE (DayDiff % ' + ED_DailyDay.Text + ' = 0)')
      else if (CB_EveryWeekDay.Checked) then
        PreviewSQL.Add('WHERE (Day <> 0)');
    end
    else if (BoxMonthly.Visible) then
    begin
      if (CB_DayOfMonth.Checked) then
        PreviewSQL.Add('WHERE (DAY(RoomDate) = ' + ED_MonthlyDay.Text + ' AND Month % ' + ED_MonthlyMonth1.Text + ' = 0)')
      else if (CB_CustomDayOfMonth.Checked) then
        PreviewSQL.Add('WHERE (Day = ' + IntToStr(CBox_Week1.ItemIndex) + ' AND MonthWeek = ' + IntToStr(CBox_Order1.ItemIndex + 1) + ' AND Month % ' + ED_MonthlyMonth2.Text + ' = 0)');
    end
    else if (BoxYearly.Visible) then
    begin
      if (CB_OnYearDate.Checked) then
        PreviewSQL.Add('WHERE (Year % ' + ED_Year.Text + ' = 0 AND MONTH(RoomDate) = ' + IntToStr(CBox_Month1.ItemIndex+1) + ' AND DAY(RoomDate) = ' + ED_Date.Text + ')')
      else if (CB_OnTheCustomDate.Checked) then
        PreviewSQL.Add('WHERE (Year % ' + ED_Year.Text + ' = 0 AND MONTH(RoomDate) = ' + IntToStr(CBox_Month1.ItemIndex+1) + ' AND Day = ' + IntToStr(CBox_Week2.ItemIndex) + ' AND MonthWeek = ' + IntToStr(CBox_Order2.ItemIndex + 1) + ')');
    end;
    PreviewSQL.Add('OPTION (MaxRecursion 0)');

    BookingPreview := TBookingPreview.Create(Self);
    BookingPreview.LoadData(PreviewSQL, FormatDateTime('yyyy/MM/dd', DTP1.Date), FormatDateTime('yyyy/MM/dd', DTP2.Date));
    if (BookingPreview.ShowModal = mrOk) then
    begin
      ExecSQL;
      ShowMessage('Booking Successful');
      SMode := true;
    end
    else begin
      ShowMessage('Booking Cancelled');
    end;
    BookingPreview.Free;
    SQL.Clear;
    PreviewSQL.Clear;
  end;

  if (SMode) then Close;
end;

end.
