unit ApplyEquipmentDepName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TApplyEquipmentDepName = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApplyEquipmentDepName: TApplyEquipmentDepName;

implementation

uses main1, ApplyEquipment1;
{$R *.dfm}

procedure TApplyEquipmentDepName.FormDestroy(Sender: TObject);
begin
  ApplyEquipmentDepName:=nil;
end;

procedure TApplyEquipmentDepName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApplyEquipmentDepName.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from TSCD_BDepartment BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%''');
    //sql.add('and GSBH='''+main.edit2.Text+'''');
    sql.add('and YN=''1'' ');
    sql.add('order by ID ');
    active:=true;
  end;

end;

procedure TApplyEquipmentDepName.DBGrid1DblClick(Sender: TObject);
begin
  with ApplyEquipment.SGMas do
  begin
    edit;
    FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
    FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
  end;
  close;
end;

end.
