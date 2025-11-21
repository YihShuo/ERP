unit DKorganization_ORG_KIND1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery,
  Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls;

type
  TDKorganization_ORG_KIND = class(TForm)
    Panel1: TPanel;
    DBGridEh3: TDBGridEh;
    Label2: TLabel;
    ORG_KINDEdit: TEdit;
    Button3: TButton;
    Query1: TMyADOQuery;
    DS1: TDataSource;
    Query1ORG_KIND: TWideStringField;
    Query1KIND_DESC: TWideStringField;
    Label1: TLabel;
    ORG_DESCEdit: TEdit;
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
  DKorganization_ORG_KIND: TDKorganization_ORG_KIND;

implementation
  uses DKorganization1;
{$R *.dfm}

procedure TDKorganization_ORG_KIND.Button3Click(Sender: TObject);
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select * ');
     SQL.Add('From [EEP].[LingYi].[dbo].[SYS_ORGKIND] SYS_ORGKIND');
     SQL.Add('where 1=1 ');
     if ORG_KINDEdit.Text<>'' then
     SQL.Add(' and SYS_ORGKIND.ORG_KIND like '''+ORG_KINDEdit.Text+'%'' ');
     if ORG_DESCEdit.Text<>'' then
     SQL.Add(' and SYS_ORGKIND.ORG_DESC like '''+ORG_DESCEdit.Text+'%'' ');
     Active:=true;
   end;
end;

procedure TDKorganization_ORG_KIND.DBGridEh3DblClick(Sender: TObject);
begin
  with DKorganization.SYS_ORGQry do
  begin
    DKorganization.SYS_ORGQry.Edit;
    DKorganization.SYS_ORGQry.FieldByName('ORG_KIND').Value:=Query1.FieldByName('ORG_KIND').Value;
    DKorganization.SYS_ORGQry.Post;
  end;
  close;
end;

procedure TDKorganization_ORG_KIND.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDKorganization_ORG_KIND.FormDestroy(Sender: TObject);
begin
  DKorganization_ORG_KIND:=nil;
end;

end.
