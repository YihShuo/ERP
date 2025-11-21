unit Department1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TF_Department = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Department: TF_Department;

implementation

uses main1, PreArrange;

{$R *.dfm}

procedure TF_Department.FormDestroy(Sender: TObject);
begin
  F_Department := nil;
end;

procedure TF_Department.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT * FROM BDepartment');
    SQL.Add(' WHERE ID LIKE ''' + Edit1.Text + '%'' AND DepName LIKE ''%' + Edit2.Text + '%'' ');
    SQL.Add(' AND ProYN = 1 AND (YN = 1 OR YN = 5) AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''' AND sumline IS NOT NULL ORDER BY ID');
    Active := true;
  end;
end;

procedure TF_Department.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    edit2.setfocus
end;

procedure TF_Department.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    button1click(nil);
end;

procedure TF_Department.DBGrid1DblClick(Sender: TObject);
begin
  if (Query1.RecordCount > 0) then
  begin
    F_PreArrange.StringGrid3.Cells[11, F_PreArrange.StringGrid3.Row] := Query1.FieldByname('ID').AsString;
    F_PreArrange.StringGrid3.Cells[12, F_PreArrange.StringGrid3.Row] := Query1.FieldByname('DepName').AsString;
    if (F_PreArrange.StringGrid3.Cells[11, F_PreArrange.StringGrid3.Row] <> '') AND (F_PreArrange.StringGrid3.Cells[12, F_PreArrange.StringGrid3.Row] <> '') AND (F_PreArrange.StringGrid3.Cells[13, F_PreArrange.StringGrid3.Row] <> '') AND (F_PreArrange.StringGrid3.Cells[14, F_PreArrange.StringGrid3.Row] <> '') AND (F_PreArrange.StringGrid3.Cells[15, F_PreArrange.StringGrid3.Row] <> '') then
      F_PreArrange.StringGrid3.Cells[0, F_PreArrange.StringGrid3.Row] := '*'
    else
      F_PreArrange.StringGrid3.Cells[0, F_PreArrange.StringGrid3.Row] := '';
    close;
  end;
end;

procedure TF_Department.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    DBGrid1Dblclick(nil);
end;

procedure TF_Department.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_PreArrange.HideAllButton;
end;

end.
