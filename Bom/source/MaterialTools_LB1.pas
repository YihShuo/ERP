unit MaterialTools_LB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, GridsEh,
  DBGridEh;

type
  TMaterialTools_LB = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Query1: TQuery;
    Query1LBBH: TStringField;
    Query1MEMO: TStringField;
    Query1CMEMO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTools_LB: TMaterialTools_LB;

implementation

uses MaterialTools1;

{$R *.dfm}

procedure TMaterialTools_LB.FormDestroy(Sender: TObject);
begin
MaterialTools_LB:=nil;
end;

procedure TMaterialTools_LB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialTools_LB.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CLLBVN ');
    sql.add('where LBBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and memo like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by LBBH');
    active:=true;
  end;
end;

procedure TMaterialTools_LB.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.Active then
  begin
    if query1.recordcount>0 then
      begin
        MaterialTools.query1.Edit;
        MaterialTools.query1.FieldByName('CLLB').Value:=query1.fieldbyname('LBBH').Value;
        MaterialTools.query1.FieldByName('CLDH').Value:=query1.fieldbyname('LBBH').Value;
        MaterialTools.query1.post;
        close;
      end;
  end;
end;

procedure TMaterialTools_LB.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

end.
