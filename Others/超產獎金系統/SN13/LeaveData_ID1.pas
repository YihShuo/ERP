unit LeaveData_ID1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TLeaveData_ID = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TADOQuery;
    Query1ID: TStringField;
    Query1Department: TWideStringField;
    Query1Position: TWideStringField;
    Query1Name: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LeaveData_ID: TLeaveData_ID;

implementation

uses DM1, LeaveData1, FunUnit;

{$R *.dfm}

procedure TLeaveData_ID.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Certificate.ID, Directory_Department.Name as Department, Directory_Position.Name as Position, Certificate.Name ');
    SQL.Add('FROM Certificate ');
    SQL.Add('Left join Directory on Directory.ID=Certificate.ID');
    SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID');
    SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID');
    SQL.Add('WHERE 1=1 ');
    if Edit1.Text<>'' then
    SQL.Add(' and  Certificate.ID LIKE '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
    SQL.Add(' and Certificate.Name LIKE '''+Edit2.Text+'%'' ');
    SQL.Add('ORDER BY Certificate.ID');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active := true;
  end;
end;

procedure TLeaveData_ID.DBGridEh1DblClick(Sender: TObject);
begin
  LeaveData.ED_ID.Text := Query1.FieldByName('ID').AsString;
  LeaveData.ED_Name.Text := Query1.FieldByName('Name').AsString;
  Close;
end;

procedure TLeaveData_ID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLeaveData_ID.FormCreate(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TLeaveData_ID.FormDestroy(Sender: TObject);
begin
  LeaveData_ID := Nil;
end;

end.
