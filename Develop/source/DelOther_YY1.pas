unit DelOther_YY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelOther_YY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_YY: TDelOther_YY;

implementation

uses DelOther1;

{$R *.dfm}

procedure TDelOther_YY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDelOther_YY.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from SCBLYY');
    sql.add('where YYBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWSM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and YN<>'+''''+'5'+'''');
    sql.add('order by YYBH');
    active:=true;
  end;
end;

procedure TDelOther_YY.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TDelOther_YY.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TDelOther_YY.FormDestroy(Sender: TObject);
begin
DelOther_YY:=nil;
end;

procedure TDelOther_YY.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DelOther.DelDet do
      begin
        edit;
        FieldByName('YYBH').Value:=query1.fieldbyname('YYBH').Value;
        FieldByName('YWSM').Value:=query1.fieldbyname('YWSM').Value;
        FieldByName('ZWSM').Value:=query1.fieldbyname('ZWSM').Value;
      end;
    close;
  end;
end;

procedure TDelOther_YY.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
