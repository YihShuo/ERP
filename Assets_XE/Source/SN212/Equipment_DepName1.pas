unit Equipment_DepName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEquipment_DepName = class(TForm)
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
  Equipment_DepName: TEquipment_DepName;

implementation

uses main1, Equipment_Dep1, Deliver_Equipment1,fununit;

{$R *.dfm}

procedure TEquipment_DepName.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from TSCD_BDepartment');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Depname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and GSBH='+''''+main.edit2.Text+'''');
    sql.add('and YN='+''''+'1'+'''');
    sql.add('order by ID');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TEquipment_DepName.FormDestroy(Sender: TObject);
begin
  Equipment_Dep:=nil;
end;

procedure TEquipment_DepName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipment_DepName.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  FormDblClick(nil);
end;

procedure TEquipment_DepName.FormDblClick(Sender: TObject);
begin
  if query1.recordcount>0  then
  begin
    with Deliver_Equipment.DelDet do
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
