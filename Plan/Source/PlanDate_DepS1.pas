unit PlanDate_DepS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TPlanDate_DepS = class(TForm)
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
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanDate_DepS: TPlanDate_DepS;

implementation

uses main1, PlanDate1;

{$R *.dfm}

procedure TPlanDate_DepS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TPlanDate_DepS.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.setfocus
end;

procedure TPlanDate_DepS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1click(nil);
end;

procedure TPlanDate_DepS.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with PlanDate.ZLList do
      begin
        edit;
        FieldByName('Stitching').Value:=query1.fieldbyname('DepName').Value;
      end;
    close;
  end;
end;

procedure TPlanDate_DepS.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TPlanDate_DepS.FormDestroy(Sender: TObject);
begin

Plandate_DepS:=nil;
end;

procedure TPlanDate_DepS.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Depname like ');
    sql.add(''''+'%'+edit2.Text+'%'+''''); 
    if not Checkbox1.Checked then
      begin
        sql.add('and GSBH='+''''+main.edit2.Text+'''');
      end;
    sql.add('order by ID');
    active:=true;
  end;
end;

end.
