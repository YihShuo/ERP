unit DKorganization_Org1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDKorganization_Org = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    ORG_NOEdit: TEdit;
    Button3: TButton;
    ORG_DESCEdit: TEdit;
    ORG_FULLEdit: TEdit;
    DBGridEh3: TDBGridEh;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1ORG_NO: TWideStringField;
    Query1ORG_DESC: TWideStringField;
    Query1ORG_KIND: TWideStringField;
    Query1UPPER_ORG: TWideStringField;
    Query1ORG_MAN: TWideStringField;
    Query1LEVEL_NO: TWideStringField;
    Query1ORG_TREE: TWideStringField;
    Query1END_ORG: TWideStringField;
    Query1ORG_FULLNAME: TWideStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
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
  DKorganization_Org: TDKorganization_Org;

implementation
   uses DKorganization1;
{$R *.dfm}

procedure TDKorganization_Org.Button3Click(Sender: TObject);
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select * ');
     SQL.Add('From [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG');
     SQL.Add('where 1=1 ');
     if ORG_NOEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_NO like '''+ORG_NOEdit.Text+'%'' ');
     if ORG_DESCEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_DESC like ''%'+ORG_DESCEdit.Text+'%'' ');
     if ORG_FULLEdit.Text<>'' then
     SQL.Add(' and SYS_ORG.ORG_FULLNAME like ''%'+ORG_FULLEdit.Text+'%'' ');
     Active:=true;
   end;
end;

procedure TDKorganization_Org.DBGridEh3DblClick(Sender: TObject);
begin
  //
  with DKorganization.SYS_ORGQry do
  begin
    DKorganization.SYS_ORGQry.Edit;
    DKorganization.SYS_ORGQry.FieldByName('UPPER_ORG').Value:=Query1.FieldByName('ORG_NO').Value;
    DKorganization.SYS_ORGQry.Post;
  end;
  Close;
  //
end;

procedure TDKorganization_Org.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDKorganization_Org.FormDestroy(Sender: TObject);
begin
  DKorganization_Org:=nil;
end;

end.
