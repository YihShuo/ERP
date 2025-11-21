unit DKOrganization_Group1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDKOrganization_Group = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GROUPIDEdit: TEdit;
    Button3: TButton;
    DBGridEh3: TDBGridEh;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1GROUPID: TStringField;
    Query1GROUPNAME: TWideStringField;
    Query1DESCRIPTION: TWideStringField;
    Query1MSAD: TWideStringField;
    Query1ISROLE: TStringField;
    Query1YN: TStringField;
    Label1: TLabel;
    GROUPNAMEEdit: TEdit;
    Label3: TLabel;
    DESCEdit: TEdit;
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
  DKOrganization_Group: TDKOrganization_Group;

implementation
  uses DKorganization1;
{$R *.dfm}

procedure TDKOrganization_Group.Button3Click(Sender: TObject);
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

procedure TDKOrganization_Group.DBGridEh3DblClick(Sender: TObject);
begin
  with DKorganization.SYS_ORGQry do
  begin
    DKorganization.SYS_ORGQry.Edit;
    DKorganization.SYS_ORGQry.FieldByName('ORG_MAN').Value:=Query1.FieldByName('GROUPID').Value;
    DKorganization.SYS_ORGQry.FieldByName('GROUPNAME').Value:=Query1.FieldByName('GROUPNAME').Value;
    DKorganization.SYS_ORGQry.FieldByName('DESCRIPTION').Value:=Query1.FieldByName('DESCRIPTION').Value;
    DKorganization.SYS_ORGQry.Post;
  end;
  close;
end;

procedure TDKOrganization_Group.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDKOrganization_Group.FormDestroy(Sender: TObject);
begin
  DKOrganization_Group:=nil;
end;

end.
