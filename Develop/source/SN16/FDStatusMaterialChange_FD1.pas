unit FDStatusMaterialChange_FD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatusMaterialChange_FD = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1FD: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatusMaterialChange_FD: TFDStatusMaterialChange_FD;

implementation

uses FDstatus1 , FDStatusMaterialChange1;

{$R *.dfm}

procedure TFDStatusMaterialChange_FD.Button1Click(Sender: TObject);
begin
    with query1 do
    begin
    active:=false;
    sql.Clear;
    sql.add('select  FD  ');
    sql.add(' from kfxxzl ');
    sql.add('   WHERE FD IS NOT NULL ');
    sql.add('        and jijie='+''''+FDStatusMaterialChange.Edit2.Text+'''');
    sql.add('    group by FD order by FD');
    active:=true;
    end;
end;

procedure TFDStatusMaterialChange_FD.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TFDStatusMaterialChange_FD.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFDStatusMaterialChange_FD.FormDestroy(Sender: TObject);
begin
FDStatusMaterialChange_FD:=nil;
end;

procedure TFDStatusMaterialChange_FD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFDStatusMaterialChange_FD.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TFDStatusMaterialChange_FD.DBGridEh1DblClick(Sender: TObject);
begin
   if query1.recordcount>0 then
  begin
    FDStatusMaterialChange.Edit1.text:= query1.fieldbyname('FD').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TFDStatusMaterialChange_FD.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
