unit CD_Department1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TCD_Department = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1GXLB: TStringField;
    Query1Xuong: TStringField;
    Query1GSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CD_Department: TCD_Department;

implementation

uses main1, CutDispatch1, FunUnit;

{$R *.dfm}

procedure TCD_Department.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCD_Department.FormDestroy(Sender: TObject);
begin
  CD_Department := nil;
end;

procedure TCD_Department.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, DepName, GXLB, Xuong, GSBH FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND ID LIKE ''' + Edit1.Text + '%'' AND DepName LIKE ''' + Edit2.Text + '%''');
    Active := true;
  end;
end;

procedure TCD_Department.DBGridEh1DblClick(Sender: TObject);
begin
  with CutDispatch.QCDMaster do
  begin
    Edit;
    FieldByName('DepID').Value := Query1.FieldByName('ID').AsString;
    FieldByName('DepName').Value := Query1.FieldByName('DepName').AsString;
    Post;
  end;
  Close;
end;

end.
