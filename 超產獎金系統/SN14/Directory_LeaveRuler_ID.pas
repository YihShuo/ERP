unit Directory_LeaveRuler_ID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TADOQuery;
    Query1ID: TStringField;
    Query1Department: TWideStringField;
    Query1Position: TWideStringField;
    Query1Name: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Directory_LeaveRuler1,DM1;

procedure TForm1.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, Department, Position, Name FROM Directory');
    SQL.Add('WHERE ID LIKE ''%' + Edit1.Text + '%'' AND Name LIKE ''%' + Edit2.Text + '%''');
    SQL.Add('ORDER BY ID');
    Active := true;
  end;
end;

procedure TForm1.DBGridEh1DblClick(Sender: TObject);
begin
  Directory_LeaveRuler.ED_ID.Text := Query1.FieldByName('ID').AsString;
  Directory_LeaveRuler.ED_Name.Text := Query1.FieldByName('Name').AsString;
  Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Button1Click(Nil);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
form1:= Nil;
end;

end.
