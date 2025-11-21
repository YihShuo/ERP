unit SampleOrder_Stage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleOrder_Stage = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbdhEdit: TEdit;
    Button1: TButton;
    ZWSMEdit: TEdit;
    YWSMEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    StageQry: TQuery;
    StageQrylbdh: TStringField;
    StageQryZWSM: TStringField;
    StageQryYWSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbdhEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleOrder_Stage: TSampleOrder_Stage;

implementation
  uses SampleOrder1,FunUnit;
{$R *.dfm}

procedure TSampleOrder_Stage.Button1Click(Sender: TObject);
begin
  with StageQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select lbdh,ZWSM,YWSM from lbzls where  lbzls.lb = ''04'' and bz1=''Tyxuan''  ');
    SQL.Add('and lbdh like ''%'+lbdhEdit.Text+'%'' ');
    SQL.Add('and ZWSM like ''%'+ZWSMEdit.Text+'%'' ');
    SQL.Add('and YWSM like ''%'+YWSMEdit.Text+'%'' order by lbdh ');
    active:=true;
  end;
end;

procedure TSampleOrder_Stage.DBGridEh1DblClick(Sender: TObject);
begin
  SampleOrder.YPZL.Edit;
  SampleOrder.YPZL.FieldByName('KFJD').Value:=StageQry.FieldByName('LBDH').Value;
  SampleOrder.YPZL.Post;
  Close;
end;

procedure TSampleOrder_Stage.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TSampleOrder_Stage.lbdhEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

end.
