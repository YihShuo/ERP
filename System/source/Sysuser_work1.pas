unit Sysuser_work1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TSysuser_work = class(TForm)
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
    Query1DepID: TStringField;
    Query1WorkName: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1DepName: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sysuser_work: TSysuser_work;

implementation

uses SysUser1;

{$R *.dfm}

procedure TSysuser_work.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 edit2.SetFocus;
end;

procedure TSysuser_work.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select BWorker.*,BDepartment.DepName from BWorker ');
    sql.add('left join BDepartment on Bworker.DepID=BDepartment.ID'); 
    sql.add('where BWorker.ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and BWorker.workname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by Bworker.ID');
    active:=true;
  end;
end;

procedure TSysuser_work.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  button1.Click;
end;

procedure TSysuser_work.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TSysuser_work.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with sysuser.query1 do
      begin
        fieldbyname('USERID').value:=query1.fieldbyname('ID').value;
        fieldbyname('USERNAME').value:=query1.fieldbyname('workname').value; 
        fieldbyname('DepName').value:=query1.fieldbyname('Depname').value; 
        fieldbyname('YN').value:='1';
      end;
    close;
  end;
end;

end.
