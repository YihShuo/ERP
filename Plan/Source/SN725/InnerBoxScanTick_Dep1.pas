unit InnerBoxScanTick_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TInnerBoxScanTick_Dep = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1GXLB: TStringField;
    Query1Xuong: TStringField;
    Query1GSBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InnerBoxScanTick_Dep: TInnerBoxScanTick_Dep;

implementation

uses main1, InnerBoxScanTick1;

{$R *.dfm}

procedure TInnerBoxScanTick_Dep.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ID, DepName, GXLB, Xuong, GSBH FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND ID LIKE ''' + Edit1.Text + '%'' AND DepName LIKE ''' + Edit2.Text + '%''');
    Active := true;
  end;
end;

procedure TInnerBoxScanTick_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  with InnerBoxScanTick do
  begin
    DepID := Query1.FieldByName('ID').AsString;
    DepNMEdit.Text := Query1.FieldByName('DepName').AsString;
    InitSMZLQty();
  end;
  Close;
end;

end.
