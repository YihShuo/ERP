unit DKorganization_ORGLEVEL1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery,
  Vcl.StdCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TDKorganization_ORGLEVEL = class(TForm)
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    LEVEL_NOEdit: TEdit;
    Button3: TButton;
    LEVEL_DESCEdit: TEdit;
    DBGridEh3: TDBGridEh;
    Query1LEVEL_NO: TWideStringField;
    Query1LEVEL_DESC: TWideStringField;
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
  DKorganization_ORGLEVEL: TDKorganization_ORGLEVEL;

implementation
  uses DKorganization1, FunUnit;
{$R *.dfm}

procedure TDKorganization_ORGLEVEL.Button3Click(Sender: TObject);
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select * ');
     SQL.Add('From [EEP].[LingYi].[dbo].[SYS_ORGLEVEL] SYS_ORGLEVEL');
     SQL.Add('where 1=1 ');
     if LEVEL_NOEdit.Text<>'' then
     SQL.Add(' and SYS_ORGLEVEL.LEVEL_NO like '''+LEVEL_NOEdit.Text+'%'' ');
     if LEVEL_DESCEdit.Text<>'' then
     SQL.Add(' and SYS_ORGLEVEL.LEVEL_DESC like ''%'+LEVEL_DESCEdit.Text+'%'' ');
     funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;

end;

procedure TDKorganization_ORGLEVEL.DBGridEh3DblClick(Sender: TObject);
begin
  with DKorganization.SYS_ORGQry do
  begin
    DKorganization.SYS_ORGQry.Edit;
    DKorganization.SYS_ORGQry.FieldByName('LEVEL_NO').Value:=Query1.FieldByName('LEVEL_NO').Value;
    DKorganization.SYS_ORGQry.FieldByName('LEVEL_DESC').Value:=Query1.FieldByName('LEVEL_DESC').Value;
    DKorganization.SYS_ORGQry.Post;
  end;
  close;
end;

procedure TDKorganization_ORGLEVEL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDKorganization_ORGLEVEL.FormDestroy(Sender: TObject);
begin
  DKorganization_ORGLEVEL:=nil;
end;

end.
