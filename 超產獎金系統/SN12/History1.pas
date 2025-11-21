unit History1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, Data.Win.ADODB, MyADOQuery;

type
  THistory = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TMyADOQuery;
    DataSource1: TDataSource;
    Query1ID: TWideStringField;
    Query1ExpireDate: TDateTimeField;
    Query1CredentialNo: TWideStringField;
    Query1Category: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadHistoryData(ID, Category: string);
  end;

var
  History: THistory;

implementation

uses DM1, SupervisorData1;

{$R *.dfm}

procedure THistory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THistory.FormDestroy(Sender: TObject);
begin
  History := Nil;
end;

procedure THistory.LoadHistoryData(ID: string; Category: string);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, Category, CredentialNo, ExpireDate FROM CertificateHis WHERE ID = ''' + ID + ''' AND Category = N''' + Category + '''');
    SQL.Add('ORDER BY ExpireDate DESC');
    Active := true;
  end;
end;

end.
