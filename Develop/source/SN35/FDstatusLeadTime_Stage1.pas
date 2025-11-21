unit FDstatusLeadTime_Stage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDstatusLeadTime_Stage = class(TForm)
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
  FDstatusLeadTime_Stage: TFDstatusLeadTime_Stage;

implementation

uses FDstatusLeadTime1 ;

{$R *.dfm}

procedure TFDstatusLeadTime_Stage.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  YPZL.KFJD AS STAGE,LBZLS.YWSM AS REMARK from YPZL ');
    sql.add('   left join LBZLS ON LBZLS.LB=''04'' AND LBZLS.LBDH=YPZL.KFJD ');
    sql.add('   WHERE KFJD<>''MPR'' AND KFJD<>''COM'' AND KFJD<>''PRO'' ');
    sql.add('   group by YPZL.KFJD,LBZLS.YWSM ORDER BY KFJD ');

    active:=true;
  end;
end;

procedure TFDstatusLeadTime_Stage.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TFDstatusLeadTime_Stage.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFDstatusLeadTime_Stage.FormDestroy(Sender: TObject);
begin
FDstatusLeadTime_Stage:=nil;
end;

procedure TFDstatusLeadTime_Stage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFDstatusLeadTime_Stage.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TFDstatusLeadTime_Stage.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    FDstatusLeadTime.Edit5.text:= query1.fieldbyname('STAGE').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TFDstatusLeadTime_Stage.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
