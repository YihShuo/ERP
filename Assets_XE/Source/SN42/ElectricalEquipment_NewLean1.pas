unit ElectricalEquipment_NewLean1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TElectricalEquipment_NewLean = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ElectricalEquipment_NewLean: TElectricalEquipment_NewLean;

implementation

{$R *.dfm}

uses ElectricalEquipment1;

procedure TElectricalEquipment_NewLean.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from TSCD_BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%''');
    SQl.Add('and TSCD_BDepartment.ID not like ''%VB%'' ');
    SQl.Add('and TSCD_BDepartment.depname not like ''%NHA_AN_KHU_B%'' ');
    sql.add('and ProYN=''1'' ');
    sql.add('order by ID');
    active:=true;
    end

end;

procedure TElectricalEquipment_NewLean.DBGrid1DblClick(Sender: TObject);
begin
  if query1.RecordCount > 0 then
  begin
    with ElectricalEquipment.TSCD do
    begin
      Edit;
        FieldByName('Lean_ID').Value := query1.FieldByName('ID').Value;
        FieldByName('LeanName').Value := query1.FieldByName('Depname').Value;
        FieldByName('DepMemo').Value := query1.FieldByName('DepMemo').Value;

    end;
    query1.Active := False;
    Close;
  end;
end;

procedure TElectricalEquipment_NewLean.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action:=Cafree;
end;

procedure TElectricalEquipment_NewLean.FormDestroy(Sender: TObject);
begin
     ElectricalEquipment_NewLean:=nil;
end;

end.
