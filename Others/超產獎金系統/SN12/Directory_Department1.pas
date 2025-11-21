unit Directory_Department1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDirectory_Department = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    ed_DID: TEdit;
    ed_Department: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TMyADOQuery;
    DS1: TDataSource;
    Query1DID: TStringField;
    Query1Department: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    ParentForm:String;
    { Public declarations }
  end;

var
  Directory_Department: TDirectory_Department;

implementation

{$R *.dfm}

uses SupervisorData1, LeaveData1;

procedure TDirectory_Department.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select  DID, Name as Department from Directory_Department');
    SQL.Add('WHERE  1=1 ');
    if ed_DID.Text<>'' then
    SQL.Add(' and DID = ''' + ed_DID.Text + ''' ');
    if ed_Department.Text<>'' then
    SQL.Add(' and Name like ''%'+ed_Department.Text+'%'' ');
    SQL.Add('ORDER BY DID');
    Active := true;
  end;
end;

procedure TDirectory_Department.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.Active=false then Exit;
  if Query1.RecordCount=0 then Exit;
  if ParentForm='SupervisorData' then
  begin
    with  SupervisorData.CertificateQry do
    begin
      Edit;
      SupervisorData.CertificateQry.FieldByName('DID').Value:=Query1.FieldByName('DID').Value;
      SupervisorData.CertificateQry.FieldByName('Department').Value:=Query1.FieldByName('Department').Value;
      Post;
    end;
  end;
  if ParentForm='LeaveData' then
  begin
    with  LeaveData.QDetail do
    begin
      Edit;
      LeaveData.QDetail.FieldByName('DID').Value:=Query1.FieldByName('DID').Value;
      LeaveData.QDetail.FieldByName('Department').Value:=Query1.FieldByName('Department').Value;
      Post;
    end;
  end;
  Close;
end;

procedure TDirectory_Department.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDirectory_Department.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TDirectory_Department.FormDestroy(Sender: TObject);
begin
  Directory_Department:=nil;
end;

end.
