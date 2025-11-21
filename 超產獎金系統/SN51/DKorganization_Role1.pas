unit DKorganization_Role1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, Data.Win.ADODB, MyADOQuery, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDKorganization_Role = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    GROUPIDEdit: TEdit;
    Button3: TButton;
    GROUPNAMEEdit: TEdit;
    DESCEdit: TEdit;
    Query1: TMyADOQuery;
    Query1GROUPID: TStringField;
    Query1GROUPNAME: TWideStringField;
    Query1DESCRIPTION: TWideStringField;
    Query1MSAD: TWideStringField;
    Query1ISROLE: TStringField;
    Query1YN: TStringField;
    DS1: TDataSource;
    DBGridEh3: TDBGridEh;
    Query1SYSUSERID: TStringField;
    Query1SYSUSERDATE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DKorganization_Role: TDKorganization_Role;

implementation
  uses DKorganization1;
{$R *.dfm}

procedure TDKorganization_Role.Button3Click(Sender: TObject);
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select * ');
     SQL.Add('From [EEP].[LingYi].[dbo].[GROUPS] GROUPS');
     SQL.Add('where 1=1 ');
     if GROUPIDEdit.Text<>'' then
     SQL.Add(' and GROUPS.GROUPID like '''+GROUPIDEdit.Text+'%'' ');
     if GROUPNAMEEdit.Text<>'' then
     SQL.Add(' and GROUPS.GROUPNAME like ''%'+GROUPNAMEEdit.Text+'%'' ');
     if DESCEdit.Text<>'' then
     SQL.Add(' and GROUPS.DESCRIPTION like ''%'+DESCEdit.Text+'%'' ');
     Active:=true;
   end;
end;

procedure TDKorganization_Role.DBGridEh3DblClick(Sender: TObject);
begin
  with DKorganization.SYS_ORGQry do
  begin
    DKorganization.SYS_ORGQry.Edit;
    DKorganization.SYS_ORGQry.FieldByName('ROLE_ID').Value:=Query1.FieldByName('GROUPID').Value;
    DKorganization.SYS_ORGQry.FieldByName('ROLE_GROUPNAME').Value:=Query1.FieldByName('GROUPNAME').Value;
    DKorganization.SYS_ORGQry.FieldByName('ROLE_DESCRIPTION').Value:=Query1.FieldByName('DESCRIPTION').Value;
    DKorganization.SYS_ORGQry.Post;
  end;
  close;
end;

procedure TDKorganization_Role.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDKorganization_Role.FormDestroy(Sender: TObject);
begin
  DKorganization_Role:=nil
end;

end.
