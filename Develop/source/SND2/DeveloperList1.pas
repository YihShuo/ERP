unit DeveloperList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TDeveloperList = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    Query1FDID: TStringField;
    Query1USERNAME: TStringField;
    BB7: TBitBtn;
    Query1FDTeam: TStringField;
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
  DeveloperList: TDeveloperList;

implementation

uses DevelopTrainingRecords1;

{$R *.dfm}

procedure TDeveloperList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TDeveloperList.FormCreate(Sender: TObject);
begin
  StartQuery();
end;

procedure TDeveloperList.FormDestroy(Sender: TObject);
begin
  DeveloperList := nil;
end;

procedure TDeveloperList.StartQuery();
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT FDGroups.FDTeam, FDGroups.FDID, Busers.USERNAME FROM FDGroups');
    SQL.Add('LEFT JOIN Busers ON FDGroups.FDID = Busers.USERID');
    SQL.Add('WHERE FDGroups.fdname = ''Develop''');
    SQL.Add('ORDER BY FDGroups.FDTeam');
    Active := true;
  end;
end;

procedure TDeveloperList.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TDeveloperList.DBGridEh1DblClick(Sender: TObject);
begin
  //
  if Query1.RecordCount > 0 then
  begin
    with DevelopTrainingRecords.Query1 do
    begin
      Edit;
      FieldByName('developer_id').Value := Query1.FieldByName('FDID').Value;
      FieldByName('developer_name').Value := Query1.FieldByName('USERNAME').Value;
    end;
    close;
  end;
end;

end.
