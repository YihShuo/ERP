unit EquipmentM_DepName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEquipmentM_DepName = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    COLUMN_Index:integer;
    { Public declarations }
  end;

var
  EquipmentM_DepName: TEquipmentM_DepName;

implementation

uses main1, Deliver_EquipmentM1;

{$R *.dfm}

procedure TEquipmentM_DepName.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from TSCD_BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%'' ');
    //sql.add('and GSBH='+''''+main.edit2.Text+'''');
    //sql.add('and YN=''1'' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TEquipmentM_DepName.FormDestroy(Sender: TObject);
begin
  EquipmentM_DepName:=nil;
end;

procedure TEquipmentM_DepName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentM_DepName.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  FormDblClick(nil);
end;

procedure TEquipmentM_DepName.FormDblClick(Sender: TObject);
begin
  if query1.recordcount>0  then
  begin
    with Deliver_EquipmentM.DelDet do
    begin
      edit;
      FieldByName('VALUE'+inttostr(COLUMN_INDEX)).AsString:=query1.fieldbyname('ID').AsString;
      FieldByName('COLUMN'+inttostr(COLUMN_INDEX)).AsString:=query1.fieldbyname('DepName').AsString;
      Post;
    end;
    close;
  end;
end;

end.
