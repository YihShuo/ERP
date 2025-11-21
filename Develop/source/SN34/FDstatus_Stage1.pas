unit FDstatus_Stage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDstatus_Stage = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1STAGE: TStringField;
    Query1REMARK: TStringField;
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
  FDstatus_Stage: TFDstatus_Stage;

implementation

uses FDstatus1 ;

{$R *.dfm}

procedure TFDstatus_Stage.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select lbdh as STAGE,LBZLS.YWSM AS REMARK from lbzls where  lbzls.lb = ''04'' and bz1=''Tyxuan'' order by lbdh ');
    active:=true;
  end;
end;

procedure TFDstatus_Stage.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TFDstatus_Stage.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFDstatus_Stage.FormDestroy(Sender: TObject);
begin
FDstatus_Stage:=nil;
end;

procedure TFDstatus_Stage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFDstatus_Stage.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TFDstatus_Stage.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    FDStatus.StageEdit.text:= query1.fieldbyname('STAGE').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TFDstatus_Stage.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
