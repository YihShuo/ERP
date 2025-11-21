unit Directory_Factory1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDirectory_Factory = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    ed_FID: TEdit;
    ed_Factory: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TMyADOQuery;
    DS1: TDataSource;
    Query1FID: TStringField;
    Query1Factory: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Directory_Factory: TDirectory_Factory;

implementation

{$R *.dfm}

uses SupervisorData1;

procedure TDirectory_Factory.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select  FID, Name as Factory from Directory_Factory');
    SQL.Add('WHERE  1=1 ');
    if ed_FID.Text<>'' then
    SQL.Add(' and FID = ''' + ed_FID.Text + ''' ');
    if ed_Factory.Text<>'' then
    SQL.Add(' and Name like ''%'+ed_Factory.Text+'%'' ');
    SQL.Add('ORDER BY FID');
    Active := true;
  end;
end;

procedure TDirectory_Factory.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.Active=false then Exit;
  if Query1.RecordCount=0 then Exit;
  with  SupervisorData.CertificateQry do
  begin
    Edit;
    SupervisorData.CertificateQry.FieldByName('FID').Value:=Query1.FieldByName('FID').Value;
    SupervisorData.CertificateQry.FieldByName('Factory').Value:=Query1.FieldByName('Factory').Value;
    Post;
  end;
  Close;
end;

procedure TDirectory_Factory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDirectory_Factory.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TDirectory_Factory.FormDestroy(Sender: TObject);
begin
  Directory_Factory:=nil;
end;

end.
