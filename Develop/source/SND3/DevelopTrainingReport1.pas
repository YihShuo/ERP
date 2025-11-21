unit DevelopTrainingReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, GridsEh, DBGridEh, DB,
  DBTables;

type
  TDevelopTrainingReport = class(TForm)
    Panel2: TPanel;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    TS5: TTabSheet;
    Query1: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    Query2: TQuery;
    Qtemp: TQuery;
    DBGridEh2: TDBGridEh;
    Query1developer_id: TStringField;
    Query1developer_name: TStringField;
    Query1developer_level: TStringField;
    Query1basic: TStringField;
    Query1upper: TStringField;
    Query1bottom: TStringField;
    Query1Cost: TStringField;
    Query1others: TStringField;
    UpdateSQL1: TUpdateSQL;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    Query1developer_team: TStringField;
    procedure BB7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure StartQueryDeveloperCoursesHistory();
    procedure TS1Show(Sender: TObject);
    procedure TS2Show(Sender: TObject);
    procedure TS3Show(Sender: TObject);
    procedure TS5Show(Sender: TObject);
    procedure DS1DataChange(Sender: TObject; Field: TField);
    procedure TS4Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevelopTrainingReport: TDevelopTrainingReport;
  CurrentDeveloperID: string;
  CurrentCourseType: string;
  CourseList: TStringList;
  DeveloperRecordList: TStringList;

implementation

{$R *.dfm}

procedure TDevelopTrainingReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TDevelopTrainingReport.FormCreate(Sender: TObject);
var
  i, j, k: integer;
  levelCountA, levelCountB, levelCountC, levelCountD: integer;
  splitStringList: TStringList;
  keyName, keyName2, developerID, courseType, courseID, courseGrade: string;
  developerBasicPassed, developerUpperPassed, developerBottomPassed, developerCostPassed, developerOthersPassed,
    developerTotalPassed: string;
begin
  CourseList := TStringList.Create;
  DeveloperRecordList := TStringList.Create;
  splitStringList := TStringList.Create;

  // 取得所有開發員
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT FDGroups.FDTeam AS developer_team, FDGroups.FDID AS developer_id, Busers.USERNAME AS developer_name,');
    SQL.Add(' '''' AS developer_level, ''    '' AS basic, ''    '' AS upper, ''    '' AS bottom, ''    '' AS Cost, ''    '' AS others FROM FDGroups');
    SQL.Add('LEFT JOIN Busers ON FDGroups.FDID = Busers.USERID');
    SQL.Add('WHERE FDGroups.fdname = ''Develop''');
    SQL.Add('ORDER BY FDGroups.FDTeam');
    Active := true;
  end;

  with Qtemp do
  begin
    // 取得指定等級要求通過課程數量
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT course_type, course_id FROM DevelopTrainingCourses WHERE level_required_a = ''Y''');
    Active := true;
    levelCountA := Qtemp.RecordCount;
    Close;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT course_type, course_id FROM DevelopTrainingCourses WHERE level_required_b = ''Y''');
    Active := true;
    levelCountB := Qtemp.RecordCount;
    Close;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT course_type, course_id FROM DevelopTrainingCourses WHERE level_required_c = ''Y''');
    Active := true;
    levelCountC := Qtemp.RecordCount;
    Close;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT course_type, course_id FROM DevelopTrainingCourses WHERE level_required_d = ''Y''');
    Active := true;
    levelCountD := Qtemp.RecordCount;
    Close;

    // 取得所有課程資訊
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT course_type, course_id, passing_grade FROM DevelopTrainingCourses');
    Active := true;

    First;
    while not Eof do
    begin
      // 紀錄課程資訊
      CourseList.Values[FieldByName('course_type').AsString + '-' + FieldByName('course_id').AsString] :=
        FieldByName('passing_grade').AsString;

      // 統計課程大類數量
      keyName := FieldByName('course_type').AsString + '-' + 'total';
      if (CourseList.IndexOfName(keyName) = -1) then
      begin
        CourseList.Values[keyName] := IntToStr(1);
      end
      else
      begin
        CourseList.Values[keyName] := IntToStr(StrToint(CourseList.Values[keyName]) + 1);
      end;
      Next;
    end;

    Close;
    Active := false;
  end;

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      with Qtemp do
      begin
        // 取得開發員上課紀錄
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT * FROM DevelopTrainingRecords WHERE developer_id = :DEVELOPER_ID ORDER BY course_date DESC');
        ParamByName('DEVELOPER_ID').Value := Query1.FieldByName('developer_id').AsString;
        Active := true;

        if Qtemp.RecordCount > 0 then
        begin
          Qtemp.First;
          while not Eof do
          begin
            // 51293-basic-A001
            keyName := Query1.FieldByName('developer_id').AsString + '-' + Qtemp.FieldByName('course_type').AsString +
              '-' + Qtemp.FieldByName('course_id').AsString;

            // 不存在的 KEY 才寫入
            if (DeveloperRecordList.IndexOfName(keyName) = -1) then
            begin
              DeveloperRecordList.Values[Query1.FieldByName('developer_id').AsString + '-' +
                Qtemp.FieldByName('course_type').AsString + '-' + Qtemp.FieldByName('course_id').AsString] :=
              Qtemp.FieldByName('course_grade').AsString;
            end;

            Qtemp.Next;
          end;
        end;

        Close;
        Active := false;
      end;

      Query1.Next;
    end; // for loop end
  except
    MessageDlg('Something wrong, please contact administrator.', mtwarning, [mbyes], 0);
  end;

  // 開始比對開發員上課紀錄
  for j := 0 to DeveloperRecordList.Count - 1 do
  begin
    splitStringList.Clear;
    splitStringList.Delimiter := '-';
    splitStringList.DelimitedText := DeveloperRecordList.Names[j];
    keyName := splitStringList[0] + '-' + splitStringList[1] + '-' + splitStringList[2];

    developerID := splitStringList[0];
    courseType := splitStringList[1];
    courseID := splitStringList[2];
    courseGrade := DeveloperRecordList.Values[keyName];

    // 統計通過課程數量
    keyName := developerID + '-' + courseType + '-' + 'passed';
    keyName2 := developerID + '-' + 'total' + '-' + 'passed';
    if (courseGrade >= CourseList.Values[courseType + '-' + courseID]) then
    begin
      // 統計大類通過數量
      if (DeveloperRecordList.IndexOfName(keyName) = -1) then
      begin
        DeveloperRecordList.Values[keyName] := IntToStr(1);
      end
      else
      begin
        DeveloperRecordList.Values[keyName] := IntToStr(StrToint(DeveloperRecordList.Values[keyName]) + 1);
      end;
      // 統計總通過數量
      if (DeveloperRecordList.IndexOfName(keyName2) = -1) then
      begin
        DeveloperRecordList.Values[keyName2] := IntToStr(1);
      end
      else
      begin
        DeveloperRecordList.Values[keyName2] := IntToStr(StrToint(DeveloperRecordList.Values[keyName2]) + 1);
      end;
    end;
  end; // for loop end

  // 開始回寫開發員等級 & 課程完成度
  Query1.First;
  for k := 1 to Query1.RecordCount do
  begin
    developerID := Query1.FieldByName('developer_id').AsString;
    developerBasicPassed := DeveloperRecordList.Values[developerID + '-' + 'basic' + '-' + 'passed'];
    developerUpperPassed := DeveloperRecordList.Values[developerID + '-' + 'upper' + '-' + 'passed'];
    developerBottomPassed := DeveloperRecordList.Values[developerID + '-' + 'bottom' + '-' + 'passed'];
    developerCostPassed := DeveloperRecordList.Values[developerID + '-' + 'cost' + '-' + 'passed'];
    developerOthersPassed := DeveloperRecordList.Values[developerID + '-' + 'others' + '-' + 'passed'];
    developerTotalPassed := DeveloperRecordList.Values[developerID + '-' + 'total' + '-' + 'passed'];

    Query1.RequestLive := true;
    Query1.CachedUpdates := true;
    Query1.Edit;

    // 開發員等級
    if (developerTotalPassed <> '') then
    begin
      if (StrToInt(developerTotalPassed) >= levelCountD) then
      begin
        Query1.FieldByName('developer_level').AsString := 'D';
      end;
      if (StrToInt(developerTotalPassed) >= levelCountC) then
      begin
        Query1.FieldByName('developer_level').AsString := 'C';
      end;
      if (StrToInt(developerTotalPassed) >= levelCountB) then
      begin
        Query1.FieldByName('developer_level').AsString := 'B';
      end;
      if (StrToInt(developerTotalPassed) >= levelCountA) then
      begin
        Query1.FieldByName('developer_level').AsString := 'A';
      end;
    end;

    // 課程完成度
    if (developerBasicPassed <> '') then
    begin
      keyName := 'basic-total';
      Query1.FieldByName('basic').AsString := FloatToStr((StrToFloat(developerBasicPassed) /
        StrToFloat(CourseList.Values[keyName])) * 100) + '%';
    end;
    if (developerUpperPassed <> '') then
    begin
      keyName := 'upper-total';
      Query1.FieldByName('upper').AsString := FloatToStr((StrToFloat(developerUpperPassed) /
        StrToFloat(CourseList.Values[keyName])) * 100) + '%';
    end;
    if (developerBottomPassed <> '') then
    begin
      keyName := 'bottom-total';
      Query1.FieldByName('bottom').AsString := FloatToStr((StrToFloat(developerBottomPassed) /
        StrToFloat(CourseList.Values[keyName])) * 100) + '%';
    end;
    if (developerCostPassed <> '') then
    begin
      keyName := 'cost-total';
      Query1.FieldByName('cost').AsString := FloatToStr((StrToFloat(developerCostPassed) /
        StrToFloat(CourseList.Values[keyName])) * 100) + '%';
    end;
    if (developerOthersPassed <> '') then
    begin
      keyName := 'others-total';
      Query1.FieldByName('others').AsString := FloatToStr((StrToFloat(developerOthersPassed) /
        StrToFloat(CourseList.Values[keyName])) * 100) + '%';
    end;

    Query1.Next;
  end; // for loop end

  Query1.First;
end;

procedure TDevelopTrainingReport.FormDestroy(Sender: TObject);
begin
  DevelopTrainingReport := nil;
end;

procedure TDevelopTrainingReport.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TDevelopTrainingReport.StartQueryDeveloperCoursesHistory();
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM DevelopTrainingRecords');
    SQL.Add('WHERE developer_id = ''' + CurrentDeveloperID + ''' AND course_type = ''' + CurrentCourseType + ''' ');
    Active := true;
  end;
end;

procedure TDevelopTrainingReport.TS1Show(Sender: TObject);
begin
  CurrentCourseType := 'basic';
  StartQueryDeveloperCoursesHistory();
end;

procedure TDevelopTrainingReport.TS2Show(Sender: TObject);
begin
  CurrentCourseType := 'upper';
  StartQueryDeveloperCoursesHistory();
end;

procedure TDevelopTrainingReport.TS3Show(Sender: TObject);
begin
  CurrentCourseType := 'bottom';
  StartQueryDeveloperCoursesHistory();
end;

procedure TDevelopTrainingReport.TS4Show(Sender: TObject);
begin
  CurrentCourseType := 'cost';
  StartQueryDeveloperCoursesHistory();
end;

procedure TDevelopTrainingReport.TS5Show(Sender: TObject);
begin
  CurrentCourseType := 'others';
  StartQueryDeveloperCoursesHistory();
end;

procedure TDevelopTrainingReport.DS1DataChange(Sender: TObject;
  Field: TField);
begin
  // Developer Row Change Event
  CurrentDeveloperID := Query1.FieldByName('developer_id').AsString;
  StartQueryDeveloperCoursesHistory();
end;

end.
