unit Directory_Nationality1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDirectory_Nationality = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    ed_NID: TEdit;
    ed_Nationality: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TMyADOQuery;
    DS1: TDataSource;
    Query1NID: TStringField;
    Query1Nationality: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Directory_Nationality: TDirectory_Nationality;

implementation

{$R *.dfm}
uses main1,SupervisorData1;

procedure TDirectory_Nationality.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select  NID, Name as Nationality from Directory_Nationality');
    SQL.Add('WHERE  1=1 ');
    if ed_NID.Text<>'' then
    SQL.Add(' and NID = ''' + ed_NID.Text + ''' ');
    if ed_Nationality.Text<>'' then
    SQL.Add(' and Name like ''%'+ed_Nationality.Text+'%'' ');
    SQL.Add('ORDER BY NID');
    Active := true;
  end;
end;

procedure TDirectory_Nationality.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.Active=false then Exit;
  if Query1.RecordCount=0 then Exit;
  with  SupervisorData.CertificateQry do
  begin
    Edit;
    SupervisorData.CertificateQry.FieldByName('NID').Value:=Query1.FieldByName('NID').Value;
    SupervisorData.CertificateQry.FieldByName('Nationality').Value:=Query1.FieldByName('Nationality').Value;
    Post;
  end;
  Close;
end;

procedure TDirectory_Nationality.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDirectory_Nationality.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TDirectory_Nationality.FormDestroy(Sender: TObject);
begin
  Directory_Nationality:=nil;
end;

end.
