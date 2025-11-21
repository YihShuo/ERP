unit AndonDepartment1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, jpeg, DB, DBTables, GridsEh,
  DBGridEh;

type
  TAndonDepartment = class(TForm)
    Panel1: TPanel;
    rbA: TRadioButton;
    rbC: TRadioButton;
    rbS: TRadioButton;
    Query1: TQuery;
    DS1: TDataSource;
    rbAll: TRadioButton;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1GXLB: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure rbAClick(Sender: TObject);
    procedure rbCClick(Sender: TObject);
    procedure rbSClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AndonDepartment: TAndonDepartment;

implementation

uses
  AndonAlarmSetting1, main1;

{$R *.dfm}

procedure TAndonDepartment.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT ID, DepName, ''AR'' AS GXLB FROM BDepartment');
    SQL.Add('WHERE ProYN = ''1'' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = :GXLB');
    SQL.Add('ORDER BY DepName');
    if (rbC.Checked) then
      ParamByName('GXLB').Value := 'C';
    if (rbS.Checked) then
      ParamByName('GXLB').Value := 'S';
    if (rbA.Checked) then
      ParamByName('GXLB').Value := 'A';
    Active := true;
  end;
end;

procedure TAndonDepartment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TAndonDepartment.FormDestroy(Sender: TObject);
begin
  AndonDepartment := Nil;
end;

procedure TAndonDepartment.rbAClick(Sender: TObject);
begin
  FormCreate(Nil);
end;

procedure TAndonDepartment.rbCClick(Sender: TObject);
begin
  FormCreate(Nil);
end;

procedure TAndonDepartment.rbSClick(Sender: TObject);
begin
  FormCreate(Nil);
end;

procedure TAndonDepartment.rbAllClick(Sender: TObject);
begin
  FormCreate(Nil);
end;

procedure TAndonDepartment.DBGridEh1DblClick(Sender: TObject);
begin
  AndonAlarmSetting.QAndon.FieldByName('DepNo').Value := Query1.FieldByName('ID').AsString;
  AndonAlarmSetting.QAndon.FieldByName('DepName').Value := Query1.FieldByName('DepName').AsString;
  AndonAlarmSetting.QAndon.FieldByName('GXLB').Value := Query1.FieldByName('GXLB').AsString;
  Close;
end;

end.

