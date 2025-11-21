unit DevelopTrainingRecords1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  DBTables, DB;

type
  TDevelopTrainingRecords = class(TForm)
    Panel2: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure StartQuery();
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevelopTrainingRecords: TDevelopTrainingRecords;
  NDate: TDate;

implementation

uses main1, DeveloperList1, CourseList1;

{$R *.dfm}

procedure TDevelopTrainingRecords.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TDevelopTrainingRecords.FormCreate(Sender: TObject);
begin
  //
  with Qtemp do
  begin
    // Get date from server
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() as NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  StartQuery();
end;

procedure TDevelopTrainingRecords.FormDestroy(Sender: TObject);
begin
  DevelopTrainingRecords := nil;
end;

procedure TDevelopTrainingRecords.StartQuery();
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT *, Busers.USERNAME AS developer_name, DevelopTrainingCourses.course_name FROM DevelopTrainingRecords');
    SQL.Add('LEFT JOIN DevelopTrainingCourses ON DevelopTrainingCourses.course_id = DevelopTrainingRecords.course_id');
    SQL.Add('LEFT JOIN Busers ON DevelopTrainingRecords.developer_id = Busers.USERID');
    Active := true;
  end;

  if (Query1.RecordCount > 0) then
  begin
    BB3.Enabled := true;
    BB4.Enabled := true;
  end
  else
  begin
    BB3.Enabled := false;
    BB4.Enabled := false;
  end;

  BB2.Enabled := true;
end;

procedure TDevelopTrainingRecords.BB2Click(Sender: TObject);
begin
  // Insert
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;

  DBGridEh1.columns[0].ButtonStyle := cbsEllipsis;
  DBGridEh1.columns[3].ButtonStyle := cbsEllipsis;
end;

procedure TDevelopTrainingRecords.BB3Click(Sender: TObject);
begin
  // Delete
  with Query1 do
  begin
    if (FieldByName('USERID').value = main.edit1.Text) then
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := '0';
    end
    else
    begin
      ShowMessage('It is not yours, can not delete.');
    end;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDevelopTrainingRecords.BB4Click(Sender: TObject);
begin
  // Modify
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;

  DBGridEh1.columns[0].ButtonStyle := cbsEllipsis;
  DBGridEh1.columns[3].ButtonStyle := cbsEllipsis;
end;

procedure TDevelopTrainingRecords.BB5Click(Sender: TObject);
var
  i: integer;
begin
  // Save
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usinserted:
          begin
            if (Query1.FieldByName('developer_id').IsNull) then
            begin
              ShowMessage('developer id can not be empty.');
              Abort;
            end;
            if (Query1.FieldByName('course_id').IsNull) then
            begin
              ShowMessage('course id can not be empty.');
              Abort;
            end;

            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.edit1.text;
            Query1.FieldByName('USERDATE').Value := FormatDateTime('yyyy/MM/dd',
              Ndate);
            Query1.FieldByName('YN').Value := '1';

            UpdateSQL1.Apply(ukinsert);
          end; // usinserted
        usmodified:
          begin
            if (Query1.FieldByName('YN').Value = '0') then
            begin
              UpdateSQL1.Apply(ukdelete);
            end
            else
            begin
              Query1.Edit;
              Query1.FieldByName('USERID').Value := main.edit1.text;
              Query1.FieldByName('USERDATE').Value := FormatDateTime('yyyy/MM/dd', Ndate);
              UpdateSQL1.Apply(ukmodify);
            end;
          end; // usmodified
      end; // case end
      Query1.Next;
    end; // for loop end
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGridEh1.columns[0].ButtonStyle := cbsNone;
    DBGridEh1.columns[3].ButtonStyle := cbsNone;
    ShowMessage('Succeed.');
    StartQuery();
  except
    MessageDlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TDevelopTrainingRecords.BB6Click(Sender: TObject);
begin
  // Cancel
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;

  DBGridEh1.columns[0].ButtonStyle := cbsNone;
  DBGridEh1.columns[3].ButtonStyle := cbsNone;
end;

procedure TDevelopTrainingRecords.BB7Click(Sender: TObject);
begin
  // Exit
  Close;
end;

procedure TDevelopTrainingRecords.DBGridEh1EditButtonClick(
  Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'developer_id') then
  begin
    DeveloperList := TDeveloperList.Create(self);
    DeveloperList.Show;
  end;
  if (DBGridEh1.SelectedField.FieldName = 'course_id') then
  begin
    CourseList := TCourseList.Create(self);
    CourseList.Show;
  end;
end;

end.
