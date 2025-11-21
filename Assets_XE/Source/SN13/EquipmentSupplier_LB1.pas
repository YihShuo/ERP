unit EquipmentSupplier_LB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEquipmentSupplier_LB = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ywsmEdit: TEdit;
    zwsmEdit: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1zwsm: TStringField;
    Query1YWSM: TStringField;
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
  EquipmentSupplier_LB: TEquipmentSupplier_LB;

implementation
  uses EquipmentSupplier1;
{$R *.dfm}

procedure TEquipmentSupplier_LB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentSupplier_LB.FormDestroy(Sender: TObject);
begin
  EquipmentSupplier_LB:=nil;
end;

procedure TEquipmentSupplier_LB.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select zwsm,ywsm from TSCD_LBZLS where Layer=2 ');
    if ywsmEdit.Text<>'' then
    SQL.Add('and ywsm like ''%'+ywsmEdit.Text+'%'' ');
    if zwsmEdit.Text<>'' then
    SQL.Add('and zwsm like ''%'+zwsmEdit.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TEquipmentSupplier_LB.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with EquipmentSupplier.TSCD_ZSZL do
    begin
      Edit;
      Fieldbyname('LB1_Memo').AsString:=fieldbyname('LB1_Memo').AsString+query1.fieldbyname('zwsm').value+',';
      Post;
    end;
  end;
end;

end.
