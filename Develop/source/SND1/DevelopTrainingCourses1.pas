unit DevelopTrainingCourses1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB,
  DBTables;

type
  TDevelopTrainingCourses = class(TForm)
    PC1: TPageControl;
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    TS5: TTabSheet;
    TS1: TTabSheet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure TS1Show(Sender: TObject);
    procedure TS2Show(Sender: TObject);
    procedure TS3Show(Sender: TObject);
    procedure TS4Show(Sender: TObject);
    procedure TS5Show(Sender: TObject);
    procedure StartQuery();
    procedure CancelUpdate();
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevelopTrainingCourses: TDevelopTrainingCourses;
  CurrentType: string;
  NDate: TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDevelopTrainingCourses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TDevelopTrainingCourses.FormCreate(Sender: TObject);
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
end;

procedure TDevelopTrainingCourses.FormDestroy(Sender: TObject);
begin
  DevelopTrainingCourses := nil;
end;

procedure TDevelopTrainingCourses.TS1Show(Sender: TObject);
begin
  CurrentType := 'basic';
  StartQuery();
end;

procedure TDevelopTrainingCourses.TS2Show(Sender: TObject);
begin
  CurrentType := 'upper';
  StartQuery();
end;

procedure TDevelopTrainingCourses.TS3Show(Sender: TObject);
begin
  CurrentType := 'bottom';
  StartQuery();
end;

procedure TDevelopTrainingCourses.TS4Show(Sender: TObject);
begin
  CurrentType := 'cost';
  StartQuery();
end;

procedure TDevelopTrainingCourses.TS5Show(Sender: TObject);
begin
  CurrentType := 'others';
  StartQuery();
end;

procedure TDevelopTrainingCourses.StartQuery();
begin
  //
  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT * FROM DevelopTrainingCourses WHERE course_type = ''' + CurrentType + ''' ');
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
  CancelUpdate();
end;

procedure TDevelopTrainingCourses.CancelUpdate();
begin
  //
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TDevelopTrainingCourses.BB2Click(Sender: TObject);
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
end;

procedure TDevelopTrainingCourses.BB3Click(Sender: TObject);
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

procedure TDevelopTrainingCourses.BB4Click(Sender: TObject);
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
end;

procedure TDevelopTrainingCourses.BB5Click(Sender: TObject);
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
            if (Query1.FieldByName('course_id').IsNull) then
            begin
              ShowMessage('course id can not be empty.');
              Abort;
            end;
            if (Query1.FieldByName('course_name').IsNull) then
            begin
              ShowMessage('course name can not be empty.');
              Abort;
            end;
            if (Query1.FieldByName('passing_grade').IsNull) then
            begin
              ShowMessage('passing grade can not be empty.');
              Abort;
            end;
            if (Query1.FieldByName('level_required_a').IsNull) or (Query1.FieldByName('level_required_b').IsNull) or
              (Query1.FieldByName('level_required_c').IsNull) or (Query1.FieldByName('level_required_d').IsNull) then
            begin
              ShowMessage('level required can not be empty.');
              Abort;
            end;

            Query1.Edit;
            Query1.FieldByName('course_type').Value := CurrentType;
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
              StartQuery();
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
    ShowMessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TDevelopTrainingCourses.BB6Click(Sender: TObject);
begin
  // Cancel
  CancelUpdate();
end;

procedure TDevelopTrainingCourses.BB7Click(Sender: TObject);
begin
  // Exit
  Close;
end;
end.
