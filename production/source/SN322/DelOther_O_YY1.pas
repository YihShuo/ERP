unit DelOther_O_YY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelOther_O_YY = class(TForm)
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_O_YY: TDelOther_O_YY;

implementation

uses DelOther_O1, main1;

{$R *.dfm}

procedure TDelOther_O_YY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TDelOther_O_YY.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from SCBLYY');
    sql.add('where YYBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWSM like '+''''+'%'+edit2.Text+'%'+'''');   
    sql.add('      and YN<>'+''''+'5'+'''');
    //20141020 企劃開會決議只有帳號 A1:15474  A2:36994   b1:16255   b2:01775 能開 "Z07=補" 補料原因 為特殊使用
    if ((main.Edit1.Text<>'15474') and (main.Edit1.Text<>'36994') and (main.Edit1.Text<>'16255') and (main.Edit1.Text<>'01775')) then
    begin
      sql.add('      and YYBH<>''Z07'' ');
    end;    
    sql.add('order by YYBH');
    active:=true;
  end;
end;

procedure TDelOther_O_YY.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.setfocus
end;

procedure TDelOther_O_YY.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1click(nil);
end;

procedure TDelOther_O_YY.FormDestroy(Sender: TObject);
begin
  DelOther_O_YY:=nil;
end;

procedure TDelOther_O_YY.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DelOther_O.DelDet do
      begin
        edit;
        FieldByName('YYBH').Value:=query1.fieldbyname('YYBH').Value;
        FieldByName('YWSM').Value:=query1.fieldbyname('YWSM').Value;
        FieldByName('ZWSM').Value:=query1.fieldbyname('ZWSM').Value;
      end;
    close;
  end;
end;

procedure TDelOther_O_YY.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TDelOther_O_YY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
