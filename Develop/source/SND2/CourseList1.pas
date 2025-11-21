unit CourseList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TCourseList = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    BB7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure StartQuery();
    procedure BB7Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CourseList: TCourseList;

implementation

uses DevelopTrainingRecords1;

{$R *.dfm}

procedure TCourseList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TCourseList.FormCreate(Sender: TObject);
begin
  StartQuery();
end;

procedure TCourseList.FormDestroy(Sender: TObject);
begin
  CourseList := nil;
end;

procedure TCourseList.StartQuery();
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM DevelopTrainingCourses');
    Active := true;
  end;
end;

procedure TCourseList.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TCourseList.DBGridEh1DblClick(Sender: TObject);
begin
  //
  if Query1.RecordCount > 0 then
  begin
    with DevelopTrainingRecords.Query1 do
    begin
      Edit;
      FieldByName('course_type').Value := Query1.FieldByName('course_type').Value;
      FieldByName('course_id').Value := Query1.FieldByName('course_id').Value;
      FieldByName('course_name').Value := Query1.FieldByName('course_name').Value;
    end;
    close;
  end;
end;

end.
