unit SampleOrder_Curency1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleOrder_Curency = class(TForm)
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
    CurencyQry: TQuery;
    CurencyQrylbdh: TStringField;
    CurencyQryZWSM: TStringField;
    CurencyQryYWSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleOrder_Curency: TSampleOrder_Curency;

implementation
  uses SampleOrder1,FunUnit;
{$R *.dfm}

procedure TSampleOrder_Curency.Button1Click(Sender: TObject);
begin
  with CurencyQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select lbdh,ZWSM,YWSM from lbzls where  lbzls.lb = ''01''   ');
    SQL.Add('and lbdh like ''%'+lbdhEdit.Text+'%'' ');
    SQL.Add('and ZWSM like ''%'+ZWSMEdit.Text+'%'' ');
    SQL.Add('and YWSM like ''%'+YWSMEdit.Text+'%'' ');
    active:=true;
  end;
end;

procedure TSampleOrder_Curency.DBGridEh1DblClick(Sender: TObject);
begin
  SampleOrder.YPZL.Edit;
  SampleOrder.YPZL.FieldByName('Currency').Value:=CurencyQry.FieldByName('LBDH').Value;
  SampleOrder.YPZL.Post;
  Close;
end;

procedure TSampleOrder_Curency.FormCreate(Sender: TObject);
begin
  with CurencyQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select lbdh,ZWSM,YWSM from lbzls where  lbzls.lb = ''01''   ');
    SQL.Add('and lbdh like ''%'+lbdhEdit.Text+'%'' ');
    SQL.Add('and ZWSM like ''%'+ZWSMEdit.Text+'%'' ');
    SQL.Add('and YWSM like ''%'+YWSMEdit.Text+'%'' ');
    active:=true;
  end;
end;

end.
