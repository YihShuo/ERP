unit EquipmentR_DepName1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEquipmentR_DepName = class(TForm)
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
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    COLUMN_Index:integer;
    { Public declarations }
  end;

var
  EquipmentR_DepName: TEquipmentR_DepName;

implementation
  uses Deliver_EquipmentR1;
{$R *.dfm}

procedure TEquipmentR_DepName.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from TSCD_BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%'' ');
    //sql.add('and GSBH='+''''+main.edit2.Text+'''');
    sql.add('and YN=''1'' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TEquipmentR_DepName.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0  then
  begin
    with Deliver_EquipmentR.DelDet do
    begin
      edit;
      FieldByName('VALUE'+inttostr(COLUMN_INDEX)).AsString:=query1.fieldbyname('ID').AsString;
      FieldByName('COLUMN'+inttostr(COLUMN_INDEX)).AsString:=query1.fieldbyname('DepName').AsString;
      Post;
    end;
    close;
  end;
end;

procedure TEquipmentR_DepName.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TEquipmentR_DepName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentR_DepName.FormDestroy(Sender: TObject);
begin
  EquipmentR_DepName:=nil;
end;

end.
