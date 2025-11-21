unit ScanIn_Dep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,
  GridsEh, DBGridEh, Buttons,dateutils ,IniFiles,comobj;

type
  TScan_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Query: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Scan_Dep: TScan_Dep;


implementation

uses main1, ScanInQR, ScanIn1;

{$R *.dfm}
procedure TScan_Dep.FormDestroy(Sender: TObject);
begin
Scan_Dep:=nil;
end;

procedure TScan_Dep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
query1.active:=false;
Action:=CaFree;
end;


procedure TScan_Dep.QueryClick(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ID,DepName,DepMemo,YN from BDepartment');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Depname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and Depname like ''%COM%''');
    sql.add('and YN='+''''+'1'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;
procedure TScan_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit1.setfocus
end;

procedure TScan_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
QueryClick(nil);
end;

procedure TScan_Dep.DBGridEh1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    ScanQR.DBEdit1.text:=query1.fieldbyname('DepName').Value;
    //Scan_Dep.Edit2.text:=query1.fieldbyname('DepName').Value;
    close;
  end;
end;

procedure TScan_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TScan_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;


end.
