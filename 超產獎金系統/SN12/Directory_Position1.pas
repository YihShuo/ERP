unit Directory_Position1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Data.DB, Bde.DBTables, Data.Win.ADODB, MyADOQuery;

type
  TDirectory_Position = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    ed_NID: TEdit;
    ed_position: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1PID: TStringField;
    Query1NID: TStringField;
    Query1Position: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ed_NIDChange(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    ParentForm:String;
    { Public declarations }
  end;

var
  Directory_Position: TDirectory_Position;

implementation
{$R *.dfm}
  uses main1, SupervisorData1, LeaveData1;

procedure TDirectory_Position.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select PID, NID, Name as Position from Directory_Position');
    SQL.Add('WHERE  1=1 ');
    if ed_NID.Text<>'' then
    SQL.Add(' and NID = ''' + ed_NID.Text + ''' ');
    if ed_position.Text<>'' then
    SQL.Add(' and Name like ''%'+ed_position.Text+'%'' ');
    SQL.Add('ORDER BY PID');
    Active := true;
  end;
end;

procedure TDirectory_Position.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.Active=false then Exit;
  if Query1.RecordCount=0 then Exit;
  if ParentForm='SupervisorData' then
  begin
    with  SupervisorData.CertificateQry do
    begin
      Edit;
      SupervisorData.CertificateQry.FieldByName('PID').Value:=Query1.FieldByName('PID').Value;
      SupervisorData.CertificateQry.FieldByName('Position').Value:=Query1.FieldByName('Position').Value;
      Post;
    end;
  end;
  if ParentForm='LeaveData' then
  begin
    with  LeaveData.QDetail do
    begin
      Edit;
      LeaveData.QDetail.FieldByName('PID').Value:=Query1.FieldByName('PID').Value;
      LeaveData.QDetail.FieldByName('Position').Value:=Query1.FieldByName('Position').Value;
      Post;
    end;
  end;
  Close;
end;

procedure TDirectory_Position.ed_NIDChange(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TDirectory_Position.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDirectory_Position.FormDestroy(Sender: TObject);
begin
  Directory_Position:=nil;
end;

end.
