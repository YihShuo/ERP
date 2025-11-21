unit ProductionToolRepair_CL1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TProductionToolRepair_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1yn: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductionToolRepair_CL: TProductionToolRepair_CL;

implementation

{$R *.dfm}

uses ProductionToolRepair1;

procedure TProductionToolRepair_CL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from clzl');
    sql.add('where cldh like '''+edit1.Text+'%''');
    sql.add('and ywpm like ''%'+edit2.Text+'%'' ');
    //sql.add('and GSBH='+''''+main.edit2.Text+'''');
    //sql.add('and YN=''1'' ');
    sql.add('order by cldh');
    active:=true;
  end;
end;

procedure TProductionToolRepair_CL.DBGrid1DblClick(Sender: TObject);
begin
  if query1.RecordCount > 0 then
  begin
    with ProductionToolRepair.DelDet do
    begin
      Edit;
        FieldByName('CLBH').Value := query1.FieldByName('cldh').Value;
    end;
    query1.Active := False;
    Close;
  end;
end;

procedure TProductionToolRepair_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TProductionToolRepair_CL.FormDestroy(Sender: TObject);
begin
  ProductionToolRepair_CL:=nil;
end;

procedure TProductionToolRepair_CL.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGrid1Dblclick(nil);
end;

end.
