unit OutsoleBorrow_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TOutsoleBorrow_Dep = class(TForm)
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
    Label3: TLabel;
    GXLBCombo: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsoleBorrow_Dep: TOutsoleBorrow_Dep;

implementation

uses main1, Outsoleborrow1;

{$R *.dfm}

procedure TOutsoleBorrow_Dep.Button1Click(Sender: TObject);
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
    sql.add('and GSBH='+''''+main.edit2.Text+'''');
    sql.add('and GXLB='''+GXLBCombo.Text+''' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TOutsoleBorrow_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TOutsoleBorrow_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     button1click(nil);
end;

procedure TOutsoleBorrow_Dep.DBGrid1DblClick(Sender: TObject);
begin

  if query1.recordcount>0 then
  begin
     with Outsoleborrow.DelMas do
     begin
        edit;
        FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
        FieldByName('CKBH').Value:=main.Edit2.Text;
     end;
     close;
  end;
end;

procedure TOutsoleBorrow_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TOutsoleBorrow_Dep.FormDestroy(Sender: TObject);
begin
  OutsoleBorrow_Dep:=nil;
end;

end.
