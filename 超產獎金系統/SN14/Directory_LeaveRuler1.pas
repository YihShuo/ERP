unit Directory_LeaveRuler1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.DBCtrls,
  MyADOUpdateSQL, DateUtils, MyADOQuery, Vcl.ComCtrls, Vcl.Menus, ComObj;

type
  TDirectory_LeaveRuler = class(TForm)
    DS1: TDataSource;
    QSearch: TADOQuery;
    TempQry: TADOQuery;
    DS2: TDataSource;
    Query1: TMyADOQuery;
    Query2: TMyADOQuery;
    Query1FYear: TStringField;
    Query1ID: TStringField;
    Query1HolidayTimes: TSmallintField;
    Query1SDate1: TDateTimeField;
    Query1SDate2: TDateTimeField;
    Query1SDate3: TDateTimeField;
    Query1SDate4: TDateTimeField;
    Query1SDate5: TDateTimeField;
    Query1SDate6: TDateTimeField;
    Query1SDate7: TDateTimeField;
    Query1SDate8: TDateTimeField;
    Query1Name: TStringField;
    Query2FYear: TStringField;
    Query2ID: TStringField;
    Query2NO: TSmallintField;
    Query2SDate: TDateTimeField;
    Query2YN: TStringField;
    Query2Plan_SDate: TDateTimeField;
    Query2Days: TIntegerField;
    Query2EDate: TDateTimeField;
    Query2LNO: TStringField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query1Nation: TWideStringField;
    Query1Position: TWideStringField;
    Query1Days: TSmallintField;
    Query1Plan_SDate1: TDateTimeField;
    Query1EDate1: TDateTimeField;
    Query1Plan_SDate2: TDateTimeField;
    Query1EDate2: TDateTimeField;
    Query1Plan_SDate3: TDateTimeField;
    Query1EDate3: TDateTimeField;
    Query1Plan_SDate4: TDateTimeField;
    Query1EDate4: TDateTimeField;
    Query1Plan_SDate5: TDateTimeField;
    Query1EDate5: TDateTimeField;
    Query1Plan_SDate6: TDateTimeField;
    Query1EDate6: TDateTimeField;
    Query1Plan_SDate7: TDateTimeField;
    Query1EDate7: TDateTimeField;
    Query1Plan_SDate8: TDateTimeField;
    Query1EDate8: TDateTimeField;
    Query1Sequence: TIntegerField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel6: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Button2: TButton;
    ED_ID: TEdit;
    ED_Name: TEdit;
    Button3: TButton;
    Button1: TButton;
    GroupBox2: TGroupBox;
    RB11: TRadioButton;
    RB12: TRadioButton;
    RB13: TRadioButton;
    Edit5: TEdit;
    Edit4: TEdit;
    FYearCombo: TComboBox;
    Query2Plan_EDate: TDateTimeField;
    Query2memo: TStringField;
    DBGridEh3: TDBGridEh;
    Query3: TMyADOQuery;
    DS3: TDataSource;
    Query3ID: TStringField;
    Query3Name: TWideStringField;
    Query3Nation: TWideStringField;
    Query3Position: TWideStringField;
    Query3City: TStringField;
    Query3Kilometer: TFloatField;
    PopupMenu3: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    U_Query3: TMyADOUpdateSQL;
    Query4: TMyADOQuery;
    DBGridEh4: TDBGridEh;
    DS4: TDataSource;
    PopupMenu4: TPopupMenu;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    U_Query4: TMyADOUpdateSQL;
    Query4PID: TStringField;
    Query4NID: TStringField;
    Query4Name: TWideStringField;
    Query4HolidayTimes: TSmallintField;
    Query4Days: TSmallintField;
    Query4UserID: TStringField;
    Query4UserDate: TDateTimeField;
    Query4YN: TStringField;
    Query4Nation: TWideStringField;
    Button4: TButton;
    Query1DutyDate: TDateTimeField;
    Query1EngName: TWideStringField;
    Query1Gender: TStringField;
    Query1Airtport: TStringField;
    Query1BirthPlace: TWideStringField;
    Query1Kilometer: TFloatField;
    Query1Kilometer2: TFloatField;
    Query1Department: TStringField;
    Query1Memo: TStringField;
    Query1TotHoliDays: TIntegerField;
    Query1HisHoliDays: TIntegerField;
    Query1RemHoliDays: TIntegerField;
    Query1Plan_EDate1: TDateTimeField;
    Query1PlanNumber1: TStringField;
    Query1HoliDays1: TIntegerField;
    Query1Days1: TIntegerField;
    Query1Memo1: TStringField;
    Query1Plan_EDate2: TDateTimeField;
    Query1PlanNumber2: TStringField;
    Query1HoliDays2: TIntegerField;
    Query1Days2: TIntegerField;
    Query1Memo2: TStringField;
    Query1Plan_EDate3: TDateTimeField;
    Query1PlanNumber3: TStringField;
    Query1HoliDays3: TIntegerField;
    Query1Days3: TIntegerField;
    Query1Memo3: TStringField;
    Query1Plan_EDate4: TDateTimeField;
    Query1PlanNumber4: TStringField;
    Query1HoliDays4: TIntegerField;
    Query1Days4: TIntegerField;
    Query1Memo4: TStringField;
    Query1Plan_EDate5: TDateTimeField;
    Query1PlanNumber5: TStringField;
    Query1HoliDays5: TIntegerField;
    Query1Days5: TIntegerField;
    Query1Memo5: TStringField;
    Query1Plan_EDate6: TDateTimeField;
    Query1PlanNumber6: TStringField;
    Query1HoliDays6: TIntegerField;
    Query1Days6: TIntegerField;
    Query1Memo6: TStringField;
    Query1Plan_EDate7: TDateTimeField;
    Query1PlanNumber7: TStringField;
    Query1HoliDays7: TIntegerField;
    Query1Days7: TIntegerField;
    Query1Memo7: TStringField;
    Query1Plan_EDate8: TDateTimeField;
    Query1PlanNumber8: TStringField;
    Query1HoliDays8: TIntegerField;
    Query1Days8: TIntegerField;
    Query1Memo8: TStringField;
    Query1ExtendDays1: TIntegerField;
    Query1ExtendDays2: TIntegerField;
    Query1ExtendDays3: TIntegerField;
    Query1ExtendDays4: TIntegerField;
    Query1ExtendDays5: TIntegerField;
    Query1ExtendDays6: TIntegerField;
    Query1ExtendDays7: TIntegerField;
    Query1ExtendDays8: TIntegerField;
    Query2IsAllow: TBooleanField;
    U_Query2: TMyADOUpdateSQL;
    Query4IntervalDays: TSmallintField;
    Insert2: TMenuItem;
    N1: TMenuItem;
    Delete2: TMenuItem;
    Query3BirthPlace: TWideStringField;
    Query3BirthProvince: TWideStringField;
    Query2Remark: TWideStringField;
    Query2Plan_Days: TIntegerField;
    Query2ExtendDays: TIntegerField;
    Splitter2: TSplitter;
    DBGridEh5: TDBGridEh;
    DS5: TDataSource;
    Query5: TMyADOQuery;
    Query5LNO: TStringField;
    Query5LB: TStringField;
    Query5RLTimes: TIntegerField;
    Query5Type: TStringField;
    Query5Days: TIntegerField;
    Query5StartDate: TDateTimeField;
    Query5EndDate: TDateTimeField;
    Button5: TButton;
    Query3Trafficfee: TFloatField;
    Query2TrafficfeeDate: TDateTimeField;
    Button6: TButton;
    Query3AirPort: TStringField;
    Query2RegularDays: TIntegerField;
    Query2Type: TStringField;
    Query2Remark1: TWideStringField;
    procedure Button2Click(Sender: TObject);
    procedure BB1_2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Query2NewRecord(DataSet: TDataSet);
    procedure BB5Click(Sender: TObject);
    procedure Query2SDateChange(Sender: TField);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure Save1Click(Sender: TObject);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure Modify2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Insert2Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Delete2Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ExportFormatExcel_TW();
    procedure ExportFormatExcel_CN();
    procedure CopytoClipBoard(Query:TADOQuery);
  public
    { Public declarations }
  end;

var
  Directory_LeaveRuler: TDirectory_LeaveRuler;

implementation

{$R *.dfm}

uses  DM1,main1, Directory_LeaveRuler_ID1, Directory_LeaveRuler_Cal1, Directory_LeaveTrafficfee1, Clipbrd, FunUnit;

procedure TDirectory_LeaveRuler.BB1_2Click(Sender: TObject);
begin
  Panel4.Visible := true;
end;

procedure TDirectory_LeaveRuler.BB2Click(Sender: TObject);
begin
    with Query2 do
    begin
      if (LockType <> ltBatchOptimistic) then
      begin
        Active := false;
        LockType := ltBatchOptimistic;
        Active := true;
      end;
      First;
      Insert;
      FieldByName('FYear').Value:=Query1.FieldByName('FYear').Value;
      FieldByName('ID').Value:=Query1.FieldByName('ID').Value;
    end;
    BB5.Enabled := true;
    BB6.Enabled := true;
end;

procedure TDirectory_LeaveRuler.BB3Click(Sender: TObject);
begin
  // sua
  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  DBGridEh1.ReadOnly := false;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDirectory_LeaveRuler.BB4Click(Sender: TObject);
begin
  if Query2.FieldByName('LNO').AsString<>'' then
  begin
    Showmessage('Already on Holiday, Don''t allow Delete');
    exit;
  end;
  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      //Edit;
    end;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;


procedure TDirectory_LeaveRuler.BB5Click(Sender: TObject);
var i: integer;
    No: integer;
begin
  try
  // Kiem tra lan nghi phep
    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select Max(NO) as maxNo from Directory_LeaveRuler where ID = '''+Query1.FieldByName('ID').AsString+''' and FYear= '''+Query1.FieldByName('Fyear').AsString+'''');
      Active := true;

      if (FieldByName('maxNo').value<>null) then
      begin
        No := FieldByName('maxNo').Value +1;
      end else
      begin
        No :=1;
      end;
    end;
    //
    Query2.First;
    for i := 0 to Query2.RecordCount-1 do
    begin
      case Query2.UpdateStatus of
        usInserted:
        begin
          if (Query2.FieldByName('ID').Value = '') then
          begin
            Query2.Delete;
          end else
          begin
            Query2.Edit;
            Query2.FieldByName('Plan_Days').Value:=Query2.FieldByName('Plan_EDate').Value-Query2.FieldByName('Plan_SDate').Value+1;
            Query2.FieldByName('UserID').AsString := main.UserID;
            Query2.FieldByName('YN').AsString := '1';
            U_Query2.Apply(ukInsert);
          end;
        end;
        usModified:
        begin
          if (Query2.FieldByName('YN').AsString = '0') then
          begin
            U_Query2.Apply(ukDelete);
          end else
          begin
            Query2.Edit;
            //202306與行政中心討論起訖不邦定限定
            //Query2.FieldByName('Plan_Days').Value:=Query2.FieldByName('Plan_EDate').Value-Query2.FieldByName('Plan_SDate').Value+1;
            Query2.FieldByName('UserID').AsString := main.UserID;
            Query2.FieldByName('YN').AsString := '1';
            U_Query2.Apply(ukModify);
          end;
        end;
      end;
      Query2.Next;
    end;

    Query2.Active := false;
    Query2.LockType := ltReadOnly;
    Query2.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    //Button2Click(Nil);
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TDirectory_LeaveRuler.BB6Click(Sender: TObject);
begin
  // huy
  with Query2 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TDirectory_LeaveRuler.Button1Click(Sender: TObject);
begin
  Directory_LeaveRuler_Cal:=TDirectory_LeaveRuler_Cal.Create(self);
  Directory_LeaveRuler_Cal.Show;
end;

procedure TDirectory_LeaveRuler.Button2Click(Sender: TObject);
var i:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
    Query2.Active:=false;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+''') as FYear,Certificate.ID,Directory_Nationality.Name as Nation, Certificate.DutyDate, Certificate.Name, Certificate.EngName, Certificate.Gender, Directory.Airport, Certificate.BirthPlace,');
      SQL.Add('       Directory.Kilometer,Directory.Kilometer*2 as Kilometer2,Directory_Factory.Name+''-''+Directory_Department.Name as Department,');
      SQL.Add('       Directory_Position.Name as Position,'''' as Memo, ');
      SQL.Add('	      Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Directory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end as HolidayTimes, Directory_Position.Days as Days,');
      SQL.Add('       Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Directory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end * Directory_Position.Days as TotHoliDays,IsNull(Directory_LeaveRuler_All.HisDays,0) as  HisHoliDays,');
      SQL.Add('	      (Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Directory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end * Directory_Position.Days)-IsNull(Directory_LeaveRuler_All.HisDays,0) as RemHoliDays ');
      //
      for i:=1 to 8 do
      begin
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Plan_SDate end) as Plan_SDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Plan_EDate end) as Plan_EDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then SDate end) as SDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then EDate end) as EDate'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Case When Directory_LeaveRuler.Type=''返國休假'' then GoPlaneNumber+''/''+BackPlaneNumber else Directory_LeaveRuler.Type end  end)  as PlanNumber'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then HoliDays end)  as HoliDays'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.Days end)  as Days'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.ExtendDays end)  as ExtendDays'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.memo end)  as Memo'+inttostr(i));
      end;
      //
      SQL.Add('	   ,Directory.Sequence');
      SQL.Add('from Certificate ');
      SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
      SQL.Add(' left join (');
      SQL.Add('  Select IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+''') as FYear,Directory_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_SDate,Directory_LeaveRuler.Plan_EDate,Min(Directory_LeaveRuler.SDate) as SDate,');
      SQL.Add('         Max(Directory_LeaveRuler.EDate) as EDate,Max(WF_RegularLeave.GoPlaneNumber) as GoPlaneNumber,Max(WF_RegularLeave.BackPlaneNumber) as BackPlaneNumber,');
      SQL.Add('         Sum(WF_RegularLeave.Days)  as HoliDays,Sum(WF_RegularLeave.Days)-Sum(IsNull(WF_RegularLeave.ExtendDays,0)) as Days,');
      SQL.Add('         Min(WF_RegularLeave.ExtendStartDate) as ExtendStartDate,Max(WF_RegularLeave.ExtendEndDate) as ExtendEndDate,Sum(WF_RegularLeave.ExtendDays) as ExtendDays, ');
      SQL.Add('         Max(Directory_LeaveRuler.memo) as Memo,Max(Directory_LeaveRuler.LNO) as LNO,Max(WF_RegularLeave.Type) as Type');
      SQL.Add('  from  Directory_LeaveRuler ');
      SQL.Add('  Left join [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave on WF_RegularLeave.FYear=Directory_LeaveRuler.FYear and WF_RegularLeave.ID=Directory_LeaveRuler.ID and WF_RegularLeave.RLTimes=Directory_LeaveRuler.NO and WF_RegularLeave.flowflag=''Z''');
      SQL.Add('  Group by  IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Directory_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_SDate,Directory_LeaveRuler.Plan_EDate,Directory_LeaveRuler.Plan_Days ');
      SQL.Add('  ) Directory_LeaveRuler on Directory_LeaveRuler.ID = Directory.ID  and Directory_LeaveRuler.FYear='''+FYearCombo.Text+''' ');
      SQL.Add(' Left join (');
      SQL.Add('   Select IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+''') as FYear,ID, Sum( DATEDIFF(day,SDate,EDate)+1)-Sum(IsNull(ExtendDays,0)) as HisDays');
      SQL.Add('   from Directory_LeaveRuler ');
      SQL.Add('   where SDate is not null and EDate is not null');
      SQL.Add('   Group by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),ID');
      SQL.Add(' ) Directory_LeaveRuler_All on Directory_LeaveRuler_All.ID=Certificate.ID and Directory_LeaveRuler_All.FYear='''+FYearCombo.Text+''' ');
      SQL.Add(' Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
      SQL.Add(' Left join Directory_Department on Directory_Department.DID=Directory.DID');
      SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
      SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
      SQL.Add('Where Certificate.NID<>''VN'' and IsNull(Certificate.Resigned,0)=0');
      if ED_ID.Text <> '' then
        SQL.Add('and Directory.ID = ''' + ED_ID.Text + ''' ');
      if ED_Name.Text<>'' then
        SQL.Add(' and Certificate.Name like '''+ED_Name.Text+'%'' ');
      if Edit4.Text<>'' then
        SQL.Add(' and Directory_Department.Name like '''+Edit4.Text+'%'' ');
      if Edit5.Text<>'' then
        SQL.Add(' and Directory_Position.Name like '''+Edit5.Text+'%'' ');
      //國籍
      if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
      if RB13.Checked=true then  SQL.Add(' and Certificate.NID in (''CN'',''PH'',''NIN'') ');
      SQL.Add('Group by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Certificate.ID,Directory_Nationality.Name ,Certificate.DutyDate, Certificate.Name, Certificate.EngName, Certificate.Gender, Directory.Airport, ');
      SQL.Add('     Certificate.BirthPlace, Directory.Kilometer,Directory_Factory.Name, Directory_Department.Name ');
      SQL.Add('         ,Directory_Position.Name');
      SQL.Add('	     ,Directory_Position.HolidayTimes,Directory_Position.Days,Directory_LeaveRuler_All.HisDays');
      SQL.Add('         ,Directory.Sequence');
      SQL.Add('order by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Directory.Sequence');
      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
    end;
    Query2.Active := true;

  end;
  //
  if PC1.ActivePageIndex=1 then
  begin
    with Query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Directory.ID,Certificate.Name,Directory_Nationality.Name as Nation,Directory_Position.Name as Position,Certificate.BirthPlace,Certificate.BirthProvince,Directory.City,Directory.Airport,Directory.Kilometer,Directory.Trafficfee ');
      SQL.Add('from Certificate ');
      SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
      SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
      SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
      SQL.Add('Where Certificate.NID<>''VN'' and IsNull(Certificate.Resigned,0)=0 ');
      if ED_ID.Text <> '' then
        SQL.Add('and Directory.ID = ''' + ED_ID.Text + ''' ');
      if ED_Name.Text<>'' then
        SQL.Add(' and Certificate.Name like '''+ED_Name.Text+'%'' ');
      if Edit4.Text<>'' then
        SQL.Add(' and Directory_Department.Name like '''+Edit4.Text+'%'' ');
      if Edit5.Text<>'' then
        SQL.Add(' and Directory_Position.Name like '''+Edit5.Text+'%'' ');
      //國籍
      if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
      if RB13.Checked=true then  SQL.Add(' and Certificate.NID in (''CN'',''PH'',''NIN'') ');
      SQL.Add('order by Directory.Sequence');
      Active:=true;
    end;
    if RB12.Checked=true then DBGridEh3.Columns[9].Title.Caption:='Traffice Fee|補助交通費(台幣)';
    if RB13.Checked=true then DBGridEh3.Columns[9].Title.Caption:='Traffice Fee|補助交通費(美金)';
  end;
  if PC1.ActivePageIndex=2 then
  begin
    with Query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Directory_Position.*,Directory_Nationality.Name as Nation ');
      SQL.Add('from Directory_Position');
      SQL.Add('left join Directory_Nationality on Directory_Nationality.NID=Directory_Position.NID');
      SQL.Add('where Directory_Position.NID<>''VN''');
      //國籍
      if RB12.Checked=true then  SQL.Add(' and Directory_Position.NID=''TW'' ');
      if RB13.Checked=true then  SQL.Add(' and Directory_Nationality.NID in (''CN'',''PH'',''NIN'') ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
  //
end;

//
procedure TDirectory_LeaveRuler.Button3Click(Sender: TObject);
begin
  Directory_LeaveRuler_ID := TDirectory_LeaveRuler_ID.Create(Self);
  Directory_LeaveRuler_ID.Show;
end;
//
procedure TDirectory_LeaveRuler.Button4Click(Sender: TObject);
begin
  ExportFormatExcel_TW();//台籍
end;
procedure TDirectory_LeaveRuler.Button5Click(Sender: TObject);
begin
  ExportFormatExcel_CN();//陸籍
end;

procedure TDirectory_LeaveRuler.Button6Click(Sender: TObject);
begin
  Directory_LeaveTrafficfee:=TDirectory_LeaveTrafficfee.Create(self);
  Directory_LeaveTrafficfee.Show;
end;

//陸籍輸出Excel
procedure TDirectory_LeaveRuler.ExportFormatExcel_CN();
  //
  procedure OpenExcelSQL(HoliDayTimes:integer);
  var i:integer;
  begin
    //副理以下
    with TempQry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select ROW_NUMBER() over (ORDER BY Directory.Sequence asc) as NO,Certificate.DutyDate,  Certificate.Name, Certificate.EngName, Directory_Nationality.Name as Nation,');
      SQL.Add('       Directory_Factory.Name as Factory,Directory_Department.Name as Department,Directory_Position.Name as Position,'''' as Memo, ');
      SQL.Add('       Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Directory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end * Directory_Position.Days as TotHoliDays,IsNull(Directory_LeaveRuler_All.HisDays,0) as  HisHoliDays,');
      SQL.Add('	      (Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Directory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end * Directory_Position.Days)-IsNull(Directory_LeaveRuler_All.HisDays,0) as RemHoliDays ');
      //
      for i:=1 to HoliDayTimes do
      begin
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Plan_SDate end) as Plan_SDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Plan_EDate end) as Plan_EDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then SDate end) as SDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then EDate end) as EDate'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.Type end)  as Type'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.Plan_Days end) as PlanDays'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then HoliDays end)  as HoliDays'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.Days end)  as Days'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.ExtendDays end)  as ExtendDays'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.TrafficFeeDate end) as TrafficFeeDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Case when Directory_LeaveRuler.TrafficFeeDate is not null then Directory.Trafficfee else null end else null end) as TrafficFee'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.memo end)  as Memo'+inttostr(i));
      end;
      //
      SQL.Add('from Certificate ');
      SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
      SQL.Add(' left join (');
      SQL.Add('  Select IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+''') as FYear,Directory_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_SDate,Directory_LeaveRuler.Plan_EDate,Min(Directory_LeaveRuler.SDate) as SDate,');
      SQL.Add('         Max(Directory_LeaveRuler.EDate) as EDate,Max(WF_RegularLeave.GoPlaneNumber) as GoPlaneNumber,Max(WF_RegularLeave.BackPlaneNumber) as BackPlaneNumber, ');
      SQL.Add('         Sum(WF_RegularLeave.Days)  as HoliDays, Sum(WF_RegularLeave.Days)-Sum(IsNull(WF_RegularLeave.ExtendDays,0)) as Days,Directory_LeaveRuler.Plan_Days,Max(WF_RegularLeave.Type) as Type,Directory_LeaveRuler.TrafficfeeDate,');
      SQL.Add('         Min(WF_RegularLeave.ExtendStartDate) as ExtendStartDate,Max(WF_RegularLeave.ExtendEndDate) as ExtendEndDate,Sum(WF_RegularLeave.ExtendDays) as ExtendDays, ');
      SQL.Add('         Max(Directory_LeaveRuler.memo) as Memo,Max(Directory_LeaveRuler.LNO) as LNO');
      SQL.Add('  from  Directory_LeaveRuler ');
      SQL.Add('  Left join [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave on WF_RegularLeave.FYear=Directory_LeaveRuler.FYear and WF_RegularLeave.ID=Directory_LeaveRuler.ID and WF_RegularLeave.RLTimes=Directory_LeaveRuler.NO and WF_RegularLeave.flowflag=''Z''');
      SQL.Add('  Group by  IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Directory_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_SDate,Directory_LeaveRuler.Plan_EDate,Directory_LeaveRuler.Plan_Days,Directory_LeaveRuler.TrafficfeeDate ');
      SQL.Add('  ) Directory_LeaveRuler on Directory_LeaveRuler.ID = Directory.ID  and Directory_LeaveRuler.FYear='''+FYearCombo.Text+''' ');
      SQL.Add(' Left join (');
      SQL.Add('   Select IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+''') as FYear,ID, Sum( DATEDIFF(day,SDate,EDate)+1)-Sum(IsNull(ExtendDays,0)) as HisDays');
      SQL.Add('   from Directory_LeaveRuler ');
      SQL.Add('   where SDate is not null and EDate is not null');
      SQL.Add('   Group by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),ID');
      SQL.Add(' ) Directory_LeaveRuler_All on Directory_LeaveRuler_All.ID=Certificate.ID and Directory_LeaveRuler_All.FYear='''+FYearCombo.Text+''' ');
      SQL.Add(' Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
      SQL.Add(' Left join Directory_Department on Directory_Department.DID=Directory.DID');
      SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
      SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
      SQL.Add('Where Certificate.NID<>''VN'' and IsNull(Certificate.Resigned,0)=0');
      SQL.Add(' and Directory_Position.HolidayTimes='+inttostr(HoliDayTimes));
      //國籍
      SQL.Add(' and Certificate.NID in (''CN'',''PH'',''NIN'') ');
      SQL.Add('Group by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Certificate.ID,Directory_Nationality.Name ,Certificate.DutyDate, Certificate.Name, Certificate.EngName ');
      SQL.Add('      ,Directory_Factory.Name, Directory_Department.Name ');
      SQL.Add('      ,Directory_Position.Name');
      SQL.Add('	     ,Directory_Position.HolidayTimes,Directory_Position.Days,Directory_LeaveRuler_All.HisDays,Directory_Position.Days');
      SQL.Add('      ,Directory.Sequence');
      SQL.Add('order by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Directory.Sequence');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  offset,i, j: integer;
begin
  //
  try
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.DisplayAlerts := False;
    //WorkBook := ExcelApp.Workbooks.Add;
  except
    Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN14_CN.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN14_CN.xlsx'),false);
  if FileExists(AppDir+'Additional\ProductionBonus_SN14_CN.xlsx') then
  begin
   try
      ExcelApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN14_CN.xlsx');
      //休假3次
      OpenExcelSQL(3);
      if TempQry.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[1].Activate;
        ExcelApp.Cells(1, 1) := FYearCombo.Text+'<億春>';
        TempQry.First;
        offset := 6;
        //Excel 2016 很慢改複製貼上
        offset:=offset+TempQry.Fields.Count-1;
        CopytoClipBoard(TempQry);
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,48]].PasteSpecial;
        {
        //Excel 2016 很慢
        while not TempQry.Eof do
        begin
          for i:=0 to TempQry.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := TempQry.Fields[i].AsString;
          end;
          TempQry.Next;
          Inc(offset);
        end;
        }
        //
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,48]].Borders[1].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,48]].Borders[2].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,48]].Borders[3].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,48]].Borders[4].LineStyle := 1;
      end;
      //休假4次
      OpenExcelSQL(4);
      if TempQry.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[2].Activate;
        ExcelApp.Cells(1, 1) := FYearCombo.Text+'<億春>';
        TempQry.First;
        offset := 6;
        //Excel 2016 很慢改複製貼上
        offset:=offset+TempQry.Fields.Count-1;
        CopytoClipBoard(TempQry);
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,60]].PasteSpecial;
        {
        //Excel 2016 很慢
        while not TempQry.Eof do
        begin
          for i:=0 to TempQry.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := TempQry.Fields[i].AsString;
          end;
          TempQry.Next;
          Inc(offset);
        end;
        }
        //
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,60]].Borders[1].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,60]].Borders[2].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,60]].Borders[3].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,60]].Borders[4].LineStyle := 1;
      end;
      //休假7次
      OpenExcelSQL(7);
      if TempQry.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[3].Activate;
        ExcelApp.Cells(1, 1) := FYearCombo.Text+'<億春>';
        TempQry.First;
        offset := 6;
        //Excel 2016 很慢改複製貼上
        offset:=offset+TempQry.Fields.Count-1;
        CopytoClipBoard(TempQry);
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,96]].PasteSpecial;
        {
        //Excel 2016 很慢
        while not TempQry.Eof do
        begin
          for i:=0 to TempQry.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := TempQry.Fields[i].AsString;
          end;
          TempQry.Next;
          Inc(offset);
        end;
        }
        //
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,96]].Borders[1].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,96]].Borders[2].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,96]].Borders[3].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,96]].Borders[4].LineStyle := 1;
      end;
      //休假8次
      OpenExcelSQL(8);
      if TempQry.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[4].Activate;
        ExcelApp.Cells(1, 1) := FYearCombo.Text+'<億春>';
        TempQry.First;
        offset := 6;
        //Excel 2016 很慢改複製貼上
        offset:=offset+TempQry.Fields.Count-1;
        CopytoClipBoard(TempQry);
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,108]].PasteSpecial;
        {
        //Excel 2016 很慢
        while not TempQry.Eof do
        begin
          for i:=0 to TempQry.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := TempQry.Fields[i].AsString;
          end;
          TempQry.Next;
          Inc(offset);
        end;   .
        }
        //
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,108]].Borders[1].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,108]].Borders[2].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,108]].Borders[3].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,108]].Borders[4].LineStyle := 1;
      end;
      //
      TempQry.Active:=false;
      ExcelApp.WorkSheets[1].Activate;
      Showmessage('Succeed.');
      ExcelApp.Visible:=True;
    except on ex: Exception do
      ShowMessage(ex.Message);
    end;
  end;
  //
end;
//剪貼簿複製
procedure TDirectory_LeaveRuler.CopytoClipBoard(Query:TADOQuery);
var i,j:integer;
  tempList:TStringlist;
  str:string;
begin
  if Query.Active=false then Exit;
  tempList:=TStringlist.Create;
  Query.First;
  //
  for i:=0 to Query.RecordCount-1 do
  begin
     str:='';
     for J:=0 to Query.FieldCount-1 do
     begin
       str:=str+Query.Fields[j].AsString+char(9);
     end;
     tempList.Add(str);
     Query.Next;
  end;
  ClipBoard.AsText:=tempList.Text;
  tempList.Free;
end;
//台籍輸出Excel
procedure TDirectory_LeaveRuler.ExportFormatExcel_TW();
  //
  procedure OpenExcelSQL(HoliDayTimes:integer);
  var i:integer;
  begin
    //副理以下
    with TempQry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select ROW_NUMBER() over (ORDER BY Directory.Sequence asc) as NO,Certificate.DutyDate,  Certificate.Name, Certificate.EngName, Certificate.Gender, Directory.City, Certificate.BirthProvince,');
      SQL.Add('       Directory.Kilometer,Directory.Kilometer*2 as Kilometer2,Directory_Factory.Name+''-''+Directory_Department.Name as Department,Directory_Position.Name as Position,'''' as Memo, ');
      SQL.Add('       Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Directory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end * Directory_Position.Days as TotHoliDays,IsNull(Directory_LeaveRuler_All.HisDays,0) as  HisHoliDays,');
      SQL.Add('	      (Case when Count(Directory_LeaveRuler.NO)>0 then  Count(Directory_LeaveRuler.NO) else Directory_Position.HolidayTimes  end * Directory_Position.Days)-IsNull(Directory_LeaveRuler_All.HisDays,0) as RemHoliDays ');
      //
      for i:=1 to HoliDayTimes do
      begin
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Plan_SDate end) as Plan_SDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Plan_EDate end) as Plan_EDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then SDate end) as SDate'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then EDate end) as EDate'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Case When Directory_LeaveRuler.Type=''返國休假'' then GoPlaneNumber+''/''+BackPlaneNumber else Directory_LeaveRuler.Type end  end)  as PlanNumber'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then HoliDays end)  as HoliDays'+inttostr(i));
      SQL.Add('    ,Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.Days end)  as Days'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.ExtendDays end)  as ExtendDays'+inttostr(i)+',Max(CASE WHEN No='+inttostr(i)+' then Directory_LeaveRuler.memo end)  as Memo'+inttostr(i));
      end;
      //
      SQL.Add('from Certificate ');
      SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
      SQL.Add(' left join (');
      SQL.Add('  Select IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+''') as FYear,Directory_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_SDate,Directory_LeaveRuler.Plan_EDate,Min(Directory_LeaveRuler.SDate) as SDate,');
      SQL.Add('         Max(Directory_LeaveRuler.EDate) as EDate,Max(WF_RegularLeave.GoPlaneNumber) as GoPlaneNumber,Max(WF_RegularLeave.BackPlaneNumber) as BackPlaneNumber, ');
      SQL.Add('         Sum(WF_RegularLeave.Days) as HoliDays, Sum(WF_RegularLeave.Days)-Sum(IsNull(WF_RegularLeave.ExtendDays,0))  as Days,Max(WF_RegularLeave.Type) as Type,');
      SQL.Add('         Min(WF_RegularLeave.ExtendStartDate) as ExtendStartDate,Max(WF_RegularLeave.ExtendEndDate) as ExtendEndDate,Sum(WF_RegularLeave.ExtendDays) as ExtendDays, ');
      SQL.Add('         Max(Directory_LeaveRuler.memo) as Memo,Max(Directory_LeaveRuler.LNO) as LNO');
      SQL.Add('  from  Directory_LeaveRuler ');
      SQL.Add('  Left join [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave on WF_RegularLeave.FYear=Directory_LeaveRuler.FYear and WF_RegularLeave.ID=Directory_LeaveRuler.ID and WF_RegularLeave.RLTimes=Directory_LeaveRuler.NO and WF_RegularLeave.flowflag=''Z''');
      SQL.Add('  Group by  IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Directory_LeaveRuler.ID,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_SDate,Directory_LeaveRuler.Plan_EDate,Directory_LeaveRuler.Plan_Days ');
      SQL.Add('  ) Directory_LeaveRuler on Directory_LeaveRuler.ID = Directory.ID  and Directory_LeaveRuler.FYear='''+FYearCombo.Text+''' ');
      SQL.Add(' Left join (');
      SQL.Add('   Select IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+''') as FYear,ID, Sum( DATEDIFF(day,SDate,EDate)+1)-Sum(IsNull(ExtendDays,0)) as HisDays');
      SQL.Add('   from Directory_LeaveRuler ');
      SQL.Add('   where SDate is not null and EDate is not null');
      SQL.Add('   Group by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),ID');
      SQL.Add(' ) Directory_LeaveRuler_All on Directory_LeaveRuler_All.ID=Certificate.ID and Directory_LeaveRuler_All.FYear='''+FYearCombo.Text+''' ');
      SQL.Add(' Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
      SQL.Add(' Left join Directory_Department on Directory_Department.DID=Directory.DID');
      SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
      SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
      SQL.Add('Where Certificate.NID<>''VN'' and IsNull(Certificate.Resigned,0)=0');
      SQL.Add(' and Directory_Position.HolidayTimes='+inttostr(HoliDayTimes));
      //國籍
      SQL.Add(' and Certificate.NID=''TW'' ');
      SQL.Add('Group by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Certificate.ID,Directory_Nationality.Name ,Certificate.DutyDate, Certificate.Name, Certificate.EngName, Certificate.Gender, Directory.City, ');
      SQL.Add('     Certificate.BirthProvince, Directory.Kilometer,Directory_Factory.Name, Directory_Department.Name ');
      SQL.Add('     ,Directory_Position.Name');
      SQL.Add('	    ,Directory_Position.HolidayTimes,Directory_Position.Days,Directory_LeaveRuler_All.HisDays');
      SQL.Add('     ,Directory.Sequence');
      SQL.Add('order by IsNull(Directory_LeaveRuler.FYear, '''+FYearCombo.Text+'''),Directory.Sequence');
      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
      Active:=true;
    end;
  end;

var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  offset,i, j: integer;
begin
  //
  try
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.DisplayAlerts := False;
    //WorkBook := ExcelApp.Workbooks.Add;
  except
    Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN14.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN14.xlsx'),false);
  if FileExists(AppDir+'Additional\ProductionBonus_SN14.xlsx') then
  begin
   try
      ExcelApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN14.xlsx');
      //休假6次
      OpenExcelSQL(6);
      if TempQry.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[2].Activate;
        ExcelApp.Cells(1, 1) := FYearCombo.Text+'<億春>';
        TempQry.First;
        offset := 6;
        //Excel 2016 很慢改複製貼上
        offset:=offset+TempQry.Fields.Count-1;
        CopytoClipBoard(TempQry);
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,69]].PasteSpecial;
        {
        //Excel 2016 很慢
        while not TempQry.Eof do
        begin
          for i:=0 to TempQry.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := TempQry.Fields[i].AsString;
          end;
          TempQry.Next;
          Inc(offset);
        end;
        }
        //
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,69]].Borders[1].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,69]].Borders[2].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,69]].Borders[3].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,69]].Borders[4].LineStyle := 1;
      end;
      //休假7次
      OpenExcelSQL(7);
      if TempQry.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[3].Activate;
        ExcelApp.Cells(1, 1) := FYearCombo.Text+'<億春>';
        TempQry.First;
        offset := 6;
        //Excel 2016 很慢改複製貼上
        offset:=offset+TempQry.Fields.Count-1;
        CopytoClipBoard(TempQry);
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,78]].PasteSpecial;
        {
        //Excel 2016 很慢
        while not TempQry.Eof do
        begin
          for i:=0 to TempQry.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := TempQry.Fields[i].AsString;
          end;
          TempQry.Next;
          Inc(offset);
        end;
        }
        //
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,78]].Borders[1].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,78]].Borders[2].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,78]].Borders[3].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,78]].Borders[4].LineStyle := 1;
      end;
      //休假8次
      OpenExcelSQL(8);
      if TempQry.RecordCount>0 then
      begin
        ExcelApp.WorkSheets[4].Activate;
        ExcelApp.Cells(1, 1) := FYearCombo.Text+'<億春>';
        TempQry.First;
        offset := 6;
        //Excel 2016 很慢改複製貼上
        offset:=offset+TempQry.Fields.Count-1;
        CopytoClipBoard(TempQry);
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,87]].PasteSpecial;
        {
        //Excel 2016 很慢
        while not TempQry.Eof do
        begin
          for i:=0 to TempQry.Fields.Count-1 do
          begin
              ExcelApp.Cells(offset, i+1) := TempQry.Fields[i].AsString;
          end;
          TempQry.Next;
          Inc(offset);
        end;
        }
        //
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,87]].Borders[1].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,87]].Borders[2].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,87]].Borders[3].LineStyle := 1;
        ExcelApp.Range[ExcelApp.Cells[6, 1], ExcelApp.Cells[offset-1,87]].Borders[4].LineStyle := 1;
      end;
      //
      ExcelApp.WorkSheets[2].Activate;
      TempQry.Active:=false;
      Showmessage('Succeed.');
      ExcelApp.Visible:=True;
    except on ex: Exception do
      ShowMessage(ex.Message);
    end;
  end;
  //
end;
//
procedure TDirectory_LeaveRuler.Cancel1Click(Sender: TObject);
begin
  with Query3 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  Save1.Enabled := false;
  Cancel1.Enabled := false;
end;

procedure TDirectory_LeaveRuler.Cancel2Click(Sender: TObject);
begin
  with Query4 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  Save2.Enabled := false;
  Cancel2.Enabled := false;
end;

procedure TDirectory_LeaveRuler.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Plan_SDate1').AsString='' then
  begin
    DBGridEh1.canvas.font.color:=clblue;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TDirectory_LeaveRuler.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query2.FieldByName('YN').Value=0 then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TDirectory_LeaveRuler.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query4.FieldByName('YN').AsString = '0') then
    DBGridEh4.Canvas.Font.Color := clRed;
end;

procedure TDirectory_LeaveRuler.Delete2Click(Sender: TObject);
begin
  if (Date()-Query4.FieldByName('UserDate').Value)>1 then
  begin
    Showmessage('日期超過一天，不能刪除');
    Exit;
  end;
  with Query4 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  Save2.Enabled := true;
  Cancel2.Enabled := true;
end;

procedure TDirectory_LeaveRuler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDirectory_LeaveRuler.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TDirectory_LeaveRuler.FormDestroy(Sender: TObject);
begin
  Directory_LeaveRuler := Nil;
end;


procedure TDirectory_LeaveRuler.Insert2Click(Sender: TObject);
begin
  with Query4 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    First;
    Insert;
  end;
  Save2.Enabled := true;
  Cancel2.Enabled := true;
end;

procedure TDirectory_LeaveRuler.Modify1Click(Sender: TObject);
begin
  with Query3 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TDirectory_LeaveRuler.Modify2Click(Sender: TObject);
begin
  with Query4 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  Save2.Enabled := true;
  Cancel2.Enabled := true;
end;

procedure TDirectory_LeaveRuler.Query1AfterScroll(DataSet: TDataSet);
begin
  //TADOQuery  bug 只能這樣用右邊才會顯示加總
  DBGridEh2.SumList.Active:=false;
  DBGridEh2.SumList.Active:=true;
end;

procedure TDirectory_LeaveRuler.Query2AfterOpen(DataSet: TDataSet);
begin
  Query2.AfterOpenRecNo(DataSet);
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  //
  Query5.Active:=true;
end;

procedure TDirectory_LeaveRuler.Query2NewRecord(DataSet: TDataSet);
begin
  Query2.FieldByName('YN').Value :=1;
  Query2.FieldByName('ID').Value := ED_ID.Text;
  Query2.FieldByName('FYear').Value := YearOf(Now);
  // Kiem tra lan nghi phep
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select Max(NO) as maxNo from Directory_LeaveRuler where ID = '''+Query1.FieldByName('ID').AsString+''' and FYear= '''+Query1.FieldByName('Fyear').AsString+'''');
    Active := true;

    if (FieldByName('maxNo').value<>null) then
    begin
      Query2.FieldByName('No').Value := FieldByName('maxNo').Value +1;
    end else
    begin
      Query2.FieldByName('No').Value :=1;
    end;
  end;
end;

procedure TDirectory_LeaveRuler.Query2SDateChange(Sender: TField);
begin
// Kiem tra ngay nhap vao co bi trung ko
    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select count(FYear) as count from Directory_LeaveRuler where ID = '''+Query2.FieldByName('ID').AsString+''' and FYear= '''+Query2.FieldByName('Fyear').AsString+''' and SDate= '''+formatdatetime('yyyy/MM/dd',Query2.FieldByName('Sdate').Value)+'''');
      Active := true;
      if (QSearch.FieldByName('count').Value>0) then
      begin
        Showmessage('Ngày bắt đầu các kỳ nghỉ không được trùng');
        BB6Click(nil);
      end ;
    end;
end;

procedure TDirectory_LeaveRuler.Query3AfterOpen(DataSet: TDataSet);
begin
   Query3.AfterOpenRecNo(DataSet);
   Modify1.Enabled:=true;
end;

procedure TDirectory_LeaveRuler.Query4AfterOpen(DataSet: TDataSet);
begin
   Query4.AfterOpenRecNo(DataSet);
   Insert2.Enabled:=true;
   Modify2.Enabled:=true;
   Delete2.Enabled:=true;
end;

procedure TDirectory_LeaveRuler.Save1Click(Sender: TObject);
var i: integer;
begin
  Query3.First;
  for i := 0 to Query3.RecordCount-1 do
  begin
    case Query3.UpdateStatus of
      usInserted:
      begin
      end;
      usModified:
      begin
        U_Query3.Apply(ukModify);
      end;
    end;
    Query3.Next;
  end;

  Query3.Active:=false;
  Query3.LockType:=ltReadOnly;
  Query3.Active:=true;
  Cancel1.Enabled := false;
  Save1.Enabled := false;

end;

procedure TDirectory_LeaveRuler.Save2Click(Sender: TObject);
var i: integer;
    PID:String;
begin
  Query4.First;
  for i := 0 to Query4.RecordCount-1 do
  begin
    case Query4.UpdateStatus of
      usInserted:
      begin
       with TempQry do
       begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Select top 1 PID from Directory_Position order by PID desc');
          Active:=true;
          PID:=inttostr(strtoint(FieldByName('PID').Value)+1);
          Active:=false;
       end;
       Query4.Edit;
       Query4.FieldByName('PID').Value:=PID;
       Query4.FieldByName('UserID').AsString := main.UserID;
       Query4.FieldByName('UserDate').Value:=Date();
       Query4.FieldByName('YN').AsString := '1';
       U_Query4.Apply(ukInsert);
      end;
      usModified:
      begin
       if (Query4.FieldByName('YN').AsString = '0') then
       begin
          U_Query4.Apply(ukDelete);
       end else
       begin
         Query4.Edit;
         Query4.FieldByName('UserID').AsString := main.UserID;
         Query4.FieldByName('UserDate').Value:=Date();
         U_Query4.Apply(ukModify);
       end;
      end;
    end;
    Query4.Next;
  end;
  Query4.Active:=false;
  Query4.LockType:=ltReadOnly;
  Query4.Active:=true;
  Cancel2.Enabled := false;
  Save2.Enabled := false;
end;

end.
