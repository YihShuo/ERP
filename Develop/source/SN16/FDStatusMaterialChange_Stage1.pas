unit FDStatusMaterialChange_Stage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatusMaterialChange_Stage = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatusMaterialChange_Stage: TFDStatusMaterialChange_Stage;

implementation

uses FDstatus1 , FDStatusMaterialChange1;

{$R *.dfm}

procedure TFDStatusMaterialChange_Stage.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  YPZL.KFJD AS STAGE,LBZLS.YWSM AS REMARK from YPZL ');
    sql.add('   left join LBZLS ON LBZLS.LB=''04'' AND LBZLS.LBDH=YPZL.KFJD ');
    sql.add('   WHERE LBZLS.lbdh in(''PRO'',''SM2'',''SM3'',''PDT'',''CFM'',''ADD'',''AD1'',''PUL'') ');
    sql.add('   group by YPZL.KFJD,LBZLS.YWSM ORDER BY KFJD ');

    active:=true;
  end;
end;

procedure TFDStatusMaterialChange_Stage.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;





procedure TFDStatusMaterialChange_Stage.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFDStatusMaterialChange_Stage.FormDestroy(Sender: TObject);
begin
FDStatusMaterialChange_Stage:=nil;
end;

procedure TFDStatusMaterialChange_Stage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFDStatusMaterialChange_Stage.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

end.
