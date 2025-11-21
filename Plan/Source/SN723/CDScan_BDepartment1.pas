unit CDScan_BDepartment1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TCDScan_BDepartment = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1GXLB: TStringField;
    Query1Xuong: TStringField;
    Query1GSBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CDScan_BDepartment: TCDScan_BDepartment;

implementation
  uses CDScan1, main1;
{$R *.dfm}

procedure TCDScan_BDepartment.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, DepName, GXLB, Xuong, GSBH FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND ID LIKE ''' + Edit1.Text + '%'' AND DepName LIKE ''' + Edit2.Text + '%''');
    Active := true;
  end;
end;

procedure TCDScan_BDepartment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCDScan_BDepartment.FormDestroy(Sender: TObject);
begin
  CDScan_BDepartment:=nil;
end;

procedure TCDScan_BDepartment.DBGridEh1DblClick(Sender: TObject);
begin
  with CDScan do
  begin
    DepID := Query1.FieldByName('ID').AsString;
    DepNMEdit.Text := Query1.FieldByName('DepName').AsString;
    Edit1.text:='';
    InitCutDispatchS();
  end;
  Close;
end;

end.
